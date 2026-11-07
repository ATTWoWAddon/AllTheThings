-- Run from the repository root: lua tests/ProfilerJobs.lua
-- Observe real Runner queues through ATT's original opt-in tracker.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))();
local now, clocks, timers, errors;
unpack = table.unpack or unpack; tremove, tinsert = table.remove, table.insert;
local canYieldProtected = _VERSION ~= "Lua 5.1";
if not canYieldProtected then
  -- WoW supports xpcall varargs; stock Lua 5.1 needs the same argument forwarding.
  local nativeXpcall = xpcall;
  xpcall = function(func, handler, ...)
    local args = { n = select("#", ...), ... };
    return nativeXpcall(function() return func(unpack(args, 1, args.n)); end, handler);
  end;
end
GetTimePreciseSec = function() clocks = clocks + 1; return now; end;
C_Timer = { After = function(seconds, callback) timers[#timers + 1] = { seconds, callback }; end };
C_AddOnProfiler, Enum = nil, nil;

---Construct the actual Runner with optional original developer tracking enabled.
---@param enabled boolean? True loads PerformanceTracking.lua; nil keeps the default TOC behavior.
---@return table app Isolated ATT services under test.
local function NewApp(enabled)
  now, clocks, timers, errors = 100, 0, {}, {};
  local app = { print = function() end, report = function() end,
    PrintError = function(err) errors[#errors + 1] = err; end };
  if enabled then Fixture.LoadEnabled(app); end
  assert(loadfile("lib/Runner.lua"))("AllTheThings", app);
  return app;
end

---Run this frame's queued callbacks without firing capture timeout timers.
---@param advance number? Fake elapsed seconds since the previous frame.
local function Frame(advance)
  now = now + (advance or 0);
  local due, retained = {}, {};
  for _, timer in ipairs(timers) do
    if timer[1] == 0 then due[#due + 1] = timer[2]; else retained[#retained + 1] = timer; end
  end
  timers = retained;
  for _, callback in ipairs(due) do callback(); end
end

---Capture a named test function with the same API used by existing ATT modules.
---@param app table ATT fixture containing the original tracker.
---@param func function Original function receiving the caller's arguments directly.
---@param id string Stable capture ID and unique original metric key.
---@param options table? Optional metadata overriding module, minimum level, or queue observation.
---@return function captured Function returned by the original CaptureFunction API.
local function Capture(app, func, id, options)
  options = options or {};
  options.id, options.module, options.minLevel = id, options.module or "runner", options.minLevel or 2;
  return app.__perf.CaptureFunction(func, id, "Tests", options);
end

---Assert a literal report fragment with readable failure details.
---@param report string Current capture output.
---@param fragment string Expected literal text.
local function Contains(report, fragment)
  assert(report:find(fragment, 1, true), "missing: " .. fragment .. "\n" .. report);
end

---Split one tab-separated report row without losing empty fields.
---@param line string Report line to parse.
---@return string[] values Parsed fields in their original order.
local function Fields(line)
  local values = {};
  for value in (line .. "\t"):gmatch("(.-)\t") do values[#values + 1] = value; end
  return values;
end

---Read retained jobs by their report columns rather than internal engine tables.
---@param report string Report containing a job table at Level 4 or above.
---@return table[] jobs Rows indexed by normalized column names.
local function Jobs(report)
  local headers, rows;
  rows = {};
  for line in report:gmatch("[^\n]+") do
    local values = Fields(line);
    if line:match("^[^\t]+\tScope\t") then
      headers = {};
      for index, value in ipairs(values) do headers[index] = value:lower():gsub("[^a-z]", ""); end
    elseif headers and tonumber(values[1]) then
      local row = {};
      for index, header in ipairs(headers) do row[header] = values[index]; end
      rows[#rows + 1] = row;
    elseif headers then
      headers = nil;
    end
  end
  return rows;
end

---Locate one retained observation using its stable scope ID.
---@param report string Current report.
---@param id string Scope ID whose job is expected to be retained.
---@return table job Matching job row.
local function Job(report, id)
  for _, job in ipairs(Jobs(report)) do if job.scope == id then return job; end end
  error("missing job " .. id .. "\n" .. report);
end

---Read one compatible numeric job field from its report header.
---@param job table Parsed job row.
---@param ... string Accepted normalized report column labels.
---@return number value Parsed numeric duration in milliseconds.
local function Number(job, ...)
  for index = 1, select("#", ...) do
    local value = tonumber(job[select(index, ...)]);
    if value then return value; end
  end
  error("missing numeric job field");
end

-- Default queue and pooled-coroutine execution add no profiling state or clock reads.
local app = NewApp();
local calls = 0;
app.FunctionRunner.Run(function(value) assert(value == 7); calls = calls + 1; end, 7);
Frame(); Frame();
app.StartCoroutine("ordinary", function() calls = calls + 1; end); Frame();
assert(calls == 2 and clocks == 0 and app.__perf == nil);
assert(app.Profiler == nil and app.ProfilerJobs == nil and app.ProfilerHooks == nil);
assert(app.FunctionRunner.RunProfiled == nil);

-- The existing queue hook remains one call, after registering its original Runner.
local hookApp, queueCalls, resumeKeys = nil, 0, {};
hookApp = { print = function() end, report = function() end, PrintError = function() end,
  __perf = {
    CaptureFunction = function(func, key, scope, options)
      assert(func == coroutine.resume and options.resume == true and options.minLevel == 1);
      assert(key == options.id and not resumeKeys[key], "resume aliases shared an original metric key");
      assert(scope == "coroutine" or scope == "runner");
      resumeKeys[key] = true; return func;
    end,
    AutoCaptureTable = function(queue, label, host, options, ...)
      assert(label == "FunctionQueue" and type(queue) == "table" and select("#", ...) == 0);
      assert(host == hookApp.Runners.default or host == hookApp.Runners.check, "queue hook ran before Runner registration");
      assert(options.queued == true and options.module == "runner" and options.minLevel == 2);
      assert(options.id == "Runner_default.FunctionQueue.queued" or options.id == "Runner_other.FunctionQueue.queued");
      queueCalls = queueCalls + 1;
    end,
  },
};
assert(loadfile("lib/Runner.lua"))("AllTheThings", hookApp); hookApp.CreateRunner("check");
assert(queueCalls == 2 and resumeKeys["coroutine.slice"] and resumeKeys["runner.default.slice"] and resumeKeys["runner.other.slice"]);

-- The original cumulative tracker still runs before starting a bounded session.
app = NewApp(true);
local p, runner = app.__perf, app.FunctionRunner;
runner.Run(function() calls = calls + 1; end); Frame(); Frame();
assert(calls == 3 and clocks > 0 and app.Profiler == nil);
assert(p.Start(30)); runner.Run(function() now = now + 0.004; end); Frame(); Frame();
Contains(p.Report(), "runner.default.slice");
assert(not p.Report():find("Jobs:", 1, true));

-- Original argument forwarding and error-object behavior remain intact.
assert(p.Start(30, 2));
local wrapped = Capture(app, function(a, b, c)
  assert(a == "a" and b == "b" and c == "c"); now = now + 0.005;
end, "test.work");
runner.Run(wrapped, "a", "b", "c"); Frame(); Frame();
assert(#errors == 0, table.concat(errors, "\n"));
Contains(p.Report(), "test.work\t1\t5.000");
local errorObject = {};
local failing = Capture(app, function() error(errorObject, 0); end, "test.error");
local ok, err = pcall(failing); assert(not ok and err == errorObject);

-- Direct coroutines can yield through the original wrapper even on stock Lua 5.1.
-- Timing records one completed invocation and excludes the wait between resumes.
app = NewApp(true); p = app.__perf; assert(p.Start(30, 4, { include = "runner" }));
wrapped = Capture(app, function() now = now + 0.005; coroutine.yield("pause"); now = now + 0.007; return "done"; end, "test.yield");
local resume = p.CaptureFunction(coroutine.resume, "test.resume", "Tests", { id = "test.resume", module = "runner", minLevel = 1, resume = true });
local co = coroutine.create(wrapped);
local success, result = resume(co); assert(success and result == "pause");
now = now + 0.100;
success, result = resume(co); assert(success and result == "done");
Contains(p.Report(), "test.yield\t1\t12.000");
Contains(p.Report(), "test.resume\t2\t12.000");

-- A failed original resume keeps its error object and closes observed child work.
app = NewApp(true); p = app.__perf; assert(p.Start(30, 4, { include = "runner" }));
errorObject = {};
wrapped = Capture(app, function() now = now + 0.003; error(errorObject, 0); end, "test.coerror");
resume = p.CaptureFunction(coroutine.resume, "test.errorresume", "Tests", { id = "test.errorresume", module = "runner", minLevel = 1, resume = true });
co = coroutine.create(wrapped); success, result = resume(co); assert(not success and result == errorObject);
local failed = Job(p.Report(), "test.coerror");
assert(failed.state == "failed" and Number(failed, "executionms") == 3);

-- Work queued during recording observes its wait and the actual invocation time.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
assert(p.Start(30, 4, { include = "runner" }));
runner.Run(function(value) assert(value == "queued argument"); now = now + 0.006; end, "queued argument");
Frame(0.025); Frame();
local report = p.Report();
local queued = Job(report, "Runner_default.FunctionQueue.queued");
assert((queued.state or queued.status) == "completed");
assert(Number(queued, "queuewaitms", "queuems") == 25);
assert(Number(queued, "executionms", "executems") == 6);

-- Queue origin labels retain the parent that actually scheduled the original callback.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
assert(p.Start(30, 4, { include = "runner" }));
Capture(app, function() runner.Queue(function() now = now + 0.002; end); end, "test.parent")();
runner.Run(); Frame(); Frame(); report = p.Report();
local parent = Job(report, "test.parent"); queued = Job(report, "Runner_default.FunctionQueue.queued");
assert(queued.origin == "queued" and queued.parent == parent.jobid);

-- Work queued before recording still executes; its enqueue origin remains unknown.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
runner.Queue(function(value) assert(value == "before capture"); now = now + 0.009; end, "before capture");
assert(p.Start(30, 4, { include = "runner" })); runner.Run(); Frame(); Frame();
queued = Job(p.Report(), "Runner_default.FunctionQueue.queued");
assert((queued.state or queued.status) == "completed");
assert(queued.origin == "unknown" or queued.origin == "partial");
assert(queued.queuewaitms == "-");
assert(Number(queued, "executionms", "executems") == 9);

-- Original Runner.Reset drops pending work; bounded observation cannot invent completion.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
assert(p.Start(30, 4, { include = "runner" }));
runner.Queue(function() error("discarded callback executed"); end);
runner.Reset(); assert(p.Stop()); queued = Job(p.Report(), "Runner_default.FunctionQueue.queued");
assert((queued.state or queued.status) ~= "completed" and #errors == 0);

-- Capture Reset preserves actual queue parameters rather than canceling addon work.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
local seen = {};
for capture = 1, 4 do
  assert(p.Start(30, 4, { include = "runner" }));
  runner.Queue(function(value) seen[value] = true; end, capture);
end
p.Reset(); assert(p.Start(30, 4, { include = "runner" }));
runner.SetPerFrameDefault(20); runner.Run(); Frame(); Frame();
for index = 1, 4 do assert(seen[index], "capture reset discarded queued arguments"); end

-- Stopping a capture freezes its report while suspended original work can still finish.
app = NewApp(true); p = app.__perf; assert(p.Start(30, 4, { include = "runner" }));
local finished = false;
wrapped = Capture(app, function() now = now + 0.004; coroutine.yield(); now = now + 0.008; finished = true; end, "test.stopped");
resume = p.CaptureFunction(coroutine.resume, "test.stopresume", "Tests", { id = "test.stopresume", module = "runner", minLevel = 1, resume = true });
co = coroutine.create(wrapped); assert(resume(co)); assert(p.Stop()); local stopped = p.Report();
now = now + 0.100; assert(resume(co)); assert(finished and p.Report() == stopped);

-- Job capacity limits diagnostics while all real queue functions continue running.
app = NewApp(true); p, runner = app.__perf, app.FunctionRunner;
assert(p.Start(30, 4, { include = "runner", jobBudget = 2 }));
calls = 0; runner.SetPerFrameDefault(20);
for _ = 1, 8 do runner.Queue(function() calls = calls + 1; now = now + 0.001; end); end
runner.Run(); Frame(); Frame(); report = p.Report();
assert(calls == 8 and #Jobs(report) <= 2);
assert(tonumber(report:match("Jobs: %d+ retained; (%d+) omitted")) > 0, "job capacity overflow was not reported\n" .. report);

-- Fixed queue and resume IDs do not expose arbitrary dynamic Runner lookup names.
app = NewApp(true); p = app.__perf; assert(p.Start(30, 3, { include = "runner,windows" }));
local other = app.CreateRunner("arbitrary-other-name");
local window = app.CreateRunner("arbitrary-window-name", "windows");
other.Run(function() now = now + 0.003; end); window.Run(function() now = now + 0.004; end); Frame(); Frame();
report = p.Report(); Contains(report, "runner.other.slice"); Contains(report, "runner.windows.slice");
Contains(report, "Runner_other.FunctionQueue.queued\t1\t3.000");
Contains(report, "Runner_windows.FunctionQueue.queued\t1\t4.000");
assert(not report:find("arbitrary", 1, true));

if not canYieldProtected then print("NOTE: stock Lua 5.1 Runner callbacks cannot yield through its existing xpcall; direct captured coroutine yield timing was tested."); end
print("PASS: original Runner hooks, default execution, shared tracker captures, yield timing, queue observations, reset preservation, job capacity, and fixed metrics");
