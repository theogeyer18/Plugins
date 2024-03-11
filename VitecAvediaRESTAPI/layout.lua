-- Text display

table.insert(graphics, {
  Type = "Header",
  Text = "Avedia Server API Client (Unofficial)",
  Position = {5, 5},
  Size = {350, 16},
  FontSize = 14,
  HTextAlign = "Center"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Server IP",
  Position = {2, 25},
  Size = {65, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Port",
  Position = {180, 25},
  Size = {55, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Username",
  Position = {2, 45},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Password",
  Position = {165, 45},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Endpoint ID/Mac",
  Position = {2, 65},
  Size = {85, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Command",
  Position = {185, 65},
  Size = {60, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Name 1",
  Position = {2, 85},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Value 1",
  Position = {165, 85},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Name 2",
  Position = {2, 105},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Value 2",
  Position = {165, 105},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Name 3",
  Position = {2, 125},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Value 3",
  Position = {165, 125},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Name 4",
  Position = {2, 145},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Key Value 4",
  Position = {165, 145},
  Size = {70, 16},
  FontSize = 10,
  HTextAlign = "Right"
})

table.insert(graphics, {
  Type = "Text",
  Text = "Send GET",
  Position = {5, 165},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Send POST",
  Position = {5, 185},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Send PUT",
  Position = {5, 205},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Status",
  Position = {5, 225},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Response",
  Position = {5, 245},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})

--Controls
layout["IPAdd"] = {
  PrettyName = "Add IP Address",
  Position = {70, 25}, 
  Size = {100, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["DevicePort"] = {
  PrettyName = "Server Port",
  Position = {240, 25}, 
  Size = {60, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["UserID"] = {
  PrettyName = "Enter User Name",
  Position = {75, 45}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["UserPassword"] = {
  PrettyName = "Enter Password",
  Position = {240, 45}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["EndpointID"] = {
  PrettyName = "Enter Endpoint ID or Mac",
  Position = {90, 65}, 
  Size = {90, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["CommandName"] = {
  PrettyName = "Enter the Name of the Command",
  Position = {250, 65}, 
  Size = {90, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyName1"] = {
  PrettyName = "Command Key Name",
  Position = {75, 85}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyValue1"] = {
  PrettyName = "Key Value",
  Position = {240, 85}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyName2"] = {
  PrettyName = "Command Key Name2",
  Position = {75, 105}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyValue2"] = {
  PrettyName = "Key Value2",
  Position = {240, 105}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyName3"] = {
  PrettyName = "Command Key Name3",
  Position = {75, 125}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyValue3"] = {
  PrettyName = "Key Value3",
  Position = {240, 125}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyName4"] = {
  PrettyName = "Command Key Name4",
  Position = {75, 145}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["KeyValue4"] = {
  PrettyName = "Key Value4",
  Position = {240, 145}, 
  Size = {80, 16},
  FontSize = 12,
  Style = "Text",
  HTextAlign = "Left"
}
layout["SendGet"] = {
  PrettyName = "Send GET Request",
  Legend = "Send",
  FontSize = 12,
  Style = "Button",
  Position = {105, 165},
  Size = {40, 16}
}
layout["SendPost"] = {
  PrettyName = "Send POST Request",
  Legend = "Send",
  FontSize = 12,
  Style = "Button",
  Position = {105, 185},
  Size = {40, 16}
}
layout["SendPut"] = {
  PrettyName = "Send PUT Request",
  Legend = "Send",
  FontSize = 12,
  Style = "Button",
  Position = {105, 205},
  Size = {40, 16}
}
layout["Status"] = {
  PrettyName = "Connection Status", 
  Position = {105, 225}, 
  Size = {200, 16}
}
layout["ResponseText"] = {
  PrettyName = "Data",
  Position = {105, 245}, 
  Size = {200, 64},
  HTextAlign = "Left"
}