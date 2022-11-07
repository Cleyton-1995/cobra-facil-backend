import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class Bank {
  async handle(request: Request, response: Response) {
    const { bank, account, agency } = request.body;

    const bankData = await prismaClient.bank.create({
      data: {
        bank,
        account,
        agency
      },
    });
    return response.json(bankData);
  }

  async getBankData(request: Request, response: Response) {
    const { bank, account, agency } = request.body;

    const bankData = await prismaClient.bank.findMany({
      where: {
        bank: bank,
        account: account,
        agency: agency,
      },
    });
    return response.json(bankData);
  }
}
