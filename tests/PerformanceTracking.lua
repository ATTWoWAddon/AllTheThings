-- Run from the repository root: lua tests/PerformanceTracking.lua
-- Exercise the original engine with optional bounded data on its existing keys.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))();
local Compile = loadstring or load;
local now, clocks, popup = 100, 0, nil;
unpack = unpack or table.unpack;
tinsert = table.insert;
GetTimePreciseSec = function() clocks = clocks + 1; return now; end;
C_Timer = { After = function() end };
C_AddOnProfiler, Enum = nil, nil;

---Create an ATT output sink and optionally load its original profiling engine.
---@param enabled boolean? True enables the opt-in production file.
---@return table app Isolated ATT services and CSV output sink.
local function NewApp(enabled)
	now, clocks, popup = 100, 0, nil;
	local app = {
		print = function() end, PrintDebug = function() end, PrintTable = function() end,
		ShowPopupDialogWithMultiLineEditBox = function(_, text) popup = text; end,
	};
	if enabled then Fixture.LoadEnabled(app); end
	return app;
end

---Load the unchanged class-cache section without unrelated WoW services.
---@param app table Fixture receiving the original cache constructor and lookup.
local function LoadCaches(app)
	local file = assert(io.open("src/Classes/base.lua", "rb"));
	local source = file:read("*a"):gsub("\r\n", "\n"); file:close();
	local section = assert(source:match("(local ClassDataCaches = {}.-)\n%-%- Allows creating a group"));
	assert(Compile("local app = ...;\n" .. section, "@src/Classes/base.lua:ClassDataCaches"))(app);
end

---Pack results to check the original wrapper's implicit return arity.
---@param ... any Values returned by an actual captured invocation.
---@return table values Results and their observed n field.
local function Pack(...) return {n=select("#", ...), ...}; end

---Check a literal bounded report fragment with useful failure output.
---@param performance table Original engine containing the bounded report method.
---@param fragment string Expected literal report text.
local function Contains(performance, fragment)
	local report = performance.Report();
	assert(report:find(fragment, 1, true), "missing " .. fragment .. "\n" .. report);
end

-- Ordinary ATT never needs profiling state or reads its clock.
local normal = NewApp(); LoadCaches(normal);
local cache = normal.CreateCache("itemID", "Item");
assert(normal.GetOrCreateCache("itemID", "Item") == cache);
cache.SetCachedField({itemID=1}, "label", "stored");
assert(cache.GetCachedField({itemID=1}, "label") == "stored");
assert(clocks == 0 and normal.__perf == nil and rawget(normal, "Profiler") == nil);

local app = NewApp(true);
local p = assert(app.__perf);
assert(rawget(app, "Profiler") == nil and rawget(app, "ProfilerJobs") == nil and rawget(app, "ProfilerHooks") == nil);
assert(type(p.CaptureFunction) == "function" and type(p.CaptureTable) == "function" and type(p.AutoCaptureTable) == "function");
assert(type(p.Start) == "function" and type(p.Report) == "function" and p.GetLevel() == 0);

---Return a trailing nil using the existing wrapper's original call semantics.
---@param ... any Three forwarded arguments, including a middle nil.
---@return string value Stable successful result.
---@return nil tail Original trailing nil, which the legacy wrapper need not retain.
local function Target(...)
	assert(select("#", ...) == 3);
	now = now + 0.002;
	return "value", nil;
end

-- Existing cumulative timing works before a bounded session is started.
local captured = p.CaptureFunction(Target, "exact", "Tests");
local baseline = Pack(captured(1, nil, 3));
local metric = p.Tests.exact;
assert(baseline[1] == "value" and baseline.n == 1);
assert(metric.count == 1 and math.abs(metric.time - 0.002) < 1e-9 and metric.capture == nil);

-- Label the same owned wrapper instead of adding another engine or wrapper layer.
local reconfigured = p.CaptureFunction(captured, "exact", "Tests", {module="cache", minLevel=2, id="tests.exact"});
assert(reconfigured == captured, "adding bounded options replaced the original wrapper");
local before = clocks;
local result = Pack(captured(1, nil, 3));
assert(result.n == baseline.n and result[1] == baseline[1] and clocks > before);
assert(metric.count == 2 and math.abs(metric.time - 0.004) < 1e-9 and metric.capture == nil);
app.PrintPerf(); assert(popup:find("Tests,exact,2,", 1, true));

-- Bounded observations live on this existing CSV metric and use seconds internally.
assert(p.Start(30, 2)); captured(1, nil, 3);
local bounded = assert(metric.capture);
assert(bounded.sessionID ~= nil and bounded.count == 1);
assert(math.abs(bounded.time - 0.002) < 1e-9 and type(bounded.buckets) == "table");
assert(metric.count == 3 and math.abs(metric.time - 0.006) < 1e-9);
Contains(p, "tests.exact\t1\t2.000\t2.000\t2.000");

-- The direct target error object and legacy successful-call count remain unchanged.
local errorObject = {};
local failing = p.CaptureFunction(function() error(errorObject, 0); end, "fails", "Tests", {module="cache", minLevel=2, id="tests.fails"});
local ok, err = pcall(failing);
assert(not ok and err == errorObject and p.Tests.fails.count == 0);

-- Stopped bounded data freezes while original cumulative statistics keep growing.
assert(p.Stop("test")); local report = p.Report();
local count, duration = bounded.count, bounded.time;
before = clocks; captured(1, nil, 3);
assert(clocks > before and metric.count == 4);
assert(bounded.count == count and bounded.time == duration and p.Report() == report);
app.ClearPerf();
assert(metric.count == 0 and metric.time == 0 and p.Tests.fails.count == 0);
assert(bounded.count == count and bounded.time == duration and p.Report() == report, "ClearPerf changed bounded data");

-- Existing captured tables can be labeled without replacing their function identities.
local selected = {call=function() now=now+0.003; return 7; end};
p.CaptureTable(selected, "TableTests"); local tableFunction = selected.call;
p.CaptureTable(selected, "TableTests", {module="cache", minLevel=2, id="tests.table"});
assert(selected.call == tableFunction, "labeling an already captured table added wrappers");
assert(p.Start(30, 2)); assert(selected.call() == 7);
Contains(p, "tests.table\t1\t3.000");
assert(p.TableTests.call.count == 1 and p.TableTests.call.capture.count == 1);
local opted = {__noperf=true,call=Target};
p.AutoCaptureTable(opted, "Opted"); assert(opted.call == Target and getmetatable(opted) == nil);

-- Queue metadata extends original AutoCaptureTable rather than installing another adapter.
local queue = {};
p.AutoCaptureTable(queue, "QueueTests", nil, {module="runner", minLevel=2, id="tests.queue", queued=true});
assert(p.Start(30, 4, {include="runner"}));
local queued = function(value) assert(value==9); now=now+0.004; return value; end;
queue[1] = queued;
now = now + 0.010;
assert(queue[1](9) == 9);
Contains(p, "tests.queue\t1\t4.000");
local queueMetric = p.QueueTests[tostring(queued)];
assert(queueMetric.count == 1 and queueMetric.capture.count == 1);
app.PrintPerf(); assert(popup:find("QueueTests," .. tostring(queued) .. ",1,", 1, true));

-- Captured functions remain directly yieldable in stock Lua 5.1 and newer Lua.
assert(p.Start(30, 2));
local yielding = p.CaptureFunction(function(value)
	now=now+0.002; coroutine.yield(value); now=now+0.003; return "done";
end, "yielding", "Tests", {module="cache", minLevel=2, id="tests.yield"});
local thread = coroutine.create(yielding);
ok, result = coroutine.resume(thread, "pause"); assert(ok and result == "pause");
ok, result = coroutine.resume(thread); assert(ok and result == "done");
Contains(p, "tests.yield\t1\t5.000");

-- Reset removes bounded output while preserving existing cumulative statistics.
local cumulative = p.Tests.yielding.count;
p.Reset(); assert(p.GetLevel() == 0 and p.Tests.yielding.count == cumulative);
assert(not p.Report():find("tests.yield\t", 1, true));

local file = assert(io.open("AllTheThings.toc", "rb")); local toc = file:read("*a"); file:close();
assert(toc:find("#src\\PerformanceTracking.lua", 1, true));
assert(not toc:find("lib\\Profiler.lua", 1, true) and not toc:find("lib\\ProfilerJobs.lua", 1, true));
assert(not toc:match("\n%s*src\\PerformanceTracking%.lua"));
print("PASS: original engine/wrapper reuse, cumulative CSV, bounded metric data, queue metadata, direct errors/yields, and default TOC");
