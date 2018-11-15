RelaticsReport = require('./RelaticsReport')

class RelaticsExport extends RelaticsReport

  constructor: (args...) ->
    super(args...)
    @envelope   = require('./ExportSoapEnvelope')
    @parameters = []

  addParameter: (name, value) ->
    @parameters.push({name, value})
    @

module.exports = RelaticsExport
