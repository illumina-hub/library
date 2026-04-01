--!strict

local buttonTypes = require("@types/button")

return function(config: buttonTypes.Config, section: ScrollingFrame)
	local button = Instance.new("TextButton")
	button.Name = "Button"
	button.AutoButtonColor = false
	button.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(1, 0, 0, 113)
	button.Text = ""
	button.TextColor3 = Color3.fromRGB(0, 0, 0)
	button.TextSize = 14

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 5)
	uICorner.Parent = button

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

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.AnchorPoint = Vector2.new(0.5, 0.5)
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.BackgroundTransparency = 1
	icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	icon.BorderSizePixel = 0
	icon.Image = "rbxassetid://118002645781070"
	icon.ImageColor3 = Color3.fromRGB(207, 207, 207)
	icon.LayoutOrder = 1
	icon.Position = UDim2.fromScale(0.5, 0.5)
	icon.Size = UDim2.fromOffset(20, 20)
	icon.Parent = content

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.Size = UDim2.new(1, -30, 1, 0)
	title.Text = config.title
	title.TextColor3 = Color3.fromRGB(207, 207, 207)
	title.TextSize = 16
	title.TextTruncate = Enum.TextTruncate.SplitWord
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = content

	content.Parent = button

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout1.Padding = UDim.new(0, 15)
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.Parent = button

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = button

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider.BorderSizePixel = 0
	divider.Size = UDim2.new(1, 30, 0, 1)
	divider.Parent = button

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Parent = button

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

	description.Parent = button
	button.Parent = section

	return {
		component = button,
		title = title,
		description = {
			frame = description,
			text = text,
		},
	}
end
