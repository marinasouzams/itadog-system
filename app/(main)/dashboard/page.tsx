"use client";

import { useEffect, useState, useCallback } from "react";
import type { Order, Client, Visit, Payment } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, monthKey, monthLabel,
  calcOrderTotals, calcParcels, alertClass, lastVisitDate, DAYS_PT, DAYS_FULL_PT,
} from "@/lib/utils";

export default function DashboardPage() {
  const [orders,   setOrders]   = useState<Order[]>([]);
  const [clients,  setClients]  = useState<Client[]>([]);
  const [visits,   setVisits]   = useState<Visit[]>([]);
  const [payments, setPayments] = useState<Payment[]>([]);
  const [month,    setMonth]    = useState("");
  const [months,   setMonths]   = useState<string[]>([]);
  const [loading,  setLoading]  = useState(true);

  const load = useCallback(async () => {
    const [oRes, cRes, vRes, pRes] = await Promise.all([
      fetch("/api/orders"),
      fetch("/api/clients"),
      fetch("/api/visits"),
      fetch("/api/payments"),
    ]);
    const [{ data: o }, { data: c }, { data: v }, { data: p }] = await Promise.all([
      oRes.json(), cRes.json(), vRes.json(), pRes.json(),
    ]);
    const ord: Order[]   = o || [];
    const cli: Client[]  = c || [];
    const vis: Visit[]   = v || [];
    const pay: Payment[] = p || [];

    setOrders(ord);
    setClients(cli);
    setVisits(vis);
    setPayments(pay);

    const keys = Array.from(new Set(ord.map((x: Order) => monthKey(x.visit_date)))).filter(Boolean).sort().reverse() as string[];
    setMonths(keys);
    setMonth((prev) => prev || keys[0] || "");
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  if (loading) {
    return (
      <div className="section" style={{ color: "var(--gray-400)", paddingTop: 40, textAlign: "center" }}>
        Carregando...
      </div>
    );
  }

  const today = new Date().toISOString().slice(0, 10);

  // ─── All-time stats ───────────────────────────────────────────────────────────
  const totalFaturamento = orders.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const totalMargem      = orders.reduce((s, o) => s + calcOrderTotals(o).margin, 0);
  const emProducao       = orders.filter((o) => o.status === "Em Produção").length;

  // ─── Receivables (all orders) ─────────────────────────────────────────────────
  const payMap = new Map(payments.map((p) => [p.id, p]));
  const allReceivables = orders.flatMap((o) => {
    const t = calcOrderTotals(o);
    const client = clients.find((c) => c.id === o.client_id);
    return calcParcels(o, t.total).map((p) => {
      const pay    = payMap.get(p.key);
      const isPaid = !!pay?.paid_at;
      return {
        ...p,
        client:      o.client_name || client?.name || "",
        clientId:    o.client_id,
        clientPhone: o.client_phone || client?.phone || "",
        isPaid,
        isOverdue:   !isPaid && p.dueDate < today,
      };
    });
  });

  const aReceber  = allReceivables.filter((r) => !r.isPaid).reduce((s, r) => s + r.value, 0);
  const vencido   = allReceivables.filter((r) => r.isOverdue).reduce((s, r) => s + r.value, 0);

  // ─── Prazo summary (open parcels grouped by days) ─────────────────────────────
  const prazoGroups: Record<number, { total: number; count: number }> = {};
  allReceivables.filter((r) => !r.isPaid).forEach((r) => {
    if (!prazoGroups[r.days]) prazoGroups[r.days] = { total: 0, count: 0 };
    prazoGroups[r.days].total += r.value;
    prazoGroups[r.days].count++;
  });
  const prazoKeys = Object.keys(prazoGroups).map(Number).sort((a, b) => a - b);

  // ─── Overdue clients ─────────────────────────────────────────────────────────
  const overdueClients = clients.filter((c) => {
    const lv = lastVisitDate(visits, c.id);
    return alertClass(daysSince(lv), c.freq) === "red";
  });

  // ─── Month filtered ───────────────────────────────────────────────────────────
  const ordersMonth = month
    ? orders.filter((o) => monthKey(o.visit_date) === month)
    : orders;

  const monthFat     = ordersMonth.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const monthVisits  = visits.filter((v) => monthKey(v.date) === month);
  const monthWithOrd = monthVisits.filter((v) => v.result === "pedido").length;

  // ─── Top products (selected month) ───────────────────────────────────────────
  const prodQty: Record<string, { desc: string; qty: number; val: number }> = {};
  ordersMonth.forEach((o) => {
    (o.items || []).forEach((it) => {
      if (!prodQty[it.description]) prodQty[it.description] = { desc: it.description, qty: 0, val: 0 };
      prodQty[it.description].qty += it.qty;
      prodQty[it.description].val += it.price * it.qty - (it.discount || 0);
    });
  });
  const topProds = Object.values(prodQty).sort((a, b) => b.qty - a.qty).slice(0, 8);

  // ─── Weekly route (today's day-of-week mapped to 1-5) ────────────────────────
  const todayDow = new Date().getDay(); // 0=sun ... 6=sat
  // Map JS dow → client.day (1=Mon...5=Fri)
  const clientDay = todayDow === 0 ? 1 : todayDow > 5 ? 5 : todayDow;
  const weekClients = clients
    .filter((c) => c.day === clientDay)
    .slice(0, 10);

  // ─── Recent 5 orders ─────────────────────────────────────────────────────────
  const recentOrders = [...orders]
    .sort((a, b) => (b.visit_date || "").localeCompare(a.visit_date || ""))
    .slice(0, 5);

  return (
    <div className="section">
      {/* Header */}
      <div className="sec-top">
        <div className="sec-title">🏠 Visão Geral</div>
        <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
          <select
            className="fc"
            style={{ width: 160 }}
            value={month}
            onChange={(e) => setMonth(e.target.value)}
          >
            <option value="">Todos os meses</option>
            {months.map((m) => (
              <option key={m} value={m}>{monthLabel(m)}</option>
            ))}
          </select>
          <div style={{ fontSize: 12, color: "var(--gray-400)" }}>
            {new Date().toLocaleString("pt-BR")}
          </div>
        </div>
      </div>

      {/* 8 Stat cards */}
      <div className="dash-grid">
        <div className="dash-stat">
          <div className="ds-icon">💰</div>
          <div>
            <div className="ds-label">Faturamento Total</div>
            <div className="ds-value">{fmtCurrency(totalFaturamento)}</div>
            <div className="ds-sub">Todos os pedidos</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">📅</div>
          <div>
            <div className="ds-label">Vendas este Mês</div>
            <div className="ds-value">{fmtCurrency(monthFat)}</div>
            <div className="ds-sub">{monthLabel(month) || "Mês atual"}</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">💳</div>
          <div>
            <div className="ds-label">A Receber</div>
            <div className="ds-value">{fmtCurrency(aReceber)}</div>
            <div className="ds-sub">Parcelas em aberto</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">🔄</div>
          <div>
            <div className="ds-label">Em Produção</div>
            <div className="ds-value">{emProducao}</div>
            <div className="ds-sub">Pedidos ativos</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">⚠️</div>
          <div>
            <div className="ds-label">Visitas Atrasadas</div>
            <div className="ds-value" style={{ color: overdueClients.length > 0 ? "var(--red)" : undefined }}>
              {overdueClients.length}
            </div>
            <div className="ds-sub">Clientes em atraso</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">🗓️</div>
          <div>
            <div className="ds-label">Visitas este Mês</div>
            <div className="ds-value">{monthVisits.length}</div>
            <div className="ds-sub">{monthWithOrd} com pedido</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">📈</div>
          <div>
            <div className="ds-label">Margem Total</div>
            <div className="ds-value">{fmtCurrency(totalMargem)}</div>
            <div className="ds-sub">Lucro bruto geral</div>
          </div>
        </div>
        <div className="dash-stat">
          <div className="ds-icon">👥</div>
          <div>
            <div className="ds-label">Clientes</div>
            <div className="ds-value">{clients.length}</div>
            <div className="ds-sub">Cadastrados</div>
          </div>
        </div>
      </div>

      {/* Row 1: Recent orders + Overdue visits + A Receber */}
      <div className="g3" style={{ marginBottom: 20 }}>
        {/* Recent Orders */}
        <div className="card">
          <div className="card-hd">
            <span className="card-title">📋 Últimos Pedidos</span>
            <span className="badge bb">{recentOrders.length}</span>
          </div>
          <div className="card-body">
            {recentOrders.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Nenhum pedido</div>
            ) : recentOrders.map((o) => (
              <div key={o.id} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "7px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 13 }}>
                <div>
                  <div style={{ fontWeight: 600 }}>{o.client_name}</div>
                  <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{fmtDate(o.visit_date)}</div>
                </div>
                <div style={{ display: "flex", flexDirection: "column", alignItems: "flex-end", gap: 3 }}>
                  <span style={{ color: "var(--blue)", fontWeight: 700 }}>{fmtCurrency(calcOrderTotals(o).total)}</span>
                  <span className={`badge ${o.status === "Entregue" ? "bs" : o.status === "Cancelado" ? "bd" : "bb"}`} style={{ fontSize: 10 }}>{o.status}</span>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* Overdue Visits */}
        <div className="card">
          <div className="card-hd">
            <span className="card-title">⚠️ Visitas Atrasadas</span>
            {overdueClients.length > 0 && <span className="badge bd">{overdueClients.length}</span>}
          </div>
          <div className="card-body">
            {overdueClients.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Nenhuma visita atrasada 🎉</div>
            ) : overdueClients.slice(0, 8).map((c) => {
              const lv = lastVisitDate(visits, c.id);
              const ds = daysSince(lv);
              return (
                <div key={c.id} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "7px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 13 }}>
                  <div>
                    <div style={{ fontWeight: 600 }}>{c.name}</div>
                    <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{c.city} · freq {c.freq}d</div>
                  </div>
                  <span className="badge bd">{ds === 9999 ? "Nunca" : `${ds}d`}</span>
                </div>
              );
            })}
          </div>
        </div>

        {/* A Receber summary */}
        <div className="card">
          <div className="card-hd">
            <span className="card-title">💰 A Receber</span>
          </div>
          <div className="card-body">
            {vencido > 0 && (
              <div className="alert alert-d" style={{ marginBottom: 12 }}>
                ⚠️ Vencido: <strong>{fmtCurrency(vencido)}</strong>
              </div>
            )}
            {prazoKeys.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem parcelas em aberto</div>
            ) : prazoKeys.map((days) => (
              <div key={days} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "6px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 13 }}>
                <div>
                  <div style={{ fontWeight: 600 }}>Prazo {days}d</div>
                  <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{prazoGroups[days].count} parcela(s)</div>
                </div>
                <span style={{ fontWeight: 700, color: "var(--blue)" }}>{fmtCurrency(prazoGroups[days].total)}</span>
              </div>
            ))}
            <div style={{ display: "flex", justifyContent: "space-between", padding: "8px 0 0", fontFamily: "'Barlow Condensed',sans-serif", fontWeight: 800, fontSize: 16, color: "var(--blue)" }}>
              <span>TOTAL</span>
              <span>{fmtCurrency(aReceber)}</span>
            </div>
          </div>
        </div>
      </div>

      {/* Row 2: Top Products + Route */}
      <div className="g2">
        {/* Top Products */}
        <div className="card">
          <div className="card-hd">
            <span className="card-title">🏆 Mais Vendidos — {monthLabel(month) || "Geral"}</span>
          </div>
          <div className="card-body">
            {topProds.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem dados para o período</div>
            ) : topProds.map((p, i) => (
              <div key={i} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "6px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                <span style={{ flex: 1, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>
                  <strong style={{ color: "var(--gray-400)", marginRight: 6 }}>{i + 1}.</strong>{p.desc}
                </span>
                <div style={{ display: "flex", gap: 6, alignItems: "center", flexShrink: 0, marginLeft: 8 }}>
                  <span className="badge bb">{p.qty}x</span>
                  <span style={{ color: "var(--gray-600)", fontSize: 11 }}>{fmtCurrency(p.val)}</span>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* This week route */}
        <div className="card">
          <div className="card-hd">
            <span className="card-title">📅 Rota de Hoje — {DAYS_FULL_PT[todayDow] || "Hoje"}</span>
            <span className="badge bb">{weekClients.length}</span>
          </div>
          <div className="card-body">
            {weekClients.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Nenhum cliente para hoje</div>
            ) : weekClients.map((c) => {
              const lv  = lastVisitDate(visits, c.id);
              const ds  = daysSince(lv);
              const cls = alertClass(ds, c.freq);
              const lo  = orders
                .filter((o) => o.client_id === c.id)
                .sort((a, b) => (b.visit_date || "").localeCompare(a.visit_date || ""))[0];
              return (
                <div key={c.id} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "7px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <div>
                    <div style={{ fontWeight: 600 }}>{c.name}</div>
                    <div style={{ fontSize: 11, color: "var(--gray-400)" }}>
                      {c.city}{lo ? ` · último: ${fmtCurrency(calcOrderTotals(lo).total)}` : ""}
                    </div>
                  </div>
                  <span className={`badge ${cls === "red" ? "bd" : cls === "warn" ? "bw" : "bs"}`}>
                    {ds === 9999 ? "Nunca" : `${ds}d`}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </div>
    </div>
  );
}
