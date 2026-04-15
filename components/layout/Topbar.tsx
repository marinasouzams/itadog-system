"use client";

import { useEffect, useState } from "react";

export default function Topbar() {
  const [dateStr, setDateStr] = useState("");

  useEffect(() => {
    const update = () => {
      setDateStr(
        new Date().toLocaleDateString("pt-BR", {
          weekday: "long",
          day: "2-digit",
          month: "long",
          year: "numeric",
        })
      );
    };
    update();
    const t = setInterval(update, 60000);
    return () => clearInterval(t);
  }, []);

  return (
    <div
      style={{
        background: "var(--blue)",
        color: "#fff",
        display: "flex",
        alignItems: "center",
        justifyContent: "space-between",
        padding: "0 24px",
        height: "54px",
        boxShadow: "var(--shadow-md)",
        position: "sticky",
        top: 0,
        zIndex: 200,
      }}
    >
      <div style={{ display: "flex", alignItems: "center", gap: "10px" }}>
        <div>
          <div
            style={{
              fontFamily: "'Barlow Condensed', sans-serif",
              fontSize: "22px",
              fontWeight: 800,
              letterSpacing: "2px",
            }}
          >
            ITA<span style={{ color: "var(--red)" }}>DOG</span>
          </div>
          <div
            style={{
              fontSize: "11px",
              color: "rgba(255,255,255,.5)",
              marginTop: "1px",
            }}
          >
            Painel de Representação
          </div>
        </div>
      </div>
      <div style={{ fontSize: "12px", color: "rgba(255,255,255,.6)" }}>
        {dateStr}
      </div>
    </div>
  );
}
