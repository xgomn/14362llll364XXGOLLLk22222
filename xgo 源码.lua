if not game:IsLoaded() then
    game.Loaded:Wait()
end

if _G.AutoExecuter == true then
local ScriptSpawnSlap = queueonteleport or queue_on_teleport
if ScriptSpawnSlap then
    ScriptSpawnSlap([[
if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat wait() until game.Players.LocalPlayer
wait(0.25)
_G.AutoExecuter = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
    ]])
else
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You cannot auto execute",Icon = "rbxassetid://7733658504",Duration = 5})
end
end

game:GetService("GuiService"):ClearError()

--XGO 超级无敌源码
local resume = coroutine.resume           local create = coroutine.create
getgenv().autoCollectEnabled = true
getgenv().autoSellEnabled = true
getgenv().autoBuyEnabled = true
getgenv().infiniteJumpEnabled = true
getgenv().clickTpEnabled = true
getgenv().autoObbyEnabled = true
local function destroyIfExists(obj)    if obj then        obj:Destroy()    end    end
function teleportLocalPlayer(input)    local Player = game.Players.LocalPlayer    local Mouse = Player:GetMouse()    local UIS = game:GetService("UserInputService")    if clickTpEnabled and input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then       local Char = Player.Character       if Char then          Char:MoveTo(Mouse.Hit.p)       end    end end
function walkSpeed(speed)    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed      end
function teleportTo(player)        local localPlayer = game.Players.LocalPlayer    localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame      wait()        end
function infiniteJump()    task.spawn(function()        local character = game.Players.LocalPlayer.Character        local humanoid = character:FindFirstChild("Humanoid")        while true do            if not infiniteJumpEnabled then break end            if humanoid.Jump and humanoid.FloorMaterial == Enum.Material.Air then                humanoid.JumpPower = 50                humanoid:ChangeState("Jumping")            end            wait()        end    end)end
function getTycoonIndex()    for tycoonIndex = 1, 8 do        if tostring(game:GetService("Workspace").Tycoons[tycoonIndex].TycoonInfo.Owner.Value) == game.Players.LocalPlayer.Name then            return tycoonIndex        end    end    end
function autoCollect()    spawn(function()         local tycoonIndex = getTycoonIndex()        if not tycoonIndex then return end        while wait() do           if not autoCollectEnabled then break end            for i, item in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].ItemDebris:GetChildren()) do                local args = {[1] = item}                game:GetService("ReplicatedStorage").RF.CollectItem:InvokeServer(unpack(args))            end        end    end)end
function autoBuy()    spawn(function()        while wait(0.5) do            if not autoBuyEnabled then break end            local tycoonIndex = getTycoonIndex()            if not tycoonIndex then return end            local character = game.Players.LocalPlayer.Character            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")            local dropperButtons = game:GetService("Workspace").Tycoons[tycoonIndex].DropperButtons            local children = dropperButtons:GetChildren()            for i = #children, 1, -1 do                local dropperButton = children[i]                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)            end            local speedUpgrades = game:GetService("Workspace").Tycoons[tycoonIndex].SpeedUpgrades            local children = speedUpgrades:GetChildren()            for i = #children, 1, -1 do                local dropperButton = children[i]                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)           end        end    end)end
function autoSell()    spawn(function()        game:GetService("ReplicatedStorage").RF.EssentialFunction:InvokeServer("SettingsChange", {"Sound Effects"})        local character = game.Players.LocalPlayer.Character       local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")        while wait(0.5) do           if not autoSellEnabled then break end            local tycoonIndex = getTycoonIndex()            for i,v in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].SellPad:GetChildren()) do                firetouchinterest(humanoidRootPart,  v, 0)                firetouchinterest(humanoidRootPart,  v, 1)            end        end    end)end
function autoObby()    spawn(function()       while wait(0.5) do            if not autoObbyEnabled then break end            local character = game.Players.LocalPlayer.Character            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")            local obbyRewardButtons = game:GetService("Workspace").ObbyRewardButtons            for i, rewardButton in pairs(obbyRewardButtons:GetChildren()) do                firetouchinterest(humanoidRootPart, rewardButton, 0)                firetouchinterest(humanoidRootPart, rewardButton, 1)            end        end    end)end
--如果你看到了xgo的源码....嗯，你看到了我也没办法꒰ঌ ✝︎ ໒꒱ྀིˎˊ˗ 
--祝你有个美好的一天     ꒰ঌᐢ.ˬ.ᐢ໒꒱˚
--    ✞♡✞♡✞♡✞♡✞         𝗛𝗮𝗽𝗽𝘆 𝗗𝗮𝘆𝘀 • 更新💡 ​​​          xgo的留言❤️🇨🇳
local CoreGui = game:GetService("StarterGui")    --哈哈 xgo超无敌
--xgo--xgo--xgo--xgo--xgo--xgo--xgo--
CoreGui:SetCore("SendNotification", {    Title = "goto_O",    Text = "小go努力加载中..（启动反挂机系统）",    Duration = 6, })
-- ᘏ ⑅ ᘏ
--꒰ ⸝⸝ᴗ̤ ̫ ɞ̴̶̷⸝⸝꒱
--꒰ つ (i love x ) ഒ （xgo超可爱）
--　　∪ ∪ ♡̩͙
--
CoreGui:SetCore("SendNotification", {    Title = "goto脚本",    Text = "自动重进服务器系统已启动",    Duration = 7, })
--♡.꒰⑅:Why?xgo如此可愛らしい…   ✞🤍 ₓ 夢の終わり🤍‧₊˚。
CoreGui:SetCore("SendNotification", {    Title = "<(￣3￣)>哼！=☞盘他",    Text = "加载成功⸝ヽ(๏~๏)ﾉ",    Duration = 8, })
--𝑅𝑎𝑖𝑛 ☂︎ ⸝⸝⸝ 下雨天捕捉浪漫🌧不管阴天雨天🍥，🥂有好心情就是晴天🍹
print("xgo goto_O")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local vu = game:GetService("VirtualUser")
game:service"NetworkClient".ChildRemoved:Connect(function()
game:service"TeleportService":TeleportToPlaceInstance(game.PlaceId, game.JobId, game:service"Players".LocalPlayer);
end)
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer
LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}
local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
	FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
end     FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end     Start = tick()  Heartbeat:Connect(HeartbeatUpdate)
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua"))()
local Window = OrionLib:MakeWindow({Name = "goto_Oฅ●ω●ฅ🥂", HidePremium = false, SaveConfig = true,IntroText = "goto_O会一直更新", ConfigFolder = "xgo"})
local Tab = Window:MakeTab({    Name = "用户",    Icon = "rbxassetid://7734068321",    PremiumOnly = false})
CoreGui:SetCore("SendNotification", {    Title = "goto_O",    Text = "小go欢迎各位",    Duration = 10, })
OrionLib:MakeNotification({	Name = "goto_O",	Content = "欢迎使用goto脚本",	Image = "rbxassetid://18923878915",	Time = 2})
OrionLib:MakeNotification({	Name = "稀🍚你 ",	Content = "持续更新",	Image = "rbxassetid://18923878915",	Time = 2})
Tab:AddParagraph("小go为你查看账户年龄:"..player.AccountAge.."天")
Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("注入器查看:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID:"," "..game.GameId.."")
Tab:AddParagraph("人物血量:"," "..game.Players.LocalPlayer.Character.Humanoid.Health.."")
Tab:AddParagraph("人物跳跃:"," "..game.Players.LocalPlayer.Character.Humanoid.JumpPower.."")
Tab:AddParagraph("人物速度:"," "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."")
Tab:AddParagraph("人物重力:"," "..game.Workspace.Gravity.."")
Tab:AddParagraph("人物高度:"," "..game.Players.LocalPlayer.Character.Humanoid.HipHeight.."")
Tab:AddParagraph("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
Tab:AddParagraph("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
local Tab =Window:MakeTab({	Name = "关于作者",	Icon = "rbxassetid://7734053495",	PremiumOnly = false})
Tab:AddButton({	Name = "复制作者QQ",	Callback = function()     setclipboard("3795512080")  	end})
Tab:AddButton({	Name = "复制QQ群",	Callback = function()    setclipboard("259461151") 	end})
local Section = Tab:AddParagraph("安全三大王", "如果要测试脚本，请开启一下三下避免直接被封禁（主要是由某人制作恶意封禁脚本）建议全开💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗.")
Tab:AddButton({	Name = "（生产）分支，禁止从其他脚本的更改值。 应该用于保护",	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()  	end})
local Section = Tab:AddParagraph("XGO", "仅适用于Codex用户!由于其发行与空闲连接（Codex）分支具有兼容性更新这相当于生产分支 但没有基于连接的所有连接.")
Tab:AddButton({	Name = "并且只能由Codex用户使用，直到他们的问题得到解决",	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()  	end})
Tab:AddButton({	Name = "（开发）分支，允许更改其他潜在恶意脚本的值 主要用于调试和测试",	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()  	end}) 
local Tab = Window:MakeTab({    Name = "小go音乐区",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({Name ="停止播放音乐（所有皆为xgo 一人收集）",    Callback = function()      for i,v in pairs(workspace:GetDescendants())    do			if v:IsA("Sound") then				v:Destroy()			end		end   end})
Tab:AddButton({    Name="音乐播放器  xgo版本",   Callback=function()     -- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local BetaText = Instance.new("TextLabel")
local UICornerForClose = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local PlayButton = Instance.new("TextButton")
local Sound = Instance.new("Sound")
-- 将GUI到玩家的屏幕
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
-- 帧属性（主GUI窗口）
Frame.Size = UDim2.new(0, 300, 0, 100)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true  -- 使它拖累
-- UI角用于框架上的光滑边缘
UICorner.CornerRadius = UDim.new(0.1, 0)  -- 光滑的边缘
UICorner.Parent = Frame
-- Close Button (a circle with 'X' in it)
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -45, 0, 5)  -- 位于右上角的位置
CloseButton.BackgroundColor3 = Color3.fromRGB(1, 0.5, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Frame
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 24
-- ui角用于关闭按钮上的光滑边缘
UICornerForClose.CornerRadius = UDim.new(1, 0)  -- 完整的循环
UICornerForClose.Parent = CloseButton
-- Beta通知的弹出文本标签
BetaText.Size = UDim2.new(0, 250, 0, 50)
BetaText.Position = UDim2.new(0.5, -125, 0.5, -25)
BetaText.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BetaText.Text = "欢迎使用xgo;Q群 259461151 "
BetaText.TextColor3 = Color3.fromRGB(255, 255, 255)
BetaText.Font = Enum.Font.SourceSansBold
BetaText.TextSize = 18
BetaText.Parent = ScreenGui
BetaText.Visible = true
-- ui角落在beta文本上的光滑边缘
local BetaTextCorner = Instance.new("UICorner")
BetaTextCorner.CornerRadius = UDim.new(0.1, 0)
BetaTextCorner.Parent = BetaText
-- 在几秒钟后使beta文本消失
wait(3)
for i = 1, 50 do
    BetaText.TextTransparency = i / 50
    BetaText.BackgroundTransparency = i / 50
    wait(0.05)
end
BetaText:Destroy()
-- 关闭按钮功能
CloseButton.MouseButton1Click:Connect(function()
    Sound:Stop()  -- Stop the music when the GUI is closed
    ScreenGui:Destroy()
end)
-- 用于输入音乐ID的TextBox
TextBox.Size = UDim2.new(0, 200, 0, 40)
TextBox.Position = UDim2.new(0.5, -100, 0.3, -20)
TextBox.PlaceholderText = "输入歌曲ID"
TextBox.Text = ""
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18
-- 播放按钮
PlayButton.Size = UDim2.new(0, 100, 0, 40)
PlayButton.Position = UDim2.new(0.5, -50, 0.5, 20)
PlayButton.Text = "播放 xgo"
PlayButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
PlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.Parent = Frame
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.TextSize = 18
-- 创建声音对象
Sound.Parent = game.Workspace
-- 播放按钮功能
PlayButton.MouseButton1Click:Connect(function()
    local musicId = tonumber(TextBox.Text)
    if musicId then
        Sound.SoundId = "rbxassetid://" .. musicId
        Sound:Play()
else    warn("xgo准备好音乐id，然后输入进去即可")
end      end)   end})
Tab:AddButton({    Name="音乐播放器    如果有好听的可以投稿",   Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()   end})
local Section = Tab:AddSection({        Name = "小go提示: 嗯，这次更新后面会加上音乐id 前边的话我就不加了，太麻烦了 "})
Tab:AddButton({    Name ="Direct & Park Avenue - I'll Go 挺好听的",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410081298"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Rogue - Motion",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028557220"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Rome in Silver & Beach Season - Skin 和上一首一样，都挺好听的",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028570258"   sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻微吧（节奏）   男版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023690024"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837871067"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松2",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837849285"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松3 ",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836842889"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Pixel Terror & Aviella - Enigma  女版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410084645"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Grant - Color  女版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023828725"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Til the Morning (a)女版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1840041842"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松7   女版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847606454"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="嗯，挺好听的，不知道叫啥   女版",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023741506"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="住宅区(1845554017)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845554017"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松8",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839721437"    sound.Parent = game.Workspace    sound:Play()    end})
local Section = Tab:AddSection({        Name = " Dj🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️要音乐id，可以联系我🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️"})
Tab:AddButton({    Name ="Play Theme 节奏（1847661821）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847661821"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="jumpstyle 节奏感很强（1839246711）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246711"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Autotuned Dancing Roach  不知道怎么形容这电音",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://4050095124"    sound.Parent = game.Workspace   sound:Play()    end})
Tab:AddButton({    Name ="Dj",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843497734"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Dj2",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028977687 "    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Dj3",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836594449"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Dj4 ",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="机器人舞蹈C   (1847853099)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847853099"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Dj5",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940193"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Robotic Dance A",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837853076"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Parry Gripp - Pancake Robot",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245558138"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj8",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837434037"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj9",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839037193"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj10",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837560230"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj11",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842908121"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj12",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042493127"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj13",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246774"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj14",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940253"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj15",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041933055"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj16",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410086218"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj17",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839703786"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj18",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838627720"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj19",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410085763"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj20",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839898469"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj21",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848213471"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj22",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080771"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj23",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837843720"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj24",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802012"    sound.Parent = game.Workspace    sound:Play()   end})
Tab:AddButton({    Name ="dj25",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846863084"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj26",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802498"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj27",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075732"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj28",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410083226"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj29",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj30",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028913008"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj31",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042616023"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj32",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847799916"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Rip the Guts Out",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837814958"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Pixel Terror - Machina",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080475"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="We Go Hard",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940420"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Fight Or Flight",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940300"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Alarm",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845080313"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Parry Gripp - Last Train to Awesome Town",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245554658"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Uproar",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842934837"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="The Will To Fight A",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845793864"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Mindwinder (a)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075377"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="dj42",     Callback =function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="FWLR - Hot",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082534"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Noisestorm - Escape",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082879"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Skull Crusher",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842558494"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="45",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041932892"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Heist",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836782065"    sound.Parent = game.Workspace    sound:Play()    end})
local Section = Tab:AddSection({        Name = "休闲安逸🕊️🕊️🕊️🕊️嗯，更新这个音乐系统的话，我也不知道具体什么时间🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️"})
Tab:AddButton({    Name ="城镇谈话(1845756489)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845756489"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="快乐的歌(1843404009)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843404009"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="一起战斗吗(1843324336)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843324336"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="高保真冷柜A(9043887091)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9043887091"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="轻松的场景(经典1848354536)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848354536"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="在监狱里生活(1841647093)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="不再(1846458016)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846458016"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Cute Story",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839755231"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="快乐一点的",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9039445224"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Swing it",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843313385"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Police 打鼓伴奏",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842981634"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="睡眠歌曲 Baby Song",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838998127"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="义勇军进行曲",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845918434"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="彩虹瀑布",    Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837879082"    sound.Parent = game.Workspace    sound:Play()    end})
local Section = Tab:AddSection({        Name = "整蛊语音🕊️还有一些梗🕊️🕊️🕊️xgo找这些好辛苦的🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️"})
Tab:AddButton({    Name ="第1次听吓我一跳（7795812961）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7795812961"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="我跌倒了,爬不起来（130768088）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130768088"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="胜利的声音(12222253)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222253"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="死亡的声音(12222242)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222242"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="当你在minecraft中死去(2607544190)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://2607544190"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="悲伤的小提琴(135308045)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://135308045"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="喂我!(130766856)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130766856"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="Minions - Bee Doo Bee Doo Bee Doo（130844390）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130844390"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="你在我的沼泽做什么!(130767645)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130767645"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="你是斯巴达（130781067）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130781067"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="那是我的钱包((130760834))",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130760834"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="孩子说哎哟哇(12222058)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222058"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name =" Oh my god(1841647093)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="我是蝙蝠侠(130769318)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130769318"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="约翰的笑声(130759239)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130759239"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="他是免费的(130771265)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130771265"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="李·罗伊·詹金斯(130758889)",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130758889"    sound.Parent = game.Workspace    sound:Play()    end})
Tab:AddButton({    Name ="防空警报（792323017）",     Callback =function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end}) 
local Tab = Window:MakeTab({    Name = "其他注入器",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({    Name ="阿尔宙斯",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()    end})
Tab:AddButton({    Name ="SOROLAZ BETTER SORALA注入器",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()    end})
Tab:AddButton({    Name ="管理员注入 暂时无法使用，可能会被踢出去",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()    end})
Tab:AddButton({    Name ="xgo 普通执行",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()    end})
Tab:AddButton({    Name = "管理员权限 可获得游戏内的通行证",	Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()   end})
Tab:AddButton({    Name = "资源管理器",	Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()   end})
Tab:AddButton({    Name = "远程监控",	Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()  end})
local Tab = Window:MakeTab({    Name = "图像画质",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({  Name = "美丽天空",  Callback = function()     local light = game.Lighting
for i, v in pairs(light:GetChildren()) do      v:Destroy()    end
local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Inst  end})
Tab:AddButton({    Name = "光影（浅）",	Callback = function()      	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()  	end})
Tab:AddButton({    Name ="光影菜单  小go推荐",    Callback = function()    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Shader-RTX-New-12425"))()    end})
Tab:AddButton({    Name ="光影v2",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()    end})
Tab:AddButton({    Name ="光影v4",    Callback = function()    loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()   end})
Tab:AddButton({    Name ="RTX  图形画质",    Callback = function()     local light = game.Lighting
        for i, v in pairs(light:GetChildren()) do
         v:Destroy()
          end
           local ter = workspace.Terrain
            local color = Instance.new("ColorCorrectionEffect")
             local bloom = Instance.new("BloomEffect")
              local sun = Instance.new("SunRaysEffect")
               local blur = Instance.new("BlurEffect")
              color.Parent = light
             bloom.Parent = light
            sun.Parent = light
           blur.Parent = light
          --enable or disable shit
            local config = {
             Terrain = true,
              ColorCorrection = true,
               Sun = true,
                Lighting = true,
                BloomEffect = true
                }
               --settings {
               color.Enabled = false
              color.Contrast = 0.15
             color.Brightness = 0.1
            color.Saturation = 0.25
           color.TintColor = Color3.fromRGB(255, 222, 211)
          bloom.Enabled = false
         bloom.Intensity = 0.1
        sun.Enabled = false
         sun.Intensity = 0.2
          sun.Spread = 1
           bloom.Enabled = false
            bloom.Intensity = 0.05
             bloom.Size = 32
              bloom.Threshold = 1
               blur.Enabled = false
                blur.Size = 6
             --settings }
             if config.ColorCorrection then
            color.Enabled = true
           end
          if config.Sun then
        sun.Enabled = true
       end
        if config.Terrain then
       --settings {
          ter.WaterWaveSize = 0.1
           ter.WaterWaveSpeed = 22
            ter.WaterTransparency = 0.9
             ter.WaterReflectance = 0.05
        --settings }
        end
       if config.Lighting then
     -- settings {
         light.Ambient = Color3.fromRGB(0, 0, 0)
           light.Brightness = 4
            light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
             light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
              light.ExposureCompensation = 0
               light.FogColor = Color3.fromRGB(132, 132, 132)
                light.GlobalShadows = true
                 light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                light.Outlines = false
             --settings }
              end
             local a = game.Lighting
            a.Ambient = Color3.fromRGB(33, 33, 33)
           a.Brightness = 5.69
          a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
         a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        a.EnvironmentDiffuseScale = 0.105
         a.EnvironmentSpecularScale = 0.522
          a.GlobalShadows = true
           a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
            a.ShadowSoftness = 0.18
             a.GeographicLatitude = -15.525
              a.ExposureCompensation = 0.75
             b.Enabled = true
            b.Intensity = 0.99
           b.Size = 9999
          b.Threshold = 0
         local c = Instance.new("ColorCorrectionEffect", a)
        c.Brightness = 0.015
         c.Contrast = 0.25
          c.Enabled = true
           c.Saturation = 0.2
            c.TintColor = Color3.fromRGB(217, 145, 57)
             if getgenv().mode == "Summer" then
            c.TintColor = Color3.fromRGB(255, 220, 148)
           elseif getgenv().mode == "Autumn" then
          c.TintColor = Color3.fromRGB(217, 145, 57)
           else
             warn("没选择模式！  xgo")
               print("请选择一种模式")
                b:Destroy()
                 c:Destroy()
                end
               local d = Instance.new("DepthOfFieldEffect", a)
              d.Enabled = true
             d.FarIntensity = 0.077
            d.FocusDistance = 21.54
           d.InFocusRadius = 20.77
          d.NearIntensity = 0.277
         local e = Instance.new("ColorCorrectionEffect", a)
          e.Brightness = 0
           e.Contrast = -0.07
            e.Saturation = 0
             e.Enabled = true
              e.TintColor = Color3.fromRGB(255, 247, 239)
              local e2 = Instance.new("ColorCorrectionEffect", a)
               e2.Brightness = 0.2
              e2.Contrast = 0.45
             e2.Saturation = -0.1
            e2.Enabled = true
           e2.TintColor = Color3.fromRGB(255, 255, 255)
           local s = Instance.new("SunRaysEffect", a)
            s.Enabled = true
             s.Intensity = 0.01
              s.Spread = 0.146
                print("小go  RTX图形加载完毕!")    end})
local Tab = Window:MakeTab({    Name = "通用",   Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({    Name ="对玩家进行观战",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/%E8%A7%82%E6%88%98%E7%8E%A9%E5%AE%B6"))()    end})
Tab:AddButton({    Name ="玩家进入通知",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()    end})
Tab:AddButton({    Name ="小goFe合集",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/Fe"))()    end})
Tab:AddButton({	   Name = "无限跳",    Default = false,	Callback = function(Value)      loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/lllllllllllllllll114514xxxxg/refs/heads/main/%E6%97%A0%E9%99%90%E8%B7%B3", true))()	end})
Tab:AddButton({    Name = "踏空行走",	Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()	end})
Tab:AddButton({    Name ="小go 全图传送 地图点到哪传送哪",    Callback = function()    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小go全图内任意传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack    end})
Tab:AddButton({    Name ="铁拳（能打飞人）",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()    end})
Tab:AddButton({    Name ="iw指令",    Callback =function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()    end})
Tab:AddButton({    Name ="动作🎊",    Callback = function()    loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))()    end})
Tab:AddButton({    Name ="动作 R6",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Animations-obfus/refs/heads/main/obfus"))()    end})
Tab:AddButton({    Name ="goto飞车",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A3%9E%E8%BD%A6"))()    end})
Tab:AddButton({    Name ="goto制作小宇飞",    Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E4%B9%8B%E5%89%8D%E7%9A%84%E9%A3%9E%E8%A1%8C"))()    end})
Tab:AddButton({    Name ="goto制作小宇飞1.5百倍飞行",    Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8F%E5%AE%87%E9%A3%9E"))()    end})
Tab:AddButton({    Name ="黑洞小go汉化",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E2"))()    end})
Tab:AddButton({    Name ="黑洞 汉化",    Callback = function()     loadstring(game:HttpGet("https://pastebin.com/raw/jQd1HedN"))()    end})
Tab:AddButton({    Name ="黑洞 0.4",    Callback = function()      loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()    end})
Tab:AddButton({    Name ="黑洞 1.5",    Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E9%BB%91%E6%B4%9E'))()    end})
Tab:AddButton({    Name ="黑洞脚本按E",   Callback = function()             local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local NetworkAccess =
coroutine.create(
        function()
        settings().Physics.AllowSleep = false
        while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
        if Players ~= game:GetService("Players").LocalPlayer then
        Players.MaximumSimulationRadius = 0
        sethiddenproperty(Players, "SimulationRadius", 0)
        end
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
        setsimulationradius(math.huge)
        end            end)
coroutine.resume(NetworkAccess)
        local function EnhanceAndInvinciblePart(part)
         if
        part:IsA("Part") and part.Anchored == false and part.Parent:FindFirstChild("Humanoid") == nil and
        part.Parent:FindFirstChild("Head") == nil and
        part.Name ~= "Handle"
        then
        Mouse.TargetFilter = part
        for _, x in next, part:GetChildren() do
        if
        x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or
        x:IsA("BodyThrust") or
        x:IsA("BodyVelocity") or
        x:IsA("RocketPropulsion")
        then
        x:Destroy()
        end
        end
        if part:FindFirstChild("Attachment") then
        part:FindFirstChild("Attachment"):Destroy()
                end
                if part:FindFirstChild("AlignPosition") then
                    part:FindFirstChild("AlignPosition"):Destroy()
                end
                if part:FindFirstChild("Torque") then
                    part:FindFirstChild("Torque"):Destroy()
                end
                part.CanCollide = false
                local Torque = Instance.new("Torque", part)
                Torque.Torque = Vector3.new(100000, 100000, 100000)
                local AlignPosition = Instance.new("AlignPosition", part)
                local Attachment2 = Instance.new("Attachment", part)
                Torque.Attachment0 = Attachment2
                AlignPosition.MaxForce = 9999999999999999
                AlignPosition.MaxVelocity = math.huge
                AlignPosition.Responsiveness = 200
                AlignPosition.Attachment0 = Attachment2
                AlignPosition.Attachment1 = Attachment1
            end     end
        for _, part in next, game:GetService("Workspace"):GetDescendants() do
            EnhanceAndInvinciblePart(part)
        end
        game:GetService("Workspace").DescendantAdded:Connect(
            function(part)
                EnhanceAndInvinciblePart(part)          end)
        -- 监听按键事件
        UserInputService.InputBegan:Connect(
            function(input, isProcessed)
                if input.KeyCode == Enum.KeyCode.E and not isProcessed then
                    Updated = Mouse.Hit + Vector3.new(0, 5, 0)                end            end)
        -- 使用物理引擎移动所有物体
        spawn(
            function()
                while game:GetService("RunService").RenderStepped:Wait() do
                    Attachment1.WorldCFrame = Updated                end           end)    end})
Tab:AddButton({    Name ="黑洞v3",    Callback = function()    loadstring(game:HttpGet("https://pastefy.app/vaXK1Kgy/raw"))()    end})
Tab:AddButton({    Name ="卡哇伊黑洞（可以锁人的哦）",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E",true))()    end})
Tab:AddButton({    Name ="甩人通用",   Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%94%A9%E4%BA%BA%E9%80%9A%E7%94%A8"))()    end})
Tab:AddButton({    Name ="锁定甩飞，不过你也会死",   Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-FREAKY-FLING/main/kawaii_freaky_fling.lua"))()    end})
Tab:AddButton({    Name ="xgo 锁定甩飞",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E9%94%81%E5%AE%9A%E7%94%A9%E9%A3%9E.lua"))()    end})
Tab:AddButton({    Name ="反挂机",    Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()    end})
Tab:AddButton({    Name ="F3X",    Callback = function()     loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()    end})
Tab:AddButton({    Name ="工具包（三个经典工具）",    Callback = function()    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	    end})
Tab:AddButton({    Name ="工具挂",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()    end})
Tab:AddButton({	   Name = "建筑工具",	Callback = function()		Hammer = Instance.new("HopperBin")		Hammer.Name = "锤子"		Hammer.BinType = 4		Hammer.Parent = game.Players.LocalPlayer.Backpack		Clone = Instance.new("HopperBin")		Clone.Name = "克隆"		Clone.BinType = 3		Clone.Parent = game.Players.LocalPlayer.Backpack		Grab = Instance.new("HopperBin")		Grab.Name = "抓取"		Grab.BinType = 2	end})
Tab:AddButton({    Name ="xgo键盘",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E5%BB%BA%E7%9B%98.lua", true))()    end})
Tab:AddButton({    Name ="键盘可单独按键",    Callback = function()    loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()    end}) 
Tab:AddButton({    Name ="键盘",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()    end})
Tab:AddButton({	   Name = "替身",	Callback = function()      loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()    end})
Tab:AddButton({	   Name = "爬墙",	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/refs/heads/main/FE%20Walk%20On%20Walls%20Script%20(R6%2615).txt"))()    end}) 
local Tab = Window:MakeTab({    Name = "通用2",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({	   Name = "xgo制作幽灵状态 可能会掉血",	Callback = function()     local offset = 1100 
local LocalPlayer = game.Players.LocalPlayer
local Backpack = LocalPlayer.Backpack
local Character = LocalPlayer.Character
local invisible = false
local grips = {}
local heldTool
local gripChanged
local handle
local weld
function setDisplayDistance(distance)
   for _,player in pairs(game.Players:GetPlayers()) do if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance end end
end
local tool = Instance.new("Tool", Backpack)
tool.Name = "xgo 幽灵状态可能会掉血"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Equipped:Connect(function() wait()
   if not invisible then
       invisible = true
       tool.Name = "xgo 幽灵状态可能会掉血"
       if handle then handle:Destroy() end if weld then weld:Destroy() end
       handle = Instance.new("Part", workspace) handle.Name = "Handle" handle.Transparency = 1 handle.CanCollide = false handle.Size = Vector3.new(2, 1, 1)
       weld = Instance.new("Weld", handle) weld.Part0 = handle weld.Part1 = Character.HumanoidRootPart weld.C0 = CFrame.new(0, offset-1.5, 0)
       setDisplayDistance(offset+100)
       workspace.CurrentCamera.CameraSubject = handle
       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
       Character.Humanoid.HipHeight = offset
       Character.Humanoid:ChangeState(11)
       for _,child in pairs(Backpack:GetChildren()) do if child:IsA("Tool") and child ~= tool then grips[child] = child.Grip end end
   elseif invisible then
       invisible = false
       tool.Name = "xgo 幽灵状态可能会掉血"
       if handle then handle:Destroy() end if weld then weld:Destroy() end
       for _,child in pairs(Character:GetChildren()) do if child:IsA("Tool") then child.Parent = Backpack end end
       for tool,grip in pairs(grips) do if tool then tool.Grip = grip end end
       heldTool = nil
       setDisplayDistance(100)
       workspace.CurrentCamera.CameraSubject = Character.Humanoid
       Character.Animate.Disabled = false
       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
       Character.Humanoid.HipHeight = 0
       Character.Humanoid:ChangeState(11)
   end
   tool.Parent = Backpack
end)
Character.ChildAdded:Connect(function(child) wait()
   if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
       heldTool = child
       local lastGrip = heldTool.Grip
       if not grips[heldTool] then grips[heldTool] = lastGrip end
       for _,track in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do track:Stop() end
       Character.Animate.Disabled = true
       heldTool.Grip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
       heldTool.Parent = Backpack
       heldTool.Parent = Character
       if gripChanged then gripChanged:Disconnect() end
       gripChanged = heldTool:GetPropertyChangedSignal("Grip"):Connect(function() wait()
           if not invisible then gripChanged:Disconnect() end
           if heldTool.Grip ~= lastGrip then
               lastGrip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
               heldTool.Grip = lastGrip
               heldTool.Parent = Backpack
               heldTool.Parent = Character
           end
       end)
   end
end)  end})
Tab:AddButton({	   Name = "小go制作玩家控制喜欢俄亥俄的，可以搭配起来超级好用",	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6"))()    end})
Tab:AddButton({    Name = "小go超级无敌旋转",	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%88%9D%E4%BB%A3%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()      end})
Tab:AddButton({    Name = "小go超级无敌旋转2.0",	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()    end})
Tab:AddButton({	   Name = "一键脱衣（衬衫之类）",	Callback = function()        local player = game.Players.LocalPlayer           local character = player.Character or player.CharacterAdded:Wait()       local function removeClothes()    for _, item in pairs(character:GetChildren()) do        if item:IsA("Shirt") or item:IsA("Pants") then          item:Destroy()        end    end    end     removeClothes()	end})
Tab:AddButton({	   Name = "xgo一键脱衣2.0",	Callback = function()   local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};

--[[Network]]
coroutine.resume(coroutine.create(function()
	settings().Physics.AllowSleep = false;
	game.RunService.RenderStepped:Connect(function()
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				v.MaximumSimulationRadius = 0.1;
				v.SimulationRadius = 0;
			else
				v.MaximumSimulationRadius = math.pow(math.huge, math.huge);
				v.SimulationRadius = math.pow(math.huge, 2);
			end
		end
	end)
end))

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

for _, v in pairs(hum:GetAccessories()) do
	local b = v.Handle;
	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
	b.CanCollide = false;
	b:BreakJoints();
	for _, k in pairs(v:GetChildren()) do
		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
			k:Destroy();
		end
	end
	local still = Instance.new('BodyAngularVelocity', b);
	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	still.AngularVelocity = Vector3.new(0, 0, 0);
	local align = Instance.new('AlignPosition', b);
	align.MaxForce = 1000000;
	align.MaxVelocity = math.huge;
	align.RigidityEnabled = false;
	align.ApplyAtCenterOfMass = true;
	align.Responsiveness = 200;
	local a0 = Instance.new('Attachment', b);
	local a1 = Instance.new('Attachment', chr.Head);
	align.Attachment0 = a0;
	align.Attachment1 = a1;
	table.insert(mov, a1);
	table.insert(mov2, still);
end

local par = {};
for _, v in pairs(mov) do
	local parr = Instance.new('Part', workspace);
	parr.Anchored = true;
	parr.Size = Vector3.new(1, 1, 1);
	parr.Transparency = 1;
	parr.CanCollide = false;
	table.insert(par, parr);
end

local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 0.5;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;
game['Run Service'].RenderStepped:Connect(function()
	rotx = rotx + speed / 100;
	rotz = rotz + speed / 100;
	l = (l >= 360 and 1 or l + speed);
	
	for i, v in pairs(par) do
		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
	end
	
	if heighti == 1 then
		height = height + speed / 100;
	elseif heighti == 2 then
		height = height - speed / 100;
	end
	if height > 2 then
		heighti = 2;
	end
	if height < -1 then
		heighti = 1;
	end
	
	if mode == 1 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
		end
	elseif mode == 2 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(offset, height, offset);
		end
	elseif mode == 3 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
		end
	elseif mode == 4 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 5 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
		end
	elseif mode == 6 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
		end
	elseif mode == 7 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
		end
	elseif mode == 8 then
	    for i, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
		end
	elseif mode == 9 then
		pcall(function()
			local so = nil;
			for k, b in pairs(chr:GetChildren()) do
				if b:IsA'Tool' then
					for h, j in pairs(b:GetDescendants()) do
						if j:IsA'Sound' then
							so = j;
						end
					end
				end
			end
			if so ~= nil then
				offset = so.PlaybackLoudness / 35;
				speed = so.PlaybackLoudness / 500;
				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
			end
		end)
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 10 then
		offset = height * 15;
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 11 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	end
	for _, v in pairs(mov2) do
		v.AngularVelocity = angular;
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(c)
	if c:split(' ')[1] == '.orbit' then
		for _, v in pairs(mov) do
			chr = ftp(c:split(' ')[2])[1].Character;
			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
		end
	end
	if c:split(' ')[1] == '.speed' then
		speed = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.mode' then
		mode = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.offset' then
		offset = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.angular' then
		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));
	end
end)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "xgo 一键脱衣2.0";
        Text = "警视觉效果";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;   end})
Tab:AddButton({	   Name = "鼠标（手机非常不建议用）",	Callback = function()        loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()	end})
Tab:AddButton({    Name="锁定视角 摄像机",    Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%94%81%E5%AE%9A%E8%A7%86%E8%A7%92"))()  end})
Tab:AddButton({    Name="小go 在外网找的几个道具",    Callback=function()      loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools",true))()  end})
Tab:AddButton({    Name="聊天绘画图",    Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628lllkaiiiiiwggv.panmn.lua/refs/heads/main/xz"))()  end})
Tab:AddButton({    Name="死亡笔记",    Callback=function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0"))()  end})
Tab:AddButton({    Name="娱乐特效",    Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/xgoizlx/refs/heads/main/ui"))()  end}) 
local Tab = Window:MakeTab({    Name = "聊天中枢",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({	   Name = "查玩家ip地址 聊天发送（只能吓唬人 因为是随机数字）",	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/FakeRobloxIPGrabber/refs/heads/main/FERobloxIpGrabberScrip"))()    end})
Tab:AddButton({    Name = "传送到玩家面前循环（嘲讽）",	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()      end})
Tab:AddTextbox({   Name="聊天发送循环（xgo提醒:别说一些容易被举报的话）需要点两下",Callback=function(V)
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local function spamChat()
    local message = V
    while true do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        wait(2)
    end     end
local function flingAll()
    while true do
        loadstring(game:HttpGet(" https://raw scripts . net/raw/Universal-Script-FLING-ALL-Script-17590 "))()
        wait(3)
        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
    end    end
loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/222", true))()
spawn(spamChat)
spawn(flingAll)
end})
Tab:AddButton({    Name = "Al聊天机器人",	Callback = function()        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()      end})
Tab:AddButton({    Name ="骂人无违规",    Callback = function()    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()    end})
Tab:AddButton({    Name ="xgo 随机骂人输出 （手机需要键盘按G）",    Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/85463.lllllIIIIIlIlIIll.ldzs/refs/heads/main/%E8%81%8A%E5%A4%A9%E4%B8%AD%E6%9E%A2"))()     end})
local Tab = Window:MakeTab({    Name = "玩家",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddTextbox({   Name = "时间（24小时制）请输入1~24",	    Min = 0,	    Max = 24,	    Default = "输入",	  TextDisappear = true,    	Callback = function(Time)        game.Lighting.ClockTime = Time    end})
Tab:AddButton({    Name ="冻结自己 可以将自己暂停",    Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/creepstu/fuzzy-octo-giggle/main/Source"))()     end})
Tab:AddButton({   Name="显示FPS",Callback=function()
local ScreenGui = Instance.new("ScreenGui")
local FpsLabel = Instance.new("TextLabel")

ScreenGui.Name = "FPSGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FpsLabel.Name = "FPSLabel"
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0.75,20,0.075,20)--位置
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = "FPS: 0"
FpsLabel.TextSize = 20
FpsLabel.TextColor3 = Color3.fromRGB(255, 165, 0) --颜色
FpsLabel.Parent = ScreenGui

local frameCounter = 0

function updateFpsLabel()
    frameCounter = frameCounter + 1
    if frameCounter >= 20 then -- 20帧
        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsLabel.Text = "FPS: " .. fps
        frameCounter = 0
    end
end

game:GetService("RunService").RenderStepped:Connect(updateFpsLabel)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end})
Tab:AddButton({   Name="显示ping",Callback=function()
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Ping = Instance.new("ScreenGui")
local Pingtext = Instance.new("TextLabel")
Ping.Name = "Ping"
Ping.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Ping.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Ping.ResetOnSpawn = false
Pingtext.Name = "Pingtext"
Pingtext.Parent = Ping
Pingtext.BackgroundTransparency = 1
local initialPingPositionPC = UDim2.new(1, -230, 0, 0)
local initialFPSPositionPC = UDim2.new(1, -120, 0, 0)
local initialPingPositionMobile = UDim2.new(1, -230, 1, -353)
local initialFPSPositionMobile = UDim2.new(1, -120, 1, -353)
-- xxxxxxg
local initialPingPosition = initialPingPositionPC
local initialFPSPosition = initialFPSPositionPC
Pingtext.Position = initialPingPosition
Pingtext.Size = UDim2.new(0, 100, 0, 25)
Pingtext.Font = Enum.Font.SourceSans
Pingtext.Text = "Ping: "
Pingtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Pingtext.TextStrokeTransparency = 0.5
Pingtext.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Pingtext.TextScaled = true
Pingtext.TextSize = 14.000
Pingtext.TextWrapped = true
-- xxxxxxxxxxxxxgo
RunService.RenderStepped:Connect(function(ping) 
    Pingtext.Text = "Ping: " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))
end)
-- xxxxxxxxxxxxgo
local lastTime = tick()
local frameCount = 0
local TextLabel = Instance.new("TextLabel") 
TextLabel.Name = "FPSLabel"
TextLabel.Parent = Ping
TextLabel.BackgroundTransparency = 1
TextLabel.Position = initialFPSPosition
TextLabel.Size = UDim2.new(0, 45, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FPS: "
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
-- Función para formatear el FPS y cambiar el color si está por debajo de 25
local function FormatFPS(fps)
    local formattedFPS = string.format("FPS: %d", math.floor(fps + 0.5))
    -- Cambiar el color del texto si los FPS están por debajo de 25
    if fps < 30 then
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- Rojo
    else
        TextLabel.TextColor3 = Color3.new(1, 1, 1) -- Blanco
    end
    return formattedFPS
end
-- Actualización de FPS
RunService.RenderStepped:Connect(function()
    local currentTime = tick()
    frameCount = frameCount + 1
    if currentTime - lastTime >= 1 then
        local fps = frameCount / (currentTime - lastTime)
        TextLabel.Text = FormatFPS(fps)
        frameCount = 0
        lastTime = currentTime
    end
end)
-- Función para actualizar las posiciones según el entorno
local function updatePositions(isMobile)
    if isMobile then
        initialPingPosition = initialPingPositionMobile
        initialFPSPosition = initialFPSPositionMobile
    else
        initialPingPosition = initialPingPositionPC
        initialFPSPosition = initialFPSPositionPC
    end    end
-- Detectar cambios en la interfaz de usuario (PC a móvil y viceversa)
UserInputService.UserInterfaceChanged:Connect(function()
    local isMobile = UserInputService.TouchEnabled
    updatePositions(isMobile)
    Pingtext.Position = initialPingPosition
    TextLabel.Position = initialFPSPosition
end)       end})
Tab:AddButton({	Name = "无敌",	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
         local char = lp.Character
        char.Archivable = true
       local new = char:Clone()
      new.Parent = workspace
     lp.Character = new
               wait(2)
           local oldhum = char:FindFirstChildWhichIsA "Humanoid"
         local newhum = oldhum:Clone()
        newhum.Parent = char
       newhum.RequiresNeck = false
      oldhum.Parent = nil
              wait(2)
           lp.Character = char
         new:Destroy()
             wait(1)
           newhum:GetPropertyChangedSignal("Health"):Connect(
         function()
       if newhum.Health <= 0 then
      oldhum.Parent = lp.Character
              wait(1)
             oldhum:Destroy()
            end
           end)
          workspace.CurrentCamera.CameraSubject = char
         if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
                wait(.1)
             char.Animate.Disabled = false
            end
           lp.Character:FindFirstChild "Head":Destroy()
          end
         end})
Tab:AddButton({    Name ="重新加入游戏",   Callback = function()      game:GetService("TeleportService"):TeleportToPlaceInstance(      game.PlaceId,         game.JobId,           game:GetService("Players").LocalPlayer                  )            end})
Tab:AddButton({    Name ="保存游戏",    Callback = function()    saveinstance()    end})
Tab:AddButton({    Name ="离开游戏",    Callback = function()     game:Shutdown()    end})
Tab:AddButton({    Name ="进入人少的服务器",    Callback = function()     local Http = game:GetService("HttpService")         local TPS = game:GetService("TeleportService")          local Api = "https://games.roblox.com/v1/games/"               local _place = game.PlaceId       local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"          function ListServers(cursor)  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))  return Http:JSONDecode(Raw)         end            local Server, Next; repeat  local Servers = ListServers(Next)  Server = Servers.data[1]  Next = Servers.nextPageCursor       until Server           TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)        end})
Tab:AddButton({    Name ="最高帧率",    Callback = function()         setfpscap(999)    end})
Tab:AddTextbox({   Name = "广角 ",       Min = 0,        Max = 360,	Default = "输入",	TextDisappear = true,	Callback = function(V)		  game.Workspace.CurrentCamera.FieldOfView = v	end})
Tab:AddTextbox({   Name = "超广角（Fov）两者各有不同",     Default = "输入",      TextDisappear = true,       Callback = function(Value)      workspace.CurrentCamera.FieldOfView = 120       end})
Tab:AddTextbox({   Name = "血量 可能是假血",	Default = "输入",	TextDisappear = true,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.Health = Value	end})
Tab:AddTextbox({   Name = "跳跃高度设置",	Default = "输入",	TextDisappear = true,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value	end})
Tab:AddTextbox({   Name = "移动速度设置",	Default = "输入",	TextDisappear = true,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value	end})
Tab:AddTextbox({   Name = "重力设置",	Default = "输入",	TextDisappear = true,	Callback = function(Value)		game.Workspace.Gravity = Value	end})
Tab:AddButton({    Name = "人物坐下",    Callback = function()     local player = game.Players.LocalPlayer               local character = player.Character or player.CharacterAdded:Wait()              local humanoid = character:WaitForChild("Humanoid")         if humanoid and character then    humanoid.Sit = true        else    warn("Humanoid or Character not found.")      end       end})
Tab:AddToggle({	Name = "穿墙",	Default = false,	Callback = function(Value)
 if Value then
  Noclip = true
   Stepped = game.RunService.Stepped:Connect(function()
    if Noclip == true then
     for a, b in pairs(game.Workspace:GetChildren()) do
       if b.Name == game.Players.LocalPlayer.Name then
         for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
          if v:IsA("BasePart") then
           v.CanCollide = false
            end
           end
          end
         end
        else
       Stepped:Disconnect()
      end
     end)
    else
   Noclip = false
  end
 end})
Tab:AddButton({    Name ="穿墙汉化",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()    end})
Tab:AddToggle({    Name = "夜视",	Default = false,	Callback = function(Value)		if Value then		    game.Lighting.Ambient = Color3.new(1, 1, 1)		else		    game.Lighting.Ambient = Color3.new(0, 0, 0)		end	end})
Tab:AddButton({	Name = "范围",	Callback = function()
                  _G.HeadSize = 20
                 _G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
                 if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                   pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
         v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false
           end)    end    end    end    end)    end})
Tab:AddButton({	Name = "中级范围",	Callback = function()
                  _G.HeadSize = 100
                 _G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
                 if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                   pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
         v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false
           end)    end    end    end    end)    end})
Tab:AddButton({	Name = "高级范围",	Callback = function()
                  _G.HeadSize = 500
                  _G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
                 if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                   pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
         v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false
           end)    end    end    end    end)    end})
Tab:AddTextbox({	Name = "范围修改",	Default = "输入",	TextDisappear = true,	Callback = function(value)	  print(value)
                  _G.HeadSize = value
                 _G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
                 if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                   pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
         v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false
           end)    end    end    end    end)    end})
Tab:AddButton({  Name = "隐身道具",  Callback = function()    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()  end})
Tab:AddButton({    Name="立即死亡",   Callback= function()        game.Players.LocalPlayer.Character.Humanoid.Health=0    end})  
local TeleportTo = Window:MakeTab({	Name = "传送玩家",	Icon = "rbxassetid://18923878915",	PremiumOnly = false})
TeleportTo:AddSection({    Name = "选择玩家进行传送"})
for i, player in ipairs(game.Players:GetPlayers()) do    TeleportTo:AddButton({        Name = player.Name,        Callback = function()           teleportTo(player)        end    })end
local Tab = Window:MakeTab({    Name = "透视自瞄",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({    Name ="辅助瞄准",    Callback = function()   loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/main/universal%20silent%20aim%20by%20Mortalexploits'))()      end})
Tab:AddButton({    Name ="普通中心点",    Callback = function()   local d = Drawing.new("Circle")            d.Color, d.Radius, d.Filled, d.Visible = Color3.new(0, 0, 8), 3, true, false            game:GetService("RunService").RenderStepped:Connect(function()    d.Position = workspace.CurrentCamera.ViewportSize / 2    d.Visible = true        end)       end})
Tab:AddButton({    Name ="战神十字架（小）",    Callback = function()   
settings = {
    color = Color3.fromRGB(0, 255, 255),    -- 十字线的颜色，采用任何Color3
    thickness = 2,                              -- 在像素中的十字线的厚度需要任何全数
    length = 8,                                 -- 每侧的像素的长度都占据了任何全部。
    opacity = 1,                                -- 十字线的不透明度，取得任何数字，1是完全可见的，0是看不见的。
	x_offset = 0,                               -- 十字线的X偏移，采用任何正数或负数
	y_offset = 0,                               -- 十字丘的Y偏移，采用任何正数或负数
	
    recenter = true                             -- .如果您的窗口调整大小，自动彻底是十字准线，这是一个选项，以防我非常怀疑的任何人导致滞后，如果它为您提供，请停止使用您的微波器for Roblox
}

local cam = workspace.CurrentCamera or workspace:FindFirstChildOfClass("Camera")

getgenv().crosshair_x = getgenv().crosshair_x or {}
getgenv().crosshair_y = getgenv().crosshair_y or {}

local function draw(a1, a2)
    local obj = Drawing.new(a1)
    for i, v in pairs(a2) do 
        obj[i] = v
    end
    return obj
end

if getgenv().crosshair_x ~= nil or getgenv().crosshair_x ~= {} then
    if getgenv().crosshair_x["Line"] then
        getgenv().crosshair_x["Line"]:Remove()
    end
    
    if getgenv().crosshair_x["Connection"] then
        getgenv().crosshair_x["Connection"]:Disconnect()
    end
    getgenv().crosshair_x = {}
end

if getgenv().crosshair_y ~= nil or getgenv().crosshair_y ~= {} then
    if getgenv().crosshair_y["Line"] then
        getgenv().crosshair_y["Line"]:Remove()
    end

    if getgenv().crosshair_y["Connection"] then
        getgenv().crosshair_y["Connection"]:Disconnect()
    end
    
    getgenv().crosshair_y = {}
end

getgenv().crosshair_x["Line"] = draw("Line", {
    To = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    From = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})

getgenv().crosshair_y["Line"] = draw("Line", {
    To = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length),
    From = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})

if settings.recenter then
    getgenv().crosshair_x["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_x["Line"]["To"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
        getgenv().crosshair_x["Line"]["From"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
    end)

    getgenv().crosshair_y["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_y["Line"]["To"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length)
        getgenv().crosshair_y["Line"]["From"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length)
    end)     end      end}) 
 Tab:AddButton({    Name ="战神十字架（中）",    Callback = function()   settings = {
    color = Color3.fromRGB(0, 255, 255),    -- 十字线的颜色，采用任何Color3
    thickness = 3,                              -- 在像素中的十字线的厚度需要任何全数
    length = 80,                                 -- 每侧的像素的长度都占据了任何全部。
    opacity = 1,                                -- 十字线的不透明度，取得任何数字，1是完全可见的，0是看不见的。
	x_offset = 0,                               -- 十字线的X偏移，采用任何正数或负数
	y_offset = 0,                               -- 十字丘的Y偏移，采用任何正数或负数
	
    recenter = true                             -- .如果您的窗口调整大小，自动彻底是十字准线，这是一个选项，以防我非常怀疑的任何人导致滞后，如果它为您提供，请停止使用您的微波器for Roblox
}

local cam = workspace.CurrentCamera or workspace:FindFirstChildOfClass("Camera")

getgenv().crosshair_x = getgenv().crosshair_x or {}
getgenv().crosshair_y = getgenv().crosshair_y or {}

local function draw(a1, a2)
    local obj = Drawing.new(a1)
    for i, v in pairs(a2) do 
        obj[i] = v
    end
    return obj
end
if getgenv().crosshair_x ~= nil or getgenv().crosshair_x ~= {} then
    if getgenv().crosshair_x["Line"] then
        getgenv().crosshair_x["Line"]:Remove()
    end
    if getgenv().crosshair_x["Connection"] then
        getgenv().crosshair_x["Connection"]:Disconnect()
    end
    getgenv().crosshair_x = {}
end
if getgenv().crosshair_y ~= nil or getgenv().crosshair_y ~= {} then
    if getgenv().crosshair_y["Line"] then
        getgenv().crosshair_y["Line"]:Remove()
    end
    if getgenv().crosshair_y["Connection"] then
        getgenv().crosshair_y["Connection"]:Disconnect()
    end 
    getgenv().crosshair_y = {}
end
getgenv().crosshair_x["Line"] = draw("Line", {
    To = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    From = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})
getgenv().crosshair_y["Line"] = draw("Line", {
    To = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length),
    From = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})
if settings.recenter then
    getgenv().crosshair_x["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_x["Line"]["To"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
        getgenv().crosshair_x["Line"]["From"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
    end)
    getgenv().crosshair_y["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_y["Line"]["To"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length)
        getgenv().crosshair_y["Line"]["From"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length)
    end)      end     end})
Tab:AddButton({    Name ="战神十字架（超级）",    Callback = function()   settings = {
    color = Color3.fromRGB(0, 255, 255),    -- 十字线的颜色，采用任何Color3
    thickness = 6,                              -- 在像素中的十字线的厚度需要任何全数
    length = 1000,                                 -- 每侧的像素的长度都占据了任何全部。
    opacity = 1,                                -- 十字线的不透明度，取得任何数字，1是完全可见的，0是看不见的。
	x_offset = 0,                               -- 十字线的X偏移，采用任何正数或负数
	y_offset = 0,                               -- 十字丘的Y偏移，采用任何正数或负数
	
    recenter = true                             -- .如果您的窗口调整大小，自动彻底是十字准线，这是一个选项，以防我非常怀疑的任何人导致滞后，如果它为您提供，请停止使用您的微波器for Roblox
}

local cam = workspace.CurrentCamera or workspace:FindFirstChildOfClass("Camera")

getgenv().crosshair_x = getgenv().crosshair_x or {}
getgenv().crosshair_y = getgenv().crosshair_y or {}

local function draw(a1, a2)
    local obj = Drawing.new(a1)
    for i, v in pairs(a2) do 
        obj[i] = v
    end
    return obj
end
if getgenv().crosshair_x ~= nil or getgenv().crosshair_x ~= {} then
    if getgenv().crosshair_x["Line"] then
        getgenv().crosshair_x["Line"]:Remove()
    end
    if getgenv().crosshair_x["Connection"] then
        getgenv().crosshair_x["Connection"]:Disconnect()
    end
    getgenv().crosshair_x = {}
end
if getgenv().crosshair_y ~= nil or getgenv().crosshair_y ~= {} then
    if getgenv().crosshair_y["Line"] then
        getgenv().crosshair_y["Line"]:Remove()
    end
    if getgenv().crosshair_y["Connection"] then
        getgenv().crosshair_y["Connection"]:Disconnect()
    end    
    getgenv().crosshair_y = {}
end
getgenv().crosshair_x["Line"] = draw("Line", {
    To = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    From = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})
getgenv().crosshair_y["Line"] = draw("Line", {
    To = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length),
    From = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length),
    Thickness = settings.thickness,
    Color = settings.color,
    Transparency = settings.opacity,
    Visible = true
})
if settings.recenter then
    getgenv().crosshair_x["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_x["Line"]["To"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) - settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
        getgenv().crosshair_x["Line"]["From"] = Vector2.new(((cam.ViewportSize.x / 2) - settings.x_offset) + settings.length, (cam.ViewportSize.y / 2) - settings.y_offset)
    end)
    getgenv().crosshair_y["Connection"] = cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        getgenv().crosshair_y["Line"]["To"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) - settings.length)
        getgenv().crosshair_y["Line"]["From"] = Vector2.new((cam.ViewportSize.x / 2) - settings.x_offset, ((cam.ViewportSize.y / 2) - settings.y_offset) + settings.length)
    end)       end      end})
Tab:AddButton({    Name ="可调节十字准心",    Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/kn0a/Crosshair-M/main/Source.lua", true))()     end})
Tab:AddButton({    Name ="框架 血条 射线 准心 依旧fl有 Bug  不过我已经改得非常好了",    Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/143628llllffaaaYXZS.123/refs/heads/main/%E9%80%8F%E8%A7%86%E3%80%82%E6%A1%86%E6%9E%B6"))()ExunysDeveloperESP()     end})
Tab:AddButton({    Name ="血条 射线",    Callback = function()             local lplr = game.Players.LocalPlayer     local camera = game:GetService("Workspace").CurrentCamera      local CurrentCamera = workspace.CurrentCamera      local worldToViewportPoint = CurrentCamera.worldToViewportPoint     local HeadOff = Vector3.new(0.5, 0)     local LegOff = Vector3.new(0, 3, 0)      local function createBoxEsp(v)      local Box = Drawing.new("Square")       Box.Visible = false      Box.Color = v.TeamColor.Color     Box.Thickness = 3    Box.Transparency = 0    Box.Filled = false    local HealthBar = Drawing.new("Line")    HealthBar.Visible = false    HealthBar.Color = Color3.new(0, 1, 0)    HealthBar.Thickness = 2    local NameTag = Drawing.new("Text")    NameTag.Visible = false    NameTag.Color = Color3.new(1, 1, 1)    NameTag.Size = 9    NameTag.Center = true    NameTag.Outline = true    NameTag.OutlineColor = Color3.new(0, 0, 0)    local DistanceTag = Drawing.new("Text")    DistanceTag.Visible = false    DistanceTag.Color = Color3.new(1, 1, 1)    DistanceTag.Size = 9    DistanceTag.Center = true    DistanceTag.Outline = true    DistanceTag.OutlineColor = Color3.new(0, 0, 0)    local Tracer = Drawing.new("Line")    Tracer.Visible = false    Tracer.Color = v.TeamColor.Color    Tracer.Thickness = 2    game:GetService("RunService").RenderStepped:Connect(function()        if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)            local RootPart = v.Character.HumanoidRootPart            local Head = v.Character.Head            local RootPosition, RootVisibility = worldToViewportPoint(CurrentCamera, RootPart.Position)            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)            Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)            Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)            local health = v.Character.Humanoid.Health / v.Character.Humanoid.MaxHealth            HealthBar.From = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y * (1 - health))            HealthBar.To = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y)            HealthBar.Color = Color3.new(1 - health, health, 0)            NameTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y - 20)            NameTag.Text = v.Name            NameTag.Visible = true            DistanceTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y + Box.Size.Y)            DistanceTag.Text = tostring(math.floor((lplr.Character.HumanoidRootPart.Position - RootPart.Position).Magnitude)) .. "m"            DistanceTag.Visible = true            local lplrHead = lplr.Character:FindFirstChild("Head")            if lplrHead then                local lplrHeadViewport = camera:worldToViewportPoint(lplrHead.Position)            Tracer.From = Vector2.new(lplrHeadViewport.X / 1, lplrHeadViewport.Y / 10)                Tracer.To = Vector2.new(RootPosition.X, RootPosition.Y)            end            if onScreen then                Box.Visible = true                HealthBar.Visible = true                NameTag.Visible = true                DistanceTag.Visible = true                Tracer.Visible = true            else                Box.Visible = false                HealthBar.Visible = false                NameTag.Visible = false                DistanceTag.Visible = false                Tracer.Visible = false            end        else            Box.Visible = false            HealthBar.Visible = false            NameTag.Visible = false            DistanceTag.Visible = false            Tracer.Visible = false        end    end)     end     for i, v in pairs(game.Players:GetChildren()) do    createBoxEsp(v)     end     game.Players.PlayerAdded:Connect(function(v)    createBoxEsp(v)end)        end})
Tab:AddButton({    Name ="人物框架",    Callback = function()
    -- xgo
local Settings = {
    Box_Color = Color3.fromRGB(255, 0, 0),
    Box_Thickness = 2,
    Team_Check = false,
    Team_Color = true,
    Autothickness = true
}
--xgo
local Space = game:GetService("Workspace")
local Player = game:GetService("Players").LocalPlayer
local Camera = Space.CurrentCamera
-- xgo
local function NewLine(color, thickness)
    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(0, 0)
    line.Color = color
    line.Thickness = thickness
    line.Transparency = 1
    return line
end

local function Vis(lib, state)
    for i, v in pairs(lib) do
        v.Visible = state
    end
end

local function Colorize(lib, color)
    for i, v in pairs(lib) do
        v.Color = color
    end
end

local Black = Color3.fromRGB(0, 0, 0)

local function Rainbow(lib, delay)
    for hue = 0, 1, 1/30 do
        local color = Color3.fromHSV(hue, 0.6, 1)
        Colorize(lib, color)
        wait(delay)
    end
    Rainbow(lib)
end
--xgo
local function Main(plr)
    repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
    local R15
    if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        R15 = true
    else 
        R15 = false
    end
    local Library = {
        TL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        TL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),

        TR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        TR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),

        BL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),

        BR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        BR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness)
    }
    coroutine.wrap(Rainbow)(Library, 0.15)
    local oripart = Instance.new("Part")
    oripart.Parent = Space
    oripart.Transparency = 1
    oripart.CanCollide = false
    oripart.Size = Vector3.new(1, 1, 1)
    oripart.Position = Vector3.new(0, 0, 0)
    --Updater Loop
    local function Updater()
        local c 
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
                local Hum = plr.Character
                local HumPos, vis = Camera:WorldToViewportPoint(Hum.HumanoidRootPart.Position)
                if vis then
                    oripart.Size = Vector3.new(Hum.HumanoidRootPart.Size.X, Hum.HumanoidRootPart.Size.Y*1.5, Hum.HumanoidRootPart.Size.Z)
                    oripart.CFrame = CFrame.new(Hum.HumanoidRootPart.CFrame.Position, Camera.CFrame.Position)
                    local SizeX = oripart.Size.X
                    local SizeY = oripart.Size.Y
                    local TL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, SizeY, 0)).p)
                    local TR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, SizeY, 0)).p)
                    local BL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, -SizeY, 0)).p)
                    local BR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, -SizeY, 0)).p)

                    if Settings.Team_Check then
                        if plr.TeamColor == Player.TeamColor then
                            Colorize(Library, Color3.fromRGB(0, 255, 0))
                        else 
                            Colorize(Library, Color3.fromRGB(255, 0, 0))
                        end
                    end

                    if Settings.Team_Color then
                        Colorize(Library, plr.TeamColor.Color)
                    end

                    local ratio = (Camera.CFrame.p - Hum.HumanoidRootPart.Position).magnitude
                    local offset = math.clamp(1/ratio*750, 2, 300)

                    Library.TL1.From = Vector2.new(TL.X, TL.Y)
                    Library.TL1.To = Vector2.new(TL.X + offset, TL.Y)
                    Library.TL2.From = Vector2.new(TL.X, TL.Y)
                    Library.TL2.To = Vector2.new(TL.X, TL.Y + offset)

                    Library.TR1.From = Vector2.new(TR.X, TR.Y)
                    Library.TR1.To = Vector2.new(TR.X - offset, TR.Y)
                    Library.TR2.From = Vector2.new(TR.X, TR.Y)
                    Library.TR2.To = Vector2.new(TR.X, TR.Y + offset)

                    Library.BL1.From = Vector2.new(BL.X, BL.Y)
                    Library.BL1.To = Vector2.new(BL.X + offset, BL.Y)
                    Library.BL2.From = Vector2.new(BL.X, BL.Y)
                    Library.BL2.To = Vector2.new(BL.X, BL.Y - offset)

                    Library.BR1.From = Vector2.new(BR.X, BR.Y)
                    Library.BR1.To = Vector2.new(BR.X - offset, BR.Y)
                    Library.BR2.From = Vector2.new(BR.X, BR.Y)
                    Library.BR2.To = Vector2.new(BR.X, BR.Y - offset)

                    Vis(Library, true)

                    if Settings.Autothickness then
                        local distance = (Player.Character.HumanoidRootPart.Position - oripart.Position).magnitude
                        local value = math.clamp(1/distance*100, 1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(Library) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(Library) do
                            x.Thickness = Settings.Box_Thickness
                        end
                    end
                else 
                    Vis(Library, false)
                end
            else 
                Vis(Library, false)
                if game:GetService("Players"):FindFirstChild(plr.Name) == nil then
                    for i, v in pairs(Library) do
                        v:Remove()
                        oripart:Destroy()
                    end
                    c:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Updater)()
end

-- xgo
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= Player.Name then
      coroutine.wrap(Main)(v)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(newplr)
    coroutine.wrap(Main)(newplr)
end)

local function ApplyESP(v)
   if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
       v.Character.Humanoid.NameDisplayDistance = 9e9
       v.Character.Humanoid.NameOcclusion = "NoOcclusion"
       v.Character.Humanoid.HealthDisplayDistance = 9e9
       v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
       v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
   end
end
for i,v in pairs(game.Players:GetPlayers()) do
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)
end

game.Players.PlayerAdded:Connect(function(v)
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)  end)    end})
Tab:AddButton({    Name ="人物射线",    Callback = function()    local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

_G.TeamCheck = false -- Use True or False to toggle TeamCheck

for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(255,255,255)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 10)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end
game.Players.PlayerAdded:Connect(function(v)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(0,255,50)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)   end}) 
Tab:AddButton({    Name ="框架0.1",    Callback = function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- xgo
local espElements = {}

-- xgo
local function createESP(player)
    if player == LocalPlayer then return end -- Игнорируем себя

    -- xgo
    local espTable = {}
    
    -- xgo
    local nameTag = Drawing.new("Text")
    nameTag.Visible = false
    nameTag.Center = true
    nameTag.Outline = true
    nameTag.Size = 18
    nameTag.Color = Color3.fromRGB(255, 255, 0) --xgo颜色
    nameTag.Text = player.Name
    espTable.nameTag = nameTag
    
    -- xgo
    local lines = {}
    for i = 1, 8 do
        local line = Drawing.new("Line")
        line.Visible = false
        line.Thickness = 2
        line.Transparency = 1
        line.Color = Color3.fromRGB(255, 255, 0) -- xgo颜色
        table.insert(lines, line)
    end
    espTable.lines = lines
    
    espElements[player] = espTable
end

-- xgo
local function updateESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local character = player.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            local lines = espElements[player].lines
            local nameTag = espElements[player].nameTag
            
            if head and humanoidRootPart then
                local rootPos, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)
                local headPos = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                local torsoPos = Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(0, -1, 0))
                
                -- xgo
                if onScreen then
                    -- xgo
                    nameTag.Position = Vector2.new(headPos.X, headPos.Y - 30)
                    nameTag.Visible = true

                    --xgo
                    local points = {
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(-1, 2, 0)),   -- 根据
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(1, 2, 0)),    -- xgo
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(-1, -2, 0)),  -- xgo
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(1, -2, 0)),   -- xgo
                    }

                    -- xgo
                    lines[1].From = Vector2.new(points[1].X, points[1].Y)
                    lines[1].To = Vector2.new(points[2].X, points[2].Y)
                    lines[1].Visible = true

                    lines[2].From = Vector2.new(points[2].X, points[2].Y)
                    lines[2].To = Vector2.new(points[4].X, points[4].Y)
                    lines[2].Visible = true

                    lines[3].From = Vector2.new(points[4].X, points[4].Y)
                    lines[3].To = Vector2.new(points[3].X, points[3].Y)
                    lines[3].Visible = true

                    lines[4].From = Vector2.new(points[3].X, points[3].Y)
                    lines[4].To = Vector2.new(points[1].X, points[1].Y)
                    lines[4].Visible = true
                else
                    --xgo
                    for _, line in pairs(lines) do
                        line.Visible = false
                    end
                    nameTag.Visible = false
                end
            end
        end
    end
end

-- xgo
for _, player in pairs(Players:GetPlayers()) do
    createESP(player)
end

-- xgo ESP 
Players.PlayerAdded:Connect(function(player)
    createESP(player)
end)

-- xgo
Players.PlayerRemoving:Connect(function(player)
    if espElements[player] then
        for _, line in pairs(espElements[player].lines) do
            line:Remove()
        end
        espElements[player].nameTag:Remove()
        espElements[player] = nil
    end
end)

-- xgo
RunService.RenderStepped:Connect(function()
    updateESP()
end)    end})
Tab:AddButton({	  Name = "xgo制作最强Esp",	Callback = function()    local Outlines = true         local OutlineColoring = Color3.fromRGB(255, 255, 255)         local OutlineFill = false         local FillOpacity = 1         local FillColoring = Color3.fromRGB(255, 255, 255)        local NameTags = true       local TextFont = Enum.Font.RobotoMono       local NameColor = Color3.fromRGB(255, 255, 255)       local NamePositioning = false              local Folder = Instance.new("Folder", game:GetService("CoreGui"))      Folder.Name = ""            AddOutline = function(Character)   local Highlight = Instance.new("Highlight", Folder)      Highlight.OutlineColor = OutlineColoring   Highlight.Adornee = Character   if OutlineFill == true then       Highlight.FillColor = FillColoring      Highlight.FillTransparency = FillOpacity   else       Highlight.FillTransparency = 1   end         end           AddNameTag = function(Character)   local BGui = Instance.new("BillboardGui", Folder)   local Frame = Instance.new("Frame", BGui)   local TextLabel = Instance.new("TextLabel", Frame)      BGui.Adornee = Character:WaitForChild("Head")   BGui.StudsOffset = Vector3.new(0, 3, 0)   BGui.AlwaysOnTop = true      BGui.Size = UDim2.new(4, 0, 0.5, 0)   Frame.Size = UDim2.new(1, 0, 1, 0)   TextLabel.Size = UDim2.new(1, 0, 1, 0)      Frame.BackgroundTransparency = 1   TextLabel.BackgroundTransparency = 1      TextLabel.Text = Character.Name   TextLabel.Font = TextFont   TextLabel.TextColor3 = NameColor   TextLabel.TextScaled = NamePositioning     end             for i, v in ipairs(game:GetService("Players"):GetPlayers()) do   if v ~= game:GetService("Players").LocalPlayer then       v.CharacterAdded:Connect(function(Character)           if Outlines == true then               AddOutline(Character)           end          if NameTags == true then              AddNameTag(Character)          end       end)              if v.Character then           if Outlines == true then               AddOutline(v.Character)           end           if NameTags == true then               AddNameTag(v.Character)           end       end   end     end          game:GetService("Players").PlayerAdded:Connect(function(Player)   Player.CharacterAdded:Connect(function(Character)       if Outlines == true then           AddOutline(Character)       end       if NameTags == true then           AddNameTag(Character)      end   end) end)	end    })
Tab:AddButton({	  Name = "ESP白色",	Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()  	end    })
Tab:AddButton({	Name = "ESP 外网 电脑可用",	Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()  	end    })
Tab:AddButton({	Name = "ESP 猫头鹰中心 逐渐适配手机",	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()  	end    })
Tab:AddButton({   Name = "CheatX GUI", 	Callback = function() local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))() local MainUI = UILibrary.Load("CheatX - 3008") local Home = MainUI.AddPage("Home") local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))() ESP:Toggle(true) ESP.Players = false ESP.Tracers = false ESP.Boxes = false ESP.Names = false local function notify(message) game.StarterGui:SetCore("SendNotification", { Title = "CheatX"; Text = message; Icon = ""; Duration = 5; }) end local function teleportToItem(itemName) local donesearch = false for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do if v.Name == "Root" and v.Parent.Name == itemName then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame donesearch = true break end end if donesearch == false then notify("Item position not defined") end end ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, { Type = "Model", Color = Color3.fromRGB(0, 119, 255), IsEnabled = "itemESP" }) ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, { Type = "Model", CustomName = "Employee", Color = Color3.fromRGB(255, 0, 4), IsEnabled = "employeeToggle" }) Home.AddButton("Unlock Third Person", function() game.Players.LocalPlayer.CameraMaxZoomDistance = 50 game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic end) Home.AddToggle("ESP", false, function(Value) ESP.Boxes = Value end) Home.AddToggle("ESP Tracers", false, function(Value) ESP.Tracers = Value end) Home.AddToggle("ESP Nametags", false, function(Value) ESP.Names = Value end) Home.AddToggle("Show Players", false, function(Value) ESP.Players = Value end) Home.AddToggle("Show Employees", false, function(Value) ESP.employeeToggle = Value end) Home.AddToggle("Show Items", false, function(Value) ESP.itemESP = Value end) local Teleports = MainUI.AddPage("Teleports") Teleports.AddButton("Teleport to Hotdog", function() teleportToItem("Hotdog") end) Teleports.AddButton("Teleport to Pizza", function() teleportToItem("Pizza") end) Teleports.AddButton("Teleport to Burger", function() teleportToItem("Burger") end) Teleports.AddButton("Teleport to Medkit", function() teleportToItem("Medkit") end) 	end })
Tab:AddToggle({   Name = "Esp开关",       Default = true,        Callback = function(Value)        getgenv().toggleespmpt = Value      end    })
Tab:AddColorpicker({   Name = "Esp颜色",     Default = Color3.fromRGB(255, 255, 255),    Callback = function(Value)     getgenv().mptespcolour = Value     end  })
Tab:AddSlider({   Name = "Esp最大距离",        Min = 1,        Max = 100000,       Default = 100000,        Color = Color3.fromRGB(255,255,255),         Increment = 250,         ValueName = "距离",         Callback = function(Value)         getgenv().mptespdistance = Value    end    })
Tab:AddSlider({   Name = "Esp厚度",       Min = 1,        Max = 30,       Default = 2,        Color = Color3.fromRGB(255,255,255),       Increment = 1,        ValueName = "厚度",        Callback = function(Value)
getgenv().mptespthickness = Value     end    })
Tab:AddButton({   Name ="辅助瞄准v2",    Callback = function()   loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/universal%20silent%20aim%20by%20Mortalexploits'))()       end})        
Tab:AddToggle({	Name = "锁头 加入队伍检测",	Default = false,	Callback = function(Value)
		_G.AimbotEnabled = Value
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

_G.TeamCheck = true
_G.AimPart = "Head"
_G.Sensitivity = 0

_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleTransparency = 0.7
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0

local FOVCircle = Drawing.new("Circle")
 FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
  FOVCircle.Radius = _G.CircleRadius
   FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
     FOVCircle.Visible = _G.CircleVisible
      FOVCircle.Radius = _G.CircleRadius
       FOVCircle.Transparency = _G.CircleTransparency
        FOVCircle.NumSides = _G.CircleSides
         FOVCircle.Thickness = _G.CircleThickness

		local function GetClosestPlayer()
			local MaximumDistance = _G.CircleRadius
			local Target = nil

			for _, v in next, Players:GetPlayers() do
				if v.Name ~= LocalPlayer.Name then
					if _G.TeamCheck == true then
						if v.Team ~= LocalPlayer.Team then
							if v.Character ~= nil then
								if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

										if VectorDistance < MaximumDistance then
											Target = v
										end
									end
								end
							end
						end
					else
						if v.Character ~= nil then
							if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
								if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
									local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
									local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

									if VectorDistance < MaximumDistance then
										Target = v
									end
								end
							end
						end
					end
				end
			end

			return Target
		end

		UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = true
			end
		end)

		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = false
			end
		end)

		RunService.RenderStepped:Connect(function()
			FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Filled = _G.CircleFilled
			FOVCircle.Color = _G.CircleColor
			FOVCircle.Visible = _G.CircleVisible
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Transparency = _G.CircleTransparency
			FOVCircle.NumSides = _G.CircleSides
			FOVCircle.Thickness = _G.CircleThickness

			if Holding == true and _G.AimbotEnabled == true then
				TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
			end
		end)
	end    }) 
Tab:AddButton({	Name = "xgo3d人物射线",	Callback = function()         loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo3d%E4%BA%BA%E7%89%A9%E5%B0%84%E7%BA%BF.lua"))()    end}) 
Tab:AddButton({	Name = "外网框架",	Callback = function()         loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/UNIVERSAL%20AIMBOT%20V2"))()    end}) 
Tab:AddButton({	Name = "情云同款自瞄可以调整大小，绘制距离 fl目前有bug",	Callback = function()	    local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)    end})
Tab:AddButton({ Name ="小go宙斯二改汉化自瞄",    Callback = function()      loadstring(game:HttpGet("https://pastebin.com/raw/0K2bLjJ5"))()    end})
Tab:AddButton({	Name = "自瞄",	Callback = function()         loadstring(game:HttpGet("https://pastebin.com/raw/gXsy4tYU"))()     end})
Tab:AddButton({	Name = "自瞄ui",	Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/zm"))()    end})
Tab:AddButton({	Name = "自瞄ui2.0",	Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/111111/refs/heads/main/%E8%BE%85%E5%8A%A9%E7%9E%84%E5%87%86"))()    end}) 
Tab = Window:MakeTab({    Name = "道具玩偶",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
local Section = Tab:AddSection({	Name = "娱乐ก็ʕ•͡ᴥ•ʔ ก้小go🕊️🕊️🕊️🕊️所有地图皆可是休闲如DOORS 小屋角色扮演等🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️"})
Tab:AddButton({    Name ="火焰特效",    Callback = function()    local Object = game:GetObjects("rbxassetid://16408664901")[1]     Object.Parent = game.Workspace       Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())     end})
Tab:AddButton({    Name ="召唤一辆小汽车",    Callback = function()    local Object = game:GetObjects("rbxassetid://16725966639")[1]Object.Parent = game.Workspace        Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())    end})
Tab:AddButton({    Name ="DOORS骷髅钥匙",    Callback = function()    local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack    end})
Tab:AddButton({	Name = "普通剑",	Callback = function()    local item = game:GetObjects("rbxassetid://8517347614")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "我的世界钻石剑",	Callback = function()    local item = game:GetObjects("rbxassetid://5138636091")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "MM2小刀",	Callback = function()   local item = game:GetObjects("rbxassetid://3576051114")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "金属棒球棍",	Callback = function()    local Item = game:GetObjects("rbxassetid://12550781805")[1]    Item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Tab:AddButton({	Name = "斧子",	Callback = function()    local item = game:GetObjects("rbxassetid://9255749565")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "锤子",	Callback = function()   local item = game:GetObjects("rbxassetid://1380979171")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "核弹",	Callback = function()    local item = game:GetObjects("rbxassetid://10694662894")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "普通剪刀",	Callback = function()    local item = game:GetObjects("rbxassetid://1305578915")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "撬棍",	Callback = function()    local item = game:GetObjects("rbxassetid://134950292")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "龙骨炮",	Callback = function()    local item = game:GetObjects("rbxassetid://10748604184")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "武士刀",	Callback = function()    local item = game:GetObjects("rbxassetid://8668934198")[1]   item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Tab:AddButton({	Name = "经典剑",	Callback = function()    local item = game:GetObjects("rbxassetid://47433")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "火箭筒",	Callback = function()      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua"),true))()  	end    })
Tab:AddButton({	Name = "AK47",	Callback = function()      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua"),true))()  	end    })
Tab:AddButton({	Name = "黑洞",	Callback = function()      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"),true))()  	end    })
Tab:AddButton({	Name = "魔鬼辣火腿肠",	Callback = function()      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt"),true))()  	end    })
Tab:AddButton({	Name = "seek枪",	Callback = function()      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"),true))()  	end    })
Tab:AddButton({	Name = "M249",	Callback = function()      		loadstring(game:HttpGet(("https://pastebin.com/raw/cJWSByci"),true))()  	end    })
Tab:AddButton({	Name = "枪",	Callback = function()     loadstring(game:HttpGet('https://pastebin.com/raw/GWdRYDWk'))()  	end    })
Tab:AddButton({	Name = "子空间绊雷",	Callback = function()    loadstring(game:HttpGet(("https://pastebin.com/raw/vMpNR73S"),true))()  	end    })
Tab:AddButton({	Name = "气球",	Callback = function()        local Item = game:GetObjects("rbxassetid://844258278")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "普通书",	Callback = function()    local item = game:GetObjects("rbxassetid://139194324")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "手机",	Callback = function()    local item = game:GetObjects("rbxassetid://4919665667")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "油漆",	Callback = function()    local item = game:GetObjects("rbxassetid://1287005601")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "Stop标志",	Callback = function()    local item = game:GetObjects("rbxassetid://1305561850")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "钱/robux",	Callback = function()    local item = game:GetObjects("rbxassetid://78678939")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "摄影机",	Callback = function()    local item = game:GetObjects("rbxassetid://9239732180")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "牌子",	Callback = function()   local item = game:GetObjects("rbxassetid://6752274751")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "手电",	Callback = function()    local item = game:GetObjects("rbxassetid://11242492137")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "水瓶",	Callback = function()    local item = game:GetObjects("rbxassetid://8678380361")[1]   item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "油漆桶",	Callback = function()        local Item = game:GetObjects("rbxassetid://82578488")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "灯笼",	Callback = function()   local item = game:GetObjects("rbxassetid://7301610554")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Tab:AddButton({	Name = "火把",	Callback = function()    local item = game:GetObjects("rbxassetid://3499523244")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Tab:AddButton({	Name = "魔法书",	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()  	end    })
Tab:AddButton({	Name = "screech抱枕 pss~",	Callback = function()      		loadstring(game:HttpGet(("https://pastebin.com/raw/W6LhkY6r"),true))()  	end    })
Tab:AddButton({	Name = "神圣手掌",	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Godly%20Hand"))()  	end    })
Tab:AddButton({	Name = "夜视仪",	Callback = function()      _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()    end})    
Tab:AddButton({	Name = "杰夫玩偶",	Callback = function()      		local tool = game:GetObjects("rbxassetid://13069619857")[1]      tool.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "Screech玩偶",	Callback = function()    local item = game:GetObjects("rbxassetid://12387752981")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "培根头(???)",	Callback = function()    local item = game:GetObjects("rbxassetid://651205590")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "恐惧玩偶",	Callback = function()    local dread=game:GetObjects("rbxassetid://13071801863")[1];dread.Parent=game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "Seek玩偶",	Callback = function()    loadstring(game:HttpGet(("https://pastebin.com/raw/e35wGTze"),true))() 	end    })
Tab:AddButton({	Name = "巧克力棒",	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Chocolate%20Bar%20Script"))()  	end    })
Tab:AddButton({	Name = "蛋糕",	Callback = function()    local tool = gaetObjects("rbxassetid://13175107839")[1]     tool.Parent = game.Players.LocalPlayer.Backpack    tool.Activated:Connect(function()    tool.Eat:play()    tool.Cake:Destroy()    task.wait(1)    tool.yay:Play()    end)  	end    })
Tab:AddButton({	Name = "冰淇淋",	Callback = function()        local Item = game:GetObjects("rbxassetid://110887863")[1] Item.Parent = game.Players.LocalPlayer.Backpack   	end    })
Tab:AddButton({	Name = "蛋糕",	Callback = function()    local item = game:GetObjects("rbxassetid://1523953726")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "汉堡",	Callback = function()    local item = game:GetObjects("rbxassetid://100522628")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "Prime(看起来像某一种饮料)",	Callback = function()    local item = game:GetObjects("rbxassetid://12691961635")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "绷带",	Callback = function()    local item = game:GetObjects("rbxassetid://9956323407")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "乐事薯片",	Callback = function()    local item = game:GetObjects("rbxassetid://11979782807")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "普通蜡烛",	Callback = function()    local item = game:GetObjects("rbxassetid://11222116941")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Tab:AddButton({	Name = "咖啡",	Callback = function()    local item = game:GetObjects("rbxassetid://5933367192")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    }) 
Tab = Window:MakeTab({    Name = "其他脚本",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({ Name ="作者喜欢的一个外国脚本，不喜勿喷",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/ByNami/dkhub/main/Script", true))()    end})
Tab:AddButton({ Name ="国外脚本(FireHub 半缝合)",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/NotMooDy0/FireHub/refs/heads/main/Firehub"))()    end})
Tab:AddButton({ Name ="国外脚本（VersionsV3.6.9）加载较慢",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions/V3.6.9.txt", true))()    end})
Tab:AddButton({ Name ="国外脚本（SolarHub 130+游戏）",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))()    end})
Tab:AddButton({ Name ="禁漫中心◇",    Callback = function()    getgenv().lishichuan="禁漫中心1001390385" loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()    end})
Tab:AddButton({ Name ="鸭Hub 🦆v2",    Callback = function()    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()    end})
Tab:AddButton({ Name = "林🌲卡密:林nb",    Callback = function()     lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()    end})
Tab:AddButton({ Name = "丁丁免费版🐌",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vvbnn/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E9%98%89%E5%89%B2.txt"))()    end})
Tab:AddButton({ Name = "皮👹",    Callback = function()    getgenv().XiaoPi="皮脚本QQ群1002100032" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()    end})
Tab:AddButton({	Name = "龙破解版🐛",	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/nahida-cn/Roblox/main/long"))()	end}) 
Tab:AddButton({ Name ="情云☁️",    Callback = function()    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()   end})
Tab:AddButton({	Name = "导管中心🙀修复版",	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox/main/%E6%9D%A1%E6%AC%BE%E5%8D%8F%E8%AE%AE.lua"))()	end})
Tab:AddButton({ Name ="退休(=´ᴥ`)",    Callback = function()   TUIXUI="作者退休☯︎"JIAOBEN="永久免费缝合"qun="809771141"loadstring(game:HttpGet("https://pastebin.com/raw/yPhwFHy4"))()   end}) 
Tab:AddButton({ Name ="皇🍋",    Callback = function()    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\87\115\78\83\122\78\110\100"))()    end}) 
Tab:AddButton({	Name = "xK脚本中心🕊️",	Callback = function()	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()	end})
Tab:AddButton({	Name = "Wus缝合脚本",	Callback = function()	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\84\72\68\90\69\80\47\104\104\104\47\109\97\105\110\47\37\69\57\37\57\51\37\56\49\37\69\57\37\57\51\37\56\49\37\69\53\37\56\49\37\57\67\37\69\53\37\56\49\37\57\67\37\69\53\37\56\49\37\57\67\34\41\41\40\41\10")()	end})
Tab:AddButton({	Name = "小达内部",	Callback = function()	xiaoda = "作者_小达"Xiaoda = "作者QQ_3491629303"XiaoDa = "QQ群_705257336"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\49\51\51\117\102\117\100\104\100\117\47\72\76\68\72\81\86\81\82\80\66\47\109\97\105\110\47\81\85\81\34\41\41\40\41\10")()	end})
Tab:AddButton({	Name = "NN中心",	Callback = function()	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\100\104\100\98\120\117\98\47\110\110\115\105\101\106\119\47\109\97\105\110\47\71\85\73\89\68\83\83\46\108\117\97\34\41\41\40\41\10")()	end})
Tab:AddButton({ Name ="黑鸦",    Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/game123xjp/arw.15604934247-bj/main/Protected_5884649977234684.txt"))()    end})
Tab:AddButton({	Name = "落叶🍃",	Callback = function()	getgenv().LS="落叶中心"loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()	end})
Tab:AddButton({ Name ="水💦卡密114514",    Callback = function()    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,99,102,102,99,106,104,104,110,118,118,49,47,100,100,100,47,109,97,105,110,47,101,106,101,106})end)())))()    end})
Tab:AddButton({	Name = "TB",	Callback = function()	_G["TB Script 作者:2537716078"]="TB Script Update the cloud"local SCC_CharPool={[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,80,75,67,54,106,56,77,53})end)()))}loadstring(game:HttpGet(SCC_CharPool[1],true))()	end})
Tab:AddButton({	Name = "tty",	Callback = function()	loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,115,107,103,51,55,65,100,106})end)())))()	end})
Tab:AddButton({ Name ="独家",    Callback = function()    loadstring(game:HttpGet("https://gitee.com/kbms1223/rbolox/raw/main/JIOBEN"))()    end})
Tab:AddButton({	Name = "幻想",	Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/RPMMiF5y"))()	end})
Tab:AddButton({	Name = "QI免费版",	Callback = function()	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\52\118\53\110\55\110\47\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\108\47\109\97\105\110\47\81\73\37\69\56\37\56\52\37\57\65\37\69\54\37\57\67\37\65\67\37\69\53\37\56\53\37\56\68\37\69\56\37\66\52\37\66\57\37\69\55\37\56\57\37\56\56\46\108\117\97\34\41\41\40\41\9\10")()	end})
Tab:AddButton({	Name = "绿",	Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/Esw6YQKR"))()	end})
Tab:AddButton({	Name = "缝合",	Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/htNFZ8vU"))()	end})
Tab:AddButton({	Name = "秋",	Callback = function()	_G[".秋·自制脚本 遗存抢救"]="2024dncxddtsnchzxtb0112"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,98,117,113,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67})end)())))()	end})
Tab:AddButton({ Name ="神光重置0.18",    Callback = function()    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,115,115,115,120,105,97,111,99,104,97,111,115,115,115,47,45,47,109,97,105,110,47,80,114,111,116,101,99,116,101,100,95,49,53,53,49,57,52,50,56,50,52,57,48,55,52,48,55,46,108,117,97})end)())))()    end})
Tab:AddButton({ Name ="猫剑😼卡密：支持猫王和阴星和龙和霖溺",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/kmlyfcbjyd/22222/main/Protected_7156604127243871.lua.txt", true))()    end})
Tab:AddButton({ Name ="霜",   Callback = function()    loadstring("\45\45\32\232\132\154\230\156\172\230\148\190\232\191\153\233\135\140\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\104\117\97\110\103\122\117\105\115\104\117\97\105\47\115\104\117\97\110\103\47\109\97\105\110\47\37\69\57\37\57\67\37\57\67\118\50\46\108\117\97\34\41\41\40\41\10")()    end})
Tab:AddButton({ Name ="黑子中心",    Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/mnMaZwBQ"))()    end})
Tab:AddButton({ Name ="脚本中心",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()    end}) 
Tab:AddButton({	Name = "操人脚本",	Callback = function()	--Variables
local SimpleSexGUI = Instance.new("ScreenGui")
local FGUI = Instance.new("Frame")
local btnNaked = Instance.new("TextButton")
local btnSex = Instance.new("TextButton")
local tbxVictim = Instance.new("TextBox")
local lblFUCKEMALL = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local lbltitle = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
--Properties
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui

FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true

lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操🖕"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20

btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "┐(´-｀)┌启动吧"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20

tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20

lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "一玩一个不吱声"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20

ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
--Scripts
btnSex.MouseButton1Click:Connect(function()
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end   end)   end})
local Tab =Window:MakeTab({	Name = "驾驶帝国",	Icon = "rbxassetid://18787314969",	PremiumOnly = false})
Tab:AddButton({    Name ="自动刷钱",    Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire"))()    end})
local Tab = Window:MakeTab({	Name = "鲨口求生2",	Icon = "rbxassetid://18787314969",	PremiumOnly = false})
Tab:AddDropdown({	Name = "免费船只",	Default = "1",	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},	Callback = function(Value)      local ohString1 = (Value)      game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)	end})
Tab:AddButton({	Name = "自动杀鲨鱼🦈",	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()  	end})
local Tab = Window:MakeTab({    Name = "DOORS🚪",    Icon = "rbxassetid://18923878915",    PremiumOnly = false})
Tab:AddButton({    Name ="小go制作",    Callback = function()    loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/DOORS%E9%BE%99%E6%94%B9")))()    end})
Tab:AddButton({    Name ="zs lll 2 卡密:nrty",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III"))()    end})
Tab:AddButton({    Name ="FLOOR2",    Callback = function()    loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()    end})
Tab:AddButton({    Name = "AND已汉化 推荐配合穿墙",    Callback = function()   --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()    end})
Tab:AddButton({    Name = "小go汉化版",   Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E4%B8%AD%E6%96%87%E7%89%88%20MS%20DOORS.lua"))()    end})
Tab:AddButton({    Name = "room自动走",   Callback = function()    loadstring(game:HttpGet("https://scriptblox.com/raw/DOORS-Auto-A1000-9285"))()    end})
Tab:AddButton({    Name ="嗯，xgo喜欢用😘",    Callback = function()   loadstring(game:HttpGet('https://rawscripts.net/raw/DOORS-FFJ-Hub-11365'))()   end})
Tab:AddDropdown({   Name = "脚本模式",	Default = "无",	Options = {"硬核模式", "硬核模式重置", "不可能模式", "Oof的不可能模式", "超级困难模式", "混乱模式", "EndlessDoors模式", "碎片模式", "管理员恶搞模式", "疯狂模式", "Plamen6789的硬核模式", "NAUTIC的硬核模式", "恐怖模式", "恶搞模式", ""},	Callback = function(a)    if a == "硬核模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/80Fi9ZaJ"),true))()    elseif a == "硬核模式重置" then    loadstring(game:HttpGet(("https://pastebin.com/raw/tufDF1vi"),true))()    elseif a == "不可能模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/YTbbweA8"),true))()    elseif a == "超级困难模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/8M9WjLKu"),true))()    elseif a == "混乱模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/HollowedOutMods/MayhemMode/main/loader.lua'))()    elseif a == "EndlessDoors模式" then    game.SoundService.AmbientReverb = "City"           loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()              loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/ScriptNoAchievements.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekeye.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekmodel.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/VictrolaRecreation.txt"))()            loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/MusicReplace.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/DeathSound.txt"))()    elseif a == "碎片模式" then    loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato032/Doors-Fragmented-Mode/main/ScriptDontShareItsOnDC.txt"))()    elseif a == "" then    local CoreGui = game:GetService("StarterGui")                            CoreGui:SetCore("SendNotification", {    Title = "🕊️",    Text = "选的空白是干什么？点错了吗？",    Duration = 2, })    elseif a == "管理员恶搞模式" then    Loadstring(game:HttpGet(("https://pastebin.com/raw/YgC1rSfw"),true))()    elseif a == "疯狂模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/DoorsModes/HardMode(Multplayer%2CProtected).lua'))()    elseif a == "Plamen6789的硬核模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()    elseif a == "NAUTIC的硬核模式" then    loadstring(game:HttpGet("https://glot.io/snippets/gp5pu59o7f/raw"))()    elseif a == "恐怖模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/AriSD2rK"),true))()    elseif a == "恶搞模式" then    loadstring(game:HttpGet('https://pastebin.com/raw/qP0QFU0D'))()    elseif a == "Oof的不可能模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()    end    end})
local Section = Tab:AddSection({	Name = "娱乐ก็ʕ•͡ᴥ•ʔ ก้也包括小go内置🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️"})
Tab:AddButton({    Name = "全局高亮",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()    end})
Tab:AddButton({    Name = "手电筒",  Callback = function()      loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()  	end})
Tab:AddButton({    Name ="吸铁石",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()    end})
Tab:AddButton({    Name ="剪刀",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()    end})
Tab:AddButton({    Name ="圣光炸弹我用过一次，不过炸完之后就不能游戏了，只能娱乐",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()    end})
Tab:AddButton({    Name ="臭猫😽  加载有点慢",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()    end})
Tab:AddButton({    Name ="控制物体大小的枪在不可能模式中使用",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/SizeChangerByNerd.lua"))()    end})
Tab:AddButton({    Name ="香蕉🍌枪只有在困难模式才能发射香蕉子弹",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()    end}) 
local Tab = Window:MakeTab({    Name = "压力🍏",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({    Name ="creepyV2.4",    Callback = function()    loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()    end})
Tab:AddButton({    Name ="无敌，唯一缺点就是能被机枪扫到",    Callback = function()   loadstring(game:HttpGet("https://rawscripts.net/raw/Pressure-*-Mode-15992"))()    end})
Tab:AddButton({    Name ="人机压力",    Callback = function()    loadstring(game:HttpGet(('https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure')))()    end})
local Tab = Window:MakeTab({    Name = "力量传奇💪",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({    Name ="小go力量传奇🕊️",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/main/%E5%8A%9B%E9%87%8F%E4%BC%A0%E5%A5%87"))()    end})
Tab:AddButton({	   Name = "剑客:需加群组",	Callback = function()      jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()	end})
Tab:AddButton({    Name ="力量heep",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()    end})
Tab:AddButton({    Name = "力量传奇修改力量",    Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()    end})
local Section = Tab:AddSection({	Name = "传送位置"})
Tab:AddButton({	Name = "传送到出生点",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)    end})
Tab:AddButton({	Name = "传送到冰霜健身房",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)   end})
Tab:AddButton({	Name = "传送到神话健身房",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)    end})
Tab:AddButton({	Name = "传送到永恒健身房",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)    end})
Tab:AddButton({	Name = "传送到传说健身房",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)    end})
Tab:AddButton({	Name = "传送到肌肉之王健身房",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)    end})
Tab:AddButton({	Name = "传送到安全岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)    end})
Tab:AddButton({	Name = "传送到幸运抽奖区域",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753) 	end})
local Tab = Window:MakeTab({    Name = "监狱人生",   Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({	Name = "手里剑（秒杀）",	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()  	end})
local Section = Tab:AddSection({	Name = "传送位置"})
Tab:AddButton({	Name = "警卫室",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)  	end})
Tab:AddButton({	Name = "监狱室内",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)  	end})
Tab:AddButton({	Name = "罪犯复活点",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)  	end})
Tab:AddButton({	Name = "监狱室外",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)  	end})
local Tab = Window:MakeTab({    Name = "战斗勇士",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({    Name = "xgo",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/xgo%20%E6%88%98%E6%96%97%E6%88%98%E5%A3%ABkk.lua"))()    end})
Tab:AddButton({    Name = "弓箭爆头",    Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()    end})
local Tab = Window:MakeTab({	Name = "忍者传奇👾",	Icon = "rbxassetid://18787314969",	PremiumOnly = false})
local Section = Tab:AddSection({	Name = "小go内置"})
autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break                end            end        end    )end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break                    end                end            end        end    )end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end               end
                if not autosellmax then
                    break               end            end        end    )end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end                end
                if not autobuyswords then
                    break                end            end        end    )end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                   end               end
                if not autobuybelts then
                    break                end          end        end    )end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break                end            end       end   )end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end           end
                if not autobuyskill then
                    break                end            end        end    )end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end                end
                if not autobuyshurikens then
                    break                end           end        end    )end
local Section = Tab:AddSection({	Name = "自动挥舞/售卖"})
Tab:AddToggle({        Name = "自动挥舞",        Default = false,        Callback = function(x)          autoswing = x            if autoswing then                swinging()            end        end    })
Tab:AddToggle({        Name = "自动售卖",        Default = false,        Callback = function(x)          autosell = x            if autosell then                selling()            end        end})
Tab:AddToggle({        Name = "存满了自动售卖",    Default = false,        Callback = function(x)            autosellmax = x          if autosellmax then                maxsell()            end        end})
local Section = Tab:AddSection({	Name = "自动购买功能"})
Tab:AddToggle({       Name = "自动购买剑",        Default = false,       Callback = function(x)            autobuyswords = x            if autobuyswords then                buyswords()            end        end})
Tab:AddToggle({        Name = "自动购买腰带",        Default = false,        Callback = function(x)            autobuybelts = x            if autobuybelts then                buybelts()            end        end})
Tab:AddToggle({        Name = "自动购买称号",        Default = false,        Callback = function(x)            autobuyranks = x            if autobuyranks then                buyranks()            end        end})
Tab:AddToggle({        Name = "自动购买忍术",        Default = false,        Callback = function(x)            autobuyskill = x            if autobuyskill then                buyskill()           end        end})
Tab:AddToggle({        Name = "自动购买",        Default = false,        Callback = function(x)            autobuyshurikens = x            if autobuyshurikens then                buyshurikens()            end        end})
Tab:AddButton({       Name = "解锁所有岛",        Callback = function()            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do              if v then                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame                    wait(.5)                end            end        end})
local Section = Tab:AddSection({	Name = "位置传送"})
Tab:AddButton({	Name = "传送到出生点",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)    end})
Tab:AddButton({	Name = "传送到附魔岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)    end})
Tab:AddButton({	Name = "传送到神秘岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)    end})
Tab:AddButton({	Name = "传送到太空岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)    end})
Tab:AddButton({	Name = "传送到冻土岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)    end})
Tab:AddButton({	Name = "传送到永恒岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)    end})
Tab:AddButton({	Name = "传送到沙暴岛",	Callback = function()   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)    end})
Tab:AddButton({	Name = "传送到雷暴岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)    end})
Tab:AddButton({	Name = "传送到远古炼狱岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)    end})
Tab:AddButton({	Name = "传送到午夜暗影岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)    end})
Tab:AddButton({	Name = "传送到神秘灵魂岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)    end})
Tab:AddButton({	Name = "传送到冬季奇迹岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)    end})
Tab:AddButton({	Name = "传送到黄金大师岛",	Callback = function()   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)    end})
Tab:AddButton({	Name = "传送到龙传奇岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)    end})
Tab:AddButton({	Name = "传送到赛博传奇岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)    end})
Tab:AddButton({ Name = "传送到天岚超能岛",	Callback = function()   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)    end})
Tab:AddButton({	Name = "传送到混沌传奇岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)    end})
Tab:AddButton({	Name = "传送到灵魂融合岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)    end})
Tab:AddButton({	Name = "传送到黑暗元素岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)    end})
Tab:AddButton({	Name = "传送到内心和平岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)    end})
Tab:AddButton({	Name = "传送到炽烈漩涡岛",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)    end})
Tab:AddButton({	Name = "传送到35倍金币区域",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)    end})
Tab:AddButton({	Name = "传送到死亡宠物",	Callback = function()    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)    end})
local Section = Tab:AddSection({	Name = "其他脚本"})
Tab:AddButton({    Name ="安",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/ninjalegend')))()    end})
Tab:AddButton({	Name = "剑客:需加群组",	Callback = function()         jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()	end})
local Tab = Window:MakeTab({    Name = "极速传奇⛷",    Icon = "rbxassetid://18942670945",    PremiumOnly = false})
local Section = Tab:AddSection({	Name = "小go内置"})
Tab:AddTextbox({	Name = "腰角高  可在空中移动 设置高度",	Default = " ",	TextDisappear = false,	Callback = function(phh)		game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh	end	  })
Tab:AddButton({	Name = "开启卡宠",	Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/BYJUBDuz"))()	end})
Tab:AddButton({	Name = "反踢出 小go推荐卡宠使用，降低被踢风险",	Callback = function()      	local vu = game:GetService("VirtualUser")            game:GetService("Players").LocalPlayer.Idled:connect(function()                   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)                    wait(1)               vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)            end)		end })
Tab:AddButton({	Name = "低分辨率图形",	Callback = function()
      	        _G.Settings = {
            Players = {
                ["Ignore Me"] = true, -- Ignore your Character
                ["Ignore Others"] = true -- Ignore other Characters
            },
            Meshes = {
            Destroy = false,
            LowDetail = true
        },
        Images = {
            Invisible = true,
            LowDetail = false,
            Destroy = false,
        },
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
        loadstring(game:HttpGet("https://pastebin.com/raw/EzbhQJMi"))()	
	end    })
Tab:AddButton({	Name = "自动重生和自动刷等级",	Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()          	end    })
Tab:AddToggle({	Name = "自动重生",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "固定地点刷跳圈",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                local children = workspace.Hoops:GetChildren()                   for i, child in ipairs(children) do                    if child.Name == "Hoop" then                         child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame                   end                end        end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "自动黄色球体(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") 
           end
        else
           _G.loop = false
        end	end    })
Tab:AddToggle({	Name = "自动红色球体(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
           end
        else
           _G.loop = false
        end    end    })
Tab:AddToggle({	Name = "自动宝石球(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
           end
        else
           _G.loop = false
        end	end    })
Tab:AddSection({	Name = "雪城"})
Tab:AddToggle({	Name = "自动黄色球体(x50)",
	Default = false,
	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
           end
        else
           _G.loop = false
        end	end    })
Tab:AddToggle({	Name = "自动红色球体(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
           end
        else
           _G.loop = false
        end    end    })
Tab:AddToggle({	Name = "自动宝石球(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
           end
        else
           _G.loop = false
        end    end    })
Tab:AddToggle({	Name = "自动宝石球(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
           end
        else
           _G.loop = false
        end	end    })
Tab:AddSection({	Name = "岩浆城"})
Tab:AddToggle({	Name = "自动黄色球体(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
           end
        else
           _G.loop = false
        end	end    })
Tab:AddToggle({	Name = "自动红色球体(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") 
           end
        else
           _G.loop = false
        end    end    })
Tab:AddToggle({	Name = "自动宝石球(x50)",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
           end
        else
           _G.loop = false
        end	end    })
local MainCrystalsSection = Tab:AddSection({	Name = "城市抽奖区"})
Tab:AddToggle({	Name = "红色水晶",	Default = false,	Callback = function(state)
		if state then
           _G.loop = true
           while _G.loop == true do wait()
                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
           end
        else
           _G.loop = false
        end	end    })
Tab:AddToggle({	Name = "紫色水晶",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "黄色晶体",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "闪电水晶",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "雪晶",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")            end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "地狱水晶",	Default = false,	Callback = function(state)		if state then          _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "欧米伽晶体",	Default = false,	Callback = function(state)		if state then          _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")           end        else           _G.loop = false        end	end    })
local SpaceCrystalsSection = Tab:AddSection({	Name = "太空抽奖"})
Tab:AddToggle({	Name = "太空晶体",	Default = false,	Callback = function(state)		if state then           _G.loop = true          while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Space Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "异形晶体",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Alien Crystal")           end        else           _G.loop = false        end	end    })
local DesertCrystalsSection = Tab:AddSection({	Name = "沙漠抽奖区"})
Tab:AddToggle({	Name = "沙漠水晶",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")           end        else           _G.loop = false        end	end    })
Tab:AddToggle({	Name = "电子晶体",	Default = false,	Callback = function(state)		if state then           _G.loop = true           while _G.loop == true do wait()                 game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Crystal")           end        else           _G.loop = false      end	end    })
local Section = Tab:AddSection({	Name = "传送城市和赛道"})
Tab:AddButton({	Name = "城市",	Callback = function()      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-559.2, -7.45058e-08, 417.4))	end    })
Tab:AddButton({	Name = "雪城",	Callback = function()     	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-858.358, 0.5, 2170.35))	end    })
Tab:AddButton({	Name = "岩浆城",	Callback = function()      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1707.25, 0.550008, 4331.05))	end    })
Tab:AddButton({	Name = "传奇公路",	Callback = function()      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3594.68, 214.804, 7274.56))	end    })
Tab:AddButton({	Name = "草原赛道",	Callback = function()      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1687.65, 1.007, -5943.91))	end    })
Tab:AddButton({	Name = "沙漠赛道",	Callback = function()      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(58.8, 1.007, -8684.72))	end    })
Tab:AddButton({	Name = "岩浆赛道",	Callback = function()     	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1013.4, 1.007, -10997))	end    })
local Section = Tab:AddSection({	Name = "其他脚本"})
Tab:AddButton({   Name ="xgo极速",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87.lua"))()    end})
Tab:AddButton({   Name ="超级简洁ui",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/GoodScript/main/LegendOfSpeed(Chinese)"))()    end})
Tab:AddButton({    Name =" AL有交易恶心系统",    Callback = function()    AL = "制作人员 123fa98（AL）"loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/Roblox/main/%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87.lua"))()    end})
Tab:AddButton({    Name ="安",    Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/speedoflegend')))()    end})
Tab:AddButton({	Name = "剑客:需要加群组",	Callback = function()        jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()	end})
local Tab = Window:MakeTab({    Name = "彩虹朋友🌈",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({	Name = "第1个ฅ●ω●ฅ",	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()	end})
local Tab = Window:MakeTab({    Name = "健身房联盟🤝",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({   Name ="安",   Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/Gymlm')))()    end})
local Tab = Window:MakeTab({    Name = "河北唐县",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({    Name ="小go1.0",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%B2%B3%E5%8C%97%E5%94%90%E5%8E%BF%20.lua"))()    end})
Tab:AddButton({    Name ="小go（仅供测试）",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E6%B2%B3%E5%8C%97%E5%94%90%E5%8E%BF"))()    end})
Tab:AddButton({    Name ="皮",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/Pi-script-Hebeitangxian.lua"))()    end})
Tab:AddButton({    Name ="卡车刷钱",    Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/ok/T%20ang%20County"))()    end})
local Tab = Window:MakeTab({    Name = "疯狂电梯",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
Tab:AddButton({	Name = "传送VIP室",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1883.12255859375, -396.84991455078125, 908.6722412109375)   end})
Tab:AddButton({	Name = "传送大厅",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1916.0081787109375, -396.90020751953125, 926.0120239257812)   end})
Tab:AddButton({	Name = "传送游戏",	Callback = function()	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.3450292348861694, 3.999999761581421, -8.305864334106445)   end})
Tab:AddButton({    Name = "自动比赛",    Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/r5b265Zy"))()    end})
Tab:AddButton({    Name = "疯狂电梯1",    Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/Darkmoonxhubscript/Darkmoonx1/main/Script'))()    end})
local Auto = Window:MakeTab({	Name = "给新手大亨喂食",	Icon = "rbxassetid://18787314969",	PremiumOnly = false})
Auto:AddToggle({	Name = "自动收集",	Callback = function(value)		autoCollectEnabled = value        autoCollect()  	end    })
Auto:AddToggle({	Name = "自动卖",	Callback = function(value)		autoSellEnabled = value        autoSell()  	end    })
Auto:AddToggle({	Name = "自动购买",	Callback = function(value)		autoBuyEnabled = value        autoBuy()  	end    })
Auto:AddToggle({	Name = "自动obby",	Callback = function(value)		autoObbyEnabled = value        autoObby()  	end    })
Auto:AddToggle({	Name = "控制单击TP",	Callback = function()        clickTpEnabled = not clickTpEnabled        game:GetService("UserInputService").InputBegan:Connect(teleportLocalPlayer)  	end    })
local Tab = Window:MakeTab({	Name = "目标模拟器",	Icon = "rbxassetid://18787314969",	PremiumOnly = false})
Tab:AddSlider({Name = "准确性",Min = 0.1,Max = 1,Default = 1,Increment = 0.1,ValueName = "Accuracy xgo 无敌",Callback = function(value)    shared.accuracy = value           end})
Tab:AddToggle({Name = "踢瞄准",Default = false,Callback = function(value)    shared.aimbot = value           end})
local old = nil           old = hookmetamethod(game,"__namecall",function(self,...)
local args = {...}    local method = getnamecallmethod()    if args[1] == "Throw" and type(args[2]) == "number" and shared.aimbot then       args[2] = shared.accuracy      return self.InvokeServer(self,unpack(args))   elseif method == "IsKeyDown" then        return true    end    return old(self,...)    end)
Tab:AddToggle({Name = "自动踢",Default = false,Callback = function(value)    shared.autokick = value       end})
resume(create(function()    while true do wait()        if shared.autokick then
local ohString1 = "Throw"
local ohNumber2 = shared.accuracy           game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohNumber2)        end    end      end))
Tab:AddDropdown({	Name = "选择升级",	Default = "无",	Options = {"KickPower","KickAccuracy","Speed"},	Callback = function(Value)	    shared.upgrade = Value	end    })
Tab:AddDropdown({	Name = "升级金额",	Default = "无",	Options = {"1","3","10","Max"},	Callback = function(Value)	    shared.upgradeamount = Value	end    })
Tab:AddToggle({Name = "自动升级",Default = false,Callback = function(value)    shared.autoupgrade = value        end})
resume(create(function()    while true do wait()        if shared.autoupgrade and shared.upgrade ~= nil and shared.upgradeamount ~= "Max" then
local ohString1 = "UpgradeStats"
local ohString2 = shared.upgrade
local ohNumber3 = tonumber(shared.upgradeamount)           game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohString2, ohNumber3)        elseif shared.autoupgrade and shared.upgrade ~= nil and shared.upgradeamount ~= nil then
local ohString1 = "UpgradeStats"
local ohString2 = shared.upgrade
local ohNumber3 = math.huge            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohString2, ohNumber3)                    end    end      end))
local Tab = Window:MakeTab({    Name = "goto☃️",    Icon = "rbxassetid://18787314969",    PremiumOnly = false})
local Section = Tab:AddParagraph("xgo 留言", "你可以理解为其他游戏脚本在里边，主要的那些通用都在这边有的一些是之前加的，我就不想搬过去了 V2和v1都会覆盖,这两个是我的宝藏，里面都是游戏脚本,这两个我基本会随机添加几个游戏在里面.")
local Section = Tab:AddSection({	Name = "goto游戏中心💗💗💗💗💗💗💗💗💗💗💗💗🕊️爱你们🕊️💗💗💗💗💗💗💗💗💗💗💗💗💗💗"})
Tab:AddButton({    Name="游戏v1",    Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628IIIIlllllliilililIIlll.YXZX.LUA/refs/heads/main/V1"))()  end})
Tab:AddButton({    Name="游戏v2",    Callback=function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628IIIIlllllliilililIIlll.YXZX.LUA/refs/heads/main/V2"))()  end})
---Bypass----

local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)

---Potion---

_G.GetPotion = {
	["Grug"] = {"Mushroom"},
	["idIot"] = {"Cake Mix"},
	["Nightmare"] = {"Dark Root","Dark Root","Dark Root"},
	["Confusion"] = {"Red Crystal","Blue Crystal","Glowing Mushroom"},
	["Power"] = {"Dire Flower","Red Crystal","Wild Vine"},
	["Paralyzing"] = {"Plane Flower","Plane Flower"},
	["Haste"] = {"Autumn Sprout","Jade Stone"},
	["Invisibility"] = {"Hazel Lily","Hazel Lily","Blue Crystal"},
	["Explosion"] = {"Red Crystal","Fire Flower","Fire Flower"},
	["Invincible"] = {"Elder Wood","Mushroom","Mushroom"},
	["Toxic"] = {"Dark Root","Dark Root","Blood Rose","Red Crystal"},
	["Freeze"] = {"Winter Rose","Winter Rose","Wild Vine","Blue Crystal","Glowing Mushroom"},
	["Feather"] = {"Mushroom","Hazel Lily"},
	["Speed"] = {"Mushroom","Mushroom","Plane Flower","Hazel Lily","Blue Crystal"},
	["Lethal"] = {"Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root"},
	["Slow"] = {"Mushroom","Mushroom","Blue Crystal","Blue Crystal","Jade Stone","Plane Flower"},
	["Antitoxin"] = {"Blue Crystal","Glowing Mushroom","Plane Flower","Plane Flower","Elder Wood"},
	["Corrupted Vine"] = {"Wild Vine","Wild Vine","Wild Vine","Blood Rose","Dark Root","Elder Wood","Jade Stone"},
	["Field"] = {"Hazel Lily","Plane Flower","Plane Flower"}
}

---GetSome---

if not game.ReplicatedStorage:FindFirstChild("robAnimation") then
local robAnim = Instance.new("Animation")
robAnim.AnimationId = "rbxassetid://13675136513"
robAnim.Parent = game.ReplicatedStorage
robAnim.Name = "robAnimation"
end

if game.Workspace:FindFirstChild("NametagChanged") == nil then
local NametagChanged = Instance.new("StringValue", workspace)
NametagChanged.Name = "NametagChanged"
NametagChanged.Value = ""

local SlapChanged = Instance.new("StringValue", NametagChanged)
SlapChanged.Name = "SlapChanged"
SlapChanged.Value = ""
end

function SpamBaller()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
while _G.BallerFarm do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(30.05)
end
end
end

function SpamReplica()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" and game.Players.LocalPlayer.Character.IsInDefaultArena.Value == true then
while ReplicaFarm do
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
wait(20)
end
end
end

function SpamBlink()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Blink" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
while BlinkFarm do
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
task.wait(50.05)
end
end
end

function SpamReplicaBaller()
if _G.GetTeleport == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
while ReplicaBallerFarm do
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.25)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(0.09)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.25)
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.25)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.5)
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(20)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(workspace.Lobby.Baller.ClickDetector)
end
end

function SpamReplicaBlinkReverseAndBaller()
if _G.GetTeleport == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
while _G.ReplicaBlinkReverseBaller do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
wait()
fireclickdetector(workspace.Lobby.Blink.ClickDetector)
wait(0.05)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.08)
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
wait(0.05)
fireclickdetector(workspace.Lobby.Baller.ClickDetector)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(0.09)
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
wait(2.5)
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
wait(0.1)
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.1)
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.04)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.3)
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(20)
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
wait(3.75)
fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
wait(0.8)
end
end
end

function SpamReplicaReverse()
if _G.GetTeleport == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
while ReplicaAndReverseGet do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
wait()
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.01)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.04)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.1)
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(20)
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
wait(3.75)
fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
wait(0.8)
end
end
end

function SpamBlinkReverse()
if _G.GetTeleport == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
while _G.BlinkAndReverseGet do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
wait()
fireclickdetector(workspace.Lobby.Blink.ClickDetector)
wait(0.01)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.04)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.1)
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
wait(50.05)
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
wait(3.75)
fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
wait(0.8)
end
end
end

function SpamReplicaBallerBlink()
if _G.GetTeleport == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
while ReplicaBallerBlinkFarm do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(0.25)
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
fireclickdetector(workspace.Lobby.Baller.ClickDetector)
wait(0.25)
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.25)
if _G.GetTeleport == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleport == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleport == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(0.25)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(0.09)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.5)
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(20)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(workspace.Lobby.Blink.ClickDetector)
end
end

---SafeSpotBox---

if workspace:FindFirstChild("SafeBox") == nil then
local S = Instance.new("Part")
S.Name = "SafeBox"
S.Anchored = true
S.CanCollide = true
S.Transparency = .5
S.Position = Vector3.new(-5500, -5000, -5000)
S.Size = Vector3.new(21, 5, 21)
S.Parent = workspace

local S1 = Instance.new("Part")
S1.Name = "S1"
S1.Anchored = true
S1.CanCollide = true
S1.Transparency = .5
S1.Position = Vector3.new(-5499.91, -4991.5, -4989.09)
S1.Size = Vector3.new(20, 13, 2)
S1.Parent = workspace:FindFirstChild("SafeBox")

local S2 = Instance.new("Part")
S2.Name = "S2"
S2.Anchored = true
S2.CanCollide = true
S2.Transparency = .5
S2.Position = Vector3.new(-5510.27979, -4991.5, -5000.08984, -4.47034836e-07, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, -3.69319451e-07)
S2.Size = Vector3.new(21, 14, 2)
S2.Rotation = Vector3.new(0, -90, 0)
S2.Parent = workspace:FindFirstChild("SafeBox")

local S3 = Instance.new("Part")
S3.Name = "S3"
S3.Anchored = true
S3.CanCollide = true
S3.Transparency = .5
S3.Position = Vector3.new(-5499.3, -4991.5, -5011.12)
S3.Size = Vector3.new(21, 13, 2)
S3.Parent = workspace:FindFirstChild("SafeBox")

local S4 = Instance.new("Part")
S4.Name = "S4"
S4.Anchored = true
S4.CanCollide = true
S4.Transparency = .5
S4.Position = Vector3.new(-5489.97559, -4991.5, -4999.52637, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
S4.Size = Vector3.new(22, 13, 2)
S4.Rotation = Vector3.new(0, -90, 0)
S4.Parent = workspace:FindFirstChild("SafeBox")

local S5 = Instance.new("Part")
S5.Name = "S5"
S5.Anchored = true
S5.CanCollide = true
S5.Transparency = .5
S5.Position = Vector3.new(-5499.39, -4984, -5000.07)
S5.Size = Vector3.new(24, 3, 24)
S5.Parent = workspace:FindFirstChild("SafeBox")
end

---Bed---

if workspace:FindFirstChild("Bed") == nil then
local Bed = Instance.new("Part")
Bed.Name = "Bed"
Bed.Anchored = true
Bed.Position = Vector3.new(-100019.5, 104, -1500)
Bed.Size = Vector3.new(0.01, 0.01, 10)
Bed.Parent = workspace

local B1 = Instance.new("Part")
B1.Name = "Bed1"
B1.Anchored = true
B1.Position = Vector3.new(-100025, 104, -1500)
B1.Size = Vector3.new(1, 6, 7)
B1.BrickColor = BrickColor.new("Burnt Sienna")
B1.Parent = workspace:FindFirstChild("Bed")

local B2 = Instance.new("Part")
B2.Name = "Bed2"
B2.Anchored = true
B2.Position = Vector3.new(-100023, 104.5, -1500)
B2.Size = Vector3.new(2, 1, 6)
B2.BrickColor = BrickColor.new("Mid gray")
B2.Parent = workspace:FindFirstChild("Bed")

local B3 = Instance.new("Part")
B3.Name = "Bed3"
B3.Anchored = true
B3.Position = Vector3.new(-100019, 104, -1500)
B3.Size = Vector3.new(11, 1, 7)
B3.BrickColor = BrickColor.new("Crimson")
B3.Parent = workspace:FindFirstChild("Bed")

local B4 = Instance.new("Part")
B4.Name = "Bed4"
B4.Anchored = true
B4.Position = Vector3.new(-100013, 104, -1500)
B4.Size = Vector3.new(1, 6, 7)
B4.BrickColor = BrickColor.new("Burnt Sienna")
B4.Parent = workspace:FindFirstChild("Bed")

local B5 = Instance.new("Part")
B5.Name = "Bed5"
B5.Anchored = true
B5.Position = Vector3.new(-100019, 103, -1500)
B5.Size = Vector3.new(11, 1, 7)
B5.BrickColor = BrickColor.new("Dark orange")
B5.Parent = workspace:FindFirstChild("Bed")
end

---SafeSpot---

if workspace:FindFirstChild("Safespot") == nil then
local Safespot = Instance.new("Part",workspace)
Safespot.Name = "Safespot"
Safespot.Position = Vector3.new(10000,-50,10000)
Safespot.Size = Vector3.new(500,10,500)
Safespot.Anchored = true
Safespot.CanCollide = true
Safespot.Transparency = .5

local Safespot1 = Instance.new("Part",workspace)
Safespot1.Name = "DefendPart"
Safespot1.Position = Vector3.new(10000.2, 13, 9752.45)
Safespot1.Size = Vector3.new(500, 117, 5)
Safespot1.Anchored = true
Safespot1.CanCollide = true
Safespot1.Transparency = .5
Safespot1.Parent = game.workspace.Safespot

local Safespot2 = Instance.new("Part",workspace)
Safespot2.Name = "DefendPart1"
Safespot2.Position = Vector3.new(10248.2, 13, 10002.4)
Safespot2.Size = Vector3.new(5, 117, 496)
Safespot2.Anchored = true
Safespot2.CanCollide = true
Safespot2.Transparency = .5
Safespot2.Parent = game.workspace.Safespot

local Safespot3 = Instance.new("Part",workspace)
Safespot3.Name = "DefendPart2"
Safespot3.Position = Vector3.new(9998.13, 13, 10247.2)
Safespot3.Size = Vector3.new(497, 117, 6)
Safespot3.Anchored = true
Safespot3.CanCollide = true
Safespot3.Transparency = .5
Safespot3.Parent = game.workspace.Safespot

local Safespot4 = Instance.new("Part",workspace)
Safespot4.Name = "DefendPart3"
Safespot4.Position = Vector3.new(9752.71, 13, 9999.28)
Safespot4.Size = Vector3.new(7, 117, 490)
Safespot4.Anchored = true
Safespot4.CanCollide = true
Safespot4.Transparency = .5
Safespot4.Parent = game.workspace.Safespot

local Safespot5 = Instance.new("Part",workspace)
Safespot5.Name = "DefendPart4"
Safespot5.Position = Vector3.new(10001.1, 76, 9999.66)
Safespot5.Size = Vector3.new(491, 10, 491)
Safespot5.Anchored = true
Safespot5.CanCollide = true
Safespot5.Transparency = .5
Safespot5.Parent = game.workspace.Safespot
end

---AntiVoidBadge---

if workspace:FindFirstChild("Psycho") == nil then
local Psycho = Instance.new("Part", workspace)
Psycho.Position = Vector3.new(17800.9082, 2947, -226.017517, -0.248515129, 0.00487846136, -0.968615651, 0.966844261, -0.0594091415, -0.248359889, -0.0587562323, -0.998221755, 0.0100474358)
Psycho.Name = "Psycho"
Psycho.Size = Vector3.new(2000, 1, 2000)
Psycho.Material = "ForceField"
Psycho.Anchored = true
Psycho.Transparency = 1
Psycho.CanCollide = false

local Kraken = Instance.new("Part", Psycho)
Kraken.Position = Vector3.new(221, 29, -12632)
Kraken.Name = "Kraken"
Kraken.Size = Vector3.new(2000, 1, 2000)
Kraken.Material = "ForceField"
Kraken.Anchored = true
Kraken.Transparency = 1
Kraken.CanCollide = false

local Retro1 = Instance.new("Part", Psycho)
Retro1.Position = Vector3.new(-16643.62890625, 770.0464477539062, 4707.8193359375)
Retro1.Name = "Retro1"
Retro1.Size = Vector3.new(2000, 1, 2000)
Retro1.Material = "ForceField"
Retro1.Anchored = true
Retro1.Transparency = 1
Retro1.CanCollide = false

local Retro2 = Instance.new("Part", Retro1)
Retro2.Position = Vector3.new(-16862.791015625, -7.879573822021484, 4791.55517578125)
Retro2.Name = "Retro2"
Retro2.Size = Vector3.new(2000, 1, 2000)
Retro2.Material = "ForceField"
Retro2.Anchored = true
Retro2.Transparency = 1
Retro2.CanCollide = false

local Retro3 = Instance.new("Part", Retro1)
Retro3.Position = Vector3.new(-28023.3046875, -219.92381286621094, 4906.6015625)
Retro3.Name = "Retro3"
Retro3.Size = Vector3.new(2000, 1, 2000)
Retro3.Material = "ForceField"
Retro3.Anchored = true
Retro3.Transparency = 1
Retro3.CanCollide = false
end

---Anti Void---

if workspace:FindFirstChild("BobWalk1") == nil then
local BobWalk1 = Instance.new("Part", workspace)
BobWalk1.CanCollide = false
BobWalk1.Anchored = true
BobWalk1.CFrame = CFrame.new(23.2798462, -19.8447475, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk1.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk1.Name = "BobWalk1"
BobWalk1.Transparency = 1

local BobWalk2 = Instance.new("Part", BobWalk1)
BobWalk2.CanCollide = false
BobWalk2.Anchored = true
BobWalk2.CFrame = CFrame.new(-458.458344, -9.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk2.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk2.Name = "BobWalk2"
BobWalk2.Transparency = 1

local BobWalk3 = Instance.new("Part", BobWalk1)
BobWalk3.CanCollide = false
BobWalk3.Anchored = true
BobWalk3.CFrame = CFrame.new(-690.65979, 47.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk3.Size = Vector3.new(674.8563232421875, 0.6048492789268494, 2048)
BobWalk3.Name = "BobWalk3"
BobWalk3.Transparency = 1

local BobWalk4 = Instance.new("Part", BobWalk1)
BobWalk4.CanCollide = false
BobWalk4.Anchored = true
BobWalk4.CFrame = CFrame.new(402.964996, 29.25, 222.310089, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk4.Size = Vector3.new(379.88922119140625, 1.5, 160.8837127685547)
BobWalk4.Name = "BobWalk4"
BobWalk4.Transparency = 1

local BobWalk5 = Instance.new("Part", BobWalk1)
BobWalk5.CanCollide = false
BobWalk5.Anchored = true
BobWalk5.Orientation = Vector3.new(0, 0, 171.728)
BobWalk5.CFrame = CFrame.new(178.719162, -18.9417267, 1.83554196, -0.989596844, -0.143868446, 0, 0.143868446, -0.989596844, 0, 0, 0, 1)
BobWalk5.Size = Vector3.new(143.94830322265625, 1.5, 2048)
BobWalk5.Name = "BobWalk5"
BobWalk5.Transparency= 1

local BobWalk6 = Instance.new("Part", BobWalk1)
BobWalk6.CanCollide = false
BobWalk6.Anchored = true
BobWalk6.Orientation = Vector3.new(0, 0, 144.782)
BobWalk6.CFrame = CFrame.new(-309.152832, 15.4761791, 1.83554196, -0.816968799, -0.576681912, 0, 0.576681912, -0.816968799, 0, 0, 0, 1)
BobWalk6.Size = Vector3.new(110.13511657714844, 2.740000009536743, 2048)
BobWalk6.Name = "BobWalk6"
BobWalk6.Transparency = 1

local BobWalk7 = Instance.new("Part", BobWalk1)
BobWalk7.CanCollide = false
BobWalk7.Anchored = true
BobWalk7.Orientation = Vector3.new(0, 0, -147.002)
BobWalk7.CFrame = CFrame.new(174.971924, 5.34897423, 222.310089, -0.838688731, 0.544611216, 0, -0.544611216, -0.838688731, 0, 0, 0, 1)
BobWalk7.Size = Vector3.new(89.76103210449219, 1.5, 160.8837127685547)
BobWalk7.Name = "BobWalk7"
BobWalk7.Transparency = 1

local BobWalk8 = Instance.new("Part", BobWalk1)
BobWalk8.CanCollide = false
BobWalk8.Anchored = true
BobWalk8.Orientation = Vector3.new(0.001, -90.002, -138.076)
BobWalk8.CFrame = CFrame.new(402.965027, 5.49165154, 74.8157959, 2.98023224e-05, -1.14142895e-05, -1, -0.668144584, -0.744031429, -1.14142895e-05, -0.744031489, 0.668144584, -2.98023224e-05)
BobWalk8.Size = Vector3.new(74.23055267333984, 1, 379.88922119140625)
BobWalk8.Name = "BobWalk8"
BobWalk8.Transparency = 1

local BobWalk9 = Instance.new("Part", BobWalk1)
BobWalk9.CanCollide = false
BobWalk9.Anchored = true
BobWalk9.CFrame = CFrame.new(402.964996, 29.9136467, 121.981705, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk9.Size = Vector3.new(379.88922119140625, 1.5, 39.77305603027344)
BobWalk9.Name = "BobWalk9"
BobWalk9.Transparency = 1

local BobWalk10 = Instance.new("WedgePart", BobWalk1)
BobWalk10.CanCollide = false
BobWalk10.Anchored = true
BobWalk10.Orientation = Vector3.new(-30.453, 117.775, -102.906)
BobWalk10.CFrame = CFrame.new(134.084229, -17.8583984, 94.3953705, 0.541196942, -0.354067981, 0.762719929, -0.840263784, -0.192543149, 0.506837189, -0.0325982571, -0.915184677, -0.401714325)
BobWalk10.Size = Vector3.new(1, 88.66793823242188, 34.42972946166992)
BobWalk10.Name = "BobWalk10"
BobWalk10.Transparency = 1

local BobWalk11 = Instance.new("WedgePart", BobWalk1)
BobWalk11.CanCollide = false
BobWalk11.Anchored = true
BobWalk11.Orientation = Vector3.new(-29.779, 117.596, -13.193)
BobWalk11.CFrame = CFrame.new(168.441879, 2.46393585, 125.815231, -0.350553155, -0.534268022, 0.769201458, -0.198098332, 0.845035911, 0.496660322, -0.915352523, 0.0217281878, -0.402067661)
BobWalk11.Size = Vector3.new(1, 0.9999924302101135, 82.1865463256836)
BobWalk11.Name = "BobWalk11"
BobWalk11.Transparency = 1

local BobWalk12 = Instance.new("WedgePart", BobWalk1)
BobWalk12.CanCollide = false
BobWalk12.Anchored = true
BobWalk12.Orientation = Vector3.new(26.893, -124.388, -108.64)
BobWalk12.CFrame = CFrame.new(206.315063, 26.9295502, 105.471031, 0.534210563, -0.415855825, -0.73599112, -0.845072925, -0.285055399, -0.452321947, -0.021697551, 0.863601387, -0.503708005)
BobWalk12.Size = Vector3.new(1, 13.53612232208252, 9.847718238830566)
BobWalk12.Name = "BobWalk12"
BobWalk12.Transparency = 1

local BobWalk13 = Instance.new("WedgePart", BobWalk1)
BobWalk13.CanCollide = false
BobWalk13.Anchored = true
BobWalk13.Orientation = Vector3.new(-26.893, 55.613, 108.64)
BobWalk13.CFrame = CFrame.new(165.965088, 2.12955856, 77.8575592, -0.53421092, -0.415855944, 0.735991359, 0.845073164, -0.285055757, 0.452322066, 0.0216975808, 0.863601625, 0.503708005)
BobWalk13.Size = Vector3.new(1, 13.53612232208252, 99.8001480102539)
BobWalk13.Name = "BobWalk13"
BobWalk13.Transparency = 1

local BobWalk14 = Instance.new("WedgePart", BobWalk1)
BobWalk14.CanCollide = false
BobWalk14.Anchored = true
BobWalk14.Orientation = Vector3.new(-0.001, 90.003, 48.072)
BobWalk14.CFrame = CFrame.new(172.67041, 5.49164963, 74.8157959, -4.58955765e-05, 2.05039978e-05, 1, 0.743987858, 0.668193102, 2.05039978e-05, -0.668193102, 0.743987858, -4.58955765e-05)
BobWalk14.Size = Vector3.new(1, 74.23055267333984, 80.699951171875)
BobWalk14.Name = "BobWalk14"
BobWalk14.Transparency = 1

local BobWalk15 = Instance.new("WedgePart", BobWalk1)
BobWalk15.CanCollide = false
BobWalk15.Anchored = true
BobWalk15.Orientation = Vector3.new(0, 0, 106.498)
BobWalk15.CFrame = CFrame.new(212.753906, 30.0632439, 121.981705, -0.283976078, -0.95883137, 0, 0.95883137, -0.283976078, 0, 0, 0, 1)
BobWalk15.Size = Vector3.new(1, 0.8520558476448059, 39.773048400878906)
BobWalk15.Name = "BobWalk15"
BobWalk15.Transparency = 1

local BobWalk16 = Instance.new("WedgePart", BobWalk1)
BobWalk16.CanCollide = false
BobWalk16.Anchored = true
BobWalk16.Orientation = Vector3.new(29.777, -62.406, -75.066)
BobWalk16.CFrame = CFrame.new(212.884216, 30.1233234, 121.984734, 0.544644356, 0.33412537, -0.769235253, -0.838644743, 0.223680317, -0.496630788, 0.00612583756, 0.915602207, 0.402038693)
BobWalk16.Size = Vector3.new(1, 36.08900451660156, 16.739320755004883)
BobWalk16.Name = "BobWalk16"
BobWalk16.Transparency = 1

local BobWalk17 = Instance.new("WedgePart", BobWalk1)
BobWalk17.CanCollide = false
BobWalk17.Anchored = true
BobWalk17.Orientation = Vector3.new(-29.777, 117.594, 75.066)
BobWalk17.CFrame = CFrame.new(174.83577, 5.55865097, 141.871262, -0.544644356, 0.33412537, 0.769235253, 0.838644743, 0.223680317, 0.496630788, -0.00612583756, 0.915602207, -0.402038693)
BobWalk17.Size = Vector3.new(1, 36.08900451660156, 82.1865463256836)
BobWalk17.Name = "BobWalk17"
BobWalk17.Transparency = 1

local BobWalk18 = Instance.new("WedgePart", BobWalk1)
BobWalk18.CanCollide = false
BobWalk18.Anchored = true
BobWalk18.Orientation = Vector3.new(30.453, -62.225, 102.906)
BobWalk18.CFrame = CFrame.new(165.427338, 2.97219658, 77.884697, -0.541196942, -0.354067981, -0.762719929, 0.840263784, -0.192543149, -0.506837189, 0.0325982571, -0.915184677, 0.401714325)
BobWalk18.Size = Vector3.new(1, 88.66793823242188, 47.76289749145508)
BobWalk18.Name = "BobWalk18"
BobWalk18.Transparency = 1
end

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(-80.5, -10.005, -246.5)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 1, 2048)
VoidPart.Material = "ForceField"
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local VoidPart1 = Instance.new("Part", VoidPart)
VoidPart1.Position = Vector3.new(0,-50026.5,0)
VoidPart1.Name = "VoidPart1"
VoidPart1.Size = Vector3.new(2048,70,2048)
VoidPart1.Anchored = true
VoidPart1.Transparency = 1
VoidPart1.CanCollide = false

local TournamentAntiVoid = Instance.new("Part", VoidPart)
TournamentAntiVoid.Name = "TAntiVoid"
TournamentAntiVoid.Size = Vector3.new(2048, 15, 2048)
TournamentAntiVoid.Position = Vector3.new(3450, 59.009, 68)
TournamentAntiVoid.Anchored = true
TournamentAntiVoid.Transparency = 1
TournamentAntiVoid.CanCollide = false
end

--Tab1 - 15
local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://8997387937",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Badges",
	Icon = "rbxassetid://7733673987",
	PremiumOnly = false
})

local Tab5 = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4335489011",
	PremiumOnly = false
})

local Tab7 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

local Tab14 = Window:MakeTab({
	Name = "Gloves Optional",
	Icon = "rbxassetid://7733955740",
	PremiumOnly = false
})

local Tab11 = Window:MakeTab({
	Name = "Troller",
	Icon = "rbxassetid://7733917120",
	PremiumOnly = false
})

local Tab15 = Window:MakeTab({
	Name = "Credit",
	Icon = "rbxassetid://7733955511",
	PremiumOnly = false
})

Tab:AddParagraph("Zalo | Discord"," [ Zalo ]: Bạn muốn vào nhóm Zalo thì vào Credit nhé có link nhóm Zalo đó | [ Discord ]: If you want to join the Server hack slap battles group, go to the credits section ] | Good Luck")
local InfoServer = Tab:AddSection({Name = "Info Server"})
CanYouFps = Tab:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CanYouPing = Tab:AddLabel("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
ServerPlayer = Tab:AddLabel("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]")
TimeServer = Tab:AddLabel("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
TimeNow = Tab:AddLabel("Now Time [ "..os.date("%X").." ]")
AgeAccYou = Tab:AddLabel("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]")
ViewAgeServer = Tab:AddLabel("Server's Age [ "..game.Workspace.Lobby.ServerAge.Text.SurfaceGui.TextLabel.Text.." ]")
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
ResetTime = Tab:AddLabel("Time Spawn [ "..game.Players.RespawnTime.." ]")
else
ResetTime = Tab:AddLabel("Time Spawn [ Not Dead ]")
end
CodeKeypad = Tab:AddLabel("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]")
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn = Tab:AddLabel("Keypad Spawn [ No ]")
else
KeypadSpawn = Tab:AddLabel("Keypad Spawn [ Yes ]")
end
if not game.Workspace:FindFirstChild("Toolbox") then
ToolboxSpawn = Tab:AddLabel("Player Spawn Toolbox [ No ]")
else
ToolboxSpawn = Tab:AddLabel("Player Spawn Toolbox [ Yes ]")
end
if not game.Workspace:FindFirstChild("SiphonOrb") then
SiphonOrbSpawn = Tab:AddLabel("Spawn Siphon Orb [ No ]")
else
SiphonOrbSpawn = Tab:AddLabel("Spawn Siphon Orb [ Yes ]")
end
CheckSlap = Tab:AddLabel("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
Glove = Tab:AddLabel("You're Using Glove [ "..game.Players.LocalPlayer.leaderstats.Glove.Value.." ]")
PlateTime = Tab:AddLabel("Plate Time [ "..game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text.." ]")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")
local InfoServer = Tab:AddSection({Name = "Local Player"})
if game.Players.LocalPlayer.Character:FindFirstChild("rock") then
WalkspeedYou = Tab:AddLabel("Walk Speed [ Not Walk then rock ]")
JumppowerYou = Tab:AddLabel("Jump Power [ Not Jump Power then rock ]")
HealthYou = Tab:AddLabel("Health You [ Not Health then rock ]")
HipHeightYou = Tab:AddLabel("Hip Height [ Not Hip then rock ]")
else
WalkspeedYou = Tab:AddLabel("Walk Speed [ "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.." ]")
JumppowerYou = Tab:AddLabel("Jump Power [ "..game.Players.LocalPlayer.Character.Humanoid.JumpPower.." ]")
HealthYou = Tab:AddLabel("Health You [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
HipHeightYou = Tab:AddLabel("Hip Height [ "..game.Players.LocalPlayer.Character.Humanoid.HipHeight.." ]")
end
GravityYou = Tab:AddLabel("Gravity [ "..game.Workspace.Gravity.." ]")
PositionYou = Tab:AddLabel("Position In Your [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]")

local AutoSetInfoServer
AutoSetInfo = Tab:AddToggle({
	Name = "Auto Set Info",
	Default = false,
	Callback = function(Value)
_G.AutoSetInfo = Value
AutoSetInfoServer = game:GetService("RunService").RenderStepped:Connect(function()
if _G.AutoSetInfo == true then
CanYouFps:Set("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
ServerPlayer:Set("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]")
TimeServer:Set("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minutes | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
CanYouPing:Set("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
AgeAccYou:Set("Your Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]")
TimeNow:Set("Now Time [ "..os.date("%X").." ]")
ViewAgeServer:Set("Server's Age [ "..game.Workspace.Lobby.ServerAge.Text.SurfaceGui.TextLabel.Text.." ]")
PlateTime:Set("Plate Time [ "..game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text.." ]")
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
ResetTime:Set("Time Spawn [ "..game.Players.RespawnTime.." ]")
else
ResetTime:Set("Time Spawn [ Not Dead ]")
end
PositionYou:Set("Position In You [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]")
CodeKeypad:Set("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]")
CheckSlap:Set("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
Glove:Set("You're Using Glove [ "..game.Players.LocalPlayer.leaderstats.Glove.Value.." ]")
if game.Players.LocalPlayer.Character:FindFirstChild("rock") then
WalkspeedYou:Set("Walk Speed [ Not Walk then rock ]")
JumppowerYou:Set("Jump Power [ Not Jump Power then rock ]")
HealthYou:Set("Health You [ Not Health then rock ]")
HipHeightYou:Set("Hip Height [ Not Hip then rock ]")
else
WalkspeedYou:Set("Walk Speed [ "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.." ]")
JumppowerYou:Set("Jump Power [ "..game.Players.LocalPlayer.Character.Humanoid.JumpPower.." ]")
HealthYou:Set("Health You [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
HipHeightYou:Set("Hip Height [ "..game.Players.LocalPlayer.Character.Humanoid.HipHeight.." ]")
end
GravityYou:Set("Gravity [ "..game.Workspace.Gravity.." ]")
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn:Set("Keypad Spawn [ No ]")
else
KeypadSpawn:Set("Keypad Spawn [ Yes ]")
end
if not game.Workspace:FindFirstChild("Toolbox") then
ToolboxSpawn:Set("Player Spawn Toolbox [ No ]")
else
ToolboxSpawn:Set("Player Spawn Toolbox [ Yes ]")
end
if not game.Workspace:FindFirstChild("SiphonOrb") then
SiphonOrbSpawn:Set("Spawn Siphon Orb [ No ]")
else
SiphonOrbSpawn:Set("Spawn Siphon Orb [ Yes ]")
end
elseif _G.AutoSetInfo == false then
AutoSetInfoServer:Disconnect()
AutoSetInfoServer = nil
end
end)
	end    
})

local InfoServer = Tab:AddSection({Name = "Notification"})
Tab:AddLabel("------------------------------[ Warning ]------------------------------")
Tab:AddParagraph("[ Admin ]","[ Banned Hackers which node is not good ]")
Tab:AddParagraph("[ Record ]","[ When someone records it, you got a 90% ban ]")
Tab:AddParagraph("[ Lucky ]","[ If you are lucky enough to survive the banned then you are lucky ]")
Tab:AddParagraph("[ Tired ]","I'm Very Tired of Script and Script Update is slow. Please forgive me because I update slowly")
Tab:AddParagraph("[ Script Giang ]","This script was created by Giang, but there is a problem when creating a feature but no one testing no one can help me see if it works | I'm really sorry that I couldn't do the feature and it all failed and didn't work | I hope everyone understands me")
Tab:AddLabel("------------------------------[ End ]------------------------------")

Tab1:AddButton({
	Name = "Synapse X [ PE Delta ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Codex [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Codex.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Kiwi [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kiwi-Ui.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Krypton [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Krypton.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Krnl [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Knrl.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Animation [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/EGEGESGGH/main/FE%20Animation%20GUI.txt'))()
  	end    
})

Tab1:AddButton({
	Name = "Arceus x [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Arceus_X_V3.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Execute | Ui Library [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Execute%20%7C%20UI%20Library.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Kill Player [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kill%20player"))()
  	end    
})

Tab1:AddButton({
	Name = "Keyboard",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab1:AddButton({
	Name = "Rejoin Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Rejoin.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Inf yield Delta",
	Callback = function()
      		loadstring(game:HttpGet("https://gist.githubusercontent.com/lxnnydev/c533c374ca4c1dcef4e1e10e33fa4a0c/raw/03e74f184f801dad77d3ebe1e2f18c6ac87ca612/delta___IY.gistfile1.txt.lua",true))()
  	end    
})

Tab1:AddButton({
	Name = "Inf yield",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})

Tab1:AddButton({
	Name = "Hitbox",
	Callback = function()
      		loadstring(game:HttpGet(("https://gist.githubusercontent.com/stellar-4242/430ef3087d8d87eb306ca03e728ffbb8/raw/798429dd908b1f4471a1fa569ff62c5e5a93ec61/SLAP.LUA")))()
  	end    
})

Tab1:AddButton({
	Name = "Slap battles new R2O",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R2O/main/Games/6403373529.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Auto Farm Bob",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/File/Farm%20Bob.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "CherryUi's SB GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
  	end    
})

Tab1:AddButton({
	Name = "Position Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Position_Gui.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Fe Fly V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "MoonUI v10",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
  	end    
})

Tab1:AddButton({
	Name = "Btool Cute",
	Callback = function()
      		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
  	end    
})

Tab1:AddButton({
	Name = "Dex V2",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end    
})

Tab1:AddButton({
	Name = "Dex V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "TP gui player",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/TP_Player.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Turies Spy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Reamsrpy.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Simple Spy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/RemoteSpy-V2.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Hydroxide",
	Callback = function()
local owner = "Upbolt"
local branch = "revision"
local function webImport(file)
return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end
webImport("init")
webImport("ui/main")
  	end    
})

Tab3:AddDropdown({
	Name = "Teleport Safe",
	Default = "",
	Options = {"SafeSpotBox 1.0", "SafeSpotBox 2.0", "Bed"},
	Callback = function(Value)
if Value == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif Value == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
elseif Value == "Bed" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed"].Bed3.CFrame * CFrame.new(0,0,-1)
end
	end    
})

Tab3:AddDropdown({
	Name = "Retro Obby",
	Default = "",
	Options = {"Get Badge", "Show All", "Off Show All", "Teleport Spawn 1", "Teleport Spawn 2", "Teleport Spawn 3", "Click Button"},
	Callback = function(Value)
if Value == "Get Badge" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
elseif Value == "Show All" then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
elseif Value == "Off Show All" then
game.Workspace.Retro.Parent = game.ReplicatedStorage.Assets
elseif Value == "Teleport Spawn 1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn.CFrame
elseif Value == "Teleport Spawn 2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage2.CFrame
elseif Value == "Teleport Spawn 3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage3.CFrame
elseif Value == "Click Button" then
if game:GetService("ReplicatedStorage").Assets.Retro then
game.ReplicatedStorage.Assets.Retro.Parent = workspace
wait(1.5)
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
else
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
end
end
	end    
})

Tab3:AddDropdown({
	Name = "Repressed Memory",
	Default = "",
	Options = {"Show All","Off Show All","Teleport Enter","Teleport Portal","Teleport Bob Plushie","Click Bob Plushie [ Quests Hitman ]"},
	Callback = function(Value)
if Value == "Show All" then
game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
elseif Value == "Off Show All" then
game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
elseif Value == "Teleport Enter" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.Limbo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Teleport Portal" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.SimonSaysGate.Portal.CFrame
elseif Value == "Teleport Bob Plushie" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
elseif Value == "Click Bob Plushie [ Quests Hitman ]" then
if game:GetService("ReplicatedStorage").RepressedMemoriesMap then
game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
wait(0.5)
fireclickdetector(workspace.RepressedMemories._ugcQuestObjectBobPlushie.ClickDetector)
wait(2)
game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
wait(0.7)
fireclickdetector(workspace.RepressedMemories._ugcQuestObjectBobPlushie.ClickDetector)
wait(2)
game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
end
end
	end    
})

Tab3:AddDropdown({
	Name = "Map Kraken",
	Default = "",
	Options = {"Show All","Off Show All", "Teleport Enter"},
	Callback = function(Value)
if Value == "Show All" then
game.ReplicatedStorage.AbyssAssets.Abyss.Parent = game.Workspace
elseif Value == "Off Show All" then
game.Workspace.Abyss.Parent = game.ReplicatedStorage.AbyssAssets
elseif Value == "Teleport Enter" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 35, -12671)
end
	end    
})

Tab3:AddButton({
	Name = "Reset Player",
	Callback = function()
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
else
OrionLib:MakeNotification({Name = "Error",Content = "You have dead",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Kinetic",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i = 1,150 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
wait(0.05)
end
wait(1.5)
repeat
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character.Humanoid.Health ~= 0
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,-20,0)
wait(0.25)
game.ReplicatedStorage.StunR:FireServer(game.Players.LocalPlayer.Character.Stun)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(0.5)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") then
OrionLib:MakeNotification({Name = "Error",Content = "Counter Stun [ "..game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value.." ]",Image = "rbxassetid://7733658504",Time = 5})
end
wait(12.3)
until game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") and game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value >= 50
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Stun equipped, or you aren't in the arena",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Win Obby Pyscho",
	Callback = function()
if game.Workspace:FindFirstChild("RepressedMemoriesMap") ~= nil then
OGL = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame
OGL1 = game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame
wait(0.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StartPsychoEvent.CFrame = OGL
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(2.5)
game.Workspace.RepressedMemoriesMap.Psychokinesis.Triggers.StopPsychoEvent.CFrame = OGL1
else
OrionLib:MakeNotification({Name = "Error",Content = "You have enter limbo [ don't show all, not work ]",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Get Glove Bomb",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Warp" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124919840) then
OldTouch = workspace.DEATHBARRIER.CanTouch
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame
task.wait(0.2)
game.ReplicatedStorage.WarpHt:FireServer(Target.Character:WaitForChild("HumanoidRootPart"))
task.wait(0.15)
if workspace.DEATHBARRIER.CanTouch == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
else
workspace.DEATHBARRIER.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
end
wait(0.1)
game:GetService("ReplicatedStorage").WLOC:FireServer()
wait(0.2)
workspace.DEATHBARRIER.CanTouch = OldTouch
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Warp equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Warp",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124914780) then
if _G.ClosestMagnitude == nil then
_G.ClosestMagnitude = 999999
end
repeat
for _, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if Magnitude <= _G.ClosestMagnitude then
if v.Character:FindFirstChild("entered") == nil or v.Character.Humanoid.Health == 0 then
_G.ClosestMagnitude = 999999
RandomPlayer = nil
else
_G.ClosestMagnitude = Magnitude
RandomPlayer = v
end
end
end
end
if RandomPlayer and _G.ClosestMagnitude ~= 999999 then
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("Head").CFrame
wait(0.17)
game.ReplicatedStorage.HitSwapper:FireServer(RandomPlayer.Character:WaitForChild("Head"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
end
end
task.wait(0.15)
until RandomPlayer.Character.HumanoidRootPart.Position.Y < -10
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
wait(0.15)
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(0.2)
if _G.ClosestMagnitude and RandomPlayer then
_G.ClosestMagnitude = nil
RandomPlayer = nil
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Swapper equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Plank",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4031317971987872) then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 97, 4)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.3)
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 106, -6)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Fort equipped, or you have owner badge [ Don't turn on shiftlock ]",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Blasphemy",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "bus" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061) then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
break
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
task.wait(0.34)
game:GetService("ReplicatedStorage").busmoment:FireServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(1.5)
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
wait(0.8)
for i = 1,50 do
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "BusModel" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
task.wait()
end
end
task.wait(3.5)
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have bus equipped, or you have owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Auto Quests Chest All Glove",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(289, 13, 261)
game:GetService("ReplicatedStorage").DigEvent:FireServer({["index"] = 2,["cf"] = CFrame.new(42.7222366, -6.17449856, 91.5175781, -0.414533257, 1.72594355e-05, -0.91003418, -5.57037238e-05, 1, 4.4339522e-05, 0.91003418, 6.90724992e-05, -0.414533257)})
until game.Workspace:FindFirstChild("TreasureChestFolder") ~= nil and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest") ~= nil
wait(1)
game.Workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
wait(0.9)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterBooth._configPart.CFrame * CFrame.new(-5,0,0)
else
OrionLib:MakeNotification({Name = "Error",Content = "You have enter arena",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Auto Get Glove FrostBite",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
]])
end
game:GetService("TeleportService"):Teleport(17290438723)
  	end    
})

Tab3:AddButton({
	Name = "Auto Get Glove Admin",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(13.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
task.wait(6)
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end
]])
end
if game:GetService("ReplicatedStorage").Assets.Retro then
game.ReplicatedStorage.Assets.Retro.Parent = workspace
wait(1.5)
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
else
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Chain",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
task.wait(2)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have 1000 slap.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddDropdown({
	Name = "Join Maze Elude",
	Default = "Auto Keypad",
	Options = {"Teleport","Auto Keypad"},
	Callback = function(Value)
_G.SelectMaze = Value
	end    
})

Tab3:AddButton({
	Name = "Get Counter + Elude",
	Callback = function()
if _G.SelectMaze == "Teleport" then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
Time = 121
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.5)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
    ]])
end
game:GetService("TeleportService"):Teleport(11828384869)
elseif _G.SelectMaze == "Auto Keypad" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server don't have keypad, auto start Serverhop",Image = "rbxassetid://7733658504",Time = 5})
	for _, server in ipairs(game.HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
    	if server.playing < server.maxPlayers and server.JobId ~= game.JobId then
        	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
    	end
	end
else
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
Time = 121
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
    ]])
end
OrionLib:MakeNotification({Name = "Error",Content = "Server in have spawn keypad, auto start keypad",Image = "rbxassetid://7733658504",Time = 5})
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
local digits = tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7)
for i = 1, #digits do
task.wait(0.8)
local digit = digits:sub(i, i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
task.wait(0.5)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove [Redacted]",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
Door = 0
for i = 1, 10 do
Door = Door + 1
if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
Door = nil
else
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 1)
wait(3.75)
end
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have 5000 slap, or you have Owner bagde",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Duck & Orange & Knife Badge",
	Callback = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760907) and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2128220957) and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760916) then
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector) 
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You have Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Get Free Ice Skate",
	Callback = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2906002612987222) then
game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
else
OrionLib:MakeNotification({Name = "Error",Content = "You have Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Get Free Lamp",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437) then
repeat task.wait()
game:GetService("ReplicatedStorage").nightmare:FireServer("LightBroken")
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have ZZZZZZZ equipped, or Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Get The Schlop",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130032297) and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,2,35)
wait(0.3)
game:GetService("ReplicatedStorage").CloudAbility:FireServer()
fireclickdetector(workspace.Lobby.fish.ClickDetector)
wait(0.2)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.3)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                    end
               end
          end
          wait(0.7)
for _ = 1, 10 do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = CFrame.new(245, 129, -91)
                    end
               end
task.wait()
end
wait(0.4)
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
wait(0.5)
repeat task.wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" and v.Name ~= "Humanoid" then
v.CFrame = game.workspace.Arena.Plate.CFrame
end
end
end
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have equiped Cloud | Badge Fish | You are in the lobby.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddDropdown({
	Name = "Farm Bob",
	Default = "Slow",
	Options = {"Auto Spawn E", "Auto Spawn", "Fast Spawn", "Normal","Super Fast Spawn"},
	Callback = function(Value)
Autobob = Value
	end    
})

GetBob = Tab3:AddToggle({
	Name = "AutoFarm Bob",
	Default = false,
	Callback = function(Value)
_G.AutoFarmBob = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
while _G.AutoFarmBob and Autobob == "Auto Spawn E" do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") or game.Workspace:FindFirstChild("bobcap") == nil then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,x)
else
OrionLib:MakeNotification({Name = "Error",Content = "You got Bob spawn",Image = "rbxassetid://7733658504",Time = 5})
GetBob:Set(false)
end
task.wait(0.5)
end
while _G.AutoFarmBob and Autobob == "Auto Spawn" do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") or game.Workspace:FindFirstChild("bobcap") == nil then
game.ReplicatedStorage.Duplicate:FireServer(true)
else
OrionLib:MakeNotification({Name = "Error",Content = "You got Bob spawn",Image = "rbxassetid://7733658504",Time = 5})
GetBob:Set(false)
end
task.wait(5.3)
end
while _G.AutoFarmBob and Autobob == "Fast Spawn" do
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
task.wait(0.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,x)
if game.Workspace:FindFirstChild("bobcap") == nil then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
else
OrionLib:MakeNotification({Name = "Error",Content = "You got Bob spawn",Image = "rbxassetid://7733658504",Time = 5})
GetBob:Set(false)
end
end
task.wait()
end
while _G.AutoFarmBob and Autobob == "Normal" do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
for i,v in pairs(game.Workspace.Lobby:GetChildren()) do
if v.Name == "Teleport1" and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = v.Position
end
end
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
task.wait(0.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,x)
if game.Workspace:FindFirstChild("bobcap") == nil then
if game.Players.LocalPlayer.Character.Humanoid.Health == 100 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You got Bob spawn",Image = "rbxassetid://7733658504",Time = 5})
GetBob:Set(false)
end
end
task.wait()
end
while _G.AutoFarmBob and Autobob == "Super Fast Spawn" do
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
wait(0.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,x)
task.wait(0.2)
if game.Workspace:FindFirstChild("bobcap") == nil then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
else
OrionLib:MakeNotification({Name = "Error",Content = "You got Bob spawn",Image = "rbxassetid://7733658504",Time = 5})
GetBob:Set(false)
end
task.wait(1.8)
end
elseif _G.AutoFarmBob == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Replica equipped, or You have Owned Items",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
GetBob:Set(false)
end
	end    
})

Tab3:AddToggle({
	Name = "Toolbox Farm",
	Default = false,
	Callback = function(Value)
Toolboxfarm = Value
while Toolboxfarm do
if game.Workspace:FindFirstChild("Toolbox") then
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "Toolbox" and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
            end
task.wait()
end
	end    
})

Tab3:AddToggle({
	Name = "Phase Or Jet Farm",
	Default = false,
	Callback = function(Value)
_G.PhaseOrJetfarm = Value
while _G.PhaseOrJetfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" or v.Name == "PhaseOrb" then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
	end    
})

Tab3:AddToggle({
	Name = "Siphon Farm",
	Default = false,
	Callback = function(Value)
_G.Siphonfarm = Value
while _G.Siphonfarm do
if game.Workspace:FindFirstChild("SiphonOrb") then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "SiphonOrb" then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
                end
task.wait()
end
	end    
})

Tab3:AddToggle({
	Name = "Phase Or Jet Glitch",
	Default = false,
	Callback = function(Value)
_G.Glitchfarm = Value
while _G.Glitchfarm do
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
if game.Workspace:FindFirstChild("JetOrb") or game.Workspace:FindFirstChild("PhaseOrb") then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" or v.Name == "PhaseOrb" then
game.ReplicatedStorage.Errorhit:FireServer(v)
                    end
                end
            end
        end
task.wait()
end
	end    
})

Tab3:AddToggle({
	Name = "Gift Farm",
	Default = false,
	Callback = function(Value)
Giftfarm = Value
while Giftfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Gift" then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v, 1)
                    end
                end
task.wait()
end
	end    
})

Tab3:AddDropdown({
	Name = "Farm Time",
	Default = "",
	Options = {"Voodoo + Fish", "MegaRock"},
	Callback = function(Value)
AutoTime = Value
	end    
})

FarmTimeServer = Tab3:AddLabel("Farm Time [ 0 ]")

GetFarmTime = Tab3:AddToggle({
	Name = "AutoFarm Time",
	Default = false,
	Callback = function(Value)
_G.AutoTimeGet = Value
if AutoTime == "Voodoo + Fish" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ghost" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby["ZZZZZZZ"].ClickDetector)
wait(0.2)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.2)
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
elseif _G.AutoTimeGet == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Ghost equipped, or You have go to lobby",Image = "rbxassetid://7733658504",Time = 5})
end
elseif AutoTime ~= "Voodoo + Fish" or Value == false then
SleepTimeandTimeGhost = 0
FarmTimeServer:Set("Farm Time [ 0 ]")
end
while _G.AutoTimeGet and AutoTime == "Voodoo + Fish" and task.wait() do
if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled").Value == true then
task.wait(1)
SleepTimeandTimeGhost += 1
FarmTimeServer:Set("Farm Time [ "..SleepTimeandTimeGhost.." ]")
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil or game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled").Value == false then
SleepTimeandTimeGhost = 0
FarmTimeServer:Set("Farm Time [ 0 ]")
end
end
if AutoTime == "MegaRock" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" then
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
end
elseif AutoTime ~= "MegaRock" or Value == false then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil or game.Players.LocalPlayer.Character:FindFirstChild("rock") ~= nil then
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
TimeMegarock = 0
FarmTimeServer:Set("Farm Time [ 0 ]")
end
end
while _G.AutoTimeGet and AutoTime == "MegaRock" and task.wait() do
task.wait(1)
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("rock") then
TimeMegarock += 1
FarmTimeServer:Set("Farm Time [ "..TimeMegarock.." ]")
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil or game.Players.LocalPlayer.Character:FindFirstChild("rock") == nil then
TimeMegarock = 0
FarmTimeServer:Set("Farm Time [ 0 ]")
end
end
	end    
})

Tab3:AddDropdown({
	Name = "Farm Brick",
	Default = "Slow",
	Options = {"Slow", "Fast"},
	Callback = function(Value)
AutoBrick = Value
	end    
})

AutoFarmBrick = Tab3:AddToggle({
	Name = "AutoFram Brick",
	Default = false,
	Callback = function(Value)
	    Brickfarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
while Brickfarm and AutoBrick == "Slow" do
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,x)
task.wait(5.05)
end
while Brickfarm and AutoBrick == "Fast" do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1
wait(1.5)
end
elseif Brickfarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Brick equipped",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoFarmBrick:Set(false)
end
	end    
})

AutoTycoon = Tab3:AddToggle({
	Name = "Get Tycoon",
	Default = false,
	Callback = function(Value)
	   _G.AutoTpPlate = Value
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
while _G.AutoTpPlate do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Plate.CFrame
end
task.wait()
end
elseif _G.AutoTpPlate == true then
OrionLib:MakeNotification({Name = "Error",Content = "You need enter erane, or 7 people the server",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoTycoon:Set(false)
end
	end    
})

Tab5:AddSlider({
	Name = "WalkSpeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Tab5:AddTextbox({
	Name = "WalkSpeed",
	Default = "UserSpeed",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end	  
})

Tab5:AddToggle({
	Name = "Walkspeed Set Auto",
	Default = false,
	Callback = function(Value)
		KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Tab5:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Tab5:AddTextbox({
	Name = "Jumppower",
	Default = "UserPower",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end	  
})

Tab5:AddToggle({
	Name = "Jumppower Set Auto",
	Default = false,
	Callback = function(Value)
		KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})

Tab5:AddSlider({
	Name = "Hip Height",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Hip Height",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
HipHeight = Value
	end    
})

Tab5:AddTextbox({
	Name = "Hip Height",
	Default = "UserHeight",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
HipHeight = Value
	end	  
})

Tab5:AddToggle({
	Name = "Hip Height Set Auto",
	Default = false,
	Callback = function(Value)
		KeepHipHeight = Value
           while KeepHipHeight do
              if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.HipHeight ~= HipHeight then
                  game.Players.LocalPlayer.Character.Humanoid.HipHeight  = HipHeight
              end
task.wait()
         end
	end    
})

Tab5:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 600,
	Default = 196,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
game.Workspace.Gravity = Value
Gravity = Value
	end    
})

Tab5:AddToggle({
	Name = "Gravity Set Auto",
	Default = false,
	Callback = function(Value)
		KeepGravity = Value
           while KeepGravity do
              if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Workspace.Gravity ~= nil and game.Workspace.Gravity ~= Gravity then
                  game.Workspace.Gravity = Gravity
              end
task.wait()
         end
	end    
})

Tab14:AddDropdown({
	Name = "Prop Ability",
	Default = "",
	Options = {"Barrel", "Bench", "Brick", "Bush 1", "Bush 2", "Cauldron", "Diamond", "Frenzy Bot", "Gift", "GoldenSlapple", "Imp", "Jet Orb", "Larry", "MEGAROCK", "Moai Head", "Obby 1", "Obby 2", "Obby 3", "Obby 4", "Obby 5", "Orange", "Oven", "Phase Heart", "Phase Orb", "Rock 1", "Rock 2", "Rock 3", "Sentry", "Slapple", "Snow Peep", "Snow Turret", "bob", "rob","Sbeve"},
	Callback = function(Value)
PropAbility = Value
	end    
})

Prop = Tab14:AddToggle({
	Name = "Auto Spam Prop",
	Default = false,
	Callback = function(Value)
PropSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Prop" then
while PropSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Prop" do
if game.Workspace:FindFirstChild("PropModel_"..game.Players.LocalPlayer.Name) == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(PropAbility)
end
task.wait()
end
elseif PropSpam == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Prop equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
Prop:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Santa Ability",
	Default = "milk",
	Options = {"bobplush", "snowpeep", "milk"},
	Callback = function(Value)
SantaAbility = Value
	end    
})

Santa = Tab14:AddToggle({
	Name = "Auto Spam Santa",
	Default = false,
	Callback = function(Value)
SantaSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Santa" then
while SantaSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Santa" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(SantaAbility)
task.wait()
end
elseif SantaSpam == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Santa equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
Santa:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Admin Ability",
	Default = "Fling",
	Options = {"Fling", "Anvil", "Invisibility"},
	Callback = function(Value)
AbilityAdmin = Value
	end    
})

Admin = Tab14:AddToggle({
	Name = "Auto Spam Admin [ All Glove ]",
	Default = false,
	Callback = function(Value)
AdminSpam = Value
while AdminSpam do
game:GetService("ReplicatedStorage").AdminAbility:FireServer(AbilityAdmin)
task.wait()
end
	end    
})

Tab14:AddDropdown({
	Name = "Retro Ability",
	Default = "Rocket Launcher",
	Options = {"Rocket Launcher", "Ban Hammer", "Bomb"},
	Callback = function(Value)
RetroAbility = Value
	end    
})

Tab14:AddToggle({
	Name = "Auto Spam Retro [ All Glove ]",
	Default = false,
	Callback = function(Value)
RetroSpam = Value
while RetroSpam do
game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
task.wait()
end
	end    
})

Tab14:AddDropdown({
	Name = "Slapstick Ability",
	Default = "runeffect",
	Options = {"runeffect", "fullcharged", "dash", "addarm","charge","cancelrun","discharge"},
	Callback = function(Value)
SlapstickAbility = Value
	end    
})

Tab14:AddButton({
	Name = "Spam Ability Slapstick",
	Callback = function()
if SlapstickAbility == "runeffect" then
OldSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
wait(5)
game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
wait(1)
OrionLib:MakeNotification({Name = "Error",Content = "Started RUN Now.",Image = "rbxassetid://7733658504",Time = 5})
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 70
wait(25)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OldSpeed
game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
elseif SlapstickAbility == "dash" then
game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
game:GetService("ReplicatedStorage").slapstick:FireServer("dash")
end
  	end    
})

Tab14:AddToggle({
	Name = "Auto Spam Slapstick [ All Glove ]",
	Default = false,
	Callback = function(Value)
SlapstickSpam = Value
if SlapstickSpam == true then
game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
end
while SlapstickSpam do
game:GetService("ReplicatedStorage").slapstick:FireServer(SlapstickAbility)
task.wait()
end
	end    
})

Tab14:AddTextbox({
	Name = "Godmode Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
SaveThePlayer = game.Players.LocalPlayer.Name
else
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
SaveThePlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..SaveThePlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end	  
})

SavePlayer = Tab14:AddToggle({
	Name = "Auto Godmode Player",
	Default = false,
	Callback = function(Value)
if SaveThePlayer == nil then
SaveThePlayer = game.Players.LocalPlayer.Name
end
GuardianAngelSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Guardian Angel" then
while GuardianAngelSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Guardian Angel" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players[SaveThePlayer])
task.wait()
end
elseif GuardianAngelSpam == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Guardian Angel equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
SavePlayer:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Spam Rojo Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
Person = game.Players.LocalPlayer.Name
else
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
Person = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..Person.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end	  
})

Tab14:AddDropdown({
	Name = "Rojo Ability",
	Default = "",
	Options = {"Normal", "Down"},
	Callback = function(Value)
RojoAbility = Value
	end    
})

Tab14:AddToggle({
	Name = "Auto Spam Rojo [ All Glove ]",
	Default = false,
	Callback = function(Value)
if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam and RojoAbility == "Normal" do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait()
end
while _G.RojoSpam and RojoAbility == "Down" do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame * CFrame.Angles(-1.5, -9.99999993922529e-09, -0.5663706660270691)})
task.wait()
end
	end    
})

Tab14:AddTextbox({
	Name = "Spam Divebomb Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
DivebombExplosion = game.Players.LocalPlayer.Name
else
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
DivebombExplosion = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..DivebombExplosion.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end	  
})

Tab14:AddSlider({
	Name = "Charge Explosion",
	Min = 0,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Charge",
	Callback = function(Value)
		_G.ChargeExplosion = Value
	end    
})

AutoSpawnDivebomb = Tab14:AddToggle({
	Name = "Auto Spam Divebomb",
	Default = false,
	Callback = function(Value)
if DivebombExplosion == nil then
DivebombExplosion = game.Players.LocalPlayer.Name
end
_G.DivebombSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Divebomb" then
while _G.DivebombSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Divebomb" do
game:GetService("ReplicatedStorage").RocketJump:InvokeServer({["chargeAlpha"] = 99.7833333881571889,["rocketJump"] = true})
game:GetService("ReplicatedStorage").RocketJump:InvokeServer({["position"] = game.Players[DivebombExplosion].Character.HumanoidRootPart.Position,["explosion"] = true,["explosionAlpha"] = _G.ChargeExplosion})
task.wait()
end
elseif _G.DivebombSpam == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Divebomb equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoSpawnDivebomb:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Punish Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.PunishPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.PunishPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Cancel = false
Tab14:AddButton({
	Name = "Punish Player",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.VoidPart.VoidPart1.CanCollide = true
Timer = 0
repeat
if Cancel == true then
break
end
if game.Players[_G.PunishPlayer].Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace[_G.PunishPlayer].HumanoidRootPart.Position.X,-49999,workspace[_G.PunishPlayer].HumanoidRootPart.Position.Z)
end
task.wait(0.01)
if Timer < 1 then
Timer = Timer + 0.01
end
until game.Players[_G.PunishPlayer].Character and workspace[_G.PunishPlayer]:FindFirstChild("HumanoidRootPart") and workspace[_G.PunishPlayer]:FindFirstChild("entered") and workspace[_G.PunishPlayer].Ragdolled.Value == false and Timer >= 1
if Cancel == false then
game:GetService("ReplicatedStorage").SLOC:FireServer()
end
wait(.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Workspace.VoidPart.VoidPart1.CanCollide = false
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Part",true) == nil then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Swapper equipped, or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddButton({
	Name = "Cancel Punish Player",
	Callback = function()
Cancel = true
wait(0.1)
Cancel = false
  	end    
})

_G.PlayerChoose = "Username"
Tab14:AddDropdown({
	Name = "Player",
	Default = "Username",
	Options = {"Username","Random"},
	Callback = function(Value)
_G.PlayerChoose = Value
	end    
})

Tab14:AddTextbox({
	Name = "Teleport Void Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.VoidPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.VoidPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Teleport Void Player",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
task.wait(0.25)
repeat task.wait()
if workspace[_G.VoidPlayer]:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace[_G.VoidPlayer].HumanoidRootPart.Position.X,-70,workspace[_G.VoidPlayer].HumanoidRootPart.Position.Z)
task.wait(0.37)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
until game.Players[_G.VoidPlayer].Character and workspace[_G.VoidPlayer]:FindFirstChild("HumanoidRootPart") and workspace[_G.VoidPlayer]:FindFirstChild("entered") and workspace[_G.VoidPlayer].Ragdolled.Value == false
task.wait(0.6)
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
task.wait(0.05)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Swapper equipped, or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
Target = RandomPlayer
repeat task.wait()
if Target.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.HumanoidRootPart.Position.X,-70,Target.Character.HumanoidRootPart.Position.Z)
task.wait(0.37)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
until Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and Target.Character:FindFirstChild("entered") and Target.Character:FindFirstChild("Ragdolled").Value == false
task.wait(0.6)
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
task.wait(0.05)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Swapper equipped, or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab14:AddTextbox({
	Name = "Home Run Kill Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.KillerPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.KillerPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Home Run Kill Player",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" and game.Players[_G.KillerPlayer].Character:FindFirstChild("entered") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
OGLZ = game.Players[_G.KillerPlayer].Character.HumanoidRootPart.Size
game.Players[_G.KillerPlayer].Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
wait(4.2)
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait(0.12)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.KillerPlayer].Character.HumanoidRootPart.CFrame
task.wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players[_G.KillerPlayer].Character.HumanoidRootPart.Size = OGLZ
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Home Run equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
wait(4.2)
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
OGLZ = Target.Character.HumanoidRootPart.Size
Target.Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
wait(0.25)
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait(0.12)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
task.wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
Target.Character.HumanoidRootPart.Size = OGLZ
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Home Run equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end 
})

Tab14:AddTextbox({
	Name = "Hive Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.HivePlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.HivePlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Hive Player",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Hive" and game.Players[_G.HivePlayer].Character:FindFirstChild("entered") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
OGLZ = game.Players[_G.HivePlayer].Character.HumanoidRootPart.Size
game.Players[_G.HivePlayer].Character.HumanoidRootPart.Size = Vector3.new(20,20,20)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(4.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HivePlayer].Character.HumanoidRootPart.CFrame
wait(0.25)
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.HivePlayer].Character.HumanoidRootPart.Position).Magnitude
if 30 >= Magnitude then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(game.Players[_G.HivePlayer].Character:WaitForChild("HumanoidRootPart"))
end
wait(0.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players[_G.HivePlayer].Character.HumanoidRootPart.Size = OGLZ
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Hive equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Hive" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(4.32)
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
OGLZ = Target.Character.HumanoidRootPart.Size
Target.Character.HumanoidRootPart.Size = Vector3.new(20,20,20)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
wait(0.25)
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Target.Character.HumanoidRootPart.Position).Magnitude
if 30 >= Magnitude then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(Target.Character:WaitForChild("HumanoidRootPart"))
end
wait(0.22)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
Target.Character.HumanoidRootPart.Size = OGLZ
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Hive equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end 
})

Tab14:AddTextbox({
	Name = "Quake Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.PressIntoTheGround = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.PressIntoTheGround.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Quake Player",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Quake" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PressIntoTheGround].Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Quake)
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
wait(3.45)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PressIntoTheGround].Character:FindFirstChild("Head").CFrame * CFrame.new(0,4,0)
task.wait(0.18)
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["finished"] = true})
task.wait(0.17)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Quake equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Quake" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Quake)
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
wait(4)
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character:FindFirstChild("Head").CFrame * CFrame.new(0,4,0)
task.wait(0.13)
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["finished"] = true})
task.wait(0.17)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Quake equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end 
})

Tab14:AddTextbox({
	Name = "Cards Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
PersonCar = game.Players.LocalPlayer.Name
else
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
PersonCar = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..PersonCar.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end	  
})

Tab14:AddButton({
	Name = "Cards Player",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Jester" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability3",game.Players[PersonCar])
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Jester glove equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Jester" then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability3",Target)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Jester glove equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab14:AddTextbox({
	Name = "Oven Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.OvenPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.OvenPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

AutoOven = Tab14:AddToggle({
	Name = "Auto Oven Player",
	Default = false,
	Callback = function(Value)
_G.OvenPlayerAuto = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Oven" then
while _G.OvenPlayerAuto and game.Players.LocalPlayer.leaderstats.Glove.Value == "Oven" do
if _G.PlayerChoose == "Username" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Oven") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players[_G.OvenPlayer].Character.HumanoidRootPart.CFrame)
end
elseif _G.PlayerChoose == "Random" then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Oven") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(Target.Character.HumanoidRootPart.CFrame)
end
end
task.wait()
end
elseif _G.OvenPlayerAuto == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Oven equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoOven:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Siphon Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.SiphonPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.SiphonPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

AutoSiphon = Tab14:AddToggle({
	Name = "Auto Siphon Player",
	Default = false,
	Callback = function(Value)
_G.AutoSiphonPlayer = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Siphon" then
while _G.AutoSiphonPlayer and game.Players.LocalPlayer.leaderstats.Glove.Value == "Siphon" do
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.SiphonPlayer].Character:FindFirstChild("entered") then
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = game.Players[_G.SiphonPlayer].Character.HumanoidRootPart.CFrame})
end
elseif _G.PlayerChoose == "Random" then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character:FindFirstChild("stevebody") == nil and RandomPlayer.Character:FindFirstChild("rock") == nil then
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = RandomPlayer.Character.HumanoidRootPart.CFrame})
end
end
end 
task.wait()
end
elseif _G.AutoSiphonPlayer == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Siphon equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoSiphon:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Kick Player Recall",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
PlayerKickRecall = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..PlayerKickRecall.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Kick Player Recall",
	Callback = function()
if _G.PlayerChoose == "Username" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" and game.Players.LocalPlayer.Character:FindFirstChild("Recall") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players[PlayerKickRecall].Character:FindFirstChild("entered") and game.Players[PlayerKickRecall].Character:FindFirstChild("HumanoidRootPart") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = false
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-725,310,-2)
task.wait(0.25)
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(2.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerKickRecall].Character.HumanoidRootPart.CFrame
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = true
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Recall equipped, or you have Backpack Recall equipped, or player not enter arena",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PlayerChoose == "Random" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" and game.Players.LocalPlayer.Character:FindFirstChild("Recall") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players[PlayerKick].Character:FindFirstChild("entered") and game.Players[PlayerKick].Character:FindFirstChild("HumanoidRootPart") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = false
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-725,310,-2)
task.wait(0.25)
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(2.7)
local players = game.Players:GetChildren()
local randomPlayer = players[math.random(1, #players)]
repeat randomPlayer = players[math.random(1, #players)] until randomPlayer ~= game.Players.LocalPlayer and randomPlayer.Character:FindFirstChild("entered") and randomPlayer.Character:FindFirstChild("ded") == nil and randomPlayer.Character:FindFirstChild("InLabyrinth") == nil and randomPlayer.Character:FindFirstChild("rock") == nil
Target = randomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = true
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Recall equipped, or you have Backpack Recall equipped, or player not enter arena",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab14:AddToggle({
	Name = "Auto Sbeve All Player",
	Default = false,
	Callback = function(Value)
_G.AutoSbeveAllPlayer = Value
while _G.AutoSbeveAllPlayer do
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Sbeve" or game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
for i,v in pairs(game.Players:GetChildren()) do
         if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
              if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                 v.Character.HumanoidRootPart.CanCollide = false
                 v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.stevebody.CFrame
              end
          end
     end
 end
task.wait()
end
	end    
})

Tab14:AddButton({
	Name = "Sbeve All Player",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Sbeve" or game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
for i,v in pairs(game.Players:GetChildren()) do
         if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
              if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Ragdolled.Value == false then
                 v.Character.HumanoidRootPart.CanCollide = false
                 v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.stevebody.CFrame
              end
          end
     end
 end
  	end    
})

Tab14:AddDropdown({
	Name = "Black Hole",
	Default = "",
	Options = {"Normal", "Teleport Cannon Island","Teleport Cannon Island + Black Hole"},
	Callback = function(Value)
_G.BlackHoleCre = Value
	end    
})

Tab14:AddButton({
	Name = "Auto Create Black Hole",
	Callback = function()
if _G.BlackHoleCre == "Normal" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2147429609) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,30,0)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.05)
fireclickdetector(workspace.Lobby["rob"].ClickDetector)
game:GetService("ReplicatedStorage").rob:FireServer()
wait(4.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
task.wait(0.08)
fireclickdetector(workspace.Lobby["bob"].ClickDetector)
game:GetService("ReplicatedStorage").bob:FireServer()
wait(0.5)
for i = 1,26 do
for _, v in pairs(workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You have in lobby, or You don't have badge bob, or badge rob.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.BlackHoleCre == "Teleport Cannon Island" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2147429609) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,30,0)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.05)
fireclickdetector(workspace.Lobby["rob"].ClickDetector)
game:GetService("ReplicatedStorage").rob:FireServer()
wait(4.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
task.wait(0.06)
fireclickdetector(workspace.Lobby["bob"].ClickDetector)
game:GetService("ReplicatedStorage").bob:FireServer()
wait(0.5)
for i = 1,26 do
for _, v in pairs(workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
end
wait(0.5)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.27)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
wait(0.25)
for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
else
OrionLib:MakeNotification({Name = "Error",Content = "You have in lobby, or You don't have badge bob, or badge rob.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.BlackHoleCre == "Teleport Cannon Island + Black Hole" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2147429609) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,30,0)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.05)
fireclickdetector(workspace.Lobby["rob"].ClickDetector)
game:GetService("ReplicatedStorage").rob:FireServer()
wait(4.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
task.wait(0.06)
fireclickdetector(workspace.Lobby["bob"].ClickDetector)
game:GetService("ReplicatedStorage").bob:FireServer()
wait(0.5)
for i = 1,26 do
for _, v in pairs(workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
end
wait(0.5)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.27)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
wait(0.25)
for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
wait(0.05)
repeat task.wait()
if game.Workspace:FindFirstChild("Blackhole_Particles") and game.Workspace.Blackhole_Particles:FindFirstChild("BlackHole") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
end
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
else
OrionLib:MakeNotification({Name = "Error",Content = "You have in lobby, or You don't have badge bob, or badge rob.",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab14:AddButton({
	Name = "Auto Enter Map Null",
	Callback = function()
if game.Workspace:FindFirstChild("Blackhole_Particles") == nil then
OrionLib:MakeNotification({Name = "Error",Content = "When will someone create a black hole [ BOB + ROB ].",Image = "rbxassetid://7733658504",Time = 5})
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") ~= nil and game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Default" then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
fireclickdetector(game.Workspace.Lobby.Default.ClickDetector)
wait(0.5)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.5)
if game.Workspace.Blackhole_Particles ~= nil and game.Workspace.Blackhole_Particles.BlackHole ~= nil then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") ~= nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Default" then
if game.Workspace.Blackhole_Particles ~= nil and game.Workspace.Blackhole_Particles.BlackHole ~= nil then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Default" then
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.5)
if game.Workspace.Blackhole_Particles ~= nil and game.Workspace.Blackhole_Particles.BlackHole ~= nil then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Default" then
fireclickdetector(game.Workspace.Lobby.Default.ClickDetector)
wait(0.07)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.05)
if game.Workspace.Blackhole_Particles ~= nil and game.Workspace.Blackhole_Particles.BlackHole ~= nil then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
end
  	end    
})

Tab14:AddButton({
	Name = "Auto Enter Cannon",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
wait(0.25)
for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
wait(0.25)
for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
end
  	end    
})

Tab14:AddToggle({
	Name = "Auto Teleport Black Hole",
	Default = false,
	Callback = function(Value)
_G.TeleportBlackHole = Value
while _G.TeleportBlackHole do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Workspace:FindFirstChild("Blackhole_Particles") and game.Workspace.Blackhole_Particles:FindFirstChild("BlackHole") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
end
end
task.wait()
end
	end    
})

Tab14:AddButton({
	Name = "Replica UNO",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
wait(0.3)
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.3)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.07)
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(20)
if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
wait(3.75)
fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddDropdown({
	Name = "Teleport Old Place",
	Default = "Yes",
	Options = {"Yes", "No","Player"},
	Callback = function(Value)
_G.TeleportOldPlace = Value
	end    
})

Tab14:AddTextbox({
	Name = "Teleport Player Recall",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
PlayerTeleport = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..PlayerTeleport.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Player Teleport",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" and game.Players.LocalPlayer.Backpack:FindFirstChild("Recall") == nil then
if _G.TeleportOldPlace == "Yes" then
OLG = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(2.75)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTeleport].Character.Head.CFrame
task.wait(0.5)
if _G.TeleportOldPlace == "Yes" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OLG
elseif _G.TeleportOldPlace == "Player" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTeleport].Character.HumanoidRootPart.CFrame
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Recall equipped or you haven't in arena or you have equip Backpack Recall.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddTextbox({
	Name = "Grab Player Teleport",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
GrabPlayerGot = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ "..GrabPlayerGot.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddButton({
	Name = "Grab Player Teleport",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Grab" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[GrabPlayerGot].Character:FindFirstChild("entered") then
if _G.TeleportOldPlace == "Yes" then
OLG = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[GrabPlayerGot].Character.HumanoidRootPart.CFrame
wait(0.15)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.15)
if _G.TeleportOldPlace == "Yes" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OLG
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Grab equipped, or you have to go Arena, or player go to Arena",mage = "rbxasdetid://7733658504",Time = 5})
end
  	end 
})

Tab14:AddButton({
	Name = "Kick Player Za Hando",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" then
OGWS = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
OGJP = game.Players.LocalPlayer.Character.Humanoid.JumpPower
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = false
end
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(0.47)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-725,310,-2)
wait(3.75)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OGWS
game.Players.LocalPlayer.Character.Humanoid.JumpPower = OGJP
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
v.CanTouch = true
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Za Hando equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddButton({
	Name = "Spawn Orb Siphon",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Siphon" then
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame})
wait(0.2)
if game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("siphon_charge") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Siphon equipped or you haven't in arena.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddDropdown({
	Name = "Potion",
	Default = "Speed",
	Options = {"Grug","idIot","Nightmare","Confusion","Power","Paralyzing","Haste","Invisibility","Explosion","Invincible","Toxic","Freeze","Feather","Speed","Lethal","Slow","Antitoxin","Corrupted Vine","Field"},
	Callback = function(Value)
_G.MakePotion = Value
	end    
})

Tab14:AddSlider({
	Name = "Medicine Mix Potion",
	Min = 1,
	Max = 200,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Mix",
	Callback = function(Value)
		_G.GivePotion = Value
	end    
})

if _G.PotionChooseNuke == nil then
_G.PotionChooseNuke = "Normal"
end
Tab14:AddDropdown({
	Name = "Potions",
	Default = "",
	Options = {"Nuke", "Normal"},
	Callback = function(Value)
_G.PotionChooseNuke = Value
	end    
})

Tab14:AddButton({
	Name = "Get Potions",
	Callback = function()
if _G.PotionChooseNuke == "Normal" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for b = 1, _G.GivePotion do
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for i = 1, #_G.GetPotion[_G.MakePotion] do
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"AddItem", _G.GetPotion[_G.MakePotion][i]}))
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"MixItem", _G.GetPotion[_G.MakePotion][i]}))
end
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"BrewPotion"}))
task.wait()
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.PotionChooseNuke == "Nuke" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for b = 1, _G.GivePotion do
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for i = 1, #_G.GetPotion[_G.MakePotion] do
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"AddItem", _G.GetPotion[_G.MakePotion][i]}))
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"MixItem", _G.GetPotion[_G.MakePotion][i]}))
end
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"BrewPotion"}))
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

PotionAuto = Tab14:AddToggle({
	Name = "Auto Potion",
	Default = false,
	Callback = function(Value)
_G.AutoGetPotion = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
while _G.AutoGetPotion do
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for i = 1, #_G.GetPotion[_G.MakePotion] do
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"AddItem", _G.GetPotion[_G.MakePotion][i]}))
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"MixItem", _G.GetPotion[_G.MakePotion][i]}))
end
game.ReplicatedStorage:WaitForChild("AlchemistEvent"):FireServer(unpack({"BrewPotion"}))
task.wait()
end
elseif _G.AutoGetPotion == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
PotionAuto:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Potion Throw",
	Default = "Speed Potion",
	Options = {"Grug Potion","IdIot Potion","Nightmare Potion","Confusion Potion","Power Potion","Paralyzing Potion","Haste Potion","Invisibility Potion","Expotion","Invincible Potion","Toxic Potion","Freeze Potion","Feather Potion","Speed Potion","Lethal Poison","Slow Potion","Antitoxin Potion"},
	Callback = function(Value)
_G.PotionThrownNuke = Value
	end    
})

if _G.NukeExtend == nil then
_G.NukeExtend = "90"
end
Tab14:AddTextbox({
	Name = "Nuke Extend",
	Default = "UseNumber",
	TextDisappear = false,
	Callback = function(Value)
		_G.NukeExtend = Value
	end	  
})

if _G.NukeHeightPotion == nil then
_G.NukeHeightPotion = "-5"
end
Tab14:AddTextbox({
	Name = "Nuke Potion Height",
	Default = "UseNumber",
	TextDisappear = false,
	Callback = function(Value)
		_G.NukeHeightPotion = Value
	end	  
})

Tab14:AddDropdown({
	Name = "Place",
	Default = "",
	Options = {"Arena", "Island Slapple", "Tournament", "Moai Island", "Player"},
	Callback = function(Value)
_G.PhaceNuke = Value
	end    
})

PotionThrowNukeAuto = Tab14:AddToggle({
	Name = "Auto Throw Nuke Potion",
	Default = false,
	Callback = function(Value)
_G.AutoThrowPotion = Value
if _G.AutoThrowPotion == false then
if game.Workspace.CurrentCamera and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
end
end
if _G.AutoThrowPotion == true and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
if _G.AutoThrowPotion == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame
if _G.PhaceNuke == "Arena" then
game.Workspace.CurrentCamera.CameraSubject = game.workspace.Origo
elseif _G.PhaceNuke == "Island Slapple" then
game.Workspace.CurrentCamera.CameraSubject = game.workspace.Arena.island5.Union
elseif _G.PhaceNuke == "Tournament" then
game.Workspace.CurrentCamera.CameraSubject = workspace.Battlearena.Arena
elseif _G.PhaceNuke == "Moai Island" then
game.Workspace.CurrentCamera.CameraSubject = game.Workspace.Arena.island4.Grass
elseif _G.PhaceNuke == "Player" then 
game.Workspace.CurrentCamera.CameraSubject = game.workspace.Origo
end
elseif _G.AutoThrowPotion == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame
end
while _G.AutoThrowPotion do
local RandomTeleX = math.random(-_G.NukeExtend,_G.NukeExtend)
local RandomTeleZ = math.random(-_G.NukeExtend,_G.NukeExtend)
if _G.PhaceNuke == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(RandomTeleX,_G.NukeHeightPotion,RandomTeleZ)
elseif _G.PhaceNuke == "Island Slapple" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(RandomTeleX,_G.NukeHeightPotion,RandomTeleZ)
elseif _G.PhaceNuke == "Tournament" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(RandomTeleX,_G.NukeHeightPotion,RandomTeleZ)
elseif _G.PhaceNuke == "Moai Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.island4.Grass.CFrame * CFrame.new(RandomTeleX,_G.NukeHeightPotion,RandomTeleZ)
elseif _G.PhaceNuke == "Player" then
local players = game.Players:GetChildren()
local randomPlayer = players[math.random(1, #players)]
repeat randomPlayer = players[math.random(1, #players)] until randomPlayer ~= game.Players.LocalPlayer and randomPlayer.Character:FindFirstChild("entered") and randomPlayer.Character:FindFirstChild("ded") == nil and randomPlayer.Character:FindFirstChild("InLabyrinth") == nil and randomPlayer.Character:FindFirstChild("rock") == nil
Target = randomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,_G.NukeHeightPotion,5)
end
task.wait()
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("UsePotion",_G.PotionThrownNuke,true)
end
elseif _G.AutoThrowPotion == true then
OrionLib:MakeNotification({Name = "Error",Content = "You dont't have Alchemist equipped, or you have in the lobby",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
PotionThrowNukeAuto:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Speed Ping Pong",
	Default = "UserSpeed",
	TextDisappear = false,
	Callback = function(Value)
if Value == "inf" or Value == "Inf" or Value == "infinity" or Value == "Infinity" then
OrbitSpeed = 9e9
else
OrbitSpeed = Value
end
	end	  
})

Tab14:AddSlider({
	Name = "Extend Ping Pong",
	Min = 0,
	Max = 200,
	Default = 15,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.ExtendPingPong = Value
	end    
})

PingPong = Tab14:AddToggle({
	Name = "Ping Pong Orbit",
	Default = false,
	Callback = function(Value)
		PingPongOrbit = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" then
game.Players.LocalPlayer.Character.Torso.RadioPart.Rotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
Orbit = "0"
if OrbitSpeed == nil then
OrbitSpeed = 1
end
PingPongBall = game.Players.LocalPlayer.Name.."_PingPongBall"
while PingPongOrbit and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
Orbit = Orbit + OrbitSpeed
game.Players.LocalPlayer.Character.Torso.RadioPart.Rotation = Vector3.new(-180, Orbit, -180)
if game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[2] then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.CFrame = game.Players.LocalPlayer.Character.Torso.RadioPart.CFrame * CFrame.new(0,0,-_G.ExtendPingPong) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
                        v.CFrame = game.Players.LocalPlayer.Character.Torso.RadioPart.CFrame * CFrame.new(0,0,_G.ExtendPingPong) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
                    end
                end
elseif game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[1] or game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[2] then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.Parent = game.Players.LocalPlayer.Character.Torso.RadioPart
break
                    end
                end
end
task.wait(0.01)
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Ping Pong equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
PingPong:Set(false)
end
	end    
})

PingPongFling = Tab14:AddToggle({
	Name = "Ping Pong Fling",
	Default = false,
	Callback = function(Value)
		_G.PingPongFlingAll = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" then
PingPongBall = game.Players.LocalPlayer.Name.."_PingPongBall"
while _G.PingPongFlingAll and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
if Target ~= game.Players.LocalPlayer.Name and Target.Character and Target.Character:WaitForChild("Ragdolled").Value == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.CFrame = Target.Character.HumanoidRootPart.CFrame
                    end
                end
end
task.wait(0.01)
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Ping Pong equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
PingPongFling:Set(false)
end
	end    
})

Tab14:AddTextbox({
	Name = "Ping Pong Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.TargeterNameFling = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.TargeterNameFling.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab14:AddSlider({
	Name = "Extend Ping Pong Player",
	Min = 0,
	Max = 50,
	Default = 15,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.ExtendPingPongPlayer = Value
	end    
})

PingPongPlayerFling = Tab14:AddToggle({
	Name = "Ping Pong Player",
	Default = false,
	Callback = function(Value)
		_G.PingPongFlingPlayer = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" then
PingPongBall = game.Players.LocalPlayer.Name.."_PingPongBall"
while _G.PingPongFlingPlayer and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
if game.Players[_G.TargeterNameFling].Character and game.Players[_G.TargeterNameFling].Character:WaitForChild("Ragdolled").Value == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.CFrame = game.Players[_G.TargeterNameFling].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-_G.ExtendPingPongPlayer)
                    end
                end
end
task.wait()
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Ping Pong equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
PingPongPlayerFling:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Equipped Glove Farm",
	Default = "",
	Options = {"Baller","Replica","Blink","Reverse"},
	Callback = function(Value)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
if Value == "Baller" then
fireclickdetector(workspace.Lobby["Baller"].ClickDetector)
elseif Value == "Replica" then
fireclickdetector(workspace.Lobby["Replica"].ClickDetector)
elseif Value == "Blink" then
fireclickdetector(workspace.Lobby["Blink"].ClickDetector)
elseif Value == "Reverse" then
fireclickdetector(workspace.Lobby["Reverse"].ClickDetector)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You aren't in the lobby.",Image = "rbxassetid://7733658504",Time = 5})
end
	end    
})

Tab14:AddDropdown({
	Name = "Will Teleport Farm",
	Default = "SafeSpotBox 1.0",
	Options = {"Up To You","SafeSpotBox 1.0","SafeSpotBox 2.0"},
	Callback = function(Value)
_G.GetTeleport = Value
	end    
})

Tab14:AddDropdown({
	Name = "Slap Farm",
	Default = "Normal",
	Options = {"Normal","Fast × Slap Farm [ Lag ]"},
	Callback = function(Value)
_G.GetSlapGot = Value
	end    
})

Tab14:AddSlider({
	Name = "Slap Farm",
	Min = 1,
	Max = 2000,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Slap",
	Callback = function(Value)
		_G.SlapFarmGet = Value
	end    
})

ReplicaAndReverse = Tab14:AddToggle({
	Name = "Reverse + Replica Slap Farm",
	Default = false,
	Callback = function(Value)
		ReplicaAndReverseGet = Value 
if _G.GetSlapGot == "Normal" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if ReplicaAndReverseGet == true then 
coroutine.wrap(SpamReplicaReverse)() 
end
while ReplicaAndReverseGet do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
                 end
end
task.wait()
end
elseif ReplicaAndReverseGet == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndReverse:Set(false) 
end
elseif _G.GetSlapGot == "Fast × Slap Farm [ Lag ]" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if ReplicaAndReverseGet == true then 
coroutine.wrap(SpamReplicaReverse)() 
end
while ReplicaAndReverseGet do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1,_G.SlapFarmGet do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
end
end
                 end
end
task.wait(0.07)
end
elseif ReplicaAndReverseGet == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndReverse:Set(false) 
end
end
	end    
})

BlinkAndReverse = Tab14:AddToggle({
	Name = "Reverse + Blink Slap Farm",
	Default = false,
	Callback = function(Value)
		_G.BlinkAndReverseGet = Value 
if _G.GetSlapGot == "Normal" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if _G.BlinkAndReverseGet == true then 
coroutine.wrap(SpamBlinkReverse)() 
end
while _G.BlinkAndReverseGet do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
                 end
end
task.wait()
end
elseif _G.BlinkAndReverseGet == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
BlinkAndReverse:Set(false) 
end
elseif _G.GetSlapGot == "Fast × Slap Farm [ Lag ]" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if _G.BlinkAndReverseGet == true then 
coroutine.wrap(SpamBlinkReverse)() 
end
while _G.BlinkAndReverseGet do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1,_G.SlapFarmGet do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
end
end
                 end
end
task.wait(0.07)
end
elseif _G.BlinkAndReverseGet == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
BlinkAndReverse:Set(false) 
end
end
	end    
})

ReplicaBlinkReverseBaller = Tab14:AddToggle({
	Name = "Reverse + Replica & Blink | Baller Slap Farm",
	Default = false,
	Callback = function(Value)
		_G.ReplicaBlinkReverseBaller = Value 
if _G.GetSlapGot == "Normal" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if _G.ReplicaBlinkReverseBaller == true then 
coroutine.wrap(SpamReplicaBlinkReverseAndBaller)() 
end
while _G.ReplicaBlinkReverseBaller do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
                 end
end
task.wait()
end
elseif _G.ReplicaBlinkReverseBaller == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndReverse:Set(false) 
end
elseif _G.GetSlapGot == "Fast × Slap Farm [ Lag ]" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
if _G.ReplicaBlinkReverseBaller == true then 
coroutine.wrap(SpamReplicaBlinkReverseAndBaller)() 
end
while _G.ReplicaBlinkReverseBaller do 
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1,_G.SlapFarmGet do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"),true)
end
end
end
                 end
end
task.wait()
end
elseif _G.ReplicaBlinkReverseBaller == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Reverse equipped or you have in lobby.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndReverse:Set(false) 
end
end
	end    
})

ReplicaAndBallerFarm = Tab14:AddToggle({
	Name = "Baller & Replica Slap Farm",
	Default = false,
	Callback = function(Value)
		ReplicaBallerFarm = Value 
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" then 
if ReplicaBallerFarm == true then 
coroutine.wrap(SpamReplicaBaller)() 
end
while ReplicaBallerFarm do 
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then 
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                 end
end
task.wait()
end
elseif ReplicaBallerFarm == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Baller equipped.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndBallerFarm:Set(false) 
end 
	end    
})

ReplicaAndBallerAndBlinkFarm = Tab14:AddToggle({
	Name = "Baller & Replica & Bink Slap Farm",
	Default = false,
	Callback = function(Value)
		ReplicaBallerBlinkFarm = Value 
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Blink" then 
if ReplicaBallerBlinkFarm == true then 
coroutine.wrap(SpamReplicaBallerBlink)() 
end
while ReplicaBallerBlinkFarm do 
for i, v in pairs(workspace:GetChildren()) do 
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then 
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                 end
end
task.wait()
end
elseif ReplicaBallerBlinkFarm == true then 
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Blink equipped.",Image = "rbxassetid://7733658504",Time = 5}) 
wait(0.05)
ReplicaAndBallerAndBlinkFarm:Set(false) 
end 
	end    
})

FarmBaller = Tab14:AddToggle({
	Name = "Auto Slap Baller",
	Default = false,
	Callback = function(Value)
_G.BallerFarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if _G.BallerFarm == true then
coroutine.wrap(SpamBaller)()
end
while _G.BallerFarm and game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" do
for _, v in pairs(workspace:GetChildren()) do
                 if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.GeneralHit:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                end
            end
task.wait()
end
elseif _G.BallerFarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Baller equipped or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FarmBaller:Set(false)
end
	end    
})

FarmReplica = Tab14:AddToggle({
	Name = "Auto Slap Replica",
	Default = false,
	Callback = function(Value)
ReplicaFarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" and game.Players.LocalPlayer.Character.IsInDefaultArena.Value == true then
if ReplicaFarm == true then
coroutine.wrap(SpamReplica)()
end
while ReplicaFarm and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" and game.Players.LocalPlayer.Character.IsInDefaultArena.Value == true do
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                end
            end
task.wait()
end
elseif ReplicaFarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Replica equipped or you aren't in the island default.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FarmReplica:Set(false)
end
	end    
})

FarmBlink = Tab14:AddToggle({
	Name = "Auto Slap Blink",
	Default = false,
	Callback = function(Value)
BlinkFarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Blink" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if BlinkFarm == true then
coroutine.wrap(SpamBlink)()
end
while BlinkFarm and game.Players.LocalPlayer.leaderstats.Glove.Value == "Blink" and game.Players.LocalPlayer.Character:FindFirstChild("entered") do
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.GeneralHit:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                end
            end
task.wait()
end
elseif BlinkFarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Blink equipped or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FarmBlink:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Ingredient",
	Default = "",
	Options = {"Autumn Sprout", "Blood Rose", "Blue Crystal", "Dark Root", "Dire Flower","Elder Wood", "Fire Flower", "Glowing Mushroom", "Hazel Lily", "Jade Stone","Lamp Grass", "Mushroom", "Plane Flower", "Red Crystal", "Wild Vine", "Winter Rose","Cake Mix"},
	Callback = function(Value)
AlchemistIngredientsGet = Value
	end    
})

Tab14:AddButton({
	Name = "Get Alchemist Ingredients",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", AlchemistIngredientsGet)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

GetAlchemist = Tab14:AddToggle({
	Name = "Auto Get Alchemist Ingredients",
	Default = false,
	Callback = function(Value)
		AlchemistIngredients = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
while AlchemistIngredients and game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" do
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", AlchemistIngredientsGet)
task.wait()
end
elseif AlchemistIngredients == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
GetAlchemist:Set(false)
end
	end    
})

GetAllAlchemist = Tab14:AddToggle({
	Name = "Get All Alchemist Ingredients",
	Default = false,
	Callback = function(Value)
		AlchemistIngredients = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
while AlchemistIngredients and game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" do
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Cake Mix")
task.wait()
end
elseif AlchemistIngredients == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Alchemist equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
GetAllAlchemist:Set(false)
end
	end    
})

Tab14:AddSlider({
	Name = "Extend HitBox Rob",
	Min = 5,
	Max = 400,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.ExtendHitboxRob = Value
	end    
})

Tab14:AddColorpicker({
	Name = "Color Hitbox Rob",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		_G.ColorHitboxRob = Value
	end	  
})

Tab14:AddToggle({
	Name = "Hitbox All Rob & Color",
	Default = false,
	Callback = function(Value)
_G.HitboxRob = Value
while _G.HitboxRob do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Field" then
                        v.Size = Vector3.new(_G.ExtendHitboxRob,_G.ExtendHitboxRob,_G.ExtendHitboxRob)
                        v.BrickColor = BrickColor.new(_G.ColorHitboxRob)
                    end
                end
task.wait()
end
if _G.HitboxRob == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Field" then
                        v.Size = Vector3.new(16,16,16)
                        v.BrickColor = BrickColor.new(255,255,255)
                    end
                end
end
	end    
})

Tab14:AddDropdown({
	Name = "Godmode Glove",
	Default = "Golden",
	Options = {"Reverse","Golden"},
	Callback = function(Value)
SetGodmode = Value
	end    
})

Tab14:AddToggle({
	Name = "Auto Godmode",
	Default = false,
	Callback = function(Value)
	    AutoGodmode = Value
if SetGodmode == "Reverse" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
while AutoGodmode and SetGodmode == "Reverse" do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) == nil and game.Players.LocalPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil then
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
end
task.wait(0.85)
end
end
if SetGodmode == "Golden" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" then
while AutoGodmode and SetGodmode == "Golden" do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
end
task.wait()
end
end
	end    
})

Tab14:AddSlider({
	Name = "Speed Cloud",
	Min = 0.1,
	Max = 1.2,
	Default = 0.5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "Speed",
	Callback = function(Value)
		_G.SetSpeedCloud = Value
	end    
})

CloudSpeed = Tab14:AddToggle({
	Name = "Auto Set Cloud Speed",
	Default = false,
	Callback = function(Value)
_G.CloudSpeed = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" then
while _G.CloudSpeed and game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("BodyVelocity") then
                        v.BodyVelocity.Velocity = v.BodyVelocity.Velocity * _G.SetSpeedCloud
                    end
               end
task.wait(0.10)
end
elseif _G.CloudSpeed == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Cloud equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
CloudSpeed:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Cloud Bring",
	Default = "",
	Options = {"Player","Your"},
	Callback = function(Value)
_G.CloudBring = Value
	end    
})

Tab14:AddTextbox({
	Name = "Bring Cloud Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.BringPlayerCloud = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.BringPlayerCloud.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

CloudBringSit = Tab14:AddToggle({
	Name = "Auto Bring Cloud",
	Default = false,
	Callback = function(Value)
_G.BringCloud = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" then
while _G.BringCloud and _G.CloudBring == "Player" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" do
if game.Players[_G.BringPlayerCloud].Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.BringPlayerCloud].Character:FindFirstChild("entered") and game.Players[_G.BringPlayerCloud].Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players[_G.BringPlayerCloud].Character.HumanoidRootPart.CFrame * CFrame.new(0,-2.32,0)
                    end
               end
          end
task.wait()
end
while _G.BringCloud and _G.CloudBring == "Your" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Cloud" do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2.32,0)
                    end
               end
          end
task.wait()
end
elseif _G.BringCloud == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Cloud equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
CloudBringSit:Set(false)
end
	end    
})

Tab14:AddDropdown({
	Name = "Firework Bring",
	Default = "",
	Options = {"Player","Your"},
	Callback = function(Value)
_G.FireworkBring = Value
	end    
})

Tab14:AddTextbox({
	Name = "Bring Firework Player",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.BringPlayerFirework = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.BringPlayerFirework.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

FireworkBringSit = Tab14:AddToggle({
	Name = "Auto Bring Firework",
	Default = false,
	Callback = function(Value)
_G.BringFirework = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Firework" then
while _G.BringFirework and _G.FireworkBring == "Player" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Firework" do
if game.Players[_G.BringPlayerFirework].Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.BringPlayerFirework].Character:FindFirstChild("entered") and game.Players[_G.BringPlayerFirework].Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players[_G.BringPlayerFirework].Character.HumanoidRootPart.CFrame
                    end
               end
          end
task.wait()
end
while _G.BringFirework and _G.FireworkBring == "Your" and game.Players.LocalPlayer.leaderstats.Glove.Value == "Firework" do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
               end
          end
task.wait()
end
elseif _G.BringFirework == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Firework equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FireworkBringSit:Set(false)
end
	end    
})

FullKinetic = Tab14:AddToggle({
	Name = "Auto Full Kinetic",
	Default = false,
	Callback = function(Value)
FullKineticSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
while FullKineticSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
task.wait()
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Kinetic equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FullKinetic:Set(false)
end
	end    
})

Tab14:AddButton({
	Name = "Infinite Invisibility",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
task.wait(1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name  ~= "Humanoid" then
v.Transparency = 0
end
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You need to be in lobby and have 666+ slaps.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab14:AddColorpicker({
	Name = "Color Skin",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		_G.skinColor = Value
	end	  
})

ColorSkin = Tab14:AddToggle({
	Name = "Auto Color Skin",
	Default = false,
	Callback = function(Value)
		_G.GoldColor = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" then
while _G.GoldColor and game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" do
game:GetService("ReplicatedStorage"):WaitForChild("Goldify"):FireServer(false, BrickColor.new(_G.skinColor))
task.wait()
end
elseif _G.GoldColor == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Golden equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
ColorSkin:Set(false)
end
	end    
})

RainBox = Tab14:AddToggle({
	Name = "Auto Rainbow",
	Default = false,
	Callback = function(Value)
		_G.Rainbow = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" then
while _G.Rainbow and game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" do
local randomnumber = math.random(1004, 1032)
game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(randomnumber))
task.wait(0.075)
end
elseif _G.Rainbow == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Golden equipped",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
RainBox:Set(false)
end
	end    
})

Tab14:AddToggle({
	Name = "Invisible Reverse",
	Default = false,
	Callback = function(Value)
		Invis_Reverse = Value
while Invis_Reverse do
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("UnoReverseCard")
game.Players.LocalPlayer.Character.Head["UnoReverseCard"]:Destroy()
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v.Name == "SelectionBox" then
v:Destroy()
end
end
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Infinity Jump",
	Default = false,
	Callback = function(Value)
_G.InfiniteJump = Value
game:GetService("UserInputService").JumpRequest:connect(function()
if _G.InfiniteJump then
game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
end
end)
	end    
})

Tab7:AddDropdown({
	Name = "Godmode",
	Default = "",
	Options = {"Godmode", "Godmode + Invisibility"},
	Callback = function(Value)
if Value == "Godmode" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Godmode + Invisibility" then
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
else
OrionLib:MakeNotification({Name = "Error",Content = "You need 666+ slaps",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end    
})

Tab7:AddDropdown({
	Name = "Teleport",
	Default = "",
	Options = {"Arena", "Lobby", "Hunter Room", "Brazil", "Island Slapple", "Plate", "Tournament", "Cannon Island", "Equip Glovel", "Keypad", "Cube Of Death", "Moai Island", "Default Arena", "Island 1", "Island 2", "Island 3"},
	Callback = function(Value)
if Value == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Lobby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
elseif Value == "Hunter Room" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0,5,0)
elseif Value == "Brazil" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
elseif Value == "Island Slapple" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "Plate" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
elseif Value == "Tournament" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
elseif Value == "Cannon Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
elseif Value == "Equip Glovel" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Extended" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.GlovelHoleInTheWall.GlovelHoleInTheWall.CFrame
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Extended equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif Value == "Keypad" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad.",Image = "rbxassetid://7733658504",Time = 5})
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Keypad.Buttons.Enter.CFrame
end
elseif Value == "Cube Of Death" then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0,5,0)
end
elseif Value == "Moai Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "Default Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
elseif Value == "Island 1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
elseif Value == "Island 2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
elseif Value == "Island 3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
end
	end    
})

Tab7:AddDropdown({
	Name = "Animation Combat",
	Default = "",
	Options = {"Skukuchi Attacker", "Skukuchi Target", "Bomb Throw", "Bubble Shoot", "Revolver", "Ban Hammer", "Slapstick", "Dual", "Slap", "Bomb", "Rocket Launcher", "Rojo", "Rojo Recoil", "Thor", "Rob"},
	Callback = function(Value)
if Value == "Skukuchi Attacker" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.CutsceneAttacker, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Skukuchi Target" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.CutsceneTarget, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Bomb Throw" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.bombthrow, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Bubble Shoot" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.bubbleshoot, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Revolver" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Hitman.RevolverAnim, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Ban Hammer" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations["Ban Hammer"], game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Slapstick" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.slapstick_slap, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Dual" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.DualSlap, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Slap" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Slap, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Bomb" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations.Bomb, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Rocket Launcher" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations["Rocket Launcher"], game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Rojo" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Rojo Recoil" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.AnimationRecoil, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Thor" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Thor.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
elseif Value == "Rob" then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.robAnimation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
	end    
})

Tab7:AddTextbox({
	Name = "Animation",
	Default = "Id Animation",
	TextDisappear = false,
	Callback = function(Value)
_G.Animation = Value
	end	  
})

Tab7:AddButton({
	Name = "Start Animation | Edit ID",
	Callback = function()
if game.ReplicatedStorage:FindFirstChild("Animation") == nil then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://".._G.Animation
Anim.Name = "Animation"
Anim.Parent = game.ReplicatedStorage
elseif game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.ReplicatedStorage:FindFirstChild("Animation").AnimationId = "rbxassetid://".._G.Animation
end
wait(0.5)
if game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
  	end    
})

Tab7:AddButton({
	Name = "Stop Animation | Destroy",
	Callback = function()
if game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Stop()
game.ReplicatedStorage.Animation:Destroy()
end
  	end    
})

Tab7:AddToggle({
	Name = "Autofarm Slapples",
	Default = false,
	Callback = function(Value)
	    SlappleFarm = Value
while SlappleFarm do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
       end
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Autofarm Candy",
	Default = false,
	Callback = function(Value)
	    CandyCornsFarm = Value
while CandyCornsFarm do
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
                end
            end
task.wait()
end
	end    
})

Tab7:AddTextbox({
	Name = "Player Teleport",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.PlayerTeleport = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.PlayerTeleport.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddButton({
	Name = "Teleport Player",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerTeleport].Character.HumanoidRootPart.CFrame
  	end    
})

Tab7:AddTextbox({
	Name = "Player View",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.ViewPlayer = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.ViewPlayer.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddToggle({
	Name = "Auto View Player",
	Default = false,
	Callback = function(Value)
_G.PlayerView = Value
if _G.PlayerView == false then
if game.Workspace.CurrentCamera and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
end
end
while _G.PlayerView do
if game.Workspace.CurrentCamera and game.Players[_G.ViewPlayer].Character and game.Players[_G.ViewPlayer].Character:FindFirstChildOfClass("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game.Players[_G.ViewPlayer].Character:FindFirstChildOfClass("Humanoid")
end
task.wait()
end
	end    
})

Tab7:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab7:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab7:AddDropdown({
	Name = "Pocket",
	Default = "Add All Player",
	Options = {"Add All Player","Remove All Player"},
	Callback = function(Value)
_G.StartMusicGot = Value
	end    
})

Tab7:AddButton({
	Name = "Pocket Player",
	Callback = function()
if _G.StartMusicGot == "Add All Player" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pocket" then
for i,v in pairs(game.Players:GetPlayers()) do
game:GetService("ReplicatedStorage").PocketWhitelist:FireServer("add", v)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Pocket Equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.StartMusicGot == "Remove All Player" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pocket" then
for i,v in pairs(game.Players:GetPlayers()) do
game:GetService("ReplicatedStorage").PocketWhitelist:FireServer("remove", v)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Pocket Equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab7:AddTextbox({
	Name = "Play Pocket Radio",
	Default = "UserIDMusic",
	TextDisappear = false,
	Callback = function(Value)
_G.IDPocketRadio = Value
	end	  
})

Tab7:AddDropdown({
	Name = "Music",
	Default = "Play",
	Options = {"Play","Stop"},
	Callback = function(Value)
_G.StartMusicGot = Value
	end    
})

Tab7:AddButton({
	Name = "Play Music",
	Callback = function()
if _G.StartMusicGot == "Play" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pocket" then
game:GetService("ReplicatedStorage").PocketMusic:FireServer("play","rbxassetid://".._G.IDPocketRadio)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Pocket Equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.StartMusicGot == "Stop" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Pocket" then
game:GetService("ReplicatedStorage").PocketMusic:FireServer("stop")
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Pocket Equipped",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab7:AddButton({
	Name = "Auto Keypad",
	Callback = function()
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad, can have started serverhop",Image = "rbxassetid://7733658504",Time = 5})
task.wait(1.5)
for _, v in ipairs(game.HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if v.playing < v.maxPlayers and v.JobId ~= game.JobId then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
end
end
else
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
local digits = tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7)
for i = 1, #digits do
wait(.5)
local digit = digits:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
wait(1)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
  	end    
})

Notifykeypad = Tab7:AddToggle({
	Name = "Auto Notification Keypad",
	Default = false,
	Callback = function(Value)
	 _G.NotifyKeypad = Value
while _G.NotifyKeypad do
if not game.Workspace:FindFirstChild("Keypad") then
repeat task.wait() until game.Workspace:FindFirstChild("Keypad")
OrionLib:MakeNotification({Name = "Error",Content = "Keypad Spawn.",Image = "rbxassetid://7733658504",Time = 8})
Notifykeypad:Set(false)
else
OrionLib:MakeNotification({Name = "Error",Content = "Available Keypad.",Image = "rbxassetid://7733658504",Time = 5})
NotifyToolbox:Set(false)
end
task.wait(0.05)
end
	end    
})

NotifyToolbox = Tab7:AddToggle({
	Name = "Auto Notification ToolBox",
	Default = false,
	Callback = function(Value)
	 _G.NotifyToolBox = Value
while _G.NotifyToolBox do
if not game.Workspace:FindFirstChild("Toolbox") then
repeat task.wait() until game.Workspace:FindFirstChild("Toolbox")
OrionLib:MakeNotification({Name = "Error",Content = "Toolbox Spawn.",Image = "rbxassetid://7733658504",Time = 5})
NotifyToolbox:Set(false)
else
OrionLib:MakeNotification({Name = "Error",Content = "Available Toolbox.",Image = "rbxassetid://7733658504",Time = 5})
NotifyToolbox:Set(false)
end
task.wait(0.05)
end
	end    
})

NotifyAdminJoin = Tab7:AddToggle({
	Name = "Auto Notification Admin Join",
	Default = false,
	Callback = function(Value)
	 _G.NotifyAdminJoin = Value
while _G.NotifyAdminJoin do
for i,v in pairs(game.Players:GetChildren()) do
if v:GetRankInGroup(9950771) >= 2 or v:GetRankInGroup(9950771) >= 3 or v:GetRankInGroup(9950771) >= 4 or v:GetRankInGroup(9950771) >= 5 or v:GetRankInGroup(9950771) >= 7 or v:GetRankInGroup(9950771) >= 8 or v:GetRankInGroup(9950771) >= 9 or v:GetRankInGroup(9950771) >= 10 or v:GetRankInGroup(9950771) >= 11 or v:GetRankInGroup(9950771) >= 12 then
OrionLib:MakeNotification({Name = "Error",Content = "Admin [ "..v.Name.." ] Join Guy",Image = "rbxassetid://7733658504",Time = 5})
NotifyAdminJoin:Set(false)
else
OrionLib:MakeNotification({Name = "Error",Content = "Available Admin [ "..v.Name.." ]",Image = "rbxassetid://7733658504",Time = 5})
NotifyAdminJoin:Set(false)
end
end
task.wait()
end
	end    
})

Tab7:AddTextbox({
	Name = "Write Code Keypad",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
_G.writeCode = Value
	end	  
})

Tab7:AddDropdown({
	Name = "Enter Keypad",
	Default = "Enter",
	Options = {"Not Enter","Enter"},
	Callback = function(Value)
_G.EnterKeypad = Value
	end    
})

Tab7:AddButton({
	Name = "Write Code Keypad Start",
	Callback = function()
if _G.EnterKeypad == "Not Enter" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad.",Image = "rbxassetid://7733658504",Time = 5})
else
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
for i = 1,#_G.writeCode do
wait(.5)
local digit = _G.writeCode:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
end
elseif _G.EnterKeypad == "Enter" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad.",Image = "rbxassetid://7733658504",Time = 5})
else
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
for i = 1,#_G.writeCode do
wait(.5)
local digit = _G.writeCode:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
wait(1)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
end
  	end    
})

Tab7:AddDropdown({
	Name = "Easter Egg Code",
	Default = "",
	Options = {"911","8008","666","6969","1987"},
	Callback = function(Value)
_G.EggCodes = Value
	end    
})

Tab7:AddButton({
	Name = "Easter Egg Keypad",
	Callback = function()
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad.",Image = "rbxassetid://7733658504",Time = 5})
else
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
for i = 1,#_G.EggCodes do
wait(.5)
local digit = _G.EggCodes:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
wait(1)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
  	end    
})

Tab7:AddTextbox({
	Name = "ID Badge",
	Default = "UseId",
	TextDisappear = false,
	Callback = function(Value)
_G.IdBadgeGetNotify = Value
	end	  
})

Tab7:AddButton({
	Name = "Check Badge",
	Callback = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, _G.IdBadgeGetNotify) then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Owner Item",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "You have Owner Item",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab7:AddDropdown({
	Name = "Retro Help",
	Default = "",
	Options = {"Get Retro","Teleport Button","Enter Retro"},
	Callback = function(Value)
_G.HelpPlayerGetHehe = Value
	end    
})

Tab7:AddTextbox({
	Name = "Help Player Retro",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.PlayerRetroGo = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.PlayerRetroGo.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddButton({
	Name = "Player Help Retro",
	Callback = function()
if _G.HelpPlayerGetHehe == "Get Retro" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" then
if game.Workspace:FindFirstChild("Retro") == nil then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
wait(1)
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
task.wait(2.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerRetroGo].Character.HumanoidRootPart.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Recall equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.HelpPlayerGetHehe == "Teleport Button" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" then
if game.Workspace:FindFirstChild("Retro") == nil then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16976, 801, 4907)
wait(1)
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
task.wait(2.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerRetroGo].Character.HumanoidRootPart.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16976, 801, 4907)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Recall equipped",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.HelpPlayerGetHehe == "Enter Retro" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Glitch" and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 50000 and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players[_G.PlayerRetroGo].Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerRetroGo].Character.HumanoidRootPart.CFrame
wait(0.35)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
fireclickdetector(game.Workspace.Lobby["Error"].ClickDetector)
task.wait(8.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerRetroGo].Character.HumanoidRootPart.CFrame
wait(0.07)
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.PlayerRetroGo].Character.HumanoidRootPart.Position).Magnitude
                        if 30 >= Magnitude then
game.ReplicatedStorage.Errorhit:FireServer(game.Players[_G.PlayerRetroGo].Character:WaitForChild("Head"),true)
                end
else
OrionLib:MakeNotification({Name = "Error",Content = "You have in Lobby | Player [ ".._G.PlayerRetroGo.." ] in arena, or You don't have Glitch equipped, or you have don't have 50K Slap",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab7:AddTextbox({
	Name = "Help Player Get Quake",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.HelpPlayerGetQuake = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.HelpPlayerGetQuake.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddButton({
	Name = "Start Help Player",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players[_G.HelpPlayerGetQuake].leaderstats.Glove.Value == "Berserk" then
OGLSize = game.Players[_G.HelpPlayerGetQuake].Character.HumanoidRootPart.Size
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
fireclickdetector(game.Workspace.Lobby.woah.ClickDetector)
wait(4.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HelpPlayerGetQuake].Character.HumanoidRootPart.CFrame
task.wait(.2)
game:GetService("ReplicatedStorage").VineThud:FireServer()
task.wait(1)
fireclickdetector(game.Workspace.Lobby["Home Run"].ClickDetector)
game.Players[_G.HelpPlayerGetQuake].Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HelpPlayerGetQuake].Character.HumanoidRootPart.CFrame
wait(0.1)
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
wait(3)
game.Players[_G.HelpPlayerGetQuake].Character.HumanoidRootPart.Size = OGLSize
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Home Run equipped, or you have to go lobby, or player don't have Berserk equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab7:AddTextbox({
	Name = "Help Player Get Goofy",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.HelpPlayerGetGoofy = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.HelpPlayerGetGoofy.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddButton({
	Name = "Start Help Player",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Confusion" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2133016756) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HelpPlayerGetGoofy].Character.HumanoidRootPart.CFrame
wait(0.2)
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.HelpPlayerGetGoofy].Character.HumanoidRootPart.Position).Magnitude
                        if 30 >= Magnitude then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(game.Players[_G.HelpPlayerGetGoofy].Character:WaitForChild("HumanoidRootPart"))
end
fireclickdetector(workspace.Lobby.Goofy.ClickDetector)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HelpPlayerGetGoofy].Character.HumanoidRootPart.CFrame
wait(0.2)
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.HelpPlayerGetGoofy].Character.HumanoidRootPart.Position).Magnitude
                        if 30 >= Magnitude then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(game.Players[_G.HelpPlayerGetGoofy].Character:WaitForChild("HumanoidRootPart"))
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Confusion equipped, or you have to go lobby.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab7:AddDropdown({
	Name = "Will Teleport Help",
	Default = "Up To You",
	Options = {"Up To You","SafeSpotBox 1.0","SafeSpotBox 2.0"},
	Callback = function(Value)
_G.GetTeleportHelp = Value
	end    
})

Tab7:AddTextbox({
	Name = "Help Player Get Berserk",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
local targetAbbreviation = Value
local targetPlayer
for _, v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #targetAbbreviation):lower() == targetAbbreviation:lower() then
targetPlayer = v
break
end
end
if targetPlayer then
_G.HelpPlayerGetBerserk = targetPlayer.Name
OrionLib:MakeNotification({Name = "Error",Content = "Found Player [ ".._G.HelpPlayerGetBerserk.." ]",Image = "rbxassetid://7733658504",Time = 5})
else
OrionLib:MakeNotification({Name = "Error",Content = "Can't find player",Image = "rbxassetid://7733658504",Time = 5})
end
	end	  
})

Tab7:AddSlider({
	Name = "Time Help Berserk",
	Min = 1,
	Max = 3,
	Default = 3,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Time",
	Callback = function(Value)
		_G.TimeHelpGotIm = Value
	end    
})

Tab7:AddButton({
	Name = "Start Help Player",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.HelpPlayerGetBerserk].Character:FindFirstChild("entered") then
for o = 1,_G.TimeHelpGotIm do
if _G.GetTeleportHelp == "Up To You" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
elseif _G.GetTeleportHelp == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleportHelp == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i = 1,150 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
task.wait()
end
wait(2.8)
if _G.GetTeleportHelp == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleportHelp == "SafeSpotBox 1.0" or _G.GetTeleportHelp == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.HelpPlayerGetBerserk].Character.Head.CFrame * CFrame.new(0,5.80,0)
end
wait(0.28)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Kinetic") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Kinetic)
end
wait(0.19)
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game.Players.LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
wait(0.7)
if _G.GetTeleportHelp == "Up To You" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
elseif _G.GetTeleportHelp == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif _G.GetTeleportHelp == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
wait(3.8)
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Kinetic equipped, or you have to go Arena, or player have go to arena.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab7:AddSlider({
	Name = "HipHeight AutoFarm Slap",
	Min = 0,
	Max = 20,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Hip",
	Callback = function(Value)
		_G.HipAutoFarmSlap = Value
	end    
})

Tab7:AddToggle({
	Name = "AutoFarm Slap",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmSlap = Value
while _G.AutoFarmSlap do
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
if _G.AutoFarmSlap == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,_G.HipAutoFarmSlap,0)
task.wait(0.5)
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
task.wait(0.43)
end
end
end
end
end
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Auto Slap Ball",
	Default = false,
	Callback = function(Value)
		_G.AutoSlapBall = Value
while _G.AutoSlapBall do
if game.Workspace:FindFirstChild("Balls") then
for i, v in pairs(workspace:GetChildren()) do
if v.Name == "Balls" then
for i, z in pairs(v:GetChildren()) do
if string.find(z.Name, "'s Ball") then
game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(z, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
end
end
end
end
task.wait()
end
	end    
})

_G.OnAbility = false
Tab7:AddToggle({
	Name = "Auto Spam Ability",
	Default = false,
	Callback = function(Value)
		_G.OnAbility = Value
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" do
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait(4.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "🗿" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, -2, -10))
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.Head:FindFirstChild("RedEye") == nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
end
wait(0.09)
game:GetService("ReplicatedStorage").SM:FireServer(Target)
wait(0.8)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slicer" do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" do
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
task.wait(5.7)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "rob" do
game:GetService("ReplicatedStorage").rob:FireServer()
wait(3)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "bob" do
game:GetService("ReplicatedStorage").bob:FireServer()
wait(9)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kraken" do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
wait(5)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Sbeve" do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Psycho" do
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["grabEnabled"] = true})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Killstreak" do
game:GetService("ReplicatedStorage").KSABILI:FireServer()
wait(6.9)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "bus" do
game:GetService("ReplicatedStorage").busmoment:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mitten" do
game:GetService("ReplicatedStorage").MittenA:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Defense" do
game:GetService("ReplicatedStorage").Barrier:FireServer()
wait(0.25)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bomb" do
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(2.5)
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(4.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Pusher" do
game:GetService("ReplicatedStorage").PusherWall:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Jet" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").AirStrike:FireServer(Target.Character)
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Tableflip" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shield" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rocky" do
game:GetService("ReplicatedStorage").RockyShoot:FireServer()
task.wait(7.5)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "God's Hand" do
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
wait(50.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" do
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Glitch" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(5.34)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" do
game:GetService("ReplicatedStorage").StunR:FireServer(game:GetService("Players").LocalPlayer.Character.Stun)
wait(10.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "STOP" do
game:GetService("ReplicatedStorage").STOP:FireServer(true)
wait(4.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Quake" do
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["finished"] = true})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Track" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(Target.Character)
wait(10.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mail" do
game:GetService("ReplicatedStorage").MailSend:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shard" do
game:GetService("ReplicatedStorage").Shards:FireServer()
wait(4.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "fish" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.05)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Null" do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
wait(0.01)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Counter" do
game:GetService("ReplicatedStorage").Counter:FireServer()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
task.wait(6.2)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Voodoo" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(6.27)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" do
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Gravity" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bubble" do
game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slapple" do
game:GetService("ReplicatedStorage").funnyTree:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Detonator" do
game:GetService("ReplicatedStorage").Fart:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Berserk" do
game:GetService("ReplicatedStorage").BerserkCharge:FireServer(game:GetService("Players").LocalPlayer.Character.Berserk)
wait(2.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rojo" do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" do
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i = 1,100 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
task.wait(0.05)
end
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
if game.Players.LocalPlayer.Backpack:FindFirstChild("Kinetic") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Kinetic)
end
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game.Players.LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
wait(2.2)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Dominance" do
game:GetService("ReplicatedStorage").DominanceAc:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "[REDACTED]" do
game:GetService("ReplicatedStorage").Well:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Duelist" do
game:GetService("ReplicatedStorage").DuelistAbility:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Engineer" do
game:GetService("ReplicatedStorage").Sentry:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1
wait(1.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Trap" do
game:GetService("ReplicatedStorage").funnyhilariousbeartrap:FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "woah" do
game:GetService("ReplicatedStorage").VineThud:FireServer()
wait(5.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" do
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" do
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Adios" do
game:GetService("ReplicatedStorage").AdiosActivated:FireServer()
wait(8.3)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Boogie" do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Boogie") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Boogie)
end
game:GetService("ReplicatedStorage").BoogieBall:FireServer(game.Players.LocalPlayer.Character.Boogie, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Balloony" do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Balloony") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Balloony)
end
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Balloony)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Phase" do
game:GetService("ReplicatedStorage").PhaseA:FireServer()
wait(5.475)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Hallow Jack" do
game:GetService("ReplicatedStorage"):WaitForChild("Hallow"):FireServer()
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Phantom" do
game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(workspace[game.Players.LocalPlayer.Name].Phantom) 
wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Sparky" do
game:GetService("ReplicatedStorage").Sparky:FireServer(game:GetService("Players").LocalPlayer.Character.Sparky)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Charge" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Charge)
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Coil" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game:GetService("Players").LocalPlayer.Character.Coil)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
wait(3.1)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "MEGAROCK" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Excavator" do
game:GetService("ReplicatedStorage"):WaitForChild("Excavator"):InvokeServer()
game:GetService("ReplicatedStorage"):WaitForChild("ExcavatorCancel"):FireServer()
wait(7.3)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Thor" do
game:GetService("ReplicatedStorage").ThorAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Meteor" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Sun" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Cast")
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Whirlwind" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Guardian Angel" do
game.ReplicatedStorage.GeneralAbility:FireServer(game.Players.LocalPlayer)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Parry" do
game.ReplicatedStorage.GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "MR" do
game:GetService("ReplicatedStorage").Spherify:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Druid" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(3.21)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Oven" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Jester" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability1")
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ferryman" do
local players = game.Players:GetChildren()
local randomPlayer = players[math.random(1, #players)]
repeat randomPlayer = players[math.random(1, #players)] until randomPlayer ~= game.Players.LocalPlayer and randomPlayer.Character:FindFirstChild("entered") and randomPlayer.Character:FindFirstChild("ded") == nil and randomPlayer.Character:FindFirstChild("InLabyrinth") == nil and randomPlayer.Character:FindFirstChild("rock") == nil
Target = randomPlayer
game.Players.LocalPlayer.Character.FerrymanStaff.StaffConfig.AbilityEvent:FireServer("Leap")
wait(1.85)
game.Players.LocalPlayer.Character.FerrymanStaff.StaffConfig.AbilityEvent:FireServer("FinishLeap",Target.Character.HumanoidRootPart.Position)
task.wait(3.9)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Scythe" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Blackhole" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Jebaited" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Blink" do
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Joust" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Start")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slapstick" do
game:GetService("ReplicatedStorage").slapstick:FireServer("charge")
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Firework" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Chicken" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Lamp" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "BONK" do
game:GetService("ReplicatedStorage").BONK:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Frostbite" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(2)
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Golem" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("recall")
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Grab" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Spoonful" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer({["state"] = "vfx",["origin"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(-3.141592502593994, 1.0475832223892212, 3.141592502593994),["vfx"] = "jumptween",["sendplr"] = game:GetService("Players").LocalPlayer})
game:GetService("ReplicatedStorage").GeneralAbility:FireServer({["state"] = "vfx",["cf"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(-2.1319260597229004, 0.651054859161377, 2.3744168281555176),["vfx"] = "crash"})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "el gato" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "UFO" do
if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s UFO VFX") == nil and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s UFO") == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
task.wait(0.3)
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Hive" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Siphon" do
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Demolition" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("c4")
game:GetService("ReplicatedStorage").Events.c4:FireServer()
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shotgun" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("buckshot")
task.wait()
end
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Beachball" do
if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
elseif workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball").Position < -10 then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
wait(0.2)
if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") then
game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball"), Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
task.wait()
end
	end    
})

Tab7:AddDropdown({
	Name = "Ability Spam All Glove",
	Default = "Null",
	Options = {"Null", "Rhythm Explosion"},
	Callback = function(Value)
AbilitySpamAllGlove = Value
	end    
})

Tab7:AddToggle({
	Name = "Spam Ability All Glove",
	Default = false,
	Callback = function(Value)
SpamAbility = Value
while SpamAbility and AbilitySpamAllGlove == "Null" do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
wait(0.1)
end
while SpamAbility and AbilitySpamAllGlove == "Rhythm Explosion" do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Spam Ability 250 Kill",
	Default = false,
	Callback = function(Value)
_G.SpamAbliKilll = Value
while _G.SpamAbliKilll do
if game.Players.LocalPlayer.Character:FindFirstChild("KS250Complete") then
game:GetService("ReplicatedStorage").TheForce:FireServer()
end
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "AutoFarm Kill",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmKill = Value
if _G.AutoFarmKill == true then
if _G.ClosestMagnitude == nil then
_G.ClosestMagnitude = 99999
end
else
if _G.ClosestMagnitude then
_G.ClosestMagnitude = nil
end
end
while _G.AutoFarmKill do
for _, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if Magnitude <= _G.ClosestMagnitude then
_G.ClosestMagnitude = Magnitude
RandomPlayer = v
end
end
end
if RandomPlayer.Character:FindFirstChild("entered") == nil or RandomPlayer.Character.Humanoid.Health == 0 or RandomPlayer.Character:FindFirstChild("Torso") and RandomPlayer.Character.Torso.Anchored == true then
_G.ClosestMagnitude = 999999
RandomPlayer = nil
end
if RandomPlayer and _G.ClosestMagnitude ~= 999999 then
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("Head").CFrame
wait(0.19)
game.ReplicatedStorage.KSHit:FireServer(RandomPlayer.Character:WaitForChild("Head"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
end
end
task.wait(0.4)
end
	end    
})

RhythmNote = Tab7:AddToggle({
	Name = "Infinite Rhythm",
	Default = false,
	Callback = function(Value)
		RhythmNoteSpam = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Rhythm" then
while RhythmNoteSpam and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rhythm" do
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = false
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = true
game.Players.LocalPlayer.Character.Rhythm:Activate()
task.wait()
end
elseif RhythmNoteSpam == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Rhythm equipped",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
RhythmNote:Set(false)
end
	end    
})

Tab7:AddButton({
	Name = "Auto Play Rhythm",
	Callback = function()
game.Players.LocalPlayer.PlayerGui.Rhythm.MainFrame.Bars.ChildAdded:Connect(function()
task.delay(1.65, function()
game.Players.LocalPlayer.Character:FindFirstChild("Rhythm"):Activate()
end)
end)
  	end    
})

Tab7:AddDropdown({
	Name = "Rojo Spawn",
	Default = "",
	Options = {"Attack","Attack Fake"},
	Callback = function(Value)
if Value == "Attack" then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
wait(5)
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.AnimationRecoil, game.Players.LocalPlayer.Character.Humanoid):Play()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
elseif Value == "Attack Fake" then
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
	end    
})

Tab7:AddButton({
	Name = "Free All Animations",
	Callback = function()
Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
game.Players.LocalPlayer.Chatted:connect(function(msg)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
if string.lower(msg) == "/e floss" then
Floss:Play()
elseif string.lower(msg) == "/e groove" then
Groove:Play()
elseif string.lower(msg) == "/e headless" then
Headless:Play()
elseif string.lower(msg) == "/e helicopter" then
Helicopter:Play()
elseif string.lower(msg) == "/e kick" then
Kick:Play()
elseif string.lower(msg) == "/e l" then
L:Play()
elseif string.lower(msg) == "/e laugh" then
Laugh:Play()
elseif string.lower(msg) == "/e parker" then
Parker:Play()
elseif string.lower(msg) == "/e spasm" then
Spasm:Play()
elseif string.lower(msg) == "/e thriller" then
Thriller:Play()
end
EP = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end
end)
game:GetService("RunService").Heartbeat:Connect(function()
if EP ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Floss.IsPlaying or Groove.IsPlaying or Headless.IsPlaying or Helicopter.IsPlaying or Kick.IsPlaying or L.IsPlaying or Laugh.IsPlaying or Parker.IsPlaying or Spasm.IsPlaying or Thriller.IsPlaying then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - EP).Magnitude
if Magnitude > 1 then
Floss:Stop(); Groove:Stop(); Headless:Stop(); Helicopter:Stop(); Kick:Stop(); L:Stop(); Laugh:Stop(); Parker:Stop(); Spasm:Stop(); Thriller:Stop()
end
end
end)
  	end    
})

Tab7:AddButton({
	Name = "Destroy All Tycoon",
	Callback = function()
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == "Destruct" and v:FindFirstChild("ClickDetector") then
for i = 1,110 do
fireclickdetector(v.ClickDetector)
end
end
end
  	end    
})

Tab7:AddTextbox({
	Name = "Glove",
	Default = "Use Glove",
	TextDisappear = false,
	Callback = function(Value)
		_G.EquipGlove = Value
	end	  
})

Tab7:AddDropdown({
	Name = "Equip Glove",
	Default = "",
	Options = {"Normal","Tournament"},
	Callback = function(Value)
_G.GloveEquipHehe = Value
	end    
})

Tab7:AddButton({
	Name = "Start Equip Glove",
	Callback = function()
if _G.GloveEquipHehe == "Normal" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
fireclickdetector(game.Workspace.Lobby[_G.GloveEquipHehe].ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You aren't in the lobby.",Image = "rbxassetid://7733658504",Time = 5})
end
elseif _G.GloveEquipHehe == "Tournament" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
fireclickdetector(game.Workspace.Lobby[_G.GloveEquipHehe].ClickDetector)
wait(0.5)
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
else
OrionLib:MakeNotification({Name = "Error",Content = "you are in Tournament not equip, 1 you use it.",Image = "rbxassetid://7733658504",Time = 5})
end
end
  	end    
})

Tab7:AddTextbox({
	Name = "ID Game",
	Default = "UseId",
	TextDisappear = false,
	Callback = function(Value)
_G.IDGame = Value
	end	  
})

Tab7:AddButton({
	Name = "Teleport To Game ID",
	Callback = function()
game:GetService("TeleportService"):Teleport(_G.IDGame)
  	end    
})

Tab7:AddButton({
	Name = "Slap Battles",
	Callback = function()
if game.PlaceId ~= 6403373529 then
game:GetService("TeleportService"):Teleport(6403373529)
end
  	end    
})

Tab7:AddButton({
	Name = "Serverhop",
	Callback = function()
local serverList = {}
for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
		serverList[#serverList + 1] = v.id
	end
end
if #serverList > 0 then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
end
	end
})

Tab7:AddButton({
	Name = "Destroy Light & Sky",
	Callback = function()
for _, v in pairs(game.Lighting:GetChildren()) do
v:Destroy()
end
  	end    
})

Tab7:AddDropdown({
	Name = "Enter",
	Default = "Arena",
	Options = {"Arena", "Arena Default"},
	Callback = function(Value)
AutoEnter = Value
	end    
})

Tab7:AddToggle({
	Name = "Auto Enter",
	Default = false,
	Callback = function(Value)		
        _G.AutoEnter = Value
while _G.AutoEnter and AutoEnter == "Arena" do
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
task.wait()
end
while _G.AutoEnter and AutoEnter == "Arena Default" do
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
task.wait()
end
	end    
})

Tab7:AddSlider({
	Name = "Reach Slap Aura",
	Min = 10,
	Max = 50,
	Default = 25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachSlapArua = Value
	end    
})

Tab7:AddDropdown({
	Name = "Slap Aura Friend",
	Default = "Fight",
	Options = {"Fight", "Not Fight"},
	Callback = function(Value)
SlapAuraFriend = Value
	end    
})

Tab7:AddDropdown({
	Name = "Slap Aura Character",
	Default = "Head",
	Options = {"HumanoidRootPart", "Head", "Left Arm", "Left Leg", "Right Arm", "Right Leg"},
	Callback = function(Value)
SlapAuraCharacter = Value
	end    
})

Tab7:AddDropdown({
	Name = "Slap Aura Choose",
	Default = "Normal",
	Options = {"Normal", "Reverse"},
	Callback = function(Value)
_G.SlapAuraChoose = Value
	end    
})

Tab7:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(Value)
		SlapAura = Value
if _G.SlapAuraChoose == "Normal" then
while SlapAura and SlapAuraFriend == "Fight" and _G.SlapAuraChoose == "Normal" do
pcall(function()
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild(SlapAuraCharacter),true)
                end
end
end
end
                end
end)
pcall(function()
for _, c in pairs(workspace:GetChildren()) do
if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
Magnitude1 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude1 then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(c:WaitForChild(SlapAuraCharacter),true)
                    end
end
                    end
end)
pcall(function()
if game.Workspace:FindFirstChild("Balls") then
for i, g in pairs(workspace:GetChildren()) do
if g.Name == "Balls" then
for i, z in pairs(g:GetChildren()) do
if string.find(z.Name, "'s Ball") then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - z.Position).Magnitude
if _G.ReachSlapArua >= Magnitude then
game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(z, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
end
end
end
end
end
end)
task.wait(.1)
end
while SlapAura and SlapAuraFriend == "Not Fight" and _G.SlapAuraChoose == "Normal" do
pcall(function()
for i, v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and not game.Players.LocalPlayer:IsFriendsWith(v.UserId) and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild(SlapAuraCharacter),true)
                    end
end
end
end
                end
end)
pcall(function()
for i, c in pairs(workspace:GetChildren()) do
if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
Magnitude1 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude1 then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(c:WaitForChild(SlapAuraCharacter),true)
                    end
end
                    end
end)
pcall(function()
if game.Workspace:FindFirstChild("Balls") then
for i, g in pairs(workspace:GetChildren()) do
if g.Name == "Balls" then
for i, z in pairs(g:GetChildren()) do
if string.find(z.Name, "'s Ball") then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - z.Position).Magnitude
if _G.ReachSlapArua >= Magnitude then
game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(z, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
end
end
end
end
end
end)
task.wait(.1)
end
elseif _G.SlapAuraChoose == "Reverse" then
while SlapAura and _G.SlapAuraChoose == "Reverse" do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
if v.Character.Head:FindFirstChild("UnoReverseCard") and game.Players.LocalPlayer.Character.Head:FindFirstChild("UnoReverseCard") then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
game.ReplicatedStorage.ReverseHit:FireServer(v.Character:WaitForChild(SlapAuraCharacter),true)
                    end
end
end
end
                end
task.wait()
end
end
	end    
})

Tab7:AddSlider({
	Name = "Reach Shukuchi",
	Min = 1,
	Max = 130,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachShukuchi = Value
	end    
})

Tab7:AddDropdown({
	Name = "Shukuchi Friend",
	Default = "Fight",
	Options = {"Fight", "Not Fight"},
	Callback = function(Value)
ShukuchiFriend = Value
	end    
})

AutoShukuchi = Tab7:AddToggle({
	Name = "Auto Shukuchi Player",
	Default = false,
	Callback = function(Value)
         _G.AutoShukuchi = Value
if ShukuchiFriend == "Fight" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" then
                while _G.AutoShukuchi and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" and ShukuchiFriend == "Fight" do
for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Head:FindFirstChild("RedEye") == nil and not game.Players.LocalPlayer:IsFriendsWith(v.UserId) and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachShukuchi >= Magnitude then
game:GetService("ReplicatedStorage").SM:FireServer(v)
                     end
end
end
end
                 end
task.wait()
end
elseif _G.AutoShukuchi == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Shukuchi equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoShukuchi:Set(false)
end
elseif ShukuchiFriend == "Not Fight" then
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" then
                while _G.AutoShukuchi and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" and ShukuchiFriend == "Not Fight" do
for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Head:FindFirstChild("RedEye") == nil and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachShukuchi >= Magnitude then
game:GetService("ReplicatedStorage").SM:FireServer(v)
                     end
end
end
end
                 end
task.wait()
end
elseif _G.AutoShukuchi == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Shukuchi equipped.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoShukuchi:Set(false)
end
end
	end    
})

Tab7:AddSlider({
	Name = "Reach HitBox",
	Min = 2,
	Max = 30,
	Default = 10,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachHitbox = Value
	end    
})

Tab7:AddToggle({
	Name = "Hitbox Player",
	Default = false,
	Callback = function(Value)
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
                        v.Character.HumanoidRootPart.Transparency = 0.75
                    end
                end
task.wait()
end
if _G.HitboxPlayer == false then
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        v.Character.HumanoidRootPart.Transparency = 1
                    end
                end
end
	end    
})

Tab7:AddSlider({
	Name = "Extend Glove",
	Min = 2,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.GloveExtendReach = Value
	end    
})

Tab7:AddDropdown({
	Name = "Extend Option",
	Default = "Meat Stick",
	Options = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
	Callback = function(Value)
GloveExtendOption = Value
	end    
})

Tab7:AddToggle({
	Name = "Extend Glove",
	Default = false,
	Callback = function(Value)
_G.GloveExtendGet = Value
while _G.GloveExtendGet do
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                          if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
           end
task.wait()
end
if _G.GloveExtendGet == false then
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
end
end
	end    
})

Tab7:AddColorpicker({
	Name = "Color ESP",
	Default = Color3.fromRGB(111, 255, 0),
	Callback = function(Value)
		_G.ColorESP = Value
	end	  
})

Tab7:AddToggle({
	Name = "ESP Glove",
	Default = false,
	Callback = function(Value)
_G.GloveESP = Value
if _G.GloveESP == false then
for i, v in ipairs(game.Players:GetChildren()) do
                if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp") then
 v.Character.Head.GloveEsp:Destroy()
                end
            end
end
while _G.GloveESP do
for i,v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
if v.Character.Head:FindFirstChild("GloveEsp") and v.Character.Head.GloveEsp:FindFirstChild("TextLabel") and v.Character.Head.GloveEsp.TextLabel.TextColor3 ~= _G.ColorESP then
v.Character.Head.GloveEsp.TextLabel.TextColor3 = _G.ColorESP
end
if v.Character.Head:FindFirstChild("GloveEsp") and v.Character.Head.GloveEsp:FindFirstChild("TextLabel") and v.Character.Head.GloveEsp.TextLabel.Text ~= "Glove [ "..v.leaderstats.Glove.Value.." ]" then
v.Character.Head.GloveEsp.TextLabel.Text = "Glove [ "..v.leaderstats.Glove.Value.." ]"
end
if v.Character.Head:FindFirstChild("GloveEsp") == nil then
GloveEsp = Instance.new("BillboardGui", v.Character.Head)
GloveEsp.Adornee = v.Character.Head
GloveEsp.Name = "GloveEsp"
GloveEsp.Size = UDim2.new(0, 100, 0, 150)
GloveEsp.StudsOffset = Vector3.new(0, 1, 0)
GloveEsp.AlwaysOnTop = true
GloveEsp.StudsOffset = Vector3.new(0, 3, 0)
GloveEspText = Instance.new("TextLabel", GloveEsp)
GloveEspText.BackgroundTransparency = 1
GloveEspText.Size = UDim2.new(0, 100, 0, 100)
GloveEspText.TextSize = 20
GloveEspText.Font = Enum.Font.FredokaOne
GloveEspText.TextColor3 = _G.ColorESP
GloveEspText.TextStrokeTransparency = 0.5
GloveEspText.Text = "Glove [ "..v.leaderstats.Glove.Value.." ]"
                end
            end
            end
task.wait()
end
	end    
})

Tab7:AddTextbox({
	Name = "Auto Change Nametag",
	Default = "Nametag",
	TextDisappear = false,
	Callback = function(Value)
game.Workspace.NametagChanged.Value = Value
	end	  
})

Tab7:AddToggle({
	Name = " Auto Change Nametag",
	Default = false,
	Callback = function(Value)
	AutoChangeNameTag = Value
        if AutoChangeNameTag == true and game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true) then
        game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
end
workspace.NametagChanged.Changed:Connect(function()
        if AutoChangeNameTag == true and game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true) then
        game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
end
end)
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                if AutoChangeNameTag == true then
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true)
                game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
                end
            end)
	end    
})

Tab7:AddTextbox({
	Name = "Auto Change Slap Fake",
	Default = "Slap",
	TextDisappear = false,
	Callback = function(Value)
game.Workspace.NametagChanged.SlapChanged.Value = Value
	end	  
})

Tab7:AddToggle({
	Name = " Auto Change Slap Fake",
	Default = false,
	Callback = function(Value)
_G.AutoChangeSlapFake = Value
while _G.AutoChangeSlapFake do
if game.Players.LocalPlayer.leaderstats.Slaps.Value ~= game.Workspace.NametagChanged.SlapChanged.Value then
game.Players.LocalPlayer.leaderstats.Slaps.Value = game.Workspace.NametagChanged.SlapChanged.Value
end
task.wait()
end
	end    
})

Tab7:AddDropdown({
	Name = "Tycoon Auto",
	Default = "All",
	Options = {"All","Your"},
	Callback = function(Value)
_G.TycoonAuto = Value
	end    
})

Tab7:AddToggle({
	Name = "Auto Click Tycoon",
	Default = false,
	Callback = function(Value)
		_G.AutoClickTycoon = Value
if _G.TycoonAuto == "All" then
while _G.AutoClickTycoon and _G.TycoonAuto == "All" do
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
task.wait()
end
elseif _G.TycoonAuto == "Your" then
while _G.AutoClickTycoon and _G.TycoonAuto == "Your" do
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) then
for i,x in pairs(v:GetChildren()) do
if x.Name == "TycoonDrop" then
x.CFrame = v.End.CFrame
end
end
end
end
task.wait()
end
end
	end    
})

Tab7:AddToggle({
	Name = "Auto Destroy Tycoon",
	Default = false,
	Callback = function(Value)
		_G.AutoDestroyTycoon = Value
if _G.TycoonAuto == "All" then
while _G.AutoDestroyTycoon do
for _,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Destruct") then
fireclickdetector(v.Destruct.ClickDetector, 0)
fireclickdetector(v.Destruct.ClickDetector, 1)
end
end
task.wait()
end
elseif _G.TycoonAuto == "Your" then
while _G.AutoDestroyTycoon do
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("Destruct") then
fireclickdetector(v.Destruct.ClickDetector, 0)
fireclickdetector(v.Destruct.ClickDetector, 1)
end
end
task.wait()
end
end
	end    
})

if game.Workspace:FindFirstChild("NoChanged") == nil then
local NoChanged = Instance.new("BoolValue", workspace)
NoChanged.Name = "NoChanged"
end
Tab2:AddToggle({
	Name = "All Toggle Anti",
	Default = false,
	Callback = function(Value)
game.Workspace.NoChanged.Value = Value
	end    
})

if _G.AntiVoidChoose == nil then
_G.AntiVoidChoose = "Normal"
end
Tab2:AddDropdown({
	Name = "Anti Void",
	Default = "Normal",
	Options = {"Normal","Retro","Water","Psycho","Bob"},
	Callback = function(Value)
if _G.AntiVoid == true then
AntiVoid:Set(false)
wait(0.05)
_G.AntiVoidChoose = Value
wait(0.03)
AntiVoid:Set(true)
elseif _G.AntiVoid == false then
_G.AntiVoidChoose = Value
end
	end    
})

Tab2:AddSlider({
	Name = "Transparency Anti Void",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "Transparency",
	Callback = function(Value)
_G.Transparency = Value
if _G.AntiVoid == true then
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].Transparency = Value
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = Value
elseif _G.AntiVoidChoose == "Retro" then
game.Workspace["Psycho"]["Retro1"].Transparency = Value
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = Value
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = Value
elseif _G.AntiVoidChoose == "Water" then
game.Workspace["Psycho"]["Kraken"].Transparency = Value
elseif _G.AntiVoidChoose == "Psycho" then
game.Workspace["Psycho"].Transparency = Value
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = Value
game.Workspace["BobWalk1"].Transparency = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
end
end
	end    
})

AntiVoid = Tab2:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(Value)
_G.AntiVoid = Value
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].CanCollide = Value
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
if Value == false then
game.Workspace["VoidPart"].Transparency = 1
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
else
game.Workspace["VoidPart"].Transparency = _G.Transparency
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = _G.Transparency
end
elseif _G.AntiVoidChoose == "Retro" then
game.Workspace["Psycho"]["Retro1"].CanCollide = Value
game.Workspace["Psycho"]["Retro1"]["Retro2"].CanCollide = Value
game.Workspace["Psycho"]["Retro1"]["Retro3"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"]["Retro1"].Transparency = _G.Transparency
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = _G.Transparency
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = _G.Transparency
else
game.Workspace["Psycho"]["Retro1"].Transparency = 1
game.Workspace["Psycho"]["Retro1"]["Retro2"].Transparency = 1
game.Workspace["Psycho"]["Retro1"]["Retro3"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Water" then
game.Workspace["Psycho"]["Kraken"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"]["Kraken"].Transparency = _G.Transparency
else
game.Workspace["Psycho"]["Kraken"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Psycho" then
game.Workspace["Psycho"].CanCollide = Value
if Value == true then
game.Workspace["Psycho"].Transparency = _G.Transparency
else
game.Workspace["Psycho"].Transparency = 1
end
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
game.Workspace["BobWalk1"].CanCollide = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.CanCollide = Value
end
if Value == true then
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = _G.Transparency
game.Workspace["BobWalk1"].Transparency = _G.Transparency
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
else
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
game.Workspace["BobWalk1"].Transparency = 1
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = 1
end
end
end
	end    
})

AntiPortal = Tab2:AddToggle({
	Name = "Anti Portal",
	Default = false,
	Callback = function(Value)
_G.AntiPortal = Value
if _G.AntiPortal == true then
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == true then
v.CanTouch = false
end
end
end
else
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == false then
v.CanTouch = true
end
end
end
end
	end    
})

AntiAdmin = Tab2:AddToggle({
	Name = "Anti Mod | Admin",
	Default = false,
	Callback = function(Value)
_G.AntiMods = Value
while _G.AntiMods do
for i,v in pairs(game.Players:GetChildren()) do
        if v:GetRankInGroup(9950771) >= 2 then
         _G.AntiKick = false
     game.Players.LocalPlayer:Kick("High Rank Player Detected.".." [ "..v.Name.." ]")
   break
     end
end
task.wait()
end
	end    
})

AntiKick = Tab2:AddToggle({
	Name = "Anti Kick",
	Default = false,
	Callback = function(Value)
	_G.AntiKick = Value
while _G.AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
	end    
})

AntiAfk = Tab2:AddToggle({
	Name = "Anti Afk",
	Default = false,
	Callback = function(Value)
	_G.AntiAfk = Value
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
if _G.AntiAfk then
v:Disable()
else
v:Enable()
end
end
	end    
})

AntiObby = Tab2:AddToggle({
	Name = "Anti Obby",
	Default = false,
	Callback = function(Value)
		_G.AntiObby = Value
while _G.AntiObby do
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
             if v.CanTouch == true then
                 v.CanTouch = false
             end
         end
     end
task.wait()
end
if _G.AntiObby == false then
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
              if v.CanTouch == false then
                  v.CanTouch = true
             end
         end
    end
end
	end    
})

AntiRock = Tab2:AddToggle({
	Name = "Anti Megarock | Custom",
	Default = false,
	Callback = function(Value)
		_G.AntiRock = Value
while _G.AntiRock do
for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character:FindFirstChild("rock") then
                        v.Character:FindFirstChild("rock").CanTouch = false
                        v.Character:FindFirstChild("rock").CanQuery = false
                    end
                end
task.wait()
end
	end    
})

AntiSbeve = Tab2:AddToggle({
	Name = "Anti Sbeve",
	Default = false,
	Callback = function(Value)
		_G.AntiSbeve = Value
while _G.AntiSbeve do
for _,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("stevebody") then
                        v.Character:FindFirstChild("stevebody").CanTouch = false
                        v.Character:FindFirstChild("stevebody").CanQuery = false
                        v.Character:FindFirstChild("stevebody").CanCollide = false
                    end
                end
task.wait()
end
	end    
})

AntiBallBaller = Tab2:AddToggle({
	Name = "Anti Ball Baller",
	Default = false,
	Callback = function(Value)
		_G.AntiBallBaller = Value
while _G.AntiBallBaller do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "ClonedBall" then
                        v.CanTouch = false
                        v.CanCollide = true
                    end
                end
task.wait()
end
	end    
})

AntiBus = Tab2:AddToggle({
	Name = "Anti Bus",
	Default = false,
	Callback = function(Value)
		_G.AntiBus = Value
while _G.AntiBus do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "BusModel" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
	end    
})

AntiLure = Tab2:AddToggle({
	Name = "Anti Lure",
	Default = false,
	Callback = function(Value)
		_G.AntiLure = Value
while _G.AntiLure do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "_lure") and v:FindFirstChild("Root") and v:FindFirstChild("watercircle") then
                        v.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        v.watercircle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
task.wait()
end
	end    
})

AntiMail = Tab2:AddToggle({
	Name = "Anti Mail",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
_G.AntiMail = Value
while _G.AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
	end    
})

AntiMittenBl = Tab2:AddToggle({
	Name = "Anti Mitten Blind",
	Default = false,
	Callback = function(Value)
_G.AntiMittenBlind = Value
while _G.AntiMittenBlind do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MittenBlind") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("MittenBlind"):Destroy()
end
task.wait()
end
	end    
})

AntiKnock = Tab2:AddToggle({
	Name = "Anti Knockoff",
	Default = false,
	Callback = function(Value)
_G.AntiKnock = Value
while _G.AntiKnock do
if game.Workspace.CurrentCamera and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject == game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s_falsehead") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
end
task.wait()
end
	end    
})

AntiJack = Tab2:AddToggle({
	Name = "Anti Hallow - Jack",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
	end    
})

AntiBooster = Tab2:AddToggle({
	Name = "Anti Booster",
	Default = false,
	Callback = function(Value)
		_G.AntiBooster = Value
while _G.AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "BoosterObject" then
                        v:Destroy()
                    end
                end
task.wait()
end
	end    
})

AntiSquid = Tab2:AddToggle({
	Name = "Anti Squid",
	Default = false,
	Callback = function(Value)
	_G.AntiSquid = Value
if _G.AntiSquid == false then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
end
while _G.AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
	end    
})

AntiConveyor = Tab2:AddToggle({
	Name = "Anti Conveyor",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
	end    
})

AntiNightmareAndPotion = Tab2:AddToggle({
	Name = "Anti Nightmare & Potion",
	Default = false,
	Callback = function(Value)
        if Value == true then
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Lighting
    else
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Players.LocalPlayer.PlayerScripts.VFXListener
    end
	end    
})

AntiIceAndPotion = Tab2:AddToggle({
	Name = "Anti Ice & Potion",
	Default = false,
	Callback = function(Value)
_G.AntiIce = Value
while _G.AntiIce do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Icecube" then
                v:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
            end
       end
task.wait()
end
	end    
})

AntiTime = Tab2:AddToggle({
	Name = "Anti Time Stop & Stop",
	Default = false,
	Callback = function(Value)
	_G.AntiTimestop = Value
while _G.AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
	end    
})

AntiNull = Tab2:AddToggle({
	Name = "Anti Null",
	Default = false,
	Callback = function(Value)
_G.AntiNull = Value
while _G.AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Imp" and v:FindFirstChild("Body") then
                       gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
                 end
            end
task.wait()
end
	end    
})

AntiRun = Tab2:AddToggle({
	Name = "Anti Run",
	Default = false,
	Callback = function(Value)
_G.AutoExit = Value
while _G.AutoExit do
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") ~= nil then
for _, v in next, workspace:GetChildren() do
    if string.find(v.Name, "Labyrinth") and v:FindFirstChild("Doors") then
        for _, y in ipairs(v.Doors:GetChildren()) do
            if y:FindFirstChild("Hitbox") and y.Hitbox:FindFirstChild("TouchInterest") then
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 0)
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 1)
            end
        end
    end
end
end
task.wait()
end
	end    
})

AntiBrick = Tab2:AddToggle({
	Name = "Anti Brick",
	Default = false,
	Callback = function(Value)
_G.AntiBrick = Value
while _G.AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
	end    
})

AntiRecord = Tab2:AddToggle({
	Name = "Anti Record",
	Default = false,
	Callback = function(Value)
_G.AntiRecord = Value
	end    
})
for i,p in pairs(game.Players:GetChildren()) do
if p ~= game.Players.LocalPlayer then
p.Chatted:Connect(function(message)
Words = message:split(" ")
if _G.AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..p.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end
end
game.Players.PlayerAdded:Connect(function(Player)
Player.Chatted:Connect(function(message)
Words = message:split(" ")
if _G.AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..Player.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end)

AntiReda = Tab2:AddToggle({
	Name = "Anti [REDACTED]",
	Default = false,
	Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.Well.Disabled = Value
	end    
})

AntiBrazil = Tab2:AddToggle({
	Name = "Anti Brazil",
	Default = false,
	Callback = function(Value)
_G.AntiBrazil = Value
while _G.AntiBrazil do
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == true then
                     v.CanTouch = false
                 end
             end
task.wait()
end
if _G.AntiBrazil == false then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == false then
                     v.CanTouch = true
                 end
            end
end
	end    
})

AntiZa = Tab2:AddToggle({
	Name = "Anti Za Hando",
	Default = false,
	Callback = function(Value)
	_G.AntiZaHando = Value
            while _G.AntiZaHando do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "Part" then
                        v:Destroy()
                    end
                end
task.wait()
            end
	end    
})

AntiFort = Tab2:AddToggle({
	Name = "Anti Fort",
	Default = false,
	Callback = function(Value)
	_G.AntiFort = Value
            while _G.AntiFort do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Part" then
                        v.CanCollide = false
                    end
                end
task.wait()
            end
	end    
})

AntiReaper = Tab2:AddToggle({
	Name = "Anti Reaper",
	Default = false,
	Callback = function(Value)
	_G.AntiReaper = Value
            while _G.AntiReaper do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "DeathMark" then
                        game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end
                end
task.wait()
end
	end    
})

AntiPusher = Tab2:AddToggle({
	Name = "Anti Pusher",
	Default = false,
	Callback = function(Value)
		_G.AntiPusher = Value
while _G.AntiPusher do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
	end    
})

AntiDefend = Tab2:AddToggle({
	Name = "Anti Defend",
	Default = false,
	Callback = function(Value)
	_G.NoclipBarrier = Value
if _G.NoclipBarrier == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "ÅBarrier") then
                        if v.CanCollide == false then
                            v.CanCollide = true
                         end
                    end
                end
           end
while _G.NoclipBarrier do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "ÅBarrier") then
                        if v.CanCollide == true then
                            v.CanCollide = false
                         end
                     end
                end
task.wait()
end
	end    
})

AntiAttackPlank = Tab2:AddToggle({
	Name = "Anti Attack Plank",
	Default = false,
	Callback = function(Value)
	_G.AntiPlank = Value
while _G.AntiPlank do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "'s Plank") and v.ClassName == "Part" then
                         v.CanTouch = false
                         v.CanQuery = false
                     end
                end
task.wait()
end
	end    
})

AntiBubble = Tab2:AddToggle({
	Name = "Anti Bubble",
	Default = false,
	Callback = function(Value)
		 _G.AntiBubble = Value
while _G.AntiBubble do
for i,v in pairs(workspace:GetChildren()) do
                    if v.Name == "BubbleObject" and v:FindFirstChild("Weld") then
                        v:FindFirstChild("Weld"):Destroy()
                    end
               end
task.wait()
end
	end    
})

AntiStun = Tab2:AddToggle({
	Name = "Anti Stun",
	Default = false,
	Callback = function(Value)
		_G.AntiStun = Value
while _G.AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Workspace:FindFirstChild("Shockwave") and game.Players.LocalPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
	end    
})

AntiCOD = Tab2:AddToggle({
	Name = "Anti Cube Of Death",
	Default = false,
	Callback = function(Value)
		if Value == true then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = false
end
else
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = true
end
end
	end    
})

AntiDeath = Tab2:AddToggle({
	Name = "Anti Death Barriers",
	Default = false,
	Callback = function(Value)
		if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
	end    
})

AntiRagdoll = Tab2:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Torso") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") then
if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = true
end
until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
end
task.wait()
end
	end    
})

Tab11:AddDropdown({
	Name = "Glove Sound",
	Default = "Ghost",
	Options = {"Ghost", "Thanos", "Space", "Scythe", "Golden", "Hitman", "Prop", "Error Death", "Zombie"},
	Callback = function(Value)
GloveSound = Value
	end    
})

Tab11:AddToggle({
	Name = "Auto Spam Glove Sound",
	Default = false,
	Callback = function(Value)
		GloveSoundSpam = Value
while GloveSoundSpam and GloveSound == "Ghost" do
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()
task.wait()
end
while GloveSoundSpam and GloveSound == "Thanos" do
game:GetService("ReplicatedStorage").Illbeback:FireServer()
task.wait()
end
while GloveSoundSpam and GloveSound == "Space" do
game:GetService("ReplicatedStorage").ZeroGSound:FireServer()
task.wait()
end
while GloveSoundSpam and GloveSound == "Scythe" do
game:GetService("ReplicatedStorage").Scythe:FireServer("ScytheWeapon")
task.wait()
end
while GloveSoundSpam and GloveSound == "Golden" do
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
task.wait()
end
while GloveSoundSpam and GloveSound == "Hitman" do
game:GetService("ReplicatedStorage"):WaitForChild("HitmanAbility"):FireServer("ReplicateGoldenRevolver",{0})
task.wait()
end
while GloveSoundSpam and GloveSound == "Prop" do
game:GetService("ReplicatedStorage").Prop:FireServer()
task.wait()
end
while GloveSoundSpam and GloveSound == "Error Death" do
game.ReplicatedStorage.ErrorDeath:FireServer()
task.wait()
end
while GloveSoundSpam and GloveSound == "Zombie" do
game:GetService("ReplicatedStorage").b:FireServer("ReplicateSound_Zombie")
task.wait()
end
	end    
})

Tab15:AddParagraph("Share Link Zalo","Join Link Zalo Message All People Or Friend | Tham Gia Link Zalo Nhắn Tin Tất Cả Mọi Người Hoặc Bạn Bè")
Tab15:AddParagraph("Message Zalo","You Have To Message Zalo In VietNamese | Bạn Phải Nhắn Tin Zalo Bằng Tiếng Việt")
Tab15:AddParagraph("Deputy Group Zalo","[ Tấn Lộc ( Owner ) ] or [ Giang ] or [ Tiến ] or [ Hoàng Kha ]")
Tab15:AddParagraph("Share Link Slap Battles Group","Join Link Zalo Message All People Or Friend | Tham Gia Link Zalo Nhắn Tin Tất Cả Mọi Người Hoặc Bạn Bè")
Tab15:AddParagraph("Message Slap Battles Group","You Have To Message Zalo In VietNamese Or English | Bạn Phải Nhắn Tin Zalo Bằng Tiếng Việt hoặc Tiếng Anh")
Tab15:AddLabel("Owner Credits Script By Giang")

Tab15:AddButton({
	Name = "Copy Join Zalo",
	Callback = function()
            setclipboard("https://zalo.me/g/qlukiy407")
  	end    
})

Tab15:AddButton({
	Name = "Copy Join Slap Battles Group",
	Callback = function()
            setclipboard("https://discord.com/invite/xdCKBcS6")
  	end    
})

Tab15:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
_G.AutoSetInfo = false
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})

---ToggleAllAnti---
game.Workspace.NoChanged.Changed:Connect(function()
AntiVoid:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiPortal:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiRun:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiAdmin:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiKick:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiAfk:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiObby:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiRock:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiSbeve:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBallBaller:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiAttackPlank:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBus:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiMail:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiLure:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiJack:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiKnock:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBooster:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiSquid:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiConveyor:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiNightmareAndPotion:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiTime:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiIceAndPotion:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiMittenBl:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiNull:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBrick:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiRecord:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiReda:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBrazil:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiZa:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiReaper:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiPusher:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiDefend:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiFort:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBubble:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiStun:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiCOD:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiDeath:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiRagdoll:Set(game.Workspace.NoChanged.Value)
end)
elseif game.PlaceId == 11520107397 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - Killstreak Only"),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)

if game.Workspace:FindFirstChild("NametagChanged") == nil then
local NametagChanged = Instance.new("StringValue", workspace)
NametagChanged.Name = "NametagChanged"
NametagChanged.Value = ""

local SlapChanged = Instance.new("StringValue", NametagChanged)
SlapChanged.Name = "SlapChanged"
SlapChanged.Value = ""
end

---Safe---

if workspace:FindFirstChild("SafeBox") == nil then
local S = Instance.new("Part")
S.Name = "SafeBox"
S.Anchored = true
S.CanCollide = true
S.Transparency = .5
S.Position = Vector3.new(-5500, -5000, -5000)
S.Size = Vector3.new(21, 5, 21)
S.Parent = workspace

local S1 = Instance.new("Part")
S1.Name = "S1"
S1.Anchored = true
S1.CanCollide = true
S1.Transparency = .5
S1.Position = Vector3.new(-5499.91, -4991.5, -4989.09)
S1.Size = Vector3.new(20, 13, 2)
S1.Parent = workspace:FindFirstChild("SafeBox")

local S2 = Instance.new("Part")
S2.Name = "S2"
S2.Anchored = true
S2.CanCollide = true
S2.Transparency = .5
S2.Position = Vector3.new(-5510.27979, -4991.5, -5000.08984, -4.47034836e-07, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, -3.69319451e-07)
S2.Size = Vector3.new(21, 14, 2)
S2.Rotation = Vector3.new(0, -90, 0)
S2.Parent = workspace:FindFirstChild("SafeBox")

local S3 = Instance.new("Part")
S3.Name = "S3"
S3.Anchored = true
S3.CanCollide = true
S3.Transparency = .5
S3.Position = Vector3.new(-5499.3, -4991.5, -5011.12)
S3.Size = Vector3.new(21, 13, 2)
S3.Parent = workspace:FindFirstChild("SafeBox")

local S4 = Instance.new("Part")
S4.Name = "S4"
S4.Anchored = true
S4.CanCollide = true
S4.Transparency = .5
S4.Position = Vector3.new(-5489.97559, -4991.5, -4999.52637, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
S4.Size = Vector3.new(22, 13, 2)
S4.Rotation = Vector3.new(0, -90, 0)
S4.Parent = workspace:FindFirstChild("SafeBox")

local S5 = Instance.new("Part")
S5.Name = "S5"
S5.Anchored = true
S5.CanCollide = true
S5.Transparency = .5
S5.Position = Vector3.new(-5499.39, -4984, -5000.07)
S5.Size = Vector3.new(24, 3, 24)
S5.Parent = workspace:FindFirstChild("SafeBox")
end

if workspace:FindFirstChild("BobWalk1") == nil then
local BobWalk1 = Instance.new("Part", workspace)
BobWalk1.CanCollide = false
BobWalk1.Anchored = true
BobWalk1.CFrame = CFrame.new(23.2798462, -19.8447475, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk1.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk1.Name = "BobWalk1"
BobWalk1.Transparency = 1

local BobWalk2 = Instance.new("Part", BobWalk1)
BobWalk2.CanCollide = false
BobWalk2.Anchored = true
BobWalk2.CFrame = CFrame.new(-458.458344, -9.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk2.Size = Vector3.new(1139.2593994140625, 1.5, 2048)
BobWalk2.Name = "BobWalk2"
BobWalk2.Transparency = 1

local BobWalk3 = Instance.new("Part", BobWalk1)
BobWalk3.CanCollide = false
BobWalk3.Anchored = true
BobWalk3.CFrame = CFrame.new(-690.65979, 47.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk3.Size = Vector3.new(674.8563232421875, 0.6048492789268494, 2048)
BobWalk3.Name = "BobWalk3"
BobWalk3.Transparency = 1

local BobWalk4 = Instance.new("Part", BobWalk1)
BobWalk4.CanCollide = false
BobWalk4.Anchored = true
BobWalk4.CFrame = CFrame.new(402.964996, 29.25, 222.310089, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk4.Size = Vector3.new(379.88922119140625, 1.5, 160.8837127685547)
BobWalk4.Name = "BobWalk4"
BobWalk4.Transparency = 1

local BobWalk5 = Instance.new("Part", BobWalk1)
BobWalk5.CanCollide = false
BobWalk5.Anchored = true
BobWalk5.Orientation = Vector3.new(0, 0, 171.728)
BobWalk5.CFrame = CFrame.new(178.719162, -18.9417267, 1.83554196, -0.989596844, -0.143868446, 0, 0.143868446, -0.989596844, 0, 0, 0, 1)
BobWalk5.Size = Vector3.new(143.94830322265625, 1.5, 2048)
BobWalk5.Name = "BobWalk5"
BobWalk5.Transparency= 1

local BobWalk6 = Instance.new("Part", BobWalk1)
BobWalk6.CanCollide = false
BobWalk6.Anchored = true
BobWalk6.Orientation = Vector3.new(0, 0, 144.782)
BobWalk6.CFrame = CFrame.new(-309.152832, 15.4761791, 1.83554196, -0.816968799, -0.576681912, 0, 0.576681912, -0.816968799, 0, 0, 0, 1)
BobWalk6.Size = Vector3.new(110.13511657714844, 2.740000009536743, 2048)
BobWalk6.Name = "BobWalk6"
BobWalk6.Transparency = 1

local BobWalk7 = Instance.new("Part", BobWalk1)
BobWalk7.CanCollide = false
BobWalk7.Anchored = true
BobWalk7.Orientation = Vector3.new(0, 0, -147.002)
BobWalk7.CFrame = CFrame.new(174.971924, 5.34897423, 222.310089, -0.838688731, 0.544611216, 0, -0.544611216, -0.838688731, 0, 0, 0, 1)
BobWalk7.Size = Vector3.new(89.76103210449219, 1.5, 160.8837127685547)
BobWalk7.Name = "BobWalk7"
BobWalk7.Transparency = 1

local BobWalk8 = Instance.new("Part", BobWalk1)
BobWalk8.CanCollide = false
BobWalk8.Anchored = true
BobWalk8.Orientation = Vector3.new(0.001, -90.002, -138.076)
BobWalk8.CFrame = CFrame.new(402.965027, 5.49165154, 74.8157959, 2.98023224e-05, -1.14142895e-05, -1, -0.668144584, -0.744031429, -1.14142895e-05, -0.744031489, 0.668144584, -2.98023224e-05)
BobWalk8.Size = Vector3.new(74.23055267333984, 1, 379.88922119140625)
BobWalk8.Name = "BobWalk8"
BobWalk8.Transparency = 1

local BobWalk9 = Instance.new("Part", BobWalk1)
BobWalk9.CanCollide = false
BobWalk9.Anchored = true
BobWalk9.CFrame = CFrame.new(402.964996, 29.9136467, 121.981705, -1, 0, 0, 0, -1, 0, 0, 0, 1)
BobWalk9.Size = Vector3.new(379.88922119140625, 1.5, 39.77305603027344)
BobWalk9.Name = "BobWalk9"
BobWalk9.Transparency = 1

local BobWalk10 = Instance.new("WedgePart", BobWalk1)
BobWalk10.CanCollide = false
BobWalk10.Anchored = true
BobWalk10.Orientation = Vector3.new(-30.453, 117.775, -102.906)
BobWalk10.CFrame = CFrame.new(134.084229, -17.8583984, 94.3953705, 0.541196942, -0.354067981, 0.762719929, -0.840263784, -0.192543149, 0.506837189, -0.0325982571, -0.915184677, -0.401714325)
BobWalk10.Size = Vector3.new(1, 88.66793823242188, 34.42972946166992)
BobWalk10.Name = "BobWalk10"
BobWalk10.Transparency = 1

local BobWalk11 = Instance.new("WedgePart", BobWalk1)
BobWalk11.CanCollide = false
BobWalk11.Anchored = true
BobWalk11.Orientation = Vector3.new(-29.779, 117.596, -13.193)
BobWalk11.CFrame = CFrame.new(168.441879, 2.46393585, 125.815231, -0.350553155, -0.534268022, 0.769201458, -0.198098332, 0.845035911, 0.496660322, -0.915352523, 0.0217281878, -0.402067661)
BobWalk11.Size = Vector3.new(1, 0.9999924302101135, 82.1865463256836)
BobWalk11.Name = "BobWalk11"
BobWalk11.Transparency = 1

local BobWalk12 = Instance.new("WedgePart", BobWalk1)
BobWalk12.CanCollide = false
BobWalk12.Anchored = true
BobWalk12.Orientation = Vector3.new(26.893, -124.388, -108.64)
BobWalk12.CFrame = CFrame.new(206.315063, 26.9295502, 105.471031, 0.534210563, -0.415855825, -0.73599112, -0.845072925, -0.285055399, -0.452321947, -0.021697551, 0.863601387, -0.503708005)
BobWalk12.Size = Vector3.new(1, 13.53612232208252, 9.847718238830566)
BobWalk12.Name = "BobWalk12"
BobWalk12.Transparency = 1

local BobWalk13 = Instance.new("WedgePart", BobWalk1)
BobWalk13.CanCollide = false
BobWalk13.Anchored = true
BobWalk13.Orientation = Vector3.new(-26.893, 55.613, 108.64)
BobWalk13.CFrame = CFrame.new(165.965088, 2.12955856, 77.8575592, -0.53421092, -0.415855944, 0.735991359, 0.845073164, -0.285055757, 0.452322066, 0.0216975808, 0.863601625, 0.503708005)
BobWalk13.Size = Vector3.new(1, 13.53612232208252, 99.8001480102539)
BobWalk13.Name = "BobWalk13"
BobWalk13.Transparency = 1

local BobWalk14 = Instance.new("WedgePart", BobWalk1)
BobWalk14.CanCollide = false
BobWalk14.Anchored = true
BobWalk14.Orientation = Vector3.new(-0.001, 90.003, 48.072)
BobWalk14.CFrame = CFrame.new(172.67041, 5.49164963, 74.8157959, -4.58955765e-05, 2.05039978e-05, 1, 0.743987858, 0.668193102, 2.05039978e-05, -0.668193102, 0.743987858, -4.58955765e-05)
BobWalk14.Size = Vector3.new(1, 74.23055267333984, 80.699951171875)
BobWalk14.Name = "BobWalk14"
BobWalk14.Transparency = 1

local BobWalk15 = Instance.new("WedgePart", BobWalk1)
BobWalk15.CanCollide = false
BobWalk15.Anchored = true
BobWalk15.Orientation = Vector3.new(0, 0, 106.498)
BobWalk15.CFrame = CFrame.new(212.753906, 30.0632439, 121.981705, -0.283976078, -0.95883137, 0, 0.95883137, -0.283976078, 0, 0, 0, 1)
BobWalk15.Size = Vector3.new(1, 0.8520558476448059, 39.773048400878906)
BobWalk15.Name = "BobWalk15"
BobWalk15.Transparency = 1

local BobWalk16 = Instance.new("WedgePart", BobWalk1)
BobWalk16.CanCollide = false
BobWalk16.Anchored = true
BobWalk16.Orientation = Vector3.new(29.777, -62.406, -75.066)
BobWalk16.CFrame = CFrame.new(212.884216, 30.1233234, 121.984734, 0.544644356, 0.33412537, -0.769235253, -0.838644743, 0.223680317, -0.496630788, 0.00612583756, 0.915602207, 0.402038693)
BobWalk16.Size = Vector3.new(1, 36.08900451660156, 16.739320755004883)
BobWalk16.Name = "BobWalk16"
BobWalk16.Transparency = 1

local BobWalk17 = Instance.new("WedgePart", BobWalk1)
BobWalk17.CanCollide = false
BobWalk17.Anchored = true
BobWalk17.Orientation = Vector3.new(-29.777, 117.594, 75.066)
BobWalk17.CFrame = CFrame.new(174.83577, 5.55865097, 141.871262, -0.544644356, 0.33412537, 0.769235253, 0.838644743, 0.223680317, 0.496630788, -0.00612583756, 0.915602207, -0.402038693)
BobWalk17.Size = Vector3.new(1, 36.08900451660156, 82.1865463256836)
BobWalk17.Name = "BobWalk17"
BobWalk17.Transparency = 1

local BobWalk18 = Instance.new("WedgePart", BobWalk1)
BobWalk18.CanCollide = false
BobWalk18.Anchored = true
BobWalk18.Orientation = Vector3.new(30.453, -62.225, 102.906)
BobWalk18.CFrame = CFrame.new(165.427338, 2.97219658, 77.884697, -0.541196942, -0.354067981, -0.762719929, 0.840263784, -0.192543149, -0.506837189, 0.0325982571, -0.915184677, 0.401714325)
BobWalk18.Size = Vector3.new(1, 88.66793823242188, 47.76289749145508)
BobWalk18.Name = "BobWalk18"
BobWalk18.Transparency = 1
end

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(-80.5, -10.005, -246.5)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 1, 2048)
VoidPart.Material = "ForceField"
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

--Tab
local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://8997387937",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Badges",
	Icon = "rbxassetid://7733673987",
	PremiumOnly = false
})

local Tab5 = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4335489011",
	PremiumOnly = false
})

local Tab7 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

local Tab15 = Window:MakeTab({
	Name = "Credit",
	Icon = "rbxassetid://7733955511",
	PremiumOnly = false
})

Tab:AddParagraph("Zalo | Discord"," [ Zalo ]: Bạn muốn vào nhóm Zalo thì vào Credit nhé có link nhóm Zalo đó | [ Discord ]: If you want to join the Server hack slap battles group, go to the credits section ] | Good Luck")
local InfoServer = Tab:AddSection({Name = "Info Server"})
CanYouFps = Tab:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CanYouPing = Tab:AddLabel("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
ServerPlayer = Tab:AddLabel("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]")
TimeServer = Tab:AddLabel("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
TimeNow = Tab:AddLabel("Now Time [ "..os.date("%X").." ]")
AgeAccYou = Tab:AddLabel("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]")
ViewAgeServer = Tab:AddLabel("Server's Age [ "..game.Workspace.Lobby.ServerAge.Text.SurfaceGui.TextLabel.Text.." ]")
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
ResetTime = Tab:AddLabel("Time Spawn [ "..game.Players.RespawnTime.." ]")
else
ResetTime = Tab:AddLabel("Time Spawn [ Not Dead ]")
end
CodeKeypad = Tab:AddLabel("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]")
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn = Tab:AddLabel("Keypad Spawn [ No ]")
else
KeypadSpawn = Tab:AddLabel("Keypad Spawn [ Yes ]")
end
CheckSlap = Tab:AddLabel("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
Glove = Tab:AddLabel("You're Using Glove [ "..game.Players.LocalPlayer.leaderstats.Glove.Value.." ]")
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Kills") and game.Players.LocalPlayer.PlayerGui.Kills:FindFirstChild("Frame") and game.Players.LocalPlayer.PlayerGui.Kills.Frame:FindFirstChild("TextLabel") then
KillstreakLabel = Tab:AddLabel("Kill [ "..game.Players.LocalPlayer.PlayerGui.Kills.Frame.TextLabel.Text.." ]")
else
KillstreakLabel = Tab:AddLabel("Kill [ Menu Not Slow ]")
end
PlateTime = Tab:AddLabel("Plate Time [ "..game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text.." ]")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")
local InfoServer = Tab:AddSection({Name = "Local Player"})
if game.Players.LocalPlayer.Character:FindFirstChild("rock") then
WalkspeedYou = Tab:AddLabel("Walk Speed [ Not Walk then rock ]")
JumppowerYou = Tab:AddLabel("Jump Power [ Not Jump Power then rock ]")
HealthYou = Tab:AddLabel("Health You [ Not Health then rock ]")
HipHeightYou = Tab:AddLabel("Hip Height [ Not Hip then rock ]")
else
WalkspeedYou = Tab:AddLabel("Walk Speed [ "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.." ]")
JumppowerYou = Tab:AddLabel("Jump Power [ "..game.Players.LocalPlayer.Character.Humanoid.JumpPower.." ]")
HealthYou = Tab:AddLabel("Health You [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
HipHeightYou = Tab:AddLabel("Hip Height [ "..game.Players.LocalPlayer.Character.Humanoid.HipHeight.." ]")
end
GravityYou = Tab:AddLabel("Gravity [ "..game.Workspace.Gravity.." ]")
PositionYou = Tab:AddLabel("Position In Your [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]")

local AutoSetInfoServer
AutoSetInfo = Tab:AddToggle({
	Name = "Auto Set Info",
	Default = false,
	Callback = function(Value)
_G.AutoSetInfo = Value
AutoSetInfoServer = game:GetService("RunService").RenderStepped:Connect(function()
if _G.AutoSetInfo == true then
CanYouFps:Set("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
ServerPlayer:Set("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]")
TimeServer:Set("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minutes | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
CanYouPing:Set("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
AgeAccYou:Set("Your Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]")
TimeNow:Set("Now Time [ "..os.date("%X").." ]")
ViewAgeServer:Set("Server's Age [ "..game.Workspace.Lobby.ServerAge.Text.SurfaceGui.TextLabel.Text.." ]")
PlateTime:Set("Plate Time [ "..game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text.." ]")
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
ResetTime:Set("Time Spawn [ "..game.Players.RespawnTime.." ]")
else
ResetTime:Set("Time Spawn [ Not Dead ]")
end
PositionYou:Set("Position In You [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]")
CodeKeypad:Set("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]")
CheckSlap:Set("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
Glove:Set("You're Using Glove [ "..game.Players.LocalPlayer.leaderstats.Glove.Value.." ]")
if game.Players.LocalPlayer.Character:FindFirstChild("rock") then
WalkspeedYou:Set("Walk Speed [ Not Walk then rock ]")
JumppowerYou:Set("Jump Power [ Not Jump Power then rock ]")
HealthYou:Set("Health You [ Not Health then rock ]")
HipHeightYou:Set("Hip Height [ Not Hip then rock ]")
else
WalkspeedYou:Set("Walk Speed [ "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.." ]")
JumppowerYou:Set("Jump Power [ "..game.Players.LocalPlayer.Character.Humanoid.JumpPower.." ]")
HealthYou:Set("Health You [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
HipHeightYou:Set("Hip Height [ "..game.Players.LocalPlayer.Character.Humanoid.HipHeight.." ]")
end
GravityYou:Set("Gravity [ "..game.Workspace.Gravity.." ]")
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn:Set("Keypad Spawn [ No ]")
else
KeypadSpawn:Set("Keypad Spawn [ Yes ]")
end
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Kills") and game.Players.LocalPlayer.PlayerGui.Kills:FindFirstChild("Frame") and game.Players.LocalPlayer.PlayerGui.Kills.Frame:FindFirstChild("TextLabel") then
KillstreakLabel:Set("Kill [ "..game.Players.LocalPlayer.PlayerGui.Kills.Frame.TextLabel.Text.." ]")
else
KillstreakLabel:Set("Kill [ Menu Not Slow ]")
end
elseif _G.AutoSetInfo == false then
AutoSetInfoServer:Disconnect()
AutoSetInfoServer = nil
end
end)
	end    
})

local InfoServer = Tab:AddSection({Name = "Notification"})
Tab:AddLabel("------------------------------[ Warning ]------------------------------")
Tab:AddParagraph("[ Admin ]","[ Banned Hackers which node is not good ]")
Tab:AddParagraph("[ Record ]","[ When someone records it, you got a 90% ban ]")
Tab:AddParagraph("[ Lucky ]","[ If you are lucky enough to survive the banned then you are lucky ]")
Tab:AddParagraph("[ Tired ]","I'm Very Tired of Script and Script Update is slow. Please forgive me because I update slowly")
Tab:AddParagraph("[ Script Giang ]","This script was created by Giang, but there is a problem when creating a feature but no one testing no one can help me see if it works | I'm really sorry that I couldn't do the feature and it all failed and didn't work | I hope everyone understands me")
Tab:AddLabel("------------------------------[ End ]------------------------------")

Tab1:AddButton({
	Name = "Synapse X [ PE Delta ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Codex [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Codex.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Kiwi [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kiwi-Ui.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Krypton [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Krypton.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Krnl [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Knrl.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Animation [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/EGEGESGGH/main/FE%20Animation%20GUI.txt'))()
  	end    
})

Tab1:AddButton({
	Name = "Arceus x [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Arceus_X_V3.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Execute | Ui Library [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Execute%20%7C%20UI%20Library.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Kill Player [ PE ]",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kill%20player"))()
  	end    
})

Tab1:AddButton({
	Name = "Keyboard",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab1:AddButton({
	Name = "Inf yield Delta",
	Callback = function()
      		loadstring(game:HttpGet("https://gist.githubusercontent.com/lxnnydev/c533c374ca4c1dcef4e1e10e33fa4a0c/raw/03e74f184f801dad77d3ebe1e2f18c6ac87ca612/delta___IY.gistfile1.txt.lua",true))()
  	end    
})

Tab1:AddButton({
	Name = "Inf yield",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})

Tab1:AddButton({
	Name = "Hitbox",
	Callback = function()
      		loadstring(game:HttpGet(("https://gist.githubusercontent.com/stellar-4242/430ef3087d8d87eb306ca03e728ffbb8/raw/798429dd908b1f4471a1fa569ff62c5e5a93ec61/SLAP.LUA")))()
  	end    
})

Tab1:AddButton({
	Name = "CherryUi's SB GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
  	end    
})

Tab1:AddButton({
	Name = "Position Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Position_Gui.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Fe Fly V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "MoonUI v10",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10'))()
  	end    
})

Tab1:AddButton({
	Name = "Btool Cute",
	Callback = function()
      		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
  	end    
})

Tab1:AddButton({
	Name = "Dex V2",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  	end    
})

Tab1:AddButton({
	Name = "Dex V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "TP gui player",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/TP_Player.lua"))()
  	end    
})

Tab1:AddButton({
	Name = "Turies Spy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Reamsrpy.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Simple Spy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/RemoteSpy-V2.lua", true))()
  	end    
})

Tab1:AddButton({
	Name = "Hydroxide",
	Callback = function()
local owner = "Upbolt"
local branch = "revision"
local function webImport(file)
return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end
webImport("init")
webImport("ui/main")
  	end    
})

Tab1:AddButton({
	Name = "Teleport SafeBox",
	Callback = function()
	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
    end
  	end    
})

Tab3:AddButton({
	Name = "Auto Quests Chest All Glove",
	Callback = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(289, 13, 261)
game:GetService("ReplicatedStorage").DigEvent:FireServer({["index"] = 2,["cf"] = CFrame.new(42.7222366, -6.17449856, 91.5175781, -0.414533257, 1.72594355e-05, -0.91003418, -5.57037238e-05, 1, 4.4339522e-05, 0.91003418, 6.90724992e-05, -0.414533257)})
until game.Workspace:FindFirstChild("TreasureChestFolder") ~= nil and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest") ~= nil
wait(1)
game.Workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
wait(0.9)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterBooth._configPart.CFrame * CFrame.new(-5,0,0)
else
OrionLib:MakeNotification({Name = "Error",Content = "You have enter arena",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Auto Get Glove FrostBite",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
]])
end
game:GetService("TeleportService"):Teleport(17290438723)
  	end    
})

Tab3:AddButton({
	Name = "Auto Get Glove Admin",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(13.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
task.wait(6)
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end
]])
end
if game:GetService("ReplicatedStorage").Assets.Retro then
game.ReplicatedStorage.Assets.Retro.Parent = workspace
wait(1.5)
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
else
fireclickdetector(workspace.Retro.Map.RetroObbyMap:GetChildren()[5].StaffApp.Button.ClickDetector)
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove Chain",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
task.wait(0.1)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
task.wait(2)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have 1000 slap.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddDropdown({
	Name = "Join Maze Elude",
	Default = "Auto Keypad",
	Options = {"Teleport","Auto Keypad"},
	Callback = function(Value)
_G.SelectMaze = Value
	end    
})

Tab3:AddButton({
	Name = "Get Counter + Elude",
	Callback = function()
if _G.SelectMaze == "Teleport" then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
Time = 121
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.5)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
    ]])
end
game:GetService("TeleportService"):Teleport(11828384869)
elseif _G.SelectMaze == "Auto Keypad" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server don't have keypad, auto start Serverhop",Image = "rbxassetid://7733658504",Time = 5})
	for _, server in ipairs(game.HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
    	if server.playing < server.maxPlayers and server.JobId ~= game.JobId then
        	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
    	end
	end
else
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
Time = 121
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
    ]])
end
OrionLib:MakeNotification({Name = "Error",Content = "Server in have spawn keypad, auto start keypad",Image = "rbxassetid://7733658504",Time = 5})
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
local digits = tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7)
for i = 1, #digits do
task.wait(0.8)
local digit = digits:sub(i, i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
task.wait(0.5)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
end
  	end    
})

Tab3:AddButton({
	Name = "Get Glove [Redacted]",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
Door = 0
for i = 1, 10 do
Door = Door + 1
if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
Door = nil
else
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 1)
wait(3.75)
end
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have 5000 slap, or you have Owner bagde",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab3:AddButton({
	Name = "Get Duck & Orange & Knife Badge",
	Callback = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760907) and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2128220957) and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760916) then
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector) 
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
else
OrionLib:MakeNotification({Name = "Error",Content = "You have Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddButton({
	Name = "Get Free Ice Skate",
	Callback = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2906002612987222) then
game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
else
OrionLib:MakeNotification({Name = "Error",Content = "You have Owner badge",Image = "rbxassetid://7733658504",Time = 5})
end
  	end 
})

Tab3:AddToggle({
	Name = "Phase Or Jet Farm",
	Default = false,
	Callback = function(Value)
_G.PhaseOrJetfarm = Value
while _G.PhaseOrJetfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" or v.Name == "PhaseOrb" then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
	end    
})

AutoTycoon = Tab3:AddToggle({
	Name = "Get Tycoon",
	Default = false,
	Callback = function(Value)
	   _G.AutoTpPlate = Value
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
while _G.AutoTpPlate do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Plate.CFrame
end
task.wait()
end
elseif _G.AutoTpPlate == true then
OrionLib:MakeNotification({Name = "Error",Content = "You need enter erane, or 7 people the server",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
AutoTycoon:Set(false)
end
	end    
})

Tab5:AddSlider({
	Name = "WalkSpeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Tab5:AddTextbox({
	Name = "WalkSpeed",
	Default = "UserSpeed",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end	  
})

Tab5:AddToggle({
	Name = "Walkspeed Set Auto",
	Default = false,
	Callback = function(Value)
		KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Tab5:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Tab5:AddTextbox({
	Name = "Jumppower",
	Default = "UserPower",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end	  
})

Tab5:AddToggle({
	Name = "Jumppower Set Auto",
	Default = false,
	Callback = function(Value)
		KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})

Tab5:AddSlider({
	Name = "Hip Height",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Hip Height",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
HipHeight = Value
	end    
})

Tab5:AddTextbox({
	Name = "Hip Height",
	Default = "UserHeight",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
HipHeight = Value
	end	  
})

Tab5:AddToggle({
	Name = "Hip Height Set Auto",
	Default = false,
	Callback = function(Value)
		KeepHipHeight = Value
           while KeepHipHeight do
              if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.HipHeight ~= HipHeight then
                  game.Players.LocalPlayer.Character.Humanoid.HipHeight  = HipHeight
              end
task.wait()
         end
	end    
})

Tab5:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 600,
	Default = 196,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
game.Workspace.Gravity = Value
Gravity = Value
	end    
})

Tab5:AddToggle({
	Name = "Gravity Set Auto",
	Default = false,
	Callback = function(Value)
		KeepGravity = Value
           while KeepGravity do
              if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Workspace.Gravity ~= nil and game.Workspace.Gravity ~= Gravity then
                  game.Workspace.Gravity = Gravity
              end
task.wait()
         end
	end    
})

Tab7:AddDropdown({
	Name = "Teleport",
	Default = "",
	Options = {"Arena", "Lobby", "Hunter Room", "Brazil", "Island Slapple", "Plate", "Tournament", "Cannon Island", "Keypad", "Moai Island", "Island 1", "Island 2", "Island 3"},
	Callback = function(Value)
if Value == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Lobby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
elseif Value == "Hunter Room" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0,5,0)
elseif Value == "Brazil" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
elseif Value == "Island Slapple" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "Plate" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
elseif Value == "Tournament" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
elseif Value == "Cannon Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
elseif Value == "Keypad" then
if not workspace:FindFirstChild("Keypad") then
OrionLib:MakeNotification({Name = "Error",Content = "Server in don't have keypad.",Image = "rbxassetid://7733658504",Time = 5})
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Keypad.Buttons.Enter.CFrame
end
elseif Value == "Moai Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "Island 1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
elseif Value == "Island 2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
elseif Value == "Island 3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
end
	end    
})

Tab7:AddToggle({
	Name = "Autofarm Slapples",
	Default = false,
	Callback = function(Value)
	    SlappleFarm = Value
while SlappleFarm do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
       end
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Autofarm Candy",
	Default = false,
	Callback = function(Value)
	    CandyCornsFarm = Value
while CandyCornsFarm do
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
                end
            end
task.wait()
end
	end    
})

Tab7:AddSlider({
	Name = "Reach Slap Aura",
	Min = 10,
	Max = 50,
	Default = 25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachSlapArua = Value
	end    
})

Tab7:AddDropdown({
	Name = "Slap Aura Friend",
	Default = "Fight",
	Options = {"Fight", "Not Fight"},
	Callback = function(Value)
SlapAuraFriend = Value
	end    
})

Tab7:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(Value)
		SlapAura = Value
while SlapAura and SlapAuraFriend == "Fight" do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Ragdolled.Value == false and v.Character.Torso.Anchored ~= false and v.Character:FindFirstChild("Mirage") == nil then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
game.ReplicatedStorage.KSHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
                end
end
end
end
task.wait(0.2)
end
while SlapAura and SlapAuraFriend == "Not Fight" do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and not game.Players.LocalPlayer:IsFriendsWith(v.UserId) and v.Character.Ragdolled.Value == false and v.Character.Torso.Anchored ~= false and v.Character:FindFirstChild("Mirage") == nil then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
game.ReplicatedStorage.KSHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
                    end
end
end
end
task.wait(0.2)
end
	end    
})


Tab7:AddSlider({
	Name = "Reach HitBox",
	Min = 2,
	Max = 30,
	Default = 10,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachHitbox = Value
	end    
})

Tab7:AddToggle({
	Name = "Hitbox Player",
	Default = false,
	Callback = function(Value)
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
                        v.Character.HumanoidRootPart.Transparency = 0.75
                    end
                end
task.wait()
end
if _G.HitboxPlayer == false then
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        v.Character.HumanoidRootPart.Transparency = 1
                    end
                end
end
	end    
})

Tab7:AddSlider({
	Name = "Extend Glove",
	Min = 2,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.GloveExtendReach = Value
	end    
})

Tab7:AddDropdown({
	Name = "Extend Option",
	Default = "Meat Stick",
	Options = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
	Callback = function(Value)
GloveExtendOption = Value
	end    
})

Tab7:AddToggle({
	Name = "Extend Glove",
	Default = false,
	Callback = function(Value)
_G.GloveExtendGet = Value
while _G.GloveExtendGet do
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                          if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
           end
task.wait()
end
if _G.GloveExtendGet == false then
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
end
end
	end    
})

Tab7:AddToggle({
	Name = "AutoFarm Kill",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmKill = Value
if _G.AutoFarmKill == true then
if _G.ClosestMagnitude == nil then
_G.ClosestMagnitude = 99999
end
else
if _G.ClosestMagnitude then
_G.ClosestMagnitude = nil
end
end
while _G.AutoFarmKill do
for _, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if Magnitude <= _G.ClosestMagnitude then
_G.ClosestMagnitude = Magnitude
RandomPlayer = v
end
end
end
if RandomPlayer.Character:FindFirstChild("entered") == nil or RandomPlayer.Character.Humanoid.Health == 0 or RandomPlayer.Character:FindFirstChild("Torso") and RandomPlayer.Character.Torso.Anchored == true then
_G.ClosestMagnitude = 999999
RandomPlayer = nil
end
if RandomPlayer and _G.ClosestMagnitude ~= 999999 then
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("Head").CFrame
wait(0.19)
game.ReplicatedStorage.KSHit:FireServer(RandomPlayer.Character:WaitForChild("Head"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
end
end
task.wait(0.4)
end
	end    
})

Tab7:AddColorpicker({
	Name = "Color ESP",
	Default = Color3.fromRGB(111, 255, 0),
	Callback = function(Value)
		_G.ColorESP = Value
	end	  
})

Tab7:AddToggle({
	Name = "ESP Kill",
	Default = false,
	Callback = function(Value)
_G.KillESP = Value
if _G.KillESP == false then
for i, v in ipairs(game.Players:GetChildren()) do
                if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("KillESP") then
 v.Character.Head.KillESP:Destroy()
                end
            end
end
while _G.KillESP do
for i,v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("KillstreakLevel") then
if v.Character.Head:FindFirstChild("KillESP") and v.Character.Head.KillESP:FindFirstChild("TextLabel") and v.Character.Head.KillESP.TextLabel.TextColor3 ~= _G.ColorESP then
v.Character.Head.KillESP.TextLabel.TextColor3 = _G.ColorESP
end
if v.Character.Head:FindFirstChild("KillESP") and v.Character.Head.KillESP:FindFirstChild("TextLabel") and v.Character.Head.KillESP.TextLabel.Text ~= "Kill [ "..v.Character.KillstreakLevel.Value.." ]" then
if v.Character:FindFirstChild("KillstreakLevel") and v.Character.KillstreakLevel.Value ~= 0 then
v.Character.Head.KillESP.TextLabel.Text = "Kill [ "..v.Character.KillstreakLevel.Value.." | "..v.Name.." ]"
end
end
if v.Character:FindFirstChild("KillstreakLevel") and v.Character.Head:FindFirstChild("KillESP") == nil then
KillESP = Instance.new("BillboardGui", v.Character.Head)
KillESP.Adornee = v.Character.Head
KillESP.Name = "KillESP"
KillESP.Size = UDim2.new(0, 100, 0, 150)
KillESP.StudsOffset = Vector3.new(0, 1, 0)
KillESP.AlwaysOnTop = true
KillESP.StudsOffset = Vector3.new(0, 3, 0)
KillESPText = Instance.new("TextLabel", KillESP)
KillESPText.BackgroundTransparency = 1
KillESPText.Size = UDim2.new(0, 100, 0, 100)
KillESPText.TextSize = 20
KillESPText.Font = Enum.Font.FredokaOne
KillESPText.TextColor3 = _G.ColorESP
KillESPText.TextStrokeTransparency = 0.5
KillESPText.Text = "Kill [ "..v.Character.KillstreakLevel.Value.." | "..v.Name.." ]"
                end
            end
            end
task.wait()
end
	end    
})

Tab7:AddTextbox({
	Name = "Auto Change Nametag",
	Default = "Nametag",
	TextDisappear = false,
	Callback = function(Value)
game.Workspace.NametagChanged.Value = Value
	end	  
})

Tab7:AddToggle({
	Name = " Auto Change Nametag",
	Default = false,
	Callback = function(Value)
	AutoChangeNameTag = Value
        if AutoChangeNameTag == true and game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true) then
        game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
end
workspace.NametagChanged.Changed:Connect(function()
        if AutoChangeNameTag == true and game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true) then
        game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
end
end)
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                if AutoChangeNameTag == true then
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Nametag",true)
                game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = game.Workspace.NametagChanged.Value
                end
            end)
	end    
})

Tab7:AddTextbox({
	Name = "Auto Change Slap Fake",
	Default = "Slap",
	TextDisappear = false,
	Callback = function(Value)
game.Workspace.NametagChanged.SlapChanged.Value = Value
	end	  
})

Tab7:AddToggle({
	Name = " Auto Change Slap Fake",
	Default = false,
	Callback = function(Value)
_G.AutoChangeSlapFake = Value
while _G.AutoChangeSlapFake do
if game.Players.LocalPlayer.leaderstats.Slaps.Value ~= game.Workspace.NametagChanged.SlapChanged.Value then
game.Players.LocalPlayer.leaderstats.Slaps.Value = game.Workspace.NametagChanged.SlapChanged.Value
end
task.wait()
end
	end    
})

Tab7:AddDropdown({
	Name = "Ability Spam All Glove",
	Default = "Null",
	Options = {"Null", "Rhythm Explosion"},
	Callback = function(Value)
AbilitySpamAllGlove = Value
	end    
})

Tab7:AddToggle({
	Name = "Spam Ability All Glove",
	Default = false,
	Callback = function(Value)
SpamAbility = Value
while SpamAbility and AbilitySpamAllGlove == "Null" do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
wait(0.1)
end
while SpamAbility and AbilitySpamAllGlove == "Rhythm Explosion" do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
	end    
})

Tab7:AddToggle({
	Name = "Spam Ability 75 & 100 Kill",
	Default = false,
	Callback = function(Value)
_G.SpamAbliKilll = Value
while _G.SpamAbliKilll do
game:GetService("ReplicatedStorage").KSABILI:FireServer()
wait(6.9)
end
	end    
})

Tab7:AddToggle({
	Name = "Spam Ability 250 Kill",
	Default = false,
	Callback = function(Value)
_G.SpamAbliKilll = Value
while _G.SpamAbliKilll do
if game.Players.LocalPlayer.Character:FindFirstChild("KS250Complete") then
game:GetService("ReplicatedStorage").TheForce:FireServer()
end
task.wait()
end
	end    
})

if game.Workspace:FindFirstChild("NoChanged") == nil then
local NoChanged = Instance.new("BoolValue", workspace)
NoChanged.Name = "NoChanged"
end
Tab2:AddToggle({
	Name = "All Toggle Anti",
	Default = false,
	Callback = function(Value)
game.Workspace.NoChanged.Value = Value
	end    
})

if _G.AntiVoidChoose == nil then
_G.AntiVoidChoose = "Normal"
end
Tab2:AddDropdown({
	Name = "Anti Void",
	Default = "Normal",
	Options = {"Normal","Bob"},
	Callback = function(Value)
if _G.AntiVoid == true then
AntiVoid:Set(false)
wait(0.05)
_G.AntiVoidChoose = Value
wait(0.03)
AntiVoid:Set(true)
elseif _G.AntiVoid == false then
_G.AntiVoidChoose = Value
end
	end    
})

Tab2:AddSlider({
	Name = "Transparency Anti Void",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "Transparency",
	Callback = function(Value)
_G.Transparency = Value
if _G.AntiVoid == true then
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].Transparency = Value
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["BobWalk1"].Transparency = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
end
end
	end    
})

AntiVoid = Tab2:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(Value)
_G.AntiVoid = Value
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].CanCollide = Value
if Value == false then
game.Workspace["VoidPart"].Transparency = 1
else
game.Workspace["VoidPart"].Transparency = _G.Transparency
end
elseif _G.AntiVoidChoose == "Bob" then
game.Workspace["BobWalk1"].CanCollide = Value
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.CanCollide = Value
end
if Value == true then
game.Workspace["BobWalk1"].Transparency = _G.Transparency
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = _G.Transparency
end
else
game.Workspace["BobWalk1"].Transparency = 1
for i,v in pairs(game.Workspace.BobWalk1:GetChildren()) do
v.Transparency = 1
end
end
end
	end    
})

AntiPortal = Tab2:AddToggle({
	Name = "Anti Portal",
	Default = false,
	Callback = function(Value)
_G.AntiPortal = Value
if _G.AntiPortal == true then
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == true then
v.CanTouch = false
end
end
end
else
for i,v in pairs(workspace.Lobby:GetChildren()) do
if v.Name == "Teleport2" and v.Name == "Teleport3" and v.Name == "Teleport4" and v.Name == "Teleport6" then
if v.CanTouch == false then
v.CanTouch = true
end
end
end
end
	end    
})

AntiAdmin = Tab2:AddToggle({
	Name = "Anti Mod | Admin",
	Default = false,
	Callback = function(Value)
_G.AntiMods = Value
while _G.AntiMods do
for i,v in pairs(game.Players:GetChildren()) do
        if v:GetRankInGroup(9950771) >= 2 then
         _G.AntiKick = false
     game.Players.LocalPlayer:Kick("High Rank Player Detected.".." [ "..v.Name.." ]")
   break
     end
end
task.wait()
end
	end    
})

AntiKick = Tab2:AddToggle({
	Name = "Anti Kick",
	Default = false,
	Callback = function(Value)
	_G.AntiKick = Value
while _G.AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
	end    
})

AntiAfk = Tab2:AddToggle({
	Name = "Anti Afk",
	Default = false,
	Callback = function(Value)
	_G.AntiAfk = Value
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
if _G.AntiAfk then
v:Disable()
else
v:Enable()
end
end
	end    
})

AntiNull = Tab2:AddToggle({
	Name = "Anti Null",
	Default = false,
	Callback = function(Value)
_G.AntiNull = Value
while _G.AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Imp" and v:FindFirstChild("Body") then
                       game.ReplicatedStorage.KSHit:FireServer(v.Body, true)
                 end
            end
task.wait()
end
	end    
})

AntiBrazil = Tab2:AddToggle({
	Name = "Anti Brazil",
	Default = false,
	Callback = function(Value)
_G.AntiBrazil = Value
while _G.AntiBrazil do
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == true then
                     v.CanTouch = false
                 end
             end
task.wait()
end
if _G.AntiBrazil == false then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                  if v.CanTouch == false then
                     v.CanTouch = true
                 end
            end
end
	end    
})

AntiCOD = Tab2:AddToggle({
	Name = "Anti Cube Of Death",
	Default = false,
	Callback = function(Value)
		if Value == true then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = false
end
else
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = true
end
end
	end    
})

AntiDeath = Tab2:AddToggle({
	Name = "Anti Death Barriers",
	Default = false,
	Callback = function(Value)
		if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
	end    
})

AntiRagdoll = Tab2:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Torso") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") then
if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = true
end
until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
end
task.wait()
end
	end    
})

Tab15:AddParagraph("Share Link Zalo","Join Link Zalo Message All People Or Friend | Tham Gia Link Zalo Nhắn Tin Tất Cả Mọi Người Hoặc Bạn Bè")
Tab15:AddParagraph("Message Zalo","You Have To Message Zalo In VietNamese | Bạn Phải Nhắn Tin Zalo Bằng Tiếng Việt")
Tab15:AddParagraph("Deputy Group Zalo","[ Tấn Lộc ( Owner ) ] or [ Giang ] or [ Tiến ] or [ Hoàng Kha ]")
Tab15:AddParagraph("Share Link Slap Battles Group","Join Link Zalo Message All People Or Friend | Tham Gia Link Zalo Nhắn Tin Tất Cả Mọi Người Hoặc Bạn Bè")
Tab15:AddParagraph("Message Slap Battles Group","You Have To Message Zalo In VietNamese Or English | Bạn Phải Nhắn Tin Zalo Bằng Tiếng Việt hoặc Tiếng Anh")
Tab15:AddLabel("Owner Credits Script By Giang")

Tab15:AddButton({
	Name = "Copy Join Zalo",
	Callback = function()
            setclipboard("https://zalo.me/g/qlukiy407")
  	end    
})

Tab15:AddButton({
	Name = "Copy Join Slap Battles Group",
	Callback = function()
            setclipboard("https://discord.com/invite/xdCKBcS6")
  	end    
})

Tab15:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
_G.AutoSetInfo = false
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})

game.Workspace.NoChanged.Changed:Connect(function()
AntiVoid:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiPortal:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiAdmin:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiKick:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiAfk:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiNullSet(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiBrazil:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiCOD:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiDeath:Set(game.Workspace.NoChanged.Value)
end)

game.Workspace.NoChanged.Changed:Connect(function()
AntiRagdoll:Set(game.Workspace.NoChanged.Value)
end)
elseif game.PlaceId == 11828384869 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." / Server Elude"),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

--Tab
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://7733673987",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")
local Fps = Tab:AddSection({Name = "Fps You"})
CanYouFps = Tab:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")

AutoSetInfo = Tab:AddToggle({
	Name = "Auto Set Info",
	Default = false,
	Callback = function(Value)
_G.AutoSetInfo = Value
while _G.AutoSetInfo do
CanYouFps:Set("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "Get Counter + Elude",
	Callback = function()
Time = 121
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.7)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game.Workspace.Ruins.Elude.Glove, 1)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
  	end    
})

Tab:AddButton({
	Name = "Get Chain",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
task.wait(0.5)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
task.wait(4.7)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have 1000 slap.",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Tab:AddButton({
	Name = "TP back to Slap Battles",
	Callback = function()
      		game:GetService("TeleportService"):Teleport(6403373529)
  	end    
})

Tab:AddDropdown({
	Name = "Alchemist Plushie",
	Default = "",
	Options = {"Click", "Teleport"},
	Callback = function(Value)
if Value == "Click" then
if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame
wait(0.5)
fireclickdetector(workspace._ugcQuestObjectEludeHat.ClickDetector)
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame
wait(0.5)
fireclickdetector(workspace._ugcQuestObjectEludeHat.ClickDetector)
end
elseif Value == "Teleport" then
if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame
end
end
	end    
})

Tab:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
elseif game.PlaceId == 13833961666 then
local Window = OrionLib:MakeWindow({IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = false, ConfigFolder = "slap battles"})

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Name = "VoidPart"
VoidPart.Position = Vector3.new(-36, -3, 16)
VoidPart.Size = Vector3.new(2000, 1, 2000)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://7733674079",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")
local InfoServer = Tab:AddSection({Name = "Info"})
CanYouFps = Tab:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CheckSlap = Tab:AddLabel("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
CheckHealth = Tab:AddLabel("Check Health [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
Tab:AddLabel("You're Using Glove [ "..game.Players.LocalPlayer.leaderstats.Glove.Value.." ]")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")

AutoSetInfo = Tab:AddToggle({
	Name = "Auto Set Info",
	Default = false,
	Callback = function(Value)
_G.AutoSetInfo = Value
while _G.AutoSetInfo do
CanYouFps:Set("Can You Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CheckSlap:Set("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
CheckHealth:Set("Check Health [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]")
task.wait()
end
	end    
})

local Combat = Tab:AddSection({Name = "Combat"})

Tab:AddToggle({
	Name = "Damage Boss",
	Default = false,
	Callback = function(Value)
_G.DameBossBob = Value
while _G.DameBossBob do
game.Workspace.bobBoss.DamageEvent:FireServer()
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Auto Click Tycoon",
	Default = false,
	Callback = function(Value)
		_G.AutoTycoon = Value
while _G.AutoTycoon do
for _, v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
task.wait()
end
	end   
})

SpawnRob = Tab:AddToggle({
	Name = "Auto Spawn Rob",
	Default = false,
	Callback = function(Value)
		_G.AutoSpawnRob = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "rob" then
while _G.AutoSpawnRob do
game:GetService("ReplicatedStorage").rob:FireServer()
wait(15)
end
elseif Value == true then
OrionLib:MakeNotification({Name = "Error",Content = "Get ethernal bob boss fight phase 6.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
SpawnRob:Set(false)
end
	end    
})

Tab:AddDropdown({
	Name = "Glove Slap Aura Bob",
	Default = "Killstreak",
	Options = {"Killstreak", "Reaper", "God's Hand", "Tycoon"},
	Callback = function(Value)
GloveSlap = Value
	end    
})

Tab:AddToggle({
	Name = "Slap Aura Bob Clone [ Test... ]",
	Default = false,
	Callback = function(Value)
		_G.SlapBobClone = Value
while _G.SlapBobClone do
if game.Workspace:FindFirstChild("BobClone") then
for _, v in pairs(workspace:GetChildren()) do
if v.Name == "BobClone" then
if GloveSlap == "Killstreak" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Reaper" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "God's Hand" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Tycoon" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
end
task.wait(1.2)
end
	end    
})

Tab:AddButton({
	Name = "Slap Aura Bob",
	Callback = function()
if GloveSlap == "Killstreak" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Reaper" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "God's Hand" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Tycoon" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
  	end    
})

Tab:AddLabel("Script")

Tab:AddButton({
	Name = "Fe fly V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Anti Lag",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Anti-lag.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Inf Yield Delta",
	Callback = function()
      		loadstring(game:HttpGet("https://gist.githubusercontent.com/lxnnydev/c533c374ca4c1dcef4e1e10e33fa4a0c/raw/03e74f184f801dad77d3ebe1e2f18c6ac87ca612/delta___IY.gistfile1.txt.lua",true))()
  	end    
})

Tab:AddButton({
	Name = "Inf Yield",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})

Tab:AddButton({
	Name = "RemoteSpy",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/RemoteSpy-V2.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "TP back to Slap Battles",
	Callback = function()
      		game:GetService("TeleportService"):Teleport(6403373529)
  	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})

Tab2:AddButton({
	Name = "Anti VFX",
	Callback = function()
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener") then
game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener").Parent = game.ReplicatedStorage
else
game.ReplicatedStorage.VFXListener.Parent = game.Players.LocalPlayer.PlayerScripts
end
  	end    
})

Tab2:AddToggle({
	Name = "Anti Ring",
	Default = false,
	Callback = function(Value)
		_G.AntiRing = Value
while _G.AntiRing do
if game.Workspace:FindFirstChild("Ring") then
game.Workspace:FindFirstChild("Ring"):Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Auto Remove Big Meteors",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveBigMeteors = Value
while _G.AutoRemoveBigMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Auto Remove Small Meteors",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveSmallMeteors = Value
while _G.AutoRemoveSmallMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Void Damage",
	Default = false,
	Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
if Value == true then
game.Workspace["VoidPart"].Transparency = 0.5
else
game.Workspace["VoidPart"].Transparency = 1
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
task.wait()
end
	end    
})
elseif game.PlaceId == 9431156611 then
local Window = OrionLib:MakeWindow({IntroText = (GameName),IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local bypass;
     bypass = hookmetamethod(game, "__namecall", function(method, ...) 
         if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.Ban then
             return
         elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.AdminGUI then
             return
         elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS then
             return
          elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS2 then
            return
       end
          return bypass(method, ...)
     end)

if workspace:FindFirstChild("AntiLava") == nil then
local AntiLava = Instance.new("Part", workspace)
AntiLava.Name = "AntiLava"
AntiLava.Position = Vector3.new(-238, -43, 401)
AntiLava.Size = Vector3.new(150,30,150)
AntiLava.Anchored = true
AntiLava.Transparency = 1
AntiLava.CanCollide = false

local AntiAcid = Instance.new("Part", AntiLava)
AntiAcid.Position = Vector3.new(-70, -20, -725)
AntiAcid.Name = "AntiAcid"
AntiAcid.Size = Vector3.new(155, 35, 144)
AntiAcid.Anchored = true
AntiAcid.Transparency = 1
AntiAcid.CanCollide = false
end

local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://7733674079",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Antis",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4335489011",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")

Tab:AddSlider({
	Name = "Reach Slap Aura",
	Min = 10,
	Max = 50,
	Default = 25,
	Color = Color3.fromRGB(140, 185, 255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		ReachAura = Value
	end    
})

Tab:AddSlider({
	Name = "Extend Glove",
	Min = 2,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.GloveExtendReach = Value
	end    
})

Tab:AddDropdown({
	Name = "Extend Option",
	Default = "Meat Stick",
	Options = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
	Callback = function(Value)
GloveExtendOption = Value
	end    
})

Tab:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(Value)
		SlapAura = Value
                while SlapAura do
pcall(function()
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character then
if v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:WaitForChild("inMatch").Value == true and game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if ReachAura >= Magnitude then
game.ReplicatedStorage.Events.Slap:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
                    end
end
end
                end
end)
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Reach Glove",
	Default = false,
	Callback = function(Value)
_G.GloveExtendGet = Value
while _G.GloveExtendGet do
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                          if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
           end
task.wait()
end
if _G.GloveExtendGet == false then
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
end
end
	end    
})

Tab:AddButton({
	Name = "Leave Bus Early [ Votes Kick ]",
	Callback = function()
game:GetService("ReplicatedStorage").Events.BusJumping:FireServer()
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("JumpPrompt")
game.Players.LocalPlayer.PlayerGui.JumpPrompt:Destroy()
	end    
})

Tab:AddToggle({
	Name = "Auto Get All Item",
	Default = false,
	Callback = function(Value)
_G.AutoGetAllItem = Value
while _G.AutoGetAllItem do
if game.Players.LocalPlayer.Character.inMatch.Value == true then
            for i, v in ipairs(game.Workspace.Items:GetChildren()) do
                if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
                    v.Handle.Anchored = false
                    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "Infinity 250 Power",
	Callback = function()
for i = 1, 2 do
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["True Power"])
    game.Players.LocalPlayer.Character["True Power"]:Activate()
    end
	end    
})

Tab:AddButton({
	Name = "Use Item Power",
	Callback = function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Bull's essence" or v.Name == "Potion of Strength" or v.Name == "Boba" or v.Name == "Speed Potion" or v.Name == "Frog Potion" or v.Name == "Strength Brew" or v.Name == "Frog Brew" or v.Name == "Speed Brew" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                v:Activate()
            end
        end
	end    
})

Tab:AddButton({
	Name = "Bomb Bus",
	Callback = function()
if game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true then
for i, v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Bomb" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                v:Activate()
            end
        end
else
OrionLib:MakeNotification({Name = "Error",Content = "You have start bus.",Image = "rbxassetid://7733658504",Time = 5})
end
	end    
})

Tab:AddToggle({
	Name = "Auto Use Item",
	Default = false,
	Callback = function(Value)
_G.AutoUseItem = Value
while _G.AutoUseItem do
for i, v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
                 if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
                    v:Activate()
                end
            end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Glove Esp",
	Default = false,
	Callback = function(Value)
		GloveESP = Value
if GloveESP == false then
for i, v in ipairs(game.Players:GetChildren()) do
                if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp") then
 v.Character.Head.GloveEsp:Destroy()
                end
            end
end
while GloveESP do
for i, v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character.inMatch.Value == true and v.Character.Head:FindFirstChild("GloveEsp") == nil then
GloveEsp = Instance.new("BillboardGui", v.Character.Head)
GloveEsp.Adornee = v.Character.Head
GloveEsp.Name = "GloveEsp"
GloveEsp.Size = UDim2.new(0, 100, 0, 150)
GloveEsp.StudsOffset = Vector3.new(0, 1, 0)
GloveEsp.AlwaysOnTop = true
GloveEsp.StudsOffset = Vector3.new(0, 3, 0)
GloveEspText = Instance.new("TextLabel", GloveEsp)
GloveEspText.BackgroundTransparency = 1
GloveEspText.Size = UDim2.new(0, 100, 0, 100)
GloveEspText.TextSize = 25
GloveEspText.Font = Enum.Font.FredokaOne
GloveEspText.TextColor3 = Color3.new(255, 255, 255)
GloveEspText.TextStrokeTransparency = 0
GloveEspText.Text = "Glove [ "..v.Glove.Value.." ]"
                end
            end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})

Tab:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab2:AddButton({
	Name = "Get Lab Code",
	Callback = function()
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
CodeEsp = first..second..third..fourth
OrionLib:MakeNotification({Name = "You have code [ "..CodeEsp.." ]",Content = "",Image = "rbxassetid://7733919105",Time = 5})
    end
})

Tab2:AddButton({
	Name = "Get Chain",
	Callback = function()
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
     end
})

Tab2:AddButton({
	Name = "Free Emotes [ Type /e emotename ]",
	Callback = function()
Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
game.Players.LocalPlayer.Chatted:connect(function(msg)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
if string.lower(msg) == "/e floss" then
Floss:Play()
elseif string.lower(msg) == "/e groove" then
Groove:Play()
elseif string.lower(msg) == "/e headless" then
Headless:Play()
elseif string.lower(msg) == "/e helicopter" then
Helicopter:Play()
elseif string.lower(msg) == "/e kick" then
Kick:Play()
elseif string.lower(msg) == "/e l" then
L:Play()
elseif string.lower(msg) == "/e laugh" then
Laugh:Play()
elseif string.lower(msg) == "/e parker" then
Parker:Play()
elseif string.lower(msg) == "/e spasm" then
Spasm:Play()
elseif string.lower(msg) == "/e thriller" then
Thriller:Play()
end
EP = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end
end)
game:GetService("RunService").Heartbeat:Connect(function()
if EP ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Floss.IsPlaying or Groove.IsPlaying or Headless.IsPlaying or Helicopter.IsPlaying or Kick.IsPlaying or L.IsPlaying or Laugh.IsPlaying or Parker.IsPlaying or Spasm.IsPlaying or Thriller.IsPlaying then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - EP).Magnitude
if Magnitude > 1 then
Floss:Stop(); Groove:Stop(); Headless:Stop(); Helicopter:Stop(); Kick:Stop(); L:Stop(); Laugh:Stop(); Parker:Stop(); Spasm:Stop(); Thriller:Stop()
end
end
end)
    end    
})

Tab1:AddDropdown({
	Name = "Remove",
	Default = "",
	Options = {"Lava", "Zone Blur", "Acid"},
	Callback = function(Value)
if Value == "Lava" then
for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Lava" then
        v:Destroy()
    end
end
elseif Value == "Zone Blur" then
for _, v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
    if v.Name == "ZoneEffects" then
        v:Destroy()
    end
end
elseif Value == "Acid" then
for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Acid" then
        v:Destroy()
    end
end
end
	end    
})

Tab1:AddDropdown({
	Name = "Safe",
	Default = "",
	Options = {"Lava", "Zone Blur Remove", "Acid"},
	Callback = function(Value)
if Value == "Lava" then
workspace.Map.DragonDepths.Lava.CanTouch = false
elseif Value == "Zone Blur Remove" then
for _, v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
    if v.Name == "ZoneEffects" then
        v:Destroy()
    end
end
elseif Value == "Acid" then
for _,v in ipairs(workspace.Map.AcidAbnormality:GetChildren()) do
			if v.Name == "Acid" and v:IsA("BasePart") and v:FindFirstChildWhichIsA("TouchTransmitter") then
				v.CanTouch = false
			end
		end
end
	end    
})

Tab1:AddToggle({
	Name = "Anti Zone",
	Default = false,
	Callback = function(Value)
		RemoveZone = Value
game.Players.LocalPlayer.Character:WaitForChild("inZone").Changed:Connect(function()
if RemoveZone then
game.Players.LocalPlayer.Character:WaitForChild("inZone").Value = false
end
end)
	end    
})

Tab1:AddToggle({
	Name = "Anti Ice",
	Default = false,
	Callback = function(Value)
_G.AntiIce = Value
while _G.AntiIce do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Icecube" then
                v:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
            end
       end
task.wait()
end
	end    
})

Tab1:AddToggle({
	Name = "Anti Lava & Acid",
	Default = false,
	Callback = function(Value)
game.Workspace["AntiLava"].CanCollide = Value
game.Workspace["AntiLava"]["AntiAcid"].CanCollide = Value
	end    
})

Tab1:AddToggle({
	Name = "Anti Record",
	Default = false,
	Callback = function(Value)
AntiRecord = Value
	end    
})
for i,p in pairs(game.Players:GetChildren()) do
if p ~= game.Players.LocalPlayer then
p.Chatted:Connect(function(message)
Words = message:split(" ")
if AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..p.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end
end
game.Players.PlayerAdded:Connect(function(Player)
Player.Chatted:Connect(function(message)
Words = message:split(" ")
if AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..Player.Name.." ]".." [ "..message.." ]")
end
end
end
end)
end)

Tab1:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll  do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
task.wait()
end
	end    
})

Tab3:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(140, 185, 255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Tab3:AddToggle({
	Name = "Keep Walkspeed",
	Default = false,
	Callback = function(Value)
KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Tab3:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 185, 140),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Tab3:AddToggle({
	Name = "Keep Jumppower",
	Default = false,
	Callback = function(Value)
KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})
elseif game.PlaceId == 14422118326 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()), HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")

Tab:AddToggle({
	Name = "Anti Null",
	Default = false,
	Callback = function(Value)
AntiNull = Value
while AntiNull do
for i,v in pairs(game.Workspace.Mobs:GetChildren()) do
if v.Name == "Imp" and v:FindFirstChild("Body") then
game:GetService("ReplicatedStorage").b:FireServer(v.Body)
end
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Anti Cooldown",
	Default = false,
	Callback = function(Value)
AntiCooldown = Value
while AntiCooldown do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
local localscript = tool:FindFirstChildOfClass("LocalScript")
local localscriptclone = localscript:Clone()
localscriptclone = localscript:Clone()
localscriptclone:Clone()
localscript:Destroy()
localscriptclone.Parent = tool
task.wait()
end
	end    
})

Tab:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab:AddDropdown({
	Name = "Rob Plushie",
	Default = "",
	Options = {"Click", "Teleport"},
	Callback = function(Value)
if Value == "Click" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace._ugcQuestObjectBobPlushie.Handle.CFrame
wait(0.5)
fireclickdetector(workspace._ugcQuestObjectBobPlushie.ClickDetector)
elseif Value == "Teleport" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace._ugcQuestObjectBobPlushie.Handle.CFrame
end
	end    
})

Tab:AddDropdown({
	Name = "Teleport Or Get Badge",
	Default = "",
	Options = {"Null", "Tinkever","Lobby"},
	Callback = function(Value)
if Value == "Null" then
fireclickdetector(workspace.Model.Handle.ClickDetector)
elseif Value == "Tinkever" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4833.31, -214, 800.529)
wait(2)
fireclickdetector(workspace:GetChildren()[13].Handle.ClickDetector)
elseif Value == "Lobby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5466, -1, -585)
end
	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
elseif game.PlaceId == 15507333474 then
local Window = OrionLib:MakeWindow({IntroText = (GameName),IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | "..identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

if workspace:FindFirstChild("AntiVoid") == nil then
local Anti = Instance.new("Part", workspace)
Anti.Name = "AntiVoid"
Anti.Position = Vector3.new(286, 71, -153)
Anti.Size = Vector3.new(2000,1,2000)
Anti.Anchored = true
Anti.Transparency = 1
Anti.CanCollide = false
end

local Tab1 = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://7733674079",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")

Tab1:AddSlider({
	Name = "Reach Slap Aura",
	Min = 0,
	Max = 50,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachSlap = Value
	end    
})

Tab1:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(Value)
SlapAura = Value
          while SlapAura do
pcall(function()
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character.Ragdolled.Value == false then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlap >= Magnitude then
game.ReplicatedStorage.GeneralHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
                    end
end
end
                end
                end)
task.wait(0.7)
end
	end    
})

Tab1:AddSlider({
	Name = "Reach HitBox",
	Min = 2,
	Max = 30,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Reach",
	Callback = function(Value)
		_G.ReachHitbox = Value
	end    
})

Tab1:AddToggle({
	Name = "Hitbox Player",
	Default = false,
	Callback = function(Value)
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
                        v.Character.HumanoidRootPart.Transparency = 0.75
                    end
                end
task.wait()
end
if _G.HitboxPlayer == false then
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        v.Character.HumanoidRootPart.Transparency = 1
                    end
                end
end
	end    
})

Tab7:AddSlider({
	Name = "Extend Glove",
	Min = 2,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Extend",
	Callback = function(Value)
		_G.GloveExtendReach = Value
	end    
})

Tab7:AddDropdown({
	Name = "Extend Option",
	Default = "Meat Stick",
	Options = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
	Callback = function(Value)
GloveExtendOption = Value
	end    
})

Tab7:AddToggle({
	Name = "Reach Glove",
	Default = false,
	Callback = function(Value)
_G.GloveExtendGet = Value
while _G.GloveExtendGet do
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                          if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if GloveExtendOption == "Meat Stick" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2)
                            elseif GloveExtendOption == "Pancake" then
                            v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
                            elseif GloveExtendOption == "Growth" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
                            elseif GloveExtendOption == "North Korea Wall" then
                            v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
                            elseif GloveExtendOption == "Slight Extend" then
                            v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7)
                            end
                            v:FindFirstChild("Glove").Transparency = 0.5
                        end
                    end
                end
           end
task.wait()
end
if _G.GloveExtendGet == false then
if game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil then
for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
else
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
                            v:FindFirstChild("Glove").Transparency = 0
                        end
                    end
                end
end
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Thorn",
	Default = false,
	Callback = function(Value)
game.Workspace["AntiVoid"].CanCollide = Value
if Value == true then
game.Workspace["AntiVoid"].Transparency = 0.5
else
game.Workspace["AntiVoid"].Transparency = 1
end
	end    
})

Tab2:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
if _G.AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and _G.AntiRagdoll then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
	end    
})

Tab2:AddButton({
	Name = "Anti Lag",
	Callback = function()
_G.Settings = {Players = {["Ignore Me"] = true, ["Ignore Others"] = true},
Meshes = {Destroy = false,LowDetail = true},
Images = {Invisible = true,LowDetail = false,Destroy = false,},
Other = {["No Particles"] = true,["No Camera Effects"] = true,["No Explosions"] = true,["No Clothes"] = true,["Low Water Graphics"] = true,["No Shadows"] = true,["Low Rendering"] = true,["Low Quality Parts"] = true}}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
	end    
})

Tab2:AddToggle({
	Name = "Teleport Flag",
	Default = false,
	Callback = function(Value)
WinTeleport = Value
while WinTeleport do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "Part" and v:FindFirstChild("TouchInterest") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-6,0)
end
end
end
task.wait()
end
	end    
})

Tab2:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab2:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab2:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
elseif game.PlaceId == 16034567693 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")
local InfoServer = Tab:AddSection({Name = "Info"})
CanYouFps = Tab:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CanYouPing = Tab:AddLabel("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
TimeServer = Tab:AddLabel("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")

AutoSetInfo = Tab:AddToggle({
	Name = "Auto Set Info",
	Default = false,
	Callback = function(Value)
_G.AutoSetInfo = Value
while _G.AutoSetInfo do
CanYouFps:Set("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CanYouPing:Set("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
TimeServer:Set("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minutes | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
task.wait()
end
	end    
})

local InfoServer = Tab:AddSection({Name = "Misc"})

Tab:AddButton({
	Name = "Teleport Enter Final Room",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
task.wait(4)
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end
OrionLib:MakeNotification({Name = "Error",Content = "Turned on Anti Afk",Image = "rbxassetid://7733658504",Time = 3})
OrionLib:MakeNotification({Name = "Error",Content = "You have to wait the 1 hour, or you have view Info.",Image = "rbxassetid://7733658504",Time = 5})
  	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
elseif game.PlaceId == 17290438723 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")
local InfoServer = Tab:AddSection({Name = "Misc"})

Tab:AddButton({
	Name = "Get Badge",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
wait(1.5)
game:GetService("TeleportService"):Teleport(6403373529)
  	end 
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
elseif game.PlaceId == 18550498098 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

if game.Workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(538, 55, -231)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 11, 2048)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local Safe = Instance.new("Part", VoidPart)
Safe.Position = Vector3.new(595, 120, -330)
Safe.Name = "Safe"
Safe.Size = Vector3.new(2000, 10, 2000)
Safe.Anchored = true
Safe.Transparency = 0.5 
Safe.CanCollide = true
end

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4335489011",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Start Enter + 1 HP",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -68, 823)
wait(2.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["the cube of life"].Part.CFrame
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Big Heart"].CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.ShackLever.Base.CFrame
wait(0.5)
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
  	end 
})

Tab:AddButton({
	Name = "Start Enter",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -68, 823)
wait(2)
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
  	end 
})

Tab:AddToggle({
	Name = "Fight Trask",
	Default = false,
	Callback = function(Value)
_G.BringTrask = Value
while _G.BringTrask do
if game.Workspace:FindFirstChild("TrackGloveMissile") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TrackGloveMissile" then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("TrackGloveMissile") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v)
end
end
end
end
end
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Fight Boss Final",
	Default = false,
	Callback = function(Value)
_G.FightBossFinal = Value
while _G.FightBossFinal do
if game.Workspace:FindFirstChild("GuideNPC") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("GuideNPC") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
end
end
end
end
end
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Fight Replica",
	Default = false,
	Callback = function(Value)
_G.FightReplica = Value
while _G.FightReplica do
if game.Workspace:FindFirstChild("ReplicaNPC") then
for i,v in pairs(game.workspace:GetChildren()) do
if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("ReplicaNPC") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
end
end
end
end
end
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Fight Golem",
	Default = false,
	Callback = function(Value)
_G.FightGolem = Value
while _G.FightGolem do
if game.Workspace:FindFirstChild("golem") and game.Workspace.golem:FindFirstChild("Hitbox") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "golem" and v:FindFirstChild("Hitbox") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("golem") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.Hitbox)
end
end
end
end
end
elseif game.Workspace:FindFirstChild("DungeonGolem") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "DungeonGolem" and v:FindFirstChild("Cube.001") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("DungeonGolem") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v:FindFirstChild("Cube.001"))
end
end
end
end
end
end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "Fight Potato",
	Callback = function()
if game.Workspace:FindFirstChild("PotatoLord") then
for i,v in pairs(game.workspace:GetChildren()) do
if v.Name == "PotatoLord" and v:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("PotatoLord") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
end
end
end
end
end
end
  	end 
})

Tab:AddButton({
	Name = "Lever Start",
	Callback = function()
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "Gate1Lever" and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
  	end 
})

Tab:AddButton({
	Name = "Teleport Safe",
	Callback = function()
if game.Workspace.VoidPart:FindFirstChild("Safe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.VoidPart.Safe.CFrame * CFrame.new(0,25,0)
end
  	end 
})

Tab:AddButton({
	Name = "Teleport Fight Guide",
	Callback = function()
if game.Workspace.VoidPart:FindFirstChild("Safe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.VoidPart.Safe.CFrame * CFrame.new(0,-40,0)
end
  	end 
})

Tab:AddTextbox({
	Name = "Speed Fly",
	Default = "Userspeed",
	TextDisappear = false,
	Callback = function(Value)
_G.SetSpeedFly = Value
	end	  
})

_G.SetSpeedFly = 100
Tab:AddToggle({
	Name = "Start Fly",
	Default = false,
	Callback = function(Value)
	 _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})

Tab1:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(Value)
game.Workspace.VoidPart.CanCollide = Value
if Value == true then
game.Workspace.VoidPart.Transparency = 0.5
else
game.Workspace.VoidPart.Transparency = 1
end
	end    
})

Tab1:AddToggle({
	Name = "Anti Wall",
	Default = false,
	Callback = function(Value)
		_G.AntiWall = Value
while _G.AntiWall do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PusherWall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
	end    
})

Tab2:AddSlider({
	Name = "WalkSpeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Tab2:AddTextbox({
	Name = "WalkSpeed",
	Default = "UserSpeed",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end	  
})

Tab2:AddToggle({
	Name = "Walkspeed Set Auto",
	Default = false,
	Callback = function(Value)
		KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Tab2:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Tab2:AddTextbox({
	Name = "Jumppower",
	Default = "UserPower",
	TextDisappear = false,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end	  
})

Tab2:AddToggle({
	Name = "Jumppower Set Auto",
	Default = false,
	Callback = function(Value)
		KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})
elseif game.PlaceId == 18698003301 then
local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = ("Giang Hub - "..GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Slap Player",
	Default = false,
	Callback = function(Value)
		_G.AutoSlapPlayer = Value
            while _G.AutoSlapPlayer do
                for i, v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer and v.Character then
                    game:GetService("ReplicatedStorage").remotes.Slap:FireServer(v.Character:FindFirstChild("HumanoidRootPart"), Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
                end
            end
task.wait()
            end
	end    
})

Tab:AddToggle({
	Name = "Auto Slap Ball",
	Default = false,
	Callback = function(Value)
		_G.AutoSlapBall = Value
while _G.AutoSlapBall do
if workspace.Map:FindFirstChild("Balls") and workspace.Map.Balls:FindFirstChild("ball") then
game:GetService("ReplicatedStorage").remotes.Slap:FireServer(workspace.Map.Balls.ball, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Auto View Ball",
	Default = false,
	Callback = function(Value)
		_G.AutoViewBall = Value
if _G.AutoViewBall == false then
if game.Players.LocalPlayers.Character:FindFirstChild("Humanoid") and game.Workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayers.Character:FindFirstChild("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayers.Character:FindFirstChild("Humanoid")
end
end
while _G.AutoViewBall do
if workspace.Map:FindFirstChild("Balls") and workspace.Map.Balls:FindFirstChild("ball") and game.Workspace.CurrentCamera.CameraSubject ~= workspace.Map.Balls:FindFirstChild("ball") then
game.Workspace.CurrentCamera.CameraSubject = workspace.Map.Balls:FindFirstChild("ball")
else
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayers.Character:FindFirstChild("Humanoid")
end
task.wait()
end
	end    
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
end
--------------------------------------------------------
if gethui():FindFirstChild("Orion") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") == nil then
local TOGGLE = {}
TOGGLE["Ui"] = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
TOGGLE["DaIcon"] = Instance.new("ImageButton", TOGGLE["Ui"])
TOGGLE["das"] = Instance.new("UICorner", TOGGLE["DaIcon"])

TOGGLE["Ui"].Name = "ToggleUi"
TOGGLE["Ui"].ResetOnSpawn = false

TOGGLE["DaIcon"].Size = UDim2.new(0,45,0,45)
TOGGLE["DaIcon"].Position = UDim2.new(0,0,0,0)
TOGGLE["DaIcon"].Draggable = true
TOGGLE["DaIcon"].Image = "rbxassetid://15315284749"
TOGGLE["DaIcon"].BackgroundColor3 = Color3.fromRGB(255, 186, 117)
TOGGLE["DaIcon"].BorderColor3 = Color3.fromRGB(255, 186, 117)
task.spawn(function()
while true do
	for i = 0, 255, 4 do
		TOGGLE["DaIcon"].BorderColor3 = Color3.fromHSV(i/256, 1, 1)
		TOGGLE["DaIcon"].BackgroundColor3 = Color3.fromHSV(i/256, .5, .8)
		wait()
	end
end
end)
TOGGLE["DaIcon"].MouseButton1Click:Connect(function()
if gethui():FindFirstChild("Orion") then
for i,v in pairs(gethui():GetChildren()) do
if v.Name == "Orion" then
v.Enabled = not v.Enabled
end
end
end
end)
TOGGLE["das"]["CornerRadius"] = UDim.new(0.20000000298023224, 0)
end 
------------------------------------------------------------------------
if gethui():FindFirstChild("Orion") then
for _, i in pairs(gethui():GetChildren()) do
if i.Name == "Orion" then
for i,v in pairs(i:GetDescendants()) do
                    if v.ClassName == "Frame" and v.BackgroundTransparency < 0.3 then
v.BackgroundTransparency = 0.2
                    end
                end
            end
        end
if AutoSetInfo then
AutoSetInfo:Set(true)
end
end
------------------------------------------------------------------------
gloveHits = {
    ["Default"] = game.ReplicatedStorage.b,
    ["Extended"] = game.ReplicatedStorage.b,
    -----------// Glove Hit General Or New Glove \\-----------
    ["T H I C K"] = game.ReplicatedStorage.GeneralHit,
    ["Squid"] = game.ReplicatedStorage.GeneralHit,
    ["Gummy"] = game.ReplicatedStorage.GeneralHit,
    ["RNG"] = game.ReplicatedStorage.GeneralHit,
    ["Tycoon"] = game.ReplicatedStorage.GeneralHit,
    ["Charge"] = game.ReplicatedStorage.GeneralHit,
    ["Baller"] = game.ReplicatedStorage.GeneralHit,
    ["Tableflip"] = game.ReplicatedStorage.GeneralHit,
    ["Booster"] = game.ReplicatedStorage.GeneralHit,
    ["Shield"] = game.ReplicatedStorage.GeneralHit,
    ["Track"] = game.ReplicatedStorage.GeneralHit,
    ["Goofy"] = game.ReplicatedStorage.GeneralHit,
    ["Confusion"] = game.ReplicatedStorage.GeneralHit,
    ["Elude"] = game.ReplicatedStorage.GeneralHit,
    ["Glitch"] = game.ReplicatedStorage.GeneralHit,
    ["Snowball"] = game.ReplicatedStorage.GeneralHit,
    ["fish"] = game.ReplicatedStorage.GeneralHit,
    ["Killerfish"] = game.ReplicatedStorage.GeneralHit,
    ["🗿"] = game.ReplicatedStorage.GeneralHit,
    ["Obby"] = game.ReplicatedStorage.GeneralHit,
    ["Voodoo"] = game.ReplicatedStorage.GeneralHit,
    ["Leash"] = game.ReplicatedStorage.GeneralHit,
    ["Flamarang"] = game.ReplicatedStorage.GeneralHit,
    ["Berserk"] = game.ReplicatedStorage.GeneralHit,
    ["Quake"] = game.ReplicatedStorage.GeneralHit,
    ["Rattlebones"] = game.ReplicatedStorage.GeneralHit,
    ["Chain"] = game.ReplicatedStorage.GeneralHit,
    ["Ping Pong"] = game.ReplicatedStorage.GeneralHit,
    ["Whirlwind"] = game.ReplicatedStorage.GeneralHit,
    ["Slicer"] = game.ReplicatedStorage.GeneralHit,
    ["Counter"] = game.ReplicatedStorage.GeneralHit,
    ["Hammer"] = game.ReplicatedStorage.GeneralHit,
    ["Excavator"] = game.ReplicatedStorage.GeneralHit,
    ["Home Run"] = game.ReplicatedStorage.GeneralHit,
    ["Psycho"] = game.ReplicatedStorage.GeneralHit,
    ["Kraken"] = game.ReplicatedStorage.GeneralHit,
    ["Gravity"] = game.ReplicatedStorage.GeneralHit,
    ["Lure"] = game.ReplicatedStorage.GeneralHit,
    ["Jebaited"] = game.ReplicatedStorage.GeneralHit,
    ["Meteor"] = game.ReplicatedStorage.GeneralHit,
    ["Tinkerer"] = game.ReplicatedStorage.GeneralHit,    
    ["Guardian Angel"] = game.ReplicatedStorage.GeneralHit,
    ["Sun"] = game.ReplicatedStorage.GeneralHit,
    ["Necromancer"] = game.ReplicatedStorage.GeneralHit,
    ["Zombie"] = game.ReplicatedStorage.GeneralHit,
    ["Dual"] = game.ReplicatedStorage.GeneralHit,
    ["Alchemist"] = game.ReplicatedStorage.GeneralHit,
    ["Parry"] = game.ReplicatedStorage.GeneralHit,
    ["Druid"] = game.ReplicatedStorage.GeneralHit,
    ["Oven"] = game.ReplicatedStorage.GeneralHit,
    ["Jester"] = game.ReplicatedStorage.GeneralHit,
    ["Ferryman"] = game.ReplicatedStorage.GeneralHit,
    ["Scythe"] = game.ReplicatedStorage.GeneralHit,
    ["Blackhole"] = game.ReplicatedStorage.GeneralHit,
    ["Santa"] = game.ReplicatedStorage.GeneralHit,
    ["Grapple"] = game.ReplicatedStorage.GeneralHit,
    ["Iceskate"] = game.ReplicatedStorage.GeneralHit,
    ["Pan"] = game.ReplicatedStorage.GeneralHit,
    ["Blasphemy"] = game.ReplicatedStorage.GeneralHit,
    ["Blink"] = game.ReplicatedStorage.GeneralHit,
    ["Ultra Instinct"] = game.ReplicatedStorage.GeneralHit,
    ["Admin"] = game.ReplicatedStorage.GeneralHit,
    ["Prop"] = game.ReplicatedStorage.GeneralHit,
    ["Joust"] = game.ReplicatedStorage.GeneralHit,
    ["Slapstick"] = game.ReplicatedStorage.GeneralHit,
    ["Firework"] = game.ReplicatedStorage.GeneralHit,
    ["Run"] = game.ReplicatedStorage.GeneralHit,
    ["Beatdown"] = game.ReplicatedStorage.GeneralHit,
    ["L.O.L.B.O.M.B"] = game.ReplicatedStorage.GeneralHit,
    ["Glovel"] = game.ReplicatedStorage.GeneralHit,
    ["Chicken"] = game.ReplicatedStorage.GeneralHit,
    ["Divebomb"] = game.ReplicatedStorage.GeneralHit,
    ["Lamp"] = game.ReplicatedStorage.GeneralHit,
    ["Pocket"] = game.ReplicatedStorage.GeneralHit,
    ["BONK"] = game.ReplicatedStorage.GeneralHit,
    ["Knockoff"] = game.ReplicatedStorage.GeneralHit,
    ["Divert"] = game.ReplicatedStorage.GeneralHit,
    ["Frostbite"] = game.ReplicatedStorage.GeneralHit,
    ["Sbeve"] = game.ReplicatedStorage.GeneralHit,
    ["Plank"] = game.ReplicatedStorage.GeneralHit,
    ["Golem"] = game.ReplicatedStorage.GeneralHit,
    ["Spoonful"] = game.ReplicatedStorage.GeneralHit,
    ["Grab"] = game.ReplicatedStorage.GeneralHit,
    ["the schlop"] = game.ReplicatedStorage.GeneralHit,
    ["UFO"] = game.ReplicatedStorage.GeneralHit,
    ["el gato"] = game.ReplicatedStorage.GeneralHit,
    ["Siphon"] = game.ReplicatedStorage.GeneralHit,
    ["Hive"] = game.ReplicatedStorage.GeneralHit,
    ["Wrench"] = game.ReplicatedStorage.GeneralHit,
    ["Hunter"] = game.ReplicatedStorage.GeneralHit,
    ["Relude"] = game.ReplicatedStorage.GeneralHit,
    ["Avatar"] = game.ReplicatedStorage.GeneralHit,
    ["Demolition"] = game.ReplicatedStorage.GeneralHit,
    ["Shotgun"] = game.ReplicatedStorage.GeneralHit,
    ["Beachball"] = game.ReplicatedStorage.GeneralHit,
    -----------// Glove Hit Normal Or New Glove \\-----------
    ["ZZZZZZZ"] = game.ReplicatedStorage.ZZZZZZZHit,
    ["Brick"] = game.ReplicatedStorage.BrickHit,
    ["Snow"] = game.ReplicatedStorage.SnowHit,
    ["Pull"] = game.ReplicatedStorage.PullHit,
    ["Flash"] = game.ReplicatedStorage.FlashHit,
    ["Spring"] = game.ReplicatedStorage.springhit,
    ["Swapper"] = game.ReplicatedStorage.HitSwapper,
    ["Bull"] = game.ReplicatedStorage.BullHit,
    ["Dice"] = game.ReplicatedStorage.DiceHit,
    ["Ghost"] = game.ReplicatedStorage.GhostHit,
    ["Thanos"] = game.ReplicatedStorage.ThanosHit,
    ["Stun"] = game.ReplicatedStorage.HtStun,
    ["Za Hando"] = game.ReplicatedStorage.zhramt,
    ["Fort"] = game.ReplicatedStorage.Fort,
    ["Magnet"] = game.ReplicatedStorage.MagnetHIT,
    ["Pusher"] = game.ReplicatedStorage.PusherHit,
    ["Anchor"] = game.ReplicatedStorage.hitAnchor,
    ["Space"] = game.ReplicatedStorage.HtSpace,
    ["Boomerang"] = game.ReplicatedStorage.BoomerangH,
    ["Speedrun"] = game.ReplicatedStorage.Speedrunhit,
    ["Mail"] = game.ReplicatedStorage.MailHit,
    ["Golden"] = game.ReplicatedStorage.GoldenHit,
    ["MR"] = game.ReplicatedStorage.MisterHit,
    ["Reaper"] = game.ReplicatedStorage.ReaperHit,
    ["Replica"] = game.ReplicatedStorage.ReplicaHit,
    ["Defense"] = game.ReplicatedStorage.DefenseHit,
    ["Killstreak"] = game.ReplicatedStorage.KSHit,
    ["Reverse"] = game.ReplicatedStorage.ReverseHit,
    ["Shukuchi"] = game.ReplicatedStorage.ShukuchiHit,
    ["Duelist"] = game.ReplicatedStorage.DuelistHit,
    ["woah"] = game.ReplicatedStorage.woahHit,
    ["Ice"] = game.ReplicatedStorage.IceHit,
    ["Adios"] = game.ReplicatedStorage.hitAdios,
    ["Blocked"] = game.ReplicatedStorage.BlockedHit,
    ["Engineer"] = game.ReplicatedStorage.engiehit,
    ["Rocky"] = game.ReplicatedStorage.RockyHit,
    ["Conveyor"] = game.ReplicatedStorage.ConvHit,
    ["STOP"] = game.ReplicatedStorage.STOP,
    ["Phantom"] = game.ReplicatedStorage.PhantomHit,
    ["Wormhole"] = game.ReplicatedStorage.WormHit,
    ["Acrobat"] = game.ReplicatedStorage.AcHit,
    ["Plague"] = game.ReplicatedStorage.PlagueHit,
    ["[REDACTED]"] = game.ReplicatedStorage.ReHit,
    ["bus"] = game.ReplicatedStorage.hitbus,
    ["Phase"] = game.ReplicatedStorage.PhaseH,
    ["Warp"] = game.ReplicatedStorage.WarpHt,
    ["Bomb"] = game.ReplicatedStorage.BombHit,
    ["Bubble"] = game.ReplicatedStorage.BubbleHit,
    ["Jet"] = game.ReplicatedStorage.JetHit,
    ["Shard"] = game.ReplicatedStorage.ShardHIT,
    ["potato"] = game.ReplicatedStorage.potatohit,
    ["CULT"] = game.ReplicatedStorage.CULTHit,
    ["bob"] = game.ReplicatedStorage.bobhit,
    ["Buddies"] = game.ReplicatedStorage.buddiesHIT,
    ["Spy"] = game.ReplicatedStorage.SpyHit,
    ["Detonator"] = game.ReplicatedStorage.DetonatorHit,
    ["Rage"] = game.ReplicatedStorage.GRRRR,
    ["Trap"] = game.ReplicatedStorage.traphi,
    ["Orbit"] = game.ReplicatedStorage.Orbihit,
    ["Hybrid"] = game.ReplicatedStorage.HybridCLAP,
    ["Slapple"] = game.ReplicatedStorage.SlappleHit,
    ["Disarm"] = game.ReplicatedStorage.DisarmH,
    ["Dominance"] = game.ReplicatedStorage.DominanceHit,
    ["Link"] = game.ReplicatedStorage.LinkHit,
    ["Rojo"] = game.ReplicatedStorage.RojoHit,
    ["rob"] = game.ReplicatedStorage.robhit,
    ["Rhythm"] = game.ReplicatedStorage.rhythmhit,
    ["Nightmare"] = game.ReplicatedStorage.nightmarehit,
    ["Hitman"] = game.ReplicatedStorage.HitmanHit,
    ["Thor"] = game.ReplicatedStorage.ThorHit,
    ["Retro"] = game.ReplicatedStorage.RetroHit,
    ["Cloud"] = game.ReplicatedStorage.CloudHit,
    ["Null"] = game.ReplicatedStorage.NullHit,
    ["spin"] = game.ReplicatedStorage.spinhit,
    -----------// Glove Hit Stun \\-----------
    ["Kinetic"] = game.ReplicatedStorage.HtStun,
    ["Recall"] = game.ReplicatedStorage.HtStun,
    ["Balloony"] = game.ReplicatedStorage.HtStun,
    ["Sparky"] = game.ReplicatedStorage.HtStun,
    ["Boogie"] = game.ReplicatedStorage.HtStun,
    ["Stun"] = game.ReplicatedStorage.HtStun,
    ["Coil"] = game.ReplicatedStorage.HtStun,
    -----------// Glove Hit Diamond \\-----------
    ["Diamond"] = game.ReplicatedStorage.DiamondHit,
    ["Megarock"] = game.ReplicatedStorage.DiamondHit,
    -----------// Glove Hit Celestial \\-----------
    ["Moon"] = game.ReplicatedStorage.CelestialHit,
    ["Jupiter"] = game.ReplicatedStorage.CelestialHit,
    -----------// Glove Hard \\-----------
    ["Mitten"] = game.ReplicatedStorage.MittenHit,
    ["Hallow Jack"] = game.ReplicatedStorage.HallowHIT,
    -----------// Glove Hit Power \\-----------
    ["OVERKILL"] = game.ReplicatedStorage.Overkillhit,
    ["The Flex"] = game.ReplicatedStorage.FlexHit,
    ["Custom"] = game.ReplicatedStorage.CustomHit,
    ["God's Hand"] = game.ReplicatedStorage.Godshand,
    ["Error"] = game.ReplicatedStorage.Errorhit
}