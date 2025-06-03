import express from "express";
import Profesor from "../modelos/profesoresModelo.js";

let profesoresRouter = express.Router();

profesoresRouter.get("/", async (req,res) => {
    const profesores = await Profesor.findAll();
    res.send(JSON.stringify(profesores));
})


export default profesoresRouter;