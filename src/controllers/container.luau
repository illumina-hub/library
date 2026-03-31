--!strict

local containerTypes = require("@types/container")

local Container = {}
Container.__index = Container

function Container.new(appearance: containerTypes.Appearance): containerTypes.Controller
	local self = setmetatable({}, Container)
	self.appearance = appearance

	return self :: any
end

function Container.minimize(self: containerTypes.Controller)
	local screen = self.appearance.root.screen
	screen.Enabled = not screen.Enabled
end

function Container.fullscreen(self: containerTypes.Controller) end

function Container.destroy(self: containerTypes.Controller)
	self.appearance.root.screen:Destroy()
end

return Container
