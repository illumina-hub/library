--!strict

local HttpService = game:GetService("HttpService")

local function ensureFolderExists(path: string)
	if not isfolder(path) then
		makefolder(path)
	end
end

function getFileContent(path: string): any
	if not isfile(path) then
		return {}
	end

	local file = readfile(path)
	local success, content = pcall(function()
		return HttpService:JSONDecode(file)
	end)

	if not success then
		return {}
	end

	return content
end

local function writeFileData(path: string, data: any)
	local success, content = pcall(function()
		return HttpService:JSONEncode(data)
	end)

	if success then
		writefile(path, content)
	end
end

return {
	ensureFolderExists = ensureFolderExists,
	getFileContent = getFileContent,
	writeFileData = writeFileData,
}
