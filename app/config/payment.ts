import type { PaymentButton } from "~/types/button";

export const PAYMENT_BTN: PaymentButton[] = [
  { id: "1", icon: "mingcute:time-line", label: "Обещанный платеж", link: "/" },
  {
    id: "2",
    icon: "grommet-icons:transaction",
    label: "История",
    link: "/",
  },
  { id: "3", icon: "zondicons:credit-card", label: "Пополнить", link: "/" },
];
