type Function = (...any) -> ...any

declare function isfile(path: string): boolean
declare function isfolder(path: string): boolean
declare function makefolder(path: string): ()
declare function readfile(path: string): string
declare function writefile(path: string, data: string): ()

declare function cloneref(object: Instance): Instance
declare function gethui(): BasePlayerGui | Folder
declare function loadstring(source: string, chunk: string?): (Function, string)