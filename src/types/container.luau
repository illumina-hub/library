--!strict

local dragTypes = require("@types/drag")

type Root = {
	screen: ScreenGui,
	container: Frame,
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
	minimize: (self: Controller) -> (),
	fullscreen: (self: Controller) -> (),
	destroy: (self: Controller) -> (),
}

export type Container = {
	appearance: Appearance,
	controller: Controller,
	dragController: dragTypes.Controller,
}

return nil
