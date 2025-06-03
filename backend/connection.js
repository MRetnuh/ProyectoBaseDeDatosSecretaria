import { Sequelize } from "sequelize";

// Configuración de la conexión a la base de datos
const DB = new Sequelize('secretaria', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false, // Desactiva el logging de Sequelize
});

// Probar la conexión
DB.authenticate()
    .then(() => {
        console.log('La conexión a la base de datos ha sido establecida exitosamente.');
    })
    .catch(err => {
        console.error('No se puede conectar a la base de datos:', err);
    });

export default DB
