import type { ValidationResult } from "~/types/validation";

export const validator = (text: string): ValidationResult => {
  if (typeof text !== "string")
    return {
      isValid: false,
      message: "Некорректный номер договора",
    };

  const trimmed = text.trim();

  if (trimmed === "")
    return {
      isValid: true,
      message: undefined,
    };

  return {
    isValid: /^\d+$/.test(trimmed),
    message: "Некорректный номер договора",
  };
};

export const isEmptyField = (text: string): ValidationResult => {
  if (text.trim() === "") {
    return {
      isValid: false,
      message: "Поле не может быть пустым",
    };
  } else {
    return { isValid: true, message: undefined };
  }
};
