local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 

 wait(1) 
 Notification:Notify( 
     {Title = "小达", Description = "正在加载"}, 
     {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
 ) 
 wait(2) 
 Notification:Notify( 
     {Title = "小达", Description = "准备好了！"}, 
     {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
 )
 wait(0.2)
 Notification:Notify( 
     {Title = "小达", Description = "支持作者小达"}, 
     {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
 )
 wait(0.4)
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.858712733, 0, 0.0237762257, 0)
Frame.Size = UDim2.new(0.129513338, 0, 0.227972031, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "关闭"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
    if TextButton.Text == "关闭" then
        TextButton.Text = "打开"
    else
        TextButton.Text = "关闭"
    end
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E" , false , game)
end) -- replace "E" with your keybind

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 30

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/133ufudhdu/YuanBanVapeLib/main/k"))()

local win = lib:Window("超级进化",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E) -- your own keybind 

local tab = win:Tab("主要功能")

tab:Toggle("自动耐力", false, function(value)
    AutoEndurance = value
end)

tab:Toggle("自动力量", false, function(value)
    AutoEnergy = value
end)

tab:Toggle("自动敏捷性", false, function(value)
    AutoAgility = value
end)

tab:Toggle("自动杀暴徒", false, function(value)
    AutoKillNPC = value
end)

tab:Toggle("自动收集硬币", false, function(value)
    CollectCoin = value
end)

-- 主要函数

game:GetService("RunService").Stepped:connect(
 function()
        if AutoKillNPC == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            for i, v in pairs(game:GetService("Workspace").Enemies["1"]:GetChildren()) do
                for i, v1 in pairs(v:GetChildren()) do
                    if v1.Name == "HumanoidRootPart" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(v1.CFrame.Position + Vector3.new(0, -5, 0))
                        game:service "VirtualUser":ClickButton1(Vector2.new())
                    end
                end
            end
            local X, Y, Z = 8, 0, 0
            local part = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
            part.CFrame = part.CFrame * CFrame.Angles(X, Y, Z)
            game:service "VirtualUser":ClickButton1(Vector2.new())
            can = true
        else
            if can == true then
                can = false
                local X, Y, Z = -8, 0, 0
                local part = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
                part.CFrame = part.CFrame * CFrame.Angles(X, Y, Z)
            end
        end
        if CollectCoin == true then
            for i, v in pairs(game:GetService("Workspace").DropSpawns.Earth:GetChildren()) do
                for i, v1 in pairs(v:GetChildren()) do
                    for i, v2 in pairs(v:GetChildren()) do
                        if v2.Name == "Coin" or v2.Name == "CoinTreasure" then
                            v2.CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
                        end
                    end
                end
            end
        end
        if AutoFullTrain == true then
            local tool =
                game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                tool:Activate()
            end
        end

    end
)

while wait() do
        if AutoStrenght == true then
local tool =
                game.Players.LocalPlayer.Backpack:FindFirstChild("Basic Fists") or
                game.Players.LocalPlayer.Character:FindFirstChild("Basic Fists")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                wait(.5)
                game:service "VirtualUser":ClickButton1(Vector2.new())
        end
        if AutoEndurance == true then
                local tool =
                game.Players.LocalPlayer.Backpack:FindFirstChild("Basic Workout") or
                game.Players.LocalPlayer.Character:FindFirstChild("Basic Workout")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                wait(.5)
                game:service "VirtualUser":ClickButton1(Vector2.new())
        end

        if AutoEnergy == true then
local tool =
                game.Players.LocalPlayer.Backpack:FindFirstChild("Basic Ki") or
                game.Players.LocalPlayer.Character:FindFirstChild("Basic Ki")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                wait(.5)
        end
        
                if AutoAgility == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            250.815552,
            30.1924229,
            183.935043,
            0.0267461445,
            5.98590049e-08,
            0.999642253,
            -2.3481542e-08,
            1,
            -5.92521623e-08,
            -0.999642253,
            -2.18883756e-08,
            0.0267461445
        )

        game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid:MoveTo(
            game:GetService("Workspace").NPCs["Quest Master"].NPC.HumanoidRootPart.Position
        )
        end
end
