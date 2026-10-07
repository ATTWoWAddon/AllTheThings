-- Run from the repository root: lua tests/Profiler.lua
-- Session lifecycle and Blizzard context use the actual original optional tracker.
local Fixture=assert(loadfile("tests/ProfilerFixture.lua"))();
local app,env=Fixture.New();
local apiCalls,average,over5,over10=0,2.5,10,2;
Enum={AddOnProfilerMetric={RecentAverageTime=7,CountTimeOver5Ms=8,CountTimeOver10Ms=9}};
C_AddOnProfiler={IsEnabled=function()return true;end,GetAddOnMetric=function(name,kind)
	assert(name=="AllTheThings");apiCalls=apiCalls+1;return kind==7 and average or kind==8 and over5 or over10;
end};
Fixture.LoadEnabled(app);
local p=app.__perf;

---Assert literal report text without depending on column spacing.
---@param text string Actual copied report.
---@param fragment string Expected text or tab-separated row.
local function Contains(text,fragment)assert(text:find(fragment,1,true),"missing "..fragment.."\n"..text);end

assert(app.Profiler==nil and app.ProfilerJobs==nil and app.ProfilerHooks==nil);
assert(not p.Enabled and env.clocks==0 and apiCalls==0 and #env.timers==0);
Contains(p.Report(),"No capture yet");
local phase=p.CaptureFunction(function(ms)env.now=env.now+ms/1000;return ms;end,"phase","session",{id="phase",module="costs",minLevel=1});
assert(phase(1)==1 and p.session.phase.count==1 and p.session.phase.capture==nil);
assert(p.Start() and p.GetLevel()==1 and #env.timers==1 and apiCalls==3);
Contains(p.Report(),"No measurements captured.");
for _, duration in ipairs({0.3,1.2,10})do assert(phase(duration)==duration);end
Contains(p.Report(),"phase\t3\t11.500\t3.833\t10.000\t<=16.00\t-");
assert(p.session.phase.count==4 and p.session.phase.capture.sessionID==p.SessionID);
local generation,report=p.SessionID,p.Report();
for _, invalid in ipairs({0,301,"bad",math.huge,0/0,{},true,false})do
	local ok,message=p.Start(invalid);assert(not ok and type(message)=="string");
	assert(p.Enabled and p.SessionID==generation and p.Report()==report);
end
average,over5,over10=3.5,15,3;
assert(p.Stop() and not p.Stop() and apiCalls==6);
report=p.Report();Contains(report,"Recent average at start: 2.500 ms");Contains(report,"Recent average at stop: 3.500 ms");
Contains(report,"Ticks over 5 ms during capture: 5");Contains(report,"Ticks over 10 ms during capture: 1");
phase(200);assert(p.Report()==report and p.session.phase.count==5);
local oldTimer=env.timers[1][2];oldTimer();assert(not p.Enabled);
assert(p.Start("2") and p.SessionID==generation+1);oldTimer();assert(p.Enabled);
assert(p.session.phase.capture==nil,"starting a new session retained the previous sample storage");
phase(2);env.now=env.now+2;env.timers[#env.timers][2]();
assert(not p.Enabled);Contains(p.Report(),"stopped: time limit");
local cumulative=p.session.phase.count;p.Reset();assert(p.session.phase.count==cumulative and p.session.phase.capture==nil);
Contains(p.Report(),"No capture yet");

-- Unavailable/disabled/failing Blizzard APIs never prevent the original tracker.
for _, api in ipairs({{}, {IsEnabled=function()return false;end,GetAddOnMetric=function()error("disabled");end},
	{GetAddOnMetric=function()error("unavailable");end}})do
	C_AddOnProfiler=api;assert(p.Start(1));phase(1);assert(p.Stop());Contains(p.Report(),"phase\t1");
	assert(not p.Report():find("Blizzard C_AddOnProfiler",1,true));
end

-- Reset inside a captured call cannot write its late return into a new session.
C_AddOnProfiler=nil;
local switches=p.CaptureFunction(function()p.Reset();assert(p.Start(1));end,"switch","session",{module="app",minLevel=1});
assert(p.Start(1));switches();assert(p.Enabled);Contains(p.Report(),"No measurements captured.");
print("PASS: original metrics/session lifecycle, atomic validation, generations, frozen reports, timeouts, and optional Blizzard context");
