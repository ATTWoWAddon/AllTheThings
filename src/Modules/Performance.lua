-- Lightweight, opt-in runtime profiler for ATT hot paths.
-- Unlike the contributor PerformanceTracking.lua harness, this remains dormant until
-- /att profile start and adds only a single boolean branch to wrapped functions.
local appName, app = ...

local debugprofilestop = debugprofilestop
local GetTimePreciseSec = GetTimePreciseSec
local pairs, type, tostring, select = pairs, type, tostring, select
local sort, unpack = table.sort, unpack or table.unpack
local pack = table.pack or function(...)
	return { n = select("#", ...), ... }
end

local active = false
local sessionStarted
local statistics = {}
local wrapped = setmetatable({}, { __mode = "k" })
local DEFAULT_REPORT_LIMIT = 25

local function NowMilliseconds()
	if debugprofilestop then return debugprofilestop() end
	return (GetTimePreciseSec and GetTimePreciseSec() or 0) * 1000
end

local function GetStat(name)
	local stat = statistics[name]
	if not stat then
		stat = { count = 0, total = 0, max = 0 }
		statistics[name] = stat
	end
	return stat
end

local function Record(name, elapsed)
	if not active or not name then return end
	local stat = GetStat(name)
	stat.count = stat.count + 1
	stat.total = stat.total + (elapsed or 0)
	if elapsed and elapsed > stat.max then stat.max = elapsed end
end

app.ProfileIsActive = function()
	return active
end

app.ProfileStartTimer = function()
	if active then return NowMilliseconds() end
end

app.ProfileStopTimer = function(name, started)
	if active and started then Record(name, NowMilliseconds() - started) end
end

app.ProfileCount = function(name, count)
	if not active or not name then return end
	local stat = GetStat(name)
	stat.count = stat.count + (count or 1)
end

-- Wraps a function while preserving all return values. Result packing occurs only while
-- profiling is enabled, so normal gameplay does not create temporary result tables.
app.ProfileWrap = function(name, func)
	if type(func) ~= "function" then return func end
	local existing = wrapped[func]
	if existing then return existing end
	local wrapper = function(...)
		if not active then return func(...) end
		local started = NowMilliseconds()
		local results = pack(func(...))
		Record(name, NowMilliseconds() - started)
		return unpack(results, 1, results.n)
	end
	wrapped[func] = wrapper
	wrapped[wrapper] = wrapper
	return wrapper
end

local function ResetStatistics()
	for name in pairs(statistics) do statistics[name] = nil end
	sessionStarted = active and NowMilliseconds() or nil
end

local function StartProfiling(reset)
	if reset ~= false then ResetStatistics() end
	active = true
	sessionStarted = NowMilliseconds()
	app.print("ATT performance profiling started. Use /att profile stop, then /att profile report.")
end

local function StopProfiling()
	if not active then
		app.print("ATT performance profiling is not running.")
		return
	end
	active = false
	local elapsed = sessionStarted and (NowMilliseconds() - sessionStarted) or 0
	app.print(("ATT performance profiling stopped after %.1f seconds."):format(elapsed / 1000))
end

local function ReportProfiling(showAll)
	local rows = {}
	for name, stat in pairs(statistics) do
		rows[#rows + 1] = {
			name = name,
			count = stat.count,
			total = stat.total,
			max = stat.max,
			average = stat.count > 0 and stat.total / stat.count or 0,
		}
	end
	sort(rows, function(a, b)
		if a.total == b.total then
			if a.count == b.count then return tostring(a.name) < tostring(b.name) end
			return a.count > b.count
		end
		return a.total > b.total
	end)
	local limit = showAll and #rows or math.min(DEFAULT_REPORT_LIMIT, #rows)
	app.print("ATT profile report:", limit, "shown of", #rows, "operations; times are milliseconds.")
	for i=1,limit do
		local row = rows[i]
		app.print(("  %s: %d calls; %.2f total; %.3f avg; %.2f max"):format(
			row.name, row.count, row.total, row.average, row.max))
	end
	if #rows == 0 then
		app.print("  No samples recorded. Start profiling and use ATT normally before reporting.")
	elseif not showAll and #rows > limit then
		app.print("Use /att profile report all to show every recorded operation.")
	end
end

app.ChatCommands.Add("profile", function(args)
	local operation = args and args[1] and args[1]:lower()
	local option = args and args[2] and args[2]:lower()
	if operation == "start" then
		StartProfiling(option ~= "keep")
	elseif operation == "stop" then
		StopProfiling()
	elseif operation == "report" or operation == "show" then
		ReportProfiling(option == "all")
	elseif operation == "reset" or operation == "clear" then
		ResetStatistics()
		app.print("ATT performance profile data cleared.")
	elseif operation == "status" then
		app.print("ATT performance profiling is", active and "running." or "stopped.")
	else
		app.print("Usage: /att profile [start|stop|report|report all|reset|status]")
	end
	return true
end, {
	"Usage : /att profile [start|stop|report|report all|reset|status]",
	"Runs a lightweight opt-in profiler for ATT searches, symlinks, windows, profession scans, tooltips, and memory maintenance.",
})

-- Track the complete collection refresh sequence, which may span the ATT event runner.
local collectionRefreshStarted
app.AddEventHandler("OnRefreshCollections", function()
	collectionRefreshStarted = app.ProfileStartTimer()
end)
app.AddEventHandler("OnRefreshCollectionsDone", function()
	app.ProfileStopTimer("Collections.RefreshCycle", collectionRefreshStarted)
	collectionRefreshStarted = nil
end)
app.AddEventHandler("OnCurrentMapIDChanged", function()
	app.ProfileCount("Map.CurrentMapIDChanged")
end)

-- Window methods exist by the time OnWindowCreated fires. Wrap only meaningful pipeline
-- operations and custom hot-path methods; profiling remains inactive by default.
app.AddEventHandler("OnWindowCreated", function(window, suffix)
	if not window or window.__ATTProfileWrapped then return end
	window.__ATTProfileWrapped = true
	local prefix = "Window." .. tostring(suffix) .. "."
	local methods = { "Rebuild", "ForceRebuild", "Update", "ForceUpdate", "Refresh", "Redraw", "RefreshRecipes", "RefreshLocation" }
	for i=1,#methods do
		local method = methods[i]
		if type(window[method]) == "function" then
			window[method] = app.ProfileWrap(prefix .. method, window[method])
		end
	end
end)
