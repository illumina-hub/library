--!strict

local componentTypes = require("@types/component")
local flagTypes = require("@types/flags")

export type Config = {
	flag: string,
	title: string,
	description: string,
	enabled: boolean?,
	callback: (state: boolean) -> (),
}

export type Appearance = componentTypes.Appearance & {
	component: TextButton,
	thumb: { frame: Frame, circle: Frame },
}

export type Style = {
	THUMB: Color3,
	CIRCLE: Color3,
	POSITION: UDim2,
	ANCHOR_POINT: Vector2,
}

export type Controller = {
	appearance: Appearance,
	config: Config,
	flags: flagTypes.Flags,
	enabled: boolean,
	changeState: (self: Controller, state: boolean?) -> (),
	applyStyle: (self: Controller, style: Style) -> (),
}

export type Switch = {
	appearance: Appearance,
	controller: Controller,
	changeState: (self: Switch, state: boolean) -> (),
}

return nil
