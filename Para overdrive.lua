-- Ajustes iniciales con emojis 🔪
local welcome_text = "🔪 Hola, gracias por usar Overdrive ;) ✅ 🔪"
local title = "🔪 Cargado script 🔪"          
local loading_base = "Por favor espera 🔪" -- base sin puntos
local welcome_time = 3 -- segundos que dura el mensaje de bienvenida

-- Crear ScreenGui principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PersistentLoadingScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999999999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)

-- Fondo
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(175, 238, 238)
Frame.BackgroundTransparency = 0.2
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)

-- Contenedor central (más grande)
local Frame_2 = Instance.new("Frame")
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- negro de fondo
Frame_2.BackgroundTransparency = 0.3
Frame_2.Position = UDim2.new(0.25, 0, 0.3, 0)
Frame_2.Size = UDim2.new(0.5, 0, 0.4, 0)

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame_2
UICorner.CornerRadius = UDim.new(0.1, 0)

-- Título (primero muestra bienvenida)
local name = Instance.new("TextLabel")
name.Parent = Frame_2
name.BackgroundTransparency = 1
name.Position = UDim2.new(0, 0, 0.05, 0)
name.Size = UDim2.new(1, 0, 0.25, 0)
name.Font = Enum.Font.FredokaOne
name.Text = welcome_text -- 👈 Primero muestra bienvenida
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = true
name.TextWrapped = true

-- Subtítulo
local loadingtext = Instance.new("TextLabel")
loadingtext.Parent = Frame_2
loadingtext.BackgroundTransparency = 1
loadingtext.Position = UDim2.new(0.1, 0, 0.35, 0)
loadingtext.Size = UDim2.new(0.8, 0, 0.15, 0)
loadingtext.Font = Enum.Font.FredokaOne
loadingtext.Text = "" -- vacío al inicio
loadingtext.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingtext.TextScaled = true
loadingtext.TextWrapped = true

-- 🔹 Animación de puntitos en el subtítulo
task.spawn(function()
    local dots = {"", ".", "..", "..."}
    local i = 1
    while true do
        if loadingtext.Text ~= "" then
            loadingtext.Text = loading_base .. dots[i]
            i = (i % #dots) + 1
        end
        task.wait(0.5)
    end
end)

-- 🔹 Después de welcome_time segundos cambiar texto de bienvenida a "Cargado script"
task.delay(welcome_time, function()
    name.Text = title
    loadingtext.Text = loading_base -- activa la animación de puntitos
end)

-- 🚫 La pantalla nunca se cierra
