local _, app = ...;
if app.IsClassic then return; end	-- Disable this in Classic
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
textCommands1:SetWidth(textCommands1:GetUnboundedStringWidth())
local textCommands2 = child:CreateTextLabel(L.COMMANDS_PART_2)
textCommands2:SetPoint("TOPLEFT", headerCommands, "BOTTOMLEFT", 0, -28)
textCommands2:SetWidth(textCommands2:GetUnboundedStringWidth())

local textIndex1 = 7
local function CreateText1(description)
	local text = child:CreateFontString("ARTWORK", nil, "GameFontNormal")
	text:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
	text:SetPoint("TOPLEFT", child, "TOPLEFT", 13, textIndex1 * -20)
	textIndex1 = textIndex1 + 1
	text:SetText("|cffFFFFFF" .. description)
end
local textIndex2 = 7
local function CreateText2(description)
	local text = child:CreateFontString("ARTWORK", nil, "GameFontNormal")
	text:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
	text:SetPoint("TOPLEFT", child, "TOPLEFT", 313, textIndex2 * -20)
	textIndex2 = textIndex2 + 1
	text:SetText("|cffFFFFFF" .. description)
end
local textIndex3 = 7
local function CreateText3(description)
	local text = child:CreateFontString("ARTWORK", nil, "GameFontNormal")
	text:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
	text:SetPoint("TOPLEFT", child, "TOPLEFT", 123, textIndex3 * -20)
	textIndex3 = textIndex3 + 1
	text:SetText("|cff00FF98" .. description)
end
local textIndex4 = 7
local function CreateText4(description)
	local text = child:CreateFontString("ARTWORK", nil, "GameFontNormal")
	text:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
	text:SetPoint("TOPLEFT", child, "TOPLEFT", 433, textIndex4 * -20)
	textIndex4 = textIndex4 + 1
	text:SetText("|cff00FF98" .. description)
end

-- TODO: Localize this
CreateText1(L.ACHIEVEMENT)
CreateText1("Artifact")
CreateText1("Azerite Essence")
CreateText1("Battle Pet")
CreateText1("Category")
CreateText1("Class")
CreateText1("Conduit")
CreateText1("Creature")
CreateText1("Criteria")
CreateText1("Currency")
CreateText1("Difficulty")
CreateText1("Encounter")
--CreateText1("Event")	-- TODO: Does not work currently
CreateText1("Expansion")
CreateText1("Exploration")
CreateText1("Faction")
CreateText1("Flight Path")
CreateText1("Follower")

CreateText2("Header")
CreateText2("Heirloom (item)")
CreateText2("Illusion")
--CreateText2("Instance")	-- TODO: Does not work currently
CreateText2(L.ITEM)
CreateText2("Map")
CreateText2("Mount (spell)")
CreateText2("Npc")
CreateText2("Object")
CreateText2("Profession")
CreateText2(L.QUEST)
CreateText2("Recipe (spell)")
CreateText2("Runecarving Power")
CreateText2("Source")
CreateText2("Spell")
CreateText2("Title")
CreateText2("Toy (item)")

CreateText3("/att achievement:ID")
CreateText3("/att artifact:ID")
CreateText3("/att azeriteessence:ID")
CreateText3("/att battlepet:ID")
CreateText3("/att category:ID")
CreateText3("/att class:ID")
CreateText3("/att conduit:ID")
CreateText3("/att creature:ID")
CreateText3("/att criteriaid:ID")	-- TODO: Change once the non-ID version works
CreateText3("/att currency:ID")
CreateText3("/att difficulty:ID")
CreateText3("/att encounter:ID")
--CreateText3("/att event:ID")	-- TODO: Does not work currently
CreateText3("/att expansion:ID")
CreateText3("/att exploration:ID")
CreateText3("/att faction:ID")
CreateText3("/att flightpath:ID")
CreateText3("/att follower:ID")

CreateText4("/att header:ID")
CreateText4("/att heirloomid:ID")	-- TODO: Change once the non-ID version works
CreateText4("/att illusion:ID")
--CreateText4("/att instanceid:ID")	-- TODO: Change once the non-ID version works
CreateText4("/att item:ID")
CreateText4("/att map:ID")
CreateText4("/att mount:ID")
CreateText4("/att npc:ID")
CreateText4("/att object:ID")
CreateText4("/att profession:ID")
CreateText4("/att quest:ID")
CreateText4("/att recipe:ID")
CreateText4("/att runeforgepower:ID")
CreateText4("/att source:ID")
CreateText4("/att spell:ID")
CreateText4("/att title:ID")
CreateText4("/att toy:ID")
