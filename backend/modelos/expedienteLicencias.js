import { DataTypes } from 'sequelize';
import DB from '../connection.js';
import Profesor from './profesoresModelo.js';

const ExpedienteLicencia = DB.define('ExpedienteLicencia', {
    id_expediente: {
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
    tipo: {
        type: DataTypes.STRING(50)
    }
}, {
    tableName: 'expedientes_licencias',
    timestamps: false
});

export default ExpedienteLicencia
