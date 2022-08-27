import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class FindUserController {
  async handle(request: Request, response: Response) {
    const { name } = request.params;

    const find = await prismaClient.user.findFirst({
      where: {
        name,
      },
      include: {
        UserChrage: true,
      }
    });

    return response.json(find);
  }
}
