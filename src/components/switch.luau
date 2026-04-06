--!strict

local flagTypes = require("@types/flags")
local switchTypes = require("@types/switch")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local scale = require("@utils/scale")

local Switch = {}
Switch.__index = Switch

function Switch.new(config: switchTypes.Config, section: ScrollingFrame, flags: flagTypes.Flags): switchTypes.Switch
	local self = setmetatable({}, Switch)
	self.appearance = appearances.switch(config, section)
	self.controller = controllers.switch.new(self.appearance, config, flags)

	events.switch(self.appearance, self.controller)
	events.scale(self.appearance)
	scale.scaleComponent(self.appearance)

	local flag = flags:getFlag(config.flag, "boolean")
	local state = if flag ~= nil then flag else config.enabled

	if state then
		self.controller:changeState(state)
	end

	return self :: any
end

function Switch.changeState(self: switchTypes.Switch, state: boolean)
	self.controller:changeState(state)
end

return Switch
