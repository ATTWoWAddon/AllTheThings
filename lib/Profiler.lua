-- Short-lived, opt-in performance captures for ATT's explicit instrumentation.
-- Keep the disabled path free of timers, table allocations, and API calls.
---@type string, table
local appName, app = ...;

local math_ceil, math_huge, string_format, table_concat, table_sort, type, tonumber
	= math.ceil, math.huge, string.format, table.concat, table.sort, type, tonumber;
local GetTimePreciseSec, C_Timer_After = GetTimePreciseSec, C_Timer.After;

local DEFAULT_DURATION = 30;
local MAX_DURATION = 300;
local MAX_METRICS = 64;
local MAX_ID_BYTES = 96;
local BUCKET_LIMITS = { 0.25, 0.5, 1, 2, 4, 8, 16, 33, 66, 100, 250, 500, 1000 };

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

---@alias ATTProfilerMetricKind 'time'|'counter'

---Aggregated execution or wall-clock durations for a single stable metric ID.
---@class ATTProfilerTimingMetric
---@field id string Stable metric ID, at most 96 bytes.
---@field kind 'time'
---@field count integer Number of accepted duration samples.
---@field total number Sum of sample durations in milliseconds.
---@field max number Largest sample duration in milliseconds.
---@field units number Sum of valid, nonnegative work-unit counts supplied with samples.
---@field hasUnits boolean? Whether at least one sample supplied a valid work-unit count.
---@field buckets table<integer, integer> Sparse histogram indexed by duration bucket.

---Accumulated nonnegative increments for a single stable metric ID.
---@class ATTProfilerCounterMetric
---@field id string Stable metric ID, at most 96 bytes.
---@field kind 'counter'
---@field count number Sum of accepted increments; fractional increments are allowed.

---@alias ATTProfilerMetric ATTProfilerTimingMetric|ATTProfilerCounterMetric
---@alias ATTProfilerAddonMetricName 'RecentAverageTime'|'CountTimeOver5Ms'|'CountTimeOver10Ms'

---Optional Blizzard metrics sampled at a capture boundary, when its profiler is available.
---@class ATTProfilerAddonSnapshot
---@field RecentAverageTime number? Rolling whole-addon average duration in milliseconds.
---@field CountTimeOver5Ms number? Cumulative whole-addon ticks exceeding five milliseconds.
---@field CountTimeOver10Ms number? Cumulative whole-addon ticks exceeding ten milliseconds.

---Bounded, in-memory capture service for explicitly instrumented ATT work.
---Callers must retain SessionID when timing work that can span a capture change.
---@class ATTProfiler
---@field Enabled boolean Whether Record and Count currently accept samples.
---@field SessionID integer Generation incremented by Reset and every successful Start.
local Profiler = { Enabled = false, SessionID = 0 };
app.Profiler = Profiler;

---@type table<string, ATTProfilerMetric>, integer, integer
local metrics, metricCount, droppedSamples = {}, 0, 0;
---@type number?, number?, number?, string?
local startedAt, endedAt, durationLimit, stoppedReason;
---@type ATTProfilerAddonSnapshot?, ATTProfilerAddonSnapshot?
local addonMetricAtStart, addonMetricAtStop;

---Reuse a metric of the requested kind or allocate one within the 64-ID capture limit.
---An ID cannot be shared by timing and counter samples. New IDs beyond the limit
---increment the dropped-sample count and return nil.
---@param id string Stable capture metric ID already validated by the caller.
---@param kind ATTProfilerMetricKind Aggregation kind; an existing ID must use the same kind.
---@return ATTProfilerMetric? metric Existing or newly allocated metric; nil on a kind mismatch or when a new ID would exceed the limit.
---Timing overload: returns a timing metric containing duration, work-unit, and histogram aggregates, or nil when registration is rejected.
---@overload fun(id: string, kind: 'time'): ATTProfilerTimingMetric?
---Counter overload: returns a counter metric containing accumulated increments, or nil when registration is rejected.
---@overload fun(id: string, kind: 'counter'): ATTProfilerCounterMetric?
local function NewMetric(id, kind)
	local metric = metrics[id];
	if metric then return metric.kind == kind and metric or nil; end
	if metricCount >= MAX_METRICS then
		droppedSamples = droppedSamples + 1;
		return nil;
	end
	metricCount = metricCount + 1;
	metric = { id = id, kind = kind, count = 0 };
	-- The timing fields are initialized below before the metric can escape.
	---@cast metric ATTProfilerMetric
	if kind == "time" then
		metric.total = 0;
		metric.max = 0;
		metric.units = 0;
		metric.buckets = {};
	end
	metrics[id] = metric;
	return metric;
end

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

---Add one finite, nonnegative duration sample in milliseconds to the active capture.
---Disabled captures and invalid IDs or durations are ignored. Optional units describe
---work completed by this sample; only valid, finite, nonnegative units are accumulated.
---@param id string Stable scope ID, 1 to 96 bytes.
---@param durationMs number Finite, nonnegative sample duration in milliseconds.
---@param units number? Optional finite, nonnegative work-unit count; invalid values are ignored.
function Profiler.Record(id, durationMs, units)
	if not Profiler.Enabled then return; end
	if type(id) ~= "string" or #id == 0 or #id > MAX_ID_BYTES or type(durationMs) ~= "number"
		or durationMs < 0 or durationMs ~= durationMs or durationMs == math_huge then return; end
	local metric = NewMetric(id, "time");
	if not metric then return; end
	metric.count = metric.count + 1;
	metric.total = metric.total + durationMs;
	if durationMs > metric.max then metric.max = durationMs; end
	if type(units) == "number" and units >= 0 and units < math_huge then
		metric.units = metric.units + units;
		metric.hasUnits = true;
	end
	local bucket = #BUCKET_LIMITS + 1;
	for i = 1, #BUCKET_LIMITS do
		if durationMs <= BUCKET_LIMITS[i] then
			bucket = i;
			break;
		end
	end
	metric.buckets[bucket] = (metric.buckets[bucket] or 0) + 1;
end

---Accumulate a finite, nonnegative counter increment in the active capture.
---Disabled captures and invalid IDs or increments are ignored; delta defaults to one.
---@param id string Stable counter ID, 1 to 96 bytes.
---@param delta number? Finite, nonnegative increment, including fractions; nil defaults to one.
function Profiler.Count(id, delta)
	if not Profiler.Enabled then return; end
	if type(id) ~= "string" or #id == 0 or #id > MAX_ID_BYTES then return; end
	delta = delta or 1;
	if type(delta) ~= "number" or delta < 0 or delta ~= delta or delta == math_huge then return; end
	local metric = NewMetric(id, "counter");
	if metric then metric.count = metric.count + delta; end
end

---Stop the active capture, retain its data, and sample the final Blizzard metrics.
---The session generation stays unchanged so reports can still identify this capture.
---@param reason string? Stop reason shown in the report; nil defaults to "manual".
---@return boolean stopped True when an active capture was stopped; false if recording was already disabled.
function Profiler.Stop(reason)
	if not Profiler.Enabled then return false; end
	Profiler.Enabled = false;
	endedAt = GetTimePreciseSec();
	stoppedReason = reason or "manual";
	addonMetricAtStop = GetAddonSnapshot();
	return true;
end

---Disable capture and discard all samples and boundary snapshots.
---Incrementing SessionID invalidates pending timeout callbacks and callers' timing tokens.
function Profiler.Reset()
	Profiler.Enabled = false;
	-- Invalidate outstanding auto-stop callbacks and any instrumented job state.
	Profiler.SessionID = Profiler.SessionID + 1;
	metrics, metricCount, droppedSamples = {}, 0, 0;
	startedAt, endedAt, durationLimit, stoppedReason = nil, nil, nil, nil;
	addonMetricAtStart, addonMetricAtStop = nil, nil;
end

---Start a fresh capture for 1 to 300 seconds, using 30 seconds when omitted.
---Invalid durations preserve the current capture. A successful start discards previous
---data, increments SessionID, and schedules an automatic stop guarded by that generation.
---@param durationSeconds number|string? Duration from 1 to 300 seconds, including numeric strings; nil defaults to 30.
---@return boolean started True if a fresh capture replaced the previous one; false leaves the current capture unchanged.
---@return number|string result Accepted seconds when started is true; otherwise an error message.
function Profiler.Start(durationSeconds)
	local seconds, errorMessage = ValidateDuration(durationSeconds);
	if not seconds then
		---@cast errorMessage string
		return false, errorMessage;
	end
	Profiler.Reset();
	Profiler.Enabled = true;
	durationLimit = seconds;
	startedAt = GetTimePreciseSec();
	addonMetricAtStart = GetAddonSnapshot();
	local sessionID = Profiler.SessionID;
	C_Timer_After(seconds, function()
		if Profiler.Enabled and Profiler.SessionID == sessionID then
			Profiler.Stop("time limit");
			app.print("ATT profile stopped after", seconds, "seconds. Use /att profile report.");
		end
	end);
	return true, seconds;
end

---Save a one-shot request for the next character login or UI reload that loads ATT.
---Read SavedVariables at call time because they are not restored when this library loads.
---Scheduling replaces only the pending request; the current capture and report are kept.
---@param durationSeconds number|string? Seconds from 1 to 300, including numeric strings; nil defaults to 30.
---@return boolean scheduled True when the request was saved; false leaves existing capture and request state unchanged.
---@return number|string result Saved duration on success; a validation or SavedVariables availability message on failure.
function Profiler.ScheduleNextLogin(durationSeconds)
	local seconds, errorMessage = ValidateDuration(durationSeconds);
	if not seconds then
		---@cast errorMessage string
		return false, errorMessage;
	end
	local savedVariables = AllTheThingsSavedVariables;
	if type(savedVariables) ~= "table" then
		return false, "ATT has not finished loading yet.";
	end
	savedVariables.ProfilerNextLoginSeconds = seconds;
	return true, seconds;
end

---Remove a pending next-login request without stopping or resetting the active capture.
---@return boolean canceled True when a saved request was removed; false when none was queued or SavedVariables are unavailable.
function Profiler.CancelNextLogin()
	local savedVariables = AllTheThingsSavedVariables;
	if type(savedVariables) ~= "table" or savedVariables.ProfilerNextLoginSeconds == nil then return false; end
	savedVariables.ProfilerNextLoginSeconds = nil;
	return true;
end

---Consume a one-shot request at the beginning of ATT's existing PLAYER_LOGIN handler.
---Clear the request before starting, including invalid saved values, to prevent repeat captures.
---With no request this performs no clock reads, timer scheduling, or Blizzard profiler calls.
---@return boolean started True when a scheduled capture began; false when no request exists or its duration is invalid.
---@return number|string? result Accepted seconds on success, a validation message for an invalid request, or nil when nothing was queued.
function Profiler.StartNextLogin()
	local savedVariables = AllTheThingsSavedVariables;
	if type(savedVariables) ~= "table" then return false; end
	local seconds = savedVariables.ProfilerNextLoginSeconds;
	if seconds == nil then return false; end
	savedVariables.ProfilerNextLoginSeconds = nil;
	return Profiler.Start(seconds);
end

---Format the histogram bucket containing the approximate 95th percentile duration.
---Buckets report upper bounds in milliseconds; the overflow bucket reports >1000.
---@param metric ATTProfilerTimingMetric Timing sample count and histogram used to locate the approximate p95 bucket.
---@return string bucket p95 upper-bound bucket in milliseconds, ">1000" for overflow, or "n/a" when the histogram cannot reach the percentile.
local function Percentile95(metric)
	local target, seen = math_ceil(metric.count * 0.95), 0;
	for i = 1, #BUCKET_LIMITS + 1 do
		seen = seen + (metric.buckets[i] or 0);
		if seen >= target then
			if i > #BUCKET_LIMITS then return ">1000"; end
			return string_format("<=%.2f", BUCKET_LIMITS[i]);
		end
	end
	return "n/a";
end

---Build a copyable text report from the current or most recently stopped capture.
---This does not stop or reset capture. Timings are sorted by total duration, p95 is a
---histogram estimate, and overlapping scopes must not be summed as exclusive CPU time.
---@return string report Capture state, tab-separated metrics, and optional Blizzard context; usage text when no capture exists.
function Profiler.Report()
	---@type string[]
	local lines = {};
	if not startedAt then
		return "ATT performance profile\nNo capture yet. Use /att profile start [seconds].";
	end
	local elapsed = (endedAt or GetTimePreciseSec()) - startedAt;
	lines[#lines + 1] = string_format("ATT performance profile (session %d; %s)",
		Profiler.SessionID, Profiler.Enabled and "running" or "stopped");
	lines[#lines + 1] = string_format("Elapsed: %.2f s / %.2f s limit%s", elapsed, durationLimit,
		stoppedReason and ("; stopped: " .. stoppedReason) or "");
	lines[#lines + 1] = "Times are in ms. Runner slices exclude between-frame waits. Overlapping scopes are not additive.";

	---@type ATTProfilerTimingMetric[], ATTProfilerCounterMetric[]
	local timings, counters = {}, {};
	for _, metric in pairs(metrics) do
		---@type ATTProfilerMetric[]
		local list = metric.kind == "time" and timings or counters;
		list[#list + 1] = metric;
	end
	table_sort(timings, function(a, b)
		if a.total == b.total then return a.id < b.id; end
		return a.total > b.total;
	end);
	table_sort(counters, function(a, b) return a.id < b.id; end);
	if #timings > 0 then
		lines[#lines + 1] = "";
		lines[#lines + 1] = "Timing ID\tCalls\tTotal ms\tAvg ms\tMax ms\tp95 bucket ms\tUnits";
		for _, metric in ipairs(timings) do
			lines[#lines + 1] = string_format("%s\t%d\t%.3f\t%.3f\t%.3f\t%s\t%s",
				metric.id, metric.count, metric.total, metric.total / metric.count,
				metric.max, Percentile95(metric), metric.hasUnits and string_format("%.0f", metric.units) or "-");
		end
	end
	if #counters > 0 then
		lines[#lines + 1] = "";
		lines[#lines + 1] = "Counter ID\tCount";
		for _, metric in ipairs(counters) do
			lines[#lines + 1] = string_format("%s\t%s", metric.id, metric.count);
		end
	end
	if #timings == 0 and #counters == 0 then
		lines[#lines + 1] = "No measurements captured.";
	end
	if droppedSamples > 0 then
		lines[#lines + 1] = string_format("Dropped samples after %d distinct metric IDs: %d", MAX_METRICS, droppedSamples);
	end
	if addonMetricAtStart or addonMetricAtStop then
		lines[#lines + 1] = "";
		lines[#lines + 1] = "Blizzard C_AddOnProfiler (whole addon):";
		local before = addonMetricAtStart and addonMetricAtStart.RecentAverageTime;
		local after = addonMetricAtStop and addonMetricAtStop.RecentAverageTime;
		if before then lines[#lines + 1] = string_format("Recent average at start: %.3f ms", before); end
		if after then lines[#lines + 1] = string_format("Recent average at stop: %.3f ms", after); end
		for _, threshold in ipairs({ 5, 10 }) do
			local key = "CountTimeOver" .. threshold .. "Ms";
			---@cast key ATTProfilerAddonMetricName
			before = addonMetricAtStart and addonMetricAtStart[key];
			after = addonMetricAtStop and addonMetricAtStop[key];
			if before and after and after >= before then
				lines[#lines + 1] = string_format("Ticks over %d ms during capture: %.0f", threshold, after - before);
			end
		end
	end
	return table_concat(lines, "\n");
end
