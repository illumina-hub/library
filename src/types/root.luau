--!strict

export type View = {
	illumina: ScreenGui,
	container: Frame,
	corner: UICorner,
	header: Frame,
	minimize: TextButton,
	expand: TextButton,
	close: TextButton,
	tabs: ScrollingFrame,
	sections: Frame,
}

export type Props = {
	product: string,
	destroyed: () -> (),
}

return nil
