--!strict

local flagTypes = require("@types/flags")
local switchTypes = require("@types/switch")

local componentStyle = require("@styles/component")
local switchStyle = require("@styles/switch")

local spring = require("@utils/spring")

local Switch = {}
Switch.__index = Switch

function Switch.new(
	appearance: switchTypes.Appearance,
	config: switchTypes.Config,
	flags: flagTypes.Flags
): switchTypes.Controller
	local self = setmetatable({}, Switch)
	self.appearance = appearance
	self.config = config
	self.flags = flags
	self.enabled = false

	return self :: any
end

function Switch.changeState(self: switchTypes.Controller, state: boolean?)
	self.enabled = state or not self.enabled

	local style = self.enabled and switchStyle.ENABLED or switchStyle.DISABLED
	self:applyStyle(style)
	self.config.callback(self.enabled)
	self.flags:setFlag(self.config.flag, self.enabled)
end

function Switch.applyStyle(self: switchTypes.Controller, style: switchTypes.Style)
	local thumb = self.appearance.thumb

	spring.target(thumb.frame, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		BackgroundColor3 = style.THUMB,
	})

	spring.target(thumb.circle, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		AnchorPoint = style.ANCHOR_POINT,
		Position = style.POSITION,
		BackgroundColor3 = style.CIRCLE,
	})
end

return Switch
