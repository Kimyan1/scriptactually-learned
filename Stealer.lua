-- Place this LocalScript in StarterPlayerScripts or StarterGui

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "FakeTradeGui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 1000

-- Main container covering 90% of the screen
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.9, 0, 0.9, 0)        -- 90% width & height
frame.Position = UDim2.new(0.05, 0, 0.05, 0)  -- centered with 5% margins
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0.05, 0)

-- Accept Trade Button
local acceptBtn = Instance.new("TextButton")
acceptBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
acceptBtn.Position = UDim2.new(0.1, 0, 0.8, 0)
acceptBtn.Text = "Accept Trade"
acceptBtn.Font = Enum.Font.SourceSansBold
acceptBtn.TextScaled = true
acceptBtn.TextColor3 = Color3.new(1, 1, 1)
acceptBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
acceptBtn.Parent = frame

Instance.new("UICorner", acceptBtn).CornerRadius = UDim.new(0.1, 0)

-- Freeze Trade Button
local freezeBtn = Instance.new("TextButton")
freezeBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
freezeBtn.Position = UDim2.new(0.6, 0, 0.8, 0)
freezeBtn.Text = "Freeze Trade"
freezeBtn.Font = Enum.Font.SourceSansBold
freezeBtn.TextScaled = true
freezeBtn.TextColor3 = Color3.new(1, 1, 1)
freezeBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
freezeBtn.Parent = frame

Instance.new("UICorner", freezeBtn).CornerRadius = UDim.new(0.1, 0)

-- Fake button behavior
acceptBtn.MouseButton1Click:Connect(function()
    acceptBtn.Text = "Accepted!"
    acceptBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    wait(1)
    acceptBtn.Text = "Accept Trade"
    acceptBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
end)

freezeBtn.MouseButton1Click:Connect(function()
    freezeBtn.Text = "Frozen!"
    freezeBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    wait(1)
    freezeBtn.Text = "Freeze Trade"
    freezeBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
end)
