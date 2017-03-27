Mustache = require('mustache')
request  = require('request-promise')

class RelaticsReport
  
  constructor: (@url, @workspace, @entryCode, @operationName) ->
    @parameters = []

  addParameter: (name, value) ->
    @parameters.push({name, value})

  fetch: ->
    envelope = Mustache.render(require('./SoapEnvelopeTemplate'), @)

    request(
      method: 'POST'
      headers:
        'Content-Type'  : 'application/soap+xml; charset=utf-8; action="http://www.relatics.com/GetResult"'
        'Content-Length': envelope.length
      body: envelope
      uri: @url
      resolveWithFullResponse: true
    ).then((response) ->
      
      # TODO: Parse Relatics errors from XML and reject accordingly
      response.body
    )

module.exports = RelaticsReport