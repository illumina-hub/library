--!strict

export type View = {
	switch: TextButton,
	title: TextLabel,
	description: {
		frame: Frame,
		text: TextLabel,
	},
}

export type Style = {
	THUMB_COLOR: Color3,
	CIRCLE_COLOR: Color3,
	CIRCLE_POSITION: UDim2,
	CIRCLE_ANCHOR_POINT: Vector2,
}

export type Props = {
	flag: string,
	title: string,
	description: string,
	enabled: boolean?,
	changed: ((state: boolean) -> ())?,
}

return nil
