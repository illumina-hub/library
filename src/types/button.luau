--!strict

export type Config = {
	title: string,
	description: string,
	callback: () -> (),
}

export type Appearance = {
	button: TextButton,
	title: TextLabel,
	description: { frame: Frame, text: TextLabel },
}

export type Style = {
	BUTTON: Color3,
}

export type Controller = {
	appearance: Appearance,
	config: Config,
	activate: (self: Controller) -> (),
	applySize: (self: Controller) -> (),
	applyStyle: (self: Controller, style: Style) -> (),
}

export type Button = {
	appearance: Appearance,
	controller: Controller,
}

return nil
