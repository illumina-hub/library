--!strict

local Signal = require("@managers/signal")
local tabStyle = require("@styles/tab")
local tabTypes = require("@types/tab")

return function(appearance: tabTypes.Appearance, controller: tabTypes.Controller)
	local component = appearance.component

	local click = Signal.new()
	local mouseEnter = Signal.new()
	local mouseLeave = Signal.new()

	click:connect(component.MouseButton1Click, function()
		controller:select()
	end)

	mouseEnter:connect(component.MouseEnter, function()
		if not controller.selected then
			controller:applyStyle(tabStyle.HOVERED)
		end
	end)

	mouseLeave:connect(component.MouseLeave, function()
		if not controller.selected then
			controller:applyStyle(tabStyle.DEFAULT)
		end
	end)
end
