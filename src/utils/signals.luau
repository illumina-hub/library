--!strict

local connections: { RBXScriptConnection } = {}

local function new()
	local _connection: RBXScriptConnection? = nil

	local function disconnect()
		if not _connection then
			return
		end

		local index = table.find(connections, _connection)

		if index then
			table.remove(connections, index)
		end

		_connection:Disconnect()
		_connection = nil
	end

	local function connect(signal: RBXScriptSignal, callback: (...any) -> ...any): (() -> ())?
		if _connection then
			return nil
		end

		local connection = signal:Connect(callback)
		_connection = connection

		table.insert(connections, connection)

		return disconnect
	end

	return { connect = connect }
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
