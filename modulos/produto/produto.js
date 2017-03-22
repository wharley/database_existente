'use strict'

const modelLoader = require('../../utils/modelLoader')

const routerProduto = require('./routes/produto')

const models = [
    '../modulos/produto/model/produto'
]

exports.init = (app) => {

    app.use('/', routerProduto);

}