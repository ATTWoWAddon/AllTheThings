local _, app = ...;

-- Global locals
local pairs, rawget
	= pairs, rawget

-- CRIEVE NOTE: This might look weird, but keeping this out of the scope made it run really quite fast.
local CacheFields;

-- Cache a given group into the current cache for the provided field and value
local currentCache;
local AllCaches = setmetatable({}, {
	__index = function(t, name)
		local cache = { name = name, skipMapCaching = false };
		t[name] = cache;
		cache.CacheField = function(group, field, value)
			local c = cache[field][value]
			c[#c + 1] = group
		end
		cache.CacheFields = function(groups, skipMapCaching)
			local oldCache = currentCache;
			currentCache = cache;
			CacheFields(groups, skipMapCaching or cache.skipMapCaching);
			currentCache = oldCache;
		end
		setmetatable(cache, app.MetaTable.AutoTableOfTables);
		cache.npcID = cache.creatureID;	-- identical cache as creatureID (probably deprecate npcID use eventually)
		return cache;
	end,
});
currentCache = AllCaches.default;

do	-- Cache & Search Functions
local ipairs, print, type, math_floor
	= ipairs, print, type, math.floor
local ArrayAppend = app.ArrayAppend

-- All Cache Searching
app.SearchForFieldInAllCaches = function(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field from all established data caches.
	local groups = {};
	for _,cache in pairs(AllCaches) do
		ArrayAppend(groups, cache[field][id]);
	end
	return groups;
end;
app.SearchForManyInAllCaches = function(field, ids)
	-- Returns: A table containing all groups which contain the provided each of the provided ids for a given field from all established data caches.
	local groups = {};
	local fieldCache;
	for _,cache in pairs(AllCaches) do
		fieldCache = cache[field];
		for i=1,#ids do
			ArrayAppend(groups, fieldCache[ids[i]]);
		end
	end
	return groups;
end
app.CreateDataCache = function(name)
	-- Returns: An object which can be used for holding cached data by various keys allowing for quick updates of data states.
	return AllCaches[name];
end

-- Cache-Based Searching
local function GetRawField(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field.
	-- NOTE: Can be nil for simplicity in use
	local container = rawget(currentCache, field)
	if not container then return end
	return rawget(container, id);
end
app.GetRawField = GetRawField;
app.GetRawFieldContainer = function(field)
	-- Returns: The actual table containing all groups which contain a given field
	-- NOTE: Can be nil for simplicity in use
	return rawget(currentCache, field);
end
app.SearchForField = function(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field.
	return currentCache[field][id];
end
app.SearchForFieldContainer = function(field)
	-- Returns: A table containing all groups which contain a given field.
	return currentCache[field];
end

-- Recursive Searching
local function SearchForFieldRecursively(group, field, value)
	-- Returns: A table containing all subgroups which contain a given value of field relative to the group or nil.
	if group.g then
		-- Go through the sub groups and determine if any of them have a response.
		local first
		for i, subgroup in ipairs(group.g) do
			local g = SearchForFieldRecursively(subgroup, field, value);
			if g then
				if first then
					-- Merge!
					for j,data in ipairs(g) do
						first[#first + 1] = data;
					end
				else
					-- Cool! (This should be the most common occurance)
					first = g;
				end
			end
		end
		if group[field] == value then
			-- OH BOY, WE FOUND IT!
			if first then
				first[#first + 1] = group
				return first
			else
				return { group };
			end
		end
		return first;
	elseif group[field] == value then
		-- OH BOY, WE FOUND IT!
		return { group };
	end
end
app.SearchForFieldRecursively = SearchForFieldRecursively;

-- Search for a thing that matches some requirements
app.SearchForObject = function(field, id, require, allowMultiple)
	-- app.PrintDebug("SFO",field,id,require,allowMultiple)
	-- This method performs the SearchForField logic, but then may verifies that ONLY a specific matching, filtered-priority object is returned
	-- require - Determine the required level of matching found objects:
	-- * "key" - only accept objects whose key is also the field with value
	-- * "field" - only accept objects which contain the exact field with value
	-- * none - accept any object which is cached against the specific field value
	-- allowMultiple - Whether to return multiple matching objects as an array (within the 'require' restriction)
	local fcache, count
	-- Direct search by modItemID means not to allow an itemID fallback in the search
	-- however, base itemIDs are not cached by modItemID, so a modItemID search on a base itemID
	-- should instead be considered as an itemID search
	if field == "modItemID" then
		local idBase = math_floor(id)
		if idBase == id then
			id = idBase
			field = "itemID"
		end
	-- Items are cached by base ItemID and ModItemID, so when searching by ItemID, use ModItemID for
	-- match requirement accuracy if possible, with fallback to base itemID
	elseif field == "itemID" then
		-- try searching by modItemID cache, any results are the EXACT id searched for
		fcache = GetRawField("modItemID", id)
		if fcache and #fcache > 0 then
			-- use modItemID as the field for 'require' since it returned results
			field = "modItemID"
			require = "field"
		else
			local idBase = math_floor(id)
			-- if we're NOT searching for a plain itemID and found no results, we can revert to the plain itemID
			if idBase ~= id and (not fcache or #fcache == 0) then
				id = idBase
				fcache = nil
			end
		end
	end
	fcache = fcache or GetRawField(field, id)
	count = fcache and #fcache or 0;
	if count == 0 then
		-- app.PrintDebug("SFO:",field,id,require,"0~")
		return allowMultiple and app.EmptyTable or nil
	end
	local fcacheObj;
	require = (require == "key" and 2) or (require == "field" and 1) or 0;
	-- quick escape for single cache results! hooray!
	if count == 1 then
		fcacheObj = fcache[1];
		if (require == 0) or
			(require == 1 and fcacheObj[field] == id) or
			(require == 2 and fcacheObj.key == field and fcacheObj[field] == id)
		then
			-- app.PrintDebug("SFO:",field,id,require,"1=",fcacheObj.hash)
			return allowMultiple and {fcacheObj} or fcacheObj
		end
		-- one result, but doesn't meet the 'require'
		-- app.PrintDebug("SFO:",field,id,require,"1~",fcacheObj.hash)
		return allowMultiple and app.EmptyTable or nil
	end

	local results

	-- split logic based on require to reduce conditionals within loop
	if require == 2 then
		-- Key require
		results = {}
		for i=1,count,1 do
			fcacheObj = fcache[i];
			-- field matching id
			if fcacheObj[field] == id then
				if fcacheObj.key == field then
					-- with keyed-field matching key
					results[#results + 1] = fcacheObj
				end
			end
		end
	elseif require == 1 then
		-- Field require
		results = {}
		for i=1,count,1 do
			fcacheObj = fcache[i];
			-- field matching id
			if fcacheObj[field] == id then
					-- with field matching id
					results[#results + 1] = fcacheObj
			end
		end
	else
		-- No require
		results = fcache
	end
	-- app.PrintDebug("SFO:",field,id,require,"?>",#results)
	-- if only 1 or no result, no point to try filtering
	if #results <= 1 then return allowMultiple and results or results[1] end
	-- try out accessibility sort on multiple results instead of filtering
	app.Sort(results, app.SortDefaults.Accessibility)
	return allowMultiple and results or results[1]
end

-- Source Path Generation
local function GenerateSourceHash(group)
	local parent = group.parent;
	if parent then
		return GenerateSourceHash(parent) .. ">" .. (group.hash or group.name or group.text);
	else
		return group.hash or group.name or group.text or "NOHASH"..app.UniqueCounter.SourceHash
	end
end
app.GenerateSourceHash = GenerateSourceHash;

-- Hash-Based Searching
local function SearchForSourcePath(g, hashes, level, count)
	if not g then return end

	local hash = hashes[level];
	if hash then
		local o
		for i=1,#g do
			o = g[i]
			if (o.hash or o.name or o.text) == hash then
				if level == count then return o; end
				return SearchForSourcePath(o.g, hashes, level + 1, count);
			end
		end
	end
end
local function SearchForSpecificGroups(t, group, hashes)
	-- Search a group for objects whose hash matches a hash found in hashes and append it to table t.
	if group then
		if hashes[group.hash] then
			t[#t + 1] = group
		end
		local g = group.g;
		if g then
			for i=1,#g do
				SearchForSpecificGroups(t, g[i], hashes);
			end
		end
	end
end
app.SearchForSourcePath = SearchForSourcePath;
app.SearchForSpecificGroups = SearchForSpecificGroups;

-- Cache Verification
local function VerifyRecursion(group, checked)
	-- Verify no infinite parent recursion exists for a given group
	if type(group) ~= "table" then return; end
	if not checked then
		checked = { };
		-- print("test",group.key,group[group.key]);
	end
	for k,o in pairs(checked) do
		if o.key ~= nil and o.key == group.key and o[o.key] == group[group.key] then
			-- print("Infinite .parent Recursion Found:");
			-- print the parent chain to the loop point
			-- for a,b in pairs(checked) do
				-- print(b.key,b[b.key],b,"=>");
			-- end
			-- print(group.key,group[group.key],group);
			-- print("---");
			return;
		end
	end
	if group.parent then
		checked[#checked + 1] = group
		return VerifyRecursion(group.parent, checked);
	end
	return true;
end
app.VerifyCache = function(cache)
	-- Verify that the current cache does not have any recursive issues.
	print("VerifyCache Starting...");
	for i,keyCache in pairs(cache or currentCache) do
		print("Cache", i);
		for k,valueCache in pairs(keyCache) do
			-- print("valueCache",k);
			for o,group in pairs(valueCache) do
				-- print("group",o);
				if not VerifyRecursion(group) then
					print("Caused infinite .parent recursion",group.key,group[group.key]);
				end
			end
		end
	end
	print("VerifyCache Completed");
end
end
do	-- Field Caching & Converters
local function CacheField(group, field, value)
	-- comment this in for testing if some caching issue happens
	-- if not (field and value) then print("Attempting to cache invalid data", field, value, group.text); end
	local c = currentCache[field][value]
	c[#c + 1] = group
end
local fieldConverters, runners = {}, {};
local mapKeyUncachers;
local function _CacheFields(group)
	local mapKeys
	local hasG = rawget(group, "g")
	for key,value in pairs(group) do
		local _converter = fieldConverters[key];
		if _converter and _converter(group, value) then
			if mapKeys then mapKeys[key] = value
			else mapKeys = { [key] = value }; end
		end
	end
	if hasG then
		for i=1,#hasG do
			_CacheFields(hasG[i]);
		end
	end
	if mapKeys then
		for key,value in pairs(mapKeys) do
			mapKeyUncachers[key](group, value);
		end
	end
end

do	-- MapID & ExplorationID Key Cache
-- Whether or not to ignore the mapID in a coord for a given key.
local IsKeyIgnoredForCoord = setmetatable({
	instanceID = app.ReturnTrue,
	mapID = app.ReturnTrue,
	objectiveID = app.ReturnTrue,
	difficultyID = app.ReturnTrue,
}, {
	__index = function(t, key)
		--print("IsKeyIgnoredForCoord?", key);
		local func = app.ReturnFalse;
		t[key] = func;
		return func;
	end
});
IsKeyIgnoredForCoord.headerID = function(group)
	local parent = group.parent;
	return parent and IsKeyIgnoredForCoord[parent.key](parent);
end

-- MapID Caching
local currentMapGroup, allowMapCaching = {}, true
local function cacheMapID(group, mapID)
	-- already are within a caching group for this mapID or not allowing map caching, don't cache
	if currentMapGroup[mapID] or not allowMapCaching then return end
	-- this group should not be map-cached into its coord map
	-- if the group has no sub-groups, then we allow caching for this new mapID, but don't capture it as a mapgroup
	if rawget(group, "g") then
		-- otherwise capture this group as the containing cache group of this mapID
		-- app.PrintDebug(">>>map:",mapID,group.key,group[group.key])
		currentMapGroup[mapID] = group
	end
	
	CacheField(group, "mapID", mapID);
	return true
end
fieldConverters.mapID = cacheMapID;
fieldConverters.maps = function(group, value)
	for i=1,#value do
		cacheMapID(group, value[i]);
	end
	return true;
end
fieldConverters.flightpathID = function(group, value)
	CacheField(group, "flightpathID", value);
	for mapID,_ in pairs(currentMapGroup) do
		CacheField(group, "flightPathsByMapID", mapID);
	end
end
fieldConverters.coord = function(group, coord)
	if not IsKeyIgnoredForCoord[group.key](group) then
		return cacheMapID(group, coord[3]);
	end
end
fieldConverters.coords = function(group, coords)
	if not IsKeyIgnoredForCoord[group.key](group) then
		for i=1,#coords do
			cacheMapID(group, coords[i][3]);
		end
		return true;
	end
end
fieldConverters.explorationID = function(group, value)
	CacheField(group, "explorationID", value);
end

-- Map Uncachers
local function uncacheMap(group, mapID)
	-- remove this group's mapID if it is the current map group for this mapID
	if currentMapGroup[mapID] == group then
		-- app.PrintDebug("<<<map:",mapID,group.key,group[group.key])
		currentMapGroup[mapID] = nil
	end
end
mapKeyUncachers = {
	["mapID"] = uncacheMap,
	["maps"] = function(group, maps)
		for i=1,#maps do
			uncacheMap(group, maps[i]);
		end
	end,
	["coord"] = function(group, coord)
		uncacheMap(group, coord[3]);
	end,
	["coords"] = function(group, coords)
		for i=1,#coords do
			uncacheMap(group, coords[i][3]);
		end
	end,
};
end
do	-- Map Remapping / Zone Text Parsing
-- Map Remapping
-- This feature takes the original mapID and allows modifications on it to
-- change the displayed name and the content of the mini list.
local C_Map_GetAreaInfo, C_Map_GetMapInfo, tremove, nextCustomMapID, L
	= C_Map.GetAreaInfo, C_Map.GetMapInfo, tremove, -2, app.L
local MapRemapping = setmetatable({}, app.MetaTable.AutoTableOfTables);
local function zoneArtIDRunner(group, value)
	-- If this group uses a normal map, we want to rip out the cache for it.
	-- Doing it after the cache is finished allows us to still prevent the coordinates
	-- on relative objects and npcs from getting cached to the parent mapID.
	local originalMaps = group.maps;
	local originalMapID = group.mapID or (originalMaps and originalMaps[1]);
	if originalMapID then
		-- Generate a new unique mapID (negative)
		local mapID = nextCustomMapID;
		nextCustomMapID = nextCustomMapID - 1;
		if originalMaps then
			if group.mapID then
				originalMaps[#originalMaps + 1] = mapID
			else
				group.mapID = nil;
			end
		else
			group.maps = {mapID};
		end

		-- Manually assign the name of this map since it is not a real mapID.
		CacheField(group, "mapID", mapID);
		L.MAP_ID_TO_ZONE_TEXT[mapID] = group.text

		-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
		local artIDs = MapRemapping[originalMapID].artIDs;
		for i=1,#value do
			artIDs[value[i]] = mapID;
		end

		-- Uncache the original mapID
		local mapIDCache = currentCache.mapID;
		mapIDCache = mapIDCache[originalMapID];
		for i=#mapIDCache,1,-1 do
			if mapIDCache[i] == group then
				tremove(mapIDCache, i)
				break;
			end
		end
	end
end
local function zoneTextAreasRunner(group, value)
	local mapID = group.mapID;
	if not mapID then
		-- Generate a new unique mapID (negative)
		mapID = nextCustomMapID;
		nextCustomMapID = nextCustomMapID - 1;
		local maps = group.maps
		if maps then maps[#maps + 1] = mapID
		else group.maps = {mapID} end

		-- Manually assign the name of this map since it is not a real mapID.
		CacheField(group, "mapID", mapID);
	end

	-- Use the localizer to force the minilist to display this as if it was a map file.
	local name = C_Map_GetAreaInfo(value[1]);
	if name then L.MAP_ID_TO_ZONE_TEXT[mapID] = name end

	-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
	local mapIDs, parentMapID, info = {}, nil, nil;
	local coords = group.coords
	if coords then
		for i=1,#coords do
			parentMapID = coords[i][3];
			if parentMapID and not mapIDs[parentMapID] then
				mapIDs[parentMapID] = 1;
				info = C_Map_GetMapInfo(parentMapID);
				if info and info.parentMapID then
					mapIDs[info.parentMapID] = 1;
				end
			end
		end
	else
		parentMapID = app.GetRelativeValue(group.parent, "mapID");
		if parentMapID then
			mapIDs[parentMapID] = 1;
			info = C_Map_GetMapInfo(parentMapID);
			if info and info.parentMapID then
				mapIDs[info.parentMapID] = 1;
			end
		end
	end
	local maps = group.maps
	if maps then
		local parentMapID
		for i=1,#maps do
			parentMapID = maps[i]
			if not mapIDs[parentMapID] then
				mapIDs[parentMapID] = 1;
				info = C_Map_GetMapInfo(parentMapID);
				if info and info.parentMapID then
					mapIDs[info.parentMapID] = 1;
				end
			end
		end
	end
	for parentMapID,_ in pairs(mapIDs) do
		local areaIDs = MapRemapping[parentMapID].areaIDs;
		for i=1,#value do
			areaIDs[value[i]] = mapID;
		end
	end
end
local function zoneTextNamesRunner(group, value)
	--if true then return; end
	-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
	local originalMapID = (group.coords and group.coords[1][3]) or app.GetRelativeValue(group.parent, "mapID");
	if originalMapID then
		local mapID = group.mapID;
		if not mapID then
			-- Generate a new unique mapID (negative)
			mapID = nextCustomMapID;
			nextCustomMapID = nextCustomMapID - 1;
			local maps = group.maps
			if maps then maps[#maps + 1] = mapID
			else group.maps = {mapID} end

			-- Manually assign the name of this map since it is not a real mapID.
			CacheField(group, "mapID", mapID);
		end
		
		local names = MapRemapping[originalMapID].names;
		for i=1,#value do
			names[value[i]] = mapID;
		end
	end
end
local function zoneTextHeaderIDRunner(group, value)
	value = L.HEADER_NAMES[value]
	if value then zoneTextNamesRunner(group, { value }); end
end
app.MapRemapping = MapRemapping;

-- Localization Helpers
fieldConverters.instanceID = function(group, value)
	CacheField(group, "instanceID", value);
	if group.headerID then
		runners[#runners + 1] = function()
			zoneTextHeaderIDRunner(group, group.headerID);
		end
	end
end
fieldConverters["zone-artIDs"] = function(group, value)
	runners[#runners + 1] = function()
		zoneArtIDRunner(group, value);
	end
end
fieldConverters["zone-text-areaID"] = function(group, value)
	runners[#runners + 1] = function()
		zoneTextAreasRunner(group, { value });
	end
end
fieldConverters["zone-text-areas"] = function(group, value)
	runners[#runners + 1] = function()
		zoneTextAreasRunner(group, value);
	end
end
fieldConverters["zone-text-continent"] = function(group, value)
	runners[#runners + 1] = function()
		local mapID = group.mapID;
		if mapID then
			MapRemapping[mapID].isContinent = true;
		end
	end
end
fieldConverters["zone-text-headerID"] = function(group, value)
	runners[#runners + 1] = function()
		zoneTextHeaderIDRunner(group, value);
	end
end
fieldConverters["zone-text-names"] = function(group, value)
	runners[#runners + 1] = function()
		zoneTextNamesRunner(group, value);
	end
end
end
do	-- ItemID Key Cache & CacheFields Scope
local cacheGroupForModItemID = {}
local function cacheItemID(group, value)
	CacheField(group, "itemID", value);
	cacheGroupForModItemID[#cacheGroupForModItemID + 1] = group
end
fieldConverters.itemID = cacheItemID;
fieldConverters.otherItemID = cacheItemID;
fieldConverters.mountmodID = cacheItemID;
fieldConverters.heirloomID = cacheItemID;
fieldConverters.toyID = function(group, value)
	CacheField(group, "toyID", value);
	CacheField(group, "itemID", value);
end
fieldConverters.sourceID = function(group, value)
	CacheField(group, "sourceID", value);
end

-- Now that we have the runners and post scripts, we can declare the CacheFields method.
--local GetTimePreciseSec = GetTimePreciseSec;
CacheFields = function(group, skipMapCaching, cacheName)
	-- app.PrintDebug("CacheFields",app:SearchLink(group),skipMapCaching,cacheName)
	allowMapCaching = not skipMapCaching
	--local start = GetTimePreciseSec();
	if cacheName then
		AllCaches[cacheName].CacheFields(group)
	else
		_CacheFields(group)
	end
	for i=1,#runners do
		runners[i]()
	end
	app.wipearray(runners);
	
	-- Execute Post Scripts
	-- Item Mod ID conversion for bonus IDs
	if #cacheGroupForModItemID > 0 then
		local modItemID,group
		-- app.PrintDebug("caching for modItemID",#cacheGroupForModItemID)
		for i=1,#cacheGroupForModItemID do
			group = cacheGroupForModItemID[i]
			modItemID = group.modItemID
			if modItemID then
				CacheField(group, "modItemID", modItemID)
				if modItemID ~= group.itemID then
					CacheField(group, "itemID", modItemID)
				end
			end
		end
		app.wipearray(cacheGroupForModItemID)
		-- app.PrintDebug("caching for modItemID done")
	end
	--print(("Cache Fields: %.3f"):format((GetTimePreciseSec() - start) * 1000));
	return group;
end
app.CacheFields = CacheFields;
end
do	-- FactionID Key Cache
local function cacheFactionID(group, id)
	CacheField(group, "factionID", id);
end
fieldConverters.factionID = cacheFactionID;
fieldConverters.maxReputation = function(group, value)
	cacheFactionID(group, value[1]);
end
fieldConverters.minReputation = function(group, value)
	cacheFactionID(group, value[1]);
end

-- we need special handling since the data in the 'otherQuestData' needs to cache against the 'group' not the other data itself
local IgnoredOtherFactionFields = {
	coords = true,
	coord = true,
	maps = true,
	g = true,
};
fieldConverters.otherQuestData = function(group, otherFactionData)
	-- if the other faction data was actually made into a Type, then cache it against itself
	if otherFactionData.__type then
		_CacheFields(otherFactionData)
	else
		for key,value in pairs(otherFactionData) do
			_converter = fieldConverters[key]
			if _converter and not IgnoredOtherFactionFields[key] then
				_converter(group, value)
			end
		end
	end
end
end
do	-- Cost & Provider Key Cache (Creature, Object, Currency As Cost, Item As Cost, Spell as Cost)
-- Creature ID
local function cacheCreatureID(group, creatureID)
	if creatureID > 0 then
		CacheField(group, "creatureID", creatureID);
	end
end
fieldConverters.creatureID = cacheCreatureID;
fieldConverters.npcID = cacheCreatureID;
fieldConverters.crs = function(group, value)
	for i=1,#value do
		cacheCreatureID(group, value[i]);
	end
end
fieldConverters.qgs = function(group, value)
	for i=1,#value do
		cacheCreatureID(group, value[i]);
	end
end

-- Object ID
local function cacheObjectID(group, objectID)
	if group.__ignoreCaching then return end
	CacheField(group, "objectID", objectID);
end
if app.Debugging and app.Version == "[Git]" then
	cacheObjectID = function(group, objectID)
		if group.__ignoreCaching then return end
		if not app.ObjectNames[objectID] then
			print("Object Missing Name ", objectID);
			app.ObjectNames[objectID] = "Object #" .. objectID;
		end
		CacheField(group, "objectID", objectID);
	end
end
fieldConverters.objectID = cacheObjectID;

-- Providers Helper
local providerTypeConverters = {
	["n"] = cacheCreatureID,
	["o"] = cacheObjectID,
	["s"] = function(group, providerID)
		CacheField(group, "spellIDAsCost", providerID);
	end,
	["c"] = function(group, providerID)
		CacheField(group, "currencyIDAsCost", providerID);
	end,
	["i"] = function(group, providerID)
		CacheField(group, "itemIDAsCost", providerID);
	end,
	-- Do nothing, nothing to cache.
	["g"] = app.EmptyFunction
};
local function cacheProviderOrCost(group, provider)
	providerTypeConverters[provider[1]](group, provider[2]);
end
fieldConverters.provider = cacheProviderOrCost;
fieldConverters.providers = function(group, value)
	for i=1,#value do
		cacheProviderOrCost(group, value[i]);
	end
end

-- Cost & Currency
local type = type
fieldConverters.cost = function(group, value)
	if type(value) == "table" then
		for i=1,#value do
			cacheProviderOrCost(group, value[i]);
		end
	end
end
fieldConverters.currencyID = function(group, value)
	CacheField(group, "currencyID", value);
end
end
do	-- AchievementID Key Cache
local function cacheAchievementID(group, value)
	CacheField(group, "achievementID", value);
end
fieldConverters.achievementID = cacheAchievementID;
fieldConverters.achID = cacheAchievementID;
fieldConverters.altAchID = cacheAchievementID;
fieldConverters.guildAchievementID = cacheAchievementID;
end
do	-- HeaderID Key Cache
-- CRIEVE NOTE: I'm not sure if this one super necessary, maybe only for debugging?
local function cacheHeaderID(group, headerID)
	CacheField(group, "headerID", headerID);
end
if app.Debugging and app.Version == "[Git]" then
	cacheHeaderID = function(group, headerID)
		if not group.type and not app.L.HEADER_NAMES[headerID] then
			print("Header Missing Name ", headerID);
			app.L.HEADER_NAMES[headerID] = "Header #" .. headerID;
		end
		CacheField(group, "headerID", headerID);
	end
end
fieldConverters.autoHeaderID = cacheHeaderID;
fieldConverters.headerID = cacheHeaderID;
end
do	-- QuestID Key Cache
local function cacheQuestID(group, questID)
	CacheField(group, "questID", questID);
end
fieldConverters.questID = cacheQuestID;
fieldConverters.questIDA = cacheQuestID;
fieldConverters.questIDH = cacheQuestID;
fieldConverters.nextQuests = function(group, value)
	for i=1,#value do
		CacheField(group, "nextQuests", value[i])
	end
end
fieldConverters.lc = function(group, value)
	for i=2,#value,2 do
		if value[i] == "questID" then
			CacheField(group, "nextQuests", value[i + 1])
		end
	end
end
fieldConverters.sourceQuests = function(group, value)
	for i=1,#value do
		CacheField(group, "sourceQuestID", value[i]);
	end
end
--[[
-- CRIEVE NOTE: This might be something to cache to a different field some day.
fieldConverters.altQuests = function(group, value)
	for i=1,#value do
		cacheQuestID(group, value[i]);
	end
end
]]--
end
do	-- SpellID Key Cache
local function cacheSpellID(group, value)
	CacheField(group, "spellID", value);
end
fieldConverters.spellID = cacheSpellID;
fieldConverters.recipeID = function(group, value)
	CacheField(group, "recipeID", value);
	cacheSpellID(group, value);
end
fieldConverters.mountID = function(group, value)
	CacheField(group, "mountID", value);
	cacheSpellID(group, value);
end
end
do	-- SpeciesID Key Cache
-- This was considered for the Chopping Block,
-- but referenced in Achievement Data for Pre-Wrath Classic and Tooltips
-- also referenced by the Battle Pets Window Extension
fieldConverters.speciesID = function(group, value)
	CacheField(group, "speciesID", value);
end
end
do	-- Simple Key Cache
-- Move Keys to the Chopping Block after we've verified they aren't used by ATT calculations
-- User Searches should use a SearchForFieldRecursively call instead if a key is not cached.
-- Search using a RegEx for this:
-- ^(?=.*SearchForField)(?=.*artifactID).*$
-- ^(?=.*GetRawField)(?=.*artifactID).*$
-- ^(?=.*SearchForObject)(?=.*artifactID).*$
-- ^(?=.*CreateDynamicHeader)(?=.*artifactID).*$

fieldConverters.up = function(group, up)			-- Referenced in Modules/Upgrade
	CacheField(group, "up", up);
end
fieldConverters.poiIDs = function(group, value)		-- Referenced in World Quests Window
	for i=1,#value do
		CacheField(group, "poiID", value[i])
	end
end
fieldConverters.qis = function(group, value)		-- Referenced in Modules/Search
	for i=1,#value do
		CacheField(group, "qItemID", value[i])
	end
end

-- These should be refactored:
if app.IsRetail then
fieldConverters.catalystID = function(group, value)	-- Referenced in a Symbolic Link (Modules/Catalyst)
	CacheField(group, "catalystID", value);
end

-- Referenced in the Dynamic Header Categories for Retail's Main List in GetDatabaseRoot
-- CRIEVE NOTE: These can easily be converted into a BuildFlatSearchResults or SearchForFieldRecursively
-- Obviously we'd still want to cache those results, but only after a user clicks the behaviour to search for it.
fieldConverters.artifactID = function(group, value)
	CacheField(group, "artifactID", value);
end
fieldConverters.azeriteessenceID = function(group, value)
	CacheField(group, "azeriteessenceID", value);
end
fieldConverters.campsiteID = function(group, value)
	CacheField(group, "campsiteID", value);
end
fieldConverters.conduitID = function(group, id)
	CacheField(group, "conduitID", id);
end
fieldConverters.decorID = function(group, value)
	CacheField(group, "decorID", value);
end
fieldConverters.illusionID = function(group, value)
	CacheField(group, "illusionID", value);
end
fieldConverters.followerID = function(group, value)
	CacheField(group, "followerID", value);
end
fieldConverters.garrisonbuildingID = function(group, value)	-- Also commented out because it doesn't work? TODO: Check this.
	CacheField(group, "garrisonbuildingID", value);
end
fieldConverters.professionID = function(group, value)	-- Also in Retail's Tradeskill window.
	CacheField(group, "professionID", value);
end
fieldConverters.runeforgepowerID = function(group, value)
	CacheField(group, "runeforgepowerID", value);
end
fieldConverters.titleID = function(group, value)
	CacheField(group, "titleID", value);
end
end
end

--[[
do	-- Chopping Block
fieldConverters.achievementCategoryID = function(group, value)
	CacheField(group, "achievementCategoryID", value);
end
fieldConverters.criteriaID = function(group, value)
	CacheField(group, "criteriaID", value);
end
fieldConverters.encounterID = function(group, value)
	CacheField(group, "encounterID", value);
end
fieldConverters.expansionID = function(group, value)
	CacheField(group, "expansionID", value);
end
fieldConverters.heirloomUnlockID = function(group, value)
	CacheField(group, "heirloomUnlockID", value);
end
fieldConverters.pvprankID = function(group, value)
	CacheField(group, "pvprankID", value);
end
fieldConverters.raceID = function(group, value)
	CacheField(group, "raceID", value);
end
fieldConverters.sourceAchievements = function(group, value)
	for i=1,#value do
		CacheField(group, "sourceAchievementID", value[i]);
	end
end

-- The tradeskill windows use a recursive build function rather than this
fieldConverters.requireSkill = function(group, value)
	CacheField(group, "requireSkill", value);
end
end
]]--

-- Performance Tracking for Caching
if app.__perf then
	app.__perf.CaptureTable(fieldConverters, "CacheFields");
end
setmetatable(fieldConverters, {
	__index = function(t, key)
		--print("Ignoring Field Cache: ", key);
		t[key] = false;
		return false;
	end,
});
end