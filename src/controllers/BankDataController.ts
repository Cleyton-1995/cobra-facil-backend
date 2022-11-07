import { Request, Response } from "express";
import { prismaClient } from "../database/prismaClient";

<<<<<<< HEAD
export class Bank {
  async handle(request: Request, response: Response) {
    const { bank, account, agency } = request.body;
=======
export class BankDataController {
  async getBankData(request: Request, response: Response) {
    const { bank, account, agency } = request.params;
>>>>>>> a7487fa61912dba162d6c8cc182440647285c9da

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
<<<<<<< HEAD

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
=======
};

>>>>>>> a7487fa61912dba162d6c8cc182440647285c9da
