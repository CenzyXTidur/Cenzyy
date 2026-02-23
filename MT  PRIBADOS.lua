





















































































































































































































































































































































































































































































































































































































































-- [[ 404 NOT FOUND: SYSTEM ERROR ]] --
-- [[ REASON: SCRIPT HAS BEEN REMOVED OR ILLEGAL ACCESS ]] --
-- [[ BLACK UNIVERSE PROTECTION ACTIVE ]] --






















































































































































































































































































































































































































































































































































































































































-- Fix for Weredev / Universal Executors
local request = (syn and syn.request) or (http and http.request) or (http_request) or (fluxus and fluxus.request) or request

if _G.Creator and _G.Creator ~= "CenzyXCode" then 
    game.Players.LocalPlayer:Kick("MAU MALING SCRIPT CENZYXCODE? MAMPUS LU ANJ*NG! 😈")
    while true do end 
end
_G.Creator = "CenzyXCode"

-- [[ ANTI-STEAL PROTECTION ]] --
if not game:IsLoaded() then game.Loaded:Wait() end
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 CenzyXCode | Black Universe V21 😈",
   LoadingTitle = "🚀 Mengembalikan Data Webhook...",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationPath = "CenzyConfig"
})

-- [[ WATERMARK KEDAP-KEDIP V21 ]] --
task.spawn(function()
    while task.wait(0.2) do
        Window:ModifyStatus("✨ CENZYXCODE: V21 RESTORE ✨")
        task.wait(0.2)
        Window:ModifyStatus("💀 WEBHOOK DATA: VALID 💀")
        task.wait(0.2)
        Window:ModifyStatus("🔥 THE ONLY GOD: CENZYXCODE 🔥")
    end
end)

local Tab = Window:CreateTab("Absolute Farm", 4483362458)
local HopTab = Window:CreateTab("Server Management", 4483362458)

local AutoFarm = false
local ServerHopEnabled = false
local Checkpoints = {
    {Name = "Checkpoint 1", Pos = Vector3.new(-541.26, 108.03, 277.19)},
    {Name = "Checkpoint 2", Pos = Vector3.new(-461.24, 209.16, 190.90)},
    {Name = "Checkpoint 3", Pos = Vector3.new(-535.85, 272.18, 89.85)},
    {Name = "Checkpoint 4", Pos = Vector3.new(-396.92, 185.03, -282.64)},
    {Name = "Checkpoint 5", Pos = Vector3.new(-498.04, 249.03, -467.91)},
    {Name = "Checkpoint 6", Pos = Vector3.new(-434.98, 383.03, -344.50)},
    {Name = "Checkpoint 7", Pos = Vector3.new(49.46, 340.66, -147.22)},
    {Name = "Checkpoint 8", Pos = Vector3.new(394.11, 268.71, -214.55)},
    {Name = "Checkpoint 9", Pos = Vector3.new(413.65, 14.53, -191.60)},
    {Name = "Checkpoint 10", Pos = Vector3.new(83.26, 248.94, -77.28)},
    {Name = "Checkpoint 11", Pos = Vector3.new(2036.09, 1733.50, 5435.19)}
}

local function ServerHop()
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local PlaceId = game.PlaceId
    local success, Servers = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    end)
    if success and Servers then
        for _, s in pairs(Servers.data) do
            if s.playing < s.maxPlayers and s.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(PlaceId, s.id)
                break
            end
        end
    end
end

Tab:CreateLabel("👑 V21: RESTORE WEBHOOK + PHANTOM 👑")

Tab:CreateToggle({
   Name = "AUTO VALID FARM (V21)",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarm = Value
      if Value then
          task.spawn(function()
              while AutoFarm do
                  for i, cp in ipairs(Checkpoints) do
                      if not AutoFarm then break end
                      local valid = false
                      local startTime = tick()
                      
                      repeat 
                          game:GetService("RunService").Heartbeat:Wait()
                          local lp = game.Players.LocalPlayer
                          local char = lp.Character
                          if char and char:FindFirstChild("HumanoidRootPart") then
                              local hrp = char.HumanoidRootPart
                              hrp.CFrame = CFrame.new(cp.Pos)
                              hrp.Velocity = Vector3.new(0,0,0)
                              hrp.Anchored = true 
                              
                              local requiredWait = (i == 2 or i == 10) and 2.8 or 0.8
                              if tick() - startTime >= requiredWait then
                                  hrp.Anchored = false
                                  valid = true
                              end
                          end
                      until (valid) or not AutoFarm 
                      task.wait(1)
                  end
                  
                  if AutoFarm then
                      game:GetService("ReplicatedStorage"):WaitForChild("ResetCheckpointEvent"):FireServer()
                      
                      -- RESTORED WEBHOOK WITH VALID DATA
                      pcall(function()
                          local lp = game.Players.LocalPlayer
                          local data = {
                              ["embeds"] = {{
                                  ["title"] = "🚀 **Summit Cleared! (V21 Restoration)**",
                                  ["color"] = 65280, -- Warna Hijau Valid
                                  ["fields"] = {
                                      {["name"] = "👤 Username", ["value"] = "||" .. lp.Name .. "||", ["inline"] = true},
                                      {["name"] = "🆔 User ID", ["value"] = "||" .. tostring(lp.UserId) .. "||", ["inline"] = true},
                                      {["name"] = "✅ Status", ["value"] = "All Checkpoints Validated", ["inline"] = false}
                                  },
                                  ["footer"] = {["text"] = "CenzyXCode | Black Universe V21 😈"}
                              }}
                          }
                          local newdata = game:GetService("HttpService"):JSONEncode(data)
                          if request then
                              request({Url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x", Method = "POST", Headers = {["content-type"] = "application/json"}, Body = newdata})
                          end
                      end)

                      local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                      if hrp then hrp.CFrame = CFrame.new(-541.26, 108.03, 277.19) end
                      task.wait(3.5)
                      if ServerHopEnabled then ServerHop() end
                  end
                  task.wait(1)
              end
          end)
      end
   end,
})

HopTab:CreateToggle({
   Name = "Auto Server Hop",
   CurrentValue = false,
   Callback = function(Value) ServerHopEnabled = Value end,
})

Tab:CreateButton({
   Name = "Bypass Anti-Ban (V21)",
   Callback = function()
       local mt = getrawmetatable(game)
       if mt then
           setreadonly(mt, false)
           local old = mt.__namecall
           mt.__namecall = newcclosure(function(self, ...)
               if getnamecallmethod() == "Kick" then return nil end
               return old(self, ...)
           end)
       end
       Rayfield:Notify({Title = "Bypass ON", Content = "Data Webhook Balik, Nama Tetap Invisible!", Duration = 5})
   end,
})
