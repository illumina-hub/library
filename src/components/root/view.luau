--!strict

local CoreGui = gethui() or cloneref(game:GetService("CoreGui"))

local rootStyles = require("@self/styles")
local rootTypes = require("@types/root")

return function(props: rootTypes.Props): rootTypes.View
	local oldIllumina = CoreGui:FindFirstChild("Illumina")

	if oldIllumina then
		oldIllumina:Destroy()
	end

	local illumina = Instance.new("ScreenGui")
	illumina.Name = "Illumina"
	illumina.DisplayOrder = 6
	illumina.IgnoreGuiInset = true
	illumina.ResetOnSpawn = false
	illumina.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

	local container = Instance.new("Frame")
	container.Name = "Container"
	container.AnchorPoint = Vector2.new(0.5, 0.5)
	container.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderSizePixel = 0
	container.Position = rootStyles.DEF_POSITION
	container.Size = rootStyles.DEF_SIZE

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Parent = container

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 10)
	uICorner.Parent = container

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = container

	local header = Instance.new("Frame")
	header.Name = "Header"
	header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	header.BackgroundTransparency = 1
	header.BorderColor3 = Color3.fromRGB(0, 0, 0)
	header.BorderSizePixel = 0
	header.Size = UDim2.new(1, 0, 0, 50)

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout1.Parent = header

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = header

	local title = Instance.new("TextLabel")
	title.Name = "Title"
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	title.Size = UDim2.new(1, -110, 1, 0)
	title.Text = "Illumina"
	title.TextColor3 = Color3.fromRGB(207, 207, 207)
	title.TextSize = 16
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = header

	local close = Instance.new("TextButton")
	close.Name = "Close"
	close.AutoButtonColor = false
	close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	close.BackgroundTransparency = 1
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.InputSink = Enum.InputSink.None
	close.LayoutOrder = 3
	close.Size = UDim2.fromOffset(40, 40)
	close.Text = ""
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextSize = 14

	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.AnchorPoint = Vector2.new(0.5, 0.5)
	icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon.BackgroundTransparency = 1
	icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	icon.BorderSizePixel = 0
	icon.Image = "rbxassetid://74451597845240"
	icon.ImageColor3 = Color3.fromRGB(207, 207, 207)
	icon.Position = UDim2.fromScale(0.5, 0.5)
	icon.Size = UDim2.fromOffset(20, 20)
	icon.Parent = close

	close.Parent = header

	local expand = Instance.new("TextButton")
	expand.Name = "Expand"
	expand.AutoButtonColor = false
	expand.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	expand.BackgroundTransparency = 1
	expand.BorderColor3 = Color3.fromRGB(0, 0, 0)
	expand.BorderSizePixel = 0
	expand.InputSink = Enum.InputSink.None
	expand.LayoutOrder = 2
	expand.Size = UDim2.fromOffset(40, 40)
	expand.Text = ""
	expand.TextColor3 = Color3.fromRGB(0, 0, 0)
	expand.TextSize = 14

	local icon1 = Instance.new("ImageLabel")
	icon1.Name = "Icon"
	icon1.AnchorPoint = Vector2.new(0.5, 0.5)
	icon1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon1.BackgroundTransparency = 1
	icon1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	icon1.BorderSizePixel = 0
	icon1.Image = "rbxassetid://92682004738840"
	icon1.ImageColor3 = Color3.fromRGB(207, 207, 207)
	icon1.Position = UDim2.fromScale(0.5, 0.5)
	icon1.Size = UDim2.fromOffset(20, 20)
	icon1.Parent = expand

	expand.Parent = header

	local minimize = Instance.new("TextButton")
	minimize.Name = "Minimize"
	minimize.AutoButtonColor = false
	minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	minimize.BackgroundTransparency = 1
	minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	minimize.BorderSizePixel = 0
	minimize.InputSink = Enum.InputSink.None
	minimize.LayoutOrder = 1
	minimize.Size = UDim2.fromOffset(40, 40)
	minimize.Text = ""
	minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
	minimize.TextSize = 14

	local icon2 = Instance.new("ImageLabel")
	icon2.Name = "Icon"
	icon2.AnchorPoint = Vector2.new(0.5, 0.5)
	icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	icon2.BackgroundTransparency = 1
	icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	icon2.BorderSizePixel = 0
	icon2.Image = "rbxassetid://83770212086491"
	icon2.ImageColor3 = Color3.fromRGB(207, 207, 207)
	icon2.Position = UDim2.fromScale(0.5, 0.5)
	icon2.Size = UDim2.fromOffset(20, 20)
	icon2.Parent = minimize

	minimize.Parent = header
	header.Parent = container

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider.BorderSizePixel = 0
	divider.LayoutOrder = 1
	divider.Size = UDim2.new(1, 0, 0, 1)
	divider.Parent = container

	local group = Instance.new("Frame")
	group.Name = "Group"
	group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	group.BackgroundTransparency = 1
	group.BorderColor3 = Color3.fromRGB(0, 0, 0)
	group.BorderSizePixel = 0
	group.LayoutOrder = 2
	group.Size = UDim2.new(1, 0, 1, -51)

	local uIListLayout2 = Instance.new("UIListLayout")
	uIListLayout2.Name = "UIListLayout"
	uIListLayout2.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout2.Parent = group

	local tabs = Instance.new("ScrollingFrame")
	tabs.Name = "Tabs"
	tabs.Active = true
	tabs.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tabs.BackgroundTransparency = 1
	tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tabs.BorderSizePixel = 0
	tabs.CanvasSize = UDim2.fromScale(0, 0.5)
	tabs.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	tabs.ScrollBarImageTransparency = 1
	tabs.ScrollBarThickness = 0
	tabs.ScrollingDirection = Enum.ScrollingDirection.Y
	tabs.Size = UDim2.new(0, 200, 1, 0)

	local uIListLayout3 = Instance.new("UIListLayout")
	uIListLayout3.Name = "UIListLayout"
	uIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout3.Padding = UDim.new(0, 10)
	uIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout3.Parent = tabs

	local uIPadding1 = Instance.new("UIPadding")
	uIPadding1.Name = "UIPadding"
	uIPadding1.PaddingBottom = UDim.new(0, 15)
	uIPadding1.PaddingLeft = UDim.new(0, 15)
	uIPadding1.PaddingRight = UDim.new(0, 15)
	uIPadding1.PaddingTop = UDim.new(0, 15)
	uIPadding1.Parent = tabs

	tabs.Parent = group

	local divider1 = Instance.new("Frame")
	divider1.Name = "Divider"
	divider1.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider1.BorderSizePixel = 0
	divider1.LayoutOrder = 1
	divider1.Size = UDim2.new(0, 1, 1, 0)
	divider1.Parent = group

	local sections = Instance.new("Frame")
	sections.Name = "Sections"
	sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sections.BackgroundTransparency = 1
	sections.BorderColor3 = Color3.fromRGB(0, 0, 0)
	sections.BorderSizePixel = 0
	sections.LayoutOrder = 2
	sections.Size = UDim2.new(1, -201, 1, 0)
	sections.Parent = group

	group.Parent = container
	container.Parent = illumina
	illumina.Parent = CoreGui

	return {
		illumina = illumina,
		container = container,
		corner = uICorner,
		header = header,
		minimize = minimize,
		expand = expand,
		close = close,
		tabs = tabs,
		sections = sections,
	}
end
