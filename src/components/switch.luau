--!strict

local switchTypes = require("@types/switch")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local Switch = {}
Switch.__index = Switch

function Switch.new(config: switchTypes.Config, section: ScrollingFrame): switchTypes.Switch
	local self = setmetatable({}, Switch)
	self.appearance = appearances.switch(config, section)
	self.controller = controllers.switch.new(self.appearance, config)

	events.switch(self.appearance, self.controller)
	self.controller:applySize()

	if config.enabled then
		self.controller:changeState(true)
	end

	return self :: any
end

return Switch
