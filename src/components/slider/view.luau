--!strict

local sliderTypes = require("@types/slider")

return function(props: sliderTypes.Props, section: ScrollingFrame): sliderTypes.View
	local slider = Instance.new("Frame")
	slider.Name = "Slider"
	slider.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	slider.BorderSizePixel = 0
	slider.Size = UDim2.new(1, 0, 0, 113)

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Parent = slider

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = slider

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout.Padding = UDim.new(0, 15)
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = slider

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 5)
	uICorner.Parent = slider

	local content = Instance.new("Frame")
	content.Name = "Content"
	content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	content.BackgroundTransparency = 1
	content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	content.BorderSizePixel = 0
	content.Size = UDim2.new(1, 0, 0, 20)

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout1.Padding = UDim.new(0, 10)
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout1.Parent = content

	local value = Instance.new("TextLabel")
	value.Name = "Value"
	value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	value.BackgroundTransparency = 1
	value.BorderColor3 = Color3.fromRGB(0, 0, 0)
	value.BorderSizePixel = 0
	value.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	value.LayoutOrder = 1
	value.Size = UDim2.new(0, 19, 1, 0)
	value.Text = "75"
	value.TextColor3 = Color3.fromRGB(207, 207, 207)
	value.TextSize = 16
	value.TextXAlignment = Enum.TextXAlignment.Right
	value.Parent = content

	local track = Instance.new("Frame")
	track.Name = "Track"
	track.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	track.BorderColor3 = Color3.fromRGB(0, 0, 0)
	track.BorderSizePixel = 0
	track.LayoutOrder = 2
	track.Size = UDim2.fromOffset(200, 6)

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.CornerRadius = UDim.new(1, 0)
	uICorner1.Parent = track

	local fill = Instance.new("Frame")
	fill.Name = "Fill"
	fill.AnchorPoint = Vector2.new(0, 0.5)
	fill.BackgroundColor3 = Color3.fromRGB(211, 211, 211)
	fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
	fill.BorderSizePixel = 0
	fill.Position = UDim2.fromScale(0, 0.5)
	fill.Size = UDim2.fromScale(0.75, 1)

	local uICorner2 = Instance.new("UICorner")
	uICorner2.Name = "UICorner"
	uICorner2.CornerRadius = UDim.new(1, 0)
	uICorner2.Parent = fill

	local circle = Instance.new("Frame")
	circle.Name = "Circle"
	circle.AnchorPoint = Vector2.new(0.5, 0.5)
	circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	circle.BorderSizePixel = 0
	circle.Position = UDim2.fromScale(1, 0.5)
	circle.Size = UDim2.fromOffset(16, 16)

	local uICorner3 = Instance.new("UICorner")
	uICorner3.Name = "UICorner"
	uICorner3.CornerRadius = UDim.new(1, 0)
	uICorner3.Parent = circle

	circle.Parent = fill
	fill.Parent = track

	local hitbox = Instance.new("TextButton")
	hitbox.Name = "Hitbox"
	hitbox.AnchorPoint = Vector2.new(0.5, 0.5)
	hitbox.AutoButtonColor = false
	hitbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	hitbox.BackgroundTransparency = 1
	hitbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	hitbox.BorderSizePixel = 0
	hitbox.Position = UDim2.fromScale(0.5, 0.5)
	hitbox.Size = UDim2.new(1, 0, 1, 20)
	hitbox.Text = ""
	hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
	hitbox.TextSize = 14
	hitbox.Parent = track

	track.Parent = content

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.Size = UDim2.new(1, -239, 1, 0)
	title.Text = props.title
	title.TextColor3 = Color3.fromRGB(207, 207, 207)
	title.TextSize = 16
	title.TextTruncate = Enum.TextTruncate.SplitWord
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = content

	content.Parent = slider

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider.BorderSizePixel = 0
	divider.Size = UDim2.new(1, 30, 0, 1)
	divider.Parent = slider

	local description = Instance.new("Frame")
	description.Name = "Description"
	description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	description.BackgroundTransparency = 1
	description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	description.BorderSizePixel = 0
	description.Size = UDim2.new(1, 0, 0, 32)

	local text = Instance.new("TextLabel")
	text.Name = "Text"
	text.AnchorPoint = Vector2.new(0, 0.5)
	text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	text.BackgroundTransparency = 1
	text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	text.BorderSizePixel = 0
	text.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	text.Position = UDim2.fromScale(0, 0.5)
	text.Size = UDim2.fromScale(1, 1)
	text.Text = props.description
	text.TextColor3 = Color3.fromRGB(89, 89, 89)
	text.TextSize = 16
	text.TextWrapped = true
	text.TextXAlignment = Enum.TextXAlignment.Left
	text.TextYAlignment = Enum.TextYAlignment.Top
	text.Parent = description

	description.Parent = slider
	slider.Parent = section

	return {
		slider = slider,
		title = title,
		value = value,
		track = {
			frame = track,
			fill = fill,
			circle = circle,
			hitbox = hitbox,
		},
		description = {
			frame = description,
			text = text,
		},
	}
end
