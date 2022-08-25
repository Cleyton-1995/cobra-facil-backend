import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class CreateChargeController {
  async handle(request: Request, response: Response) {
    const { User, userId , name, description, status, value, code, dueDate } = request.body;

    const charge = await prismaClient.charge.create({
      data: {
        name,
        description,
        status,
        value,
        code,
        dueDate,
        userId,
        User
      },
    });

    return response.json(charge);
  }
}
