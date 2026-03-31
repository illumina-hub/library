--!strict

local buttonTypes = require("@types/button")
local labelTypes = require("@types/label")
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
	select: (self: Tab) -> (),
	createLabel: (self: Tab, title: string) -> labelTypes.Label,
	createButton: (self: Tab, config: buttonTypes.Config) -> buttonTypes.Button,
	createSwitch: (self: Tab, config: switchTypes.Config) -> switchTypes.Switch,
}

return nil
