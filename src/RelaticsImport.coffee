RelaticsReport = require('./RelaticsReport')

class RelaticsImport extends RelaticsReport

  constructor: (args...) ->
    super(args...)
    @action     = 'http://www.relatics.com/Import'
    @envelope   = require('./ImportSoapEnvelope')
    @fileName   = null
    @importData = null
    
  setImportData: (fileName, importData) ->
    @fileName   = fileName
    @importData = importData

module.exports = RelaticsImport