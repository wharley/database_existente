'use strict'

module.exports = (sequelize, DataTypes) => {

    var Produtos = sequelize.define('Produto', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            field: 'id'
        },
        descricao: {
            type: DataTypes.STRING,
            field: 'descricao'
        },
        barra: {
            type: DataTypes.STRING,
            field: 'barra'
        },
        id_setor: {
            type: DataTypes.INTEGER,
            field: 'id_setor'
        }
    }, {
        freezeTableName: true,
        schema: 'public',
        tableName: 'produto',
        timestamps: false,
        classMethods: {
            associate: (model) => {
                Produtos.belongsTo(model.Setor, { foreignKey: 'id_setor' });
            }
        }
    });

    return Produtos;
};