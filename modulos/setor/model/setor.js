'use strict'

module.exports = (sequelize, DataTypes) => {

    const Setores = sequelize.define('Setor', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        descricao: {
            type: DataTypes.STRING,
            field: 'descricao'
        }
    }, {
        freezeTableName: true,
        schema: 'public',
        tableName: 'setor',
        timestamps: false
    });

    return Setores;
};