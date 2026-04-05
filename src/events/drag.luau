--!strict

local Signal = require("@managers/signal")
local dragTypes = require("@types/drag")

return function(root: GuiObject, target: GuiObject, controller: dragTypes.Controller)
	local inputBegan = Signal.new()
	local inputEnded = Signal.new()

	inputBegan:connect(target.InputBegan, function(inputObject: InputObject)
		controller:onInputBegan(inputObject, root)
	end)

	inputEnded:connect(target.InputEnded, function(inputObject: InputObject)
		controller:onInputEnded(inputObject)
	end)
end
