import express from "express";
import ExpedienteLicencia from "../modelos/expedienteLicencias.js";

let licenciasRouter = express.Router()

licenciasRouter.get("/",async (req,res) =>{
    const licencias = await ExpedienteLicencia.findAll()
    res.send(JSON.stringify(licencias))
})

export default licenciasRouter