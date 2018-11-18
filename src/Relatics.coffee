class Relatics

  constructor: ->
    @Export = require('./RelaticsExport')
    @Import = require('./RelaticsImport')

module.exports = new Relatics()
