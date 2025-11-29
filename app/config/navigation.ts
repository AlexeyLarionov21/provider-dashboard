import type { NavItem } from "~/types/navigation";

export const HEADER_NAV: NavItem[] = [
  { id: "1", icon: "mdi:account", name: "Account", path: "/" },
  {
    id: "2",
    icon: "fluent:payment-16-filled",
    name: "Payment",
    path: "/",
  },
  { id: "3", icon: "lsicon:report-filled", name: "Reports", path: "/" },
  {
    id: "4",
    icon: "material-symbols:settings-outline-rounded",
    name: "Settings",
    path: "/",
  },
];
