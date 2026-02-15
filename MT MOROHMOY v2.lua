--[[ 
    ╔══════════════════════════════════════════════════════╗
    ║  CENZYXCODE PRESTIGE V8 | FINAL JUDGMENT             ║
    ║  STATUS: UNTOUCHABLE | ENCRYPTION: NUCLEAR-DEATH     ║
    ╚══════════════════════════════════════════════════════╝
]]

-- [ANTI-DECOMPILE & CRASHER LOGIC]
-- Jika terdeteksi decompiler, script ini akan memicu memori overload pada executor maling
local function _0xCRASH()
    local _garbage = {}
    while true do
        table.insert(_garbage, string.rep("\x43\x65\x6e\x7a\x79", 1000000))
        spawn(function() while true do end end)
    end
end

-- [PROTEKSI IDENTITAS - GANTI NAMA = PC MELEDAK]
local _0xID = { [1] = "\x43", [2] = "\x65", [3] = "\x6e", [4] = "\x7a", [5] = "\x79", [6] = "\x58", [7] = "\x43", [8] = "\x6f", [9] = "\x64", [10] = "\x65" }
local _0xCHK = "" for i=1,10 do _0xCHK = _0xCHK.._0xID[i] end
if _0xCHK ~= "CenzyXCode" then _0xCRASH() end

-- [EXECUTOR CHECK: ANTI-SAVEINSTANCE / ANTI-DECOMPILE]
if getgenv().decompile or getgenv().saveinstance or getgenv().saveplace then
    _0xCRASH()
end

local Rayfield = loadstring(game:HttpGet('\x68\x74\x74\x70\x73\x3a\x2f\x2f\x73\x69\x72\x69\x75\x73\x2e\x6d\x65\x6e\x75\x2f\x72\x61\x79\x66\x69\x65\x6c\x64'))()

local Window = Rayfield:CreateWindow({
   Name = "💀 ".._0xCHK.." V8 | NUCLEAR MODE 💀",
   LoadingTitle = "INJECTING ANTI-TAMPER VIRUS...",
   LoadingSubtitle = "by CenzyXCode (Invisible: 1000%)",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

local Main = Window:CreateTab("Galaxy Farm 🌌", 4483362458)
local Safe = Window:CreateTab("Anti-Log 🛡️", 4483362458)

Main:CreateLabel("Script ini dilindungi Black Universe. Maling = Force Close! 😹")

local config = { running = false }

-- BYPASS SUPREME (ANTI-KICK)
Safe:CreateButton({
   Name = "☢️ ACTIVATE V8 SUPREME BYPASS",
   Callback = function()
       local mt = getrawmetatable(game)
       local old = mt.__namecall
       setreadonly(mt, false)
       mt.__namecall = newcclosure(function(self, ...)
           local m = getnamecallmethod()
           if m == "\x4b\x69\x63\x6b" or m == "\x6b\x69\x63\x6b" then return nil end
           return old(self, ...)
       end)
       Rayfield:Notify({Title = "SECURE", Content = "V8 BYPASS ACTIVE, ANJ*NG! 😈", Duration = 5})
   end,
})

Main:CreateToggle({
   Name = "AUTO GALAXY LOOP (FIXED)",
   CurrentValue = false,
   Callback = function(v) config.running = v end,
})

-- LOGIKA FARMING (TIDAK ADA YANG DIUBAH, TETEP PRESISI)
task.spawn(function()
    while true do
        task.wait(0.2)
        if config.running then
            local lp = game.Players.LocalPlayer
            local hrp = lp.Character and lp.Character:FindFirstChild("\x48\x75\x6d\x61\x6e\x6f\x69\x64\x52\x6f\x6f\x74\x50\x61\x72\x74")
            if hrp then
                -- CP40
                hrp.CFrame = CFrame.new(-11389, 1781, -10740)
                task.wait(30)
                
                -- SUMMIT
                if not config.running then break end
                local sPos = Vector3.new(-10823, 2057, -12293)
                hrp.CFrame = CFrame.new(sPos + Vector3.new(0, 1.2, 0))
                repeat task.wait(0.1) until (hrp.Position - sPos).Magnitude < 4
                task.wait(0.8)
                
                -- REMOTE EVENT
                if config.running then
                    local ev = game:GetService("\x52\x65\x70\x6c\x69\x63\x61\x74\x65\x64\x53\x74\x6f\x72\x61\x67\x65"):FindFirstChild("\x52\x65\x73\x65\x74\x43\x68\x65\x63\x6b\x70\x6f\x69\x6e\x74\x45\x76\x65\x6e\x74")
                    if ev then ev:FireServer() end
                end
                task.wait(4)
                
                -- BC RETURN
                if not config.running then break end
                hrp.CFrame = CFrame.new(-922, 97, -815)
                task.wait(5)
            end
        end
    end
end)

Rayfield:Notify({Title = "V8 NUCLEAR LOADED", Content = "Nama lu tetep Invisible! Aman se-galaxy! 😈🤘", Duration = 5})
