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
    local current = {recordID = 123, entryType = 1, totalNumStored = 2, totalNumPlaced = 3, remainingRedeemable = 4}
    local housing = initialize({C_HousingCatalog = {
        GetCatalogEntryInfo = function(entry) equal(entry.recordID, 123); return current end,
    }})
    equal(housing.GetHousingCatalogEntryInfo({recordID = 123}), current, "current housing table retained")
    local old = {entryID = {recordID = 321, entryType = 1}, quantity = 2, numPlaced = 3, remainingRedeemable = 4}
    local normalized = housing.NormalizeHousingCatalogEntryInfo(old)
    equal(normalized.recordID, 321); equal(normalized.entryType, 1)
    equal(normalized.totalNumStored, 2); equal(normalized.totalNumPlaced, 3)
    equal(normalized.remainingRedeemable, 4)
    equal(old.recordID, nil, "Blizzard-owned old table not modified")
    equal(housing.NormalizeHousingCatalogEntryInfo(nil), nil)
end

do
    local housing = initialize({C_HousingCatalog = {CreateCatalogSearcher = function() return sentinel end}})
    equal(housing.CreateHousingCatalogSearcher(), sentinel)
end

do
	-- Modern spell records retain ATT's tuple contract and unknown-spell nils.
	local spells = initialize({
		Enum = {SpellBookSpellBank = {Player = 0, Pet = 1}},
		C_Spell = {
			GetSpellInfo = function(id)
				if id == 999 then return end
				equal(id, 123)
				return {name = "Spell", iconID = 10, castTime = 1500, minRange = 0, maxRange = 40, spellID = id, originalIconID = 11}
			end,
			GetSpellSubtext = function() return "Rank 2" end,
		},
		C_SpellBook = {
			GetSpellBookItemInfo = function(index, bank)
				equal(index, 4); equal(bank, 1, "pet spellbook bank"); return {spellID = 123}
			end,
		},
	})
	local name, rank, icon, castTime, minRange, maxRange, id, originalIcon = spells.GetSpellInfo(123)
	equal(name, "Spell"); equal(rank, "Rank 2"); equal(icon, 10); equal(castTime, 1500)
	equal(minRange, 0); equal(maxRange, 40); equal(id, 123); equal(originalIcon, 11)
	equal(select("#", spells.GetSpellInfo(999)), 0, "unknown spell returns no values")
	equal(select(7, spells.GetSpellInfo(4, "pet")), 123, "spellbook index translated to spell ID")
	local classicSpells = initialize({
		C_Spell = {GetSpellInfo = function() error("spellbook index sent to spell-ID API") end},
		GetSpellInfo = function(index, bookType) equal(index, 4); equal(bookType, "spell"); return "Ranked Spell", "Rank 3", 7, 8, 9, 10, 321 end,
	}, 50504)
	equal(select(7, classicSpells.GetSpellInfo(4, "spell")), 321, "native Classic spellbook lookup preserved")
end

do
	-- Player spell knowledge selects the explicit Player bank.
	local knownBank
	local spells = initialize({
		Enum = {SpellBookSpellBank = {Player = 0, Pet = 1}},
		C_SpellBook = {
			IsSpellKnown = function(id, bank) knownBank = bank; return id == 123 end,
		},
		IsPlayerSpell = rejectLegacy,
	})
	equal(spells.IsPlayerSpell(123), true)
	equal(knownBank, 0, "player bank explicitly selected")
	equal(spells.IsPlayerSpell(999), false)
end

do
	-- Buff identities can be used only when the client discloses spellId.
	local secret, aura = {}, {spellId = 123}
	local buffs = initialize({
		C_UnitAuras = {GetBuffDataByIndex = function(unit, index, filter)
			equal(unit, "player"); equal(index, 2); equal(filter, "HELPFUL"); return aura
		end},
		UnitBuff = rejectLegacy,
		issecretvalue = function(value) return value == secret end,
	})
	equal(buffs.GetBuffDataByIndex("player", 2, "HELPFUL"), aura)
	aura = {spellId = secret}
	equal(buffs.GetBuffDataByIndex("player", 2, "HELPFUL"), nil, "secret spell ID not exposed to callbacks")
	aura = secret
	equal(buffs.GetBuffDataByIndex("player", 2, "HELPFUL"), nil, "secret aura not inspected")
	aura = nil
	equal(buffs.GetBuffDataByIndex("player", 2, "HELPFUL"), nil)
	local nativeBuffs = initialize({UnitBuff = function(unit, index)
		if index > 1 then return end
		return "Buff", nil, nil, nil, nil, nil, nil, nil, nil, 321
	end}, 20506)
	equal(nativeBuffs.GetBuffDataByIndex("player", 1).spellId, 321, "native tenth return converted to spellId")
	equal(nativeBuffs.GetBuffDataByIndex("player", 2), nil)
end

do
	local modernInfo = function() return 123 end
	local modern = initialize({C_SpecializationInfo = {GetSpecializationInfo = modernInfo}, GetSpecializationInfo = rejectLegacy})
	equal(modern.GetSpecializationInfo, modernInfo)
	local nativeInfo = function() return 321 end
	equal(initialize({GetSpecializationInfo = nativeInfo}, 50504).GetSpecializationInfo, nativeInfo)
	equal(initialize({}).GetSpecializationInfo, false, "missing specialization data remains unavailable")
end

do
	-- Combat-log access remains limited to clients with a public payload API.
	for _, interface in ipairs({11509, 20506, 38002, 50504}) do
		local combat = initialize({
			C_CombatLog = {GetCurrentEventInfo = function() return 1, "UNIT_DIED", 3 end},
			CombatLogGetCurrentEventInfo = rejectLegacy,
		}, interface)
		local _, event = combat.CombatLogGetCurrentEventInfo()
		equal(event, "UNIT_DIED", "Classic uses public combat-log API")
	end
	for _, interface in ipairs({120105, 16001}) do
		local combat = initialize({
			C_CombatLogSecure = {GetCurrentEventInfo = function() error("SecureOnly API accessed") end},
			CombatLogGetCurrentEventInfo = function() error("unavailable public payload fallback accessed") end,
		}, interface)
		equal(combat.CombatLogGetCurrentEventInfo, false, "Retail/Forever payload unavailable")
	end
	local nativeCombat = initialize({CombatLogGetCurrentEventInfo = function() return "native" end}, 11509)
	equal(nativeCombat.CombatLogGetCurrentEventInfo(), "native")
	equal(initialize({}, 11509).CombatLogGetCurrentEventInfo, false, "Classic without public payload remains unavailable")
end
print("WoW API wrapper tests passed: " .. total .. " assertions")
