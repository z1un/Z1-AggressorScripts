dim url
dim file
Set objArgs = WScript.Arguments
if objArgs.Count < 2 then
      msgbox("Invalid param count! should be: url pathfilename")
Else
      url = objArgs(0)
      file = objArgs(1)
      GetHttpResult url, "UTF-8", file
end if


function GetHttpResult(url, charset, file)
    dim http
    set http = Createobject("Msxml2.ServerXMLHTTP")
    Http.setTimeouts 10000, 10000, 10000, 10000 '设置超时时间  
    'Sub setTimeouts(ByVal resolveTimeout As Long, ByVal connectTimeout As Long, ByVal sendTimeout As Long, ByVal receiveTimeout As Long)

    http.Open "GET", url, False
    'Sub open(ByVal bstrMethod As String, ByVal bstrUrl As String, [ByVal varAsync], [ByVal bstrUser], [ByVal bstrPassword])

    http.Send() 

    If http.readystate = 4 Then
        GetHttpResult = SaveToFile(http.ResponseBody, charset, file)
    End If 
    
end function

Function SaveToFile(str, charset, file)
    Dim objStream
    Set objStream = CreateObject("Adodb.Stream")
    
    objStream.Type = 1
    'Const adTypeBinary = 1
    'Const adTypeText = 2
    
    objStream.Mode = 3
    'Const adModeRead = 1
    'Const adModeReadWrite = 3
    'Const adModeRecursive = 4194304
    'Const adModeShareDenyNone = 16
    'Const adModeShareDenyRead = 4
    'Const adModeShareDenyWrite = 8
    'Const adModeShareExclusive = 12
    'Const adModeUnknown = 0
    'Const adModeWrite = 2
    
    
    objStream.Open
    objStream.Write str
    objStream.Position = 0    
    
    objStream.Type = 2 
    'adTypeBinary = 1 
    'adTypeText = 2
    
    objStream.Charset = charset
'    BytesToStr = objStream.ReadText 

    objStream.SaveToFile file, 2 
    'adSaveCreateNotExist = 1 
    'adSaveCreateOverWrite = 2
    
    objStream.Close
    Set objStream = Nothing
End Function