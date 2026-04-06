--!strict

local Signal = require("@managers/signal")
local scale = require("@utils/scale")
local scaleTypes = require("@types/scale")

return function(appearance: scaleTypes.Appearance)
	local sizeChanged = Signal.new()

	sizeChanged:connect(appearance.component:GetPropertyChangedSignal("AbsoluteSize"), function()
		scale.scaleComponent(appearance)
	end)
end
