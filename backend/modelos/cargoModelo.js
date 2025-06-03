import { DataTypes } from 'sequelize';
import DB from '../connection.js';
import Profesor from './profesoresModelo.js';

const Cargo = DB.define('Cargo', {
    id_cargo: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    cuil_profesor: {
        type: DataTypes.STRING(20),
        references: {
            model: Profesor,
            key: 'cuil'
        }
    },
    puesto: {
        type: DataTypes.STRING(50)
    },
    rol: {
        type: DataTypes.STRING(50)
    },
    horas_tp: {
        type: DataTypes.INTEGER
    },
    asignatura_cargo: {
        type: DataTypes.STRING(100)
    },
    curso_turno: {
        type: DataTypes.STRING(20)
    },
    situacion_revista: {
        type: DataTypes.STRING(20)
    },
    fecha_alta: {
        type: DataTypes.DATE
    },
    reemplaza_a: {
        type: DataTypes.STRING(50)
    },
    fecha_baja: {
        type: DataTypes.DATE
    },
    observaciones: {
        type: DataTypes.TEXT
    }
}, {
    tableName: 'cargos',
    timestamps: false
});

export default Cargo;
