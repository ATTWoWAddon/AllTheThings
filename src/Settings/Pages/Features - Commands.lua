local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Commands Page
local child = settings:CreateOptionsPage(L.COMMANDS_PAGE, L.FEATURES_PAGE)

-- CONTENT
local headerCommands = child:CreateHeaderLabel(L.COMMANDS_HEADER_LABEL)
if child.separator then
	headerCommands:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerCommands:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

local textCommands1 = child:CreateTextLabel(L.COMMANDS_PART_1)
textCommands1:SetPoint("TOPLEFT", headerCommands, "BOTTOMLEFT", 0, -8)
textCommands1:SetPoint("RIGHT", child, -10, 0)
local textCommands2 = child:CreateTextLabel(L.COMMANDS_PART_2)
textCommands2:SetPoint("TOPLEFT", textCommands1, "BOTTOMLEFT", 0, -4)
textCommands1:SetPoint("RIGHT", child, -10, 0)

local columnOne, columnTwo, columnThree, columnFour

local function createColumn(stringTable, color, columnNo)
	local string = child:CreateFontString("ARTWORK", nil, "GameFontNormal")
	string:SetJustifyH("LEFT")
	-- string:SetScale(1)
	string:SetSpacing(8)
	if columnNo == 1 then
		string:SetPoint("TOPLEFT", textCommands2, "BOTTOMLEFT", 0, -20)
	elseif columnNo == 2 then
		string:SetPoint("TOPLEFT", columnOne, "TOPRIGHT", 12, 0)
	elseif columnNo == 3 then
		string:SetPoint("TOPLEFT", columnTwo, "TOPRIGHT", 30, 0)
	elseif columnNo == 4 then
		string:SetPoint("TOPLEFT", columnThree, "TOPRIGHT", 12, 0)
	end

	local stringText = color
	for _, text in ipairs(stringTable) do
		if columnNo == 1 or columnNo == 3 then
			stringText = stringText .. text.title .. "\n"
		else
			stringText = stringText .. "/att " .. text.command .. ":ID\n"
		end
	end
	string:SetText(stringText)

	return string
end

local stringsOne = {
	{ title = L.ACHIEVEMENT, command = "achievement" },
	{ title = L.ARTIFACT, command = "artifact" },
	{ title = L.AZERITE_ESSENCE, command = "azeriteessence" },
	{ title = L.BATTLE_PET, command = "battlepet" },
	{ title = L.CATEGORY, command = "category" },
	{ title = L.CLASSES, command = "class" },
	{ title = L.CONDUIT, command = "conduit" },
	{ title = L.CREATURE, command = "creature" },
	{ title = L.CRITERIA, command = "criteriaid" },
	{ title = L.CURRENCY, command = "currency" },
	{ title = L.DECOR, command = "decor" },
	{ title = L.DIFFICULTY, command = "difficulty" },
	{ title = L.ENCOUNTER, command = "encounter" },
	{ title = L.EXPLORATION, command = "exploration" },
	{ title = L.FACTION, command = "faction" },
	{ title = L.FLIGHT_PATHS, command = "flightpath" },
	{ title = L.FOLLOWER, command = "follower" },
}
local stringsTwo = {
	{ title = L.HEADER, command = "header" },
	{ title = L.HEIRLOOM, command = "heirloomid" },
	{ title = L.ILLUSION, command = "illusion" },
	{ title = L.ITEM, command = "item" },
	{ title = L.MAP, command = "map" },
	{ title = L.MOUNT_SPELL, command = "mount" },
	{ title = "Npc", command = "npc" },
	{ title = L.OBJECT, command = "object" },
	{ title = L.PROFESSION, command = "profession" },
	{ title = L.QUEST, command = "quest" },
	{ title = L.RECIPE_SPELL, command = "recipe" },
	{ title = L.RUNECARVING_POWER, command = "runeforgepower" },
	{ title = L.SOURCES, command = "source" },
	{ title = L.SPELL, command = "spell" },
	{ title = L.TITLE_COMMANDS_UI, command = "title" },
	{ title = L.TOY_ITEM, command = "toy" },
}

columnOne = createColumn(stringsOne, "|cffFFFFFF", 1)
columnTwo = createColumn(stringsOne, "|cff00FF98", 2)
columnThree = createColumn(stringsTwo, "|cffFFFFFF", 3)
columnFour = createColumn(stringsTwo, "|cff00FF98", 4)
