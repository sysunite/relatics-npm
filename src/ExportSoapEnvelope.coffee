module.exports = 
"""
<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope">
  <s:Body>
    <GetResult xmlns="http://www.relatics.com/">
      <Operation>{{operationName}}</Operation>
      <Identification>
        <Relatics:Identification xmlns:Relatics="http://www.relatics.com/">
          <Relatics:Workspace>{{workspace}}</Relatics:Workspace>
        </Relatics:Identification>
      </Identification>
      <Parameters>
          <Relatics:Parameters xmlns:Relatics="http://www.relatics.com/">
                                      
            {{#parameters}}
            <Relatics:Parameter Name="{{name}}" Value="{{value}}"/>
            {{/parameters}}
          
          </Relatics:Parameters>
      </Parameters>

      {{#isImport}}
      <Filename>
        {{fileName}}
      </Filename>
 
      <Data>
        {{importData}}
       </Data>
      {{/isImport}}



      <Authentication>
        <Relatics:Authentication xmlns:Relatics="http://www.relatics.com/">
          <Relatics:Entrycode>{{entryCode}}</Relatics:Entrycode>
        </Relatics:Authentication>
      </Authentication>
    </GetResult>
  </s:Body>
</s:Envelope>
"""