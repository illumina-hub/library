--!strict

local rootStyles = require("@self/styles")
local rootTypes = require("@types/root")
local rootView = require("@self/view")

local signals = require("@utils/signals")
local spring = require("@utils/spring")

local motions = require("@shared/motions")

local DAMPING_RATIO = motions.ROOT.DAMPING_RATIO
local FREQUENCY = motions.ROOT.FREQUENCY

local Root = {}
Root.__index = Root

export type Root = setmetatable<{
	view: rootTypes.View,
	_expanded: boolean,
	_lastSize: UDim2,
}, typeof(Root)>

function Root.new(props: rootTypes.Props): Root
	local self = {
		view = rootView(props),
		_expanded = false,
		_lastSize = rootStyles.DEF_SIZE,
	} :: Root

	signals.new().connect(self.view.minimize.MouseButton1Click, function()
		self:_minimize()
	end)

	signals.new().connect(self.view.expand.MouseButton1Click, function()
		self:_expand()
	end)

	signals.new().connect(self.view.close.MouseButton1Click, function()
		self:_destroy()
	end)

	signals.new().connect(self.view.illumina.AncestryChanged, function()
		if not self.view.illumina.Parent then
			signals.clear()
			props.destroyed()
		end
	end)

	return setmetatable(self, Root)
end

function Root._minimize(self: Root)
	self.view.illumina.Enabled = not self.view.illumina.Enabled
end

function Root._expand(self: Root, state: boolean?)
	self._expanded = if state ~= nil then state else not self._expanded
	-- self.drag:setPermission(not self._expanded)

	local position = self._expanded and rootStyles.DEF_POSITION or rootStyles.DEF_POSITION -- or self.drag:getLastPosition()
	local size = self._expanded and rootStyles.MAX_SIZE or self._lastSize
	local corner = self._expanded and rootStyles.MIN_CORNER or rootStyles.MAX_CORNER

	spring.target(self.view.container, DAMPING_RATIO, FREQUENCY, {
		Position = position,
		Size = size,
	})

	spring.target(self.view.corner, DAMPING_RATIO, FREQUENCY, {
		CornerRadius = corner,
	})
end

function Root._destroy(self: Root)
	self.view.illumina:Destroy()
end

return Root
