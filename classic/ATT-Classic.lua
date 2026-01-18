--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2025 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
-- App locals
local appName, app = ...;
local L = app.L;

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

-- Global API cache
-- While this may seem silly, caching references to commonly used APIs is actually a performance gain...
local ipairs, pairs, rawset, rawget, select, tinsert, tremove
	= ipairs, pairs, rawset, rawget, select, tinsert, tremove;
local GetAchievementNumCriteria = _G["GetAchievementNumCriteria"];
local GetAchievementCriteriaInfo = _G["GetAchievementCriteriaInfo"];
local IsPlayerSpell, IsSpellKnown, IsSpellKnownOrOverridesKnown =
	  IsPlayerSpell, IsSpellKnown, IsSpellKnownOrOverridesKnown;
local C_QuestLog_IsOnQuest = C_QuestLog.IsOnQuest;

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemIcon = app.WOWAPI.GetItemIcon;
local GetItemInfoInstant = app.WOWAPI.GetItemInfoInstant;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellCooldown = app.WOWAPI.GetSpellCooldown;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetSpellLink = app.WOWAPI.GetSpellLink;

-- App & Module locals
local contains = app.contains;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;
local CloneClassInstance, GetRelativeValue
	= app.CloneClassInstance, app.GetRelativeValue;
local SearchForField = app.SearchForField;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local GetProgressColorText = app.Modules.Color.GetProgressColorText;
local Colorize = app.Modules.Color.Colorize;
local HexToARGB = app.Modules.Color.HexToARGB;
local RGBToHex = app.Modules.Color.RGBToHex;
local GetUnobtainableTexture
app.IsSpellKnownHelper = IsSpellKnown;

-- Locals from future-loaded Modules
app.AddEventHandler("OnLoad", function()
	GetUnobtainableTexture = app.GetUnobtainableTexture
end)

-- Data Lib
local AllTheThingsAD = {};			-- For account-wide data.

-- Color Lib
local function GetProgressTextForRow(data)
	local total = data.total;
	if total and (total > 1 or (total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, total);
	elseif data.collectible then
		return app.GetCollectionIcon(data.collected);
	elseif data.trackable then
		return app.GetCompletionIcon(data.saved);
	end
end
local function GetProgressTextForTooltip(data)
	local iconOnly = app.Settings:GetTooltipSetting("ShowIconOnly");
	if iconOnly then return GetProgressTextForRow(data); end

	if data.total and (data.total > 1 or (data.total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, data.total);
	elseif data.collectible or (data.spellID and data.itemID and data.trackable) then
		return app.GetCollectionText(data.collected);
	elseif data.trackable then
		return app.GetCompletionText(data.saved);
	end
end
app.GetProgressTextForRow = GetProgressTextForRow;
app.GetProgressTextForTooltip = GetProgressTextForTooltip;

-- Keys for groups which are in-game 'Things'
-- Copied from Retail since it's used in UI/Waypoints.lua
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
	achievementID = true,	-- special handling
	criteriaID = true,	-- special handling
};

local MergeObject;
local CloneArray = app.CloneArray;
local function GetHash(t)
	local hash = t.hash;
	if hash then return hash; end
	hash = app.CreateHash(t);
	--app.PrintDebug("No hash for object:", hash, t.text);
	return hash;
end
local function MergeObjects(g, g2)
	for i,o in ipairs(g2) do
		MergeObject(g, o);
	end
end
MergeObject = function(g, t, index)
	local hash = GetHash(t);
	for i,o in ipairs(g) do
		if GetHash(o) == hash then
			if t.g then
				local tg = t.g;
				t.g = nil;
				if o.g then
					MergeObjects(o.g, tg);
				else
					o.g = tg;
				end
			end
			for k,v in pairs(t) do
				if k == "races" or k == "c" then
					local c = rawget(o, k);
					if not c then
						c = CloneArray(v);
						rawset(o, k, c);
					else
						for _,p in ipairs(v) do
							if not contains(c, p) then
								tinsert(c, p);
							end
						end
					end
				elseif k == "r" then
					if o[k] and o[k] ~= v then
						rawset(o, k, nil);
					else
						rawset(o, k, v);
					end
				elseif k ~= "expanded" then
					rawset(o, k, v);
				end
			end
			return o;
		end
	end
	if index then
		tinsert(g, index, t);
	else
		tinsert(g, t);
	end
	rawset(t, "nmr", (t.races and not contains(t.races, app.RaceIndex)) or (t.r and t.r ~= app.FactionID));
	rawset(t, "nmc", t.c and not contains(t.c, app.ClassIndex));
	return t;
end
local function MergeClone(g, o)
	local clone = CloneClassInstance(o);
	local u = GetRelativeValue(o, "u");
	if u then clone.u = u; end
	local e = GetRelativeValue(o, "e");
	if e then clone.e = e; end
	local lvl = GetRelativeValue(o, "lvl");
	if lvl then clone.lvl = lvl; end
	if not o.itemID or o.b == 1 then
		local races = o.races;
		if races then
			clone.races = CloneArray(races);
		else
			local r = GetRelativeValue(o, "r");
			if r then
				clone.r = r;
				clone.races = nil;
			else
				races = GetRelativeValue(o, "races");
				if races then clone.races = CloneArray(races); end
			end
		end
		local c = GetRelativeValue(o, "c");
		if c then clone.c = CloneArray(c); end
	end
	return MergeObject(g, clone);
end

app.MergeClone = MergeClone;
app.MergeObject = MergeObject;
app.MergeObjects = MergeObjects;

local ResolveSymbolicLink;
(function()
local subroutines;
subroutines = {
	["common_recipes_vendor"] = function(npcID)
		return {
			{"select", "npcID", npcID},	-- Main Vendor
			{"pop"},	-- Remove Main Vendor and push his children into the processing queue.
			{"is", "itemID"},	-- Only Items
			{"exclude", "itemID",
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
			},
		};
	end,
	["common_vendor"] = function(npcID)
		return {
			{"select", "npcID", npcID},	-- Main Vendor
			{"pop"},	-- Remove Main Vendor and push his children into the processing queue.
			{"is", "itemID"},	-- Only Items
		};
	end,
	["pvp_gear_base"] = function(expansionID, headerID1, headerID2)
		local b = {
			{ "select", "expansionID", expansionID },	-- Select the Expansion header
			{ "pop" },	-- Discard the Expansion header and acquire the children.
			{ "where", "headerID", headerID1 },	-- Select the Season header
		};
		if headerID2 then
			tinsert(b, { "pop" });	-- Discard the Season header and acquire the children.
			tinsert(b, { "where", "headerID", headerID2 });	-- Select the Set header
		end
		return b;
	end,
};
ResolveSymbolicLink = function(o)
	if o.resolved then return o.resolved; end
	if o and o.sym then
		local searchResults, finalized = {}, {};
		for j,sym in ipairs(o.sym) do
			local cmd = sym[1];
			if cmd == "select" then
				-- Instruction to search the full database for multiple of a given type
				local field = sym[2];
				local cache;
				for i=3,#sym do
					local cache = SearchForField(field, sym[i]);
					if #cache > 0 then
						for k,result in ipairs(cache) do
							local ref = ResolveSymbolicLink(result);
							if ref then
								if result.g then
									for _,m in ipairs(result.g) do
										tinsert(searchResults, m);
									end
								end
								for _,m in ipairs(ref) do
									tinsert(searchResults, m);
								end
							else
								tinsert(searchResults, result);
							end
						end
					elseif field == "itemID" then
						tinsert(searchResults, app.CreateItem(sym[i], {
							description = "This was dynamically filled using a symlink, but the information wasn't found in the addon.",
						}));
					else
						print(app.GenerateSourceHash(o));
						print("Failed to select ", field, sym[i]);
					end
				end
			elseif cmd == "selectparent" then
				-- Instruction to select the parent object of the parent that owns the symbolic link.
				local cache = sym[2];
				if cache and cache > 0 then
					local parent = o.parent;
					while cache > 1 do
						parent = parent.parent;
						cache = cache - 1;
					end
					if parent then
						tinsert(searchResults, parent);
					else
						print("Failed to select parent " .. sym[2] .. " levels up.");
					end
				else
					-- Select the direct parent object.
					tinsert(searchResults, o.parent);
				end
			elseif cmd == "selectprofession" then
				local requireSkill, response = sym[2], nil;
				response = app:BuildSearchResponse(app.Categories.Instances, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=GROUP_FINDER,icon = app.asset("Category_D&R"),g=response}); end
				response = app:BuildSearchResponse(app.Categories.Zones, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.WorldDrops, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=TRANSMOG_SOURCE_4,icon = app.asset("Category_WorldDrops"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.Craftables, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM,icon = app.asset("Category_Crafting"),g=response});  end
				response = app:BuildSearchResponse(app.Categories.Holidays, "requireSkill", requireSkill);
				if response then tinsert(searchResults, app.CreateCustomHeader(app.HeaderConstants.HOLIDAYS, response));  end
				response = app:BuildSearchResponse(app.Categories.WorldEvents, "requireSkill", requireSkill);
				if response then tinsert(searchResults, {text=BATTLE_PET_SOURCE_7,icon = app.asset("Category_Event"),g=response});  end
				if app.Categories.ExpansionFeatures then
					response = app:BuildSearchResponse(app.Categories.ExpansionFeatures, "requireSkill", requireSkill);
					if response then tinsert(searchResults, {text=EXPANSION_FILTER_TEXT,icon = app.asset("Category_ExpansionFeatures"),g=response}); end
				end
			elseif cmd == "pop" then
				-- Instruction to "pop" all of the group values up one level.
				local orig = searchResults;
				searchResults = {};
				for k,result in ipairs(orig) do
					if result.g then
						for l,t in ipairs(result.g) do
							tinsert(searchResults, t);
						end
					end
				end
			elseif cmd == "where" then
				-- Instruction to include only search results where a key value is a value
				local key, value = sym[2], sym[3];
				for k=#searchResults,1,-1 do
					local result = searchResults[k];
					if not result[key] or result[key] ~= value then
						tremove(searchResults, k);
					end
				end
			elseif cmd == "index" then
				-- Instruction to include the search result with a given index within each of the selection's groups.
				local index = sym[2];
				local orig = searchResults;
				searchResults = {};
				for k=#orig,1,-1 do
					local result = orig[k];
					if result.g and index <= #result.g then
						tinsert(searchResults, result.g[index]);
					end
				end
			elseif cmd == "not" then
				-- Instruction to include only search results where a key value for a field is not a value
				local field = sym[2];
				if #sym > 3 then
					local matches = {};
					for k=3,#sym,1 do
						matches[sym[k]] = true;
					end
					for k=#searchResults,1,-1 do
						local result = searchResults[k];
						local value = result[field];
						if value and matches[value] then
							tremove(searchResults, k);
						end
					end
				else
					local value = sym[3];
					for k=#searchResults,1,-1 do
						local result = searchResults[k];
						if result[field] and result[field] == value then
							tremove(searchResults, k);
						end
					end
				end
			elseif cmd == "is" then
				-- Instruction to include only search results where a key exists
				local key = sym[2];
				for k=#searchResults,1,-1 do
					if not searchResults[k][key] then tremove(searchResults, k); end
				end
			elseif cmd == "isnt" then
				-- Instruction to include only search results where a key doesn't exist
				local key = sym[2];
				for k=#searchResults,1,-1 do
					if searchResults[k][key] then tremove(searchResults, k); end
				end
			elseif cmd == "contains" then
				-- Instruction to include only search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				tremove(clone, 1);
				tremove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local result = searchResults[k];
						if not result[key] or not contains(clone, result[key]) then
							tremove(searchResults, k);
						end
					end
				end
			elseif cmd == "exclude" then
				-- Instruction to exclude search results where a key value contains a value.
				local key = sym[2];
				local clone = {unpack(sym)};
				tremove(clone, 1);
				tremove(clone, 1);
				if #clone > 0 then
					for k=#searchResults,1,-1 do
						local result = searchResults[k];
						if result[key] and contains(clone, result[key]) then
							tremove(searchResults, k);
						end
					end
				end
			elseif cmd == "finalize" then
				-- Instruction to finalize the current search results and prevent additional queries from affecting this selection.
				for k,result in ipairs(searchResults) do
					tinsert(finalized, result);
				end
				wipe(searchResults);
			elseif cmd == "merge" then
				-- Instruction to take all of the finalized and non-finalized search results and merge them back in to the processing queue.
				for k,result in ipairs(searchResults) do
					tinsert(finalized, result);
				end
				searchResults = finalized;
				finalized = {};
			elseif cmd == "invtype" then
				-- Instruction to include only search results where an item is of a specific inventory type.
				local types = {unpack(sym)};
				tremove(types, 1);
				if #types > 0 then
					for k=#searchResults,1,-1 do
						local result = searchResults[k];
						if result.itemID and not contains(types, select(4, GetItemInfoInstant(result.itemID))) then
							tremove(searchResults, k);
						end
					end
				end
			elseif cmd == "sub" then
				local subroutine = subroutines[sym[2]];
				if subroutine then
					local args = {unpack(sym)};
					tremove(args, 1);
					tremove(args, 1);
					local commands = subroutine(unpack(args));
					if commands then
						local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
						if results then
							for k,result in ipairs(results) do
								tinsert(finalized, result);
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "subif" then
				-- Instruction to perform a set of commands if a conditional is returned true.
				local subroutine = subroutines[sym[2]];
				if subroutine then
					-- If the subroutine's conditional was successful.
					if sym[3] and (sym[3])(o) then
						local args = {unpack(sym)};
						tremove(args, 1);
						tremove(args, 1);
						tremove(args, 1);
						local commands = subroutine(unpack(args));
						if commands then
							local results = ResolveSymbolicLink(setmetatable({sym=commands}, {__index=o}));
							if results then
								for k,result in ipairs(results) do
									tinsert(searchResults, result);
								end
							end
						end
					end
				else
					print("Could not find subroutine", sym[2]);
				end
			elseif cmd == "achievement_criteria" then
				-- Instruction to select the criteria provided by the achievement this is attached to. (maybe build this into achievements?)
				if GetAchievementNumCriteria then
					local achievementID = o.achievementID;
					local num = GetAchievementNumCriteria(achievementID);
					if type(num) ~= "number" then
						--print("Attempting to use 'achievement_criteria' with achievement", achievementID);
						return;
					end
					local cache;
					for criteriaID=1,num,1 do
						---@diagnostic disable-next-line: redundant-parameter
						local _, criteriaType, _, _, _, _, _, assetID, _, uniqueID = GetAchievementCriteriaInfo(achievementID, criteriaID, true);
						if not uniqueID or uniqueID <= 0 then uniqueID = criteriaID; end
						local criteriaObject = app.CreateAchievementCriteria(uniqueID);
						if criteriaObject then
							criteriaObject.achievementID = achievementID;
							if criteriaType == 27 then
								cache = SearchForField("questID", assetID);
							elseif criteriaType == 36 or criteriaType == 42 then
								criteriaObject.providers = {{ "i", assetID }};
							elseif criteriaType == 110 or criteriaType == 29 or criteriaType == 69 or criteriaType == 52 or criteriaType == 53 or criteriaType == 54 or criteriaType == 32 then
								-- Ignored
							else
								--print("Unhandled Criteria Type", criteriaType, assetID);
							end
							if cache and #cache > 0 then
								local uniques = {};
								MergeObjects(uniques, cache);
								for i,p in ipairs(uniques) do
									rawset(p, "text", nil);
									for key,value in pairs(p) do
										criteriaObject[key] = value;
									end
								end
							end
							criteriaObject.parent = o;
							tinsert(searchResults, criteriaObject);
						end
					end
				end
			elseif cmd == "meta_achievement" then
				-- Instruction to search the full database for multiple achievementID's
				local cache;
				for i=2,#sym do
					local cache = SearchForField("achievementID", sym[i]);
					if #cache > 0 then
						for k,result in ipairs(cache) do
							local ref = ResolveSymbolicLink(result);
							if ref then
								local cs = app.CloneReference(result);
								if not cs.g then cs.g = {}; end
								for i,m in ipairs(ref) do
									tinsert(cs.g, m);
								end
								tinsert(searchResults, cs);
							else
								tinsert(searchResults, result);
							end
						end
					else
						print("Failed to select achievementID", sym[i]);
					end
				end
				-- Remove any Criteria groups associated with those achievements
				for k=#searchResults,1,-1 do
					local result = searchResults[k];
					if result.criteriaID then tremove(searchResults, k); end
				end
			elseif cmd == "partial_achievement" then
				-- Instruction to search the full database for an achievementID and persist the associated Criteria
				-- Do nothing, this is done in the mini list instead. We don't want to build a useless list of criteria.
			end
		end

		-- If we have any pending finalizations to make, then merge them into the finalized table. [Equivalent to a "finalize" instruction]
		if #searchResults > 0 then
			for k,result in ipairs(searchResults) do
				tinsert(finalized, result);
			end
		end

		-- If we had any finalized search results, then return it.
		if #finalized > 0 then
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contains ", #finalized, " values after filtering.");
			o.resolved = finalized;
			return finalized;
		else
			-- print("Symbolic Link for ", o.key, " ", o[o.key], " contained no values after filtering.");
		end
	end
end
end)();
app.ResolveSymbolicLink = ResolveSymbolicLink;
local function BuildContainsInfo(groups, entries, paramA, paramB, indent, layer)
	for i,group in ipairs(groups) do
		if app.RecursiveGroupRequirementsFilter(group) then
			local right = nil;
			if group.total and (group.total > 1 or (group.total > 0 and not group.collectible)) then
				if (group.progress / group.total) < 1 or app.Settings:Get("Show:CompletedGroups") then
					right = GetProgressColorText(group.progress, group.total);
				end
			elseif paramA and paramB and (not group[paramA] or (group[paramA] and group[paramA] ~= paramB)) then
				if group.collectible then
					if group.collected then
						if app.Settings:Get("Show:CollectedThings") then
							right = app.GetCollectionIcon(group.collected);
						end
					else
						right = L["NOT_COLLECTED_ICON"];
					end
				elseif group.trackable then
					if app.Settings:Get("Show:TrackableThings") then
						if group.saved then
							if app.Settings:Get("Show:CollectedThings") then
								right = L["COMPLETE_ICON"];
							end
						else
							right = L["NOT_COLLECTED_ICON"];
						end
					elseif group.visible then
						right = group.count and (group.count .. "x") or "---";
					end
				elseif group.visible then
					right = group.count and (group.count .. "x") or "---";
				end
			end

			if right then
				-- Insert into the display.
				local o = { prefix = indent, group = group, right = right };
				if group.u then
					local phase = L.PHASES[group.u];
					if phase and (not phase.buildVersion or app.GameBuildVersion < phase.buildVersion) then
						o.texture = L.UNOBTAINABLE_ITEM_TEXTURES[phase.state];
					end
				elseif group.e then
					o.texture = L.UNOBTAINABLE_ITEM_TEXTURES[4];
				end
				if o.texture then
					o.prefix = o.prefix:sub(4) .. "|T" .. o.texture .. ":0|t ";
					o.texture = nil;
				end
				tinsert(entries, o);

				-- Only go down one more level.
				if layer < 2 and group.g and #group.g > 0 and not group.symbolized then
					BuildContainsInfo(group.g, entries, paramA, paramB, indent .. "  ", layer + 1);
				end
			end
		end
	end
end
local function BuildReagentInfo(groups, entries, paramA, paramB, indent, layer)
	for i,group in ipairs(groups) do
		if app.RecursiveGroupRequirementsFilter(group) then
			local o = { prefix = indent, group = group };
			if group.u then
				local phase = L.PHASES[group.u];
				if phase and (not phase.buildVersion or app.GameBuildVersion < phase.buildVersion) then
					o.texture = L.UNOBTAINABLE_ITEM_TEXTURES[phase.state];
				end
			elseif group.e then
				o.texture = L.UNOBTAINABLE_ITEM_TEXTURES[4];
			end
			if o.texture then
				o.prefix = o.prefix:sub(4) .. "|T" .. o.texture .. ":0|t ";
				o.texture = nil;
			end
			if group.count then
				o.right = group.count .. "x";
			end
			tinsert(entries, o);
		end
	end
end

local InitialCachedSearch;
local IsQuestReadyForTurnIn = app.IsQuestReadyForTurnIn;
local SourceLocationSettingsKey = setmetatable({
	creatureID = "SourceLocations:Creatures",
}, {
	__index = function(t, key)
		return "SourceLocations:Things";
	end
});
local UnobtainableTexture = "|T" .. app.asset("status-unobtainable") .. ":0|t";
local function HasCost(group, idType, id)
	-- check if the group has a cost which includes the given parameters
	if group.cost and type(group.cost) == "table" then
		if idType == "itemID" then
			for i,c in ipairs(group.cost) do
				if c[2] == id and c[1] == "i" then
					return true;
				end
			end
		elseif idType == "currencyID" then
			for i,c in ipairs(group.cost) do
				if c[2] == id and c[1] == "c" then
					return true;
				end
			end
		end
	end
	return false;
end
local function SortByCommonBossDrops(a, b)
	return not (a.headerID and a.headerID == app.HeaderConstants.COMMON_BOSS_DROPS) and b.headerID and b.headerID == app.HeaderConstants.COMMON_BOSS_DROPS;
end
local function SortByCraftTypeID(a, b)
	local craftTypeA = a.craftTypeID or 0;
	local craftTypeB = b.craftTypeID or 0;
	if craftTypeA == craftTypeB then
		return (a.name or RETRIEVING_DATA) < (b.name or RETRIEVING_DATA);
	end
	return craftTypeA > craftTypeB;
end

local function AddSourceLinesForTooltip(tooltipInfo, paramA, paramB, group)
	if group and app.Settings:GetTooltipSetting("SourceLocations") and (not paramA or app.Settings:GetTooltipSetting(SourceLocationSettingsKey[paramA])) then
		--print("SourceLocations", paramA, paramB);
		local temp, text, parent = {}, nil, nil;
		local unfiltered, right = {}, nil;
		local showUnsorted = app.Settings:GetTooltipSetting("SourceLocations:Unsorted");
		local showCompleted = app.Settings:GetTooltipSetting("SourceLocations:Completed");
		local wrap = app.Settings:GetTooltipSetting("SourceLocations:Wrapping");
		local RecursiveUnobtainableFilter, RecursiveCharacterRequirementsFilter, GetRelativeGroup
			= app.RecursiveUnobtainableFilter, app.RecursiveCharacterRequirementsFilter, app.GetRelativeGroup
		local abbrevs = L["ABBREVIATIONS"];

		-- Include Cost Sources
		local sourceGroups = group;
		if #sourceGroups == 0 and (paramA == "itemID" or paramA == "currencyID") then
			local costGroups = SearchForField(paramA .. "AsCost", paramB);
			if costGroups and #costGroups > 0 then
				local regroup = {};
				for i,g in ipairs(sourceGroups) do
					tinsert(regroup, g);
				end
				for i,g in ipairs(costGroups) do
					tinsert(regroup, g);
				end
				sourceGroups = regroup;
			end
		end

		for _,j in ipairs(sourceGroups) do
			parent = j.parent;
			if parent and not GetRelativeGroup(j, "hideText") and parent.parent
				and (showCompleted or not app.IsComplete(j))
				and not HasCost(j, paramA, paramB)
			then
				text = app.GenerateSourcePathForTooltip(parent);
				if showUnsorted or (not text:match(L.UNSORTED) and not text:match(L.HIDDEN_QUEST_TRIGGERS)) then
					for source,replacement in pairs(abbrevs) do
						text = text:gsub(source, replacement);
					end
					-- doesn't meet current unobtainable filters
					if not RecursiveUnobtainableFilter(parent) then
						tinsert(unfiltered, { text, UnobtainableTexture });
					-- from obtainable, different character source
					elseif not RecursiveCharacterRequirementsFilter(parent) then
						tinsert(unfiltered, { text, "|T374223:0|t" });
					else
						-- check if this needs an unobtainable icon even though it's being shown
						right = GetUnobtainableTexture(GetRelativeGroup(parent, "e") or GetRelativeGroup(parent, "u") or j) or (j.rwp and app.asset("status-prerequisites"));
						tinsert(temp, { text, right and ("|T" .. right .. ":0|t") });
					end
				end
			end
		end
		-- if in Debug or no sources visible, add any unfiltered sources
		if app.MODE_DEBUG or (#temp < 1 and not (paramA == "creatureID" or paramA == "encounterID")) then
			for _,data in ipairs(unfiltered) do
				tinsert(temp, data);
			end
		end
		if #temp > 0 then
			local listing = {};
			local maximum = app.Settings:GetTooltipSetting("Locations");
			local count = 0;
			app.Sort(temp, app.SortDefaults.IndexOneStrings);
			for _,data in ipairs(temp) do
				text = data[1];
				right = data[2];
				if right and right:len() > 0 then
					text = text .. " " .. right;
				end
				if not contains(listing, text) then
					count = count + 1;
					if count <= maximum then
						tinsert(listing, text);
					end
				end
			end
			if count > maximum then
				tinsert(listing, (L.AND_OTHER_SOURCES):format(count - maximum));
			end
			if #listing > 0 then
				tooltipInfo.hasSourceLocations = true;
				for _,text in ipairs(listing) do
					if not group.working and IsRetrieving(text) then group.working = true; end
					local left, right = DESCRIPTION_SEPARATOR:split(text);
					tinsert(tooltipInfo, { left = left, right = right, wrap = wrap });
				end
			end
		end
	end
end
local SourceShowKeys = {
		["achievementID"] = true,
		["creatureID"] = true,
		["expansionID"] = false,
		["explorationID"] = true,
		["factionID"] = true,
		["flightpathID"] = true,
		["headerID"] = false,
		["itemID"] = true,
		["speciesID"] = true,
		["titleID"] = true,
	};
if app.GameBuildVersion < 20000 then
	SourceShowKeys.spellID = true;
end
app.Settings.CreateInformationType("SourceLocations", {
	priority = 2.7,
	text = "Source Locations",
	HideCheckBox = true,
	Process = function(t, data, tooltipInfo)
		local key, id = data.key, data[data.key];
		if key and id and SourceShowKeys[key] then
			if tooltipInfo.hasSourceLocations then return; end
			AddSourceLinesForTooltip(tooltipInfo, key, id, app.SearchForField(key, id));
		end
	end
})

local GetRelativeDifficulty = app.GetRelativeDifficulty
---@param method function
---@param paramA string
---@param paramB number
local function GetSearchResults(method, paramA, paramB, ...)
	-- app.PrintDebug("GetSearchResults",method,paramA,paramB,...)
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
	if paramB then paramB = tonumber(paramB) or paramB;
	else rawlink = paramA; end

	-- This method can be called nested, and some logic should only process for the initial call
	local isTopLevelSearch;
	if not InitialCachedSearch then
		InitialCachedSearch = true;
		isTopLevelSearch = true;
	end

	-- Determine if this tooltip needs more work the next time it refreshes.
	local tooltipInfo, mostAccessibleSource = {}, nil;

	-- Call to the method to search the database.
	local group, a, b = method(paramA, paramB);
	if group then
		if a then paramA = a; end
		if b then paramB = b; end
		-- Move all post processing here?
		if paramA == "creatureID" or paramA == "npcID" or paramA == "encounterID" or paramA == "objectID" then
			local subgroup = {};
			for _,j in ipairs(group) do
				if not j.ShouldExcludeFromTooltip then
					tinsert(subgroup, j);
				end
			end
			group = subgroup;

			local regroup = {};
			if app.MODE_DEBUG or true then
				for i,j in ipairs(group) do
					tinsert(regroup, j);
				end
			else
				if app.MODE_ACCOUNT then
					for i,j in ipairs(group) do
						if app.RecursiveUnobtainableFilter(j) then
							if j.questID and j.itemID then
								if not j.saved then
									-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
									if C_QuestLog_IsOnQuest(j.questID) then
										if not IsQuestReadyForTurnIn(j.questID) then
											tinsert(regroup, j);
										end
									elseif j.providers then
										tinsert(regroup, j);
									else
										-- Do a quick search on the itemID.
										local searchResults = SearchForField("itemID", j.itemID);
										if #searchResults > 0 then
											for k,searchResult in ipairs(searchResults) do
												if searchResult.providers then
													for l,provider in ipairs(searchResult.providers) do
														if provider[1] == 'i' and provider[2] == j.itemID then
															tinsert(regroup, j);
															break;
														end
													end
													break;
												end
											end
										end
									end
								end
							else
								tinsert(regroup, j);
							end
						end
					end
				else
					for i,j in ipairs(group) do
						if app.RecursiveCharacterRequirementsFilter(j) and app.RecursiveUnobtainableFilter(j) and app.RecursiveGroupRequirementsFilter(j) then
							if j.questID and j.itemID then
								if not j.saved then
									-- Only show the item on the tooltip if the quest is active and incomplete or the item is a provider.
									if C_QuestLog_IsOnQuest(j.questID) then
										if not IsQuestReadyForTurnIn(j.questID) then
											tinsert(regroup, j);
										end
									elseif j.providers then
										tinsert(regroup, j);
									else
										-- Do a quick search on the itemID.
										local searchResults = SearchForField("itemID", j.itemID);
										if #searchResults > 0 then
											for k,searchResult in ipairs(searchResults) do
												if searchResult.providers then
													for l,provider in ipairs(searchResult.providers) do
														if provider[1] == 'i' and provider[2] == j.itemID then
															tinsert(regroup, j);
															break;
														end
													end
													break;
												end
											end
										end
									end
								end
							else
								tinsert(regroup, j);
							end
						end
					end
				end
			end
			if #regroup > 0 then
				app.Sort(regroup, SortByCommonBossDrops);
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
	else
		group = {};
	end
	group.working = nil;

	-- For Creatures that are inside of an instance, we only want the data relevant for the instance.

	-- Determine if this is a search for an item
	local itemID, itemString;
	if rawlink then
		---@diagnostic disable-next-line: undefined-field
		itemString = rawlink:match("item[%-?%d:]+");
		if itemString then
			---@diagnostic disable-next-line: undefined-field
			local itemID2 = select(2, (":"):split(itemString));
			if itemID2 then
				itemID = tonumber(itemID2) or itemID2;
				paramA = "itemID";
				paramB = itemID;
			end
			if not itemID or itemID == 0 then return nil, true; end
		else
			---@diagnostic disable-next-line: undefined-field
			local kind, id = (":"):split(rawlink);
			if id == "" then return nil, true; end
			kind = kind:lower();
			if id then id = tonumber(id) or id; end
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
			end
		end
	elseif paramA == "itemID" then
		itemID = paramB;
	end

	-- Find the most accessible version of the thing we're looking for.
	if paramA == "spellID" and not itemID then
		-- We want spells to have higher preference for the spell itself rather than the recipe.
		for i,j in ipairs(group) do
			if j.itemID then j.AccessibilityScore = j.AccessibilityScore + 100; end
		end
	end
	app.Sort(group, app.SortDefaults.Accessibility);
	--[[
	for i,j in ipairs(group) do
		print(i, j.key, j[j.key], j.text, j.AccessibilityScore);
	end
	]]--
	for i,j in ipairs(group) do
		if j[paramA] == paramB then
			mostAccessibleSource = j;
			--print("Most Accessible", i, j.text);
			break;
		end
	end

	-- Create a list of sources
	if isTopLevelSearch then
		AddSourceLinesForTooltip(tooltipInfo, paramA, paramB, group);
	end

	-- Create an unlinked version of the object.
	if not group.g then
		local merged = {};
		for i,o in ipairs(group) do
			MergeClone(merged, o);
		end
		if #merged == 1 and merged[1][paramA] == paramB then
			group = merged[1];
			local symbolicLink = ResolveSymbolicLink(group);
			if symbolicLink then
				if group.g and #group.g >= 0 then
					for j=1,#symbolicLink,1 do
						MergeClone(group.g, symbolicLink[j]);
					end
				else
					for j=#symbolicLink,1,-1 do
						symbolicLink[j] = CloneClassInstance(symbolicLink[j]);
					end
					group.g = symbolicLink;
				end
			end
		else
			for i,o in ipairs(merged) do
				local symbolicLink = ResolveSymbolicLink(o);
				if symbolicLink then
					o.symbolized = true;
					if o.g and #o.g >= 0 then
						for j=1,#symbolicLink,1 do
							MergeClone(o.g, symbolicLink[j]);
						end
					else
						for j=#symbolicLink,1,-1 do
							symbolicLink[j] = CloneClassInstance(symbolicLink[j]);
						end
						o.g = symbolicLink;
					end
				end
			end
			group = CloneClassInstance({ [paramA] = paramB, key = paramA });
			group.g = merged;
		end
	end

	if mostAccessibleSource then
		group.parent = mostAccessibleSource.parent;
		group.description = mostAccessibleSource.description;
		group.awp = mostAccessibleSource.awp;
		group.rwp = mostAccessibleSource.rwp;
		group.e = mostAccessibleSource.e;
		group.u = mostAccessibleSource.u;
		group.f = mostAccessibleSource.f;
	end

	-- Resolve Cost
	--print("GetSearchResults", paramA, paramB);
	if paramA == "currencyID" then
		local costResults = SearchForField("currencyIDAsCost", paramB);
		if #costResults > 0 then
			if not group.g then group.g = {} end
			local usedToBuy = app.CreateCustomHeader(app.HeaderConstants.VENDORS);
			usedToBuy.text = "Currency For";
			if not usedToBuy.g then usedToBuy.g = {}; end
			for i,o in ipairs(costResults) do
				MergeClone(usedToBuy.g, o);
			end
			MergeObject(group.g, usedToBuy);
		end
	elseif paramA == "itemID" then
		local costResults = SearchForField("itemIDAsCost", paramB);
		if #costResults > 0 then
			if not group.g then group.g = {} end
			local attunement = app.CreateCustomHeader(app.HeaderConstants.QUESTS);
			if not attunement.g then attunement.g = {}; end
			local usedToBuy = app.CreateCustomHeader(app.HeaderConstants.VENDORS);
			if not usedToBuy.g then usedToBuy.g = {}; end
			for i,o in ipairs(costResults) do
				if o.key == "instanceID" or ((o.key == "difficultyID" or o.key == "mapID" or o.key == "headerID") and (o.parent and GetRelativeValue(o.parent, "instanceID")) and not o[o.key] == app.HeaderConstants.REWARDS) then
					if app.Settings.Collectibles.Quests then
						local d = CloneClassInstance(o);
						d.sourceParent = o.parent;
						d.collectible = true;
						d.collected = GetItemCount(paramB, true) > 0;
						d.progress = nil;
						d.total = nil;
						d.g = {};
						MergeObject(attunement.g, d);
					end
				else
					MergeClone(usedToBuy.g, o);
				end
			end
			if #attunement.g > 0 then
				attunement.text = "Attunement For";
				MergeObject(group.g, attunement);
			end
			if #usedToBuy.g > 0 then
				usedToBuy.text = "Currency For";
				MergeObject(group.g, usedToBuy);
			end
		end
	end

	-- Only need to build/update groups from the top level
	if isTopLevelSearch and group.g then
		group.total = 0;
		group.progress = 0;
		--app.AssignChildren(group);	-- Turning this off fixed a bug with objective tooltips.
		app.UpdateGroups(group, group.g);
		if group.collectible then
			group.total = group.total + 1;
			if group.collected then
				group.progress = group.progress + 1;
			end
		end
	end

	if isTopLevelSearch then
		-- Add various extra field info if enabled in settings
		group.itemString = itemString
		app.ProcessInformationTypesForExternalTooltips(tooltipInfo, group);
	end


	if app.Settings:GetTooltipSetting("SummarizeThings") then
		-- Contents
		if group.g and #group.g > 0 then
			local entries = {};
			BuildContainsInfo(group.g, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
			if #entries > 0 then
				local currentMapID = app.CurrentMapID;
				local realmName, left, right, entry = GetRealmName();
				tinsert(tooltipInfo, { left = "Contains:" });
				if #entries < 25 then
					for i,item in ipairs(entries) do
						entry = item.group;
						left = entry.text or RETRIEVING_DATA;
						if not group.working and IsRetrieving(left) then group.working = true; end
						local mapID = app.GetBestMapForGroup(entry, currentMapID);
						if mapID and mapID ~= currentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
						if entry.icon then item.prefix = item.prefix .. "|T" .. entry.icon .. ":0|t "; end

						-- If this entry has specialization requirements, let's attempt to show the specialization icons.
						right = item.right;
						local specs = entry.specs;
						if specs and #specs > 0 then
							right = app.GetSpecsString(specs, false, false) .. right;
						else
							local c = entry.c;
							if c and #c > 0 then
								right = app.GetClassesString(c, false, false) .. right;
							end
						end

						tinsert(tooltipInfo, { left = item.prefix .. left, right = right });
					end
				else
					for i=1,math.min(25, #entries) do
						local item = entries[i];
						left = item.group.text or RETRIEVING_DATA;
						if not group.working and IsRetrieving(left) then group.working = true; end
						local mapID = app.GetBestMapForGroup(item.group, currentMapID);
						if mapID and mapID ~= currentMapID then left = left .. " (" .. app.GetMapName(mapID) .. ")"; end
						if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
						tinsert(tooltipInfo, { left = item.prefix .. left, right = item.right });
					end
					local more = #entries - 25;
					if more > 0 then tinsert(tooltipInfo, { left = "And " .. more .. " more..." }); end
				end
			end
		end

		if itemID then
			local reagentCache = AllTheThingsAD.Reagents;
			if reagentCache then
				reagentCache = reagentCache[itemID];
			else
				AllTheThingsAD.Reagents = {};
			end
			if reagentCache then
				-- Crafted Items
				if app.Settings:GetTooltipSetting("Show:CraftedItems") then
					local crafted = {};
					for craftedItemID,count in pairs(reagentCache[2]) do
						local item = app.CreateItem(craftedItemID);
						item.count = count;
						tinsert(crafted, item);
					end
					if #crafted > 0 then
						local entries = {};
						BuildReagentInfo(crafted, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
						if #entries > 0 then
							local left, right;
							tinsert(tooltipInfo, { left = "Used to Craft:" });
							if #entries < 25 then
								app.Sort(entries, function(a, b)
									if a.group.name then
										if b.group.name then
											return a.group.name <= b.group.name;
										end
										return true;
									end
									return false;
								end);
								for i,item in ipairs(entries) do
									left = item.group.text or RETRIEVING_DATA;
									if not group.working and IsRetrieving(left) then group.working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(tooltipInfo, { left = item.prefix .. left, right = item.right });
								end
							else
								for i=1,math.min(25, #entries) do
									local item = entries[i];
									left = item.group.text or RETRIEVING_DATA;
									if not group.working and IsRetrieving(left) then group.working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(tooltipInfo, { left = item.prefix .. left, right = item.right });
								end
								local more = #entries - 25;
								if more > 0 then tinsert(tooltipInfo, { left = "And " .. more .. " more..." }); end
							end
						end
					end
				end

				-- Recipes
				if app.Settings:GetTooltipSetting("Show:Recipes") then
					local recipes = {};
					for spellID,count in pairs(reagentCache[1]) do
						local spell = app.CreateSpell(spellID);
						spell.count = count;
						tinsert(recipes, spell);
					end
					if #recipes > 0 then
						if app.Settings:GetTooltipSetting("Show:OnlyShowNonTrivialRecipes") then
							local nonTrivialRecipes = {};
							for _, o in pairs(recipes) do
								local craftTypeID = o.craftTypeID;
								if craftTypeID and craftTypeID > 0 then
									tinsert(nonTrivialRecipes, o);
								end
							end
							recipes = nonTrivialRecipes;
						end
						app.Sort(recipes, SortByCraftTypeID);
						local entries, left = {}, nil;
						BuildReagentInfo(recipes, entries, paramA, paramB, "  ", app.noDepth and 99 or 1);
						if #entries > 0 then
							tinsert(tooltipInfo, { left = "Used in Recipes:" });
							if #entries < 25 then
								for i,item in ipairs(entries) do
									left = item.group.craftText or item.group.text or RETRIEVING_DATA;
									if not group.working and IsRetrieving(left) then group.working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(tooltipInfo, { left = item.prefix .. left, right = item.right });
								end
							else
								for i=1,math.min(25, #entries) do
									local item = entries[i];
									left = item.group.craftText or item.group.text or RETRIEVING_DATA;
									if not group.working and IsRetrieving(left) then group.working = true; end
									if item.group.icon then item.prefix = item.prefix .. "|T" .. item.group.icon .. ":0|t "; end
									tinsert(tooltipInfo, { left = item.prefix .. left, right = item.right });
								end
								local more = #entries - 25;
								if more > 0 then tinsert(tooltipInfo, { left = "And " .. more .. " more..." }); end
							end
						end
					end
				end
			end
		end
	end

	-- If there was any informational text generated, then attach that info.
	if #tooltipInfo > 0 then
		for i,item in ipairs(tooltipInfo) do
			if item.color then item.a, item.r, item.g, item.b = HexToARGB(item.color); end
		end
		group.tooltipInfo = tooltipInfo;
	end

	-- Cache the result depending on if there is more work to be done.
	if isTopLevelSearch then InitialCachedSearch = nil; end
	return group, group.working;
end
app.GetCachedSearchResults = function(method, paramA, paramB, ...)
	return app.GetCachedData((paramB and table.concat({ paramA, paramB, ...}, ":")) or paramA, GetSearchResults, method, paramA, paramB, ...);
end

-- Temporary functions to update the cache without breaking ATT.
local function UpdateRawID(field, id)
	app:RefreshDataQuietly("UpdateRawID", true);
end
app.UpdateRawID = UpdateRawID;
-- Temporary functions to update the cache without breaking ATT.
local function UpdateRawIDs(field, ids)
	if ids and #ids > 0 then
		app:RefreshDataQuietly("UpdateRawIDs", true);
	end
end
app.UpdateRawIDs = UpdateRawIDs;

-- Item Information Lib
local function SearchForLink(link)
	if link:match("item") then
		-- Parse the link and get the itemID and bonus ids.
		local itemString = link:match("item[%-?%d:]+") or link;
		if itemString then
			-- Cache the Item ID and the Suffix ID.
			---@diagnostic disable-next-line: undefined-field
			local _, itemID, _, _, _, _, _, suffixID = (":"):split(itemString);
			if itemID then
				-- Ensure that the itemID and suffixID are properly formatted.
				itemID = tonumber(itemID) or 0;
				return SearchForField("itemID", itemID), "itemID", itemID;
			end
		end
	end

	---@diagnostic disable-next-line: undefined-field
	local kind, id = (":"):split(link);
	kind = kind:lower():gsub("id", "ID");
	if kind:sub(1,2) == "|c" then
		kind = kind:sub(11);
	end
	if kind:sub(1,2) == "|h" then
		kind = kind:sub(3);
	end
	---@diagnostic disable-next-line: undefined-field
	if id then id = tonumber(("|["):split(id) or id); end
	--print("SearchForLink A:", kind, id);
	--print("SearchForLink B:", link:gsub("|c", "c"):gsub("|h", "h"));
	if kind == "i" then
		kind = "itemID";
	elseif kind == "quest" or kind == "q" then
		kind = "questID";
	elseif kind == "faction" or kind == "rep" then
		kind = "factionID";
	elseif kind == "ach" or kind == "achievement" then
		kind = "achievementID";
	elseif kind == "creature" or kind == "npcID" or kind == "npc" or kind == "n" then
		kind = "creatureID";
	elseif kind == "currency" then
		kind = "currencyID";
	elseif kind == "spell" or kind == "enchant" or kind == "talent" or kind == "recipe" or kind == "mount" then
		kind = "spellID";
	elseif kind == "pet" or kind == "battlepet" then
		kind = "speciesID";
	elseif kind == "filterforrwp" then
		kind = "filterForRWP";
	elseif kind == "pettype" or kind == "pettypeID" then
		kind = "petTypeID";
	elseif kind == "azeriteessence" or kind == "azeriteessenceID" then
		kind = "azeriteessenceID";
	end
	local cache;
	if id then
		cache = SearchForField(kind, id);
		if #cache == 0 then
			local obj = CloneClassInstance({
				key = kind, [kind] = id,
				hash = kind .. ":" .. id,
			});
			if not obj.__type then
				obj.icon = 133878;
				obj.text = "Search Results for '" .. obj.hash .. "'";
				local response = app:BuildSearchResponse(app:GetDataCache().g, kind, id);
				if response and #response > 0 then
					obj.g = {};
					for i,o in ipairs(response) do
						tinsert(obj.g, o);
					end
				end
			else
				obj.description = "@Crieve: This has not been sourced in ATT yet!";
			end
			tinsert(cache, obj);
		end
	else
		local obj = { hash = kind };
		obj.icon = 133878;
		obj.text = "Search Results for '" .. obj.hash .. "'";
		local response = app:BuildSearchResponseForField(app:GetDataCache().g, kind);
		if response and #response > 0 then
			obj.g = {};
			for i,o in ipairs(response) do
				tinsert(obj.g, o);
			end
		end
		cache = {};
		tinsert(cache, obj);
	end
	return cache, kind, id;
end
app.SearchForLink = SearchForLink;

-- Force Bind on Pickup Items to require the profession within the craftables section.
function ProcessBindOnPickupProfession(profession, requireSkill)
	if profession.requireSkill then
		requireSkill = profession.requireSkill;
	elseif profession.b and profession.itemID then
		profession.requireSkill = requireSkill;
	end
	if profession.g then
		for i,o in ipairs(profession.g) do
			ProcessBindOnPickupProfession(o, requireSkill);
		end
	end
end
function ProcessBindOnPickupProfessions(craftables)
	for i,profession in ipairs(craftables) do
		ProcessBindOnPickupProfession(profession, profession.requireSkill);
	end
end

-- TODO: Move the generation of this into Parser
function app:GetDataCache()
	if app.Categories then
		local rootData = setmetatable({
			text = L["TITLE"],
			hash = "ATT",
			icon = app.asset("logo_32x32"),
			preview = app.asset("Discord_2_128"),
			description = L["DESCRIPTION"],
			font = "GameFontNormalLarge",
			expanded = true,
			visible = true,
			progress = 0,
			total = 0,
			g = {},
		}, {
			__index = function(t, key)
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
					if t.total < 1 then
						local primeData = app.CurrentCharacter.PrimeData;
						if primeData then
							return app.Modules.Color.GetProgressTextToNextPercent(primeData.progress, primeData.total);
						end
					end
					return app.Modules.Color.GetProgressTextToNextPercent(t.progress, t.total);
				else
					-- Something that isn't dynamic.
					return table[key];
				end
			end
		});
		local g = rootData.g;

		-----------------------------------------
		-- P R I M A R Y   C A T E G O R I E S --
		-----------------------------------------
		-- Dungeons & Raids
		if app.Categories.Instances then
			tinsert(g, app.CreateRawText(GROUP_FINDER, {
				icon = app.asset("Category_D&R"),
				g = app.Categories.Instances,
			}));
		end

		-- Outdoor Zones
		if app.Categories.Zones then
			tinsert(g, app.CreateRawText(BUG_CATEGORY2, {
				icon = app.asset("Category_Zones"),
				mapID = 947,
				g = app.Categories.Zones,
			}));
		end

		-- World Drops
		tinsert(g, app.CreateCustomHeader(app.HeaderConstants.WORLD_DROPS, {
			g = app.Categories.WorldDrops or {},
			isWorldDropCategory = true
		}));

		-- Crafted Items
		if app.Categories.Craftables then
			local craftables = app.Categories.Craftables;
			ProcessBindOnPickupProfessions(craftables);
			tinsert(g, app.CreateRawText(LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM, {
				icon = app.asset("Category_Crafting"),
				DontEnforceSkillRequirements = true,
				isCraftedCategory = true,
				g = craftables,
			}));
		end

		-- Group Finder
		if app.Categories.GroupFinder then
			tinsert(g, app.CreateRawText(DUNGEONS_BUTTON, {
				icon = app.asset("Category_GroupFinder"),
				u = 33,	-- WRATH_PHASE_FOUR
				g = app.Categories.GroupFinder,
			}));
		end

		-- Professions
		local ProfessionsHeader = app.CreateCustomHeader(app.HeaderConstants.PROFESSIONS, {
			g = app.Categories.Professions or {}
		});
		tinsert(g, ProfessionsHeader);

		-- Holidays
		if app.Categories.Holidays then
			tinsert(g, app.CreateCustomHeader(app.HeaderConstants.HOLIDAYS, {
				description = "These events occur at consistent dates around the year based on and themed around real world holiday events.",
				g = app.Categories.Holidays,
				SortType = "EventStart",
				isHolidayCategory = true,
			}));
		end

		-- Expansion Features
		if app.Categories.ExpansionFeatures and #app.Categories.ExpansionFeatures > 0 then
			tinsert(g, app.CreateRawText(EXPANSION_FILTER_TEXT, {
				icon = app.asset("Category_ExpansionFeatures"),
				g = app.Categories.ExpansionFeatures
			}));
		end

		-----------------------------------------
		-- L I M I T E D   C A T E G O R I E S --
		-----------------------------------------
		-- Character
		if app.Categories.Character then
			tinsert(g, app.CreateRawText(CHARACTER, {
				icon = app.asset("Category_ItemSets"),
				g = app.Categories.Character,
			}));
		end

		-- PvP
		if app.Categories.PVP then
			tinsert(g, app.CreateCustomHeader(app.HeaderConstants.PVP, {
				g = app.Categories.PVP,
				isPVPCategory = true
			}));
		end

		-- Promotions
		if app.Categories.Promotions then
			tinsert(g, app.CreateRawText(BATTLE_PET_SOURCE_8, {
				icon = app.asset("Category_Promo"),
				description = "This section is for real world promotions that seeped extremely rare content into the game prior to some of them appearing within the In-Game Shop.",
				g = app.Categories.Promotions,
				isPromotionCategory = true
			}));
		end

		-- Season of Discovery
		if app.Categories.SeasonOfDiscovery then
			for i,o in ipairs(app.Categories.SeasonOfDiscovery) do
				tinsert(g, o);
			end
		end

		-- Skills
		if app.Categories.Skills then
			tinsert(g, app.CreateRawText(SKILLS, {
				icon = 136105,
				g = app.Categories.Skills
			}));
		end

		-- World Events
		if app.Categories.WorldEvents then
			tinsert(g, app.CreateRawText(BATTLE_PET_SOURCE_7, {
				icon = app.asset("Category_Event"),
				description = "These events occur at different times in the game's timeline, typically as one time server wide events. Special celebrations such as Anniversary events and such may be found within this category.",
				g = app.Categories.WorldEvents,
				isEventCategory = true,
			}));
		end

		---------------------------------------
		-- M A R K E T   C A T E G O R I E S --
		---------------------------------------
		-- Black Market
		if app.Categories.BlackMarket then tinsert(g, app.Categories.BlackMarket[1]); end

		-- In-Game Store
		if app.Categories.InGameShop then
			tinsert(g, app.CreateCustomHeader(app.HeaderConstants.IN_GAME_SHOP, {
				g = app.Categories.InGameShop,
				expanded = false
			}));
		end

		-----------------------------------------
		-- D Y N A M I C   C A T E G O R I E S --
		-----------------------------------------
		if app.Windows then
			local keys,sortedList = {},{};
			for suffix,window in pairs(app.Windows) do
				if window and window.IsDynamicCategory then
					if window.DynamicCategoryHeader then
						if window.DynamicProfessionID then
							local dynamicProfessionHeader = nil;
							for i,header in ipairs(ProfessionsHeader.g) do
								if header.requireSkill == window.DynamicProfessionID then
									dynamicProfessionHeader = header;
									break;
								end
							end

							local recipesList = app.CreateDynamicCategory(suffix);
							recipesList.IgnoreBuildRequests = true;
							if dynamicProfessionHeader then
								recipesList.text = "Recipes";
								recipesList.icon = 134939;
								if not dynamicProfessionHeader.g then
									dynamicProfessionHeader.g = {};
								end
								tinsert(dynamicProfessionHeader.g, recipesList);
							else
								tinsert(ProfessionsHeader.g, recipesList);
							end
						else
							print("Unhandled dynamic category conditional");
						end
					else
						keys[suffix] = window;
					end
				end
			end
			for suffix,window in pairs(keys) do
				tinsert(sortedList, suffix);
			end
			app.Sort(sortedList, app.SortDefaults.Strings);
			for i,suffix in ipairs(sortedList) do
				local dynamicCategory = app.CreateDynamicCategory(suffix);
				dynamicCategory.sourceIgnored = 1;
				tinsert(g, dynamicCategory);
			end
		end

		-- Track Deaths!
		tinsert(g, app:CreateDeathClass());

		-- Yourself.
		tinsert(g, app.CreateUnit("player", {
			description = L.DEBUG_LOGIN,
			races = { app.RaceIndex },
			c = { app.ClassIndex },
			r = app.FactionID,
			collected = 1,
			nmr = false,
			OnUpdate = function(self)
				self.lvl = app.Level;
				if app.MODE_DEBUG then
					self.collectible = true;
				else
					self.collectible = false;
				end
			end
		}));

		-- Now assign the parent hierarchy for this cache.
		app.AssignChildren(rootData);

		-- Now that we have all of the root data, cache it.
		app.CacheFields(rootData);

		-- Determine how many expansionID instances could be found
		local expansionCounter = 0;
		local expansionCache = app.SearchForFieldContainer("expansionID");
		for key,value in pairs(expansionCache) do
			expansionCounter = expansionCounter + 1;
		end
		if expansionCounter == 1 then
			-- Purge the Expansion Objects. This is the Classic Layout style.
			for key,values in pairs(expansionCache) do
				for j,value in ipairs(values) do
					local parent = value.parent;
					if parent then
						-- Remove the expansion object reference.
						for i=#parent.g,1,-1 do
							if parent.g[i] == value then
								tremove(parent.g, i);
								break;
							end
						end

						-- Feed the children to its parent.
						if value.g then
							for i,child in ipairs(value.g) do
								child.parent = parent;
								tinsert(parent.g, child);
							end
						end
					end
				end
			end

			-- Wipe out the expansion object cache.
			wipe(expansionCache);
		end

		-- All future calls to this function will return the root data.
		app.GetDataCache = function()
			return rootData;
		end
		return rootData;
	end
end


-- Currency Lib
(function()
local CurrencyInfo = {};
local GetCurrencyCount;
---@diagnostic disable-next-line: undefined-global
local GetCurrencyLink = GetCurrencyLink;
local GetRelativeField = app.GetRelativeField;
if C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo then
	local C_CurrencyInfo_GetCurrencyInfo = C_CurrencyInfo.GetCurrencyInfo;
	if C_CurrencyInfo.GetCurrencyLink then
		GetCurrencyLink = C_CurrencyInfo.GetCurrencyLink;
	end
	setmetatable(CurrencyInfo, { __index = function(t, id)
		local currencyInfo = C_CurrencyInfo_GetCurrencyInfo(id);
		if currencyInfo then
			local info = {
				name = currencyInfo.name,
				icon = currencyInfo.iconFileID
			}
			rawset(t, id, info);
			return info;
		end
	end });
	GetCurrencyCount = function(id)
		local info = C_CurrencyInfo_GetCurrencyInfo(id);
		return info and info.quantity or 0;
	end
else
	---@diagnostic disable-next-line: undefined-global
	local GetCurrencyInfo = GetCurrencyInfo;
	setmetatable(CurrencyInfo, { __index = function(t, id)
		local name, amount, icon = GetCurrencyInfo(id);
		if name then
			local info = {
				name = name,
				icon = icon
			}
			rawset(t, id, info);
			return info;
		end
	end });
	GetCurrencyCount = function(id)
		return select(2, GetCurrencyInfo(id)) or 0;
	end
end
local CurrencyCollectibleAsCost = setmetatable({}, { __index = function(t, id)
	local results = SearchForField("currencyIDAsCost", id, true);
	if #results > 0 then
		for _,ref in pairs(results) do
			if ref.currencyID ~= id and app.RecursiveGroupRequirementsFilter(ref) then
				if ref.collectible and not ref.collected then
					t[id] = true;
					return true;
				elseif ref.total and ref.total > ref.progress then
					t[id] = true;
					return true;
				end
			end
		end
	end
	t[id] = false;
	return false;
end });
local CurrencyRequirementTotals = setmetatable({}, { __index = function(t, id)
	local results = SearchForField("currencyIDAsCost", id, true);
	if #results > 0 then
		local total = 0;
		for _,ref in pairs(results) do
			if ref.currencyID ~= id and app.RecursiveDefaultCharacterRequirementsFilter(ref) then
				if ref.collectible and ref.collected ~= 1 then
					if ref.cost then
						for k,v in ipairs(ref.cost) do
							if v[2] == id and v[1] == "c" then
								total = total + (v[3] or 1);
							end
						end
					end
				elseif (ref.total and ref.total > 0 and ref.progress < ref.total) then
					if ref.cost then
						for k,v in ipairs(ref.cost) do
							if v[2] == id and v[1] == "c" then
								total = total + (v[3] or 1);
							end
						end
					end
				end
			end
		end
		t[id] = total;
		return total;
	end
	t[id] = 0;
	return 0;
end });
local CurrencyCollectedAsCost = setmetatable({}, { __index = function(t, id)
	if CurrencyRequirementTotals[id] <= GetCurrencyCount(id) then
		t[id] = true;
		return true;
	else
		t[id] = false;
		return false;
	end
end });
app.AddEventHandler("OnRecalculate", function()
	wipe(CurrencyCollectibleAsCost);
	wipe(CurrencyCollectedAsCost);
	wipe(CurrencyRequirementTotals);
end);
app.CreateCurrencyClass = app.CreateClass("Currency", "currencyID", {
	["text"] = function(t)
		return t.info.name;
	end,
	["icon"] = function(t)
		return t.info.icon;
	end,
	["info"] = function(t)
		local info = CurrencyInfo[t.currencyID];
		if info then
			t.info = info;
			return info;
		end
		return {};
	end,
	["link"] = function(t)
		return GetCurrencyLink(t.currencyID, 1);
	end,
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return t.collectibleAsCost;
	end,
	["collectibleAsCost"] = function(t)
		if not t.parent or not t.parent.saved then
			if CurrencyCollectibleAsCost[t.currencyID] then
				return true;
			elseif t.simplemeta then
				setmetatable(t, t.simplemeta);
				return false;
			end
		end
	end,
	["collected"] = function(t)
		return t.collectedAsCost;
	end,
	["collectedAsCost"] = function(t)
		return CurrencyCollectedAsCost[t.currencyID];
	end,
});
end)();

-- Recipe & Spell Lib
(function()
local grey = RGBToHex(0.75, 0.75, 0.75);
local craftColors = {
	RGBToHex(0.25,0.75,0.25),
	RGBToHex(1,1,0),
	RGBToHex(1,0.5,0.25),
	[0]=grey,
}
local CraftTypeIDToColor = function(craftTypeID)
	return craftColors[craftTypeID] or grey;
end
app.CraftTypeToCraftTypeID = function(craftType)
	if craftType then
		if craftType == "optimal" then
			return 3;
		elseif craftType == "medium" then
			return 2;
		elseif craftType == "easy" then
			return 1;
		elseif craftType == "trivial" then
			return 0;
		end
	end
	return nil;
end
local MaxSpellRankPerSpellName = {};
local SpellIDToSpellName = {};
app.GetSpellName = function(spellID, rank)
	local spellName = rawget(SpellIDToSpellName, spellID);
	if spellName then return spellName; end
	if rank then
		spellName = GetSpellName(spellID, rank);
	else
		spellName = GetSpellName(spellID);
	end
	if not IsRetrieving(spellName) then
		if not rawget(app.SpellNameToSpellID, spellName) then
			rawset(app.SpellNameToSpellID, spellName, spellID);
			if not rawget(SpellIDToSpellName, spellID) then
				rawset(SpellIDToSpellName, spellID, spellName);
			end
		end
		if rank then
			if (rawget(MaxSpellRankPerSpellName, spellName) or 0) < rank then
				rawset(MaxSpellRankPerSpellName, spellName, rank);
			end
			spellName = spellName .. " (" .. RANK .. " " .. rank .. ")";
			if not rawget(app.SpellNameToSpellID, spellName) then
				rawset(app.SpellNameToSpellID, spellName, spellID);
				if not rawget(SpellIDToSpellName, spellID) then
					rawset(SpellIDToSpellName, spellID, spellName);
				end
			end
		end
		return spellName;
	end
end
local isSpellKnownHelper = function(spellID)
	return spellID and (IsPlayerSpell(spellID) or IsSpellKnown(spellID, true) or IsSpellKnownOrOverridesKnown(spellID, true));
end
app.IsSpellKnown = function(spellID, rank, ignoreHigherRanks)
	if isSpellKnownHelper(spellID) then return true; end
	if rank then
		local spellName = GetSpellName(spellID);
		if spellName then
			local maxRank = ignoreHigherRanks and rank or  rawget(MaxSpellRankPerSpellName, spellName);
			if maxRank then
				spellName = spellName .. " (" .. RANK .. " ";
				for i=maxRank,rank,-1 do
					if isSpellKnownHelper(app.SpellNameToSpellID[spellName .. i .. ")"]) then
						return true;
					end
				end
			end
		end
	end
end
app.SpellNameToSpellID = setmetatable(L.SPELL_NAME_TO_SPELL_ID, {
	__index = function(t, key)
		for _,spellID in pairs(app.SkillDB.SkillToSpell) do
			app.GetSpellName(spellID);
		end
		for specID,spellID in pairs(app.SkillDB.SpecializationSpells) do
			app.GetSpellName(spellID);
		end
		for spellID,g in pairs(app.SearchForFieldContainer("spellID")) do
			local rank;
			for i,o in ipairs(g) do
				if o.rank then
					rank = o.rank;
					break;
				end
			end
			app.GetSpellName(spellID, rank);
		end
		local numSpellTabs, offset, lastSpellName, currentSpellRank, lastSpellRank = GetNumSpellTabs(), 1, "", nil, 1;
		for spellTabIndex=1,numSpellTabs do
			local numSpells = select(4, GetSpellTabInfo(spellTabIndex));
			for spellIndex=1,numSpells do
				local spellName, _, _, _, _, _, spellID = GetSpellInfo(offset, BOOKTYPE_SPELL);
				if spellName then
					currentSpellRank = GetSpellRank(spellID);
					if not currentSpellRank then
						if lastSpellName == spellName then
							currentSpellRank = lastSpellRank + 1;
						else
							lastSpellName = spellName;
							currentSpellRank = 1;
						end
					end
					app.GetSpellName(spellID, currentSpellRank);
					if not rawget(t, spellName) then
						rawset(t, spellName, spellID);
					end
					lastSpellRank = currentSpellRank;
					offset = offset + 1;
				end
			end
		end
		return rawget(t, key);
	end
});

-- The difference between a recipe and a spell is that a spell is not collectible.
local baseIconFromSpellID = function(t)
	return GetSpellIcon(t.spellID) or (t.requireSkill and GetSpellIcon(t.requireSkill));
end;
local linkFromSpellID = function(t)
	local link = GetSpellLink(t.spellID);
	if not link then
		if GetRelativeValue(t, "requireSkill") == 333 then
			return "|cffffffff|Henchant:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		else
			return "|cffffffff|Hspell:" .. t.spellID .. "|h[" .. t.name .. "]|h|r";
		end
	end
	return link;
end;
local nameFromSpellID = function(t)
	return app.GetSpellName(t.spellID) or ("Invalid Spell " .. t.spellID) or GetSpellLink(t.spellID) or RETRIEVING_DATA;
end;
local spellFields = {
	CACHE = function() return "Spells" end,
	IsClassIsolated = true,
	["text"] = function(t)
		return t.link;
	end,
	["craftText"] = function(t)
		return Colorize(t.name, CraftTypeIDToColor(t.craftTypeID));
	end,
	["icon"] = function(t)
		local icon = t.baseIcon;
		if icon and icon ~= 136235 and icon ~= 136192 then
			return icon;
		end
		return 134940;
	end,
	["description"] = app.GameBuildVersion < 20000 and function(t)
		return GetSpellDescription(t.spellID);
	end,
	["craftTypeID"] = function(t)
		return app.CurrentCharacter.SpellRanks[t.spellID] or 0;
	end,
	["trackable"] = function(t)
		return GetSpellCooldown(t.spellID) > 0;
	end,
	["saved"] = function(t)
		return GetSpellCooldown(t.spellID) > 0 and 1;
	end,
	["baseIcon"] = baseIconFromSpellID,
	["name"] = nameFromSpellID,
	["link"] = linkFromSpellID,
};
local createSpell = app.CreateClass("Spell", "spellID", spellFields);

local recipeFields = app.CloneDictionary(spellFields);
recipeFields.collectible = function(t)
	return app.Settings.Collectibles.Recipes;
end;
recipeFields.collected = function(t)
	if app.CurrentCharacter.Spells[t.spellID] then return 1; end
	local state = app.SetCollected(t, "Spells", t.spellID, not t.nmc and app.IsSpellKnown(t.spellID, t.rank, GetRelativeValue(t, "requireSkill") == 261), "Recipes");
	if state == 1 then return 1; elseif state == 2 and app.Settings.AccountWide.Recipes then return 2; end
end;
recipeFields.f = function(t)
	return app.FilterConstants.RECIPES;
end;
recipeFields.IsClassIsolated = true;
recipeFields.RefreshCollectionOnly = true;
local createRecipe = app.CreateClass("Recipe", "spellID", recipeFields,
"WithItem", {
	baseIcon = function(t)
		return GetItemIcon(t.itemID) or baseIconFromSpellID(t);
	end,
	link = function(t)
		return select(2, GetItemInfo(t.itemID));
	end,
	name = function(t)
		return GetItemInfo(t.itemID) or nameFromSpellID(t);
	end,
	tsm = function(t)
		---@diagnostic disable-next-line: undefined-field
		return ("i:%d"):format(t.itemID);
	end,
	b = function(t)
		return app.Settings.AccountWide.Recipes and 2;
	end,
}, (function(t) return t.itemID; end));
-- local createItem = app.CreateItem;	-- Temporary Recipe fix until someone fixes parser.
-- app.CreateItem = function(id, t)
-- 	if t and t.spellID and t.f == app.FilterConstants.RECIPES then	-- This is pretty slow, would be great it someone fixes it.
-- 		t.f = nil;
-- 		t.itemID = id;
-- 		return createRecipe(t.spellID, t);
-- 	end
-- 	return createItem(id, t);
-- end
app.CreateRecipe = createRecipe;
app.CreateSpell = function(id, t)
	if t and t.itemID then
		return createRecipe(id, t);
	else
		return createSpell(id, t);
	end
end
end)();

-- Startup Event
local ADDON_LOADED_HANDLERS = {
	[appName] = function()
		app.HandleEvent("OnLoad")

		AllTheThingsAD = _G["AllTheThingsAD"];	-- For account-wide data.
		if not AllTheThingsAD then
			AllTheThingsAD = { };
			_G["AllTheThingsAD"] = AllTheThingsAD;
		end

		-- Cache the Localized Category Data
		AllTheThingsAD.LocalizedCategoryNames = setmetatable(AllTheThingsAD.LocalizedCategoryNames or {}, { __index = app.CategoryNames });
		app.CategoryNames = nil;

		-- Character Data Storage
		local characterData = ATTCharacterData;
		if not characterData then
			characterData = {};
			ATTCharacterData = characterData;
		end
		local currentCharacter = characterData[app.GUID];
		if not currentCharacter then
			currentCharacter = {};
			characterData[app.GUID] = currentCharacter;
		end
		currentCharacter.build = app.GameBuildVersion;
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
		if race then currentCharacter.race = race; end
		if not currentCharacter.Achievements then currentCharacter.Achievements = {}; end
		if not currentCharacter.ActiveSkills then currentCharacter.ActiveSkills = {}; end
		if not currentCharacter.BattlePets then currentCharacter.BattlePets = {}; end
		if not currentCharacter.Deaths then currentCharacter.Deaths = 0; end
		if not currentCharacter.Exploration then currentCharacter.Exploration = {}; end
		if not currentCharacter.Factions then currentCharacter.Factions = {}; end
		if not currentCharacter.FlightPaths then currentCharacter.FlightPaths = {}; end
		if not currentCharacter.Lockouts then currentCharacter.Lockouts = {}; end
		if not currentCharacter.Quests then currentCharacter.Quests = {}; end
		if not currentCharacter.Spells then currentCharacter.Spells = {}; end
		if not currentCharacter.SpellRanks then currentCharacter.SpellRanks = {}; end
		if not currentCharacter.Titles then currentCharacter.Titles = {}; end
		if not currentCharacter.Transmog then currentCharacter.Transmog = {}; end

		-- Update timestamps.
		app.CurrentCharacter = currentCharacter;
		app.AddEventHandler("OnPlayerLevelUp", function()
			currentCharacter.lvl = app.Level;
		end);

		-- Account Wide Data Storage
		local accountWideData = ATTAccountWideData;
		if not accountWideData then
			accountWideData = {};
			ATTAccountWideData = accountWideData;
		end
		if not accountWideData.Achievements then accountWideData.Achievements = {}; end
		if not accountWideData.BattlePets then accountWideData.BattlePets = {}; end
		if not accountWideData.Deaths then accountWideData.Deaths = 0; end
		if not accountWideData.Exploration then accountWideData.Exploration = {}; end
		if not accountWideData.Factions then accountWideData.Factions = {}; end
		if not accountWideData.FactionBonus then accountWideData.FactionBonus = {}; end
		if not accountWideData.FlightPaths then accountWideData.FlightPaths = {}; end
		if not accountWideData.Quests then accountWideData.Quests = {}; end
		if not accountWideData.Spells then accountWideData.Spells = {}; end
		if not accountWideData.Titles then accountWideData.Titles = {}; end
		if not accountWideData.Transmog then accountWideData.Transmog = {}; end
		if not accountWideData.OneTimeQuests then accountWideData.OneTimeQuests = {}; end

		-- Clean up other matching Characters with identical Name-Realm but differing GUID
		app.CallbackHandlers.Callback(function()
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
					local count = 0
					for guid,char in pairs(backups) do
						count = count + 1
					end
					app.print("Removed & Backed up Duplicate Data of Current Character:",character.text,guid,"[You have",count,"total character backups]")
					app.print("Use '/att remove-deleted-character-backups help' for more info")
				end
				for _,guid in ipairs(toClean) do
					app.FunctionRunner.Run(cleanCharacterFunc, guid);
				end
			end

			-- Allows removing the character backups that ATT automatically creates for duplicated characters which are replaced by new ones
			app.ChatCommands.Add("remove-deleted-character-backups", function(args)
				local backups = 0
				for guid,char in pairs(accountWideData._CharacterBackups or app.EmptyTable) do
					backups = backups + 1
				end
				accountWideData._CharacterBackups = nil
				app.print("Cleaned up",backups,"character backups!")
				return true
			end, {
				"Usage : /att remove-deleted-character-backups",
				"Allows permanently removing all deleted character backup data",
				"-- ATT removes and cleans out character-specific cached data which is stored by a character with the same Name-Realm as the logged-in character but a different character GUID. If you find yourself creating and deleting a lot of repeated characters, this will clean up those characters' data backups",
			})
		end);

		-- Account Wide Settings
		local accountWideSettings = app.Settings.AccountWide;

		-- Notify Event Handlers that Saved Variable Data is available.
		app.HandleEvent("OnSavedVariablesAvailable", currentCharacter, accountWideData, accountWideSettings);
		-- Event handlers which need Saved Variable data which is added by OnSavedVariablesAvailable handlers into saved variables
		app.HandleEvent("OnAfterSavedVariablesAvailable", currentCharacter, accountWideData);

		-- Check to see if we have a leftover ItemDB cache
		if not AllTheThingsAD.GroupQuestsByGUID then
			AllTheThingsAD.GroupQuestsByGUID = {};
		end

		-- Wipe the Debugger Data
		AllTheThingsDebugData = nil;

		-- If we have RWP data on this character, let's update that to use Transmog.
		for guid,character in pairs(characterData) do
			local characterRWP = character.RWP;
			if characterRWP then
				local accountWideTransmog = accountWideData.Transmog;
				local currentCharacterTransmog = character.Transmog;
				if not currentCharacterTransmog then
					currentCharacterTransmog = {};
					character.Transmog = currentCharacterTransmog;
				end
				for itemID,collected in pairs(characterRWP) do
					for _,item in ipairs(SearchForField("itemID", itemID)) do
						if item.sourceID then
							currentCharacterTransmog[item.sourceID] = collected;
							accountWideTransmog[item.sourceID] = 1;
							characterRWP[itemID] = nil;
						end
					end
				end
				local any = false;
				for itemID,collected in pairs(characterRWP) do
					any = true;
					break;
				end
				if not any then character.RWP = nil; end
			end
		end

		-- Refresh Collections
		app.RefreshCollections();

		-- Tooltip Settings
		app.Settings:Initialize();
	end,
};
app:RegisterEvent("ADDON_LOADED");
app.events.ADDON_LOADED = function(addonName)
	local handler = ADDON_LOADED_HANDLERS[addonName];
	if handler then handler(); end
end

app.AddEventHandler("OnStartupDone", function()
	-- Execute the OnReady handlers.
	app.HandleEvent("OnReady");

	-- Mark that we're ready now!
	app.IsReady = true;
end);
