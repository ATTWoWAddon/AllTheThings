-- Regression fixtures for callbacks emitted from ATT's actual contribution sources.
-- Run with Lua 5.1: lua tests/wow-api-callbacks.lua [repository root]
assert(_VERSION == "Lua 5.1", "These fixtures require Lua 5.1")
local repo = arg[1] or "."
local checks = 0
local function check(value, message)
	assert(value, message)
	checks = checks + 1
end
local function read(path)
	local file = assert(io.open(repo .. "/" .. path, "rb"))
	local text = file:read("*a")
	file:close()
	return text
end
local function compile(text, env)
	setmetatable(env, { __index = _G })
	return setfenv(assert(loadstring("return " .. text)), env)()
end

do
	local phoenix = read(".contrib/.db/standard/02 - Outdoor Zones/06 Pandaria/Vale of Eternal Blossoms.lua")
	local phoenixText = assert(phoenix:match("local PHOENIX_MOUNT_ONUPDATE = %[%[(.-)%]%]"))
	local knownSpell, knowledgeQueries
	local phoenixEnv = {
		_ = { WOWAPI = { IsPlayerSpell = function(id)
			knowledgeQueries[#knowledgeQueries + 1] = id
			return id == knownSpell
		end } },
		IsPlayerSpell = function() error("Phoenix callback bypassed the wrapper") end,
	}
	local phoenixCallback = compile(phoenixText, phoenixEnv)
	local phoenixMounts = { { 132117, 90710 }, { 128552, 89154 }, { 132118, 90711 }, { 132119, 90712 } }
	knowledgeQueries, knownSpell = {}, nil
	local phoenixTarget = { collectible = true, itemID = 90710 }
	phoenixCallback(phoenixTarget)
	check(phoenixTarget.collectible == true and #knowledgeQueries == 4, "unknown Phoenix spells retain all four knowledge checks")
	for _, pair in ipairs(phoenixMounts) do
		knownSpell, knowledgeQueries = pair[1], {}
		phoenixTarget = { collectible = true, itemID = pair[2] }
		phoenixCallback(phoenixTarget)
		check(phoenixTarget.collectible == true, "owned Phoenix mount remains collectible: " .. pair[1])
		knowledgeQueries = {}
		phoenixTarget = { collectible = true, itemID = 0 }
		phoenixCallback(phoenixTarget)
		check(phoenixTarget.collectible == false, "other Phoenix mounts become noncollectible: " .. pair[1])
	end
end

do
	local template = read(".contrib/.db/shared/lib/Functions/Function Templates.lua")
	local generatorText = assert(template:match("GenerateShouldExcludeFromTooltipForBuffs = (.-),%s*ClassORRaceRequirements"))
	local templateEnv = { ExportDB = { OnInitDB = {} } }
	local generator = compile(generatorText, templateEnv)
	generator(123)
	local callbackText = assert(templateEnv.ExportDB.OnInitDB.ShouldExcludeFromTooltipForBuffs_123):sub(2)
	local auraQueries, fixtureAuras, mouseoverExists = {}, {}, false
	local api = {
		GetBuffDataByIndex = function(unit, index)
			auraQueries[#auraQueries + 1] = { unit, index }
			return fixtureAuras[index]
		end,
	}
	local callbackEnv = { _ = { WOWAPI = api }, UnitExists = function(unit) return unit == "mouseover" and mouseoverExists end }
	local init = compile(callbackText, callbackEnv)
	local target = init({})
	fixtureAuras = { { spellId = 111 }, { spellId = 123 } }
	check(target.ShouldExcludeFromTooltipHelper(target) == false, "matching buff permits tooltip")
	check(#auraQueries == 2 and auraQueries[1][1] == "target" and auraQueries[2][2] == 2, "buff scan preserves index progression and target fallback")
	mouseoverExists, auraQueries = true, {}
	check(target.ShouldExcludeFromTooltipHelper(target) == false and auraQueries[1][1] == "mouseover", "mouseover remains first choice")
	fixtureAuras, auraQueries = {}, {}
	check(target.ShouldExcludeFromTooltipHelper(target) == true and #auraQueries == 1, "missing or undisclosed aura stops scan")
	fixtureAuras, auraQueries = {}, {}
	for i = 1, 11 do fixtureAuras[i] = { spellId = i == 11 and 123 or 111 } end
	check(target.ShouldExcludeFromTooltipHelper(target) == true and #auraQueries == 10, "tooltip scan retains ten-buff limit")

	local achievement = read(".contrib/.db/standard/11 - Character/Achievements.lua")
	local start = assert(achievement:find('applyclassicphase%(SOM_PHASE_ONE, ach%(16433'))
	local achievementText = assert(achievement:sub(start):match('OnUpdate = %[%[(.-)%]%]'))
	local collected
	local achievementEnv = { _ = { Level = 60, WOWAPI = api } }
	local achievementCallback = compile(achievementText, achievementEnv)
	local achievementTarget = {
		collectible = true, achievementID = 16433,
		SetAchievementCollected = function(self, id, value)
			check(id == 16433, "Soul of Iron achievement ID retained")
			collected = value
		end,
	}
	fixtureAuras, auraQueries = { { spellId = 111 }, { spellId = 364001 } }, {}
	check(achievementCallback(achievementTarget) == false and collected == true, "Soul of Iron found beyond first buff")
	check(#auraQueries == 2 and auraQueries[1][1] == "player", "Soul of Iron reads player buffs sequentially")
	fixtureAuras, auraQueries = {}, {}
	achievementCallback(achievementTarget)
	check(collected == false and #auraQueries == 1, "missing Soul of Iron buff clears collection")
	achievementEnv._.Level, auraQueries = 59, {}
	achievementCallback(achievementTarget)
	check(#auraQueries == 0, "Soul of Iron level guard preserved")
	achievementEnv._.Level, achievementTarget.collectible = 60, false
	achievementCallback(achievementTarget)
	check(#auraQueries == 0, "Soul of Iron collectible guard preserved")
end
print("WoW API callback checks passed: " .. checks)
