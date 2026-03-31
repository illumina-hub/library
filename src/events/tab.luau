--!strict

local tabStyle = require("@styles/tab")
local tabTypes = require("@types/tab")

local Signal = require("@managers/signal")

return function(appearance: tabTypes.Appearance, controller: tabTypes.Controller)
	local tab = appearance.tab

	local click = Signal.new()
	local mouseEnter = Signal.new()
	local mouseLeave = Signal.new()

	click:connect(tab.MouseButton1Click, function()
		controller:select()
	end)

	mouseEnter:connect(tab.MouseEnter, function()
		if not controller.selected then
			controller:applyStyle(tabStyle.HOVERED)
		end
	end)

	mouseLeave:connect(tab.MouseLeave, function()
		if not controller.selected then
			controller:applyStyle(tabStyle.DEFAULT)
		end
	end)
end
