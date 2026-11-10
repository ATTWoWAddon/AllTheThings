-- Run from the repository root: lua tests/ProfilerLogin.lua
-- Verify opt-in login installation, saved requests, startup ordering, and command dispatch.
local Fixture = assert(loadfile("tests/ProfilerFixture.lua"))()
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
    WOWAPI = {},
  }
  Fixture.LoadEnabled(app)
  return app
end

---Assert that a copied report includes a recorded startup scope.
---@param report string Text returned by the capture service.
---@param fragment string Literal text expected in the report.
local function Contains(report, fragment)
  assert(report:find(fragment, 1, true), "missing report text: " .. fragment .. "\n" .. report)
end

-- The optional engine loads before SavedVariables; unavailable storage must not be cached.
AllTheThingsSavedVariables = nil
local app = NewApp()
local p = app.__perf
assert(not p.ScheduleNextLogin(60))
assert(not p.StartNextLogin() and not p.CancelNextLogin())
assert(not p.Enabled and p.SessionID == 0 and #timers == 0 and metricCalls == 0 and clockReads == 0)
AllTheThingsSavedVariables = { Keep = 123 }
local ok, duration = p.ScheduleNextLogin()
assert(ok and duration == 30 and AllTheThingsSavedVariables.ProfilerNextLogin.seconds == 30)
assert(AllTheThingsSavedVariables.ProfilerNextLogin.version == 1 and AllTheThingsSavedVariables.ProfilerNextLogin.level == 1)
assert(not p.Enabled and #timers == 0 and metricCalls == 0 and clockReads == 0)

-- Scheduling and invalid requests preserve the active capture and its report.
p.Start(5)
p.CaptureFunction(function()now=now+0.001;end,"existing","login",{module="startup",minLevel=1})()
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
  assert(AllTheThingsSavedVariables.ProfilerNextLogin.seconds == 60)
  assert(p.Enabled and p.Report() == before)
end
assert(#timers == timerCount and metricCalls == apiCount)
assert(p.CancelNextLogin() and not p.CancelNextLogin())
assert(AllTheThingsSavedVariables.ProfilerNextLogin == nil and p.Report() == before)
assert(AllTheThingsSavedVariables.Keep == 123)

-- Manual capture controls do not cancel an independently scheduled login.
assert(p.ScheduleNextLogin(45))
p.Stop()
p.Start(2)
p.Reset()
assert(AllTheThingsSavedVariables.ProfilerNextLogin.seconds == 45)

-- Simulate reloading the optional engine before the saved table is restored.
local persisted = AllTheThingsSavedVariables
AllTheThingsSavedVariables = nil
local loginApp = NewApp()
local loginProfiler = loginApp.__perf
timerCount, apiCount = #timers, metricCalls
assert(not loginProfiler.StartNextLogin())
assert(#timers == timerCount and metricCalls == apiCount)
AllTheThingsSavedVariables = persisted

-- Execute the real PLAYER_LOGIN handler, rather than duplicating its ordering.
local stores = { AllTheThingsAD = {}, ATTCharacterData = {}, ATTAccountWideData = {} }
loginApp.GUID = "test-character"
loginApp.CategoryNames = {}
loginApp.events = {}
loginApp.RegisterFuncEvent = function(self, event, handler)
  assert(event == "PLAYER_LOGIN")
  self.events[event] = handler
end
loginApp.LocalizeGlobalIfAllowed = function(name)
  assert(loginProfiler.Enabled, "login capture started after saved-variable initialization")
  assert(persisted.ProfilerNextLogin == nil and persisted.ProfilerNextLoginSeconds == nil, "login request was not consumed first")
  if name == "AllTheThingsAD" then loginProfiler.CaptureFunction(function()now=now+0.001;end,"savedvariables","test.startup",{module="startup",minLevel=1})() end
  return assert(stores[name])
end
loginApp.Settings = {
  Initialize = function()
    assert(loginProfiler.Enabled, "login capture missed settings initialization")
    loginProfiler.CaptureFunction(function()now=now+0.002;end,"settings","test.startup",{module="startup",minLevel=1})()
  end,
}
loginApp.HandleEvent = function() end
loginApp.LinkEventSequence = function() end
loginApp.GetDatabaseRoot = function() return {} end
loginApp.CreateDecor = function() end
GetUnitName = function() return "Test" end
GetRealmName = function() return "Realm" end
local sourceFile = assert(io.open("AllTheThings.lua", "r"))
local source = sourceFile:read("*a")
sourceFile:close()
local startupAt = assert(source:find('app:RegisterFuncEvent("PLAYER_LOGIN",', 1, true))
assert((loadstring or load)("local app = ...\n" .. source:sub(startupAt), "@AllTheThings.lua:PLAYER_LOGIN"))(loginApp)
loginApp.events.PLAYER_LOGIN()
assert(loginProfiler.Enabled and loginProfiler.SessionID == 1)
assert(#timers == timerCount + 1 and timers[#timers].seconds == 45)
assert(metricCalls == apiCount + 1 and persisted.Keep == 123)
Contains(loginProfiler.Report(), "test.startup.savedvariables\t1")
Contains(loginProfiler.Report(), "test.startup.settings\t1")

-- The consumed request cannot start a second capture; its original timeout still works.
before = loginProfiler.Report()
assert(not loginProfiler.StartNextLogin() and loginProfiler.Report() == before)
assert(#timers == timerCount + 1 and metricCalls == apiCount + 1)
now = 145.001
timers[#timers].callback()
assert(not loginProfiler.Enabled)
Contains(loginProfiler.Report(), "Elapsed: 45.00 s / 45.00 s limit; stopped: time limit")
Contains(loginProfiler.Report(), "test.startup.settings\t1")

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

-- Without the optional engine, the real login callback remains unwrapped and cannot consume requests.
local normalStores = { AllTheThingsAD = {}, ATTCharacterData = {}, ATTAccountWideData = {} }
local normal = {
  GUID = "normal-character", CategoryNames = {}, events = {},
  print = function() end,
  AddEventHandler = function() end,
  HandleEvent = function() end,
  LinkEventSequence = function() end,
  GetDatabaseRoot = function() return {} end,
  CreateDecor = function() end,
  LocalizeGlobalIfAllowed = function(name) return assert(normalStores[name]) end,
}
local registeredHandler
normal.RegisterFuncEvent = function(self, event, handler)
  assert(event == "PLAYER_LOGIN")
  registeredHandler = handler
  self.events[event] = handler
end
local initialized = false
normal.Settings = { Initialize = function() initialized = true end }
local pending = { version = 1, seconds = 60, level = 1 }
persisted.ProfilerNextLogin = pending
local readsBefore, apiBefore, timersBefore = clockReads, metricCalls, #timers
assert((loadstring or load)("local app = ...\n" .. source:sub(startupAt), "@AllTheThings.lua:PLAYER_LOGIN:default"))(normal)
assert(normal.events.PLAYER_LOGIN == registeredHandler, "default login handler was replaced")
normal.events.PLAYER_LOGIN()
assert(initialized and normal.CurrentCharacter.guid == "normal-character")
assert(normal.__perf == nil and normal.Profiler == nil)
assert(persisted.ProfilerNextLogin == pending, "default login consumed a developer capture request")
assert(clockReads == readsBefore and metricCalls == apiBefore and #timers == timersBefore)
persisted.ProfilerNextLogin = nil

-- Exercise the actual profile command handler, including argument rejection and cancel.
hooksecurefunc = function() end
CreateAtlasMarkup = function() return "" end
SlashCmdList = {}
local commandApp = NewApp()
assert(loadfile("src/Commands.lua"))("AllTheThings", commandApp)
local command = commandApp.ChatCommands.profile
assert(command({ "nextlogin" }) and persisted.ProfilerNextLogin.seconds == 30)
assert(command({ "nextlogin", "60" }) and persisted.ProfilerNextLogin.seconds == 60)
assert(command({ "nextlogin", "bad" }) and persisted.ProfilerNextLogin.seconds == 60)
assert(command({ "nextlogin", "25", "extra" }) and persisted.ProfilerNextLogin.seconds == 60)
assert(not commandApp.__perf.Enabled and #timers == timerCount and metricCalls == apiCount)
assert(command({ "nextlogin", "CANCEL" }) and persisted.ProfilerNextLogin == nil)
assert(command({ "nextlogin", "cancel" }) and persisted.ProfilerNextLogin == nil)
assert(persisted.Keep == 123)

print("PASS: opt-in next-login persistence, validation, cancellation, startup ordering, timeout, and commands; default login stays unwrapped")
