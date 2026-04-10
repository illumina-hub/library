set shell := ["powershell", "-c"]

release *FILE:
    darklua process src/init.luau build/release.luau -c build/release.json
    Get-Content build/release.luau | Set-Clipboard

debug *FILE:
    darklua process src/init.luau build/debug.luau -c build/debug.json
    Get-Content build/debug.luau | Set-Clipboard