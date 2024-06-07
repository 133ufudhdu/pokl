local players = game:GetService("Players")
local vu = game:GetService("VirtualUser")


-- 变量
local lp = players.LocalPlayer
local carCollection = workspace.CarCollection
local guiScript = getsenv(lp.PlayerGui:WaitForChild("GUIs"))
local openFunc = guiScript["OpenDealership"]
local spawnFunc = guiScript["SpawnButton"]
local doBreak = false


-- 函数
local function getCurrentCar()
    local car = carCollection:FindFirstChild(lp.Name)
    if not car then return nil end

    local model = car:FindFirstChild("Car")
    if not model then return nil end

    local isNotBroken =
        model:FindFirstChild("Wheels"):FindFirstChildOfClass("Part") and
        model:FindFirstChild("Body"):FindFirstChild("Engine"):FindFirstChildOfClass("MeshPart")

    return isNotBroken and model or nil
end

local function getCharacter()
    return lp.Character or lp.CHaracterAdded:Wait()
end

local function canSpawn()
    return lp.SpawnTimer.Value <= 0
end

local function spawnBestCar()
    openFunc()
    spawnFunc(true, Enum.UserInputState.Begin)
end

local function destroyCar()
    local hum = getCharacter():FindFirstChildOfClass("Humanoid")
    local hrp = getCharacter():FindFirstChild("HumanoidRootPart")

    if not hum or not hrp then return end

    local car = getCurrentCar()

    repeat task.wait() until car.PrimaryPart ~= nil

    -- 汽车去死吧！！！
    repeat task.wait()
        car = getCurrentCar()
        if not car then return end

        task.wait(.1)

        pcall(function()
            if not car.PrimaryPart then return end
            car.PrimaryPart.Velocity = Vector3.new(0, 300, 0)
            car.PrimaryPart.CFrame *= CFrame.Angles(180, 0, 0)
        end)

        task.wait(.1)

        pcall(function()
            if not car.PrimaryPart then return end
            car.PrimaryPart.Velocity = Vector3.new(0, -400, 0)
            car.PrimaryPart.CFrame *= CFrame.Angles(180, 0, 0)
        end)

    until not doBreak
end

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

local win = lib:Window("汽车破坏模拟器",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E) -- your own keybind 

local tab = win:Tab("主要")

local AutofarmEnabled = false

tab:Toggle("自动刷钱", false, function(bool)
    if bool == true then
            AutofarmEnabled = true

            while AutofarmEnabled do
                wait(0.5)
                if canSpawn() then
                    doBreak = true
                    task.delay(10, function()
                        doBreak = false
                    end)
                    pcall(function()
                        spawnBestCar()
                        destroyCar()
                    end)
                end
            end
        else
            AutofarmEnabled = false
        end
end)

tab:Toggle("自动逃脱", false, function(state)
    heleicopterspawn = State;
end)

tab:Toggle("反挂机", false, function(bool)
    if bool == true then
                
                for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
                v:Disable()
            end
        else
                
                for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
                v:Enable()
            end
        end
end)

tab:Button("生成车辆", function()
spawnBestCar()
end)

tab:Button("摧毁车辆", function()
        doBreak = true
        task.delay(10, function() doBreak = false end)
        pcall(function()
            destroyCar()
        end)
    end)
    
workspace.ChildAdded:Connect(function(newpart)
wait(1)
if newpart.Name == "Helicopter" then
wait(0.5)
if heleicopterspawn then
game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Helicopter.Start.CFrame
end
end
end
)
