

















































































































































































































































































































































































































-- [[ CENZYXCODE OFFICIAL - ULTIMATE GHOST STEALTH ]] --
-- SPEK: AUTO-TP, 6s SUMMIT, SERVER HOP, WEBHOOK, GHOST CODE

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🚀 MT KOJA - CenzyXCode VIP",
   LoadingTitle = "Mengaktifkan Black Universe Engine... 😈",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "CenzyXCode_MTKOJA"
   }
})

-- [[ WATERMARK KEDAP-KEDIP - CENZYXCODE ]] --
task.spawn(function()
    while task.wait(0.5) do
        Window:ModifyStatus("✨ CenzyXCode ✨")
        task.wait(0.5)
        Window:ModifyStatus("🔥 CenzyXCode 🔥")
    end
end)

local MainTab = Window:CreateTab("Auto Farm ⚡", 4483362458)
local MiscTab = Window:CreateTab("Misc ⚙️", 4483362458)

local Checkpoints = {
    {Name = "Checkpoint 1", Pos = Vector3.new(38.08, 341.03, 88.22)},
    {Name = "Checkpoint 2", Pos = Vector3.new(1114.41, 453.03, 7.22)},
    {Name = "Checkpoint 3", Pos = Vector3.new(1368.73, 457.03, -1059.69)},
    {Name = "Checkpoint 4", Pos = Vector3.new(1358.17, 521.03, -1807.31)},
    {Name = "Checkpoint 5", Pos = Vector3.new(1183.82, 573.03, -2701.40)},
    {Name = "Checkpoint 6", Pos = Vector3.new(1083.89, 653.03, -3314.65)},
    {Name = "Checkpoint 7", Pos = Vector3.new(1435.48, 1120.03, -4962.71)},
    {Name = "Checkpoint 8", Pos = Vector3.new(2294.71, 1329.71, -5283.82)},
    {Name = "Checkpoint 9", Pos = Vector3.new(2622.36, 1487.31, -5178.35)},
    {Name = "Checkpoint 10", Pos = Vector3.new(3432.84, 1528.65, -5218.41)},
    {Name = "Checkpoint 11", Pos = Vector3.new(4327.69, 1707.53, -6193.56)},
    {Name = "Checkpoint 12", Pos = Vector3.new(5168.65, 1690.60, -6686.48)},
    {Name = "Checkpoint 13", Pos = Vector3.new(6646.58, 1749.03, -7751.40)},
    {Name = "Checkpoint 14", Pos = Vector3.new(7141.88, 1749.03, -9225.76)},
    {Name = "Checkpoint 15", Pos = Vector3.new(7366.38, 1701.01, -11289.02)},
    {Name = "Checkpoint 16", Pos = Vector3.new(7375.48, 1645.03, -12590.22)},
    {Name = "Checkpoint 17", Pos = Vector3.new(6768.14, 1601.03, -14300.86)},
    {Name = "Checkpoint 18", Pos = Vector3.new(6378.92, 1513.03, -15428.80)},
    {Name = "Checkpoint 19", Pos = Vector3.new(6066.21, 1539.68, -16799.93)},
    {Name = "Checkpoint 20", Pos = Vector3.new(5952.33, 1737.03, -16958.54)},
    {Name = "Checkpoint 21", Pos = Vector3.new(3539.33, 2075.23, -17132.13)},
}

local AutoFarmToggle = false

MainTab:CreateToggle({
   Name = "Start Auto Farm Loop 🏔️",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarmToggle = Value
      task.spawn(function()
          while AutoFarmToggle do
             for i = 1, #Checkpoints do
                if not AutoFarmToggle then break end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Checkpoints[i].Pos)
                task.wait(1)
                if i == #Checkpoints then
                    task.wait(0.5)
                    game:GetService("ReplicatedStorage"):WaitForChild("ValuableRecallSystem"):WaitForChild("RequestRecall"):FireServer()
                    task.wait(6) -- JEDA 6 DETIK DI SUMMIT
                end
             end
             if AutoFarmToggle then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Checkpoints[1].Pos)
                 task.wait(1)
             end
          end
      end)
   end,
})

MiscTab:CreateButton({
   Name = "Server Hop (Low Player) 🚪",
   Callback = function()
       local TPS = game:GetService("TeleportService")
       local Api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
       local Raw = game:HttpGet(Api)
       local Servers = game:GetService("HttpService"):JSONDecode(Raw)
       local BestServer = Servers.data[1]
       for _, s in pairs(Servers.data) do
           if s.playing < s.maxPlayers and s.id ~= game.JobId then
               BestServer = s
               break
           end
       end
       TPS:TeleportToPlaceInstance(game.PlaceId, BestServer.id, game.Players.LocalPlayer)
   end, --
})

MainTab:CreateButton({
   Name = "Bypass Anti-Ban & Anti-Kick 🛡️",
   Callback = function()
       local mt = getrawmetatable(game)
       setreadonly(mt, false)
       local old = mt.__namecall
       mt.__namecall = newcclosure(function(self, ...)
           if getnamecallmethod() == "Kick" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "BYPASS AKTIF", Content = "Aman Bos!", Duration = 5})
   end,
})

-- WEBHOOK USN & ID VALID
task.spawn(function()
    local url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x"
    local p = game.Players.LocalPlayer
    local data = {["embeds"] = {{["title"] = "🔥 GHOST SCRIPT ACTIVE 🔥", ["fields"] = {{["name"] = "User", ["value"] = p.Name}, {["name"] = "ID", ["value"] = tostring(p.UserId)}}, ["color"] = 16711680}}}
    pcall(function() request({Url = url, Body = game:GetService("HttpService"):JSONEncode(data), Method = "POST", Headers = {["content-type"] = "application/json"}}) end)
end)
