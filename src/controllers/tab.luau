--!strict

local tabTypes = require("@types/tab")

local componentStyle = require("@styles/component")
local tabStyle = require("@styles/tab")

local spring = require("@utils/spring")

local TabController = {}
TabController.__index = TabController

function TabController.new(appearance: tabTypes.Appearance, tabs: { tabTypes.Tab }): tabTypes.Controller
	local self = setmetatable({}, TabController)
	self.appearance = appearance
	self.tabs = tabs
	self.selected = false

	return self :: any
end

function TabController.select(self: tabTypes.Controller)
	for _, tab in self.tabs do
		local isSelected = tab.appearance == self.appearance
		local style = isSelected and tabStyle.SELECTED or tabStyle.DEFAULT

		tab.controller:applyStyle(style)
		tab.controller.selected = isSelected
		tab.section.Visible = isSelected
	end
end

function TabController.applyStyle(self: tabTypes.Controller, style: tabTypes.Style)
	local appearance = self.appearance

	spring.target(appearance.component, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		BackgroundTransparency = style.TAB,
	})

	spring.target(appearance.stroke, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		Transparency = style.STROKE,
	})

	spring.target(appearance.icon, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		ImageColor3 = style.ICON,
	})

	spring.target(appearance.title, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
		TextColor3 = style.TITTLE,
	})
end

return TabController
