export const useMenuSelection = () => {
  const activeID = useState<string | number>("menu-active-id", () => "1");

  const setActive = (id: string | number) => {
    activeID.value = id;
  };

  const isActive = (id: string | number) => activeID.value === id;

  return {
    isActive,
    activeID,
    setActive,
  };
};
