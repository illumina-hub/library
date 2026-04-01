--!strict

local flagTypes = require("@types/flags")

export type Config = {
	flag: string,
	title: string,
	description: string,
	enabled: boolean?,
	callback: (state: boolean) -> (),
}

export type Appearance = {
	switch: TextButton,
	title: TextLabel,
	thumb: { frame: Frame, circle: Frame },
	description: { frame: Frame, text: TextLabel },
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
	applySize: (self: Controller) -> (),
	applyStyle: (self: Controller, style: Style) -> (),
}

export type Switch = {
	appearance: Appearance,
	controller: Controller,
	changeState: (self: Switch, state: boolean) -> (),
}

return nil
