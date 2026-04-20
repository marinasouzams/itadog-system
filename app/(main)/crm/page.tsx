"use client";

import { useEffect, useState, useCallback } from "react";
import type { Client, Visit, Order } from "@/lib/types";
import {
  fmtCurrency, fmtDate, daysSince, alertClass, lastVisitDate,
  calcOrderTotals, includes, VISIT_RESULTS,
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

  const [showAddClient, setShowAddClient] = useState(false);
  const [showAddVisit,  setShowAddVisit]  = useState(false);
  const [editingClient, setEditingClient] = useState<Client | null>(null);

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
    includes(c.name, search) || includes(c.city || "", search)
  );

  const saveClient = async (form: Partial<Client>) => {
    if (editingClient) {
      await fetch(`/api/clients/${editingClient.id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(form),
      });
    } else {
      await fetch("/api/clients", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(form),
      });
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
    await fetch(`/api/clients/${selected.id}`, {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ notes }),
    });
    load();
  };

  const deleteOrder = async (id: number) => {
    if (!confirm("Excluir este pedido?")) return;
    await fetch(`/api/orders/${id}`, { method: "DELETE" });
    load();
  };

  if (loading) {
    return (
      <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>
        Carregando...
      </div>
    );
  }

  if (view === "detail" && selected) {
    return (
      <ClientDetail
        client={selected}
        visits={visits.filter((v) => v.client_id === selected.id)}
        orders={orders.filter((o) => o.client_id === selected.id)}
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
        showEditClient={showAddClient}
        editingClient={editingClient}
        onSaveClient={saveClient}
        onCloseClientForm={() => { setShowAddClient(false); setEditingClient(null); }}
      />
    );
  }

  // ─── Summary stats ────────────────────────────────────────────────────────────
  const redCount  = clients.filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "red").length;
  const warnCount = clients.filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "warn").length;
  const okCount   = clients.filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "ok").length;

  // Overdue clients sorted by urgency
  const overdueClients = clients
    .filter((c) => alertClass(daysSince(lastVisitDate(visits, c.id)), c.freq) === "red")
    .sort((a, b) => {
      const dsA = daysSince(lastVisitDate(visits, a.id));
      const dsB = daysSince(lastVisitDate(visits, b.id));
      return (dsB / b.freq) - (dsA / a.freq);
    });

  return (
    <div className="section">
      {/* Header */}
      <div className="sec-top">
        <div className="sec-title">👥 Clientes</div>
        <div style={{ display: "flex", gap: 9, flexWrap: "wrap", alignItems: "center" }}>
          <input
            className="fc"
            style={{ width: 210 }}
            placeholder="🔍 Buscar por nome ou cidade..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
          <button className="btn btn-red btn-sm" onClick={() => { setEditingClient(null); setShowAddClient(true); }}>
            + Cliente
          </button>
        </div>
      </div>

      {/* 4 Summary stat cards */}
      <div className="g4" style={{ marginBottom: 18 }}>
        <div className="stat">
          <div className="stat-icon">👥</div>
          <div className="stat-label">Total</div>
          <div className="stat-value">{clients.length}</div>
        </div>
        <div className="stat">
          <div className="stat-icon">✅</div>
          <div className="stat-label">Em dia</div>
          <div className="stat-value" style={{ color: "var(--success)" }}>{okCount}</div>
        </div>
        <div className="stat">
          <div className="stat-icon">⚡</div>
          <div className="stat-label">Atenção</div>
          <div className="stat-value" style={{ color: "var(--warning)" }}>{warnCount}</div>
        </div>
        <div className="stat">
          <div className="stat-icon">🔴</div>
          <div className="stat-label">Atrasados</div>
          <div className="stat-value" style={{ color: "var(--red)" }}>{redCount}</div>
        </div>
      </div>

      {/* Alert list for overdue clients */}
      {overdueClients.length > 0 && (
        <div className="card" style={{ marginBottom: 18 }}>
          <div className="card-hd">
            <span className="card-title">🚨 Clientes com Visita Atrasada</span>
            <span className="badge bd">{overdueClients.length}</span>
          </div>
          <div className="card-body" style={{ padding: "10px 18px" }}>
            {overdueClients.slice(0, 10).map((c) => {
              const lv = lastVisitDate(visits, c.id);
              const ds = daysSince(lv);
              const phone = c.phone?.replace(/\D/g, "");
              const msg   = `Olá ${c.name}, passando para agendar uma visita!`;
              return (
                <div key={c.id} style={{ display: "flex", alignItems: "center", justifyContent: "space-between", padding: "8px 0", borderBottom: "1px solid var(--gray-100)", gap: 10 }}>
                  <div style={{ flex: 1, minWidth: 0 }}>
                    <span
                      style={{ fontWeight: 700, cursor: "pointer", color: "var(--blue)" }}
                      onClick={() => { setSelected(c); setView("detail"); }}
                    >
                      {c.name}
                    </span>
                    <span style={{ fontSize: 12, color: "var(--gray-400)", marginLeft: 8 }}>{c.city}</span>
                  </div>
                  <div style={{ display: "flex", alignItems: "center", gap: 8, flexShrink: 0 }}>
                    <span style={{ fontSize: 12, color: "var(--gray-400)" }}>
                      última: {fmtDate(lv)}
                    </span>
                    <span className="badge bd">{ds === 9999 ? "Nunca" : `${ds}d`}</span>
                    {phone && (
                      <button
                        className="btn btn-whats btn-xs"
                        onClick={() => window.open(`https://wa.me/55${phone}?text=${encodeURIComponent(msg)}`, "_blank")}
                      >
                        💬
                      </button>
                    )}
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Client cards grid */}
      <div className="clients-grid">
        {filtered.map((c) => {
          const lv         = lastVisitDate(visits, c.id);
          const ds         = daysSince(lv);
          const cls        = alertClass(ds, c.freq);
          const totalOrds  = orders.filter((o) => o.client_id === c.id).length;
          const totalSold  = orders.filter((o) => o.client_id === c.id).reduce((s, o) => s + calcOrderTotals(o).total, 0);
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
                  <span className="cmeta-val">{totalOrds}</span>
                </div>
                <div className="cmeta-row">
                  <span className="cmeta-lbl">Total vendido</span>
                  <span className="cmeta-val">{fmtCurrency(totalSold)}</span>
                </div>
              </div>
            </div>
          );
        })}
        {filtered.length === 0 && (
          <div style={{ gridColumn: "1/-1", textAlign: "center", color: "var(--gray-400)", padding: 40 }}>
            Nenhum cliente encontrado
          </div>
        )}
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

// ─── Client Detail ────────────────────────────────────────────────────────────

function ClientDetail({
  client, visits, orders, onBack, onAddVisit, onEdit,
  onDeleteOrder, onSaveNote, tab, setTab,
  showAddVisit, setShowAddVisit, onSaveVisit,
  showEditClient, editingClient, onSaveClient, onCloseClientForm,
}: {
  client: Client;
  visits: Visit[];
  orders: Order[];
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
  showEditClient: boolean;
  editingClient: Client | null;
  onSaveClient: (f: Partial<Client>) => void;
  onCloseClientForm: () => void;
}) {
  const sortedVisits = [...visits].sort((a, b) => b.date.localeCompare(a.date));
  const lv           = sortedVisits[0]?.date || null;
  const ds           = daysSince(lv);
  const cls          = alertClass(ds, client.freq);
  const totalSold    = orders.reduce((s, o) => s + calcOrderTotals(o).total, 0);
  const totalMargin  = orders.reduce((s, o) => s + calcOrderTotals(o).margin, 0);

  const prodMap: Record<string, { desc: string; qty: number }> = {};
  orders.forEach((o) => (o.items || []).forEach((it) => {
    if (!prodMap[it.description]) prodMap[it.description] = { desc: it.description, qty: 0 };
    prodMap[it.description].qty += it.qty;
  }));
  const topProds = Object.values(prodMap).sort((a, b) => b.qty - a.qty).slice(0, 8);

  const [note, setNote] = useState(client.notes || "");

  const phone = client.phone?.replace(/\D/g, "");

  return (
    <div className="section">
      {/* Back */}
      <div
        style={{ display: "flex", alignItems: "center", gap: 6, marginBottom: 16, cursor: "pointer", color: "var(--gray-600)", fontSize: 13 }}
        onClick={onBack}
      >
        ← Voltar para clientes
      </div>

      {/* Client header */}
      <div style={{ display: "flex", alignItems: "flex-start", justifyContent: "space-between", marginBottom: 18, flexWrap: "wrap", gap: 10 }}>
        <div>
          <div style={{ fontFamily: "'Barlow Condensed',sans-serif", fontSize: 28, fontWeight: 800, color: "var(--blue)" }}>
            {client.name}
          </div>
          <div style={{ fontSize: 13, color: "var(--gray-400)", marginTop: 3 }}>
            📍 {client.city}
            {client.phone && ` | 📞 ${client.phone}`}
            {client.cnpj && ` | ${client.cnpj}`}
          </div>
          {client.address && (
            <div style={{ fontSize: 12, color: "var(--gray-400)" }}>📌 {client.address}</div>
          )}
        </div>
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap" }}>
          {phone && (
            <button
              className="btn btn-whats btn-sm"
              onClick={() => window.open(`https://wa.me/55${phone}`, "_blank")}
            >💬 WhatsApp</button>
          )}
          <button className="btn btn-blue btn-sm" onClick={onAddVisit}>+ Visita</button>
          <button className="btn btn-outline btn-sm" onClick={onEdit}>✏️ Editar</button>
        </div>
      </div>

      {/* Stats */}
      <div className="g4" style={{ marginBottom: 18 }}>
        <div className="stat">
          <div className="stat-label">Total Vendido</div>
          <div className="stat-value" style={{ fontSize: 20 }}>{fmtCurrency(totalSold)}</div>
        </div>
        <div className="stat">
          <div className="stat-label">Pedidos</div>
          <div className="stat-value">{orders.length}</div>
        </div>
        <div className="stat">
          <div className="stat-label">Última Visita</div>
          <div className="stat-value" style={{ fontSize: 16 }}>{fmtDate(lv)}</div>
          <div className="stat-sub">
            <span className={`badge ${cls === "red" ? "bd" : cls === "warn" ? "bw" : "bs"}`}>
              {ds === 9999 ? "Nunca visitado" : `${ds}d atrás`}
            </span>
          </div>
        </div>
        <div className="stat">
          <div className="stat-label">Margem</div>
          <div className="stat-value" style={{ fontSize: 20, color: "var(--success)" }}>{fmtCurrency(totalMargin)}</div>
        </div>
      </div>

      {/* Inner tabs */}
      <div className="inner-tabs">
        {[["resumo","Resumo"],["pedidos","Pedidos"],["visitas","Visitas"],["notas","Anotações"]].map(([k, l]) => (
          <div key={k} className={`it ${tab === k ? "active" : ""}`} onClick={() => setTab(k)}>{l}</div>
        ))}
      </div>

      {/* Tab: Resumo */}
      {tab === "resumo" && (
        <div className="g2">
          <div className="card">
            <div className="card-hd"><span className="card-title">🏆 Mais Comprados</span></div>
            <div className="card-body">
              {topProds.length === 0 ? (
                <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem dados</div>
              ) : topProds.map((p, i) => (
                <div key={i} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <span style={{ flex: 1 }}>{i + 1}. {p.desc}</span>
                  <span className="badge bb">{p.qty}x</span>
                </div>
              ))}
            </div>
          </div>
          <div className="card">
            <div className="card-hd"><span className="card-title">📅 Últimas Visitas</span></div>
            <div className="card-body">
              {sortedVisits.slice(0, 6).map((v) => (
                <div key={v.id} style={{ display: "flex", justifyContent: "space-between", alignItems: "center", padding: "5px 0", borderBottom: "1px solid var(--gray-100)", fontSize: 12 }}>
                  <span>{fmtDate(v.date)}</span>
                  <div style={{ display: "flex", flexDirection: "column", alignItems: "flex-end", gap: 2 }}>
                    <span className={`badge ${v.result === "pedido" ? "bs" : v.result === "ausente" ? "bd" : "bw"}`}>
                      {VISIT_RESULTS[v.result] || v.result}
                    </span>
                    {v.obs && <span style={{ fontSize: 10, color: "var(--gray-400)" }}>{v.obs}</span>}
                  </div>
                </div>
              ))}
              {sortedVisits.length === 0 && <div style={{ color: "var(--gray-400)", fontSize: 13 }}>Sem visitas registradas</div>}
            </div>
          </div>
        </div>
      )}

      {/* Tab: Pedidos */}
      {tab === "pedidos" && (
        <div className="card">
          <div className="card-hd">
            <span className="card-title">Histórico de Pedidos</span>
            <span className="badge bb">{orders.length}</span>
          </div>
          <div className="card-body tbl-wrap">
            {orders.length === 0 ? (
              <div style={{ color: "var(--gray-400)", fontSize: 13, textAlign: "center", padding: 20 }}>Nenhum pedido</div>
            ) : (
              <table>
                <thead>
                  <tr><th>Data Visita</th><th>NF</th><th>Valor</th><th>Desc.</th><th>Prazo</th><th>Status</th><th></th></tr>
                </thead>
                <tbody>
                  {[...orders].sort((a, b) => (b.visit_date || "").localeCompare(a.visit_date || "")).map((o) => {
                    const t = calcOrderTotals(o);
                    return (
                      <tr key={o.id}>
                        <td>{fmtDate(o.visit_date)}</td>
                        <td>{fmtDate(o.nf_date)}</td>
                        <td style={{ fontWeight: 700 }}>{fmtCurrency(t.total)}</td>
                        <td style={{ color: "var(--red)" }}>{t.disc > 0 ? fmtCurrency(t.disc) : "—"}</td>
                        <td>{o.payment || "—"}</td>
                        <td>
                          <span className={`badge ${o.status === "Entregue" ? "bs" : o.status === "Cancelado" ? "bd" : "bb"}`}>
                            {o.status}
                          </span>
                        </td>
                        <td>
                          <button className="btn btn-outline btn-xs" onClick={() => onDeleteOrder(o.id)} style={{ color: "var(--red)" }}>🗑️</button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            )}
          </div>
        </div>
      )}

      {/* Tab: Visitas */}
      {tab === "visitas" && (
        <div>
          <div className="sec-top" style={{ marginBottom: 12 }}>
            <span className="card-title">Visitas Registradas</span>
            <button className="btn btn-blue btn-sm" onClick={onAddVisit}>+ Registrar Visita</button>
          </div>
          <div className="card">
            <div className="card-body tbl-wrap">
              {visits.length === 0 ? (
                <div style={{ color: "var(--gray-400)", fontSize: 13, textAlign: "center", padding: 20 }}>Nenhuma visita</div>
              ) : (
                <table>
                  <thead><tr><th>Data</th><th>Resultado</th><th>Observação</th></tr></thead>
                  <tbody>
                    {sortedVisits.map((v) => (
                      <tr key={v.id}>
                        <td>{fmtDate(v.date)}</td>
                        <td>
                          <span className={`badge ${v.result === "pedido" ? "bs" : v.result === "ausente" ? "bd" : "bw"}`}>
                            {VISIT_RESULTS[v.result] || v.result}
                          </span>
                        </td>
                        <td style={{ color: "var(--gray-600)" }}>{v.obs || "—"}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              )}
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
            <textarea
              className="fc"
              rows={8}
              value={note}
              onChange={(e) => setNote(e.target.value)}
              placeholder="Preferências, observações, horários de atendimento..."
            />
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

      {/* Edit Client Modal */}
      {showEditClient && editingClient && (
        <ClientForm
          client={editingClient}
          onSave={onSaveClient}
          onClose={onCloseClientForm}
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
  const [form, setForm] = useState<Partial<Client>>(client ? { ...client } : { freq: 15, day: 1 });
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
            <div className="fg">
              <label className="fl">Nome *</label>
              <input className="fc" value={form.name || ""} onChange={(e) => set("name", e.target.value)} placeholder="Nome da agropecuária" />
            </div>
            <div className="fg">
              <label className="fl">CNPJ</label>
              <input className="fc" value={form.cnpj || ""} onChange={(e) => set("cnpj", e.target.value)} />
            </div>
          </div>
          <div className="ir2">
            <div className="fg">
              <label className="fl">Cidade</label>
              <input className="fc" value={form.city || ""} onChange={(e) => set("city", e.target.value)} />
            </div>
            <div className="fg">
              <label className="fl">Telefone / WhatsApp</label>
              <input className="fc" value={form.phone || ""} onChange={(e) => set("phone", e.target.value)} placeholder="(xx) 9xxxx-xxxx" />
            </div>
          </div>
          <div className="ir2">
            <div className="fg">
              <label className="fl">Frequência de Visita</label>
              <select className="fc" value={form.freq || 15} onChange={(e) => set("freq", Number(e.target.value))}>
                <option value={7}>Semanal (7d)</option>
                <option value={15}>Quinzenal (15d)</option>
                <option value={30}>Mensal (30d)</option>
                <option value={45}>45 dias</option>
                <option value={60}>Bimestral (60d)</option>
              </select>
            </div>
            <div className="fg">
              <label className="fl">Dia Preferido</label>
              <select className="fc" value={form.day || 1} onChange={(e) => set("day", Number(e.target.value))}>
                <option value={1}>Segunda-feira</option>
                <option value={2}>Terça-feira</option>
                <option value={3}>Quarta-feira</option>
                <option value={4}>Quinta-feira</option>
                <option value={5}>Sexta-feira</option>
              </select>
            </div>
          </div>
          <div className="fg">
            <label className="fl">Endereço</label>
            <input className="fc" value={form.address || ""} onChange={(e) => set("address", e.target.value)} />
          </div>
          <div className="fg">
            <label className="fl">Anotações</label>
            <textarea className="fc" rows={3} value={form.notes || ""} onChange={(e) => set("notes", e.target.value)} />
          </div>
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
      <div className="modal" style={{ maxWidth: 440 }}>
        <div className="modal-hd">
          <div className="modal-title">Registrar Visita</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="fg">
            <label className="fl">Data</label>
            <input type="date" className="fc" value={date} onChange={(e) => setDate(e.target.value)} />
          </div>
          <div className="fg">
            <label className="fl">Resultado</label>
            <select className="fc" value={result} onChange={(e) => setResult(e.target.value)}>
              <option value="pedido">Fez pedido</option>
              <option value="sem-pedido">Sem pedido</option>
              <option value="ausente">Cliente ausente</option>
            </select>
          </div>
          <div className="fg">
            <label className="fl">Observação</label>
            <textarea className="fc" rows={3} value={obs} onChange={(e) => setObs(e.target.value)} placeholder="Anotações sobre a visita..." />
          </div>
        </div>
        <div className="modal-ft">
          <button className="btn btn-outline" onClick={onClose}>Cancelar</button>
          <button className="btn btn-red" onClick={() => onSave({ date, result, obs })}>Salvar</button>
        </div>
      </div>
    </div>
  );
}
