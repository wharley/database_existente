'use strict'

const env = process.env.NODE_ENV || "development";
const config = require('../config/config.json')[env];
const path = require("path");
let Sequelize = require("sequelize");
let sequelize = new Sequelize(config.database, config.username, config.password, config);
let db = {};

const models = [
    '../modulos/setor/model/setor',
    '../modulos/produto/model/produto',
];

let l = models.length;
for (let i = 0; i < l; i++) {
    let model = sequelize.import(path.join(models[i]));
    db[model.name] = model;
}
Object.keys(db).forEach((modelName) => {
    if ("associate" in db[modelName])
        db[modelName].associate(db);
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;