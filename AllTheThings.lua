--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2024 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
-- App locals
local appName, app = ...;
local L = app.L;

local AssignChildren, CloneClassInstance, GetRelativeValue = app.AssignChildren, app.CloneClassInstance, app.GetRelativeValue;
local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted

-- Abbreviations
L.ABBREVIATIONS[L.UNSORTED .. " %> " .. L.UNSORTED] = "|T" .. app.asset("WindowIcon_Unsorted") .. ":0|t " .. L.SHORTTITLE .. " %> " .. L.UNSORTED;

-- Binding Localizations
BINDING_HEADER_ALLTHETHINGS = L.TITLE
BINDING_NAME_ALLTHETHINGS_TOGGLEACCOUNTMODE = L.TOGGLE_ACCOUNT_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETIONISTMODE = L.TOGGLE_COMPLETIONIST_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLEDEBUGMODE = L.TOGGLE_DEBUG_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLEFACTIONMODE = L.TOGGLE_FACTION_MODE
BINDING_NAME_ALLTHETHINGS_TOGGLELOOTMODE = L.TOGGLE_LOOT_MODE

BINDING_HEADER_ALLTHETHINGS_PREFERENCES = PREFERENCES
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDTHINGS = L.TOGGLE_COMPLETEDTHINGS
BINDING_NAME_ALLTHETHINGS_TOGGLECOMPLETEDGROUPS = L.TOGGLE_COMPLETEDGROUPS
BINDING_NAME_ALLTHETHINGS_TOGGLECOLLECTEDTHINGS = L.TOGGLE_COLLECTEDTHINGS
BINDING_NAME_ALLTHETHINGS_TOGGLEBOEITEMS = L.TOGGLE_BOEITEMS
BINDING_NAME_ALLTHETHINGS_TOGGLESOURCETEXT = L.TOGGLE_SOURCETEXT

BINDING_HEADER_ALLTHETHINGS_MODULES = L.MODULES
BINDING_NAME_ALLTHETHINGS_TOGGLEMAINLIST = L.TOGGLE_MAINLIST
BINDING_NAME_ALLTHETHINGS_TOGGLEMINILIST = L.TOGGLE_MINILIST
BINDING_NAME_ALLTHETHINGS_TOGGLE_PROFESSION_LIST = L.TOGGLE_PROFESSION_LIST
BINDING_NAME_ALLTHETHINGS_TOGGLE_RAID_ASSISTANT = L.TOGGLE_RAID_ASSISTANT
BINDING_NAME_ALLTHETHINGS_TOGGLE_WORLD_QUESTS_LIST = L.TOGGLE_WORLD_QUESTS_LIST
BINDING_NAME_ALLTHETHINGS_TOGGLERANDOM = L.TOGGLE_RANDOM
BINDING_NAME_ALLTHETHINGS_REROLL_RANDOM = L.REROLL_RANDOM

-- Performance Cache
local print, rawget, rawset, tostring, ipairs, pairs, tonumber, wipe, select, setmetatable, getmetatable, tinsert, tremove, type, math_floor
	= print, rawget, rawset, tostring, ipairs, pairs, tonumber, wipe, select, setmetatable, getmetatable, tinsert, tremove, type, math.floor

-- Global WoW API Cache
local C_Map_GetMapInfo = C_Map.GetMapInfo;
local InCombatLockdown = _G.InCombatLockdown;
local IsInInstance = IsInInstance

-- WoW API Cache
local GetFactionName = app.WOWAPI.GetFactionName;
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemID = app.WOWAPI.GetItemID;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetTradeSkillTexture = app.WOWAPI.GetTradeSkillTexture;

local C_TradeSkillUI = C_TradeSkillUI;
local C_TradeSkillUI_GetCategories, C_TradeSkillUI_GetCategoryInfo, C_TradeSkillUI_GetRecipeInfo, C_TradeSkillUI_GetRecipeSchematic, C_TradeSkillUI_GetTradeSkillLineForRecipe
	= C_TradeSkillUI.GetCategories, C_TradeSkillUI.GetCategoryInfo, C_TradeSkillUI.GetRecipeInfo, C_TradeSkillUI.GetRecipeSchematic, C_TradeSkillUI.GetTradeSkillLineForRecipe;

-- App & Module locals
local ArrayAppend = app.ArrayAppend
local CacheFields, SearchForField, SearchForFieldContainer, SearchForObject
	= app.CacheFields, app.SearchForField, app.SearchForFieldContainer, app.SearchForObject
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local GetProgressColorText = app.Modules.Color.GetProgressColorText;
local TryColorizeName = app.TryColorizeName;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;
local GetDisplayID = app.GetDisplayID
local ATTAccountWideData;

-- Color Lib
local GetProgressColor = app.Modules.Color.GetProgressColor;
local Colorize = app.Modules.Color.Colorize;

-- Coroutine Helper Functions
local Push = app.Push;
local StartCoroutine = app.StartCoroutine;
local Callback = app.CallbackHandlers.Callback;
local DelayedCallback = app.CallbackHandlers.DelayedCallback;
local AfterCombatCallback = app.CallbackHandlers.AfterCombatCallback;
app.UpdateRunner = app.CreateRunner("update");
app.FillRunner = app.CreateRunner("fill");
local LocalizeGlobal = app.LocalizeGlobal
local LocalizeGlobalIfAllowed = app.LocalizeGlobalIfAllowed
local contains = app.contains;
local containsValue = app.containsValue;
local indexOf = app.indexOf;
local CloneArray = app.CloneArray

-- Data Lib
local AllTheThingsAD = {};			-- For account-wide data.

local function formatNumericWithCommas(amount)
  local k
  while true do
	amount, k = tostring(amount):gsub("^(-?%d+)(%d%d%d)", '%1,%2')
	if k == 0 then
		break
	end
  end
  return amount
end
local function GetMoneyString(amount)
	if amount > 0 then
		local formatted
		local gold,silver,copper = math_floor(amount / 100 / 100), math_floor((amount / 100) % 100), math_floor(amount % 100)
		if gold > 0 then
			formatted = formatNumericWithCommas(gold) .. "|T237618:0|t"
		end
		if silver > 0 then
			formatted = (formatted or "") .. silver .. "|T237620:0|t"
		end
		if copper > 0 then
			formatted = (formatted or "") .. copper .. "|T237617:0|t"
		end
		return formatted
	end
	return amount
end

do -- TradeSkill Functionality
local tradeSkillSpecializationMap = app.SkillDB.Specializations
local specializationTradeSkillMap = app.SkillDB.BaseSkills
local tradeSkillMap = app.SkillDB.Conversion
-- this is still required by Shared Modules
app.SkillIDToSpellID = app.SkillDB.SkillToSpell
local function GetBaseTradeSkillID(skillID)
	return tradeSkillMap[skillID] or skillID;
end
local function GetTradeSkillSpecialization(skillID)
	return tradeSkillSpecializationMap[skillID];
end
app.GetTradeSkillLine = function()
	local profInfo = C_TradeSkillUI.GetBaseProfessionInfo();
	return GetBaseTradeSkillID(profInfo.professionID);
end
app.GetSpecializationBaseTradeSkill = function(specializationID)
	return specializationTradeSkillMap[specializationID];
end
-- Refreshes the known Trade Skills/Professions of the current character (app.CurrentCharacter.Professions)
local function RefreshTradeSkillCache()
	local cache = app.CurrentCharacter.Professions;
	wipe(cache);
	-- "Professions" that anyone can "know"
	for _,skillID in ipairs(app.SkillDB.AlwaysAvailable) do
		cache[skillID] = true
	end
	-- app.PrintDebug("RefreshTradeSkillCache");
	local prof1, prof2, archaeology, fishing, cooking, firstAid = GetProfessions();
	for i,j in ipairs({prof1 or 0, prof2 or 0, archaeology or 0, fishing or 0, cooking or 0, firstAid or 0}) do
		if j ~= 0 then
			local prof = select(7, GetProfessionInfo(j));
			cache[GetBaseTradeSkillID(prof)] = true;
			-- app.PrintDebug("KnownProfession",j,GetProfessionInfo(j));
			local specializations = GetTradeSkillSpecialization(prof);
			if specializations ~= nil then
				for _,spellID in pairs(specializations) do
					if spellID and app.IsSpellKnownHelper(spellID) then
						cache[spellID] = true;
					end
				end
			end
		end
	end
end
app.AddEventHandler("OnStartup", RefreshTradeSkillCache)
app.AddEventHandler("OnStartup", function()
	local conversions = app.Settings.InformationTypeConversionMethods;
	conversions.professionName = function(skillID)
		local texture = GetTradeSkillTexture(skillID or 0)
		local name = GetSpellName(app.SkillDB.SkillToSpell[skillID] or 0) or C_TradeSkillUI.GetTradeSkillDisplayName(skillID) or RETRIEVING_DATA
		return texture and "|T"..texture..":0|t "..name or name
	end;
end);
app.AddEventRegistration("SKILL_LINES_CHANGED", function()
	-- app.PrintDebug("SKILL_LINES_CHANGED")
	-- seems to be a reliable way to notice a player has changed professions? not sure how else often it actually triggers... hopefully not too excessive...
	DelayedCallback(RefreshTradeSkillCache, 2);
end)
end -- TradeSkill Functionality


local function GetCollectibleIcon(data, iconOnly)
	if data.collectible then
		local collected = data.collected
		if not collected and data.collectedwarband then
			return iconOnly and L.COLLECTED_WARBAND_ICON or L.COLLECTED_WARBAND;
		end
		return iconOnly and app.GetCollectionIcon(collected) or app.GetCollectionText(collected);
	end
end
local function GetTrackableIcon(data, iconOnly, forSaved)
	if data.trackable then
		local saved = data.saved;
		-- only show if the data is saved, or is not repeatable
		if saved or not rawget(data, "repeatable") then
			if forSaved then
				-- if for saved, we ignore if it is un-saved for less clutter
				if saved then
					return iconOnly and app.GetCompletionIcon(saved) or app.GetSavedText(saved);
				end
			else
				return iconOnly and app.GetCompletionIcon(saved) or app.GetCompletionText(saved);
			end
		end
	end
end
local function GetCostIconForRow(data, iconOnly)
	-- cost only for filled groups, or if itself is a cost
	if data.filledCost or data.isCost or (data.progress == data.total and ((data.costTotal or 0) > 0)) then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
	end
end
local function GetCostIconForTooltip(data, iconOnly)
	-- cost only if itself is a cost
	if data.filledCost or data.collectibleAsCost then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
	end
end
local function GetUpgradeIconForRow(data, iconOnly)
	-- upgrade only for filled groups, or if itself is an upgrade
	if data.filledUpgrade or data.isUpgrade or (data.progress == data.total and ((data.upgradeTotal or 0) > 0)) then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetUpgradeIconForTooltip(data, iconOnly)
	-- upgrade only if itself has an upgrade
	if data.filledUpgrade or data.collectibleAsUpgrade then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetReagentIcon(data, iconOnly)
	if data.filledReagent then
		return L[iconOnly and "REAGENT_ICON" or "REAGENT_TEXT"];
	end
end
local function GetProgressTextForRow(data)
	-- build the row text from left to right with possible info
	local text = {}
	-- Reagent (show reagent icon)
	local icon = GetReagentIcon(data, true);
	if icon then
		tinsert(text, icon)
	end
	-- Cost (show cost icon)
	icon = GetCostIconForRow(data, true);
	if icon then
		tinsert(text, icon)
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForRow(data, true);
	if icon then
		tinsert(text, icon)
	end
	-- Progress Achievement
	local statistic = data.statistic
	if statistic then
		tinsert(text, "["..statistic.."]")
	end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, true)
	if stateIcon then
		tinsert(text, stateIcon)
	end
	-- Container
	local total = data.total;
	local isContainer = total and (total > 1 or (total > 0 and not data.collectible));
	if isContainer then
		local textContainer = GetProgressColorText(data.progress or 0, total)
		tinsert(text, textContainer)
	end
	-- Non-collectible/total Container (only contains visible, non-collectibles...)
	local g = data.g;
	if not stateIcon and not isContainer and g and #g > 0 then
		local headerText;
		if data.expanded then
			headerText = "---";
		else
			headerText = "+++";
		end
		tinsert(text, headerText)
	end

	-- Trackable (Only if no other text available)
	if #text == 0 then
		stateIcon = GetTrackableIcon(data, true)
		if stateIcon then
			tinsert(text, stateIcon)
		end
	end

	return app.TableConcat(text, nil, "", " ");
end
local function GetProgressTextForTooltip(data)
	-- build the row text from left to right with possible info
	local text = {}
	local iconOnly = app.Settings:GetTooltipSetting("ShowIconOnly");
	-- Reagent (show reagent icon)
	local icon = GetReagentIcon(data, iconOnly);
	if icon then
		tinsert(text, icon)
	end
	-- Cost (show cost icon)
	icon = GetCostIconForTooltip(data, iconOnly);
	if icon then
		tinsert(text, icon)
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForTooltip(data, iconOnly);
	if icon then
		tinsert(text, icon)
	end
	-- Progress Achievement (this is a bit redundant with the 'Progress' information type for tooltips)
	-- local statistic = data.statistic
	-- if statistic then
	-- 	tinsert(text, "["..statistic.."]")
	-- end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, iconOnly)
	if stateIcon then
		tinsert(text, stateIcon)
	end
	-- Saved (only certain data types)
	if data.npcID then
		stateIcon = GetTrackableIcon(data, iconOnly, true)
		if stateIcon then
			tinsert(text, stateIcon)
		end
	end
	-- Container
	local total = data.total;
	local isContainer = total and (total > 1 or (total > 0 and not data.collectible));
	if isContainer then
		local textContainer = GetProgressColorText(data.progress or 0, total)
		if textContainer then
			tinsert(text, textContainer)
		end
	end

	-- Trackable (Only if no other text available)
	if #text == 0 then
		stateIcon = GetTrackableIcon(data, iconOnly)
		if stateIcon then
			tinsert(text, stateIcon)
		end
	end

	return app.TableConcat(text, nil, "", " ");
end
app.GetProgressTextForRow = GetProgressTextForRow;
app.GetProgressTextForTooltip = GetProgressTextForTooltip;

-- Fields which are dynamic or pertain only to the specific ATT window and should never merge automatically
-- Maybe build from /base.lua:DefaultFields since those always are able to be dynamic
app.MergeSkipFields = {
	-- true -> never
	expanded = true,
	indent = true,
	g = true,
	nmr = true,
	nmc = true,
	progress = true,
	total = true,
	visible = true,
	modItemID = true,
	rawlink = true,
	sourceIgnored = true,
	isCost = true,
	costTotal = true,
	isUpgrade = true,
	upgradeTotal = true,
	iconPath = true,
	hash = true,
	sharedDescription = true,
	-- fields added to a group from GetSearchResults
	tooltipInfo = true,
	working = true,
	-- update cached info
	TLUG = true,
	-- 1 -> only when cloning
	e = 1,
	u = 1,
	c = 1,
	up = 1,
	pb = 1,
	pvp = 1,
	races = 1,
	isDaily = 1,
	isWeekly = 1,
	isMonthly = 1,
	isYearly = 1,
	OnUpdate = 1,
	requireSkill = 1,
	modID = 1,
	bonusID = 1,
};
-- Fields on a Thing which are specific to where the Thing is Sourced or displayed in a ATT window
app.SourceSpecificFields = {
-- Returns the 'most obtainable' event value from the provided set of event values
	["e"] = function(...)
		-- print("GetMostObtainableValue:")
		-- app.PrintTable(vals)
		local e;
		local vals = select("#", ...);
		for i=1,vals do
			e = select(i, ...);
			-- missing e value means NOT requiring an event
			if not e then return; end
		end
		return e;
	end,
-- Returns the 'most obtainable' unobtainable value from the provided set of unobtainable values
	["u"] = function(...)
		-- app.PrintDebug("GetMostObtainableValue:")
		local max, check, new = -1, nil, nil;
		local phases = L.PHASES;
		local phase, u;
		local vals = select("#", ...);
		-- app.PrintDebug(...)
		for i=1,vals do
			u = select(i, ...);
			-- missing u value means NOT unobtainable
			if not u then return; end
			phase = phases[u];
			if phase then
				check = phase.state or 0;
			else
				-- otherwise it's an invalid unobtainable filter
				app.print("Invalid Unobtainable Filter:",u);
				return;
			end
			-- track the highest unobtainable value, which is the most obtainable (according to PHASES)
			if check > max then
				new = u;
				max = check;
			elseif u > new then
				new = u
			end
		end
		-- app.PrintDebug("new:",new)
		return new;
	end,
-- Returns the 'highest' Removed with Patch value from the provided set of `rwp` values
	["rwp"] = function(...)
		local max, rwp = -1,nil;
		local vals = select("#", ...);
		for i=1,vals do
			rwp = select(i, ...);
			-- missing rwp value means NOT removed
			if not rwp then return; end
			-- track the highest rwp value, which is the furthest-future patch
			if rwp > max then
				max = rwp;
			end
		end
		-- print("max:",max)
		return max;
	end,
-- Simple boolean
	["pvp"] = true,
	["pb"] = true,
	["requireSkill"] = true,
};
-- Merges the properties of the t group into the g group, making sure not to alter the filterability of the group.
-- Additionally can specify that the object is being cloned so as to skip special merge restrictions
local function MergeProperties(g, t, noReplace, clone)
	if g and t then
		if g ~= t then
			g.__merge = t.__merge or t
		end
		local skips = app.MergeSkipFields;
		if noReplace then
			for k,v in pairs(t) do
				-- certain keys should never transfer to the merge group directly
				if k == "parent" then
					if not rawget(g, "sourceParent") then
						g.sourceParent = v;
					end
				elseif not skips[k] then
					if rawget(g, k) == nil then
						g[k] = v;
					end
				end
			end
		elseif clone then
			for k,v in pairs(t) do
				-- certain keys should never transfer to the merge group directly
				if k == "parent" then
					if not rawget(g, "sourceParent") then
						g.sourceParent = v;
					end
				elseif skips[k] ~= true then
					g[k] = v;
				end
			end
		else
			for k,v in pairs(t) do
				-- certain keys should never transfer to the merge group directly
				if k == "parent" then
					if not rawget(g, "sourceParent") then
						g.sourceParent = v;
					end
				elseif not skips[k] then
					g[k] = v;
				end
			end
		end
		-- custom special logic for fields which need to represent the commonality between all Sources of a group
		-- loop through specific fields for custom logic
		-- initial creation of a g object, has no key
		if not g.key then
			for k,_ in pairs(app.SourceSpecificFields) do
				g[k] = t[k];
			end
		else
			local gk, tk;
			for k,f in pairs(app.SourceSpecificFields) do
				-- existing is set
				gk = g[k];
				if gk then
					tk = t[k];
					-- no value on merger
					if tk == nil then
						-- app.PrintDebug(g.hash,"remove",k,gk,tk)
						g[k] = nil;
					elseif f and type(f) == "function" then
						-- two different values with a compare function
						-- app.PrintDebug(g.hash,"compare",k,gk,tk)
						g[k] = f(gk, tk);
						-- app.PrintDebug(g.hash,"result",g[k])
					end
				end
			end
		end
		-- only copy metatable to g if another hasn't been set already
		if not getmetatable(g) and getmetatable(t) then
			setmetatable(g, getmetatable(t));
		end
	end
end
app.MergeProperties = MergeProperties;
-- The base logic for turning a Table of data into an 'object' that provides dynamic information concerning the type of object which was identified
-- based on the priority of possible key values
local function CreateObject(t, rootOnly)
	-- app.PrintDebug("CO",t);
	-- Commented this part out because there aren't enough class definitions exposed to the logic yet
	-- Retail class design is still wildin' and doesn't use the CreateClass functionality
	--local object = app.CloneClassInstance(t, rootOnly);
	--if object and getmetatable(object) then return object; end
	if not t then return {}; end
	-- already an object, so need to create a new instance of the same data
	if t.key then
		local result = {};
		-- app.PrintDebug("CO.key",t.key,t[t.key],"=>",result);
		MergeProperties(result, t, nil, true);
		-- include the raw g since it will be replaced at the end with new objects
		result.g = t.g;
		t = result;
		-- if not getmetatable(t) then
		-- 	app.PrintDebug(Colorize("Bad CreateObject (key without metatable) used:",app.Colors.ChatLinkError))
		-- 	app.PrintTable(t)
		-- end
		-- app.PrintDebug("Merge done",result.key,result[result.key], t, result);
	-- is it an array of raw datas which needs to be turned into an array of usable objects
	elseif t[1] then
		local result = {};
		-- array
		-- app.PrintDebug("CO.[]","=>",result);
		for i,o in ipairs(t) do
			result[i] = CreateObject(o, rootOnly);
		end
		return result;
	-- use the highest-priority piece of data which exists in the table to turn it into an object
	else
		-- a table which somehow has a metatable which doesn't include a 'key' field
		local meta = getmetatable(t);
		if meta then
			app.PrintDebug(Colorize("Bad CreateObject (metatable without key) used:",app.Colors.ChatLinkError))
			app.PrintTable(t)
			local result = {};
			-- app.PrintDebug("CO.meta","=>",result);
			MergeProperties(result, t, nil, true);
			if not rootOnly and t.g then
				local newg = {}
				result.g = newg
				for i,o in ipairs(t.g) do
					newg[#newg+1] = CreateObject(o)
				end
			end
			setmetatable(result, meta);
			return result;
		end
		if t.mapID then
			t = app.CreateMap(t.mapID, t);
		elseif t.explorationID then
			t = app.CreateExploration(t.explorationID, t);
		elseif t.sourceID then
			t = app.CreateItemSource(t.sourceID, t.itemID, t);
		elseif t.encounterID then
			t = app.CreateEncounter(t.encounterID, t);
		elseif t.instanceID then
			t = app.CreateInstance(t.instanceID, t);
		elseif t.currencyID then
			t = app.CreateCurrencyClass(t.currencyID, t);
		elseif t.mountmodID then
			t = app.CreateMountMod(t.mountmodID, t);
		elseif t.speciesID then
			t = app.CreateSpecies(t.speciesID, t);
		elseif t.objectID then
			t = app.CreateObject(t.objectID, t);
		elseif t.flightpathID then
			t = app.CreateFlightPath(t.flightpathID, t);
		elseif t.followerID then
			t = app.CreateFollower(t.followerID, t);
		elseif t.illusionID then
			t = app.CreateIllusion(t.illusionID, t);
		elseif t.professionID then
			t = app.CreateProfession(t.professionID, t);
		elseif t.categoryID then
			t = app.CreateCategory(t.categoryID, t);
		elseif t.criteriaID then
			t = app.CreateAchievementCriteria(t.criteriaID, t);
		elseif t.achID or t.achievementID then
			t = app.CreateAchievement(t.achID or t.achievementID, t);
		elseif t.recipeID then
			t = app.CreateRecipe(t.recipeID, t);
		elseif t.factionID then
			t = app.CreateFaction(t.factionID, t);
		elseif t.heirloomID then
			t = app.CreateHeirloom(t.heirloomID, t);
		elseif t.azeriteessenceID then
			t = app.CreateAzeriteEssence(t.azeriteessenceID, t);
		elseif t.itemID or t.modItemID then
			local itemID, modID, bonusID = app.GetItemIDAndModID(t.modItemID or t.itemID)
			t.itemID = itemID
			t.modID = modID
			t.bonusID = bonusID
			if t.toyID then
				t = app.CreateToy(itemID, t);
			elseif t.runeforgepowerID then
				t = app.CreateRuneforgeLegendary(t.runeforgepowerID, t);
			elseif t.conduitID then
				t = app.CreateConduit(t.conduitID, t);
			else
				t = app.CreateItem(itemID, t);
			end
		elseif t.npcID or t.creatureID then
			t = app.CreateNPC(t.npcID or t.creatureID, t);
		elseif t.questID then
			t = app.CreateQuest(t.questID, t);
		-- Non-Thing groups
		elseif t.classID then
			t = app.CreateCharacterClass(t.classID, t);
		elseif t.raceID then
			t = app.CreateRace(t.raceID, t);
		elseif t.headerID then
			t = app.CreateNPC(t.headerID, t);
		elseif t.expansionID then
			t = app.CreateExpansion(t.expansionID, t);
		elseif t.unit then
			t = app.CreateUnit(t.unit, t);
		elseif t.difficultyID then
			t = app.CreateDifficulty(t.difficultyID, t);
		elseif t.spellID then
			t = app.CreateSpell(t.spellID, t);
		elseif t.f or t.filterID then
			t = app.CreateFilter(t.f or t.filterID, t);
		elseif t.text then
			t = app.CreateRawText(t.text, t)
		else
			-- app.PrintDebug("CO:raw");
			-- app.PrintTable(t);
			if rootOnly then
				-- shallow copy the root table only, since using t as a metatable will allow .g to exist still on the table
				-- app.PrintDebug("rootOnly copy of",t.text)
				local result = {};
				for k,v in pairs(t) do
					result[k] = v;
				end
				t = result;
			else
				-- app.PrintDebug("metatable copy of",t.text)
				t = setmetatable({}, { __index = t });
			end
		end
		-- app.PrintDebug("CO.field","=>",t);
	end

	-- allows for copying an object without all of the sub-groups
	if rootOnly then
		t.g = nil;
	else
		-- app.PrintDebug("CreateObject key/value",t.key,t[t.key]);
		-- if g, then replace each object in all sub groups with an object version of the table
		local g = t.g;
		if g then
			local gNew = {};
			for i,o in ipairs(g) do
				gNew[i] = CreateObject(o)
			end
			t.g = gNew;
		end
	end

	return t;
end
app.__CreateObject = CreateObject;

local function GetUnobtainableTexture(group)
	if not group then return; end
	if type(group) ~= "table" then
		-- This function shouldn't be used with only u anymore!
		app.print("Invalid use of GetUnobtainableTexture", group);
		return;
	end

	-- Determine the texture color, default is green for events.
	-- TODO: Use 4 for inactive events, use 5 for active events
	local filter, u = 4, group.u;
	if u then
		-- only b = 0 (BoE), not BoA/BoP
		-- removed, elite, bmah, tcg, summon
		if u > 1 and u < 12 and group.itemID and (group.b or 0) == 0 then
			filter = 2;
		else
			local phase = L.PHASES[u];
			if phase then
				if not phase.buildVersion or app.GameBuildVersion < phase.buildVersion then
					filter = phase.state or 0;
				else
					-- This is a phase that's available. No icon.
					return;
				end
			else
				-- otherwise it's an invalid unobtainable filter
				app.print("Invalid Unobtainable Filter:",u);
				return;
			end
		end
		return L.UNOBTAINABLE_ITEM_TEXTURES[filter];
	end
	if group.e then
		return L.UNOBTAINABLE_ITEM_TEXTURES[app.Modules.Events.FilterIsEventActive(group) and 5 or 4];
	end
end
app.GetUnobtainableTexture = GetUnobtainableTexture;
-- Returns an applicable Indicator Icon Texture for the specific group if one can be determined
app.GetIndicatorIcon = function(group)
	-- Use the group's own indicator if defined
	local groupIndicator = group.indicatorIcon
	if groupIndicator then return groupIndicator end

	-- Otherwise use some common logic
	if group.saved then
		if group.parent and group.parent.locks or group.repeatable then
			return app.asset("known");
		else
			return app.asset("known_green");
		end
	end
	return GetUnobtainableTexture(group);
end

local function GetRelativeFieldInSet(group, field, set)
	if group then
		local val = group[field]
		return set[val] and val or GetRelativeFieldInSet(group.sourceParent or group.parent, field, set);
	end
end

-- Merges an Object into an existing set of Objects so as to not duplicate any incoming Objects
local MergeObject,
-- Nests an Object under another Object, only creating the 'g' group if necessary
-- ex. NestObject(parent, new, newCreate, index)
NestObject,
-- Merges multiple Objects into an existing set of Objects so as to not duplicate any incoming Objects
-- ex. MergeObjects(group, group2, newCreate)
MergeObjects,
-- Nests multiple Objects under another Object, only creating the 'g' group if necessary
-- ex. NestObjects(parent, groups, newCreate)
NestObjects,
-- Nests multiple Objects under another Object using an optional set of functions to determine priority on the adding of objects, only creating the 'g' group if necessary
-- ex. PriorityNestObjects(parent, groups, newCreate, function1, function2, ...)
PriorityNestObjects;
(function()
local function GetHash(t)
	local hash = app.CreateHash(t);
	app.PrintDebug(Colorize("No base .hash for t:",app.Colors.ChatLinkError),hash,t.text);
	app.PrintTable(t)
	return hash;
end
MergeObject = function(g, t, index, newCreate)
	if g and t then
		local hash = t.hash or GetHash(t);
		for i,o in ipairs(g) do
			if (o.hash or GetHash(o)) == hash then
				MergeProperties(o, t, true);
				NestObjects(o, t.g, newCreate);
				return
			end
		end
		if newCreate then t = CreateObject(t); end
		if index then
			tinsert(g, index, t);
		else
			g[#g + 1] = t
		end
	end
end
NestObject = function(p, t, newCreate, index)
	if not p or not t then return end
	local g = p.g;
	if g then
		MergeObject(g, t, index, newCreate);
	elseif newCreate then
		p.g = { CreateObject(t) };
	else
		p.g = { t };
	end
end
MergeObjects = function(g, g2, newCreate)
	if not g or not g2 then return end
	if #g2 > 25 then
		local t, hash, hashObj
		local hashTable = {}
		for i,o in ipairs(g) do
			local hash = o.hash;
			if hash then
				-- are we merging the same object multiple times from one group?
				hashObj = hashTable[hash]
				if hashObj then
					-- don't replace existing properties
					MergeProperties(hashObj, o, true);
				else
					hashTable[hash] = o;
				end
			end
		end
		if newCreate then
			for i,o in ipairs(g2) do
				hash = o.hash;
				-- print("_",hash);
				if hash then
					t = hashTable[hash];
					if t then
						MergeProperties(t, o, true);
						NestObjects(t, o.g, newCreate);
					else
						t = CreateObject(o);
						hashTable[hash] = t;
						g[#g + 1] = t
					end
				else
					g[#g + 1] = CreateObject(o)
				end
			end
		else
			for i,o in ipairs(g2) do
				hash = o.hash;
				-- print("_",hash);
				if hash then
					t = hashTable[hash];
					if t then
						MergeProperties(t, o, true);
						NestObjects(t, o.g);
					else
						hashTable[hash] = o;
						g[#g + 1] = o
					end
				else
					g[#g + 1] = CreateObject(o)
				end
			end
		end
	else
		for i,o in ipairs(g2) do
			MergeObject(g, o, nil, newCreate);
		end
	end
end
NestObjects = function(p, g, newCreate)
	if not g then return; end
	local pg = p.g;
	if pg then
		MergeObjects(pg, g, newCreate);
	elseif #g > 0 then
		p.g = {};
		MergeObjects(p.g, g, newCreate);
	end
end
PriorityNestObjects = function(p, g, newCreate, ...)
	if not g or #g == 0 then return; end
	local pFuncs = {...};
	if pFuncs[1] then
		-- app.PrintDebug("PriorityNestObjects",#pFuncs,"Priorities",#g,"Objects")
		-- setup containers for the priority buckets
		local pBuckets, pBucket, skipped = {}, nil, nil;
		for i,_ in ipairs(pFuncs) do
			pBuckets[i] = {};
		end
		-- check each object
		for _,o in ipairs(g) do
			-- check each priority function
			for i,pFunc in ipairs(pFuncs) do
				-- if the function matches, put the object in the bucket
				if pFunc(o) then
					-- app.PrintDebug("Matched Priority Function",i,o.hash)
					pBucket = pBuckets[i];
					pBucket[#pBucket + 1] = o
					break;
				end
			end
			-- no bucket was found, put in skipped
			if not pBucket then
				-- app.PrintDebug("No Priority",o.hash)
				if skipped then skipped[#skipped + 1] = o
				else skipped = { o }; end
			end
			-- reset bucket
			pBucket = nil;
		end
		-- then nest each bucket in order of priority
		for i,pBucket in ipairs(pBuckets) do
			-- app.PrintDebug("Nesting Priority Bucket",i,#pBucket)
			NestObjects(p, pBucket, newCreate);
			-- app.PrintDebug(".g",p.g and #p.g)
		end
		-- and nest anything skipped
		-- app.PrintDebug("Nesting Skipped",skipped and #skipped)
		NestObjects(p, skipped, newCreate);
		-- app.PrintDebug(".g",p.g and #p.g)
	else
		NestObjects(p, g, newCreate);
	end
	-- app.PrintDebug("PNO-Done",#pFuncs,"Priorities",#g,"Objects",p.g and #p.g)
end
-- Merges multiple sources of an object into a single object. Can specify to clean out all sub-groups of the result
app.MergedObject = function(group, rootOnly)
	if not group or not group[1] then return; end
	local merged = CreateObject(group[1], rootOnly);
	for i=2,#group do
		MergeProperties(merged, group[i]);
	end
	-- for a merged object, clean any other references it might still have
	merged.sourceParent = nil;
	merged.parent = nil;
	if rootOnly then
		merged.g = nil;
	end
	return merged;
end
app.NestObject = NestObject
app.NestObjects = NestObjects
end)();

local ExpandGroupsRecursively;
do
local SkipAutoExpands = {
	-- Specific HeaderID values should not expand
	headerID = {
		[app.HeaderConstants.ZONE_DROPS] = true,
		[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
		[app.HeaderConstants.HOLIDAYS] = true
	},
	-- Item/Difficulty as Headers should not expand
	itemID = true,
	difficultyID = true,
}
local function SkipAutoExpand(group)
	local key = group.key;
	local skipKey = SkipAutoExpands[key];
	if not skipKey then return; end
	return skipKey == true or skipKey[group[key]];
end
ExpandGroupsRecursively = function(group, expanded, manual)
	-- expand if there is any sub-group
	if group.g then
		-- app.PrintDebug("EGR",group.hash,expanded,manual);
		-- if manually expanding
		if (manual or (
				-- not a skipped group for auto-expansion
				not SkipAutoExpand(group) and
				-- incomplete things actually exist below itself
				((group.total or 0) > (group.progress or 0)) and
				-- account/debug mode is active or it is not a 'saved' thing for this character
				(app.MODE_DEBUG_OR_ACCOUNT or not group.saved))
			) then
			-- app.PrintDebug("EGR:expand");
			group.expanded = expanded;
			for _,subgroup in ipairs(group.g) do
				ExpandGroupsRecursively(subgroup, expanded, manual);
			end
		end
	end
end
end

local ResolveSymbolicLink;
-- Fills & returns a group with its symlink references, along with all sub-groups recursively if specified
-- This should only be used on a cloned group so the source group is not contaminated
local function FillSymLinks(group, recursive)
	if recursive and group.g then
		for _,obj in ipairs(group.g) do
			FillSymLinks(obj, recursive);
		end
	end
	if group.sym then
		-- app.PrintDebug("FillSymLinks",group.hash)
		NestObjects(group, ResolveSymbolicLink(group));
		-- make sure this group doesn't waste time getting resolved again somehow
		group.sym = nil;
	end
	-- if app.Debugging == group then app.Debugging = nil; end
	return group;
end
app.FillSymLinks = FillSymLinks;
app.RecreateObject = function(t)
	-- Clones an Object, fills any symlinks, builds groups, and does an Update pass before returning the Object
	local obj = CreateObject(t);
	-- fill the copied Item's symlink if any
	FillSymLinks(obj);
	-- Build the Item's groups if any
	AssignChildren(obj);
	-- Update the group while ignoring some visibility functionality
	obj.collectibleAsCost = false
	obj.collectibleAsUpgrade = false
	app.TopLevelUpdateGroup(obj);
	obj.collectibleAsCost = nil
	obj.collectibleAsUpgrade = nil
	return obj;
end

local GetFixedItemSpecInfo, GetSpecsString, GetGroupItemIDWithModID, GetItemIDAndModID, GroupMatchesParams, GetClassesString
	= app.GetFixedItemSpecInfo, app.GetSpecsString, app.GetGroupItemIDWithModID, app.GetItemIDAndModID, app.GroupMatchesParams, app.GetClassesString

local function CleanInheritingGroups(groups, ...)
	-- Cleans any groups which are nested under any group with any specified fields
	local arrs = select("#", ...);
	if groups and arrs > 0 then
		local refined, f, match = {}, nil, nil;
		-- app.PrintDebug("CIG:Start",#groups,...)
		for _,j in ipairs(groups) do
			match = nil;
			for n=1,arrs do
				f = select(n, ...);
				if GetRelativeValue(j, f) then
					match = true;
					-- app.PrintDebug("CIG:Skip",j.hash,f)
					break;
				end
			end
			if not match then
				tinsert(refined, j);
			end
		end
		-- app.PrintDebug("CIG:End",#refined)
		return refined;
	end
end
-- Symlink Lib
do
local select, tremove, unpack =
	  select, tremove, unpack;
local FinalizeModID, PruneFinalized, FillFinalized, SelectMod
-- Checks if any of the provided arguments can be found within the first array object
local function ContainsAnyValue(arr, ...)
	local value;
	local vals = select("#", ...);
	for i=1,vals do
		value = select(i, ...);
		for _,v in ipairs(arr) do
			if v == value then return true; end
		end
	end
end
local function Resolve_Extract(results, group, field)
	if group[field] then
		results[#results + 1] = group
	elseif group.g then
		for _,o in ipairs(group.g) do
			Resolve_Extract(results, o, field);
		end
	end
end
local function Resolve_Find(results, groups, field, val)
	if groups then
		for _,o in ipairs(groups) do
			if o[field] == val then
				results[#results + 1] = o
			else
				Resolve_Find(results, o.g, field, val)
			end
		end
	end
end
local GetAchievementNumCriteria = GetAchievementNumCriteria
local GetItemInfoInstant = app.WOWAPI.GetItemInfoInstant;

-- Defines a known set of functions which can be run via symlink resolution. The inputs to each function will be identical in order when called.
-- searchResults - the current set of searchResults when reaching the current sym command
-- o - the specific group object which contains the symlink commands
-- (various expected components of the respective sym command)
local ResolveFunctions = {
	-- Instruction to search the full database for multiple of a given type
	["select"] = function(finalized, searchResults, o, cmd, field, ...)
		local cache, val;
		local vals = select("#", ...);
		local Search = SearchForObject
		for i=1,vals do
			val = select(i, ...) + (SelectMod or 0)
			if field == "modItemID" then
				-- this is really dumb but direct raw values don't 'always' properly match generated values...
				-- but splitting the value apart and putting it back together searches accurately
				val = GetGroupItemIDWithModID(nil, GetItemIDAndModID(val))
			end
			cache = Search(field, val, "field", true);
			if cache and #cache > 0 then
				ArrayAppend(searchResults, cache)
			else
				app.print("Failed to select ", field, val);
			end
		end
		SelectMod = nil
	end,
	-- Instruction to select the parent object of the group that owns the symbolic link
	["selectparent"] = function(finalized, searchResults, o, cmd, level)
		level = level or 1;
		-- an search for the specific 'o' to retrieve the source parent since the parent is not always actually attached to the reference resolving the symlink
		local parent
		local searchedObject = app.SearchForObject(o.key, o[o.key], "key");
		if searchedObject then
			parent = searchedObject.parent;
			while level > 1 do
				parent = parent and parent.parent;
				level = level - 1;
			end
			if parent then
				-- app.PrintDebug("selectparent-searched",level,parent.hash,parent.text)
				tinsert(searchResults, parent);
				return;
			end
		end
		app.print("'selectparent' failed for",o.hash);
	end,
	-- Instruction to find all content marked with the specified 'requireSkill'
	["selectprofession"] = function(finalized, searchResults, o, cmd, requireSkill)
		local search = app:BuildSearchResponse("requireSkill", requireSkill);
		ArrayAppend(searchResults, search);
	end,
	-- Instruction to fill with identical content Sourced elsewhere for this group (no symlinks)
	["fill"] = function(finalized, searchResults, o)
		local okey = o.key;
		if okey then
			local okeyval = o[okey];
			if okeyval then
				for _,result in ipairs(SearchForField(okey, okeyval)) do
					ArrayAppend(searchResults, result.g);
				end
			end
		end
	end,
	-- Instruction to finalize the current search results and prevent additional queries from affecting this selection
	["finalize"] = function(finalized, searchResults)
		ArrayAppend(finalized, searchResults);
		wipe(searchResults);
	end,
	-- Instruction to take all of the finalized and non-finalized search results and merge them back in to the processing queue
	["merge"] = function(finalized, searchResults)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		-- finalized first
		ArrayAppend(searchResults, finalized);
		wipe(finalized);
		-- then any existing searchResults
		ArrayAppend(searchResults, orig);
	end,
	-- Instruction to "push" all of the group values into an object as specified
	["push"] = function(finalized, searchResults, o, cmd, field, value)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		local group = CreateObject({[field] = value });
		NestObjects(group, orig);
		searchResults[1] = group;
	end,
	-- Instruction to "pop" all of the group values up one level
	["pop"] = function(finalized, searchResults)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		if orig then
			for _,obj in ipairs(orig) do
				-- insert raw & symlinked Things from this group
				ArrayAppend(searchResults, obj.g, ResolveSymbolicLink(obj));
			end
		end
	end,
	-- Instruction to include only search results where a key value is a value
	["where"] = function(finalized, searchResults, o, cmd, field, value)
		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result[field] or result[field] ~= value then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to include only search results where a key value is a value
	["whereany"] = function(finalized, searchResults, o, cmd, field, ...)
		local hash = {};
		for k,value in ipairs({...}) do
			hash[value] = true;
		end
		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result[field] or not hash[result[field]] then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to extract all nested results which contain a given field
	["extract"] = function(finalized, searchResults, o, cmd, field)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		if orig then
			for _,o in ipairs(orig) do
				Resolve_Extract(searchResults, o, field);
			end
		end
	end,
	-- Instruction to find all nested results which contain a given field/value
	["find"] = function(finalized, searchResults, o, cmd, field, val)
		if #searchResults > 0 then
			local resolved = {}
			Resolve_Find(resolved, searchResults, field, val)
			wipe(searchResults)
			ArrayAppend(searchResults, resolved)
		end
	end,
	-- Instruction to include the search result with a given index within each of the selection's groups
	["index"] = function(finalized, searchResults, o, cmd, index)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		if orig then
			local result, g;
			for k=#orig,1,-1 do
				result = orig[k];
				g = result.g;
				if g and index <= #g then
					tinsert(searchResults, g[index]);
				end
			end
		end
	end,
	-- Instruction to include only search results where a key value is not a value
	["not"] = function(finalized, searchResults, o, cmd, field, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local result, value;
		for k=#searchResults,1,-1 do
			result = searchResults[k];
			for i=1,vals do
				value = select(i, ...);
				if result[field] == value then
					tremove(searchResults, k);
					break;
				end
			end
		end
	end,
	-- Instruction to include only search results where a key exists
	["is"] = function(finalized, searchResults, o, cmd, field)
		for k=#searchResults,1,-1 do
			if not searchResults[k][field] then tremove(searchResults, k); end
		end
	end,
	-- Instruction to include only search results where a key doesn't exist
	["isnt"] = function(finalized, searchResults, o, cmd, field)
		for k=#searchResults,1,-1 do
			if searchResults[k][field] then tremove(searchResults, k); end
		end
	end,
	-- Instruction to include only search results where a key value/table contains a value
	["contains"] = function(finalized, searchResults, o, cmd, field, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local result, kval;
		for k=#searchResults,1,-1 do
			result = searchResults[k];
			kval = result[field];
			-- key doesn't exist at all on the result
			if not kval then
				tremove(searchResults, k);
			-- none of the values match the contains values
			elseif type(kval) == "table" then
				if not ContainsAnyValue(kval, ...) then
					tremove(searchResults, k);
				end
			-- key exists with single value on the result
			else
				local match;
				for i=1,vals do
					if kval == select(i, ...) then
						match = true;
						break;
					end
				end
				if not match then
					tremove(searchResults, k);
				end
			end
		end
	end,
	-- Instruction to exclude search results where a key value contains a value
	["exclude"] = function(finalized, searchResults, o, cmd, field, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local result, kval;
		for k=#searchResults,1,-1 do
			result = searchResults[k];
			kval = result[field];
			-- key exists
			if kval then
				local match;
				for i=1,vals do
					if kval == select(i, ...) then
						match = true;
						break;
					end
				end
				if match then
					-- TEMP logic to allow Ensembles to continue working until they get fixed again
					if field == "itemID" and result.g and kval == o[field] then
						ArrayAppend(searchResults, result.g);
					end
					tremove(searchResults, k);
				end
			end
		end
	end,
	-- Instruction to include only search results where an item is of a specific inventory type
	["invtype"] = function(finalized, searchResults, o, cmd, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local result, invtype, itemID;
		for k=#searchResults,1,-1 do
			result = searchResults[k];
			itemID = result.itemID;
			if itemID then
				invtype = select(4, GetItemInfoInstant(itemID));
				local match;
				for i=1,vals do
					if invtype == select(i, ...) then
						match = true;
						break;
					end
				end
				if not match then
					tremove(searchResults, k);
				end
			end
		end
	end,
	-- Instruction to search the full database for multiple achievementID's and persist only actual achievements
	["meta_achievement"] = function(finalized, searchResults, o, cmd, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local Search = SearchForObject
		local cache, value;
		for i=1,vals do
			value = select(i, ...);
			cache = CleanInheritingGroups(Search("achievementID", value, "key", true), "sourceIgnored")
			local mergeAch = cache[1]
			-- multiple achievements match the selection, make sure to merge them together so we don't lose fields
			-- that only exist in the original Source (Achievements source prunes some data)
			local count = #cache
			if count > 1 then
				for j=2,count do
					-- app.PrintDebug("Merge Ach",app:SearchLink(cache[j]))
					MergeProperties(mergeAch, cache[j])
				end
			end
			if mergeAch then
				searchResults[#searchResults + 1] = mergeAch
			else
				app.print("Failed to select achievementID",value);
			end
		end
		PruneFinalized = { "g" };
	end,
	-- Instruction to search the full database for an achievementID and persist the associated Criteria
	["partial_achievement"] = function(finalized, searchResults, o, cmd, achID)
		local cache = app.SearchForField("achievementID", achID)
		local crit
		for i=1,#cache do
			crit = cache[i]
			if crit.criteriaID then
				searchResults[#searchResults + 1] = crit
			end
		end
	end,
	-- Instruction to simply 'prune' sub-groups from the finalized selection, or specified fields
	["prune"] = function(finalized, searchResults, o, cmd, ...)
		local vals = select("#", ...);
		if vals < 1 then
			PruneFinalized = { "g" }
			return;
		end
		local value;
		for i=1,vals do
			value = select(i, ...);
			if PruneFinalized then PruneFinalized[#PruneFinalized + 1] = value
			else PruneFinalized = { value } end
		end
	end,
	-- Instruction to apply a specific modID to any Items within the finalized search results
	["modID"] = function(finalized, searchResults, o, cmd, modID)
		FinalizeModID = modID
	end,
	-- Instruction to apply the modID from the Source object to any Items within the finalized search results
	["myModID"] = function(finalized, searchResults, o)
		FinalizeModID = o.modID
	end,
	-- Instruction to apply a specific modID to any Items within the finalized search results
	["usemodID"] = function(finalized, searchResults, o, cmd, modID)
		SelectMod = GetGroupItemIDWithModID(nil, nil, modID)
	end,
	-- Instruction to apply the modID from the Source object to any Items within the finalized search results
	["usemyModID"] = function(finalized, searchResults, o)
		SelectMod = GetGroupItemIDWithModID(nil, nil, o.modID)
	end,
	-- Instruction to use the modID from the Source object to filter matching modID on any Items within the finalized search results
	["whereMyModID"] = function(finalized, searchResults, o)
		local modID = o.modID
		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result.modID or result.modID ~= modID then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to perform an immediate 'FillGroups' against the objects in the finalized set prior to returning the results
	-- or to fill the groups currently within the searchResults at this step
	["groupfill"] = function(finalized, searchResults, o, cmd, onCurrent)
		if onCurrent then
			if #searchResults == 0 then return end
			local orig = CloneArray(searchResults);
			wipe(searchResults);
			local Fill = app.FillGroups
			local result
			for k=1,#orig do
				result = CreateObject(orig[k])
				Fill(result)
				searchResults[#searchResults + 1] = result
			end
		else
			FillFinalized = true
		end
	end,
};

-- Replace achievementy_criteria function if criteria API doesn't exist
if GetAchievementNumCriteria then
	local GetAchievementCriteriaInfo = _G.GetAchievementCriteriaInfo;
	-- Instruction to query all criteria of an Achievement via the in-game APIs and generate Criteria data into the most-accurate Sources
	ResolveFunctions.achievement_criteria = function(finalized, searchResults, o)
		-- Instruction to select the criteria provided by the achievement this is attached to. (maybe build this into achievements?)
		local achievementID = o.achievementID;
		if not achievementID then
			app.PrintDebug("'achievement_criteria' used on a non-Achievement group")
			return;
		end
		local _, criteriaType, _, _, reqQuantity, _, _, assetID, _, _, criteriaObject, uniqueID
		---@diagnostic disable-next-line: redundant-parameter
		for criteriaID=1,GetAchievementNumCriteria(achievementID, true),1 do
			---@diagnostic disable-next-line: redundant-parameter
			_, criteriaType, _, _, reqQuantity, _, _, assetID, _, uniqueID = GetAchievementCriteriaInfo(achievementID, criteriaID, true);
			if not uniqueID or uniqueID <= 0 then uniqueID = criteriaID; end
			criteriaObject = app.CreateAchievementCriteria(uniqueID, {["achievementID"] = achievementID}, true);

			-- criteriaType ref: https://warcraft.wiki.gg/wiki/API_GetAchievementCriteriaInfo
			-- Quest source
			if criteriaType == 27	-- Completing a quest
			then
				local quests = SearchForField("questID", assetID)
				if #quests > 0 then
					for _,c in ipairs(quests) do
						-- criteria inherit their achievement data ONLY when the achievement data is actually referenced... this is required for proper caching
						NestObject(c, criteriaObject);
						AssignChildren(c);
						CacheFields(criteriaObject);
						app.DirectGroupUpdate(c);
						criteriaObject = app.CreateAchievementCriteria(uniqueID, {["achievementID"] = achievementID}, true);
						-- app.PrintDebug("Add-Crit",achievementID,uniqueID,"=>",c.hash)
					end
					-- added to the quest(s) groups, not added to achievement
					criteriaObject = nil;
				else
					app.print("'achievement_criteria' Quest type missing Quest Source group!","Quest",assetID,app:Linkify("Achievement #"..achievementID,app.Colors.ChatLink,"search:achievementID:"..achievementID))
				end
			-- NPC source
			elseif criteriaType == 0	-- Monster kill
			then
				-- app.PrintDebug("NPC Kill Criteria",assetID)
				local c = SearchForObject("npcID", assetID, "field")
				if c then
					-- criteria inherit their achievement data ONLY when the achievement data is actually referenced... this is required for proper caching
					NestObject(c, criteriaObject);
					AssignChildren(c);
					CacheFields(criteriaObject);
					app.DirectGroupUpdate(c);
					-- app.PrintDebug("Add-Crit",achievementID,uniqueID,"=>",c.hash)
					-- added to the npc group, not added to achievement
					criteriaObject = nil;
				elseif assetID and assetID > 0 then
					app.print("'achievement_criteria' NPC type missing NPC Source group!","NPC",assetID,app:Linkify("Achievement #"..achievementID,app.Colors.ChatLink,"search:achievementID:"..achievementID))
					criteriaObject.crs = { assetID };
				end
			-- Items
			elseif criteriaType == 36	-- Acquiring items (soulbound)
				or criteriaType == 41	-- Eating or drinking a specific item
				or criteriaType == 42	-- Fishing things up
				or criteriaType == 57	-- Having items (tabards and legendaries)
			then
				criteriaObject.providers = {{ "i", assetID }};
			-- Currency
			elseif criteriaType == 12	-- Collecting currency
			then
				criteriaObject.cost = {{ "c", assetID, reqQuantity }};
			-- Ignored
			elseif criteriaType == 29	-- Casting a spell (often crafting)
				or criteriaType == 43	-- Exploration
				or criteriaType == 52	-- Killing specific classes of player
				or criteriaType == 53	-- Kill-a-given-race (TODO?)
				or criteriaType == 54	-- Using emotes on targets
				or criteriaType == 69	-- Buff Gained
				or criteriaType == 110	-- Casting spells on specific target
			then
				-- nothing to do here
			else
				--app.print("Unhandled Criteria Type", criteriaType, assetID, achievementID);
				-- app.PrintDebug("Collecting currency",criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, uniqueID)
			end
			-- Criteria was not Sourced, so return it in search results
			if criteriaObject then
				CacheFields(criteriaObject);
				-- this criteria object may have been turned into a cost via costs/providers assignment, so make sure we update those respective costs via the Cost Runner
				-- if settings are changed while this is running, it's ok because it refreshes costs from the cache
				app.HandleEvent("OnSearchResultUpdate", criteriaObject)
				tinsert(searchResults, criteriaObject);
			end
		end
	end
end

-- Subroutine Logic Cache
local SubroutineCache = {
	["pvp_gear_base"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2)
		local select, find = ResolveFunctions.select, ResolveFunctions.find
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		if headerID2 then
			find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Find the Set header
		end
	end,
	["pvp_gear_faction_base"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3)
		local select, find = ResolveFunctions.select, ResolveFunctions.find
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
	end,
	-- Set Gear
	["pvp_set_ensemble"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, classID)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Set header
		find(finalized, searchResults, o, "find", "classID", classID);		-- Select the class header
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	["pvp_set_faction_ensemble"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3, classID)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
		find(finalized, searchResults, o, "find", "classID", classID);		-- Select the class header
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	-- Weapons
	["pvp_weapons_ensemble"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Set header
		find(finalized, searchResults, o, "find", "headerID", app.HeaderConstants.WEAPONS);	-- Select the "Weapons" header.
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	["pvp_weapons_faction_ensemble"] = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
		find(finalized, searchResults, o, "find", "headerID", app.HeaderConstants.WEAPONS);	-- Select the "Weapons" header.
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	-- Common Northrend/Cataclysm Recipes Vendor
	["common_recipes_vendor"] = function(finalized, searchResults, o, cmd, npcID)
			local select, pop, is, exclude = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.is, ResolveFunctions.exclude;
		select(finalized, searchResults, o, "select", "creatureID", npcID);	-- Main Vendor
		pop(finalized, searchResults);	-- Remove Main Vendor and push his children into the processing queue.
		is(finalized, searchResults, o, "is", "itemID");	-- Only Items
		-- Exclude items specific to certain vendors
		exclude(finalized, searchResults, o, "exclude", "itemID",
			-- Borya <Tailoring Supplies> Cataclysm Tailoring
			6270,	-- Pattern: Blue Linen Vest
			6274,	-- Pattern: Blue Overalls
			10314,	-- Pattern: Lavender Mageweave Shirt
			10317,	-- Pattern: Pink Mageweave Shirt
			5772,	-- Pattern: Red Woolen Bag
			-- Sumi <Blacksmithing Supplies> Cataclysm Blacksmithing
			12162,	-- Plans: Hardened Iron Shortsword
			-- Tamar <Leatherworking Supplies> Cataclysm Leatherworking
			18731,	-- Pattern: Heavy Leather Ball
			-- Kithas <Enchanting Supplies> Cataclysm Enchanting
			6349,	-- Formula: Enchant 2H Weapon - Lesser Intellect
			20753,	-- Formula: Lesser Wizard Oil
			20752,	-- Formula: Minor Mana Oil
			20758,	-- Formula: Minor Wizard Oil
			22307,	-- Pattern: Enchanted Mageweave Pouch
			-- Marith Lazuria <Jewelcrafting Supplies> Cataclysm Jewelcrafting
			-- Shazdar <Sous Chef> Cataclysm Cooking
			-- Tiffany Cartier <Jewelcrafting Supplies> Northrend Jewelcrafting
			-- Timothy Jones <Jewelcrafting Trainer> Northrend Jewelcrafting
		0);	-- 0 allows the trailing comma on previous itemIDs for cleanliness
	end,
	["common_vendor"] = function(finalized, searchResults, o, cmd, npcID)
		local select, pop, is = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.is;
		select(finalized, searchResults, o, "select", "npcID", npcID);	-- Main Vendor
		pop(finalized, searchResults);	-- Remove Main Vendor and push his children into the processing queue.
		-- TODO: don't think we will need this anymore with 'select' fixes to only pull actual Thing being selected
		-- is(finalized, searchResults, o, "is", "itemID");	-- Only Items
	end,
	-- TW Instance
	["tw_instance"] = function(finalized, searchResults, o, cmd, instanceID)
		local select, pop, whereany, push, finalize = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.whereany, ResolveFunctions.push, ResolveFunctions.finalize;
		select(finalized, searchResults, o, "select", "itemID", 133543);	-- Infinite Timereaver
		push(finalized, searchResults, o, "push", "headerID", app.HeaderConstants.COMMON_BOSS_DROPS);	-- Push into 'Common Boss Drops' header
		finalize(finalized, searchResults);	-- capture current results
		select(finalized, searchResults, o, "select", "instanceID", instanceID);	-- select this instance
		-- TODO: collect into an exportDB table to future-proof new TW eventIDs
		whereany(finalized, searchResults, o, "whereany", "e", 1271, 1508, 559, 562, 587, 643, 1056, 1263 );	-- Select any TIMEWALKING eventID
		if #searchResults > 0 then o.e = searchResults[1].e; end
		pop(finalized, searchResults);	-- pop the instance header
	end,
	["instance_tier"] = function(finalized, searchResults, o, cmd, instanceID, difficultyID, classID)
		local select, pop, where, extract, invtype =
			ResolveFunctions.select,
			ResolveFunctions.pop,
			ResolveFunctions.where,
			ResolveFunctions.extract,
			ResolveFunctions.invtype;

		-- Select the Instance & pop out all results
		select(finalized, searchResults, o, "select", "instanceID", instanceID);
		pop(finalized, searchResults);

		-- If there's a Difficulty, filter by Difficulty
		if difficultyID then
			where(finalized, searchResults, o, "where", "difficultyID", difficultyID);
			pop(finalized, searchResults);
		end

		-- Extract the Items that have a Class restriction
		extract(finalized, searchResults, o, "extract", "c");

		local orig;
		-- Pop out any actual Tier Tokens
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipe(searchResults);
		if orig then
			for _,o in ipairs(orig) do
				if not o.f then
					if o.g then
						-- no filter Item with sub-groups
						ArrayAppend(searchResults, o.g)
					else
						-- no filter Item without sub-groups, keep it directly in case it is a cost for the actual Tier pieces
						tinsert(searchResults, o);
					end
				end
			end
		end

		-- Exclude anything that isn't a Tier slot
		invtype(finalized, searchResults, o, "invtype",
			"INVTYPE_HEAD",
			"INVTYPE_SHOULDER",
			"INVTYPE_CHEST", "INVTYPE_ROBE",
			"INVTYPE_LEGS",
			"INVTYPE_HAND"
		);

		-- If there's a Class, filter by Class
		if classID then
			if #searchResults > 0 then
				orig = CloneArray(searchResults);
			end
			wipe(searchResults);
			local c;
			if orig then
				for _,o in ipairs(orig) do
					c = o.c;
					if c and ContainsAnyValue(c, classID) then
						tinsert(searchResults, o);
					end
				end
			end
		end
	end,
};
app.RegisterSymlinkResolveFunction = function(name, method)
	ResolveFunctions[name] = method;
end
app.RegisterSymlinkSubroutine = function(name, method)
	-- NOTE: This passes a function to call immediately and cache used resolve functions.
	SubroutineCache[name] = method(ResolveFunctions);
end
-- TODO: when symlink becomes a stand-alone Module, it should work like this
-- Don't expect every caller to know what event is proper for registering a symlink
-- Plus we need to ensure RegisterSymlinkResolveFunction handles additions prior to all RegisterSymlinkSubroutine
-- Since we won't know the order of the callers assigning the handlers
-- local RegisteredSymlinkSubroutines, RegisteredResolveFunctions = {}
-- app.RegisterSymlinkResolveFunction = function(name, method)
-- 	RegisteredResolveFunctions[name] = method
-- end
-- app.RegisterSymlinkSubroutine = function(name, method)
-- 	-- NOTE: This stores a function to call immediately OnLoad and cache used resolve functions.
-- 	RegisteredSymlinkSubroutines[name] = method
-- end
-- app.AddEventHandler("OnLoad", function()
-- 	for name,method in pairs(RegisteredResolveFunctions) do
-- 		ResolveFunctions[name] = method
-- 	end
-- 	for name,method in pairs(RegisteredSymlinkSubroutines) do
-- 		SubroutineCache[name] = method(ResolveFunctions)
-- 	end
-- end);
-- Instruction to perform a specific subroutine using provided input values
ResolveFunctions.sub = function(finalized, searchResults, o, cmd, sub, ...)
	local subroutine = SubroutineCache[sub];
	-- new logic: no metatable cloning, no table creation for sub-commands
	if subroutine then
		-- app.PrintDebug("sub",o.hash,sub,...)
		subroutine(finalized, searchResults, o, cmd, ...);
		-- each subroutine result is finalized after being processed
		ResolveFunctions.finalize(finalized, searchResults);
		return;
	end
	app.print("Could not find subroutine", sub);
end;
local NonSelectCommands = {
	finalize = true,
	achievement_criteria = true,
	sub = true,
	myModID = true,
	modID = true,
	usemyModID = true,
	usemodID = true,
}
local HandleCommands = app.Debugging and function(finalized, searchResults, o, oSym)
	local cmd, cmdFunc
	local debug = true
	for _,sym in ipairs(oSym) do
		cmd = sym[1];
		cmdFunc = ResolveFunctions[cmd];
		-- app.PrintDebug("sym: '",cmd,"' for",o.hash,"with:",unpack(sym))
		if cmdFunc then
			cmdFunc(finalized, searchResults, o, unpack(sym));
			if debug and #searchResults == 0 and not NonSelectCommands[cmd] then
				app.PrintDebug(Colorize("Symlink command with no results for: "..app:SearchLink(o), app.Colors.ChatLinkError),"@",_,unpack(sym))
				app.PrintTable(oSym)
				debug = false
			end
		else
			app.print("Unknown symlink command",cmd);
		end
		-- app.PrintDebug("Finalized",#finalized,"Results",#searchResults,"from",o.hash,"with:",unpack(sym))
	end
end or function(finalized, searchResults, o, oSym)
	local cmd, cmdFunc
	for _,sym in ipairs(oSym) do
		cmd = sym[1];
		cmdFunc = ResolveFunctions[cmd];
		if cmdFunc then
			cmdFunc(finalized, searchResults, o, unpack(sym));
		else
			app.print("Unknown symlink command",cmd);
		end
	end
end
local ResolveCache = {};
ResolveSymbolicLink = function(o, refonly)
	local oSym = o.sym
	if not oSym then return end

	local oHash, oKey = o.hash, o.key;
	if o.resolved or (oKey and app.ThingKeys[oKey] and ResolveCache[oHash]) then
		if refonly then
			return o.resolved or ResolveCache[oHash]
		end
		-- app.PrintDebug(o.resolved and "Object Resolve" or "Cache Resolve",oHash,#(o.resolved or ResolveCache[oHash]))
		local cloned = {};
		MergeObjects(cloned, o.resolved or ResolveCache[oHash], true);
		return cloned;
	end

	FinalizeModID = nil;
	PruneFinalized = nil;
	FillFinalized = nil
	-- app.PrintDebug("Fresh Resolve:",oHash)
	local searchResults, finalized = {}, {};
	HandleCommands(finalized, searchResults, o, oSym)

	-- Verify the final result is finalized
	ResolveFunctions.finalize(finalized, searchResults);
	-- app.PrintDebug("Forced Finalize",oKey,oKey and o[oKey],#finalized)

	-- If we had any finalized search results, then clone all the records, store the results, and return them
	if #finalized == 0 then
		-- app.PrintDebug("Symbolic Link for ", oKey, " ",oKey and o[oKey], " contained no values after filtering.")
		return
	end
	local cloned = {};
	-- app.PrintDebug("Symbolic Link for", oKey,oKey and o[oKey], "contains", #cloned, "values after filtering.")
	local sHash, clone
	local Fill = app.FillGroups
	for i=1,#finalized do
		clone = finalized[i]

		-- if somehow the symlink pulls in the same item as used as the source of the symlink, notify in chat and clear any symlink on it
		sHash = clone.hash;
		if clone == o or (sHash and sHash == oHash) then
			app.print("Symlink group pulled itself into finalized results!",oHash,o.key,o.modItemID,o.link or o.text,i,FinalizeModID)
		else
			clone = CreateObject(clone)
			cloned[#cloned + 1] = clone

			-- Apply any modID if necessary
			if FinalizeModID and clone.itemID and clone.modID ~= FinalizeModID then
				clone.modID = FinalizeModID;
				-- refresh the item group since certain metadata may be different now
				app.RefreshItemGroup(clone)
			end
			if PruneFinalized then
				for _,field in ipairs(PruneFinalized) do
					clone[field] = nil
				end
			end
			if FillFinalized then
				-- app.PrintDebug("Fill",clone.hash)
				Fill(clone)
				clone.skipFill = 2
			end

			-- in symlinking a Thing to another Source, we are effectively declaring that it is Sourced within this Source, for the specific scope
			clone.symParent = clone.parent
			clone.sourceParent = nil;
			clone.parent = nil;
		end
	end
	if oKey and app.ThingKeys[oKey] then
		-- global resolve cache if it's a 'Thing'
		-- app.PrintDebug("Thing Results",oHash,#cloned)
		ResolveCache[oHash] = cloned;
	elseif oKey ~= false then
		-- otherwise can store it in the object itself (like a header from the Main list with symlink), if it's not specifically a pseudo-symlink resolve group
		o.resolved = cloned;
		-- app.PrintDebug("Object Results",oHash,#cloned)
	end
	return cloned;
end
app.ResolveSymbolicLink = ResolveSymbolicLink

local function ResolveSymlinkGroupAsync(group)
	-- app.PrintDebug("RSGa",group.hash)
	local groups = ResolveSymbolicLink(group);
	group.sym = nil;
	if groups then
		PriorityNestObjects(group, groups, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);
		-- app.PrintDebug("RSGa",group.g and #group.g,group.hash)
		-- newly added group data needs to be checked again for further content to fill, since it will not have been recursively checked
		-- on the initial pass due to the async nature
		app.FillGroups(group);
		AssignChildren(group);
		-- auto-expand the symlink group
		ExpandGroupsRecursively(group, true);
		app.DirectGroupUpdate(group);
	end
end
-- Fills the symlinks within a group by using an 'async' process to spread the filler function over multiple game frames to reduce stutter or apparent lag
app.FillSymlinkAsync = function(o)
	app.FillRunner.Run(ResolveSymlinkGroupAsync, o);
end
-- Fills the symlinks within a group by using an 'async' process to spread the filler function over multiple game frames to reduce stutter or apparent lag
-- NOTE: ONLY performs the symlink for 'achievement_criteria'
app.FillAchievementCriteriaAsync = function(o)
	local sym = o.sym
	if not sym then
		-- manually apply achievement_criteria symlink if no symlink exists
		-- this is insane but actually works... bloated AF and needs refinement of checking for existing criteria etc.
		-- o.sym = {{"achievement_criteria"}}
		-- app.FillRunner.Run(ResolveSymlinkGroupAsync, o);
		return
	end

	local sym = sym[1][1]
	if sym ~= "achievement_criteria" then return end

	-- app.PrintDebug("resolve achievement_criteria",o.hash)
	app.FillRunner.Run(ResolveSymlinkGroupAsync, o);
end
end	-- Symlink Lib

do
local ContainsLimit, ContainsExceeded;
local Indicator = app.GetIndicatorIcon;
local MaxLayer = 4
local Indents = {
	"  ",
}
for i=2,MaxLayer do
	Indents[i] = Indents[i-1].."  "
end
local function BuildContainsInfo(subgroups, entries, indent, layer)
	if not subgroups or #subgroups == 0 then return end

	for _,group in ipairs(subgroups) do
		-- If there's progress to display for a non-sourceIgnored group, then let's summarize a bit better.
		if group.visible and not group.sourceIgnored and not group.skipContains then
			-- Count it, but don't actually add it to entries if it meets the limit
			if #entries >= ContainsLimit then
				ContainsExceeded = ContainsExceeded + 1;
			else
				-- Insert into the display.
				-- app.PrintDebug("INCLUDE",app.Debugging,GetProgressTextForRow(group),group.hash,group.key,group.key and group[group.key])
				local o = { group = group, right = GetProgressTextForRow(group) };
				local indicator = Indicator(group);
				o.prefix = indicator and (Indents[indent]:sub(3) .. "|T" .. indicator .. ":0|t ") or Indents[indent]
				entries[#entries + 1] = o
			end

			-- Only go down one more level.
			if layer < MaxLayer then
				BuildContainsInfo(group.g, entries, indent + 1, layer + 1);
			end
			-- else
			-- 	app.PrintDebug("EXCLUDE",app.Debugging,GetProgressTextForRow(group),group.hash,group.key,group.key and group[group.key])
		end
	end
end
-- Fields on groups which can be utilized in tooltips to show additional Source location info for that group (by order of priority)
local TooltipSourceFields = {
	"professionID",
	"instanceID",
	"mapID",
	"maps",
	"npcID",
	"questID"
};
local SourceLocationSettingsKey = setmetatable({
	creatureID = "SourceLocations:Creatures",
	npcID = "SourceLocations:Creatures",
}, {
	__index = function(t, key)
		return "SourceLocations:Things";
	end
});
local UnobtainableTexture = " |T"..L.UNOBTAINABLE_ITEM_TEXTURES[1]..":0|t"
local NotCurrentCharacterTexture = " |T"..L.UNOBTAINABLE_ITEM_TEXTURES[0]..":0|t"
local SummarizeShowForActiveRowKeys
local function AddContainsData(group, tooltipInfo)
	local key = group.key
	-- only show Contains on Things
	if not app.ThingKeys[key] or (app.ActiveRowReference and not SummarizeShowForActiveRowKeys[key]) then return end
	local id = group[key]
	local working = group.working
	-- Sort by the heirarchy of the group if not the raw group of an ATT list
	if not working and not app.ActiveRowReference then
		app.Sort(group.g, app.SortDefaults.Hierarchy, true);
	end
	-- app.PrintDebug("SummarizeThings",app:SearchLink(group),group.g and #group.g)
	local entries = {};
	-- app.Debugging = "CONTAINS-"..group.hash;
	ContainsLimit = app.Settings:GetTooltipSetting("ContainsCount") or 25;
	ContainsExceeded = 0;
	BuildContainsInfo(group.g, entries, 1, 1)
	-- app.Debugging = nil;
	-- app.PrintDebug(entries and #entries,"contains entries")
	if #entries > 0 then
		local left, right;
		tinsert(tooltipInfo, { left = L.CONTAINS });
		local item, entry;
		local RecursiveParentField = app.GetRelativeValue
		for i=1,#entries do
			item = entries[i];
			entry = item.group;
			if not entry.objectiveID then
				left = entry.text;
				if not left or IsRetrieving(left) then
					left = RETRIEVING_DATA;
					working = true;
				end
				left = TryColorizeName(entry, left);
				-- app.PrintDebug("Entry#",i,app:SearchLink(entry),app.GenerateSourcePathForTooltip(entry))

				-- If this entry has a specific Class requirement and is not itself a 'Class' header, tack that on as well
				if entry.c and entry.key ~= "classID" and #entry.c == 1 then
					left = left .. " [" .. TryColorizeName(entry, app.ClassInfoByID[entry.c[1]].name) .. "]";
				end
				if entry.icon then item.prefix = item.prefix .. "|T" .. entry.icon .. ":0|t "; end

				-- If this entry has specialization requirements, let's attempt to show the specialization icons.
				right = item.right;
				local specs = entry.specs;
				if specs and #specs > 0 then
					right = GetSpecsString(specs, false, false) .. right;
				else
					local c = entry.c;
					if c and #c > 0 then
						right = GetClassesString(c, false, false) .. right;
					end
				end

				-- If this entry has customCollect requirements, list them for clarity
				if entry.customCollect then
					for i,c in ipairs(entry.customCollect) do
						local reason = L.CUSTOM_COLLECTS_REASONS[c];
						local icon_color_str = reason.icon.." |c"..reason.color..reason.text;
						if i > 1 then
							right = icon_color_str .. " / " .. right;
						else
							right = icon_color_str .. "  " .. right;
						end
					end
				end

				-- If this entry is an Item, show additional Source information for that Item (since it needs to be acquired in a specific location most-likely)
				if entry.itemID and key ~= "npcID" and key ~= "encounterID" then
					-- Add the Zone name
					local field, id;
					for _,v in ipairs(TooltipSourceFields) do
						id = RecursiveParentField(entry, v, true);
						-- print("check",v,id)
						if id then
							field = v;
							break;
						end
					end
					if field then
						local locationGroup, locationName;
						-- convert maps
						if field == "maps" then
							-- if only a few maps, list them all
							local count = #id;
							if count == 1 then
								locationName = app.GetMapName(id[1]);
							else
								-- instead of listing individual zone names, just list zone count for brevity
								local names = {__count=0}
								local name
								for j=1,count,1 do
									name = app.GetMapName(id[j]);
									if name and not names[name] then
										names.__count = names.__count + 1
									end
								end
								locationName = "["..names.__count.." "..BRAWL_TOOLTIP_MAPS.."]"
								-- old: list 3 zones/+++
								-- local mapsConcat, names, name = {}, {}, nil;
								-- for j=1,count,1 do
								-- 	name = app.GetMapName(id[j]);
								-- 	if name and not names[name] then
								-- 		names[name] = true;
								-- 		mapsConcat[#mapsConcat + 1] = name
								-- 	end
								-- end
								-- -- 1 unique map name displayed
								-- if #mapsConcat < 2 then
								-- 	locationName = app.TableConcat(mapsConcat, nil, nil, "/");
								-- else
								-- 	mapsConcat[2] = "+"..(count - 1);
								-- 	locationName = app.TableConcat(mapsConcat, nil, nil, "/", 1, 2);
								-- end
							end
						else
							locationGroup = SearchForObject(field, id, "field") or (id and field == "mapID" and C_Map_GetMapInfo(id));
							locationName = locationGroup and TryColorizeName(locationGroup, locationGroup.name);
						end
						-- print("contains info",entry.itemID,field,id,locationGroup,locationName)
						if locationName then
							-- Add the immediate parent group Vendor name
							local rawParent, sParent = rawget(entry, "parent"), entry.sourceParent;
							-- the source entry is different from the raw parent and the search context, then show the source parent text for reference
							if sParent and sParent.text and not GroupMatchesParams(rawParent, sParent.key, sParent[sParent.key]) and not GroupMatchesParams(sParent, key, id) then
								local parentText = sParent.text;
								if IsRetrieving(parentText) then
									working = true;
								end
								right = locationName .. " > " .. parentText .. " " .. right;
							else
								right = locationName .. " " .. right;
							end
						-- else
							-- print("No Location name for item",entry.itemID,id,field)
						end
					end
				end

				-- If this entry is an Achievement Criteria (whose raw parent is not the Achievement) then show the Achievement
				if entry.criteriaID and entry.achievementID then
					local rawParent = rawget(entry, "parent");
					if not rawParent or rawParent.achievementID ~= entry.achievementID then
						local critAch = SearchForObject("achievementID", entry.achievementID, "key");
						left = left .. " > " .. (critAch and critAch.text or "???");
					end
				end

				tinsert(tooltipInfo, { left = item.prefix .. left, right = right });
			end
		end

		if ContainsExceeded > 0 then
			tinsert(tooltipInfo, { left = (L.AND_MORE):format(ContainsExceeded) });
		end

		if app.Settings:GetTooltipSetting("Currencies") then
			local currencyCount = app.CalculateTotalCosts(group, id)
			if currencyCount > 0 then
				tinsert(tooltipInfo, { left = L.CURRENCY_NEEDED_TO_BUY, right = formatNumericWithCommas(currencyCount) });
			end
		end
	end
	return working
end
app.AddEventHandler("OnLoad", function()
	SummarizeShowForActiveRowKeys = app.CloneDictionary(app.ThingKeys, {
		-- Specific keys which we don't want to list Contains data on row reference tooltips but are considered Things
		npcID = false,
		creatureID = false,
		encounterID = false,
		explorationID = false,
	})
	app.Settings.CreateInformationType("SummarizeThings", {
		text = "SummarizeThings",
		priority = 2.9, HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			if reference.g then
				if AddContainsData(reference, tooltipInfo) then
					reference.working = true
				end
			end
		end
	})
end)

local GetRawField = app.GetRawField
local SourceSearcher = setmetatable({
	itemID = function(field, id)
		local results = SearchForObject("itemID", id, "field", true)
		-- Original logic did not include cost matches, then I added cost matches when revising the logic
		-- I'm not sure on why that should be the case... so removing for now
		-- local costResults = GetRawField("itemIDAsCost", id)
		-- if results or costResults then return ArrayAppend({}, results, costResults) end
		if results then return results end
		local baseItemID = GetItemIDAndModID(id)
		results = SearchForObject("itemID", baseItemID, "field", true)
		-- costResults = GetRawField("itemIDAsCost", baseItemID)
		-- if results or costResults then return ArrayAppend({}, results, costResults) end
		return results
	end,
	currencyID = function(field, id)
		local results = SearchForObject(field, id, "field", true)
		-- local costResults = GetRawField("currencyIDAsCost", id)
		-- if results or costResults then return ArrayAppend({}, results, costResults) end
		return results
	end
},{
	__index = function(t, field)
		return GetRawField
	end
})
-- Some key-based Searches should simply use a different field
SourceSearcher.mountmodID = SourceSearcher.itemID
SourceSearcher.heirloomID = SourceSearcher.itemID

local function AddSourceLinesForTooltip(tooltipInfo, paramA, paramB)
	-- Create a list of sources
	-- app.PrintDebug("SourceLocations",paramA,SourceLocationSettingsKey[paramA])
	if not app.ThingKeys[paramA] then return end
	local settings = app.Settings
	if not settings:GetTooltipSetting("SourceLocations") or not settings:GetTooltipSetting(SourceLocationSettingsKey[paramA]) then return end

	local text, parent, right
	local character, unavailable, unobtainable = {}, {}, {}
	local showUnsorted = settings:GetTooltipSetting("SourceLocations:Unsorted");
	local showCompleted = settings:GetTooltipSetting("SourceLocations:Completed");
	local FilterSettings, FilterInGame, FilterCharacter, FirstParent
		= app.RecursiveGroupRequirementsFilter, app.Modules.Filter.Filters.InGame, app.RecursiveCharacterRequirementsFilter, app.GetRelativeGroup
	local abbrevs = L.ABBREVIATIONS;
	local sourcesToShow
	-- paramB is the modItemID for itemID searches, so we may have to fallback to the base itemID if nothing sourced for the modItemID
	-- TODO: Rings from raid showing all difficulties, need fallback matching for items... modItemID, modID, itemID
	local allReferences = SourceSearcher[paramA](paramA,paramB) or app.EmptyTable
	-- app.PrintDebug("Sources count",#allReferences,paramA,paramB,GetItemIDAndModID(paramB))
	for _,j in ipairs(allReferences) do
		parent = j.parent;
		-- app.PrintDebug("source:",app:SearchLink(j),parent and parent.parent,showCompleted or not app.IsComplete(j))
		if parent and parent.parent
			and (showCompleted or not app.IsComplete(j))
		then
			text = app.GenerateSourcePathForTooltip(parent);
			-- app.PrintDebug("SourceLocation",text,FilterInGame(j),FilterSettings(parent),FilterCharacter(parent))
			if showUnsorted or (not text:match(L.UNSORTED) and not text:match(L.HIDDEN_QUEST_TRIGGERS)) then
				-- doesn't meet current unobtainable filters from the Thing itself
				if not FilterInGame(j) then
					unobtainable[#unobtainable + 1] = text..UnobtainableTexture
				else
					-- something user would currently see in a list or not
					sourcesToShow = FilterSettings(parent) and character or unavailable
					-- from obtainable, different character source
					if not FilterCharacter(parent) then
						sourcesToShow[#sourcesToShow + 1] = text..NotCurrentCharacterTexture
					else
						-- check if this needs a status icon even though it's being shown
						right = GetUnobtainableTexture(FirstParent(j, "e", true) or FirstParent(j, "u", true) or j)
							or (j.rwp and app.asset("status-prerequisites"))
						if right then
							sourcesToShow[#sourcesToShow + 1] = text.." |T" .. right .. ":0|t"
						else
							sourcesToShow[#sourcesToShow + 1] = text
						end
					end
				end
			end
		end
	end
	-- app.PrintDebug("Sources count",#character,#unobtainable)
	-- if in Debug, add any unobtainable & unavailable sources
	if app.MODE_DEBUG then
		-- app.PrintDebug("+unavailable",#unavailable,"+unobtainable",#unobtainable)
		app.ArrayAppend(character, unavailable, unobtainable)
	elseif #character == 0 and not (paramA == "creatureID" or paramA == "encounterID") then
		-- no sources available to the character, add any unavailable/unobtainable sources
		if #unavailable > 0 then
			-- app.PrintDebug("+unavailable",#unavailable)
			app.ArrayAppend(character, unavailable)
		elseif #unobtainable > 0 then
			-- app.PrintDebug("+unobtainable",#unobtainable)
			app.ArrayAppend(character, unobtainable)
		end
	end
	if #character > 0 then
		local listing = {};
		local maximum = settings:GetTooltipSetting("Locations");
		local count = 0;
		app.Sort(character, app.SortDefaults.Strings);
		for _,text in ipairs(character) do
			-- since the strings are sorted, we only need to add ones that are not equal to the previously-added one
			-- instead of checking all existing strings
			if listing[#listing] ~= text then
				count = count + 1;
				if count <= maximum then
					listing[#listing + 1] = text
					-- app.PrintDebug("add source",text)
				end
			-- else app.PrintDebug("exclude source by last match",text)
			end
		end
		if count > maximum then
			listing[#listing + 1] = (L.AND_OTHER_SOURCES):format(count - maximum)
		end
		if #listing > 0 then
			local wrap = settings:GetTooltipSetting("SourceLocations:Wrapping");
			local working
			for _,text in ipairs(listing) do
				for source,replacement in pairs(abbrevs) do
					text = text:gsub(source, replacement);
				end
				if not working and IsRetrieving(text) then working = true; end
				local left, right = DESCRIPTION_SEPARATOR:split(text);
				tooltipInfo[#tooltipInfo + 1] = { left = left, right = right, wrap = wrap }
			end
			tooltipInfo.hasSourceLocations = true;
			return working
		end
	end
end
app.AddEventHandler("OnLoad", function()
	local SourceShowKeys = app.CloneDictionary(app.ThingKeys, {
		-- Specific keys which we don't want to list Sources but are considered Things
		npcID = false,
		creatureID = false,
		encounterID = false,
		explorationID = false,
	})
	app.Settings.CreateInformationType("SourceLocations", {
		priority = 2.7,
		text = "Source Locations",
		HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			local key = reference.key
			local id = key == "itemID" and reference.modItemID or reference[key]
			if key and id and SourceShowKeys[key] then
				if tooltipInfo.hasSourceLocations then return end
				if AddSourceLinesForTooltip(tooltipInfo, key, id) then
					reference.working = true
				end
			end
		end
	})
end)

local function GetSearchResults(method, paramA, paramB, options)
	-- app.PrintDebug("GetSearchResults",method,paramA,paramB)
	if not method then
		print("GetSearchResults: Invalid method: nil");
		return nil, true;
	end
	if not paramA then
		print("GetSearchResults: Invalid paramA: nil");
		return nil, true;
	end

	-- If we are searching for only one parameter, it is a raw link.
	local rawlink;
	if paramB then paramB = tonumber(paramB);
	else rawlink = paramA; end

	-- Call to the method to search the database.
	local group, a, b = method(paramA, paramB);
	-- app.PrintDebug("GetSearchResults:method",group and #group,a,b)
	if group then
		if a then paramA = a; end
		if b then paramB = b; end
		if paramA == "modItemID" then paramA = "itemID" end
		-- Move all post processing here?
		if #group > 0 then
			-- For Creatures, Objects and Encounters that are inside of an instance, we only want the data relevant for the instance + difficulty.
			if paramA == "creatureID" or paramA == "encounterID" or paramA == "objectID" then
				local subgroup = {};
				for _,j in ipairs(group) do
					if not j.ShouldExcludeFromTooltip then
						tinsert(subgroup, j);
					end
				end
				group = subgroup;
			elseif paramA == "azeriteessenceID" then
				local regroup = {};
				local rank = options and options.Rank
				if app.MODE_ACCOUNT then
					for i,j in ipairs(group) do
						if j.rank == rank and app.RecursiveUnobtainableFilter(j) then
							if j.mapID or j.parent == nil or j.parent.parent == nil then
								tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
							else
								tinsert(regroup, j);
							end
						end
					end
				else
					for i,j in ipairs(group) do
						if j.rank == rank and app.RecursiveCharacterRequirementsFilter(j) and app.RecursiveUnobtainableFilter(j) and app.RecursiveGroupRequirementsFilter(j) then
							if j.mapID or j.parent == nil or j.parent.parent == nil then
								tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
							else
								tinsert(regroup, j);
							end
						end
					end
				end

				group = regroup;
			elseif paramA == "titleID" or paramA == "followerID" then
				-- Don't do anything
				local regroup = {};
				if app.MODE_ACCOUNT then
					for i,j in ipairs(group) do
						if app.RecursiveUnobtainableFilter(j) then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						end
					end
				else
					for i,j in ipairs(group) do
						if app.RecursiveCharacterRequirementsFilter(j) and app.RecursiveUnobtainableFilter(j) and app.RecursiveGroupRequirementsFilter(j) then
							tinsert(regroup, setmetatable({["g"] = {}}, { __index = j }));
						end
					end
				end

				group = regroup;
			end
		end
	else
		group = {};
	end

	-- Determine if this is a cache for an item
	local itemID, sourceID, modID, bonusID, itemString;
	if not paramB then
		if rawlink then
			-- paramA
			itemString = rawlink:match("item[%-?%d:]+");
			if itemString then
				sourceID = app.GetSourceID(rawlink);
				-- app.PrintDebug("Rawlink SourceID",sourceID,rawlink)
				local _, itemID2, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, specializationID, upgradeId, linkModID, numBonusIds, bonusID1 = (":"):split(itemString);
				if itemID2 then
					itemID = tonumber(itemID2);
					modID = tonumber(linkModID) or 0;
					if modID == 0 then modID = nil; end
					bonusID = (tonumber(numBonusIds) or 0) > 0 and tonumber(bonusID1) or 3524;
					if bonusID == 3524 then bonusID = nil; end
					if sourceID then
						paramA = "sourceID"
						paramB = sourceID
						-- app.PrintDebug("use sourceID params",paramA,paramB)
					else
						paramA = "itemID";
						paramB = GetGroupItemIDWithModID(nil, itemID, modID, bonusID) or itemID;
						-- app.PrintDebug("use itemID params",paramA,paramB)
					end
				end
			else
				local kind, id = (":"):split(rawlink);
				kind = kind:lower();
				if id then id = tonumber(id); end
				if kind == "itemid" then
					paramA = "itemID";
					paramB = id;
					itemID = id;
				elseif kind == "questid" then
					paramA = "questID";
					paramB = id;
				elseif kind == "creatureid" or kind == "npcid" then
					paramA = "creatureID";
					paramB = id;
				elseif kind == "achievementid" then
					paramA = "achievementID";
					paramB = id;
				end
			end
		elseif paramA == "itemID" then
			-- itemID should only be the itemID, not including modID
			itemID = GetItemIDAndModID(paramB) or paramB;
		end
	-- else app.PrintDebug("Skip search rawlink check",rawlink)
	end

	-- Create clones of the search results
	if not group.g then
		-- Clone all the non-ignored groups so that things don't get modified in the Source
		-- app.PrintDebug("Cloning Roots for",paramA,paramB,"#group",group and #group);
		local cloned = {};
		for _,o in ipairs(group) do
			-- app.PrintDebug("Clone:",app:SearchLink(o),GetRelativeValue(o, "sourceIgnored"),app.GetRelativeRawWithField(o, "sourceIgnored"),app.GenerateSourcePathForTooltip(o))
			if not GetRelativeValue(o, "sourceIgnored") then
				cloned[#cloned + 1] = CreateObject(o)
			end
		end
		-- replace the Source references with the cloned references
		group = cloned;
		local clearSourceParent = #group > 1;
		-- Find or Create the root group for the search results, and capture the results which need to be nested instead
		local root, filtered
		local nested = {};
		-- app.PrintDebug("Find Root for",paramA,paramB,"#group",group and #group);
		-- check for Item groups in a special way to account for extra ID's
		if paramA == "itemID" then
			local refinedMatches = app.GroupBestMatchingItems(group, paramB);
			if refinedMatches then
				-- move from depth 3 to depth 1 to find the set of items which best matches for the root
				for depth=3,1,-1 do
					if refinedMatches[depth] then
						-- app.PrintDebug("refined",depth,#refinedMatches[depth])
						if not root then
							for _,o in ipairs(refinedMatches[depth]) do
								-- object meets filter criteria and is exactly what is being searched
								if app.RecursiveCharacterRequirementsFilter(o) then
									-- app.PrintDebug("filtered root");
									if root then
										if filtered then
											-- app.PrintDebug("merge root",o.key,o[o.key]);
											-- app.PrintTable(o)
											MergeProperties(root, o, filtered);
											-- other root content will be nested after
											MergeObjects(nested, o.g);
										else
											local otherRoot = root;
											-- app.PrintDebug("replace root",otherRoot.key,otherRoot[otherRoot.key]);
											root = o;
											MergeProperties(root, otherRoot);
											-- previous root content will be nested after
											MergeObjects(nested, otherRoot.g);
										end
									else
										root = o;
									end
									filtered = true
								else
									-- app.PrintDebug("unfiltered root",o.key,o[o.key],o.modItemID,paramB);
									if root then MergeProperties(root, o, true);
									else root = o; end
								end
							end
						else
							for _,o in ipairs(refinedMatches[depth]) do
								-- Not accurate matched enough to be the root, so it will be nested
								-- app.PrintDebug("nested")
								tinsert(nested, o);
							end
						end
					end
				end
			end
		else
			for _,o in ipairs(group) do
				-- If the obj "is" the root obj
				-- app.PrintDebug(o.key,o[o.key],o.modItemID,"=parent>",o.parent and o.parent.key,o.parent and o.parent.key and o.parent[o.parent.key],o.parent and o.parent.text);
				if GroupMatchesParams(o, paramA, paramB) then
					-- object meets filter criteria and is exactly what is being searched
					if app.RecursiveCharacterRequirementsFilter(o) then
						-- app.PrintDebug("filtered root");
						if root then
							if filtered then
								-- app.PrintDebug("merge root",o.key,o[o.key]);
								-- app.PrintTable(o)
								MergeProperties(root, o, filtered);
								-- other root content will be nested after
								MergeObjects(nested, o.g);
							else
								local otherRoot = root;
								-- app.PrintDebug("replace root",otherRoot.key,otherRoot[otherRoot.key]);
								-- app.PrintTable(o)
								root = o;
								MergeProperties(root, otherRoot);
								-- previous root content will be nested after
								MergeObjects(nested, otherRoot.g);
							end
						else
							-- app.PrintDebug("first root",o.key,o[o.key]);
							-- app.PrintTable(o)
							root = o;
						end
						filtered = true
					else
						-- app.PrintDebug("unfiltered root",o.key,o[o.key],o.modItemID,paramB);
						if root then MergeProperties(root, o, true);
						else root = o; end
					end
				else
					-- Not the root, so it will be nested
					-- app.PrintDebug("nested")
					tinsert(nested, o);
				end
			end
		end
		if not root then
			-- app.PrintDebug("Create New Root",paramA,paramB)
			root = CreateObject({ [paramA] = paramB, missing = true });
		end
		-- If rawLink exists, import it into the root
		if rawlink then app.ImportRawLink(root, rawlink); end
		-- Ensure the param values are consistent with the new root object values (basically only affects creatureID)
		paramA, paramB = root.key, root[root.key];
		-- Special Case for itemID, need to use the modItemID for accuracy in item matching
		if root.itemID then
			if paramA ~= "sourceID" then
				paramA = "itemID"
				paramB = root.modItemID or paramB
			end
			-- if our item root has a bonusID, then we will rely on upgrade module to provide any upgrade
			-- raw groups with 'up' will never be sourced with a bonusID
			local bonusID = root.bonusID
			if bonusID ~= 3524 and bonusID or 0 > 0 then
				root.up = nil
			end
		end
		-- app.PrintDebug("Root",root.key,root[root.key],root.modItemID,root.up,root._up);
		-- app.PrintTable(root)
		-- app.PrintDebug("Root Collect",root.collectible,root.collected,root.collectibleAsCost,root.hasUpgrade);
		-- app.PrintDebug("params",paramA,paramB);
		-- app.PrintDebug(#nested,"Nested total");
		-- Nest the objects by matching filter priority if it's not a currency
		if paramA ~= "currencyID" then
			PriorityNestObjects(root, nested, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);
		else
			-- do roughly the same logic for currency, but will not add the skipped objects afterwards
			local added = {};
			for i,o in ipairs(nested) do
				-- If the obj meets the recursive group filter
				if app.RecursiveCharacterRequirementsFilter(o) then
					-- Merge the obj into the merged results
					-- app.PrintDebug("Merge object",o.key,o[o.key])
					tinsert(added, o);
				end
			end
			-- Nest the added objects
			NestObjects(root, added);
		end

		-- if not root.key then
		-- 	app.PrintDebug("UNKNOWN ROOT GROUP",paramA,paramB)
		-- 	app.PrintTable(root)
		-- end

		-- Single group which matches the root, then collapse it
		-- This could only happen if a Thing is literally listed underneath itself...
		if root.g and #root.g == 1 then
			local o = root.g[1];
			-- if not o.key then
			-- 	app.PrintDebug("UNKNOWN OBJECT GROUP",paramA,paramB)
			-- 	app.PrintTable(o)
			-- end
			if o.key then
				-- print("Check Single",root.key,root.key and root[root.key],o.key and root[o.key],o.key,o.key and o[o.key],root.key and o[root.key])
				-- Heroic Tusks of Mannoroth triggers this logic
				if (root[o.key] == o[o.key]) or (root[root.key] == o[root.key]) then
					-- print("Single group")
					root.g = nil;
					MergeProperties(root, o, true);
				end
			end
		end

		-- Replace as the group
		group = root;
		-- Ensure some specific relative values are captured in the base group
		-- can make this a loop if there ends up being more needed...
		group.difficultyID = GetRelativeValue(group, "difficultyID");
		-- Ensure no weird parent references attached to the base search result if there were multiple search results
		group.parent = nil;
		if clearSourceParent then
			group.sourceParent = nil;
		end

		-- app.PrintDebug(group.g and #group.g,"Merge total");
		-- app.PrintDebug("Final Group",group.key,group[group.key],group.collectible,group.collected,app:SearchLink(group.sourceParent));
		-- app.PrintDebug("Group Type",group.__type)

		-- Special cases
		-- Don't show nested criteria of achievements (unless loading popout/row content)
		if group.g and group.key == "achievementID" and app.GetSkipLevel() < 2 then
			local noCrits = {};
			-- print("achieve group",#group.g)
			for i=1,#group.g do
				if group.g[i].key ~= "criteriaID" then
					tinsert(noCrits, group.g[i]);
				end
			end
			group.g = noCrits;
			-- print("achieve nocrits",#group.g)
		end

		-- Fill the search result but not if the search itself was skipped (Mark of Honor) or indicated to skip
		if not options or not options.SkipFill then
			-- Fill up the group
			app.FillGroups(group)
		end

		-- Only need to build groups from the top level
		AssignChildren(group);
	-- delete sub-groups if there are none
	elseif #group.g == 0 then
		group.g = nil;
	end

	app.TopLevelUpdateGroup(group);

	group.itemString = itemString
	group.isBaseSearchResult = true;

	return group
end
app.GetCachedSearchResults = function(method, paramA, paramB, options)
	return app.GetCachedData(paramB and paramA..":"..paramB or paramA, GetSearchResults, method, paramA, paramB, options);
end

local IsComplete = app.IsComplete
local function CalculateGroupsCostAmount(g, costID, includedHashes)
	local o, subg, subcost, c
	local cost = 0
	for i=1,#g do
		o = g[i]
		subcost = o.visible and not IsComplete(o) and o.cost or nil
		if not includedHashes[o.hash] and subcost and type(subcost) == "table" then
			for j=1,#subcost do
				c = subcost[j]
				if c[2] == costID then
					includedHashes[o.hash] = true
					cost = cost + c[3];
					break
				end
			end
		end
		subg = o.g
		if subg then
			cost = cost + CalculateGroupsCostAmount(subg, costID, includedHashes)
		end
	end
	return cost
end
-- Returns the total amount of 'costID' for all non-collected Things within the group (not including the group itself)
app.CalculateTotalCosts = function(group, costID)
	-- app.PrintDebug("CalculateTotalCosts",group.hash,costID)
	local g = group and group.g
	local cost = g and CalculateGroupsCostAmount(g, costID, {}) or 0
	-- app.PrintDebug("CalculateTotalCosts",group.hash,costID,"=>",cost)
	return cost
end
end	-- Search results Lib

-- Auto-Expansion logic
do
-- Determines searches required for upgrades using this group
local function DetermineUpgradeGroups(group, FillData)
	local nextUpgrade = group.nextUpgrade;
	if nextUpgrade then
		if not nextUpgrade.collected then
			group.filledUpgrade = true;
		end
		-- app.PrintDebug("filledUpgrade=",nextUpgrade.modItemID,nextUpgrade.collected,"<",group.modItemID)
		local o = CreateObject(nextUpgrade);
		return { o };
	end
end
-- Determines searches required for costs using this group
local function DeterminePurchaseGroups(group, FillData)
	-- do not fill purchases on certain items, can skip the skip though based on a level
	if not app.ShouldFillPurchases(group, FillData) then return end

	local collectibles = group.costCollectibles;
	if collectibles and #collectibles > 0 then
		-- if app.Debugging then
		-- 	local sourceGroup = app.CreateRawText("RAW COLLECTIBLES", {
		-- 		["OnUpdate"] = app.AlwaysShowUpdate,
		-- 		["skipFill"] = true,
		-- 		["g"] = {},
		-- 	})
		-- 	NestObjects(sourceGroup, collectibles, true)
		-- 	NestObject(group, sourceGroup, nil, 1)
		-- end
		local groupHash = group.hash;
		-- app.PrintDebug("DeterminePurchaseGroups",app:SearchLink(group),"-collectibles",collectibles and #collectibles);
		local groups = {};
		local clone;
		for _,o in ipairs(collectibles) do
			if o.hash ~= groupHash then
				-- app.PrintDebug("Purchase @",app:SearchLink(o))
				clone = CreateObject(o);
				groups[#groups + 1] = clone
			end
		end
		-- app.PrintDebug("DeterminePurchaseGroups",group.hash,"-final",groups and #groups);
		-- mark this group as no-longer collectible as a cost since its cost collectibles have been determined
		if #groups > 0 then
			group.collectibleAsCost = false;
			group.filledCost = true;
			group.costTotal = nil;
		end
		return groups;
	end
end
local function DetermineRecipeOutputGroups(group, FillData)
	local recipeID = group.recipeID;
	if not recipeID then return end
	-- only fill root recipes or those marked as 'fillable'
	if not group.fillable and FillData.Root ~= group then return end

	-- this would be more efficient as a RecipeDB instead if that becomes a thing
	local info
	for reagent,recipes in pairs(app.ReagentsDB) do
		info = recipes[recipeID]
		if info then break end
	end
	if not info then return end

	local skipLevel = FillData.SkipLevel or 0
	-- track crafted items which are filled across the entire fill sequence
	local craftedItems = FillData.CraftedItems

	local recipeMod = recipeID / 1000000
	local craftedItemID = info[1];
	if craftedItemID and not craftedItems[craftedItemID]
		and not craftedItems[craftedItemID + recipeMod] and skipLevel > 1 then
		craftedItems[craftedItemID + recipeMod] = true
		local search = SearchForObject("itemID",craftedItemID,"field")
		search = (search and CreateObject(search)) or app.CreateItem(craftedItemID)
		-- app.PrintDebug("DetermineRecipeOutput",search.hash,app:SearchLink(group),"=>",app:SearchLink(search))
		return {search}
	end
end
local function DetermineCraftedGroups(group, FillData)
	local itemID = group.itemID;
	local itemRecipes = app.ReagentsDB[itemID];
	-- if we're filling a window (level 2) for a Reagent
	-- then we will allow showing the same crafted item multiple times
	-- so that different reagents can all be visible for the same purpose
	local expandedNesting = (FillData.SkipLevel or 0) > 1 and FillData.FillRecipes
	-- if not itemRecipes then return; end
	if not itemRecipes then
		if expandedNesting then
			return DetermineRecipeOutputGroups(group, FillData)
		end
		return
	end

	local craftableItemIDs = {}
	-- track crafted items which are filled across the entire fill sequence
	local craftedItems = FillData.CraftedItems
	if FillData.Root == group then
		craftedItems[itemID] = true
	end
	local craftedItemID, recipe, skillID

	-- If needing to filter by skill due to BoP reagent, then check via recipe cache instead of by crafted item
	-- If the reagent itself is BOP, then only show things you can make.
	-- 2024-08-15: Revised: instead of changing what is filled (affected by filtering) instead always fill everything possible
	-- and include necessary filtering information for each output, i.e. the skillID on outputs
	-- this should filter properly based on ignoring filters on BoE items & using Debug/Account mode without having to refill

	local groups = {};
	-- find recipe(s) which creates this item
	for recipeID,info in pairs(itemRecipes) do
		craftedItemID = info[1];
		-- app.PrintDebug(itemID,"x",info[2],"=>",craftedItemID,"via",recipeID,skipLevel);
		if craftedItemID and not craftableItemIDs[craftedItemID] and (expandedNesting or not craftedItems[craftedItemID]) then
			-- app.PrintDebug("recipeID",recipeID);
			recipe = SearchForObject("recipeID",recipeID,"key") or app.CreateRecipe(recipeID)
			if recipe then
				if expandedNesting then
					recipe = app.CreateNonCollectibleWithGroups(recipe)
					recipe.fillable = true
					groups[#groups + 1] = recipe
				else
					-- crafted items should be considered unique per recipe
					craftableItemIDs[craftedItemID + (recipeID / 1000000)] = recipe;
				end
			else
				-- app.PrintDebug("Unsourced recipeID",recipe);
				-- we don't have the Recipe sourced, so just include the crafted item anyway
				craftableItemIDs[craftedItemID] = true;
			end
		-- else app.PrintDebug("Skipped, already listed")
		end
	end

	if not expandedNesting then
		local search
		for craftedItemID,recipe in pairs(craftableItemIDs) do
			craftedItemID = math_floor(craftedItemID)
			craftedItems[craftedItemID] = true
			skillID = recipe ~= true and GetRelativeValue(recipe, "skillID") or nil
			-- Searches for a filter-matched crafted Item
			search = SearchForObject("itemID",craftedItemID,"field");
			search = (search and CreateObject(search)) or app.CreateItem(craftedItemID)
			-- link the respective crafted item object to the skill required by the crafting recipe
			search.requireSkill = skillID
			-- app.PrintDebug("craftedItemID",craftedItemID,"via skill",skillID)
			groups[#groups + 1] = search
		end
	end

	-- app.PrintDebug("DetermineCraftedGroups",app:SearchLink(group),groups and #groups);
	if #groups > 0 then
		group.filledReagent = true;
	end
	return groups;
end
local function GetAllNestedGroupsByFunc(results, groups, func)
	local g
	for _,o in ipairs(groups) do
		if func(o) then results[#results + 1] = o end
		g = o.g
		if g then
			for _,t in ipairs(g) do
				GetAllNestedGroupsByFunc(results, t, func)
			end
		end
	end
end
local function GetNpcIDForDrops(group)
	-- assuming for any 'crs' references on an encounter/header group that all crs are linked to the same resulting content
	-- Fyrakk Assaults uses two headers with 'crs' test that when changing this check
	return group.npcID or group.creatureID or (group.encounterID and group.crs and group.crs[1])
end
local function DetermineSymlinkGroups(group)
	if group.sym then
		-- app.PrintDebug("DSG-Now",app:SearchLink(group));
		local groups = ResolveSymbolicLink(group);
		-- make sure this group doesn't waste time getting resolved again somehow
		group.sym = nil;
		if groups and #groups > 0 then
			-- flag all nested symlinked content so that any NPC groups do not nest NPC data
			local results = {}
			GetAllNestedGroupsByFunc(results, groups, GetNpcIDForDrops)
			for _,o in ipairs(results) do
				o.NestNPCDataSkip = true
			end
		end
		-- app.PrintDebug("DetermineSymlinkGroups",group.hash,groups and #groups);
		return groups;
	end
end
local NPCExpandHeaders = app.HeaderData.FILLNPCS or app.EmptyTable
-- Pulls in Common drop content for specific NPCs if any exists
-- (so we don't need to always symlink every NPC which is included in common boss drops somewhere)
local function DetermineNPCDrops(group, FillData)
	if not FillData.NestNPCData or group.NestNPCDataSkip then return end
	local npcID = GetNpcIDForDrops(group)
	if npcID then
		-- app.PrintDebug("NPC Group",group.hash,npcID)
		-- search for groups of this NPC
		local npcGroups = SearchForField("npcID", npcID);
		if #npcGroups > 0 then
			-- see if there's a difficulty wrapping the fill group
			local difficultyID = GetRelativeValue(group, "difficultyID");
			if difficultyID then
				-- app.PrintDebug("FillNPC.Diff",group.hash,difficultyID)
				-- can only fill npc groups for the npc which match the difficultyID
				local headerID, groups, npcDiff;
				for _,npcGroup in ipairs(npcGroups) do
					if npcGroup.hash ~= group.hash then
						headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
						-- app.PrintDebug("DropCheck",npcGroup.hash,"=>",headerID)
						-- where headerID is allowed and the nested difficultyID matches
						if headerID then
							npcDiff = GetRelativeValue(npcGroup, "difficultyID");
							-- copy the header under the NPC groups
							if not npcDiff or npcDiff == difficultyID then
								-- wrap the npcGroup in the matching header if it is not a header
								if not npcGroup.headerID then
									npcGroup = app.CreateCustomHeader(headerID, {g={CreateObject(npcGroup)}})
								end
								-- app.PrintDebug("IsDrop.Diff",difficultyID,group.hash,"<==",npcGroup.hash)
								if groups then tinsert(groups, CreateObject(npcGroup))
								else groups = { CreateObject(npcGroup) }; end
							end
						end
					end
				end
				return groups;
			else
				-- app.PrintDebug("FillNPC",group.hash)
				local headerID, groups;
				for _,npcGroup in ipairs(npcGroups) do
					if npcGroup.hash ~= group.hash then
						headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
						-- app.PrintDebug("DropCheck",npcGroup.hash,"=>",headerID)
						-- where headerID is allowed
						if headerID then
							-- copy the header under the NPC groups
							-- wrap the npcGroup in the matching header if it is not a header
							if not npcGroup.headerID then
								npcGroup = app.CreateCustomHeader(headerID, {g={CreateObject(npcGroup)}})
							end
							-- app.PrintDebug("IsDrop",group.hash,"<==",npcGroup.hash)
							if groups then tinsert(groups, CreateObject(npcGroup))
							else groups = { CreateObject(npcGroup) }; end
						end
					end
				end
				return groups;
			end
		end
	end
end
local function SkipFillingGroup(group, FillData)
	local skipFill = group.skipFill
	if (skipFill and FillData.InWindow) or skipFill == 2 then return true; end

	-- do not fill the same object twice in multiple Locations
	local groupHash, included = group.hash, FillData.Included;
	if included[groupHash] then return true; end

	-- do not fill 'saved' groups in ATT tooltips
	-- or groups directly under saved groups unless in Debug mode
	if not app.MODE_DEBUG then
		-- only ignored filling saved 'quest' groups (unless it's an Item, which we ignore the ignore... :D)
		if group.questID then
			if not group.itemID and group.saved then
				return true
			end
			-- don't fill under locked quests
			if group.locked then
				return true
			end
		end
		-- root fills of a thing from a saved parent should still show their contains, so don't use .parent
		local parent = rawget(group, "parent");
		-- direct parent is a saved quest, then do not fill with stuff
		if parent and parent.questID and (parent.saved or parent.locked) then return true; end
	end
end
local function FillGroupDirect(group, FillData, doDGU)
	local groups;
	local ignoreSkip = group.sym or group.headerID or group.classID
	-- Determine Cost/Crafted/Symlink groups
	groups = ArrayAppend(groups,
		DeterminePurchaseGroups(group, FillData),
		DetermineUpgradeGroups(group, FillData),
		DetermineCraftedGroups(group, FillData),
		DetermineNPCDrops(group, FillData),
		DetermineSymlinkGroups(group));

	-- Adding the groups normally based on available-source priority
	PriorityNestObjects(group, groups, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);

	if groups and #groups > 0 then
		-- if FillData.Debug then
		-- 	app.print("FG-MergeResults",#groups,app:SearchLink(group))
		-- end
		-- app.PrintDebug("FillGroups-MergeResults",group.hash,#groups)
		AssignChildren(group);
		if doDGU then app.DirectGroupUpdate(group); end
		-- mark this group as being filled since it actually received filled content (unless it's ignored for being skipped)
		if not ignoreSkip then
			local groupHash = group.hash;
			if groupHash then
				-- app.PrintDebug("FGA-Included",groupHash,#groups)
				FillData.Included[groupHash] = true;
			end
		end
	end
end
-- Iterates through all groups of the group, filling them with appropriate data, then recursively follows the next layer of groups
-- local function FillGroupsRecursive(group, FillData)
-- 	if SkipFillingGroup(group, FillData) then
-- 		-- if FillData.Debug then
-- 		-- 	app.print(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
-- 		-- end
-- 		-- app.PrintDebug(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
-- 		return;
-- 	end
-- 	-- app.PrintDebug("FGR",group.hash)

-- 	FillGroupDirect(group, FillData)

-- 	local g = group.g;
-- 	if g then
-- 		-- app.PrintDebug(".g",group.hash,#g)
-- 		-- Then nest anything further
-- 		for _,o in ipairs(g) do
-- 			FillGroupsRecursive(o, FillData);
-- 		end
-- 	end
-- end
-- Fills the group and returns an array of the next layer of groups to fill
local function FillGroupsLayered(group, FillData)
	if SkipFillingGroup(group, FillData) then
		-- if FillData.Debug then
		-- 	app.print(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		-- end
		-- app.PrintDebug(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		return;
	end
	-- app.PrintDebug("FGR",group.hash)

	FillGroupDirect(group, FillData)

	return group.g
end
-- Iterates through all groups of the group, filling them with appropriate data, then queueing itself on the FillData.Runner to recursively follow the next layer of groups
-- over multiple frames to reduce stutter
-- local function FillGroupsRecursiveAsync(group, FillData)
-- 	if SkipFillingGroup(group, FillData) then
-- 		-- if FillData.Debug then
-- 		-- 	app.print(Colorize("FGRA-SKIP",app.Colors.ChatLinkError),group.skipFill,FillData.Included[group.hash],app:SearchLink(group))
-- 		-- end
-- 		-- app.PrintDebug(Colorize("FGRA-SKIP",app.Colors.ChatLinkError),group.skipFill,FillData.Included[group.hash],app:SearchLink(group))
-- 		return;
-- 	end

-- 	-- if group.questID == 78663 then
-- 	-- 	FillData.Debug = true
-- 	-- 	app.print("FGRA",app:SearchLink(group))
-- 	-- end

-- 	FillGroupDirect(group, FillData, true)

-- 	local g = group.g;
-- 	if g then
-- 		-- if FillData.Debug then
-- 		-- 	app.print(".g",#g,app:SearchLink(group))
-- 		-- end
-- 		local Run = FillData.Runner.Run;
-- 		-- Then nest anything further
-- 		for _,o in ipairs(g) do
-- 			Run(FillGroupsRecursiveAsync, o, FillData);
-- 		end
-- 	end
-- end
-- Fills the group and returns an array of the next layer of groups to fill
-- Run an entire layer, run a function to run the next layer
-- Capture next layer
local function FillGroupsLayeredAsync(group, FillData)
	if SkipFillingGroup(group, FillData) then
		-- if FillData.Debug then
		-- 	app.print(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		-- end
		-- app.PrintDebug(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		return;
	end
	-- app.PrintDebug("FGL",group.hash)

	FillGroupDirect(group, FillData, true)

	local g = group.g;
	if g then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("AddLayered.g",FillData.CurrentLayer,#g,app:SearchLink(group))
		-- end
		app.ArrayAppend(FillData.NextLayer, g)
	end
end
local function RunGroupsLayeredAsync(FillData)
	local g = FillData.NextLayer;
	if #g > 0 then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("FillLayered",FillData.CurrentLayer,#g)
		-- 	FillData.CurrentLayer = FillData.CurrentLayer + 1
		-- end
		local Run = FillData.Runner.Run;
		-- Then nest anything further
		for _,o in ipairs(g) do
			Run(FillGroupsLayeredAsync, o, FillData)
		end
		wipe(FillData.NextLayer)
		-- Re-run the layer runner since there's been more filling scheduled
		Run(RunGroupsLayeredAsync, FillData)
	end
end
local function HandleOnWindowFillComplete(window)
	window.data._fillcomplete = true
	app.HandleEvent("OnWindowFillComplete", window)
end
-- Appends sub-groups into the item group based on what is required to have this item (cost, source sub-group, reagents, symlinks)
app.FillGroups = function(group)
	group.__FillGroups = true
	-- Sometimes entire sub-groups should be preventing from even allowing filling (i.e. Dynamic groups)
	local skipFull = app.GetRelativeRawWithField(group, "skipFull");
	if skipFull then return end
	-- Check if this group is inside a Window or not
	local groupWindow = app.GetRelativeRawWithField(group, "window");
	-- Setup the FillData for this fill operation
	local FillData = {
		Included = {},
		CraftedItems = {},
		NextLayer = {},
		-- CurrentLayer = 0,	-- debugging
		InWindow = groupWindow and true or nil,
		NestNPCData = app.Settings:GetTooltipSetting("NPCData:Nested"),
		SkipLevel = app.GetSkipLevel(),
		Root = group,
		FillRecipes = group.recipeID or app.ReagentsDB[group.itemID or 0]
	};

	-- app.PrintDebug("FillGroups",app:SearchLink(group),group.__type)
	-- app.PrintTable(FillData)

	-- Fill the group with all nestable content
	if groupWindow then
		local Runner = groupWindow:GetRunner();
		FillData.Runner = Runner
		if not groupWindow.SelfHandleOnWindowFillComplete then
			-- capture a function closure which can handle the event for the window
			-- since OnEnd does not handle parameters
			groupWindow.SelfHandleOnWindowFillComplete = function()
				HandleOnWindowFillComplete(groupWindow)
			end
		end
		-- only trigger the OnWindowFillComplete event if we are filling the Root group of the window
		if groupWindow.data == group then
			Runner.OnEnd(groupWindow.SelfHandleOnWindowFillComplete)
		end
		-- 1 is way too low as it then takes 1 frame per individual row in the minilist... i.e. Valdrakken took 14,000 frames
		Runner.SetPerFrame(25);
		-- Recursive Fill
		-- Runner.Run(FillGroupsRecursiveAsync, group, FillData);

		-- Layered Fill
		Runner.Run(FillGroupsLayeredAsync, group, FillData)
		Runner.Run(RunGroupsLayeredAsync, FillData)

	else
		-- app.PrintDebug("FG",group.hash)
		-- this performs depth-first filling which leads to usually one group having tons of nesting
		-- and other top-level groups being skipped as they had some other means of being
		-- filled in a deeper group
		-- FillGroupsRecursive(group, FillData);

		-- this logic performs fills across an entire logical layer of data via a breadth-first approach
		-- which should ideally have less nesting in total
		local FillLayer = {group}
		local NextLayer = {}
		while #FillLayer > 0 do
			for _,fillGroup in ipairs(FillLayer) do
				app.ArrayAppend(NextLayer, FillGroupsLayered(fillGroup, FillData))
			end
			FillLayer = NextLayer
			NextLayer = {}
		end

		-- app.PrintDebugPrior("FG",group.hash)
	end

	-- if app.Debugging then app.PrintTable(included) end
	-- app.PrintDebug("FillGroups Complete",group.hash,group.__type)
end
local function TryFillPopoutGroup(group)
	-- If the group specifically needs to be filled, do that now that it's in the window
	if not group.__FillGroups then
		-- app.PrintDebug("DoFillGroups",app:SearchLink(group))
		app.SetSkipLevel(2)
		app.FillGroups(group)
		app.SetSkipLevel(0)
	end
end
app.AddEventHandler("OnNewPopoutGroup", TryFillPopoutGroup)
end	-- Auto-Expansion Logic

(function()
-- Keys for groups which are in-game 'Things'
app.ThingKeys = {
	-- filterID = true,
	flightpathID = true,
	-- professionID = true,
	-- categoryID = true,
	-- mapID = true,
	npcID = true,
	creatureID = true,
	currencyID = true,
	itemID = true,
	toyID = true,
	sourceID = true,
	speciesID = true,
	recipeID = true,
	runeforgepowerID = true,
	spellID = true,
	missionID = true,
	mountID = true,
	mountmodID = true,
	illusionID = true,
	questID = true,
	objectID = true,
	encounterID = true,
	artifactID = true,
	azeriteessenceID = true,
	followerID = true,
	factionID = true,
	explorationID = true,
	titleID = true,
	achievementID = true,	-- special handling
	criteriaID = true,	-- special handling
};
local SpecificSources = {
	headerID = {
		[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
		[app.HeaderConstants.COMMON_VENDOR_ITEMS] = true,
		[app.HeaderConstants.DROPS] = true,
	},
};
local function CleanTop(top, keephash)
	if top then
		if top.hash == keephash then return true end
		local g = top.g;
		if g then
			local count, gi, cleaned = #g,nil,nil;
			for i=count,1,-1 do
				gi = g[i];
				if CleanTop(gi, keephash) then
					cleaned = true;
				else
					tremove(g, i);
				end
			end
			return cleaned;
		end
	end
end
local function GetThingSources(field, value)
	if field == "achievementID" then
		return SearchForField(field, value)
	end
	return app.SearchForLink(field..":"..value)
end

-- Builds a 'Source' group from the parent of the group (or other listings of this group) and lists it under the group itself for
local function BuildSourceParent(group)
	-- only show sources for Things or specific of other types
	if not group or not group.key then return; end
	local groupKey, thingKeys = group.key, app.ThingKeys;
	local thingCheck = thingKeys[groupKey];
	local specificSource = SpecificSources[groupKey]
	if specificSource then
		 specificSource = specificSource[group[groupKey]];
	end
	-- group with some Source-able data can be treated as specific Source
	if not specificSource and (
		group.npcID or group.creatureID or group.crs or group.providers
	) then
		specificSource = true;
	end
	if not thingCheck and not specificSource then return; end

	-- pull all listings of this 'Thing'
	local keyValue = group[groupKey];
	local things = specificSource and { group } or GetThingSources(groupKey, keyValue)
	-- app.PrintDebug("BuildSourceParent",group.hash,thingCheck,specificSource,keyValue,#things)
	-- if app.Debugging then
	-- 	local sourceGroup = {
	-- 		["text"] = "DEBUG THINGS",
	-- 		["OnUpdate"] = app.AlwaysShowUpdate,
	-- 		["skipFill"] = true,
	-- 		["g"] = {},
	-- 	};
	-- 	NestObjects(sourceGroup, things, true)
	-- 	NestObject(group, sourceGroup, nil, 1)
	-- end
	if things then
		local groupHash = group.hash;
		local parents = {};
		local isAchievement = groupKey == "achievementID";
		local parentKey, parent;
		-- collect all possible parent groups for all instances of this Thing
		for _,thing in ipairs(things) do
			if isAchievement or GroupMatchesParams(thing, groupKey, keyValue) then
				---@class ATTTempParentObject
				---@field key string
				---@field hash string
				---@field npcID number
				---@field creatureID number
				---@field _keepSource boolean
				---@field parent ATTTempParentObject
				parent = thing.parent;
				while parent do
					-- app.PrintDebug("parent",parent.text,parent.key)
					parentKey = parent.key;
					if parentKey and parent[parentKey] and parent.hash ~= groupHash then
						-- only show certain types of parents as sources.. typically 'Game World Things'
						-- or if the parent is directly tied to an NPC
						if thingKeys[parentKey] or parent.npcID or parent.creatureID then
							-- keep the Criteria nested for Achievements, to show proper completion tracking under various Sources
							if isAchievement then
								-- app.PrintDebug("isAchieve:keepSource",thing.hash,"under",parent.hash)
								parent._keepSource = thing.hash;
							end
							-- add the parent for display later
							tinsert(parents, parent);
							break;
						end
						-- TODO: maybe handle mapID/instanceID in a different way as a fallback for things nested under headers within a zone....?
					end
					-- move to the next parent if the current parent is not a valid 'Thing'
					parent = parent.parent;
				end
				-- Things tagged with an npcID should show that NPC as a Source
				if thing.key ~= "npcID" and (thing.npcID or thing.creatureID) then
					local parentNPC = SearchForObject("creatureID", thing.npcID or thing.creatureID, "field") or {["npcID"] = thing.npcID or thing.creatureID};
					tinsert(parents, parentNPC);
				end
				-- Things tagged with many npcIDs should show all those NPCs as a Source
				if thing.crs then
					-- app.PrintDebug("thing.crs",#thing.crs)
					local parentNPC;
					for _,npcID in ipairs(thing.crs) do
						parentNPC = SearchForObject("creatureID", npcID, "field") or {["npcID"] = npcID};
						tinsert(parents, parentNPC);
					end
				end
				-- Things tagged with providers should show the providers as a Source
				if thing.providers then
					local type, id;
					for _,p in ipairs(thing.providers) do
						type, id = p[1], p[2];
						-- app.PrintDebug("Root Provider",type,id);
						---@type any
						local pRef = (type == "i" and SearchForObject("itemID", id, "field"))
								or   (type == "o" and SearchForObject("objectID", id, "field"))
								or   (type == "n" and SearchForObject("npcID", id, "field"));
						if pRef then
							pRef = CreateObject(pRef);
							tinsert(parents, pRef);
						else
							pRef = (type == "i" and app.CreateItem(id))
								or   (type == "o" and app.CreateObject(id))
								or   (type == "n" and app.CreateNPC(id));
							tinsert(parents, pRef);
						end
					end
				end
				-- Things tagged with qgs should show the quest givers as a Source
				if thing.qgs then
					for _,id in ipairs(thing.qgs) do
						-- app.PrintDebug("Root Provider",type,id);
						local pRef = SearchForObject("npcID", id, "field");
						if pRef then
							pRef = CreateObject(pRef);
							tinsert(parents, pRef);
						else
							pRef = app.CreateNPC(id);
							tinsert(parents, pRef);
						end
					end
				end
				-- Things tagged with 'sourceQuests' should show the quests as a Source (if the Thing itself is not a raw Quest)
				-- if thing.sourceQuests and groupKey ~= "questID" then
				-- 	local questRef;
				-- 	for _,sq in ipairs(thing.sourceQuests) do
				-- 		questRef = SearchForObject("questID", sq) or {["questID"] = sq};
				-- 		tinsert(parents, questRef);
				-- 	end
				-- end
			end
		end
		-- Raw Criteria inherently are not directly cached and will not find themselves, so instead
		-- show their containing Achievement as the Source
		-- re-popping this Achievement will do normal Sources for all the Criteria and be useful
		if groupKey == "criteriaID" then
			local achID = group.achievementID;
			parent = SearchForObject("achievementID", achID, "key") or { achievementID = achID };
			-- app.PrintDebug("add achievement for empty criteria",achID)
			tinsert(parents, parent);
		end
		-- if there are valid parent groups for sources, merge them into a 'Source(s)' group
		if #parents > 0 then
			-- app.PrintDebug("Found parents",#parents)
			local sourceGroup = app.CreateRawText(L.SOURCES, {
				description = L.SOURCES_DESC,
				icon = 134441,
				OnUpdate = app.AlwaysShowUpdate,
				sourceIgnored = true,
				skipFill = true,
				SortPriority = -3.0,
				g = {},
				OnClick = app.UI.OnClick.IgnoreRightClick,
			})
			local clonedParent, keepSource;
			local clones = {};
			for _,parent in ipairs(parents) do
				keepSource = parent._keepSource;
				-- clear the flag from the Source
				parent._keepSource = nil;
				-- if keepSource then app.PrintDebug("Keeping Criteria under",parent.hash) end
				clonedParent = keepSource and CreateObject(parent) or CreateObject(parent, true);
				clonedParent.collectible = false;
				if keepSource then
					CleanTop(clonedParent, keepSource);
				else
					clonedParent.OnUpdate = app.AlwaysShowUpdate;	-- TODO: filter actual unobtainable sources...
				end
				tinsert(clones, clonedParent);
			end
			PriorityNestObjects(sourceGroup, clones, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);
			NestObject(group, sourceGroup, nil, 1);
		end
	end
end
app.AddEventHandler("OnNewPopoutGroup", BuildSourceParent)
end)();




-- Synchronization Functions
(function()
local C_CreatureInfo_GetRaceInfo = C_CreatureInfo.GetRaceInfo;
local outgoing,incoming,queue,active = {},{},{},nil;
local whiteListedFields = { --[["Achievements",]] "AzeriteEssenceRanks", "Exploration", "Factions", "FlightPaths", "Followers", "GarrisonBuildings", "Quests", "Spells", "Titles" };
app.CharacterSyncTables = whiteListedFields;
local function splittoarray(sep, inputstr)
	local t = {};
	for str in inputstr:gmatch("([^" .. (sep or "%s") .. "]+)") do
		tinsert(t, str);
	end
	return t;
end
local function processQueue()
	if #queue > 0 and not active then
		local data = queue[1];
		tremove(queue, 1);
		active = data[1];
		app.print("Updating " .. data[2] .. " from " .. data[3] .. "...");
		C_ChatInfo.SendAddonMessage("ATT", "!\tsyncsum\t" .. data[1], "WHISPER", data[3]);
	end
end

function app:AcknowledgeIncomingChunks(sender, uid, total)
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then
		incomingFromSender = {};
		incoming[sender] = incomingFromSender;
	end
	incomingFromSender[uid] = { ["chunks"] = {}, ["total"] = total };
	C_ChatInfo.SendAddonMessage("ATT", "chksack\t" .. uid, "WHISPER", sender);
end
local function ProcessIncomingChunk(sender, uid, index, chunk)
	if not (chunk and index and uid and sender) then return false; end
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then return false; end
	local incomingForUID = incomingFromSender[uid];
	if not incomingForUID then return false; end
	incomingForUID.chunks[index] = chunk;
	if index < incomingForUID.total then
		if index % 25 == 0 then app.print("Syncing " .. index .. " / " .. incomingForUID.total); end
		return true;
	end

	incomingFromSender[uid] = nil;

	local msg = "";
	for i=1,incomingForUID.total,1 do
		msg = msg .. incomingForUID.chunks[i];
	end
	-- app:ShowPopupDialogWithMultiLineEditBox(msg);
	local characters = splittoarray("\t", msg);
	for _,characterString in ipairs(characters) do
		local data = splittoarray(":", characterString);
		local guid = data[1];
		local character = ATTCharacterData[guid];
		if not character then
			character = {};
			character.guid = guid;
			ATTCharacterData[guid] = character;
		end
		character.name = data[2];
		character.lvl = tonumber(data[3]);
		character.text = data[4];
		if data[5] ~= "" and data[5] ~= " " then character.realm = data[5]; end
		if data[6] ~= "" and data[6] ~= " " then character.factionID = tonumber(data[6]); end
		if data[7] ~= "" and data[7] ~= " " then character.classID = tonumber(data[7]); end
		if data[8] ~= "" and data[8] ~= " " then character.raceID = tonumber(data[8]); end
		character.lastPlayed = tonumber(data[9]);
		character.Deaths = tonumber(data[10]);
		if character.classID then character.class = app.ClassInfoByID[character.classID].file; end
		if character.raceID then character.race = C_CreatureInfo_GetRaceInfo(character.raceID).clientFileString; end
		for i=11,#data,1 do
			local piece = splittoarray("/", data[i]);
			local key = piece[1];
			local field = {};
			character[key] = field;
			for j=2,#piece,1 do
				local index = tonumber(piece[j]);
				if index then field[index] = 1; end
			end
		end
		app.print("Update complete for " .. character.text .. ".");
	end

	app:RecalculateAccountWideData();
	app.Settings:Refresh();
	active = nil;
	processQueue();
	return false;
end
function app:AcknowledgeIncomingChunk(sender, uid, index, chunk)
	if chunk and ProcessIncomingChunk(sender, uid, index, chunk) then
		C_ChatInfo.SendAddonMessage("ATT", "chkack\t" .. uid .. "\t" .. index .. "\t1", "WHISPER", sender);
	else
		C_ChatInfo.SendAddonMessage("ATT", "chkack\t" .. uid .. "\t" .. index .. "\t0", "WHISPER", sender);
	end
end
function app:SendChunk(sender, uid, index, success)
	local outgoingForSender = outgoing[sender];
	if outgoingForSender then
		local chunksForUID = outgoingForSender.uids[uid];
		if chunksForUID and success == 1 then
			local chunk = chunksForUID[index];
			if chunk then
				C_ChatInfo.SendAddonMessage("ATT", "chk\t" .. uid .. "\t" .. index .. "\t" .. chunk, "WHISPER", sender);
			end
		else
			outgoingForSender.uids[uid] = nil;
		end
	end
end

function app:IsAccountLinked(sender)
	return AllTheThingsAD.LinkedAccounts[sender] or AllTheThingsAD.LinkedAccounts[("-"):split(sender)];
end
local function DefaultSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	wipe(data);
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,_ in pairs(characterData) do
				data[index] = 1;
			end
		end
	end
end
-- Used for data which is primarily Account-learned, but has Character-learned exceptions
local function PartialSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	-- wipe account data saved based on character data
	for id,completion in pairs(data) do
		if completion == 2 then
			data[id] = nil
		end
	end
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for id,_ in pairs(characterData) do
				-- character-based completion in account data saved as 2 for these types
				data[id] = 2
			end
		end
	end
end
local function RankSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	wipe(data);
	local oldRank;
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,rank in pairs(characterData) do
				oldRank = data[index];
				if not oldRank or oldRank < rank then
					data[index] = rank;
				end
			end
		end
	end
end
local function SyncCharacterQuestData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	-- don't completely wipe quest data, some questID are marked as 'complete' due to other restrictions on the account
	-- so we want to maintain those even though no character actually has it completed
	-- TODO: perhaps in the future we can instead treat these quests as 'uncollectible' for the account rather than 'complete'
	for questID,completion in pairs(data) do
		if completion ~= 2 then
			data[questID] = nil
		-- else app.PrintDebug("not-reset",questID,completion)
		end
	end
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,_ in pairs(characterData) do
				data[index] = 1;
			end
		end
	end
end
-- TODO: individual Classes should be able to add the proper functionality here to determine the account-wide
-- collection states of a 'Thing', if the refresh can't account for it
-- i.e. Mounts... 99% account-wide by default, like 5 per character. don't want to save 900+ id's for
-- each character just to sync into account data properly
local SyncFunctions = setmetatable({
	AzeriteEssenceRanks = RankSyncCharacterData,
	Quests = SyncCharacterQuestData,
	Mounts = PartialSyncCharacterData,
}, { __index = function(t, key)
	if contains(whiteListedFields, key) then
		return DefaultSyncCharacterData
	end
end })

function app:RecalculateAccountWideData()
	local allCharacters = ATTCharacterData;
	local syncFunc;
	for key,data in pairs(ATTAccountWideData) do
		syncFunc = SyncFunctions[key];
		if syncFunc then
			-- app.PrintDebug("Sync:",key)
			syncFunc(allCharacters, key);
		end
	end
	local deaths = 0;
	for guid,character in pairs(allCharacters) do
		if character.Deaths then
			deaths = deaths + character.Deaths;
		end
	end
	ATTAccountWideData.Deaths = deaths;
end
app.AddEventHandler("OnRefreshCollectionsDone", app.RecalculateAccountWideData)
function app:ReceiveSyncRequest(sender, battleTag)
	if battleTag ~= select(2, BNGetInfo()) then
		-- Check to see if the character/account is linked.
		if not (app:IsAccountLinked(sender) or AllTheThingsAD.LinkedAccounts[battleTag]) then
			return false;
		end
	end

	-- Whitelist the character name, if not already. (This is needed for future sync methods)
	AllTheThingsAD.LinkedAccounts[sender] = true;

	-- Generate the sync string (there may be several depending on how many alts there are)
	-- TODO: use app.TableConcat()
	-- local msgs = {};
	local msg = "?\tsyncsum";
	for guid,character in pairs(ATTCharacterData) do
		if character.lastPlayed then
			local charsummary = "\t" .. guid .. ":" .. character.lastPlayed;
			if (msg:len() + charsummary:len()) < 255 then
				msg = msg .. charsummary;
			else
				C_ChatInfo.SendAddonMessage("ATT", msg, "WHISPER", sender);
				msg = "?\tsyncsum" .. charsummary;
			end
		end
	end
	C_ChatInfo.SendAddonMessage("ATT", msg, "WHISPER", sender);
end
function app:ReceiveSyncSummary(sender, summary)
	if app:IsAccountLinked(sender) then
		local first = #queue == 0;
		for i,data in ipairs(summary) do
			local guid,lastPlayed = (":"):split(data);
			local character = ATTCharacterData[guid];
			if not character or not character.lastPlayed or (character.lastPlayed < tonumber(lastPlayed)) and guid ~= active then
				tinsert(queue, { guid, character and character.text or guid, sender });
			end
		end
		if first then processQueue(); end
	end
end
function app:ReceiveSyncSummaryResponse(sender, summary)
	if app:IsAccountLinked(sender) then
		local rawMsg;
		for i,guid in ipairs(summary) do
			local character = ATTCharacterData[guid];
			if character then
				-- Put easy character data into a raw data string
				local rawData = character.guid .. ":" .. character.name .. ":" .. character.lvl .. ":" .. character.text .. ":" .. (character.realm or " ") .. ":" .. (character.factionID or " ") .. ":" .. (character.classID or " ") .. ":" .. (character.raceID or " ") .. ":" .. character.lastPlayed .. ":" .. character.Deaths;

				for i,field in ipairs(whiteListedFields) do
					if character[field] then
						rawData = rawData .. ":" .. field;
						for index,value in pairs(character[field]) do
							if value then
								rawData = rawData .. "/" .. index;
							end
						end
					end
				end

				if not rawMsg then
					rawMsg = rawData;
				else
					rawMsg = rawMsg .. "\t" .. rawData;
				end
			end
		end

		if rawMsg then
			-- Send Addon Message Back
			local length = rawMsg:len();
			local chunks = {};
			for i=1,length,241 do
				tinsert(chunks, rawMsg:sub(i, math.min(length, i + 240)));
			end
			local outgoingForSender = outgoing[sender];
			if not outgoingForSender then
				outgoingForSender = { ["total"] = 0, ["uids"] = {}};
				outgoing[sender] = outgoingForSender;
			end
			local uid = outgoingForSender.total + 1;
			outgoingForSender.uids[uid] = chunks;
			outgoingForSender.total = uid;

			-- Send Addon Message Back
			C_ChatInfo.SendAddonMessage("ATT", "chks\t" .. uid .. "\t" .. #chunks, "WHISPER", sender);
		end
	end
end
function app:Synchronize(automatically)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		local any, msg = false, "?\tsync\t" .. battleTag;
		for playerName,allowed in pairs(AllTheThingsAD.LinkedAccounts) do
			if allowed and not playerName:find("#") then
				C_ChatInfo.SendAddonMessage("ATT", msg, "WHISPER", playerName);
				any = true;
			end
		end
		if not any and not automatically then
			app.print("You need to link a character or BNET account in the settings first before you can Sync accounts.");
		end
	end
end
function app:SynchronizeWithPlayer(playerName)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		C_ChatInfo.SendAddonMessage("ATT", "?\tsync\t" .. battleTag, "WHISPER", playerName);
	end
end
app.AddEventHandler("OnReady", function()
	-- Attempt to register for the addon message prefix.
	-- NOTE: This is only used by this old sync module and will be removed at some point.
	C_ChatInfo.RegisterAddonMessagePrefix("ATT");
	if app.Settings:GetTooltipSetting("Auto:Sync") then
		app:Synchronize(true)
	end
end);
end)();

-- Item Information Lib
-- Dynamically increments the progress for the parent heirarchy of each collectible search result
local function UpdateSearchResults(searchResults)
	-- app.PrintDebug("UpdateSearchResults",searchResults and #searchResults)
	if not searchResults or #searchResults == 0 then return end
	local limit = 10
	-- in extreme cases of tons of search results to update all at once, we will split up the updates to remove the apparent stutter
	if #searchResults > limit then
		local subresults = {}
		for i,result in ipairs(searchResults) do
			subresults[#subresults + 1] = result
			if i % limit == 0 then
				app.UpdateRunner.Run(UpdateSearchResults, subresults)
				subresults = {}
			end
		end
		app.UpdateRunner.Run(UpdateSearchResults, subresults)
		return
	end
	-- Update all the results within visible windows
	local hashes = {};
	local found = {};
	local HandleEvent = app.HandleEvent
	-- Directly update the Source groups of the search results, and collect their hashes for updates in other windows
	for _,result in ipairs(searchResults) do
		hashes[result.hash] = true;
		found[#found + 1] = result;
		-- Make sure any update events are handled for this Thing
		HandleEvent("OnSearchResultUpdate", result)
	end

	-- loop through visible ATT windows and collect matching groups
	-- app.PrintDebug("Checking Windows...")
	local SearchForSpecificGroups = app.SearchForSpecificGroups;
	for suffix,window in pairs(app.Windows) do
		-- Collect matching groups from the updating groups from visible windows other than Main list
		if window.Suffix ~= "Prime" and window:IsVisible() then
			-- app.PrintDebug(window.Suffix)
			for _,result in ipairs(searchResults) do
				SearchForSpecificGroups(found, window.data, hashes);
			end
		end
	end

	-- apply direct updates to all found groups
	-- app.PrintDebug("Updating",#found,"groups")
	local DirectGroupUpdate = app.DirectGroupUpdate;
	for _,o in ipairs(found) do
		DirectGroupUpdate(o, true);
	end
	app.WipeSearchCache();
	-- app.PrintDebug("UpdateSearchResults Done")
end

-- Pulls all cached fields for the field/id and passes the results into UpdateSearchResults
local function UpdateRawID(field, id)
	-- app.PrintDebug("UpdateRawID",field,id)
	if field and id then
		UpdateSearchResults(app.SearchForFieldInAllCaches(field, id));
	end
end
app.UpdateRawID = UpdateRawID;
-- Pulls all cached fields for the field/ids and passes the results into UpdateSearchResults
local function UpdateRawIDs(field, ids)
	-- app.PrintDebug("UpdateRawIDs",field,ids and #ids)
	if field and ids and #ids > 0 then
		UpdateSearchResults(app.SearchForManyInAllCaches(field, ids));
	end
end
app.UpdateRawIDs = UpdateRawIDs;

do
local KeyMaps = setmetatable({
	a = "achievementID",
	achievement = "achievementID",
	azessence = "azeriteessenceID",
	battlepet = "speciesID",
	c = "currencyID",
	currency = "currencyID",
	enchant = "spellID",
	fp = "flightpathID",
	follower = "followerID",
	garrbuilding = "garrisonbuildingID",
	garrfollower = "followerID",
	i = "modItemID",
	item = "modItemID",
	itemid = "modItemID",
	mount = "spellID",
	mountid = "spellID",
	n = "creatureID",
	npc = "creatureID",
	npcid = "creatureID",
	o = "objectID",
	object = "objectID",
	r = "spellID",
	recipe = "spellID",
	rfp = "runeforgepowerID",
	s = "sourceID",
	source = "sourceID",
	species = "speciesID",
	spell = "spellID",
	talent = "spellID",
	q = "questID",
	quest = "questID",
}, { __index = function(t,key) return key:gsub("id", "ID") end})

local function SearchForLink(link)
	local itemString = link:match("item[%-?%d:]+")
	if itemString then
		-- Parse the link and get the itemID and bonus ids.
		-- app.PrintDebug(itemString)
		local linkData = {(":"):split(itemString)}
		-- app.PrintTable(linkData)
		local itemID = linkData[2]
		if itemID then
			-- ref: https://warcraft.wiki.gg/wiki/ItemLink
			-- indexes are shifted by 1 due to 'item' being the first index
			itemID = tonumber(itemID) or 0;
			local modID = tonumber(linkData[13]) or 0
			local bonusCount = tonumber(linkData[14]) or 0
			local bonusID1 = bonusCount > 0 and linkData[15] or 0
			local itemModifierIndex = 15 + bonusCount
			local itemModifierCount = tonumber(linkData[itemModifierIndex]) or 0
			local artifactID
			if itemModifierCount > 0 then
				for i=itemModifierIndex + 1,itemModifierIndex + (2 * itemModifierCount),2 do
					if linkData[i] == "8" then
						artifactID = tonumber(linkData[i + 1])
						break
					end
				end
			end
			local search
			-- Don't use SourceID for artifact searches since they contain many SourceIDs
			local sourceID = not artifactID and app.GetSourceID(link);
			if sourceID then
				-- Search for the Source ID. (an appearance)
				-- app.PrintDebug("SEARCHING FOR ITEM LINK WITH SOURCE", link, itemID, sourceID);
				search = SearchForObject("sourceID", sourceID, nil, true)
				-- app.PrintDebug("SFL.sourceID",sourceID,#search)
				if #search > 0 then return search, "sourceID", sourceID end
			end
			-- Search for the Item ID. (an item without an appearance)
			-- app.PrintDebug("SFL-exact",itemID, modID, (tonumber(bonusCount) or 0) > 0 and bonusID1)
			local exactItemID
			local modItemID
			-- Artifacts use a different modItemID
			if artifactID then
				exactItemID = app.GetArtifactModItemID(itemID, artifactID, modID == 0)
				-- fallback to non-offhand... still something about the links that makes some 2H artifacts weird
				modItemID = app.GetArtifactModItemID(itemID, artifactID)
				-- app.PrintDebug("artifact!",exactItemID)
			else
				exactItemID = GetGroupItemIDWithModID(nil, itemID, modID, bonusID1);
				modItemID = GetGroupItemIDWithModID(nil, itemID, modID);
			end
			-- app.PrintDebug("SEARCHING FOR ITEM LINK", link, exactItemID, modItemID, itemID);
			if exactItemID ~= itemID then
				search = SearchForObject("modItemID", exactItemID, nil, true);
				-- app.PrintDebug("SFL.modItemID",exactItemID,#search)
				if #search > 0 then return search, "modItemID", exactItemID end
			end
			if modItemID ~= itemID and modItemID ~= exactItemID then
				search = SearchForObject("modItemID", modItemID, nil, true);
				-- app.PrintDebug("SFL.modItemID",modItemID,#search)
				if #search > 0 then return search, "modItemID", modItemID end
			end
			return SearchForObject("itemID", itemID, nil, true), "itemID", itemID
		end
	end

	local kind, id, id2, id3 = (":"):split(link);
	kind = kind:lower();
	if kind:sub(1,2) == "|c" then
		kind = kind:sub(11);
	end
	if kind:sub(1,2) == "|h" then
		kind = kind:sub(3);
	end
	if id then id = tonumber(select(1, ("|["):split(id)) or id); end
	if not id or not kind then
		-- can't search for nothing!
		return;
	end
	--print(link:gsub("|c", "c"):gsub("|h", "h"));
	-- app.PrintDebug("SFL",kind,">",KeyMaps[kind],id,">")
	kind = (KeyMaps[kind].."ID"):gsub("IDID", "ID")
	if kind == "modItemID" then
		if not id2 and not id3 then
			id, id2, id3 = GetItemIDAndModID(id)
		end
		id = GetGroupItemIDWithModID(nil, id, id2, id3)
	end
	-- app.PrintDebug(#SearchForObject(KeyMaps[kind], id, nil, true))
	return SearchForObject(kind, id, nil, true), kind, id
end
app.SearchForLink = SearchForLink;
end

-- Processing Functions
do
local GetTimePreciseSec = GetTimePreciseSec
local DefaultGroupVisibility, DefaultThingVisibility;
local UpdateGroups;
local RecursiveGroupRequirementsFilter, GroupFilter, GroupVisibilityFilter, ThingVisibilityFilter, TrackableFilter
local FilterSet, FilterGet, Filters_ItemUnbound, ItemUnboundSetting
-- local debug
-- Local caches for some heavily used functions within updates
local function CacheFilterFunctions()
	local FilterApi = app.Modules.Filter;
	FilterSet = FilterApi.Set
	FilterGet = FilterApi.Get
	Filters_ItemUnbound = FilterApi.Filters.ItemUnbound
	ItemUnboundSetting = FilterGet.ItemUnbound()
	RecursiveGroupRequirementsFilter = app.RecursiveGroupRequirementsFilter;
	GroupFilter = app.GroupFilter;
	GroupVisibilityFilter, ThingVisibilityFilter = app.GroupVisibilityFilter, app.CollectedItemVisibilityFilter;
	TrackableFilter = app.ShowTrackableThings
	DefaultGroupVisibility, DefaultThingVisibility = app.DefaultGroupFilter(), app.DefaultThingFilter();
	-- app.PrintDebug("CacheFilterFunctions","DG",DefaultGroupVisibility,"DT",DefaultThingVisibility)
	-- app.PrintDebug("ItemUnboundSetting",ItemUnboundSetting)
end
-- TODO: test perf when instead using an array of ordered visibility checkers which is defined via settings changes
-- similar to information types
local function SetGroupVisibility(parent, group)
	local forceShowParent;
	-- Set visible initially based on the global 'default' visibility, or whether the group should inherently be shown
	local visible = DefaultGroupVisibility;
	-- Need to check all possible reasons a group could be visible, from simplest to more complex
	-- Force show
	if not visible and group.forceShow then
		visible = true;
		group.forceShow = nil;
		-- Continue the forceShow visibility outward
		forceShowParent = true;
	end
	-- Total
	if not visible and group.total > 0 then
		visible = group.progress < group.total or GroupVisibilityFilter(group);
	end
	-- Cost
	if not visible and ((group.costTotal or 0) > 0) then
		visible = true
		-- app.PrintDebug("SGV.cost",group.hash,visible,group.costTotal)
	end
	-- Upgrade
	if not visible and ((group.upgradeTotal or 0) > 0) then
		visible = true
		-- if debug then print("SGV.hasUpgrade",group.hash,visible) end
	end
	-- Trackable
	if not visible and TrackableFilter(group) then
		visible = not group.saved or GroupVisibilityFilter(group)
		forceShowParent = visible;
	end
	-- Custom Visibility
	if not visible and group.OnSetVisibility then
		visible = group:OnSetVisibility()
	end
	-- Apply the visibility to the group
	if visible then
		group.visible = true;
		-- source ignored group which is determined to be visible should ensure the parent is also visible
		if not forceShowParent and group.sourceIgnored then
			forceShowParent = true;
			-- app.PrintDebug("SGV:ForceParent",parent.text,"via Source Ignored",group.text)
		end
	end
	if parent and forceShowParent then
		parent.forceShow = forceShowParent;
	end
end
local function SetThingVisibility(parent, group)
	local forceShowParent;
	local visible = DefaultThingVisibility;
	-- Need to check all possible reasons a group could be visible, from simplest to more complex
	-- Force show
	if not visible and group.forceShow then
		visible = true;
		group.forceShow = nil;
		-- Continue the forceShow visibility outward
		forceShowParent = true;
		-- if debug then print("forceshow",visible) end
	end
	-- Total
	if not visible and group.total > 0 then
		visible = group.progress < group.total or ThingVisibilityFilter(group);
		-- app.PrintDebug("STV.total",group.hash,visible,group.progress,group.total,ThingVisibilityFilter(group))
	end
	-- Cost
	if not visible and ((group.costTotal or 0) > 0) then
		visible = true
		-- app.PrintDebug("STV.cost",group.hash,visible,group.costTotal)
	end
	-- Upgrade
	if not visible and ((group.upgradeTotal or 0) > 0) then
		visible = true
		-- if debug then print("STV.hasUpgrade",group.hash,visible) end
	end
	-- Trackable
	if not visible and TrackableFilter(group) then
		visible = not group.saved or ThingVisibilityFilter(group)
		forceShowParent = visible;
		-- if debug then print("trackable",visible) end
	end
	-- Custom Visibility
	if not visible and group.OnSetVisibility then
		visible = group:OnSetVisibility()
	end
	-- Loot Mode
	if not visible then
		if ((group.itemID and group.f) or group.sym) and app.Settings.Collectibles.Loot then
			visible = true;
		end
		forceShowParent = visible;
	end
	-- Apply the visibility to the group
	if visible then
		group.visible = true;
		-- source ignored group which is determined to be visible should ensure the parent is also visible
		if not forceShowParent and group.sourceIgnored then
			forceShowParent = true;
			-- app.PrintDebug("STV:ForceParent",parent.text,"via Source Ignored",group.text)
		end
	end
	if parent and forceShowParent then
		parent.forceShow = forceShowParent;
	end
end
local function UpdateGroup(group, parent)
	group.visible = nil;

	-- debug = group.itemID and group.factionID == 2045
	-- if debug then print("UG",group.hash,parent and parent.hash) end

	-- Determine if this user can enter the instance or acquire the item and item is equippable/usable
	-- Things which are determined to be a cost for something else which meets user filters will
	-- be shown anyway, so don't need to undergo a filtering pass
	local valid = group.isCost or group.forceShow
	-- if valid then
		-- app.PrintDebug("Pre-valid group as from cost/upgrade",group.isCost,group.isUpgrade,app:SearchLink(group))
	-- end
	-- A group with a source parent means it has a different 'real' heirarchy than in the current window
	-- so need to verify filtering based on that instead of only itself
	if not valid then
		if group.sourceParent then
			valid = RecursiveGroupRequirementsFilter(group);
			-- if debug then print("UG.RGRF",valid,"=>",group.sourceParent.hash) end
		else
			valid = GroupFilter(group);
			-- if debug then print("UG.GF",valid) end
		end
	end

	if valid then
		-- Set total/progress for this object using its cost/custom information if any
		local customTotal = group.customTotal or 0;
		local customProgress = customTotal > 0 and group.customProgress or 0;
		local total, progress = customTotal, customProgress;

		-- if debug then print("UG.Init","custom",customProgress,customTotal,"=>",progress,total) end

		-- If this item is collectible, then mark it as such.
		if group.collectible then
			total = total + 1;
			if group.collected then
				progress = progress + 1;
			end
		end

		-- Set the total/progress on the group
		-- if debug then print("UG.prog",progress,total,group.collectible) end
		group.progress = progress;
		group.total = total;
		group.costTotal = group.isCost and 1 or 0
		group.upgradeTotal = group.isUpgrade and 1 or 0

		-- Check if this is a group
		local g = group.g;
		if g then
			-- if debug then print("UpdateGroup.g",group.progress,group.total,group.__type) end

			-- skip Character filtering for sub-groups if this Item meets the Ignore BoE filter logic, since it can be moved to the designated character
			-- local ItemBindFilter, NoFilter = app.ItemBindFilter, app.NoFilter;
			if ItemUnboundSetting and Filters_ItemUnbound(group) then
				-- app.ItemBindFilter = NoFilter;
				-- Toggle only Account-level filtering within this Item and turn off the ItemUnboundSetting to ignore sub-checks for the same logic
				ItemUnboundSetting = nil;
				FilterSet.ItemUnbound(nil, true);
				-- app.PrintDebug("Within BoE",group.hash,group.link)
				-- Update the subgroups recursively...
				UpdateGroups(group, g);
				-- reapply the previous BoE filter
				-- app.PrintDebug("Leaving BoE",group.hash,group.link)
				FilterSet.ItemUnbound(true);
				ItemUnboundSetting = true;
				-- app.ItemBindFilter = ItemBindFilter;
			else
				UpdateGroups(group, g);
			end

			-- app.PrintDebug("UpdateGroup.g.Updated",group.progress,group.total,group.__type)
			SetGroupVisibility(parent, group);
		else
			SetThingVisibility(parent, group);
		end

		-- Increment the parent group's totals if the group is not ignored for sources
		if parent and not group.sourceIgnored then
			parent.total = (parent.total or 0) + group.total;
			parent.progress = (parent.progress or 0) + group.progress;
			parent.costTotal = (parent.costTotal or 0) + (group.costTotal or 0);
			parent.upgradeTotal = (parent.upgradeTotal or 0) + (group.upgradeTotal or 0);
		-- else
			-- print("Ignoring progress/total",group.progress,"/",group.total,"for group",group.text)
		end
	end

	-- if debug then print("UpdateGroup.Done",group.progress,group.total,group.visible,group.__type) end
	-- debug = nil
	-- return group.visible;
end
UpdateGroups = function(parent, g)
	if g then
		for _,group in ipairs(g) do
			if group.OnUpdate then
				if not group:OnUpdate(parent, UpdateGroup) then
					UpdateGroup(group, parent);
				elseif group.visible then
					group.total = nil;
					group.progress = nil;
					UpdateGroups(group, group.g);
				end
			else
				UpdateGroup(group, parent);
			end
		end
	end
end
app.UpdateGroups = UpdateGroups;
-- Adjusts the progress/total of the group's parent chain, and refreshes visibility based on the new values
local function AdjustParentProgress(group, progChange, totalChange, costChange, upgradeChange)
	-- rawget, .parent will default to sourceParent in some cases
	local parent = group and not group.sourceIgnored and rawget(group, "parent");
	if parent then
		-- app.PrintDebug("APP:",parent.text)
		-- app.PrintDebug("CUR:",parent.progress,parent.total)
		-- app.PrintDebug("CHG:",progChange,totalChange)
		parent.total = (parent.total or 0) + totalChange;
		parent.progress = (parent.progress or 0) + progChange;
		parent.costTotal = (parent.costTotal or 0) + costChange;
		parent.upgradeTotal = (parent.upgradeTotal or 0) + upgradeChange;
		-- Assign cost cache
		-- app.PrintDebug("END:",parent.progress,parent.total)
		-- verify visibility of the group, always a 'group' since it is already a parent of another group, as long as it's not the root window data
		if not parent.window then
			parent.visible = nil
			SetGroupVisibility(rawget(parent, "parent"), parent);
		end
		AdjustParentProgress(parent, progChange, totalChange, costChange, upgradeChange);
	end
end
-- For directly applying the full Update operation for the top-level data group within a window
local function TopLevelUpdateGroup(group)
	group.TLUG = GetTimePreciseSec();
	group.total = nil;
	group.progress = nil;
	group.costTotal = nil;
	group.upgradeTotal = nil;
	CacheFilterFunctions();
	-- app.PrintDebug("TLUG",group.hash)
	-- Root data in Windows should ALWAYS be visible
	if group.window then
		-- app.PrintDebug("Root Group",group.text)
		group.forceShow = true;
	end
	if group.OnUpdate then
		if not group:OnUpdate(nil, UpdateGroup) then
			UpdateGroup(group);
		elseif group.visible then
			group.total = nil;
			group.progress = nil;
			UpdateGroups(group, group.g);
		end
	else
		UpdateGroup(group);
	end
	-- app.PrintDebugPrior("TLUG",group.hash)
end
app.TopLevelUpdateGroup = TopLevelUpdateGroup;
local DGUDelay = 0.5;
-- Allows changing the Delayed group update frequency between 0 - 2 seconds, mainly for testing
app.SetDGUDelay = function(delay)
	DGUDelay = math.min(2, math.max(0, tonumber(delay)));
end
-- For directly applying the full Update operation at the specified group, and propagating the difference upwards in the parent hierarchy,
-- then triggering a delayed soft-update of the Window containing the group if any. 'got' indicates that this group was 'gotten'
-- and was the cause for the update
local function DirectGroupUpdate(group, got)
	-- DGU OnUpdate needs to run regardless of filtering
	if group.DGUOnUpdate then
		-- app.PrintDebug("DGU:OnUpdate",group.hash)
		group:DGUOnUpdate();
	end
	local window = app.GetRelativeRawWithField(group, "window");
	if window then window:ToggleExtraFilters(true) end
	local wasHidden = app.GetRawRelativeField(group, "visible")
	-- starting an update from a non-top-level group means we need to verify this group should even handle updates based on current filters first
	if wasHidden and not app.RecursiveDirectGroupRequirementsFilter(group) then
		-- app.PrintDebug("DGU:Filtered",group.visible,app:SearchLink(group))
		if window then window:ToggleExtraFilters() end
		return;
	end
	local prevTotal, prevProg, prevCost, prevUpgrade
		= group.total or 0, group.progress or 0, group.costTotal or 0, group.upgradeTotal or 0
	TopLevelUpdateGroup(group);
	local progChange, totalChange, costChange, upgradeChange
		= group.progress - prevProg, group.total - prevTotal, group.costTotal - prevCost, group.upgradeTotal - prevUpgrade
	-- Something to change for a visible group prior to the DGU or changed in visibility
	if progChange ~= 0 or totalChange ~= 0 or costChange ~= 0 or upgradeChange ~= 0 then
		local isHidden = not group.visible
		-- app.PrintDebug("DGU:Change",window.Suffix,wasHidden,"=>",isHidden,app:SearchLink(group),progChange, totalChange, costChange, upgradeChange)
		if not isHidden or isHidden ~= wasHidden then
			AdjustParentProgress(group, progChange, totalChange, costChange, upgradeChange);
		end
	end
	-- After completing the Direct Update, setup a soft-update on the affected Window, if any
	if window then
		-- sometimes we may want to trigger a delayed fill operation on a group, but when attempting the fill originally,
		-- the group may not yet be in a state for proper filling... so we can instead assign the group to trigger a fill
		-- once it received a direct update within a window
		-- TODO: use an Event for this check eventually
		if group.DGU_Fill then
			group.DGU_Fill = nil
			-- app.PrintDebug("DGU_Fill",app:SearchLink(group))
			app.FillGroups(group)
		end
		-- app.PrintDebug("DGU:Update",group.hash,">",window.Suffix,window.Update,window.isQuestChain)
		DelayedCallback(window.Update, DGUDelay, window, window.isQuestChain, got);
		window:ToggleExtraFilters()
	elseif group.DGU_Fill then
		-- group wants to fill, but isn't yet in a window... so do a delayed DGU again
		if not tonumber(group.DGU_Fill) then
			group.DGU_Fill = 3
		else
			group.DGU_Fill = group.DGU_Fill - 1
		end
		-- give up after a few tries if it doesn't get into a window...
		if group.DGU_Fill <= 0 then
			group.DGU_Fill = nil
			-- app.PrintDebug("DGU_Fill ignored",app:SearchLink(group))
			return
		end
		-- app.PrintDebug("Delayed DGU_Fill",app:SearchLink(group))
		app.FillRunner.Run(DirectGroupUpdate, group)
	end
end
app.DirectGroupUpdate = DirectGroupUpdate;
-- Trigger a soft-Update of the window containing the specific group, regardless of Filtering/Visibility of the group
local function DirectGroupRefresh(group)
	local window = app.GetRelativeRawWithField(group, "window");
	if window then
		-- app.PrintDebug("DGR:Refresh",group.hash,">",window.Suffix,window.Refresh)
		DelayedCallback(window.Update, DGUDelay, window);
	end
end
app.DirectGroupRefresh = DirectGroupRefresh;
end -- Processing Functions

-- Custom Collectibility
do
local SLCovenantId;
local ExilesReachMapIDs = { [1409] = 1, [1609] = 1, [1610] = 1, [1611] = 1, [1726] = 1, [1727] = 1 };
local CCFuncs = {
	["NPE"] = function()
		-- needs mapID to check this
		if not app.CurrentMapID then return; end
		-- print("first check");
		-- print("map check",app.CurrentMapID);
		-- check if the current MapID is in Exile's Reach
		if ExilesReachMapIDs[app.CurrentMapID] then
			-- this is an NPE character, so flag the GUID
			-- print("on map");
			return true;
		-- if character has completed the first NPE quest
		elseif ((IsQuestFlaggedCompleted(56775) or IsQuestFlaggedCompleted(59926))
				-- but not finished the NPE chain
				and not (IsQuestFlaggedCompleted(60359) or IsQuestFlaggedCompleted(58911))) then
			-- print("incomplete NPE chain");
			return true;
		end
		-- otherwise character is not NPE
		return false;
	end,
	["SL_SKIP"] = function()
		-- Threads content becomes unavailable when a player reaches max level
		-- TODO: this is weird now... some stuff is available to alts post-70
		if app.Level >= 70 then return false end
		-- check if quest #62713 is completed. appears to be a HQT concerning whether the character has chosen to skip the SL Storyline
		return IsQuestFlaggedCompleted(62713);
	end,
	["HOA"] = function()
		-- check if quest #51211 is completed. Rewards the HoA to the player and permanently switches all possible Azerite rewards
		local hoa = IsQuestFlaggedCompleted(51211);
		-- also store the opposite of HOA for easy checks on Azewrong gear
		app.CurrentCharacter.CustomCollects["!HOA"] = not hoa;
		-- for now, always assume both HoA qualifications are true so they do not filter
		app.ActiveCustomCollects["!HOA"] = true; -- not hoa;
		return true; -- hoa;
	end,
	["SL_COV_KYR"] = function()
		return SLCovenantId == 1 or SLCovenantId == 0;
	end,
	["SL_COV_VEN"] = function()
		return SLCovenantId == 2 or SLCovenantId == 0;
	end,
	["SL_COV_NFA"] = function()
		return SLCovenantId == 3 or SLCovenantId == 0;
	end,
	["SL_COV_NEC"] = function()
		return SLCovenantId == 4 or SLCovenantId == 0;
	end,
};

-- receives a key and a function which returns the value to be set for
-- that key based on the current value and current character
local function SetCustomCollectibility(key, func)
	-- print("SetCustomCollectibility",key);
	func = func or CCFuncs[key];
	local result = func();
	if result ~= nil then
		-- app.PrintDebug("SetCustomCollectibility",key,result);
		app.CurrentCharacter.CustomCollects[key] = result;
		app.ActiveCustomCollects[key] = result or app.Settings:Get("CC:"..key);
	else
		-- failed attempt to set the CC, try next frame
		-- app.PrintDebug("SetCustomCollectibility-Fail",key);
		Callback(SetCustomCollectibility, key, func);
	end
end
-- determines whether an object may be considered collectible for the current character based on the 'customCollect' value(s)
app.CheckCustomCollects = function(t)
	-- no customCollect, or Account/Debug mode then disregard
	if app.MODE_DEBUG_OR_ACCOUNT or not t.customCollect then return true; end
	local cc = app.ActiveCustomCollects;
	for _,c in ipairs(t.customCollect) do
		if not cc[c] then
			return false;
		end
	end
	return true;
end
-- Performs the necessary checks to determine any 'customCollect' settings the current character should have applied
local function RefreshCustomCollectibility()
	-- app.PrintDebug("RefreshCustomCollectibility")

	-- clear existing custom collects
	wipe(app.ActiveCustomCollects);

	-- do one-time per character custom visibility check(s)
	-- Exile's Reach (New Player Experience)
	SetCustomCollectibility("NPE");
	-- Shadowlands Skip
	SetCustomCollectibility("SL_SKIP");
	-- Heart of Azeroth
	SetCustomCollectibility("HOA");

	-- print("Current Covenant",SLCovenantId);
	-- Show all Covenants if not yet selected
	SLCovenantId = C_Covenants.GetActiveCovenantID();
	-- Shadowlands Covenant: Kyrian
	SetCustomCollectibility("SL_COV_KYR");
	-- Shadowlands Covenant: Venthyr
	SetCustomCollectibility("SL_COV_VEN");
	-- Shadowlands Covenant: Night Fae
	SetCustomCollectibility("SL_COV_NFA");
	-- Shadowlands Covenant: Necrolord
	SetCustomCollectibility("SL_COV_NEC");
end
app.AddEventHandler("OnReady", RefreshCustomCollectibility)
app.AddEventHandler("OnRecalculate", RefreshCustomCollectibility)

-- Certain quests being completed should trigger a refresh of the Custom Collect status of the character (i.e. Covenant Switches, Threads of Fate, etc.)
local function DGU_CustomCollect(t)
	-- app.PrintDebug("DGU_CustomCollect",t.hash)
	Callback(RefreshCustomCollectibility);
end
local function DGU_Locationtrigger(t)
	-- app.PrintDebug("DGU_Locationtrigger",t.hash)
	Callback(app.LocationTrigger, true);
end
-- A set of quests which indicate a needed refresh to the Custom Collect status of the character
local DGU_Quests = {
	[51211] = DGU_CustomCollect,	-- Heart of Azeroth Quest
	[56775] = DGU_CustomCollect,	-- New Player Experience Starting Quest
	[59926] = DGU_CustomCollect,	-- New Player Experience Starting Quest
	[58911] = DGU_CustomCollect,	-- New Player Experience Ending Quest
	[60359] = DGU_CustomCollect,	-- New Player Experience Ending Quest
	[60129] = DGU_CustomCollect,	-- Shadowlands - SL_SKIP (Threads of Fate)
	[62704] = DGU_CustomCollect,	-- Shadowlands - SL_SKIP (Threads of Fate)
	[62713] = DGU_CustomCollect,	-- Shadowlands - SL_SKIP (Threads of Fate)
	[65076] = DGU_CustomCollect,	-- Shadowlands - Covenant - Kyrian
	[65077] = DGU_CustomCollect,	-- Shadowlands - Covenant - Venthyr
	[65078] = DGU_CustomCollect,	-- Shadowlands - Covenant - Night Fae
	[65079] = DGU_CustomCollect,	-- Shadowlands - Covenant - Necrolord
};
-- Add any automatically-assigned LocationTriggers
for _,questID in ipairs(app.__CacheQuestTriggers or app.EmptyTable) do
	DGU_Quests[questID] = DGU_Locationtrigger
end
app.__CacheQuestTriggers = nil
local function AssignDirectGroupOnUpdates()
	local questRef;
	for questID,func in pairs(DGU_Quests) do
		questRef = SearchForObject("questID", questID, "field");
		if questRef then
			-- app.PrintDebug("Assign DGUOnUpdate",questRef.hash)
			questRef.DGUOnUpdate = func;
		end
	end
end
app.AddEventHandler("OnInit", AssignDirectGroupOnUpdates)
end	-- Custom Collectibility

-- Panel Class Library
(function()
local function StopMovingOrSizing(self)
	self:StopMovingOrSizing();
	self.isMoving = nil;
	-- store the window position if the window is visible (this is called on new popouts prior to becoming visible for some reason)
	if self:IsVisible() then
		self:StorePosition();
	end
end
local function StartMovingOrSizing(self, fromChild)
	if not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			Push(self, "StartMovingOrSizing (Sizing)", function()
				if self.isMoving then
					-- keeps the rows within the window fitting to the window as it resizes
					self:Refresh();
					return true;
				end
			end);
		elseif self:IsMovable() then
			self:StartMoving();
		end
	end
end
-- Adds ATT information about the list of Achievements into the provided tooltip
local function AddAchievementInfoToTooltip(info, achievements, reference)
	if achievements then
		local text, mapID;
		for _,ach in ipairs(achievements) do
			text = ach.text;
			if not text then
				text = RETRIEVING_DATA;
				reference.working = true;
			end
			text = app.GetCompletionIcon(ach.saved) .. " [" .. ach.achievementID .. "] " .. text;
			if ach.isGuild then text = text .. " (" .. GUILD .. ")"; end
			tinsert(info, {
				left = text
			});
		end
	end
end
-- Adds ATT information about the list of Quests into the provided tooltip
local function AddQuestInfoToTooltip(info, quests, reference)
	if quests then
		local text, mapID;
		for _,q in ipairs(quests) do
			text = q.text;
			if not text then
				text = RETRIEVING_DATA;
				reference.working = true;
			end
			text = app.GetCompletionIcon(q.saved) .. " [" .. q.questID .. "] " .. text;
			mapID = q.mapID
				or (q.maps and q.maps[1])
				or (q.coord and q.coord[3])
				or (q.coords and q.coords[1] and q.coords[1][3]);
			if mapID then
				text = text .. " (" .. app.GetMapName(mapID) .. ")";
			end
			tinsert(info, {
				left = text
			});
		end
	end
end
-- Returns true if any subgroup of the provided group is currently expanded, otherwise nil
local function HasExpandedSubgroup(group)
	if group and group.g then
		for _,subgroup in ipairs(group.g) do
			-- dont need recursion since a group has to be expanded for a subgroup to be visible within it
			if subgroup.expanded then
				return true;
			end
		end
	end
end
-- probably temporary function to fix Retail Lua errors when using AH
app.TrySearchAHForGroup = function(group)
	-- nothing works. AH frame is weird

	-- local itemID = group.itemID
	-- if itemID then
	local name, link = group.name, group.link or group.silentLink
	if name and HandleModifiedItemClick(link) then
		local AH = app.AH
		if not AH then AH = {} app.AH = AH end
		-- AuctionFrameBrowse_Search();	-- doesn't exist
		-- local itemKey = C_AuctionHouse.MakeItemKey(itemID)
		-- local itemKeys = {itemKey}
		local query = AH.query
		if not query then
			local sorts = {
				-- {sortOrder = Enum.AuctionHouseSortOrder.Name, reverseSort = false},
				{sortOrder = Enum.AuctionHouseSortOrder.Price, reverseSort = false},
				-- {sortOrder = Enum.AuctionHouseSortOrder.Buyout, reverseSort = false},
			}
			local filters = {
				-- Enum.AuctionHouseFilter.None
			}
			-- local itemClassFilters = {
			-- 	classID = LE_ITEM_CLASS_CONTAINER,
			-- 	subClassID = nil,
			-- 	inventoryType = nil
			-- }
			query = {
				sorts = sorts,
				filters = filters,
				-- itemClassFilters = itemClassFilters,
			}
			-- cache the query for future use to only change the search
			AH.query = query
		end
		query.searchString = name
		-- app.PrintDebug("search")
		-- app.PrintTable(query)
		-- local result = C_AuctionHouse.GetItemSearchResultInfo(itemKey, 0) -- always nil
		-- app.PrintTable(result)
		-- C_AuctionHouse.SearchForItemKeys(itemKeys,sorts) -- always Lua error
		C_AuctionHouse.SendBrowseQuery(query)
		return true;
	end
end
do
local IsTracking, StartTracking, StopTracking
	= C_ContentTracking.IsTracking, C_ContentTracking.StartTracking, C_ContentTracking.StopTracking
app.AddContentTracking = function(group)
	-- if this group is currently tracked
	local sourceID, mountID, achievementID = group.sourceID, group.mountJournalID, group.achievementID
	local type = sourceID and 0
				or mountID and 1
				or achievementID and 2
				or nil
	if type then
		local id = type == 1 and mountID
				or type == 2 and achievementID
				or sourceID
		if IsTracking(type,id) then
			-- app.PrintDebug("StopTracking",type,id)
			StopTracking(type, id, Enum.ContentTrackingStopType.Manual)
		else
			-- app.PrintDebug("StartTracking",type,id)
			StartTracking(type, id)
		end
		return true
	end
end
end
local function SearchForMissingItemsRecursively(group, listing)
	if group.visible then
		if group.itemID and (group.collectible or (group.total and group.total > 0)) and not app.IsBoP(group) then
			tinsert(listing, group);
		end
		if group.g and group.expanded then
			-- Go through the sub groups and determine if any of them have a response.
			for i, subgroup in ipairs(group.g) do
				SearchForMissingItemsRecursively(subgroup, listing);
			end
		end
	end
end

function app:CreateMiniListForGroup(group, forceFresh)
	-- Criteria now show their Source Achievement properly
	-- Achievements already fill out their Criteria information automatically, don't think this is necessary now - Runaway
	-- Is this an achievement lacking some achievement information?
	-- local achievementID = not group.criteriaID and group.achievementID;
	-- if achievementID and not group.g then
	-- 	app.PrintDebug("Finding better achievement data...",achievementID)
	-- 	local searchResults = SearchForField("achievementID", achievementID);
	-- 	if #searchResults > 0 then
	-- 		local bestResult;
	-- 		for i=1,#searchResults,1 do
	-- 			local searchResult = searchResults[i];
	-- 			if searchResult.achievementID == achievementID and not searchResult.criteriaID then
	-- 				if not bestResult or searchResult.g then
	-- 					bestResult = searchResult;
	-- 				end
	-- 			end
	-- 		end
	-- 		if bestResult then group = bestResult; end
	-- 		app.PrintDebug("Found",bestResult and bestResult.hash,group,bestResult)
	-- 	end
	-- end

	-- Pop Out Functionality! :O
	local suffix = app.GenerateSourceHash(group);
	local popout = not forceFresh and app.Windows[suffix];
	-- force data to be re-collected if this is a quest chain since its logic is affected by settings
	if group.questID or group.sourceQuests then popout = nil; end
	-- app.PrintDebug("Popout for",suffix,"showing?",showing)
	if not popout then
		popout = app:GetWindow(suffix);

		-- app.PrintDebug("group")
		-- app.PrintTable(group)

		-- being a search result means it has already received certain processing
		if not group.isBaseSearchResult then
			local skipFull = app.GetRelativeValue(group, "skipFull")
			-- clone/search initially so as to not let popout operations modify the source data
			group = CreateObject(group);
			popout:SetData(group);
			group.skipFull = skipFull

			-- app.PrintDebug(Colorize("clone",app.Colors.ChatLink))
			-- app.PrintTable(group)
			-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
			-- app.PrintTable(group.g)

			-- make a search for this group if it is an item/currency/achievement and not already a container for things
			local key = group.key;
			if not group.g and not group.criteriaID and app.ThingKeys[key] then
				local cmd = group.link or key .. ":" .. group[key];
				app.SetSkipLevel(2);
				local groupSearch = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {SkipFill=true});
				app.SetSkipLevel(0);

				-- app.PrintDebug(Colorize("search",app.Colors.ChatLink))
				-- app.PrintTable(groupSearch)
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(groupSearch.g)
				-- Sometimes we want a specific Thing (/att i:147770)
				-- but since it is keyed by a different ID (spell 242155)
				-- this re-search replaces with an alternate item (147580)
				-- so instead we should only merge properties from the re-search to ensure initial data isn't replaced due to alternate data matching
				MergeProperties(group, groupSearch, true)
				-- g is not merged automatically
				-- app.PrintDebug("Copy .g",#groupSearch.g)
				---@diagnostic disable-next-line: need-check-nil
				group.g = groupSearch.g
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(group.g)
				-- This isn't needed for the example noted anymore...
				-- if not group.key and key then
				-- 	group.key = key;	-- Dunno what causes this in app.GetCachedSearchResults, but assigning this before calling to the new CreateObject function fixes currency popouts for currencies that aren't in the addon. /att currencyid:1533
				-- 	-- CreateMiniListForGroup missing key response, will likely fail to Create a Class Instance!
				-- end

				-- app.PrintDebug(Colorize("merge",app.Colors.ChatLink))
				-- app.PrintTable(group)
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(group.g)
			end
		else
			popout:SetData(group);
		end

		group.isPopout = true

		-- Insert the data group into the Raw Data table.
		-- app.PrintDebug(Colorize("popout",app.Colors.ChatLink))
		-- app.PrintTable(group)
		-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
		-- app.PrintTable(group.g)
		-- This logic allows for nested searches of groups within a popout to be returned as the root search which resets the parent
		-- if not group.isBaseSearchResult then
		--	-- make a search for this group if it is an item/currency and not already a container for things
		-- 	if not group.g and (group.itemID or group.currencyID) then
		-- 		local cmd = group.key .. ":" .. group[group.key];
		-- 		group = app.GetCachedSearchResults(app.SearchForLink, cmd);
		-- 	else
		-- 		group = CreateObject(group);
		-- 	end
		-- end

		-- TODO: Crafting Information
		-- TODO: Lock Criteria

		-- custom Update method for the popout so we don't have to force refresh
		popout.Update = function(self, force, got)
			-- app.PrintDebug("Update.ExpireTime", self.Suffix, force, got)
			-- mark the popout to expire after 5 min from now if it is visible
			if self:IsVisible() then
				self.ExpireTime = time() + 300;
				-- app.PrintDebug("Expire Refreshed",popout.Suffix)
			end
			-- Add Timerunning filter to the popout
			popout.Filters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
			self:BaseUpdate(force or got, got);
		end

		app.HandleEvent("OnNewPopoutGroup", popout.data)
		-- Sort any content added to the Popout data by the Global sort (not for popped out difficulty groups)
		if not popout.data.difficultyID then
			app.Sort(popout.data.g, app.SortDefaults.Global)
		end

		popout:BuildData();
		-- always expand all groups on initial creation
		ExpandGroupsRecursively(popout.data, true, true);
		-- Adjust some update/refresh logic if this is a Quest Chain window
		if popout.isQuestChain then
			local oldUpdate = popout.Update;
			popout.Update = function(self, ...)
				-- app.PrintDebug("Update.isQuestChain", self.Suffix, ...)
				local oldQuestAccountWide = app.Settings.AccountWide.Quests;
				local oldQuestCollection = app.Settings.Collectibles.Quests;
				app.Settings.Collectibles.Quests = true;
				app.Settings.AccountWide.Quests = false;
				oldUpdate(self, ...);
				app.Settings.Collectibles.Quests = oldQuestCollection;
				app.Settings.AccountWide.Quests = oldQuestAccountWide;
			end;
			local oldRefresh = popout.Refresh;
			popout.Refresh = function(self, ...)
				-- app.PrintDebug("Refresh.isQuestChain", self.Suffix, ...)
				local oldQuestAccountWide = app.Settings.AccountWide.Quests;
				local oldQuestCollection = app.Settings.Collectibles.Quests;
				app.Settings.Collectibles.Quests = true;
				app.Settings.AccountWide.Quests = false;
				oldRefresh(self, ...);
				app.Settings.Collectibles.Quests = oldQuestCollection;
				app.Settings.AccountWide.Quests = oldQuestAccountWide;
			end;
			-- Populate the Quest Rewards
			-- think this causes quest popouts to somehow break...
			-- app.TryPopulateQuestRewards(group)

			-- Then trigger a soft update of the window afterwards
			DelayedCallback(popout.Update, 0.25, popout);
		end
	end
	popout:Toggle(true);
	return popout;
end

app.AddEventHandler("RowOnClick", function(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end

		local window = self:GetParent():GetParent();
		-- All non-Shift Right Clicks open a mini list or the settings.
		if button == "RightButton" then
			if IsAltKeyDown() then
				app.AddTomTomWaypoint(reference);
			elseif IsShiftKeyDown() then
				if app.Settings:GetTooltipSetting("Sort:Progress") then
					app.print("Sorting selection by total progress...");
					StartCoroutine("Sorting", function()
						app.SortGroup(reference, "progress");
						app.print("Finished Sorting.");
						window:Update();
					end);
				else
					app.print("Sorting selection alphabetically...");
					StartCoroutine("Sorting", function()
						app.SortGroup(reference, "name");
						app.print("Finished Sorting.");
						window:Update();
					end);
				end
			else
				if self.index > 0 then
					if reference.__dlo then
						-- clone the underlying object of the DLO and create a popout of that instead of the DLO itself
						app:CreateMiniListForGroup(reference.__o);
						return;
					end
					app:CreateMiniListForGroup(reference);
				else
					app.Settings:Open();
				end
			end
		else
			if IsShiftKeyDown() then
				-- If we're at the Auction House
				local isTSMOpen = TSM_API and TSM_API.IsUIVisible("AUCTION");
				if isTSMOpen or (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
					local missingItems = {};
					SearchForMissingItemsRecursively(reference, missingItems);
					local count = #missingItems;
					if count > 0 then
						if isTSMOpen then
							-- This is the new, unusable POS API that I don't understand. lol
							local dict, path, itemString = {}, nil, nil;
							for i,group in ipairs(missingItems) do
								path = app.GenerateSourcePathForTSM(group, 0);
								if path then
									itemString = dict[path];
									if itemString then
										dict[path] = itemString .. ",i:" .. group.itemID;
									else
										dict[path] = "i:" .. group.itemID;
									end
								end
							end
							local search,first = "",true;
							for path,itemString in pairs(dict) do
								if first then
									first = false;
								else
									search = search .. ",";
								end
								search = search .. "group:" .. path .. "," .. itemString;
							end
							app:ShowPopupDialogWithMultiLineEditBox(search, nil, "Copy this to your TSM Import Group Popup");
							return true;
						elseif Auctionator and Auctionator.API and (AuctionatorShoppingFrame and (AuctionatorShoppingFrame:IsVisible() or count > 1)) then
							-- Auctionator needs unique Item Names. Nothing else.
							local uniqueNames = {};
							for i,group in ipairs(missingItems) do
								local name = group.name;
								if name then uniqueNames[name] = 1; end
							end

							-- Build the array of names.
							local arr = {};
							for key,value in pairs(uniqueNames) do
								tinsert(arr, key);
							end
							Auctionator.API.v1.MultiSearch(L.TITLE, arr);
							return;
						elseif TSMAPI and TSMAPI.Auction then
							-- This was the old, better, TSM API that made sense.
							local itemList, search = {}, nil;
							for i,group in ipairs(missingItems) do
								search = group.tsm or TSMAPI.Item:ToItemString(group.link or group.itemID);
								if search then itemList[search] = app.GenerateSourcePathForTSM(group, 0); end
							end
							app:ShowPopupDialog(L.TSM_WARNING_1 .. L.TITLE .. L.TSM_WARNING_2,
							function()
								TSMAPI.Groups:CreatePreset(itemList);
								app.print(L.PRESET_UPDATE_SUCCESS);
								if not TSMAPI.Operations:GetFirstByItem(search, "Shopping") then
									print(L.SHOPPING_OP_MISSING_1);
									print(L.SHOPPING_OP_MISSING_2);
								end
							end);
							return true;
						elseif reference.g and #reference.g > 0 and not reference.link then
							app.print(L.AUCTIONATOR_GROUPS);
							return true;
						end
					end

					-- Attempt to search manually with the link.
					local searched = app.TrySearchAHForGroup(reference);
					if searched then return true end
				else
					-- Not at the Auction House
					-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
					local link = reference.link or reference.silentLink;
					if (link and HandleModifiedItemClick(link)) or ChatEdit_InsertLink(link) then return true; end

					if button == "LeftButton" then
						-- Default behavior is to Refresh Collections.
						app.RefreshCollections();
					end
					return true;
				end
			end

			-- Alt Click on a data row attempts to (un)track the group/nested groups, not from window header unless a popout window
			if IsAltKeyDown() and (self.index > 0 or window.ExpireTime) then
				if app.AddContentTracking(reference) then
					return true
				end
			end

			-- Control Click Expands the Groups
			if IsControlKeyDown() then
				-- If this reference has a link, then attempt to preview the appearance.
				if reference.illusionID then
					-- Illusions are a nasty animal that need to be displayed a special way.
					DressUpVisual(reference.illusionLink);
					return true;
				else
					local link = reference.link or reference.silentLink;
					if link and HandleModifiedItemClick(link) then
						return true;
					end
				end

				-- If this reference is anything else, expand the groups.
				if reference.g then
					-- mark the window if it is being fully-collapsed
					if self.index < 1 then
						window.fullCollapsed = HasExpandedSubgroup(reference);
					end
					-- always expand if collapsed or if clicked the header and all immediate subgroups are collapsed, otherwise collapse
					ExpandGroupsRecursively(reference, not reference.expanded or (self.index < 1 and not window.fullCollapsed), true);
					window:Update();
					return true;
				end
			end
			if self.index > 0 then
				reference.expanded = not reference.expanded;
				window:Update();
			elseif not reference.expanded then
				reference.expanded = true;
				window:Update();
			else
				-- Allow the First Frame to move the parent.
				-- Toggle lock/unlock by holding Alt when clicking the header of a Window if it is movable
				if IsAltKeyDown() and window:IsMovable() then
					local locked = not window.isLocked;
					window.isLocked = locked;
					window:StorePosition();

					-- force tooltip to refresh since locked state drives tooltip content
					self:GetScript("OnLeave")(self)
					self:GetScript("OnEnter")(self)
				else
					self:SetScript("OnMouseUp", function(self)
						self:SetScript("OnMouseUp", nil);
						StopMovingOrSizing(window);
					end);
					StartMovingOrSizing(window, true);
				end
			end
		end
	end
end)

local GetNumberWithZeros = app.Modules.Color.GetNumberWithZeros;
---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip;
app.AddEventHandler("RowOnEnter", function(self)
	local reference = self.ref;
	if not reference then return; end
	reference.working = nil;
	local tooltip = GameTooltip;
	if not tooltip then return end;
	local modifier = IsModifierKeyDown();
	local IsRefreshing = tooltip.ATT_IsRefreshing;
	if IsRefreshing then
		local modded = not not tooltip.ATT_IsModifierKeyDown;
		if modded ~= modifier then
			tooltip.ATT_IsModifierKeyDown = modifier;
			--print("Modifier change detected!", modded, modifier);
		elseif tooltip.ATT_AttachComplete == true then
			--print("Ignoring refresh.");
			return;
		end
	else
		tooltip.ATT_IsModifierKeyDown = modifier;
		tooltip.ATT_IsRefreshing = true;
		tooltip:ClearATTReferenceTexture();
	end
	-- app.PrintDebug("RowOnEnter", "Rebuilding...");

	-- Always display tooltip data when viewing information from our windows.
	local wereTooltipIntegrationsDisabled = not app.Settings:GetTooltipSetting("Enabled");
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", true); end

	-- Build tooltip information.
	local tooltipInfo = {};
	tooltip:ClearLines();
	app.ActiveRowReference = reference;
	local owner;
	if self:GetCenter() > (UIParent:GetWidth() / 2) and (not AuctionFrame or not AuctionFrame:IsVisible()) then
		owner = "ANCHOR_LEFT"
	else
		owner = "ANCHOR_RIGHT"
	end
	tooltip:SetOwner(self, owner);

	-- Attempt to show the object as a hyperlink in the tooltip
	local linkSuccessful;
	local refkey = reference.key
	local questReplace = app.Settings:GetTooltipSetting("Objectives")
	if refkey ~= "encounterID" and refkey ~= "instanceID" and (refkey ~= "questID" or not questReplace) then
		-- Encounter & Instance Links break the tooltip
		local link = reference.link or reference.tooltipLink or reference.silentLink
		if link and link:sub(1, 1) ~= "[" then
			local ok, result = pcall(tooltip.SetHyperlink, tooltip, link);
			if ok and result then
				linkSuccessful = true;
			else
				-- if a link fails to render a tooltip, it clears the tooltip and the owner
				-- so we have to re-assign it here for it to use :Show()
				tooltip:SetOwner(self, owner);
				if not questReplace then questReplace = true end
			end
			-- app.PrintDebug("Link:", link:gsub("|","\\"));
			-- app.PrintDebug("Link Result!", result, refkey, reference.__type,"TT lines",tooltip:NumLines());
		-- elseif link then app.PrintDebug("Ignore tooltip link",link) else
		end

		-- Only if the link was unsuccessful.
		if (not linkSuccessful or tooltip.ATT_AttachComplete == nil) and reference.currencyID then
			---@diagnostic disable-next-line: redundant-parameter
			tooltip:SetCurrencyByID(reference.currencyID, 1);
		end
	end

	-- Default top row line if nothing is generated from a link.
	if tooltip:NumLines() < 1 then
		-- sometimes text is nil
		tooltipInfo[#tooltipInfo + 1] = { left = reference.text or RETRIEVING_DATA }
	end

	local title = reference.title;
	if title then
		local left, right = DESCRIPTION_SEPARATOR:split(title);
		if right then
			tooltipInfo[#tooltipInfo + 1] = {
				left = left,
				right = right,
				r = 1, g = 1, b = 1
			}
		else
			tooltipInfo[#tooltipInfo + 1] = {
				left = title,
				r = 1, g = 1, b = 1
			}
		end
	end
	if reference.speciesID then
		-- TODO: Once we move the Battle Pets to their own class file, add this using settings.AppendInformationTextEntry to the speciesID InformationType.
		local progress, total = C_PetJournal.GetNumCollectedInfo(reference.speciesID);
		if total then
			tooltipInfo[#tooltipInfo + 1] = {
				left = tostring(progress) .. " / " .. tostring(total) .. L.COLLECTED_STRING,
			}
		end
	end
	if reference.questID then
		-- TODO: This could be moved to the Quests lib and hook in using settings.AppendInformationTextEntry.
		local oneTimeQuestCharGuid = ATTAccountWideData.OneTimeQuests[reference.questID];
		if oneTimeQuestCharGuid then
			local charData = ATTCharacterData[oneTimeQuestCharGuid];
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ONCE_PER_ACCOUNT,
				right = L.COMPLETED_BY:format(charData and charData.text or UNKNOWN),
			}
		elseif oneTimeQuestCharGuid == false then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ONCE_PER_ACCOUNT,
				color = "ffcf271b",
			}
		end
	end

	-- TODO: Convert cost to an InformationType.
	if reference.cost then
		if type(reference.cost) == "table" then
			local _, name, icon, amount;
			for k,v in pairs(reference.cost) do
				_ = v[1];
				if _ == "i" then
					_,name,_,_,_,_,_,_,_,icon = GetItemInfo(v[2]);
					amount = v[3];
					if amount > 1 then
						amount = formatNumericWithCommas(amount) .. "x ";
					else
						amount = "";
					end
				elseif _ == "c" then
					amount = v[3];
					local currencyData = C_CurrencyInfo.GetCurrencyInfo(v[2]);
					name = C_CurrencyInfo.GetCurrencyLink(v[2], amount) or (currencyData and currencyData.name) or "Unknown";
					icon = currencyData and currencyData.iconFileID or nil;
					if amount > 1 then
						amount = formatNumericWithCommas(amount) .. "x ";
					else
						amount = "";
					end
				elseif _ == "g" then
					name = "";
					icon = nil;
					amount = GetMoneyString(v[2]);
				end
				if not name then
					reference.working = true;
					name = RETRIEVING_DATA;
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = (k == 1 and L.COST),
					right = amount .. (icon and ("|T" .. icon .. ":0|t") or "") .. name,
				}
			end
		else
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.COST,
				right = GetMoneyString(reference.cost),
			}
		end
	end

	-- Additional information (search will insert this information if found in search)
	if tooltip.ATT_AttachComplete == nil then
		-- an item used for a faction which is repeatable
		if reference.itemID and reference.factionID and reference.repeatable then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.ITEM_GIVES_REP .. (GetFactionName(reference.factionID) or ("Faction #" .. tostring(reference.factionID))) .. "'",
				color = app.Colors.TooltipDescription,
				wrap = true,
			}
		end

		-- Add any ID toggle fields
		app.ProcessInformationTypes(tooltipInfo, reference);
	end

	-- Ignored for Source/Progress
	if reference.sourceIgnored then
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.DOES_NOT_CONTRIBUTE_TO_PROGRESS,
			wrap = true,
		}
	end
	-- Further conditional texts that can be displayed
	if reference.timeRemaining then
		tooltipInfo[#tooltipInfo + 1] = {
			left = app.GetColoredTimeRemaining(reference.timeRemaining),
		}
	end

	-- Calculate Best Drop Percentage. (Legacy Loot Mode)
	if reference.itemID and not reference.speciesID and not reference.spellID and app.Settings:GetTooltipSetting("DropChances") then
		local numSpecializations = GetNumSpecializations();
		if numSpecializations and numSpecializations > 0 then
			local encounterID = GetRelativeValue(reference.parent, "encounterID");
			if encounterID then
				local difficultyID = GetRelativeValue(reference.parent, "difficultyID");
				local encounterCache = SearchForField("encounterID", encounterID);
				if #encounterCache > 0 then
					local itemList = {};
					for i,encounter in ipairs(encounterCache) do
						if encounter.g and GetRelativeValue(encounter.parent, "difficultyID") == difficultyID then
							app.SearchForRelativeItems(encounter, itemList);
						end
					end
					local item
					for i=#itemList,1,-1 do
						item = itemList[i]
						if item.u and item.u < 3 then
							tremove(itemList, i)
						end
					end
					local specHits = {};
					for _,item in ipairs(itemList) do
						local specs = item.specs;
						if specs then
							for j,spec in ipairs(specs) do
								specHits[spec] = (specHits[spec] or 0) + 1;
							end
						end
					end

					local totalItems = #itemList; -- if somehow encounter drops 0 items but an item still references the encounter
					local chance, color;
					local legacyLoot = C_Loot.IsLegacyLootModeEnabled();

					-- Legacy Loot is simply 1 / total items chance since spec has no relevance to drops, i.e. this one item / total items in drop table
					if totalItems > 0 then
						chance = 100 / totalItems;
						color = GetProgressColor(chance / 100);
						tooltipInfo[#tooltipInfo + 1] = {
							left = L.LOOT_TABLE_CHANCE,
							right = "|c"..color..GetNumberWithZeros(chance, 1) .. "%|r",
						}
					else
						tooltipInfo[#tooltipInfo + 1] = {
							left = L.LOOT_TABLE_CHANCE,
							right = "N/A",
						}
					end

					local specs = reference.specs;
					if specs and #specs > 0 then
						-- Available for one or more loot specialization.
						local least, bestSpecs = 999, {};
						for _,spec in ipairs(specs) do
							local specHit = specHits[spec] or 0;
							-- For Personal Loot!
							if specHit > 0 and specHit <= least then
								least = specHit;
								bestSpecs[spec] = specHit;
							end
						end
						-- something has a best spec
						if least < 999 then
							-- define the best specs based on min
							local rollSpec = {};
							for specID,count in pairs(bestSpecs) do
								if count == least then
									tinsert(rollSpec, specID);
								end
							end
							chance = 100 / least;
							color = GetProgressColor(chance / 100);
							-- print out the specs with min items
							local specString = GetSpecsString(rollSpec, true, true) or "???";
							tooltipInfo[#tooltipInfo + 1] = {
								left = legacyLoot and L.BEST_BONUS_ROLL_CHANCE or L.BEST_PERSONAL_LOOT_CHANCE,
								right = specString.."  |c"..color..GetNumberWithZeros(chance, 1).."%|r",
							}
						end
					elseif legacyLoot then
						-- Not available at all, best loot spec is the one with the most number of items in it.
						local most = 0;
						local bestSpecID
						for i=1,numSpecializations,1 do
							local id = GetSpecializationInfo(i);
							local specHit = specHits[id] or 0;
							if specHit > most then
								most = specHit;
								bestSpecID = i;
							end
						end
						if bestSpecID then
							local id, name, description, icon = GetSpecializationInfo(bestSpecID);
							if totalItems > 0 then
								chance = 100 / (totalItems - specHits[id]);
								color = GetProgressColor(chance / 100);
								tooltipInfo[#tooltipInfo + 1] = {
									left = L.HEADER_NAMES[app.HeaderConstants.BONUS_ROLL],
									right = "|T" .. icon .. ":0|t " .. name .. " |c"..color..GetNumberWithZeros(chance, 1) .. "%|r",
								}
							else
								tooltipInfo[#tooltipInfo + 1] = {
									left = L.HEADER_NAMES[app.HeaderConstants.BONUS_ROLL],
									right = "N/A",
								}
							end
						end
					end
				end
			end
		end
	end

	-- Show info about if this Thing cannot be collected due to a custom collectibility
	-- restriction on the Thing which this character does not meet
	if reference.customCollect then
		local customCollectEx;
		local requires = L.REQUIRES;
		for i,c in ipairs(reference.customCollect) do
			customCollectEx = L.CUSTOM_COLLECTS_REASONS[c];
			local icon_color_str = customCollectEx.icon.." |c"..customCollectEx.color..(customCollectEx.text or "[MISSING_LOCALE_KEY]");
			if not app.CurrentCharacter.CustomCollects[c] then
				tooltipInfo[#tooltipInfo + 1] = {
					left = "|cffc20000" .. requires .. ":|r " .. icon_color_str,
					right = customCollectEx.desc or "",
				}
			else
				tooltipInfo[#tooltipInfo + 1] = {
					left = requires .. ": " .. icon_color_str,
					right = customCollectEx.desc or "",
				}
			end
		end
	end

	-- Show Quest Prereqs
	local isDebugMode, sqs, bestMatch = app.MODE_DEBUG, nil, nil;
	if reference.sourceQuests and (not reference.saved or isDebugMode) then
		local prereqs, bc = {}, {};
		for i,sourceQuestID in ipairs(reference.sourceQuests) do
			if sourceQuestID > 0 and (isDebugMode or not IsQuestFlaggedCompleted(sourceQuestID)) then
				sqs = SearchForField("questID", sourceQuestID);
				if #sqs > 0 then
					bestMatch = nil;
					for j,sq in ipairs(sqs) do
						if sq.questID == sourceQuestID then
							if isDebugMode or (not IsQuestFlaggedCompleted(sourceQuestID) and app.GroupFilter(sq)) then
								if sq.sourceQuests then
									-- Always prefer the source quest with additional source quest data.
									bestMatch = sq;
								elseif not sq.itemID and (not bestMatch or not bestMatch.sourceQuests) then
									-- Otherwise try to find the version of the quest that isn't an item.
									bestMatch = sq;
								end
							end
						end
					end
					if bestMatch then
						if bestMatch.isBreadcrumb then
							tinsert(bc, bestMatch);
						else
							tinsert(prereqs, bestMatch);
						end
					end
				else
					tinsert(prereqs, app.CreateQuest(sourceQuestID));
				end
			end
		end
		if prereqs and #prereqs > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.PREREQUISITE_QUESTS,
			}
			AddQuestInfoToTooltip(tooltipInfo, prereqs, reference);
		end
		if bc and #bc > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMBS_WARNING,
			}
			AddQuestInfoToTooltip(tooltipInfo, bc, reference);
		end
	end
	if reference.sourceAchievements and (not reference.collected or isDebugMode) then
		local prereqs, sas = {};
		for i,sourceAchievementID in ipairs(reference.sourceAchievements) do
			if sourceAchievementID > 0 and (isDebugMode or not ATTAccountWideData.Achievements[sourceAchievementID]) then
				sas = SearchForField("achievementID", sourceAchievementID);
				if #sas > 0 then
					bestMatch = nil;
					for j,sa in ipairs(sas) do
						if sa.achievementID == sourceAchievementID then
							if isDebugMode or (not sa.saved and app.GroupFilter(sa)) then
								bestMatch = sa;
							end
						end
					end
					if bestMatch then
						tinsert(prereqs, bestMatch);
					end
				else
					tinsert(prereqs, app.CreateAchievement(sourceAchievementID));
				end
			end
		end
		if prereqs and #prereqs > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = "This has an incomplete prerequisite achievement that you need to complete first.",
			}
			AddAchievementInfoToTooltip(tooltipInfo, prereqs, reference);
		end
	end

	-- Show Breadcrumb information
	local lockedWarning;
	if reference.isBreadcrumb then
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.THIS_IS_BREADCRUMB,
			color = app.Colors.Breadcrumb,
		}
		if reference.nextQuests then
			local isBreadcrumbAvailable = true;
			local nextq, nq = {}, nil;
			for _,nextQuestID in ipairs(reference.nextQuests) do
				if nextQuestID > 0 then
					nq = SearchForObject("questID", nextQuestID, "field");
					-- existing quest group
					if nq then
						tinsert(nextq, nq);
					else
						tinsert(nextq, app.CreateQuest(nextQuestID));
					end
					if IsQuestFlaggedCompleted(nextQuestID) then
						isBreadcrumbAvailable = false;
					end
				end
			end
			if isBreadcrumbAvailable then
				-- The character is able to accept the breadcrumb quest without Party Sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			elseif reference.DisablePartySync == false then
				-- unknown if party sync will function for this Thing
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC_4,
					color = app.Colors.LockedWarning,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			elseif not reference.DisablePartySync then
				-- The character wont be able to accept this quest without the help of a lower level character using Party Sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC_2,
					color = app.Colors.LockedWarning,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			else
				-- known to not be possible in party sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.DISABLE_PARTYSYNC,
				}
			end
			lockedWarning = true;
		end
	end

	-- Show information about it becoming locked due to some criteira
	local lockCriteria = reference.lc;
	if lockCriteria then
		-- list the reasons this may become locked due to lock criteria
		local critKey, critValue;
		local critFuncs = app.QuestLockCriteriaFunctions;
		local critFunc;
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.UNAVAILABLE_WARNING_FORMAT:format(lockCriteria[1]),
			color = app.Colors.LockedWarning,
		}
		for i=2,#lockCriteria,2 do
			critKey = lockCriteria[i];
			critValue = lockCriteria[i + 1];
			critFunc = critFuncs[critKey];
			if critFunc then
				local label = critFuncs["label_"..critKey];
				local text = tostring(critFuncs["text_"..critKey](critValue))
				-- TODO: probably a more general way to check this on lines that can be retrieving
				if not reference.working and IsRetrieving(text) then
					reference.working = true
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = app.GetCompletionIcon(critFunc(critValue)).." "..label..": "..text,
				}
			end
		end
	end
	local altQuests = reference.altQuests;
	if altQuests then
		-- list the reasons this may become locked due to altQuests specifically
		local critValue;
		local critFuncs = app.QuestLockCriteriaFunctions;
		local critFunc = critFuncs.questID;
		local label = critFuncs.label_questID;
		local text;
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.UNAVAILABLE_WARNING_FORMAT:format(1),
			color = app.Colors.LockedWarning,
		}
		for i=1,#altQuests,1 do
			critValue = altQuests[i];
			if critFunc then
				text = critFuncs.text_questID(critValue);
				tooltipInfo[#tooltipInfo + 1] = {
					left = app.GetCompletionIcon(critFunc(critValue)).." "..label..": "..text,
				}
			end
		end
	end

	-- it is locked and no warning has been added to the tooltip
	if not lockedWarning and reference.locked then
		if reference.DisablePartySync == false then
			-- unknown if party sync will function for this Thing
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMB_PARTYSYNC_4,
				color = app.Colors.LockedWarning,
			}
		elseif not reference.DisablePartySync then
			-- should be possible in party sync
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMB_PARTYSYNC_3,
				color = app.Colors.LockedWarning,
			}
		else
			-- known to not be possible in party sync
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.DISABLE_PARTYSYNC,
			}
		end
	end

	if app.Settings:GetTooltipSetting("Show:TooltipHelp") then
		if reference.g then
			-- If we're at the Auction House
			if (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
				tooltipInfo[#tooltipInfo + 1] = {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS_AH") or "TOP_ROW_INSTRUCTIONS_AH"],
				}
			else
				tooltipInfo[#tooltipInfo + 1] = {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS") or "TOP_ROW_INSTRUCTIONS"],
				}
			end
		end
		if reference.questID then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ROW_INSTRUCTIONS,
			}
		end
	end
	-- Add info in tooltip for the header of a Window for whether it is locked or not
	if self.index == 0 then
		local owner = self:GetParent():GetParent();
		if owner and owner.isLocked then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.TOP_ROW_TO_UNLOCK,
			}
		elseif app.Settings:GetTooltipSetting("Show:TooltipHelp") then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.TOP_ROW_TO_LOCK,
			}
		end
	end

	--[[ ROW DEBUGGING ]
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Self",
		right = tostring(reference),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Base",
		right = tostring(getmetatable(reference)),
	});
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Parent",
		right = tostring(rawget(reference, "parent")),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "ParentText",
		right = tostring((rawget(reference, "parent") or app.EmptyTable).text),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "SourceParent",
		right = tostring(rawget(reference, "sourceParent")),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "SourceParentText",
		right = tostring((rawget(reference, "sourceParent") or app.EmptyTable).text),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "-- Ref Fields:",
	}
	for key,val in pairs(reference) do
		if key ~= "lore" and key ~= "description" then
			tooltipInfo[#tooltipInfo + 1] = {
				left = key,
				right = tostring(val),
			}
		end
	end
	local fields = {
		"__type",
		-- "key",
		-- "hash",
		-- "name",
		-- "link",
		-- "sourceIgnored",
		-- "collectible",
		-- "collected",
		-- "trackable",
		-- "saved",
		"collectibleAsCost",
		"costTotal",
		"isCost",
		"filledCost",
		"isUpgrade",
		"collectibleAsUpgrade",
		"upgradeTotal",
		"filledUpgrade",
		"skipFill",
		-- "itemID",
		-- "modItemID"
	};
	tooltipInfo[#tooltipInfo + 1] = {
		left = "-- Extra Fields:",
	}
	for _,key in ipairs(fields) do
		tooltipInfo[#tooltipInfo + 1] = {
			left = key,
			right = tostring(reference[key]),
		}
	end
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Row Indent",
		right = tostring(CalculateRowIndent(reference)),
	}
	-- END DEBUGGING]]


	-- Attach all of the Information to the tooltip.
	app.Modules.Tooltip.AttachTooltipInformation(tooltip, tooltipInfo);
	if not IsRefreshing then tooltip:SetATTReferenceForTexture(reference); end
	tooltip:Show();

	-- Reactivate the original tooltip integrations setting.
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", false); end
	app.ActiveRowReference = nil;

	-- Tooltip for something which was not attached via search, so mark it as complete here
	tooltip.ATT_AttachComplete = not reference.working;
end)
app.AddEventHandler("RowOnLeave", function (self)
	local reference = self.ref;
	if reference then reference.working = nil; end
	app.ActiveRowReference = nil;
	GameTooltip.ATT_AttachComplete = nil;
	GameTooltip.ATT_IsRefreshing = nil;
	GameTooltip.ATT_IsModifierKeyDown = nil;
	GameTooltip:ClearATTReferenceTexture();
	GameTooltip:ClearLines();
	GameTooltip:Hide();
end)

end)();

do	-- Main Data
-- Returns {name,icon} for a known HeaderConstants NPCID
local function SimpleNPCGroup(npcID, t)
	if t then
		t.name = app.NPCNameFromID[npcID]
		t.icon = L.HEADER_ICONS[npcID]
		if t.suffix then
			t.name = t.name .. " (".. t.suffix ..")"
			t.suffix = nil
		end
	else
		t = {
				name = app.NPCNameFromID[npcID],
				icon = L.HEADER_ICONS[npcID]
			}
	end
	return t
end

function app:GetDataCache()
	if not app.Categories then
		return nil;
	end

	-- app.PrintDebug("Start loading data cache")
	-- app.PrintMemoryUsage()

	-- Update the Row Data by filtering raw data (this function only runs once)
	local rootData = setmetatable({
		text = L.TITLE,
		icon = app.asset("logo_32x32"),
		preview = app.asset("Discord_2_128"),
		description = L.DESCRIPTION,
		font = "GameFontNormalLarge",
		expanded = true,
		visible = true,
		progress = 0,
		total = 0,
		g = {},
	}, {
		-- TODO: yuck all of this... should assign the available functionality during startup events
		-- and use proper methods
		__index = function(t, key)
			-- app.PrintDebug("Top-Root-Get",key)
			if key == "title" then
				return t.modeString .. DESCRIPTION_SEPARATOR .. t.untilNextPercentage;
			elseif key == "progressText" then
				if t.total < 1 then
					local primeData = app.CurrentCharacter.PrimeData;
					if primeData then
						return GetProgressColorText(primeData.progress, primeData.total);
					end
				end
				return GetProgressColorText(t.progress, t.total);
			elseif key == "modeString" then
				return app.Settings:GetModeString();
			elseif key == "untilNextPercentage" then
				if t.total < 1 and app.CurrentCharacter then
					local primeData = app.CurrentCharacter.PrimeData;
					if primeData then
						return app.Modules.Color.GetProgressTextToNextPercent(primeData.progress, primeData.total);
					end
				end
				return app.Modules.Color.GetProgressTextToNextPercent(t.progress, t.total);
			elseif key == "visible" then
				return true;
			end
		end,
		__newindex = function(t, key, val)
			-- app.PrintDebug("Top-Root-Set",key,val)
			if key == "visible" then
				return;
			end
			-- until the Main list receives a top-level update
			if not t.TLUG then
				-- ignore setting progress/total values
				if key == "progress" or key == "total" then
					return;
				end
			end
			rawset(t, key, val);
		end
	});
	local g, db = rootData.g, nil;

	-- Dungeons & Raids
	db = app.CreateRawText(GROUP_FINDER);
	db.g = app.Categories.Instances;
	db.icon = app.asset("Category_D&R");
	tinsert(g, db);

	-- Delves
	if app.Categories.Delves then
		tinsert(g, app.CreateNPC(app.HeaderConstants.DELVES, app.Categories.Delves));
	end

	-- Zones
	if app.Categories.Zones then
		db = app.CreateRawText(BUG_CATEGORY2);
		db.g = app.Categories.Zones;
		db.icon = app.asset("Category_Zones")
		tinsert(g, db);
	end

	-- World Drops
	if app.Categories.WorldDrops then
		db = app.CreateRawText(TRANSMOG_SOURCE_4);
		db.g = app.Categories.WorldDrops;
		db.isWorldDropCategory = true;
		db.icon = app.asset("Category_WorldDrops");
		tinsert(g, db);
	end

	-- Group Finder
	if app.Categories.GroupFinder then
		db = app.CreateRawText(DUNGEONS_BUTTON);
		db.g = app.Categories.GroupFinder;
		db.icon = app.asset("Category_GroupFinder")
		tinsert(g, db);
	end

	-- Achievements
	if app.Categories.Achievements then
		db = app.CreateNPC(app.HeaderConstants.ACHIEVEMENTS, app.Categories.Achievements);
		db.sourceIgnored = 1;	-- everything in this category is now cloned!
		for _, o in ipairs(db.g) do
			o.sourceIgnored = nil
		end
		tinsert(g, db);
	end

	-- Expansion Features
	if app.Categories.ExpansionFeatures then
		local text = GetCategoryInfo(15301)
		db = app.CreateRawText(text);
		db.g = app.Categories.ExpansionFeatures;
		db.lvl = 10;
		db.description = "These expansion features are new systems or ideas by Blizzard which are spread over multiple zones. For the ease of access & for the sake of reducing numbers, these are tagged as expansion features.\nIf an expansion feature is limited to 1 zone, it will continue being listed only under its respective zone.";
		db.icon = app.asset("Category_ExpansionFeatures");
		tinsert(g, db);
	end

	-- Holidays
	if app.Categories.Holidays then
		db = app.CreateNPC(app.HeaderConstants.HOLIDAYS, app.Categories.Holidays);
		db.isHolidayCategory = true;
		db.SortType = "EventStart";
		tinsert(g, db);
	end

	-- Events
	if app.Categories.WorldEvents then
		db = app.CreateRawText(BATTLE_PET_SOURCE_7);
		db.description = "These events occur at different times in the game's timeline, typically as one time server wide events. Special celebrations such as Anniversary events and such may be found within this category.";
		db.icon = app.asset("Category_Event");
		db.g = app.Categories.WorldEvents;
		tinsert(g, db);
	end

	-- Promotions
	if app.Categories.Promotions then
		db = app.CreateRawText(BATTLE_PET_SOURCE_8);
		db.description = "This section is for real world promotions that seeped extremely rare content into the game prior to some of them appearing within the In-Game Shop.";
		db.icon = app.asset("Category_Promo");
		db.g = app.Categories.Promotions;
		db.isPromotionCategory = true;
		tinsert(g, db);
	end

	-- Pet Battles
	if app.Categories.PetBattles then
		db = app.CreateNPC(app.HeaderConstants.PET_BATTLE);
		db.g = app.Categories.PetBattles;
		db.lvl = 3; -- Must be 3 to train (used to be 5 pre-scale)
		db.text = SHOW_PET_BATTLES_ON_MAP_TEXT; -- Pet Battles
		db.icon = app.asset("Category_PetBattles");
		tinsert(g, db);
	end

	-- PvP
	if app.Categories.PVP then
		db = app.CreateNPC(app.HeaderConstants.PVP, app.Categories.PVP);
		db.isPVPCategory = true;
		tinsert(g, db);
	end

	-- Craftables
	if app.Categories.Craftables then
		db = app.CreateRawText(LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM);
		db.g = app.Categories.Craftables;
		db.DontEnforceSkillRequirements = true;
		db.icon = app.asset("Category_Crafting");
		tinsert(g, db);
	end

	-- Professions
	if app.Categories.Professions then
		db = app.CreateNPC(app.HeaderConstants.PROFESSIONS, app.Categories.Professions);
		tinsert(g, db);
	end

	-- Secrets
	if app.Categories.Secrets then
		db = app.CreateNPC(app.HeaderConstants.SECRETS, app.Categories.Secrets);
		tinsert(g, db);
	end

	-- Character
	if app.Categories.Character then
		db = app.CreateRawText(CHARACTER);
		db.g = app.Categories.Character;
		db.icon = app.asset("Category_ItemSets");
		tinsert(g, db);
	end

	-- In-Game Store
	if app.Categories.InGameShop then
		db = app.CreateNPC(app.HeaderConstants.IN_GAME_SHOP, app.Categories.InGameShop);
		tinsert(g, db);
	end

	-- Trading Post
	if app.Categories.TradingPost then
		db = app.CreateRawText(L.TRADING_POST);	-- Probably some global string Later
		db.g = app.Categories.TradingPost;
		db.icon = app.asset("Category_TradingPost");
		tinsert(g, db);
	end

	-- Black Market
	if app.Categories.BlackMarket then
		db = app.CreateNPC(app.HeaderConstants.BLACK_MARKET_AUCTION_HOUSE, app.Categories.BlackMarket);
		db.icon = app.asset("Category_Blackmarket");
		tinsert(g, db);
	end

	-- Track Deaths!
	tinsert(g, app:CreateDeathClass());

	-- Yourself.
	tinsert(g, app.CreateUnit("player", {
		["description"] = L.DEBUG_LOGIN,
		["races"] = { app.RaceIndex },
		["c"] = { app.ClassIndex },
		["r"] = app.FactionID,
		["collected"] = 1,
		["nmr"] = false,
		["OnUpdate"] = function(self)
			self.lvl = app.Level;
			if app.MODE_DEBUG then
				self.collectible = true;
			else
				self.collectible = false;
			end
		end
	}));

	-- Create Dynamic Groups Button
	tinsert(g, app.CreateRawText(L.CLICK_TO_CREATE_FORMAT:format(L.SETTINGS_MENU.DYNAMIC_CATEGORY_LABEL), {
		["icon"] = app.asset("Interface_CreateDynamic"),
		["OnUpdate"] = app.AlwaysShowUpdate,
		-- ["OnClick"] = function(row, button)
			-- could implement logic to auto-populate all dynamic groups like before... will see if people complain about individual generation
		-- end,
		-- Top-Level Dynamic Categories
		g = {
			-- Future Unobtainable
			app.CreateDynamicHeader("rwp", {
				dynamic_withsubgroups = true,
				dynamic_value = app.GameBuildVersion,
				dynamic_searchcriteria = {
					SearchValueCriteria = {
						-- only include 'rwp' search results where the value is >= the current game version
						function(o,field,value)
							local rwp = o[field]
							if not rwp then return end
							return rwp >= value
						end
					}
				},
				name = L.FUTURE_UNOBTAINABLE,
				description = L.FUTURE_UNOBTAINABLE_TOOLTIP,
				icon = app.asset("Interface_Future_Unobtainable")
			}),

			-- Recently Added
			app.CreateDynamicHeader("awp", {
				dynamic_value = app.GameBuildVersion,
				dynamic_withsubgroups = true,
				name = L.NEW_WITH_PATCH,
				description = L.NEW_WITH_PATCH_TOOLTIP,
				icon = app.asset("Interface_Newly_Added")
			}),

			-- Artifacts
			app.CreateDynamicHeader("artifactID", SimpleNPCGroup(app.HeaderConstants.ARTIFACTS)),

			-- Azerite Essences
			app.CreateDynamicHeader("azeriteessenceID", SimpleNPCGroup(app.HeaderConstants.AZERITE_ESSENCES)),

			-- Battle Pets
			app.CreateDynamicHeader("speciesID", {
				name = AUCTION_CATEGORY_BATTLE_PETS,
				icon = app.asset("Category_PetJournal")
			}),

			-- Character Unlocks
			app.CreateDynamicHeader("characterUnlock", {
				name = CHARACTER.." "..UNLOCK.."s",
				icon = app.asset("Category_ItemSets")
			}),

			-- Conduits
			app.CreateDynamicHeader("conduitID", SimpleNPCGroup(-981, {suffix=EXPANSION_NAME8})),

			-- Currencies
			app.CreateDynamicHeaderByValue("currencyID", {
				dynamic_withsubgroups = true,
				name = CURRENCY,
				icon = app.asset("Interface_Vendor")
			}),

			-- Factions
			app.CreateDynamicHeaderByValue("factionID", {
				dynamic_withsubgroups = true,
				name = L.FACTIONS,
				icon = app.asset("Category_Factions")
			}),

			-- Flight Paths
			app.CreateDynamicHeader("flightpathID", {
				name = L.FLIGHT_PATHS,
				icon = app.asset("Category_FlightPaths")
			}),

			-- Followers
			app.CreateDynamicHeader("followerID", SimpleNPCGroup(app.HeaderConstants.FOLLOWERS)),

			-- Garrison Buildings
			-- TODO: doesn't seem to work...
			-- app.CreateDynamicHeader("garrisonbuildingID", SimpleNPCGroup(app.HeaderConstants.BUILDINGS)),

			-- Heirlooms
			app.CreateDynamicHeader("heirloomID", SimpleNPCGroup(app.HeaderConstants.HEIRLOOMS)),

			-- Illusions
			app.CreateDynamicHeader("illusionID", {
				name = L.FILTER_ID_TYPES[103],
				icon = app.asset("Category_Illusions")
			}),

			-- Mounts
			app.CreateDynamicHeader("mountID", {
				name = MOUNTS,
				icon = app.asset("Category_Mounts")
			}),

			-- Mount Mods
			app.CreateDynamicHeader("mountmodID", SimpleNPCGroup(app.HeaderConstants.MOUNT_MODS)),

			-- Professions
			app.CreateDynamicHeaderByValue("professionID", {
				dynamic_withsubgroups = true,
				dynamic_valueField = "requireSkill",
				name = TRADE_SKILLS,
				icon = app.asset("Category_Professions")
			}),

			-- Runeforge Powers
			app.CreateDynamicHeader("runeforgepowerID", SimpleNPCGroup(app.HeaderConstants.LEGENDARIES, {suffix=EXPANSION_NAME8})),

			-- Titles
			app.CreateDynamicHeader("titleID", {
				name = PAPERDOLL_SIDEBAR_TITLES,
				icon = app.asset("Category_Titles")
			}),

			-- Toys
			app.CreateDynamicHeader("toyID", {
				name = TOY_BOX,
				icon = app.asset("Category_ToyBox")
			}),

			-- Various Quest groups
			app.CreateNPC(app.HeaderConstants.QUESTS, {
				visible = true,
				OnUpdate = app.AlwaysShowUpdate,
				g = {
					-- Breadcrumbs
					app.CreateDynamicHeader("isBreadcrumb", {
						name = L.BREADCRUMBS,
						icon = 134051
					}),

					-- Dailies
					app.CreateDynamicHeader("isDaily", {
						name = DAILY,
						icon = app.asset("Interface_Questd")
					}),

					-- Weeklies
					app.CreateDynamicHeader("isWeekly", {
						name = CALENDAR_REPEAT_WEEKLY,
						icon = app.asset("Interface_Questw")
					}),

					-- HQTs
					app.CreateDynamicHeader("isHQT", {
						name = MINIMAP_TRACKING_HIDDEN_QUESTS,
						icon = app.asset("Interface_Quest"),
					}),

					-- All Quests
					-- this works but..... bad idea instead use /att list type=quest limit=79000
					-- app.CreateDynamicHeaderByValue("questID", {
					-- 	dynamic_withsubgroups = true,
					-- 	name = QUESTS_LABEL,
					-- 	icon = app.asset("Interface_Quest_header")
					-- }),
				}
			}),

		},
	}));

	-- The Main Window's Data
	app.refreshDataForce = true;
	-- app.PrintMemoryUsage("Prime.Data Ready")
	local primeWindow = app:GetWindow("Prime");
	primeWindow:SetData(rootData);
	-- app.PrintMemoryUsage("Prime Window Data Set")
	primeWindow:BuildData();
	-- app.PrintMemoryUsage()
	-- app.PrintDebug("Begin Cache Prime")
	CacheFields(rootData);
	-- app.PrintDebugPrior("Ended Cache Prime")
	-- app.PrintMemoryUsage()

	-- Function to build a hidden window's data
	local AllHiddenWindows = {}
	local function BuildHiddenWindowData(name, icon, description, category, flags)
		if not app.Categories[category] then return end

		local windowData = app.CreateRawText(Colorize(name, flags and flags.Color or app.Colors.ChatLinkError), app.Categories[category])
		windowData.title = name .. DESCRIPTION_SEPARATOR .. app.Version
		windowData.icon = app.asset(icon)
		windowData.description = description
		windowData.font = "GameFontNormalLarge"
		for k, v in pairs(flags or app.EmptyTable) do
			windowData[k] = v
		end

		CacheFields(windowData, true)
		AllHiddenWindows[#AllHiddenWindows + 1] = windowData

		-- Filter for Never Implemented things
		if category == "NeverImplemented" then
			app.AssignFieldValue(windowData, "u", 1)
		end

		local window = app:GetWindow(category)
		window.AdHoc = true
		window:SetData(windowData)
		window:BuildData()
	end

	-- Build all the hidden window's data
	BuildHiddenWindowData(L.UNSORTED, "WindowIcon_Unsorted", L.UNSORTED_DESC, "Unsorted", { _missing = true, _unsorted = true, _nosearch = true })
	BuildHiddenWindowData(L.NEVER_IMPLEMENTED, "status-unobtainable", L.NEVER_IMPLEMENTED_DESC, "NeverImplemented", { _nyi = true, _nosearch = true })
	BuildHiddenWindowData(L.HIDDEN_ACHIEVEMENT_TRIGGERS, "Category_Achievements", L.HIDDEN_ACHIEVEMENT_TRIGGERS_DESC, "HiddenAchievementTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.HIDDEN_CURRENCY_TRIGGERS, "Interface_Vendor", L.HIDDEN_CURRENCY_TRIGGERS_DESC, "HiddenCurrencyTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.HIDDEN_QUEST_TRIGGERS, "Interface_Quest", L.HIDDEN_QUEST_TRIGGERS_DESC, "HiddenQuestTriggers", { _hqt = true, _nosearch = true, Color = app.Colors.ChatLinkHQT })
	BuildHiddenWindowData(L.SOURCELESS, "WindowIcon_Unsorted", L.SOURCELESS_DESC, "Sourceless", { _missing = true, _unsorted = true, _nosearch = true, Color = app.Colors.TooltipWarning })

	-- a single Unsorted window to collect all base Unsorted windows
	-- TODO: migrate this logic once Window creation is revised
	app.ChatCommands.Add("all-hidden", function(args)
		local window = app:GetWindow("all-hidden")
		if window and not window.HasPendingUpdate then window:Toggle() return true end

		-- local allHiddenSearch = app:BuildTargettedSearchResponse(AllUnsortedGroups, "_nosearch", true, nil, {ParentInclusionCriteria={},SearchCriteria={},SearchValueCriteria={}})

		local windowData = app.CreateRawText(Colorize("All-Hidden", app.Colors.ChatLinkError), {
			-- clone all unhidden groups into this window
			g = CreateObject(AllHiddenWindows),
			title = "All-Hidden" .. DESCRIPTION_SEPARATOR .. app.Version,
			icon = app.asset("status-unobtainable"),
			description = "All Hidden ATT Content",
			font = "GameFontNormalLarge",
			AdHoc = true
		})
		window:SetData(windowData)
		window:BuildData()
		window:Toggle()
		return true
	end, {
		"Usage : /att all-hidden",
		"Provides a single command to open all Hidden content in a single window",
	})

	-- StartCoroutine("VerifyRecursionUnsorted", function() app.VerifyCache(); end, 5);
	-- app.PrintDebug("Finished loading data cache")
	-- app.PrintMemoryUsage()
	app.GetDataCache = function()
		-- app.PrintDebug("Cached data cache")
		return rootData;
	end
	return rootData;
end

local LastSettingsChangeUpdate
local function CheckNewSettings()
	if LastSettingsChangeUpdate ~= app._SettingsRefresh then
		LastSettingsChangeUpdate = app._SettingsRefresh
		app.HandleEvent("OnRecalculate_NewSettings")
	end
end
app.AddEventHandler("OnRecalculateDone", CheckNewSettings)
local function ForceUpdateWindows()
	app.HandleEvent("OnUpdateWindows", true)
end
app.AddEventHandler("OnRecalculateDone", ForceUpdateWindows)
end	-- Dynamic/Main Data

do -- Search Response Logic
local IncludeUnavailableRecipes, IgnoreBoEFilter;
-- Set some logic which is used during recursion without needing to set it on every recurse
local function SetRescursiveFilters()
	IncludeUnavailableRecipes = not app.BuildSearchResponse_IgnoreUnavailableRecipes;
	IgnoreBoEFilter = app.Modules.Filter.SettingsFilters.IgnoreBoEFilter;
end
-- If/when this section becomes a module, set Module.SearchResponse.SearchNil instead
app.SearchNil = "zsxdcfawoidsajd"
local MainRoot
local ClonedHierarchyGroups = {};
local ClonedHierarachyMapping = {};
local SearchGroups = {};
local DropFields = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __SearchCriteria = {
	-- Include only non-sourceIgnored groups
	function(o) return not o.sourceIgnored end,
	-- Include unavailable Recipes or any content which is not a Recipe or meets the BoE filter
	function(o) return IncludeUnavailableRecipes or not o.spellID or IgnoreBoEFilter(o) end,
}
local SearchCriteria = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __SearchValueCriteria = {
	-- Include if the field of the group matches the desired value, or via translated requireSkill value matches
	function(o, field, value)
		local v = o[field]
		return v == value
			or (field == "requireSkill" and v and app.SkillDB.SpellToSkill[app.SpecializationSpellIDs[v] or 0] == value)
	end
}
local SearchValueCriteria = {}
-- A set of Criteria functions which must all be valid for each search result to be included in the response
local __ParentInclusionCriteria = {
	-- Exclude heirarchical parents which don't exist, or specify '_nosearch' or are 'sourceIgnored'
	function(parent)
		-- check the parent to see if this parent chain will be excluded
		if not parent then
			-- app.PrintDebug("Don't capture non-parented",group.text)
			return
		end
		if parent.sourceIgnored then
			-- app.PrintDebug("Don't capture SourceIgnored",group.text)
			return
		end
		if GetRelativeValue(parent, "_nosearch") then
			-- app.PrintDebug("Don't capture _nosearch",group.text)
			return
		end
		return true
	end
}
local ParentInclusionCriteria = {}
local function ResetCriterias(criteria)
	wipe(SearchCriteria)
	wipe(SearchValueCriteria)
	wipe(ParentInclusionCriteria)
	if criteria and criteria.SearchCriteria then
		for _,f in ipairs(criteria.SearchCriteria) do
			SearchCriteria[#SearchCriteria + 1] = f
		end
	else
		for _,f in ipairs(__SearchCriteria) do
			SearchCriteria[#SearchCriteria + 1] = f
		end
	end
	if criteria and criteria.SearchValueCriteria then
		for _,f in ipairs(criteria.SearchValueCriteria) do
			SearchValueCriteria[#SearchValueCriteria + 1] = f
		end
	else
		for _,f in ipairs(__SearchValueCriteria) do
			SearchValueCriteria[#SearchValueCriteria + 1] = f
		end
	end
	if criteria and criteria.ParentInclusionCriteria then
		for _,f in ipairs(criteria.ParentInclusionCriteria) do
			ParentInclusionCriteria[#ParentInclusionCriteria + 1] = f
		end
	else
		for _,f in ipairs(__ParentInclusionCriteria) do
			ParentInclusionCriteria[#ParentInclusionCriteria + 1] = f
		end
	end
end
local function Eval_SearchCriteria(o)
	for i=1,#SearchCriteria do
		if not SearchCriteria[i](o) then return end
	end
	return true
end
local function Eval_SearchValueCriteria(o, field, value)
	for i=1,#SearchValueCriteria do
		if not SearchValueCriteria[i](o, field, value) then return end
	end
	return true
end
local function Eval_ParentInclusionCriteria(o)
	for i=1,#ParentInclusionCriteria do
		if not ParentInclusionCriteria[i](o) then return end
	end
	return true
end
-- Wraps a given object such that it can act as an unfiltered Header of the base group
local CreateWrapFilterHeader = app.CreateVisualHeaderWithGroups
local function CloneGroupIntoHeirarchy(group)
	local groupCopy = CreateWrapFilterHeader(group);
	ClonedHierarachyMapping[group] = groupCopy;
	return groupCopy;
end
-- Finds existing clone of the parent group, or clones the group into the proper clone hierarchy
local function MatchOrCloneParentInHierarchy(group)
	if group then
		-- already cloned group, return the clone
		local groupCopy = ClonedHierarachyMapping[group];
		if groupCopy then return groupCopy; end

		-- check the parent to see if this parent chain will be excluded
		local parent = group.parent;
		if not Eval_ParentInclusionCriteria(parent) then return end

		-- is this a top-level group?
		if parent == MainRoot then
			-- app.PrintDebug("Added top cloned parent",groupCopy.text)
			groupCopy = CloneGroupIntoHeirarchy(group);
			tinsert(ClonedHierarchyGroups, groupCopy);
			return groupCopy;
		else
			-- need to clone and attach this group to its cloned parent
			local clonedParent = MatchOrCloneParentInHierarchy(parent);
			if not clonedParent then return; end
			groupCopy = CloneGroupIntoHeirarchy(group);
			NestObject(clonedParent, groupCopy);
			-- tinsert(clonedParent.g, groupCopy);
			return groupCopy;
		end
	end
end
-- Builds ClonedHierarchyGroups from an array of Sourced groups
local function BuildClonedHierarchy(sources)
	-- app.PrintDebug("BSR:Sourced",sources and #sources)
	if not sources then return ClonedHierarchyGroups; end
	local parent, thing;
	-- for each source of each Thing with the value
	for _,source in ipairs(sources) do
		if Eval_SearchCriteria(source) then
			-- find/clone the expected parent group in hierachy
			parent = MatchOrCloneParentInHierarchy(source.parent);
			if parent then
				-- clone the Thing into the cloned parent
				thing = DropFields.g and CreateObject(source, true) or CreateObject(source);
				-- don't copy in any extra data for the thing which can pull things into groups, or reference other groups
				if DropFields.sym then thing.sym = nil; end
				thing.sourceParent = nil;
				-- need to map the cloned Thing also since it may end up being a parent of another Thing
				ClonedHierarachyMapping[source] = thing;
				NestObject(parent, thing);
			end
		end
	end
end
-- Recursively collects all groups which have the specified field existing
local function AddSearchGroupsByField(groups, field)
	if groups then
		for _,group in ipairs(groups) do
			if group[field] ~= nil then
				tinsert(SearchGroups, group);
			else
				AddSearchGroupsByField(group.g, field);
			end
		end
	end
end
-- Recursively collects all groups which have the specified field=value
local function AddSearchGroupsByFieldValue(groups, field, value)
	if groups then
		for _,group in ipairs(groups) do
			if Eval_SearchValueCriteria(group, field, value) then
				tinsert(SearchGroups, group);
			else
				AddSearchGroupsByFieldValue(group.g, field, value);
			end
		end
	end
end
-- Builds ClonedHierarchyGroups from the cached container using groups which match a particular key and value
local function BuildSearchResponseViaCacheContainer(cacheContainer, value)
	-- app.PrintDebug("BSR:Cached",value)
	if cacheContainer then
		if value then
			local sources = cacheContainer[value];
			BuildClonedHierarchy(sources);
		else
			for id,sources in pairs(cacheContainer) do
				-- each Thing's Sources need to be built
				BuildClonedHierarchy(sources);
			end
		end
	end
end
-- Collects a cloned hierarchy of groups which have the field and/or value within the given field. Specify 'clear' if found groups which match
-- should additionally clear their contents when being cloned
function app:BuildSearchResponse(field, value, drop, criteria)
	return app:BuildTargettedSearchResponse(app:GetDataCache(), field, value, drop, criteria)
end
-- Collects a cloned hierarchy of groups within the given target 'groups' which have the field and/or value within the given field. Specify 'clear' if found groups which match
-- should additionally clear their contents when being cloned
function app:BuildTargettedSearchResponse(groups, field, value, drop, criteria)
	if not groups then return end
	if groups.g then groups = groups.g end
	if #groups == 0 then app.PrintDebug("BuildTargettedSearchResponse.FAIL - No groups available") return end
	MainRoot = app:GetDataCache()
	if not MainRoot then app.PrintDebug("BuildTargettedSearchResponse.FAIL - No MainRoot available") return end
	-- make sure each set of search results goes into a new container
	-- otherwise two searches within the same window will replace the first set
	ClonedHierarchyGroups = {}
	wipe(ClonedHierarachyMapping);
	wipe(SearchGroups);
	wipe(DropFields)
	-- by default always drop 'sym' from results
	DropFields.sym = true
	if drop then
		for k,v in pairs(drop) do
			DropFields[k] = v
		end
	end

	SetRescursiveFilters();
	-- add custom Criterias from external param
	ResetCriterias(criteria)
	-- app.PrintDebug("BSR:",field,value)
	-- app.PrintTable(DropFields)
	-- app.PrintTable(criteria)
	-- app.PrintTable(SearchCriteria)
	-- app.PrintTable(SearchValueCriteria)
	-- can only do cache searches if there isn't custom criteria provided
	local cacheContainer = not criteria and app.GetRawFieldContainer(field);
	if cacheContainer then
		BuildSearchResponseViaCacheContainer(cacheContainer, value);
	elseif value ~= nil then
		-- allow searching specifically for a nil field
		if value == app.SearchNil then
			value = nil;
		end
		-- app.PrintDebug("BSR:FieldValue",#groups,field,value)
		AddSearchGroupsByFieldValue(groups, field, value);
		BuildClonedHierarchy(SearchGroups);
	else
		-- app.PrintDebug("BSR:Field",#groups,field)
		AddSearchGroupsByField(groups, field);
		BuildClonedHierarchy(SearchGroups);
	end
	return ClonedHierarchyGroups;
end
end -- Search Response Logic

-- Store the Custom Windows Update functions which are required by specific Windows
(function()
local customWindowUpdates = { params = {} };
-- Returns the Custom Update function based on the Window suffix if existing
function app:CustomWindowUpdate(suffix)
	return customWindowUpdates[suffix];
end
-- Retrieves the value of the specific attribute for the given window suffix
app.GetCustomWindowParam = function(suffix, name)
	local params = customWindowUpdates.params[suffix];
	-- app.PrintDebug("GetCustomWindowParam",suffix,name,params and params[name])
	return params and params[name] or nil;
end
-- Defines the value of the specific attribute for the given window suffix
app.SetCustomWindowParam = function(suffix, name, value)
	local params = customWindowUpdates.params;
	if params[suffix] then params[suffix][name] = value;
	else params[suffix] = { [name] = value } end
	-- app.PrintDebug("SetCustomWindowParam",suffix,name,params[suffix][name])
end
-- Removes the custom attributes for a given window suffix
app.ResetCustomWindowParam = function(suffix)
	customWindowUpdates.params[suffix] = nil;
	-- app.PrintDebug("ResetCustomWindowParam",suffix)
end
-- Allows externally adding custom window update logic which doesn't exist already
app.AddCustomWindowOnUpdate = function(customName, onUpdate)
	if customWindowUpdates[customName] then
		app.print("Cannot replace Custom Window: "..customName)
	end
	app.print("Added",customName)
	customWindowUpdates[customName] = onUpdate
end
customWindowUpdates.AchievementHarvester = function(self, ...)
	-- /run AllTheThings:GetWindow("AchievementHarvester"):Toggle();
	if self:IsVisible() then
		if not self.initialized then
			self.doesOwnUpdate = true;
			self.initialized = true;
			self.Limit = 45000;	-- MissingAchievements:11.0.0.54774 (maximum achievementID)
			self.PartitionSize = 5000;
			local db = {};
			local CleanUpHarvests = function()
				local g, partition, pg, pgcount, refresh = self.data.g, nil, nil, nil, nil;
				local count = g and #g or 0;
				if count > 0 then
					for p=count,1,-1 do
						partition = g[p];
						if partition.g and partition.expanded then
							refresh = true;
							pg = partition.g;
							pgcount = #pg;
							-- print("UpdateDone.Partition",partition.text,pgcount)
							if pgcount > 0 then
								for i=pgcount,1,-1 do
									if pg[i].collected then
										-- item harvested, so remove it
										-- print("remove",pg[i].text)
										tremove(pg, i);
									end
								end
							else
								-- empty partition, so remove it
								tremove(g, p);
							end
						end
					end
					if refresh then
						-- refresh the window again
						self:BaseUpdate();
					else
						-- otherwise stop until a group is expanded again
						self.UpdateDone = nil;
					end
				end
			end;
			-- add a bunch of raw, delay-loaded items in order into the window
			local groupCount = math_floor(self.Limit / self.PartitionSize);
			local g, overrides = {}, {visible=true};
			local partition, partitionStart, partitionGroups;
			local dlo, obj = app.DelayLoadedObject, app.CreateAchievementHarvester;
			for j=0,groupCount,1 do
				partitionStart = j * self.PartitionSize;
				partitionGroups = {};
				-- define a sub-group for a range of quests
				partition = {
					["text"] = tostring(partitionStart + 1).."+",
					["icon"] = app.asset("Interface_Quest_header"),
					["visible"] = true,
					["OnClick"] = function(row, button)
						-- assign the clean up method now that the group was clicked
						self.UpdateDone = CleanUpHarvests;
						-- no return so that it acts like a normal row
					end,
					["g"] = partitionGroups,
				};
				for i=1,self.PartitionSize,1 do
					tinsert(partitionGroups, dlo(obj, "text", overrides, partitionStart + i));
				end
				tinsert(g, partition);
			end
			db.g = g;
			db.text = "Achievement Harvester";
			db.icon = app.asset("WindowIcon_RaidAssistant");
			db.description = "This is a contribution debug tool. NOT intended to be used by the majority of the player base.\n\nExpand a group to harvest the 1,000 Achievements within that range.";
			db.visible = true;
			db.back = 1;
			self:SetData(db);
		end
		self:BaseUpdate(true);
	end
end;
local function RoundNumber(number, decimalPlaces)
	local ret;
	if number < 60 then
		ret = number .. " second(s)";
	else
		ret = (("%%.%df"):format(decimalPlaces)):format(number/60) .. " minute(s)";
	end
	return ret;
end
customWindowUpdates.AuctionData = function(self)
	if not self.initialized then
		local C_AuctionHouse_ReplicateItems = C_AuctionHouse.ReplicateItems;
		self.initialized = true;
		self:SetData({
			["text"] = "Auction Module",
			["visible"] = true,
			["back"] = 1,
			["icon"] = 133784,
			["description"] = "This is a debug window for all of the auction data that was returned. Turn on 'Account Mode' to show items usable on any character on your account!",
			["options"] = {
				{
					["text"] = "Wipe Scan Data",
					["icon"] = 2065582,
					["description"] = "Click this button to wipe out all of the previous scan data.",
					["visible"] = true,
					["priority"] = -4,
					["OnClick"] = function()
						if AllTheThingsAuctionData then
							local window = app:GetWindow("AuctionData");
							wipe(AllTheThingsAuctionData);
							wipe(window.data.g);
							for i,option in ipairs(window.data.options) do
								tinsert(window.data.g, option);
							end
							window:Update();
						end
					end,
					['OnUpdate'] = function(data)
						local window = app:GetWindow("AuctionData");
						data.visible = #window.data.g > #window.data.options;
						return true;
					end,
				},
				{
					["text"] = "Scan or Load Last Save",
					["icon"] = 1100023,
					["description"] = "Click this button to perform a full scan of the auction house or load the last scan conducted within 15 minutes. The game may or may not freeze depending on the size of your auction house.\n\nData should populate automatically.",
					["visible"] = true,
					["priority"] = -3,
					["OnClick"] = function()
						if AucAdvanced and AucAdvanced.API then AucAdvanced.API.CompatibilityMode(1, ""); end

						-- Only allow a scan once every 15 minutes.
						local cooldown = self.AuctionScanCooldownTime or 0;
						local now = time();
						if cooldown - now < 0 then
							self.AuctionScanCooldownTime = now + 900;
							app.AuctionFrame:RegisterEvent("REPLICATE_ITEM_LIST_UPDATE");
							C_AuctionHouse_ReplicateItems();
						else
							app.print(": Throttled scan! Please wait " .. RoundNumber(cooldown - now, 0) .. " before running another. Loading last save instead...");
							StartCoroutine("ProcessAuctionData", app.ProcessAuctionData, 1);
						end
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				},
				{
					["text"] = "Toggle Debug Mode",
					["icon"] = 134521,
					["description"] = "Click this button to toggle debug mode to show everything regardless of filters!",
					["visible"] = true,
					["priority"] = -2,
					["OnClick"] = function()
						app.Settings:ToggleDebugMode();
					end,
					['OnUpdate'] = function(data)
						data.visible = true;
						if app.MODE_DEBUG then
							-- Novaplane made me do it
							data.trackable = true;
							data.saved = true;
						else
							data.trackable = nil;
							data.saved = nil;
						end
						return true;
					end,
				},
				{
					["text"] = "Toggle Account Mode",
					["icon"] = 413583,
					["description"] = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.",
					["visible"] = true,
					["priority"] = -1,
					["OnClick"] = function()
						app.Settings:ToggleAccountMode();
					end,
					['OnUpdate'] = function(data)
						data.visible = true;
						if app.MODE_ACCOUNT then
							data.trackable = true;
							data.saved = true;
						else
							data.trackable = nil;
							data.saved = nil;
						end
						return true;
					end,
				},
				{
					["text"] = "Toggle Faction Mode",
					["icon"] = 134932,
					["description"] = "Click this button to toggle faction mode to show everything for your faction!",
					["visible"] = true,
					["OnClick"] = function()
						app.Settings:ToggleFactionMode();
					end,
					['OnUpdate'] = function(data)
						if app.MODE_DEBUG or not app.MODE_ACCOUNT then
							data.visible = false;
						else
							data.visible = true;
							if app.Settings:Get("FactionMode") then
								data.trackable = true;
								data.saved = true;
							else
								data.trackable = nil;
								data.saved = nil;
							end
						end
						return true;
					end,
				},
				{
					["text"] = "Toggle Unobtainable Items",
					["icon"] = 135767,
					["description"] = "Click this button to see currently unobtainable items in the auction data.",
					["visible"] = true,
					["priority"] = 0,
					["OnClick"] = function()
						local show = not app.Settings:GetValue("Unobtainable", 7);
						app.Settings:SetValue("Unobtainable", 7, show);
						for k,v in pairs(L.PHASES) do
							if v.state < 4 then
								if k ~= 7 then
									app.Settings:SetValue("Unobtainable", k, show);
								end
							end
						end
						app.Settings:Refresh();
						-- TODO: use events
						-- app:RefreshData();
					end,
					['OnUpdate'] = function(data)
						data.visible = true;
						if app.Settings:GetValue("Unobtainable", 7) then
							data.trackable = true;
							data.saved = true;
						else
							data.trackable = nil;
							data.saved = nil;
						end
						return true;
					end,
				},
			},
			["g"] = {}
		});
		for i,option in ipairs(self.data.options) do
			tinsert(self.data.g, option);
		end
	end

	-- Update the window and all of its row data
	self.data.progress = 0;
	self.data.total = 0;
	self.data.indent = 0;
	self.data.back = 1;
	AssignChildren(self.data);
	app.TopLevelUpdateGroup(self.data);
	self.data.visible = true;
	self:BaseUpdate(true);
end;
customWindowUpdates.Bounty = function(self, force, got)
	if not self.initialized then
		self.initialized = true;
		local autoOpen = app.CreateToggle("openAuto", {
			["text"] = L.OPEN_AUTOMATICALLY,
			["icon"] = 134327,
			["description"] = L.OPEN_AUTOMATICALLY_DESC,
			["visible"] = true,
			["OnUpdate"] = app.AlwaysShowUpdate,
			["OnClickHandler"] = function(toggle)
				app.Settings:SetTooltipSetting("Auto:BountyList", toggle);
				self:BaseUpdate(true, got);
			end,
		});
		local header = app.CreateNPC(app.HeaderConstants.UI_BOUNTY_WINDOW, {
			['visible'] = true,
			["g"] = {
				autoOpen,
			},
		});
		-- add bounty content
		-- TODO: This window pulls its data manually, there should be a key for bounty.
		-- Update this when we merge over Classic's extended window logic.
		-- NOTE: Everything we want is current marked with a u value of 45, so why not just pull that in? :)
		NestObjects(header, {
			app.CreateNPC(app.HeaderConstants.RARES, {
				app.CreateNPC(87622, {	-- Ogom the Mangler
					['g'] = {
						app.CreateItemSource(67041, 119366),
					},
				}),
			}),
			app.CreateNPC(app.HeaderConstants.ZONE_DROPS, {
				["description"] = "These items were likely not readded with 10.1.7 or their source is currently unknown.",
				["g"] = {
					app.CreateItemSource(85, 778),	-- Kobold Excavation Pick
					app.CreateItemSource(1932, 4951),	-- Squeeler's Belt
					app.CreateItem(1462),	-- Ring of the Shadow
					app.CreateItem(1404),	-- Tidal Charm
				},
			}),
		});
		self:SetData(header);
		AssignChildren(self.data);
		self.rawData = {};
		local function RefreshBounties()
			if #self.data.g > 1 and app.Settings:GetTooltipSetting("Auto:BountyList") then
				autoOpen.saved = true;
				self:SetVisible(true);
			end
		end
		self:SetScript("OnEvent", function(self, e, ...)
			if select(1, ...) == appName then
				self:UnregisterEvent("ADDON_LOADED");
				Callback(RefreshBounties);
			end
		end);
		self:RegisterEvent("ADDON_LOADED");
	end
	if self:IsVisible() then
		-- Update the window and all of its row data
		self.data.back = 1;
		self:BaseUpdate(true, got);
	end
end;
customWindowUpdates.CosmicInfuser = function(self, force)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			force = true;
			local g = {};
			local rootData = {
				text = "Cosmic Infuser",
				icon = app.asset("Category_Zones"),
				description = "This window helps debug when we're missing map IDs in the addon.",
				OnUpdate = app.AlwaysShowUpdate,
				back = 1,
				indent = 0,
				visible = true,
				expanded = true,
				g = g,
			};

			-- Cache all maps by their ID number, starting with maps we reference in our DB.
			local mapsByID = {};
			for mapID,_ in pairs(app.SearchForFieldContainer("mapID")) do
				if not mapsByID[mapID] then
					local mapObject = app.CreateMap(mapID, {
						mapInfo = C_Map_GetMapInfo(mapID),
						collectible = true,
						collected = true
					});
					mapsByID[mapID] = mapObject;
					mapObject.g = {};	-- Doing this prevents the CreateMap function from creating an exploration header.
				end
			end

			-- Go through all of the possible maps, including only maps that have C_Map data.
			for mapID=1,10000,1 do
				if not mapsByID[mapID] then
					local mapInfo = C_Map_GetMapInfo(mapID);
					if mapInfo then
						local mapObject = app.CreateMap(mapID, {
							mapInfo = mapInfo,
							collectible = true,
							collected = false
						});
						mapsByID[mapID] = mapObject;
						mapObject.g = {};	-- Doing this prevents the CreateMap function from creating an exploration header.
					end
				end
			end

			-- Iterate through the maps we have cached, determine their parents and link them together.
			-- Also push them on to the stack.
			for mapID,mapObject in pairs(mapsByID) do
				local parent = rootData;
				if mapObject.mapInfo then
					local parentMapID = mapObject.mapInfo.parentMapID;
					if parentMapID and parentMapID > 0 then
						local parentMapObject = mapsByID[parentMapID];
						if parentMapObject then
							parent = parentMapObject;
						else
							print("Failed to find parent map in the mapsByID table!", parentMapID);
						end
					end
				end
				mapObject.parent = parent;
				tinsert(parent.g, mapObject);
			end

			-- Sort the maps by number of relative maps, then by name if matching.
			app.Sort(g, function(a, b)
				local aSize, bSize = #a.g, #b.g;
				if aSize > bSize then
					return true;
				elseif bSize == aSize then
					return b.name > a.name;
				else
					return false;
				end
			end, true);

			-- Now finally, clear out unused gs.
			for i,mapObject in ipairs(g) do
				if #mapObject.g < 1 then
					mapObject.g = nil;
				end
			end

			self:SetData(rootData);
		end

		-- Update the window and all of its row data
		self:BaseUpdate(force);
	end
end;
customWindowUpdates.CurrentInstance = function(self, force, got)
	-- app.PrintDebug("CurrentInstance:Update",force,got)
	if not self.initialized then
		force = true;
		self.initialized = true;
		self.CurrentMaps = {};
		self.mapID = -1;
		self.IsSameMapID = function(self)
			return self.CurrentMaps[self.mapID];
		end
		self.SetMapID = function(self, mapID)
			-- app.PrintDebug("SetMapID",mapID)
			self.mapID = mapID;
			self:SetVisible(true);
			self:Update();
		end
		-- local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;

		-- Wraps a given object such that it can act as an unfiltered Header of the base group
		local CreateWrapVisualHeader = app.CreateVisualHeaderWithGroups
		-- Returns the consolidated data format for the next header level
		-- Headers are forced not collectible, and will have their content sorted, and can be copied from the existing Source header
		local function CreateHeaderData(group, header)
			-- copy an uncollectible version of the existing header
			if header then
				header = CreateWrapVisualHeader(header, {group})
				header.SortType = "name"
				return header
			else
				return { g = { group }, ["collectible"] = false, SortType = "name" };
			end
		end
		-- set of keys for headers which can be nested in the minilist automatically, but not confined to a direct top header
		local subGroupKeys = {
			"filterID",
			"professionID",
			"raceID",
			"eventID",
			"instanceID",
			"achievementID",
		};
		-- set of keys for headers which can be nested in the minilist within an Instance automatically, but not confined to a direct top header
		local subGroupInstanceKeys = {
			"filterID",
			"professionID",
			"raceID",
			"eventID",
			"achievementID",
		};
		-- Headers possible in a hierarchy that should just be ignored
		local ignoredHeaders = app.HeaderData.IGNOREINMINILIST or app.EmptyTable;

		local function BuildDiscordMapInfoTable(id, mapInfo)
			-- Builds a table to be used in the SetupReportDialog to display text which is copied into Discord for player reports
			mapInfo = mapInfo or C_Map_GetMapInfo(id)
			local info = {
				"### missing-map"..":"..id,
				"```elixir",	-- discord fancy box start
				"L:"..app.Level.." R:"..app.RaceID.." ("..app.Race..") C:"..app.ClassIndex.." ("..app.Class..")",
				id and ("mapID:"..id.." ("..(mapInfo.name or ("Map ID #" .. id))..")") or "mapID:??",
			};

			local mapID = mapInfo.parentMapID
			while mapID do
				mapInfo = C_Map_GetMapInfo(mapID)
				if mapInfo then
					tinsert(info, "> parentMapID:"..mapID.." ("..(mapInfo.name or "??")..")")
					mapID = mapInfo.parentMapID;
				else break
				end
			end

			local position, coord = id and C_Map.GetPlayerMapPosition(id, "player"), nil;
			if position then
				local x,y = position:GetXY();
				coord = (math_floor(x * 1000) / 10) .. ", " .. (math_floor(y * 1000) / 10);
			end
			tinsert(info, coord and ("coord:"..coord) or "coord:??");

			if app.GameBuildVersion >= 100000 then	-- Only include this after Dragonflight
				local acctUnlocks = {
					IsQuestFlaggedCompleted(72366) and "DF_CA" or "N",	-- Dragonflight Campaign Complete
					IsQuestFlaggedCompleted(75658) and "DF_ZC" or "N",	-- Dragonflight Zaralek Caverns Complete
					IsQuestFlaggedCompleted(79573) and "WW_CA" or "N",	-- The War Within Campaign Complete
				}
				tinsert(info, "unlocks:"..app.TableConcat(acctUnlocks, nil, nil, "/"))
			end
			tinsert(info, "lq:"..(app.TableConcat(app.MostRecentQuestTurnIns or app.EmptyTable, nil, nil, "<") or ""));

			local inInstance, instanceType = IsInInstance()
			tinsert(info, "instance:"..(inInstance and "true" or "false")..":"..(instanceType or ""))
			tinsert(info, "ver:"..app.Version);
			tinsert(info, "build:"..app.GameBuildVersion);
			tinsert(info, "```");	-- discord fancy box end
			return info
		end

		(function()
		local results, groups, nested, header, headerKeys, difficultyID, nextParent, headerID, isInInstance
		local rootGroups, mapGroups = {}, {};

		self.MapCache = setmetatable({}, { __mode = "kv" })
		local function TrySwapFromCache()
			-- window to keep cached maps/not re-build & update them
			local expired = GetTimePreciseSec() - 60
			for mapID,mapData in pairs(self.MapCache) do
				-- app.PrintDebug("Check expired cached map",mapID,mapData._lastshown,expired)
				if mapData._lastshown < expired then
					-- app.PrintDebug("Removed cached map",mapID,mapData._lastshown,expired)
					self.MapCache[mapID] = nil
				end
			end
			local mapID = self.mapID
			header = self.MapCache[mapID]
			if not header then return end
			if not header._maps[mapID] then
				-- app.PrintDebug("cache maps cleared! rebuild new for",mapID)
				self.MapCache[mapID] = nil
				return
			end
			-- app.PrintDebug("Loaded cached Map",mapID)
			header._lastshown = GetTimePreciseSec()
			self:SetData(header)
			self.CurrentMaps = header._maps
			-- app.PrintTable(self.CurrentMaps)
			-- Reset the Fill if needed
			if not header._fillcomplete then
				-- app.PrintDebug("Re-fill cached Map",mapID)
				app.SetSkipLevel(2);
				app.FillGroups(header);
				app.SetSkipLevel(0);
			end
			Callback(self.Update, self);
			return true
		end

		app.AddEventHandler("OnSettingsNeedsRefresh", function()
			-- if settings change that requrie refresh, wipe cached maps
			wipe(self.MapCache)
		end)

		self.Rebuild = function(self)
			-- Reset the minilist Runner before building new data
			self:GetRunner().Reset()

			if TrySwapFromCache() then return end
			-- app.PrintDebug("Rebuild",self.mapID);
			local currentMaps, mapID = {}, self.mapID

			-- Get all results for this map, without any results that have been cloned into Source Ignored groups or are under Unsorted
			results = CleanInheritingGroups(SearchForField("mapID", mapID), "sourceIgnored");
			-- app.PrintDebug("Rebuild#",#results);
			if results and #results > 0 then

				-- I tend to like this way of finding sub-maps, but it does mean we rely on Blizzard and get whatever maps they happen to claim
				-- are children of a given map... sometimes has weird results like scenarios during quests being considered children in
				-- other zones. Since it can give us special top-level maps (Anniversary AV) also as children of other top-level maps (Hillsbarad)
				-- we would need to filter the results and add them properly into the results below via sub-groups if they are maps themselves
				-- local submapinfos = ArrayAppend(C_Map_GetMapChildrenInfo(mapID, 5), C_Map_GetMapChildrenInfo(mapID, 6))
				-- if submapinfos then
					-- for _,mapInfo in ipairs(submapinfos) do
						-- subresults = CleanInheritingGroups(SearchForField("mapID", mapInfo.mapID), "sourceIgnored")
						-- app.PrintDebug("Adding Sub-Map Results:",mapInfo.mapID,mapInfo.mapType,#subresults)
						-- results = ArrayAppend(results, subresults)
					-- end
				-- end
				-- See if there are any sub-maps we should also include by way of the 'maps' field on the 'real' map for this id
				local rootMap
				for _,result in ipairs(results) do
					if result.key == "mapID" and result.mapID == mapID then
						rootMap = result
						break;
					end
				end
				if rootMap and rootMap.maps then
					local subresults
					for _,subMapID in ipairs(rootMap.maps) do
						if subMapID ~= mapID then
							subresults = CleanInheritingGroups(SearchForField("mapID", subMapID), "sourceIgnored")
							-- app.PrintDebug("Adding Sub-Map Results:",subMapID,#subresults)
							results = ArrayAppend(results, subresults)
						end
					end
				end
				-- Simplify the returned groups
				groups = {};
				wipe(rootGroups);
				wipe(mapGroups);
				header = { mapID = mapID, g = groups }
				currentMaps[mapID] = true;
				isInInstance = IsInInstance();
				headerKeys = isInInstance and subGroupInstanceKeys or subGroupKeys;
				-- split search results by whether they represent the 'root' of the minilist or some other mapped content
				for _,group in ipairs(results) do
					-- do not use any raw Source groups in the final list
					group = CreateObject(group);
					-- Instance/Map/Class/Header(of current map) groups are allowed as root of minilist
					if (group.instanceID or (group.mapID and (group.key == "mapID" or (group.key == "headerID" and group.mapID == mapID))) or group.key == "classID")
						-- and actually match this minilist...
						-- only if this group mapID matches the minilist mapID directly or by maps
						and (group.mapID == mapID or (group.maps and contains(group.maps, mapID))) then
						rootGroups[#rootGroups + 1] = group
					else
						mapGroups[#mapGroups + 1] = group
					end
				end
				-- first merge all root groups into the list
				for _,group in ipairs(rootGroups) do
					if group.maps then
						for _,m in ipairs(group.maps) do
							currentMaps[m] = true;
						end
					end
					-- app.PrintDebug("Merge as Root",group.hash)
					MergeProperties(header, group, true);
					NestObjects(header, group.g);
				end
				-- then merge all mapped groups into the list
				for _,group in ipairs(mapGroups) do
					-- app.PrintDebug("Mapping:",app:SearchLink(group))
					nested = nil;

					-- Get the header chain for the group
					nextParent = group.parent;

					-- Cache the difficultyID, if there is one and we are in an actual instance where the group is being mapped
					difficultyID = isInInstance and GetRelativeValue(nextParent, "difficultyID");

					-- Building the header chain for each mapped Thing
					while nextParent do
						headerID = nextParent.headerID
						if headerID then
							-- all Headers implicitly are allowed as visual headers in minilist unless explicitly ignored
							if not ignoredHeaders[headerID] then
								group = CreateHeaderData(group, nextParent);
								nested = true;
							end
						elseif nextParent.isMinilistHeader then
							group = CreateHeaderData(group, nextParent);
							nested = true;
						else
							for _,hkey in ipairs(headerKeys) do
								if nextParent[hkey] then
									-- create the specified group Type header
									group = CreateHeaderData(group, nextParent);
									nested = true;
									break;
								end
							end
						end
						nextParent = nextParent.parent;
					end

					-- really really special cases...
					-- Battle Pets get an additional raw Filter nesting
					if not nested and group.key == "speciesID" then
						group = app.CreateFilter(101, CreateHeaderData(group));
					end

					-- If relative to a difficultyID, then merge it into one.
					if difficultyID then group = app.CreateDifficulty(difficultyID, { g = { group } }); end
					-- app.PrintDebug("Merge as Mapped:",app:SearchLink(group))
					MergeObject(groups, group);
				end

				if #rootGroups == 0 then
					-- if only one group in the map root, then shift it up as the map root instead
					local headerGroups = header.g;
					if #headerGroups == 1 then
						header.g = nil;
						MergeProperties(header, headerGroups[1], true);
						NestObjects(header, headerGroups[1].g);
					else
						app.PrintDebug("No root Map groups!",mapID)
					end
				end

				header.u = nil;
				header.e = nil;
				if header.instanceID then
					header = app.CreateInstance(header.instanceID, header);
				else
					if header.classID then
						header = app.CreateCharacterClass(header.classID, header);
					else
						header = app.CreateMap(header.mapID, header);
					end
					-- sort top level by name if not in an instance
					header.SortType = "Global";
				end

				-- Swap out the map data for the header.
				self:SetData(header);
				header._maps = currentMaps
				header._lastshown = GetTimePreciseSec()
				-- app.PrintDebug("Saved cached Map",mapID,header._lastshown)
				self.MapCache[mapID] = header
				-- Fill up the groups that need to be filled!
				app.SetSkipLevel(2);
				app.FillGroups(header);
				app.SetSkipLevel(0);

				local expanded;
				-- if enabled, minimize rows based on difficulty
				local difficultyID = app.GetCurrentDifficultyID();
				if app.Settings:GetTooltipSetting("Expand:Difficulty") then
					if difficultyID and difficultyID > 0 and header.g then
						for _,row in ipairs(header.g) do
							if row.difficultyID or row.difficulties then
								if (row.difficultyID or -1) == difficultyID or (row.difficulties and containsValue(row.difficulties, difficultyID)) then
									if not row.expanded then
										ExpandGroupsRecursively(row, true, true);
										expanded = true;
									end
								elseif row.expanded then
									ExpandGroupsRecursively(row, false, true);
								end
							-- Zone Drops/Common Boss Drops should also be expanded within instances
							-- elseif row.headerID == app.HeaderConstants.ZONE_DROPS or row.headerID == app.HeaderConstants.COMMON_BOSS_DROPS then
							-- 	if not row.expanded then ExpandGroupsRecursively(row, true); expanded = true; end
							end
						end
						-- No difficulty found to expand, so just expand everything in the list once it is built
						if not expanded then
							self.ExpandInfo = { Expand = true };
							expanded = true;
						end
					end
				end

				self:BuildData();

				-- check to expand groups after they have been built and updated
				-- dont re-expand if the user has previously full-collapsed the minilist
				-- need to force expand if so since the groups haven't been updated yet
				if not expanded and not self.fullCollapsed then
					self.ExpandInfo = { Expand = true };
				end
				self.CurrentMaps = currentMaps;

				-- Make sure to scroll to the top when being rebuilt
				self.ScrollBar:SetValue(1);
			else
				-- If we don't have any data cached for this mapID and it exists in game, report it to the chat window.
				self.CurrentMaps = {[mapID]=true};
				local mapInfo = C_Map_GetMapInfo(mapID);
				if mapInfo then
					-- only report for mapIDs which actually exist
					mapID = self.mapID
					-- Linkify the output
					local popupID = "map-" .. mapID
					app:SetupReportDialog(popupID, "Missing Map: " .. mapID, BuildDiscordMapInfoTable(mapID, mapInfo))
					app.report(app:Linkify(app.Version.." (Click to Report) No data found for this Location!", app.Colors.ChatLinkError, "dialog:" .. popupID));
				end
				self:SetData(app.CreateMap(mapID, {
					["text"] = L.MINI_LIST .. " [" .. mapID .. "]",
					["icon"] = 237385,
					["description"] = L.MINI_LIST_DESC,
					["visible"] = true,
					["g"] = {
						{
							["text"] = L.UPDATE_LOCATION_NOW,
							["icon"] = 134269,
							["description"] = L.UPDATE_LOCATION_NOW_DESC,
							["OnClick"] = function(row, button)
								Callback(app.LocationTrigger)
								return true;
							end,
							["OnUpdate"] = app.AlwaysShowUpdate,
						},
					},
				}));
				self:BuildData();
			end
			-- app.PrintDebugPrior("RB-Done")
			return true;
		end
		end)()
		self.RefreshLocation = function(show)
			-- Acquire the new map ID.
			local mapID = app.CurrentMapID;
			-- app.PrintDebug("RefreshLocation",mapID)
			-- can't really do anything about this from here anymore
			if not mapID then return end
			-- don't auto-load minimap to anything higher than a 'Zone' if we are in an instance, unless it has no parent?
			if IsInInstance() then
				local mapInfo = app.CurrentMapInfo;
				if mapInfo and mapInfo.parentMapID and (mapInfo.mapType or 0) < 3 then
					-- app.PrintDebug("Don't load Large Maps in minilist")
					return;
				end
			end

			-- Cache that we're in the current map ID.
			-- app.PrintDebug("new map");
			self.mapID = mapID;
			if show then
				self:SetVisible(true)
			end
			-- force update when showing the minilist
			Callback(self.Update, self);
		end
	end
	if self:IsVisible() then
		-- Update the window and all of its row data
		if not self:IsSameMapID() then
			-- app.PrintDebug("Leaving map",self.data.mapID)
			self.data._lastshown = GetTimePreciseSec()
			force = self:Rebuild();
		else
			-- Update the mapID into the data for external reference in case not rebuilding
			self.data.mapID = self.mapID;
		end
		self:BaseUpdate(force, got);
	end
end;
customWindowUpdates.ItemFilter = function(self, force)
	if self:IsVisible() then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		if not self.initialized then
			self.initialized = true;

			function self:Clear()
				local temp = self.data.g[1];
				wipe(self.data.g);
				tinsert(self.data.g, temp);
			end

			function self:Search(field, value)
				value = value or true
				-- app.PrintDebug("Search",field,value)
				local results = app:BuildSearchResponse(field, value, {g=true});
				-- app.PrintDebug("Results",#results)
				ArrayAppend(self.data.g, results);
				self.data.text = L.ITEM_FILTER_TEXT..("  [%s=%s]"):format(field,tostring(value));
			end

			-- Item Filter
			local data = {
				['text'] = L.ITEM_FILTER_TEXT,
				['icon'] = app.asset("Category_ItemSets"),
				["description"] = L.ITEM_FILTER_DESCRIPTION,
				['visible'] = true,
				['back'] = 1,
				['g'] = {
					{
						['text'] = L.ITEM_FILTER_BUTTON_TEXT,
						['icon'] = 134246,
						['description'] = L.ITEM_FILTER_BUTTON_DESCRIPTION,
						['visible'] = true,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							app:ShowPopupDialogWithEditBox(L.ITEM_FILTER_POPUP_TEXT, "", function(input)
								local text = input:lower();
								local f = tonumber(text);
								if text ~= "" and tostring(f) ~= text then
									text = text:gsub("-", "%%-");
									-- app.PrintDebug("search match",text)
									-- The string form did not match, the filter must have been by name.
									for id,filter in pairs(L.FILTER_ID_TYPES) do
										if filter:lower():match(text) then
											f = tonumber(id);
											break;
										end
									end
								end

								self:Clear();

								if f then
									self:Search("f", f);
								else
									-- direct field search
									local field, value = ("="):split(input);
									value = tonumber(value) or value;
									if value and value ~= "" then
										-- allows performing a value search when looking for 'nil'
										if value == "nil" then
											value = app.SearchNil;
										-- use proper bool values if specified
										elseif value == "true" then
											value = true;
										elseif value == "false" then
											value = false;
										end
										self:Search(field, value);
									else
										self:Search(field);
									end
								end
								-- maybe local table of common fields from lowercase -> match

								self:BuildData();
								self:Update(true);
							end);
							return true;
						end,
					},
				},
			};

			self:SetData(data);
			self:BuildData();
		end

		self:BaseUpdate(force);
	end
end;
customWindowUpdates.NWP = function(self, force)
	if not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		self:SetData({
			["text"] = L.NEW_WITH_PATCH,
			["icon"] = app.asset("WindowIcon_RWP"),
			["description"] = L.NEW_WITH_PATCH_TOOLTIP,
			["visible"] = true,
			["back"] = 1,
			["g"] = app:BuildSearchResponse("awp", app.GameBuildVersion),
		});
		self:BuildData();
		self.ExpandInfo = { Expand = true, Manual = true };
	end
	if self:IsVisible() then
		self:BaseUpdate(force);
	end
end;
customWindowUpdates.awp = function(self, force)	-- TODO: Change this to remember window data of each expansion (param) and dont make new windows infinitely
	-- Patch Interface Build tables
	local CLASSIC = {10100,10200,10300,10400,10500,10600,10700,10800,10900,10903,11000,11100,11101,11102,11200,11201}
	-- Classic was using different build numbers originally, so these are made up to make a correct timeline search
	local TBC = {20001,20003,20005,20006,20007,20008,20010,20012,20100,20101,
	20102,20103,20200,20202,20203,20300,20302,20303,20400,20401,20402,20403}
	-- TBC Patch 2.0.10 and 2.0.12 did not have a valid build numbers, so these are made up to make a correct timeline search
	local WRATH = {30002,30003,30008,30100,30101,30102,30103,30200,30202,30300,30302,30303,30305}
	local CATA = {40001,40003,40006,40100,40200,40202,40300,40302}
	local MOP = {50004,50100,50200,50300,50400,50402,50407}
	local WOD = {60002,60003,60100,60102,60200,60202,60203,60204}
	local LEGION = {70003,70100,70105,70200,70205,70300,70302,70305}
	local BFA = {80001,80100,80105,80200,80205,80300,80307}
	local SL = {90001,90002,90005,90100,90105,90200,90205,90207}
	local DF = {100000,100002,100005,100007,100100,100105,100107,100200,100205,100206,100207}
	local TWW = {110000,110002,110005,110007}

	-- Locals
	local param = {}
	local foundExpansion = false
	local expansionHeader, patchString, majorVersion, middleDigits, lastDigits, formattedPatch

	-- Table to map expansion shortcuts to their respective parameters and headers
	local expansions = {
		classic = {param = CLASSIC, header = 1},
		tbc = {param = TBC, header = 2},
		wotlk = {param = WRATH, header = 3},
		cata = {param = CATA, header = 4},
		mop = {param = MOP, header = 5},
		wod = {param = WOD, header = 6},
		legion = {param = LEGION, header = 7},
		bfa = {param = BFA, header = 8},
		sl = {param = SL, header = 9},
		df = {param = DF, header = 10},
		tww = {param = TWW, header = 11}
	}

	-- Iterate over the expansions and check for the selected one
	for k, v in pairs(expansions) do
		if app.GetCustomWindowParam("awp", k) == true then
			param = v.param
			expansionHeader = v.header
			foundExpansion = true
			break
		end
	end

	-- If no expansion was found, print an error message
	if foundExpansion == false then
		app.print("Unknown expansion shortcut.")
		self:Hide();
	elseif not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		local function CreatePatches(patchTable)
			local patchBuild = {}
			for _, patch in ipairs(patchTable) do
				patchString = tostring(patch)
				if math.floor(patch / 10000) < 10 then	-- Before Dragonflight
					majorVersion = patchString:sub(1, 1)  -- "7"	-- Patch 7.x.x
					middleDigits = patchString:sub(2, 3)  -- "02"	-- Patch x.2.x
				else	-- After Dragonflight
					majorVersion = patchString:sub(1, 2)  -- "10"	-- Patch 10.x.x
					middleDigits = patchString:sub(3, 4)  -- "02"	-- Patch x.2.x
				end
				lastDigits = patchString:sub(-2)  -- "02"	-- Patch x.x.2
				formattedPatch = majorVersion .. "." .. middleDigits .. lastDigits
				-- Add the patch to the list
				table.insert(patchBuild, app.CreateExpansion(formattedPatch, {
					["g"] = app:BuildSearchResponse("awp", patch),
				}))
			end
			return patchBuild
		end
		local AWPwindow = {
			text = L.ADDED_WITH_PATCH,
			icon = 135769,
			description = L.ADDED_WITH_PATCH_TOOLTIP,
			visible = true,
			back = 1,
			g = {
				app.CreateExpansion(expansionHeader, {
					["g"] = CreatePatches(param),
				}),
			},
		};
		self:SetData(AWPwindow);
		self:BuildData();
	end
	if self:IsVisible() then
		self:BaseUpdate(force);
	end
end;
customWindowUpdates.Prime = function(self, ...)
	self:BaseUpdate(...);

	-- Write the current character's progress.
	local rootData = self.data;
	if rootData and rootData.total and rootData.total > 0 then
		app.CurrentCharacter.PrimeData = {
			progress = rootData.progress,
			total = rootData.total,
			modeString = rootData.modeString,
		};
	end
end
customWindowUpdates.RaidAssistant = function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			self.doesOwnUpdate = true;

			-- Define the different window configurations that the mini list will switch to based on context.
			local raidassistant, lootspecialization, dungeondifficulty, raiddifficulty, legacyraiddifficulty;
			local GetDifficultyInfo, GetInstanceInfo = GetDifficultyInfo, GetInstanceInfo;

			-- Raid Assistant
			local switchDungeonDifficulty = function(row, button)
				self:SetData(raidassistant);
				SetDungeonDifficultyID(row.ref.difficultyID);
				Callback(self.Update, self);
				return true;
			end
			local switchRaidDifficulty = function(row, button)
				self:SetData(raidassistant);
				local myself = self;
				local difficultyID = row.ref.difficultyID;
				if not self.running then
					self.running = true;
				else
					self.running = false;
				end

				SetRaidDifficultyID(difficultyID);
				StartCoroutine("RaidDifficulty", function()
					while InCombatLockdown() do coroutine.yield(); end
					while myself.running do
						for i=0,150,1 do
							if myself.running then
								coroutine.yield();
							else
								break;
							end
						end
						if app.RaidDifficulty == difficultyID then
							myself.running = false;
							break;
						else
							SetRaidDifficultyID(difficultyID);
						end
					end
					Callback(self.Update, self);
				end);
				return true;
			end
			local switchLegacyRaidDifficulty = function(row, button)
				self:SetData(raidassistant);
				local myself = self;
				local difficultyID = row.ref.difficultyID;
				if not self.legacyrunning then
					self.legacyrunning = true;
				else
					self.legacyrunning = false;
				end
				SetLegacyRaidDifficultyID(difficultyID);
				StartCoroutine("LegacyRaidDifficulty", function()
					while InCombatLockdown() do coroutine.yield(); end
					while myself.legacyrunning do
						for i=0,150,1 do
							if myself.legacyrunning then
								coroutine.yield();
							else
								break;
							end
						end
						if app.LegacyRaidDifficulty == difficultyID then
							myself.legacyrunning = false;
							break;
						else
							SetLegacyRaidDifficultyID(difficultyID);
						end
					end
					Callback(self.Update, self);
				end);
				return true;
			end
			local function AttemptResetInstances()
				ResetInstances();
			end
			raidassistant = {
				['text'] = L.RAID_ASSISTANT,
				['icon'] = app.asset("WindowIcon_RaidAssistant"),
				["description"] = L.RAID_ASSISTANT_DESC,
				['visible'] = true,
				['back'] = 1,
				['g'] = {
					{
						['text'] = L.LOOT_SPEC_UNKNOWN,
						['title'] = L.LOOT_SPEC,
						["description"] = L.LOOT_SPEC_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							self:SetData(lootspecialization);
							Callback(self.Update, self);
							return true;
						end,
						['OnUpdate'] = function(data)
							if self.Spec then
								local id, name, description, icon, role, class = GetSpecializationInfoByID(self.Spec);
								if name then
									if GetLootSpecialization() == 0 then name = name .. " (Automatic)"; end
									data.text = name;
									data.icon = icon;
								end
							end
						end,
					},
					app.CreateDifficulty(1, {
						['title'] = L.DUNGEON_DIFF,
						["description"] = L.DUNGEON_DIFF_DESC,
						['visible'] = true,
						["trackable"] = false,
						['OnClick'] = function(row, button)
							self:SetData(dungeondifficulty);
							Callback(self.Update, self);
							return true;
						end,
						['OnUpdate'] = function(data)
							if app.DungeonDifficulty then
								data.difficultyID = app.DungeonDifficulty;
								data.name = GetDifficultyInfo(data.difficultyID) or "???";
								local name, instanceType, instanceDifficulty, difficultyName = GetInstanceInfo();
								if instanceDifficulty and data.difficultyID ~= instanceDifficulty and instanceType == 'party' then
									data.name = data.name .. " (" .. (difficultyName or "???") .. ")";
								end
							end
						end,
					}),
					app.CreateDifficulty(14, {
						['title'] = L.RAID_DIFF,
						["description"] = L.RAID_DIFF_DESC,
						['visible'] = true,
						["trackable"] = false,
						['OnClick'] = function(row, button)
							-- Don't allow you to change difficulties when you're in LFR / Raid Finder
							if app.RaidDifficulty == 7 or app.RaidDifficulty == 17 then return true; end
							self:SetData(raiddifficulty);
							Callback(self.Update, self);
							return true;
						end,
						['OnUpdate'] = function(data)
							if app.RaidDifficulty then
								data.difficultyID = app.RaidDifficulty;
								local name, instanceType, instanceDifficulty, difficultyName = GetInstanceInfo();
								if instanceDifficulty and data.difficultyID ~= instanceDifficulty and instanceType == 'raid' then
									data.name = (GetDifficultyInfo(data.difficultyID) or "???") .. " (" .. (difficultyName or "???") .. ")";
								else
									data.name = GetDifficultyInfo(data.difficultyID);
								end
							end
						end,
					}),
					app.CreateDifficulty(5, {
						['title'] = L.LEGACY_RAID_DIFF,
						["description"] = L.LEGACY_RAID_DIFF_DESC,
						['visible'] = true,
						["trackable"] = false,
						['OnClick'] = function(row, button)
							-- Don't allow you to change difficulties when you're in LFR / Raid Finder
							if app.RaidDifficulty == 7 or app.RaidDifficulty == 17 then return true; end
							self:SetData(legacyraiddifficulty);
							Callback(self.Update, self);
							return true;
						end,
						['OnUpdate'] = function(data)
							if app.LegacyRaidDifficulty then
								data.difficultyID = app.LegacyRaidDifficulty;
							end
						end,
					}),
					{
						['text'] = L.RESET_INSTANCES,
						['icon'] = app.asset("Button_Reset"),
						['description'] = L.RESET_INSTANCES_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							-- make sure the indicator icon is allowed to show
							if IsAltKeyDown() then
								row.ref.saved = not row.ref.saved;
								Callback(self.Update, self);
							else
								ResetInstances();
							end
							return true;
						end,
						['OnUpdate'] = function(data)
							data.trackable = data.saved;
							data.visible = not IsInGroup() or UnitIsGroupLeader("player");
							if data.visible and data.saved then
								if IsInInstance() or C_Scenario.IsInScenario() then
									data.shouldReset = true;
								elseif data.shouldReset then
									data.shouldReset = nil;
									C_Timer.After(0.5, AttemptResetInstances);
								end
							end
						end,
					},
					{
						['text'] = L.TELEPORT_TO_FROM_DUNGEON,
						['icon'] = 136222,
						['description'] = L.TELEPORT_TO_FROM_DUNGEON_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							LFGTeleport(IsInLFGDungeon() and true or false);
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsAllowedToUserTeleport();
						end,
					},
					{
						['text'] = L.DELIST_GROUP,
						['icon'] = 252175,
						['description'] = L.DELIST_GROUP_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							C_LFGList.RemoveListing();
							if GroupFinderFrame:IsVisible() then
								PVEFrame_ToggleFrame("GroupFinderFrame")
							end
							self:SetData(raidassistant);
							Callback(self.BaseUpdate, self, true);
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = C_LFGList.GetActiveEntryInfo();
						end,
					},
					{
						['text'] = L.LEAVE_GROUP,
						['icon'] = 132331,
						['description'] = L.LEAVE_GROUP_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							C_PartyInfo.LeaveParty();
							if GroupFinderFrame:IsVisible() then
								PVEFrame_ToggleFrame("GroupFinderFrame")
							end
							self:SetData(raidassistant);
							Callback(self.BaseUpdate, self, true);
							return true;
						end,
						['OnUpdate'] = function(data)
							data.visible = IsInGroup();
						end,
					},
				}
			};
			lootspecialization = {
				['text'] = L.LOOT_SPEC,
				['icon'] = 1499566,
				["description"] = L.LOOT_SPEC_DESC_2,
				['OnClick'] = function(row, button)
					self:SetData(raidassistant);
					Callback(self.Update, self);
					return true;
				end,
				['OnUpdate'] = function(data)
					data.g = {};
					local numSpecializations = GetNumSpecializations();
					if numSpecializations and numSpecializations > 0 then
						tinsert(data.g, {
							['text'] = L.CURRENT_SPEC,
							['title'] = select(2, GetSpecializationInfo(GetSpecialization())),
							['icon'] = 1495827,
							['id'] = 0,
							["description"] = L.CURRENT_SPEC_DESC,
							['visible'] = true,
							['OnClick'] = function(row, button)
								self:SetData(raidassistant);
								SetLootSpecialization(row.ref.id);
								Callback(self.Update, self);
								return true;
							end,
						});
						for i=1,numSpecializations,1 do
							local id, name, description, icon, background, role, primaryStat = GetSpecializationInfo(i);
							tinsert(data.g, {
								['text'] = name,
								['icon'] = icon,
								['id'] = id,
								["description"] = description,
								['visible'] = true,
								['OnClick'] = function(row, button)
									self:SetData(raidassistant);
									SetLootSpecialization(row.ref.id);
									Callback(self.Update, self);
									return true;
								end,
							});
						end
					end
				end,
				['visible'] = true,
				['back'] = 1,
				['g'] = {},
			};
			dungeondifficulty = {
				['text'] = L.DUNGEON_DIFF,
				['icon'] = 236530,
				["description"] = L.DUNGEON_DIFF_DESC_2,
				['OnClick'] = function(row, button)
					self:SetData(raidassistant);
					Callback(self.Update, self);
					return true;
				end,
				['visible'] = true,
				["trackable"] = false,
				['back'] = 1,
				['g'] = {
					app.CreateDifficulty(1, {
						['OnClick'] = switchDungeonDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(2, {
						['OnClick'] = switchDungeonDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(23, {
						['OnClick'] = switchDungeonDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					})
				},
			};
			raiddifficulty = {
				['text'] = L.RAID_DIFF,
				['icon'] = 236530,
				["description"] = L.RAID_DIFF_DESC_2,
				['OnClick'] = function(row, button)
					self:SetData(raidassistant);
					Callback(self.Update, self);
					return true;
				end,
				['visible'] = true,
				["trackable"] = false,
				['back'] = 1,
				['g'] = {
					app.CreateDifficulty(14, {
						['OnClick'] = switchRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(15, {
						['OnClick'] = switchRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(16, {
						['OnClick'] = switchRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					})
				},
			};
			legacyraiddifficulty = {
				['text'] = L.LEGACY_RAID_DIFF,
				['icon'] = 236530,
				["description"] = L.LEGACY_RAID_DIFF_DESC_2,
				['OnClick'] = function(row, button)
					self:SetData(raidassistant);
					Callback(self.Update, self);
					return true;
				end,
				['visible'] = true,
				["trackable"] = false,
				['back'] = 1,
				['g'] = {
					app.CreateDifficulty(3, {
						['OnClick'] = switchLegacyRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(5, {
						['OnClick'] = switchLegacyRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(4, {
						['OnClick'] = switchLegacyRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
					app.CreateDifficulty(6, {
						['OnClick'] = switchLegacyRaidDifficulty,
						["description"] = L.CLICK_TO_CHANGE,
						['visible'] = true,
						["trackable"] = false,
					}),
				},
			};
			self:SetData(raidassistant);

			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...) DelayedCallback(self.Update, 0.5, self, true); end);
			self:RegisterEvent("PLAYER_LOOT_SPEC_UPDATED");
			self:RegisterEvent("PLAYER_DIFFICULTY_CHANGED");
			self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED");
			self:RegisterEvent("CHAT_MSG_SYSTEM");
			self:RegisterEvent("SCENARIO_UPDATE");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("GROUP_ROSTER_UPDATE");
		end

		-- Update the window and all of its row data
		app.LegacyRaidDifficulty = GetLegacyRaidDifficultyID() or 1;
		app.DungeonDifficulty = GetDungeonDifficultyID() or 1;
		app.RaidDifficulty = GetRaidDifficultyID() or 14;
		self.Spec = GetLootSpecialization();
		if not self.Spec or self.Spec == 0 then
			local spec = GetSpecialization();
			if spec then self.Spec = GetSpecializationInfo(spec); end
		end

		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end

		-- Update the groups without forcing Debug Mode.
		local visibleState = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible()
		self:BuildData();
		self:BaseUpdate(true);
		app.Modules.Filter.Set.Visible(visibleState)
	end
end;
customWindowUpdates.Random = function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			local searchCache = {}

			local function ClearCache()
				wipe(searchCache)
			end

			-- when changing settings, we need the random cache to be cleared since it's determined based on search
			-- results with specific settings
			self:AddEventHandler("OnRecalculate_NewSettings", ClearCache)

			local function SearchRecursively(group, results, func, field)
				if group.visible and not (group.saved or group.collected) then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursively(subgroup, field, results, func);
						end
					end
					if group[field] and (not func or func(group)) then
						results[#results + 1] = group
					end
				end
			end
			local function SearchRecursivelyForValue(group, results, func, field, value)
				if group.visible and not (group.saved or group.collected) then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursivelyForValue(subgroup, field, value, results, func);
						end
					end
					if group[field] and group[field] == value and (not func or func(group)) then
						results[#results + 1] = group
					end
				end
			end
			local function SearchRecursivelyForEverything(group, results)
				if group.visible and not (group.saved or group.collected) then
					if group.g then
						for i, subgroup in ipairs(group.g) do
							SearchRecursivelyForEverything(subgroup, results);
						end
					end
					if group.collectible then
						results[#results + 1] = group
					end
				end
			end

			local excludedZones = {
				[12] = 1,	-- Kalimdor
				[13] = 1, -- Eastern Kingdoms
				[101] = 1,	-- Outland
				[113] = 1,	-- Northrend
				[424] = 1,	-- Pandaria
				[948] = 1,	-- The Maelstrom
				[572] = 1,	-- Draenor
				[619] = 1,	-- The Broken Isles
				[905] = 1,	-- Argus
				[876] = 1,	-- Kul'Tiras
				[875] = 1,	-- Zandalar
				[1550] = 1,	-- The Shadowlands
				[1978] = 1,	-- Dragon Isles
				[2274] = 1,	-- Khaz Algar
			};

			-- Represents how to search for a given named-Thing
			local SelectionMethods = setmetatable({
				AllTheThings = SearchRecursivelyForEverything,
			}, { __index = function() return SearchRecursively end})
			-- Named-TypeIDs for the field to Select for a given named-Thing
			local TypeIDLookups = {
				Achievement = "achievementID",
				Dungeon = "instanceID",
				Factions = "factionID",
				-- Follower = "followerID",
				Item = "itemID",
				Instance = "instanceID",
				Mount = "mountID",
				Pet = "speciesID",
				Quest = "questID",
				Raid = "instanceID",
				Titles = "titleID",
				Toy = "toyID",
				Zone = "mapID",
			}
			-- Named-Values for the value of a field in the Select
			local TypeIDValueLookups = {
			}
			local DefaultSelectionFilter = function(o) return o.collectible and not o.collected end
			-- Named-Functions (if not ignored) for whether to select data pertaining to a specific named-Thing
			local SelectionFilters = setmetatable({
				Achievement = function(o)
					return o.collectible and not o.collected and not o.mapID and not o.criteriaID;
				end,
				Dungeon = function(o)
					return not o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0);
				end,
				-- Factions - default
				-- Follower - default
				-- Item - default
				Instance = function(o)
					return ((o.total or 0) - (o.progress or 0)) > 0;
				end,
				-- Mount - default
				-- Pet - default
				-- Quest - default
				Raid = function(o)
					return o.isRaid and (((o.total or 0) - (o.progress or 0)) > 0);
				end,
				-- Titles - default
				-- Toy - default
				Zone = function(o)
					return (((o.total or 0) - (o.progress or 0)) > 0) and not o.instanceID and not excludedZones[o.mapID];
				end,
			}, { __index = function() return DefaultSelectionFilter end})

			local function GetSearchResults(rootData, name)
				if searchCache[name] then return searchCache[name] end
				local searchResults = {}
				SelectionMethods[name](rootData, searchResults, SelectionFilters[name], TypeIDLookups[name], TypeIDValueLookups[name])
				if #searchResults > 0 then
					searchCache[name] = searchResults
					return searchResults
				end
			end

			local mainHeader
			local function AddRandomCategoryButton(text, icon, desc, name)
				return
				{
					["text"] = text,
					["icon"] = icon,
					["description"] = desc,
					["visible"] = true,
					["OnUpdate"] = app.AlwaysShowUpdate,
					["OnClick"] = function(row, button)
						self.RandomSearchFilter = name
						self:SetData(mainHeader)
						self:Reroll()
						return true
					end,
				}
			end

			local rerollOption = {
				['text'] = L.REROLL,
				['icon'] = app.asset("Button_Reroll"),
				['description'] = L.REROLL_DESC,
				['visible'] = true,
				['OnClick'] = function(row, button)
					self:Reroll();
					return true;
				end,
				['OnUpdate'] = app.AlwaysShowUpdate,
			};
			local filterHeader = {
				['text'] = L.APPLY_SEARCH_FILTER,
				['icon'] = app.asset("Button_Search"),
				["description"] = L.APPLY_SEARCH_FILTER_DESC,
				['visible'] = true,
				['OnUpdate'] = app.AlwaysShowUpdate,
				["indent"] = 0,
				['back'] = 1,
				['g'] = {
					setmetatable({
						['description'] = L.SEARCH_EVERYTHING_BUTTON_OF_DOOM,
						['visible'] = true,
						['OnClick'] = function(row, button)
							self.RandomSearchFilter = appName;
							self:SetData(mainHeader);
							self:Reroll();
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					}, { __index = function(t, key)
						if key == "text" or key == "icon" or key == "preview" or key == "texcoord" or key == "previewtexcoord" then
							return app:GetWindow("Prime").data[key];
						end
					end}),
					AddRandomCategoryButton(L.ACHIEVEMENT, app.asset("Category_Achievements"), L.ACHIEVEMENT_DESC, "Achievement"),
					AddRandomCategoryButton(L.DUNGEON, app.asset("Difficulty_Normal"), L.DUNGEON_DESC, "Dungeon"),
					AddRandomCategoryButton(L.FACTIONS, app.asset("Category_Factions"), L.FACTION_DESC, "Factions"),
					-- missing locale values
					-- AddRandomCategoryButton(app.NPCNameFromID[app.HeaderConstants.FOLLOWERS], L.HEADER_ICONS[app.HeaderConstants.FOLLOWERS], L.FOLLOWER_DESC, "Follower"),
					AddRandomCategoryButton(L.INSTANCE, app.asset("Category_D&R"), L.INSTANCE_DESC, "Instance"),
					AddRandomCategoryButton(L.ITEM, app.asset("Interface_Zone_drop"), L.ITEM_DESC, "Item"),
					AddRandomCategoryButton(L.MOUNT, app.asset("Category_Mounts"), L.MOUNT_DESC, "Mount"),
					AddRandomCategoryButton(L.PET, app.asset("Category_PetBattles"), L.PET_DESC, "Pet"),
					AddRandomCategoryButton(L.QUEST, app.asset("Interface_Quest"), L.QUEST_DESC, "Quest"),
					AddRandomCategoryButton(L.RAID, app.asset("Difficulty_Heroic"), L.RAID_DESC, "Raid"),
					AddRandomCategoryButton(L.TITLES, app.asset("Category_Titles"), L.TITLES_RAND_DESC, "Titles"),
					AddRandomCategoryButton(L.TOY, app.asset("Category_ToyBox"), L.TOY_DESC, "Toy"),
					AddRandomCategoryButton(L.ZONE, app.asset("Category_Zones"), L.ZONE_DESC, "Zone"),
				},
			};
			mainHeader = {
				['text'] = L.GO_GO_RANDOM,
				['icon'] = app.asset("WindowIcon_Random"),
				["description"] = L.GO_GO_RANDOM_DESC,
				['visible'] = true,
				['OnUpdate'] = app.AlwaysShowUpdate,
				['back'] = 1,
				["indent"] = 0,
				['options'] = {
					{
						['text'] = L.CHANGE_SEARCH_FILTER,
						['icon'] = app.asset("Button_Search"),
						["description"] = L.CHANGE_SEARCH_FILTER_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							self:SetData(filterHeader);
							self:Update(true);
							return true;
						end,
						['OnUpdate'] = app.AlwaysShowUpdate,
					},
					rerollOption,
				},
				['g'] = { },
			};
			self:SetData(mainHeader);
			self.Rebuild = function(self, no)
				-- Rebuild all the datas
				wipe(self.data.g);

				local primeWindow = app:GetWindow("Prime")
				local primePending = primeWindow.HasPendingUpdate

				-- Call to our method and build a list to draw from if Prime has been opened
				if not primePending then
					local method = self.RandomSearchFilter or appName;
					rerollOption.text = L.REROLL_2 .. (method ~= appName and L[method:upper()] or method);
					local temp = GetSearchResults(primeWindow.data, method) or app.EmptyTable;
					local totalWeight = 0;
					for i,o in ipairs(temp) do
						totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
					end
					-- app.PrintDebug("#random",temp and #temp,totalWeight)
					if totalWeight > 0 and #temp > 0 then
						local weight, selected = math.random(totalWeight), nil;
						totalWeight = 0;
						for i,o in ipairs(temp) do
							totalWeight = totalWeight + ((o.total or 1) - (o.progress or 0));
							if weight <= totalWeight then
								selected = o;
								break;
							end
						end
						-- app.PrintDebug("select",weight,selected and (selected.text or selected.hash))
						if not selected then selected = temp[#temp - 1]; end
						if selected then
							NestObject(self.data, selected, true);
						else
							app.print(L.NOTHING_TO_SELECT_FROM);
						end
					else
						app.print(L.NOTHING_TO_SELECT_FROM);
					end
				else
					rerollOption.text = "Please open /att"
					app.print(L.NOTHING_TO_SELECT_FROM);
				end
				for i=#self.data.options,1,-1 do
					tinsert(self.data.g, 1, self.data.options[i]);
				end
				AssignChildren(self.data);
				if not no then self:Update(); end
			end
			self.Reroll = function(self)
				Push(self, "Rebuild", self.Rebuild);
			end
			for i,o in ipairs(self.data.options) do
				tinsert(self.data.g, o);
			end
			local method = self.RandomSearchFilter or appName;
			rerollOption.text = L.REROLL_2 .. (method ~= appName and L[method:upper()] or method);
		end

		-- Update the window and all of its row data
		self.data.progress = 0;
		self.data.total = 0;
		self.data.indent = 0;
		AssignChildren(self.data);
		self:BaseUpdate(true);
	end
end;
customWindowUpdates.RWP = function(self, force)
	if not self.initialized then
		if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
			return;
		end
		self.initialized = true;
		self:SetData({
			["text"] = L.FUTURE_UNOBTAINABLE,
			["icon"] = app.asset("WindowIcon_RWP"),
			["description"] = L.FUTURE_UNOBTAINABLE_TOOLTIP,
			["visible"] = true,
			["back"] = 1,
			["g"] = app:BuildSearchResponse("rwp"),
		});
		self:BuildData();
		self.ExpandInfo = { Expand = true, Manual = true };
	end
	if self:IsVisible() then
		self:BaseUpdate(force);
	end
end;
customWindowUpdates.Sync = function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;

			local function OnRightButtonDeleteCharacter(row, button)
				if button == "RightButton" then
					app:ShowPopupDialog("CHARACTER DATA: " .. (row.ref.text or RETRIEVING_DATA) .. L.CONFIRM_DELETE,
					function()
						ATTCharacterData[row.ref.datalink] = nil;
						app:RecalculateAccountWideData();
						self:Reset();
					end);
				end
				return true;
			end
			local function OnRightButtonDeleteLinkedAccount(row, button)
				if button == "RightButton" then
					app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. L.CONFIRM_DELETE,
					function()
						AllTheThingsAD.LinkedAccounts[row.ref.datalink] = nil;
						app:SynchronizeWithPlayer(row.ref.datalink);
						self:Reset();
					end);
				end
				return true;
			end
			local function OnTooltipForCharacter(t, tooltipInfo)
				local character = ATTCharacterData[t.unit];
				if character then
					-- last login info
					local login = character.lastPlayed;
					if login then
						local d = C_DateAndTime.GetCalendarTimeFromEpoch(login * 1e6);
						tinsert(tooltipInfo, {
							left = PLAYED,
							right = ("%d-%02d-%02d %02d:%02d"):format(d.year, d.month, d.monthDay, d.hour, d.minute),
							r = 0.8, g = 0.8, b = 0.8
						});
					else
						tinsert(tooltipInfo, {
							left = PLAYED,
							right = NEVER,
							r = 0.8, g = 0.8, b = 0.8
						});
					end
					local total = 0;
					for i,field in ipairs(app.CharacterSyncTables) do
						local values = character[field];
						if values then
							local subtotal = 0;
							for key,value in pairs(values) do
								if value then
									subtotal = subtotal + 1;
								end
							end
							total = total + subtotal;
							tinsert(tooltipInfo, {
								left = field,
								right = tostring(subtotal),
								r = 1, g = 1, b = 1
							});
						end
					end
					tinsert(tooltipInfo, { left = " " });
					tinsert(tooltipInfo, {
						left = "Total",
						right = tostring(total),
						r = 0.8, g = 0.8, b = 1
					});
					tinsert(tooltipInfo, {
						left = L.DELETE_CHARACTER,
						r = 1, g = 0.8, b = 0.8
					});
				end
			end
			local function OnTooltipForLinkedAccount(t, tooltipInfo)
				if t.unit then
					tinsert(tooltipInfo, {
						left = L.LINKED_ACCOUNT_TOOLTIP,
						r = 0.8, g = 0.8, b = 1, wrap = true,
					});
					tinsert(tooltipInfo, {
						left = L.DELETE_LINKED_CHARACTER,
						r = 1, g = 0.8, b = 0.8
					});
				else
					tinsert(tooltipInfo, {
						left = L.DELETE_LINKED_ACCOUNT,
						r = 1, g = 0.8, b = 0.8
					});
				end
			end

			local syncHeader = {
				['text'] = L.ACCOUNT_MANAGEMENT,
				['icon'] = app.asset("WindowIcon_AccountManagement"),
				["description"] = L.ACCOUNT_MANAGEMENT_TOOLTIP,
				['visible'] = true,
				['back'] = 1,
				['OnUpdate'] = app.AlwaysShowUpdate,
				OnClick = app.UI.OnClick.IgnoreRightClick,
				['g'] = {
					{
						['text'] = L.ADD_LINKED_CHARACTER_ACCOUNT,
						['icon'] = app.asset("Button_Add"),
						['description'] = L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP,
						['visible'] = true,
						['OnUpdate'] = app.AlwaysShowUpdate,
						['OnClick'] = function(row, button)
							app:ShowPopupDialogWithEditBox(L.ADD_LINKED_POPUP, "", function(cmd)
								if cmd and cmd ~= "" then
									AllTheThingsAD.LinkedAccounts[cmd] = true;
									self:Reset();
								end
							end);
							return true;
						end,
					},
					-- Characters Section
					{
						['text'] = L.CHARACTERS,
						['icon'] = 526421,
						["description"] = L.SYNC_CHARACTERS_TOOLTIP,
						['visible'] = true,
						['expanded'] = true,
						['g'] = {},
						OnClick = app.UI.OnClick.IgnoreRightClick,
						['OnUpdate'] = function(data)
							local g = {};
							for guid,character in pairs(ATTCharacterData) do
								if character then
									tinsert(g, app.CreateUnit(guid, {
										['datalink'] = guid,
										['OnClick'] = OnRightButtonDeleteCharacter,
										['OnTooltip'] = OnTooltipForCharacter,
										["OnUpdate"] = app.AlwaysShowUpdate,
										name = character.name,
										lvl = character.lvl,
										['visible'] = true,
									}));
								end
							end

							if #g < 1 then
								tinsert(g, {
									['text'] = L.NO_CHARACTERS_FOUND,
									['icon'] = 526421,
									['visible'] = true,
									OnClick = app.UI.OnClick.IgnoreRightClick,
									["OnUpdate"] = app.AlwaysShowUpdate,
								});
							else
								data.SortType = "textAndLvl";
							end
							data.g = g;
							AssignChildren(data);
							return true;
						end,
					},

					-- Linked Accounts Section
					{
						['text'] = L.LINKED_ACCOUNTS,
						['icon'] = 526421,
						["description"] = L.LINKED_ACCOUNTS_TOOLTIP,
						['visible'] = true,
						['g'] = {},
						OnClick = app.UI.OnClick.IgnoreRightClick,
						['OnUpdate'] = function(data)
							data.g = {};
							local charactersByName = {};
							for guid,character in pairs(ATTCharacterData) do
								if character.name then
									charactersByName[character.name] = character;
								end
							end

							for playerName,allowed in pairs(AllTheThingsAD.LinkedAccounts) do
								local character = charactersByName[playerName];
								if character then
									tinsert(data.g, app.CreateUnit(playerName, {
										['datalink'] = playerName,
										['OnClick'] = OnRightButtonDeleteLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										["OnUpdate"] = app.AlwaysShowUpdate,
										['visible'] = true,
									}));
								elseif playerName:find("#") then
									-- Garbage click handler for unsync'd account data.
									tinsert(data.g, {
										['text'] = playerName,
										['datalink'] = playerName,
										['icon'] = 526421,
										['OnClick'] = OnRightButtonDeleteLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										['OnUpdate'] = app.AlwaysShowUpdate,
										['visible'] = true,
									});
								else
									-- Garbage click handler for unsync'd character data.
									tinsert(data.g, {
										['text'] = playerName,
										['datalink'] = playerName,
										['icon'] = 374212,
										['OnClick'] = OnRightButtonDeleteLinkedAccount,
										['OnTooltip'] = OnTooltipForLinkedAccount,
										['OnUpdate'] = app.AlwaysShowUpdate,
										['visible'] = true,
									});
								end
							end

							if #data.g < 1 then
								tinsert(data.g, {
									['text'] = L.NO_LINKED_ACCOUNTS,
									['icon'] = 526421,
									['visible'] = true,
									OnClick = app.UI.OnClick.IgnoreRightClick,
									["OnUpdate"] = app.AlwaysShowUpdate,
								});
							end
							AssignChildren(data);
							return true;
						end,
					},
				}
			};

			self.Reset = function()
				self:SetData(syncHeader);
				self:Update(true);
			end
			self:Reset();
		end

		-- Update the groups without forcing Debug Mode.
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		self:BuildData();
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		self:BaseUpdate(true);
	end
end;

-- Returns an Object based on a QuestID a lot of Quest information for displaying in a row
---@return table?
local function GetPopulatedQuestObject(questID)
	-- cannot do anything on a missing object or questID
	if not questID then return; end
	-- either want to duplicate the existing data for this quest, or create new data for a missing quest
	local questObject = CreateObject(SearchForObject("questID", questID, "field") or { questID = questID, _missing = true }, true);
	-- if questID == 78663 then
	-- 	local debug = app.Debugging
	-- 	app.Debugging = true
	-- 	app.PrintTable(questObject)
	-- 	app.Debugging = debug
	-- end
	-- Try populating quest rewards
	app.TryPopulateQuestRewards(questObject);
	return questObject;
end
customWindowUpdates.list = function(self, force, got)
	if not self.initialized then
		self.VerifyGroupSourceID = function(data)
			-- can only determine a sourceID if there is an itemID/sourceID on the group
			if not data.itemID and not data.sourceID then return true end
			if not data._VerifyGroupSourceID then data._VerifyGroupSourceID = 0 end
			if data._VerifyGroupSourceID > 5 then
				-- app.PrintDebug("Cannot Harvest: No Item Info",
				-- 	app:SearchLink(SearchForObject("itemID",data.modItemID,"field") or SearchForObject("sourceID",data.sourceID,"field")),
				-- 	data._VerifyGroupSourceID)
				return true
			end
			data._VerifyGroupSourceID = data._VerifyGroupSourceID + 1
			local link, source = data.link or data.silentLink, data.sourceID;
			if not link then return; end
			if not GetItemInfo(link) then
				-- app.PrintDebug("No Item Data Cached",link,data._VerifyGroupSourceID)
				return;
			end
			-- If it doesn't, the source ID will need to be harvested.
			local sourceID = app.GetSourceID(link);
			-- app.PrintDebug("SourceIDs",data.modItemID,source,app.GetSourceID(link),link)
			if sourceID and sourceID > 0 then
				-- only save the source if it is different than what we already have, or being forced
				if not source or source < 1 or source ~= sourceID then
					-- app.print("SourceID Update",link,data.modItemID,source,"=>",sourceID);
					-- print(GetItemInfo(text))
					data.sourceID = sourceID;
					app.SaveHarvestSource(data);
				end
			end
			return true
		end
		self.RemoveSelf = function(o)
			local parent = rawget(o, "parent");
			if not parent then
				app.PrintDebug("no parent?",o.text)
				return;
			end
			local og = parent.g;
			if not og then
				app.PrintDebug("no g?",parent.text)
				return;
			end
			local i = indexOf(og, o) or (o.__dlo and indexOf(og, o.__dlo));
			if i and i > 0 then
				-- app.PrintDebug("RemoveSelf",#og,i,o.text)
				tremove(og, i);
				-- app.PrintDebug("RemoveSelf",#og)
			end
			return og;
		end
		self.AutoHarvestFirstPartitionCoroutine = function()
			-- app.PrintDebug("AutoExpandingPartitions")
			local i = 10;
			-- yield a few frames to allow the list to fully generate
			while i > 0 do
				coroutine.yield();
				i = i - 1;
			end

			local partitions = self.data.g;
			if not partitions then return; end

			local part;
			-- app.PrintDebug("AutoExpandingPartitions",#partitions)
			while #partitions > 0 do
				part = partitions[1];
				if not part.expanded then
					part.expanded = true;
					-- app.PrintDebug("AutoExpand",part.text)
					app.DirectGroupRefresh(part);
				end
				coroutine.yield();
				-- Make sure the coroutine stops running if we close the list window
				if not self:IsVisible() then return; end
			end
		end

		-- temporarily prevent a force refresh from exploding the game if this window is open
		self.doesOwnUpdate = true;
		self.initialized = true;
		force = true;
		local DGU, DGR = app.DirectGroupUpdate, app.DirectGroupRefresh;

		-- custom params for initialization
		local dataType = (app.GetCustomWindowParam("list", "type") or "quest");
		local onlyMissing = app.GetCustomWindowParam("list", "missing");
		local onlyCached = app.GetCustomWindowParam("list", "cached");
		local onlyCollected = app.GetCustomWindowParam("list", "collected");
		local harvesting = app.GetCustomWindowParam("list", "harvesting");
		self.PartitionSize = tonumber(app.GetCustomWindowParam("list", "part")) or 1000;
		self.Limit = tonumber(app.GetCustomWindowParam("list", "limit")) or 1000;
		local min = tonumber(app.GetCustomWindowParam("list", "min")) or 0
		-- print("Quests - onlyMissing",onlyMissing)
		local CacheFields, ItemHarvester;

		-- manual type adjustments to match internal use (due to lowercase keys with non-lowercase cache keys >_<)
		if dataType == "s" or dataType == "source" then
			dataType = "source";
		elseif dataType == "achievementcategory" then
			dataType = "achievementCategory";
		elseif dataType == "azeriteessence" then
			dataType = "azeriteEssence";
		elseif dataType == "flightpath" then
			dataType = "flightPath";
		elseif dataType == "runeforgepower" then
			dataType = "runeforgePower";
		elseif dataType == "itemharvester" then
			if not app.CreateItemHarvester then
				app.print("'itemharvester' Requires 'Debugging' enabled when loading the game!")
				return
			end
			ItemHarvester = app.CreateItemHarvester;
		elseif dataType:find("cache") then
			-- special data type to utilize an ATT cache instead of generating raw groups
			-- "cache:item"
			-- => itemID
			-- fill all items from itemID cache into list, sorted by itemID
			local added = {};
			CacheFields = {};
			local cacheID;
			local _, cacheKey = (":"):split(dataType);
			local cacheKeyID = cacheKey.."ID";
			local imin, imax = 0, 999999
			-- convert the list min/max into cache-based min/max for cache lists
			if self.Limit ~= 1000 then
				imax = self.Limit + 1;
				self.Limit = 999999
			end
			if min ~= 0 then
				imin = min;
				min = 0;
			end
			dataType = cacheKey;
			-- collect valid id values
			for id,groups in pairs(app.GetRawFieldContainer(cacheKey) or app.GetRawFieldContainer(cacheKeyID) or app.EmptyTable) do
				for index,o in ipairs(groups) do
					cacheID = tonumber(o.modItemID or o[dataType] or o[cacheKeyID]) or 0;
					if imin <= cacheID and cacheID <= imax then
						added[cacheID] = true;
						-- app.PrintDebug("CacheID",cacheID,"from cache",id,"@",index,#groups)
						-- app.PrintDebug(o.modItemID,o[dataType],o[cacheKeyID])
					-- else app.PrintDebug("Ignored Data for Harvest due to CacheID Bounds",cacheID,app:SearchLink(o))
					end
				end
			end
			for id,_ in pairs(added) do
				CacheFields[#CacheFields + 1] = id
			end
			app.Sort(CacheFields, app.SortDefaults.Values);
			app.PrintDebug(#CacheFields,"CacheFields:Sorted",CacheFields[1],"->",CacheFields[#CacheFields])
		end

		-- add the ID
		dataType = dataType.."ID";

		local ForceVisibleFields = {
			visible = true,
			total = 0,
			progress = 0,
		};
		local PartitionUpdateFields = {
			total = true,
			progress = true,
			parent = true,
			expanded = true,
			window = true
		};
		local PartitionMeta = {
			__index = ForceVisibleFields,
			__newindex = function(t, key, val)
				-- only allow changing existing table fields
				if PartitionUpdateFields[key] then
					rawset(t, key, val);
					-- app.PrintDebug("__newindex:part",key,val)
				end
			end
		};

		local ObjectTypeFuncs = {
			questID = GetPopulatedQuestObject,
		};
		if CacheFields then
			-- app.PrintDebug("OTF:Define",dataType)
			ObjectTypeFuncs[dataType] = function(id)
				-- use the cached id in the slot of the requested id instead
				-- app.PrintDebug("OTF",id)
				id = CacheFields[id];
				-- app.PrintDebug("OTF:CacheID",dataType,id)
				return setmetatable({ visible = true }, {
					__index = id and (SearchForObject(dataType, id, "key")
									or SearchForObject(dataType, id, "field")
									or CreateObject({[dataType]=id}))
								or setmetatable({name=EMPTY}, app.BaseClass)
				});
			end
			-- app.PrintDebug("SetLimit",#CacheFields)
			self.Limit = #CacheFields;
		end
		if ItemHarvester then
			ObjectTypeFuncs[dataType] = ItemHarvester;
		end
		local function CreateTypeObject(type, id)
			-- app.PrintDebug("DLO-Obj:",type,id)
			local func = ObjectTypeFuncs[type];
			if func then return func(id); end
			-- Simply a visible table whose Base will be the actual referenced object
			return setmetatable({ visible = true }, {
				__index = SearchForObject(type, id, "field") or CreateObject({[type]=id})
			});
		end

		-- info about the Window
		local g = {};
		self:SetData(setmetatable({
			text = "Full Data List - "..(dataType or "None"),
			icon = app.asset("Interface_Quest_header"),
			description = "1 - "..self.Limit,
			g = g,
		}, PartitionMeta));

		local overrides = {
			visible = not harvesting and true or nil,
			indent = 2,
			collectibleAsCost = false,
			costCollectibles = false,
			g = false,
			back = function(o, key)
				return o._missing and 1 or 0;
			end,
			text = harvesting and function(o, key)
				local text = o.text;
				if not IsRetrieving(text) then
					DGR(o);
					if not self.VerifyGroupSourceID(o) then
						return "Harvesting..."
					end
					local og = self.RemoveSelf(o);
					-- app.PrintDebug(#og,"-",text)
					if #og <= 0 then
						self.RemoveSelf(o.parent);
					else
						o.visible = true;
					end
					return text;
				end
			end
			or function(o, key)
				local text, key = o.text, o.key;
				if not IsRetrieving(text) then
					if not self.VerifyGroupSourceID(o) then
						DGR(o);
						return "Harvesting..."
					end
					return "#"..(o[dataType] or o[key or 0] or "?")..": "..text;
				end
			end,
			OnLoad = function(o)
				-- app.PrintDebug("DGU-OnLoad:",o.hash)
				DGU(o);
			end,
		};
		if onlyMissing then
			app.SetDGUDelay(0);
			if onlyCached then
				overrides.visible = function(o, key)
					if o._missing then
						local text = o.text;
						-- app.PrintDebug("check",text)
						return IsRetrieving(text) or
							(not text:find("#") and text ~= UNKNOWN);
					end
				end
			else
				overrides.visible = function(o, key)
					return o._missing;
				end
			end
		end
		if onlyCollected then
			app.SetDGUDelay(0);
			if onlyMissing then
				overrides.visible = function(o, key)
					if o._missing and o.collected then
						return o.collected;
					end
				end
			else
				overrides.visible = function(o, key)
					return o.collected;
				end
			end
		end
		if harvesting then
			app.SetDGUDelay(0);
			StartCoroutine("AutoHarvestFirstPartitionCoroutine", self.AutoHarvestFirstPartitionCoroutine);
		end
		-- add a bunch of raw, delay-loaded objects in order into the window
		local groupCount = math_floor(self.Limit / self.PartitionSize);
		local groupStart = math_floor(min / self.PartitionSize);
		local partition, partitionStart, partitionGroups;
		local dlo = app.DelayLoadedObject;
		for j=groupStart,groupCount,1 do
			partitionStart = j * self.PartitionSize;
			partitionGroups = {};
			-- define a sub-group for a range of things
			partition = setmetatable({
				text = tostring(partitionStart + 1).."+",
				icon = app.asset("Interface_Quest_header"),
				g = partitionGroups,
			}, PartitionMeta);
			for i=1,self.PartitionSize,1 do
				tinsert(partitionGroups, dlo(CreateTypeObject, "text", overrides, dataType, partitionStart + i));
			end
			tinsert(g, partition);
		end
		self:BuildData();
	end
	if self:IsVisible() then
		-- requires Visibility filter to check .visibile for display of the group
		local filterVisible = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible(true);
		self:BaseUpdate(force);
		app.Modules.Filter.Set.Visible(filterVisible);
	end
end
customWindowUpdates.Tradeskills = function(self, force, got)
	if not app:GetDataCache() then	-- This module requires a valid data cache to function correctly.
		return;
	end
	if not self.initialized then
		self.initialized = true;
		self.SkillsInit = {};
		self.force = true;
		self:SetMovable(false);
		self:SetUserPlaced(false);
		self:SetClampedToScreen(false);
		self:RegisterEvent("TRADE_SKILL_SHOW");
		self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
		self:RegisterEvent("TRADE_SKILL_CLOSE");
		self:RegisterEvent("GARRISON_TRADESKILL_NPC_CLOSED");
		self:SetData({
			['text'] = L.PROFESSION_LIST,
			['icon'] = 134940,
			["description"] = L.PROFESSION_LIST_DESC,
			['visible'] = true,
			["indent"] = 0,
			['back'] = 1,
			['g'] = { },
		});

		local MissingRecipes = {}
		-- Adds the pertinent information about a given recipeID to the reagentcache
		local function CacheRecipeSchematic(recipeID)
			local schematic = C_TradeSkillUI_GetRecipeSchematic(recipeID, false);
			local craftedItemID = schematic.outputItemID;
			if not craftedItemID then return end
			local cachedRecipe = SearchForObject("recipeID",recipeID,"key")
			local recipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeID)
			if not cachedRecipe then
				local tradeSkillID, skillLineName, parentTradeSkillID = C_TradeSkillUI_GetTradeSkillLineForRecipe(recipeID)
				local missing = app.TableConcat({"Missing Recipe:",recipeID,skillLineName,tradeSkillID,"=>",parentTradeSkillID}, nil, nil, " ")
				-- app.PrintDebug(missing)
				MissingRecipes[#MissingRecipes + 1] = missing
			elseif cachedRecipe.u == app.PhaseConstants.NEVER_IMPLEMENTED then
				-- learned NYI recipe?
				if recipeInfo and recipeInfo.learned then
					-- known NYI recipes
					app.PrintDebug("Learned NYI Recipe",app:SearchLink(cachedRecipe))
				else
					-- don't cache reagents for unknown NYI recipes
					-- app.PrintDebug("Skip NYI Recipe",app:SearchLink(cachedRecipe))
					return
				end
			end

			local reagentCache = app.ReagentsDB
			local itemRecipes, reagentCount, reagentItemID;

			-- handle other types of recipes maybe
			if recipeInfo then
				if recipeInfo.craftable then
					-- Salvage Recipe harvest
					if recipeInfo.isSalvageRecipe then
						-- craftedItemID from salvage...
						-- in some cases this is the 'actual' ouput of the salvage (TWW Cooking)
						-- but in many other cases this is a 'fake item' representing 'multiple possible item outputs'
						-- theoretically we could list this 'fake item' under Profession > Crafted > with all possible outputs
						-- to allow driving crafting chains

						-- Not really a great way to utilize this output currently, since typically the input drives the output through
						-- the same Recipe, and it can be variable depending on skill or reagent qualities
						-- local salvageItems = C_TradeSkillUI_GetSalvagableItemIDs(recipeID)
						-- for _,salvageItemID in ipairs(salvageItems) do
						-- 	reagentItemID = salvageItemID
						-- 	-- only requirement is Reagent -> Recipe -> Crafted | Reagent Count
						-- 	-- Minimum Structure
						-- 	-- reagentCache[reagentItemID][<recipeID>] = { craftedItemID, reagentCount }
						-- 	if reagentItemID then
						-- 		itemRecipes = reagentCache[reagentItemID];
						-- 		if not itemRecipes then
						-- 			itemRecipes = { };
						-- 			reagentCache[reagentItemID] = itemRecipes;
						-- 		end
						-- 		-- app.PrintDebug("Reagent",reagentItemID,"x 5 =>",craftedItemID,"via",app:SearchLink(cachedRecipe))
						-- 		-- Salvage recipes are always '5' per
						-- 		itemRecipes[recipeID] = { craftedItemID, 5 };
						-- 	end
						-- end
						return
					end
				end
			end
			-- app.PrintDebug("Recipe",recipeID,"==>",craftedItemID)
			-- Recipes now have Slots for available Regeants...
			if #schematic.reagentSlotSchematics == 0 and schematic.hasCraftingOperationInfo then
				-- Milling Recipes...
				app.PrintDebug("EMPTY SCHEMATICS",app:SearchLink(cachedRecipe or CreateObject({recipeID=recipeID})))
				return;
			end

			-- Typical Recipe harvest
			for _,reagentSlot in ipairs(schematic.reagentSlotSchematics) do
				-- reagentType: 0 = sparks?, 1 = required, 2 = optional
				if reagentSlot.required then
					reagentCount = reagentSlot.quantityRequired;
					-- Each available Reagent for the Slot can be associated to the Recipe/Output Item
					for _,reagentSlotSchematic in ipairs(reagentSlot.reagents) do
						reagentItemID = reagentSlotSchematic.itemID;
						-- only requirement is Reagent -> Recipe -> Crafted | Reagent Count
						-- Minimum Structure
						-- reagentCache[reagentItemID][<recipeID>] = { craftedItemID, reagentCount }
						if reagentItemID then
							itemRecipes = reagentCache[reagentItemID];
							if not itemRecipes then
								itemRecipes = { };
								reagentCache[reagentItemID] = itemRecipes;
							end
							-- app.PrintDebug("Reagent",reagentItemID,"x",reagentCount,"=>",craftedItemID,"via",recipeID)
							itemRecipes[recipeID] = { craftedItemID, reagentCount };
						end
					end
				end
			end
		end
		app.HarvestRecipes = function()
			local reagentsDB = LocalizeGlobal("AllTheThingsHarvestItems", {})
			reagentsDB.ReagentsDB = app.ReagentsDB
			local Runner = self:GetRunner()
			Runner.SetPerFrame(100);
			local Run = Runner.Run;
			for spellID,data in pairs(SearchForFieldContainer("spellID")) do
				Run(CacheRecipeSchematic, spellID);
			end
			Runner.OnEnd(function()
				app.print("Harvested all Sourced Recipes & Reagents => [Reagents]")
			end);
		end
		local function UpdateLocalizedCategories(self, updates)
			if not updates.Categories then
				-- app.PrintDebug("UpdateLocalizedCategories",self.lastTradeSkillID)
				local categories = AllTheThingsAD.LocalizedCategoryNames;
				updates.Categories = true;
				local currentCategoryID;
				local categoryData = {};
				local categoryIDs = { C_TradeSkillUI_GetCategories() };
				for i = 1,#categoryIDs do
					currentCategoryID = categoryIDs[i];
					if not categories[currentCategoryID] then
						C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
						if categoryData.name then
							categories[currentCategoryID] = categoryData.name;
						end
					end
				end
			end
		end
		local function UpdateLearnedRecipes(self, updates)
			-- Cache learned recipes
			if not updates.Recipes then
				-- app.PrintDebug("UpdateLearnedRecipes",self.lastTradeSkillID)
				if app.Debugging then
					local reagentsDB = LocalizeGlobal("AllTheThingsHarvestItems", {})
					reagentsDB.ReagentsDB = app.ReagentsDB
				end
				updates.Recipes = true;
				wipe(MissingRecipes)
				local categoryData = {};
				local learned, recipeID = {}, nil;
				local recipeIDs = C_TradeSkillUI.GetAllRecipeIDs();
				local acctSpells, charSpells = ATTAccountWideData.Spells, app.CurrentCharacter.Spells;
				local spellRecipeInfo, currentCategoryID;
				local categories = AllTheThingsAD.LocalizedCategoryNames;
				-- app.PrintDebug("Scanning recipes",#recipeIDs)
				for i = 1,#recipeIDs do
					spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeIDs[i]);
					-- app.PrintDebug("Recipe",recipeIDs[i])
					if spellRecipeInfo then
						recipeID = spellRecipeInfo.recipeID;
						local cachedRecipe = SearchForObject("recipeID",recipeID,"key")
						currentCategoryID = spellRecipeInfo.categoryID;
						if not categories[currentCategoryID] then
							C_TradeSkillUI_GetCategoryInfo(currentCategoryID, categoryData);
							if categoryData.name then
								categories[currentCategoryID] = categoryData.name;
							end
						end
						-- recipe is learned, so cache that it's learned regardless of being craftable
						if spellRecipeInfo.learned then
							-- Shadowlands recipes are weird...
							local rank = spellRecipeInfo.unlockedRecipeLevel or 0;
							if rank > 0 then
								-- when the recipeID specifically is available, it will show as available for ALL possible ranks
								-- so we can check if the next known rank is also considered available for this recipeID
								spellRecipeInfo = C_TradeSkillUI_GetRecipeInfo(recipeID, rank + 1);
								-- app.PrintDebug("NextRankCheck",recipeID,rank + 1, spellRecipeInfo.learned)
							end
						end
						-- recipe is learned, so cache that it's learned regardless of being craftable
						if spellRecipeInfo and spellRecipeInfo.learned then
							-- only disabled & enable-type recipes should be un-cached when considered learned
							if spellRecipeInfo.disabled and cachedRecipe and cachedRecipe.isEnableTypeRecipe then
								-- disabled learned enable-type recipes shouldn't be marked as known by the character (they require an 'unlock' typically to become usable)
								if charSpells[recipeID] then
									charSpells[recipeID] = nil;
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:recipeID:"..recipeID);
									-- app.PrintDebug("Unlearned Disabled Recipe", link);
								end
							else
								charSpells[recipeID] = 1;
								if not acctSpells[recipeID] then
									acctSpells[recipeID] = 1;
									tinsert(learned, recipeID);
								end
							end
						else
							if spellRecipeInfo.disabled then
								-- disabled & unlearned recipes shouldn't be marked as known by the character
								if charSpells[recipeID] then
									charSpells[recipeID] = nil;
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:spellID:"..recipeID);
									-- app.PrintDebug("Unlearned Disabled Recipe", link);
								end
							else
								-- ignore removal of enable-type recipes when considered unlearned and not disabled
								if cachedRecipe and cachedRecipe.isEnableTypeRecipe then
									-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:recipeID:"..recipeID);
									-- app.PrintDebug("Unlearned Enable-Type Recipe", link);
								else
									-- non-disabled, unlearned recipes shouldn't be marked as known by the character
									if charSpells[recipeID] then
										charSpells[recipeID] = nil;
										-- local link = app:Linkify(recipeID, app.Colors.ChatLink, "search:spellID:"..recipeID);
										-- app.PrintDebug("Unlearned Recipe", link);
									end
								end
							end
						end

						-- moved to stand-alone on-demand function across all known professions, or called if DEBUG_PRINT is enabled to harvest un-sourced recipes
						if app.Debugging then
							CacheRecipeSchematic(recipeID);
						end
					end
				end
				-- If something new was "learned", then refresh the data.
				-- app.PrintDebug("Done. learned",#learned)
				UpdateRawIDs("spellID", learned);
				if #learned > 0 then
					app.HandleEvent("OnThingCollected", "Recipes")
					self.force = true;
				end
				-- In Debugging, pop a dialog of all found missing recipes
				if app.Debugging then
					if #MissingRecipes > 0 then
						app:ShowPopupDialogWithMultiLineEditBox(app.TableConcat(MissingRecipes, nil, nil, "\n"), nil, "Missing Recipes")
					else
						app.PrintDebug("No Missing Recipes!")
					end
				end
			end
		end
		local function UpdateData(self, updates)
			-- Open the Tradeskill list for this Profession
			local data = updates.Data;
			if not data then
				-- app.PrintDebug("UpdateData",self.lastTradeSkillID)
				data = app.CreateProfession(self.lastTradeSkillID);
				app.BuildSearchResponse_IgnoreUnavailableRecipes = true;
				NestObjects(data, app:BuildSearchResponse("requireSkill", data.requireSkill));
				-- Profession headers use 'professionID' and don't actually convey a requirement on knowing the skill
				-- but in a Profession window for that skill it's nice to see what that skill can craft...
				NestObjects(data, app:BuildSearchResponse("professionID", data.requireSkill));
				app.BuildSearchResponse_IgnoreUnavailableRecipes = nil;
				data.indent = 0;
				data.visible = true;
				AssignChildren(data);
				updates.Data = data;
				-- only expand the list if this is the first time it is being generated
				self.ExpandInfo = { Expand = true };
				self.force = true;
			end
			self:SetData(data);
			self:Update(self.force);
		end
		-- Can trigger multiple times quickly, but will only run once per profession in a row
		self.RefreshRecipes = function(self, doUpdate)
			-- If it's not yours, don't take credit for it.
			if C_TradeSkillUI.IsTradeSkillLinked() or C_TradeSkillUI.IsTradeSkillGuild() then return; end

			if app.Settings.Collectibles.Recipes then
				-- app.PrintDebug("RefreshRecipes")
				-- Cache Learned Spells
				local skillCache = app.GetRawFieldContainer("spellID");
				if not skillCache then return; end

				local tradeSkillID = app.GetTradeSkillLine();
				self.lastTradeSkillID = tradeSkillID;
				local updates = self.SkillsInit[tradeSkillID] or {};
				self.SkillsInit[tradeSkillID] = updates;

				if doUpdate then
					-- allow re-scanning learned Recipes
					-- app.PrintDebug("Allow Rescan of Recipes")
					updates.Recipes = nil;
				end

				local Runner = self:GetRunner()
				Runner.Run(UpdateLocalizedCategories, self, updates);
				Runner.Run(UpdateLearnedRecipes, self, updates);
				Runner.Run(UpdateData, self, updates);
			end
		end

		-- TSM Shenanigans
		self.TSMCraftingVisible = nil;
		self.SetTSMCraftingVisible = function(self, visible)
			visible = not not visible;
			if visible == self.TSMCraftingVisible then
				return;
			end
			self.TSMCraftingVisible = visible;
			self:SetMovable(true);
			self:ClearAllPoints();
			if visible and self.cachedTSMFrame then
				---@diagnostic disable-next-line: undefined-field
				local queue = self.cachedTSMFrame.queue;
				if queue and queue:IsShown() then
					self:SetPoint("TOPLEFT", queue, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", queue, "BOTTOMRIGHT", 0, 0);
				else
					self:SetPoint("TOPLEFT", self.cachedTSMFrame, "TOPRIGHT", 0, 0);
					self:SetPoint("BOTTOMLEFT", self.cachedTSMFrame, "BOTTOMRIGHT", 0, 0);
				end
				self:SetMovable(false);
			-- Skillet compatibility
			elseif SkilletFrame then
				self:SetPoint("TOPLEFT", SkilletFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", SkilletFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(true);
			elseif TradeSkillFrame then
				-- Default Alignment on the WoW UI.
				self:SetPoint("TOPLEFT", TradeSkillFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", TradeSkillFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
			elseif ProfessionsFrame then
				-- Default Alignment on the 10.0 WoW UI
				self:SetPoint("TOPLEFT", ProfessionsFrame, "TOPRIGHT", 0, 0);
				self:SetPoint("BOTTOMLEFT", ProfessionsFrame, "BOTTOMRIGHT", 0, 0);
				self:SetMovable(false);
			else
				self:SetMovable(false);
				StartCoroutine("TSMWHY", function()
					while InCombatLockdown() or not TradeSkillFrame do coroutine.yield(); end
					StartCoroutine("TSMWHYPT2", function()
						local thing = self.TSMCraftingVisible;
						self.TSMCraftingVisible = nil;
						self:SetTSMCraftingVisible(thing);
					end);
				end);
				return;
			end
			AfterCombatCallback(self.Update, self);
		end
		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...)
			-- app.PrintDebug("Tradeskills.event",e,...)
			if e == "TRADE_SKILL_LIST_UPDATE" then
				if self:IsVisible() then
					-- If it's not yours, don't take credit for it.
					if C_TradeSkillUI.IsTradeSkillLinked() or C_TradeSkillUI.IsTradeSkillGuild() then
						self:SetVisible(false);
						return false;
					end

					-- Check to see if ATT has information about this profession.
					local tradeSkillID = app.GetTradeSkillLine();
					if not tradeSkillID or #SearchForField("professionID", tradeSkillID) < 1 then
						self:SetVisible(false);
						return false;
					end
				end
				self:RefreshRecipes();
			elseif e == "TRADE_SKILL_SHOW" then
				if self.TSMCraftingVisible == nil then
					self:SetTSMCraftingVisible(false);
				end
				if app.Settings:GetTooltipSetting("Auto:ProfessionList") then
					-- Check to see if ATT has information about this profession.
					local tradeSkillID = app.GetTradeSkillLine();
					if not tradeSkillID or #SearchForField("professionID", tradeSkillID) < 1 then
						self:SetVisible(false);
					else
						self:SetVisible(true);
					end
				end
				self:RefreshRecipes(true);
			elseif e == "TRADE_SKILL_CLOSE"
				or e == "GARRISON_TRADESKILL_NPC_CLOSED" then
				self:SetVisible(false);
			end
		end);
		return;
	end
	if self:IsVisible() then
		if TSM_API and TSMAPI_FOUR then
			if not self.cachedTSMFrame then
				for i,child in ipairs({UIParent:GetChildren()}) do
					---@class ATTChildFrameTemplate: Frame
					---@field headerBgCenter any
					local f = child;
					if f.headerBgCenter then
						self.cachedTSMFrame = f;
						local oldSetVisible = f.SetVisible;
						local oldShow = f.Show;
						local oldHide = f.Hide;
						f.SetVisible = function(frame, visible)
							oldSetVisible(frame, visible);
							self:SetTSMCraftingVisible(visible);
						end
						f.Hide = function(frame)
							oldHide(frame);
							self:SetTSMCraftingVisible(false);
						end
						f.Show = function(frame)
							oldShow(frame);
							self:SetTSMCraftingVisible(true);
						end
						if self.gettinMadAtDumbNamingConventions then
							TSMAPI_FOUR.UI.NewElement = self.OldNewElement;
							self.gettinMadAtDumbNamingConventions = nil;
							self.OldNewElement = nil;
						end
						self:SetTSMCraftingVisible(f:IsShown());
						return;
					end
				end
				if not self.gettinMadAtDumbNamingConventions then
					self.gettinMadAtDumbNamingConventions = true;
					self.OldNewElement = TSMAPI_FOUR.UI.NewElement;
					---@diagnostic disable-next-line: duplicate-set-field
					TSMAPI_FOUR.UI.NewElement = function(...)
						AfterCombatCallback(self.Update, self);
						return self.OldNewElement(...);
					end
				end
			end
		elseif TSMCraftingTradeSkillFrame then
			-- print("TSMCraftingTradeSkillFrame")
			if not self.cachedTSMFrame then
				local f = TSMCraftingTradeSkillFrame;
				self.cachedTSMFrame = f;
				local oldSetVisible = f.SetVisible;
				local oldShow = f.Show;
				local oldHide = f.Hide;
				f.SetVisible = function(frame, visible)
					oldSetVisible(frame, visible);
					self:SetTSMCraftingVisible(visible);
				end
				f.Hide = function(frame)
					oldHide(frame);
					self:SetTSMCraftingVisible(false);
				end
				f.Show = function(frame)
					oldShow(frame);
					self:SetTSMCraftingVisible(true);
				end
				if f.queueBtn then
					local setScript = f.queueBtn.SetScript;
					f.queueBtn.SetScript = function(frame, e, callback)
						if e == "OnClick" then
							setScript(frame, e, function(...)
								if callback then callback(...); end

								local thing = self.TSMCraftingVisible;
								self.TSMCraftingVisible = nil;
								self:SetTSMCraftingVisible(thing);
							end);
						else
							setScript(frame, e, callback);
						end
					end
					f.queueBtn:SetScript("OnClick", f.queueBtn:GetScript("OnClick"));
				end
				self:SetTSMCraftingVisible(f:IsShown());
				return;
			end
		end

		-- Update the window and all of its row data
		self:BaseUpdate(force or self.force, got);
		self.force = nil;
	end
end;
customWindowUpdates.WorldQuests = function(self, force, got)
	-- localize some APIs
	local C_TaskQuest_GetQuestsForPlayerByMapID = C_TaskQuest.GetQuestsOnMap;
	local C_QuestLine_RequestQuestLinesForMap = C_QuestLine.RequestQuestLinesForMap;
	local C_QuestLine_GetAvailableQuestLines = C_QuestLine.GetAvailableQuestLines;
	local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;
	local C_AreaPoiInfo_GetAreaPOISecondsLeft = C_AreaPoiInfo.GetAreaPOISecondsLeft;
	local C_QuestLog_GetBountiesForMapID = C_QuestLog.GetBountiesForMapID;
	local GetNumRandomDungeons, GetLFGDungeonInfo, GetLFGRandomDungeonInfo, GetLFGDungeonRewards, GetLFGDungeonRewardInfo =
		  GetNumRandomDungeons, GetLFGDungeonInfo, GetLFGRandomDungeonInfo, GetLFGDungeonRewards, GetLFGDungeonRewardInfo;

	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			force = true;
			local UpdateButton = app.CreateRawText(L.UPDATE_WORLD_QUESTS, {
				["icon"] = 134269,
				["description"] = L.UPDATE_WORLD_QUESTS_DESC,
				["hash"] = "funUpdateWorldQuests",
				["OnClick"] = function(data, button)
					Push(self, "WorldQuests-Rebuild", self.Rebuild);
					return true;
				end,
				["OnUpdate"] = app.AlwaysShowUpdate,
			})
			local data = app.CreateRawText(L.WORLD_QUESTS, {
				["icon"] = 237387,
				["description"] = L.WORLD_QUESTS_DESC,
				["indent"] = 0,
				["back"] = 1,
				["g"] = {
					UpdateButton,
				},
			})
			self:SetData(data);
			-- Build the initial heirarchy
			self:BuildData();
			local emissaryMapIDs = {
				{ 619, 650 },	-- Broken Isles, Highmountain
				{ app.FactionID == Enum.FlightPathFaction.Horde and 875 or 876, 895 },	-- Kul'Tiras or Zandalar, Stormsong Valley
			};
			local worldMapIDs = {
				-- The War Within Continents
				{
					2274,	-- Khaz Algar
				},
				-- Dragon Isles Continents
				{
					1978,	-- Dragon Isles
					{
						{ 2085 },	-- Primalist Tomorrow
						-- any un-attached sub-zones
					}
				},
				-- Shadowlands Continents
				{
					1550,	-- Shadowlands
					-- {}
				},
				-- BFA Continents
				{
					875,	-- Zandalar
					{
						{ 863, 5969, { 54135, 54136 }},	-- Nazmir (Romp in the Swamp [H] / March on the Marsh [A])
						{ 864, 5970, { 53885, 54134 }},	-- Voldun (Isolated Victory [H] / Many Fine Heroes [A])
						{ 862, 5973, { 53883, 54138 }},	-- Zuldazar (Shores of Zuldazar [H] / Ritual Rampage [A])
					}
				},
				{
					876,	-- Kul'Tiras
					{
						{ 896, 5964, { 54137, 53701 }},	-- Drustvar (In Every Dark Corner [H] / A Drust Cause [A])
						{ 942, 5966, { 54132, 51982 }},	-- Stormsong Valley (A Horde of Heroes [H] / Storm's Rage [A])
						{ 895, 5896, { 53939, 53711 }},	-- Tiragarde Sound (Breaching Boralus [H] / A Sound Defense [A])
					}
				},
				{ 1355 },	-- Nazjatar
				-- Legion Continents
				{
					619,	-- Broken Isles
					{
						{ 627 },	-- Dalaran (not a Zone, so doesn't list automatically)
						{ 630, 5175, { 47063 }},	-- Azsuna
						{ 650, 5177, { 47063 }},	-- Highmountain
						{ 634, 5178, { 47063 }},	-- Stormheim
						{ 641, 5210, { 47063 }},	-- Val'Sharah
					}
				},
				{ 905 },	-- Argus
				-- WoD Continents
				{ 572 },	-- Draenor
				-- MoP Continents
				{
					424,	-- Pandaria
					{
						{ 1530, 6489, { 56064 }},	-- Assault: The Black Empire
						{ 1530, 6491, { 57728 }},	-- Assault: The Endless Swarm
						{ 1530, 6490, { 57008 }},	-- Assault: The Warring Clans
					},
				},
				-- Cataclysm Continents
				{ 948 },	-- The Maelstrom
				-- WotLK Continents
				{ 113 },	-- Northrend
				-- BC Continents
				{ 101 },	-- Outland
				-- Vanilla Continents
				{
					12,		-- Kalimdor
					{
						{ 1527, 6486, { 57157 }},	-- Assault: The Black Empire
						{ 1527, 6488, { 56308 }},	-- Assault: Aqir Unearthed
						{ 1527, 6487, { 55350 }},	-- Assault: Amathet Advance
						{ 62 },	-- Darkshore
					},
				},
				{	13,		-- Eastern Kingdoms
					{
						{ 14 },	-- Arathi Highlands
					},
				},
			}
			local RepeatablesPerMapID = {
				[2200] = {	-- Emerald Dream
					78319,	-- The Superbloom
				},
				[2024] = {	-- The Azure Span
					79226,	-- The Big Dig: Traitor's Rest
				},
			}
			-- Blizz likes to list the same quest on multiple maps
			local AddedQuestIDs = {}
			self.Clear = function(self)
				self:GetRunner().Reset()
				local g = self.data.g
				-- wipe parent references from current top-level groups so any delayed
				-- updates on sub-groups no longer chain to the window
				for _,o in ipairs(g) do
					o.parent = nil
				end
				wipe(g);
				tinsert(g, UpdateButton);
				self:BuildData();
				self:Update(true);
			end
			-- World Quests (Tasks)
			self.MergeTasks = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				local pois = C_TaskQuest_GetQuestsForPlayerByMapID(mapID);
				-- app.PrintDebug(#pois,"WQ in",mapID);
				if pois then
					for i,poi in ipairs(pois) do
						-- only include Tasks on this actual mapID since each Zone mapID is checked individually
						if poi.mapID == mapID and not AddedQuestIDs[poi.questID] then
							-- app.PrintTable(poi)
							AddedQuestIDs[poi.questID] = true
							local questObject = GetPopulatedQuestObject(poi.questID);
							if questObject then
								if self.includeAll or
									-- include the quest in the list if holding shift and tracking quests
									(self.includePermanent and self.includeQuests) or
									-- or if it is repeatable (i.e. one attempt per day/week/year)
									questObject.repeatable or
									-- or if it has time remaining
									(questObject.timeRemaining or 0 > 0)
								then
									-- if poi.questID == 78663 then
									-- 	app.print("WQ",questObject.questID,questObject.g and #questObject.g);
									-- end
									-- add the map POI coords to our new quest object
									if poi.x and poi.y then
										questObject.coords = {{ 100 * poi.x, 100 * poi.y, mapID }}
									end
									NestObject(mapObject, questObject);
									-- see if need to retry based on missing data
									-- if not self.retry and questObject.missingData then self.retry = true; end
								end
							end
						-- else app.PrintDebug("Skipped WQ",mapID,poi.mapID,poi.questID)
						end
					end
				end
			end
			-- Storylines/Map Quest Icons
			self.MergeStorylines = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				C_QuestLine_RequestQuestLinesForMap(mapID);
				local questLines = C_QuestLine_GetAvailableQuestLines(mapID)
				if questLines then
					for id,questLine in pairs(questLines) do
						-- dont show 'hidden' quest lines... not sure what this is exactly
						if not questLine.isHidden and not AddedQuestIDs[questLine.questID] then
							AddedQuestIDs[questLine.questID] = true
							local questObject = GetPopulatedQuestObject(questLine.questID);
							if questObject then
								if self.includeAll or
									-- include the quest in the list if holding shift and tracking quests
									(self.includePermanent and self.includeQuests) or
									-- or if it is repeatable (i.e. one attempt per day/week/year)
									questObject.repeatable or
									-- or if it has time remaining
									(questObject.timeRemaining or 0 > 0)
								then
									NestObject(mapObject, questObject);
									-- see if need to retry based on missing data
									-- if not self.retry and questObject.missingData then self.retry = true; end
								end
							end
						end
					end
				else
					-- print("No questline data yet for mapID:",mapID);
					self.retry = true;
				end
			end
			-- Static Repeatables
			self.MergeRepeatables = function(self, mapObject)
				local mapID = mapObject.mapID;
				if not mapID then return; end
				local repeatables = RepeatablesPerMapID[mapID]
				if not repeatables then return end

				local questObject
				for _,questID in ipairs(repeatables) do
					questObject = GetPopulatedQuestObject(questID)
					if questObject then
						if self.includeAll or
							-- Account/Debug or not saved
							(app.MODE_DEBUG_OR_ACCOUNT or not questObject.saved)
						then
							NestObject(mapObject, questObject);
							-- see if need to retry based on missing data
							-- if not self.retry and questObject.missingData then self.retry = true; end
						end
					end
				end

			end
			self.BuildMapAndChildren = function(self, mapObject)
				if not mapObject.mapID then return; end

				-- print("Build Map",mapObject.mapID,mapObject.text);

				-- Merge Tasks for Zone
				self:MergeTasks(mapObject);
				-- Merge Storylines for Zone
				self:MergeStorylines(mapObject);
				-- Merge Repeatables for Zone
				self:MergeRepeatables(mapObject);

				-- look for quests on map child maps as well
				local mapChildInfos = C_Map_GetMapChildrenInfo(mapObject.mapID, 3);
				if mapChildInfos then
					for _,mapInfo in ipairs(mapChildInfos) do
						-- start fetching the data while other stuff is setup
						C_QuestLine_RequestQuestLinesForMap(mapInfo.mapID);
						local subMapObject = app.CreateMapWithStyle(mapInfo.mapID);

						-- Build the children maps
						self:BuildMapAndChildren(subMapObject);

						NestObject(mapObject, subMapObject);
					end
				end
			end
			self.Rebuild = function(self, no)
				-- Already filled with data and nothing needing to retry, just give it a forced update pass since data for quests should now populate dynamically
				if not self.retry and #self.data.g > 1 then
					-- app.PrintDebug("Already WQ data, just update again")
					-- Force Update Callback
					Callback(self.Update, self, true);
					return;
				end
				-- Reset the world quests Runner before building new data
				self:GetRunner().Reset()
				wipe(self.data.g);
				-- Rebuild all World Quest data
				wipe(AddedQuestIDs)
				-- app.PrintDebug("Rebuild WQ Data")
				self.retry = nil;
				-- Put a 'Clear World Quests' click first in the list
				local temp = {{
					['text'] = L.CLEAR_WORLD_QUESTS,
					['icon'] = 2447782,
					['description'] = L.CLEAR_WORLD_QUESTS_DESC,
					['hash'] = "funClearWorldQuests",
					['OnClick'] = function(data, button)
						Push(self, "WorldQuests-Clear", self.Clear);
						return true;
					end,
					['OnUpdate'] = app.AlwaysShowUpdate,
				}};

				-- options when refreshing the list
				self.includeAll = app.MODE_DEBUG;
				self.includeQuests = app.Settings.Collectibles.Quests or app.Settings.Collectibles.QuestsLocked;
				self.includePermanent = IsAltKeyDown() or self.includeAll;

				-- Acquire all of the world mapIDs
				for _,pair in ipairs(worldMapIDs) do
					local mapID = pair[1];
					-- app.PrintDebug("WQ.WorldMapIDs.", mapID)
					-- start fetching the data while other stuff is setup
					C_QuestLine_RequestQuestLinesForMap(mapID);
					local mapObject = app.CreateMapWithStyle(mapID);

					-- Build top-level maps all the way down
					self:BuildMapAndChildren(mapObject);

					-- Invasions
					local mapIDPOIPairs = pair[2];
					if mapIDPOIPairs then
						for i,arr in ipairs(mapIDPOIPairs) do
							-- Sub-Map with Quest information to track
							if #arr >= 3 then
								for j,questID in ipairs(arr[3]) do
									if not IsQuestFlaggedCompleted(questID) then
										local timeLeft = C_AreaPoiInfo_GetAreaPOISecondsLeft(arr[2]);
										if timeLeft and timeLeft > 0 then
											local questObject = GetPopulatedQuestObject(questID);
											-- Custom time remaining based on the map POI since the quest itself does not indicate time remaining
											questObject.timeRemaining = timeLeft;
											local subMapObject = app.CreateMapWithStyle(arr[1]);
											NestObject(subMapObject, questObject);
											NestObject(mapObject, subMapObject);
										end
									end
								end
							else
								-- Basic Sub-map
								local subMap = app.CreateMapWithStyle(arr[1]);

								-- Build top-level maps all the way down for the sub-map
								self:BuildMapAndChildren(subMap);

								NestObject(mapObject, subMap);
							end
						end
					end

					-- Merge everything for this map into the list
					app.Sort(mapObject.g);
					if mapObject.g then
						-- Sort the sub-groups as well
						for i,mapGrp in ipairs(mapObject.g) do
							if mapGrp.mapID then
								app.Sort(mapGrp.g);
							end
						end
					end
					MergeObject(temp, mapObject);
				end

				-- Acquire all of the emissary quests
				for _,pair in ipairs(emissaryMapIDs) do
					local mapID = pair[1];
					-- print("WQ.EmissaryMapIDs." .. tostring(mapID))
					local mapObject = app.CreateMapWithStyle(mapID);
					local bounties = C_QuestLog_GetBountiesForMapID(pair[2]);
					if bounties and #bounties > 0 then
						for _,bounty in ipairs(bounties) do
							local questObject = GetPopulatedQuestObject(bounty.questID);
							NestObject(mapObject, questObject);
						end
					end
					app.Sort(mapObject.g);
					if mapObject.g then
						-- Sort the sub-groups as well
						for i,mapGrp in ipairs(mapObject.g) do
							if mapGrp.mapID then
								app.Sort(mapGrp.g);
							end
						end
					end
					MergeObject(temp, mapObject);
				end

				-- Heroic Deeds
				if self.includePermanent and not (IsQuestFlaggedCompleted(32900) or IsQuestFlaggedCompleted(32901)) then
					local mapObject = app.CreateMapWithStyle(424);
					NestObject(mapObject, GetPopulatedQuestObject(app.FactionID == Enum.FlightPathFaction.Alliance and 32900 or 32901));
					MergeObject(temp, mapObject);
				end

				local OnUpdateForLFGHeader = function(group)
					local meetLevelrange = app.Modules.Filter.Filters.Level(group);
					if meetLevelrange or app.MODE_DEBUG_OR_ACCOUNT then
						-- default logic for available LFG category/Debug/Account
						return false;
					else
						group.visible = nil;
						return true;
					end
				end

				-- Get the LFG Rewards Available at this level
				local numRandomDungeons = GetNumRandomDungeons();
				-- print(numRandomDungeons,"numRandomDungeons");
				if numRandomDungeons > 0 then
					local groupFinder = { text = DUNGEONS_BUTTON, icon = app.asset("Category_GroupFinder") };
					local gfg = {}
					groupFinder.g = gfg
					for index=1,numRandomDungeons,1 do
						local dungeonID = GetLFGRandomDungeonInfo(index);
						-- app.PrintDebug("RandInfo",index,GetLFGRandomDungeonInfo(index));
						-- app.PrintDebug("NormInfo",dungeonID,GetLFGDungeonInfo(dungeonID))
						-- app.PrintDebug("DungeonAppearsInRandomLFD(dungeonID)",DungeonAppearsInRandomLFD(dungeonID)); -- useless
						local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel = GetLFGDungeonInfo(dungeonID);
						-- print(dungeonID,name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel);
						local _, gold, unknown, xp, unknown2, numRewards, unknown = GetLFGDungeonRewards(dungeonID);
						-- print("GetLFGDungeonRewards",dungeonID,GetLFGDungeonRewards(dungeonID));
						local header = { dungeonID = dungeonID, text = name, description = description, lvl = { minRecLevel or 1, maxRecLevel }, OnUpdate = OnUpdateForLFGHeader}
						local hg = {}
						header.g = hg
						if expansionLevel and not isHoliday then
							header.icon = app.CreateExpansion(expansionLevel + 1).icon;
						elseif isTimeWalker then
							header.icon = app.asset("Difficulty_Timewalking");
						end
						for rewardIndex=1,numRewards,1 do
							local itemName, icon, count, claimed, rewardType, itemID, quality = GetLFGDungeonRewardInfo(dungeonID, rewardIndex);
							-- common logic
							local idType = (rewardType or "item").."ID";
							local thing = { [idType] = itemID };
							local _cache = SearchForField(idType, itemID);
							for _,data in ipairs(_cache) do
								-- copy any sourced data for the dungeon reward into the list
								if GroupMatchesParams(data, idType, itemID, true) then
									MergeProperties(thing, data);
								end
								local lvl;
								if isTimeWalker then
									lvl = (data.lvl and type(data.lvl) == "table" and data.lvl[1]) or
											data.lvl or
											(data.parent and data.parent.lvl and type(data.parent.lvl) == "table" and data.parent.lvl[1]) or
											data.parent.lvl or 0;
								else
									lvl = 0;
								end
								-- Should the rewards be listed in the window based on the level of the rewards
								if lvl <= minRecLevel then
									NestObjects(thing, data.g);	-- no need to clone, everything is re-created at the end
								end
							end
							hg[#hg + 1] = thing
						end
						gfg[#gfg + 1] = header
					end
					tinsert(temp, CreateObject(groupFinder));
				end

				-- put all the things into the window data, turning them into objects as well
				NestObjects(self.data, temp);
				-- Build the heirarchy
				self:BuildData();
				-- Force Update
				self:Update(true);
			end
		end

		self:BaseUpdate(force);
	end
end;
end)();

-- ATT Debugger Logic
app.LoadDebugger = function()
	local debuggerWindow = app:GetWindow("Debugger", UIParent, function(self, force)
		if not self.initialized then
			self.initialized = true;
			force = true;
			local CleanFields = {
				parent = 1,
				sourceParent = 1,
				total = 1,
				text = 1,
				forceShow = 1,
				progress = 1,
				OnUpdate = 1,
				expanded = 1,
				hash = 1,
				rawlink = 1,
				modItemID = 1,
				f = 1,
				key = 1,
				visible = 1,
				displayInfo = 1,
				displayID = 1,
				fetchedDisplayID = 1,
				nmr = 1,
				nmc = 1,
				TLUG = 1,
				locked = 1,
				collectibleAsCost = 1,
				costTotal = 1,
				upgradeTotal = 1,
				icon = 1,
				_OnUpdate = 1,
				_SettingsRefresh = 1,
				_coord = 1,
				__merge = 1,
			};
			local function CleanObject(obj)
				if obj == nil then return end
				if type(obj) == "table" then
					local clean = {};
					if obj[1] then
						for _,o in ipairs(obj) do
							clean[#clean + 1] = CleanObject(o)
						end
					else
						for k,v in pairs(obj) do
							if not CleanFields[k] then
								clean[k] = CleanObject(v)
							end
						end
					end
					return clean
				elseif type(obj) == "number" then
					return obj
				else
					return tostring(obj)
				end
			end
			local function InitDebuggerData()
				if not self.rawData then
					self.rawData = LocalizeGlobal("AllTheThingsDebugData", true);
					if self.rawData[1] then
						-- need to clean and create again to get different tables used as the actual 'objects' within the rows, otherwise the object data gets saved into the Global as well
						NestObjects(self.data, CreateObject(CleanObject(self.rawData)));
					end
					if not self.data.g then self.data.g = {}; end
					for i=#self.data.options,1,-1 do
						tinsert(self.data.g, 1, self.data.options[i]);
					end
					AssignChildren(self.data);
					AfterCombatCallback(self.Update, self, true);
				end
			end
			-- batch operation to clear the rawData, and re-populate with a cleaned version of the current debugger content
			self.BackupData = function(self)
				wipe(self.rawData);
				-- skip clickable rows
				for _,o in ipairs(self.data.g) do
					if not o.OnClick then
						tinsert(self.rawData, CleanObject(o));
					end
				end
				app.print("Debugger Data Saved");
			end
			local IgnoredNPCs = {
				[142668] = 1,	-- Merchant Maku (Brutosaur)
				[142666] = 1,	-- Collector Unta (Brutosaur)
				[62821] = 1,	-- Mystic Birdhat (Grand Yak)
				[62822] = 1,	-- Cousin Slowhands (Grand Yak)
				[32642] = 1,	-- Mojodishu (Mammoth)
				[32641] = 1,	-- Drix Blackwrench (Mammoth)
			};
			self:SetData({
				['text'] = "Session History",
				['icon'] = app.asset("WindowIcon_RaidAssistant"),
				["description"] = "This keeps a visual record of all of the quests, maps, loot, and vendors that you have come into contact with since the session was started.",
				["OnUpdate"] = app.AlwaysShowUpdate,
				['back'] = 1,
				['options'] = {
					{
						["hash"] = "clearHistory",
						['text'] = "Clear History",
						['icon'] = 132293,
						["description"] = "Click this to fully clear this window.\n\nNOTE: If you click this by accident, use the dynamic Restore Buttons that this generates to reapply the data that was cleared.\n\nWARNING: If you reload the UI, the data stored in the Reload Button will be lost forever!",
						["OnUpdate"] = app.AlwaysShowUpdate,
						['count'] = 0,
						['OnClick'] = function(row, button)
							local copy = {};
							for i,o in ipairs(self.data.g) do
								-- only backup non-button groups
								if not o.OnClick then
									tinsert(copy, o);
								end
							end
							if #copy < 1 then
								app.print("There is nothing to clear.");
								return true;
							end
							row.ref.count = row.ref.count + 1;
							tinsert(self.data.options, {
								["hash"] = "restore" .. row.ref.count,
								['text'] = "Restore Button " .. row.ref.count,
								['icon'] = app.asset("Button_Reroll"),
								["description"] = "Click this to restore your cleared data.\n\nNOTE: Each Restore Button houses different data.\n\nWARNING: This data will be lost forever when you reload your UI!",
								["OnUpdate"] = app.AlwaysShowUpdate,
								['data'] = copy,
								['OnClick'] = function(row, button)
									for i,info in ipairs(row.ref.data) do
										NestObject(self.data, CreateObject(info));
									end
									AssignChildren(self.data);
									AfterCombatCallback(self.Update, self, true);
									return true;
								end,
							});
							wipe(self.rawData);
							wipe(self.data.g);
							for i=#self.data.options,1,-1 do
								tinsert(self.data.g, 1, self.data.options[i]);
							end
							AssignChildren(self.data);
							AfterCombatCallback(self.Update, self, true);
							return true;
						end,
					},
				},
				['g'] = {},
			});

			local function CategorizeObject(info)
				if info.isVendor then
					return app.CreateNPC(app.HeaderConstants.VENDORS, { g = { info }})
				elseif info.questID then
					if info.isWorldQuest then
						return app.CreateNPC(app.HeaderConstants.WORLD_QUESTS, { g = { info }})
					else
						return app.CreateNPC(app.HeaderConstants.QUESTS, { g = { info }})
					end
				elseif info.npcID then
					return app.CreateNPC(app.HeaderConstants.ZONE_DROPS, { g = { info }})
				elseif info.objectID then
					return app.CreateNPC(app.HeaderConstants.TREASURES, { g = { info }})
				elseif info.unit then
					return app.CreateNPC(app.HeaderConstants.DROPS, { g = { info }})
				end
				return info
			end

			local AddObject = function(info)
				-- print("Debugger.AddObject")
				-- app.PrintTable(info)
				-- print("---")
				-- Bubble Up the Maps
				local mapInfo;
				local mapID = app.CurrentMapID;
				if mapID then
					if info then
						local pos = C_Map.GetPlayerMapPosition(mapID, "player");
						if pos then
							local px, py = pos:GetXY();
							info.coord = { math.ceil(px * 10000) / 100, math.ceil(py * 10000) / 100, mapID };
						end
						info = CategorizeObject(info)
					end
					repeat
						mapInfo = C_Map_GetMapInfo(mapID);
						if mapInfo then
							if not info then
								info = { ["mapID"] = mapInfo.mapID };
								-- print("Added mapID",mapInfo.mapID)
							else
								info = { ["mapID"] = mapInfo.mapID, ["g"] = { info } };
								-- print("Pushed into mapID",mapInfo.mapID)
							end
							mapID = mapInfo.parentMapID
						end
					until not mapInfo or not mapID;
				end

				if info then
					NestObject(self.data, CreateObject(info));
					self:BuildData();
					AfterCombatCallback(self.Update, self, true);
					-- trigger the delayed backup
					DelayedCallback(self.BackupData, 15, self);
				end
			end

			-- Merchant Additions
			local AddMerchant = function(guid)
				-- print("AddMerchant",guid)
				local guid = guid or UnitGUID("npc");
				if guid then
					local ty, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid);
					if npc_id then
						npc_id = tonumber(npc_id);

						if IgnoredNPCs[npc_id] then return true; end

						local numItems = GetMerchantNumItems();
						app.PrintDebug("MERCHANT DETAILS", ty, npc_id, numItems);

						local rawGroups = {};
						for i=1,numItems,1 do
							local link = GetMerchantItemLink(i);
							if link then
								local merchItemIno = C_MerchantFrame.GetItemInfo(i);
								-- Parse as an ITEM LINK.
								local item = { ["itemID"] = tonumber(link:match("item:(%d+)")), ["rawlink"] = link, ["cost"] = merchItemIno.price };
								if merchItemIno.hasExtendedCost then
									local cost = {};
									local itemCount = GetMerchantItemCostInfo(i);
									for j=1,itemCount,1 do
										local _, itemValue, itemLink = GetMerchantItemCostItem(i, j);
										if itemLink then
											-- print("  ", itemValue, itemLink, gsub(itemLink, "\124", "\124\124"));
											local m = itemLink:match("currency:(%d+)");
											if m then
												-- Parse as a CURRENCY.
												tinsert(cost, {"c", tonumber(m), itemValue});
											else
												-- Parse as an ITEM.
												tinsert(cost, {"i", tonumber(itemLink:match("item:(%d+)")), itemValue});
											end
										end
									end
									if cost[1] then
										item.cost = cost;
									end
								end

								tinsert(rawGroups, item);
							end
						end

						local info = { [(ty == "GameObject") and "objectID" or "npcID"] = npc_id };
						local faction = UnitFactionGroup("npc");
						if faction then
							info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
						end
						info.isVendor = 1;
						info.g = rawGroups;
						AddObject(info);
					end
				end
			end

			-- Setup Event Handlers and register for events
			self:SetScript("OnEvent", function(self, e, ...)
				-- app.PrintDebug(e, ...);
				if e == "ZONE_CHANGED_NEW_AREA" or e == "NEW_WMO_CHUNK" then
					AddObject();
				elseif e == "MERCHANT_SHOW" or e == "MERCHANT_UPDATE" then
					SetMerchantFilter(LE_LOOT_FILTER_ALL)
					MerchantFrame_Update()
					DelayedCallback(AddMerchant, 0.5, UnitGUID("npc"));
				elseif e == "TRADE_SKILL_LIST_UPDATE" then
					local tradeSkillID = app.GetTradeSkillLine();
					local currentCategoryID, categories = -1, {};
					local categoryData, categoryList, rawGroups = {}, {}, {};
					local categoryIDs = { C_TradeSkillUI_GetCategories() };
					for i = 1,#categoryIDs do
						currentCategoryID = categoryIDs[i];
						C_TradeSkillUI.GetCategoryInfo(currentCategoryID, categoryData);
						if categoryData.name then
							if not categories[currentCategoryID] then
								local category = {
									["parentCategoryID"] = categoryData.parentCategoryID,
									["categoryID"] = currentCategoryID,
									["name"] = categoryData.name,
									["g"] = {}
								};
								categories[currentCategoryID] = category;
								tinsert(categoryList, category);
							end
						end
					end

					local recipeIDs = C_TradeSkillUI.GetAllRecipeIDs();
					for i = 1,#recipeIDs do
						local spellRecipeInfo = C_TradeSkillUI.GetRecipeInfo(recipeIDs[i]);
						if spellRecipeInfo then
							currentCategoryID = spellRecipeInfo.categoryID;
							if not categories[currentCategoryID] then
								C_TradeSkillUI.GetCategoryInfo(currentCategoryID, categoryData);
								if categoryData.name then
									local category = {
										["parentCategoryID"] = categoryData.parentCategoryID,
										["categoryID"] = currentCategoryID,
										["name"] = categoryData.name,
										["g"] = {}
									};
									categories[currentCategoryID] = category;
									tinsert(categoryList, category);
								end
							end
							local recipe = {
								["recipeID"] = spellRecipeInfo.recipeID,
								["requireSkill"] = tradeSkillID,
								["name"] = spellRecipeInfo.name,
							};
							if spellRecipeInfo.previousRecipeID then
								recipe.previousRecipeID = spellRecipeInfo.previousRecipeID;
							end
							if spellRecipeInfo.nextRecipeID then
								recipe.nextRecipeID = spellRecipeInfo.nextRecipeID;
							end
							tinsert(categories[currentCategoryID].g, recipe);
						end
					end

					-- Make each category parent have children. (not as gross as that sounds)
					for i=#categoryList,1,-1 do
						local category = categoryList[i];
						if category.parentCategoryID then
							local parentCategory = categories[category.parentCategoryID];
							category.parentCategoryID = nil;
							if parentCategory then
								tinsert(parentCategory.g, 1, category);
								tremove(categoryList, i);
							end
						end
					end

					-- Now merge the categories into the raw groups table.
					for i,category in ipairs(categoryList) do
						tinsert(rawGroups, category);
					end
					local info = {
						["professionID"] = tradeSkillID,
						["icon"] = GetTradeSkillTexture(tradeSkillID),
						["name"] = C_TradeSkillUI.GetTradeSkillDisplayName(tradeSkillID),
						["g"] = rawGroups
					};
					NestObject(self.data, CreateObject(info));
					AssignChildren(self.data);
					AfterCombatCallback(self.Update, self, true);
					-- trigger the delayed backup
					DelayedCallback(self.BackupData, 15, self);
				-- Capture quest NPC dialogs
				elseif e == "QUEST_DETAIL" or e == "QUEST_PROGRESS" or e == "QUEST_COMPLETE" then
					local questStartItemID = ...;
					local questID = GetQuestID();
					if questID == 0 then return false; end
					local npc = "questnpc";
					local guid = UnitGUID(npc);
					if not guid then
						npc = "npc";
						guid = UnitGUID(npc);
					end
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid;
					if guid then type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid); end
					app.PrintDebug(e, questStartItemID, " => Quest #", questID, type, npc_id, app.NPCNameFromID[npc_id]);

					local rawGroups = {};
					for i=1,GetNumQuestRewards(),1 do
						local link = GetQuestItemLink("reward", i);
						if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
					end
					for i=1,GetNumQuestChoices(),1 do
						local link = GetQuestItemLink("choice", i);
						if link then tinsert(rawGroups, { ["itemID"] = GetItemID(link) }); end
					end
					-- GetNumQuestLogRewardSpells removed in 10.1
					-- for i=1,GetNumQuestLogRewardSpells(questID),1 do
					-- 	local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = GetQuestLogRewardSpell(i, questID);
					-- 	if garrFollowerID then
					-- 		tinsert(rawGroups, { ["followerID"] = garrFollowerID, ["name"] = name });
					-- 	elseif spellID then
					-- 		if isTradeskillSpell then
					-- 			tinsert(rawGroups, { ["recipeID"] = spellID, ["name"] = name });
					-- 		else
					-- 			tinsert(rawGroups, { ["spellID"] = spellID, ["name"] = name });
					-- 		end
					-- 	end
					-- end

					local info = { ["questID"] = questID };
					if #rawGroups > 0 then
						info.g = rawGroups
					end
					info.name = app.GetQuestName(questID)
					if e == "QUEST_DETAIL" then
						local providers = {}
						if questStartItemID and questStartItemID > 0 then tinsert(providers, { "i", questStartItemID }); end
						if npc_id then
							npc_id = tonumber(npc_id);
							if type == "GameObject" then
								tinsert(providers, { "o", npc_id })
							else
								info.qg = npc_id
								info.qg_name = app.NPCNameFromID[npc_id]
							end
							local faction = UnitFactionGroup(npc);
							if faction then
								info.r = faction == "Horde" and Enum.FlightPathFaction.Horde or Enum.FlightPathFaction.Alliance;
							end
						end
						if #providers > 0 then
							info.providers = providers
						end
					end
					AddObject(info);
				-- Capture accepted quests which skip NPC dialog windows (addons, auto-accepted)
				elseif e == "QUEST_ACCEPTED" then
					local questID = ...
					if questID then
						local info = { ["questID"] = questID };
						info.name = app.GetQuestName(questID)
						AddObject(info);
					end
				-- Capture various personal/party loot received
				elseif e == "CHAT_MSG_LOOT" then
					local msg, player, a, b, c, d, e, f, g, h, i, j, k, l = ...;
					-- "You receive item: item:###" will break the match
					-- this probably doesn't work in other locales
					msg = msg:gsub("item: ", "");
					-- print("Loot parse",msg)
					local itemString = msg:match("item[%-?%d:]+");
					if itemString then
						-- print("Looted Item",itemString)
						local itemID = GetItemID(itemString);
						AddObject({ ["unit"] = j, ["g"] = { { ["itemID"] = itemID, ["rawlink"] = itemString } } });
					end
				-- Capture personal loot sources
				elseif e == "LOOT_READY" then
					local slots = GetNumLootItems();
					-- print("Loot Slots:",slots);
					local loot, source, itemID, info;
					local type, zero, server_id, instance_id, zone_uid, id, spawn_uid;
					local mapID = app.CurrentMapID;
					if mapID then
						local pos = C_Map.GetPlayerMapPosition(mapID, "player");
						if pos then
							local px, py = pos:GetXY();
							print("coord", math.ceil(px * 10000) / 100, math.ceil(py * 10000) / 100, mapID)
						end
					end
					for i=1,slots,1 do
						loot = GetLootSlotLink(i);
						if loot then
							itemID = GetItemID(loot);
							if itemID then
								source = { GetLootSourceInfo(i) };
								for j=1,#source,2 do
									type, zero, server_id, instance_id, zone_uid, id, spawn_uid = ("-"):split(source[j]);
									-- TODO: test this with Item containers
									app.PrintDebug("Add Loot",itemID,"from",type,id)
									info = { [(type == "GameObject") and "objectID" or "npcID"] = tonumber(id), ["g"] = { { ["itemID"] = itemID, ["rawlink"] = loot } } };
									-- print("Add Loot")
									-- app.PrintTable(info);
									AddObject(info);
								end
							else
								app.PrintDebug("No ItemID!",loot)
							end
						end
					end
				elseif e == "QUEST_LOOT_RECEIVED" then
					local questID, itemLink = ...
					local itemID = GetItemID(itemLink)
					local info = { ["questID"] = questID, ["g"] = { { ["itemID"] = itemID, ["rawlink"] = itemLink } } }
					app.PrintDebug("Add Quest Loot from",questID,itemLink,itemID)
					AddObject(info)
				elseif e == "LOOT_OPENED" then
					local guid = GetLootSourceInfo(1)
					if guid then
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = ("-"):split(guid);
						if(type == "GameObject") then
							local text = GameTooltipTextLeft1:GetText()
							print('ObjectID: '..(npc_id or 'UNKNOWN').. ' || ' .. 'Name: ' .. (text or 'UNKNOWN'))
						end
					end
				end
			end);
			self:RegisterEvent("QUEST_ACCEPTED");
			self:RegisterEvent("QUEST_DETAIL");
			self:RegisterEvent("QUEST_PROGRESS");
			self:RegisterEvent("QUEST_LOOT_RECEIVED");
			self:RegisterEvent("QUEST_COMPLETE");
			self:RegisterEvent("TRADE_SKILL_LIST_UPDATE");
			self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
			self:RegisterEvent("NEW_WMO_CHUNK");
			self:RegisterEvent("MERCHANT_SHOW");
			self:RegisterEvent("MERCHANT_UPDATE");
			self:RegisterEvent("LOOT_OPENED");
			self:RegisterEvent("LOOT_READY");
			self:RegisterEvent("CHAT_MSG_LOOT");
			--self:RegisterAllEvents();

			InitDebuggerData();
			-- Ensure the current Zone is added when the Window is initialized
			AddObject();
			AssignChildren(self.data);
		end

		-- Update the window and all of its row data
		self:BaseUpdate(force);
	end);
	app.TopLevelUpdateGroup(debuggerWindow.data);
	debuggerWindow:Show();
	app.LoadDebugger = function()
		debuggerWindow:Toggle();
	end
end	-- app.LoadDebugger

-- Auction House Lib
(function()
local auctionFrame = CreateFrame("Frame");
app.AuctionFrame = auctionFrame;
app.ProcessAuctionData = function()
	-- If we have no auction data, then simply return now.
	if not AllTheThingsAuctionData then return end;
	local count = 0;
	for _ in pairs(AllTheThingsAuctionData) do count = count+1 end
	if count < 1 then return end;

	-- Search the ATT Database for information related to the auction links (items, species, etc)
	local filterID;
	local searchResultsByKey, searchResult, searchResults, key, keys, value, data = {}, nil, nil, nil, nil, nil, nil;
	for k,v in pairs(AllTheThingsAuctionData) do
		searchResults = app.SearchForLink(v.itemLink);
		if searchResults then
			if #searchResults > 0 then
				searchResult = searchResults[1];
				key = searchResult.key;
				if key == "npcID" then
					if searchResult.itemID then
						key = "itemID";
					end
				elseif key == "spellID" then
					local AuctionDataItemKeyOverrides = {
						[92426] = "itemID", -- Sealed Tome of the Lost Legion
					};
					if AuctionDataItemKeyOverrides[searchResult.itemID] then
						key = AuctionDataItemKeyOverrides[searchResult.itemID]
					end
				end
				value = searchResult[key];
				keys = searchResultsByKey[key];

				-- Make sure that the key type is represented.
				if not keys then
					keys = {};
					searchResultsByKey[key] = keys;
				end

				-- First time this key value was used.
				data = keys[value];
				if not data then
					data = CreateObject(searchResult);
					for i=2,#searchResults,1 do
						MergeObject(data, CreateObject(searchResults[i]));
					end
					if data.key == "npcID" then app.CreateItem(data.itemID, data); end
					data.auctions = {};
					keys[value] = data;
				end
				tinsert(data.auctions, v.itemLink);
			end
		end
	end

	-- Move all achievementID-based items into criteriaID
	if searchResultsByKey.achievementID then
		local criteria = searchResultsByKey.criteriaID;
		if criteria then
			for key,entry in pairs(searchResultsByKey.achievementID) do
				criteria[key] = entry;
			end
		else
			searchResultsByKey.criteriaID = searchResultsByKey.achievementID;
		end
		searchResultsByKey.achievementID = nil;
	end

	-- Apply a sub-filter to items with spellID-based identifiers.
	if searchResultsByKey.spellID then
		local filteredItems = {};
		for key,entry in pairs(searchResultsByKey.spellID) do
			filterID = entry.filterID or entry.f;
			if filterID then
				local filterData = filteredItems[filterID];
				if not filterData then
					filterData = {};
					filteredItems[filterID] = filterData;
				end
				filterData[key] = entry;
			else
				print("Spell " .. entry.spellID .. " (Item ID #" .. (entry.itemID or "???") .. ") is missing a filterID?");
			end
		end

		if filteredItems[100] then searchResultsByKey.mountID = filteredItems[100]; end	-- Mounts
		if filteredItems[200] then searchResultsByKey.recipeID = filteredItems[200]; end -- Recipes
		searchResultsByKey.spellID = nil;
	end

	if searchResultsByKey.sourceID then
		local filteredItems = {};
		local cachedSourceIDs = searchResultsByKey.sourceID;
		searchResultsByKey.sourceID = {};
		for sourceID,entry in pairs(cachedSourceIDs) do
			filterID = entry.filterID or entry.f;
			if filterID then
				local filterData = filteredItems[entry.f];
				if not filterData then
					filterData = app.CreateFilter(filterID);
					filterData.g = {};
					filteredItems[filterID] = filterData;
					tinsert(searchResultsByKey.sourceID, filterData);
				end
				tinsert(filterData.g, entry);
			end
		end
		for f,entry in pairs(filteredItems) do
			app.Sort(entry.g, function(a,b)
				return a.u and not b.u;
			end);
		end
	end

	-- Process the Non-Collectible Items for Reagents
	local reagentCache = app.ReagentsDB;
	if reagentCache and searchResultsByKey.itemID then
		local cachedItems = searchResultsByKey.itemID;
		searchResultsByKey.itemID = {};
		searchResultsByKey.reagentID = {};
		for itemID,entry in pairs(cachedItems) do
			if reagentCache[itemID] then
				searchResultsByKey.reagentID[itemID] = entry;
				if not entry.g then entry.g = {}; end
				for itemID2,count in pairs(reagentCache[itemID][2]) do
					local searchResults = SearchForField("itemID", itemID2);
					if #searchResults > 0 then
						tinsert(entry.g, CreateObject(searchResults[1]));
					end
				end
			else
				-- Push it back into the itemID table
				searchResultsByKey.itemID[itemID] = entry;
			end
		end
	end

	-- Insert Buttons into the groups.
	-- not sure what this was but unreferenced globals currently
	-- wipe(window.data.g);
	-- for i,option in ipairs(window.data.options) do
	-- 	tinsert(window.data.g, option);
	-- end

	local ObjectTypeMetas = {
		["criteriaID"] = app.CreateFilter(105, {	-- Achievements
			["icon"] = 341221,
			["description"] = L.ITEMS_FOR_ACHIEVEMENTS_DESC,
			["priority"] = 1,
		}),
		["sourceID"] = {	-- Appearances
			["text"] = "Appearances",
			["icon"] = 135276,
			["description"] = L.ALL_APPEARANCES_DESC,
			["priority"] = 2,
		},
		["mountID"] = app.CreateFilter(100, {	-- Mounts
			["description"] = L.ALL_THE_MOUNTS_DESC,
			["priority"] = 3,
		}),
		["speciesID"] = app.CreateFilter(101, {	-- Battle Pets
			["description"] = L.ALL_THE_BATTLEPETS_DESC,
			["priority"] = 4,
		}),
		["questID"] = app.CreateNPC(app.HeaderConstants.QUESTS, {	-- Quests
			["icon"] = 464068,
			["description"] = L.ALL_THE_QUESTS_DESC,
			["priority"] = 5,
		}),
		["recipeID"] = app.CreateFilter(200, {	-- Recipes
			["icon"] = 134942,
			["description"] = L.ALL_THE_RECIPES_DESC,
			["priority"] = 6,
		}),
		["itemID"] = {					-- General
			["text"] = "General",
			["icon"] = 334365,
			["description"] = L.ALL_THE_ILLUSIONS_DESC,
			["priority"] = 7,
		},
		["reagentID"] = app.CreateFilter(56, {	-- Reagent
			["icon"] = 135851,
			["description"] = L.ALL_THE_REAGENTS_DESC,
			["priority"] = 8,
		}),
	};

	-- Display Test for Raw Data + Filtering
	for key, searchResults in pairs(searchResultsByKey) do
		local subdata = {};
		subdata.visible = true;
		if ObjectTypeMetas[key] then
			setmetatable(subdata, { __index = ObjectTypeMetas[key] });
		else
			subdata.description = "Container for '" .. key .. "' object types.";
			subdata.text = key;
		end
		subdata.g = {};
		for i,j in pairs(searchResults) do
			tinsert(subdata.g, j);
		end
		-- not sure what this was but unreferenced globals currently
		-- tinsert(window.data.g, subdata);
	end
	-- not sure what this was but unreferenced globals currently
	-- app.Sort(window.data.g, function(a, b)
	-- 	return (b.priority or 0) > (a.priority or 0);
	-- end);
	-- AssignChildren(window.data);
	-- app.TopLevelUpdateGroup(window.data);
	-- window:Show();
	-- window:Update();
end

app.OpenAuctionModule = function(self)
	-- TODO: someday someone might fix this AH functionality...
	if true then return; end

	if C_AddOns.IsAddOnLoaded("TradeSkillMaster") then -- Why, TradeSkillMaster, why are you like this?
		C_Timer.After(2, app.EmptyFunction);
	end
	if app.Blizzard_AuctionHouseUILoaded then
		-- Localize some global APIs
		local C_AuctionHouse_GetNumReplicateItems = C_AuctionHouse.GetNumReplicateItems;
		local C_AuctionHouse_GetReplicateItemInfo = C_AuctionHouse.GetReplicateItemInfo;
		local C_AuctionHouse_GetReplicateItemLink = C_AuctionHouse.GetReplicateItemLink;

		-- Create the Auction Tab for ATT.
		local tabID = AuctionHouseFrame.numTabs+1;
		local button = CreateFrame("Button", "AuctionHouseFrameTab"..tabID, AuctionHouseFrame, "AuctionHouseFrameDisplayModeTabTemplate");
		button:SetID(tabID);
		button:SetText(L.SHORTTITLE);
		button:SetNormalFontObject(GameFontHighlightSmall);
		button:SetPoint("LEFT", AuctionHouseFrame.Tabs[tabID-1], "RIGHT", -15, 0);
		tinsert(AuctionHouseFrame.Tabs, button);

		PanelTemplates_SetNumTabs (AuctionHouseFrame, tabID);
		PanelTemplates_EnableTab  (AuctionHouseFrame, tabID);

		-- Garbage collect the function after this is executed.
		app.OpenAuctionModule = app.EmptyFunction;
		app.AuctionModuleTabID = tabID;

		-- Create the movable Auction Data window.
		local window = app:GetWindow("AuctionData", AuctionHouseFrame);
		auctionFrame:SetScript("OnEvent", function(self, e, ...)
			if e == "REPLICATE_ITEM_LIST_UPDATE" then
				self:UnregisterEvent("REPLICATE_ITEM_LIST_UPDATE");
				AllTheThingsAuctionData = {};
				local items = {};
				local auctionItems = C_AuctionHouse_GetNumReplicateItems();
				for i=0,auctionItems-1 do
					local itemLink;
					local count, _, _, _, _, _, _, price, _, _, _, _, _, _, itemID, status = select(3, C_AuctionHouse_GetReplicateItemInfo(i));
					if itemID then
						if price and status then
							itemLink = C_AuctionHouse_GetReplicateItemLink(i);
							if itemLink then
								AllTheThingsAuctionData[itemID] = { itemLink = itemLink, count = count, price = (price/count) };
							end
						else
							local item = Item:CreateFromItemID(itemID);
							items[item] = true;

							item:ContinueOnItemLoad(function()
								count, _, _, _, _, _, _, price, _, _, _, _, _, _, itemID, status = select(3, C_AuctionHouse_GetReplicateItemInfo(i));
								items[item] = nil;
								if itemID and status then
									itemLink = C_AuctionHouse_GetReplicateItemLink(i);
									if itemLink then
										AllTheThingsAuctionData[itemID] = { itemLink = itemLink, count = count, price = (price/count) };
									end
								end
								if not next(items) then
									items = {};
								end
							end);
						end
					end
				end
				if not next(items) then
					items = {};
				end
				print(L.TITLE .. L.AH_SCAN_SUCCESSFUL_1 .. auctionItems .. L.AH_SCAN_SUCCESSFUL_2);
				StartCoroutine("ProcessAuctionData", app.ProcessAuctionData, 1);
			end
		end);
		window:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT", 0, -10);
		window:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT", 0, 10);
		window:Hide();

		-- Cache some functions to make them faster
		local origSideDressUpFrameHide, origSideDressUpFrameShow = SideDressUpFrame.Hide, SideDressUpFrame.Show;
		---@diagnostic disable-next-line: duplicate-set-field
		SideDressUpFrame.Hide = function(...)
			origSideDressUpFrameHide(...);
			window:ClearAllPoints();
			window:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT", 0, -10);
			window:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT", 0, 10);
		end
		---@diagnostic disable-next-line: duplicate-set-field
		SideDressUpFrame.Show = function(...)
			origSideDressUpFrameShow(...);
			window:ClearAllPoints();
			window:SetPoint("LEFT", SideDressUpFrame, "RIGHT", 0, 0);
			window:SetPoint("TOP", AuctionHouseFrame, "TOP", 0, -10);
			window:SetPoint("BOTTOM", AuctionHouseFrame, "BOTTOM", 0, 10);
		end

		button:SetScript("OnClick", function(self) -- This is the "ATT" button at the bottom of the auction house frame
			if self:GetID() == tabID then
				window:Show();
			end
		end);
	end
end
end)();

do -- Setup and Startup Functionality
-- Creates the data structures and initial 'Default' profiles for ATT
app.SetupProfiles = function()
	-- base profiles containers
	local ATTProfiles = {
		Profiles = {},
		Assignments = {},
	};
	AllTheThingsProfiles = ATTProfiles;
	local default = app.Settings:NewProfile(DEFAULT);
	-- copy various existing settings that are now Profiled
	if AllTheThingsSettings then
		-- General Settings
		if AllTheThingsSettings.General then
			for k,v in pairs(AllTheThingsSettings.General) do
				default.General[k] = v;
			end
		end
		-- Tooltip Settings
		if AllTheThingsSettings.Tooltips then
			for k,v in pairs(AllTheThingsSettings.Tooltips) do
				default.Tooltips[k] = v;
			end
		end
		-- Seasonal Filters
		if AllTheThingsSettings.Seasonal then
			for k,v in pairs(AllTheThingsSettings.Seasonal) do
				default.Seasonal[k] = v;
			end
		end
		-- Unobtainable Filters
		if AllTheThingsSettings.Unobtainable then
			for k,v in pairs(AllTheThingsSettings.Unobtainable) do
				default.Unobtainable[k] = v and true or nil;
			end
		end
	end

	-- pull in window data for the default profile
	for _,window in pairs(app.Windows) do
		window:StorePosition();
	end

	app.print("Initialized ATT Profiles!");

	-- delete old variables
	AllTheThingsSettings = nil;
	AllTheThingsAD.UnobtainableItemFilters = nil;
	AllTheThingsAD.SeasonalFilters = nil;

	-- initialize settings again due to profiles existing now
	app.Settings:Initialize();
end

app.ActiveCustomCollects = {};
-- Called when the Addon is loaded to process initial startup information
app.Startup = function()
	-- app.PrintMemoryUsage("Startup")
	AllTheThingsAD = LocalizeGlobalIfAllowed("AllTheThingsAD", true);	-- For account-wide data.
	-- Cache the Localized Category Data
	AllTheThingsAD.LocalizedCategoryNames = setmetatable(AllTheThingsAD.LocalizedCategoryNames or {}, { __index = app.CategoryNames });
	app.CategoryNames = nil;

	-- Clear some keys which got added and shouldn't have been
	AllTheThingsAD.ExplorationDB = nil
	AllTheThingsAD.ExplorationAreaPositionDB = nil

	-- Character Data Storage
	local characterData = LocalizeGlobalIfAllowed("ATTCharacterData", true);
	local currentCharacter = characterData[app.GUID];
	if not currentCharacter then
		currentCharacter = {};
		characterData[app.GUID] = currentCharacter;
	end
	local name, realm = UnitName("player");
	if not realm then realm = GetRealmName(); end
	if name then currentCharacter.name = name; end
	if realm then currentCharacter.realm = realm; end
	if app.Me then currentCharacter.text = app.Me; end
	if app.GUID then currentCharacter.guid = app.GUID; end
	if app.Level then currentCharacter.lvl = app.Level; end
	if app.FactionID then currentCharacter.factionID = app.FactionID; end
	if app.ClassIndex then currentCharacter.classID = app.ClassIndex; end
	if app.RaceIndex then currentCharacter.raceID = app.RaceIndex; end
	if app.Class then currentCharacter.class = app.Class; end
	if app.Race then currentCharacter.race = app.Race; end
	if not currentCharacter.Achievements then currentCharacter.Achievements = {}; end
	if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
	if not currentCharacter.CustomCollects then currentCharacter.CustomCollects = {}; end
	if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
	if not currentCharacter.Exploration then currentCharacter.Exploration = {}; end
	if not currentCharacter.Factions then currentCharacter.Factions = {}; end
	if not currentCharacter.FlightPaths then currentCharacter.FlightPaths = {}; end
	if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
	if not currentCharacter.Professions then currentCharacter.Professions = {}; end
	if not currentCharacter.Quests then currentCharacter.Quests = {}; end
	if not currentCharacter.Spells then currentCharacter.Spells = {}; end
	if not currentCharacter.Titles then currentCharacter.Titles = {}; end
	app.CurrentCharacter = currentCharacter;
	app.AddEventHandler("OnPlayerLevelUp", function()
		currentCharacter.lvl = app.Level;
	end);

	-- Account Wide Data Storage
	ATTAccountWideData = LocalizeGlobalIfAllowed("ATTAccountWideData", true);
	local accountWideData = ATTAccountWideData;
	if not accountWideData.Achievements then accountWideData.Achievements = {}; end
	if not accountWideData.BattlePets then accountWideData.BattlePets = {}; end
	if not accountWideData.Exploration then accountWideData.Exploration = {}; end
	if not accountWideData.Factions then accountWideData.Factions = {}; end
	if not accountWideData.FactionBonus then accountWideData.FactionBonus = {}; end
	if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
	if not accountWideData.HeirloomRanks then accountWideData.HeirloomRanks = {}; end
	if not accountWideData.Quests then accountWideData.Quests = {}; end
	if not accountWideData.Spells then accountWideData.Spells = {}; end
	if not accountWideData.Titles then accountWideData.Titles = {}; end
	if not accountWideData.OneTimeQuests then accountWideData.OneTimeQuests = {}; end

	-- Old unused data
	currentCharacter.CommonItems = nil
	accountWideData.CommonItems = nil

	-- Notify Event Handlers that Saved Variable Data is available.
	app.HandleEvent("OnSavedVariablesAvailable", currentCharacter, accountWideData);

	-- Update the total account wide death counter.
	local deaths = 0;
	for guid,character in pairs(characterData) do
		if character and character.Deaths and character.Deaths > 0 then
			deaths = deaths + character.Deaths;
		end
	end
	accountWideData.Deaths = deaths;

	-- CRIEVE NOTE: Once the Sync Window is moved over from Classic, this can be removed.
	if not AllTheThingsAD.LinkedAccounts then
		AllTheThingsAD.LinkedAccounts = {};
	end
	-- app.PrintMemoryUsage("Startup:Done")
end
-- This needs to be the first OnStartup event processed
app.AddEventHandler("OnStartup", app.Startup, true)

local function PrePopulateAchievementSymlinks()
	local achCache = app.SearchForFieldContainer("achievementID")
	-- app.PrintDebug("FillAchSym")
	if achCache then
		local FillSym = app.FillAchievementCriteriaAsync
		app.FillRunner.SetPerFrame(500)
		local Run = app.FillRunner.Run
		local group
		for achID,groups in pairs(achCache) do
			for i=1,#groups do
				group = groups[i]
				if group.__type == "BaseAchievement" and not GetRelativeValue(group, "sourceIgnored") then
					-- app.PrintDebug("FillAchSym",group.hash)
					Run(FillSym, group)
				end
			end
		end
		app.FillRunner.SetPerFrame(25)
	end
	-- app.PrintDebug("Done:FillAchSym")
end
app.AddEventHandler("OnInit", PrePopulateAchievementSymlinks)

-- Function which is triggered after Startup
local function InitDataCoroutine()
	local yield = coroutine.yield
	-- app.PrintMemoryUsage("InitDataCoroutine")
	-- if IsInInstance() then
	-- 	app.print("cannot fully load while in an Instance due to Blizzard restrictions. Please Zone out to finish loading ATT.")
	-- end

	-- Wait for the Data Cache to return something.
	while not app:GetDataCache() do yield(); end
	-- Wait for the app to finish OnStartup event, somehow this can trigger out of order on some clients
	while app.Wait_OnStartupDone do yield(); end

	local accountWideData = LocalizeGlobalIfAllowed("ATTAccountWideData");
	local characterData = LocalizeGlobalIfAllowed("ATTCharacterData");
	local currentCharacter = characterData[app.GUID];

	-- Clean up other matching Characters with identical Name-Realm but differing GUID
	Callback(function()
		local myGUID = app.GUID;
		local myName, myRealm = currentCharacter.name, currentCharacter.realm;
		local myRegex = "%|cff[A-z0-9][A-z0-9][A-z0-9][A-z0-9][A-z0-9][A-z0-9]"..myName.."%-"..myRealm.."%|r";
		local otherName, otherRealm, otherText;
		local toClean;
		for guid,character in pairs(characterData) do
			-- simple check on name/realm first
			otherName = character.name;
			otherRealm = character.realm;
			otherText = character.text;
			if guid ~= myGUID then
				if otherName == myName and otherRealm == myRealm then
					if toClean then tinsert(toClean, guid)
					else toClean = { guid }; end
				elseif otherText and otherText:match(myRegex) then
					if toClean then tinsert(toClean, guid)
					else toClean = { guid }; end
				end
			end
		end
		if toClean then
			local copyTables = { "Buildings","GarrisonBuildings","Factions","FlightPaths" };
			local cleanCharacterFunc = function(guid)
				-- copy the set of QuestIDs from the duplicate character (to persist repeatable Quests collection)
				local character = characterData[guid];
				for _,tableName in ipairs(copyTables) do
					local copyTable = character[tableName];
					if copyTable then
						-- app.PrintDebug("Copying Dupe",tableName)
						local currentTable = currentCharacter[tableName];
						if not currentTable then
							-- old/restored character missing copied data
							currentTable = {}
							currentCharacter[tableName] = currentTable
						end
						for ID,complete in pairs(copyTable) do
							-- app.PrintDebug("Check",ID,complete,"?",currentTable[ID])
							if complete and not currentTable[ID] then
								-- app.PrintDebug("Copied Completed",ID)
								currentTable[ID] = complete;
							end
						end
					end
				end
				-- Remove the actual dupe data afterwards
				-- move to a backup table temporarily in case anyone reports weird issues, we could potentially resolve them?
				local backups = accountWideData._CharacterBackups;
				if not backups then
					backups = {};
					accountWideData._CharacterBackups = backups;
				end
				backups[guid] = character;
				characterData[guid] = nil;
				-- app.print("Removed & Backed up Duplicate Data of Current Character:",character.text,guid)
			end
			for _,guid in ipairs(toClean) do
				app.FunctionRunner.Run(cleanCharacterFunc, guid);
			end
		end
	end);

	app.HandleEvent("OnInit")

	-- Current character collections shouldn't use '2' ever... so clear any 'inaccurate' data
	local currentQuestsCache = currentCharacter.Quests;
	for questID,completion in pairs(currentQuestsCache) do
		if completion == 2 then currentQuestsCache[questID] = nil; end
	end

	-- Let a frame go before hitting the initial refresh to make sure as much time as possible is allowed for the operation
	-- app.PrintDebug("Yield prior to Refresh")
	yield();

	-- Setup the use of profiles after a short delay to ensure that the layout window positions are collected
	if not AllTheThingsProfiles then DelayedCallback(app.SetupProfiles, 5); end

	-- do a settings apply to ensure ATT windows which have now been created, are moved according to the current Profile
	app.Settings:ApplyProfile();

	-- clear harvest data on load in case someone forgets
	AllTheThingsHarvestItems = {};

	-- warning about debug logging in case it sneaks in we can realize quicker
	app.PrintDebug("NOTE: ATT debug prints enabled!")

	-- Execute the OnReady handlers.
	app.HandleEvent("OnReady")

	-- finally can say the app is ready
	app.IsReady = true;
	-- app.PrintDebug("ATT is Ready!");

	-- app.PrintMemoryUsage("InitDataCoroutine:Done")
end

app:RegisterFuncEvent("PLAYER_ENTERING_WORLD", function(...)
	-- app.PrintDebug("PLAYER_ENTERING_WORLD",...)
	app.InWorld = true;
	app:UnregisterEventClean("PLAYER_ENTERING_WORLD")
	StartCoroutine("InitDataCoroutine", InitDataCoroutine);
end);
end -- Setup and Startup Functionality

-- Slash Command List
SLASH_AllTheThings1 = "/allthethings";
SLASH_AllTheThings2 = "/things";
SLASH_AllTheThings3 = "/att";
SlashCmdList.AllTheThings = function(cmd)
	if cmd then
		-- app.PrintDebug(cmd)
		local args = { (" "):split(cmd:lower()) };
		cmd = args[1];
		-- app.PrintDebug(args)
		-- first arg is always the window/command to execute
		app.ResetCustomWindowParam(cmd);
		for k=2,#args do
			local customArg, customValue = args[k], nil;
			customArg, customValue = ("="):split(customArg);
			-- app.PrintDebug("Split custom arg:",customArg,customValue)
			app.SetCustomWindowParam(cmd, customArg, customValue or true);
		end

		-- Eventually will migrate known Chat Commands to their respective creators
		-- TODO: maybe this block migrates to base.lua or a separate module?
		local commandFunc = app.ChatCommands[cmd]
		if commandFunc then
			local help = args[2] == "help"
			if help then return app.ChatCommands.PrintHelp(cmd) end
			return commandFunc(args)
		end

		if not cmd or cmd == "" or cmd == "main" or cmd == "mainlist" then
			app.ToggleMainList();
			return true;
		elseif cmd == "bounty" then
			app:GetWindow("Bounty"):Toggle();
			return true;
		elseif cmd == "debugger" then
			app.LoadDebugger();
			return true;
		elseif cmd == "filters" then
			app:GetWindow("ItemFilter"):Toggle();
			return true;
		elseif cmd == "finder" then
			app.SetCustomWindowParam("list", "type", "itemharvester");
			app.SetCustomWindowParam("list", "harvesting", true);
			app.SetCustomWindowParam("list", "limit", 225000);
			app:GetWindow("list"):Toggle();
			return true;
		elseif cmd == "harvest_achievements" then
			app:GetWindow("AchievementHarvester"):Toggle();
			return true;
		elseif cmd == "ra" then
			app:GetWindow("RaidAssistant"):Toggle();
			return true;
		elseif cmd == "ran" or cmd == "rand" or cmd == "random" then
			app:GetWindow("Random"):Toggle();
			return true;
		elseif cmd == "list" then
			app:GetWindow("list"):Toggle();
			return true;
		elseif cmd == "nwp" then
			app:GetWindow("NWP"):Toggle();
			return true;
		elseif cmd == "awp" then
			--app:GetWindow("awp"):Hide();
			app.SetCustomWindowParam("awp", "reset", true);
			app:GetWindow("awp"):Toggle();
			return true;
		elseif cmd == "rwp" then
			app:GetWindow("RWP"):Toggle();
			return true;
		elseif cmd == "wq" then
			app:GetWindow("WorldQuests"):Toggle();
			return true;
		elseif cmd == "unsorted" then
			app:GetWindow("Unsorted"):Toggle();
			return true;
		elseif cmd == "nyi" then
			app:GetWindow("NeverImplemented"):Toggle();
			return true;
		elseif cmd == "hat" then
			app:GetWindow("HiddenAchievementTriggers"):Toggle();
			return true;
		elseif cmd == "hct" then
			app:GetWindow("HiddenCurrencyTriggers"):Toggle();
			return true;
		elseif cmd == "hqt" then
			app:GetWindow("HiddenQuestTriggers"):Toggle();
			return true;
		elseif cmd == "sourceless" then
			app:GetWindow("Sourceless"):Toggle();
			return true;
		elseif cmd:sub(1, 4) == "mini" then
			app:ToggleMiniListForCurrentZone();
			return true;
		else
			if cmd:sub(1, 6) == "mapid:" then
				app:GetWindow("CurrentInstance"):SetMapID(tonumber(cmd:sub(7)), true);
				return true;
			end
		end

		-- Search for the Link in the database
		app.SetSkipLevel(2);
		local group = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {SkipFill = true});
		app.SetSkipLevel(0);
		-- make sure it's 'something' returned from the search before throwing it into a window
		if group and (group.link or group.name or group.text or group.key) then
			app:CreateMiniListForGroup(group);
			return true;
		end
		app.print("Unknown Command: ", cmd);
	else
		-- Default command
		app.ToggleMainList();
	end
end

SLASH_AllTheThingsBOUNTY1 = "/attbounty";
SlashCmdList.AllTheThingsBOUNTY = function(cmd)
	app:GetWindow("Bounty"):Toggle();
end

SLASH_AllTheThingsHARVESTER1 = "/attharvest";
SLASH_AllTheThingsHARVESTER2 = "/attharvester";
SlashCmdList.AllTheThingsHARVESTER = function(cmd)
	app.print("Force Debug Mode");
	app.Debugging = true
	app.Settings:ForceRefreshFromToggle();
	app.Settings:SetDebugMode(true);
	app.SetCustomWindowParam("list", "reset", true);
	app.SetCustomWindowParam("list", "type", "cache:item");
	app.SetCustomWindowParam("list", "harvesting", true);
	local args = { (","):split(cmd:lower()) };
	app.SetCustomWindowParam("list", "min", args[1]);
	app.SetCustomWindowParam("list", "limit", args[2]);
	app:GetWindow("list"):Toggle();
end

SLASH_AllTheThingsMAPS1 = "/attmaps";
SlashCmdList.AllTheThingsMAPS = function(cmd)
	app:GetWindow("CosmicInfuser"):Toggle();
end

SLASH_AllTheThingsMINI1 = "/attmini";
SLASH_AllTheThingsMINI2 = "/attminilist";
SlashCmdList.AllTheThingsMINI = function(cmd)
	app:ToggleMiniListForCurrentZone();
end

SLASH_AllTheThingsRA1 = "/attra";
SlashCmdList.AllTheThingsRA = function(cmd)
	app:GetWindow("RaidAssistant"):Toggle();
end

SLASH_AllTheThingsRAN1 = "/attran";
SLASH_AllTheThingsRAN2 = "/attrandom";
SlashCmdList.AllTheThingsRAN = function(cmd)
	app:GetWindow("Random"):Toggle();
end

SLASH_AllTheThingsWQ1 = "/attwq";
SlashCmdList.AllTheThingsWQ = function(cmd)
	app:GetWindow("WorldQuests"):Toggle();
end

-- Define Event Behaviours
app.AddonLoadedTriggers = {
	[appName] = function()
		-- OnLoad events (saved variables are now available)
		app.HandleEvent("OnLoad")
	end,
	["Blizzard_AuctionHouseUI"] = function()
		app.Blizzard_AuctionHouseUILoaded = true;
		if app.Settings:GetTooltipSetting("Auto:AH") then
			app:OpenAuctionModule();
		end
	end,
};
-- Register Event for startup
app:RegisterFuncEvent("ADDON_LOADED", function(addonName)
	local addonTrigger = app.AddonLoadedTriggers[addonName];
	if addonTrigger then addonTrigger(); end
end)

app.Wait_OnStartupDone = true
app.AddEventHandler("OnStartupDone", function() app.Wait_OnStartupDone = nil end)

-- app.PrintMemoryUsage("AllTheThings.EOF");