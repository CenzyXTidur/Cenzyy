--[[
    👑 DEVELOPER: cenzyXcode
    🚀 VERSION: 73 (ETERNAL-LOCK & ANTI-THEFT)
    ⚠️ WARNING: AMPE DI JUAL GW VIRALIN MBUD!
    -----------------------------------------------------
    [ 100000% ANTI-THEFT SECURED SYSTEM ]
]]

local _0xV=game;local _0xS=_0xV.GetService;local _0xT=_0xS(_0xV,"TweenService");local _0xP=_0xS(_0xV,"Players");local _0xR=_0xS(_0xV,"RunService");local _0xH=_0xS(_0xV,"HttpService");local _0xL=_0xP.LocalPlayer;

-- [ CORE PROTECTOR: GHOST & INVISIBLE NAME ]
local function _0xG() _0xR.RenderStepped:Connect(function() local c=_0xL.Character;if c then _0xL.DisplayName=" " for _,v in ipairs(c:GetDescendants()) do if v:IsA("BasePart") then v.Transparency=1 v.CastShadow=false elseif v:IsA("BillboardGui") or v:IsA("TextLabel") or v:IsA("Accessory") then v:Destroy() end end end end) end

-- [ CINEMATIC INTRO 12s ]
local function _0xI() local g=Instance.new("ScreenGui",_0xL:WaitForChild("PlayerGui"))g.DisplayOrder=9e9 g.IgnoreGuiInset=true;local f=Instance.new("Frame",g)f.Size=UDim2.new(1,0,1,0)f.BackgroundColor3=Color3.fromRGB(0,0,0);local t=Instance.new("TextLabel",f)t.Size=UDim2.new(1,0,0,120)t.Position=UDim2.new(0,0,0.42,0)t.BackgroundTransparency=1;t.Text="cenzyXcode" t.TextColor3=Color3.fromRGB(255,0,127)t.TextSize=95 t.Font=Enum.Font.SpecialElite t.TextTransparency=1;_0xT:Create(t,TweenInfo.new(3),{TextTransparency=0}):Play();task.wait(6);t.Text="100000% SECURED BY CENZY" t.TextSize=35;task.wait(4);_0xT:Create(f,TweenInfo.new(2),{BackgroundTransparency=1}):Play();_0xT:Create(t,TweenInfo.new(2),{TextTransparency=1}):Play();task.wait(2);g:Destroy(); end

task.spawn(function() _0xI() _0xG()
local Ry=loadstring(_0xV:HttpGet('https://sirius.menu/rayfield'))();local W=Ry:CreateWindow({Name="cenzyXcode | V73 ETERNAL",LoadingTitle="VOID-LOCK ACTIVE",LoadingSubtitle="PRIVATE EDITION"});local S=W:CreateTab("🛡️ SECURITY",4483362458);local A=W:CreateTab("⚡ AUTOMATION",4483362458);

-- PERINGATAN KERAS DI GUI PALING ATAS
S:CreateSection("⚠️ PERINGATAN KERAS!")
S:CreateLabel("AMPE DI JUAL GW VIRALIN MBUD!")
S:CreateLabel("Script Free Rasa VIP! Developer: cenzyXcode")
S:CreateSection("👑 MASTER BYPASS")

S:CreateToggle({Name="ACTIVATE OMNI-BYPASS",CurrentValue=false,Callback=function(v) if v then for _,r in pairs(_0xV:GetDescendants()) do if r:IsA("RemoteEvent") and (r.Name:lower():find("ban") or r.Name:lower():find("kick")) then r.Name="SECURE" end end Ry:Notify({Title="BYPASS ON",Content="Anti-Kick Aktif!",Duration=3}) end end})

S:CreateToggle({Name="AUTO SERVER-HOP (ANTI ADMIN)",CurrentValue=false,Callback=function(v) _G.HA=v if v then Ry:Notify({Title="HOP ACTIVE",Content="Monitoring Admin...",Duration=3}) task.spawn(function() while _G.HA do for _,p in pairs(_0xP:GetPlayers()) do if p:GetRankInGroup(0)>10 or p.UserId==_0xV.CreatorId then local s=_0xH:JSONDecode(_0xV:HttpGet("https://games.roblox.com/v1/games/".._0xV.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")) for _,sv in pairs(s.data) do if sv.playing<sv.maxPlayers and sv.id~=_0xV.JobId then _0xS(_0xV,"TeleportService"):TeleportToPlaceInstance(_0xV.PlaceId,sv.id) break end end end end task.wait(1) end end) end end})

A:CreateToggle({Name="START PUSH (FIXED INJECT)",CurrentValue=false,Callback=function(v) _G.LP=v task.spawn(function() while _G.LP do local CP={Vector3.new(-458,254,754),Vector3.new(-337,390,537),Vector3.new(287,435,498),Vector3.new(331,492,343),Vector3.new(218,316,-148),Vector3.new(-616,908,-551),Vector3.new(-947,172,861)} for i,p in ipairs(CP) do if not _G.LP then break end local h=_0xL.Character:FindFirstChild("HumanoidRootPart") if h then h.CFrame=CFrame.new(p+Vector3.new(0,-4.5,0)) h.Anchored=true task.wait(i==7 and 1.8 or 0.8) h.Anchored=false end task.wait(0.5) end end end) end})
end)

_0xL.Idled:Connect(function() _0xS(_0xV,"VirtualUser"):CaptureController() _0xS(_0xV,"VirtualUser"):ClickButton2(Vector2.new()) end)
