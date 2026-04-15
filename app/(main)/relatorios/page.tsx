"use client";

import { useEffect, useState, useCallback } from "react";
import type { Order, Client } from "@/lib/types";
import { fmtCurrency, fmtDate, monthKey, monthLabel, calcOrderTotals } from "@/lib/utils";

export default function RelatoriosPage() {
  const [orders,  setOrders]  = useState<Order[]>([]);
  const [clients, setClients] = useState<Client[]>([]);
  const [months,  setMonths]  = useState<string[]>([]);
  const [loading, setLoading] = useState(true);

  const [selMonth,  setSelMonth]  = useState("");
  const [selClient, setSelClient] = useState("");

  const load = useCallback(async () => {
    const [o, c] = await Promise.all([
      fetch("/api/orders").then((r) => r.json()),
      fetch("/api/clients").then((r) => r.json()),
    ]);
    const ord: Order[] = o.data || [];
    setOrders(ord);
    setClients(c.data || []);
    const keys = [...new Set(ord.map((x) => monthKey(x.visit_date)))].filter(Boolean).sort().reverse() as string[];
    setMonths(keys);
    if (keys.length) setSelMonth(keys[0]);
    if (c.data?.length) setSelClient(String(c.data[0].id));
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  // ─── Report generators ──────────────────────────────────────────────────────

  const printReport = (title: string, orders: Order[]) => {
    const totals = orders.reduce((acc, o) => {
      const t = calcOrderTotals(o);
      acc.sub   += t.sub;
      acc.disc  += t.disc;
      acc.total += t.total;
      acc.cost  += t.cost;
      acc.margin += t.margin;
      return acc;
    }, { sub: 0, disc: 0, total: 0, cost: 0, margin: 0 });

    const rows = orders.map((o) => {
      const t = calcOrderTotals(o);
      return `<tr>
        <td>${fmtDate(o.visit_date)}</td>
        <td><strong>${o.client_name}</strong></td>
        <td>${fmtDate(o.nf_date)}</td>
        <td>${fmtCurrency(t.sub)}</td>
        <td style="color:#D42B2B">${fmtCurrency(t.disc)}</td>
        <td style="font-weight:700">${fmtCurrency(t.total)}</td>
        <td style="color:#666">${fmtCurrency(t.cost)}</td>
        <td style="color:#1A8A4A;font-weight:700">${fmtCurrency(t.margin)}</td>
        <td>${o.payment || "—"}</td>
        <td><span style="background:${o.status === "Entregue" ? "#E6F5ED" : "#E8EEF8"};color:${o.status === "Entregue" ? "#1A8A4A" : "#1A3A6B"};padding:2px 8px;border-radius:12px;font-size:11px">${o.status}</span></td>
      </tr>`;
    }).join("");

    const html = `<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><title>${title}</title>
    <style>
      body{font-family:Arial,sans-serif;font-size:12px;color:#222;margin:20px;}
      h1{font-size:18px;color:#1A3A6B;margin-bottom:2px;}
      .sub{font-size:11px;color:#666;margin-bottom:16px;}
      .stats{display:grid;grid-template-columns:repeat(5,1fr);gap:10px;margin-bottom:20px;}
      .stat{background:#E8EEF8;border-radius:6px;padding:10px;text-align:center;}
      .stat-lbl{font-size:10px;text-transform:uppercase;color:#666;margin-bottom:3px;}
      .stat-val{font-size:16px;font-weight:800;color:#1A3A6B;}
      table{width:100%;border-collapse:collapse;margin-top:10px;}
      th{background:#1A3A6B;color:#fff;padding:7px 10px;text-align:left;font-size:11px;}
      td{padding:6px 10px;border-bottom:1px solid #e0e4eb;}
      tr:nth-child(even) td{background:#f8f9fa;}
      .total-row td{font-weight:700;border-top:2px solid #1A3A6B;background:#E8EEF8!important;}
      @media print{button{display:none;}}
    </style></head>
    <body>
    <h1>🐾 ITADOG — ${title}</h1>
    <div class="sub">Gerado em: ${new Date().toLocaleString("pt-BR")} | ${orders.length} pedidos</div>
    <div class="stats">
      <div class="stat"><div class="stat-lbl">Subtotal</div><div class="stat-val">${fmtCurrency(totals.sub)}</div></div>
      <div class="stat"><div class="stat-lbl">Desconto</div><div class="stat-val" style="color:#D42B2B">${fmtCurrency(totals.disc)}</div></div>
      <div class="stat"><div class="stat-lbl">Total</div><div class="stat-val">${fmtCurrency(totals.total)}</div></div>
      <div class="stat"><div class="stat-lbl">Custo Fábrica</div><div class="stat-val" style="color:#666">${fmtCurrency(totals.cost)}</div></div>
      <div class="stat"><div class="stat-lbl">Margem</div><div class="stat-val" style="color:#1A8A4A">${fmtCurrency(totals.margin)}</div></div>
    </div>
    <table>
      <thead><tr><th>Data Visita</th><th>Cliente</th><th>Data NF</th><th>Subtotal</th><th>Desconto</th><th>Total</th><th>Custo</th><th>Margem</th><th>Prazo</th><th>Status</th></tr></thead>
      <tbody>
        ${rows}
        <tr class="total-row">
          <td colspan="3">TOTAIS (${orders.length} pedidos)</td>
          <td>${fmtCurrency(totals.sub)}</td>
          <td>${fmtCurrency(totals.disc)}</td>
          <td>${fmtCurrency(totals.total)}</td>
          <td>${fmtCurrency(totals.cost)}</td>
          <td>${fmtCurrency(totals.margin)}</td>
          <td colspan="2"></td>
        </tr>
      </tbody>
    </table>
    <br><button onclick="window.print()" style="padding:8px 18px;background:#1A3A6B;color:#fff;border:none;border-radius:6px;cursor:pointer;font-size:13px;">🖨️ Imprimir</button>
    </body></html>`;

    const w = window.open("", "_blank");
    w?.document.write(html);
    w?.document.close();
  };

  const reportWeek = () => {
    const since = new Date(Date.now() - 7 * 86400000).toISOString().slice(0, 10);
    printReport("Pedidos da Semana", orders.filter((o) => o.visit_date >= since));
  };

  const reportMonth = () => {
    const filtered = selMonth ? orders.filter((o) => monthKey(o.visit_date) === selMonth) : orders;
    printReport(`Pedidos de ${monthLabel(selMonth)}`, filtered);
  };

  const reportClient = () => {
    const client = clients.find((c) => String(c.id) === selClient);
    const filtered = orders.filter((o) => o.client_id === Number(selClient));
    printReport(`Relatório — ${client?.name || "Cliente"}`, filtered);
  };

  const reportTopProds = () => {
    const prodMap: Record<string, { desc: string; qty: number; val: number }> = {};
    orders.forEach((o) => (o.items || []).forEach((it) => {
      if (!prodMap[it.description]) prodMap[it.description] = { desc: it.description, qty: 0, val: 0 };
      prodMap[it.description].qty += it.qty;
      prodMap[it.description].val += it.price * it.qty;
    }));
    const sorted = Object.values(prodMap).sort((a, b) => b.qty - a.qty);
    const rows = sorted.map((p, i) => `<tr><td>${i + 1}</td><td>${p.desc}</td><td><strong>${p.qty}</strong></td><td>${fmtCurrency(p.val)}</td></tr>`).join("");
    const html = `<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><title>Produtos Mais Vendidos</title>
    <style>body{font-family:Arial;font-size:12px;margin:20px;}h1{color:#1A3A6B;}table{width:100%;border-collapse:collapse;}th{background:#1A3A6B;color:#fff;padding:7px 10px;}td{padding:6px 10px;border-bottom:1px solid #e0e4eb;}tr:nth-child(even) td{background:#f8f9fa;}@media print{button{display:none;}}</style></head>
    <body><h1>🏆 Produtos Mais Vendidos</h1><p>Gerado: ${new Date().toLocaleString("pt-BR")}</p>
    <table><thead><tr><th>#</th><th>Produto</th><th>Qtde</th><th>Valor</th></tr></thead><tbody>${rows}</tbody></table>
    <br><button onclick="window.print()" style="padding:8px 18px;background:#1A3A6B;color:#fff;border:none;border-radius:6px;cursor:pointer;">🖨️ Imprimir</button></body></html>`;
    const w = window.open("", "_blank");
    w?.document.write(html);
    w?.document.close();
  };

  const reportFinanceiro = () => {
    const byClient: Record<number, { name: string; orders: number; sold: number; cost: number; margin: number }> = {};
    orders.forEach((o) => {
      if (!byClient[o.client_id]) byClient[o.client_id] = { name: o.client_name || "", orders: 0, sold: 0, cost: 0, margin: 0 };
      const t = calcOrderTotals(o);
      byClient[o.client_id].orders++;
      byClient[o.client_id].sold   += t.total;
      byClient[o.client_id].cost   += t.cost;
      byClient[o.client_id].margin += t.margin;
    });
    const sorted = Object.values(byClient).sort((a, b) => b.sold - a.sold);
    const totalSold = sorted.reduce((s, x) => s + x.sold, 0);
    const rows = sorted.map((x) => `<tr><td><strong>${x.name}</strong></td><td>${x.orders}</td><td>${fmtCurrency(x.sold)}</td><td>${fmtCurrency(x.cost)}</td><td style="color:#1A8A4A;font-weight:700">${fmtCurrency(x.margin)}</td></tr>`).join("");
    const html = `<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><title>Relatório Financeiro</title>
    <style>body{font-family:Arial;font-size:12px;margin:20px;}h1{color:#1A3A6B;}table{width:100%;border-collapse:collapse;}th{background:#1A3A6B;color:#fff;padding:7px 10px;}td{padding:6px 10px;border-bottom:1px solid #e0e4eb;}tr:nth-child(even) td{background:#f8f9fa;}.total td{font-weight:700;border-top:2px solid #1A3A6B;background:#E8EEF8!important;}@media print{button{display:none;}}</style></head>
    <body><h1>💰 Relatório Financeiro</h1><p>Gerado: ${new Date().toLocaleString("pt-BR")} | Total: ${fmtCurrency(totalSold)}</p>
    <table><thead><tr><th>Cliente</th><th>Pedidos</th><th>Faturado</th><th>Custo</th><th>Margem</th></tr></thead><tbody>${rows}
    <tr class="total"><td>TOTAL</td><td>${sorted.reduce((s,x) => s+x.orders,0)}</td><td>${fmtCurrency(totalSold)}</td><td>${fmtCurrency(sorted.reduce((s,x) => s+x.cost,0))}</td><td>${fmtCurrency(sorted.reduce((s,x) => s+x.margin,0))}</td></tr>
    </tbody></table>
    <br><button onclick="window.print()" style="padding:8px 18px;background:#1A3A6B;color:#fff;border:none;border-radius:6px;cursor:pointer;">🖨️ Imprimir</button></body></html>`;
    const w = window.open("", "_blank");
    w?.document.write(html);
    w?.document.close();
  };

  const reportRouteWeek = () => {
    const todayDay = new Date().getDay();
    window.open("/rotas", "_blank");
  };

  return (
    <div className="section">
      <div className="sec-title" style={{ marginBottom: 18 }}>📊 Relatórios</div>
      <div className="g3">
        {/* Weekly */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>📅</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Pedidos da Semana</div>
          <div style={{ fontSize: 12, color: "var(--gray-400)", marginBottom: 12 }}>Últimos 7 dias</div>
          <button className="btn btn-blue" onClick={reportWeek}>Gerar PDF</button>
        </div>

        {/* Monthly */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>📆</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Pedidos do Mês</div>
          <select className="fc" style={{ width: 140, marginBottom: 8 }} value={selMonth} onChange={(e) => setSelMonth(e.target.value)}>
            {months.map((m) => <option key={m} value={m}>{monthLabel(m)}</option>)}
          </select>
          <br />
          <button className="btn btn-blue" onClick={reportMonth}>Gerar PDF</button>
        </div>

        {/* By client */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>👤</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Por Cliente</div>
          <select className="fc" style={{ width: 160, marginBottom: 8 }} value={selClient} onChange={(e) => setSelClient(e.target.value)}>
            {clients.map((c) => <option key={c.id} value={c.id}>{c.name}</option>)}
          </select>
          <br />
          <button className="btn btn-blue" onClick={reportClient}>Gerar PDF</button>
        </div>

        {/* Top products */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>📦</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Produtos Mais Vendidos</div>
          <div style={{ fontSize: 12, color: "var(--gray-400)", marginBottom: 12 }}>Ranking geral</div>
          <button className="btn btn-blue" onClick={reportTopProds}>Gerar PDF</button>
        </div>

        {/* Route */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>🗺️</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Rota da Semana</div>
          <div style={{ fontSize: 12, color: "var(--gray-400)", marginBottom: 12 }}>Ver aba Rotas</div>
          <button className="btn btn-blue" onClick={reportRouteWeek}>Ver Rotas</button>
        </div>

        {/* Financial */}
        <div className="card" style={{ padding: 18, textAlign: "center" }}>
          <div style={{ fontSize: 34, marginBottom: 8 }}>💰</div>
          <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>Financeiro Geral</div>
          <div style={{ fontSize: 12, color: "var(--gray-400)", marginBottom: 12 }}>Por cliente</div>
          <button className="btn btn-blue" onClick={reportFinanceiro}>Gerar PDF</button>
        </div>
      </div>
    </div>
  );
}
