--!strict

local Library = require("@self/init")

local library = Library.new({
	product = "library",
	onDestroyed = function()
		print("library has been destroyed")
	end,
})

local preview = library:createTab({
	title = "Preview",
})

preview:createLabel("Button")

preview:createButton({
	title = "Share across devices",
	description = "Focus is shared across devices, and turns off when you leave the app.",
	callback = function()
		print("button has been pressed")
	end,
})

preview:createButton({
	title = "Local state persistence",
	description = "Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.",
	callback = function()
		print("button has been pressed")
	end,
})

preview:createLabel("Switch")

preview:createSwitch({
	flag = "switch-1",
	title = "Share across devices",
	description = "Focus is shared across devices, and turns off when you leave the app.",
	enabled = false,
	callback = function(state: boolean)
		print(`switch-1: {state}`)
	end,
})

preview:createSwitch({
	flag = "switch-2",
	title = "Local state persistence",
	description = "Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.",
	enabled = true,
	callback = function(state: boolean)
		print(`switch-2: {state}`)
	end,
})

preview:createLabel("Slider")

preview:createSlider({
	flag = "slider-1",
	title = "Share across devices",
	description = "Focus is shared across devices, and turns off when you leave the app.",
	division = 1,
	value = 75,
	min = 0,
	max = 100,
	callback = function(value: number)
		print(`slider-1: {value}`)
	end,
})

preview:createSlider({
	flag = "slider-2",
	title = "Local state persistence",
	description = "Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.",
	division = 10,
	value = 25,
	min = 0,
	max = 100,
	callback = function(value: number)
		print(`slider-2: {value}`)
	end,
})

library:createTab({
	title = "Preview",
})
