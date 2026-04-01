--!strict

local Signal = require("@managers/signal")
local sliderTypes = require("@types/slider")

return function(appearance: sliderTypes.Appearance, controller: sliderTypes.Controller)
	local inputBegan = Signal.new()
	local inputEnded = Signal.new()

	inputBegan:connect(appearance.track.hitbox.InputBegan, function(input: InputObject)
		controller:onInputBegan(input)
	end)

	inputEnded:connect(appearance.track.hitbox.InputEnded, function(input: InputObject)
		controller:onInputEnded(input)
	end)
end
