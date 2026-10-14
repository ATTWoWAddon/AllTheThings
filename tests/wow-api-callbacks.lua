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
print("WoW API callback checks passed: " .. checks)
