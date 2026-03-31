--!strict

local flagTypes = require("@types/flags")
local switchTypes = require("@types/switch")

local componentStyle = require("@styles/component")
local switchStyle = require("@styles/switch")

local scale = require("@utils/scale")
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

-- i was so lazy to make abstract classes to avoid code duplication
-- please forgive me and don't kill me 🙏🙏🙏

function Switch.applySize(self: switchTypes.Controller)
	local description = self.appearance.description
	local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)
	description.text.Size = textSize
	description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

	local componentHeight =
		scale.getComponentSize(self.appearance.switch, "Y", componentStyle.PADDING, componentStyle.GAP)
	self.appearance.switch.Size = UDim2.new(1, 0, 0, componentHeight)
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
