--!strict

local buttonStyle = require("@styles/button")
local buttonTypes = require("@types/button")

local Signal = require("@managers/signal")

return function(appearance: buttonTypes.Appearance, controller: buttonTypes.Controller)
	local component = appearance.component
	local click = Signal.new()
	local mouseEnter = Signal.new()
	local mouseLeave = Signal.new()

	mouseLeave:connect(component.MouseLeave, function()
		controller:applyStyle(buttonStyle.DEFAULT)
	end)

	click:connect(component.MouseButton1Click, function()
		controller:activate()
	end)

	mouseEnter:connect(component.MouseEnter, function()
		controller:applyStyle(buttonStyle.HOVERED)
	end)

	mouseLeave:connect(component.MouseLeave, function()
		controller:applyStyle(buttonStyle.DEFAULT)
	end)
end
