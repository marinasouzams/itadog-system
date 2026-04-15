"use client";

import { useEffect, useState, useCallback } from "react";
import type { Order, Client, Visit, Payment } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, monthKey, monthLabel,
  calcOrderTotals, calcParcels, alertClass, lastVisitDate, includes,
} from "@/lib/utils";

interface Receivable {
  key: string;
  orderId: number;
  client: string;
  clientId: number;
  clientPhone: string;
  value: number;
  days: number;
  dueDate: string;
  isPaid: boolean;
  isOverdue: boolean;
  paidAt: string | null;
  valuePaid: number;
  parcela: number;
  totalParcelas: number;
}

export default function FinanceiroPage() {
  const [orders,   setOrders]   = useState<Order[]>([]);
  const [clients,  setClients]  = useState<Client[]>([]);
  const [visits,   setVisits]   = useState<Visit[]>([]);
  const [payments, setPayments] = useState<Payment[]>([]);
  const [month,    setMonth]    = useState("");
  const [months,   setMonths]   = useState<string[]>([]);
  const [loading,  setLoading]  = useState(true);
  const [detailDays, setDetailDays] = useState<number | null>(null);

  const load = useCallback(async () => {
    const [o, c, v, p] = await Promise.all([
      fetch("/api/orders").then((r) => r.json()),
      fetch("/api/clients").then((r) => r.json()),
      fetch("/api/visits").then((r) => r.json()),
      fetch("/api/payments").then((r) => r.json()),
    ]);
    const ord: Order[] = o.data || [];
    setOrders(ord);
    setClients(c.data  || []);
    setVisits(v.data   || []);
    setPayments(p.data || []);

    const keys = [...new Set(ord.map((x) => monthKey(x.visit_date)))].filter(Boolean).sort().reverse() as string[];
    setMonths(keys);
    if (!month && keys.length) setMonth(keys[0]);
    setLoading(false);
  }, [month]);

  useEffect(() => { load(); }, []);

  const markPaid = async (key: string, value: number) => {
    const [orderId, parcel] = key.split("_");
    await fetch("/api/payments", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ id: key, order_id: Number(orderId), parcel: Number(parcel), paid_at: new Date().toISOString().slice(0, 10), value_paid: value }),
    });
    load();
  };

  const markUnpaid = async (key: string) => {
    await fetch(`/api/payments/${encodeURIComponent(key)}`, { method: "DELETE" });
    load();
  };

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  const filtered = month ? orders.filter((o) => monthKey(o.visit_date) === month) : orders;

  // ─── Stats ───────────────────────────────────
  const fat    = filtered.reduce((s, o) => s + calcOrderTotals(o).total,  0);
  const custo  = filtered.reduce((s, o) => s + calcOrderTotals(o).cost,   0);
  const margin = filtered.reduce((s, o) => s + calcOrderTotals(o).margin, 0);

  // ─── Receivables ─────────────────────────────
  const payMap = new Map(payments.map((p) => [p.id, p]));
  const today  = new Date().toISOString().slice(0, 10);

  const receivables: Receivable[] = orders.flatMap((o) => {
    const t = calcOrderTotals(o);
    const client = clients.find((c) => c.id === o.client_id);
    return calcParcels(o, t.total).map((p) => {
      const pay = payMap.get(p.key);
      const isPaid   = !!pay?.paid_at;
      const isOverdue = !isPaid && p.dueDate < today;
      return {
        ...p,
        client:      o.client_name || client?.name || "",
        clientId:    o.client_id,
        clientPhone: o.client_phone || client?.phone || "",
        isPaid,
        isOverdue,
        paidAt:    pay?.paid_at   || null,
        valuePaid: pay?.value_paid || 0,
      };
    });
  });

  const filteredRec = month
    ? receivables.filter((r) => {
        const o = orders.find((x) => x.id === r.orderId);
        return o && monthKey(o.visit_date) === month;
      })
    : receivables;

  const aReceber = filteredRec.filter((r) => !r.isPaid).reduce((s, r) => s + r.value, 0);
  const vencido  = filteredRec.filter((r) => r.isOverdue).reduce((s, r) => s + r.value, 0);

  // ─── Prazo groups ─────────────────────────────
  const prazoGroups: Record<number, { total: number; count: number }> = {};
  filteredRec.filter((r) => !r.isPaid).forEach((r) => {
    if (!prazoGroups[r.days]) prazoGroups[r.days] = { total: 0, count: 0 };
    prazoGroups[r.days].total += r.value;
    prazoGroups[r.days].count++;
  });
  const prazoKeys = Object.keys(prazoGroups).map(Number).sort((a, b) => a - b);

  // ─── By client ────────────────────────────────
  const byClient: Record<number, { name: string; orders: number; sold: number; cost: number; margin: number }> = {};
  filtered.forEach((o) => {
    if (!byClient[o.client_id]) byClient[o.client_id] = { name: o.client_name || "", orders: 0, sold: 0, cost: 0, margin: 0 };
    const t = calcOrderTotals(o);
    byClient[o.client_id].orders++;
    byClient[o.client_id].sold   += t.total;
    byClient[o.client_id].cost   += t.cost;
    byClient[o.client_id].margin += t.margin;
  });

  // ─── Top/low products ────────────────────────
  const prodMap: Record<string, { desc: string; qty: number; val: number }> = {};
  filtered.forEach((o) => (o.items || []).forEach((it) => {
    if (!prodMap[it.description]) prodMap[it.description] = { desc: it.description, qty: 0, val: 0 };
    prodMap[it.description].qty += it.qty;
    prodMap[it.description].val += it.price * it.qty;
  }));
  const prodList = Object.values(prodMap).sort((a, b) => b.qty - a.qty);
  const topProds = prodList.slice(0, 10);
  const lowProds = prodList.slice(-8).reverse();

  // ─── Visits by client ─────────────────────────
  const visitsByClient = clients.map((c) => {
    const lv  = lastVisitDate(visits, c.id);
    const ds  = daysSince(lv);
    const cls = alertClass(ds, c.freq);
    const mv  = visits.filter((v) => v.client_id === c.id && monthKey(v.date) === month).length;
    return { c, lv, ds, cls, mv };
  }).filter((x) => x.mv > 0 || month === "");

  // ─── Inadimplência ────────────────────────────
  const overdue = receivables.filter((r) => r.isOverdue);
  const overdueByClient: Record<string, { name: string; total: number; phone: string }> = {};
  overdue.forEach((r) => {
    if (!overdueByClient[r.clientId]) overdueByClient[r.clientId] = { name: r.client, total: 0, phone: r.clientPhone };
    overdueByClient[r.clientId].total += r.value;
  });

  const detailItems = detailDays !== null ? receivables.filter((r) => r.days === detailDays && !r.isPaid) : [];

  return (
    <div className="section">
      <div className="sec-top">
        <div className="sec-title">💰 Financeiro</div>
        <div style={{ display: "flex", gap: 8, alignItems: "center" }}>
          <select className="fc" style={{ width: 155 }} value={month} onChange={(e) => setMonth(e.target.value)}>
            <option value="">Todos</option>
            {months.map((m) => <option key={m} value={m}>{monthLabel(m)}</option>)}
          </select>
        </div>
      </div>

      {/* Stats */}
      <div className="fin-grid">
        {[
          { label: "Faturamento", value: fmtCurrency(fat) },
          { label: "Custo Fábrica", value: fmtCurrency(custo) },
          { label: "Margem", value: fmtCurrency(margin) },
          { label: "A Receber", value: fmtCurrency(aReceber) },
          { label: "Vencido", value: fmtCurrency(vencido) },
          { label: "Pedidos", value: String(filtered.length) },
        ].map((s, i) => (
          <div key={i} className="prazo-card">
            <div className="prazo-label">{s.label}</div>
            <div className="prazo-value" style={{ color: s.label === "Vencido" && vencido > 0 ? "var(--red)" : undefined }}>
              {s.value}
            </div>
          </div>
        ))}
      </div>

      {/* Contas a Receber por Prazo */}
      <div className="card" style={{ marginBottom: 20 }}>
        <div className="card-hd"><span className="card-title">💳 Contas a Receber por Prazo</span></div>
        <div className="card-body">
          <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill,minmax(140px,1fr))", gap: 12, marginBottom: 16 }}>
            {prazoKeys.map((days) => (
              <div
                key={days}
                className="prazo-card"
                style={{ borderColor: detailDays === days ? "var(--blue)" : undefined }}
                onClick={() => setDetailDays(detailDays === days ? null : days)}
              >
                <div className="prazo-label">Prazo {days}d</div>
                <div className="prazo-value">{fmtCurrency(prazoGroups[days].total)}</div>
                <div style={{ fontSize: 11, color: "var(--gray-400)" }}>{prazoGroups[days].count} parcela(s)</div>
              </div>
            ))}
          </div>

          {/* Detail panel */}
          {detailDays !== null && (
            <div style={{ marginBottom: 16 }}>
              <div style={{ display: "flex", justifyContent: "space-between", marginBottom: 10 }}>
                <div style={{ fontFamily: "'Barlow Condensed',sans-serif", fontSize: 16, fontWeight: 800, color: "var(--blue)" }}>
                  Prazo {detailDays}d — Detalhes
                </div>
                <button className="btn btn-outline btn-sm" onClick={() => setDetailDays(null)}>✕ Fechar</button>
              </div>
              <div className="tbl-wrap">
                <table>
                  <thead><tr><th>Cliente</th><th>Telefone</th><th>Pedido</th><th>Parcela</th><th>Valor</th><th>Vencimento</th><th>Cobrar</th></tr></thead>
                  <tbody>
                    {detailItems.map((r) => (
                      <tr key={r.key} style={{ background: r.isOverdue ? "var(--danger-light)" : undefined }}>
                        <td style={{ fontWeight: 600 }}>{r.client}</td>
                        <td>{r.clientPhone || "—"}</td>
                        <td>#{r.orderId}</td>
                        <td>{r.parcela}/{r.totalParcelas}</td>
                        <td style={{ fontWeight: 700 }}>{fmtCurrency(r.value)}</td>
                        <td style={{ color: r.isOverdue ? "var(--red)" : undefined }}>
                          {fmtDate(r.dueDate)}{r.isOverdue && " ⚠️"}
                        </td>
                        <td style={{ display: "flex", gap: 4 }}>
                          <button className="btn btn-green btn-xs" onClick={() => markPaid(r.key, r.value)}>✅ Pago</button>
                          <button
                            className="btn btn-whats btn-xs"
                            onClick={() => {
                              const phone = r.clientPhone.replace(/\D/g, "");
                              const msg = `Olá ${r.client}, passando para lembrar do vencimento de ${fmtCurrency(r.value)} em ${fmtDate(r.dueDate)}. Pedido #${r.orderId}.`;
                              window.open(`https://wa.me/55${phone}?text=${encodeURIComponent(msg)}`, "_blank");
                            }}
                          >💬</button>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          )}

          {/* All receivables */}
          <div className="tbl-wrap">
            <table>
              <thead><tr><th>Cliente</th><th>Pedido</th><th>Valor</th><th>Prazo</th><th>Parcela</th><th>Vencimento</th><th>Status</th><th></th></tr></thead>
              <tbody>
                {filteredRec.map((r) => (
                  <tr key={r.key} style={{ background: r.isPaid ? "var(--success-light)" : r.isOverdue ? "var(--danger-light)" : undefined }}>
                    <td style={{ fontWeight: 600 }}>{r.client}</td>
                    <td>#{r.orderId}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(r.value)}</td>
                    <td>{r.days}d</td>
                    <td>{r.parcela}/{r.totalParcelas}</td>
                    <td>{fmtDate(r.dueDate)}</td>
                    <td>
                      <span className={`badge ${r.isPaid ? "bs" : r.isOverdue ? "bd" : "bb"}`}>
                        {r.isPaid ? "Pago" : r.isOverdue ? "Vencido" : "Aberto"}
                      </span>
                    </td>
                    <td>
                      {r.isPaid
                        ? <button className="btn btn-outline btn-xs" onClick={() => markUnpaid(r.key)}>↩</button>
                        : <button className="btn btn-green btn-xs" onClick={() => markPaid(r.key, r.value)}>✅</button>
                      }
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>

      {/* Inadimplência */}
      {Object.keys(overdueByClient).length > 0 && (
        <div className="card" style={{ marginBottom: 20 }}>
          <div className="card-hd"><span className="card-title">🚨 Inadimplência</span></div>
          <div className="card-body">
            <div className="alert alert-d">
              ⚠️ <strong>{overdue.length} parcelas vencidas</strong> — Total: {fmtCurrency(vencido)}
            </div>
            <div className="tbl-wrap">
              <table>
                <thead><tr><th>Cliente</th><th>Total Vencido</th><th>Cobrar</th></tr></thead>
                <tbody>
                  {Object.values(overdueByClient).sort((a, b) => b.total - a.total).map((x, i) => (
                    <tr key={i}>
                      <td style={{ fontWeight: 600 }}>{x.name}</td>
                      <td style={{ color: "var(--red)", fontWeight: 700 }}>{fmtCurrency(x.total)}</td>
                      <td>
                        <button
                          className="btn btn-whats btn-xs"
                          onClick={() => {
                            const phone = x.phone.replace(/\D/g, "");
                            const msg = `Olá ${x.name}, temos um valor de ${fmtCurrency(x.total)} em aberto. Por favor, entre em contato para regularizar.`;
                            window.open(`https://wa.me/55${phone}?text=${encodeURIComponent(msg)}`, "_blank");
                          }}
                        >💬 WhatsApp</button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      )}

      {/* By client + Visits */}
      <div className="g2" style={{ marginBottom: 20 }}>
        <div className="card">
          <div className="card-hd"><span className="card-title">Por Cliente</span></div>
          <div className="card-body tbl-wrap">
            <table>
              <thead><tr><th>Cliente</th><th>Pedidos</th><th>Vendido</th><th>Custo</th><th>Margem</th></tr></thead>
              <tbody>
                {Object.values(byClient).sort((a, b) => b.sold - a.sold).map((x, i) => (
                  <tr key={i}>
                    <td style={{ fontWeight: 600 }}>{x.name}</td>
                    <td>{x.orders}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(x.sold)}</td>
                    <td style={{ color: "var(--gray-600)" }}>{fmtCurrency(x.cost)}</td>
                    <td style={{ color: "var(--success)", fontWeight: 700 }}>{fmtCurrency(x.margin)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        <div className="card">
          <div className="card-hd"><span className="card-title">Visitas</span></div>
          <div className="card-body tbl-wrap">
            <table>
              <thead><tr><th>Cliente</th><th>Visitas</th><th>Última</th><th>Dias</th><th>Status</th></tr></thead>
              <tbody>
                {visitsByClient.slice(0, 20).map(({ c, lv, ds, cls, mv }) => (
                  <tr key={c.id}>
                    <td style={{ fontWeight: 600 }}>{c.name}</td>
                    <td>{mv}</td>
                    <td>{fmtDate(lv)}</td>
                    <td>{ds === 9999 ? "—" : ds}</td>
                    <td><span className={`badge ${cls === "red" ? "bd" : cls === "warn" ? "bw" : "bs"}`}>{cls === "red" ? "Atrasado" : cls === "warn" ? "Atenção" : "OK"}</span></td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>

      {/* Top / Low products */}
      <div className="g2">
        <div className="card">
          <div className="card-hd"><span className="card-title">🏆 Mais Vendidos</span></div>
          <div className="card-body tbl-wrap">
            <table>
              <thead><tr><th>#</th><th>Produto</th><th>Qtde</th><th>Valor</th></tr></thead>
              <tbody>
                {topProds.map((p, i) => (
                  <tr key={i}>
                    <td style={{ color: "var(--gray-400)", fontWeight: 700 }}>{i + 1}</td>
                    <td>{p.desc}</td>
                    <td><span className="badge bb">{p.qty}</span></td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(p.val)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        <div className="card">
          <div className="card-hd"><span className="card-title">📉 Menos Vendidos</span></div>
          <div className="card-body tbl-wrap">
            <table>
              <thead><tr><th>#</th><th>Produto</th><th>Qtde</th><th>Valor</th></tr></thead>
              <tbody>
                {lowProds.map((p, i) => (
                  <tr key={i}>
                    <td style={{ color: "var(--gray-400)", fontWeight: 700 }}>{i + 1}</td>
                    <td>{p.desc}</td>
                    <td><span className="badge bw">{p.qty}</span></td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(p.val)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  );
}
