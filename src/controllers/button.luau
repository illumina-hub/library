--!strict

local buttonTypes = require("@types/button")
local spring = require("@utils/spring")
local springStyle = require("@styles/spring")

local Button = {}
Button.__index = Button

function Button.new(appearance: buttonTypes.Appearance, config: buttonTypes.Config): buttonTypes.Controller
	local self = setmetatable({}, Button)
	self.appearance = appearance
	self.config = config

	return self :: any
end

function Button.activate(self: buttonTypes.Controller)
	self.config.callback()
end

function Button.applyStyle(self: buttonTypes.Controller, style: buttonTypes.Style)
	spring.target(self.appearance.component, springStyle.DAMPING_RATIO, springStyle.FREQUENCY, {
		BackgroundColor3 = style.BUTTON,
	})
end

return Button
