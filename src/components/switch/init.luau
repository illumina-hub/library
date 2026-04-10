--!strict

local switchTypes = require("@types/switch")

local Switch = {}
Switch.__index = Switch

export type Switch = setmetatable<{
	view: nil,
}, typeof(Switch)>

function Switch.new(props: switchTypes.Props, section: ScrollingFrame): Switch
	local self = {
		view = nil,
	} :: Switch

	return setmetatable(self, Switch)
end

return Switch
