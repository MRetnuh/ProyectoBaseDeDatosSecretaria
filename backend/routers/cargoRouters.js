import express from "express";
import Cargo from "../modelos/cargoModelo.js";

let cargosRouter = express.Router();

cargosRouter.get("/", async (req,res) => {
    const profesores = await Cargo.findAll();
    res.send(JSON.stringify(profesores));
})


export default cargosRouter;