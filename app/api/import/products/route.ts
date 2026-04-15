import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import type { ImportProductRow } from "@/lib/types";

export async function POST(req: NextRequest) {
  const body = await req.json();
  const rows: ImportProductRow[] = body.rows;

  if (!rows || !rows.length) {
    return NextResponse.json({ error: "Nenhuma linha recebida" }, { status: 400 });
  }

  const products = rows.map((r) => ({
    id:          "P" + Date.now() + Math.random().toString(36).slice(2),
    code:        String(r.code        || "").trim(),
    description: String(r.description || "").trim().toUpperCase(),
    cost:        Number(r.cost)  || 0,
    price:       Number(r.price) || 0,
    category:    String(r.category || "Outros").trim(),
    colors:      r.colors
      ? String(r.colors).split(/[,;]/).map((c: string) => c.trim().toLowerCase()).filter(Boolean)
      : [],
  })).filter((p) => p.code.length > 0 && p.description.length > 0);

  const { data, error } = await supabase.from("products").insert(products).select();
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  return NextResponse.json({ data, count: products.length }, { status: 201 });
}
