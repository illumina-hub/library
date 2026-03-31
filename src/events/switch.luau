--!strict

local switchTypes = require("@types/switch")

local Signal = require("@managers/signal")

return function(appearance: switchTypes.Appearance, controller: switchTypes.Controller)
	local click = Signal.new()

	click:connect(appearance.switch.MouseButton1Click, function()
		controller:changeState()
	end)
end
