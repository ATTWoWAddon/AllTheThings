
local _, app = ...
local L = app.L

-- Globals
local setmetatable, rawget, select, tostring, ipairs, pairs, tonumber
	= setmetatable, rawget, select, tostring, ipairs, pairs, tonumber

-- WoW API Cache

-- Module
local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
local IsQuestFlaggedCompletedForObject = app.IsQuestFlaggedCompletedForObject
local IsRetrievingData = app.Modules.RetrievingData.IsRetrievingData

-- App

-- NPC Model Harvester (acquires the displayID)
local NPCHarvester = CreateFrame("DressUpModel", nil, UIParent)
NPCHarvester:SetPoint("TOPRIGHT", UIParent, "BOTTOMRIGHT", 0, 0)
NPCHarvester:SetSize(1, 1)
NPCHarvester:Hide()
local NPCDisplayIDFromID = setmetatable({}, { __index = function(t, id)
	if id > 0 then
		NPCHarvester:SetDisplayInfo(0)
		NPCHarvester:SetUnit("none")
		NPCHarvester:SetCreature(id)
		local displayID = NPCHarvester:GetDisplayInfo()
		if displayID and displayID ~= 0 then
			t[id] = displayID
			return displayID
		end
	end
end})
app.NPCDisplayIDFromID = NPCDisplayIDFromID

local NPCNameFromID, NPCTitlesFromID = {},{}
local C_TooltipInfo_GetHyperlink = C_TooltipInfo and C_TooltipInfo.GetHyperlink
local blacklisted = {
	[TOOLTIP_UNIT_LEVEL:format("??")] = true,
	[TOOLTIP_UNIT_LEVEL_TYPE:format("??", ELITE)] = true,
}
if C_TooltipInfo_GetHyperlink then
	setmetatable(NPCNameFromID, { __index = function(t, id)
		id = tonumber(id)
		if id and id > 0 then
			local tooltipData = C_TooltipInfo_GetHyperlink(("unit:Creature-0-0-0-0-%d-0000000000"):format(id))
			if tooltipData then
				local title = tooltipData.lines[1].leftText
				if title and #tooltipData.lines > 2 then
					local leftText = tooltipData.lines[2].leftText
					if leftText and not blacklisted[leftText] then
						NPCTitlesFromID[id] = leftText
					end
				end
				if not IsRetrievingData(title) then
					t[id] = title
					return title
				end
			end
		else
			return L.HEADER_NAMES[id]
		end
	end})
else
	---@class ATTNPCHarvesterForRetail: GameTooltip
	local ATTCNPCHarvester = CreateFrame("GameTooltip", "ATTCNPCHarvester", UIParent, "GameTooltipTemplate")
	ATTCNPCHarvester.AllTheThingsIgnored = true;
	setmetatable(NPCNameFromID, { __index = function(t, id)
		if id > 0 then
			ATTCNPCHarvester:SetOwner(UIParent,"ANCHOR_NONE")
			ATTCNPCHarvester:SetHyperlink(("unit:Creature-0-0-0-0-%d-0000000000"):format(id))
			local title = ATTCNPCHarvesterTextLeft1:GetText()
			if title and ATTCNPCHarvester:NumLines() > 2 then
				local leftText = ATTCNPCHarvesterTextLeft2:GetText()
				if leftText and not blacklisted[leftText] then
					NPCTitlesFromID[id] = leftText
				end
			end
			ATTCNPCHarvester:Hide()
			if not IsRetrievingData(title) then
				t[id] = title
				return title
			end
		else
			return L.HEADER_NAMES[id]
		end
	end})
end
app.NPCNameFromID = NPCNameFromID
app.NPCTitlesFromID = NPCTitlesFromID

-- NPC Lib
local CreateNPC
do
	local KEY = "npcID"
	local cache = app.CreateCache(KEY, "NPC")
	cache.DefaultFunctions.name = function(t)
		local _t, id = cache.GetCached(t)
		local name = NPCNameFromID[id]
		_t.name = name
		return name
	end
	CreateNPC = app.CreateClass("NPC", KEY, {
		name = function(t)
			return cache.GetCachedField(t, "name")
		end,
		title = function(t)
			return NPCTitlesFromID[t[KEY]]
		end,
		icon = function(t)
			return (t.parent and t.parent.headerID and t.parent.headerID == app.HeaderConstants.VENDORS and 133784) or app.GetRelativeDifficultyIcon(t)
		end,
		indicatorIcon = function(t)
			if app.ActiveVignettes.npc[t.npcID] then
				return app.asset("Interface_Ping")
			end
		end,
	},
	"WithQuest", {
		CollectibleType = app.IsClassic and function() return "Quests" end
		-- Retail: NPCs tracked as HQT
		or function() return "QuestsHidden" end,
		collectible = app.GlobalVariants.AndLockCriteria.collectible or app.CollectibleAsQuest,
		locked = app.GlobalVariants.AndLockCriteria.locked,
		collected = IsQuestFlaggedCompletedForObject,
		trackable = function(t)
			-- raw repeatable quests can't really be tracked since they immediately unflag
			return not rawget(t, "repeatable") and t.repeatable
		end,
		saved = function(t)
			return IsQuestFlaggedCompleted(t.questID)
		end,
		repeatable = function(t)
			return t.isDaily or t.isWeekly or t.isMonthly or t.isYearly
		end,
		altcollected = function(t)
			if t.altQuests then
				for i,questID in ipairs(t.altQuests) do
					if IsQuestFlaggedCompleted(questID) then
						t.altcollected = questID
						return questID
					end
				end
			end
		end,
		-- questID is sometimes a faction-based questID for a single NPC (i.e. BFA Warfront Rares), thanks Blizzard
		questID = function(t)
			local qa = t.questIDA
			local qh = t.questIDH
			if qa then
				if app.FactionID == Enum.FlightPathFaction.Horde then
					t.questID = qh
					t.otherFactionQuestID = qa
					return qh
				else
					t.questID = qa
					t.otherFactionQuestID = qh
					return qa
				end
			end
		end,
		otherFactionQuestID = function(t)
			local qa = t.questIDA
			local qh = t.questIDH
			if qa then
				if app.FactionID == Enum.FlightPathFaction.Horde then
					t.questID = qh
					t.otherFactionQuestID = qa
					return qa
				else
					t.questID = qa
					t.otherFactionQuestID = qh
					return qh
				end
			end
		end,
		-- use custom to track opposite faction questID collection in account/debug if the NPC is considered collectible
		customTotal = function(t)
			if app.MODE_DEBUG_OR_ACCOUNT and t.questIDA and t.collectible then
				return 1
			end
		end,
		customProgress = function(t)
			return (t.otherFactionQuestID and IsQuestFlaggedCompleted(t.otherFactionQuestID)) and 1 or 0
		end,
	}, (function(t) return t.questID or t.questIDA or t.questIDH end))
end

-- Header Lib
-- TODO: eventually maybe this can actually just be a CreateCustomHeader from parser instead of fake NPC header
local CreateCustomHeader
do
	local HeaderEventIDs = L.HEADER_EVENTS
	local KEY = "headerID"
	CreateCustomHeader = app.CreateClass("Header", KEY, {
		IsClassIsolated = true,
		name = function(t)
			return L.HEADER_NAMES[t[KEY]]
		end,
		icon = function(t)
			return L.HEADER_ICONS[t[KEY]] or app.asset("Category_Zones")
		end,
		description = function(t)
			return L.HEADER_DESCRIPTIONS[t[KEY]]
		end,
		lore = function(t)
			return L.HEADER_LORE[t[KEY]]
		end,
	},
	"WithQuest", {
		trackable = function(t)
			-- raw repeatable quests can't really be tracked since they immediately unflag
			return not rawget(t, "repeatable") and t.repeatable
		end,
		saved = function(t)
			return IsQuestFlaggedCompleted(t.questID)
		end,
		repeatable = function(t)
			return t.isDaily or t.isWeekly or t.isMonthly or t.isYearly
		end,
	}, (function(t) return t.questID end),
	"WithEvent", app.CloneDictionary(app.Modules.Events.Fields, {}), (function(t) return HeaderEventIDs[t[KEY]] end))
	app.CreateCustomHeader = CreateCustomHeader
end

app.CreateNPC = function(id, t)
	if id < 1 then
		print("HEY! USE app.CreateCustomHeader(", id, ") instead!");
		return CreateCustomHeader(id, t)
	else
		return CreateNPC(id, t)
	end
end

-- returns the input key unless it's blocked by being set to 0
local BlockedDisplayID = {
	[11686] = 0,	-- empty blue thing
	[16925] = 0,	-- nothing
	[21072] = 0,	-- empty blue thing
	[23767] = 0,	-- empty blue thing
	[27823] = 0,	-- empty blue thing
	[28016] = 0,	-- empty blue thing
	[52318] = 0,	-- generic bunny
	[56187] = 0,	-- generic bunny
	[64062] = 0,	-- generic bunny
	[110046] = 0,	-- nothing
	[111386] = 0,	-- nothing
	[112684] = 0,	-- nothing
}
local AllowedDisplayID = setmetatable({}, {
	__index = function(t, key)
		if BlockedDisplayID[key] then
			return false
		end
		-- app.PrintDebug("DisplayID",key)
		return key;
	end
});

local function GetDisplayID(data)
	-- don't create a displayID for groups with a sourceID/itemID/difficultyID/mapID
	if data.sourceID or data.difficultyID or data.mapID or data.itemID then return false end

	local npcID = data.npcID
	if npcID then return NPCDisplayIDFromID[npcID] end

	local qgs = data.qgs
	if qgs and #qgs > 0 then return NPCDisplayIDFromID[qgs[1]] end

	local providers = data.providers
	if providers and #providers > 0 then
		for _,v in ipairs(providers) do
			-- if one of the providers is an NPC, we should show its texture regardless of other providers
			if v[1] == "n" then
				return NPCDisplayIDFromID[v[2]]
			end
		end
	end
	return false
end

-- Determines an allowed DisplayID for the provided data group based on NPC data
-- or returns an existing displayID of the group
app.GetDisplayID = function(data)
	local id = data.displayID
	-- app.PrintDebug("old.displayID",id)
	if id ~= nil then return id end
	id = AllowedDisplayID[GetDisplayID(data)]
	-- app.PrintDebug("new.displayID",id)
	data.displayID = id
	return id
end
