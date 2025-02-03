
local Loader = {
    Screen = {
        Enabled = true,
    },
}

Loader.Screen.Enabled = true

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0
Frame.Parent = ScreenGui

local BlurEffect = Instance.new("BlurEffect")
BlurEffect.Size = 24
BlurEffect.Parent = game:GetService("Lighting")

local TextLabel = Instance.new("TextLabel")
TextLabel.Text = "#1 Universal Script"
TextLabel.Size = UDim2.new(0, 400, 0, 100)
TextLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Parent = Frame

local TextStroke = Instance.new("UIStroke")
TextStroke.Thickness = 2
TextStroke.Color = Color3.fromRGB(0, 0, 0)
TextStroke.Parent = TextLabel

local fadeSpeed = 0.01
for i = 0, 1, fadeSpeed do
    Frame.BackgroundTransparency = i
    TextLabel.TextTransparency = i
    TextLabel.TextStrokeTransparency = i
    BlurEffect.Size = BlurEffect.Size - (24 * fadeSpeed)
    wait(0.05)
end

BlurEffect:Destroy()
ScreenGui:Destroy()

Loader.Screen.Enabled = false

if Loader.Screen.Enabled == false then
    local gameId = game.GameId

    local GameIds = {
        [3150475059] = "https://gist.githubusercontent.com/ByteDev0/0968bd469ef768dbfb68ab5462e8a096/raw/bcd10c5cd12a0c51c731792797f0bed509af1090/FootballFusion2.lua",
        [6325068386] = "https://gist.githubusercontent.com/ByteDev0/9c2785f927f00b21add41169850f8c30/raw/0851075d72d8ee7b0eec66d035197223bcbe04a1/BlueLockRivals.lua",
        [3808223175] = "https://gist.githubusercontent.com/ByteDev0/9dcc5d70f9727b34977c299330f3e571/raw/7a0a54ee1b63c66db9180f2bebf20af035971c4c/JujutsuInfinite.lua",
    }

    local Run = GameIds[gameId]

    if not Run then
        game:GetService("Players").LocalPlayer:Kick("This game is not valid the support games are in the discord server.")
    end

    loadstring(game:HttpGet(Run))() -- // finally done with 3 scripts in a simple day :sob:
end
