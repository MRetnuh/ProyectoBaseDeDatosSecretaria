import express from "express"
import cors from "cors"
import profesoresRouter from "./routers/profesoresRouter.js";
import licenciasRouter from "./routers/licenciasRouter.js";
import cargosRouter from "./routers/cargoRouters.js";


let app = express();
const port = 6969;

app.use(cors());
app.listen(port,() => {
    console.log("servidor andando en el puerto " + port);
    
})
app.use("/profesores",profesoresRouter)
app.use("/licencias",licenciasRouter)
app.use("/cargos",cargosRouter)