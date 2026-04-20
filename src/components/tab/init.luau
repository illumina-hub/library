--!strict

local buttonTypes = require("@types/button")
local rootTypes = require("@types/root")
local switchTypes = require("@types/switch")
local tabTypes = require("@types/tab")

local Button = require("@components/button")
local Label = require("@components/label")
local Section = require("@components/section")
local Switch = require("@components/switch")

local Flags = require("@managers/flags")

local tabStyles = require("@self/styles")
local tabView = require("@self/view")

local signals = require("@utils/signals")
local spring = require("@utils/spring")

local motions = require("@shared/motions")

local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
local FREQUENCY = motions.DEFAULT.FREQUENCY

local Tab = {}
Tab.__index = Tab

export type Tab = setmetatable<{
	flags: Flags.Flags,
	view: tabTypes.View,
	_tabs: { Tab },
	_selected: boolean,
	_section: ScrollingFrame,
}, typeof(Tab)>

function Tab.new(props: tabTypes.Props, flags: Flags.Flags, rootView: rootTypes.View, tabs: { Tab })
	local self: Tab = setmetatable({
		flags = flags,
		view = tabView(props, rootView.tabs),
		_tabs = tabs,
		_selected = false,
		_section = Section(rootView.sections),
	}, Tab)

	signals.new(self.view.tab.MouseButton1Click, function()
		self:select()
	end)

	signals.new(self.view.tab.MouseEnter, function()
		if not self._selected then
			self:_applyStyle(tabStyles.HOVERED)
		end
	end)

	signals.new(self.view.tab.MouseLeave, function()
		if not self._selected then
			self:_applyStyle(tabStyles.DEFAULT)
		end
	end)

	return self
end

function Tab.select(self: Tab)
	for _, tab in self._tabs do
		local selected = tab.view == self.view
		local style = selected and tabStyles.SELECTED or tabStyles.DEFAULT

		tab:_applyStyle(style)
		tab._selected = selected
		tab._section.Visible = selected
	end
end

function Tab.createLabel(self: Tab, title: string)
	return Label(title, self._section)
end

function Tab.createButton(self: Tab, props: buttonTypes.Props)
	return Button.new(props, self._section)
end

function Tab.createSwitch(self: Tab, props: switchTypes.Props)
	return Switch.new(props, self.flags, self._section)
end

function Tab._applyStyle(self: Tab, style: tabTypes.Style)
	spring.target(self.view.tab, DAMPING_RATIO, FREQUENCY, {
		BackgroundTransparency = style.TAB_TRANSPARENCY,
	})

	spring.target(self.view.stroke, DAMPING_RATIO, FREQUENCY, {
		Transparency = style.STROKE_TRANSPARENCY,
	})

	spring.target(self.view.icon, DAMPING_RATIO, FREQUENCY, {
		ImageColor3 = style.ICON_COLOR,
	})

	spring.target(self.view.title, DAMPING_RATIO, FREQUENCY, {
		TextColor3 = style.TEXT_COLOR,
	})
end

return Tab
