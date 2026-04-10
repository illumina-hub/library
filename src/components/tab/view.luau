--!strict

local tabTypes = require("@types/tab")

local DEFAULT_ICON = "rbxassetid://73851699179305"

return function(props: tabTypes.Props, parent: ScrollingFrame): tabTypes.View
	local tab = Instance.new("TextButton")
	tab.Name = "Tab"
	tab.AutoButtonColor = false
	tab.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	tab.BackgroundTransparency = 1
	tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tab.BorderSizePixel = 0
	tab.Size = UDim2.new(1, 0, 0, 50)
	tab.Text = ""
	tab.TextColor3 = Color3.fromRGB(0, 0, 0)
	tab.TextSize = 14

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 5)
	uICorner.Parent = tab

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Transparency = 1
	uIStroke.Parent = tab

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.LayoutOrder = 1
	title.Size = UDim2.new(1, -30, 1, 0)
	title.Text = props.title
	title.TextColor3 = Color3.fromRGB(89, 89, 89)
	title.TextSize = 16
	title.TextTruncate = Enum.TextTruncate.SplitWord
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = tab

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = tab

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout.Padding = UDim.new(0, 10)
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout.Parent = tab

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.AnchorPoint = Vector2.new(0.5, 0.5)
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.BackgroundTransparency = 1
	icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	icon.BorderSizePixel = 0
	icon.Image = props.icon or DEFAULT_ICON
	icon.ImageColor3 = Color3.fromRGB(89, 89, 89)
	icon.Position = UDim2.fromScale(0.5, 0.5)
	icon.Size = UDim2.fromOffset(20, 20)
	icon.Parent = tab

	tab.Parent = parent

	return {
		tab = tab,
		stroke = uIStroke,
		title = title,
		icon = icon,
	}
end
