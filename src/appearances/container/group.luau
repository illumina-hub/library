--!strict

return function(container: Frame)
	local group = Instance.new("Frame")
	group.Name = "Group"
	group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	group.BackgroundTransparency = 1
	group.BorderColor3 = Color3.fromRGB(0, 0, 0)
	group.BorderSizePixel = 0
	group.LayoutOrder = 2
	group.Size = UDim2.new(1, 0, 1, -51)

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout.Parent = group

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

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout1.Padding = UDim.new(0, 10)
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.Parent = tabs

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = tabs

	tabs.Parent = group

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	divider.BorderSizePixel = 0
	divider.LayoutOrder = 1
	divider.Size = UDim2.new(0, 1, 1, 0)
	divider.Parent = group

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

	return {
		tabs = tabs,
		sections = sections,
	}
end
