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

do
	local modernCalls = {}
	local api = initialize({
		ChatFrameUtil = {InsertLink = function(link) modernCalls.link = link; return true end},
		ChatEdit_InsertLink = rejectLegacy,
	})
	equal(api.InsertChatLink("item:1"), true)
	equal(modernCalls.link, "item:1")
	equal(initialize({}).InsertChatLink, false, "missing chat insertion remains unavailable")
end

do
	local modernCalls = {}
	local api, env = initialize({
		ChatFrameUtil = {DisplayTimePlayed = function(frame, totalTime, levelTime) modernCalls.played = {frame, totalTime, levelTime}; return "displayed" end},
		ChatFrame_DisplayTimePlayed = rejectLegacy,
	})
	-- Intercept Blizzard's real entry point, preserving ordinary chat output.
	local suppress = true
	equal(api.WrapDisplayTimePlayed(function(original, ...)
		if suppress then suppress = false; return end
		return original(...)
	end), true)
	equal(env.ChatFrameUtil.DisplayTimePlayed("chat", 100, 10), nil)
	equal(modernCalls.played, nil, "programmatic time-played request suppressed")
	equal(env.ChatFrameUtil.DisplayTimePlayed("chat", 200, 20), "displayed")
	equal(modernCalls.played[2], 200)
	equal(api.DisplayTimePlayed, env.ChatFrameUtil.DisplayTimePlayed, "wrapper follows intercepted entry point")
	local legacy, legacyEnv = initialize({
		ChatFrame_DisplayTimePlayed = function(...) return select("#", ...), ... end,
	}, 11509)
	equal(legacy.WrapDisplayTimePlayed(function(original, ...) return original(...) end), true)
	local count, first = legacyEnv.ChatFrame_DisplayTimePlayed("chat", 1, 2)
	equal(count, 3, "legacy time-played arguments retained")
	equal(first, "chat")
	equal(initialize({}).WrapDisplayTimePlayed(function() end), false, "missing chat entry point")
end

do
	local api = initialize({
		C_MerchantFrame = {GetItemInfo = function(index) equal(index, 3); return sentinel end},
		GetMerchantItemInfo = rejectLegacy,
	})
	equal(api.GetMerchantItemInfo(3), sentinel, "modern merchant result identity")
	-- The legacy branch normalizes native Classic merchant tuples.
	local legacy = initialize({
		GetMerchantItemInfo = function(index)
			equal(index, 2)
			return "Item", 10, 250, 5, -1, true, false, true
		end,
	}, 11509)
	local item = legacy.GetMerchantItemInfo(2)
	equal(item.price, 250)
	equal(item.stackCount, 5)
	equal(item.numAvailable, -1)
	equal(item.isUsable, false)
	equal(item.hasExtendedCost, true)
end

do
	-- Modern formatting receives whole seconds and keeps ATT's abbreviated label.
	local formatter = {}
	function formatter:Init(_, abbreviation) equal(abbreviation, 2); self.units = 2 end
	function formatter:Format(seconds) equal(seconds, 65); return "1 min 5 sec" end
	local times = initialize({
		SecondsFormatter = {Abbreviation = {Truncate = 2}},
		SecondsFormatterMixin = formatter,
		CreateFromMixins = function(mixin) return setmetatable({}, {__index = mixin}) end,
		SecondsToTime = rejectLegacy,
	})
	equal(times.SecondsToTime(65.9), "1 min 5 sec")
	equal(times.SecondsToTime(0.9), "")
	local nativeTimes = initialize({SecondsToTime = function(seconds) return "legacy " .. seconds end}, 11509)
	equal(nativeTimes.SecondsToTime(65), "legacy 65")
end

do
	local modernInfo = function() return 123 end
	local modern = initialize({C_SpecializationInfo = {GetSpecializationInfo = modernInfo}, GetSpecializationInfo = rejectLegacy})
	equal(modern.GetSpecializationInfo, modernInfo)
	local nativeInfo = function() return 321 end
	equal(initialize({GetSpecializationInfo = nativeInfo}, 50504).GetSpecializationInfo, nativeInfo)
	equal(initialize({}).GetSpecializationInfo, false, "missing specialization data remains unavailable")
end
print("WoW API wrapper tests passed: " .. total .. " assertions")
