base64         = require('base-64')
RelaticsReport = require('./RelaticsReport')

class RelaticsImport extends RelaticsReport

  constructor: (args...) ->
    super(args...)
    @envelope   = require('./ImportSoapEnvelope')
    @fileName   = null
    @importData = null

  setImportData: (fileName, importData) ->
    @fileName   = fileName
    @importData = base64.encode(importData)

  setImportDataBase64: (fileName, importData) ->
    @fileName   = fileName
    @importData = importData

module.exports = RelaticsImport
