--!strict

local componentTypes = require("@types/component")

export type Config = {
	title: string,
	description: string,
	callback: () -> (),
}

export type Appearance = componentTypes.Appearance & {
	component: TextButton,
}

export type Style = {
	BUTTON: Color3,
}

export type Controller = {
	appearance: Appearance,
	config: Config,
	activate: (self: Controller) -> (),
	applyStyle: (self: Controller, style: Style) -> (),
}

export type Button = {
	appearance: Appearance,
	controller: Controller,
}

return nil
