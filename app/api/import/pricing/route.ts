import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import type { ImportPricingRow } from "@/lib/types";

export async function POST(req: NextRequest) {
  const body = await req.json();
  const rows: ImportPricingRow[] = body.rows;

  if (!rows || !rows.length) {
    return NextResponse.json({ error: "Nenhuma linha recebida" }, { status: 400 });
  }

  let updated = 0;
  const errors: string[] = [];

  for (const r of rows) {
    const code = String(r.code || "").trim();
    if (!code) continue;

    const updates: Record<string, number> = {};
    if (r.wholesale_price !== undefined && !isNaN(Number(r.wholesale_price))) updates.wholesale_price = Number(r.wholesale_price);
    if (r.retail_price    !== undefined && !isNaN(Number(r.retail_price)))    updates.retail_price    = Number(r.retail_price);
    if (r.cost_price      !== undefined && !isNaN(Number(r.cost_price)))      updates.cost_price      = Number(r.cost_price);
    if (!Object.keys(updates).length) continue;

    const { error } = await supabase
      .from("products")
      .update(updates)
      .eq("code", code);

    if (error) errors.push(`${code}: ${error.message}`);
    else updated++;
  }

  return NextResponse.json({ updated, errors }, { status: 200 });
}
