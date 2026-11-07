-- Load the same original optional tracker used by WoW, with isolated test outputs.
local Fixture = {};

---Load the complete production tracker without a client or a separate capture engine.
---@param app table Isolated ATT fixture receiving its original __perf API.
function Fixture.LoadEnabled(app)
	unpack = unpack or table.unpack;
	tinsert = tinsert or table.insert;
	local nativePrint = print; print = function() end;
	local ok, message = pcall(assert(loadfile("src/PerformanceTracking.lua")), "AllTheThings", app);
	print = nativePrint;
	assert(ok, message);
end

---Create explicit clocks, timers, and output sinks for actual-source tests.
---@return table app Isolated ATT table; call LoadEnabled to install its original tracker.
---@return table environment Clock, queued timers, printed messages, and copied output.
function Fixture.New()
	local environment={now=100,clocks=0,timers={},printed={}};
	GetTimePreciseSec=function() environment.clocks=environment.clocks+1;return environment.now;end;
	C_Timer={After=function(seconds,callback) environment.timers[#environment.timers+1]={seconds,callback};end};
	C_AddOnProfiler,Enum=nil,nil;
	local app={print=function(...)environment.printed[#environment.printed+1]={...};end,
		ShowPopupDialogWithMultiLineEditBox=function(_,text)environment.copied=text;end};
	return app,environment;
end

return Fixture;
