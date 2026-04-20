--!strict

local buttonStyles = require("@self/styles")
local buttonTypes = require("@types/button")
local buttonView = require("@self/view")

local scaling = require("@utils/scaling")
local signals = require("@utils/signals")
local spring = require("@utils/spring")

local motions = require("@shared/motions")

local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
local FREQUENCY = motions.DEFAULT.FREQUENCY

local Button = {}
Button.__index = Button

export type Button = setmetatable<{
	view: buttonTypes.View,
}, typeof(Button)>

function Button.new(props: buttonTypes.Props, section: ScrollingFrame)
	local self: Button = setmetatable({
		view = buttonView(props, section),
	}, Button)

	signals.new(self.view.button.MouseButton1Click, function()
		if props.activated then
			props.activated()
		end
	end)

	signals.new(self.view.button.MouseEnter, function()
		self:_applyStyle(buttonStyles.HOVERED)
	end)

	signals.new(self.view.button.MouseLeave, function()
		self:_applyStyle(buttonStyles.DEFAULT)
	end)

	signals.new(self.view.button:GetPropertyChangedSignal("AbsoluteSize"), function()
		scaling.scaleComponent(self.view.button, self.view.description)
	end)

	scaling.scaleComponent(self.view.button, self.view.description)

	return self
end

function Button._applyStyle(self: Button, style: buttonTypes.Style)
	spring.target(self.view.button, DAMPING_RATIO, FREQUENCY, {
		BackgroundColor3 = style.BUTTON_COLOR,
	})
end

return Button
