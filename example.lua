--[[  مثال استعمال مكتبة bronx.lol  ]]

local library = loadstring(readfile("bronx_ui/library.lua"))()

local window = library:window({
    name = "bronx",
    suffix = ".lol",
    gameInfo = "bronx.lol : example",
    size = UDim2.new(0, 700, 0, 565),
})

window:seperator({ name = "Game" })

local Main, Players = window:tab({
    name = "Main",
    tabs = { "Local Player", "Players" },
    icon = GetImage("World.png"),
})

local Column = Main:column({})
local Section = Column:section({ name = "Modifications", side = "left", size = 1, icon = GetImage("Settings.png") })

Section:toggle({ name = "No Clip", flag = "NoClip", type = "toggle", default = false, callback = function(State)
    print("noclip:", State)
end})

Section:slider({ name = "WalkSpeed", flag = "Speed", min = 0, max = 100, default = 16, suffix = " st/s", callback = function(Value)
    print("speed:", Value)
end})

Section:dropdown({ name = "Method", flag = "Method", width = 100, items = { "A", "B", "C" }, default = "A", callback = function(Value)
    print("method:", Value)
end})

Section:keybind({ name = "Bind", flag = "Bind", key = Enum.KeyCode.LeftAlt, mode = "Hold", callback = function(State)
    print("bind:", State)
end})

Section:toggle({ name = "Chams", flag = "Chams", type = "toggle" }):colorpicker({
    flag = "ChamsColor",
    color = Color3.fromRGB(119, 120, 255),
    alpha = 1,
    callback = function(Color, Alpha)
        print("color:", Color, Alpha)
    end
})

Section:button({ name = "Do Something", callback = function()
    print("clicked")
end})

Section:label({ name = "Info text", wrapped = true })

library:init_config(window)

library.notifications:create_notification({
    name = "bronx.lol",
    info = "loaded",
    lifetime = 5,
})
