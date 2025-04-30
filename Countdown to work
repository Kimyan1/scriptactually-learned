-- LocalScript in StarterPlayerScripts

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "CountdownGui"
gui.ResetOnSpawn = false

-- Text Box
local textBox = Instance.new("TextLabel")
textBox.Size = UDim2.new(0, 300, 0, 100)
textBox.Position = UDim2.new(0.5, -150, 0.4, 0)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.SourceSansBold
textBox.TextScaled = true
textBox.Text = "Wait 60 seconds for the script to work"
textBox.Parent = gui

-- Styling the box
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = textBox

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.new(1, 1, 1)
stroke.Thickness = 2
stroke.Parent = textBox

-- Countdown circle (rotating frame)
local circle = Instance.new("ImageLabel")
circle.Size = UDim2.new(0, 100, 0, 100)
circle.Position = UDim2.new(0.5, -50, 0.25, 0)
circle.BackgroundTransparency = 1
circle.Image = "rbxassetid://4711973295" -- Circular ring image
circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
circle.Parent = gui

-- Countdown logic
local totalTime = 60
local countdown = totalTime
while countdown > 0 do
    textBox.Text = "Wait " .. countdown .. " seconds for the script to work"
    circle.Rotation = (totalTime - countdown) * (360 / totalTime)
    wait(1)
    countdown -= 1
end

-- Done
textBox.Text = "Script is now working!"
circle:Destroy()

-- Example "script action"
print("Countdown done, executing script.")
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
humanoid.WalkSpeed = 32 -- double speed
