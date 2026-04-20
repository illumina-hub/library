--!strict

local file = require("@utils/file")

local ROOT_PATH = "illumina"
local PRODUCTS_PATH = `{ROOT_PATH}/products`
local FILE_TYPE = "json"

local Flags = {}
Flags.__index = Flags

export type Flags = setmetatable<{
	_path: string,
	_flags: { [string]: any },
}, typeof(Flags)>

function Flags.new(product: string)
	local path = `{PRODUCTS_PATH}/{product}.{FILE_TYPE}`
	file.ensureFolderExists(ROOT_PATH)

	local self: Flags = setmetatable({
		_path = path,
		_flags = file.getContent(path),
	}, Flags)

	return self
end

function Flags.getFlag(self: Flags, name: string, defaultType: string): any
	local flag = self._flags[name]

	if flag ~= nil and typeof(flag) == defaultType then
		return flag
	end

	return nil
end

function Flags.setFlag(self: Flags, name: string, value: any)
	self._flags[name] = value
	file.writeData(self._path, self._flags)
end

return Flags
