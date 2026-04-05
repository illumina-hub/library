--!strict

return function(container: Frame)
	local header = Instance.new("Frame")
	header.Name = "Header"
	header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	header.BackgroundTransparency = 1
	header.BorderColor3 = Color3.fromRGB(0, 0, 0)
	header.BorderSizePixel = 0
	header.Size = UDim2.new(1, 0, 0, 50)

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uIListLayout.Parent = header

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

	local fullscreen = Instance.new("TextButton")
	fullscreen.Name = "Fullscreen"
	fullscreen.AutoButtonColor = false
	fullscreen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	fullscreen.BackgroundTransparency = 1
	fullscreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
	fullscreen.BorderSizePixel = 0
	fullscreen.LayoutOrder = 2
	fullscreen.Size = UDim2.fromOffset(40, 40)
	fullscreen.Text = ""
	fullscreen.TextColor3 = Color3.fromRGB(0, 0, 0)
	fullscreen.TextSize = 14

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
	icon1.Parent = fullscreen

	fullscreen.Parent = header

	local minimize = Instance.new("TextButton")
	minimize.Name = "Minimize"
	minimize.AutoButtonColor = false
	minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	minimize.BackgroundTransparency = 1
	minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	minimize.BorderSizePixel = 0
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

	return {
		frame = header,
		minimize = minimize,
		fullscreen = fullscreen,
		close = close,
	}
end
