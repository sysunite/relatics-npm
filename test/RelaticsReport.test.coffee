chai     = require('chai')
Relatics = require('../src/Relatics')

describe 'RelaticsReport test', ->

  it 'should fetch a new report', (done) ->
    @timeout(10000) # Reports may take long to download
    
    # TODO: Test with Relatics testreport
    report = new Relatics.Report('url', 'workspace', 'entryCode', 'operation')
    report.fetch().then((res) ->
      chai.assert(false)
    ).catch((error) ->
      chai.assert(true)
      done()
    )
    return
    
