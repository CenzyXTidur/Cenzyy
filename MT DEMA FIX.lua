--// LOAD RAYFIELD
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// FULL BLUE THEME
local BlueTheme = {
   TextColor = Color3.fromRGB(255, 255, 255),
   Background = Color3.fromRGB(15, 40, 90),
   Topbar = Color3.fromRGB(20, 55, 120),
   Shadow = Color3.fromRGB(0, 0, 0),
   NotificationBackground = Color3.fromRGB(20, 55, 120),
   NotificationActionsBackground = Color3.fromRGB(0, 170, 255),

   TabBackground = Color3.fromRGB(20, 55, 120),
   TabStroke = Color3.fromRGB(0, 170, 255),
   TabBackgroundSelected = Color3.fromRGB(0, 170, 255),
   TabTextColor = Color3.fromRGB(255, 255, 255),
   SelectedTabTextColor = Color3.fromRGB(0, 0, 0),

   ElementBackground = Color3.fromRGB(25, 65, 140),
   ElementBackgroundHover = Color3.fromRGB(35, 80, 170),
   SecondaryElementBackground = Color3.fromRGB(0, 170, 255),

   ElementStroke = Color3.fromRGB(0, 170, 255),
   SecondaryElementStroke = Color3.fromRGB(0, 170, 255),

   SliderBackground = Color3.fromRGB(30, 75, 160),
   SliderProgress = Color3.fromRGB(0, 170, 255),
   SliderStroke = Color3.fromRGB(0, 170, 255),

   ToggleBackground = Color3.fromRGB(30, 75, 160),
   ToggleEnabled = Color3.fromRGB(0, 170, 255),
   ToggleDisabled = Color3.fromRGB(70, 70, 70),
   ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
   ToggleDisabledStroke = Color3.fromRGB(100, 100, 100),
   ToggleEnabledOuterStroke = Color3.fromRGB(0, 170, 255),
   ToggleDisabledOuterStroke = Color3.fromRGB(100, 100, 100),
}

--// 🔴 RED ALERT THEME
local RedTheme = {
   TextColor = Color3.fromRGB(255,255,255),
   Background = Color3.fromRGB(90,15,15),
   Topbar = Color3.fromRGB(120,20,20),
   Shadow = Color3.fromRGB(0,0,0),
   NotificationBackground = Color3.fromRGB(120,20,20),
   NotificationActionsBackground = Color3.fromRGB(255,0,0),

   TabBackground = Color3.fromRGB(120,20,20),
   TabStroke = Color3.fromRGB(255,0,0),
   TabBackgroundSelected = Color3.fromRGB(255,0,0),
   TabTextColor = Color3.fromRGB(255,255,255),
   SelectedTabTextColor = Color3.fromRGB(0,0,0),

   ElementBackground = Color3.fromRGB(140,25,25),
   ElementBackgroundHover = Color3.fromRGB(170,35,35),
   SecondaryElementBackground = Color3.fromRGB(255,0,0),

   ElementStroke = Color3.fromRGB(255,0,0),
   SecondaryElementStroke = Color3.fromRGB(255,0,0),

   SliderBackground = Color3.fromRGB(160,30,30),
   SliderProgress = Color3.fromRGB(255,0,0),
   SliderStroke = Color3.fromRGB(255,0,0),

   ToggleBackground = Color3.fromRGB(160,30,30),
   ToggleEnabled = Color3.fromRGB(255,0,0),
   ToggleDisabled = Color3.fromRGB(70,70,70),
   ToggleEnabledStroke = Color3.fromRGB(255,0,0),
   ToggleDisabledStroke = Color3.fromRGB(100,100,100),
   ToggleEnabledOuterStroke = Color3.fromRGB(255,0,0),
   ToggleDisabledOuterStroke = Color3.fromRGB(100,100,100),
}

--// WINDOW
local Window = Rayfield:CreateWindow({
   Name = "🔵 MT DEMA AUTO FARM | CENZY",
   LoadingTitle = "MT DEMA",
   LoadingSubtitle = "Blue Edition by Cenzy",
   Theme = BlueTheme,
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main", 4483362458)

--// 🔵 CREDIT PALING ATAS
Tab:CreateParagraph({
   Title = "🔵 CENZY",
   Content = "Script by Cenzy\n@CENZYDURMEK\n\nSCRIPT INI FREE AMPE ADA YANG JUAL KACIW 🗿\n\nMinimal jangan maling source.\nGue bikin ini pake usaha,\nbukan hasil copas goblok 🗿"
})

--// SERVICES
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
local PlaceId = game.PlaceId
local JobId = game.JobId
local RecallRemote = ReplicatedStorage:WaitForChild("ValuableRecallSystem"):WaitForChild("RequestRecall")

--// VARIABLES
local AutoFarm = false
local DelayTP = 0.5
local summitTriggered = false

--// SAFE MODE CONFIG
local GROUP_ID = 12345678 -- ganti sesuai game
local MIN_RANK = 200
local WHITELIST = {
    ["NamaLuDisini"] = true
}

--// FUNCTIONS
local function getRoot()
    local char = player.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function teleportTo(pos)
    local root = getRoot()
    if root then
        root.CFrame = CFrame.new(pos)
    end
end

local function isNear(pos)
    local root = getRoot()
    if root then
        return (root.Position - pos).Magnitude < 8
    end
    return false
end

--// SOUND ALERT
local function playAlertSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://911342077"
    sound.Volume = 3
    sound.Parent = workspace
    sound:Play()
    sound.Ended:Connect(function() sound:Destroy() end)
end

--// GET SMALLEST SERVER
local function getSmallestServer()
    local servers = {}
    local cursor = ""
    repeat
        local url = "https://games.roblox.com/v1/games/"..PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
        if cursor ~= "" then url = url .. "&cursor=" .. cursor end
        local response = game:HttpGet(url)
        local data = HttpService:JSONDecode(response)
        for _, server in pairs(data.data) do
            if server.playing < server.maxPlayers and server.id ~= JobId then
                table.insert(servers, server)
            end
        end
        cursor = data.nextPageCursor
        task.wait(0.2)
    until not cursor
    table.sort(servers,function(a,b) return a.playing < b.playing end)
    return servers[1]
end

--// CHECK STAFF + PANIC MODE OTOMATIS
local PanicTriggered = false

local function triggerPanic(plr, rank)
    if PanicTriggered then return end
    PanicTriggered = true

    AutoFarm = false
    Window.ModifyTheme(RedTheme)
    playAlertSound()

    Rayfield:Notify({
        Title = "🚨 STAFF TERDETEKSI 🚨",
        Content = plr.Name.." (Rank "..rank..")\nAUTO FARM DIMATIKAN! Pindah server...",
        Duration = 6,
    })

    task.wait(1)
    local target = getSmallestServer()
    if target then
        TeleportService:TeleportToPlaceInstance(PlaceId, target.id, player)
    else
        TeleportService:Teleport(PlaceId)
    end
end

local function checkPlayer(plr)
    if WHITELIST[plr.Name] then return end
    local success, rank = pcall(function() return plr:GetRankInGroup(GROUP_ID) end)
    if success and rank >= MIN_RANK then
        triggerPanic(plr, rank)
    end
end

-- 🔎 SCAN SEMUA PLAYER SAAT SCRIPT MULAI
local function scanServerForStaff()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= player then
            checkPlayer(plr)
        end
    end
end
task.spawn(function()
    task.wait(2)
    scanServerForStaff()
end)

-- Detect player baru join
Players.PlayerAdded:Connect(function(plr)
    task.wait(1)
    checkPlayer(plr)
end)

--// CHECKPOINTS
local Checkpoints = {
    Vector3.new(709.01,212.01,-1026.89),
    Vector3.new(429.53,208.01,-1293.83),
    Vector3.new(436.85,344.01,-1454.95),
    Vector3.new(1240.38,336.40,-1880.78),
    Vector3.new(1787.81,345.38,-2336.34),
    Vector3.new(2724.87,329.12,-2233.14),
    Vector3.new(3368.64,488.01,-2222.00),
    Vector3.new(4226.43,488.01,-1872.23),
    Vector3.new(4735.96,488.01,-1832.86),
    Vector3.new(4941.97,630.01,-1846.25),
    Vector3.new(6308.26,379.13,-1884.08),
    Vector3.new(7576.32,380.96,-1826.75),
    Vector3.new(8417.14,696.10,-338.70),
    Vector3.new(9230.75,935.60,281.66),
    Vector3.new(9926.64,936.01,961.02),
    Vector3.new(10427.49,1133.41,1479.20),
    Vector3.new(10894.50,1244.01,1936.45),
    Vector3.new(11210.65,1520.01,2228.97),
    Vector3.new(11585.04,1522.90,2669.52),
    Vector3.new(11290.69,1706.63,3259.35),
    Vector3.new(11578.47,1723.66,3875.40),
    Vector3.new(11975.78,1868.21,4255.04),
    Vector3.new(12668.02,1696.01,4866.59),
    Vector3.new(13317.23,1696.01,5622.97),
    Vector3.new(13355.52,1695.71,6918.19),
    Vector3.new(13917.94,1728.01,7420.67),
    Vector3.new(14215.58,1800.01,7776.73),
    Vector3.new(13805.73,1851.81,8166.36),
    Vector3.new(13290.81,1851.21,8693.24),
    Vector3.new(12741.38,1850.61,9356.51),
    Vector3.new(12286.58,3712.31,9886.52),
    Vector3.new(12537.77,4209.31,10142.02),
    Vector3.new(12635.01,7801.31,10220.16),
    Vector3.new(12770.01,8330.41,10385.84)
}

--// AUTO FARM TOGGLE
Tab:CreateToggle({
   Name = "🔵 Auto Farm Summit Loop",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarm = Value
      if Value then
         task.spawn(function()
            while AutoFarm do
               for i,pos in ipairs(Checkpoints) do
                  if not AutoFarm then break end
                  teleportTo(pos)
                  task.wait(DelayTP)

                  if i == #Checkpoints and not summitTriggered then
                     if isNear(pos) then
                        summitTriggered = true
                        task.wait(1)
                        RecallRemote:FireServer()
                        repeat task.wait(0.5) until not isNear(pos)
                        task.wait(2)
                        summitTriggered = false
                     end
                  end
               end
            end
         end)
      end
   end,
})

--// TELEPORT DELAY SLIDER
Tab:CreateSlider({
   Name = "🔵 Teleport Delay",
   Range = {0.1,2},
   Increment = 0.1,
   CurrentValue = 0.5,
   Callback = function(Value)
      DelayTP = Value
   end,
})

--// SERVER HOP BUTTON
Tab:CreateButton({
   Name = "🔵 Server Hop (Paling Sepi)",
   Callback = function() 
       local targetServer = getSmallestServer()
       if targetServer then
           TeleportService:TeleportToPlaceInstance(PlaceId, targetServer.id, player)
       else
           Rayfield:Notify({
               Title = "🔵 SERVER HOP",
               Content = "Server tidak ditemukan!",
               Duration = 4,
           })
       end
   end,
})

--// JOIN WA BUTTON
Tab:CreateButton({
   Name = "🔵 Join Grup WA Cenzy",
   Callback = function()
       local waLink = "https://chat.whatsapp.com/JvlMFYZnEzT5qnXJIPXpLJ"
       if setclipboard then
           setclipboard(waLink)
           Rayfield:Notify({
               Title = "🔵 LINK DISALIN",
               Content = "Link Grup WA berhasil dicopy!",
               Duration = 4,
           })
       end
   end,
})

Rayfield:Notify({
   Title = "🔵 MT DEMA",
   Content = "BLUE EDITION LOADED!",
   Duration = 5,
})
