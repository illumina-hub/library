--!strict

local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local inputs = require("@shared/inputs")
local rootStyles = require("@components/root/styles")
local signals = require("@utils/signals")

local currentCamera = workspace.CurrentCamera

local Drag = {}
Drag.__index = Drag

export type Drag = setmetatable<{
	_dragging: boolean,
	_permission: boolean,
	_startInput: InputObject?,
	_startVector: Vector2?,
	_lastPosition: UDim2?,
	_inputChanged: (() -> ())?,
}, typeof(Drag)>

function Drag.new(root: GuiObject, target: GuiObject)
	local self = setmetatable({
		_dragging = false,
		_permission = true,
		_startInput = nil,
		_startVector = nil,
		_lastPosition = nil,
		_inputChanged = nil,
	}, Drag) :: Drag

	signals.new(target.InputBegan, function(inputObject: InputObject)
		self:_onInputBegan(inputObject, root)
	end)

	signals.new(target.InputEnded, function(inputObject: InputObject)
		self:_onInputEnded(inputObject)
	end)

	return self
end

function Drag._resetState(self: Drag)
	self._dragging = false
	self._startInput = nil
	self._startVector = nil

	if self._inputChanged then
		self._inputChanged()
	end
end

function Drag.setPermission(self: Drag, state: boolean)
	self._permission = state

	if not state then
		self:_resetState()
	end
end

function Drag.getLastPosition(self: Drag)
	return self._lastPosition or rootStyles.DEF_POSITION
end

function Drag._onInputBegan(self: Drag, inputObject: InputObject, guiObject: GuiObject)
	if not self._permission or inputObject.UserInputType ~= inputs.MOUSE_INPUT then
		return
	end

	local inputPosition = inputObject.Position
	local guiPosition = guiObject.AbsolutePosition

	self._dragging = true
	self._startInput = inputObject
	self._startVector = Vector2.new(inputPosition.X - guiPosition.X, inputPosition.Y - guiPosition.Y)
	self._inputChanged = signals.new(UserInputService.InputChanged, function(inputObject: InputObject)
		self:_onInputChanged(inputObject, guiObject)
	end)
end

function Drag._onInputChanged(self: Drag, inputObject: InputObject, guiObject: GuiObject)
	if not self._dragging or not self._permission then
		return
	end

	if not self._startInput or not self._startVector then
		return
	end

	if inputObject.UserInputState == inputs.END_INPUT or self._startInput.UserInputState == inputs.END_INPUT then
		self:_resetState()
		return
	end

	if inputObject.UserInputType == inputs.MOVE_INPUT then
		self:_moveObject(inputObject, guiObject)
	end
end

function Drag._onInputEnded(self: Drag, inputObject: InputObject)
	if inputObject.UserInputType == inputs.MOUSE_INPUT then
		self:_resetState()
	end
end

function Drag._moveObject(self: Drag, inputObject: InputObject, guiObject: GuiObject)
	if not self._startVector then
		return
	end

	local viewportSize = currentCamera.ViewportSize
	local insetOffset = GuiService:GetGuiInset()
	local inputPosition = inputObject.Position

	local absoluteSize = guiObject.AbsoluteSize
	local anchorPoint = guiObject.AnchorPoint

	local deltaX = inputPosition.X - self._startVector.X
	local deltaY = inputPosition.Y - self._startVector.Y + insetOffset.Y

	local centerX = deltaX + (absoluteSize.X * anchorPoint.X)
	local centerY = deltaY + (absoluteSize.Y * anchorPoint.Y)

	local scaleX = centerX / viewportSize.X
	local scaleY = centerY / viewportSize.Y

	local scalePosition = UDim2.fromScale(scaleX, scaleY)

	guiObject.Position = scalePosition
	self._lastPosition = scalePosition
end

return Drag
