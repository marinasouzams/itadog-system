"use client";

import { useEffect, useState, useCallback } from "react";
import type { Order, Client, Visit, Payment } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, monthKey, monthLabel,
  calcOrderTotals, calcParcels, alertClass, lastVisitDate, DAYS_PT,
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
    setOrders(o || []);
    setClients(c || []);
    setVisits(v || []);
    setPayments(p || []);

    const keys = [...new Set((o || []).map((x: Order) => monthKey(x.visit_date)))].filter(Boolean).sort().reverse() as string[];
    setMonths(keys);
    if (!month && keys.length) setMonth(keys[0]);
    setLoading(false);
  }, [month]);

  useEffect(() => { load(); }, []);

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", paddingTop: 40, textAlign: "center" }}>Carregando...</div>;

  // ─── Filtered orders ───
  const ordersMonth = month ? orders.filter((o) => monthKey(o.visit_date) === month) : orders;

  // ─── Fixed stats (all time) ───
  const totalFaturamento = orders.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const totalMargem      = orders.reduce((s, o) => s + calcOrderTotals(o).margin, 0);
  const emProducao       = orders.filter((o) => o.status === "Em Produção").length;

  // ─── Receivables ───
  const payMap = new Map(payments.map((p) => [p.id, p]));
  const receivables = orders.flatMap((o) => {
    const t = calcOrderTotals(o);
    return calcParcels(o, t.total).map((p) => {
      const pay = payMap.get(p.key);
      const isPaid = !!pay?.paid_at;
      return { ...p, isPaid, isOverdue: !isPaid && p.dueDate < new Date().toISOString().slice(0, 10), value: p.value };
    });
  });
  const aReceber = receivables.filter((r) => !r.isPaid).reduce((s, r) => s + r.value, 0);

  // ─── Overdue clients ───
  const overdueClients = clients.filter((c) => {
    const lv = lastVisitDate(visits, c.id);
    return alertClass(daysSince(lv), c.freq) === "red";
  });

  // ─── Month stats ───
  const monthFat    = ordersMonth.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const monthMargin = ordersMonth.reduce((s, o) => s + calcOrderTotals(o).margin, 0);
  const monthVisits = visits.filter((v) => monthKey(v.date) === month);
  const monthWithOrder = monthVisits.filter((v) => v.result === "pedido").length;
  const monthClients  = [...new Set(ordersMonth.map((o) => o.client_id))].length;

  // ─── Top products ───
  const prodQty: Record<string, { desc: string; qty: number; val: number }> = {};
  ordersMonth.forEach((o) => {
    (o.items || []).forEach((it) => {
      if (!prodQty[it.description]) prodQty[it.description] = { desc: it.description, qty: 0, val: 0 };
      prodQty[it.description].qty += it.qty;
      prodQty[it.description].val += it.price * it.qty;
    });
  });
  const topProds = Object.values(prodQty).sort((a, b) => b.qty - a.qty).slice(0, 8);

  // ─── Weekly route ───
  const todayDay = new Date().getDay(); // 0=sun
  const weekClients = clients.filter((c) => c.day === todayDay || c.day === ((todayDay % 5) + 1));

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
            {months.map((m) => (
              <option key={m} value={m}>{monthLabel(m)}</option>
            ))}
          </select>
          <div style={{ fontSize: 12, color: "var(--gray-400)" }}>
            Atualizado: {new Date().toLocaleTimeString("pt-BR")}
          </div>
        </div>
      </div>

      {/* Fixed stats */}
      <div className="dash-grid">
        {[
          { icon: "💰", label: "Faturamento Total", value: fmtCurrency(totalFaturamento), sub: "Todos os pedidos" },
          { icon: "📈", label: "Margem Total",       value: fmtCurrency(totalMargem),      sub: "Lucro bruto" },
          { icon: "💳", label: "A Receber",           value: fmtCurrency(aReceber),         sub: "Parcelas em aberto" },
          { icon: "🔄", label: "Em Produção",         value: String(emProducao),            sub: "Pedidos ativos" },
          { icon: "⚠️", label: "Visitas Atrasadas",   value: String(overdueClients.length), sub: "Clientes em atraso" },
          { icon: "👥", label: "Total Clientes",      value: String(clients.length),        sub: "Cadastrados" },
        ].map((s, i) => (
          <div key={i} className="dash-stat">
            <div className="ds-icon">{s.icon}</div>
            <div>
              <div className="ds-label">{s.label}</div>
              <div className="ds-value">{s.value}</div>
              <div className="ds-sub">{s.sub}</div>
            </div>
          </div>
        ))}
      </div>

      {/* Divider */}
      <div style={{ display: "flex", alignItems: "center", gap: 10, margin: "14px 0 10px" }}>
        <div style={{ height: 2, flex: 1, background: "var(--gray-200)" }} />
        <span style={{ fontSize: 11, fontWeight: 700, color: "var(--gray-400)", textTransform: "uppercase", letterSpacing: ".8px" }}>
          Dados do mês selecionado — {monthLabel(month)}
        </span>
        <div style={{ height: 2, flex: 1, background: "var(--gray-200)" }} />
      </div>

      {/* Month stats */}
      <div className="dash-grid">
        {[
          { icon: "💰", label: "Faturamento",   value: fmtCurrency(monthFat),      sub: monthLabel(month) },
          { icon: "📈", label: "Margem",         value: fmtCurrency(monthMargin),   sub: "Lucro bruto" },
          { icon: "👥", label: "Clientes Atend", value: String(monthClients),       sub: "Com pedido" },
          { icon: "📅", label: "Visitas",        value: String(monthVisits.length), sub: `${monthWithOrder} com pedido` },
          { icon: "📋", label: "Pedidos",        value: String(ordersMonth.length), sub: "Esse mês" },
        ].map((s, i) => (
          <div key={i} className="dash-stat">
            <div className="ds-icon">{s.icon}</div>
            <div>
              <div className="ds-label">{s.label}</div>
              <div className="ds-value">{s.value}</div>
              <div className="ds-sub">{s.sub}</div>
            </div>
          </div>
        ))}
      </div>

      {/* Row 2 */}
      <div className="g3" style={{ marginBottom: 20 }}>
        {/* Recent orders */}
        <div className="card">
          <div className="card-hd"><span className="card-title">📋 Pedidos do Mês</span></div>
          <div className="card-body">
            {ordersMonth.slice(0, 8).length === 0
              ? <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Nenhum pedido</div>
              : ordersMonth.slice(0, 8).map((o) => (
                <div key={o.id} style={{ display: "flex", justifyContent: "space-between", padding: "6px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 13 }}>
                  <span style={{ fontWeight: 600 }}>{o.client_name}</span>
                  <span style={{ color: "var(--blue)", fontWeight: 700 }}>{fmtCurrency(calcOrderTotals(o).total)}</span>
                </div>
              ))
            }
          </div>
        </div>

        {/* Overdue clients */}
        <div className="card">
          <div className="card-hd"><span className="card-title">⚠️ Visitas Atrasadas</span></div>
          <div className="card-body">
            {overdueClients.slice(0, 8).length === 0
              ? <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Nenhuma visita atrasada 🎉</div>
              : overdueClients.slice(0, 8).map((c) => {
                const lv = lastVisitDate(visits, c.id);
                const ds = daysSince(lv);
                return (
                  <div key={c.id} style={{ display: "flex", justifyContent: "space-between", padding: "6px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 13 }}>
                    <div>
                      <div style={{ fontWeight: 600 }}>{c.name}</div>
                      <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{c.city}</div>
                    </div>
                    <span className="badge bd">{ds === 9999 ? "Nunca" : `${ds}d`}</span>
                  </div>
                );
              })
            }
          </div>
        </div>

        {/* A Receber */}
        <div className="card">
          <div className="card-hd"><span className="card-title">💰 A Receber</span></div>
          <div className="card-body">
            {receivables.filter((r) => !r.isPaid).slice(0, 8).map((r, i) => (
              <div key={i} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                <div>
                  <div style={{ fontWeight: 600 }}>{r.key.split("_")[0] /* orderId */}</div>
                  <div style={{ color: "var(--gray-400)" }}>Vence {fmtDate(r.dueDate)}</div>
                </div>
                <span style={{ color: r.isOverdue ? "var(--red)" : "var(--blue)", fontWeight: 700 }}>{fmtCurrency(r.value)}</span>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Row 3 */}
      <div className="g3">
        {/* Top products */}
        <div className="card">
          <div className="card-hd"><span className="card-title">🏆 Mais Vendidos no Mês</span></div>
          <div className="card-body">
            {topProds.length === 0
              ? <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem dados</div>
              : topProds.map((p, i) => (
                <div key={i} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <span style={{ flex: 1, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>
                    <strong style={{ color: "var(--gray-400)", marginRight: 4 }}>{i + 1}.</strong>{p.desc}
                  </span>
                  <span className="badge bb" style={{ marginLeft: 8, flexShrink: 0 }}>{p.qty}x</span>
                </div>
              ))
            }
          </div>
        </div>

        {/* Clients served this month */}
        <div className="card">
          <div className="card-hd"><span className="card-title">👥 Clientes Atendidos</span></div>
          <div className="card-body">
            {ordersMonth.slice(0, 8).map((o) => (
              <div key={o.id} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                <span>{o.client_name}</span>
                <span style={{ color: "var(--gray-400)" }}>{fmtDate(o.visit_date)}</span>
              </div>
            ))}
          </div>
        </div>

        {/* Route this week */}
        <div className="card">
          <div className="card-hd"><span className="card-title">📅 Rota desta Semana</span></div>
          <div className="card-body">
            {weekClients.slice(0, 8).map((c) => {
              const lv = lastVisitDate(visits, c.id);
              const ds = daysSince(lv);
              const cls = alertClass(ds, c.freq);
              return (
                <div key={c.id} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <div>
                    <div style={{ fontWeight: 600 }}>{c.name}</div>
                    <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{c.city} — {DAYS_PT[c.day] || ""}</div>
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
