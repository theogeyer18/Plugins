-- Aliases
Status = Controls.Status
SendGet = Controls.SendGet
SendPost = Controls.SendPost
SendPut = Controls.SendPut
ResponseText = Controls.ResponseText



-- Constants
StatusState = { OK = 0, COMPROMISED = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5}  -- Status states in designer

-- Variables


--Debug level
DebugTx,DebugRx,DebugFunction = false, false, false
DebugPrint = Properties["Debug Print"].Value
if DebugPrint=="Tx/Rx" then
  DebugTx,DebugRx=true,true
elseif DebugPrint=="Tx" then
  DebugTx=true
elseif DebugPrint=="Rx" then
  DebugRx=true
elseif DebugPrint=="Function Calls" then
  DebugFunction=true
elseif DebugPrint=="All" then
  DebugTx,DebugRx,DebugFunction=true,true,true
end

-- Functions
-- Function that sets plugin status
function ReportStatus(state, msg)
  if DebugFunction then print("ReportStatus() called:" .. state) end
  local msg = msg or ""
  Status.Value = StatusState[state]  -- Sets status state
  Status.String = msg  -- Sets status message
end

-- Function reads response code, sets status and prints received data.
function ResponseHandler(tbl, code, data, err, headers)
  if DebugFunction then print("HTTP Response Handler called") end
  if DebugRx then print("HTTP Response Code: " .. code) end
  if code == 200 then  -- Vaild response
    ReportStatus("OK")
    if DebugRx then print("Rx: ", data) end
    ResponseText.String = data

  elseif code == 401.0 or IPAddress.String == "" then  -- Invalid Address handler
    ReportStatus("MISSING", "Check TCP connection properties") 

  else   -- Other error cases
    ReportStatus("FAULT", err) 
  end
end

-- Send an HTTP GET request to the defined
function GetRequest()
  IP_Address = Controls.IPAdd.String
PortNumber = tonumber(Controls.DevicePort.String)
User = Controls.UserID.String
Pword = Controls.UserPassword.String
PostDataContent ="{'':'','':}"

if Controls.DevicePort.String=="80" then
  Url_head = "http"
else
   Url_head = "https"
end
-- Variable Formatting
base64Credentials = Qlib.base64_enc(User..":"..Pword)

RequestTimeout = 10            -- Timeout of the connection in seconds
Host = Url_head.. "://".. IP_Address   -- HTTP server host name or IP address to use for connection
IPAddress = IP_Address      -- IP address can be for host
Port = PortNumber                     -- Port to use (if not 80 or 443)

  
  if DebugFunction then print("GetRequest() called") end
  -- Define any HTTP headers to sent
  headers = {
    ["Host"] = IPAddress,
    ["Content-Type"] = "application/json",
    ["Accept"] = "application/json",
    ["Authorization"] = "Basic " ..base64Credentials
  }
  Command = Controls.CommandName.String

  -- Generate the URL of the request using HTTPClient formatter
  url = HttpClient.CreateUrl({
    ["Host"] = Host,
    ["Path"] = "api/public/control/"..Command
  })
  
  if DebugTx then print("Sending GET request: " .. url) end
  HttpClient.Download({ 
    Url          = url,
    Method       = "GET",
    Headers      = headers,
    Timeout      = RequestTimeout,
    EventHandler = ResponseHandler
  })
end

-- Send a POST request to the HTTP server
function PostRequest()
  IP_Address = Controls.IPAdd.String
  PortNumber = tonumber(Controls.DevicePort.String)
  User = Controls.UserID.String
  Pword = Controls.UserPassword.String
  PostDataContent ="{'':'','':}"
  
  if Controls.DevicePort.String=="80" then
    Url_head = "http"
  else
     Url_head = "https"
  end
  -- Variable Formatting
  base64Credentials = Qlib.base64_enc(User..":"..Pword)
  
  RequestTimeout = 10            -- Timeout of the connection in seconds
  Host = Url_head.. "://".. IP_Address   -- HTTP server host name or IP address to use for connection
  IPAddress = IP_Address      -- IP address can be for host
  Port = PortNumber                     -- Port to use (if not 80 or 443)
  Command = Controls.CommandName.String
Endpoint_ID = Controls.EndpointID.String
key1 = Controls.KeyName1.String
value1 = Controls.KeyValue1.String
key2 = Controls.KeyName2.String
value2 = Controls.KeyValue2.String
key3 = Controls.KeyName3.String
value3 = Controls.KeyValue3.String
key4 = Controls.KeyName4.String
value4 = Controls.KeyValue4.String
if #key4 > 0 then
    PostData = '{"' ..key1.. '":"' ..value1.. '","' ..key2.. '":"' ..value2.. '","' ..key3.. '":"' ..value3.. '","' ..key4.. '":"' ..value4.. '"}'
    contentLength = #key1 + #value1 + #key2 + #value2 + #key3 + #value3 + #key4 + #value4 + 25
  elseif #key3 > 0 then
    PostData = '{"' ..key1.. '":"' ..value1.. '","' ..key2.. '":"' ..value2.. '","' ..key3.. '":"' ..value3.. '"}'
    contentLength = #key1 + #value1 + #key2 + #value2 + #key3 + #value3 + 19
  elseif #key2 > 0 then
    PostData = '{"' ..key1.. '":"' ..value1.. '","' ..key2.. '":"' ..value2.. '"}'
    contentLength = #key1 + #value1 + #key2 + #value2 + 13
  elseif  #key1 > 0 then
    PostData = '{"' ..key1.. '":"' ..value1.. '"}'
    contentLength = #key1 + #value1 + 7
  else PostData = ""
      contentLength = 0
  end
  Path = "api/public/control/devices/".. Endpoint_ID .."/commands/".. Command                   -- Path within the site to access
  
  
  if DebugFunction then print("PostRequest() called") end
  -- Define any HTTP headers to sent
  headers = {  
    ["Host"] = IPAddress,
    ["Content-Type"] = "application/json",
    ["Accept"] = "application/json",
    ["Authorization"] = "Basic " ..base64Credentials,
    ["Content-Length"] = contentLength
  }
  -- Generate the URL of the request using HTTPClient formatter
  url = HttpClient.CreateUrl({
    ["Host"] = Host,
    ["Path"] = Path
  })
  
  if DebugTx then print("Sending POST request to: " .. url, PostData) end
  HttpClient.Upload({ 
    Url          = url,
    Headers      = headers,
    Data         = PostData,
    Method       = "POST",
    Timeout      = RequestTimeout,
    EventHandler = ResponseHandler
  })
  if DebugTx then print("Sent POST request to: " .. url, PostData.. "with Headers" ..IP_Address, base64Credentials, contentLength) end
end


  -- Generate a simple put request to an IP Address
function PutRequest()
  if DebugFunction then print("PutRequest() called") end
  -- Use the HTTPClient Encoder to format the PostData into an HTTP sendable string (Netscape encoding)
  data = HttpClient.EncodeString(PostData)

  if DebugTx then print("Sending PUT request to: " .. string.format("http://%s/%s", IPAddress, Path), data) end
  HttpClient.Upload({ 
    Url          = string.format("http://%s/%s", IPAddress, Path), -- This format is an example and is not standard for all devices
    Data         = data,
    Method       = "PUT",
    Timeout      = RequestTimeout,
    EventHandler = ResponseHandler
  })
end 

  -- Control Event Handler Binding
  SendGet.EventHandler = GetRequest  
  SendPost.EventHandler = PostRequest 
  SendPut.EventHandler = PutRequest