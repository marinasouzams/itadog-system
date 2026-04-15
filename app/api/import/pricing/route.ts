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
    if (r.cost  !== undefined && !isNaN(Number(r.cost)))  updates.cost  = Number(r.cost);
    if (r.price !== undefined && !isNaN(Number(r.price))) updates.price = Number(r.price);
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
