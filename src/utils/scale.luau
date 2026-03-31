--!strict

local TextService = game:GetService("TextService")

local FONT_SIZE = 16
local FONT_ENUM = Enum.Font.GothamMedium

local function getTextSize(text: string, width: number, height: number)
	local frameSize = Vector2.new(width, height)
	local textSize = TextService:GetTextSize(text, FONT_SIZE, FONT_ENUM, frameSize)

	return UDim2.fromOffset(textSize.X, textSize.Y)
end

local function getAxisOffset(size: UDim2, axis: "X" | "Y")
	if axis == "X" then
		return size.X.Offset
	end

	return size.Y.Offset
end

local function getComponentSize(component: GuiObject, axis: "X" | "Y", padding: number, gap: number)
	local componentSize = padding * 2
	local objectCount = 0

	for _, object in component:GetChildren() do
		if not object:IsA("GuiObject") then
			continue
		end

		componentSize += getAxisOffset(object.Size, axis)
		objectCount += 1

		if objectCount > 1 then
			componentSize += gap
		end
	end

	return componentSize
end

return {
	getTextSize = getTextSize,
	getComponentSize = getComponentSize,
}
