import { DataTypes } from 'sequelize';
import DB from '../connection.js';

const Profesor = DB.define('Profesor', {
    cuil: {
        type: DataTypes.STRING(20),
        primaryKey: true
    },
    nombre: {
        type: DataTypes.STRING(50)
    },
    apellido: {
        type: DataTypes.STRING(50)
    },
    email: {
        type: DataTypes.STRING(100),
        validate: {
            isEmail: true
        }
    },
    telefono: {
        type: DataTypes.STRING(20)
    },
    domicilio: {
        type: DataTypes.STRING(100)
    },
    fecha_nacimiento: {
        type: DataTypes.DATE
    },
    nro_legajo: {
        type: DataTypes.STRING(20)
    },
    ficha_censal: {
        type: DataTypes.STRING(20)
    }
}, {
    tableName: 'profesores',
    timestamps: false
});

export default Profesor
