--!strict

local buttonTypes = require("@types/button")
local componentStyle = require("@styles/component")

local scale = require("@utils/scale")
local spring = require("@utils/spring")

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

function Button.applySize(self: buttonTypes.Controller)
	local description = self.appearance.description
	local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)
	description.text.Size = textSize
	description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

	local componentHeight =
		scale.getComponentSize(self.appearance.button, "Y", componentStyle.PADDING, componentStyle.GAP)
	self.appearance.button.Size = UDim2.new(1, 0, 0, componentHeight)
end

function Button.applyStyle(self: buttonTypes.Controller, style: buttonTypes.Style)
	spring.target(self.appearance.button, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		BackgroundColor3 = style.BUTTON,
	})
end

return Button
