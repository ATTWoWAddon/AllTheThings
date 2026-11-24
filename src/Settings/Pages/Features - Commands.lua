local _, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs = ipairs;

-- Settings: Commands Page
local child = settings:CreateOptionsPage(L.COMMANDS_PAGE, L.FEATURES_PAGE)

local stringsOne = {
	{ title = L.ACHIEVEMENT, command = "achievement" },
	{ minBuild = 80200, title = L.AZERITE_ESSENCE, command = "azeriteessence" },
	{ title = L.BATTLE_PET, command = "battlepet" },
	{ title = L.CATEGORY, command = "category" },
	{ title = L.CLASSES, command = "class" },
	{ minBuild = 90000, title = L.CONDUIT, command = "conduit" },
	{ title = L.CREATURE, command = "creature" },
	{ title = L.CRITERIA, command = "criteriaid" },
	{ title = L.CURRENCY, command = "currency" },
	{ minBuild = 110207, title = L.DECOR, command = "decor" },
	{ title = L.DIFFICULTY, command = "difficulty" },
	{ title = L.ENCOUNTER, command = "encounter" },
	{ title = L.EXPLORATION, command = "exploration" },
	{ title = L.FACTION, command = "faction" },
	{ title = L.FLIGHT_PATHS, command = "flightpath" },
	{ minBuild = 60000, title = L.FOLLOWER, command = "follower" },
}
if app.GameBuildVersion >= 70000 then
	table.insert(stringsOne, 2, { title = L.ARTIFACT, command = "artifact" });
end
local stringsTwo = {
	{ title = L.HEADER, command = "header" },
	{ minBuild = 30000, title = L.HEIRLOOM, command = "heirloomid" },
	{ minBuild = 70000, title = L.ILLUSION, command = "illusion" },
	{ title = L.ITEM, command = "item" },
	{ title = L.MAP, command = "map" },
	{ title = L.MOUNT_SPELL, command = "mount" },
	{ title = "Npc", command = "npc" },
	{ title = L.OBJECT, command = "object" },
	{ title = L.PROFESSION, command = "profession" },
	{ title = L.QUEST, command = "quest" },
	{ title = L.RECIPE_SPELL, command = "recipe" },
	{ minBuild = 90000, title = L.RUNECARVING_POWER, command = "runeforgepower" },
	{ title = L.SOURCES, command = "source" },
	{ title = L.SPELL, command = "spell" },
	{ title = L.TITLE_COMMANDS_UI, command = "title" },
	{ title = L.TOY_ITEM, command = "toy" },
}


local content = settings.CreatePageColumn(child, 0, 656)
local y = -4
local function AddText(text)
	local label = content:CreateTextLabel(text)
	label:SetFontObject(GameFontNormalSmall)
	label:SetWidth(content.SectionWidth - 16)
	label:SetWordWrap(true)
	label:SetSpacing(2)
	label:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y - 2)
	y = y - label:GetStringHeight() - 8
end

-- Commands which view any Thing
y = y - settings.CreatePageSectionHeader(content, L.COMMANDS_HEADER_LABEL, y)
AddText(L.COMMANDS_PART_1)
-- The example was added during Warlords
if app.GameBuildVersion >= 60000 then AddText(L.COMMANDS_PART_2) end
local ROW_HEIGHT, COLUMN_WIDTH, COMMAND_X = 16, 312, 140
local function AddColumn(commands, x)
	local count = 0
	for _,command in ipairs(commands) do
		if not command.minBuild or app.GameBuildVersion >= command.minBuild then
			local title = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
			title:SetPoint("TOPLEFT", content, "TOPLEFT", x, y - count * ROW_HEIGHT)
			title:SetText(command.title)
			local text = content:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
			text:SetPoint("TOPLEFT", content, "TOPLEFT", x + COMMAND_X, y - count * ROW_HEIGHT)
			text:SetText("|cff00FF98/att " .. command.command .. ":ID|r")
			count = count + 1
		end
	end
	return count
end
local rows = math.max(AddColumn(stringsOne, 8), AddColumn(stringsTwo, 8 + COLUMN_WIDTH))
y = y - rows * ROW_HEIGHT - 12

-- The other commands
y = y - settings.CreatePageSectionHeader(content, L.CHAT_COMMANDS_LABEL, y)
local chatCommands = L.CHAT_COMMANDS_TEXT
if app.GameBuildVersion < 70000 then
	-- World Quests were added during Legion
	chatCommands = chatCommands:gsub("|R/att ?wq.-\n\n", "")
end
AddText(chatCommands)
content:SetHeight(-y)
