-- ═══════════════════════════════════════════════
-- ITADOG — Schema do Banco de Dados (Supabase)
-- Execute este arquivo no SQL Editor do Supabase
-- ═══════════════════════════════════════════════

-- Habilitar extensão para UUID
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ─── CLIENTES ───────────────────────────────────
CREATE TABLE IF NOT EXISTS clients (
  id        BIGSERIAL PRIMARY KEY,
  name      TEXT      NOT NULL,
  cnpj      TEXT      DEFAULT '',
  city      TEXT      DEFAULT '',
  phone     TEXT      DEFAULT '',
  address   TEXT      DEFAULT '',
  freq      INTEGER   DEFAULT 15,    -- frequência de visita em dias
  day       INTEGER   DEFAULT 1,     -- dia da semana preferido (1=seg, 5=sex)
  notes     TEXT      DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ─── PRODUTOS ───────────────────────────────────
CREATE TABLE IF NOT EXISTS products (
  id         TEXT PRIMARY KEY DEFAULT 'P' || extract(epoch from now())::TEXT,
  code       TEXT NOT NULL,
  description TEXT NOT NULL,
  cost       DECIMAL(10,2) NOT NULL DEFAULT 0,
  price      DECIMAL(10,2) NOT NULL DEFAULT 0,
  category   TEXT DEFAULT 'Outros',
  colors     TEXT[] DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ─── PEDIDOS ────────────────────────────────────
CREATE TABLE IF NOT EXISTS orders (
  id              BIGSERIAL PRIMARY KEY,
  client_id       BIGINT REFERENCES clients(id) ON DELETE CASCADE,
  visit_date      DATE,
  nf_date         DATE,
  status          TEXT DEFAULT 'Em Produção',  -- Em Produção | Entregue | Aguardando | Cancelado
  payment         TEXT DEFAULT '',             -- ex: "30-45-60"
  global_discount DECIMAL(10,2) DEFAULT 0,
  obs             TEXT DEFAULT '',
  created_at      TIMESTAMPTZ DEFAULT NOW()
);

-- ─── ITENS DO PEDIDO ────────────────────────────
CREATE TABLE IF NOT EXISTS order_items (
  id         BIGSERIAL PRIMARY KEY,
  order_id   BIGINT REFERENCES orders(id) ON DELETE CASCADE,
  product_id TEXT DEFAULT '',
  description TEXT NOT NULL,
  cost       DECIMAL(10,2) DEFAULT 0,
  price      DECIMAL(10,2) DEFAULT 0,
  qty        INTEGER DEFAULT 1,
  discount   DECIMAL(10,2) DEFAULT 0,
  colors     JSONB DEFAULT '{}',   -- ex: {"azul": 2, "rosa": 1}
  sort_order INTEGER DEFAULT 0
);

-- ─── VISITAS ────────────────────────────────────
CREATE TABLE IF NOT EXISTS visits (
  id         BIGSERIAL PRIMARY KEY,
  client_id  BIGINT REFERENCES clients(id) ON DELETE CASCADE,
  date       DATE NOT NULL,
  result     TEXT DEFAULT 'sem-pedido',  -- pedido | sem-pedido | ausente
  obs        TEXT DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ─── PAGAMENTOS (controle de parcelas) ──────────
CREATE TABLE IF NOT EXISTS payments (
  id         TEXT PRIMARY KEY,  -- formato: "{order_id}_{parcel_number}"
  order_id   BIGINT REFERENCES orders(id) ON DELETE CASCADE,
  parcel     INTEGER NOT NULL,
  paid_at    DATE,
  value_paid DECIMAL(10,2) DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ─── ÍNDICES para performance ───────────────────
CREATE INDEX IF NOT EXISTS idx_orders_client_id  ON orders(client_id);
CREATE INDEX IF NOT EXISTS idx_orders_visit_date ON orders(visit_date);
CREATE INDEX IF NOT EXISTS idx_order_items_order_id ON order_items(order_id);
CREATE INDEX IF NOT EXISTS idx_visits_client_id  ON visits(client_id);
CREATE INDEX IF NOT EXISTS idx_visits_date       ON visits(date);
CREATE INDEX IF NOT EXISTS idx_payments_order_id ON payments(order_id);

-- ─── ROW LEVEL SECURITY (opcional para uso pessoal) ─
ALTER TABLE clients     ENABLE ROW LEVEL SECURITY;
ALTER TABLE products    ENABLE ROW LEVEL SECURITY;
ALTER TABLE orders      ENABLE ROW LEVEL SECURITY;
ALTER TABLE order_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE visits      ENABLE ROW LEVEL SECURITY;
ALTER TABLE payments    ENABLE ROW LEVEL SECURITY;

-- Políticas: acesso público (para uso sem autenticação - ajuste se necessário)
CREATE POLICY "Public access" ON clients     FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public access" ON products    FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public access" ON orders      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public access" ON order_items FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public access" ON visits      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Public access" ON payments    FOR ALL USING (true) WITH CHECK (true);

-- ═══════════════════════════════════════════════
-- VIEW: pedidos com totais calculados
-- ═══════════════════════════════════════════════
CREATE OR REPLACE VIEW orders_with_totals AS
SELECT
  o.id,
  o.client_id,
  c.name AS client_name,
  c.city AS client_city,
  c.phone AS client_phone,
  c.cnpj AS client_cnpj,
  o.visit_date,
  o.nf_date,
  o.status,
  o.payment,
  o.global_discount,
  o.obs,
  o.created_at,
  COALESCE(SUM(oi.price * oi.qty - oi.discount), 0)          AS subtotal,
  COALESCE(SUM(oi.cost * oi.qty), 0)                          AS total_cost,
  COALESCE(SUM(oi.price * oi.qty - oi.discount), 0) - o.global_discount AS total,
  COALESCE(SUM(oi.price * oi.qty - oi.discount), 0) - o.global_discount
    - COALESCE(SUM(oi.cost * oi.qty), 0)                      AS margin
FROM orders o
LEFT JOIN clients c ON c.id = o.client_id
LEFT JOIN order_items oi ON oi.order_id = o.id
GROUP BY o.id, c.id;
