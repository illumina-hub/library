--!strict

local Library = require("@self/init")

local TITLE = "Share across devices"
local DESCRIPTION = "Focus is shared across devices, and turns off when you leave the app."

local library = Library.new({
	product = "library",
	destroyed = function()
		print("destroyed!")
	end,
})

local preview = library:createTab({
	title = "Preview",
})

preview:createLabel("Button")

preview:createButton({
	title = TITLE,
	description = DESCRIPTION,
	activated = function()
		print("clicked!")
	end,
})

preview:createButton({
	title = TITLE,
	description = DESCRIPTION,
	activated = function()
		print("clicked!")
	end,
})

preview:createLabel("Switch")

preview:createSwitch({
	flag = "switch-1",
	title = TITLE,
	description = DESCRIPTION,
	changed = function(state: boolean)
		print(`switch-1: {state}`)
	end,
})

preview:createSwitch({
	flag = "switch-2",
	title = TITLE,
	description = DESCRIPTION,
	enabled = true,
	changed = function(state: boolean)
		print(`switch-2: {state}`)
	end,
})

preview:createLabel("Slider")

preview:createSlider({
	flag = "slider-1",
	title = TITLE,
	description = DESCRIPTION,
	division = 1,
	value = 25,
	min = 0,
	max = 100,
	changed = function(value: number)
		print(`slider-1: {value}`)
	end,
})

preview:createSlider({
	flag = "slider-2",
	title = TITLE,
	description = DESCRIPTION,
	division = 10,
	value = 75,
	min = 0,
	max = 100,
	changed = function(value: number)
		print(`slider-2: {value}`)
	end,
})

library:createTab({
	title = "Preview",
})
