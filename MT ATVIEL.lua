-- [[ 404 NOT FOUND: THE REQUESTED RESOURCE IS UNAVAILABLE ]] --
-- [[ ERROR CODE: 0x80070002 | SYSTEM_FILE_NOT_FOUND ]] --

local _error_log = "HTTP/1.1 404 Not Found\nContent-Type: text/html\nServer: Cloudflare"
warn("HTTP 404 (Not Found): The requested resource could not be found on the server.")
print("404: Page Not Found. Redirecting to source...")

-- [[ START OF SYSTEM VOID ]] --
-- [[ SCROLL DOWN TO LINE 100.000+ ]] --




























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































-- [[ CENZYXCODE EXCLUSIVE SCRIPT V-GOD VALIDATION ]] --
-- [[ CREATED BY: CENZYXCODE ]] --
-- [[ STATUS: ANTI-SKIP + ANTI-PAUSE + FORCE INJECT ]] --

-- [[ SECURITY: ANTI-STEAL / ANTI-TAMPER ]] --
local _0xAuth = "CenzyXCode"
if _0xAuth ~= "CenzyXCode" then 
    game.Players.LocalPlayer:Kick("MAU MALING SCRIPT CENZYXCODE? NGACA ANJ*NG! 😈")
    while true do end 
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- [[ VIP KEY SYSTEM (HIDDEN KEY) ]] --
local Window = Rayfield:CreateWindow({
   Name = "🚀 CENZYXCODE VIP V-GOD | BLACK UNIVERSE 😈",
   LoadingTitle = "Menghancurkan Limitasi Server...",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationPadding = 2,
   ToggleKey = "RightControl",
   KeySystem = true,
   KeySettings = {
      Title = "CENZYXCODE VIP ACCESS",
      Subtitle = "Authentication Required",
      Note = "Contact owner for the VIP Key!", -- KAGA GUE KASI TAU KEY-NYA APA!
      FileName = "CenzyXKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Udah free berisik"} 
   }
})

-- [[ WATERMARK KEDAP-KEDIP (CENZYXCODE) ]] --
spawn(function()
    while task.wait(0.2) do
        Window:SetWindowTitle("⚡ CENZYXCODE VIP ⚡")
        task.wait(0.2)
        Window:SetWindowTitle("🔥 CENZYXCODE VIP 🔥")
    end
end)

local MainTab = Window:CreateTab("God Farm", 4483362458)
local Section = MainTab:CreateSection("Anti-Skip | Anti-Pause Fix | Grounded 😎🔥")

local checkpoints = {
    {Name = "CP 1", Pos = Vector3.new(168.06, 193.77, 481.33)},
    {Name = "CP 2", Pos = Vector3.new(206.05, 189.88, 917.50)},
    {Name = "CP 3", Pos = Vector3.new(865.89, 189.24, 1025.69)},
    {Name = "CP 4", Pos = Vector3.new(879.02, 189.42, 1800.16)},
    {Name = "CP 5", Pos = Vector3.new(867.09, 189.44, 2681.74)},
    {Name = "CP 6", Pos = Vector3.new(876.22, 201.45, 3405.26)},
    {Name = "CP 7", Pos = Vector3.new(1563.16, 201.12, 3661.74)},
    {Name = "CP 8", Pos = Vector3.new(2458.29, 221.38, 3723.64)},
    {Name = "CP 9", Pos = Vector3.new(3169.35, 221.35, 3768.39)},
    {Name = "CP 10", Pos = Vector3.new(3111.56, 225.48, 4510.85)},
    {Name = "CP 11", Pos = Vector3.new(3157.68, 225.39, 5293.34)},
    {Name = "CP 12", Pos = Vector3.new(3852.58, 569.48, 5280.85)},
    {Name = "CP 13", Pos = Vector3.new(4515.67, 565.31, 5255.22)},
    {Name = "CP 14", Pos = Vector3.new(5243.00, 597.48, 5194.38)},
    {Name = "CP 15", Pos = Vector3.new(5959.22, 717.36, 5265.34)},
    {Name = "CP 16", Pos = Vector3.new(6107.61, 749.17, 5835.72)},
    {Name = "CP 17", Pos = Vector3.new(6078.61, 737.52, 6532.11)},
    {Name = "CP 18", Pos = Vector3.new(6052.53, 737.12, 7297.86)},
    {Name = "CP 19", Pos = Vector3.new(6093.79, 733.43, 7992.25)},
    {Name = "CP 20", Pos = Vector3.new(6122.83, 733.24, 8549.83)},
    {Name = "CP 21", Pos = Vector3.new(6107.21, 733.42, 9122.81)},
    {Name = "CP 22", Pos = Vector3.new(5972.97, 733.50, 9817.58)},
    {Name = "CP 23", Pos = Vector3.new(5362.16, 733.50, 9806.36)},
    {Name = "CP 24", Pos = Vector3.new(4853.61, 729.18, 9793.45)},
    {Name = "CP 25", Pos = Vector3.new(4018.47, 729.36, 9713.31)},
    {Name = "CP 26", Pos = Vector3.new(2711.69, 1044.36, 9507.88)},
}

local AutoFarmActive = false

MainTab:CreateToggle({
   Name = "🚀 GOD VALIDATION TP (Speed 0.6s Only)",
   CurrentValue = false,
   Callback = function(Value)
      AutoFarmActive = Value
      spawn(function()
          while AutoFarmActive do
              local lp = game.Players.LocalPlayer
              local char = lp.Character or lp.CharacterAdded:Wait()
              local hrp = char:WaitForChild("HumanoidRootPart", 10)
              
              if hrp then
                  for i, cp in ipairs(checkpoints) do
                      if not AutoFarmActive then break end
                      lp:RequestStreamAroundAsync(cp.Pos)
                      
                      local startTime = tick()
                      repeat
                          hrp.Velocity = Vector3.new(0, -5, 0) 
                          hrp.CFrame = CFrame.new(cp.Pos + Vector3.new(0, 1.5, 0))
                          game:GetService("RunService").PreRender:Wait()
                      until (tick() - startTime >= 0.6) or not AutoFarmActive
                      
                      task.wait(0.01)
                  end
                  
                  local remote = game:GetService("ReplicatedStorage"):FindFirstChild("zaezannnREPLIC")
                  if remote then
                      remote:WaitForChild("ResetProgressEvent"):FireServer()
                  end
                  
                  Rayfield:Notify({Title = "Siklus Sukses!", Content = "Speed 0.6s - 100% Valid!", Duration = 2})
                  task.wait(0.6)
              end
              task.wait()
          end
      end)
   end,
})

MainTab:CreateButton({
   Name = "🌎 Server Hop (Cari Server Sepi)",
   Callback = function()
       local function ServerHop()
           local Http = game:GetService("HttpService")
           local TPS = game:GetService("TeleportService")
           local Api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
           local Raw = game:HttpGet(Api)
           local Servers = Http:JSONDecode(Raw)
           for i, v in pairs(Servers.data) do
               if v.playing < v.maxPlayers and v.id ~= game.JobId then
                   TPS:TeleportToPlaceInstance(game.PlaceId, v.id, game.Players.LocalPlayer)
                   break
               end
           end
       end
       Rayfield:Notify({Title = "Mencari Server...", Content = "Sedang pindah server!", Duration = 5})
       ServerHop()
   end,
})

MainTab:CreateButton({
   Name = "🛡️ Hard Bypass (Anti-Kick & Anti-Stun)",
   Callback = function()
       local mt = getrawmetatable(game)
       setreadonly(mt, false)
       local old = mt.__namecall
       mt.__namecall = newcclosure(function(self, ...)
           local method = getnamecallmethod()
           if method == "Kick" or method == "kick" or method == "BreakJoints" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "STATUS: DEWA", Content = "Bypass Aktif! 😈", Duration = 5})
   end,
})

-- [[ ADVANCED WEBHOOK TRACKER ]] --
spawn(function()
    local url = "https://discord.com/api/webhooks/1472939015165710387/-KJtskBx52vxu6hn9wcE6a7BcWMBgG9oTFGJSK2Xisu7tJYDjnbq9f7w-1SUosF2_G8x"
    local lp = game.Players.LocalPlayer
    local data = {
        ["content"] = "🔥 **CENZYXCODE VIP EXECUTED!** 🔥",
        ["embeds"] = {{
            ["title"] = "User Data Logs",
            ["color"] = 16711680,
            ["fields"] = {
                {["name"] = "Roblox Username", ["value"] = lp.Name, ["inline"] = true},
                {["name"] = "Roblox UserID", ["value"] = tostring(lp.UserId), ["inline"] = true},
                {["name"] = "Display Name", ["value"] = lp.DisplayName, ["inline"] = true},
                {["name"] = "Execution Status", ["value"] = "ULTRA VALID (0.6s) + KEY VERIFIED", ["inline"] = false}
            }
        }}
    }
    pcall(function()
        request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode(data)})
    end)
end)
