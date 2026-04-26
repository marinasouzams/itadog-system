// ═══════════════════════════════════════════════
// ITADOG — Tipos TypeScript
// ═══════════════════════════════════════════════

export interface Client {
  id: number;
  name: string;
  cnpj: string;
  city: string;
  phone: string;
  address: string;
  freq: number;       // frequência de visita em dias
  day: number;        // 1=seg ... 5=sex
  notes: string;
  created_at: string;
}

export interface Product {
  id: string;
  code: string;
  description: string;
  wholesale_price: number;   // Preço de Atacado (antigo cost)
  retail_price: number;      // Preço de Varejo (antigo price)
  cost_price: number;        // Preço de Custo de fabricação
  category: string;
  colors: string[];
  created_at?: string;
}

export interface Order {
  id: number;
  client_id: number;
  visit_date: string;
  nf_date: string;
  status: OrderStatus;
  payment: string;
  global_discount: number;
  obs: string;
  created_at: string;
  // Joins (presentes quando inclui relações)
  client_name?: string;
  client_city?: string;
  client_phone?: string;
  client_cnpj?: string;
  items?: OrderItem[];
  subtotal?: number;
  total_cost?: number;
  total?: number;
  margin?: number;
}

export type OrderStatus = 'Em Produção' | 'Entregue' | 'Aguardando' | 'Cancelado';

export interface OrderItem {
  id?: number;
  order_id?: number;
  product_id: string;
  description: string;
  cost: number;
  price: number;
  qty: number;
  discount: number;
  colors: Record<string, number>; // { azul: 2, rosa: 1 }
  sort_order?: number;
}

export interface Visit {
  id: number;
  client_id: number;
  date: string;
  result: VisitResult;
  obs: string;
  created_at?: string;
}

export type VisitResult = 'pedido' | 'sem-pedido' | 'ausente';

export interface Payment {
  id: string;          // formato: "{order_id}_{parcel}"
  order_id: number;
  parcel: number;
  paid_at: string | null;
  value_paid: number;
  created_at?: string;
}

// ─── Tipos calculados (não vêm do banco diretamente) ───

export interface Receivable {
  key: string;
  orderId: number;
  client: string;
  clientId: number;
  clientPhone: string;
  value: number;
  days: number;
  dueDate: string;
  status: 'Pago' | 'Aberto';
  isPaid: boolean;
  isOverdue: boolean;
  paidAt: string | null;
  valuePaid: number;
  parcela: number;
  totalParcelas: number;
}

export interface OrderTotals {
  sub: number;
  cost: number;
  disc: number;
  total: number;
  margin: number;
}

export interface ClientStats {
  totalSold: number;
  ordersCount: number;
  lastVisit: string | null;
  daysSinceVisit: number;
  alertClass: 'ok' | 'warn' | 'red';
}

// ─── Payloads de importação de planilha ───

export interface ImportClientRow {
  name: string;
  cnpj?: string;
  city?: string;
  phone?: string;
  address?: string;
  freq?: number;
  day?: number;
}

export interface ImportProductRow {
  code: string;
  description: string;
  category?: string;
  wholesale_price: number;
  retail_price: number;
  cost_price?: number;
  colors?: string;
}

export interface ImportPricingRow {
  code: string;
  wholesale_price?: number;
  retail_price?: number;
  cost_price?: number;
}

// ─── Resposta padrão da API ───

export interface ApiResponse<T = unknown> {
  data?: T;
  error?: string;
  count?: number;
}
