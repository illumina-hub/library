--!strict

local Signal = require("@managers/signal")
local switchTypes = require("@types/switch")

return function(appearance: switchTypes.Appearance, controller: switchTypes.Controller)
	local click = Signal.new()

	click:connect(appearance.component.MouseButton1Click, function()
		controller:changeState()
	end)
end
