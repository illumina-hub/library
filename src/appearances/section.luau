--!strict

return function(sections: Frame)
	local section = Instance.new("ScrollingFrame")
	section.Name = "Section"
	section.Active = true
	section.AnchorPoint = Vector2.new(0.5, 0.5)
	section.AutomaticCanvasSize = Enum.AutomaticSize.Y
	section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	section.BackgroundTransparency = 1
	section.BorderColor3 = Color3.fromRGB(0, 0, 0)
	section.BorderSizePixel = 0
	section.CanvasSize = UDim2.fromScale(0, 0.5)
	section.LayoutOrder = 2
	section.Position = UDim2.fromScale(0.5, 0.5)
	section.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	section.ScrollBarImageTransparency = 1
	section.ScrollBarThickness = 0
	section.ScrollingDirection = Enum.ScrollingDirection.Y
	section.Size = UDim2.fromScale(1, 1)
	section.Visible = false

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout.Padding = UDim.new(0, 10)
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = section

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingBottom = UDim.new(0, 15)
	uIPadding.PaddingLeft = UDim.new(0, 15)
	uIPadding.PaddingRight = UDim.new(0, 15)
	uIPadding.PaddingTop = UDim.new(0, 15)
	uIPadding.Parent = section

	section.Parent = sections

	return section
end
