--!strict

local CoreGui = gethui() or cloneref(game:GetService("CoreGui"))

local containerStyle = require("@styles/container")

return function()
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
	container.Position = containerStyle.DEF_POSITION
	container.Size = containerStyle.DEF_SIZE

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

	container.Parent = illumina
	illumina.Parent = CoreGui

	return {
		screen = illumina,
		container = container,
		corner = uICorner,
	}
end
