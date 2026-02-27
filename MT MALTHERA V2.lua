




















































































































































































































































































































































































































-- [[ BLACK UNIVERSE SYSTEM: MT MALTHERA ULTIMATE V9 ]]
-- [[ STATUS: INVISIBLE SC & 0.5S DELAY ]]
-- [[ OWNER: CenzyXCode ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 MT MALTHERA GOD MODE | CenzyXCode 🔥",
   LoadingTitle = "404 Source Not Found...",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationSaving = { Enabled = false },
   Discord = { Enabled = false },
   KeySystem = false
})

-- Label Kata-kata Bijak (UTUH!)
local MainTab = Window:CreateTab("Home", 4483362458)
MainTab:CreateLabel("🚀 'Kesuksesan berawal dari script yang tepat, bukan dari usaha yang berat.' - CenzyXCode 😈")

-- Watermark Kedap-kedip CenzyXCode
task.spawn(function()
    local wm = MainTab:CreateLabel("✨ OWNER: CenzyXCode ✨")
    while task.wait(0.5) do
        wm:Set("🔥 OWNER: CenzyXCode 🔥")
        task.wait(0.5)
        wm:Set("✨ OWNER: CenzyXCode ✨")
    end
end)

local Tab = Window:CreateTab("Auto Farm", 4483362458)
local Section = Tab:CreateSection("Main Loop")

local checkpoints = {
    {Name = "CP 1", Pos = Vector3.new(-73.29, 2178.03, 601.40)},
    {Name = "CP 2", Pos = Vector3.new(-69.42, 2334.03, 1151.05)},
    {Name = "CP 3", Pos = Vector3.new(-88.08, 2492.03, 1649.78)},
    {Name = "CP 4", Pos = Vector3.new(-83.07, 2632.03, 2096.96)},
    {Name = "CP 5", Pos = Vector3.new(-138.99, 2796.03, 2564.00)},
    {Name = "CP 6", Pos = Vector3.new(-74.28, 3028.03, 3064.78)},
    {Name = "CP 7", Pos = Vector3.new(48.23, 3192.03, 3687.14)},
    {Name = "CP 8", Pos = Vector3.new(58.73, 3416.03, 4146.06)},
    {Name = "CP 9", Pos = Vector3.new(68.93, 4633.73, 5007.44)}
}

_G.AutoFarm = false

Tab:CreateToggle({
   Name = "Auto TP CP + Summit Loop (Delay 0.5s)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      while _G.AutoFarm do
          local char = game.Players.LocalPlayer.Character
          if char and char:FindFirstChild("HumanoidRootPart") then
              for i, cp in ipairs(checkpoints) do
                  if not _G.AutoFarm then break end
                  char.HumanoidRootPart.CFrame = CFrame.new(cp.Pos)
                  task.wait(0.5) -- DELAY 0.5S TETEP NGEBUT!
                  
                  if i == #checkpoints then
                      local args = {"ResetCheckpoint"}
                      game:GetService("ReplicatedStorage"):WaitForChild("CheckpointSync"):FireServer(unpack(args))
                      
                      -- Webhook Discord
                      pcall(function()
                          local HttpService = game:GetService("HttpService")
                          HttpService:PostAsync("https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x", 
                          HttpService:JSONEncode({content = "🔥 **CenzyXCode Auto-Farm** | Summit Reached & Reset!"}))
                      end)
                  end
              end
          end
          task.wait(0.1)
      end
   end,
})

-- Fitur Server Private (Tetap di Sini!)
local ServerTab = Window:CreateTab("Server Control")
ServerTab:CreateButton({
   Name = "🚀 Join Lowest Player Server",
   Callback = function()
       local Http = game:GetService("HttpService")
       local TPS = game:GetService("TeleportService")
       local PlaceId = game.PlaceId
       local success, result = pcall(function()
           return Http:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
       end)
       if success and result.data then
           for _, s in pairs(result.data) do
               if s.id ~= game.JobId and s.playing < s.maxPlayers then
                   TPS:TeleportToPlaceInstance(PlaceId, s.id, game.Players.LocalPlayer)
                   return
               end
           end
       end
   end,
})

-- Bypass Anti-Ban (UTUH!)
local SecTab = Window:CreateTab("Security")
SecTab:CreateButton({
   Name = "🛡️ Bypass Anti-Ban (ON)",
   Callback = function()
       local mt = getrawmetatable(game)
       setreadonly(mt, false)
       local old = mt.__namecall
       mt.__namecall = newcclosure(function(self, ...)
           if getnamecallmethod() == "Kick" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "Bypass", Content = "Anti-Ban Active, anj*ng! 🔥", Duration = 5})
   end,
})

-- PROTEKSI ANTI-MALING 1000%
_G.Owner = "CenzyXCode"
task.spawn(function()
    while task.wait(1) do
        if _G.Owner ~= "CenzyXCode" then
            game.Players.LocalPlayer:Kick("MAU NYURI SCRIPT? KONT*L! - CenzyXCode")
            while true do end
        end
    end
end)
