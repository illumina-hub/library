--!strict

export type Signal = {
	connection: RBXScriptConnection?,
	isConnected: (self: Signal) -> boolean,
	connect: (self: Signal, signal: RBXScriptSignal, callback: (...any) -> ...any) -> (),
	disconnect: (self: Signal) -> (),
	clear: () -> (),
}

return nil
