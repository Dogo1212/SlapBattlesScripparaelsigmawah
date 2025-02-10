local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("Hunter | Slap Battles Script")

---------------------- Sections -----------------------------------------------
local Info = PhantomForcesWindow:NewSection("Info")
local Script = PhantomForcesWindow:NewSection("Script")
local Anti = PhantomForcesWindow:NewSection("Anti")
local Badge = PhantomForcesWindow:NewSection("Badges")
local Local = PhantomForcesWindow:NewSection("Local")
local Misc = PhantomForcesWindow:NewSection("Misc") 
local GlovesOptional = PhantomForcesWindow:NewSection("Gloves Optional")
local Troller = PhantomForcesWindow:NewSection("Troller")
local Credits = PhantomForcesWindow:NewSection("Credit")

---------------------- Variables ---------------------------------------------
local StartTime = tick()  -- Guarda el tiempo en el que el jugador entra al servidor

---------------------- Info Section -----------------------------------------------
Info:CreateButton("Cuanta Gente hay", function()
    local Players = game:GetService("Players")
    
    local function showNotification()
        local playerCount = #Players:GetPlayers()
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Jugadores en el servidor",
            Text = "Hay " .. playerCount .. " jugadores en este servidor.",
            Duration = 5,
            Button1 = "OK",
            Color = Color3.fromRGB(0, 0, 0),
        })
    end

    showNotification()
end)

Info:CreateButton("Cuanto Tiempo Llevas En El Server", function()
    local TimePlayed = math.floor(tick() - StartTime)
    local Hours = math.floor(TimePlayed / 3600)
    local Minutes = math.floor((TimePlayed % 3600) / 60)
    local Seconds = TimePlayed % 60

    game.StarterGui:SetCore("SendNotification", {
        Title = "Tiempo Jugado",
        Text = string.format("Llevas %02d horas, %02d minutos y %02d segundos en el servidor.", Hours, Minutes, Seconds),
        Duration = 5,
        Button1 = "OK",
        Color = Color3.fromRGB(0, 255, 0),
    })
end)

Info:CreateButton("Slap Checker", function()
    local player = game.Players.LocalPlayer
    local slapCount = player.leaderstats and player.leaderstats:FindFirstChild("Slaps")

    if slapCount then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Tus Slaps",
            Text = "Tienes " .. slapCount.Value .. " Slaps.",
            Duration = 5,
            Button1 = "OK",
            Color = Color3.fromRGB(0, 255, 255),
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "No se encontraron los Slaps en tu leaderstats.",
            Duration = 5,
            Button1 = "OK",
            Color = Color3.fromRGB(255, 0, 0),
        })
    end
end)

Info:CreateButton("View Cordenates", function()
    local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

local function updateCoordinates()
    local position = playerCharacter.HumanoidRootPart.Position
    local x = position.X
    local y = position.Y
    local z = position.Z
    local coordsText = string.format("Coordenadas: X = %.2f, Y = %.2f, Z = %.2f", x, y, z)

    -- Crear un 'TextLabel' para mostrar las coordenadas
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player.PlayerGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0, 200, 0, 50)
    textLabel.Position = UDim2.new(0, 10, 0, 10)
    textLabel.Text = coordsText
    textLabel.TextSize = 20
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Parent = screenGui

    -- Actualizar las coordenadas cada segundo
    while true do
        wait(1)
        local position = playerCharacter.HumanoidRootPart.Position
        x, y, z = position.X, position.Y, position.Z
        textLabel.Text = string.format("Coordenadas: X = %.2f, Y = %.2f, Z = %.2f", x, y, z)
    end
end

updateCoordinates()
end)
---------------------- Badges Section ----------------------------------------------
Badge:CreateButton("Instructions", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Instrucciones de BOBFarm",
        Text = "Para usar BOBFarm necesitas un God's Hand que pare el tiempo. Luego, haz clic en el botón BOBFarm.",
        Duration = 10,
        Button1 = "OK",
        Color = Color3.fromRGB(255, 223, 0),
    })
end)

Badge:CreateButton("BOBFarm", function()
    loadstring(game:HttpGet"https://pastefy.app/7qbY4h0Z/raw")()
end)

Badge:CreateButton("Instructions The other section", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Instrucciones de BOBFarm Form 2",
        Text = "Nesesitas la ayuda de tu amigo con Gods Hand para que pare el tiempo",
        Duration = 10,
        Button1 = "OK",
        Color = Color3.fromRGB(255, 223, 0),
    })
end)

Badge:CreateButton("BOBFarm Form 2", function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Nice!",
        Text = "Congratulations, you got Bob ;)",
        Duration = 1000,
        Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",
        Button1 = "OK"
    })
    fireclickdetector(game:GetService("Workspace").Lobby.bob.ClickDetector)
    return
end

fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
task.wait(1)

for i = 1, 75000 do
    game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
end
end)

---------------------- Misc Section ----------------------------------------------
Misc:CreateButton("Slap Farm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/SFG_Serverhop/main/main.lua"))()
end)

Misc:CreateButton("Instrucciones de Slap Farm", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Instrucciones de Slap Farm",
        Text = "Para usarlo necesitas tener el guante El Gato.",
        Duration = 10,
        Button1 = "OK",
        Color = Color3.fromRGB(255, 223, 0),
    })
end)

Misc:CreateButton("Slap Farm Metod 2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/slapfarmgui/main/main.lua"))()
end)

Misc:CreateButton("ADMIN ZONE", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Dogo1212/TeleportTheAdminZone/refs/heads/main/AdminZone.lua?token=GHSAT0AAAAAAC3AT5NJ236CWUFFTOYRVZTMZ5JDK7Q"))()
end)
---------------------- Script Section ----------------------------------------
Script:CreateButton("Infinite Yield FE v6.2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Script:CreateButton("Virt Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dogo1212/TeleportTheAdminZone/refs/heads/main/AdminZone.lua?token=GHSAT0AAAAAAC3AT5NJBQB25BHOJOO4UNWSZ5JDHOA"))()
end)

Script:CreateButton("Slap Gui", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
end)

Script:CreateButton("Brick Mastery", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/har3nz/gloveMasteries/refs/heads/main/gloveMasteries.lua"))()
end)

Script:CreateButton("Mastery", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/MasteryFarmGui/refs/heads/main/main.lua'))()
end)

Script:CreateButton("Other Hub", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Dusty1234567890/TestMain/main/SLAPBATTLESGUI5")))()
end)

Script:CreateButton("Gaster Hubs", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Dusty1234567890/Loader/main/GHUBV0.2.")))()
end)

Script:CreateButton("OP HUB", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Latundra/GFET/main/script")))()
end)
