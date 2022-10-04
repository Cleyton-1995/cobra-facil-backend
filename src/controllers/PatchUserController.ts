import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class PatchUserController {
  async handle(request: Request, response: Response) {
    const { bank, account, agency } = request.body;

    const user = await prismaClient.bank.create({
      data: {
        account,
        agency,
        bank
      }
    })
    return response.json(user);
  }
}
