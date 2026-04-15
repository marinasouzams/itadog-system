"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

const TABS = [
  { href: "/dashboard",   label: "🏠 Início" },
  { href: "/crm",         label: "👥 CRM" },
  { href: "/pedidos",     label: "📋 Pedidos" },
  { href: "/financeiro",  label: "💰 Financeiro" },
  { href: "/rotas",       label: "🗺️ Rotas" },
  { href: "/produtos",    label: "📦 Produtos" },
  { href: "/relatorios",  label: "📊 Relatórios" },
  { href: "/importar",    label: "📥 Importar" },
];

export default function Nav() {
  const pathname = usePathname();

  return (
    <nav
      style={{
        background: "#fff",
        borderBottom: "2px solid var(--gray-200)",
        display: "flex",
        padding: "0 24px",
        gap: "2px",
        position: "sticky",
        top: "54px",
        zIndex: 199,
        boxShadow: "var(--shadow-sm)",
        overflowX: "auto",
      }}
    >
      {TABS.map((tab) => {
        const active = pathname === tab.href || pathname.startsWith(tab.href + "/");
        return (
          <Link
            key={tab.href}
            href={tab.href}
            style={{
              padding: "13px 18px",
              fontFamily: "'Barlow Condensed', sans-serif",
              fontSize: "13px",
              fontWeight: 700,
              letterSpacing: ".8px",
              textTransform: "uppercase",
              color: active ? "var(--red)" : "var(--gray-600)",
              textDecoration: "none",
              borderBottom: active ? "3px solid var(--red)" : "3px solid transparent",
              marginBottom: "-2px",
              transition: ".15s",
              whiteSpace: "nowrap",
              display: "flex",
              alignItems: "center",
              gap: "7px",
            }}
          >
            {tab.label}
          </Link>
        );
      })}
    </nav>
  );
}
