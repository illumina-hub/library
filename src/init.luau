--!strict

local rootTypes = require("@types/root")
local tabTypes = require("@types/tab")

local Root = require("@components/root")
local Tab = require("@components/tab")

local Flags = require("@managers/flags")

local Library = {}
Library.__index = Library

type Library = setmetatable<{
	flags: Flags.Flags,
	root: Root.Root,
	tabs: { Tab.Tab },
}, typeof(Library)>

function Library.new(props: rootTypes.Props)
	local self: Library = setmetatable({
		flags = Flags.new(props.product),
		root = Root.new(props),
		tabs = {},
	}, Library)

	return self
end

function Library.createTab(self: Library, props: tabTypes.Props)
	local tab = Tab.new(props, self.flags, self.root.view, self.tabs)
	table.insert(self.tabs, tab)

	if #self.tabs == 1 then
		tab:select()
	end

	return tab
end

return Library
