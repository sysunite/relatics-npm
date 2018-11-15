base64         = require('base-64')
RelaticsReport = require('./RelaticsReport')

class RelaticsImport extends RelaticsReport

  constructor: (args...) ->
    super(args...)
    @envelope   = require('./ImportSoapEnvelope')
    @fileName   = null
    @importData = null
    @parameters = []

  setImportData: (fileName, importData) ->
    @fileName   = fileName
    @importData = base64.encode(importData)

  setImportDataBase64: (fileName, importData) ->
    @fileName   = fileName
    @importData = importData

  addParameter: (name, value) ->
    @parameters.push({name, value})
    @

module.exports = RelaticsImport
