--!strict

local dragTypes = require("@types/drag")

type Root = {
	screen: ScreenGui,
	container: Frame,
	corner: UICorner,
}

type Header = {
	frame: Frame,
	minimize: TextButton,
	fullscreen: TextButton,
	close: TextButton,
}

type Group = {
	tabs: ScrollingFrame,
	sections: Frame,
}

export type Appearance = {
	root: Root,
	header: Header,
	group: Group,
}

export type Controller = {
	appearance: Appearance,
	drag: dragTypes.Controller,
	fullscreened: boolean,
	lastSize: UDim2,
	minimize: (self: Controller) -> (),
	fullscreen: (self: Controller) -> (),
	destroy: (self: Controller) -> (),
}

export type Container = {
	appearance: Appearance,
	controller: Controller,
}

return nil
