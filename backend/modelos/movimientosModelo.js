const { DataTypes } = require('sequelize');
const sequelize = require('../connection');
const Profesor = require('./Profesor');

const Movimiento = sequelize.define('Movimiento', {
    id_movimiento: {
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
    fecha_movimiento: {
        type: DataTypes.DATE
    },
    tipo_movimiento: {
        type: DataTypes.STRING(50)
    },
    detalle: {
        type: DataTypes.TEXT
    }
}, {
    tableName: 'movimientos',
    timestamps: false
});

module.exports = Movimiento;
