"use client";

import { useEffect, useState, useCallback } from "react";
import type { Client, Visit, Order } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, alertClass, lastVisitDate,
  calcOrderTotals, includes, VISIT_RESULTS, ORDER_STATUSES,
} from "@/lib/utils";

type View = "list" | "detail";

export default function CRMPage() {
  const [clients,  setClients]  = useState<Client[]>([]);
  const [visits,   setVisits]   = useState<Visit[]>([]);
  const [orders,   setOrders]   = useState<Order[]>([]);
  const [search,   setSearch]   = useState("");
  const [view,     setView]     = useState<View>("list");
  const [selected, setSelected] = useState<Client | null>(null);
  const [tab,      setTab]      = useState("resumo");
  const [loading,  setLoading]  = useState(true);

  // Modal state
  const [showAddClient,  setShowAddClient]  = useState(false);
  const [showAddVisit,   setShowAddVisit]   = useState(false);
  const [editingClient,  setEditingClient]  = useState<Client | null>(null);

  const load = useCallback(async () => {
    const [c, v, o] = await Promise.all([
      fetch("/api/clients").then((r) => r.json()),
      fetch("/api/visits").then((r) => r.json()),
      fetch("/api/orders").then((r) => r.json()),
    ]);
    setClients(c.data || []);
    setVisits(v.data  || []);
    setOrders(o.data  || []);
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  const filtered = clients.filter((c) =>
    includes(c.name, search) || includes(c.city, search)
  );

  const saveClient = async (form: Partial<Client>) => {
    if (editingClient) {
      await fetch(`/api/clients/${editingClient.id}`, { method: "PUT", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
    } else {
      await fetch("/api/clients", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
    }
    setShowAddClient(false);
    setEditingClient(null);
    load();
  };

  const saveVisit = async (form: { date: string; result: string; obs: string }) => {
    if (!selected) return;
    await fetch("/api/visits", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ client_id: selected.id, ...form }),
    });
    setShowAddVisit(false);
    load();
  };

  const saveNote = async (notes: string) => {
    if (!selected) return;
    await fetch(`/api/clients/${selected.id}`, { method: "PUT", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ notes }) });
    load();
  };

  const deleteOrder = async (id: number) => {
    if (!confirm("Excluir este pedido?")) return;
    await fetch(`/api/orders/${id}`, { method: "DELETE" });
    load();
  };

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  if (view === "detail" && selected) {
    return <ClientDetail
      client={selected}
      visits={visits.filter((v) => v.client_id === selected.id)}
      orders={orders.filter((o) => o.client_id === selected.id)}
      allProducts={[]}
      onBack={() => { setView("list"); setSelected(null); setTab("resumo"); }}
      onAddVisit={() => setShowAddVisit(true)}
      onEdit={() => { setEditingClient(selected); setShowAddClient(true); }}
      onDeleteOrder={deleteOrder}
      onSaveNote={saveNote}
      tab={tab}
      setTab={setTab}
      showAddVisit={showAddVisit}
      setShowAddVisit={setShowAddVisit}
      onSaveVisit={saveVisit}
    />;
  }

  // Summary stats
  const red  = clients.filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "red").length;
  const warn = clients.filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "warn").length;
  const now  = new Date();
  const thisMonthVisits = visits.filter((v) => v.date.slice(0, 7) === `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, "0")}`).length;

  return (
    <div className="section">
      <div className="sec-top">
        <div className="sec-title">👥 Clientes</div>
        <div style={{ display: "flex", gap: 9, flexWrap: "wrap", alignItems: "center" }}>
          <input className="fc" style={{ width: 200 }} placeholder="🔍 Buscar..." value={search} onChange={(e) => setSearch(e.target.value)} />
          <button className="btn btn-red btn-sm" onClick={() => { setEditingClient(null); setShowAddClient(true); }}>+ Cliente</button>
        </div>
      </div>

      {/* Summary */}
      <div className="g4" style={{ marginBottom: 18 }}>
        {[
          { label: "Total", value: clients.length, cls: "" },
          { label: "Atrasados", value: red, cls: "bd" },
          { label: "Atenção", value: warn, cls: "bw" },
          { label: "Visitas / Mês", value: thisMonthVisits, cls: "bb" },
        ].map((s, i) => (
          <div key={i} className="stat">
            <div className="stat-label">{s.label}</div>
            <div className="stat-value">{s.value}</div>
          </div>
        ))}
      </div>

      {/* Client grid */}
      <div className="clients-grid">
        {filtered.map((c) => {
          const lv  = lastVisitDate(visits, c.id);
          const ds  = daysSince(lv);
          const cls = alertClass(ds, c.freq);
          const totalOrders = orders.filter((o) => o.client_id === c.id).length;
          const totalSold   = orders.filter((o) => o.client_id === c.id).reduce((s, o) => s + calcOrderTotals(o).total, 0);
          return (
            <div
              key={c.id}
              className={`ccard c-${cls}`}
              onClick={() => { setSelected(c); setView("detail"); }}
            >
              <div className="ccard-name">{c.name}</div>
              <div className="ccard-city">📍 {c.city || "—"}</div>
              <div className="cmeta">
                <div className="cmeta-row">
                  <span className="cmeta-lbl">Última visita</span>
                  <span className="cmeta-val">{fmtDate(lv)}</span>
                </div>
                <div className="cmeta-row">
                  <span className="cmeta-lbl">Dias sem visita</span>
                  <span>
                    <span className={`badge ${cls === "red" ? "bd" : cls === "warn" ? "bw" : "bs"}`}>
                      {ds === 9999 ? "Nunca" : `${ds}d`}
                    </span>
                  </span>
                </div>
                <div className="cmeta-row">
                  <span className="cmeta-lbl">Pedidos</span>
                  <span className="cmeta-val">{totalOrders}</span>
                </div>
                <div className="cmeta-row">
                  <span className="cmeta-lbl">Total vendido</span>
                  <span className="cmeta-val">{fmtCurrency(totalSold)}</span>
                </div>
              </div>
            </div>
          );
        })}
      </div>

      {/* Add/Edit Client Modal */}
      {showAddClient && (
        <ClientForm
          client={editingClient}
          onSave={saveClient}
          onClose={() => { setShowAddClient(false); setEditingClient(null); }}
        />
      )}
    </div>
  );
}

// ─── Client Detail ───────────────────────────────────────────────────────────

function ClientDetail({
  client, visits, orders, onBack, onAddVisit, onEdit,
  onDeleteOrder, onSaveNote, tab, setTab,
  showAddVisit, setShowAddVisit, onSaveVisit,
}: {
  client: Client;
  visits: Visit[];
  orders: Order[];
  allProducts: never[];
  onBack: () => void;
  onAddVisit: () => void;
  onEdit: () => void;
  onDeleteOrder: (id: number) => void;
  onSaveNote: (n: string) => void;
  tab: string;
  setTab: (t: string) => void;
  showAddVisit: boolean;
  setShowAddVisit: (v: boolean) => void;
  onSaveVisit: (f: { date: string; result: string; obs: string }) => void;
}) {
  const lv  = visits.sort((a, b) => b.date.localeCompare(a.date))[0]?.date || null;
  const ds  = daysSince(lv);
  const cls = alertClass(ds, client.freq);
  const totalSold  = orders.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const totalMargin = orders.reduce((s, o) => s + calcOrderTotals(o).margin, 0);

  // Top products
  const prodMap: Record<string, { desc: string; qty: number }> = {};
  orders.forEach((o) => (o.items || []).forEach((it) => {
    if (!prodMap[it.description]) prodMap[it.description] = { desc: it.description, qty: 0 };
    prodMap[it.description].qty += it.qty;
  }));
  const topProds = Object.values(prodMap).sort((a, b) => b.qty - a.qty).slice(0, 8);

  // Suggestions: never bought
  const bought = new Set(Object.keys(prodMap));

  const [note, setNote] = useState(client.notes || "");

  return (
    <div className="section">
      <div style={{ display: "flex", alignItems: "center", gap: 10, marginBottom: 16, cursor: "pointer", color: "var(--gray-600)", fontSize: 13 }} onClick={onBack}>
        ← Voltar
      </div>

      <div style={{ display: "flex", alignItems: "flex-start", justifyContent: "space-between", marginBottom: 18, flexWrap: "wrap", gap: 10 }}>
        <div>
          <div style={{ fontFamily: "'Barlow Condensed',sans-serif", fontSize: 28, fontWeight: 800, color: "var(--blue)" }}>{client.name}</div>
          <div style={{ fontSize: 13, color: "var(--gray-400)", marginTop: 3 }}>
            📍 {client.city} {client.phone && `| 📞 ${client.phone}`} {client.cnpj && `| ${client.cnpj}`}
          </div>
        </div>
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap" }}>
          <button className="btn btn-blue btn-sm" onClick={onAddVisit}>+ Visita</button>
          <button className="btn btn-outline btn-sm" onClick={onEdit}>✏️ Editar</button>
        </div>
      </div>

      {/* Stats */}
      <div className="g4" style={{ marginBottom: 18 }}>
        <div className="stat"><div className="stat-label">Total Vendido</div><div className="stat-value" style={{ fontSize: 20 }}>{fmtCurrency(totalSold)}</div></div>
        <div className="stat"><div className="stat-label">Pedidos</div><div className="stat-value">{orders.length}</div></div>
        <div className="stat"><div className="stat-label">Última Visita</div><div className="stat-value" style={{ fontSize: 16 }}>{fmtDate(lv)}</div></div>
        <div className="stat"><div className="stat-label">Margem</div><div className="stat-value" style={{ fontSize: 20, color: "var(--success)" }}>{fmtCurrency(totalMargin)}</div></div>
      </div>

      {/* Inner tabs */}
      <div className="inner-tabs">
        {[["resumo","Resumo"],["pedidos","Pedidos"],["visitas","Visitas"],["notas","Anotações"]].map(([k,l]) => (
          <div key={k} className={`it ${tab === k ? "active" : ""}`} onClick={() => setTab(k)}>{l}</div>
        ))}
      </div>

      {/* Tab: Resumo */}
      {tab === "resumo" && (
        <div className="g2">
          <div className="card">
            <div className="card-hd"><span className="card-title">🏆 Mais Comprados</span></div>
            <div className="card-body">
              {topProds.length === 0 ? <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem dados</div>
                : topProds.map((p, i) => (
                  <div key={i} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                    <span style={{ flex: 1 }}>{i+1}. {p.desc}</span>
                    <span className="badge bb">{p.qty}x</span>
                  </div>
                ))
              }
            </div>
          </div>
          <div className="card">
            <div className="card-hd"><span className="card-title">📅 Últimas Visitas</span></div>
            <div className="card-body">
              {visits.slice(0, 5).map((v) => (
                <div key={v.id} style={{ display: "flex", justifyContent: "space-between", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <span>{fmtDate(v.date)}</span>
                  <span className={`badge ${v.result === "pedido" ? "bs" : v.result === "ausente" ? "bd" : "bw"}`}>
                    {VISIT_RESULTS[v.result] || v.result}
                  </span>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* Tab: Pedidos */}
      {tab === "pedidos" && (
        <div className="card">
          <div className="card-hd"><span className="card-title">Histórico de Pedidos</span></div>
          <div className="card-body tbl-wrap">
            <table>
              <thead><tr><th>Data Visita</th><th>NF</th><th>Valor</th><th>Desc.</th><th>Status</th><th></th></tr></thead>
              <tbody>
                {orders.map((o) => {
                  const t = calcOrderTotals(o);
                  return (
                    <tr key={o.id}>
                      <td>{fmtDate(o.visit_date)}</td>
                      <td>{fmtDate(o.nf_date)}</td>
                      <td style={{ fontWeight: 700 }}>{fmtCurrency(t.total)}</td>
                      <td style={{ color: "var(--red)" }}>{t.disc > 0 ? fmtCurrency(t.disc) : "—"}</td>
                      <td><span className={`badge ${o.status === "Entregue" ? "bs" : o.status === "Cancelado" ? "bd" : "bb"}`}>{o.status}</span></td>
                      <td>
                        <button className="btn btn-outline btn-xs" onClick={() => onDeleteOrder(o.id)} style={{ color: "var(--red)" }}>🗑️</button>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* Tab: Visitas */}
      {tab === "visitas" && (
        <div>
          <div className="sec-top">
            <span className="card-title">Visitas</span>
            <button className="btn btn-blue btn-sm" onClick={onAddVisit}>+ Registrar</button>
          </div>
          <div className="card">
            <div className="card-body tbl-wrap">
              <table>
                <thead><tr><th>Data</th><th>Resultado</th><th>Observação</th></tr></thead>
                <tbody>
                  {visits.map((v) => (
                    <tr key={v.id}>
                      <td>{fmtDate(v.date)}</td>
                      <td><span className={`badge ${v.result === "pedido" ? "bs" : v.result === "ausente" ? "bd" : "bw"}`}>{VISIT_RESULTS[v.result]}</span></td>
                      <td style={{ color: "var(--gray-600)" }}>{v.obs || "—"}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      )}

      {/* Tab: Notas */}
      {tab === "notas" && (
        <div className="card">
          <div className="card-hd">
            <span className="card-title">📝 Anotações</span>
            <button className="btn btn-blue btn-sm" onClick={() => onSaveNote(note)}>💾 Salvar</button>
          </div>
          <div className="card-body">
            <textarea className="fc" rows={8} value={note} onChange={(e) => setNote(e.target.value)} placeholder="Preferências, observações..." />
          </div>
        </div>
      )}

      {/* Add Visit Modal */}
      {showAddVisit && (
        <VisitForm
          onSave={onSaveVisit}
          onClose={() => setShowAddVisit(false)}
        />
      )}
    </div>
  );
}

// ─── Client Form Modal ────────────────────────────────────────────────────────

function ClientForm({ client, onSave, onClose }: {
  client: Client | null;
  onSave: (f: Partial<Client>) => void;
  onClose: () => void;
}) {
  const [form, setForm] = useState<Partial<Client>>(client || { freq: 15, day: 1 });
  const set = (k: keyof Client, v: string | number) => setForm((f) => ({ ...f, [k]: v }));

  return (
    <div className="modal-overlay open">
      <div className="modal">
        <div className="modal-hd">
          <div className="modal-title">{client ? "Editar Cliente" : "Novo Cliente"}</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="ir2">
            <div className="fg"><label className="fl">Nome</label><input className="fc" value={form.name || ""} onChange={(e) => set("name", e.target.value)} placeholder="Nome da agropecuária" /></div>
            <div className="fg"><label className="fl">CNPJ</label><input className="fc" value={form.cnpj || ""} onChange={(e) => set("cnpj", e.target.value)} /></div>
          </div>
          <div className="ir2">
            <div className="fg"><label className="fl">Cidade</label><input className="fc" value={form.city || ""} onChange={(e) => set("city", e.target.value)} /></div>
            <div className="fg"><label className="fl">Telefone/WhatsApp</label><input className="fc" value={form.phone || ""} onChange={(e) => set("phone", e.target.value)} /></div>
          </div>
          <div className="ir2">
            <div className="fg"><label className="fl">Frequência</label>
              <select className="fc" value={form.freq || 15} onChange={(e) => set("freq", Number(e.target.value))}>
                <option value={7}>Semanal (7d)</option>
                <option value={15}>Quinzenal (15d)</option>
                <option value={30}>Mensal (30d)</option>
              </select>
            </div>
            <div className="fg"><label className="fl">Dia Preferido</label>
              <select className="fc" value={form.day || 1} onChange={(e) => set("day", Number(e.target.value))}>
                <option value={1}>Segunda</option>
                <option value={2}>Terça</option>
                <option value={3}>Quarta</option>
                <option value={4}>Quinta</option>
                <option value={5}>Sexta</option>
              </select>
            </div>
          </div>
          <div className="fg"><label className="fl">Endereço</label><input className="fc" value={form.address || ""} onChange={(e) => set("address", e.target.value)} /></div>
          <div className="fg"><label className="fl">Anotações</label><textarea className="fc" rows={3} value={form.notes || ""} onChange={(e) => set("notes", e.target.value)} /></div>
        </div>
        <div className="modal-ft">
          <button className="btn btn-outline" onClick={onClose}>Cancelar</button>
          <button className="btn btn-red" onClick={() => onSave(form)}>Salvar</button>
        </div>
      </div>
    </div>
  );
}

// ─── Visit Form Modal ─────────────────────────────────────────────────────────

function VisitForm({ onSave, onClose }: {
  onSave: (f: { date: string; result: string; obs: string }) => void;
  onClose: () => void;
}) {
  const [date,   setDate]   = useState(new Date().toISOString().slice(0, 10));
  const [result, setResult] = useState("sem-pedido");
  const [obs,    setObs]    = useState("");

  return (
    <div className="modal-overlay open">
      <div className="modal" style={{ maxWidth: 420 }}>
        <div className="modal-hd"><div className="modal-title">Registrar Visita</div><span className="modal-x" onClick={onClose}>✕</span></div>
        <div className="modal-body">
          <div className="fg"><label className="fl">Data</label><input type="date" className="fc" value={date} onChange={(e) => setDate(e.target.value)} /></div>
          <div className="fg"><label className="fl">Resultado</label>
            <select className="fc" value={result} onChange={(e) => setResult(e.target.value)}>
              <option value="pedido">Fez pedido</option>
              <option value="sem-pedido">Sem pedido</option>
              <option value="ausente">Cliente ausente</option>
            </select>
          </div>
          <div className="fg"><label className="fl">Observação</label><textarea className="fc" rows={2} value={obs} onChange={(e) => setObs(e.target.value)} /></div>
        </div>
        <div className="modal-ft">
          <button className="btn btn-outline" onClick={onClose}>Cancelar</button>
          <button className="btn btn-red" onClick={() => onSave({ date, result, obs })}>Salvar</button>
        </div>
      </div>
    </div>
  );
}
