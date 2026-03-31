--!strict

local libraryTypes = require("@types/library")
local tabTypes = require("@types/tab")

local Container = require("@components/container")
local Tab = require("@components/tab")

local Library = {}
Library.__index = Library

function Library.new(config: libraryTypes.Config): libraryTypes.Library
	local self = setmetatable({}, Library)
	self.container = Container.new(config.onDestroyed)
	self.tabs = {}

	return self :: any
end

function Library.createTab(self: libraryTypes.Library, config: tabTypes.Config)
	local tab = Tab.new(config, self.container, self.tabs)
	table.insert(self.tabs, tab)

	if #self.tabs == 1 then
		tab:select()
	end

	return tab
end

return Library
