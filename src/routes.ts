import { Router } from "express";
import { CreateChargeController } from "./controllers/CreateChargeController";
import { CreateUserController } from "./controllers/CreateUserController";
import { FindUserController } from "./controllers/FindUserController";
import { LoginController } from "./controllers/LoginController";

const router = Router();

const createUser = new CreateUserController();
const createCharge = new CreateChargeController();
const createUserCharge = new CreateChargeController();  
const findUser = new FindUserController();
const Login = new LoginController();


router.post('/user', createUser.handle);
router.post('/charge', createCharge.handle);
router.post('/userCharge', createUserCharge.handle);
router.post('/login', Login.handle);
router.get('/user/:id', findUser.handle);

export { router };

