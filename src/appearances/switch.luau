--!strict

local switchTypes = require("@types/switch")

return function(config: switchTypes.Config, section: ScrollingFrame)
	local switch = Instance.new("TextButton")
	switch.Name = "Switch"
	switch.AutoButtonColor = false
	switch.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
	switch.BorderSizePixel = 0
	switch.Size = UDim2.new(1, 0, 0, 113)
	switch.Text = ""
	switch.TextColor3 = Color3.fromRGB(0, 0, 0)
	switch.TextSize = 14

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 5)
	uICorner.Parent = switch

	local content = Instance.new("Frame")
	content.Name = "Content"
	content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	content.BackgroundTransparency = 1
	content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	content.BorderSizePixel = 0
	content.Size = UDim2.new(1, 0, 0, 20)

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout.Padding = UDim.new(0, 10)
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout.Parent = content

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.Size = UDim2.new(1, -50, 1, 0)
	title.Text = config.title
	title.TextColor3 = Color3.fromRGB(207, 207, 207)
	title.TextSize = 16
	title.TextTruncate = Enum.TextTruncate.SplitWord
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = content

	local thumb = Instance.new("Frame")
	thumb.Name = "Thumb"
	thumb.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	thumb.BorderColor3 = Color3.fromRGB(0, 0, 0)
	thumb.BorderSizePixel = 0
	thumb.Size = UDim2.fromOffset(40, 20)

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.CornerRadius = UDim.new(1, 0)
	uICorner1.Parent = thumb

	local circle = Instance.new("Frame")
	circle.Name = "Circle"
	circle.AnchorPoint = Vector2.new(0, 0.5)
	circle.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
	circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	circle.BorderSizePixel = 0
	circle.Position = UDim2.fromScale(0, 0.5)
	circle.Size = UDim2.fromOffset(16, 16)

	local uICorner2 = Instance.new("UICorner")
	uICorner2.Name = "UICorner"
	uICorner2.CornerRadius = UDim.new(1, 0)
	uICorner2.Parent = circle

	circle.Parent = thumb

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 2)
	uIPadding.PaddingLeft = UDim.new(0, 2)
	uIPadding.PaddingRight = UDim.new(0, 2)
	uIPadding.PaddingTop = UDim.new(0, 2)
	uIPadding.Parent = thumb

	thumb.Parent = content
	content.Parent = switch

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout1.Padding = UDim.new(0, 15)
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.Parent = switch

	local uIPadding1 = Instance.new("UIPadding")
	uIPadding1.Name = "UIPadding"
	uIPadding1.PaddingBottom = UDim.new(0, 15)
	uIPadding1.PaddingLeft = UDim.new(0, 15)
	uIPadding1.PaddingRight = UDim.new(0, 15)
	uIPadding1.PaddingTop = UDim.new(0, 15)
	uIPadding1.Parent = switch

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Parent = switch

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider.BorderSizePixel = 0
	divider.Size = UDim2.new(1, 30, 0, 1)
	divider.Parent = switch

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
	text.Text = config.description
	text.TextColor3 = Color3.fromRGB(89, 89, 89)
	text.TextSize = 16
	text.TextWrapped = true
	text.TextXAlignment = Enum.TextXAlignment.Left
	text.TextYAlignment = Enum.TextYAlignment.Top
	text.Parent = description

	description.Parent = switch
	switch.Parent = section

	return {
		component = switch,
		title = title,
		thumb = {
			frame = thumb,
			circle = circle,
		},
		description = {
			frame = description,
			text = text,
		},
	}
end
