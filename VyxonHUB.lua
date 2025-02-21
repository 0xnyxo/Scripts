--[[
  __     __                       _   _       _                        
  \ \   / /   ___  _____  _ __   | | | |_   _| |__                     
   \ \ / / | | \ \/ / _ \| '_ \  | |_| | | | | '_ \                    
    \ V /| |_| |>  < (_) | | | | |  _  | |_| | |_) |                   
   __\_/_ \__, /_/\_\___/|_| |_| |_| |_|\__,_|_.__/              _     
  |  \/  ||___/ ___  ___| | ___  | |    ___  __ _  ___ _ __   __| |___ 
  | |\/| | | | / __|/ __| |/ _ \ | |   / _ \/ _` |/ _ \ '_ \ / _` / __|
  | |  | | |_| \__ \ (__| |  __/ | |__|  __/ (_| |  __/ | | | (_| \__ \
  |_|  |_|\__,_|___/\___|_|\___| |_____\___|\__, |\___|_| |_|\__,_|___/
                                            |___/                      
    Created by Vyxon (aka @0xnyxo on Discord)
    Made with Love <3
]]
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:FindFirstChild("PlayerGui")

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 120) -- Compact Size
frame.Position = UDim2.new(0.5, -160, 0.5, -60) -- Centered Position
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Dark theme for the frame
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = frame

-- Title Label (Vyxon Hub)
local title = Instance.new("TextLabel")
title.Text = "Vyxon Hub"
title.Font = Enum.Font.FredokaOne -- Using Fredoka One Font
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Parent = frame

-- Button Holder (Aligns Buttons Side-by-Side)
local buttonHolder = Instance.new("Frame")
buttonHolder.Size = UDim2.new(1, 0, 0, 40) -- Adjusted height for buttons
buttonHolder.Position = UDim2.new(0, 0, 0.55, 0) -- Positioned lower in the frame
buttonHolder.BackgroundTransparency = 1
buttonHolder.Parent = frame

-- UIListLayout for Side-by-Side Buttons
local layout = Instance.new("UIListLayout")
layout.FillDirection = Enum.FillDirection.Horizontal
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.VerticalAlignment = Enum.VerticalAlignment.Center
layout.Padding = UDim.new(0, 10) -- Spacing between buttons
layout.Parent = buttonHolder

-- Gradient Function
local function createGradient(button, color1, color2)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(color1, color2)
    gradient.Parent = button
end

-- "Join Discord" Button (Cyan)
local discordButton = Instance.new("TextButton")
discordButton.Size = UDim2.new(0.45, 0, 1, 0)
discordButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255) -- Base Color
discordButton.Text = "Join Discord"
discordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
discordButton.Font = Enum.Font.FredokaOne -- Using Fredoka One Font
discordButton.TextSize = 20 -- Text Size
discordButton.Parent = buttonHolder

local discordCorner = Instance.new("UICorner")
discordCorner.CornerRadius = UDim.new(0, 10)
discordCorner.Parent = discordButton

createGradient(discordButton, Color3.fromRGB(0, 200, 255), Color3.fromRGB(0, 150, 255)) -- Gradient Effect

discordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/YOUR_DISCORD_INVITE") -- Replace with actual link
end)

-- "Close" Button (Red)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.45, 0, 1, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50) -- Base Color
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.FredokaOne -- Using Fredoka One Font
closeButton.TextSize = 20 -- Text Size
closeButton.Parent = buttonHolder

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

createGradient(closeButton, Color3.fromRGB(255, 70, 70), Color3.fromRGB(200, 30, 30)) -- Gradient Effect

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy() -- Close the GUI
end)

-- Slide Animation (Left to Center)
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- Faster, Smoother
local slideIn = tweenService:Create(frame, tweenInfo, {Position = UDim2.new(0.5, -160, 0.5, -60)})

slideIn:Play() -- Show UI
