// ═══════════════════════════════════════════════
// ITADOG — Utilitários
// ═══════════════════════════════════════════════

import type { Order, OrderItem, OrderTotals, Client, Visit } from "./types";

// ─── Formatadores ───────────────────────────────

export function fmtCurrency(value: number): string {
  return "R$ " + Number(value || 0)
    .toFixed(2)
    .replace(".", ",")
    .replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

export function fmtDate(dateStr: string | null | undefined): string {
  if (!dateStr) return "—";
  const [y, m, d] = dateStr.split("-");
  return `${d}/${m}/${y}`;
}

export function today(): string {
  return new Date().toISOString().slice(0, 10);
}

export function daysSince(dateStr: string | null | undefined): number {
  if (!dateStr) return 9999;
  return Math.floor((Date.now() - new Date(dateStr).getTime()) / 86400000);
}

export function monthKey(dateStr: string): string {
  return dateStr ? dateStr.slice(0, 7) : "";
}

export function monthLabel(key: string): string {
  if (!key) return "";
  const [year, month] = key.split("-");
  const months = [
    "Jan","Fev","Mar","Abr","Mai","Jun",
    "Jul","Ago","Set","Out","Nov","Dez",
  ];
  return `${months[parseInt(month) - 1]} ${year}`;
}

export const DAYS_PT = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"];
export const DAYS_FULL_PT = [
  "Domingo","Segunda-feira","Terça-feira","Quarta-feira",
  "Quinta-feira","Sexta-feira","Sábado",
];

// ─── Cálculos de Pedido ─────────────────────────

export function calcOrderTotals(order: Order): OrderTotals {
  let sub = 0;
  let cost = 0;
  for (const item of order.items || []) {
    sub += item.price * item.qty - (item.discount || 0);
    cost += item.cost * item.qty;
  }
  const disc = Number(order.global_discount || 0);
  return { sub, cost, disc, total: sub - disc, margin: sub - disc - cost };
}

export function calcItemTotal(item: OrderItem): number {
  return item.price * item.qty - (item.discount || 0);
}

// ─── Status de Visita ───────────────────────────

export type AlertClass = "ok" | "warn" | "red";

export function alertClass(daysSinceVisit: number, freq: number): AlertClass {
  if (daysSinceVisit > freq * 1.5 || daysSinceVisit === 9999) return "red";
  if (daysSinceVisit > freq) return "warn";
  return "ok";
}

// ─── Cálculo de parcelas (contas a receber) ─────

export interface Parcel {
  key: string;
  orderId: number;
  days: number;
  dueDate: string;
  value: number;
  parcela: number;
  totalParcelas: number;
}

export function calcParcels(order: Order, total: number): Parcel[] {
  if (!order.payment || !order.nf_date || order.status === "Cancelado") return [];
  const terms = order.payment
    .split("-")
    .map((t) => parseInt(t.trim()))
    .filter((t) => !isNaN(t));
  if (!terms.length) return [];
  const parcelValue = total / terms.length;
  const base = new Date(order.nf_date);
  return terms.map((days, i) => {
    const due = new Date(base.getTime() + days * 86400000);
    return {
      key: `${order.id}_${i + 1}`,
      orderId: order.id,
      days,
      dueDate: due.toISOString().slice(0, 10),
      value: parcelValue,
      parcela: i + 1,
      totalParcelas: terms.length,
    };
  });
}

// ─── Útil para pesquisa case-insensitive ────────

export function normalize(str: string): string {
  return str.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

export function includes(haystack: string, needle: string): boolean {
  return normalize(haystack).includes(normalize(needle));
}

// ─── Visita mais recente de um cliente ─────────

export function lastVisitDate(visits: Visit[], clientId: number): string | null {
  const cv = visits.filter((v) => v.client_id === clientId);
  if (!cv.length) return null;
  return cv.sort((a, b) => b.date.localeCompare(a.date))[0].date;
}

// ─── Total vendido para um cliente ─────────────

export function totalSoldForClient(orders: Order[], clientId: number): number {
  return orders
    .filter((o) => o.client_id === clientId)
    .reduce((sum, o) => sum + (o.total || calcOrderTotals(o).total), 0);
}

// ─── Geração de relatório HTML para impressão ───

export function buildReportHTML(title: string, body: string): string {
  return `<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>${title}</title>
<style>
  body{font-family:Arial,sans-serif;font-size:12px;color:#222;margin:20px;}
  h1{font-size:18px;color:#1A3A6B;margin-bottom:4px;}
  h2{font-size:14px;color:#2A5298;margin:12px 0 6px;}
  .sub{font-size:11px;color:#666;margin-bottom:14px;}
  table{width:100%;border-collapse:collapse;margin-bottom:16px;}
  th{background:#1A3A6B;color:#fff;padding:7px 10px;text-align:left;font-size:11px;}
  td{padding:6px 10px;border-bottom:1px solid #e0e4eb;}
  tr:nth-child(even) td{background:#f8f9fa;}
  .total-row td{font-weight:700;border-top:2px solid #1A3A6B;background:#e8eef8 !important;}
  @media print{button{display:none;}}
</style>
</head>
<body>
<h1>🐾 ITADOG — ${title}</h1>
<div class="sub">Gerado em: ${new Date().toLocaleString("pt-BR")}</div>
${body}
<br>
<button onclick="window.print()" style="padding:8px 18px;background:#1A3A6B;color:#fff;border:none;border-radius:6px;cursor:pointer;font-size:13px;">🖨️ Imprimir</button>
</body>
</html>`;
}

// ─── Categorias de produtos disponíveis ────────

export const PRODUCT_CATEGORIES = [
  "Peitoral",
  "Coleira",
  "Guia",
  "Almofada",
  "Cama",
  "Suéter",
  "Outros",
];

export const PRODUCT_COLORS = ["azul", "rosa", "preto", "verm"];

export const VISIT_RESULTS: Record<string, string> = {
  pedido: "Fez pedido",
  "sem-pedido": "Sem pedido",
  ausente: "Cliente ausente",
};

export const ORDER_STATUSES = [
  "Em Produção",
  "Entregue",
  "Aguardando",
  "Cancelado",
];
