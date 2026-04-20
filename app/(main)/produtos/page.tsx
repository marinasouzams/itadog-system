"use client";

import { useEffect, useState, useCallback } from "react";
import type { Product } from "@/lib/types";
import { fmtCurrency, includes, PRODUCT_CATEGORIES } from "@/lib/utils";

const COLOR_MAP: Record<string, string> = {
  azul:  "#3b82f6",
  rosa:  "#ec4899",
  preto: "#1f2937",
  verm:  "#ef4444",
};
const ALL_COLORS = ["azul", "rosa", "preto", "verm"];

export default function ProdutosPage() {
  const [products,  setProducts]  = useState<Product[]>([]);
  const [search,    setSearch]    = useState("");
  const [catFilter, setCatFilter] = useState("Todos");
  const [loading,   setLoading]   = useState(true);
  const [showForm,  setShowForm]  = useState(false);
  const [editing,   setEditing]   = useState<Product | null>(null);
  const [sortBy,    setSortBy]    = useState<"desc" | "code" | "price" | "margin">("desc");
  const [sortAsc,   setSortAsc]   = useState(true);

  const load = useCallback(async () => {
    const { data } = await fetch("/api/products").then((r) => r.json());
    setProducts(data || []);
    setLoading(false);
  }, []);

  useEffect(() => { load(); }, [load]);

  const categories = ["Todos", ...PRODUCT_CATEGORIES.filter((cat) =>
    products.some((p) => p.category === cat)
  )];

  const toggleSort = (col: typeof sortBy) => {
    if (sortBy === col) setSortAsc((a) => !a);
    else { setSortBy(col); setSortAsc(true); }
  };

  const filtered = products
    .filter((p) => {
      const matchSearch = !search || includes(p.description, search) || includes(p.code, search) || includes(p.category, search);
      const matchCat    = catFilter === "Todos" || p.category === catFilter;
      return matchSearch && matchCat;
    })
    .sort((a, b) => {
      let cmp = 0;
      if (sortBy === "code")   cmp = a.code.localeCompare(b.code);
      if (sortBy === "price")  cmp = a.price - b.price;
      if (sortBy === "margin") cmp = (a.price - a.cost) - (b.price - b.cost);
      if (sortBy === "desc")   cmp = a.description.localeCompare(b.description);
      return sortAsc ? cmp : -cmp;
    });

  const deleteProduct = async (id: string) => {
    if (!confirm("Excluir este produto? Esta ação não pode ser desfeita.")) return;
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

  // Summary stats
  const totalProducts = products.length;
  const avgMargin     = products.length
    ? products.reduce((s, p) => s + (p.price > 0 ? (p.price - p.cost) / p.price * 100 : 0), 0) / products.length
    : 0;
  const withColors    = products.filter((p) => p.colors && p.colors.length > 0).length;

  const SortTh = ({ col, label }: { col: typeof sortBy; label: string }) => (
    <th
      style={{ cursor: "pointer", userSelect: "none" }}
      onClick={() => toggleSort(col)}
    >
      {label} {sortBy === col ? (sortAsc ? "↑" : "↓") : ""}
    </th>
  );

  if (loading) {
    return (
      <div className="section" style={{ color: "var(--gray-400)", textAlign: "center", paddingTop: 40 }}>
        Carregando...
      </div>
    );
  }

  return (
    <div className="section">
      {/* Header */}
      <div className="sec-top">
        <div className="sec-title">📦 Catálogo de Produtos</div>
        <div style={{ display: "flex", gap: 8, flexWrap: "wrap", alignItems: "center" }}>
          <input
            className="fc"
            style={{ width: 220 }}
            placeholder="🔍 Buscar código ou descrição..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
          <button className="btn btn-red btn-sm" onClick={() => { setEditing(null); setShowForm(true); }}>
            + Novo Produto
          </button>
        </div>
      </div>

      {/* Summary stats */}
      <div className="g3" style={{ marginBottom: 18 }}>
        <div className="stat">
          <div className="stat-icon">📦</div>
          <div className="stat-label">Total de Produtos</div>
          <div className="stat-value">{totalProducts}</div>
        </div>
        <div className="stat">
          <div className="stat-icon">📈</div>
          <div className="stat-label">Margem Média</div>
          <div className="stat-value" style={{ color: "var(--success)" }}>{avgMargin.toFixed(1)}%</div>
        </div>
        <div className="stat">
          <div className="stat-icon">🎨</div>
          <div className="stat-label">Com Variação de Cor</div>
          <div className="stat-value">{withColors}</div>
        </div>
      </div>

      {/* Category filter pills */}
      <div className="cat-filter" style={{ marginBottom: 14 }}>
        {categories.map((cat) => (
          <button
            key={cat}
            className={`cat-pill ${catFilter === cat ? "active" : ""}`}
            onClick={() => setCatFilter(cat)}
          >
            {cat}
            {cat !== "Todos" && (
              <span style={{ marginLeft: 4, opacity: 0.7 }}>
                ({products.filter((p) => p.category === cat).length})
              </span>
            )}
          </button>
        ))}
      </div>

      {/* Products table */}
      <div className="card">
        <div className="card-hd">
          <span className="card-title">
            {filtered.length} produto(s)
            {(search || catFilter !== "Todos") && ` — filtrado${filtered.length !== totalProducts ? "s" : ""}`}
          </span>
        </div>
        <div className="card-body tbl-wrap">
          <table>
            <thead>
              <tr>
                <SortTh col="code" label="Código" />
                <SortTh col="desc" label="Descrição" />
                <th>Categoria</th>
                <th>Fábrica</th>
                <SortTh col="price" label="Venda" />
                <SortTh col="margin" label="Margem" />
                <th>Cores</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {filtered.length === 0 ? (
                <tr>
                  <td colSpan={8} style={{ textAlign: "center", color: "var(--gray-400)", padding: 30 }}>
                    Nenhum produto encontrado
                  </td>
                </tr>
              ) : filtered.map((p) => {
                const marginVal = p.price - p.cost;
                const marginPct = p.price > 0 ? ((marginVal / p.price) * 100).toFixed(1) : "0.0";
                return (
                  <tr key={p.id}>
                    <td><span className="badge bb">{p.code}</span></td>
                    <td style={{ fontWeight: 600, maxWidth: 260 }}>{p.description}</td>
                    <td><span className="badge bg">{p.category || "—"}</span></td>
                    <td style={{ color: "var(--gray-600)" }}>{fmtCurrency(p.cost)}</td>
                    <td style={{ fontWeight: 700 }}>{fmtCurrency(p.price)}</td>
                    <td>
                      <span style={{ color: marginVal >= 0 ? "var(--success)" : "var(--red)", fontWeight: 700 }}>
                        {fmtCurrency(marginVal)}
                      </span>
                      <span style={{ fontSize: 10, color: "var(--gray-400)", marginLeft: 3 }}>({marginPct}%)</span>
                    </td>
                    <td>
                      <div style={{ display: "flex", gap: 3, flexWrap: "wrap" }}>
                        {(p.colors || []).length === 0 ? (
                          <span style={{ color: "var(--gray-400)", fontSize: 11 }}>—</span>
                        ) : (p.colors || []).map((c) => (
                          <span
                            key={c}
                            style={{
                              background: COLOR_MAP[c] || "#888",
                              color: "#fff",
                              borderRadius: 4,
                              padding: "2px 6px",
                              fontSize: 10,
                              fontWeight: 700,
                            }}
                          >
                            {c}
                          </span>
                        ))}
                      </div>
                    </td>
                    <td>
                      <div style={{ display: "flex", gap: 4 }}>
                        <button
                          className="btn btn-outline btn-xs"
                          onClick={() => { setEditing(p); setShowForm(true); }}
                          title="Editar"
                        >✏️</button>
                        <button
                          className="btn btn-outline btn-xs"
                          style={{ color: "var(--red)" }}
                          onClick={() => deleteProduct(p.id)}
                          title="Excluir"
                        >🗑️</button>
                      </div>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>

      {/* Product Form Modal */}
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

function ProductForm({ product, onSave, onClose }: {
  product: Product | null;
  onSave: (f: Partial<Product>) => void;
  onClose: () => void;
}) {
  const [code,     setCode]     = useState(product?.code        || "");
  const [desc,     setDesc]     = useState(product?.description || "");
  const [category, setCategory] = useState(product?.category    || PRODUCT_CATEGORIES[0]);
  const [cost,     setCost]     = useState(product?.cost        ?? 0);
  const [price,    setPrice]    = useState(product?.price       ?? 0);
  const [colors,   setColors]   = useState<string[]>(product?.colors || []);

  const toggleColor = (c: string) =>
    setColors((prev) => prev.includes(c) ? prev.filter((x) => x !== c) : [...prev, c]);

  const marginVal = price - cost;
  const marginPct = price > 0 ? ((marginVal / price) * 100).toFixed(1) : "0.0";

  return (
    <div className="modal-overlay open">
      <div className="modal" style={{ maxWidth: 520 }}>
        <div className="modal-hd">
          <div className="modal-title">{product ? "Editar Produto" : "Novo Produto"}</div>
          <span className="modal-x" onClick={onClose}>✕</span>
        </div>
        <div className="modal-body">
          <div className="ir2">
            <div className="fg">
              <label className="fl">Código *</label>
              <input className="fc" value={code} onChange={(e) => setCode(e.target.value)} placeholder="ex: PEI-001" />
            </div>
            <div className="fg">
              <label className="fl">Categoria</label>
              <select className="fc" value={category} onChange={(e) => setCategory(e.target.value)}>
                {PRODUCT_CATEGORIES.map((c) => <option key={c} value={c}>{c}</option>)}
              </select>
            </div>
          </div>
          <div className="fg">
            <label className="fl">Descrição *</label>
            <input className="fc" value={desc} onChange={(e) => setDesc(e.target.value)} placeholder="Nome completo do produto" />
          </div>
          <div className="ir2">
            <div className="fg">
              <label className="fl">Preço Fábrica (R$)</label>
              <input
                type="number"
                step="0.01"
                min="0"
                className="fc"
                value={cost}
                onChange={(e) => setCost(Number(e.target.value))}
              />
            </div>
            <div className="fg">
              <label className="fl">Preço Venda (R$)</label>
              <input
                type="number"
                step="0.01"
                min="0"
                className="fc"
                value={price}
                onChange={(e) => setPrice(Number(e.target.value))}
              />
            </div>
          </div>

          {/* Margin preview */}
          {price > 0 && (
            <div className={`alert ${marginVal >= 0 ? "alert-s" : "alert-d"}`} style={{ marginBottom: 14 }}>
              Margem: <strong>{fmtCurrency(marginVal)}</strong> ({marginPct}%)
            </div>
          )}

          <div className="fg">
            <label className="fl">Cores / Variações</label>
            <div style={{ display: "flex", gap: 14, flexWrap: "wrap", marginTop: 6 }}>
              {ALL_COLORS.map((c) => (
                <label
                  key={c}
                  style={{ display: "flex", alignItems: "center", gap: 6, fontSize: 13, cursor: "pointer", fontWeight: 600 }}
                >
                  <input
                    type="checkbox"
                    checked={colors.includes(c)}
                    onChange={() => toggleColor(c)}
                    style={{ width: 15, height: 15 }}
                  />
                  <span
                    style={{
                      display: "inline-block",
                      width: 14,
                      height: 14,
                      borderRadius: 3,
                      background: COLOR_MAP[c] || "#888",
                      verticalAlign: "middle",
                    }}
                  />
                  {c.charAt(0).toUpperCase() + c.slice(1)}
                </label>
              ))}
            </div>
          </div>
        </div>
        <div className="modal-ft">
          <button className="btn btn-outline" onClick={onClose}>Cancelar</button>
          <button
            className="btn btn-red"
            onClick={() => onSave({ code, description: desc, category, cost, price, colors })}
          >
            Salvar
          </button>
        </div>
      </div>
    </div>
  );
}
