"use client";

import { useState, useCallback } from "react";

type ImportType = "clients" | "products" | "pricing";

interface PreviewRow {
  [key: string]: string | number;
}

const TEMPLATES: Record<ImportType, { label: string; cols: string[]; endpoint: string; rowKey: string }> = {
  clients: {
    label: "Clientes",
    endpoint: "/api/import/clients",
    rowKey: "rows",
    cols: ["name (obrigatório)", "city", "phone", "cnpj", "address", "freq (dias, padrão 15)", "day (1=Seg...5=Sex)"],
  },
  products: {
    label: "Produtos",
    endpoint: "/api/import/products",
    rowKey: "rows",
    cols: ["code (obrigatório)", "description (obrigatório)", "category", "cost", "price", "colors (azul,rosa,...)"],
  },
  pricing: {
    label: "Precificação",
    endpoint: "/api/import/pricing",
    rowKey: "rows",
    cols: ["code (obrigatório)", "cost (novo preço fábrica)", "price (novo preço venda)"],
  },
};

export default function ImportarPage() {
  const [type,     setType]     = useState<ImportType>("clients");
  const [preview,  setPreview]  = useState<PreviewRow[]>([]);
  const [headers,  setHeaders]  = useState<string[]>([]);
  const [status,   setStatus]   = useState<"idle" | "preview" | "loading" | "done" | "error">("idle");
  const [message,  setMessage]  = useState("");
  const [dragOver, setDragOver] = useState(false);

  const tmpl = TEMPLATES[type];

  const downloadTemplate = () => {
    const col = tmpl.cols.map((c) => c.split(" ")[0]).join(",");
    const blob = new Blob([col + "\n"], { type: "text/csv;charset=utf-8;" });
    const url  = URL.createObjectURL(blob);
    const a    = document.createElement("a");
    a.href     = url;
    a.download = `template_${type}.csv`;
    a.click();
    URL.revokeObjectURL(url);
  };

  const processFile = useCallback(async (file: File) => {
    if (!file) return;
    const ext = file.name.split(".").pop()?.toLowerCase();

    let rows: PreviewRow[] = [];
    let hdrs: string[]    = [];

    if (ext === "csv") {
      const text = await file.text();
      const lines = text.split(/\r?\n/).filter((l) => l.trim());
      if (!lines.length) return;
      hdrs = lines[0].split(/[,;]/).map((h) => h.trim());
      rows = lines.slice(1).map((line) => {
        const vals = line.split(/[,;]/);
        const row: PreviewRow = {};
        hdrs.forEach((h, i) => { row[h] = vals[i]?.trim() || ""; });
        return row;
      }).filter((r) => Object.values(r).some((v) => v !== ""));
    } else if (ext === "xlsx" || ext === "xls") {
      const XLSX = (await import("xlsx")).default;
      const buffer = await file.arrayBuffer();
      const wb     = XLSX.read(buffer, { type: "array" });
      const ws     = wb.Sheets[wb.SheetNames[0]];
      const data   = XLSX.utils.sheet_to_json<PreviewRow>(ws, { defval: "" });
      if (data.length) {
        hdrs = Object.keys(data[0]);
        rows = data;
      }
    } else {
      setStatus("error");
      setMessage("Formato não suportado. Use .csv, .xlsx ou .xls");
      return;
    }

    setHeaders(hdrs);
    setPreview(rows);
    setStatus("preview");
  }, []);

  const handleDrop = useCallback((e: React.DragEvent) => {
    e.preventDefault();
    setDragOver(false);
    const file = e.dataTransfer.files[0];
    if (file) processFile(file);
  }, [processFile]);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) processFile(file);
  };

  const doImport = async () => {
    if (!preview.length) return;
    setStatus("loading");

    // Map headers to expected keys based on import type
    const mapRow = (row: PreviewRow): PreviewRow => {
      const mapped: PreviewRow = {};
      // Try to match columns case-insensitively
      Object.entries(row).forEach(([k, v]) => {
        const key = k.toLowerCase().trim()
          .replace(/\s+/g, "_")
          .replace("descrição", "description")
          .replace("descricao", "description")
          .replace("código", "code")
          .replace("codigo", "code")
          .replace("nome", "name")
          .replace("cidade", "city")
          .replace("telefone", "phone")
          .replace("preço_fábrica", "cost")
          .replace("preco_fabrica", "cost")
          .replace("preço_venda", "price")
          .replace("preco_venda", "price")
          .replace("categoria", "category")
          .replace("endereço", "address")
          .replace("endereco", "address")
          .replace("frequência", "freq")
          .replace("frequencia", "freq");
        mapped[key] = v;
      });
      return mapped;
    };

    const rows = preview.map(mapRow);

    try {
      const res  = await fetch(tmpl.endpoint, {
        method:  "POST",
        headers: { "Content-Type": "application/json" },
        body:    JSON.stringify({ rows }),
      });
      const data = await res.json();

      if (!res.ok) {
        setStatus("error");
        setMessage(data.error || "Erro ao importar.");
        return;
      }

      if (type === "pricing") {
        setMessage(`✅ Precificação atualizada: ${data.updated} produto(s).${data.errors?.length ? ` Erros: ${data.errors.join(", ")}` : ""}`);
      } else {
        setMessage(`✅ ${data.count || (data.data?.length)} registro(s) importado(s) com sucesso!`);
      }
      setStatus("done");
      setPreview([]);
      setHeaders([]);
    } catch (e) {
      setStatus("error");
      setMessage("Erro de conexão.");
    }
  };

  const reset = () => {
    setPreview([]);
    setHeaders([]);
    setStatus("idle");
    setMessage("");
  };

  return (
    <div className="section">
      <div className="sec-top">
        <div className="sec-title">📥 Importar Planilhas</div>
      </div>

      <div className="alert alert-b" style={{ marginBottom: 20 }}>
        📋 Importe clientes, produtos e tabelas de precificação diretamente de arquivos <strong>.xlsx</strong>, <strong>.xls</strong> ou <strong>.csv</strong>
      </div>

      {/* Type selector */}
      <div className="g3" style={{ marginBottom: 24 }}>
        {(Object.keys(TEMPLATES) as ImportType[]).map((t) => (
          <div
            key={t}
            onClick={() => { setType(t); reset(); }}
            style={{
              background: type === t ? "var(--blue)" : "#fff",
              color: type === t ? "#fff" : "var(--gray-800)",
              border: `2px solid ${type === t ? "var(--blue)" : "var(--gray-200)"}`,
              borderRadius: "var(--radius)",
              padding: "20px",
              cursor: "pointer",
              textAlign: "center",
              transition: ".15s",
            }}
          >
            <div style={{ fontSize: 30, marginBottom: 8 }}>
              {t === "clients" ? "👥" : t === "products" ? "📦" : "💲"}
            </div>
            <div style={{ fontWeight: 700, fontSize: 15 }}>{TEMPLATES[t].label}</div>
            <div style={{ fontSize: 12, marginTop: 4, opacity: 0.7 }}>
              {t === "clients" ? "Importar base de clientes" : t === "products" ? "Importar catálogo de produtos" : "Atualizar preços em massa"}
            </div>
          </div>
        ))}
      </div>

      <div className="g2">
        {/* Left: instructions + upload */}
        <div>
          <div className="card" style={{ marginBottom: 16 }}>
            <div className="card-hd">
              <span className="card-title">📋 Colunas esperadas — {tmpl.label}</span>
              <button className="btn btn-outline btn-sm" onClick={downloadTemplate}>⬇️ Baixar Template</button>
            </div>
            <div className="card-body">
              <ul style={{ paddingLeft: 18, lineHeight: 1.9 }}>
                {tmpl.cols.map((c, i) => (
                  <li key={i} style={{ fontSize: 13 }}>
                    <code style={{ background: "var(--gray-100)", padding: "1px 6px", borderRadius: 4, fontWeight: 700 }}>{c.split(" ")[0]}</code>
                    {c.includes("obrigatório") && <span className="badge bd" style={{ marginLeft: 6, fontSize: 10 }}>obrigatório</span>}
                    <span style={{ color: "var(--gray-400)", fontSize: 12 }}> {c.split(" ").slice(1).join(" ")}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>

          {/* Drop zone */}
          {status === "idle" && (
            <div
              className={`import-zone ${dragOver ? "drag-over" : ""}`}
              onDragOver={(e) => { e.preventDefault(); setDragOver(true); }}
              onDragLeave={() => setDragOver(false)}
              onDrop={handleDrop}
              onClick={() => document.getElementById("file-input")?.click()}
            >
              <div className="import-zone-icon">📂</div>
              <div className="import-zone-text">Arraste o arquivo aqui ou clique para selecionar</div>
              <div className="import-zone-sub">Suporta .xlsx, .xls e .csv</div>
              <input id="file-input" type="file" accept=".csv,.xlsx,.xls" style={{ display: "none" }} onChange={handleFileChange} />
            </div>
          )}

          {/* Messages */}
          {status === "done" && (
            <div>
              <div className="alert alert-s">{message}</div>
              <button className="btn btn-blue" onClick={reset}>📂 Importar mais</button>
            </div>
          )}
          {status === "error" && (
            <div>
              <div className="alert alert-d">{message}</div>
              <button className="btn btn-outline" onClick={reset}>Tentar novamente</button>
            </div>
          )}
          {status === "loading" && (
            <div className="alert alert-b">⏳ Importando... aguarde.</div>
          )}
        </div>

        {/* Right: preview */}
        <div>
          {status === "preview" && preview.length > 0 && (
            <div className="card">
              <div className="card-hd">
                <span className="card-title">👁️ Pré-visualização ({preview.length} linhas)</span>
                <div style={{ display: "flex", gap: 8 }}>
                  <button className="btn btn-outline btn-sm" onClick={reset}>✕ Cancelar</button>
                  <button className="btn btn-red" onClick={doImport}>✅ Confirmar Importação</button>
                </div>
              </div>
              <div className="card-body tbl-wrap" style={{ maxHeight: 400, overflowY: "auto" }}>
                <table>
                  <thead>
                    <tr>{headers.map((h) => <th key={h}>{h}</th>)}</tr>
                  </thead>
                  <tbody>
                    {preview.slice(0, 50).map((row, i) => (
                      <tr key={i}>
                        {headers.map((h) => (
                          <td key={h} style={{ fontSize: 12, maxWidth: 160, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>
                            {String(row[h] ?? "")}
                          </td>
                        ))}
                      </tr>
                    ))}
                  </tbody>
                </table>
                {preview.length > 50 && (
                  <div style={{ textAlign: "center", color: "var(--gray-400)", fontSize: 12, padding: 8 }}>
                    Mostrando 50 de {preview.length} linhas
                  </div>
                )}
              </div>
            </div>
          )}

          {status === "idle" && (
            <div className="card">
              <div className="card-hd"><span className="card-title">💡 Dicas</span></div>
              <div className="card-body">
                <div style={{ fontSize: 13, lineHeight: 2, color: "var(--gray-600)" }}>
                  <div>✅ A primeira linha deve ser o cabeçalho</div>
                  <div>✅ Nomes de colunas são flexíveis (ex: "Nome", "name", "NOME")</div>
                  <div>✅ Valores monetários: use ponto ou vírgula (ex: 12,90 ou 12.90)</div>
                  <div>✅ Cores separadas por vírgula: azul,rosa,preto</div>
                  <div>✅ Para precificação, use o código exato do produto</div>
                  <div>⚠️ A importação de clientes adiciona novos registros</div>
                  <div>⚠️ A precificação atualiza produtos existentes pelo código</div>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
