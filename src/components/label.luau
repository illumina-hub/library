--!strict

local labelTypes = require("@types/label")

local appearances = require("@appearances")

local Label = {}
Label.__index = Label

function Label.new(title: string, section: ScrollingFrame): labelTypes.Label
	local self = setmetatable({}, Label)
	self.appearance = appearances.label(title, section)

	return self :: any
end

return Label
