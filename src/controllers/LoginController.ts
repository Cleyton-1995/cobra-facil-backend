import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

interface LoginControllerProps {
  email: string;
  password: string;
}

export class LoginController {
  async handle(request: Request, response: Response) {
    const { email, password } = <LoginControllerProps> request.body;

    const find = await prismaClient.user.findFirst({
      where: {
        email: email,
      },
      include: {
        UserChrage: true,
      }
    });

    return response.json(find);
  }
}
