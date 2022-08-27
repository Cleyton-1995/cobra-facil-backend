import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class CreateUserChargeController {
  async handle(request: Request, response: Response) {
    const { id_User, id_Charge } = request.body;

    const userCharge = await prismaClient.userChrage.create({
      data: {
        id_Charge,
        id_User,
      }
    })

    return response.json(userCharge);
  }
}
