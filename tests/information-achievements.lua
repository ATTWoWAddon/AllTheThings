-- Run from the repository root: lua5.1 tests/information-achievements.lua [repository-root]
-- Executes the actual Information achievement getter across client flavors.
assert(_VERSION == "Lua 5.1", "These tests require Lua 5.1")
local root = arg[1] or "."
local file = assert(io.open(root .. "/src/Settings/Pages/Interface - Information.lua", "r"))
local source = file:read("*a"):gsub("\r\n", "\n")
file:close()
local getterSource = assert(source:match("(local function GetValueForInformationType.-)\nlocal function GetRecursiveValueForInformationType"))
local achievementSource = assert(source:match('CreateInformationType%("achievementID", (%b{})%)'))
local checks = 0
local function equal(actual, expected, label)
	assert(actual == expected, (label or "value") .. ": expected " .. tostring(expected) .. ", got " .. tostring(actual))
	checks = checks + 1
end
local achievementChunk = assert(loadstring("local app = ...; local L = app.L; local AppendInformationTextEntry = app.Append;\n" .. getterSource .. "\nreturn " .. achievementSource, "@Information-achievement-getter"))
for _, fixture in ipairs({
	{ name = "Era", build = 11509, forever = false, legacy = true },
	{ name = "TBC", build = 20506, forever = false, legacy = true },
	{ name = "Forever", build = 16001, forever = true, legacy = false },
	{ name = "Wrath", build = 38002, forever = false, legacy = false },
	{ name = "Mists", build = 50504, forever = false, legacy = false },
	{ name = "Retail", build = 120105, forever = false, legacy = false },
}) do
	local appended = {}
	local app = {
		L = { ACHIEVEMENT_PRE_WRATH_SOURCE_QUEST_INFO = "Legacy quest achievement" },
		GameBuildVersion = fixture.build,
		IsForever = fixture.forever,
		Append = function(entry) appended[#appended + 1] = entry end,
	}
	local descriptor = achievementChunk(app)
	descriptor.informationTypeID = "achievementID"
	equal(descriptor.GetValue(descriptor, { achievementID = 123, sourceQuests = { 456 } }), 123, fixture.name .. " achievement ID")
	equal(#appended, fixture.legacy and 1 or 0, fixture.name .. " legacy achievement notice")
	appended = {}
	equal(descriptor.GetValue(descriptor, { achievementID = 123 }), 123, fixture.name .. " ordinary achievement ID")
	equal(#appended, 0, fixture.name .. " ordinary achievement notice")
end

print("Information achievement tests passed: " .. checks .. " assertions")
