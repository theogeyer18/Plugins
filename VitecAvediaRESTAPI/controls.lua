table.insert(ctrls, { 
  Name = "IPAdd",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "192.168.1.40"
})
table.insert(ctrls, { 
  Name = "DevicePort",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "80" 
})
table.insert(ctrls, { 
  Name = "UserID",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "admin"
})
table.insert(ctrls, { 
  Name = "UserPassword",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "labrador"
})
table.insert(ctrls, { 
  Name = "EndpointID",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "3"
})
table.insert(ctrls, { 
  Name = "CommandName",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "channel"
})
table.insert(ctrls, { 
  Name = "KeyName1",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "uri"
})
table.insert(ctrls, { 
  Name = "KeyValue1",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  DefaultValue = "udp://239.192.1.40:5000"
})
table.insert(ctrls, { 
  Name = "KeyName2",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, { 
  Name = "KeyValue2",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, { 
  Name = "KeyName3",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, { 
  Name = "KeyValue3",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, { 
  Name = "KeyName4",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, { 
  Name = "KeyValue4",
  ControlType = "Text",
  TextType = "Text Box",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})

table.insert(ctrls, {
  Name = "Status",
  ControlType = "Indicator",
  IndicatorType = "Status",
  PinStyle = "Output",
  UserPin = true,
  Count = 1
})
table.insert(ctrls, {
  Name = "SendGet",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "SendPut",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "SendPost",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})
table.insert(ctrls, {
  Name = "ResponseText",
  ControlType = "Text",
  Count = 1,
  UserPin = true,
  PinStyle = "Output"
})