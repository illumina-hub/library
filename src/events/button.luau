--!strict

local buttonStyle = require("@styles/button")
local buttonTypes = require("@types/button")

local Signal = require("@managers/signal")

return function(appearance: buttonTypes.Appearance, controller: buttonTypes.Controller)
	local button = appearance.button

	local click = Signal.new()
	local mouseEnter = Signal.new()
	local mouseLeave = Signal.new()

	click:connect(button.MouseButton1Click, function()
		controller:activate()
	end)

	mouseEnter:connect(button.MouseEnter, function()
		controller:applyStyle(buttonStyle.HOVERED)
	end)

	mouseLeave:connect(button.MouseLeave, function()
		controller:applyStyle(buttonStyle.DEFAULT)
	end)
end
