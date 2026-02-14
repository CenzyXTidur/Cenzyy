-- [[ CENZYXCODE: THE FINAL DEFENCE ]] --
-- SECURITY: MAX OBFUSCATION + FULL TEXT RECOVERY
-- Identity: GHOST MODE LOCKED [cite: 2026-02-13]

local _0x_MAPPING = {
    ["\80\108\97\121\101\114\115"] = game:GetService("\80\108\97\121\101\114\115"),
    ["\67\111\114\101\71\117\105"] = game:GetService("\67\111\114\101\71\117\105"),
    ["\84\119\101\101\110\83\101\114\118\105\99\101"] = game:GetService("\84\119\101\101\110\83\101\114\118\105\99\101"),
    ["\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101"] = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101")
}

-- [1] STRICT INVISIBLE IDENTITY [cite: 2026-02-13]
local function _0x_GHOST_LOCKED()
    task.spawn(function()
        while task.wait(0.5) do
            pcall(function()
                local _p = _0x_MAPPING["\80\108\97\121\101\114\115"].LocalPlayer
                if _p.Character then
                    local _h = _p.Character:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
                    if _h then 
                        _h.DisplayName = "\32" -- GHOST
                        _h.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                    end
                end
            end)
        end
    end)
end
_0x_GHOST_LOCKED()

-- [2] WATERMARK (BALIK LAGI ANJ)
local _WM = Instance.new("ScreenGui", _0x_MAPPING["\67\111\114\101\71\117\105"])
local _WMT = Instance.new("TextLabel", _WM)
_WMT.Size = UDim2.new(0, 200, 0, 30)
_WMT.Position = UDim2.new(0, 20, 0.9, 0)
_WMT.Text = "CENZYXCODE PRIVATE"
_WMT.TextColor3 = Color3.new(1, 1, 1)
_WMT.BackgroundTransparency = 1
_WMT.TextScaled = true
_WMT.Font = Enum.Font.SourceSansBold
_WMT.TextTransparency = 0.5
_WMT.ZIndex = 9999

-- [3] NUCLEAR INTRO (10 DETIK)
local function _0x_BLACK_INTRO()
    local _g = Instance.new("ScreenGui", _0x_MAPPING["\67\111\114\101\71\117\105"])
    _g.IgnoreGuiInset = true _g.DisplayOrder = 9e9
    local _f = Instance.new("Frame", _g)
    _f.Size = UDim2.new(1,0,1,0) _f.BackgroundColor3 = Color3.new(0,0,0)
    local _t = Instance.new("TextLabel", _f)
    _t.Size = UDim2.new(1,0,0.3,0) _t.Position = UDim2.new(0,0,0.35,0)
    _t.Text = "ALDY MONYET\nCENZYXCODE PRIVATE"
    _t.TextColor3 = Color3.new(1,0,0) _t.Font = Enum.Font.SourceSansBold _t.TextScaled = true _t.BackgroundTransparency = 1
    task.wait(10)
    _0x_MAPPING["\84\119\101\101\110\83\101\114\118\105\99\101"]:Create(_f, TweenInfo.new(2), {BackgroundTransparency = 1}):Play()
    _0x_MAPPING["\84\119\101\101\110\83\101\114\118\105\99\101"]:Create(_t, TweenInfo.new(1), {TextTransparency = 1}):Play()
    task.wait(2) _g:Destroy()
end
task.spawn(_0x_BLACK_INTRO)

-- [4] VIRTUALIZED RAYFIELD HUB
local _0x_R = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100"))()
local _0x_W = _0x_R:CreateWindow({Name = "🌑 CENZYXCODE VIP", LoadingTitle = "ALDI JEMBUT LOADING", ConfigurationSaving = {Enabled = false}})
local _0x_T = _0x_W:CreateTab("Main Hub")

-- SEMUA KATA-KATA MUTIARA LU (BALIK TOTAL):
_0x_T:CreateLabel("INI MT TERKONTOL MENURUT GUE YE")
_0x_T:CreateLabel("YANG REQ JUGA ANAK ANJ SI ALDI HANCUK")
_0x_T:CreateLabel("SARAN DELAY 5 ITU DH GW KASI BYPAS BIAR LU GA KE KICK SERVER")
_0x_T:CreateLabel("BYPAS ANTIKICK/BAN ITU BIAR LU GA BISA DI BAN")
_0x_T:CreateLabel("SAMA ONWERNYA/ADMIN NYE")
_0x_T:CreateLabel("INTINYA ALDI ANJ ASU JEMBUT")

local _0x_ST = {["F"] = false, ["S"] = 5, ["B"] = false}

_0x_T:CreateToggle({Name = "Bypass Anti-Kick/Ban", CurrentValue = false, Callback = function(v) _0x_ST.B = v end})
_0x_T:CreateSlider({Name = "Delay TP", Range = {1, 10}, Increment = 0.5, CurrentValue = 5, Callback = function(v) _0x_ST.S = v end})

-- [5] ENCRYPTED COORDS
local _0x_DAT = {
    {50037, 17999, 162170}, {49955, 17384, 91206}, {60447, 18184, 17786},
    {72306, 18184, 6052}, {46310, 34684, -19219}, {70385, 49984, -19454},
    {79185, 72384, -35791}, {79612, 75184, -89780}, {53892, 74884, -150211},
    {38826, 81984, -227274}, {11335, 99084, -261297}, {2410, 80084, -307691},
    {87514, 53784, -276633}, {110275, 55984, -328973}, {127623, 55984, -367588},
    {151910, 55584, -400509}, {173966, 55584, -432938}, {192499, 55584, -458836},
    {198300, 81184, -460607}, {227279, 81184, -441815}, {255614, 81184, -420883},
    {276399, 81230, -409333}, {285872, 67584, -437139}, {343528, 67384, -464747}
}
local _0x_SUM = {376259, 538384, -785849}

local function _0x_DEC(_v)
    return Vector3.new(-_v[1]/100, _v[2]/100, _v[3]/100)
end

-- [6] FARM EXECUTION
local function _0x_TELE(_pos, _isS)
    local _lp = _0x_MAPPING["\80\108\97\121\101\114\115"].LocalPlayer
    local _root = _lp.Character and _lp.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
    if _root and _0x_ST.F then
        if _0x_ST.B then _root.CFrame = CFrame.new(_pos + Vector3.new(0,-5,0)) task.wait(0.1) end
        _root.CFrame = CFrame.new(_pos + Vector3.new(0,0.5,0))
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("TouchTransmitter") and (v.Parent.Position - _pos).Magnitude < 10 then
                firetouchinterest(_root, v.Parent, 0) task.wait(0.05) firetouchinterest(_root, v.Parent, 1)
            end
        end
        task.wait(_isS and 2 or _0x_ST.S)
    end
end

_0x_T:CreateToggle({
    Name = "Execute Enigma Farm", CurrentValue = false,
    Callback = function(v)
        _0x_ST.F = v
        if v then
            task.spawn(function()
                while _0x_ST.F do
                    for _, d in ipairs(_0x_DAT) do if not _0x_ST.F then break end _0x_TELE(_0x_DEC(d), false) end
                    if _0x_ST.F then
                        _0x_TELE(_0x_DEC(_0x_SUM), true)
                        local _rem = _0x_MAPPING["\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101"]:FindFirstChild("\67\104\101\99\107\112\111\105\110\116\82\101\115\101\116", true)
                        if _rem then _rem:FireServer() end task.wait(0.5)
                    end
                end
            end)
        end
    end,
})
