Mustache = require('mustache')
axios    = require('axios')

class RelaticsReport

  constructor: (@url, @workspace, @entryCode, @operationName, @timeout) ->

  run: ->
    envelope = Mustache.render(@envelope, @)
    axios(
      method: 'post'
      headers:
        'Content-Type'  : 'application/soap+xml; charset=utf-8'
        'Content-Length': envelope.length
      data: envelope
      url: @url
      timeout: @timeout
    ).then((response) ->
      response.data
    )

module.exports = RelaticsReport
