--!strict

local UserInputService = game:GetService("UserInputService")

local Flags = require("@managers/flags")

local sliderTypes = require("@types/slider")
local sliderView = require("@self/view")

local scaling = require("@utils/scaling")
local signals = require("@utils/signals")

local inputs = require("@shared/inputs")

local Slider = {}
Slider.__index = Slider

export type Slider = setmetatable<{
	props: sliderTypes.Props,
	flags: Flags.Flags,
	view: sliderTypes.View,
	_value: number,
	_dragging: boolean,
	_startInput: InputObject?,
	_inputChanged: (() -> ())?,
}, typeof(Slider)>

function Slider.new(props: sliderTypes.Props, flags: Flags.Flags, section: ScrollingFrame)
	local self = setmetatable({
		props = props,
		flags = flags,
		view = sliderView(props, section),
		_value = 0,
		_dragging = false,
		_startInput = nil,
		_inputChanged = nil,
	}, Slider) :: Slider

	signals.new(self.view.track.hitbox.InputBegan, function(inputObject: InputObject)
		self:_onInputBegan(inputObject)
	end)

	signals.new(self.view.track.hitbox.InputEnded, function(inputObject: InputObject)
		self:_onInputEnded(inputObject)
	end)

	signals.new(self.view.slider:GetPropertyChangedSignal("AbsoluteSize"), function()
		scaling.scaleComponent(self.view.slider, self.view.description)
	end)

	scaling.scaleComponent(self.view.slider, self.view.description)

	local flag = flags:getFlag(props.flag, "number")
	local value = if flag ~= nil then flag else props.value

	self:changeValue(value, false)

	return self
end

function Slider.changeValue(self: Slider, value: number, difference: boolean)
	local clamped = math.clamp(value, self.props.min, self.props.max)
	local range = self.props.max - self.props.min
	local offset = clamped - self.props.min
	local percentage = offset / range

	if difference and self._value == clamped then
		return
	end

	self._value = clamped
	self:_applyTrack(percentage)
	self.view.value.Text = tostring(clamped)
	self.flags:setFlag(self.props.flag, clamped)

	if self.props.changed then
		self.props.changed(clamped)
	end
end

function Slider._resetState(self: Slider)
	self._dragging = false
	self._startInput = nil

	if self._inputChanged then
		self._inputChanged()
	end
end

function Slider._onInputBegan(self: Slider, inputObject: InputObject)
	if inputObject.UserInputType ~= inputs.MOUSE_INPUT then
		return
	end

	self._dragging = true
	self._startInput = inputObject
	self._inputChanged = signals.new(UserInputService.InputChanged, function(inputObject: InputObject)
		self:_onInputChanged(inputObject)
	end)
end

function Slider._onInputChanged(self: Slider, inputObject: InputObject)
	if not self._dragging or not self._startInput then
		return
	end

	if inputObject.UserInputState == inputs.END_INPUT or self._startInput.UserInputState == inputs.END_INPUT then
		self:_resetState()
		return
	end

	if inputObject.UserInputType == inputs.MOVE_INPUT then
		self:_updateFromInput(inputObject)
	end
end

function Slider._onInputEnded(self: Slider, inputObject: InputObject)
	if inputObject.UserInputType == inputs.MOUSE_INPUT then
		self:_resetState()
	end
end

function Slider._updateFromInput(self: Slider, inputObject: InputObject)
	local track = self.view.track.frame
	local relative = inputObject.Position.X - track.AbsolutePosition.X
	local percentage = math.clamp(relative / track.AbsoluteSize.X, 0, 1)
	local range = self.props.max - self.props.min
	local raw = self.props.min + percentage * range
	local rounded = math.round(raw * self.props.division) / self.props.division

	self:changeValue(rounded, true)
end

function Slider._applyTrack(self: Slider, percentage: number)
	local circleSize = self.view.track.circle.AbsoluteSize.X
	local trackWidth = circleSize / 2 - circleSize * percentage

	self.view.track.fill.Size = UDim2.new(percentage, trackWidth, 1, 0)
end

return Slider
