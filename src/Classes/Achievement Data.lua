do
local _, app = ...

-- Cache Achievement Data if it exists.
local AchievementData = rawget(app.L, "ACHIEVEMENT_DATA");
if not AchievementData then return; end
local AchievementCriteriaData = rawget(app.L, "ACHIEVEMENT_CRITERIA_DATA");
if not AchievementCriteriaData then return; end
local WorldMapOverlayData = rawget(app.L, "WORLD_MAP_OVERLAY_DATA") or {};

-- Globals
local tostring, ipairs, pairs, tinsert
	= tostring, ipairs, pairs, tinsert;
local math_min = math.min;

-- App & Module locals
local SearchForField, SearchForFieldContainer
	= app.SearchForField, app.SearchForFieldContainer;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local IsQuestFlaggedCompleted;
local IsSpellKnown;


-- WoW API Cache
local GetItemID = app.WOWAPI.GetItemID;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetPVPLifetimeStats = GetPVPLifetimeStats;
local GetNumBankSlots = GetNumBankSlots;
local GetFactionCurrentReputation = app.WOWAPI.GetFactionCurrentReputation;

-- Locals from future-loaded Modules
app.AddEventHandler("OnLoad", function()
	IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
	IsSpellKnown = app.IsSpellKnown;
end)

-- Achievement Criteria Data have independent detection methods based on their internal type.
local BrokenTypeDescriptions = setmetatable({
	[0] = "TYPE 0: You can't kill mobs and have it tracked and count later, we could probably hook into KillTrack or something, but I don't know how to do that and when Wrath Classic comes around you'd need to do it again since it isn't permanent.",
	[11] = "TYPE 11: Loremaster requires more quests than are currently available in the game and I don't have time to fix this yet prior to MOP Classic, which is my current priority.",
}, {
	__index = function(t, key)
		return "TYPE " .. key .. ": So broken that even the broken description table doesn't have any information on this one!";
	end,
});
local IgnoredReputationsForAchievements = {
	[169] = 1,	-- Steamweedle Cartel doesn't count toward reputation achievements
};
local function GetQuestCompleted(questID)
	return IsQuestFlaggedCompleted(questID) and 1 or 0;
end
local function GetSpellCompleted(spellID)
	if IsSpellKnown(spellID) then
		return 1;
	else
		local spells = SearchForField("spellID", spellID);
		if spells then
			for i,o in ipairs(spells) do
				if o.collected then return 1; end
				break;
			end
		end
	end
	return 0;
end
local function GetRelatedThingsForExaltedReputations(t, objects)
	for factionID,g in pairs(SearchForFieldContainer("factionID")) do
		if not IgnoredReputationsForAchievements[factionID] then
			for j,o in ipairs(g) do
				if o.key == "factionID" then
					tinsert(objects, o);
					break;
				end
			end
		end
	end
end
local function GetRelatedThingsForOwnItem(t, objects)
	local searchResults = SearchForField("itemID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local function GetRelatedThingsForMounts(t, objects)
	for spellID,spells in pairs(SearchForFieldContainer("mountID")) do
		for i,spell in ipairs(spells) do
			tinsert(objects, spell);
			break;
		end
	end
end
local function GetRelatedThingsForPets(t, objects)
	for i,pets in pairs(SearchForFieldContainer("speciesID")) do
		tinsert(objects, pets[1]);
	end
end
local function GetRelatedThingsForQuest(t, objects)
	local searchResults = SearchForField("questID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local function GetRelatedThingsForReputation(t, objects)
	local faction = app.CreateFaction(t.asset);
	if t.amount ~= 42000 then faction.minReputation = { t.asset, t.amount }; end
	tinsert(objects, faction);
end
local function GetRelatedThingsForSkillRanks(t, objects)
	local spellID = t.spellID;
	if spellID then
		local searchResults = SearchForField("spellID", spellID);
		if searchResults then tinsert(objects, searchResults[1]); end
	end
end
local function GetRelatedThingsForSpells(t, objects)
	local searchResults = SearchForField("spellID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local GetRelatedThingsForSkillID = setmetatable({
	[777] = GetRelatedThingsForMounts,
	[778] = GetRelatedThingsForPets,
}, {
	__index = function(t, key)
		print("MISSING GetRelatedThingsForSkillID(" .. key .. ") handler.");
		return app.EmptyFunction;
	end,
});
local GetAchievementCriteriaCommandForSkillID = setmetatable({
	[777] = "CriteriaTypeForMounts",
	[778] = "CriteriaTypeForPets",
}, {
	__index = function(t, key)
		print("MISSING GetAchievementCriteriaCommandForSkillID(" .. key .. ") handler.");
		return app.EmptyFunction;
	end,
});
local AchievementCriteriaCommands = {
	CriteriaTypeForExaltedReputations = function()
		local count = 0;
		for factionID,g in pairs(SearchForFieldContainer("factionID")) do
			if not IgnoredReputationsForAchievements[factionID] then
				for j,o in ipairs(g) do
					if o.key == "factionID" and o.standing == 8 then
						count = count + 1;
						break;
					end
				end
			end
		end
		--print("Currently " .. count .. " Reputations at Exalted!");
		return count;
	end,
	CriteriaTypeForHonorableKills = function()
		local count = GetPVPLifetimeStats();
		--print("Currently " .. count .. " Honorable Kills!");
		return count;
	end,
	CriteriaTypeForMounts = function()
		local count = 0;
		for i,g in pairs(SearchForFieldContainer("mountID")) do
			for j,o in ipairs(g) do
				if o.collected then count = count + 1; end
				break;
			end
		end
		--print("Currently " .. count .. " Total Mounts!");
		return count;
	end,
	CriteriaTypeForPets = function()
		local count = 0;
		for i,g in pairs(SearchForFieldContainer("speciesID")) do
			for j,o in ipairs(g) do
				if o.collected then count = count + 1; end
				break;
			end
		end
		--print("Currently " .. count .. " Total Pets!");
		return count;
	end,
	CriteriaTypeForBankSlots = function()
		local count = GetNumBankSlots();
		--print("Currently " .. count .. " Bank Slots!");
		return count;
	end,
};
local AchievementCriteriaDataCache = setmetatable({}, {
	__index = function(t, key)
		local command = AchievementCriteriaCommands[key];
		if command then
			local value = command();
			t[key] = value;
			return value;
		else
			print("Could not find command '" .. key .. "'");
			t[key] = 0;
			return 0;
		end
	end,
});
local AchievementCriteriaQuestDataCache = setmetatable({}, {
	__index = function(t, key)
		local value = GetQuestCompleted(key);
		t[key] = value;
		return value;
	end,
});
local AchievementCriteriaSpellDataCache = setmetatable({}, {
	__index = function(t, key)
		local value = GetSpellCompleted(key);
		t[key] = value;
		return value;
	end,
});
local DefaultCriteriaFields = {	-- Type 45, 113
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["rank"] = function(t) return t.amount; end,
};
local ForBrokenTypesFields = {	-- Type 11 [Loremaster] / 0 [Kill an NPC]
	["collectible"] = app.ReturnFalse,
	["current"] = function(t)
		return 0;
	end,
	["BrokenTypeDescription"] = function(t)
		return BrokenTypeDescriptions[t.type];
	end,
};
local ForExaltedReputationsFields = {	-- Type 47
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["rank"] = function(t) return t.amount; end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForExaltedReputations;
	end,
};
local ForLevelFields = {	-- Type 5
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return app.Level;
	end,
	["rank"] = function(t) return t.amount; end,
	["lvl"] = function(t) return t.amount; end,
};
local ForOwnItemFields = {	-- Type 36
	["collectible"] = function(t)
		local searchResults = SearchForField("itemID", t.asset);
		local collectible = searchResults and #searchResults > 0;
		t.collectible = collectible;
		return collectible;
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return GetItemCount(t.asset, true);
	end,
	["providers"] = function(t)
		local providers = {{"i",t.asset}};
		t.providers = providers;
		return providers;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForOwnItem;
	end,
};
local ForQuestFields = {	-- Type 27
	["collectible"] = function(t)
		local quests = app.SearchForField("questID", t.asset);
		if quests and #quests > 0 then
			-- Only non-repeatable quests can be tracked this way.
			local collectible = not quests[1].repeatable;
			t.collectible = collectible;
			return collectible;
		end
		return true;
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaQuestDataCache[t.asset];
	end,
	["sourceQuest"] = function(t)
		return t.asset;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForQuest;
	end
};
local ForSkillCountFields = {	-- Type 75
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaDataCache[GetAchievementCriteriaCommandForSkillID[t.asset]];
	end,
	["rank"] = function(t) return t.amount; end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSkillID[t.asset];
	end
};
local ForSkillRankFields = {	-- Type 40
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.total;
	end,
	["current"] = function(t)
		local skill = app.CurrentCharacter.ActiveSkills[t.spellID];
		if skill then return skill[1]; end
		return 0;
	end,
	["name"] = function(t)
		local spellID = t.spellID;
		return spellID and GetSpellName(spellID);
	end,
	["total"] = function(t) return t.amount * 75; end,
	["rank"] = function(t) return t.amount; end,
	["spellID"] = function(t)
		return app.SkillDB.SkillToSpell[t.asset];
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSkillRanks;
	end
};
local ForReputationFields = {	-- Type 46
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return GetFactionCurrentReputation(t.asset) or 0;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForReputation;
	end,
	["ShouldShowRelatedThingsInTooltip"] = function(t)
		return true;
	end
}
local ForSpellsFields = {	-- Type 34
	["collectible"] = app.ReturnTrue,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaSpellDataCache[t.asset];
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSpells;
	end,
};
local ForExplorationFields = {	-- Type 43
	["collectible"] = function(t)
		for i,explorationID in ipairs(t.overlayData) do
			local exploration = SearchForField("explorationID", explorationID);
			if exploration and #exploration > 0 then
				return exploration[1].collectible;
			end
		end
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		for i,explorationID in ipairs(t.overlayData) do
			if app.CurrentCharacter.Exploration[explorationID] then
				return 1;
			end
		end
		return 0;
	end,
};
local ForSubAchievementFields = {	-- Type 8
	["collectible"] = function(t)
		local achievements = SearchForField("achievementID", t.asset);
		if achievements and #achievements > 0 then
			t.collectible = true;
			return true;
		end
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return app.CurrentCharacter.Achievements[t.asset] and 1 or 0;
	end,
};
local function OnTooltipForCriteriaData(criteria, tooltipInfo)
	tinsert(tooltipInfo, {
		left = " [" .. criteria.__criteriaUID .. "]: " .. tostring(criteria.text),
		right = "(" .. tostring(criteria.asset or "--") .. " @ " .. tostring(criteria.type) .. ") " .. tostring(criteria.progress) .. " / " .. tostring(criteria.total) .. " " .. app.GetCompletionIcon(criteria.collected),
		r = 1, g = 1, b = 1
	});
end
local CreateCriteriaType = app.CreateClass("CriteriaType", "__criteriaUID", {
	RefreshCollectionOnly = true,
	["collectible"] = app.ReturnFalse,
	["collected"] = app.ReturnFalse,
	["amount"] = function(t) return 0; end,
	["name"] = function(t) return t.__criteriaUID; end,
	["progress"] = function(t)
		return math_min(t.current, t.total);
	end,
	["total"] = function(t) return t.amount; end,
	["current"] = function(t)
		return AchievementCriteriaDataCache[t.__type];
	end,
	["GetRelatedThings"] = function()
		return app.EmptyFunction;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForCriteriaData;
	end,
},
"ForBrokenTypes", ForBrokenTypesFields, function(t) return t.type == 11 or t.type == 0 or t.type == 74; end,	-- 74 appears to be if someone has a title, but no id is provided.
"ForBankSlots", DefaultCriteriaFields, function(t) return t.type == 45; end,
"ForSkillRank", ForSkillRankFields, function(t) return t.type == 40; end,
"ForSkillCount", ForSkillCountFields, function(t) return t.type == 75; end,
"ForSubAchievement", ForSubAchievementFields, function(t) return t.type == 8; end,
"ForExaltedReputations", ForExaltedReputationsFields, function(t) return t.type == 47; end,
"ForHonorableKills", DefaultCriteriaFields, function(t) return t.type == 113; end,
"ForReputation", ForReputationFields, function(t) return t.type == 46; end,
"ForLevel", ForLevelFields, function(t) return t.type == 5; end,
"ForOwnItem", ForOwnItemFields, function(t) return t.type == 36 or t.type == 57 or t.type == 41 or t.type == 42; end,	-- 41 is using the item, 42 is for specifically looting the item.
"ForQuest", ForQuestFields, function(t) return t.type == 27; end,
"ForSpells", ForSpellsFields, function(t) return t.type == 34; end,
"ForExploration", ForExplorationFields, function(t)
	if t.type == 43 then
		t.overlayData = WorldMapOverlayData[t.asset] or {};
		return true;
	end
end);

-- Add Handlers for updating the completion status
for id,criteria in pairs(AchievementCriteriaData) do
	local crit = CreateCriteriaType(id, criteria);
	AchievementCriteriaData[id] = crit;
	if crit.__type == "CriteriaType" then
		print("Unhandled criteria type", crit.type, crit.text);
	end
end
app.AddEventHandler("OnRecalculate", function()
	wipe(AchievementCriteriaDataCache);
	wipe(AchievementCriteriaQuestDataCache);
	wipe(AchievementCriteriaSpellDataCache);
end);

-- Achievement Data has operator assignments that dictate behaviour
local function GetRelatedThingsForAchievementData(t, objects)
	local criteriaData = t.criteriaData;
	if criteriaData then
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				data.GetRelatedThings(data, objects);
			end
		end
	end
end
local function OnTooltipForAchievementData(t, tooltipInfo)
	local criteriaData = t.criteriaData;
	if #criteriaData > 0 then
		local relatedThings = {};
		for i,criteria in ipairs(criteriaData) do
			if criteria.ShouldShowRelatedThingsInTooltip then
				criteria.GetRelatedThings(criteria, relatedThings);
			end
		end
		
		if #relatedThings > 0 then
			tinsert(tooltipInfo, { left = " " });
			for j,thing in ipairs(relatedThings) do
				tinsert(tooltipInfo, {
					left = "  |T" .. thing.icon .. ":0|t " .. thing.text,
					right = app.GetProgressTextForTooltip(thing)
				});
			end
		end
		if not t.collectible and app.GameBuildVersion < 30000 then
			tinsert(tooltipInfo, {
				left = "\n \nCRIEVE NOTE: This achievement cannot be collected prior to Wrath Classic as it lacks any permanent collectible criteria.",
				r = 1, g = 0.6, b = 0.6,
				wrap = true
			});
		end
		
		if IsShiftKeyDown() then
			local criteriaInfo = {};
			for i,criteria in ipairs(criteriaData) do
				criteria.OnTooltip(criteria, criteriaInfo);
			end
			if #criteriaInfo > 0 then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					left = "Total Criteria",
					right = tostring(#criteriaInfo),
					r = 0.8, g = 0.8, b = 1
				});
				for i,info in ipairs(criteriaInfo) do
					tinsert(tooltipInfo, info);
				end
			end
		else
			tinsert(tooltipInfo, {
				left = "Hold Shift to see all criteria associated with this achievement.",
				r = 0.8, g = 0.8, b = 1,
				wrap = true
			});
		end
	end
end
local CreateAchievementDataType = app.CreateClass("AchievementDataType", "__achUID", {
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		-- This will cache the data for collectible.
		local criteriaData = t.criteriaData;
		if criteriaData then return t.collectible; end
	end,
	["collected"] = app.ReturnFalse,	-- This is manually assigned in the Refresh function
	["CheckCollected"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			local current = 0;
			for i,data in ipairs(criteriaData) do
				if data.collectible then
					if data.collected then
						current = current + 1;
					end
				end
			end
			if current == t.total then
				return 1;
			elseif current > 0 and t.requireAny then
				return 1;
			end
		end
	end,
	["name"] = function(t) return "@CRIEVE: INVALID ACHIEVEMENT " .. t.__achUID; end,
	["link"] = function(t) return "|cffffff00[" .. t.name .."]|r"; end,
	["searchKey"] = function(t) return "achievementID"; end,
	["total"] = function(t)
		return #t.criteriaData;
	end,
	["lvl"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				if data.lvl then return data.lvl; end
			end
		end
	end,
	["rank"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				if data.rank then return data.rank; end
			end
		end
	end,
	["type"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				return data.type;
			end
		end
	end,
	["criteriaData"] = function(t)
		local criteriaData = {};
		local total = 0;
		local collectible = false;
		local criteria = t.criteria;
		if criteria then
			for i,criteriaID in ipairs(criteria) do
				local data = AchievementCriteriaData[criteriaID];
				if data then
					criteriaData[1 + #criteriaData] = data;
					if data.collectible then
						collectible = true;
						total = total + 1;
					end
				end
			end
		end
		t.criteriaData = criteriaData;
		t.collectible = collectible;
		t.total = total;
		t.requireAny = t.operator == 8;
		return criteriaData;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForAchievementData;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievementData;
	end,
});
for id,achievement in pairs(AchievementData) do
	AchievementData[id] = CreateAchievementDataType(id, achievement);
end
local function RefreshAchievementData()
	for id,achievement in pairs(AchievementData) do
		if achievement.collectible then
			local collected = achievement.CheckCollected;
			achievement.collected = collected;
			app.SetCollected(achievement, "Achievements", id, collected);
		end
	end
end
app.AddEventHandler("OnRecalculate", RefreshAchievementData);
if app.GameBuildVersion < 30000 then
	app:RegisterEvent("PLAYERBANKSLOTS_CHANGED");
	app.events.PLAYERBANKSLOTS_CHANGED = RefreshAchievementData;
end
app.AddEventHandler("OnNewPopoutGroup", function(group)
	if group.GetRelatedThings then
		local relatedThingsGroup = app.CreateRawText("Related Things", {
			description = "The following contains things that may be related or relevant to the content.",
			sourceIgnored = true,
			skipFull = true,
			icon = 133785,
			g = {},
		});
		local relatedThings = {};
		group.GetRelatedThings(group, relatedThings);
		for i,o in ipairs(relatedThings) do
			app.MergeObject(relatedThingsGroup.g, app.CloneClassInstance(o));
		end
		if #relatedThingsGroup.g > 0 then
			if not group.g then group.g = {}; end
			app.MergeObject(group.g, relatedThingsGroup);
		end
	end
end);
end