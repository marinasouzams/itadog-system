"use client";

import { useEffect, useState, useCallback } from "react";
import type { Client, Product, Order, OrderItem } from "@/lib/types";
import {
  fmtCurrency, fmtDate, calcOrderTotals, includes, ORDER_STATUSES,
} from "@/lib/utils";

export default function PedidosPage() {
  const [clients,  setClients]  = useState<Client[]>([]);
  const [products, setProducts] = useState<Product[]>([]);
  const [orders,   setOrders]   = useState<Order[]>([]);
  const [search,   setSearch]   = useState("");
  const [loading,  setLoading]  = useState(true);

  // New order form state
  const [clientId,   setClientId]   = useState("");
  const [visitDate,  setVisitDate]  = useState(new Date().toISOString().slice(0, 10));
  const [nfDate,     setNfDate]     = useState("");
  const [payment,    setPayment]    = useState("");
  const [globalDisc, setGlobalDisc] = useState(0);
  const [obs,        setObs]        = useState("");
  const [orderStatus,setOrderStatus]= useState("Em Produção");
  const [items,      setItems]      = useState<OrderItem[]>([]);

  // Product selection
  const [selectedProd, setSelectedProd] = useState<Product | null>(null);
  const [prodSearch,   setProdSearch]   = useState("");
  const [catFilter,    setCatFilter]    = useState("Todos");
  const [pdQty,        setPdQty]        = useState(1);
  const [pdDisc,       setPdDisc]       = useState(0);
  const [pdColors,     setPdColors]     = useState<Record<string, number>>({});

  // View order modal
  const [viewOrder,   setViewOrder]   = useState<Order | null>(null);
  const [editingStatus, setEditingStatus] = useState<{ id: number; status: string } | null>(null);

  const load = useCallback(async () => {
    const [c, p, o] = await Promise.all([
      fetch("/api/clients").then((r) => r.json()),
      fetch("/api/products").then((r) => r.json()),
      fetch("/api/orders").then((r) => r.json()),
    ]);
    setClients(c.data  || []);
    setProducts(p.data || []);
    setOrders(o.data   || []);
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  const categories = ["Todos", ...Array.from(new Set(products.map((p) => p.category).filter(Boolean)))];

  const filteredProds = products.filter((p) => {
    const matchCat    = catFilter === "Todos" || p.category === catFilter;
    const matchSearch = !prodSearch || includes(p.description, prodSearch) || includes(p.code, prodSearch);
    return matchCat && matchSearch;
  });

  const addToOrder = () => {
    if (!selectedProd) return;
    const newItem: OrderItem = {
      product_id:  selectedProd.id,
      description: selectedProd.description,
      cost:        selectedProd.wholesale_price,
      price:       selectedProd.retail_price,
      qty:         pdQty,
      discount:    pdDisc,
      colors:      pdColors,
    };
    setItems((prev) => [...prev, newItem]);
    setSelectedProd(null);
    setPdQty(1);
    setPdDisc(0);
    setPdColors({});
    setProdSearch("");
  };

  const removeItem = (idx: number) => setItems((prev) => prev.filter((_, i) => i !== idx));

  const sub    = items.reduce((s, it) => s + it.price * it.qty - (it.discount || 0), 0);
  const cost   = items.reduce((s, it) => s + it.cost  * it.qty, 0);
  const total  = sub - globalDisc;
  const margin = total - cost;

  const clearForm = () => {
    setClientId(""); setVisitDate(new Date().toISOString().slice(0, 10));
    setNfDate(""); setPayment(""); setGlobalDisc(0); setObs(""); setItems([]);
    setSelectedProd(null); setPdQty(1); setPdDisc(0); setPdColors({});
    setOrderStatus("Em Produção");
  };

  const saveOrder = async () => {
    if (!clientId || items.length === 0) {
      alert("Selecione um cliente e adicione pelo menos um produto.");
      return;
    }
    const payload = {
      client_id:       Number(clientId),
      visit_date:      visitDate,
      nf_date:         nfDate || null,
      status:          orderStatus,
      payment,
      global_discount: globalDisc,
      obs,
      items,
    };
    await fetch("/api/orders", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload),
    });
    // Auto-register visit
    await fetch("/api/visits", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ client_id: Number(clientId), date: visitDate, result: "pedido", obs: "" }),
    });
    clearForm();
    load();
    alert("✅ Pedido salvo com sucesso!");
  };

  const deleteOrder = async (id: number) => {
    if (!confirm("Excluir este pedido? Esta ação não pode ser desfeita.")) return;
    await fetch(`/api/orders/${id}`, { method: "DELETE" });
    load();
  };

  const updateStatus = async (id: number, status: string) => {
    await fetch(`/api/orders/${id}`, {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ status }),
    });
    setEditingStatus(null);
    load();
  };

  const sendWhatsApp = () => {
    if (!clientId || items.length === 0) return;
    const client = clients.find((c) => c.id === Number(clientId));
    const lines  = items.map((it) => {
      const colors = Object.entries(it.colors || {}).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join("/");
      return `• ${it.qty}x ${it.description}${colors ? ` (${colors})` : ""} = ${fmtCurrency(it.price * it.qty - (it.discount || 0))}`;
    });
    const msg = `🐾 *PEDIDO ITADOG*\nCliente: ${client?.name || ""}\nData: ${visitDate}\n\n${lines.join("\n")}\n\n*TOTAL: ${fmtCurrency(total)}*${payment ? `\nPrazo: ${payment}` : ""}`;
    const phone = client?.phone?.replace(/\D/g, "");
    window.open(`https://wa.me/${phone ? "55" + phone : ""}?text=${encodeURIComponent(msg)}`, "_blank");
  };

  const filteredOrders = [...orders]
    .filter((o) => !search || includes(o.client_name || "", search) || (o.visit_date || "").includes(search))
    .sort((a, b) => (b.visit_date || "").localeCompare(a.visit_date || ""));

  if (loading) {
    return (
      <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>
        Carregando...
      </div>
    );
  }

  return (
    <div className="section">
      {/* ── NEW ORDER ── */}
      <div className="sec-top">
        <div className="sec-title">📋 Novo Pedido</div>
        <button className="btn btn-outline btn-sm" onClick={clearForm}>🗑️ Limpar Formulário</button>
      </div>

      {/* Order header fields */}
      <div className="card" style={{ marginBottom: 14 }}>
        <div className="card-body">
          <div className="ir2" style={{ marginBottom: 12 }}>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Cliente *</label>
              <select className="fc" value={clientId} onChange={(e) => setClientId(e.target.value)}>
                <option value="">— Selecionar —</option>
                {clients.map((c) => <option key={c.id} value={c.id}>{c.name} — {c.city}</option>)}
              </select>
            </div>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Data da Visita</label>
              <input type="date" className="fc" value={visitDate} onChange={(e) => setVisitDate(e.target.value)} />
            </div>
          </div>
          <div className="ir3">
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Data NF / Entrega</label>
              <input type="date" className="fc" value={nfDate} onChange={(e) => setNfDate(e.target.value)} />
            </div>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Prazo Pagamento</label>
              <input className="fc" value={payment} onChange={(e) => setPayment(e.target.value)} placeholder="ex: 30-45-60" />
            </div>
            <div className="fg" style={{ margin: 0 }}>
              <label className="fl">Status</label>
              <select className="fc" value={orderStatus} onChange={(e) => setOrderStatus(e.target.value)}>
                {ORDER_STATUSES.map((s) => <option key={s} value={s}>{s}</option>)}
              </select>
            </div>
          </div>
        </div>
      </div>

      {/* Product selector */}
      <div className="card" style={{ marginBottom: 14 }}>
        <div className="card-hd">
          <span className="card-title">Selecionar Produto</span>
          <input
            className="fc"
            style={{ width: 220 }}
            placeholder="🔍 Filtrar produto..."
            value={prodSearch}
            onChange={(e) => setProdSearch(e.target.value)}
          />
        </div>
        <div className="card-body">
          {/* Category pills */}
          <div className="cat-filter">
            {categories.map((cat) => (
              <button
                key={cat}
                className={`cat-pill ${catFilter === cat ? "active" : ""}`}
                onClick={() => setCatFilter(cat)}
              >
                {cat}
              </button>
            ))}
          </div>

          {/* Product grid */}
          <div className="prod-grid">
            {filteredProds.map((p) => (
              <div
                key={p.id}
                className={`prod-item ${selectedProd?.id === p.id ? "selected" : ""}`}
                onClick={() => { setSelectedProd(p); setPdQty(1); setPdDisc(0); setPdColors({}); }}
              >
                <div className="pi-code">{p.code}</div>
                <div className="pi-desc">{p.description}</div>
                <div className="pi-price">{fmtCurrency(p.retail_price)}</div>
                <div className="pi-cost">Atac: {fmtCurrency(p.wholesale_price)}</div>
              </div>
            ))}
            {filteredProds.length === 0 && (
              <div style={{ gridColumn: "1/-1", color: "var(--gray-400)", fontSize: 13, textAlign: "center", padding: 20 }}>
                Nenhum produto encontrado
              </div>
            )}
          </div>

          {/* Selected product panel */}
          {selectedProd && (
            <div style={{ background: "var(--blue-light)", borderRadius: "var(--radius-sm)", padding: 14, marginTop: 12 }}>
              <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6, fontSize: 14 }}>
                {selectedProd.description}
              </div>
              <div style={{ fontSize: 12, color: "var(--gray-600)", marginBottom: 10 }}>
                Atacado: <strong>{fmtCurrency(selectedProd.wholesale_price)}</strong>
                &nbsp;|&nbsp; Varejo: <strong>{fmtCurrency(selectedProd.retail_price)}</strong>
                &nbsp;|&nbsp; Margem: <strong style={{ color: "var(--success)" }}>{fmtCurrency(selectedProd.retail_price - selectedProd.wholesale_price)}</strong>
              </div>
              <div className="ir3" style={{ marginBottom: 10 }}>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Qtde</label>
                  <input type="number" className="fc" min={1} value={pdQty} onChange={(e) => setPdQty(Math.max(1, Number(e.target.value)))} />
                </div>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Desconto R$</label>
                  <input type="number" className="fc" min={0} value={pdDisc} onChange={(e) => setPdDisc(Number(e.target.value))} />
                </div>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Total</label>
                  <input
                    type="text"
                    className="fc"
                    readOnly
                    value={fmtCurrency(selectedProd.retail_price * pdQty - pdDisc)}
                    style={{ background: "var(--gray-50)", fontWeight: 700, color: "var(--blue)" }}
                  />
                </div>
              </div>

              {/* Colors */}
              {selectedProd.colors && selectedProd.colors.length > 0 && (
                <div style={{ marginBottom: 10 }}>
                  <label className="fl">Cores / Separação</label>
                  <div style={{ display: "flex", gap: 12, flexWrap: "wrap", marginTop: 4 }}>
                    {selectedProd.colors.map((color) => (
                      <div key={color} style={{ display: "flex", alignItems: "center", gap: 6 }}>
                        <label style={{ fontSize: 13, fontWeight: 600, color: "var(--gray-600)", textTransform: "capitalize" }}>
                          {color}
                        </label>
                        <input
                          type="number"
                          min={0}
                          className="fc"
                          style={{ width: 65 }}
                          value={pdColors[color] || 0}
                          onChange={(e) => setPdColors((prev) => ({ ...prev, [color]: Number(e.target.value) }))}
                        />
                      </div>
                    ))}
                  </div>
                </div>
              )}

              <div style={{ display: "flex", gap: 8 }}>
                <button className="btn btn-blue" onClick={addToOrder}>+ Adicionar ao Pedido</button>
                <button className="btn btn-outline btn-sm" onClick={() => setSelectedProd(null)}>Cancelar</button>
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Order items */}
      <div className="card" style={{ marginBottom: 24 }}>
        <div className="card-hd">
          <span className="card-title">Itens do Pedido</span>
          <span className="badge bb">{items.length} {items.length === 1 ? "item" : "itens"}</span>
        </div>
        <div className="card-body">
          {items.length === 0 ? (
            <div style={{ textAlign: "center", color: "var(--gray-400)", padding: 30, fontSize: 13 }}>
              Nenhum produto adicionado. Selecione produtos acima.
            </div>
          ) : (
            <>
              <div className="oi-row oi-hdr">
                <span>Produto</span><span>Qtde</span><span>Preço</span><span>Total</span><span>Cores</span><span></span>
              </div>
              {items.map((it, i) => (
                <div key={i} className="oi-row">
                  <span style={{ fontSize: 12 }}>{it.description}</span>
                  <span>{it.qty}</span>
                  <span>{fmtCurrency(it.price)}</span>
                  <span style={{ fontWeight: 700 }}>{fmtCurrency(it.price * it.qty - (it.discount || 0))}</span>
                  <span style={{ fontSize: 10, color: "var(--gray-400)" }}>
                    {Object.entries(it.colors || {}).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join(" ") || "—"}
                  </span>
                  <button
                    style={{ background: "none", border: "none", cursor: "pointer", color: "var(--red)", fontSize: 16, lineHeight: 1 }}
                    onClick={() => removeItem(i)}
                  >✕</button>
                </div>
              ))}

              <div className="fg" style={{ marginTop: 16 }}>
                <label className="fl">Desconto Global (R$)</label>
                <input
                  type="number"
                  className="fc"
                  style={{ maxWidth: 180 }}
                  min={0}
                  value={globalDisc}
                  onChange={(e) => setGlobalDisc(Number(e.target.value))}
                />
              </div>

              <div className="totals-box">
                <div className="trow"><span>Subtotal</span><span>{fmtCurrency(sub)}</span></div>
                <div className="trow"><span>Desconto Global</span><span style={{ color: "var(--red)" }}>— {fmtCurrency(globalDisc)}</span></div>
                <div className="trow main"><span>TOTAL</span><span>{fmtCurrency(total)}</span></div>
                <div style={{ borderTop: "1px solid var(--gray-200)", paddingTop: 8, marginTop: 6 }}>
                  <div className="trow">
                    <span style={{ color: "var(--gray-400)" }}>Custo Fábrica</span>
                    <span style={{ color: "var(--gray-600)" }}>{fmtCurrency(cost)}</span>
                  </div>
                  <div className="trow">
                    <span style={{ color: "var(--gray-400)" }}>Margem</span>
                    <span style={{ color: "var(--success)", fontWeight: 700 }}>{fmtCurrency(margin)}</span>
                  </div>
                </div>
              </div>
            </>
          )}

          <div className="fg" style={{ marginTop: 14 }}>
            <label className="fl">Observações</label>
            <textarea
              className="fc"
              rows={2}
              value={obs}
              onChange={(e) => setObs(e.target.value)}
              placeholder="Trocas, condições especiais, embalagem..."
            />
          </div>

          <div style={{ display: "flex", gap: 8, flexWrap: "wrap", marginTop: 12 }}>
            <button className="btn btn-red" onClick={saveOrder}>💾 Salvar Pedido</button>
            <button className="btn btn-whats btn-sm" onClick={sendWhatsApp}>💬 Enviar WhatsApp</button>
            <button className="btn btn-outline btn-sm" onClick={clearForm}>🗑️ Limpar</button>
          </div>
        </div>
      </div>

      {/* ── RECENT ORDERS ── */}
      <div className="sec-top">
        <div className="sec-title">📑 Pedidos Recentes</div>
        <div style={{ display: "flex", gap: 8, alignItems: "center" }}>
          <input
            className="fc"
            style={{ width: 180 }}
            placeholder="🔍 Filtrar..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
          <span style={{ fontSize: 12, color: "var(--gray-400)" }}>{filteredOrders.length} pedido(s)</span>
        </div>
      </div>

      <div className="card">
        <div className="card-body tbl-wrap">
          <table>
            <thead>
              <tr>
                <th>#</th><th>Data Visita</th><th>Cliente</th><th>Valor</th>
                <th>Desconto</th><th>Prazo</th><th>Status</th><th></th>
              </tr>
            </thead>
            <tbody>
              {filteredOrders.length === 0 ? (
                <tr><td colSpan={8} style={{ textAlign: "center", color: "var(--gray-400)", padding: 20 }}>Nenhum pedido encontrado</td></tr>
              ) : filteredOrders.slice(0, 50).map((o) => {
                const t = calcOrderTotals(o);
                return (
                  <tr key={o.id}>
                    <td style={{ color: "var(--gray-400)", fontSize: 11 }}>#{o.id}</td>
                    <td>{fmtDate(o.visit_date)}</td>
                    <td style={{ fontWeight: 600 }}>{o.client_name}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(t.total)}</td>
                    <td style={{ color: "var(--red)" }}>{t.disc > 0 ? fmtCurrency(t.disc) : "—"}</td>
                    <td style={{ fontSize: 12 }}>{o.payment || "—"}</td>
                    <td>
                      {editingStatus?.id === o.id ? (
                        <div style={{ display: "flex", gap: 4 }}>
                          <select
                            className="fc"
                            style={{ fontSize: 11, padding: "3px 6px" }}
                            value={editingStatus.status}
                            onChange={(e) => setEditingStatus({ id: o.id, status: e.target.value })}
                          >
                            {ORDER_STATUSES.map((s) => <option key={s} value={s}>{s}</option>)}
                          </select>
                          <button className="btn btn-green btn-xs" onClick={() => updateStatus(o.id, editingStatus.status)}>✓</button>
                          <button className="btn btn-outline btn-xs" onClick={() => setEditingStatus(null)}>✕</button>
                        </div>
                      ) : (
                        <span
                          className={`badge ${o.status === "Entregue" ? "bs" : o.status === "Cancelado" ? "bd" : "bb"}`}
                          style={{ cursor: "pointer" }}
                          onClick={() => setEditingStatus({ id: o.id, status: o.status })}
                          title="Clique para alterar status"
                        >
                          {o.status}
                        </span>
                      )}
                    </td>
                    <td>
                      <div style={{ display: "flex", gap: 4 }}>
                        <button className="btn btn-outline btn-xs" onClick={() => setViewOrder(o)} title="Ver detalhes">👁️</button>
                        <button className="btn btn-outline btn-xs" style={{ color: "var(--red)" }} onClick={() => deleteOrder(o.id)} title="Excluir">🗑️</button>
                      </div>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>

      {/* View Order Modal */}
      {viewOrder && <ViewOrderModal order={viewOrder} onClose={() => setViewOrder(null)} />}
    </div>
  );
}

// ─── View Order Modal ─────────────────────────────────────────────────────────

function ViewOrderModal({ order, onClose }: { order: Order; onClose: () => void }) {
  const t = calcOrderTotals(order);

  const sendWhatsApp = () => {
    const lines = (order.items || []).map((it) => {
      const colors = Object.entries(it.colors || {}).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join("/");
      return `• ${it.qty}x ${it.description}${colors ? ` (${colors})` : ""} = ${fmtCurrency(it.price * it.qty - (it.discount || 0))}`;
    });
    const msg = `🐾 *PEDIDO ITADOG*\nCliente: ${order.client_name}\nData: ${fmtDate(order.visit_date)}\nNF: ${fmtDate(order.nf_date)}\n\n${lines.join("\n")}\n\n*TOTAL: ${fmtCurrency(t.total)}*${order.payment ? `\nPrazo: ${order.payment}` : ""}`;
    const phone = order.client_phone?.replace(/\D/g, "");
    window.open(`https://wa.me/${phone ? "55" + phone : ""}?text=${encodeURIComponent(msg)}`, "_blank");
  };

  return (
    <div className="modal-overlay open">
      <div className="modal" style={{ maxWidth: 780 }}>
        <div className="modal-hd">
          <div className="modal-title">Pedido #{order.id} — {order.client_name}</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="g2" style={{ marginBottom: 14 }}>
            <div>
              <div style={{ fontSize: 11, color: "var(--gray-400)", marginBottom: 3, textTransform: "uppercase", fontWeight: 700 }}>Cliente</div>
              <strong>{order.client_name}</strong>
              {order.client_city && <span style={{ color: "var(--gray-400)" }}> — {order.client_city}</span>}
              {order.client_phone && <div style={{ fontSize: 12, color: "var(--gray-600)" }}>📞 {order.client_phone}</div>}
            </div>
            <div>
              <div style={{ fontSize: 11, color: "var(--gray-400)", marginBottom: 3, textTransform: "uppercase", fontWeight: 700 }}>Datas & Pagamento</div>
              <div>Visita: <strong>{fmtDate(order.visit_date)}</strong></div>
              <div>NF: <strong>{fmtDate(order.nf_date)}</strong></div>
              {order.payment && <div>Prazo: <strong>{order.payment}</strong></div>}
              <span className={`badge ${order.status === "Entregue" ? "bs" : order.status === "Cancelado" ? "bd" : "bb"}`} style={{ marginTop: 4 }}>
                {order.status}
              </span>
            </div>
          </div>

          <div className="tbl-wrap">
            <table>
              <thead>
                <tr><th>Produto</th><th>Qtde</th><th>Preço Unit.</th><th>Desc.</th><th>Total</th><th>Cores</th></tr>
              </thead>
              <tbody>
                {(order.items || []).length === 0 ? (
                  <tr><td colSpan={6} style={{ textAlign: "center", color: "var(--gray-400)" }}>Sem itens</td></tr>
                ) : (order.items || []).map((it, i) => (
                  <tr key={i}>
                    <td>{it.description}</td>
                    <td>{it.qty}</td>
                    <td>{fmtCurrency(it.price)}</td>
                    <td style={{ color: "var(--red)" }}>{it.discount > 0 ? fmtCurrency(it.discount) : "—"}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(it.price * it.qty - (it.discount || 0))}</td>
                    <td style={{ fontSize: 11, color: "var(--gray-400)" }}>
                      {Object.entries(it.colors || {}).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join(" ") || "—"}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          <div className="totals-box" style={{ marginTop: 14 }}>
            <div className="trow"><span>Subtotal</span><span>{fmtCurrency(t.sub)}</span></div>
            <div className="trow"><span>Desconto Global</span><span style={{ color: "var(--red)" }}>— {fmtCurrency(t.disc)}</span></div>
            <div className="trow main"><span>TOTAL</span><span>{fmtCurrency(t.total)}</span></div>
            <div style={{ borderTop: "1px solid var(--gray-200)", paddingTop: 6, marginTop: 4 }}>
              <div className="trow">
                <span style={{ color: "var(--gray-400)" }}>Custo Fábrica</span>
                <span style={{ color: "var(--gray-600)" }}>{fmtCurrency(t.cost)}</span>
              </div>
              <div className="trow">
                <span style={{ color: "var(--gray-400)" }}>Margem</span>
                <span style={{ color: "var(--success)", fontWeight: 700 }}>{fmtCurrency(t.margin)}</span>
              </div>
            </div>
          </div>

          {order.obs && (
            <div style={{ marginTop: 12, fontSize: 13, color: "var(--gray-600)", background: "var(--gray-50)", padding: "8px 12px", borderRadius: "var(--radius-sm)" }}>
              <strong>Observações:</strong> {order.obs}
            </div>
          )}
        </div>
        <div className="modal-ft">
          <button className="btn btn-whats btn-sm" onClick={sendWhatsApp}>💬 Enviar pelo WhatsApp</button>
          <button className="btn btn-outline" onClick={onClose}>Fechar</button>
        </div>
      </div>
    </div>
  );
}
