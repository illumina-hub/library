--!strict

local UserInputService = game:GetService("UserInputService")

local flagTypes = require("@types/flags")
local sliderTypes = require("@types/slider")

local Signal = require("@managers/signal")

local componentStyle = require("@styles/component")
local scale = require("@utils/scale")

local END_INPUT = Enum.UserInputState.End
local MOUSE_INPUT = Enum.UserInputType.MouseButton1
local MOVE_INPUT = Enum.UserInputType.MouseMovement

local Slider = {}
Slider.__index = Slider

function Slider.new(
	appearance: sliderTypes.Appearance,
	config: sliderTypes.Config,
	flags: flagTypes.Flags
): sliderTypes.Controller
	local self = setmetatable({}, Slider)
	self.appearance = appearance
	self.config = config
	self.flags = flags
	self.value = 0
	self.dragging = false
	self.startInput = nil
	self.inputChanged = Signal.new()

	return self :: any
end

function Slider.changeValue(self: sliderTypes.Controller, value: number, difference: boolean)
	local clamped = math.clamp(value, self.config.min, self.config.max)
	local range = self.config.max - self.config.min
	local offset = clamped - self.config.min
	local percentage = offset / range

	if difference and self.value == clamped then
		return
	end

	self.appearance.value.Text = tostring(clamped)
	self.value = clamped
	self:applyTrack(percentage)

	if self.config.callback then
		self.config.callback(clamped)
	end

	self.flags:setFlag(self.config.flag, clamped)
end

function Slider.resetState(self: sliderTypes.Controller)
	self.dragging = false
	self.startInput = nil

	if self.inputChanged:isConnected() then
		self.inputChanged:disconnect()
	end
end

function Slider.onInputBegan(self: sliderTypes.Controller, input: InputObject)
	if input.UserInputType ~= MOUSE_INPUT then
		return
	end

	self.dragging = true
	self.startInput = input

	self.inputChanged:connect(UserInputService.InputChanged, function(input: InputObject)
		self:onInputChange(input)
	end)
end

function Slider.onInputChange(self: sliderTypes.Controller, input: InputObject)
	if not self.dragging or not self.startInput then
		return
	end

	if input.UserInputState == END_INPUT or self.startInput.UserInputState == END_INPUT then
		self:resetState()
		return
	end

	if input.UserInputType == MOVE_INPUT then
		self:updateFromInput(input)
	end
end

function Slider.onInputEnd(self: sliderTypes.Controller, input: InputObject)
	if input.UserInputType == MOUSE_INPUT then
		self:resetState()
	end
end

function Slider.updateFromInput(self: sliderTypes.Controller, input: InputObject)
	local track = self.appearance.track
	local relative = input.Position.X - track.frame.AbsolutePosition.X
	local percentage = math.clamp(relative / track.frame.AbsoluteSize.X, 0, 1)

	local range = self.config.max - self.config.min
	local raw = self.config.min + percentage * range
	local rounded = math.round(raw * self.config.division) / self.config.division

	self:changeValue(rounded, true)
end

function Slider.applyTrack(self: sliderTypes.Controller, percentage: number)
	local circleSize = self.appearance.track.circle.AbsoluteSize.X
	local trackWidth = circleSize / 2 - circleSize * percentage

	self.appearance.track.fill.Size = UDim2.new(percentage, trackWidth, 1, 0)
end

function Slider.applySize(self: sliderTypes.Controller)
	local description = self.appearance.description
	local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)
	description.text.Size = textSize
	description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

	local componentHeight =
		scale.getComponentSize(self.appearance.slider, "Y", componentStyle.PADDING, componentStyle.GAP)
	self.appearance.slider.Size = UDim2.new(1, 0, 0, componentHeight)
end

return Slider
