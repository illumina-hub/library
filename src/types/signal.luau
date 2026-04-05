--!strict

export type Signal = {
	connection: RBXScriptConnection?,
	connect: (self: Signal, signal: RBXScriptSignal, callback: (...any) -> ...any) -> (),
	disconnect: (self: Signal) -> (),
	clear: () -> (),
}

return nil
