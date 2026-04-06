--!strict

local containerTypes = require("@types/container")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local Container = {}
Container.__index = Container

function Container.new(onDestroyed: (() -> ())?): containerTypes.Container
	local self = setmetatable({}, Container)
	local drag = controllers.drag.new()
	self.appearance = appearances.container()
	self.controller = controllers.container.new(self.appearance, drag)

	events.drag(self.appearance.root.container, self.appearance.header.frame, drag)
	events.container(self.appearance, self.controller, onDestroyed)

	return self :: any
end

return Container
