-- Run from the repository root: lua tests/ProfilerCommands.lua
-- Exercise developer-only command registration and the real capture frontend.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))()
local now, clocks = 100, 0
local messages, timers = {}, {}
GetTimePreciseSec = function() clocks = clocks + 1; return now end
C_Timer = { After = function(seconds, callback) timers[#timers + 1] = {seconds, callback} end }
C_AddOnProfiler = nil
Enum = nil
hooksecurefunc = function() end
CreateAtlasMarkup = function() return "" end
SlashCmdList = {}
AllTheThingsSavedVariables = { Keep = 123 }
local app = {
  print = function(...) messages[#messages + 1] = table.concat({...}, " ") end,
  AddEventHandler = function() end,
  WOWAPI = {},
  ShowPopupDialogWithMultiLineEditBox = function(self, text) self.CopiedReport = text end,
}
-- Normal ATT does not load the optional engine or advertise its commands.
local normal = { print = app.print, AddEventHandler = function() end, WOWAPI = {} }
local pending = { version = 1, seconds = 60, level = 1 }
AllTheThingsSavedVariables.ProfilerNextLogin = pending
assert(loadfile("src/Commands.lua"))("AllTheThings", normal)
assert(normal.Profiler == nil and normal.__perf == nil)
assert(normal.ChatCommands.profile == nil and normal.ChatCommands.Help.profile == nil)
for _, name in ipairs(normal.ChatCommands.List) do assert(name ~= "profile") end
assert(clocks == 0 and #timers == 0 and AllTheThingsSavedVariables.ProfilerNextLogin == pending)
AllTheThingsSavedVariables.ProfilerNextLogin = nil

Fixture.LoadEnabled(app)
assert(loadfile("src/Commands.lua"))("AllTheThings", app)
local p, command = app.__perf, app.ChatCommands.profile

assert(command({"start"}) and p.GetLevel() == 1 and p.GetConfig().level == 1)
assert(timers[#timers][1] == 30)
assert(command({"start", "10", "diagnostics", "include=costs", "sample=2", "jobs=0", "records=2", "stacks=false"}))
assert(p.GetLevel() == 6 and p.GetConfig().sampleEvery == 2 and p.GetConfig().jobBudget == 0 and p.GetConfig().timelineBudget == 2)
assert(p.GetConfig().stacks == false and p.GetConfig().include == "costs")
local existing=p.CaptureFunction(function()now=now+0.001;end,"existing","command",{module="costs",minLevel=2});existing()
local report, session, timerCount = p.Report(), p.SessionID, #timers

-- Every rejection preserves the current session, recorded data, and pending request.
assert(command({"nextlogin", "60", "3", "include=costs,search"}))
local request = AllTheThingsSavedVariables.ProfilerNextLogin
assert(request.seconds == 60 and request.level == 3 and request.options.include == "costs,search")
local invalid = {
  {"start", "10", "7"}, {"start", "10", "4"},
  {"start", "10", "6", "include=unknown-module"},
  {"start", "10", "6", "include=costs", "sample=0"},
  {"start", "10", "6", "include=costs", "jobs=-1"},
  {"start", "10", "6", "include=costs", "stacks=maybe"},
  {"start", "10", "6", "include=costs", "sample=2", "sample=3"},
  {"start", "10", "include=costs", "2"},
  {"start", "10", "2", "unknown=1"},
  {"start", "10", "2", "include="},
  {"nextlogin", "60", "timeline"},
  {"nextlogin", "60", "6", "include=costs", "records=5000"},
  {"nextlogin", "cancel", "extra"},
}
for _, args in ipairs(invalid) do
  assert(command(args))
  assert(p.Enabled and p.SessionID == session and #timers == timerCount)
  assert(p.Report() == report and AllTheThingsSavedVariables.ProfilerNextLogin == request)
end

-- Report snapshots preserve recording; manual stop/reset leave the schedule intact.
assert(command({"report"}) and app.CopiedReport == p.Report() and p.Enabled)
assert(command({"stop"}) and not p.Enabled and AllTheThingsSavedVariables.ProfilerNextLogin == request)
assert(command({"reset"}) and AllTheThingsSavedVariables.ProfilerNextLogin == request)
assert(command({"nextlogin", "cancel"}) and AllTheThingsSavedVariables.ProfilerNextLogin == nil)
assert(AllTheThingsSavedVariables.Keep == 123)

-- Named levels, options without an explicit level, and include=all are accepted.
assert(command({"start", "5", "include=costs"}) and p.GetLevel() == 1)
assert(command({"nextlogin", "10", "JOBS", "include=all", "exclude=tooltip", "slow=20", "metrics=0", "jobs=4", "records=0"}))
request = AllTheThingsSavedVariables.ProfilerNextLogin
assert(request.level == 4 and request.options.include == "all" and request.options.exclude == "tooltip")
assert(p.StartNextLogin() and p.GetLevel() == 4)
assert(p.GetConfig().jobBudget == 4 and p.GetConfig().metricBudget == 0 and p.GetConfig().slowThresholdMs == 20)
assert(AllTheThingsSavedVariables.ProfilerNextLogin == nil)

print("PASS: default mode has no profile command; opt-in level commands, named options, atomic rejection, report snapshots, and login option persistence")
