const { DataTypes } = require('sequelize');
const sequelize = require('../database/connection');
const Profesor = require('./Profesor');

const ExpedienteAltaBaja = sequelize.define('ExpedienteAltaBaja', {
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
    tableName: 'expedientes_alta_baja',
    timestamps: false
});

module.exports = ExpedienteAltaBaja;
