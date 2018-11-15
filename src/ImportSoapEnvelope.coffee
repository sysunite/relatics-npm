module.exports = 
"""
<?xml version="1.0" encoding="utf-8"?>
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Body>
    <Import xmlns="http://www.relatics.com/">
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
      <Filename>{{fileName}}</Filename>
      <Data>{{{importData}}}</Data>
      <Parameters>
          <Parameters>
            {{#parameters}}
            <Parameter Name="{{name}}" Value="{{value}}"/>
            {{/parameters}}
          </Parameters>
      </Parameters>
    </Import>
  </s:Body>
</s:Envelope>
"""
