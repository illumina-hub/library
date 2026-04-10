--!strict

export type View = {
	tab: TextButton,
	stroke: UIStroke,
	title: TextLabel,
	icon: ImageLabel,
}

export type Style = {
	TAB_TRANSPARENCY: number,
	STROKE_TRANSPARENCY: number,
	ICON_COLOR: Color3,
	TEXT_COLOR: Color3,
}

export type Props = {
	title: string,
	icon: string?,
}

return nil
