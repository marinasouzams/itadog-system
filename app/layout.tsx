import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "ITADOG — Painel de Representação",
  description: "Sistema de gestão para representação comercial ITADOG",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="pt-BR">
      <head>
        <link
          href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@400;600;700;800&family=Barlow:wght@300;400;500;600&display=swap"
          rel="stylesheet"
        />
      </head>
      <body>{children}</body>
    </html>
  );
}
