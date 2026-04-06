--!strict

local componentTypes = require("@types/component")
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

export type Appearance = componentTypes.Appearance & {
	component: Frame,
	value: TextLabel,
	track: { frame: Frame, fill: Frame, circle: Frame, hitbox: TextButton },
}

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
	onInputBegan: (self: Controller, inputObject: InputObject) -> (),
	onInputChanged: (self: Controller, inputObject: InputObject) -> (),
	onInputEnded: (self: Controller, inputObject: InputObject) -> (),
	updateFromInput: (self: Controller, inputObject: InputObject) -> (),
	applyTrack: (self: Controller, percentage: number) -> (),
}

export type Slider = {
	appearance: Appearance,
	controller: Controller,
	changeValue: (self: Slider, value: number) -> (),
}

return nil
