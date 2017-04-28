module.exports = 
"""
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Body>
    <Import xmlns="http://www.relatics.com/">
      <Operation>{{operationName}}</Operation>

      <Identification>
        <Relatics:Identification xmlns:Relatics="http://www.relatics.com/">
          <Relatics:Workspace>{{workspace}}</Relatics:Workspace>
        </Relatics:Identification>
      </Identification>

      <Authentication>
        <Relatics:Authentication xmlns:Relatics="http://www.relatics.com/">
          <Relatics:Entrycode>{{entryCode}}</Relatics:Entrycode>
        </Relatics:Authentication>
      </Authentication>
     
      <Filename>{{fileName}}</Filename>
      <Data>{{importData}}</Data>
    </Import>
  </s:Body>
</s:Envelope>
"""