-- ═══════════════════════════════════════════════
-- ITADOG — Migração: novos campos de preço em produtos
-- Execute este arquivo no SQL Editor do Supabase
-- ═══════════════════════════════════════════════

-- 1. Renomear cost → wholesale_price (Preço de Atacado)
ALTER TABLE products RENAME COLUMN cost TO wholesale_price;

-- 2. Renomear price → retail_price (Preço de Varejo)
ALTER TABLE products RENAME COLUMN price TO retail_price;

-- 3. Adicionar cost_price (Preço de Custo) zerado
ALTER TABLE products ADD COLUMN IF NOT EXISTS cost_price DECIMAL(10,2) NOT NULL DEFAULT 0;
