--!strict

local buttonTypes = require("@types/button")
local containerTypes = require("@types/container")
local switchTypes = require("@types/switch")
local tabTypes = require("@types/tab")

local Button = require("@components/button")
local Label = require("@components/label")
local Switch = require("@components/switch")

local appearances = require("@appearances")
local controllers = require("@controllers")
local events = require("@events")

local Tab = {}
Tab.__index = Tab

function Tab.new(config: tabTypes.Config, container: containerTypes.Container, tabs: { tabTypes.Tab }): tabTypes.Tab
	local self = setmetatable({}, Tab)
	local group = container.appearance.group
	self.appearance = appearances.tab(config, group.tabs)
	self.controller = controllers.tab.new(self.appearance, tabs)
	self.section = appearances.section(group.sections)

	events.tab(self.appearance, self.controller)

	return self :: any
end

function Tab.select(self: tabTypes.Tab)
	self.controller:select()
end

function Tab.createLabel(self: tabTypes.Tab, title: string)
	return Label.new(title, self.section)
end

function Tab.createButton(self: tabTypes.Tab, config: buttonTypes.Config)
	return Button.new(config, self.section)
end

function Tab.createSwitch(self: tabTypes.Tab, config: switchTypes.Config)
	return Switch.new(config, self.section)
end

return Tab
