import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import type { ImportClientRow } from "@/lib/types";

export async function POST(req: NextRequest) {
  const body = await req.json();
  const rows: ImportClientRow[] = body.rows;

  if (!rows || !rows.length) {
    return NextResponse.json({ error: "Nenhuma linha recebida" }, { status: 400 });
  }

  const clients = rows.map((r) => ({
    name:    String(r.name || "").trim().toUpperCase(),
    cnpj:    String(r.cnpj    || "").trim(),
    city:    String(r.city    || "").trim(),
    phone:   String(r.phone   || "").trim(),
    address: String(r.address || "").trim(),
    freq:    Number(r.freq)  || 15,
    day:     Number(r.day)   || 1,
    notes:   "",
  })).filter((c) => c.name.length > 0);

  const { data, error } = await supabase.from("clients").insert(clients).select();
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  return NextResponse.json({ data, count: clients.length }, { status: 201 });
}
