"use client";

import { useEffect, useState, useCallback } from "react";
import type { Product } from "@/lib/types";
import { fmtCurrency, includes, PRODUCT_CATEGORIES } from "@/lib/utils";

export default function ProdutosPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [search,   setSearch]   = useState("");
  const [loading,  setLoading]  = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editing,  setEditing]  = useState<Product | null>(null);

  const load = useCallback(async () => {
    const { data } = await fetch("/api/products").then((r) => r.json());
    setProducts(data || []);
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  const filtered = products.filter((p) =>
    !search || includes(p.description, search) || includes(p.code, search) || includes(p.category, search)
  );

  const deleteProduct = async (id: string) => {
    if (!confirm("Excluir produto?")) return;
    await fetch(`/api/products/${encodeURIComponent(id)}`, { method: "DELETE" });
    load();
  };

  const saveProduct = async (form: Partial<Product>) => {
    if (editing) {
      await fetch(`/api/products/${encodeURIComponent(editing.id)}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(form),
      });
    } else {
      await fetch("/api/products", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(form),
      });
    }
    setShowForm(false);
    setEditing(null);
    load();
  };

  if (loading) return <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>Carregando...</div>;

  return (
    <div className="section">
      <div className="sec-top">
        <div className="sec-title">📦 Catálogo de Produtos</div>
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap" }}>
          <input className="fc" style={{ width: 210 }} placeholder="🔍 Buscar..." value={search} onChange={(e) => setSearch(e.target.value)} />
          <button className="btn btn-red btn-sm" onClick={() => { setEditing(null); setShowForm(true); }}>+ Novo Produto</button>
        </div>
      </div>

      <div className="card">
        <div className="card-body tbl-wrap">
          <table>
            <thead>
              <tr>
                <th>Código</th>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Fábrica</th>
                <th>Venda</th>
                <th>Margem</th>
                <th>Cores</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {filtered.map((p) => {
                const marginPct = p.price > 0 ? ((p.price - p.cost) / p.price * 100).toFixed(1) : "0";
                const marginVal = p.price - p.cost;
                return (
                  <tr key={p.id}>
                    <td><span className="badge bb">{p.code}</span></td>
                    <td style={{ fontWeight: 600 }}>{p.description}</td>
                    <td><span className="badge bg">{p.category}</span></td>
                    <td>{fmtCurrency(p.cost)}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(p.price)}</td>
                    <td style={{ color: marginVal >= 0 ? "var(--success)" : "var(--red)" }}>
                      {fmtCurrency(marginVal)} <span style={{ fontSize: 11, color: "var(--gray-400)" }}>({marginPct}%)</span>
                    </td>
                    <td style={{ fontSize: 11 }}>
                      {(p.colors || []).map((c) => (
                        <span key={c} style={{ background: c === "azul" ? "#3b82f6" : c === "rosa" ? "#ec4899" : c === "preto" ? "#1f2937" : "#ef4444", color: "#fff", borderRadius: 4, padding: "1px 6px", marginRight: 3, fontSize: 10 }}>{c}</span>
                      ))}
                    </td>
                    <td style={{ display: "flex", gap: 4 }}>
                      <button className="btn btn-outline btn-xs" onClick={() => { setEditing(p); setShowForm(true); }}>✏️</button>
                      <button className="btn btn-outline btn-xs" style={{ color: "var(--red)" }} onClick={() => deleteProduct(p.id)}>🗑️</button>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>

      {showForm && (
        <ProductForm
          product={editing}
          onSave={saveProduct}
          onClose={() => { setShowForm(false); setEditing(null); }}
        />
      )}
    </div>
  );
}

// ─── Product Form Modal ───────────────────────────────────────────────────────

const ALL_COLORS = ["azul", "rosa", "preto", "verm"];

function ProductForm({ product, onSave, onClose }: {
  product: Product | null;
  onSave: (f: Partial<Product>) => void;
  onClose: () => void;
}) {
  const [code,     setCode]     = useState(product?.code        || "");
  const [desc,     setDesc]     = useState(product?.description || "");
  const [category, setCategory] = useState(product?.category    || "Outros");
  const [cost,     setCost]     = useState(product?.cost        ?? 0);
  const [price,    setPrice]    = useState(product?.price       ?? 0);
  const [colors,   setColors]   = useState<string[]>(product?.colors || []);

  const toggleColor = (c: string) =>
    setColors((prev) => prev.includes(c) ? prev.filter((x) => x !== c) : [...prev, c]);

  return (
    <div className="modal-overlay open">
      <div className="modal" style={{ maxWidth: 500 }}>
        <div className="modal-hd">
          <div className="modal-title">{product ? "Editar Produto" : "Novo Produto"}</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="ir2">
            <div className="fg"><label className="fl">Código</label><input className="fc" value={code} onChange={(e) => setCode(e.target.value)} /></div>
            <div className="fg"><label className="fl">Categoria</label>
              <select className="fc" value={category} onChange={(e) => setCategory(e.target.value)}>
                {PRODUCT_CATEGORIES.map((c) => <option key={c} value={c}>{c}</option>)}
              </select>
            </div>
          </div>
          <div className="fg"><label className="fl">Descrição</label><input className="fc" value={desc} onChange={(e) => setDesc(e.target.value)} /></div>
          <div className="ir2">
            <div className="fg"><label className="fl">Preço Fábrica (R$)</label><input type="number" step="0.01" className="fc" value={cost} onChange={(e) => setCost(Number(e.target.value))} /></div>
            <div className="fg"><label className="fl">Preço Venda (R$)</label><input type="number" step="0.01" className="fc" value={price} onChange={(e) => setPrice(Number(e.target.value))} /></div>
          </div>
          <div className="fg">
            <label className="fl">Cores</label>
            <div style={{ display: "flex", gap: 12, flexWrap: "wrap", marginTop: 4 }}>
              {ALL_COLORS.map((c) => (
                <label key={c} style={{ display: "flex", alignItems: "center", gap: 5, fontSize: 13, cursor: "pointer" }}>
                  <input type="checkbox" checked={colors.includes(c)} onChange={() => toggleColor(c)} />
                  {c.charAt(0).toUpperCase() + c.slice(1)}
                </label>
              ))}
            </div>
          </div>
          {/* Margin preview */}
          {price > 0 && (
            <div className="alert alert-b" style={{ marginTop: 8 }}>
              Margem: {fmtCurrency(price - cost)} ({((price - cost) / price * 100).toFixed(1)}%)
            </div>
          )}
        </div>
        <div className="modal-ft">
          <button className="btn btn-outline" onClick={onClose}>Cancelar</button>
          <button className="btn btn-red" onClick={() => onSave({ code, description: desc, category, cost, price, colors })}>Salvar</button>
        </div>
      </div>
    </div>
  );
}
