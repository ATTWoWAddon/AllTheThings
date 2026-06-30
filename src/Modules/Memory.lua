-- Memory diagnostics, delayed cleanup, automatic zone maintenance, and search-index maintenance for ATT.
local appName, app = ...

local collectgarbage, pcall, type, pairs = collectgarbage, pcall, type, pairs
local sort = table.sort
local GetAddOnMemoryUsage, UpdateAddOnMemoryUsage = GetAddOnMemoryUsage, UpdateAddOnMemoryUsage
local After = C_Timer and C_Timer.After
local InCombatLockdown = InCombatLockdown

app.DesignateImmediateEvent("OnMemoryCleanup")

local ZONE_CLEANUP_DELAY = 12
local SECOND_STARTUP_CLEANUP_DELAY = 60
local COMBAT_RETRY_DELAY = 10
local ZONE_MEMORY_THRESHOLD_KB = 30 * 1024
local DETAIL_DEFAULT_LIMIT = 15
local GC_STEP_SIZE = 4096
local GC_MAX_STEPS = 180

local startupCleanupScheduled, startupCleanupComplete, secondStartupCleanupScheduled
local zoneCleanupGeneration = 0
local lastZoneMapID
local lastZoneCleanup
local lastCleanMemoryKB
local lastIndexMaintenanceGeneration = -1
local incrementalGCRunning, incrementalGCSteps = false, 0
local incrementalGCCompletions = {}

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

local function CollectMemoryFull()
	if not collectgarbage then return end
	local started = app.ProfileStartTimer and app.ProfileStartTimer()
	pcall(collectgarbage, "collect")
	pcall(collectgarbage, "collect")
	if app.ProfileStopTimer then app.ProfileStopTimer("Memory.FullGC", started) end
end

local function FinishIncrementalGC()
	incrementalGCRunning = false
	local completions = incrementalGCCompletions
	incrementalGCCompletions = {}
	for i=1,#completions do completions[i]() end
end

local function RunIncrementalGCStep()
	if not incrementalGCRunning then return end
	local started = app.ProfileStartTimer and app.ProfileStartTimer()
	local ok, complete = pcall(collectgarbage, "step", GC_STEP_SIZE)
	if app.ProfileStopTimer then app.ProfileStopTimer("Memory.IncrementalGCStep", started) end
	incrementalGCSteps = incrementalGCSteps + 1
	if not ok then
		CollectMemoryFull()
		FinishIncrementalGC()
		return
	end
	if complete or incrementalGCSteps >= GC_MAX_STEPS then
		FinishIncrementalGC()
	elseif After then
		After(0, RunIncrementalGCStep)
	else
		CollectMemoryFull()
		FinishIncrementalGC()
	end
end

-- Automatic maintenance uses bounded GC work over multiple frames to avoid a large
-- zone/login hitch. Multiple cleanups share the active cycle and each receives completion.
local function CollectMemoryIncremental(onComplete)
	if onComplete then incrementalGCCompletions[#incrementalGCCompletions + 1] = onComplete end
	if incrementalGCRunning then return end
	if not collectgarbage then
		FinishIncrementalGC()
		return
	end
	incrementalGCRunning = true
	incrementalGCSteps = 0
	if After then After(0, RunIncrementalGCStep) else RunIncrementalGCStep() end
end

local function RunCacheCleanupEvent()
	local started = app.ProfileStartTimer and app.ProfileStartTimer()
	app.HandleEvent("OnMemoryCleanup")
	if app.ProfileStopTimer then app.ProfileStopTimer("Memory.ClearTransientCaches", started) end
end

local function GetIndexGeneration()
	local getGeneration = app.GetSearchIndexGeneration
	return getGeneration and getGeneration() or 0
end

local function CleanSearchIndex(force)
	local generation = GetIndexGeneration()
	if not force and generation == lastIndexMaintenanceGeneration then
		return { 0, 0, 0, 0, 0, 0 }, false
	end
	local clean = app.CleanSearchIndex
	local stats = clean and { clean() } or { 0, 0, 0, 0, 0, 0 }
	lastIndexMaintenanceGeneration = GetIndexGeneration()
	return stats, true
end

local function PrintIndexCleanup(stats, prefix)
	if not stats then return end
	app.print(prefix or "Search index cleanup:", stats[1] or 0, "keys and", stats[2] or 0,
		"references scanned;", stats[3] or 0, "keys and", stats[4] or 0,
		"duplicate/invalid references removed;", stats[5] or 0, "lists demoted;",
		stats[6] or 0, "empty field containers removed.")
end

local function PrintCacheStats()
	local GetCacheMemoryStats = app.GetCacheMemoryStats
	if not GetCacheMemoryStats then return end
	local fields, keys, singletons, lists, references = GetCacheMemoryStats()
	app.print("Compact search index:", keys, "keys;", singletons, "singletons;", lists, "shared-key arrays;", references, "object references across", fields, "fields.")
	local GetClassCacheMemoryStats = app.GetClassCacheMemoryStats
	if GetClassCacheMemoryStats then
		local caches, entries, empty = GetClassCacheMemoryStats()
		app.print("Class property caches:", caches, "caches;", entries, "ID entries;", empty, "empty entries.")
	end
	if lastCleanMemoryKB then
		app.print("Automatic-clean baseline:", FormatMemory(lastCleanMemoryKB), "; zone cleanup threshold:", FormatMemory(ZONE_MEMORY_THRESHOLD_KB), "above baseline.")
	end
	if lastZoneCleanup then
		if lastZoneCleanup.skipped then
			app.print("Last zone auto-clean: skipped on map", lastZoneCleanup.mapID or 0,
				"at", FormatMemory(lastZoneCleanup.before), "(", FormatMemory(lastZoneCleanup.increase or 0), "above baseline; index unchanged).")
		else
			app.print("Last zone auto-clean:", FormatMemory(lastZoneCleanup.before), "->", FormatMemory(lastZoneCleanup.after),
				"on map", lastZoneCleanup.mapID or 0, ";", lastZoneCleanup.removedReferences or 0,
				"index references removed; transient cleanup", lastZoneCleanup.cleanedMemory and "ran." or "was not needed.")
		end
	end
end

local function PrintMemoryDetail(showAll)
	app.print("Memory detail uses entry/reference counts; Lua does not expose exact bytes per individual table.")

	local getIndexDetails = app.GetCacheMemoryDetailStats
	if getIndexDetails then
		local details = getIndexDetails()
		sort(details, function(a, b)
			if a.references == b.references then
				if a.keys == b.keys then return tostring(a.field) < tostring(b.field) end
				return a.keys > b.keys
			end
			return a.references > b.references
		end)
		local limit = showAll and #details or math.min(DETAIL_DEFAULT_LIMIT, #details)
		app.print("Search-index fields:", limit, "shown of", #details, "sorted by retained references.")
		for i=1,limit do
			local d = details[i]
			app.print(("  %s.%s: %d keys; %d refs; %d singleton; %d shared arrays"):format(
				tostring(d.cache), tostring(d.field), d.keys or 0, d.references or 0,
				d.singletons or 0, d.lists or 0))
		end
		if not showAll and #details > limit then
			app.print("Use /att memory detail all to show every indexed field.")
		end
	end

	local getClassDetails = app.GetClassCacheMemoryDetailStats
	if getClassDetails then
		local details = getClassDetails()
		sort(details, function(a, b)
			if a.entries == b.entries then return tostring(a.name) < tostring(b.name) end
			return a.entries > b.entries
		end)
		app.print("Class-property caches:", #details, "caches.")
		for i=1,#details do
			local d = details[i]
			app.print(("  %s: %d IDs; %d cached fields; %d empty"):format(
				tostring(d.name), d.entries or 0, d.fields or 0, d.empty or 0))
		end
	end

	local getProviders = app.GetRegisteredMemoryCacheStats
	local providers = getProviders and getProviders()
	if providers then
		local names = {}
		for name in pairs(providers) do names[#names + 1] = name end
		sort(names)
		app.print("Transient/rebuildable caches:", #names, "providers.")
		for i=1,#names do
			local name = names[i]
			local ok, entries, references, note = pcall(providers[name])
			if ok then
				app.print(("  %s: %d entries; %d retained refs%s"):format(
					name, entries or 0, references or 0, note and (" (" .. note .. ")") or ""))
			else
				app.print("  ", name, ": diagnostic unavailable")
			end
		end
	end
end

local function RunSecondStartupCleanup()
	if InCombatLockdown and InCombatLockdown() then
		if After then After(COMBAT_RETRY_DELAY, RunSecondStartupCleanup) end
		return
	end
	local before = GetMemoryKB()
	RunCacheCleanupEvent()
	CleanSearchIndex(false)
	CollectMemoryIncremental(function()
		local after = GetMemoryKB()
		lastCleanMemoryKB = after or before or lastCleanMemoryKB
		if before and after and before - after >= 5120 then
			app.print("Delayed startup memory optimized:", FormatMemory(before), "->", FormatMemory(after))
		end
	end)
end

local function RunStartupCleanup()
	if InCombatLockdown and InCombatLockdown() then
		if After then After(COMBAT_RETRY_DELAY, RunStartupCleanup) end
		return
	end
	local before = GetMemoryKB()
	RunCacheCleanupEvent()
	CleanSearchIndex(true)
	CollectMemoryIncremental(function()
		local after = GetMemoryKB()
		startupCleanupComplete = true
		lastZoneMapID = app.CurrentMapID
		lastCleanMemoryKB = after or before
		if before and after and before - after >= 5120 then
			app.print("Startup memory optimized:", FormatMemory(before), "->", FormatMemory(after))
		end
		if not secondStartupCleanupScheduled then
			secondStartupCleanupScheduled = true
			if After then After(SECOND_STARTUP_CLEANUP_DELAY, RunSecondStartupCleanup) end
		end
	end)
end

-- Startup collection scans create short-lived search arrays and API result tables. Release them
-- once the first collection refresh is complete instead of retaining the login-time peak.
app.AddEventHandler("OnRefreshCollectionsDone", function()
	if startupCleanupScheduled then return end
	startupCleanupScheduled = true
	if After then After(5, RunStartupCleanup) else RunStartupCleanup() end
end)

local function RunZoneCleanup(generation, mapID)
	if generation ~= zoneCleanupGeneration or mapID ~= app.CurrentMapID then return end
	if InCombatLockdown and InCombatLockdown() then
		if After then
			After(COMBAT_RETRY_DELAY, function()
				RunZoneCleanup(generation, mapID)
			end)
		end
		return
	end

	local before = GetMemoryKB()
	local baseline = lastCleanMemoryKB or before
	local increase = before and baseline and before - baseline or 0
	local indexChanged = GetIndexGeneration() ~= lastIndexMaintenanceGeneration
	local shouldCleanMemory = not baseline or increase >= ZONE_MEMORY_THRESHOLD_KB

	if not shouldCleanMemory and not indexChanged then
		lastZoneCleanup = {
			before = before, after = before, increase = increase, mapID = mapID,
			removedReferences = 0, cleanedMemory = false, skipped = true,
		}
		return
	end

	if shouldCleanMemory then RunCacheCleanupEvent() end
	local indexStats = { 0, 0, 0, 0, 0, 0 }
	if indexChanged then indexStats = (select(1, CleanSearchIndex(false))) end

	local function FinalizeZoneCleanup()
		local after = GetMemoryKB()
		if shouldCleanMemory or (indexStats[4] or 0) > 0 then
			lastCleanMemoryKB = after or before or lastCleanMemoryKB
		end
		lastZoneCleanup = {
			before = before, after = after, increase = increase, mapID = mapID,
			removedReferences = indexStats[4] or 0, cleanedMemory = shouldCleanMemory, skipped = false,
		}
		if before and after and before - after >= 10240 then
			app.print("Zone memory optimized:", FormatMemory(before), "->", FormatMemory(after))
		end
	end

	if shouldCleanMemory or (indexStats[4] or 0) > 0 or (indexStats[5] or 0) > 0 then
		CollectMemoryIncremental(FinalizeZoneCleanup)
	else
		FinalizeZoneCleanup()
	end
end

-- OnCurrentMapIDChanged only fires when ATT resolves a genuinely different map ID. Debounce
-- maintenance so the Mini List and delayed zone scans can finish before transient data is released.
app.AddEventHandler("OnCurrentMapIDChanged", function()
	if not startupCleanupComplete then return end
	local mapID = app.CurrentMapID
	if not mapID or mapID == 0 or mapID == lastZoneMapID then return end
	lastZoneMapID = mapID
	zoneCleanupGeneration = zoneCleanupGeneration + 1
	local generation = zoneCleanupGeneration
	if After then
		After(ZONE_CLEANUP_DELAY, function()
			RunZoneCleanup(generation, mapID)
		end)
	else
		RunZoneCleanup(generation, mapID)
	end
end)

local function RunManualCleanup(before)
	RunCacheCleanupEvent()
	local indexStats = select(1, CleanSearchIndex(true))
	CollectMemoryFull()
	local after = GetMemoryKB()
	lastCleanMemoryKB = after or before
	app.print("Memory cleanup:", FormatMemory(before), "->", FormatMemory(after))
	if before and after then
		local released = before - after
		app.print("Transient memory released:", FormatMemory(released > 0 and released or 0))
	end
	PrintIndexCleanup(indexStats)
	PrintCacheStats()
end

local function RunIndexRebuild(before)
	if InCombatLockdown and InCombatLockdown() then
		app.print("Search index rebuild is unavailable during combat. Try again after combat ends.")
		return
	end
	RunCacheCleanupEvent()
	local rebuild = app.RebuildSearchIndex
	if not rebuild then
		app.print("Search index rebuild function is unavailable.")
		return
	end
	local stats = { rebuild() }
	lastIndexMaintenanceGeneration = GetIndexGeneration()
	CollectMemoryFull()
	local after = GetMemoryKB()
	lastCleanMemoryKB = after or before
	app.print("Search index rebuilt:", stats[1] or 0, "fields;", stats[2] or 0, "keys;",
		stats[3] or 0, "object references;", stats[4] or 0, "empty keys and",
		stats[5] or 0, "duplicate/invalid references removed.")
	app.print("Index rebuild memory:", FormatMemory(before), "->", FormatMemory(after))
	PrintCacheStats()
end

app.ChatCommands.Add({ "memory", "mem" }, function(args)
	local before = GetMemoryKB()
	local operation = args and args[1] and args[1]:lower()
	local suboperation = args and args[2] and args[2]:lower()
	if operation == "clean" or operation == "cleanup" or operation == "gc" then
		RunManualCleanup(before)
	elseif operation == "detail" or operation == "details" then
		app.print("Current ATT memory:", FormatMemory(before))
		PrintCacheStats()
		PrintMemoryDetail(suboperation == "all")
	elseif operation == "rebuild" or (operation == "index" and suboperation == "rebuild") then
		RunIndexRebuild(before)
	elseif operation == "index" and (suboperation == "clean" or suboperation == "cleanup") then
		local stats = select(1, CleanSearchIndex(true))
		CollectMemoryFull()
		local after = GetMemoryKB()
		lastCleanMemoryKB = after or before
		PrintIndexCleanup(stats)
		app.print("Index cleanup memory:", FormatMemory(before), "->", FormatMemory(after))
		PrintCacheStats()
	elseif operation == "index" or operation == "stats" then
		app.print("Current ATT memory:", FormatMemory(before))
		PrintCacheStats()
	else
		app.print("Current ATT memory:", FormatMemory(before))
		PrintCacheStats()
		app.print("Use /att memory detail for cache diagnostics, /att memory clean for transient cleanup, or /att memory index rebuild for a full key-index rebuild.")
	end
	return true
end, {
	"Usage : /att memory [clean|detail|detail all|index|index clean|index rebuild]",
	"Reports ATT memory and cache statistics. A second delayed login cleanup runs after startup. Zone changes only purge transient caches after memory grows 30 MB above the last clean baseline, and only compact the key index when it changed.",
})
