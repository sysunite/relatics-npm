Mustache = require('mustache')
request  = require('request-promise')

class RelaticsReport
  
  constructor: (@url, @workspace, @entryCode, @operationName) ->
 
  run: ->
    envelope = Mustache.render(@envelope, @)
    console.log envelope 
    request(
      method: 'POST'
      headers:
        'Content-Type'  : 'application/soap+xml; charset=utf-8'
        'Content-Length': envelope.length
      body: envelope
      uri: @url
      resolveWithFullResponse: true
    ).then((response) ->
      
      # TODO: Parse Relatics errors from XML and reject accordingly
      response.body
    )

module.exports = RelaticsReport
