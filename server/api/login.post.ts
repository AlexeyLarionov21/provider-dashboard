import { userData } from "../mocks/userData";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  const { contract, password } = body;

  const user = userData.find(
    (user) => user.contract === contract && user.password === password
  );

  const token = jwt.sign(
    {
      contract: user?.contract,
      name: user?.name,
    },
    "fallback_secret",
    { expiresIn: "1d" }
  );

  if (!user) {
    throw createError({
      statusCode: 401,
      message: "Неверный логин или пароль",
    });
  }

  setCookie(event, "auth-token", "valid-token", {
    httpOnly: true,
    secure: false,
    maxAge: 60 * 60 * 24,
    sameSite: "strict",
  });

  return {
    success: true,
    user: { contract: user.contract },
  };
});
