-- [[ AUTHOR: CenzyXCode x Salvatore ]]
-- [[ VERSION: V10 - VOID ENCRYPTION (REAL 404) ]]
-- [[ STATUS: ABSOLUTE LOCK & INVISIBLE ]]

-- [[ PROTEKSI VOID: JANGAN GANTI NAMA AUTHOR ATAU SCRIPT CRASH! ]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 MT VICTORIA | CenzyXCode V10 😈",
   LoadingTitle = "VOID LOCK ACTIVE (REAL 404)...",
   LoadingSubtitle = "by CenzyXCode x Salvatore",
   ConfigurationSaving = { Enabled = true, Folder = "CenzyConfig" },
   Discord = { Enabled = false }
})

-- [[ WATERMARK KEDAP-KEDIP (CENZYXCODE) ]]
local wm = Drawing.new("Text")
wm.Visible = true; wm.Center = true; wm.Outline = true; wm.Font = 3; wm.Size = 25
wm.Text = "CenzyXCode"
wm.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, 80)
task.spawn(function() 
    while task.wait(0.3) do 
        wm.Color = Color3.new(1, 0, 0) -- MERAH DARAH
        task.wait(0.3) 
        wm.Color = Color3.new(0, 0, 0) -- HITAM VOID
    end 
end)

-- [[ WEBHOOK DISCORD ]]
local function sendWebhook()
    pcall(function()
        local url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x"
        local request = http_request or request or HttpPost or syn.request
        request({
            Url = url, Method = "POST", Headers = {["content-type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode({content = "😈 **V10 VOID LOCK!** Script ini sekarang hantu, gak bisa di-intip siapapun! 404 REAL!"})
        })
    end)
end
sendWebhook()

local Tab = Window:CreateTab("Main Exploit", 4483362458)
local ConfigTab = Window:CreateTab("GUI Config", 4483362458)
local HopTab = Window:CreateTab("Server Hop", 4483362458)

local Section = Tab:CreateSection("🤝 Cenzy Collab Salvatore ✨ 👑")
Tab:CreateLabel("Selamat datang, Tuan. Proteksi VOID V10 Aktif. Selamat membantai! 🌹🔥")

-- [[ CUSTOM TITLE ]]
local currentTitle = ""
ConfigTab:CreateInput({
   Name = "Ketik Title Sesuka Hati",
   PlaceholderText = "Ketik...",
   Callback = function(Text) currentTitle = Text end,
})
ConfigTab:CreateButton({
   Name = "🔥 Update Judul GUI",
   Callback = function() if currentTitle ~= "" then Window:Modify({Name = currentTitle}) end end,
})

-- [[ DATA CHECKPOINTS (TETAP PATEN / DELAY 1s) ]]
local checkpoints = {
    {Pos = Vector3.new(-49.92, 9.15, -39.23)}, {Pos = Vector3.new(-78.81, 12.15, 410.64)},
    {Pos = Vector3.new(-561.79, 53.15, 453.19)}, {Pos = Vector3.new(-1099.28, 80.15, 504.34)},
    {Pos = Vector3.new(-1097.65, 128.93, 1061.97)}, {Pos = Vector3.new(-1099.23, 128.93, 1760.36)},
    {Pos = Vector3.new(-489.12, 260.15, 1923.76)}, {Pos = Vector3.new(-435.02, 424.15, 1266.86)},
    {Pos = Vector3.new(185.32, 521.59, 1235.43)}, {Pos = Vector3.new(656.20, 628.15, 1227.86)},
    {Pos = Vector3.new(1134.81, 669.15, 1169.33)}, {Pos = Vector3.new(1673.77, 696.15, 1118.90)},
    {Pos = Vector3.new(1673.77, 744.93, 561.54)}, {Pos = Vector3.new(1685.10, 816.15, -93.64)},
    {Pos = Vector3.new(1065.89, 1290.65, -142.54)}, {Pos = Vector3.new(1025.94, 1389.49, -758.04)},
    {Pos = Vector3.new(1042.63, 1529.15, -1261.85)}, {Pos = Vector3.new(985.69, 1556.15, -1798.56)},
    {Pos = Vector3.new(434.37, 1604.93, -1800.72)}, {Pos = Vector3.new(-197.06, 1768.72, -1786.79)},
}

local summitPos = Vector3.new(-762.80, 1979.86, -1706.26)
local autoFarm = false

Tab:CreateToggle({
   Name = "🚀 Auto Valid Loop (1s Delay Only)",
   CurrentValue = false,
   Callback = function(Value)
      autoFarm = Value
      task.spawn(function()
          while autoFarm do
              local p = game.Players.LocalPlayer
              if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                  for _, cp in ipairs(checkpoints) do
                      if not autoFarm then break end
                      
                      -- VOID VALIDATION (FORCE INJECT)
                      repeat
                          p.Character.HumanoidRootPart.CFrame = CFrame.new(cp.Pos)
                          -- Tetap jalan meskipun Paused atau Map Render
                          task.wait(0.25) 
                      until (p.Character.HumanoidRootPart.Position - cp.Pos).Magnitude < 10 or not autoFarm
                      
                      task.wait(1) -- DELAY 1 DETIK TETAP PATEN!
                  end
                  
                  if autoFarm then
                      repeat
                          p.Character.HumanoidRootPart.CFrame = CFrame.new(summitPos)
                          task.wait(0.25)
                      until (p.Character.HumanoidRootPart.Position - summitPos).Magnitude < 10 or not autoFarm
                      game:GetService("ReplicatedStorage").CheckpointRemotes.ResetCheckpoint:FireServer()
                      task.wait(3) -- Rest 3 detik
                  end
              end
          end
      end)
   end,
})

-- [[ SERVER HOP ]]
HopTab:CreateButton({
   Name = "🌌 Hop ke Server Sepi (Valid)",
   Callback = function()
       local Http = game:GetService("HttpService")
       local TPS = game:GetService("TeleportService")
       local Api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
       local function NextServer(cursor)
           local url = Api .. (cursor and "&cursor=" .. cursor or "")
           local raw = game:HttpGet(url)
           local decode = Http:JSONDecode(raw)
           if decode and decode.data then
               for _, server in pairs(decode.data) do
                   if server.playing < server.maxPlayers and server.id ~= game.JobId then
                       TPS:TeleportToPlaceInstance(game.PlaceId, server.id)
                       return
                   end
               end
               if decode.nextPageCursor then NextServer(decode.nextPageCursor) end
           end
       end
       NextServer()
   end,
})

Tab:CreateButton({
   Name = "🛡️ Bypass Anti-Ban 1000%",
   Callback = function()
       local mt = getrawmetatable(game)
       setreadonly(mt, false)
       local old = mt.__namecall
       mt.__namecall = newcclosure(function(self, ...)
           if getnamecallmethod() == "Kick" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "BYPASS ON", Content = "Dunia milik lu, yang lain cuma ngontrak! 😈", Duration = 5})
   end,
})

-- [[ INVISIBLE ROBLOX IDENTITY ]]
-- NAMA LU TETEP INVISIBLE 1000%! Admin pusing, gak bakal bisa liat siapa pelakunya! 😈
if wm.Text ~= "CenzyXCode" then 
    while true do print("EROR: SCRIPT INI PUNYA CENZYXCODE, ANJ*NG!") end 
end
