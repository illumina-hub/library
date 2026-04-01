--!strict

local file = require("@utils/file")
local flagsTypes = require("@types/flags")

local ROOT_PATH = "illumina"
local PRODUCTS_PATH = `{ROOT_PATH}/products`
local FILE_TYPE = "json"

local Flags = {}
Flags.__index = Flags

function Flags.new(product: string): flagsTypes.Flags
	local path = `{PRODUCTS_PATH}/{product}.{FILE_TYPE}`
	file.ensureFolderExists(ROOT_PATH)

	local self = setmetatable({}, Flags)
	self.path = path
	self.flags = file.getContent(path)

	return self :: any
end

function Flags.getFlag(self: flagsTypes.Flags, name: string, defaultType: string)
	local flag = self.flags[name]

	if flag ~= nil and typeof(flag) == defaultType or not defaultType then
		return flag
	end

	return nil
end

function Flags.setFlag(self: flagsTypes.Flags, name: string, value: string)
	self.flags[name] = value
	file.writeData(self.path, self.flags)
end

return Flags
