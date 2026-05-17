local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "FakeBan"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Звуки
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://9129991821"
sound.Volume = 10
sound.Parent = workspace

-- Главный фон
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 900, 0, 550)
frame.Position = UDim2.new(0.5, -450, 0.5, -275)
frame.BackgroundColor3 = Color3.fromRGB(119, 255, 47)
frame.BorderSizePixel = 15
frame.BorderColor3 = Color3.fromRGB(59, 255, 0)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,20)
corner.Parent = frame

-- Текст
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,100)
title.Position = UDim2.new(0,0,0,30)
title.BackgroundTransparency = 1
title.Text = "Ты был пойман за читы"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.Parent = frame

local text1 = Instance.new("TextLabel")
text1.Size = UDim2.new(1,0,0,70)
text1.Position = UDim2.new(0,0,0,170)
text1.BackgroundTransparency = 1
text1.Text = "ты будешь"
text1.TextColor3 = Color3.new(1,1,1)
text1.Font = Enum.Font.GothamBold
text1.TextScaled = true
text1.Parent = frame

local text2 = Instance.new("TextLabel")
text2.Size = UDim2.new(1,0,0,70)
text2.Position = UDim2.new(0,0,0,240)
text2.BackgroundTransparency = 1
text2.Text = "забанен в рб через"
text2.TextColor3 = Color3.new(1,1,1)
text2.Font = Enum.Font.GothamBold
text2.TextScaled = true
text2.Parent = frame

-- Таймер
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(1,0,0,140)
timerLabel.Position = UDim2.new(0,0,0,300)
timerLabel.BackgroundTransparency = 1
timerLabel.Text = "10"
timerLabel.TextColor3 = Color3.new(1,1,1)
timerLabel.Font = Enum.Font.GothamBlack
timerLabel.TextScaled = true
timerLabel.Parent = frame

-- Создатель
local creator = Instance.new("TextLabel")
creator.Size = UDim2.new(1,0,0,60)
creator.Position = UDim2.new(0,0,1,-70)
creator.BackgroundTransparency = 1
creator.Text = "создатель @ArceusXUser"
creator.TextColor3 = Color3.new(1,1,1)
creator.Font = Enum.Font.GothamBold
creator.TextScaled = true
creator.Parent = frame

sound:Play()

-- Таймер
for i = 10,1,-1 do
	timerLabel.Text = tostring(i)
	wait(1)
end

frame:Destroy()

-- Скример
local screamer = Instance.new("ImageLabel")
screamer.Size = UDim2.new(1,0,1,0)
screamer.Position = UDim2.new(0,0,0,0)
screamer.BackgroundColor3 = Color3.new(0,0,0)
screamer.Image = "rbxassetid://118764786"
screamer.Parent = gui

local screamSound = Instance.new("Sound")
screamSound.SoundId = "rbxassetid://138186576"
screamSound.Volume = 10
screamSound.Parent = workspace
screamSound:Play()

-- Тряска
spawn(function()
	while screamer.Parent do
		screamer.Position = UDim2.new(0, math.random(-20,20), 0, math.random(-20,20))
		wait(0.03)
	end
end)
