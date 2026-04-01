--!strict

local buttonTypes = require("@types/button")
local flagTypes = require("@types/flags")
local labelTypes = require("@types/label")
local sliderTypes = require("@types/slider")
local switchTypes = require("@types/switch")

export type Config = {
	title: string,
	icon: string?,
}

export type Appearance = {
	tab: TextButton,
	stroke: UIStroke,
	title: TextLabel,
	icon: ImageLabel,
}

export type Style = {
	TAB: number,
	STROKE: number,
	ICON: Color3,
	TITTLE: Color3,
}

export type Controller = {
	appearance: Appearance,
	tabs: { Tab },
	selected: boolean,
	select: (self: Controller) -> (),
	applyStyle: (self: Controller, style: Style) -> (),
}

export type Tab = {
	appearance: Appearance,
	controller: Controller,
	section: ScrollingFrame,
	flags: flagTypes.Flags,
	select: (self: Tab) -> (),
	createLabel: (self: Tab, title: string) -> labelTypes.Label,
	createButton: (self: Tab, config: buttonTypes.Config) -> buttonTypes.Button,
	createSwitch: (self: Tab, config: switchTypes.Config) -> switchTypes.Switch,
	createSlider: (self: Tab, config: sliderTypes.Config) -> sliderTypes.Slider,
}

return nil
