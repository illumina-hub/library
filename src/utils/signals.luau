--!strict

local connections: { RBXScriptConnection } = {}

local function new(signal: RBXScriptSignal, callback: (...any) -> ...any)
	local connection = signal:Connect(callback)
	table.insert(connections, connection)

	return function()
		local index = table.find(connections, connection)

		if index then
			table.remove(connections, index)
		end

		connection:Disconnect()
	end
end

local function clear()
	for _, connection in connections do
		connection:Disconnect()
	end

	table.clear(connections)
end

return {
	new = new,
	clear = clear,
}
