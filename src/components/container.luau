--!strict

local containerTypes = require("@types/container")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local Container = {}
Container.__index = Container

function Container.new(onDestroyed: (() -> ())?): containerTypes.Container
	local self = setmetatable({}, Container)
	self.appearance = appearances.container()
	self.controller = controllers.container.new(self.appearance)
	self.dragController = controllers.drag.new()

	events.drag(self.appearance.root.container, self.appearance.header.frame, self.dragController)
	events.container(self.appearance, self.controller, onDestroyed)

	return self :: any
end

return Container
