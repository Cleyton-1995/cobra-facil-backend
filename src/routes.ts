import { Router } from "express";
import { CreateChargeController } from "./controllers/CreateChargeController";
import { CreateUserController } from "./controllers/CreateUserController";
import { FindUserController } from "./controllers/FindUserController";

const router = Router();

const createUser = new CreateUserController();
const createCharge = new CreateChargeController();
const createUserCharge = new CreateChargeController();  
const findUser = new FindUserController();


router.post('/user', createUser.handle);
router.post('/charge', createCharge.handle);
router.post('/userCharge', createUserCharge.handle);
router.get('/user/:name', findUser.handle);

export { router };

