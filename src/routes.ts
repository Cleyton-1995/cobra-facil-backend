import { Router } from "express";
import { CreateChargeController } from "./controllers/CreateChargeController";
import { CreateUserController } from "./controllers/CreateUserController";

const router = Router();

const createUser = new CreateUserController();
const createCharge = new CreateChargeController();

router.post('/user', createUser.handle);
router.post('/charge', createCharge.handle);

export { router };
