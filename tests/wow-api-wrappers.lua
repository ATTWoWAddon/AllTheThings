-- Run with Lua 5.1 from the repository root: lua tests/wow-api-wrappers.lua
-- These fixtures exercise ATT's actual wrapper module. They verify API
-- selection and data adaptation, not API availability inside a WoW client.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root = arg[1] or "."
local total = 0
local function equal(actual, expected, message)
	assert(actual == expected, (message or "value") .. ": expected " .. tostring(expected) .. ", got " .. tostring(actual))
	total = total + 1
end
local function initialize(globals, interface)
	local env = setmetatable(globals or {}, {__index = _G})
	env._G = env
	env.GetBuildInfo = function() return "fixture", "fixture", "fixture", interface or 120105 end
	local app = {print = function() end}
	local chunk = assert(loadfile(root .. "/src/WoW API Wrappers.lua"))
	setfenv(chunk, env)
	chunk("AllTheThings", app)
	return app.WOWAPI, env
end
local function rejectLegacy() error("Deprecated fallback was selected despite a modern API") end
local sentinel = {}
do
	local modernCalls = {}
	local api = initialize({
		C_AddOns = {GetAddOnMetadata = function(addon, key) modernCalls.metadata = {addon, key}; return "1.2.3" end},
		GetAddOnMetadata = rejectLegacy,
	})
	equal(api.GetAddOnMetadata("ATT", "Version"), "1.2.3")
	equal(modernCalls.metadata[1], "ATT")
	equal(modernCalls.metadata[2], "Version")
end

do
	local modernCalls = {}
	local api = initialize({
		C_BattleNet = {SendGameData = function(account, prefix, message) modernCalls.bnet = {account, prefix, message}; return true end},
		BNSendGameData = rejectLegacy,
	})
	equal(api.SendGameData(42, "ATT", "payload"), true)
	equal(modernCalls.bnet[1], 42)
	equal(modernCalls.bnet[3], "payload")
	equal(initialize({}).SendGameData, false, "missing transport remains unavailable")
end
print("WoW API wrapper tests passed: " .. total .. " assertions")
