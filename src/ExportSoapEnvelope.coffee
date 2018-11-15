module.exports = 
"""
<?xml version="1.0" encoding="utf-8"?>
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Body>
    <GetResult xmlns="http://www.relatics.com/">
      <Operation>{{operationName}}</Operation>
      <Identification>
        <Identification>
          <Workspace>{{workspace}}</Workspace>
        </Identification>
      </Identification>
      <Authentication>
        <Authentication>
          <Entrycode>{{entryCode}}</Entrycode>
        </Authentication>
      </Authentication>
      <Parameters>
          <Parameters>
            {{#parameters}}
            <Parameter Name="{{name}}" Value="{{value}}"/>
            {{/parameters}}
          </Parameters>
      </Parameters>
    </GetResult>
  </s:Body>
</s:Envelope>
"""
