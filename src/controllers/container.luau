--!strict

local containerTypes = require("@types/container")
local dragTypes = require("@types/drag")

local containerStyle = require("@styles/container")
local springStyle = require("@styles/spring")

local spring = require("@utils/spring")

local Container = {}
Container.__index = Container

function Container.new(appearance: containerTypes.Appearance, drag: dragTypes.Controller): containerTypes.Controller
	local self = setmetatable({}, Container)
	self.appearance = appearance
	self.drag = drag
	self.fullscreened = false
	self.lastSize = containerStyle.DEF_SIZE

	return self :: any
end

function Container.minimize(self: containerTypes.Controller)
	local screen = self.appearance.root.screen
	screen.Enabled = not screen.Enabled
end

function Container.fullscreen(self: containerTypes.Controller, state: boolean?)
	self.fullscreened = state or not self.fullscreened
	self.drag:setPermission(not self.fullscreened)

	local root = self.appearance.root
	local position = self.fullscreened and containerStyle.DEF_POSITION or self.drag:getLastPosition()
	local size = self.fullscreened and containerStyle.MAX_SIZE or self.lastSize
	local corner = self.fullscreened and containerStyle.MIN_CORNER or containerStyle.MAX_CORNER

	spring.target(root.container, springStyle.DAMPING_RATIO, springStyle.FREQUENCY, {
		Position = position,
		Size = size,
	})

	spring.target(root.corner, springStyle.DAMPING_RATIO, springStyle.FREQUENCY, {
		CornerRadius = corner,
	})
end

function Container.destroy(self: containerTypes.Controller)
	self.appearance.root.screen:Destroy()
end

return Container
