import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class CreateUserController {
  async handle(request: Request, response: Response) {
    const {  phone,password, name, pv, status, email, document } = request.body;

    const user = await prismaClient.user.create({
      data: {
        document,
        email,
        phone,
        password,
        name,
        pv,
        status,
      }
    })

    return response.json(user);
  }
}
