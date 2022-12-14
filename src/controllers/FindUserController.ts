import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class FindUserController {
  async handle(request: Request, response: Response) {
    const { id } = request.params;

    const find = await prismaClient.user.findUnique({
      where: {
        id: Number(id),
      },
      include: {
        UserChrage: true,
      }
    });

    return response.json(find);
  }
}
