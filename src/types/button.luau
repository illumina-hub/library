--!strict

export type View = {
	button: TextButton,
	title: TextLabel,
	description: {
		frame: Frame,
		text: TextLabel,
	},
}

export type Style = {
	BUTTON_COLOR: Color3,
}

export type Props = {
	title: string,
	description: string,
	activated: (() -> ())?,
}

return nil
