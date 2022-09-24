import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class Customer {
  async list(request: Request, response: Response) {
    const customer = 0;
    console.log("estou aqui");
    const users = await prismaClient.user.findMany({
      where: {
        pv: customer
      }
    })

    return response.json(users);
  };

  async create(request: Request, response: Response) {
    const customer = 0;
    const { name, phone, document} = request.body;
    console.log("estou aqui");
    const users = await prismaClient.user.create({
      data: {
        pv: customer,
        name,
        document,
        phone
      } 
    })

    return response.json(users);
  }
}
