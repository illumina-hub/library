--!strict

local componentTypes = require("@types/component")

export type Appearance = componentTypes.Appearance & {
	component: Frame | TextButton,
	[any]: any,
}

return nil
