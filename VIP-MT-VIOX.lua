--==================================================
-- MT VIOX FINAL UPDATE
-- SUMMIT ONLY | EXECUTE FIX | VIP GOLD
-- Credit : Cenzyy | Discord : cenzyy
--==================================================

-- SERVICES
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer

-- CHARACTER SAFE
local function getHRP()
    local char = LP.Character or LP.CharacterAdded:Wait()
    return char:WaitForChild("HumanoidRootPart")
end

local HRP = getHRP()
LP.CharacterAdded:Connect(function()
    task.wait(0.5)
    HRP = getHRP()
end)

-- REMOTE SAFE
local CPRemote = RS:FindFirstChild("CP_ForceReset")

-- SUMMIT POSITION
local SUMMIT = Vector3.new(-3821.79, 8607.25, 473.73)

-- LOAD RAYFIELD
local Rayfield
local ok = pcall(function()
    Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)

if not ok or not Rayfield then
    warn("Rayfield gagal load")
    return
end

-- WINDOW (VIP GOLD)
local Window = Rayfield:CreateWindow({
    Name = "🟡 MT VIOX | VIP GOLD • Cenzyy",
    LoadingTitle = "🟡 MT VIOX",
    LoadingSubtitle = "VIP GOLD | Cenzyy • Discord: cenzyy",
    ConfigurationSaving = {Enabled = false}
})

local Tab = Window:CreateTab("🟡 MAIN", 4483362458)

-- CREDIT INFO
Tab:CreateParagraph({
    Title = "🟡 CREDITS",
    Content = "Script Name : MT VIOX\nCreator : Cenzyy\nDiscord : cenzyy\n\nStatus : STABLE\nVersion : FINAL"
})

-- LOGIC
local AutoTP = false
local Delay = 0.1

local function ForceReset()
    if CPRemote then
        pcall(function()
            CPRemote:FireServer()
        end)
        task.wait(1)
    end
end

-- UI
Tab:CreateSlider({
    Name = "🟡 Delay TP",
    Range = {0.05, 0.2},
    Increment = 0.01,
    CurrentValue = 0.1,
    Callback = function(v)
        Delay = v
    end
})

Tab:CreateButton({
    Name = "🟡 TP SUMMIT",
    Callback = function()
        if HRP then
            ForceReset()
            HRP.CFrame = CFrame.new(SUMMIT)
        end
    end
})

Tab:CreateToggle({
    Name = "🟡 AUTO TP SUMMIT",
    CurrentValue = false,
    Callback = function(v)
        AutoTP = v
        if v then
            task.spawn(function()
                while AutoTP do
                    if HRP then
                        ForceReset()
                        HRP.CFrame = CFrame.new(SUMMIT)
                    end
                    task.wait(Delay)
                end
            end)
        end
    end
})

Rayfield:Notify({
    Title = "🟡 MT VIOX",
    Content = "Loaded Successfully\nCenzyy • Discord: cenzyy",
    Duration = 4
})
