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

do
	-- WoW adds a split method to strings; emulate that contract for the death GUID.
	local function combatAPI(globals, interface)
		local env = setmetatable(globals or {}, {__index = _G})
		env._G = env
		env.GetBuildInfo = function() return "fixture", "fixture", "fixture", interface end
		local app = {print = function() end}
		local module = assert(loadstring(read("src/WoW API Wrappers.lua"), "@actual-combat-wrapper"))
		setfenv(module, env)("AllTheThings", app)
		return app.WOWAPI
	end
	local originalSplit = string.split
	string.split = function(separator, text)
		local values = {}
		for value in (text .. separator):gmatch("(.-)" .. separator) do values[#values + 1] = value end
		return unpack(values)
	end
	for _, path in ipairs({
		".contrib/.db/standard/02 - Outdoor Zones/02 Eastern Kingdoms/Stranglethorn Vale.lua",
		".contrib/.db/forever/zones/eastern kingdoms/stranglethorn vale.lua",
	}) do
		local source = read(path)
		local declaration = assert(source:match("local OnTooltipForBloodsail = (.-);%s*local OnTooltipForBootyBay"))
		local created, registered, getterCalls, timers = 0, 0, 0, {}
		local frame
		local deathGUID = "Creature-0-0-0-0-9179"
		local tooltipEnv = {
			HATED = -42000, tinsert = table.insert, UIParent = {},
			DBM = { CreatePizzaTimer = function(self, seconds, label) timers[#timers + 1] = { seconds, label } end },
			_ = { WOWAPI = combatAPI({}, 16001), Modules = { FactionData = { AddReputationTooltipInfo = function() return 5, 10 end } } },
			CreateFrame = function()
				created = created + 1
				frame = {
					SetScript = function(self, event, handler) self[event] = handler end,
					RegisterEvent = function(self, event) check(event == "COMBAT_LOG_EVENT_UNFILTERED", "timer event retained"); registered = registered + 1 end,
					SetPoint = function() end, SetSize = function() end, Hide = function() end,
				}
				return frame
			end,
		}
		local code = compile(declaration, tooltipEnv)
		local callback = compile(code, tooltipEnv)
		for _, interface in ipairs({11509, 20506, 50504, 120105, 16001}) do
			tooltipEnv._.WOWAPI = combatAPI({
				C_CombatLogSecure = {GetCurrentEventInfo = function() error("SecureOnly API accessed") end},
			}, interface)
			check(tooltipEnv._.WOWAPI.CombatLogGetCurrentEventInfo == false, "public payload unavailable: " .. interface)
			callback({ collectible = true, reputation = 30000 }, {})
			check(created == 0 and registered == 0, "public combat-log absence skips timer: " .. path)
		end
		check(not pcall(function() return tooltipEnv._.WOWAPI.UnregisteredTestAPI end), "unknown wrapper still throws")
		tooltipEnv._.WOWAPI = combatAPI({
			C_CombatLog = {GetCurrentEventInfo = function()
				getterCalls = getterCalls + 1
				return 0, "UNIT_DIED", false, "source", "sourceName", 0, 0, deathGUID
			end},
			CombatLogGetCurrentEventInfo = function() error("legacy combat API selected despite modern API") end,
		}, 11509)
		local bloodsail = { collectible = true, reputation = 30000 }
		callback(bloodsail, {})
		check(created == 1 and registered == 1, "available Classic combat log registers one timer frame: " .. path)
		callback(bloodsail, {})
		check(created == 1, "repeated tooltip avoids duplicate listener: " .. path)
		frame:OnEvent("COMBAT_LOG_EVENT_UNFILTERED")
		check(getterCalls == 1 and #timers == 2 and timers[1][1] == 320 and timers[2][1] == 510, "Jazzrik death preserves both respawn timers: " .. path)
		deathGUID = "Creature-0-0-0-0-12345"
		frame:OnEvent("COMBAT_LOG_EVENT_UNFILTERED")
		check(#timers == 2, "another NPC does not create Jazzrik timers: " .. path)
		tooltipEnv.DBM = nil
		callback({ collectible = true, reputation = 30000 }, {})
		check(created == 1, "DBM absence skips listener: " .. path)
	end
	string.split = originalSplit
end
print("WoW API callback checks passed: " .. checks)
