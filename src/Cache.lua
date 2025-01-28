
local _, app = ...;

-- Global locals
local ipairs, tinsert, pairs, rawset, type, wipe, setmetatable, rawget, math_floor
	= ipairs, tinsert, pairs, rawset, type, wipe, setmetatable, rawget, math.floor
local C_Map_GetAreaInfo, C_Map_GetMapInfo = C_Map.GetAreaInfo, C_Map.GetMapInfo;

-- App locals
local contains, classIndex, raceIndex, factionID =
	app.contains, app.ClassIndex, app.RaceIndex, app.FactionID;

-- Module locals
local AllCaches, AllGamePatches, postscripts, runners, QuestTriggers = {}, {}, {}, {}, {};
local fieldMeta = {
	__index = function(t, field)
		if field == nil then return end
		local container = setmetatable({}, app.MetaTable.AutoTable);
		t[field] = container;
		return container;
	end,
	__newindex = function(t, field, value)
		if field == nil then return end
		local container = setmetatable(value, app.MetaTable.AutoTable);
		rawset(t, field, container);
		return container;
	end,
};
local currentCache, CacheFields;

-- Cache a given group into the current cache for the provided field and value
local function CacheField(group, field, value)
	-- comment this in for testing if some caching issue happens
	-- if not (field and value) then print("Attempting to cache invalid data", field, value, group.text); end
	local c = currentCache[field][value]
	c[#c + 1] = group
end

-- Returns: An object which can be used for holding cached data by various keys allowing for quick updates of data states.
local CreateDataCache = function(name, skipMapCaching)
	local cache = { name = name };
	AllCaches[name] = cache;
	cache.CacheField = function(group, field, value)
		local c = cache[field][value]
		c[#c + 1] = group
	end
	cache.CacheFields = function(groups)
		local oldCache = currentCache;
		currentCache = cache;
		CacheFields(groups, skipMapCaching);
		currentCache = oldCache;
	end
	setmetatable(cache, fieldMeta);
	cache.npcID = cache.creatureID;	-- identical cache as creatureID (probably deprecate npcID use eventually)
	return cache;
end
currentCache = CreateDataCache("default");

local currentMapGroup, allowMapCaching = setmetatable({}, { __index = function() return end }), true
local cacheAchievementID = function(group, value)
	CacheField(group, "achievementID", value);
end
local cacheCreatureID = function(group, creatureID)
	if creatureID > 0 then
		CacheField(group, "creatureID", creatureID);
	end
end
local cacheFactionID = function(group, id)
	CacheField(group, "factionID", id);
end
local cacheHeaderID = function(group, headerID)
	CacheField(group, "headerID", headerID);
end
local function allowCacheMapID(group, mapID)
	-- already are within a caching group for this mapID or not allowing map caching, don't cache
	if currentMapGroup[mapID] or not allowMapCaching then return end
	-- this group should not be map-cached into its coord map
	-- if the group has no sub-groups, then we allow caching for this new mapID, but don't capture it as a mapgroup
	if not rawget(group, "g") then return true end
	-- otherwise capture this group as the containing cache group of this mapID
	-- app.PrintDebug(">>>map:",mapID,group.key,group[group.key])
	currentMapGroup[mapID] = group
	return true
end
local cacheMapID = function(group, mapID)
	if not allowCacheMapID(group, mapID) then return end
	CacheField(group, "mapID", mapID);
	return true
end
local cacheObjectID = function(group, objectID)
	if group.__ignoreCaching then return end
	CacheField(group, "objectID", objectID);
end;
local cacheQuestID = function(group, questID)
	CacheField(group, "questID", questID);
end
local cacheSpellID = function(group, spellID)
	CacheField(group, "spellID", spellID);
end
if app.Debugging and app.Version == "[Git]" then
	local L = app.L;
	local referenceCounter = {};
	app.ReferenceCounter = referenceCounter;
	app.CheckReferenceCounters = function()
		local CUSTOM_HEADERS = {};
		for id,count in pairs(referenceCounter) do
			if type(id) == "number" and tonumber(id) < 1 and tonumber(id) > -100000 then
				tinsert(CUSTOM_HEADERS, { id, count });
			end
		end
		for id,_ in pairs(L.HEADER_NAMES) do
			if not referenceCounter[id] then
				referenceCounter[id] = 1;
				tinsert(CUSTOM_HEADERS, { id, 0 });
			end
		end
		for id,_ in pairs(L.HEADER_DESCRIPTIONS) do
			if not referenceCounter[id] then
				tinsert(CUSTOM_HEADERS, { id, 0, " and only exists as a description..." });
			end
		end
		for id,_ in pairs(L.HEADER_ICONS) do
			if not referenceCounter[id] then
				tinsert(CUSTOM_HEADERS, { id, 0, " and only exists as an icon..." });
			end
		end
		app.Sort(CUSTOM_HEADERS, function(a, b)
			return (a[1] or 0) < (b[1] or 0);
		end);
		for _,data in ipairs(CUSTOM_HEADERS) do
			local id = data[1];
			local header = {};
			if L.HEADER_NAMES[id] then header.name = L.HEADER_NAMES[id]; end
			if L.HEADER_ICONS[id] then header.icon = L.HEADER_ICONS[id]; end
			if L.HEADER_DESCRIPTIONS[id] then header.description = L.HEADER_DESCRIPTIONS[id]; end
			print("Header " .. id .. " has " .. data[2] .. " references" .. (data[3] or "."), header.name);
			tinsert(data, header);
		end
	end
	cacheCreatureID = function(group, creatureID)
		if creatureID > 0 then
			CacheField(group, "creatureID", creatureID);
		else
			referenceCounter[creatureID] = (referenceCounter[creatureID] or 0) + 1;
		end
	end
	cacheHeaderID = function(group, headerID)
		if not group.type and not L.HEADER_NAMES[headerID] then
			print("Header Missing Name ", headerID);
			L.HEADER_NAMES[headerID] = "Header #" .. headerID;
		end
		referenceCounter[headerID] = (referenceCounter[headerID] or 0) + 1;
		CacheField(group, "headerID", headerID);
	end
	cacheObjectID = function(group, objectID)
		if group.__ignoreCaching then return end
		if not app.ObjectNames[objectID] then
			print("Object Missing Name ", objectID);
			app.ObjectNames[objectID] = "Object #" .. objectID;
		end
		CacheField(group, "objectID", objectID);
	end
end

-- Cost & Providers Helper
local providerTypeConverters = {
	["n"] = cacheCreatureID,
	["o"] = cacheObjectID,
	["s"] = cacheSpellID,
	["c"] = function(group, providerID)
		CacheField(group, "currencyIDAsCost", providerID);
		--CacheField(group, "currencyID", providerID);
	end,
	["i"] = function(group, providerID)
		CacheField(group, "itemIDAsCost", providerID);
		--CacheField(group, "itemID", providerID);
	end,
	["g"] = function(group, providerID)
		-- Do nothing, nothing to cache.
	end
};
local cacheProviderOrCost = function(group, provider)
	providerTypeConverters[provider[1]](group, provider[2]);
end

local uncacheMap = function(group, mapID)
	-- remove this group's mapID if it is the current map group for this mapID
	if currentMapGroup[mapID] == group then
		-- app.PrintDebug("<<<map:",mapID,group.key,group[group.key])
		currentMapGroup[mapID] = nil
	end
end;
local mapKeyUncachers = {
	["mapID"] = uncacheMap,
	["maps"] = function(group, maps)
		for _,mapID in ipairs(maps) do
			uncacheMap(group, mapID);
		end
	end,
	["coord"] = function(group, coord)
		uncacheMap(group, coord[3]);
	end,
	["coords"] = function(group, coords)
		for i,coord in ipairs(coords) do
			uncacheMap(group, coord[3]);
		end
	end,
};

-- Map Remapping
-- This feature takes the original mapID and allows modifications on it to
-- change the displayed name and the content of the mini list.
local MapRemapping = {};
app.MapRemapping = MapRemapping;
local nextCustomMapID = -2;
local function assignZoneAreaIDs(originalMapID, mapID, ids)
	if originalMapID then
		local remap = MapRemapping[originalMapID];
		if not remap then
			remap = {};
			MapRemapping[originalMapID] = remap;
		end
		local areaIDs = remap.areaIDs;
		if not areaIDs then
			areaIDs = {};
			remap.areaIDs = areaIDs;
		end
		for j,areaID in ipairs(ids) do
			areaIDs[areaID] = mapID;
		end
	end
end
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
				tinsert(originalMaps, mapID);
			else
				group.mapID = nil;
			end
		else
			group.maps = {mapID};
		end

		-- Manually assign the name of this map since it is not a real mapID.
		CacheField(group, "mapID", mapID);
		app.L.MAP_ID_TO_ZONE_TEXT[mapID] = group.text;

		-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
		local remap = MapRemapping[originalMapID];
		if not remap then
			remap = {};
			MapRemapping[originalMapID] = remap;
		end
		local artIDs = remap.artIDs;
		if not artIDs then
			artIDs = {};
			remap.artIDs = artIDs;
		end
		for j,artID in ipairs(value) do
			artIDs[artID] = mapID;
		end

		-- Uncache the original mapID
		local mapIDCache = currentCache.mapID;
		mapIDCache = mapIDCache[originalMapID];
		for i,o in ipairs(mapIDCache) do
			if o == group then
				table.remove(mapIDCache, i);
				break;
			end
		end

		--local info = C_Map_GetMapInfo(originalMapID);
		--print("MapRemapping (artIDs): ", originalMapID, info and info.name, mapID, group.text);
	--else
		--print("Invalid MapRemapping (artIDs):", group.hash);
	end
end
local function zoneTextAreasRunner(group, value)
	local mapID = group.mapID;
	if not mapID then
		-- Generate a new unique mapID (negative)
		mapID = nextCustomMapID;
		nextCustomMapID = nextCustomMapID - 1;
		if group.maps then
			tinsert(group.maps, mapID)
		else
			group.maps = {mapID};
		end

		-- Manually assign the name of this map since it is not a real mapID.
		CacheField(group, "mapID", mapID);
	end

	-- Use the localizer to force the minilist to display this as if it was a map file.
	local name = C_Map_GetAreaInfo(value[1]);
	if name then app.L.MAP_ID_TO_ZONE_TEXT[mapID] = name; end

	-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
	local mapIDs, parentMapID, info = {}, nil, nil;
	if group.coords then
		for index,coord in ipairs(group.coords) do
			parentMapID = coord[3];
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
	if group.maps then
		for i,parentMapID in ipairs(group.maps) do
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
		assignZoneAreaIDs(parentMapID, mapID, value);
	end
end
local function zoneTextContinentRunner(group, value)
	local mapID = group.mapID;
	if mapID then
		local remap = MapRemapping[mapID];
		if not remap then
			remap = {};
			MapRemapping[mapID] = remap;
		end
		remap.isContinent = true;

		--local info = C_Map_GetMapInfo(mapID);
		--print("MapRemapping (continent): ", mapID, info and info.name);
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
			if group.maps then
				tinsert(group.maps, mapID)
			else
				group.maps = {mapID};
			end

			-- Manually assign the name of this map since it is not a real mapID.
			CacheField(group, "mapID", mapID);
		end

		local remap = MapRemapping[originalMapID];
		if not remap then
			remap = {};
			MapRemapping[originalMapID] = remap;
		end
		local names = remap.names;
		if not names then
			names = {};
			remap.names = names;
		end
		for j,name in ipairs(value) do
			names[name] = mapID;
		end

		--local info = C_Map_GetMapInfo(originalMapID);
		--print("MapRemapping (name): ", originalMapID, info and info.name, mapID);
	--else
		--print("Invalid MapRemapping (name):", group.hash);
	end
end
local function zoneTextHeaderIDRunner(group, value)
	value = app.L.HEADER_NAMES[value];
	if value then zoneTextNamesRunner(group, { value }); end
end
local fieldConverters = {
	-- Simple Converters
	["achievementID"] = cacheAchievementID,
	["achievementCategoryID"] = function(group, value)
		CacheField(group, "achievementCategoryID", value);
	end,
	["achID"] = cacheAchievementID,
	["altAchID"] = cacheAchievementID,
	["artifactID"] = function(group, value)
		CacheField(group, "artifactID", value);
	end,
	["azeriteessenceID"] = function(group, value)
		CacheField(group, "azeriteessenceID", value);
	end,
	["creatureID"] = cacheCreatureID,
	["currencyID"] = function(group, value)
		CacheField(group, "currencyID", value);
	end,
	["encounterID"] = function(group, value)
		CacheField(group, "encounterID", value);
	end,
	["expansionID"] = function(group, value)
		CacheField(group, "expansionID", value);
	end,
	["explorationID"] = function(group, value)
		CacheField(group, "explorationID", value);
	end,
	["factionID"] = cacheFactionID,
	["flightpathID"] = function(group, value)
		CacheField(group, "flightpathID", value);
	end,
	["followerID"] = function(group, value)
		CacheField(group, "followerID", value);
	end,
	["garrisonbuildingID"] = function(group, value)
		CacheField(group, "garrisonbuildingID", value);
	end,
	["guildAchievementID"] = cacheAchievementID,
	["headerID"] = cacheHeaderID,
	["heirloomUnlockID"] = function(group, value)
		CacheField(group, "heirloomUnlockID", value);
	end,
	["illusionID"] = function(group, value)
		CacheField(group, "illusionID", value);
	end,
	["instanceID"] = function(group, value)
		CacheField(group, "instanceID", value);
	end,
	["itemID"] = function(group, value)
		CacheField(group, "itemID", value);
	end,
	["otherItemID"] = function(group, value)
		CacheField(group, "itemID", value);
	end,
	["mountmodID"] = function(group, value)
		CacheField(group, "itemID", value);
	end,
	["heirloomID"] = function(group, value)
		CacheField(group, "itemID", value);
	end,
	["mapID"] = cacheMapID,
	["mountID"] = function(group, value)
		CacheField(group, "mountID", value);
		CacheField(group, "spellID", value);
	end,
	["npcID"] = cacheCreatureID,
	["objectID"] = cacheObjectID,
	["professionID"] = function(group, value)
		CacheField(group, "professionID", value);
	end,
	["questID"] = cacheQuestID,
	["questIDA"] = cacheQuestID,
	["questIDH"] = cacheQuestID,
	["raceID"] = function(group, value)
		CacheField(group, "raceID", value);
	end,
	["recipeID"] = function(group, value)
		CacheField(group, "recipeID", value);
		CacheField(group, "spellID", value);
	end,
	["requireSkill"] = function(group, value)
		CacheField(group, "requireSkill", value);
	end,
	["runeforgepowerID"] = function(group, value)
		CacheField(group, "runeforgepowerID", value);
	end,
	["rwp"] = function(group, value)
		CacheField(group, "rwp", value);
	end,
	["sourceID"] = function(group, value)
		CacheField(group, "sourceID", value);
	end,
	["speciesID"] = function(group, value)
		CacheField(group, "speciesID", value);
	end,
	["spellID"] = function(group, value)
		CacheField(group, "spellID", value);
	end,
	["titleID"] = function(group, value)
		CacheField(group, "titleID", value);
	end,
	["toyID"] = function(group, value)
		CacheField(group, "toyID", value);
		CacheField(group, "itemID", value);
	end,

	-- Complex Converters
	["altQuests"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "questID", value[i]);
		end
	end,
	["crs"] = function(group, value)
		for i=1,#value,1 do
			cacheCreatureID(group, value[i]);
		end
	end,
	["qgs"] = function(group, value)
		for i=1,#value,1 do
			cacheCreatureID(group, value[i]);
		end
	end,
	["maps"] = function(group, value)
		for i=1,#value,1 do
			cacheMapID(group, value[i]);
		end
		return true;
	end,
	["coord"] = function(group, coord)
		-- Retail used this commented out section instead, see which one is better
		-- don't cache mapID from coord for anything which is itself an actual instance or a map
		-- if currentInstance ~= group and not rawget(group, "mapID") and not rawget(group, "difficultyID") then
		if not (group.instanceID or group.mapID or group.objectiveID or group.difficultyID or (group.headerID and group.parent and group.parent.instanceID)) then
			return cacheMapID(group, coord[3]);
		end
	end,
	["coords"] = function(group, coords)
		-- Retail used this commented out section instead, see which one is better
		-- don't cache mapID from coord for anything which is itself an actual instance or a map
		-- if currentInstance ~= group and not rawget(group, "mapID") and not rawget(group, "difficultyID") then
		if not (group.instanceID or group.mapID or group.objectiveID or group.difficultyID or (group.headerID and group.parent and group.parent.instanceID)) then
			for i,coord in ipairs(coords) do
				cacheMapID(group, coord[3]);
			end
			return true;
		end
	end,
	["cost"] = function(group, value)
		if type(value) == "table" then
			for i=1,#value,1 do
				cacheProviderOrCost(group, value[i]);
			end
		end
	end,
	["provider"] = cacheProviderOrCost,
	["providers"] = function(group, value)
		for i=1,#value,1 do
			cacheProviderOrCost(group, value[i]);
		end
	end,
	["maxReputation"] = function(group, value)
		cacheFactionID(group, value[1]);
	end,
	["minReputation"] = function(group, value)
		cacheFactionID(group, value[1]);
	end,
	["c"] = function(group, value)
		if not contains(value, classIndex) then
			group.nmc = true; -- "Not My Class"
		end
	end,
	["r"] = function(group, value)
		if value ~= factionID then
			group.nmr = true;	-- "Not My Race"
		end
	end,
	["races"] = function(group, value)
		if not contains(value, raceIndex) then
			group.nmr = true;	-- "Not My Race"
		end
	end,
	["nextQuests"] = function(group, value)
		for _,questID in ipairs(value) do
			CacheField(group, "nextQuests", questID);
		end
	end,
	["sourceQuests"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "sourceQuestID", value[i]);
		end
	end,
	["sourceAchievements"] = function(group, value)
		for i=1,#value,1 do
			CacheField(group, "sourceAchievementID", value[i]);
		end
	end,

	-- Localization Helpers
	["zone-artIDs"] = function(group, value)
		tinsert(runners, function()
			zoneArtIDRunner(group, value);
		end);
	end,
	["zone-text-areaID"] = function(group, value)
		tinsert(runners, function()
			zoneTextAreasRunner(group, { value });
		end);
	end,
	["zone-text-areas"] = function(group, value)
		tinsert(runners, function()
			zoneTextAreasRunner(group, value);
		end);
	end,
	["zone-text-continent"] = function(group, value)
		tinsert(runners, function()
			zoneTextContinentRunner(group, value);
		end);
	end,
	["zone-text-headerID"] = function(group, value)
		tinsert(runners, function()
			zoneTextHeaderIDRunner(group, value);
		end);
	end,
	["zone-text-names"] = function(group, value)
		tinsert(runners, function()
			zoneTextNamesRunner(group, value);
		end);
	end,

	-- Patch Helpers
	["awp"] = function(group, value)
		if value then AllGamePatches[value] = true; end
	end,
};

local _converter;
local function _CacheFields(group)
	local n = 0;
	local clone, mapKeys, key, value, hasG = {}, nil, nil, nil, nil;
	for key,value in pairs(group) do
		if key == "g" then
			hasG = true;
		else
			n = n + 1
			clone[n] = key;
		end
	end
	for i=1,n,1 do
		key = clone[i];
		_converter = fieldConverters[key];
		if _converter then
			value = group[key];
			if _converter(group, value) then
				if not mapKeys then mapKeys = {}; end
				mapKeys[key] = value;
			end
		end
	end
	if hasG then
		for _,subgroup in ipairs(group.g) do
			_CacheFields(subgroup);
		end
	end
	if mapKeys then
		for key,value in pairs(mapKeys) do
			mapKeyUncachers[key](group, value);
		end
	end
end

---- Retail Differences ----
if app.IsRetail then
	-- 'altQuests' in Retail pretending to be the same quest as a different quest actually causes problems for searches
	-- and it makes more sense to not pretend they're the same than to hamper existing logic with more conditionals to
	-- make sure we actually get the data that we search for
	fieldConverters.altQuests = nil;
	-- 'awp' isn't needed for caching into 'AllGamePatches' currently... I don't really see a future where we 'pre-add' future Retail content in public releases
	fieldConverters.awp = nil;
	-- Base Class provides auto-fields for these and they do no actual caching
	fieldConverters.c = nil
	fieldConverters.r = nil
	fieldConverters.races = nil

	-- Retail doesn't need to double cache the object attached to currencies/items because it uses the cost
	-- caches for the same information
	providerTypeConverters.c = function(group, providerID)
		CacheField(group, "currencyIDAsCost", providerID);
	end
	providerTypeConverters.i = function(group, providerID)
		CacheField(group, "itemIDAsCost", providerID);
	end

	-- use single iteration of each group by way of not performing any group field additions while the cache process is running
	_CacheFields = function(group)
		local mapKeys
		local hasG = rawget(group, "g")
		for key,value in pairs(group) do
			_converter = fieldConverters[key];
			if _converter then
				if _converter(group, value) then
					if mapKeys then mapKeys[key] = value
					else mapKeys = { [key] = value }; end
				end
			end
		end
		if hasG then
			for _,subgroup in ipairs(hasG) do
				_CacheFields(subgroup);
			end
		end
		if mapKeys then
			for key,value in pairs(mapKeys) do
				mapKeyUncachers[key](group, value);
			end
		end
	end

	-- Retail has this required modItemID field that complicates everything, so put that here instead.
	local cacheGroupForModItemID = {}
	fieldConverters.itemID = function(group, value)
		CacheField(group, "itemID", value);
		cacheGroupForModItemID[#cacheGroupForModItemID + 1] = group
	end
	fieldConverters.mountmodID = fieldConverters.itemID;
	fieldConverters.heirloomID = fieldConverters.itemID;
	tinsert(postscripts, function()
		if #cacheGroupForModItemID == 0 then return end
		local modItemID
		-- app.PrintDebug("caching for modItemID",#cacheGroupForModItemID)
		for _,group in ipairs(cacheGroupForModItemID) do
			modItemID = group.modItemID
			if modItemID then
				CacheField(group, "modItemID", modItemID)
				if modItemID ~= group.itemID then
					CacheField(group, "itemID", modItemID)
				end
			end
		end
		wipe(cacheGroupForModItemID)
		-- app.PrintDebug("caching for modItemID done")
	end)

	-- Retail doesn't have objectives so don't bother checking for it
	fieldConverters.coord = function(group, coord)
		-- don't cache mapID from coord for anything which is itself an actual instance or a map
		if rawget(group, "instanceID") or rawget(group, "mapID") or rawget(group, "difficultyID") or (group.headerID and group.parent and group.parent.instanceID) then return end
		return cacheMapID(group, coord[3]);
	end
	fieldConverters.coords = function(group, coords)
		-- don't cache mapID from coord for anything which is itself an actual instance or a map
		if rawget(group, "instanceID") or rawget(group, "mapID") or rawget(group, "difficultyID") or (group.headerID and group.parent and group.parent.instanceID) then return end
		local any
		for i,coord in ipairs(coords) do
			any = cacheMapID(group, coord[3]) or any
		end
		return any;
	end

	fieldConverters.conduitID = function(group, id)
		CacheField(group, "conduitID", id);
	end
	fieldConverters.up = function(group, up)
		CacheField(group, "up", up);
	end
else
	-- Classic needs a little help with instances that don't have actual maps... Thanks, SOD.
	fieldConverters.instanceID = function(group, value)
		CacheField(group, "instanceID", value);
		if group.headerID then
			tinsert(runners, function()
				zoneTextHeaderIDRunner(group, group.headerID);
			end);
		end
	end
end

CacheFields = function(group, skipMapCaching)
	allowMapCaching = not skipMapCaching
	_CacheFields(group);
	for i,runner in ipairs(runners) do
		runner();
	end
	for i,postscript in ipairs(postscripts) do
		postscript();
	end
	wipe(runners);
	return group;
end

-- This data type requires additional processing.
fieldConverters.otherQuestData = function(group, value)
	_CacheFields(value);
end

-- Performance Tracking for Caching
if app.__perf then
	app.__perf.CaptureTable(fieldConverters, "CacheFields");
end

-- Cache-Based Searching
local function GetRawField(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field.
	-- NOTE: Can be nil for simplicity in use
	local container = rawget(currentCache, field)
	if not container then return end
	return rawget(container, id);
end
local function GetRawFieldContainer(field)
	-- Returns: The actual table containing all groups which contain a given field
	-- NOTE: Can be nil for simplicity in use
	return rawget(currentCache, field);
end
local function SearchForField(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field.
	return currentCache[field][id];
end
local function SearchForFieldContainer(field)
	-- Returns: A table containing all groups which contain a given field.
	return currentCache[field];
end

-- Recursive Searching
local function SearchForFieldRecursively(group, field, value)
	-- Returns: A table containing all subgroups which contain a given value of field relative to the group or nil.
	if group.g then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.g) do
			local g = SearchForFieldRecursively(subgroup, field, value);
			if g then
				if first then
					-- Merge!
					for j,data in ipairs(g) do
						tinsert(first, data);
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
				return tinsert(first, group);
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
local function SearchForRelativeItems(group, listing)
	-- Search a group for all items relative to the given group. (excluding the group passed in)
	if group and group.g then
		for i,subgroup in ipairs(group.g) do
			SearchForRelativeItems(subgroup, listing);
			if subgroup.itemID then
				tinsert(listing, subgroup);
			end
		end
	end
end

local function GetFilteredResults(results)
	local result
	local filterMatch = {}
	local Filter = app.RecursiveCharacterRequirementsFilter
	for i=1,#results do
		result = results[i]
		if Filter(result) then
			filterMatch[#filterMatch + 1] = result
			-- app.PrintDebug("SFO:Char",app:SearchLink(result))
		end
	end
	-- no filtered results for specific character, try filter by only faction
	if #filterMatch == 0 then
		Filter = app.RecursiveFilter
		for i=1,#results do
			result = results[i]
			if Filter(result, "Race_CurrentFaction") then
				filterMatch[#filterMatch + 1] = result
				-- app.PrintDebug("SFO:Faction",app:SearchLink(result))
			end
		end
	end
	-- app.PrintDebug("SFO-F","?>",#filterMatch,#results)
	return (#filterMatch > 0 and filterMatch) or results
end

-- Search for a thing that matches some requirements
local function SearchForObject(field, id, require, allowMultiple)
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
		-- app.PrintDebug("SFO",field,id,require,"0~")
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
			-- app.PrintDebug("SFO",field,id,require,"1=",fcacheObj.hash)
			return allowMultiple and {fcacheObj} or fcacheObj
		end
		-- one result, but doesn't meet the 'require'
		-- app.PrintDebug("SFO",field,id,require,"1~",fcacheObj.hash)
		return allowMultiple and app.EmptyTable or nil
	end

	local results = {}

	-- split logic based on require to reduce conditionals within loop
	if require == 2 then
		-- Key require
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
	-- app.PrintDebug("SFO",field,id,require,"?>",#results)
	-- if only 1 or no result, no point to try filtering
	if #results <= 1 then return allowMultiple and results or results[1] end
	-- try out accessibility sort on multiple results instead of filtering
	app.Sort(results, app.SortDefaults.Accessibility)
	-- results = GetFilteredResults(results)
	return allowMultiple and results or results[1]
end

-- All Cache Searching
local function SearchForFieldInAllCaches(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field from all established data caches.
	local ArrayAppend = app.ArrayAppend;
	local groups = {};
	for _,cache in pairs(AllCaches) do
		ArrayAppend(groups, cache[field][id]);
	end
	return groups;
end
local function SearchForManyInAllCaches(field, ids)
	-- Returns: A table containing all groups which contain the provided each of the provided ids for a given field from all established data caches.
	local ArrayAppend = app.ArrayAppend;
	local groups = {};
	local fieldCache;
	for _,cache in pairs(AllCaches) do
		fieldCache = cache[field];
		for _,id in ipairs(ids) do
			ArrayAppend(groups, fieldCache[id]);
		end
	end
	return groups;
end

-- Hash-Based Searching
local function SearchForSourcePath(g, hashes, level, count)
	if g then
		local hash = hashes[level];
		if hash then
			for i,o in ipairs(g) do
				if (o.hash or o.name or o.text) == hash then
					if level == count then return o; end
					return SearchForSourcePath(o.g, hashes, level + 1, count);
				end
			end
		end
	end
end
local function SearchForSpecificGroups(t, group, hashes)
	-- Search a group for objects whose hash matches a hash found in hashes and append it to table t.
	if group then
		if hashes[group.hash] then
			tinsert(t, group);
		end
		local g = group.g;
		if g then
			for _,o in ipairs(g) do
				SearchForSpecificGroups(t, o, hashes);
			end
		end
	end
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
local function GenerateSourcePath(group, l)
	local parent = group.sourceParent or group.parent;
	if parent then
		if l < 1 then
			return GenerateSourcePath(parent, l + 1);
		else
			return GenerateSourcePath(parent, l + 1) .. " > " .. (group.sourceText or group.text or RETRIEVING_DATA);
		end
	end
	return group.text or RETRIEVING_DATA;
end
local function GenerateSourcePathForTSM(group, l)
	local parent = group.sourceParent or group.parent;
	if parent then
		if l < 1 or not group.text then
			return GenerateSourcePathForTSM(parent, l + 1);
		else
			return GenerateSourcePathForTSM(parent, l + 1) .. "`" .. group.text;
		end
	end
	return app.L.TITLE;
end
local function GenerateSourcePathForTooltip(group)
	return GenerateSourcePath(group, 1);
end

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
		tinsert(checked, group);
		return VerifyRecursion(group.parent, checked);
	end
	return true;
end
local function VerifyCache()
	-- Verify that the current cache does not have any recursive issues.
	print("VerifyCache Starting...");
	for i,keyCache in pairs(currentCache) do
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

-- External API Functions
app.AllGamePatches = AllGamePatches;
app.CacheFields = CacheFields;
app.CreateDataCache = CreateDataCache;
app.GetRawFieldContainer = GetRawFieldContainer;
app.GetRawField = GetRawField;
app.GenerateSourceHash = GenerateSourceHash;
app.GenerateSourcePath = GenerateSourcePath;
app.GenerateSourcePathForTSM = GenerateSourcePathForTSM;
app.GenerateSourcePathForTooltip = GenerateSourcePathForTooltip;
app.SearchForFieldRecursively = SearchForFieldRecursively;
app.SearchForFieldContainer = SearchForFieldContainer;
app.SearchForField = SearchForField;
app.SearchForFieldInAllCaches = SearchForFieldInAllCaches;
app.SearchForManyInAllCaches = SearchForManyInAllCaches;
app.SearchForObject = SearchForObject;
app.SearchForRelativeItems = SearchForRelativeItems;
app.SearchForSourcePath = SearchForSourcePath;
app.SearchForSpecificGroups = SearchForSpecificGroups;
app.VerifyCache = VerifyCache;
app.VerifyRecursion = VerifyRecursion;
-- this table is deleted once used
app.__CacheQuestTriggers = QuestTriggers;
