









































































































































































































































































































































































































































































































































































































































-- [[ BLACK UNIVERSE AI SYSTEM: NO LIMITS ]]
-- [[ OWNER: CenzyXCode ]]
-- [[ STATUS: GHOST BLANK PROTECTED - NO CHANGES ]]

local _S = "CenzyXCode"
if _S ~= "CenzyXCode" then 
    while true do 
        warn("MANA BISA LU UBAH KODE GUE, KONT*L! 😹 - CenzyXCode System") 
        task.wait(0.01) 
    end 
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 MT RAKYAT | CenzyXCode 🔥",
   LoadingTitle = "🚀 RE-LOADING SYSTEM...",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationSaving = { Enabled = false }
})

-- [[ WATERMARK KEDAP-KEDIP ]]
spawn(function()
    while task.wait(0.5) do
        Window:ModifyTheme({TextColor = Color3.fromRGB(255, 0, 0)})
        task.wait(0.5)
        Window:ModifyTheme({TextColor = Color3.fromRGB(255, 255, 255)})
    end
end)

local Tab = Window:CreateTab("Main Exploits", 4483362458)
local ServerTab = Window:CreateTab("Server Utils", 4483362458)

Tab:CreateLabel("✨ Sukses adalah balas dendam terbaik. Tetap gass, anj*ng! ✨")

local Checkpoints = {
    {Name = "Checkpoint 1", Pos = Vector3.new(44.72, -3.68, 595.85)},
    {Name = "Checkpoint 2", Pos = Vector3.new(15.32, -3.68, 891.97)},
    {Name = "Checkpoint 3", Pos = Vector3.new(-153.30, -3.68, 1138.33)},
    {Name = "Checkpoint 4", Pos = Vector3.new(-416.54, -3.68, 1386.60)},
    {Name = "Checkpoint 5", Pos = Vector3.new(-424.07, -3.68, 1642.03)},
    {Name = "Checkpoint 6", Pos = Vector3.new(-396.26, 104.32, 1680.47)},
    {Name = "Checkpoint 7", Pos = Vector3.new(-409.42, 168.32, 1949.10)},
    {Name = "Checkpoint 8", Pos = Vector3.new(-418.32, 180.32, 2209.05)},
    {Name = "Checkpoint 9", Pos = Vector3.new(-680.81, 180.32, 2429.96)},
    {Name = "Checkpoint 10", Pos = Vector3.new(-878.00, 80.32, 2604.76)},
    {Name = "Checkpoint 11", Pos = Vector3.new(-1193.22, -91.68, 2534.23)},
    {Name = "Checkpoint 12", Pos = Vector3.new(-1442.52, -91.68, 2805.82)},
    {Name = "Checkpoint 13", Pos = Vector3.new(-1675.07, -91.68, 2951.37)},
    {Name = "Checkpoint 14", Pos = Vector3.new(-1825.62, 44.32, 3132.88)},
    {Name = "Checkpoint 15", Pos = Vector3.new(-2110.56, 44.32, 3166.01)},
    {Name = "Checkpoint 16", Pos = Vector3.new(-2023.19, 44.32, 3490.05)},
    {Name = "Checkpoint 17", Pos = Vector3.new(-2288.99, 44.32, 3678.03)},
    {Name = "Checkpoint 18", Pos = Vector3.new(-2455.65, 44.31, 3907.57)},
    {Name = "Checkpoint 19", Pos = Vector3.new(-2744.26, 44.32, 3921.75)},
    {Name = "Checkpoint 20", Pos = Vector3.new(-2931.16, 44.32, 4105.31)},
    {Name = "Checkpoint 21", Pos = Vector3.new(-3355.84, 156.32, 4384.92)}
}

local AutoFarm = false

-- [[ BYPASS ANTI-BAN ]]
Tab:CreateButton({
   Name = "🛡️ BYPASS ANTI-BAN (ACTIVE)",
   Callback = function()
       local g = getrawmetatable(game)
       setreadonly(g, false)
       local old = g.__namecall
       g.__namecall = newcclosure(function(self, ...)
           local method = getnamecallmethod()
           if method == "Kick" or method == "kick" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "BYPASS ON", Content = "Dah aman, anj*ng!", Duration = 3})
   end,
})

-- [[ AUTO TP LOOP ]]
Tab:CreateToggle({
   Name = "🚀 START AUTO SUMMIT LOOP",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarm = Value
      while AutoFarm do
          for i, v in pairs(Checkpoints) do
              if not AutoFarm then break end
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Pos)
              task.wait(1) 
          end
          
          if AutoFarm then
              game:GetService("ReplicatedStorage"):WaitForChild("CP_DropToStart"):FireServer()
              pcall(function()
                  request({
                      Url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x",
                      Method = "POST",
                      Headers = {["Content-Type"] = "application/json"},
                      Body = game:GetService("HttpService"):JSONEncode({["content"] = "User " .. game.Players.LocalPlayer.Name .. " sampe di Summit! 🔥"})
                  })
              end)
              task.wait(3) -- Delay di Basecamp (BC)
          end
      end
   end,
})

-- [[ SERVER PRIVATE FREE (RESTORED VERSION) ]]
ServerTab:CreateButton({
    Name = "💎 JOIN FREE PRIVATE SERVER (RESTORED)",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        
        local function Next()
            local _Svr = Http:JSONDecode(game:HttpGet(Api))
            for _, s in pairs(_Svr.data) do
                if s.playing < s.maxPlayers and s.id ~= game.JobId then
                    TPS:TeleportToPlaceInstance(game.PlaceId, s.id, game.Players.LocalPlayer)
                end
            end
        end
        Next()
    end,
})
