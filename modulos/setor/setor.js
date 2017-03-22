'use strict'

const modelLoader = require('../../utils/modelLoader')

const routerSetor = require('./routes/setor')

const models = [
    '../modulos/setor/model/setor'
]

exports.init = (app) => {

    app.use('/', routerSetor);

}