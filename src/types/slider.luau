--!strict

export type View = {
	slider: Frame,
	title: TextLabel,
	value: TextLabel,
	track: {
		frame: Frame,
		fill: Frame,
		circle: Frame,
		hitbox: TextButton,
	},
	description: {
		frame: Frame,
		text: TextLabel,
	},
}

export type Props = {
	flag: string,
	title: string,
	description: string,
	division: number,
	value: number,
	min: number,
	max: number,
	changed: ((value: number) -> ())?,
}

return nil
