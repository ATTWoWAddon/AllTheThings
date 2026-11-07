local appName, app = ...;

-- Contains debugging logic for wrapping functionality with a performance monitor
-- Add to TOC prior to src/base.lua

-- Concepts: Functions are wrapped in performance tracking functions. The name represents the key within a scope.
-- Tables should represent a scope nested within their parent table's scope, etc.
-- Functions should use their containing Table scope with a key name

local unpack, GetTimePreciseSec, pairs, ipairs, type, tinsert, table_concat, rawset, setmetatable, getmetatable, tostring,rawget
	= unpack, GetTimePreciseSec, pairs, ipairs, type, tinsert, table.concat, rawset, setmetatable, getmetatable, tostring,rawget

local debug = false
print("Perf:Loading:debug:",debug)
local print = function(...)
	if debug then print(...) end
end

local scopes = {}

local keyMeta = {
	__index = function(t, key)
		local scopeKey = { count = 0, time = 0};
		rawset(t, key, scopeKey);
		return scopeKey;
	end,
};
---@class ATTPerformanceTracker
---@field Enabled boolean Whether a bounded session currently accepts added observations.
---@field SessionID integer Generation separating captures; original cumulative metrics persist.
local performance = setmetatable({}, {
	__index = function(t, scopeName)
		if not scopeName then return end
		local scope = setmetatable({__scope=scopeName}, keyMeta);
		rawset(t, scopeName, scope);
		return scope;
	end,
});
-- app.__perf[Key][Tracker(Count,Time)]
app.__perf = performance;

scopes.__new = function(t, scope) scopes[t] = performance[scope] return scopes[t] end
-- scopes.__new = function(t, scope)
-- 	local perfScope = performance[scope]
-- 	if perfScope then
-- 		scopes[t] = perfScope
-- 	end
-- 	return perfScope or scopes[t]
-- end

app.PrintPerf = function()
	local blob, line = {}, {};
	for typeKey,typeData in pairs(performance) do
		if type(typeData) == "table" and type(typeKey) == "string" then
			for k,v in pairs(typeData) do
				if type(v) == "table" then
					line[1] = typeKey;
					line[2] = tostring(k);
					line[3] = v.count;
					line[4] = v.time;
					tinsert(blob, table_concat(line, ","))
				-- else print("Why is this a",type(v),typeKey,k,v)
				end
			end
		end
	end
	local csv = table_concat(blob, "\n");
	app:ShowPopupDialogWithMultiLineEditBox(csv);
end
app.ClearPerf = function()
	for typeKey,typeData in pairs(performance) do
		if type(typeData) == "table" and type(typeKey) == "string" then
			for k,v in pairs(typeData) do
				if type(v) == "table" then
					v.count = 0
					v.time = 0
				end
			end
		end
	end
	app.print("Cleared Performance Stats");
end

-- Logic of whether to ignore trying to performance wrap an object
local function IgnorePerf(o, scope)
	if not o then return true end
	if type(o) == "table" then
		if rawget(o, "__noperf") then print("Perf.Ignore: NoPerf!",scope) return true end
		local mt = getmetatable(o)
		if mt and mt.__index and type(mt.__index) == "function" then return end
		if o.IsForbidden then print("Perf.Ignore: Game Object!",scope,o:GetName()) return true end
		if scopes[o] then print("Perf.Ignore: Duplicate Perf!",scope) return true end
	end
end

-- Attempts to get the performance scope for the obj. If it does not exist, it will be set using the provided 'scope'
local function GetPerfForScope(obj, scope)
	return scopes[obj] or (scope and scopes.__new(obj, scope)) or nil
end

-- Capture sessions use the original scope/key metrics and the same wrappers.
local DEFAULT_DURATION, MAX_DURATION = 30, 300;
local math_huge, table_sort, string_format = math.huge, table.sort, string.format;
local LEVEL_NAMES = {"overview", "components", "workload", "jobs", "timeline", "diagnostics"};
local KNOWN_MODULES = {app=true,classes=true,datahandling=true,symlink=true,runner=true,events=true,startup=true,
	collection=true,transmog=true,costs=true,search=true,tooltip=true,windows=true,cache=true,inventory=true,upgrade=true};
local BUCKET_LIMITS = {0.25,0.5,1,2,4,8,16,33,66,100,250,500,1000};
local currentSession;
local MAIN_THREAD = {};
performance.Enabled, performance.SessionID = false, 0;

---Validate a capture duration without changing active or scheduled capture state.
---@param durationSeconds number|string? Seconds from 1 to 300, including numeric strings; nil selects the 30-second default.
---@return number? seconds Accepted duration; nil for an invalid type, non-finite value, or out-of-range duration.
---@return string? errorMessage Validation message on failure; nil when the duration is accepted.
local function ValidateDuration(durationSeconds)
	if durationSeconds ~= nil and type(durationSeconds) ~= "number" and type(durationSeconds) ~= "string" then
		return nil, "Duration must be between 1 and 300 seconds.";
	end
	local seconds = tonumber(durationSeconds) or (durationSeconds == nil and DEFAULT_DURATION);
	if not seconds or seconds ~= seconds or seconds < 1 or seconds > MAX_DURATION then
		return nil, "Duration must be between 1 and 300 seconds.";
	end
	return seconds;
end

---@class ATTProfilerConfig
---@field seconds number Duration limit in seconds.
---@field level integer Selected cumulative level from one through six.
---@field include string Canonical comma-separated detail modules, or "all".
---@field exclude string? Canonical comma-separated excluded detail modules.
---@field includeModules table<string, boolean>? Parsed detail inclusion set; nil includes every module.
---@field excludeModules table<string, boolean> Parsed detail exclusion set.
---@field sampleEvery integer Periodic sampling interval for Level 6 scopes; lower levels always collect every call.
---@field slowThresholdMs number Minimum execution duration retained in the Level 5 timeline.
---@field metricBudget integer Maximum distinct detail metric IDs; overview retains its separate 64-ID allowance.
---@field jobBudget integer Maximum tracked jobs per capture.
---@field timelineBudget integer Maximum retained timeline entries in the circular buffer.
---@field stackByteBudget integer Maximum retained diagnostic caller-stack bytes per capture.
---@field stacks boolean Whether sampled Level 6 begins may retain bounded caller stacks.

---@class ATTPerformanceCaptureConfig: ATTProfilerOptions
---@field seconds number Validated session duration in seconds.
---@field level integer Selected cumulative depth, retained after recording stops.

---@class ATTProfilerOptions
---@field include string? Comma-separated module IDs; Levels 4 through 6 require an explicit value, including "all".
---@field exclude string? Comma-separated module IDs whose details should be omitted.
---@field sampleEvery integer? Level 6 sampling interval from one to 10000; defaults to ten.
---@field slowThresholdMs number? Finite nonnegative timeline duration threshold; defaults to ten milliseconds.
---@field metricBudget integer? Detail metric capacity from zero to 1024; defaults to 128.
---@field jobBudget integer? Tracked job capacity from zero to 1024; defaults to 128.
---@field timelineBudget integer? Timeline capacity from zero to 4096; defaults to 256.
---@field stackByteBudget integer? Retained caller-stack bytes from zero to 65536; defaults to 8192.
---@field stacks boolean? Enable sampled diagnostic caller-stack capture; defaults to false.

---Parse a module selection without retaining caller-owned data or accepting unknown IDs.
---@param value string? Comma-separated module selection; nil uses the supplied default.
---@param defaultAll boolean Whether an omitted selection includes every module.
---@return table<string, boolean>? modules Parsed module set; nil denotes all modules.
---@return string? canonical Canonical selection text on success.
---@return string? errorMessage Validation explanation on failure.
local function ParseModules(value, defaultAll)
	if value == nil then if defaultAll then return nil, "all"; end return {}, nil; end
	if type(value) ~= "string" or value == "" then return nil, nil, "Module filters must be nonempty comma-separated names."; end
	local modules, names = {}, {};
	for part in (value .. ","):gmatch("(.-),") do
		local name = part:match("^%s*(.-)%s*$"):lower();
		if name == "all" then
			if value:match("^%s*[Aa][Ll][Ll]%s*$") then return nil, "all"; end
			return nil, nil, "Use all alone in a module filter.";
		end
		if not KNOWN_MODULES[name] then return nil, nil, "Unknown profile module: " .. name; end
		if not modules[name] then modules[name] = true; names[#names + 1] = name; end
	end
	table_sort(names);
	return modules, table_concat(names, ",");
end

---Validate and copy all capture policy before changing current or saved state.
---@param durationSeconds number|string? Capture duration, defaulting to thirty seconds.
---@param level number|string? Level one through six or a documented level name; nil selects overview.
---@param options ATTProfilerOptions? Optional detail filters, sampling policy, and bounded capacities.
---@return ATTProfilerConfig? config Independent validated session policy; nil on any invalid input.
---@return string? errorMessage Explanation of invalid duration, level, filter, or option.
local function ValidateConfig(durationSeconds, level, options)
	local seconds, errorMessage = ValidateDuration(durationSeconds);
	if not seconds then return nil, errorMessage; end
	if level == nil then level = 1;
	elseif type(level) == "string" then
		local named = level:lower();
		level = tonumber(level);
		if not level then
			for i, name in ipairs(LEVEL_NAMES) do if name == named then level = i; break; end end
		end
	end
	if type(level) ~= "number" or level ~= math.floor(level) or level < 1 or level > 6 then
		return nil, "Level must be 1 to 6 or overview/components/workload/jobs/timeline/diagnostics.";
	end
	if options ~= nil and type(options) ~= "table" then return nil, "Profile options must be a table."; end
	options = options or {};
	local accepted = { include = true, exclude = true, sampleEvery = true, slowThresholdMs = true,
		metricBudget = true, jobBudget = true, timelineBudget = true, stackByteBudget = true, stacks = true };
	for name in pairs(options) do if not accepted[name] then return nil, "Unknown profile option: " .. tostring(name); end end
	if level >= 4 and options.include == nil then return nil, "Levels 4 to 6 require include=<modules> (or include=all)."; end
	local includeModules, include, filterError = ParseModules(options.include, true);
	if filterError then return nil, filterError; end
	local excludeModules, exclude;
	excludeModules, exclude, filterError = ParseModules(options.exclude, false);
	if filterError then return nil, filterError; end
	-- Excluding all is represented by a set of every registered module.
	if options.exclude ~= nil and excludeModules == nil then
		excludeModules = {};
		for module in pairs(KNOWN_MODULES) do excludeModules[module] = true; end
	end
	---@type ATTProfilerConfig
	local config = { seconds = seconds, level = level, include = include or "all", exclude = exclude,
		includeModules = includeModules, excludeModules = excludeModules or {}, sampleEvery = 10,
		slowThresholdMs = 10, metricBudget = 128, jobBudget = 128, timelineBudget = 256,
		stackByteBudget = 8192, stacks = false };
	local budgets = { sampleEvery = { 10, 1, 10000 }, metricBudget = { 128, 0, 1024 },
		jobBudget = { 128, 0, 1024 }, timelineBudget = { 256, 0, 4096 }, stackByteBudget = { 8192, 0, 65536 } };
	for name, bounds in pairs(budgets) do
		local value = options[name];
		if value == nil then value = bounds[1]; end
		if type(value) ~= "number" or value ~= value or value < bounds[2] or value > bounds[3] or value ~= math.floor(value) then
			return nil, name .. " must be an integer from " .. bounds[2] .. " to " .. bounds[3] .. ".";
		end
		config[name] = value;
	end
	config.slowThresholdMs = options.slowThresholdMs;
	if config.slowThresholdMs == nil then config.slowThresholdMs = 10; end
	if type(config.slowThresholdMs) ~= "number" or config.slowThresholdMs ~= config.slowThresholdMs
		or config.slowThresholdMs < 0 or config.slowThresholdMs == math_huge then
		return nil, "slowThresholdMs must be finite and nonnegative.";
	end
	if options.stacks ~= nil and type(options.stacks) ~= "boolean" then return nil, "stacks must be true or false."; end
	config.stacks = options.stacks == true;
	return config;
end


---@alias ATTProfilerAddonMetricName 'RecentAverageTime'|'CountTimeOver5Ms'|'CountTimeOver10Ms'

---@class ATTProfilerAddonSnapshot
---@field RecentAverageTime number? Rolling whole-addon average in milliseconds.
---@field CountTimeOver5Ms number? Cumulative whole-addon ticks exceeding five milliseconds.
---@field CountTimeOver10Ms number? Cumulative whole-addon ticks exceeding ten milliseconds.

-- Blizzard's whole-addon metrics provide context beside ATT's own scopes.
-- RecentAverageTime is rolling; threshold counts can be compared at session boundaries.
---@type ATTProfilerAddonMetricName[]
local AddonMetricNames = { "RecentAverageTime", "CountTimeOver5Ms", "CountTimeOver10Ms" };
---Read available whole-addon Blizzard metrics without requiring or enabling its profiler.
---Unavailable APIs, disabled profiling, API errors, and invalid values are skipped.
---@return ATTProfilerAddonSnapshot? snapshot Available whole-addon boundary values; nil when profiling is unavailable, disabled, or supplies no valid metrics.
local function GetAddonSnapshot()
	local api = C_AddOnProfiler;
	local metricEnum = Enum and Enum.AddOnProfilerMetric;
	if not api or type(api.GetAddOnMetric) ~= "function" or not metricEnum then return; end
	if type(api.IsEnabled) == "function" then
		local ok, enabled = pcall(api.IsEnabled);
		if not ok or not enabled then return; end
	end
	---@type ATTProfilerAddonSnapshot
	local snapshot = {};
	for _, name in ipairs(AddonMetricNames) do
		local metric = metricEnum[name];
		if type(metric) == "number" then
			local ok, value = pcall(api.GetAddOnMetric, appName, metric);
			if ok and type(value) == "number" and value >= 0 and value < math_huge then
				snapshot[name] = value;
			end
		end
	end
	if next(snapshot) then return snapshot; end
end



---Return the coroutine identity used by the original wrapper's session observations.
---@return thread|table thread Current coroutine, or the shared main-thread key.
local function CurrentThread()
	local thread, main = coroutine.running();
	return (not thread or main) and MAIN_THREAD or thread;
end

---Read accumulated execution time, excluding waits outside observed resumes.
---@param clock table? Existing coroutine execution clock; nil uses wall time.
---@param now number Current precise time in seconds.
---@return number seconds Current active execution clock, or wall time without a resume boundary.
local function ExecutionTime(clock, now)
	return clock and (clock.total + (clock.start and now - clock.start or 0)) or now;
end

---Apply the current detail filters without affecting the original cumulative statistics.
---@param module string Module attached to an explicitly selected original metric.
---@return boolean included True if detail observations are selected.
local function Includes(module)
	local config = currentSession.config;
	return not config.excludeModules[module] and (not config.includeModules or config.includeModules[module]);
end

---Retain a lifecycle or slow-call entry in the session's bounded chronological ring.
---@param id string Original metric's report label.
---@param event string Observed lifecycle state or slow duration.
---@param now number Precise event time in seconds.
---@param duration number? Optional execution duration in seconds.
local function Timeline(id, event, now, duration)
	local session = currentSession;
	if session.config.level < 5 or session.config.timelineBudget == 0 then return; end
	local slot = session.timelineNext;
	session.timeline[slot] = {id=id,event=event,at=now-session.start,duration=duration};
	session.timelineNext = slot % session.config.timelineBudget + 1;
	if session.timelineCount < session.config.timelineBudget then session.timelineCount = session.timelineCount + 1;
	else session.overwritten = session.overwritten + 1; end
end

---Add one observed invocation to the same session, within its job capacity.
---@param metric table Original scope/key metric containing static hook metadata.
---@param now number Current precise time in seconds.
---@param origin string queued, unknown, or call, depending on the observed entry boundary.
---@param thread thread|table Coroutine or main thread owning this work.
---@return table? job Retained observation; nil when disabled, filtered, or at capacity.
local function NewJob(metric, now, origin, thread)
	local session = currentSession;
	if session.config.level < 4 or not Includes(metric.module) then return; end
	if #session.jobs >= session.config.jobBudget then session.jobsDropped = session.jobsDropped + 1; return; end
	local parent = session.context[CurrentThread()];
	local job = {number=#session.jobs+1,id=metric.id,sessionID=performance.SessionID,origin=origin,
		queued=origin=="queued" and now or nil,created=now,thread=thread,parent=parent and parent.number,
		status=origin=="queued" and "queued" or "running"};
	session.jobs[#session.jobs+1] = job;
	Timeline(job.id, job.status, now);
	return job;
end

---Observe assignment of a queued function through the original AutoCaptureTable hook.
---@param metric table Original function metric configured with queued metadata.
---@return table? token Weak reference to the queued observation, or nil outside a selected session.
local function ObserveQueue(metric)
	if not performance.Enabled or not metric.queued or not metric.minLevel then return; end
	if currentSession.config.level < metric.minLevel or not Includes(metric.module) then return; end
	local job = NewJob(metric, GetTimePreciseSec(), "queued", CurrentThread());
	return job and setmetatable({job}, {__mode="v"}) or nil;
end

---Select or initialize generation-tagged samples directly on an existing metric.
---@param metric table Original count/time object; no separate metric registry is created.
---@return table? capture Accepted session fields; nil for filtered, sampled-out, or omitted entries.
local function CaptureMetric(metric)
	local session, level = currentSession, metric.minLevel;
	if not level or level > session.config.level or level > 1 and not Includes(metric.module) then return; end
	local capture = metric.capture;
	if not capture or capture.sessionID ~= performance.SessionID then
		local detail = level > 1;
		if detail and session.details >= session.config.metricBudget or not detail and session.overview >= 64 then
			session.metricsDropped = session.metricsDropped + 1; return;
		end
		capture = {sessionID=performance.SessionID,id=metric.id,module=metric.module,level=level,
			count=0,time=0,max=0,calls=0,seen=0,buckets={}};
		metric.capture = capture;
		session.metrics[#session.metrics+1] = metric;
		if detail then session.details = session.details + 1; else session.overview = session.overview + 1; end
	end
	if level == 6 then
		capture.seen = capture.seen + 1;
		if (capture.seen - 1) % session.config.sampleEvery ~= 0 then session.samplesSkipped = session.samplesSkipped + 1; return; end
	end
	if session.config.level >= 3 and level < 6 then capture.calls = capture.calls + 1; end
	return capture;
end

---Retain optional caller text for an accepted diagnostic in the session's bounded storage.
---@param metric table Original selected diagnostic metric.
---@return boolean? captured True when caller text was collected; nil when unavailable or omitted.
local function CaptureStack(metric)
	local session = currentSession;
	if not session.config.stacks or type(debugstack) ~= "function" then return; end
	if #session.stacks >= 128 or session.stackBytes >= session.config.stackByteBudget then session.stacksDropped=session.stacksDropped+1; return; end
	local ok, text = pcall(debugstack, 4, 8, 0);
	if not ok or type(text) ~= "string" then return; end
	text = text:sub(1, session.config.stackByteBudget-session.stackBytes);
	session.stackBytes = session.stackBytes + #text;
	session.stacks[#session.stacks+1] = {id=metric.id,text=text};
	return true;
end

---Begin added observations inside the original function wrapper.
---@param metric table Original scope/key count/time metric with optional capture labels.
---@param now number Original wrapper's start clock reading in seconds.
---@param queued table? Weak queue token created by the original assignment hook.
---@param target any First original argument; a coroutine for resume hooks.
---@return table? state Session observation state; nil leaves cumulative tracking alone.
local function BeginCapture(metric, now, queued, target)
	if not performance.Enabled then return; end
	local session, thread = currentSession, CurrentThread();
	local clock;
	if metric.resume and type(target) == "thread" then
		thread = target;
		clock = session.execution[thread];
		if not clock then clock={total=0};session.execution[thread]=clock; end
		clock.start = now;
	else clock = session.execution[thread]; end
	local capture = CaptureMetric(metric);
	if not capture then
		-- Resume accounting still serves selected nested functions if its row is omitted.
		return metric.resume and clock and {sessionID=performance.SessionID,clock=clock,resume=true,thread=thread} or nil;
	end
	if metric.minLevel == 6 and CaptureStack(metric) then now=GetTimePreciseSec(); end
	local job = queued and queued[1];
	if queued then queued[1] = nil; end
	if job and (job.sessionID ~= performance.SessionID or job.started) then job=nil; end
	if metric.resume then job=clock and clock.job; end
	if not job then job=NewJob(metric, now, (metric.queued or metric.resume) and "unknown" or "call", thread); end
	if job then
		job.started = job.started or now;
		job.clock, job.startClock = clock, job.startClock or ExecutionTime(clock, now);
		job.status = "running";
		if metric.resume and clock then clock.job=job; end
		Timeline(job.id, metric.resume and "resume" or "started", now);
	end
	local previous = session.context[thread];
	if job then session.context[thread]=job; end
	return {sessionID=performance.SessionID,capture=capture,metric=metric,thread=thread,clock=clock,resume=metric.resume,
		startClock=ExecutionTime(clock,now),job=job,previous=previous};
end

---Finish an original wrapper's successful return and update its session fields.
---@param state table? Added state from BeginCapture; nil requires no session work.
---@param now number Original wrapper's final precise clock reading in seconds.
---@param results table Original result pack; resume false carries the coroutine error object.
local function FinishCapture(state, now, results)
	if not state or state.sessionID ~= performance.SessionID or not performance.Enabled then return; end
	local session, clock = currentSession, state.clock;
	if state.resume and clock and clock.start then clock.total=clock.total+now-clock.start;clock.start=nil; end
	local capture = state.capture;
	if capture then
		local duration = math.max(0, ExecutionTime(clock,now)-state.startClock);
		capture.count, capture.time = capture.count+1, capture.time+duration;
		capture.max = math.max(capture.max,duration);
		local bucket = #BUCKET_LIMITS+1;
		for i, limit in ipairs(BUCKET_LIMITS) do if duration*1000 <= limit then bucket=i;break;end end
		capture.buckets[bucket]=(capture.buckets[bucket] or 0)+1;
		if duration*1000 >= session.config.slowThresholdMs and Includes(capture.module) then Timeline(capture.id,"slow",now,duration); end
	end
	local job = state.job;
	if job then
		local terminal = not state.resume or results[1] == false or coroutine.status(state.thread) == "dead";
		job.status = terminal and (state.resume and results[1] == false and "failed" or "completed") or "yielded";
		if terminal then job.ended=now;job.execution=math.max(0,ExecutionTime(clock,now)-job.startClock);end
		Timeline(job.id,job.status,now,job.execution);
		if terminal and clock and state.resume then clock.job=nil; end
	end
	if session.context[state.thread] == job then session.context[state.thread]=state.previous; end
	if state.resume and results[1] == false then
		for _, child in ipairs(session.jobs) do
			if child.thread == state.thread and not child.ended and child.started then
				child.status,child.ended,child.execution="failed",now,math.max(0,ExecutionTime(child.clock,now)-child.startClock);
				Timeline(child.id,"failed",now,child.execution);
			end
		end
		session.context[state.thread]=nil;
	end
end

---Copy scalar session policy without exposing mutable filter sets or observations.
---@return ATTPerformanceCaptureConfig? config Copied public fields, or nil before a capture.
function performance.GetConfig()
	if not currentSession then return; end
	local copy={};for key,value in pairs(currentSession.config) do if type(value)~="table" then copy[key]=value;end end
	return copy;
end

---Read the currently recording level without discarding the last report's policy.
---@return integer level Active depth, or zero while recording is stopped.
function performance.GetLevel() return performance.Enabled and currentSession.config.level or 0; end

---Discard only the previous session fields, retaining original count/time statistics.
---@return nil
function performance.Reset()
	if performance.Enabled then performance.Stop("reset"); end
	if currentSession then for _, metric in ipairs(currentSession.metrics) do metric.capture=nil;end end
	currentSession=nil;performance.Enabled=false;performance.SessionID=performance.SessionID+1;
end

---Freeze the current session without changing real work or cumulative tracking.
---@param reason string? End reason shown in the report; defaults to manual.
---@return boolean stopped True only when an active session was stopped.
function performance.Stop(reason)
	if not performance.Enabled then return false; end
	local session, now=currentSession,GetTimePreciseSec();
	session.stop,session.reason=now,reason or "manual";
	for _, clock in pairs(session.execution) do if clock.start then clock.total=clock.total+now-clock.start;clock.start=nil;end end
	for _, job in ipairs(session.jobs) do
		if not job.ended then
			job.execution=job.started and math.max(0,ExecutionTime(job.clock,now)-job.startClock) or 0;
			job.ended,job.status=now,"incomplete";Timeline(job.id,"incomplete",now,job.execution);
		end
	end
	session.addonStop=GetAddonSnapshot();performance.Enabled=false;
	return true;
end

---Start a bounded session on the original function metrics after full validation.
---@param seconds number|string? Duration from one to 300 seconds; nil selects thirty.
---@param level number|string? Depth one to six, or its name; nil selects overview.
---@param options ATTProfilerOptions? Copied detail filters, sampling policy, and capacities.
---@return boolean started True when recording began; invalid input preserves current state.
---@return number|string result Accepted duration, or validation explanation.
function performance.Start(seconds, level, options)
	local config, message=ValidateConfig(seconds,level,options);if not config then return false,message;end
	performance.Reset();
	currentSession={config=config,start=GetTimePreciseSec(),metrics={},overview=0,details=0,metricsDropped=0,
		jobs={},jobsDropped=0,execution=setmetatable({}, {__mode="k"}),context=setmetatable({}, {__mode="k"}),
		timeline={},timelineNext=1,timelineCount=0,overwritten=0,stacks={},stackBytes=0,stacksDropped=0,samplesSkipped=0};
	currentSession.addonStart=GetAddonSnapshot();performance.Enabled=true;
	local generation=performance.SessionID;
	C_Timer.After(config.seconds,function()
		if performance.Enabled and performance.SessionID==generation then
			performance.Stop("time limit");app.print("ATT profile stopped after",config.seconds,"seconds. Use /att profile report.");
		end
	end);
	return true,config.seconds;
end

---Persist a validated one-shot request in the existing account-wide SavedVariables.
---@param seconds number|string? Requested duration; nil selects thirty seconds.
---@param level number|string? Requested level; nil selects overview.
---@param options ATTProfilerOptions? Detail policy copied into the pending request.
---@return boolean scheduled True when storage and configuration are accepted.
---@return number|string result Accepted seconds or rejection message.
function performance.ScheduleNextLogin(seconds,level,options)
	local config,message=ValidateConfig(seconds,level,options);if not config then return false,message;end
	if type(AllTheThingsSavedVariables)~="table" then return false,"ATT has not finished loading yet.";end
	local saved={};for key,value in pairs(config) do if type(value)~="table" and key~="seconds" and key~="level" then saved[key]=value;end end
	AllTheThingsSavedVariables.ProfilerNextLogin={version=1,seconds=config.seconds,level=config.level,options=saved};
	AllTheThingsSavedVariables.ProfilerNextLoginSeconds=nil;return true,config.seconds;
end

---Remove a pending request without stopping the current session.
---@return boolean canceled True when either saved request format was removed.
function performance.CancelNextLogin()
	local saved=AllTheThingsSavedVariables;
	if type(saved)~="table" or saved.ProfilerNextLogin==nil and saved.ProfilerNextLoginSeconds==nil then return false;end
	saved.ProfilerNextLogin,saved.ProfilerNextLoginSeconds=nil,nil;return true;
end

---Consume one saved login request before the original login handler runs.
---@return boolean started True when its configuration began a session.
---@return number|string? result Duration, rejection reason, or nil when no request exists.
function performance.StartNextLogin()
	local saved=AllTheThingsSavedVariables;if type(saved)~="table" then return false;end
	local request,seconds=saved.ProfilerNextLogin,saved.ProfilerNextLoginSeconds;
	if request==nil and seconds==nil then return false;end
	saved.ProfilerNextLogin,saved.ProfilerNextLoginSeconds=nil,nil;
	if request==nil then return performance.Start(seconds);end
	if type(request)~="table" or request.version~=1 or request.seconds==nil or request.level==nil then return false,"Invalid or unsupported next-login profile request.";end
	return performance.Start(request.seconds,request.level,request.options);
end

---Format the upper-bound histogram bucket containing the 95th-percentile completed duration.
---@param capture table Session fields attached to an original metric.
---@return string bucket Millisecond upper bound, overflow, or dash without completed samples.
local function P95(capture)
	if capture.count==0 then return "-";end
	local total=0;for i=1,#BUCKET_LIMITS+1 do total=total+(capture.buckets[i] or 0);if total>=math.ceil(capture.count*0.95) then return BUCKET_LIMITS[i] and string_format("<=%.2f",BUCKET_LIMITS[i]) or ">1000";end end
	return "-";
end

---Copy session results from the original metrics without stopping an active capture.
---@return string report Tab-separated timings, counts, optional observations, and limits.
function performance.Report()
	local session=currentSession;if not session then return "ATT performance profile\nNo capture yet. Use /att profile start [seconds].";end
	local now=session.stop or GetTimePreciseSec();
	local lines={string_format("ATT performance profile (session %d; %s)",performance.SessionID,performance.Enabled and "running" or "stopped"),
		string_format("Elapsed: %.2f s / %.2f s limit; stopped: %s",now-session.start,session.config.seconds,session.reason or "-"),
		string_format("Level: %d (%s); include=%s; exclude=%s",session.config.level,LEVEL_NAMES[session.config.level],session.config.include,session.config.exclude or "-"),
		"Times are in ms. Completed function timings use observed coroutine execution clocks when available. Overlapping scopes are not additive.",
		string_format("Metrics: %d overview; %d detail; %d omitted entries",session.overview,session.details,session.metricsDropped)};
	-- Combine fixed report labels when copying rows; cumulative keys stay original.
	local rows, byID={},{};
	for _, metric in ipairs(session.metrics) do
		local capture=metric.capture;
		local row=byID[capture.id];
		if not row then
			row={id=capture.id,level=capture.level,count=0,time=0,max=0,calls=0,seen=0,buckets={}};
			rows[#rows+1]=row;byID[capture.id]=row;
		end
		row.count,row.time,row.calls,row.seen=row.count+capture.count,row.time+capture.time,row.calls+capture.calls,row.seen+capture.seen;
		row.max=math.max(row.max,capture.max);
		for bucket,count in pairs(capture.buckets) do row.buckets[bucket]=(row.buckets[bucket] or 0)+count;end
	end
	table_sort(rows,function(a,b)return a.time==b.time and a.id<b.id or a.time>b.time;end);
	if #rows==0 then lines[#lines+1]="No measurements captured.";
	else
		lines[#lines+1]="Timing ID\tCalls\tTotal ms\tAvg ms\tMax ms\tp95 bucket ms\tUnits";
		for _, row in ipairs(rows) do if row.count>0 then lines[#lines+1]=string_format("%s\t%d\t%.3f\t%.3f\t%.3f\t%s\t-",row.id,row.count,row.time*1000,row.time*1000/row.count,row.max*1000,P95(row));end end
		if session.config.level>=3 then
			lines[#lines+1]="Counter ID\tCount";
			for _, row in ipairs(rows) do if row.level<6 then lines[#lines+1]=row.id..".calls\t"..row.calls;end end
		end
	end
	if session.config.level>=4 then
		lines[#lines+1]=string_format("Jobs: %d retained; %d omitted",#session.jobs,session.jobsDropped);
		lines[#lines+1]="Job ID\tScope\tState\tOrigin\tQueue wait ms\tExecution ms\tWall ms\tParent";
		for _, job in ipairs(session.jobs) do
			local duration=job.execution or job.started and math.max(0,ExecutionTime(job.clock,now)-job.startClock) or 0;
			lines[#lines+1]=string_format("%d\t%s\t%s\t%s\t%s\t%.3f\t%.3f\t%s",job.number,job.id,job.status,job.origin,
				job.queued and job.started and string_format("%.3f",(job.started-job.queued)*1000) or "-",duration*1000,
				((job.ended or now)-(job.started or job.created))*1000,job.parent or "-");
		end
	end
	if session.config.level>=5 then
		lines[#lines+1]=string_format("Timeline: %d retained; %d overwritten",session.timelineCount,session.overwritten);
		lines[#lines+1]="At ms\tEvent\tID\tDuration ms";
		local first=session.timelineCount<session.config.timelineBudget and 1 or session.timelineNext;
		for i=0,session.timelineCount-1 do local row=session.timeline[(first+i-1)%session.config.timelineBudget+1];lines[#lines+1]=string_format("%.3f\t%s\t%s\t%s",row.at*1000,row.event,row.id,row.duration and string_format("%.3f",row.duration*1000) or "-");end
	end
	if session.config.level==6 then
		lines[#lines+1]=string_format("Diagnostics: sample every %d; %d skipped; stacks %d records / %d bytes; %d omitted",session.config.sampleEvery,session.samplesSkipped,#session.stacks,session.stackBytes,session.stacksDropped);
		for _, row in ipairs(rows) do if row.level==6 then lines[#lines+1]=string_format("Sampled: %s; eligible=%d; accepted=%d",row.id,row.seen,row.count);end end
		for _, stack in ipairs(session.stacks) do lines[#lines+1]="Caller: "..stack.id.."\n"..stack.text;end
	end
	if session.addonStart or session.addonStop then
		lines[#lines+1]="Blizzard C_AddOnProfiler (whole addon):";
		local start,stop=session.addonStart or {},session.addonStop or {};
		if start.RecentAverageTime then lines[#lines+1]=string_format("Recent average at start: %.3f ms",start.RecentAverageTime);end
		if stop.RecentAverageTime then lines[#lines+1]=string_format("Recent average at stop: %.3f ms",stop.RecentAverageTime);end
		for _, threshold in ipairs({5,10}) do local key="CountTimeOver"..threshold.."Ms";if start[key] and stop[key] and stop[key]>=start[key] then lines[#lines+1]="Ticks over "..threshold.." ms during capture: "..(stop[key]-start[key]);end end
	end
	return table_concat(lines,"\n");
end

---@class ATTPerformanceCaptureOptions
---@field id string? Fixed report ID; legacy scope/key stays unchanged.
---@field module string? Detail module for an explicitly labeled original wrapper.
---@field minLevel integer? First cumulative capture level accepting this function.
---@field queued boolean? Observe original AutoCaptureTable numeric assignments as queueing.
---@field resume boolean? Maintain active coroutine execution clocks around this original wrapper.
---@field login boolean? Consume a pending request before the original login handler.

---Apply optional capture labels to one original metric without replacing its wrapper.
---@param metric table Existing scope/key count/time metric.
---@param key string|number Original function key.
---@param scope string Explicit label for bounded reports; cumulative scope stays unchanged.
---@param options ATTPerformanceCaptureOptions? Static labels supplied by a load-time hook.
local function ConfigureCapture(metric,key,scope,options)
	if not options then return;end
	metric.id=options.id or (scope.."."..tostring(key)):gsub("[^%w_.%-]","_"):sub(1,96);
	assert(type(metric.id)=="string" and #metric.id>0 and #metric.id<=96,"CaptureFunction IDs must contain 1-96 bytes.");
	metric.module,metric.minLevel=options.module or "app",options.minLevel or 2;
	metric.queued,metric.resume,metric.login=options.queued,options.resume,options.login;
end

---Read scalar scope labels used by the original automatic assignment hook.
---@param scope table Existing original scope object.
---@return ATTPerformanceCaptureOptions? options Labels for subsequent assignments, or nil for legacy-only scopes.
local function ScopeCaptureOptions(scope)
	if not rawget(scope, "__level") then return;end
	return {id=rawget(scope, "__id"),module=rawget(scope, "__module"),minLevel=rawget(scope, "__level"),queued=rawget(scope, "__queued"),resume=rawget(scope, "__resume")};
end


-- Returns the Function wrapped in a performance capture function.
-- NOTE: The Caller must replace the original reference
---Wrap with the original cumulative tracker and optional session metadata.
---@param func any Original target; nonfunctions are returned unchanged.
---@param key string|number Original cumulative key within its existing scope.
---@param scope string? Original scope label; defaults to the function identity.
---@param options ATTPerformanceCaptureOptions? Optional level, module, queue, resume, or login labels.
---@return any captured Original tracker wrapper; an already owned wrapper is reconfigured in place.
---Function overload: returns the original tracker wrapper, or reuses a wrapper it already owns.
---@overload fun(func: function, key: string|number, scope?: string, options?: ATTPerformanceCaptureOptions): function
local function CaptureFunction(func, key, scope, options)

	if type(func) ~= "function" then return func end
	-- Reuse the existing wrapper when an explicit hook adds metadata later.
	local ownedScope = scopes[func];
	if ownedScope and not (options and options.queued) then
		for _, metric in pairs(ownedScope) do
			if type(metric) == "table" and metric.wrapper == func then
				ConfigureCapture(metric, key, scope or ownedScope.__scope, options);
				return func;
			end
		end
	end
	local perfScope = GetPerfForScope(func, scope or tostring(func))
	if not perfScope then
		print("Perf.F.NOPERF:",func,key,scope)
		return func
	end

	-- Perf capture of func calls
	local typePerf = perfScope[key];
	ConfigureCapture(typePerf, key, scope or perfScope.__scope, options);
	local queued = ObserveQueue(typePerf);
	-- print("Perf.F:",perfScope.__scope,key)
	local captured = function(...)
		if typePerf.login then
			local ok, result = performance.StartNextLogin();
			if ok then app.print("ATT login profile started for", result, "seconds at level", performance.GetLevel(), ".");
			elseif result then app.print("ATT next-login profile was not started:", result); end
		end
		local now = GetTimePreciseSec();
		local state = BeginCapture(typePerf, now, queued, select(1, ...));
		local res = {func(...)};
		-- print(now,perfScope.__scope,key,"<")
		local ended = GetTimePreciseSec();
		typePerf.time = typePerf.time + (ended - now);
		typePerf.count = typePerf.count + 1;
		FinishCapture(state, ended, res);
		return unpack(res);
	end
	typePerf.wrapper = captured;
	scopes[captured] = perfScope;
	return captured;
end

---Label and capture fields through the existing table-wrapping path.
---@param table table Original object whose function fields are tracked.
---@param scope string? Cumulative scope label.
---@param options ATTPerformanceCaptureOptions? Optional labels shared by selected fields.
---@return table captured The same original object.
local function CaptureTable(table, scope, options)
	if IgnorePerf(table, scope) and not (options and scopes[table]) then return table end
	local perfScope = GetPerfForScope(table, scope or tostring(table))
	if options then
		perfScope.__id, perfScope.__module, perfScope.__level = options.id, options.module, options.minLevel or 2;
		perfScope.__queued, perfScope.__resume = options.queued, options.resume;
	end

	-- print("Perf.T:",scope,table,getmetatable(table))
	local keys = {}
	for key,_ in pairs(table) do
		keys[#keys + 1] = key
	end
	for _,key in ipairs(keys) do
		table[key] = CaptureFunction(table[key], key, scope, options)
	end
	-- replace the __index function of this table as well if one is defined
	local mt = getmetatable(table)
	if mt and mt.__index and type(mt.__index) == "function" then
		mt.__index = CaptureFunction(mt.__index, "__index", scope, options)
	end
	return table;
end

local perf_meta_capture
---Extend the original automatic hook with optional labels for future assignments.
---@param t table Original table receiving its existing assignment hook.
---@param scope string? Original scope label, nested under host when supplied.
---@param host table? Existing tracked parent scope.
---@param options ATTPerformanceCaptureOptions? Optional capture metadata for assigned functions.
---@return table? captured Original table, or nil when its host is not tracked.
local function AutoCaptureTable(t, scope, host, options)
	if IgnorePerf(t, scope) then return t end
	-- If this table has a host table, then attach the scope from the host table if the host is currently performance-tracked
	if host then
		local hostperf = GetPerfForScope(host)
		if not hostperf then
			-- print("Perf.A.IgnoreHost",t,scope,host)
			return
		end
		local hostscope = hostperf.__scope
		print("Perf.A.host",hostscope,".",scope)
		scope = hostscope.."."..scope
	end
	CaptureTable(t, scope, options)
	local perf = GetPerfForScope(t, scope or tostring(t))

	-- setup the captured table for auto-tacking
	local mt = getmetatable(t)
	if mt then
		if mt.__newindex then
			print("Perf.A.FAIL",scope,perf.__scope,mt,"=>",mt.__newindex)
		else
			print("Perf.A.__newindex",scope,perf.__scope)
			mt.__newindex = perf_meta_capture.__newindex
		end
	else
		print("Perf.A",scope)
		setmetatable(t, perf_meta_capture)
	end
	return t
end

perf_meta_capture = {
	-- when tracking performance, assignment of a new value into the table should automatically wrap all
	-- the functions so that the performance wrap versions are used afterwards when referenced
	__newindex = function(t, key, val)
		if IgnorePerf(val) then
			rawset(t, key, val)
			return
		end
		local keytype = type(key)
		if keytype ~= "string" and keytype ~= "number" then
			rawset(t, key, val)
			return
		end

		local currentScope = GetPerfForScope(t, "NOSCOPE");
		local options = ScopeCaptureOptions(currentScope);
		local perfkey
		-- for number keys, we need to track the unique val as the scope rather than the key's value, since the same function
		-- may get repeatedly assigned into the same table at different times
		if keytype == "number" then
			perfkey = tostring(val)
		else
			perfkey = key
		end

		if type(val) == "table" then
			AutoCaptureTable(val, perfkey, t, options)
			rawset(t, key, val)
			return
		elseif type(val) == "function" then
			local scope = (GetPerfForScope(t) or GetPerfForScope(t, "NOSCOPE")).__scope
			local pf = CaptureFunction(val, perfkey, scope, options)
			if pf then
				rawset(t, key, pf)
				return
			end
		end

		rawset(t, key, val)
	end,
}

-- Performs CaptureTable and sets a metatable.__newindex on the given table which automatically performance-captures all assigned keys of the table (if applicable)
performance.AutoCaptureTable = AutoCaptureTable
-- Replaces all functions in the provided table with performance capture functions of those functions
performance.CaptureTable = CaptureTable
-- Returns a performance capture function for the function
performance.CaptureFunction = CaptureFunction

-- Performance Tracking for AllTheThings Functionality
print("Perf:Init")
AutoCaptureTable(app, appName);
