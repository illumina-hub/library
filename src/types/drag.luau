--!strict

local signalTypes = require("@types/signal")

export type Controller = {
	dragging: boolean,
	permission: boolean,
	startInput: InputObject?,
	startVector: Vector2?,
	lastPosition: UDim2?,
	inputChanged: signalTypes.Signal,
	resetState: (self: Controller) -> (),
	setPermission: (self: Controller, state: boolean) -> (),
	getLastPosition: (self: Controller) -> UDim2,
	onInputBegan: (self: Controller, inputObject: InputObject, guiObject: GuiObject) -> (),
	onInputChanged: (self: Controller, inputObject: InputObject, guiObject: GuiObject) -> (),
	onInputEnded: (self: Controller, inputObject: InputObject) -> (),
	moveObject: (self: Controller, inputObject: InputObject, guiObject: GuiObject) -> (),
}

return nil
