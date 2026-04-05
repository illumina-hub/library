--!strict

local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Signal = require("@managers/signal")
local containerStyle = require("@styles/container")
local dragTypes = require("@types/drag")
local inputs = require("@enums/inputs")

local currentCamera = workspace.CurrentCamera

local Drag = {}
Drag.__index = Drag

function Drag.new(): dragTypes.Controller
	local self = setmetatable({}, Drag)
	self.dragging = false
	self.permission = true
	self.startInput = nil
	self.startVector = nil
	self.lastPosition = nil
	self.inputChanged = Signal.new()

	return self :: any
end

function Drag.resetState(self: dragTypes.Controller)
	self.dragging = false
	self.startInput = nil
	self.startVector = nil
	self.inputChanged:disconnect()
end

function Drag.setPermission(self: dragTypes.Controller, state: boolean)
	self.permission = state

	if not state then
		self:resetState()
	end
end

function Drag.getLastPosition(self: dragTypes.Controller)
	return self.lastPosition or containerStyle.DEF_POSITION
end

function Drag.onInputBegan(self: dragTypes.Controller, inputObject: InputObject, guiObject: GuiObject)
	if not self.permission or inputObject.UserInputType ~= inputs.MOUSE_INPUT then
		return
	end

	local inputPosition = inputObject.Position
	local guiPosition = guiObject.AbsolutePosition

	self.dragging = true
	self.startInput = inputObject
	self.startVector = Vector2.new(inputPosition.X - guiPosition.X, inputPosition.Y - guiPosition.Y)
	self.inputChanged:connect(UserInputService.InputChanged, function(inputObject: InputObject)
		self:onInputChanged(inputObject, guiObject)
	end)
end

function Drag.onInputChanged(self: dragTypes.Controller, inputObject: InputObject, guiObject: GuiObject)
	if not self.dragging or not self.permission then
		return
	end

	if not self.startInput or not self.startVector then
		return
	end

	if inputObject.UserInputState == inputs.END_INPUT or self.startInput.UserInputState == inputs.END_INPUT then
		self:resetState()
		return
	end

	if inputObject.UserInputType == inputs.MOVE_INPUT then
		self:moveObject(inputObject, guiObject)
	end
end

function Drag.onInputEnded(self: dragTypes.Controller, inputObject: InputObject)
	if inputObject.UserInputType == inputs.MOUSE_INPUT then
		self:resetState()
	end
end

function Drag.moveObject(self: dragTypes.Controller, inputObject: InputObject, guiObject: GuiObject)
	if not self.startVector then
		return
	end

	local viewportSize = currentCamera.ViewportSize
	local insetOffset = GuiService:GetGuiInset()
	local inputPosition = inputObject.Position

	local absoluteSize = guiObject.AbsoluteSize
	local anchorPoint = guiObject.AnchorPoint

	local deltaX = inputPosition.X - self.startVector.X
	local deltaY = inputPosition.Y - self.startVector.Y + insetOffset.Y

	local centerX = deltaX + (absoluteSize.X * anchorPoint.X)
	local centerY = deltaY + (absoluteSize.Y * anchorPoint.Y)

	local scaleX = centerX / viewportSize.X
	local scaleY = centerY / viewportSize.Y

	local scalePosition = UDim2.fromScale(scaleX, scaleY)

	guiObject.Position = scalePosition
	self.lastPosition = scalePosition
end

return Drag
