"use client";

import { useEffect, useState, useCallback } from "react";
import type { Client, Product, Order, OrderItem } from "@/lib/types";
import {
  fmtCurrency, fmtDate, calcOrderTotals, includes,
  PRODUCT_COLORS, ORDER_STATUSES,
} from "@/lib/utils";

export default function PedidosPage() {
  const [clients,  setClients]  = useState<Client[]>([]);
  const [products, setProducts] = useState<Product[]>([]);
  const [orders,   setOrders]   = useState<Order[]>([]);
  const [search,   setSearch]   = useState("");
  const [loading,  setLoading]  = useState(true);

  // Form state
  const [clientId,  setClientId]  = useState("");
  const [visitDate, setVisitDate] = useState(new Date().toISOString().slice(0, 10));
  const [nfDate,    setNfDate]    = useState("");
  const [payment,   setPayment]   = useState("");
  const [globalDisc,setGlobalDisc]= useState(0);
  const [obs,       setObs]       = useState("");
  const [items,     setItems]     = useState<OrderItem[]>([]);

  // Product selection
  const [selectedProd, setSelectedProd] = useState<Product | null>(null);
  const [prodSearch,   setProdSearch]   = useState("");
  const [catFilter,    setCatFilter]    = useState("Todos");
  const [pdQty,        setPdQty]        = useState(1);
  const [pdDisc,       setPdDisc]       = useState(0);
  const [pdColors,     setPdColors]     = useState<Record<string, number>>({});

  // View order modal
  const [viewOrder, setViewOrder] = useState<Order | null>(null);

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

  const categories = ["Todos", ...new Set(products.map((p) => p.category))].filter(Boolean);

  const filteredProds = products.filter((p) => {
    const matchCat = catFilter === "Todos" || p.category === catFilter;
    const matchSearch = !prodSearch || includes(p.description, prodSearch) || includes(p.code, prodSearch);
    return matchCat && matchSearch;
  });

  const addToOrder = () => {
    if (!selectedProd) return;
    const total = selectedProd.price * pdQty - pdDisc;
    const newItem: OrderItem = {
      product_id:  selectedProd.id,
      description: selectedProd.description,
      cost:        selectedProd.cost,
      price:       selectedProd.price,
      qty:         pdQty,
      discount:    pdDisc,
      colors:      pdColors,
    };
    setItems((prev) => [...prev, newItem]);
    setSelectedProd(null);
    setPdQty(1);
    setPdDisc(0);
    setPdColors({});
  };

  const removeItem = (idx: number) => setItems((prev) => prev.filter((_, i) => i !== idx));

  const sub   = items.reduce((s, it) => s + it.price * it.qty - it.discount, 0);
  const cost  = items.reduce((s, it) => s + it.cost * it.qty, 0);
  const total = sub - globalDisc;
  const margin = total - cost;

  const saveOrder = async () => {
    if (!clientId || items.length === 0) {
      alert("Selecione um cliente e adicione pelo menos um produto.");
      return;
    }
    const payload = {
      client_id:       Number(clientId),
      visit_date:      visitDate,
      nf_date:         nfDate || null,
      status:          "Em Produção",
      payment,
      global_discount: globalDisc,
      obs,
      items,
    };
    await fetch("/api/orders", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(payload) });
    // Auto-register visit
    await fetch("/api/visits", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ client_id: Number(clientId), date: visitDate, result: "pedido", obs: "" }) });
    // Clear form
    setClientId(""); setVisitDate(new Date().toISOString().slice(0, 10));
    setNfDate(""); setPayment(""); setGlobalDisc(0); setObs(""); setItems([]);
    load();
    alert("✅ Pedido salvo!");
  };

  const deleteOrder = async (id: number) => {
    if (!confirm("Excluir este pedido?")) return;
    await fetch(`/api/orders/${id}`, { method: "DELETE" });
    load();
  };

  const sendWhatsApp = () => {
    if (!clientId || items.length === 0) return;
    const client = clients.find((c) => c.id === Number(clientId));
    const lines = items.map((it) => {
      const colors = Object.entries(it.colors || {}).filter(([,v]) => v > 0).map(([k,v]) => `${k}:${v}`).join("/");
      return `• ${it.qty}x ${it.description}${colors ? ` (${colors})` : ""} = ${fmtCurrency(it.price * it.qty - it.discount)}`;
    });
    const msg = `🐾 *PEDIDO ITADOG*\nCliente: ${client?.name || ""}\nData: ${visitDate}\n\n${lines.join("\n")}\n\n*TOTAL: ${fmtCurrency(total)}*${payment ? `\nPrazo: ${payment}` : ""}`;
    const phone = client?.phone?.replace(/\D/g, "");
    window.open(`https://wa.me/${phone ? "55" + phone : ""}?text=${encodeURIComponent(msg)}`, "_blank");
  };

  const filteredOrders = orders.filter((o) =>
    !search || includes(o.client_name || "", search) || (o.visit_date || "").includes(search)
  );

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  return (
    <div className="section">
      <div style={{ display: "flex", flexDirection: "column", gap: 20 }}>

        {/* NEW ORDER */}
        <div>
          <div className="sec-top">
            <div className="sec-title">📋 Novo Pedido</div>
            <button className="btn btn-outline btn-sm" onClick={() => { setItems([]); setPdQty(1); setPdDisc(0); }}>🗑️ Limpar</button>
          </div>

          {/* Order header */}
          <div className="card" style={{ marginBottom: 14 }}>
            <div className="card-body">
              <div className="ir2" style={{ marginBottom: 12 }}>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Cliente</label>
                  <select className="fc" value={clientId} onChange={(e) => setClientId(e.target.value)}>
                    <option value="">-- Selecionar --</option>
                    {clients.map((c) => <option key={c.id} value={c.id}>{c.name}</option>)}
                  </select>
                </div>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Data da Visita</label>
                  <input type="date" className="fc" value={visitDate} onChange={(e) => setVisitDate(e.target.value)} />
                </div>
              </div>
              <div className="ir2">
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Data NF (Entrega)</label>
                  <input type="date" className="fc" value={nfDate} onChange={(e) => setNfDate(e.target.value)} />
                </div>
                <div className="fg" style={{ margin: 0 }}>
                  <label className="fl">Prazo Pagamento</label>
                  <input className="fc" value={payment} onChange={(e) => setPayment(e.target.value)} placeholder="ex: 30-45-60" />
                </div>
              </div>
            </div>
          </div>

          {/* Product selector */}
          <div className="card" style={{ marginBottom: 14 }}>
            <div className="card-hd">
              <span className="card-title">Selecionar Produto</span>
              <input className="fc" style={{ width: 200 }} placeholder="🔍 Filtrar produto..." value={prodSearch} onChange={(e) => setProdSearch(e.target.value)} />
            </div>
            <div className="card-body">
              {/* Category pills */}
              <div className="cat-filter">
                {categories.map((cat) => (
                  <button key={cat} className={`cat-pill ${catFilter === cat ? "active" : ""}`} onClick={() => setCatFilter(cat)}>{cat}</button>
                ))}
              </div>
              {/* Product grid */}
              <div className="prod-grid">
                {filteredProds.map((p) => (
                  <div key={p.id} className={`prod-item ${selectedProd?.id === p.id ? "selected" : ""}`} onClick={() => { setSelectedProd(p); setPdQty(1); setPdDisc(0); setPdColors({}); }}>
                    <div className="pi-code">{p.code}</div>
                    <div className="pi-desc">{p.description}</div>
                    <div className="pi-price">{fmtCurrency(p.price)}</div>
                    <div className="pi-cost">Fáb: {fmtCurrency(p.cost)}</div>
                  </div>
                ))}
              </div>

              {/* Selected product detail */}
              {selectedProd && (
                <div style={{ background: "var(--blue-light)", borderRadius: "var(--radius-sm)", padding: 14, marginTop: 12 }}>
                  <div style={{ fontWeight: 700, color: "var(--blue)", marginBottom: 6 }}>{selectedProd.description}</div>
                  <div style={{ fontSize: 12, color: "var(--gray-600)", marginBottom: 10 }}>
                    Fábrica: <strong>{fmtCurrency(selectedProd.cost)}</strong> &nbsp;|&nbsp; Venda: <strong>{fmtCurrency(selectedProd.price)}</strong>
                  </div>
                  <div className="ir3" style={{ marginBottom: 10 }}>
                    <div className="fg" style={{ margin: 0 }}><label className="fl">Qtde</label><input type="number" className="fc" min={1} value={pdQty} onChange={(e) => setPdQty(Number(e.target.value))} /></div>
                    <div className="fg" style={{ margin: 0 }}><label className="fl">Desc. R$</label><input type="number" className="fc" min={0} value={pdDisc} onChange={(e) => setPdDisc(Number(e.target.value))} /></div>
                    <div className="fg" style={{ margin: 0 }}><label className="fl">Total</label><input type="text" className="fc" readOnly value={fmtCurrency(selectedProd.price * pdQty - pdDisc)} style={{ background: "var(--gray-50)", fontWeight: 700 }} /></div>
                  </div>
                  {/* Colors */}
                  {selectedProd.colors && selectedProd.colors.length > 0 && (
                    <div style={{ marginBottom: 10 }}>
                      <label className="fl">Cores / Separação</label>
                      <div style={{ display: "flex", gap: 10, flexWrap: "wrap" }}>
                        {selectedProd.colors.map((color) => (
                          <div key={color} style={{ display: "flex", alignItems: "center", gap: 6 }}>
                            <label style={{ fontSize: 13, fontWeight: 600, color: "var(--gray-600)", textTransform: "capitalize" }}>{color}</label>
                            <input type="number" min={0} className="fc" style={{ width: 60 }} value={pdColors[color] || 0}
                              onChange={(e) => setPdColors((prev) => ({ ...prev, [color]: Number(e.target.value) }))} />
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                  <button className="btn btn-blue" onClick={addToOrder}>+ Adicionar ao Pedido</button>
                </div>
              )}
            </div>
          </div>

          {/* Order items */}
          <div className="card">
            <div className="card-hd">
              <span className="card-title">Itens do Pedido</span>
              <span className="badge bb">{items.length} itens</span>
            </div>
            <div className="card-body">
              {items.length === 0
                ? <div style={{ textAlign: "center", color: "var(--gray-400)", padding: 20, fontSize: 13 }}>Nenhum item adicionado</div>
                : (
                  <>
                    {/* Header */}
                    <div className="oi-row oi-hdr">
                      <span>Produto</span><span>Qtde</span><span>Preço</span><span>Total</span><span>Cores</span><span></span>
                    </div>
                    {items.map((it, i) => (
                      <div key={i} className="oi-row">
                        <span style={{ fontSize: 12 }}>{it.description}</span>
                        <span>{it.qty}</span>
                        <span>{fmtCurrency(it.price)}</span>
                        <span style={{ fontWeight: 700 }}>{fmtCurrency(it.price * it.qty - it.discount)}</span>
                        <span style={{ fontSize: 10, color: "var(--gray-400)" }}>
                          {Object.entries(it.colors || {}).filter(([,v]) => v > 0).map(([k,v]) => `${k}:${v}`).join(" ")}
                        </span>
                        <button style={{ background: "none", border: "none", cursor: "pointer", color: "var(--red)", fontSize: 16 }} onClick={() => removeItem(i)}>✕</button>
                      </div>
                    ))}

                    <div className="fg" style={{ marginTop: 14 }}>
                      <label className="fl">Desconto Global (R$)</label>
                      <input type="number" className="fc" value={globalDisc} onChange={(e) => setGlobalDisc(Number(e.target.value))} />
                    </div>
                    <div className="totals-box">
                      <div className="trow"><span>Subtotal</span><span>{fmtCurrency(sub)}</span></div>
                      <div className="trow"><span>Desconto</span><span style={{ color: "var(--red)" }}>- {fmtCurrency(globalDisc)}</span></div>
                      <div className="trow main"><span>TOTAL</span><span>{fmtCurrency(total)}</span></div>
                      <div className="trow" style={{ marginTop: 6, borderTop: "1px solid var(--gray-200)", paddingTop: 6 }}>
                        <span style={{ color: "var(--gray-400)" }}>Valor Fabricante</span>
                        <span style={{ color: "var(--gray-600)" }}>{fmtCurrency(cost)}</span>
                      </div>
                      <div className="trow">
                        <span style={{ color: "var(--gray-400)" }}>Margem</span>
                        <span style={{ color: "var(--success)" }}>{fmtCurrency(margin)}</span>
                      </div>
                    </div>
                  </>
                )
              }
              <div className="fg" style={{ marginTop: 14 }}>
                <label className="fl">Observações</label>
                <textarea className="fc" rows={2} value={obs} onChange={(e) => setObs(e.target.value)} placeholder="Trocas, condições especiais..." />
              </div>
              <div style={{ display: "flex", gap: 8, flexWrap: "wrap", marginTop: 10 }}>
                <button className="btn btn-red" onClick={saveOrder}>💾 Salvar Pedido</button>
                <button className="btn btn-whats btn-sm" onClick={sendWhatsApp}>💬 WhatsApp</button>
              </div>
            </div>
          </div>
        </div>

        {/* RECENT ORDERS */}
        <div>
          <div className="sec-top">
            <div className="sec-title">📑 Pedidos Recentes</div>
            <input className="fc" style={{ width: 170 }} placeholder="🔍 Filtrar..." value={search} onChange={(e) => setSearch(e.target.value)} />
          </div>
          <div className="card">
            <div className="card-body tbl-wrap">
              <table>
                <thead>
                  <tr><th>Data</th><th>Cliente</th><th>Valor</th><th>Desconto</th><th>Status</th><th></th></tr>
                </thead>
                <tbody>
                  {filteredOrders.slice(0, 30).map((o) => {
                    const t = calcOrderTotals(o);
                    return (
                      <tr key={o.id}>
                        <td>{fmtDate(o.visit_date)}</td>
                        <td style={{ fontWeight: 600 }}>{o.client_name}</td>
                        <td style={{ fontWeight: 700 }}>{fmtCurrency(t.total)}</td>
                        <td style={{ color: "var(--red)" }}>{t.disc > 0 ? fmtCurrency(t.disc) : "—"}</td>
                        <td>
                          <span className={`badge ${o.status === "Entregue" ? "bs" : o.status === "Cancelado" ? "bd" : "bb"}`}>{o.status}</span>
                        </td>
                        <td style={{ display: "flex", gap: 4 }}>
                          <button className="btn btn-outline btn-xs" onClick={() => setViewOrder(o)}>👁️</button>
                          <button className="btn btn-outline btn-xs" style={{ color: "var(--red)" }} onClick={() => deleteOrder(o.id)}>🗑️</button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
          </div>
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
      const colors = Object.entries(it.colors || {}).filter(([,v]) => v > 0).map(([k,v]) => `${k}:${v}`).join("/");
      return `• ${it.qty}x ${it.description}${colors ? ` (${colors})` : ""} = ${fmtCurrency(it.price * it.qty - it.discount)}`;
    });
    const msg = `🐾 *PEDIDO ITADOG*\nCliente: ${order.client_name}\nData: ${order.visit_date}\n\n${lines.join("\n")}\n\n*TOTAL: ${fmtCurrency(t.total)}*`;
    const phone = order.client_phone?.replace(/\D/g, "");
    window.open(`https://wa.me/${phone ? "55" + phone : ""}?text=${encodeURIComponent(msg)}`, "_blank");
  };

  return (
    <div className="modal-overlay open">
      <div className="modal" style={{ maxWidth: 760 }}>
        <div className="modal-hd">
          <div className="modal-title">Pedido #{order.id} — {order.client_name}</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="g2" style={{ marginBottom: 14 }}>
            <div><div style={{ fontSize: 11, color: "var(--gray-400)", marginBottom: 3 }}>CLIENTE</div><strong>{order.client_name}</strong> — {order.client_city}</div>
            <div>
              <div style={{ fontSize: 11, color: "var(--gray-400)", marginBottom: 3 }}>DATAS</div>
              Visita: {fmtDate(order.visit_date)} | NF: {fmtDate(order.nf_date)}
              {order.payment && <div>Prazo: {order.payment}</div>}
            </div>
          </div>
          <div className="tbl-wrap">
            <table>
              <thead><tr><th>Produto</th><th>Qtde</th><th>Preço</th><th>Desc</th><th>Total</th><th>Cores</th></tr></thead>
              <tbody>
                {(order.items || []).map((it, i) => (
                  <tr key={i}>
                    <td>{it.description}</td>
                    <td>{it.qty}</td>
                    <td>{fmtCurrency(it.price)}</td>
                    <td>{it.discount > 0 ? fmtCurrency(it.discount) : "—"}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(it.price * it.qty - it.discount)}</td>
                    <td style={{ fontSize: 11 }}>{Object.entries(it.colors || {}).filter(([,v]) => v > 0).map(([k,v]) => `${k}:${v}`).join(" ")}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="totals-box" style={{ marginTop: 14 }}>
            <div className="trow"><span>Subtotal</span><span>{fmtCurrency(t.sub)}</span></div>
            <div className="trow"><span>Desconto</span><span style={{ color: "var(--red)" }}>- {fmtCurrency(t.disc)}</span></div>
            <div className="trow main"><span>TOTAL</span><span>{fmtCurrency(t.total)}</span></div>
          </div>
          {order.obs && <div style={{ marginTop: 12, fontSize: 13, color: "var(--gray-600)" }}><strong>Obs:</strong> {order.obs}</div>}
        </div>
        <div className="modal-ft">
          <button className="btn btn-whats btn-sm" onClick={sendWhatsApp}>💬 WhatsApp</button>
          <button className="btn btn-outline" onClick={onClose}>Fechar</button>
        </div>
      </div>
    </div>
  );
}
