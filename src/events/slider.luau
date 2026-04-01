--!strict

local Signal = require("@managers/signal")
local sliderTypes = require("@types/slider")

return function(appearance: sliderTypes.Appearance, controller: sliderTypes.Controller)
	local dragStart = Signal.new()
	local dragEnd = Signal.new()

	dragStart:connect(appearance.track.hitbox.InputBegan, function(input: InputObject)
		controller:onInputBegan(input)
	end)

	dragEnd:connect(appearance.track.hitbox.InputEnded, function(input: InputObject)
		controller:onInputEnd(input)
	end)
end
