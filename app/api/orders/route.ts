import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import type { OrderItem } from "@/lib/types";

export async function GET(req: NextRequest) {
  const clientId = req.nextUrl.searchParams.get("client_id");
  const month    = req.nextUrl.searchParams.get("month");  // "2026-03"
  const search   = req.nextUrl.searchParams.get("search") || "";

  let query = supabase
    .from("orders")
    .select(`
      *,
      clients ( name, city, phone, cnpj ),
      order_items (*)
    `)
    .order("visit_date", { ascending: false });

  if (clientId) query = query.eq("client_id", clientId);
  if (month)    query = query.gte("visit_date", `${month}-01`).lte("visit_date", `${month}-31`);
  if (search)   query = query.ilike("clients.name", `%${search}%`);

  const { data, error } = await query;
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  // Flatten the joined data
  const orders = (data || []).map((o: any) => ({
    ...o,
    client_name:  o.clients?.name  || "",
    client_city:  o.clients?.city  || "",
    client_phone: o.clients?.phone || "",
    client_cnpj:  o.clients?.cnpj  || "",
    items: (o.order_items || []).sort((a: OrderItem, b: OrderItem) => (a.sort_order || 0) - (b.sort_order || 0)),
  }));

  return NextResponse.json({ data: orders });
}

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { items, ...orderData } = body;

  // 1. Insert order
  const { data: order, error: oErr } = await supabase
    .from("orders")
    .insert([orderData])
    .select()
    .single();

  if (oErr) return NextResponse.json({ error: oErr.message }, { status: 500 });

  // 2. Insert items
  if (items && items.length > 0) {
    const itemRows = items.map((it: OrderItem, i: number) => ({
      order_id: order.id,
      product_id:  it.product_id,
      description: it.description,
      cost:        it.cost,
      price:       it.price,
      qty:         it.qty,
      discount:    it.discount || 0,
      colors:      it.colors || {},
      sort_order:  i,
    }));

    const { error: iErr } = await supabase.from("order_items").insert(itemRows);
    if (iErr) return NextResponse.json({ error: iErr.message }, { status: 500 });
  }

  return NextResponse.json({ data: order }, { status: 201 });
}
