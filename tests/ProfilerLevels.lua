-- Run from the repository root: lua tests/ProfilerLevels.lua
-- Exercise cumulative capture levels through the original engine's function wrappers.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))();
local now, clocks, stackCalls, timers = 100, 0, 0, {};
unpack = unpack or table.unpack;
tinsert = table.insert;
GetTimePreciseSec = function() clocks=clocks+1; return now; end;
C_Timer = {After=function(seconds, callback) timers[#timers+1]={seconds, callback}; end};
C_AddOnProfiler, Enum = nil, nil;
local app = {print=function() end};
Fixture.LoadEnabled(app);
local p = assert(app.__perf);

---Check a literal report fragment with the complete report on failure.
---@param fragment string Expected report text.
local function Contains(fragment)
	local report=p.Report();
	assert(report:find(fragment,1,true), "missing "..fragment.."\n"..report);
end

---Reject an unexpected metric ID or other literal report text.
---@param fragment string Text that must not appear in the current report.
local function Absent(fragment)
	local report=p.Report();
	assert(not report:find(fragment,1,true), "unexpected "..fragment.."\n"..report);
end

---Create a real original-engine wrapper with explicit bounded metadata.
---@param key string Existing scope key, also used as the stable report suffix.
---@param module string Detail module controlled by session filters.
---@param level integer Minimum cumulative capture level for this function.
---@param milliseconds number? Fake target duration; defaults to one millisecond.
---@return function captured Original engine wrapper executing the test workload.
---@return table metric Existing scope metric containing cumulative and optional bounded fields.
local function Timed(key, module, level, milliseconds)
	local captured=p.CaptureFunction(function() now=now+(milliseconds or 1)/1000; end, key, "Levels", {
		module=module, minLevel=level, id="levels."..key,
	});
	return captured, p.Levels[key];
end

local targets, metrics = {}, {};
for level=1,6 do targets[level],metrics[level]=Timed("level"..level,"costs",level,level); end
local foreign, foreignMetric=Timed("foreign","search",2,4);
assert(p.GetLevel()==0 and rawget(app,"Profiler")==nil);

-- Idle wrappers keep original timing but do not allocate bounded metric state.
local before=clocks;
targets[2]();
assert(clocks>before and metrics[2].count==1 and metrics[2].capture==nil and #timers==0);

-- Each cumulative level includes explicit lower-level hooks and rejects higher ones.
for level=1,6 do
	assert(p.Start(30,level,level>=4 and {include="all"} or nil));
	assert(p.GetLevel()==level and p.GetConfig().level==level);
	for minimum=1,6 do
		targets[minimum]();
		if minimum<=level then Contains("levels.level"..minimum.."\t1\t");
		else Absent("levels.level"..minimum.."\t"); end
	end
end
assert(p.Start(30,"components") and p.GetConfig().level==2);

-- Invalid policy is rejected atomically, without new timeout timers or state changes.
local report, config, timerCount=p.Report(),p.GetConfig(),#timers;
for _,invalid in ipairs({0,7,1.5,"unknown",false,{},math.huge,0/0}) do
	assert(not p.Start(30,invalid));
	assert(p.Report()==report and p.GetConfig().level==config.level and #timers==timerCount);
end
for _,options in ipairs({{sampleEvery=0},{sampleEvery=1.5},{timelineBudget=4097},
	{metricBudget=-1},{jobBudget=math.huge},{stackByteBudget=65537},
	{slowThresholdMs=0/0},{slowThresholdMs=-1},{stacks="true"},
	{include="missing"},{include=""},{include="costs,"},{include="all,costs"},{typo=true}}) do
	assert(not p.Start(30,2,options));
	assert(p.Report()==report and #timers==timerCount);
end
for level=4,6 do assert(not p.Start(30,level)); end
assert(not p.Start(30,2,"invalid") and p.Report()==report);

-- Filters apply to detail; overview stays global, and caller-owned options are copied.
local options={include="costs,runner",exclude="runner",metricBudget=1};
assert(p.Start(30,4,options));
options.include,options.exclude,options.metricBudget="search","costs",0;
assert(p.GetConfig().include=="costs,runner" and p.GetConfig().metricBudget==1);
targets[1](); targets[2](); targets[3](); foreign();
Contains("levels.level1\t1\t1.000"); Contains("levels.level2\t1\t2.000");
Absent("levels.level3\t"); Absent("levels.foreign\t");
assert(foreignMetric.count>0, "filtering disabled original cumulative timing");

-- A zero detail budget still permits independent overview observations.
assert(p.Start(30,3,{metricBudget=0}));
targets[2](); targets[1]();
Absent("levels.level2\t"); Contains("levels.level1\t1\t1.000");

-- Actual function entries produce Level 3 counters; resumes are not new entries.
assert(p.Start(30,3,{include="costs"})); targets[2](); targets[2]();
Contains("levels.level2.calls\t2");
assert(metrics[2].capture.calls==2 and metrics[2].capture.count==2);

-- A capture replaced inside its target cannot receive that old invocation's result.
local replaced=p.CaptureFunction(function()
	assert(p.Start(30,2)); now=now+0.004;
end,"replaced","Levels",{module="costs",minLevel=2,id="levels.replaced"});
assert(p.Start(30,2)); replaced();
Absent("levels.replaced\t1\t");
assert(p.Levels.replaced.count==1);

-- Stopping inside a target freezes output before the target returns.
local stoppedReport;
local stopped=p.CaptureFunction(function()
	assert(p.Stop()); stoppedReport=p.Report(); now=now+0.004;
end,"stopped","Levels",{module="costs",minLevel=2,id="levels.stopped"});
assert(p.Start(30,2)); stopped();
assert(p.Report()==stoppedReport and p.GetLevel()==0 and p.GetConfig().level==2);

-- Late explicit hooks use the current filters without creating another registry.
assert(p.Start(30,3,{exclude="all"}));
local late=Timed("late","costs",2,2); local lateOverview=Timed("late_overview","search",1,3);
late(); lateOverview(); Absent("levels.late\t"); Contains("levels.late_overview\t1\t3.000");

-- Sampling reduces additional observations, while legacy totals still count every call.
local diagnostic,diagnosticMetric=Timed("diagnostic","costs",6,6);
local cumulativeCount,cumulativeTime=diagnosticMetric.count,diagnosticMetric.time;
assert(p.Start(30,6,{include="costs",sampleEvery=3,stacks=false}));
for i=1,7 do
	before=clocks; diagnostic();
	assert(clocks>=before+2, "sampling suppressed the original cumulative clock reads");
end
local capture=assert(diagnosticMetric.capture);
assert(capture.seen==7 and capture.count==3 and math.abs(capture.time-0.018)<1e-9);
assert(diagnosticMetric.count==cumulativeCount+7 and math.abs(diagnosticMetric.time-cumulativeTime-0.042)<1e-9);
Contains("levels.diagnostic\t3\t18.000");
assert(p.Stop()); report=p.Report(); diagnostic(); assert(p.Report()==report);

-- Optional caller stacks have a byte limit and do not become target execution time.
debugstack=function()
	stackCalls=stackCalls+1; now=now+0.100;
	return "caller frame repeated to demonstrate truncation";
end;
local stackTarget,stackMetric=Timed("stack","costs",6,1);
assert(p.Start(30,6,{include="costs",sampleEvery=1,stacks=true,stackByteBudget=12}));
stackTarget(); stackTarget();
assert(stackCalls==1 and stackMetric.capture.count==2);
assert(math.abs(stackMetric.capture.time-0.002)<1e-9, "stack collection was included in target timing");
Contains("caller frame"); Absent("caller frame repeated");
assert(p.Start(30,6,{include="costs",stacks=true,stackByteBudget=0,metricBudget=0,timelineBudget=0}));
stackTarget(); assert(stackCalls==1); Absent("levels.stack\t");

-- Overview capacity is independent of the detail metric budget.
local overview={};
for i=1,65 do overview[i]=Timed("overview"..i,"costs",1,1); end
assert(p.Start(30,2,{metricBudget=0}));
for i=1,65 do overview[i](); end
Contains("levels.overview1\t1\t1.000"); Contains("levels.overview64\t1\t1.000");
Absent("levels.overview65\t");

print("PASS: original-engine levels, copied policy, filters, capacity isolation, entry counts, session boundaries, sampled observations, and bounded stacks");
