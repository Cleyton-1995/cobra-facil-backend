import express from "express";
import "reflect-metadata";
import { router } from "./routes";

const app = express();

app.use(express.json());
app.use(router);

app.listen(3000, () => console.log("Server is running on port 3000"))