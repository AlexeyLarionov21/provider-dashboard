export const useLogin = async (contract: string, password: string) => {
  const result = await $fetch("/api/login", {
    method: "POST",
    body: { contract, password },
  });

  return result;
};
