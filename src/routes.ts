import { Router } from "express";
import { BankDataController } from "./controllers/BankDataController";
import { CreateChargeController } from "./controllers/CreateChargeController";
import { CreateUserController } from "./controllers/CreateUserController";
import { FindUserController } from "./controllers/FindUserController";
import { LoginController } from "./controllers/LoginController";
// import { PatchUserController } from "./controllers/PatchUserController";

const router = Router();

const createUser = new CreateUserController();
const createCharge = new CreateChargeController();
const createUserCharge = new CreateChargeController();  
const findUser = new FindUserController();
const Login = new LoginController();
const BankData = new BankDataController();
// const PatchUser = new PatchUserController();


router.post('/user', createUser.handle);
router.post('/charge', createCharge.handle);
router.post('/userCharge', createUserCharge.handle);
router.post('/login', Login.handle);
router.post('/bank', BankData.handle);
router.get('/user/:id', findUser.handle);
// router.put('/user/:id', PatchUser.handle);

export { router };

