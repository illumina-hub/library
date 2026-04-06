--!strict

local Signal = require("@managers/signal")
local containerTypes = require("@types/container")

return function(appearance: containerTypes.Appearance, controller: containerTypes.Controller, onDestroyed: (() -> ())?)
	local header = appearance.header
	local minimize = Signal.new()
	local fullscreen = Signal.new()
	local close = Signal.new()
	local destroy = Signal.new()

	minimize:connect(header.minimize.MouseButton1Click, function()
		controller:minimize()
	end)

	fullscreen:connect(header.fullscreen.MouseButton1Click, function()
		controller:fullscreen()
	end)

	close:connect(header.close.MouseButton1Click, function()
		controller:destroy()
	end)

	destroy:connect(appearance.root.screen.AncestryChanged, function()
		Signal.clear()

		if onDestroyed then
			onDestroyed()
		end
	end)
end
