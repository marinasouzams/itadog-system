import Topbar from "@/components/layout/Topbar";
import Nav from "@/components/layout/Nav";

export default function MainLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <Topbar />
      <Nav />
      <main>{children}</main>
    </>
  );
}
