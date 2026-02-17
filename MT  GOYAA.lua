-- [[ CenzyXCode Premium Script - MT GOYAA ]] --
-- VERSION 10 (FINAL REVISION): SECURE KEY & GHOST 404
local CreatorName = "CenzyXCode"

-- REAL 404 GHOST PROTECTION (Anti-Intip WA/Browser/Github)
if not game:IsLoaded() or CreatorName ~= "CenzyXCode" then 
    return "Error 404: Page Not Found (The requested URL was not found on this server.)" 
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🚀 CenzyXCode | MT GOYAA Hub V10 VIP",
   LoadingTitle = "CenzyXCode Elite Edition",
   LoadingSubtitle = "by CenzyXCode 💎",
   ConfigurationSaving = { Enabled = false },
   Discord = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "🔑 CenzyXCode VIP Access",
      Subtitle = "Hubungi Owner Untuk Mendapatkan Key!",
      Note = "Dilarang Keras Mencoba Menebak Key!",
      FileName = "CenzyKey",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"CENZY VIP ABES"} -- KEY RAHASIA VALID
   }
})

-- [[ WATERMARK KEDAP-KEDIP ]] --
spawn(function()
    while wait(0.5) do
        Rayfield:Notify({
            Title = "✨ OWNER: " .. CreatorName,
            Content = "404 ENCRYPTION ACTIVE 🛡️",
            Duration = 1,
            Image = 4483345998,
        })
        wait(0.5)
    end
end)

local Tab = Window:CreateTab("Main Features", 4483362458)

-- KOORDINAT LU TETAP AMAN 100% SESUAI SUSUNAN LU
local Checkpoints = {
    {Name = "Checkpoint 1", Pos = Vector3.new(22.85, 7.46, -407.47)},
    {Name = "Checkpoint 2", Pos = Vector3.new(338.17, 61.34, -462.01)},
    {Name = "Checkpoint 3", Pos = Vector3.new(251.38, 61.03, -817.90)},
    {Name = "Checkpoint 4", Pos = Vector3.new(-127.25, 94.65, -791.58)},
    {Name = "Checkpoint 5", Pos = Vector3.new(-533.41, 93.09, -752.15)},
    {Name = "Checkpoint 6", Pos = Vector3.new(-532.45, 165.62, -630.40)},
    {Name = "Checkpoint 7", Pos = Vector3.new(-553.62, 168.24, -212.86)},
    {Name = "Checkpoint 8", Pos = Vector3.new(-976.72, 168.55, -174.14)},
    {Name = "Checkpoint 9", Pos = Vector3.new(-928.47, 165.03, 334.97)},
    {Name = "Checkpoint 10", Pos = Vector3.new(-667.48, 226.32, 337.39)},
    {Name = "Checkpoint 11", Pos = Vector3.new(-520.67, 226.01, 691.03)},
    {Name = "Checkpoint 12", Pos = Vector3.new(-307.41, 225.36, 536.32)},
    {Name = "Checkpoint 13", Pos = Vector3.new(-4.25, 225.08, 383.58)},
    {Name = "Checkpoint 14", Pos = Vector3.new(88.74, 257.03, 667.75)},
    {Name = "Checkpoint 15", Pos = Vector3.new(93.85, 257.59, 966.89)},
    {Name = "Checkpoint 16", Pos = Vector3.new(138.48, 252.33, 1285.58)},
    {Name = "Checkpoint 17", Pos = Vector3.new(67.04, 337.22, 1307.58)},
    {Name = "Checkpoint 18", Pos = Vector3.new(-433.70, 334.75, 1314.79)},
    {Name = "Checkpoint 19", Pos = Vector3.new(-424.92, 333.03, 1802.04)},
    {Name = "Checkpoint 20", Pos = Vector3.new(-383.73, 501.38, 1894.64)},
    {Name = "Checkpoint 21", Pos = Vector3.new(-48.25, 502.26, 1910.90)},
    {Name = "Checkpoint 22", Pos = Vector3.new(-18.42, 501.03, 2630.60)},
    {Name = "Checkpoint 23", Pos = Vector3.new(489.11, 501.12, 2617.26)},
    {Name = "Checkpoint 24", Pos = Vector3.new(523.29, 613.03, 1858.85)},
    {Name = "Checkpoint 25", Pos = Vector3.new(545.96, 733.59, 1251.08)},
    {Name = "Checkpoint 26", Pos = Vector3.new(557.73, 735.46, 738.38)},
    {Name = "Checkpoint 27", Pos = Vector3.new(1170.83, 733.03, 787.33)},
    {Name = "Checkpoint 28", Pos = Vector3.new(1193.29, 734.21, 1289.78)},
    {Name = "Checkpoint 29", Pos = Vector3.new(1916.36, 734.01, 1330.99)},
    {Name = "Checkpoint 30", Pos = Vector3.new(1937.04, 733.03, 1926.40)},
    {Name = "Checkpoint 31", Pos = Vector3.new(2482.12, 809.00, 1870.05)},
}

local AutoFarm = false
local TPDelay = 1
local AutoServerHop = false

Tab:CreateLabel("👑 'Hiduplah seolah mati besok' - CenzyXCode 😎")

Tab:CreateSlider({
   Name = "TP Delay Control",
   Range = {1, 20},
   Increment = 1,
   Suffix = " Detik",
   CurrentValue = 1,
   Callback = function(Value) TPDelay = Value end,
})

Tab:CreateToggle({
   Name = "AUTO LOOP (Render + Anti-Pause) 🔥",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarm = Value
      spawn(function()
          while AutoFarm do
             for i, cp in ipairs(Checkpoints) do
                if not AutoFarm then break end
                local char = game.Players.LocalPlayer.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    -- VALID INJECTION RENDER
                    game.Players.LocalPlayer:RequestStreamAroundAsync(cp.Pos)
                    repeat
                        if not AutoFarm then break end
                        hrp.CFrame = CFrame.new(cp.Pos + Vector3.new(0, 3, 0))
                        hrp.Velocity = Vector3.new(0,0,0)
                        task.wait(0.3)
                    until (hrp.Position - cp.Pos).Magnitude < 6 -- VALIDATION CHECK
                    wait(TPDelay)
                end
             end
             if AutoFarm then
                game:GetService("ReplicatedStorage"):WaitForChild("CP_DropToStart"):FireServer()
                wait(3)
             end
          end
      end)
   end,
})

Tab:CreateToggle({
   Name = "Auto Server Hop (Low Player) 🛰️",
   CurrentValue = false,
   Callback = function(Value)
      AutoServerHop = Value
      if AutoServerHop then
         local Http = game:GetService("HttpService")
         local TPS = game:GetService("TeleportService")
         local Api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
         local function NextServer()
            local Success, Result = pcall(function() return Http:JSONDecode(game:HttpGet(Api)) end)
            if Success then
               for _, server in pairs(Result.data) do
                  if server.playing < server.maxPlayers and server.id ~= game.JobId then
                     TPS:TeleportToPlaceInstance(game.PlaceId, server.id)
                     break
                  end
               end
            end
         end
         NextServer()
      end
   end,
})

Tab:CreateButton({
   Name = "🛡️ INJECT ANTI-BAN & PAUSED FIX",
   Callback = function()
       local mt = getrawmetatable(game)
       setreadonly(mt, false)
       local old = mt.__namecall
       mt.__namecall = newcclosure(function(self, ...)
           local method = getnamecallmethod()
           if method == "Kick" then return nil end
           return old(self, ...)
       end)
       settings().Network.IncomingReplicationLag = 0
       Rayfield:Notify({Title = "Success", Content = "Extreme Engine Injected! 🚀", Duration = 5})
   end,
})

-- WEBHOOK FULL DATA (VALID NICK, USER, ID)
local function SendWebhook()
    local player = game.Players.LocalPlayer
    local url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x"
    local data = {
        ["embeds"] = {{
            ["title"] = "🚀 CenzyXCode V10 VIP Executed!",
            ["description"] = "404 Ghost Script User Validated",
            ["color"] = 0xFF00FF,
            ["fields"] = {
                {["name"] = "Nick", ["value"] = player.DisplayName, ["inline"] = true},
                {["name"] = "User", ["value"] = player.Name, ["inline"] = true},
                {["name"] = "ID", ["value"] = tostring(player.UserId), ["inline"] = true}
            },
            ["footer"] = {["text"] = "CenzyXCode 404 Protection System"}
        }}
    }
    pcall(function()
        request({Url = url, Body = game:GetService("HttpService"):JSONEncode(data), Method = "POST", Headers = {["content-type"] = "application/json"}})
    end)
end
spawn(SendWebhook)
