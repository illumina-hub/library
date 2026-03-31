--!strict

export type Flags = {
	path: string,
	flags: { [string]: any },
	getFlag: (self: Flags, name: string, defaultType: string) -> any,
	setFlag: (self: Flags, name: string, value: any) -> (),
}

return nil
