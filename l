-- Usually on pastebin
local notiflib = {}
function notiflib:NewNotif(message, times)
    times = times or 10

    local TextMessage = Instance.new("ScreenGui")
    local loadinggui = Instance.new("Frame")
    local Guitop = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
	local TweenService = game:GetService("TweenService")


    TextMessage.Name = "TextMessage"
    TextMessage.Parent = game.CoreGui
    TextMessage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    loadinggui.Name = "loading gui"
    loadinggui.Parent = TextMessage
    loadinggui.AnchorPoint = Vector2.new(0.5, 0.5)
    loadinggui.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    loadinggui.BorderSizePixel = 0
    loadinggui.Position = UDim2.new(0.123000003, 0, 1.05, 0)
    loadinggui.Size = UDim2.new(0, 253, 0, 77)
    
    Guitop.Name = "Gui top"
    Guitop.Parent = loadinggui
    Guitop.AnchorPoint = Vector2.new(0.5, 0.5)
    Guitop.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Guitop.BorderSizePixel = 0
    Guitop.Position = UDim2.new(0.499274224, 1, 0.504429817, 3)
    Guitop.Size = UDim2.new(0, 253, 0, 76)
    
    title.Name = "title"
    title.Parent = Guitop
    title.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.0177665073, 0, 0, 0)
    title.Size = UDim2.new(0.642312586, -72, -0.16883117, 26)
    title.Font = Enum.Font.GothamBlack
    title.Text = "Shortcut v3"
    title.TextColor3 = Color3.fromRGB(235, 235, 235)
    title.TextSize = 11.000
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.TextYAlignment = Enum.TextYAlignment.Bottom
    
    TextLabel.Parent = Guitop
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel.Position = UDim2.new(0.0177665371, 0, 0.242784202, 0)
    TextLabel.Size = UDim2.new(0, 242, 0, 54)
    TextLabel.Font = Enum.Font.GothamMedium
    TextLabel.Text = message
    TextLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
    TextLabel.TextSize = 11.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.AutomaticSize = Enum.AutomaticSize.Y
    TweenService:Create(
        loadinggui, -- UI object you're tweening, in this case it's Frame
        TweenInfo.new(1), -- Amount of seconds
        {Position = UDim2.new(0.123, 0,0.96, 0)} -- Goal
    ):Play()
    wait(1)
	local function fade()

		TweenService:Create(
			loadinggui, -- UI object you're tweening, in this case it's Frame
			TweenInfo.new(1), -- Amount of seconds
			{Position = UDim2.new(0.123, 0,1.05, 0)} -- Goal
		):Play()
		wait(1)
		TextMessage:Destroy()
	end
    wait(times)
fade()

end

function notiflib:NewOptionNotif(message, callback)
    callback = callback or function()
    end
    local OptionMessage = Instance.new("ScreenGui")
    local loadinggui_2 = Instance.new("Frame")
    local Guitop_2 = Instance.new("Frame")
    local title_2 = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local closes = Instance.new("ImageButton")
    local corner = Instance.new("UICorner")
    local check = Instance.new("ImageButton")
    local corner_2 = Instance.new("UICorner")
    local TweenService = game:GetService("TweenService")
    local reacted = false
    
    --Properties:
    
    print("here")
    OptionMessage.Name = "OptionMessage"
    OptionMessage.Parent = game.CoreGui
    OptionMessage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    loadinggui_2.Name = "loading gui"
    loadinggui_2.Parent = OptionMessage
    loadinggui_2.AnchorPoint = Vector2.new(0.5, 0.5)
    loadinggui_2.BackgroundColor3 = Color3.fromRGB(42, 78, 199)
    loadinggui_2.BorderSizePixel = 0
    loadinggui_2.Position = UDim2.new(0.123000003, 0, 1.05, 0)
    loadinggui_2.Size = UDim2.new(0, 253, 0, 77)
    
    Guitop_2.Name = "Gui top"
    Guitop_2.Parent = loadinggui_2
    Guitop_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Guitop_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Guitop_2.BorderSizePixel = 0
    Guitop_2.Position = UDim2.new(0.499274224, 1, 0.504429817, 3)
    Guitop_2.Size = UDim2.new(0, 253, 0, 76)
    
    title_2.Name = "title"
    title_2.Parent = Guitop_2
    title_2.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    title_2.BackgroundTransparency = 1.000
    title_2.Position = UDim2.new(0.0177665073, 0, 0, 0)
    title_2.Size = UDim2.new(0.642312586, -72, -0.16883117, 26)
    title_2.Font = Enum.Font.GothamBlack
    title_2.Text = "Shortcut v3"
    title_2.TextColor3 = Color3.fromRGB(235, 235, 235)
    title_2.TextSize = 11.000
    title_2.TextXAlignment = Enum.TextXAlignment.Left
    title_2.TextYAlignment = Enum.TextYAlignment.Bottom
    
    TextLabel_2.Parent = Guitop_2
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_2.Position = UDim2.new(0.0177665371, 0, 0.244995922, 0)
    TextLabel_2.Size = UDim2.new(0, 210, 0, 53)
    TextLabel_2.Font = Enum.Font.GothamMedium
    TextLabel_2.Text = "kreun if you wanna krein kreun if you wanna krein"
    TextLabel_2.TextColor3 = Color3.fromRGB(235, 235, 235)
    TextLabel_2.TextSize = 11.000
    TextLabel_2.TextWrapped = true
    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top
    
    closes.Name = "close"
    closes.Parent = Guitop_2
    closes.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    closes.Position = UDim2.new(0.876526833, 0, 0.527649522, 0)
    closes.Size = UDim2.new(0, 25, 0, 25)
    closes.ZIndex = 2
    closes.Image = "rbxassetid://3926305904"
    closes.ImageRectOffset = Vector2.new(284, 4)
    closes.ImageRectSize = Vector2.new(24, 24)
    
    corner.CornerRadius = UDim.new(0, 3)
    corner.Name = "corner"
    corner.Parent = closes
    
    check.Name = "check"
    check.Parent = Guitop_2
    check.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    check.Position = UDim2.new(0.876702428, 0, 0.0935672522, 0)
    check.Size = UDim2.new(0, 25, 0, 25)
    check.ZIndex = 2
    check.Image = "rbxassetid://3926305904"
    check.ImageRectOffset = Vector2.new(312, 4)
    check.ImageRectSize = Vector2.new(24, 24)
    
    corner_2.CornerRadius = UDim.new(0, 3)
    corner_2.Name = "corner"
    corner_2.Parent = check
    
    TweenService:Create(
        loadinggui_2, -- UI object you're tweening, in this case it's Frame
        TweenInfo.new(1), -- Amount of seconds
        {Position = UDim2.new(0.123, 0,0.96, 0)} -- Goal
    ):Play()
    wait(1)
	local function fade()

		TweenService:Create(
			loadinggui_2, -- UI object you're tweening, in this case it's Frame
			TweenInfo.new(1), -- Amount of seconds
			{Position = UDim2.new(0.123, 0,1.05, 0)} -- Goal
		):Play()
		wait(1)
		OptionMessage:Destroy()
	end
check.MouseButton1Click:connect(function()
    fade()
    reacted = true
    callback(true)
end)
closes.MouseButton1Click:connect(function()
    fade()
    reacted = true
    callback(false)
end)

repeat wait() until reacted == true
end
return notiflib
