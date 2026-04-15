"use client";

import { useEffect, useState, useCallback } from "react";
import type { Client, Visit, Order } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, alertClass, lastVisitDate,
  calcOrderTotals, DAYS_FULL_PT,
} from "@/lib/utils";

export default function RotasPage() {
  const [clients, setClients] = useState<Client[]>([]);
  const [visits,  setVisits]  = useState<Visit[]>([]);
  const [orders,  setOrders]  = useState<Order[]>([]);
  const [loading, setLoading] = useState(true);

  const [dayFilter,   setDayFilter]   = useState("");
  const [cityFilter,  setCityFilter]  = useState("");
  const [orderFilter, setOrderFilter] = useState("overdue");
  const [cities,      setCities]      = useState<string[]>([]);

  const load = useCallback(async () => {
    const [c, v, o] = await Promise.all([
      fetch("/api/clients").then((r) => r.json()),
      fetch("/api/visits").then((r) => r.json()),
      fetch("/api/orders").then((r) => r.json()),
    ]);
    const cl: Client[] = c.data || [];
    setClients(cl);
    setVisits(v.data  || []);
    setOrders(o.data  || []);
    const uniqueCities = [...new Set(cl.map((x) => x.city).filter(Boolean))].sort() as string[];
    setCities(uniqueCities);
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  // Filter + sort clients
  let filtered = clients.filter((c) => {
    if (dayFilter  && String(c.day) !== dayFilter)  return false;
    if (cityFilter && c.city !== cityFilter)          return false;
    return true;
  });

  filtered = [...filtered].sort((a, b) => {
    const dsA = daysSince(lastVisitDate(visits, a.id));
    const dsB = daysSince(lastVisitDate(visits, b.id));
    if (orderFilter === "overdue") return (dsB / b.freq) - (dsA / a.freq);
    if (orderFilter === "days")    return dsB - dsA;
    return a.name.localeCompare(b.name);
  });

  // Group by day → city
  const days = dayFilter ? [Number(dayFilter)] : [1, 2, 3, 4, 5];
  const grouped: Record<number, Record<string, Client[]>> = {};
  for (const day of days) {
    grouped[day] = {};
    const dayClients = filtered.filter((c) => c.day === day);
    dayClients.forEach((c) => {
      const city = c.city || "Sem cidade";
      if (!grouped[day][city]) grouped[day][city] = [];
      grouped[day][city].push(c);
    });
  }

  const sendRouteWhatsApp = () => {
    const lines: string[] = [`🗺️ *Rota ITADOG*`];
    if (dayFilter)  lines.push(`Dia: ${DAYS_FULL_PT[Number(dayFilter)]}`);
    if (cityFilter) lines.push(`Cidade: ${cityFilter}`);
    lines.push("");
    for (const day of days) {
      const cities = Object.keys(grouped[day]);
      if (!cities.length) continue;
      lines.push(`*${DAYS_FULL_PT[day]}*`);
      cities.forEach((city) => {
        lines.push(`📍 ${city}`);
        grouped[day][city].forEach((c) => {
          const lv = lastVisitDate(visits, c.id);
          const ds = daysSince(lv);
          lines.push(`  • ${c.name} (${ds === 9999 ? "nunca" : ds + "d"})`);
        });
      });
      lines.push("");
    }
    window.open(`https://wa.me/?text=${encodeURIComponent(lines.join("\n"))}`, "_blank");
  };

  const exportRoutePDF = () => {
    const rows = filtered.map((c) => {
      const lv  = lastVisitDate(visits, c.id);
      const ds  = daysSince(lv);
      const lo  = orders.filter((o) => o.client_id === c.id).sort((a, b) => b.visit_date?.localeCompare(a.visit_date || "") || 0)[0];
      return `<tr><td>${DAYS_FULL_PT[c.day] || c.day}</td><td><strong>${c.name}</strong></td><td>${c.city}</td><td>${fmtDate(lv)}</td><td>${ds === 9999 ? "Nunca" : ds + "d"}</td><td>${lo ? fmtCurrency(calcOrderTotals(lo).total) : "—"}</td></tr>`;
    }).join("");
    const html = `<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><title>Rota ITADOG</title>
    <style>body{font-family:Arial;font-size:12px;margin:20px;}h1{color:#1A3A6B;}table{width:100%;border-collapse:collapse;}th{background:#1A3A6B;color:#fff;padding:7px 10px;}td{padding:6px 10px;border-bottom:1px solid #e0e4eb;}@media print{button{display:none;}}</style></head>
    <body><h1>🗺️ Rota ITADOG</h1><p>Gerado: ${new Date().toLocaleString("pt-BR")}</p>
    <table><thead><tr><th>Dia</th><th>Cliente</th><th>Cidade</th><th>Última Visita</th><th>Dias</th><th>Último Pedido</th></tr></thead><tbody>${rows}</tbody></table>
    <br><button onclick="window.print()" style="padding:8px 18px;background:#1A3A6B;color:#fff;border:none;border-radius:6px;cursor:pointer;">🖨️ Imprimir</button></body></html>`;
    const w = window.open("", "_blank");
    w?.document.write(html);
    w?.document.close();
  };

  return (
    <div className="section">
      <div className="sec-top"><div className="sec-title">🗺️ Rotas</div></div>

      {/* Filters */}
      <div className="card" style={{ marginBottom: 18 }}>
        <div className="card-body">
          <div className="ir3" style={{ marginBottom: 14 }}>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Dia da Visita</label>
              <select className="fc" value={dayFilter} onChange={(e) => setDayFilter(e.target.value)}>
                <option value="">Todos os dias</option>
                <option value="1">Segunda-feira</option>
                <option value="2">Terça-feira</option>
                <option value="3">Quarta-feira</option>
                <option value="4">Quinta-feira</option>
                <option value="5">Sexta-feira</option>
              </select>
            </div>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Cidade</label>
              <select className="fc" value={cityFilter} onChange={(e) => setCityFilter(e.target.value)}>
                <option value="">Todas</option>
                {cities.map((c) => <option key={c} value={c}>{c}</option>)}
              </select>
            </div>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Ordenar por</label>
              <select className="fc" value={orderFilter} onChange={(e) => setOrderFilter(e.target.value)}>
                <option value="overdue">Mais atrasados primeiro</option>
                <option value="name">Nome A-Z</option>
                <option value="days">Mais dias sem visita</option>
              </select>
            </div>
          </div>
          <div style={{ display: "flex", gap: 9, alignItems: "center", flexWrap: "wrap" }}>
            <button className="btn btn-whats" onClick={sendRouteWhatsApp}>💬 Enviar Rota pelo WhatsApp</button>
            <button className="btn btn-pdf btn-sm" onClick={exportRoutePDF}>📄 PDF da Rota</button>
            <span style={{ fontSize: 12, color: "var(--gray-400)" }}>{filtered.length} cliente(s)</span>
          </div>
        </div>
      </div>

      {/* Route */}
      {days.map((day) => {
        const dayCities = Object.keys(grouped[day]);
        if (!dayCities.length) return null;
        return (
          <div key={day} style={{ marginBottom: 24 }}>
            <div className="route-day-hd">{DAYS_FULL_PT[day]}</div>
            {dayCities.map((city) => (
              <div key={city} style={{ marginBottom: 16 }}>
                <div className="route-city-lbl">📍 {city}</div>
                {grouped[day][city].map((c) => {
                  const lv  = lastVisitDate(visits, c.id);
                  const ds  = daysSince(lv);
                  const cls = alertClass(ds, c.freq);
                  const lo  = orders
                    .filter((o) => o.client_id === c.id)
                    .sort((a, b) => (b.visit_date || "").localeCompare(a.visit_date || ""))[0];
                  return (
                    <div key={c.id} className="rclient">
                      <div>
                        <div className="rclient-name">{c.name}</div>
                        <div className="rclient-meta">
                          Última visita: {fmtDate(lv)}
                          {lo && ` | Último pedido: ${fmtCurrency(calcOrderTotals(lo).total)} em ${fmtDate(lo.visit_date)}`}
                        </div>
                      </div>
                      <span className={`badge ${cls === "red" ? "bd" : cls === "warn" ? "bw" : "bs"}`}>
                        {ds === 9999 ? "Nunca" : `${ds}d`}
                      </span>
                    </div>
                  );
                })}
              </div>
            ))}
          </div>
        );
      })}
    </div>
  );
}
