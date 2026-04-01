--!strict

local flagTypes = require("@types/flags")
local signalTypes = require("@types/signal")

export type Config = {
	flag: string,
	title: string,
	description: string,
	division: number,
	value: number,
	max: number,
	min: number,
	callback: (value: number) -> (),
}

export type Appearance = {
	slider: Frame,
	title: TextLabel,
	value: TextLabel,
	track: { frame: Frame, fill: Frame, circle: Frame, hitbox: TextButton },
	description: { frame: Frame, text: TextLabel },
}

export type Style = {}

export type Controller = {
	appearance: Appearance,
	config: Config,
	flags: flagTypes.Flags,
	value: number,
	dragging: boolean,
	startInput: InputObject?,
	inputChanged: signalTypes.Signal,
	changeValue: (self: Controller, value: number, difference: boolean) -> (),
	resetState: (self: Controller) -> (),
	onInputBegan: (self: Controller, input: InputObject) -> (),
	onInputChange: (self: Controller, input: InputObject) -> (),
	onInputEnd: (self: Controller, input: InputObject) -> (),
	updateFromInput: (self: Controller, input: InputObject) -> (),
	applyTrack: (self: Controller, percentage: number) -> (),
	applySize: (self: Controller) -> (),
}

export type Slider = {
	appearance: Appearance,
	controller: Controller,
	changeValue: (self: Slider, value: number) -> (),
}

return nil
