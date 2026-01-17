
-- Symlink Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for handling the processing of a 'sym' link within ATT data

-- Global Locals
local select,tremove,unpack,GetAchievementNumCriteria,type
	= select,tremove,unpack,GetAchievementNumCriteria,type

-- App locals
local GetItemInfoInstant,SearchForObject,ArrayAppend,CloneArray,AssignChildren,SearchForField,GetRelativeValue,wipearray
= app.WOWAPI.GetItemInfoInstant,app.SearchForObject,app.ArrayAppend,app.CloneArray,app.AssignChildren,app.SearchForField,app.GetRelativeValue,app.wipearray

-- Upgrade API Implementation
-- Access via AllTheThings.Modules.Symlink
local api = {};
app.Modules.Symlink = api;

-- Module locals
local ResolveSymbolicLink, FinalizeModID, PruneFinalized, FillFinalized, SelectMod, CreateObject, NestObject, NestObjects, MergeProperties, ExpandGroupsRecursively, MergeObjects, PriorityNestObjects, GetGroupItemIDWithModID, GetItemIDAndModID, FillGroups, NPCExpandHeaders

app.AddEventHandler("OnLoad", function()
	CreateObject = app.__CreateObject
	NPCExpandHeaders = app.HeaderData.FILLNPCS or app.EmptyTable
	if not CreateObject then
		error("Symlink Module requires app.__CreateObject definition!")
	end
	MergeObjects = app.MergeObjects
	if not MergeObjects then
		error("Symlink Module requires app.MergeObjects definition!")
	end
	NestObject = app.NestObject
	if not NestObject then
		error("Symlink Module requires app.NestObject definition!")
	end
	NestObjects = app.NestObjects
	if not NestObjects then
		error("Symlink Module requires app.NestObjects definition!")
	end
	PriorityNestObjects = app.PriorityNestObjects
	if not PriorityNestObjects then
		error("Symlink Module requires app.PriorityNestObjects definition!")
	end
	MergeProperties = app.MergeProperties
	if not MergeProperties then
		error("Symlink Module requires app.MergeProperties definition!")
	end
	ExpandGroupsRecursively = app.ExpandGroupsRecursively
	if not ExpandGroupsRecursively then
		error("Symlink Module requires app.ExpandGroupsRecursively definition!")
	end
	GetGroupItemIDWithModID = app.GetGroupItemIDWithModID
	if not GetGroupItemIDWithModID then
		error("Symlink Module requires app.GetGroupItemIDWithModID definition!")
	end
	GetItemIDAndModID = app.GetItemIDAndModID
	if not GetItemIDAndModID then
		error("Symlink Module requires app.GetItemIDAndModID definition!")
	end
	FillGroups = app.FillGroups
	if not FillGroups then
		error("Symlink Module requires app.FillGroups definition!")
	end
end)

-- Checks if any of the provided arguments can be found within the first array object
local function ContainsAnyValue(arr, ...)
	local value
	local vals = select("#", ...)
	for i=1,vals do
		value = select(i, ...)
		for i=1,#arr do
			if arr[i] == value then return true end
		end
	end
end
local function Resolve_Extract(results, group, field)
	if group[field] then
		results[#results + 1] = group
	else
		local g = group.g
		if g then
			for i=1,#g do
				Resolve_Extract(results, g[i], field)
			end
		end
	end
end
local function Resolve_Find(results, groups, field, val)
	if groups then
		local o
		for i=1,#groups do
			o = groups[i]
			if o[field] == val then
				results[#results + 1] = o
			else
				Resolve_Find(results, o.g, field, val)
			end
		end
	end
end

-- Defines a known set of functions which can be run via symlink resolution. The inputs to each function will be identical in order when called.
-- searchResults - the current set of searchResults when reaching the current sym command
-- o - the specific group object which contains the symlink commands
-- (various expected components of the respective sym command)
local ResolveFunctions = {
	-- Instruction to search the full database for multiple of a given type
	select = function(finalized, searchResults, o, cmd, field, ...)
		local cache, val;
		local vals = select("#", ...);
		if vals > 3 then
			local searches = {}
			for i=1,vals do
				val = select(i, ...) + (SelectMod or 0)
				cache = SearchForObject(field, val, "field", true)
				if cache and #cache > 0 then
					searches[#searches + 1] = cache
				else
					-- TODO: re-enable after all catalystID's are re-structured
					-- app.print("Failed to select ", field, val);
				end
			end
			ArrayAppend(searchResults, unpack(searches))
		else
			for i=1,vals do
				val = select(i, ...) + (SelectMod or 0)
				if field == "modItemID" then
					-- this is really dumb but direct raw values don't 'always' properly match generated values...
					-- but splitting the value apart and putting it back together searches accurately
					val = GetGroupItemIDWithModID(nil, GetItemIDAndModID(val))
				end
				cache = SearchForObject(field, val, "field", true)
				if cache and #cache > 0 then
					ArrayAppend(searchResults, cache)
				else
					-- TODO: re-enable after all catalystID's are re-structured
					-- app.print("Failed to select ", field, val);
				end
			end
		end
		SelectMod = nil
	end,
	-- Instruction to select the parent object of the group that owns the symbolic link
	selectparent = function(finalized, searchResults, o, cmd, level)
		level = level or 1;
		-- an search for the specific 'o' to retrieve the source parent since the parent is not always actually attached to the reference resolving the symlink
		local parent
		local searchedObject = SearchForObject(o.key, o.keyval, "key");
		if searchedObject then
			parent = searchedObject.parent;
			while level > 1 do
				parent = parent and parent.parent;
				level = level - 1;
			end
			if parent then
				-- app.PrintDebug("selectparent-searched",level,parent.hash,parent.text)
				searchResults[#searchResults + 1] = parent
				return;
			end
		end
		app.print("'selectparent' failed for",o.hash);
	end,
	-- Instruction to find all content marked with the specified 'requireSkill'
	selectprofession = function(finalized, searchResults, o, cmd, requireSkill)
		local search = app:BuildSearchResponse("requireSkill", requireSkill);
		ArrayAppend(searchResults, search);
	end,
	-- Instruction to fill with identical content Sourced elsewhere for this group (no symlinks)
	fill = function(finalized, searchResults, o)
		local okey = o.key
		if not okey then return end

		local okeyval = o[okey]
		if not okeyval then return end

		local objs = SearchForObject(okey, okeyval, "field", true)
		for i=1,#objs do
			ArrayAppend(searchResults, objs[i].g)
		end
	end,
	-- Instruction to finalize the current search results and prevent additional queries from affecting this selection
	finalize = function(finalized, searchResults)
		ArrayAppend(finalized, searchResults);
		wipearray(searchResults);
	end,
	-- Instruction to take all of the finalized and non-finalized search results and merge them back in to the processing queue
	merge = function(finalized, searchResults)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipearray(searchResults);
		-- finalized first
		ArrayAppend(searchResults, finalized);
		wipearray(finalized);
		-- then any existing searchResults
		ArrayAppend(searchResults, orig);
	end,
	-- Instruction to "push" all of the group values into an object as specified
	push = function(finalized, searchResults, o, cmd, field, value)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipearray(searchResults);
		local group = CreateObject({[field] = value });
		NestObjects(group, orig);
		searchResults[1] = group;
	end,
	-- Instruction to "pop" all of the group values up one level
	pop = function(finalized, searchResults)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipearray(searchResults);
		if orig then
			local obj
			for i=1,#orig do
				obj = orig[i]
				-- insert raw & symlinked Things from this group
				ArrayAppend(searchResults, obj.g, ResolveSymbolicLink(obj));
			end
		end
	end,
	-- Instruction to include only search results where a key value is a value
	where = function(finalized, searchResults, o, cmd, field, value)
		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result[field] or result[field] ~= value then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to include only search results where a key value is a value
	whereany = function(finalized, searchResults, o, cmd, field, ...)
		local hash, vals = {}, {...}
		for i=1,#vals do
			hash[vals[i]] = true
		end
		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result[field] or not hash[result[field]] then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to extract all nested results which contain a given field
	extract = function(finalized, searchResults, o, cmd, field)
		local orig
		if #searchResults > 0 then
			orig = CloneArray(searchResults)
		end
		wipearray(searchResults)
		if orig then
			for i=1,#orig do
				Resolve_Extract(searchResults, orig[i], field)
			end
		end
	end,
	-- Instruction to find all nested results which contain a given field/value
	find = function(finalized, searchResults, o, cmd, field, val)
		if #searchResults > 0 then
			local resolved = {}
			Resolve_Find(resolved, searchResults, field, val)
			wipearray(searchResults)
			ArrayAppend(searchResults, resolved)
		end
	end,
	-- Instruction to include the search result with a given index within each of the selection's groups
	index = function(finalized, searchResults, o, cmd, index)
		local orig;
		if #searchResults > 0 then
			orig = CloneArray(searchResults);
		end
		wipearray(searchResults);
		if orig then
			local result, g;
			for k=#orig,1,-1 do
				result = orig[k];
				g = result.g;
				if g and index <= #g then
					searchResults[#searchResults + 1] = g[index]
				end
			end
		end
	end,
	-- Instruction to include only search results where a key value is not a value
	["not"] = function(finalized, searchResults, o, cmd, field, ...)
		local values = {...};
		if #values > 1 then
			local matches = {};
			for i=1,#values do
				matches[values[i]] = true;
			end
			for k=#searchResults,1,-1 do
				local result = searchResults[k];
				local value = result[field];
				if value and matches[value] then
					tremove(searchResults, k);
				end
			end
		elseif #values == 1 then
			local value = values[1];
			for k=#searchResults,1,-1 do
				local result = searchResults[k];
				if result[field] and result[field] == value then
					tremove(searchResults, k);
				end
			end
		else
			app.print("'",cmd,"' had empty value set")
		end
	end,
	-- Instruction to include only search results where a key exists
	is = function(finalized, searchResults, o, cmd, field)
		for k=#searchResults,1,-1 do
			if not searchResults[k][field] then tremove(searchResults, k); end
		end
	end,
	-- Instruction to include only search results where a key doesn't exist
	isnt = function(finalized, searchResults, o, cmd, field)
		for k=#searchResults,1,-1 do
			if searchResults[k][field] then tremove(searchResults, k); end
		end
	end,
	-- Instruction to include only search results where a key value/table contains a value
	contains = function(finalized, searchResults, o, cmd, field, ...)
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
	exclude = function(finalized, searchResults, o, cmd, field, ...)
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
	invtype = function(finalized, searchResults, o, cmd, ...)
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
	meta_achievement = function(finalized, searchResults, o, cmd, ...)
		local vals = select("#", ...);
		if vals < 1 then
			app.print("'",cmd,"' had empty value set")
			return;
		end
		local Search = SearchForObject
		local cache, value;
		for i=1,vals do
			value = select(i, ...);
			cache = Search("achievementID", value, "key", true)
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
	partial_achievement = function(finalized, searchResults, o, cmd, achID)
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
	prune = function(finalized, searchResults, o, cmd, ...)
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
	modID = function(finalized, searchResults, o, cmd, modID)
		FinalizeModID = modID
	end,
	-- Instruction to apply the modID from the Source object to any Items within the finalized search results
	myModID = function(finalized, searchResults, o)
		FinalizeModID = o.modID
	end,
	-- Instruction to apply a specific modID to any Items within the finalized search results
	usemodID = function(finalized, searchResults, o, cmd, modID)
		SelectMod = GetGroupItemIDWithModID(nil, nil, modID)
	end,
	-- Instruction to apply the modID from the Source object to any Items within the finalized search results
	usemyModID = function(finalized, searchResults, o)
		SelectMod = GetGroupItemIDWithModID(nil, nil, o.modID)
	end,
	-- Instruction to use the modID from the Source object to filter matching modID on any Items within the finalized search results
	whereMyModID = function(finalized, searchResults, o)
		local modID = o.modID
		-- don't filter things without modID if this thing doesn't have a modID
		if not modID then return end

		for k=#searchResults,1,-1 do
			local result = searchResults[k];
			if not result.modID or result.modID ~= modID then
				tremove(searchResults, k);
			end
		end
	end,
	-- Instruction to perform an immediate 'FillGroups' against the objects in the finalized set prior to returning the results
	-- or to fill the groups currently within the searchResults at this step
	groupfill = function(finalized, searchResults, o, cmd, onCurrent)
		if onCurrent then
			if #searchResults == 0 then return end
			local orig = CloneArray(searchResults);
			wipearray(searchResults);
			local result
			for k=1,#orig do
				result = CreateObject(orig[k])
				FillGroups(result)
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
	-- TODO: not used anymore, likely can be removed soon
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
			criteriaObject = app.CreateAchievementCriteria(uniqueID, {achievementID = achievementID}, true);

			-- criteriaType ref: https://warcraft.wiki.gg/wiki/API_GetAchievementCriteriaInfo
			-- Quest source
			if criteriaType == 27	-- Completing a quest
			then
				local quests = app.SearchForField("questID", assetID)
				if #quests > 0 then
					local c
					for i=1,#quests do
						c = quests[i]
						-- criteria inherit their achievement data ONLY when the achievement data is actually referenced... this is required for proper caching
						NestObject(c, criteriaObject);
						AssignChildren(c);
						app.CacheFields(criteriaObject);
						app.DirectGroupUpdate(c);
						criteriaObject = app.CreateAchievementCriteria(uniqueID, {achievementID = achievementID}, true);
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
					app.CacheFields(criteriaObject);
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
				app.CacheFields(criteriaObject);
				-- this criteria object may have been turned into a cost via costs/providers assignment, so make sure we update those respective costs via the Cost Runner
				-- if settings are changed while this is running, it's ok because it refreshes costs from the cache
				app.HandleEvent("OnSearchResultUpdate", criteriaObject)
				searchResults[#searchResults + 1] = criteriaObject
			end
		end
	end
end

-- Subroutine Logic Cache
local SubroutineCache = {
	pvp_gear_base = function(finalized, searchResults, o, cmd, _, headerID1, headerID2)
		local select, find = ResolveFunctions.select, ResolveFunctions.find
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		if headerID2 then
			find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Find the Set header
		end
	end,
	pvp_gear_faction_base = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3)
		local select, find = ResolveFunctions.select, ResolveFunctions.find
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
	end,
	-- Set Gear
	pvp_set_ensemble = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, classID)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Set header
		find(finalized, searchResults, o, "find", "classID", classID);		-- Select the class header
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	pvp_set_faction_ensemble = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3, classID)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
		find(finalized, searchResults, o, "find", "classID", classID);		-- Select the class header
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	-- Weapons
	pvp_weapons_ensemble = function(finalized, searchResults, o, cmd, _, headerID1, headerID2)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Set header
		find(finalized, searchResults, o, "find", "headerID", app.HeaderConstants.WEAPONS);	-- Select the "Weapons" header.
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	pvp_weapons_faction_ensemble = function(finalized, searchResults, o, cmd, _, headerID1, headerID2, headerID3)
		local select, find, extract = ResolveFunctions.select, ResolveFunctions.find, ResolveFunctions.extract
		select(finalized, searchResults, o, "select", "headerID", headerID1);	-- Select the Season header
		find(finalized, searchResults, o, "find", "headerID", headerID2);	-- Select the Faction header
		find(finalized, searchResults, o, "find", "headerID", headerID3);	-- Select the Set header
		find(finalized, searchResults, o, "find", "headerID", app.HeaderConstants.WEAPONS);	-- Select the "Weapons" header.
		extract(finalized, searchResults, o, "extract", "sourceID");	-- Extract all Items with a SourceID
	end,
	-- Common Northrend/Cataclysm Recipes Vendor
	common_recipes_vendor = function(finalized, searchResults, o, cmd, npcID)
			local select, pop, is, exclude = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.is, ResolveFunctions.exclude;
		select(finalized, searchResults, o, "select", "npcID", npcID);	-- Main Vendor
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
	common_vendor = function(finalized, searchResults, o, cmd, npcID)
		local select, pop = ResolveFunctions.select, ResolveFunctions.pop
		select(finalized, searchResults, o, "select", "npcID", npcID);	-- Main Vendor
		pop(finalized, searchResults);	-- Remove Main Vendor and push his children into the processing queue.
	end,
	-- TW Instance
	tw_instance = function(finalized, searchResults, o, cmd, instanceID)
		local select, pop, whereany, push, finalize = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.whereany, ResolveFunctions.push, ResolveFunctions.finalize;
		select(finalized, searchResults, o, "select", "itemID", 133543);	-- Infinite Timereaver
		push(finalized, searchResults, o, "push", "headerID", app.HeaderConstants.COMMON_BOSS_DROPS);	-- Push into 'Common Boss Drops' header
		finalize(finalized, searchResults);	-- capture current results
		select(finalized, searchResults, o, "select", "instanceID", instanceID);	-- select this instance
		whereany(finalized, searchResults, o, "whereany", "e", unpack(app.TW_EventIDs or app.EmptyTable) );	-- Select any TIMEWALKING eventID
		if #searchResults > 0 then o.e = searchResults[1].e; end
		pop(finalized, searchResults);	-- pop the instance header
	end,
	instance_tier = function(finalized, searchResults, o, cmd, instanceID, difficultyID, classID)
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
		wipearray(searchResults);
		if orig then
			local ob
			for i=1,#orig do
				ob = orig[i]
				if not ob.f then
					if ob.g then
						-- no filter Item with sub-groups
						ArrayAppend(searchResults, ob.g)
					else
						-- no filter Item without sub-groups, keep it directly in case it is a cost for the actual Tier pieces
						searchResults[#searchResults + 1] = ob
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
			wipearray(searchResults);
			local c;
			if orig then
				local ob
				for i=1,#orig do
					ob = orig[i]
					c = ob.c;
					if c and ContainsAnyValue(c, classID) then
						searchResults[#searchResults + 1] = ob
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
	local cmd, cmdFunc, sym
	local debug = true
	for i=1,#oSym do
		sym = oSym[i]
		cmd = sym[1];
		cmdFunc = ResolveFunctions[cmd];
		-- app.PrintDebug("sym: '",cmd,"' for",o.hash,"with:",unpack(sym))
		if cmdFunc then
			cmdFunc(finalized, searchResults, o, unpack(sym));
			if debug and #searchResults == 0 and not NonSelectCommands[cmd] then
				app.PrintDebug(app.Modules.Color.Colorize("Symlink command with no results for: "..app:SearchLink(o), app.Colors.ChatLinkError),"@",_,unpack(sym))
				app.PrintTable(oSym)
				debug = false
			end
		else
			app.print("Unknown symlink command",cmd);
		end
		-- app.PrintDebug("Finalized",#finalized,"Results",#searchResults,"from",o.hash,"with:",unpack(sym))
	end
end or function(finalized, searchResults, o, oSym)
	local cmd, cmdFunc, sym
	for i=1,#oSym do
		sym = oSym[i]
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
				for i=1,#PruneFinalized do
					clone[PruneFinalized[i]] = nil
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
	-- app.PrintDebug("Symbolic Link for", oKey,oKey and o[oKey], "contains", #cloned, "values after filtering.")
	return cloned;
end
app.ResolveSymbolicLink = ResolveSymbolicLink

-- Performance Tracking
if app.__perf then
	app.__perf.AutoCaptureTable(ResolveFunctions, "Symlink.ResolveFunctions");
end

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
-- NOTE: ONLY performs the symlink for 'achievement_criteria'
app.FillAchievementCriteriaAsync = function(o)
	local sym = o.sym
	if not sym then return end

	local sym = sym[1][1]
	if sym ~= "achievement_criteria" then return end

	-- app.PrintDebug("resolve achievement_criteria",o.hash)
	app.FillRunner.Run(ResolveSymlinkGroupAsync, o);
end

local function GetRelativeFieldInSet(group, field, set)
	if group then
		local val = group[field]
		return set[val] and val or GetRelativeFieldInSet(group.sourceParent or group.parent, field, set);
	end
end
local function GetAllNestedGroupsByFunc(results, groups, func)
	local g,o
	for i=1,#groups do
		o = groups[i]
		if func(o) then results[#results + 1] = o end
		g = o.g
		if g then
			for i=1,#g do
				GetAllNestedGroupsByFunc(results, g[i], func)
			end
		end
	end
end
local function GetNpcIDForDrops(group)
	-- assuming for any 'crs' references on an encounter/header group that all crs are linked to the same resulting content
	-- Fyrakk Assaults uses two headers with 'crs' test that when changing this check
	return group.npcID or ((group.encounterID or group.isWorldQuest) and group.crs and group.crs[1])
end

app.AddEventHandler("OnLoad", function()
	local Fill = app.Modules.Fill
	if not Fill then return end

	Fill.AddFiller("SYMLINK",
	function(group, FillData)
		if group.sym then
			-- app.PrintDebug("DSG-Now",app:SearchLink(group));
			local groups = ResolveSymbolicLink(group);
			-- make sure this group doesn't waste time getting resolved again somehow
			group.sym = nil;
			if groups and #groups > 0 then
				-- flag all nested symlinked content so that any NPC groups do not nest NPC data
				local results = {}
				GetAllNestedGroupsByFunc(results, groups, GetNpcIDForDrops)
				for i=1,#results do
					results[i].NestNPCDataSkip = true
				end
			end
			-- app.PrintDebug("DSG",groups and #groups);
			return groups;
		end
	end,
	{
		-- SettingsIcon = ,
		SettingsTooltip = app.L.FILL_SYMLINK_DATA_CHECKBOX_TOOLTIP:format(app.Modules.Color.Colorize(app.L.SYM_ROW_INFORMATION, app.Colors.SymLink)),
	})

	-- Pulls in Common drop content for specific NPCs if any exists
	-- (so we don't need to always symlink every NPC which is included in common boss drops somewhere)
	Fill.AddFiller("NPC",
	function(group, FillData)
		if group.NestNPCDataSkip then return end

		local npcID = GetNpcIDForDrops(group)
		if not npcID then return end

		-- app.PrintDebug("NPC Group",app:SearchLink(group),npcID)
		-- search for groups of this NPC
		local npcGroups = SearchForField("npcID", npcID);
		if not npcGroups or #npcGroups == 0 then return end

		-- see if there's a difficulty wrapping the fill group
		local difficultyID = GetRelativeValue(group, "difficultyID");
		if difficultyID then
			-- app.PrintDebug("FillNPC.Diff",difficultyID)
			-- can only fill npc groups for the npc which match the difficultyID
			local headerID, groups, npcDiff, npcGroup
			for i=1,#npcGroups do
				npcGroup = npcGroups[i]
				if npcGroup.hash ~= group.hash then
					headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
					-- app.PrintDebug("DropCheck",app:SearchLink(npcGroup),"=>",headerID)
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
							if groups then groups[#groups + 1] = CreateObject(npcGroup)
							else groups = { CreateObject(npcGroup) }; end
						end
					end
				end
			end
			return groups;
		else
			-- app.PrintDebug("FillNPC")
			local headerID,groups,npcGroup
			for i=1,#npcGroups do
				npcGroup = npcGroups[i]
				if npcGroup.hash ~= group.hash then
					headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
					-- app.PrintDebug("DropCheck",app:SearchLink(npcGroup),"=>",headerID)
					-- where headerID is allowed
					if headerID then
						-- copy the header under the NPC groups
						-- wrap the npcGroup in the matching header if it is not a header
						if not npcGroup.headerID then
							npcGroup = app.CreateCustomHeader(headerID, {g={CreateObject(npcGroup)}})
						end
						-- app.PrintDebug("IsDrop",group.hash,"<==",npcGroup.hash)
						if groups then groups[#groups + 1] = CreateObject(npcGroup)
						else groups = { CreateObject(npcGroup) }; end
					end
				end
			end
			return groups;
		end
	end,
	{
		-- SettingsIcon = ,
		SettingsTooltip = app.L.FILL_NPC_DATA_CHECKBOX_TOOLTIP,
	})

	-- Pulls in Common drop content for specific Objects if any exists (e.g. mining/herbing/fishing nodes)
	-- This allows Object providers on Items to show as Sources when Filled
	Fill.AddFiller("OBJECT",
	function(group, FillData)

		local objectID = group.objectID
		if not objectID then return end

		-- app.PrintDebug("Object Group",app:SearchLink(group),objectID)
		-- search for groups of this Object
		local objectGroups = SearchForField("objectID", objectID);
		if not objectGroups or #objectGroups == 0 then return end

		-- see if there's a difficulty wrapping the fill group
		local difficultyID = GetRelativeValue(group, "difficultyID");
		if difficultyID then
			-- app.PrintDebug("FillOBJ.Diff",difficultyID)
			-- can only fill obj groups for the obj which match the difficultyID
			local groups,objDiff,objGroup,objID
			for i=1,#objectGroups do
				objGroup = objectGroups[i]
				objID = objGroup.objectID
				if not objID or objID ~= objectID then
					objDiff = GetRelativeValue(objGroup, "difficultyID");
					if not objDiff or objDiff == difficultyID then
						-- app.PrintDebug("IsDrop.Diff",difficultyID,group.hash,"<==",objGroup.hash)
						if groups then groups[#groups + 1] = CreateObject(objGroup)
						else groups = { CreateObject(objGroup) }; end
					end
				end
			end
			return groups;
		else
			-- app.PrintDebug("FillOBJ")
			local groups,objGroup,objID
			for i=1,#objectGroups do
				objGroup = objectGroups[i]
				objID = objGroup.objectID
				if not objID or objID ~= objectID then
					-- app.PrintDebug("IsDrop",group.hash,"<==",objGroup.hash)
					if groups then groups[#groups + 1] = CreateObject(objGroup)
					else groups = { CreateObject(objGroup) }; end
				end
			end
			return groups;
		end
	end,
	{
		-- SettingsIcon = ,
		SettingsTooltip = app.L.FILL_OBJECT_DATA_CHECKBOX_TOOLTIP,
	})
end)
