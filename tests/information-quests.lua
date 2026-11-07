-- Run from the repository root: lua5.1 tests/information-quests.lua
-- Exercises the actual quest-text helper and independent Lore/Objectives
-- Information processors without loading the game UI.
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
local quests = read("src/Classes/Quests.lua")
local helper = assert(quests:match("(local GetQuestLogQuestText = GetQuestLogQuestText;.-)\n%-%- Quest Links"))
local loreGetter = assert(quests:match("\tlore = (function%(t%).-\n\tend),"))
local objectives = assert(quests:match('CreateInformationType%("Objectives", (%b{})%)'))
local information = read("src/Settings/Pages/Interface - Information.lua")
local lore = assert(information:match('CreateInformationType%("lore", (%b{})%)'))

local function questFixture(legacy, compatibilityGlobals)
	local state = {
		selected = 9, moves = {}, reads = 0,
		indices = {[100] = 2},
		text = {[2] = {"Quest lore", "Quest objective"}, [9] = {"Other lore", "Other objective"}},
	}
	local app = {IsClassic = legacy, L = {OBJECTIVES = "Objectives"}, Colors = {TooltipLore = "lore"}}
	local env = setmetatable({
		app = app, L = app.L, REQUIREMENTS = "Requirements", tinsert = table.insert,
		GetQuestLogIndexByID = function(id) return state.indices[id] end,
		C_QuestLog_GetQuestObjectives = function() return {} end,
	}, {__index = _G})
	env.GetQuestLogQuestText = function(index)
		state.reads = state.reads + 1
		if state.failRead then error("fixture text read failed") end
		if legacy then
			check(index == nil, "legacy text reads the selected entry")
			index = state.selected
		end
		local text = state.text[index]
		if text then return unpack(text) end
	end
	if legacy or compatibilityGlobals then
		env.GetQuestLogSelection = function() return state.selected end
		env.SelectQuestLogEntry = function(index)
			state.selected = index
			state.moves[#state.moves + 1] = index
			if state.failSelect and index == 2 then error("fixture selection failed") end
		end
	end
	local getText, getLore = compile(helper .. "\nreturn GetQuestLogText, " .. loreGetter, "quest-text", env)()
	env.GetQuestLogText = getText
	local objectiveProcessor = compile("return " .. objectives, "quest-objectives", env)().Process
	local loreProcessor = compile("return " .. lore, "quest-lore", env)().Process
	local reference = setmetatable({questID = 100}, {__index = function(t, key)
		if key == "lore" then return getLore(t) end
	end})
	return state, getText, reference, objectiveProcessor, loreProcessor
end

for _, mode in ipairs({"indexed", "legacy", "indexed-with-compatibility-globals"}) do
	local legacy = mode == "legacy"
	local state, getText, reference, objectiveProcessor, loreProcessor = questFixture(legacy, mode == "indexed-with-compatibility-globals")
	local description, objective = getText(100)
	check(description == "Quest lore" and objective == "Quest objective", "text belongs to requested quest")
	check(state.selected == 9, "quest selection is preserved")
	if not legacy then
		check(#state.moves == 0, "indexed quest text avoids compatibility selection APIs")
	end
	for _, showLore in ipairs({false, true}) do
		for _, showObjectives in ipairs({false, true}) do
			local lines = {}
			if showLore then loreProcessor({}, reference, lines) end
			if showObjectives then objectiveProcessor({}, reference, lines) end
			local loreCount, objectiveCount = 0, 0
			for _, line in ipairs(lines) do
				if line.left == "Quest lore" then loreCount = loreCount + 1 end
				if line.left == "Quest objective" then objectiveCount = objectiveCount + 1 end
			end
			check(loreCount == (showLore and 1 or 0), "Lore is independent of Objectives and is not duplicated")
			check(objectiveCount == (showObjectives and 1 or 0), "Objectives is independent of Lore")
		end
	end
	state.text[2][1] = "Updated lore"
	check(reference.lore == "Updated lore", "quest lore is not permanently cached")
	state.indices[100] = 0
	local previousReads = state.reads
	check(getText(100) == nil and state.reads == previousReads, "zero log index is not read")
	state.indices[100] = nil
	check(reference.lore == nil, "quest outside log has no cached lore")
	state.indices[100] = 2
	check(reference.lore == "Updated lore", "quest entering log becomes readable")
	if legacy then
		state.selected, state.moves = 2, {}
		getText(100)
		check(#state.moves == 0, "already-selected quest avoids selection churn")
		state.selected, state.failRead = 9, true
		local ok, err = pcall(getText, 100)
		check(not ok and err:find("fixture text read failed", 1, true), "read errors are preserved")
		check(state.selected == 9, "selection is restored after a read error")
		state.failRead, state.failSelect = false, true
		ok, err = pcall(getText, 100)
		check(not ok and err:find("fixture selection failed", 1, true), "selection errors are preserved")
		check(state.selected == 9, "selection restoration is attempted after selection failure")
	end
end

print("Information quest tests passed: " .. total .. " checks")
