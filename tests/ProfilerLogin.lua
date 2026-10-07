-- Run from the repository root: lua tests/ProfilerLogin.lua
-- Verify saved login requests, the real startup entry point, and command dispatch.
local now = 100
local timers, messages = {}, {}
local metricCalls = 0
local clockReads = 0

GetTimePreciseSec = function() clockReads = clockReads + 1; return now end
C_Timer = {
  After = function(seconds, callback)
    timers[#timers + 1] = { seconds = seconds, callback = callback }
  end,
}
Enum = { AddOnProfilerMetric = { RecentAverageTime = 7 } }
C_AddOnProfiler = {
  IsEnabled = function() return true end,
  GetAddOnMetric = function() metricCalls = metricCalls + 1; return 1 end,
}

---Create a fresh UI-session service with minimal startup and command dependencies.
---@return table app Test addon namespace containing a newly loaded Profiler.
local function NewApp()
  local app = {
    print = function(...) messages[#messages + 1] = table.concat({...}, " ") end,
    AddEventHandler = function() end,
  }
  assert(loadfile("lib/Profiler.lua"))("AllTheThings", app)
  return app
end

---Assert that a copied report includes a recorded startup scope.
---@param report string Text returned by the capture service.
---@param fragment string Literal text expected in the report.
local function Contains(report, fragment)
  assert(report:find(fragment, 1, true), "missing report text: " .. fragment .. "\n" .. report)
end

-- The library loads before SavedVariables; unavailable storage must not be cached.
AllTheThingsSavedVariables = nil
local app = NewApp()
local p = app.Profiler
assert(not p.ScheduleNextLogin(60))
assert(not p.StartNextLogin() and not p.CancelNextLogin())
assert(not p.Enabled and p.SessionID == 0 and #timers == 0 and metricCalls == 0 and clockReads == 0)
AllTheThingsSavedVariables = { Keep = 123 }
local ok, duration = p.ScheduleNextLogin()
assert(ok and duration == 30 and AllTheThingsSavedVariables.ProfilerNextLoginSeconds == 30)
assert(not p.Enabled and #timers == 0 and metricCalls == 0 and clockReads == 0)

-- Scheduling and invalid requests preserve the active capture and its report.
p.Start(5)
p.Record("existing", 1)
local before = p.Report()
local timerCount, apiCount = #timers, metricCalls
ok, duration = p.ScheduleNextLogin("1.5")
assert(ok and duration == 1.5)
assert(p.ScheduleNextLogin(300))
assert(p.ScheduleNextLogin("60"))
for _, invalid in ipairs({ 0, 301, "bad", math.huge, 0 / 0, {}, true, false }) do
  local accepted, reason = p.ScheduleNextLogin(invalid)
  assert(not accepted and type(reason) == "string")
  assert(not p.Start(invalid))
  assert(AllTheThingsSavedVariables.ProfilerNextLoginSeconds == 60)
  assert(p.Enabled and p.Report() == before)
end
assert(#timers == timerCount and metricCalls == apiCount)
assert(p.CancelNextLogin() and not p.CancelNextLogin())
assert(AllTheThingsSavedVariables.ProfilerNextLoginSeconds == nil and p.Report() == before)
assert(AllTheThingsSavedVariables.Keep == 123)

-- Manual capture controls do not cancel an independently scheduled login.
assert(p.ScheduleNextLogin(45))
p.Stop()
p.Start(2)
p.Reset()
assert(AllTheThingsSavedVariables.ProfilerNextLoginSeconds == 45)

-- Simulate reloading the library before the saved table is restored.
local persisted = AllTheThingsSavedVariables
AllTheThingsSavedVariables = nil
local loginApp = NewApp()
local loginProfiler = loginApp.Profiler
timerCount, apiCount = #timers, metricCalls
assert(not loginProfiler.StartNextLogin())
assert(#timers == timerCount and metricCalls == apiCount)
AllTheThingsSavedVariables = persisted

-- Execute the real PLAYER_LOGIN handler, rather than duplicating its ordering.
local stores = { AllTheThingsAD = {}, ATTCharacterData = {}, ATTAccountWideData = {} }
loginApp.GUID = "test-character"
loginApp.CategoryNames = {}
loginApp.RegisterFuncEvent = function(self, event, handler)
  assert(event == "PLAYER_LOGIN")
  self.LoginHandler = handler
end
loginApp.LocalizeGlobalIfAllowed = function(name)
  assert(loginProfiler.Enabled, "login capture started after saved-variable initialization")
  assert(persisted.ProfilerNextLoginSeconds == nil, "login request was not consumed first")
  if name == "AllTheThingsAD" then loginProfiler.Record("startup.savedvariables", 1) end
  return assert(stores[name])
end
loginApp.Settings = {
  Initialize = function()
    assert(loginProfiler.Enabled, "login capture missed settings initialization")
    loginProfiler.Record("startup.settings", 2)
  end,
}
loginApp.HandleEvent = function() end
loginApp.LinkEventSequence = function() end
loginApp.GetDatabaseRoot = function() return {} end
UnitName = function() return "Test", "Realm" end
GetRealmName = function() return "Realm" end
local sourceFile = assert(io.open("AllTheThings.lua", "r"))
local source = sourceFile:read("*a")
sourceFile:close()
local startupAt = assert(source:find('app:RegisterFuncEvent("PLAYER_LOGIN",', 1, true))
assert((loadstring or load)("local app = ...\n" .. source:sub(startupAt), "@AllTheThings.lua:PLAYER_LOGIN"))(loginApp)
loginApp.LoginHandler()
assert(loginProfiler.Enabled and loginProfiler.SessionID == 1)
assert(#timers == timerCount + 1 and timers[#timers].seconds == 45)
assert(metricCalls == apiCount + 1 and persisted.Keep == 123)
Contains(loginProfiler.Report(), "startup.savedvariables\t1")
Contains(loginProfiler.Report(), "startup.settings\t1")

-- The consumed request cannot start a second capture; its original timeout still works.
before = loginProfiler.Report()
assert(not loginProfiler.StartNextLogin() and loginProfiler.Report() == before)
assert(#timers == timerCount + 1 and metricCalls == apiCount + 1)
now = 145
timers[#timers].callback()
assert(not loginProfiler.Enabled)
Contains(loginProfiler.Report(), "Elapsed: 45.00 s / 45.00 s limit; stopped: time limit")
Contains(loginProfiler.Report(), "startup.settings\t1")

-- Corrupt persisted durations are consumed without replacing a retained report.
before = loginProfiler.Report()
timerCount, apiCount = #timers, metricCalls
for _, invalid in ipairs({ 0, 301, "bad", math.huge, 0 / 0, {}, true, false }) do
  persisted.ProfilerNextLoginSeconds = invalid
  local started, reason = loginProfiler.StartNextLogin()
  assert(not started and type(reason) == "string")
  assert(persisted.ProfilerNextLoginSeconds == nil and loginProfiler.Report() == before)
end
assert(#timers == timerCount and metricCalls == apiCount)

-- Exercise the actual profile command handler, including argument rejection and cancel.
hooksecurefunc = function() end
CreateAtlasMarkup = function() return "" end
SlashCmdList = {}
local commandApp = NewApp()
assert(loadfile("src/Commands.lua"))("AllTheThings", commandApp)
local command = commandApp.ChatCommands.profile
assert(command({ "nextlogin" }) and persisted.ProfilerNextLoginSeconds == 30)
assert(command({ "nextlogin", "60" }) and persisted.ProfilerNextLoginSeconds == 60)
assert(command({ "nextlogin", "bad" }) and persisted.ProfilerNextLoginSeconds == 60)
assert(command({ "nextlogin", "25", "extra" }) and persisted.ProfilerNextLoginSeconds == 60)
assert(not commandApp.Profiler.Enabled and #timers == timerCount and metricCalls == apiCount)
assert(command({ "nextlogin", "CANCEL" }) and persisted.ProfilerNextLoginSeconds == nil)
assert(command({ "nextlogin", "cancel" }) and persisted.ProfilerNextLoginSeconds == nil)
assert(persisted.Keep == 123)

print("PASS: next-login persistence, validation, cancellation, one-shot startup ordering, timeout, and commands")
