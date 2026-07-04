-- Memory diagnostics and transient-cache cleanup for ATT.
local appName, app = ...

local collectgarbage, pcall, type = collectgarbage, pcall, type
local GetAddOnMemoryUsage, UpdateAddOnMemoryUsage = GetAddOnMemoryUsage, UpdateAddOnMemoryUsage

app.DesignateImmediateEvent("OnMemoryCleanup")

local function GetMemoryKB()
	if UpdateAddOnMemoryUsage and GetAddOnMemoryUsage then
		UpdateAddOnMemoryUsage()
		local value = GetAddOnMemoryUsage(appName)
		if type(value) == "number" then return value end
	end
	if collectgarbage then
		local ok, value = pcall(collectgarbage, "count")
		if ok and type(value) == "number" then return value end
	end
end

local function FormatMemory(kb)
	if not kb then return "unavailable" end
	return ("%.1f MB"):format(kb / 1024)
end

local function CollectMemory()
	if not collectgarbage then return end
	pcall(collectgarbage, "collect")
	pcall(collectgarbage, "collect")
end

app.ChatCommands.Add({ "memory", "mem" }, function(args)
	local before = GetMemoryKB()
	local operation = args and args[1] and args[1]:lower()
	if operation == "clean" or operation == "cleanup" or operation == "gc" then
		app.HandleEvent("OnMemoryCleanup")
		CollectMemory()
		local after = GetMemoryKB()
		app.print("Memory cleanup:", FormatMemory(before), "->", FormatMemory(after))
		if before and after then
			local released = before - after
			app.print("Transient memory released:", FormatMemory(released > 0 and released or 0))
		end
	else
		app.print("Current ATT memory:", FormatMemory(before))
		app.print("Use /att memory clean to release transient search, symlink, map, upgrade, and appearance caches.")
	end
	return true
end, {
	"Usage : /att memory [clean]",
	"Reports ATT memory usage. Add 'clean' to release reconstructible transient caches and request Lua garbage collection.",
})
