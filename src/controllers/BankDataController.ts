import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

export class BankDataController {
  async getBankData(request: Request, response: Response) {
    const { bank, account, agency } = request.params;

    const getBank = await prismaClient.bank.findMany({
      where: {
        bank: bank,
        account: account,
        agency: agency,
      },
    });
    return response.json(getBank);
  }
  async handle(request: Request, response: Response) {
    const { userId, bank, account, agency } = request.body;

    const createBank = await prismaClient.bank.create({
      data: {
        bank,
        account,
        agency,
      },
    });
    return response.json(createBank);
  }
};

