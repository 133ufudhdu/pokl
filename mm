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

local win = lib:Window("急速奔驰",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E) -- your own keybind 

local tab = win:Tab("主要功能")

tab:Toggle("自动跳过1", false, function(bool)
    getgenv().AutoFarmMainFast = bool
    
    while getgenv().AutoFarmMainFast do     

        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        
        
        local args = {
            [1] = 0.1,
            [2] = "Level 1",
            [3] = "Normal",
            [4] = false
        }
        
        game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
        wait(0.07)
        local args = {
            [1] = 0
        }
        
        game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
        
        wait(0.1)
        
        local args = {
            [1] = 0
        }
        
        game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
        
        wait(0.1)
        local args = {
            [1] = 0
        }
        
        game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
        wait(1)
        
        end
end)

tab:Toggle("自动跳过2", false, function(bool)
 getgenv().AutoFarmMainSlow = bool
 
    while getgenv().AutoFarmMainSlow do     

local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)
local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)
local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)

local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)

local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)



local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)


local args = {
    [1] = 0.1,
    [2] = "Level 1",
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
wait(0.25)
local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

wait(0.3)

local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

wait(0.3)
local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
wait(2.5)

end
end)

tab:Button("获取速度线圈", function()
    local copy = game:GetService("ReplicatedStorage")["Speed Coil"]:Clone()
      copy.Parent = game:GetService("Players").LocalPlayer.Backpack
end)
