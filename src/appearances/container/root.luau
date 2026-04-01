--!strict

local CoreGui = gethui() or cloneref(game:GetService("CoreGui"))

return function()
	local oldIllumina = CoreGui:FindFirstChild("Illumina")

	if oldIllumina then
		oldIllumina:Destroy()
	end

	local illumina = Instance.new("ScreenGui")
	illumina.Name = "Illumina"
	illumina.IgnoreGuiInset = true
	illumina.ResetOnSpawn = false
	illumina.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

	local container = Instance.new("Frame")
	container.Name = "Container"
	container.AnchorPoint = Vector2.new(0.5, 0.5)
	container.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderSizePixel = 0
	container.Position = UDim2.fromScale(0.5, 0.5)
	container.Size = UDim2.fromOffset(750, 500)

	local uIStroke = Instance.new("UIStroke")
	uIStroke.Name = "UIStroke"
	uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uIStroke.Color = Color3.fromRGB(47, 47, 47)
	uIStroke.Parent = container

	local uICorner = Instance.new("UICorner")
	uICorner.Name = "UICorner"
	uICorner.CornerRadius = UDim.new(0, 10)
	uICorner.Parent = container

	local uICorner1 = Instance.new("UICorner")
	uICorner1.Name = "UICorner"
	uICorner1.CornerRadius = UDim.new(0, 10)
	uICorner1.Parent = container

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = container

	container.Parent = illumina
	illumina.Parent = CoreGui

	return {
		screen = illumina,
		container = container,
	}
end
