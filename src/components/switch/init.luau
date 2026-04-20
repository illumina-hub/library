--!strict

local switchStyles = require("@self/styles")
local switchTypes = require("@types/switch")
local switchView = require("@self/view")

local scaling = require("@utils/scaling")
local signals = require("@utils/signals")
local spring = require("@utils/spring")

local motions = require("@shared/motions")

local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
local FREQUENCY = motions.DEFAULT.FREQUENCY

local Switch = {}
Switch.__index = Switch

export type Switch = setmetatable<{
	props: switchTypes.Props,
	view: switchTypes.View,
	_enabled: boolean,
}, typeof(Switch)>

function Switch.new(props: switchTypes.Props, section: ScrollingFrame): Switch
	local self = {
		props = props,
		view = switchView(props, section),
		_enabled = false,
	} :: Switch

	signals.new().connect(self.view.switch.MouseButton1Click, function()
		self:changeState(not self._enabled)
	end)

	signals.new().connect(self.view.switch:GetPropertyChangedSignal("AbsoluteSize"), function()
		scaling.scaleComponent(self.view.switch, self.view.description)
	end)

	scaling.scaleComponent(self.view.switch, self.view.description)

	return setmetatable(self, Switch)
end

function Switch.changeState(self: Switch, state: boolean)
	self._enabled = state

	if self.props.changed then
		self.props.changed(state)
	end

	local style = state and switchStyles.ENABLED or switchStyles.DISABLED
	self:_applyStyle(style)
end

function Switch._applyStyle(self: Switch, style: switchTypes.Style)
	spring.target(self.view.thumb.frame, DAMPING_RATIO, FREQUENCY, {
		BackgroundColor3 = style.THUMB_COLOR,
	})

	spring.target(self.view.thumb.circle, DAMPING_RATIO, FREQUENCY, {
		AnchorPoint = style.CIRCLE_ANCHOR_POINT,
		BackgroundColor3 = style.CIRCLE_COLOR,
		Position = style.CIRCLE_POSITION,
	})
end

return Switch
