--========================================================--
-- MT RIMBARA - FINAL BOSS EDITION
-- CREDIT: cenzyXcode
--========================================================--

----------------------------------------------------------------
-- 💀 FINAL BOSS INTRO (FIX STABLE)
----------------------------------------------------------------
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

local IntroGui = Instance.new("ScreenGui")
IntroGui.Name = "CenzyFinalBossIntro"
IntroGui.IgnoreGuiInset = true
IntroGui.ResetOnSpawn = false
IntroGui.Parent = game:GetService("CoreGui")

local BG = Instance.new("Frame", IntroGui)
BG.Size = UDim2.new(1,0,1,0)
BG.BackgroundColor3 = Color3.new(0,0,0)

-- MATRIX RAIN (LIGHT VERSION BIAR GAK LAG)
for i = 1,30 do
    local rain = Instance.new("TextLabel", BG)
    rain.BackgroundTransparency = 1
    rain.TextColor3 = Color3.fromRGB(0,255,0)
    rain.Font = Enum.Font.Code
    rain.TextSize = 16
    rain.Text = string.char(math.random(33,126))
    rain.Position = UDim2.new(math.random(),0,-1,0)

    task.spawn(function()
        while rain.Parent do
            rain.Position = rain.Position + UDim2.new(0,0,0,6)
            rain.Text = string.char(math.random(33,126))
            task.wait(0.06)
        end
    end)
end

local TXT = Instance.new("TextLabel", BG)
TXT.Size = UDim2.new(1,-40,0,220)
TXT.Position = UDim2.new(0,20,0.4,0)
TXT.BackgroundTransparency = 1
TXT.TextColor3 = Color3.fromRGB(0,255,0)
TXT.Font = Enum.Font.Code
TXT.TextSize = 22
TXT.TextWrapped = true
TXT.Text = ""

local glitch = Instance.new("Sound", SoundService)
glitch.SoundId = "rbxassetid://9113420776"
glitch.Volume = 0.7
glitch:Play()

local lines = {
    "ACCESSING SYSTEM...",
    "BYPASSING SECURITY...",
    "INJECTING SCRIPT...",
    "AUTHOR: CENZYXCODE",
    "MT RIMBARA LOADED",
    "FREE SCRIPT - DO NOT SELL",
    "INITIALIZATION COMPLETE."
}

for _,line in ipairs(lines) do
    for i = 1,#line do
        TXT.Text ..= line:sub(i,i)
        task.wait(0.02)
    end
    TXT.Text ..= "\n"
    task.wait(0.3)
end

-- SHAKE
for i = 1,8 do
    BG.Position = UDim2.new(0,math.random(-4,4),0,math.random(-4,4))
    task.wait(0.03)
end
BG.Position = UDim2.new(0,0,0,0)

task.wait(1)

TweenService:Create(BG,TweenInfo.new(1),{BackgroundTransparency=1}):Play()
task.wait(1)

IntroGui:Destroy()
glitch:Destroy()

----------------------------------------------------------------
-- 🟢 SAFE LOAD RAYFIELD
----------------------------------------------------------------
local Rayfield
local success = pcall(function()
    Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)

if not success or not Rayfield then
    warn("Rayfield gagal load.")
    return
end

----------------------------------------------------------------
-- SERVICES
----------------------------------------------------------------
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local LP = Players.LocalPlayer
local PID = game.PlaceId

local Character = LP.Character or LP.CharacterAdded:Wait()
local HRP = Character:WaitForChild("HumanoidRootPart")

LP.CharacterAdded:Connect(function(c)
    Character = c
    HRP = c:WaitForChild("HumanoidRootPart")
end)

local ResetRemote = ReplicatedStorage:WaitForChild("ResetRequestRE")

----------------------------------------------------------------
-- WINDOW
----------------------------------------------------------------
local Window = Rayfield:CreateWindow({
    Name = "MT RIMBARA | cenzyXcode",
    LoadingTitle = "MT RIMBARA",
    LoadingSubtitle = "FINAL BOSS EDITION",
    ConfigurationSaving = {Enabled = false},
    KeySystem = false
})

local MainTab = Window:CreateTab("Main", 4483362458)
local ServerTab = Window:CreateTab("Server", 4483362458)

MainTab:CreateParagraph({
    Title = "FREE SCRIPT - cenzyXcode",
    Content =
        "Script GRATIS\n"..
        "Jangan dijual\n"..
        "Jangan maling source\n\n"..
        "Share script gue biar semangat bikin nya ye 🔥"
})

----------------------------------------------------------------
-- FARM SYSTEM
----------------------------------------------------------------
local Running = false
local Delay = 2

local Checkpoints = {
    Vector3.new(-703.18,168.03,-1.30)
}

local Summit = Vector3.new(-9681.14,2608.73,-609.42)

local function TeleportTo(pos)
    if HRP then
        HRP.CFrame = CFrame.new(pos)
    end
end

local function FarmLoop()
    while Running do
        for _,v in pairs(Checkpoints) do
            if not Running then break end
            TeleportTo(v)
            task.wait(Delay)
        end
        TeleportTo(Summit)
        task.wait(Delay)
        ResetRemote:FireServer()
        task.wait(Delay)
    end
end

MainTab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Callback = function(v)
        Running = v
        if v then
            task.spawn(FarmLoop)
        end
    end
})

MainTab:CreateInput({
    Name = "Delay (detik)",
    PlaceholderText = "2",
    Callback = function(text)
        local num = tonumber(text)
        if num then Delay = num end
    end
})

MainTab:CreateButton({
    Name = "Teleport Summit",
    Callback = function()
        TeleportTo(Summit)
    end
})

MainTab:CreateButton({
    Name = "Reset Remote",
    Callback = function()
        ResetRemote:FireServer()
    end
})

----------------------------------------------------------------
-- SERVER HOP
----------------------------------------------------------------
local Visited = {}

local function ServerHop()
    local request = syn and syn.request or http_request or request
    if not request then return end

    local cursor = ""
    repeat
        local response = request({
            Url = "https://games.roblox.com/v1/games/"..PID.."/servers/Public?limit=100"..(cursor ~= "" and "&cursor="..cursor or ""),
            Method = "GET"
        })

        local data = HttpService:JSONDecode(response.Body)

        for _,server in pairs(data.data) do
            if server.playing < server.maxPlayers and not Visited[server.id] then
                Visited[server.id] = true
                TeleportService:TeleportToPlaceInstance(PID, server.id, LP)
                return
            end
        end

        cursor = data.nextPageCursor
    until not cursor
end

ServerTab:CreateButton({
    Name = "Server Hop (Sepi)",
    Callback = ServerHop
})

Rayfield:Notify({
    Title = "MT RIMBARA",
    Content = "FINAL BOSS LOADED | cenzyXcode",
    Duration = 4
})
