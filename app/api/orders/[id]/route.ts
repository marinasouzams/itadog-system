import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabase";
import type { OrderItem } from "@/lib/types";

export async function GET(_: NextRequest, { params }: { params: { id: string } }) {
  const { data, error } = await supabase
    .from("orders")
    .select(`*, clients ( name, city, phone, cnpj ), order_items (*)`)
    .eq("id", params.id)
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 404 });

  const order = {
    ...data,
    client_name:  (data as any).clients?.name  || "",
    client_city:  (data as any).clients?.city  || "",
    client_phone: (data as any).clients?.phone || "",
    client_cnpj:  (data as any).clients?.cnpj  || "",
    items: ((data as any).order_items || []).sort((a: OrderItem, b: OrderItem) =>
      (a.sort_order || 0) - (b.sort_order || 0)
    ),
  };
  return NextResponse.json({ data: order });
}

export async function PUT(req: NextRequest, { params }: { params: { id: string } }) {
  const body = await req.json();
  const { items, ...orderData } = body;

  const { data: order, error: oErr } = await supabase
    .from("orders")
    .update(orderData)
    .eq("id", params.id)
    .select()
    .single();

  if (oErr) return NextResponse.json({ error: oErr.message }, { status: 500 });

  if (items !== undefined) {
    // Replace all items
    await supabase.from("order_items").delete().eq("order_id", params.id);
    if (items.length > 0) {
      const itemRows = items.map((it: OrderItem, i: number) => ({
        order_id:    Number(params.id),
        product_id:  it.product_id,
        description: it.description,
        cost:        it.cost,
        price:       it.price,
        qty:         it.qty,
        discount:    it.discount || 0,
        colors:      it.colors || {},
        sort_order:  i,
      }));
      await supabase.from("order_items").insert(itemRows);
    }
  }

  return NextResponse.json({ data: order });
}

export async function DELETE(_: NextRequest, { params }: { params: { id: string } }) {
  const { error } = await supabase.from("orders").delete().eq("id", params.id);
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true });
}
