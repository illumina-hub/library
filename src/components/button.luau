--!strict

local buttonTypes = require("@types/button")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local Button = {}
Button.__index = Button

function Button.new(config: buttonTypes.Config, section: ScrollingFrame): buttonTypes.Button
	local self = setmetatable({}, Button)
	self.appearance = appearances.button(config, section)
	self.controller = controllers.button.new(self.appearance, config)

	events.button(self.appearance, self.controller)
	self.controller:applySize()

	return self :: any
end

return Button
