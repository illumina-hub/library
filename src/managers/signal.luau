--!strict

local signalTypes = require("@types/signal")

local connections: { RBXScriptConnection } = {}

local Signal = {}
Signal.__index = Signal

function Signal.new(): signalTypes.Signal
	local self = setmetatable({}, Signal)
	self.connection = nil

	return self :: any
end

function Signal.connect(self: signalTypes.Signal, signal: RBXScriptSignal, callback: (...any) -> ...any)
	if self.connection then
		return
	end

	local connection = signal:Connect(callback)
	self.connection = connection
	table.insert(connections, connection)
end

function Signal.disconnect(self: signalTypes.Signal)
	if not self.connection then
		return
	end

	local index = table.find(connections, self.connection)

	if index then
		self.connection:Disconnect()
		self.connection = nil

		table.remove(connections, index)
	end
end

function Signal.clear()
	for index, connection in connections do
		connection:Disconnect()
		connections[index] = nil
	end
end

return Signal
