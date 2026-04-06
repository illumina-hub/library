--!strict

local flagTypes = require("@types/flags")
local sliderTypes = require("@types/slider")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local scale = require("@utils/scale")

local Slider = {}
Slider.__index = Slider

function Slider.new(config: sliderTypes.Config, section: ScrollingFrame, flags: flagTypes.Flags): sliderTypes.Slider
	local self = setmetatable({}, Slider)
	self.appearance = appearances.slider(config, section)
	self.controller = controllers.slider.new(self.appearance, config, flags)

	events.slider(self.appearance, self.controller)
	events.scale(self.appearance)
	scale.scaleComponent(self.appearance)

	local flag = flags:getFlag(config.flag, "number")
	local value = if flag ~= nil then flag else config.value

	self.controller:changeValue(value, false)

	return self :: any
end

function Slider.changeValue(self: sliderTypes.Slider, value: number)
	self.controller:changeValue(value, false)
end

return Slider
