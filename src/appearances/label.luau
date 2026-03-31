--!strict

return function(title: string, section: ScrollingFrame)
	local label = Instance.new("TextLabel")
	label.Name = "Label"
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.BackgroundTransparency = 1
	label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	label.BorderSizePixel = 0
	label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	label.Size = UDim2.new(1, 0, 0, 20)
	label.Text = title
	label.TextColor3 = Color3.fromRGB(207, 207, 207)
	label.TextSize = 16
	label.TextTruncate = Enum.TextTruncate.SplitWord
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = section

	return label
end
