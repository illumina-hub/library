--!strict

local createGroup = require("@self/group")
local createHeader = require("@self/header")
local createRoot = require("@self/root")

return function()
	local root = createRoot()
	local header = createHeader(root.container)
	local group = createGroup(root.container)

	return {
		root = root,
		header = header,
		group = group,
	}
end
