-- Run from the repository root: lua tests/ProfilerEvents.lua
-- Original Events algorithms with optional captures using app.__perf directly.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))();
local now, clocks, timers, errors;
unpack = table.unpack or unpack; tremove, tinsert = table.remove, table.insert;
local canYieldProtected = _VERSION ~= "Lua 5.1";
if not canYieldProtected then
  local nativeXpcall = xpcall;
  xpcall = function(func, handler, ...)
    local args = { n = select("#", ...), ... };
    return nativeXpcall(function() return func(unpack(args, 1, args.n)); end, handler);
  end;
end
GetTimePreciseSec = function() clocks = clocks + 1; return now; end;
C_Timer = { After = function(seconds, callback) timers[#timers + 1] = { seconds, callback }; end };
C_AddOnProfiler, Enum = nil, nil;

---Load actual original event/Runner behavior with its optional developer tracker.
---@param enabled boolean? True loads PerformanceTracking.lua before Runner and Events.
---@return table app Isolated ATT services used by these tests.
local function NewApp(enabled)
  now, clocks, timers, errors = 100, 0, {}, {};
  local app = {
    print = function() end, PrintDebug = function() end, report = function() end,
    PrintError = function(err) errors[#errors + 1] = err; end, events = {},
    MetaTable = { AutoTable = { __index = function(t, key) local value = {}; rawset(t, key, value); return value; end } },
    wipearray = function(array) for index = #array, 1, -1 do array[index] = nil; end end,
    RegisterFuncEvent = function(self, event, func) self.events[event] = func; end,
    CallbackHandlers = { Callback = function(func, arg) C_Timer.After(0, function() func(arg); end); end },
  };
  if enabled then Fixture.LoadEnabled(app); end
  assert(loadfile("lib/Runner.lua"))("AllTheThings", app);
  assert(loadfile("src/Events.lua"))("AllTheThings", app);
  return app;
end

---Advance one frame without firing capture timeout timers.
---@param advance number? Fake seconds between frames.
local function Frame(advance)
  now = now + (advance or 0);
  local due, retained = {}, {};
  for _, timer in ipairs(timers) do
    if timer[1] == 0 then due[#due + 1] = timer[2]; else retained[#retained + 1] = timer; end
  end
  timers = retained;
  for _, callback in ipairs(due) do callback(); end
end

---Drain actual event-sequence callbacks until no frame work remains.
local function Drain()
  for _ = 1, 100 do
    local pending = false;
    for _, timer in ipairs(timers) do if timer[1] == 0 then pending = true; break; end end
    if not pending then return; end
    Frame(0.010);
  end
  error("event sequence did not settle");
end

---Use ATT's original CaptureFunction for one explicitly named event handler.
---@param app table Enabled ATT fixture.
---@param func function Original event callback.
---@param id string Stable capture ID and original metric key.
---@return function captured Handler returned by the existing profiling API.
local function Capture(app, func, id)
  return app.__perf.CaptureFunction(func, id, "Tests", { id = id, module = "events", minLevel = 2 });
end

---Assert a literal report fragment with the complete report on failure.
---@param report string Current capture output.
---@param fragment string Required literal text.
local function Contains(report, fragment)
  assert(report:find(fragment, 1, true), "missing: " .. fragment .. "\n" .. report);
end

-- Original direct event dispatch requires no profiling object or clock reads.
local app = NewApp();
local calls = 0;
app.AddEventHandler("OnWindowUpdated", function(value) assert(value == "original"); calls = calls + 1; end);
app.HandleEvent("OnWindowUpdated", "original");
assert(calls == 1 and clocks == 0 and app.__perf == nil and app.Profiler == nil);

-- Preserve registration order, direct callback identity removal, and once handlers.
for _, enabled in ipairs({ false, true }) do
  app = NewApp(enabled);
  local order = {};
  local function Last() order[#order + 1] = "last"; end
  local function First(value) assert(value == "argument"); order[#order + 1] = "first"; end
  app.AddEventHandler("OnWindowUpdated", Last); app.AddEventHandler("OnWindowUpdated", First, true);
  if enabled then assert(app.__perf.Start(30, 3)); end
  app.HandleEvent("OnWindowUpdated", "argument"); assert(table.concat(order, ",") == "first,last");
  app.RemoveEventHandler(First); Drain(); order = {};
  app.HandleEvent("OnWindowUpdated", "argument"); assert(table.concat(order, ",") == "last");
  local once = 0;
  app.AddEventHandlerOnce("OnWindowRefreshed", function() once = once + 1; end);
  app.HandleEvent("OnWindowRefreshed"); Drain(); app.HandleEvent("OnWindowRefreshed"); Drain(); assert(once == 1);
end

-- Original duplicate removal deletes only the last duplicate in each event array.
for _, enabled in ipairs({ false, true }) do
  app = NewApp(enabled); local seen = {};
  local function Duplicate() seen[#seen + 1] = "duplicate"; end
  local function Separator() seen[#seen + 1] = "separator"; end
  for _, name in ipairs({ "OnWindowUpdated", "OnWindowRefreshed" }) do
    app.AddEventHandler(name, Duplicate); app.AddEventHandler(name, Separator); app.AddEventHandler(name, Duplicate);
  end
  app.RemoveEventHandler(Duplicate); Drain(); app.HandleEvent("OnWindowUpdated"); app.HandleEvent("OnWindowRefreshed");
  assert(table.concat(seen, ",") == "duplicate,separator,duplicate,separator");
end

-- Coalescing still delivers the first accepted request and runs its callback once.
app = NewApp(true); local p = app.__perf; calls = 0;
app.AddEventHandler("OnRecalculate", Capture(app, function(argument)
  assert(argument == "first request"); calls = calls + 1; now = now + 0.005;
  if canYieldProtected then coroutine.yield(); end
  now = now + 0.007;
end, "event.test.queued"));
assert(p.Start(30, 4, { include = "events" }));
app.HandleEvent("OnRecalculate", "first request"); app.HandleEvent("OnRecalculate", "coalesced request");
assert(calls == 0); Frame(0.020); Frame(0.100); Drain();
assert(calls == 1 and #errors == 0, table.concat(errors, "\n"));
Contains(p.Report(), "event.test.queued\t1\t12.000");
Contains(p.Report(), "events.dispatch");

-- Overview retains coarse Runner timing without admitting the explicit detail scope.
assert(p.Start(30)); app.HandleEvent("OnWindowUpdated");
assert(not p.Report():find("event.test.", 1, true));

-- Direct error objects escape unchanged; original Runner still reports queued errors.
app = NewApp(true); p = app.__perf;
local errorObject = {};
app.AddEventHandler("OnWindowRefreshed", Capture(app, function() error(errorObject, 0); end, "event.test.failure"));
assert(p.Start(30, 3)); local ok, err = pcall(app.HandleEvent, "OnWindowRefreshed");
assert(not ok and err == errorObject and #errors == 0);
app.DesignateRunnerEvent("QueuedFailure");
app.AddEventHandler("QueuedFailure", Capture(app, function() error("queued event failure"); end, "event.test.queuedfailure"));
assert(p.Start(30, 4, { include = "events" })); app.HandleEvent("QueuedFailure"); Drain();
assert(#errors == 1 and errors[1]:find("queued event failure", 1, true));

if not canYieldProtected then print("NOTE: stock Lua 5.1 does not allow yielding through Events' existing Runner xpcall; argument/coalescing paths still run."); end
print("PASS: original event dispatch/order/removal, shared tracker hooks, coalescing, completed-call timing, and original error paths");
