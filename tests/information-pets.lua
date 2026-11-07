-- Run from the repository root: lua5.1 tests/information-pets.lua
-- Exercises the actual owned-pet Information processor without the game UI.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root = arg[1] or "."
local total = 0
local function read(path)
	local file = assert(io.open(root .. "/" .. path, "r"))
	local source = file:read("*a"):gsub("\r\n", "\n")
	file:close()
	return source
end
local function compile(source, name, env)
	local chunk = assert(loadstring(source, "@" .. name))
	setfenv(chunk, env)
	return chunk
end
local function check(value, message)
	assert(value, message)
	total = total + 1
end
local pets = assert(read("src/Classes/BattlePet.lua"):match('CreateInformationType%("Owned Pets", (%b{})%)'))

local function pet(id, species, owned, customName, level, name, canBattle)
	return {[1] = id, [2] = species, [3] = owned, [4] = customName, [5] = level, [8] = name, [15] = canBattle}
end
local function petFixture(entries, stats, data, count)
	local statsCalls = 0
	local app = {L = {OWNED_PETS = "Owned pets"}}
	local env = setmetatable({
		app = app, LEVEL = "Level", UNKNOWN = "Unknown", tinsert = table.insert,
		BATTLE_PET_BREED_QUALITY2 = "Uncommon",
		C_PetJournal_GetNumPets = function() return count or #entries, 1 end,
		C_PetJournal_GetPetInfoByIndex = function(index) return unpack(entries[index] or {}, 1, 15) end,
		C_PetJournal_GetPetStats = function(id)
			statsCalls = statsCalls + 1
			return unpack(stats[id] or {}, 1, 5)
		end,
	}, {__index = _G})
	env._G = env
	local process = compile("return " .. pets, "owned-pets", env)().Process
	local lines = {}
	process({}, data or {speciesID = 5179, name = "Species name"}, lines)
	return lines, statsCalls
end
local combat = {100, 200, 10, 20, 2}
local rows = petFixture({pet("one", 5179, true, nil, 25, "Species name", true)}, {one = combat})
check(#rows == 3 and rows[3].left == "Level 25 (Uncommon)", "combat pet retains level and quality")
check(rows[3].right == "100 / 200 [10 | 20]", "combat pet retains stat values")
rows = petFixture({pet(nil, 1, false), pet("one", 5179, true, nil, 25, "Species name", true)}, {one = combat})
check(#rows == 3, "owned pets after unowned journal entries are included")
rows = petFixture({pet("one", 5179, true), pet(nil, 1, false), pet("two", 5179, true)}, {})
check(#rows == 4 and rows[2].left == "Owned pets", "multiple pets share one heading")
local calls
rows, calls = petFixture({pet("one", 5179, true, "Azurky", nil, nil, false)}, {})
check(#rows == 3 and rows[3].left == "Azurky" and rows[3].right == nil, "noncombat pets display a name")
check(calls == 0, "noncombat pets do not request battle stats")
rows = petFixture({pet("one", 5179, true, nil, 25, "Species name", true)}, {})
check(rows[3].left == "Species name" and rows[3].right == nil, "missing stats do not cause an error")
rows = petFixture({pet("one", 5179, true, nil, nil, nil, true)}, {one = {100, 200, nil, nil, 99}})
check(rows[3].left == "Species name" and rows[3].right == "100 / 200", "partial stats and unknown quality are safe")
rows = petFixture({pet(nil, 5179, true, "", nil, nil, false)}, {}, {speciesID = 5179})
check(rows[3].left == "Unknown", "missing pet GUID and names have a readable fallback")
rows = petFixture({}, {}, nil, 0)
check(#rows == 0, "empty journal adds no owned-pet heading")
print("Information owned-pet tests passed: " .. total .. " checks")
