--!strict

local containerTypes = require("@types/container")
local flagTypes = require("@types/flags")
local tabTypes = require("@types/tab")

export type Config = {
	product: string,
	onDestroyed: (() -> ())?,
}

export type Library = {
	container: containerTypes.Container,
	flags: flagTypes.Flags,
	tabs: { tabTypes.Tab },
	createTab: (self: Library, config: tabTypes.Config) -> tabTypes.Tab,
}

return nil
