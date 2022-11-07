import { Router } from "express";
import { Bank } from "./controllers/BankDataController";
import { CreateChargeController } from "./controllers/CreateChargeController";
import { CreateUserController } from "./controllers/CreateUserController";
import { Customer } from "./controllers/Customer.controller";
import { FindUserController } from "./controllers/FindUserController";
import { LoginController } from "./controllers/LoginController";
// import { PatchUserController } from "./controllers/PatchUserController";

const router = Router();

const CreateUser = new CreateUserController();
const CreateCharge = new CreateChargeController();
const CreateUserCharge = new CreateChargeController();  
const FindUser = new FindUserController();
const Login = new LoginController();
const BankData = new Bank();
const customer = new Customer();

//Users
router.post('/user', CreateUser.handle); 
router.get('/user/:id', FindUser.handle);

//Charge
router.post('/charge', CreateCharge.handle);
router.post('/userCharge', CreateUserCharge.handle);

//Login
router.post('/login', Login.handle);

//Banks
router.post('/bank', BankData.handle);
router.get('/bank', BankData.handle);

// Customers
router.get('/customers', customer.list);
router.post('/customers', customer.create);

export { router };

