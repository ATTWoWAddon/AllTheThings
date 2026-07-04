local _, app = ...;

-- Global locals
local next, rawget, rawset, getmetatable, setmetatable, type
	= next, rawget, rawset, getmetatable, setmetatable, type

-- CRIEVE NOTE: This might look weird, but keeping this out of the scope made it run really quite fast.
local CacheFields;

-- Retail uses compact singleton entries to reduce table overhead. Classic keeps the
-- historical array-per-key contract because several Classic-only consumers still
-- index and iterate field-container values directly.
local UseCompactCache = app.IsRetail

-- Tracks structural mutations to the central index so maintenance can skip expensive
-- full-index scans when no keys or references changed since the previous pass.
local CacheMutationGeneration = 0
local function MarkCacheMutation()
	CacheMutationGeneration = CacheMutationGeneration + 1
end

-- Compact cache storage
-- Most ATT search keys point at exactly one object. Storing every singleton in its own Lua array
-- costs a large amount of persistent memory. A singleton is now stored as the object itself and
-- promoted to a normal array only when a second object shares the same key/value.
local CacheListMeta = { __attCacheList = true }
local ResultListMeta = { __attCacheResults = true }
local SingletonResults = setmetatable({}, { __mode = "kv" })
local function IsCacheList(entry)
	return entry and getmetatable(entry) == CacheListMeta
end
local function IsResultList(entry)
	if not entry then return false end
	local meta = getmetatable(entry)
	return meta == CacheListMeta or meta == ResultListMeta
end
local function GetCacheContainer(cache, field, create)
	if field == "npcID" then field = "creatureID" end
	local container = rawget(cache, field)
	if not container and create then
		container = {}
		rawset(cache, field, container)
		if field == "creatureID" then rawset(cache, "npcID", container) end
		MarkCacheMutation()
	end
	return container
end
local function AddCacheEntry(cache, field, value, group)
	if value == nil or group == nil then return end
	local container = GetCacheContainer(cache, field, true)
	local entry = rawget(container, value)
	if not entry then
		if UseCompactCache then
			rawset(container, value, group)
		else
			-- Classic code historically expects every container value to be an array.
			rawset(container, value, setmetatable({ group }, CacheListMeta))
		end
	elseif IsCacheList(entry) then
		entry[#entry + 1] = group
	else
		-- This branch is only expected for Retail compact singleton entries.
		local results = SingletonResults[entry]
		if results then
			SingletonResults[entry] = nil
			setmetatable(results, CacheListMeta)
			results[#results + 1] = group
			rawset(container, value, results)
		else
			rawset(container, value, setmetatable({ entry, group }, CacheListMeta))
		end
	end
	MarkCacheMutation()
end
local function RemoveCacheEntry(cache, field, value, group)
	local container = GetCacheContainer(cache, field, false)
	if not container then return end
	local entry = rawget(container, value)
	if entry == group then
		local results = SingletonResults[entry]
		if results then
			SingletonResults[entry] = nil
			for i=#results,1,-1 do results[i] = nil end
		end
		rawset(container, value, nil)
		MarkCacheMutation()
	elseif IsCacheList(entry) then
		for i=#entry,1,-1 do
			if entry[i] == group then
				table.remove(entry, i)
				if #entry == 0 then
					rawset(container, value, nil)
				elseif UseCompactCache and #entry == 1 then
					local remaining = entry[1]
					setmetatable(entry, ResultListMeta)
					SingletonResults[remaining] = entry
					rawset(container, value, remaining)
				end
				MarkCacheMutation()
				return
			end
		end
	end
end
local function CacheEntryCount(entry)
	if not entry then return 0 end
	return IsResultList(entry) and #entry or 1
end
local function CacheEntryFirst(entry)
	if IsResultList(entry) then return entry[1] end
	return entry
end
local function CacheEntryIterator(entry, index)
	index = index + 1
	if IsResultList(entry) then
		local value = entry[index]
		if value ~= nil then return index, value end
	elseif index == 1 and entry ~= nil then
		return 1, entry
	end
end
local function IterateCacheEntry(entry)
	return CacheEntryIterator, entry, 0
end
local function CacheEntryResults(entry, emptyWhenMissing)
	if not entry then return emptyWhenMissing and app.EmptyTable or nil end
	if IsResultList(entry) then return entry end
	local results = SingletonResults[entry]
	if not results then
		results = setmetatable({ entry }, ResultListMeta)
		SingletonResults[entry] = results
	end
	return results
end
local function AppendCacheEntry(results, entry)
	if IsResultList(entry) then
		for i=1,#entry do results[#results + 1] = entry[i] end
	elseif entry then
		results[#results + 1] = entry
	end
end

app.GetCachedFieldResults = CacheEntryResults
app.GetCachedFieldCount = CacheEntryCount
app.GetFirstCachedFieldResult = CacheEntryFirst
app.IterateCachedFieldResults = IterateCacheEntry

-- Shared registry for lightweight cache diagnostics. Providers return:
-- top-level entry count, retained child-reference count, optional note.
local MemoryCacheStatsProviders = {}
app.RegisterMemoryCacheStats = function(name, provider)
	if name and type(provider) == "function" then
		MemoryCacheStatsProviders[name] = provider
	end
end
app.GetRegisteredMemoryCacheStats = function()
	return MemoryCacheStatsProviders
end

-- Cache a given group into the current cache for the provided field and value
local currentCache;
local CacheMeta = {
	__index = function(cache, field)
		return GetCacheContainer(cache, field, true)
	end,
}
local AllCaches = setmetatable({}, {
	__index = function(t, name)
		local cache = { name = name, skipMapCaching = false };
		t[name] = cache;
		cache.CacheField = function(group, field, value)
			AddCacheEntry(cache, field, value, group)
		end
		cache.CacheFields = function(groups, skipMapCaching)
			local oldCache = currentCache;
			currentCache = cache;
			CacheFields(groups, skipMapCaching or cache.skipMapCaching);
			currentCache = oldCache;
		end
		setmetatable(cache, CacheMeta)
		return cache;
	end,
});
currentCache = AllCaches.default;

-- Explicit mutation helpers keep compact singleton entries and shared-key arrays consistent.
app.AddCachedFieldResult = function(field, value, group)
	AddCacheEntry(currentCache, field, value, group)
end
app.RemoveCachedFieldResult = function(field, value, group)
	RemoveCacheEntry(currentCache, field, value, group)
end

-- Memory diagnostics for the compact index.
app.GetCacheMemoryStats = function()
	local fields, keys, singletons, lists, references = 0, 0, 0, 0, 0
	for _,cache in next,AllCaches do
		for field,container in next,cache do
			if type(container) == "table" and field ~= "npcID" then
				fields = fields + 1
				for _,entry in next,container do
					keys = keys + 1
					if IsCacheList(entry) then
						lists = lists + 1
						references = references + #entry
					else
						singletons = singletons + 1
						references = references + 1
					end
				end
			end
		end
	end
	return fields, keys, singletons, lists, references
end

app.GetCacheMemoryDetailStats = function()
	local details = {}
	for cacheName,cache in next,AllCaches do
		for field,container in next,cache do
			if type(container) == "table" and field ~= "npcID" then
				local keys, singletons, lists, references = 0, 0, 0, 0
				for _,entry in next,container do
					keys = keys + 1
					if IsCacheList(entry) then
						lists = lists + 1
						references = references + #entry
					else
						singletons = singletons + 1
						references = references + 1
					end
				end
				details[#details + 1] = {
					cache = cache.name or cacheName,
					field = field,
					keys = keys,
					singletons = singletons,
					lists = lists,
					references = references,
				}
			end
		end
	end
	return details
end

app.GetSearchIndexGeneration = function()
	return CacheMutationGeneration
end

-- Removes invalid/duplicate references from the live compact index without replacing
-- field-container tables. This is safe for automatic maintenance because code which
-- temporarily holds a container reference continues to see the same table.
app.CleanSearchIndex = function()
	local scannedKeys, scannedReferences = 0, 0
	local removedKeys, removedReferences, demotedLists, removedContainers = 0, 0, 0, 0
	for _,cache in next,AllCaches do
		for field,container in next,cache do
			if type(container) == "table" and field ~= "npcID" then
				for value,entry in next,container do
					scannedKeys = scannedKeys + 1
					if IsCacheList(entry) then
						local originalCount, write = #entry, 0
						scannedReferences = scannedReferences + originalCount
						for read=1,originalCount do
							local group = entry[read]
							local keep = type(group) == "table"
							if keep then
								for i=1,write do
									if entry[i] == group then
										keep = false
										break
									end
								end
							end
							if keep then
								write = write + 1
								entry[write] = group
							else
								removedReferences = removedReferences + 1
							end
						end
						for i=originalCount,write + 1,-1 do entry[i] = nil end
						if write == 0 then
							rawset(container, value, nil)
							removedKeys = removedKeys + 1
						elseif UseCompactCache and write == 1 then
							local remaining = entry[1]
							setmetatable(entry, ResultListMeta)
							SingletonResults[remaining] = entry
							rawset(container, value, remaining)
							demotedLists = demotedLists + 1
						end
					elseif type(entry) == "table" then
						scannedReferences = scannedReferences + 1
					else
						rawset(container, value, nil)
						removedKeys = removedKeys + 1
						removedReferences = removedReferences + 1
					end
				end
				if not next(container) then
					rawset(cache, field, nil)
					if field == "creatureID" then rawset(cache, "npcID", nil) end
					removedContainers = removedContainers + 1
				elseif field == "creatureID" then
					rawset(cache, "npcID", container)
				end
			end
		end
	end
	if removedKeys > 0 or removedReferences > 0 or demotedLists > 0 or removedContainers > 0 then
		MarkCacheMutation()
	end
	return scannedKeys, scannedReferences, removedKeys, removedReferences, demotedLists, removedContainers
end

-- Rebuilds every field-container hash table and shared-key array from the currently
-- indexed object references. Unlike CacheFields(root), this does not rerun converters
-- or mutate database objects, so custom-map and dynamic-data side effects are avoided.
-- Intended for explicit maintenance rather than every zone transition.
app.RebuildSearchIndex = function()
	local rebuiltFields, rebuiltKeys, rebuiltReferences = 0, 0, 0
	local removedKeys, removedReferences = 0, 0
	for _,cache in next,AllCaches do
		for field,container in next,cache do
			if type(container) == "table" and field ~= "npcID" then
				local newContainer = {}
				for value,entry in next,container do
					local first, values, count
					for _,group in IterateCacheEntry(entry) do
						if type(group) == "table" then
							local duplicate
							if count then
								if count == 1 then
									duplicate = first == group
								else
									for i=1,count do
										if values[i] == group then
											duplicate = true
											break
										end
									end
								end
							end
							if duplicate then
								removedReferences = removedReferences + 1
							else
								count = (count or 0) + 1
								if count == 1 then
									first = group
								elseif count == 2 then
									values = { first, group }
								else
									values[count] = group
								end
							end
						else
							removedReferences = removedReferences + 1
						end
					end
					if count == 1 then
						if UseCompactCache then
							rawset(newContainer, value, first)
						else
							rawset(newContainer, value, setmetatable({ first }, CacheListMeta))
						end
						rebuiltKeys = rebuiltKeys + 1
						rebuiltReferences = rebuiltReferences + 1
					elseif count and count > 1 then
						setmetatable(values, CacheListMeta)
						rawset(newContainer, value, values)
						rebuiltKeys = rebuiltKeys + 1
						rebuiltReferences = rebuiltReferences + count
					else
						removedKeys = removedKeys + 1
					end
				end
				rawset(cache, field, newContainer)
				rebuiltFields = rebuiltFields + 1
			end
		end
		local creatureContainer = rawget(cache, "creatureID")
		rawset(cache, "npcID", creatureContainer)
	end
	for group in next,SingletonResults do SingletonResults[group] = nil end
	MarkCacheMutation()
	return rebuiltFields, rebuiltKeys, rebuiltReferences, removedKeys, removedReferences
end

do	-- Cache & Search Functions
local ipairs, print, math_floor
	= ipairs, print, math.floor

-- All Cache Searching
app.SearchForFieldInAllCaches = function(field, id)
	-- Returns: A table containing all groups which contain the provided id for a given field from all established data caches.
	local groups = {};
	for _,cache in next,AllCaches do
		local container = GetCacheContainer(cache, field, false)
		if container then AppendCacheEntry(groups, rawget(container, id)) end
	end
	return groups;
end;
app.SearchForManyInAllCaches = function(field, ids)
	-- Returns: A table containing all groups which contain each of the provided ids for a given field from all established data caches.
	local groups = {};
	for _,cache in next,AllCaches do
		local fieldCache = GetCacheContainer(cache, field, false)
		if fieldCache then
			for i=1,#ids do AppendCacheEntry(groups, rawget(fieldCache, ids[i])) end
		end
	end
	return groups;
end
app.CreateDataCache = function(name)
	-- Returns: An object which can be used for holding cached data by various keys allowing for quick updates of data states.
	return AllCaches[name];
end

-- Cache-Based Searching
app.GetField = function(field, id)
	local container = GetCacheContainer(currentCache, field, true)
	return CacheEntryResults(rawget(container, id), true)
end
app.GetFieldContainer = function(field)
	-- Container values are compact cache entries. Use app.IterateCachedFieldResults,
	-- app.GetCachedFieldResults, app.GetCachedFieldCount, or app.GetFirstCachedFieldResult.
	return GetCacheContainer(currentCache, field, true)
end
local function GetRawCacheEntry(field, id)
	local container = GetCacheContainer(currentCache, field, false)
	if container then return rawget(container, id) end
end
local function GetRawField(field, id)
	return CacheEntryResults(GetRawCacheEntry(field, id), false)
end
app.GetRawField = GetRawField;
app.GetRawFieldContainer = function(field)
	return GetCacheContainer(currentCache, field, false)
end

-- NOTE: Planning on repurposing these to build the results if they're missing.
-- For situations where you don't want that, use GetRaw or GetField
local function BuildFieldContainerRecursively(group, field)
	if group[field] then AddCacheEntry(currentCache, field, group[field], group) end
	if group.g then
		for i, subgroup in ipairs(group.g) do BuildFieldContainerRecursively(subgroup, field); end
	end
end
app.SearchForFieldContainer = function(field)
	local cache = GetCacheContainer(currentCache, field, false);
	if not cache then
		cache = GetCacheContainer(currentCache, field, true)
		BuildFieldContainerRecursively(app:GetDatabaseRoot(), field);
	end
	return cache;
end
app.SearchForField = function(field, id)
	local container = GetCacheContainer(currentCache, field, true)
	return CacheEntryResults(rawget(container, id), true)
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
	local entry, count
	if field == "modItemID" then
		local idBase = math_floor(id)
		if idBase == id then
			id = idBase
			field = "itemID"
		end
	elseif field == "itemID" then
		entry = GetRawCacheEntry("modItemID", id)
		if entry then
			field = "modItemID"
			require = "field"
		else
			local idBase = math_floor(id)
			if idBase ~= id then id = idBase end
		end
	end
	entry = entry or GetRawCacheEntry(field, id)
	count = CacheEntryCount(entry)
	if count == 0 then return allowMultiple and app.EmptyTable or nil end

	local required = (require == "key" and 2) or (require == "field" and 1) or 0
	if count == 1 then
		local obj = CacheEntryFirst(entry)
		if required == 0
			or (required == 1 and obj[field] == id)
			or (required == 2 and obj.key == field and obj[field] == id)
		then
			return allowMultiple and CacheEntryResults(entry, true) or obj
		end
		return allowMultiple and app.EmptyTable or nil
	end

	if required == 0 then
		local results = CacheEntryResults(entry, true)
		app.Sort(results, app.SortDefaults.Accessibility)
		return allowMultiple and results or results[1]
	end

	local results = {}
	for _,obj in IterateCacheEntry(entry) do
		if (required == 1 and obj[field] == id)
			or (required == 2 and obj[field] == id and obj.key == field)
		then
			results[#results + 1] = obj
		end
	end
	if #results > 1 then app.Sort(results, app.SortDefaults.Accessibility) end
	return allowMultiple and results or results[1]
end

-- Lightweight opt-in profiling. These wrappers add no result allocations unless
-- /att profile start is active, and all later modules localize the wrapped functions.
if app.ProfileWrap then
	app.SearchForField = app.ProfileWrap("Search.SearchForField", app.SearchForField)
	app.SearchForObject = app.ProfileWrap("Search.SearchForObject", app.SearchForObject)
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
	for k,o in next,checked do
		if o.key ~= nil and o.key == group.key and o[o.key] == group[group.key] then
			-- print("Infinite .parent Recursion Found:");
			-- print the parent chain to the loop point
			-- for a,b in next,checked do
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
	for field,container in next,(cache or currentCache) do
		if type(container) == "table" and field ~= "npcID" then
			print("Cache", field);
			for _,entry in next,container do
				for _,group in IterateCacheEntry(entry) do
					if not VerifyRecursion(group) then
						print("Caused infinite .parent recursion",group.key,group[group.key]);
					end
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
	AddCacheEntry(currentCache, field, value, group)
end
local fieldConverters, runners = {}, {};
local mapKeyUncachers;
local function _CacheFields(group)
	local mapKeys
	local hasG = rawget(group, "g")
	for key,value in next,group do
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
		for key,value in next,mapKeys do
			mapKeyUncachers[key](group, value);
		end
	end
end
app.AddGenericFieldConverter = function(field)
	fieldConverters[field] = function(group, value)
		CacheField(group, field, value);
	end
end

local allowMapCaching = true
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
local currentMapGroup = {}
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
	for mapID,_ in next,currentMapGroup do
		CacheField(group, "flightPathsByMapID", mapID);
	end
end
fieldConverters.coords = function(group, coords)
	if not IsKeyIgnoredForCoord[group.key](group) then
		for mapID,_ in next,coords do
			cacheMapID(group, mapID);
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
	["coords"] = function(group, coords)
		for mapID,_ in next,coords do
			uncacheMap(group, mapID);
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
		RemoveCacheEntry(currentCache, "mapID", originalMapID, group)
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
	local mapIDs, info = {}, nil;
	local coords = group.coords
	if coords then
		for parentMapID,_ in next,coords do
			if not mapIDs[parentMapID] then
				mapIDs[parentMapID] = 1;
				info = C_Map_GetMapInfo(parentMapID);
				if info and info.parentMapID then
					mapIDs[info.parentMapID] = 1;
				end
			end
		end
	else
		local parentMapID = app.GetRelativeValue(group.parent, "mapID");
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
	for parentMapID,_ in next,mapIDs do
		local areaIDs = MapRemapping[parentMapID].areaIDs;
		for i=1,#value do
			areaIDs[value[i]] = mapID;
		end
	end
end
local function zoneTextNamesRunner(group, value)
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

	-- Remap the original mapID to the new mapID when it encounters any of these artIDs.
	if group.coords then
		for originalMapID,_ in next,group.coords do
			local names = MapRemapping[originalMapID].names;
			for i=1,#value do
				names[value[i]] = mapID;
			end
		end
	else
		local originalMapID = app.GetRelativeValue(group.parent, "mapID");
		if originalMapID then
			local names = MapRemapping[originalMapID].names;
			for i=1,#value do
				names[value[i]] = mapID;
			end
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
	if cacheName then
		return AllCaches[cacheName].CacheFields(group, skipMapCaching)
	end

	--local start = GetTimePreciseSec();
	allowMapCaching = not skipMapCaching
	_CacheFields(group);
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
	--print(("Cache Fields: %.3f %s"):format((GetTimePreciseSec() - start) * 1000, group.text));
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
	maps = true,
	g = true,
};
local _converter
fieldConverters.otherQuestData = function(group, otherFactionData)
	-- if the other faction data was actually made into a Type, then cache it against itself
	if otherFactionData.__type then
		_CacheFields(otherFactionData)
	else
		for key,value in next,otherFactionData do
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
			app.report("Object Missing Name ", objectID);
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
	["i"] = function(group, providerID, index)
		CacheField(group, "itemIDAsCost", providerID);
		CacheField(group, "qItemID", providerID);
	end,
};
local function cacheProvider(group, provider, index)
	providerTypeConverters[provider[1]](group, provider[2], index);
end
fieldConverters.providers = function(group, value)
	for i=1,#value do
		cacheProvider(group, value[i], i);
	end
end

-- Cost & Currency
local type = type
local costTypeConverters = {
	["c"] = function(group, providerID)
		CacheField(group, "currencyIDAsCost", providerID);
	end,
	["i"] = function(group, providerID)
		CacheField(group, "itemIDAsCost", providerID);
	end,
	-- Do nothing, nothing to cache.
	["g"] = app.EmptyFunction
};
local function cacheCost(group, cost)
	costTypeConverters[cost[1]](group, cost[2]);
end
fieldConverters.cost = function(group, value)
	if type(value) == "table" then
		for i=1,#value do
			cacheCost(group, value[i]);
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
-- headerID is used by a small amount of symlinks as well currently
local function cacheHeaderID(group, headerID)
	CacheField(group, "headerID", headerID);
end
if app.Debugging and app.Version == "[Git]" then
	cacheHeaderID = function(group, headerID)
		if not group.type and not app.L.HEADER_NAMES[headerID] then
			app.report("Header Missing Name ", headerID);
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
-- ^(?=.*GetField)(?=.*artifactID).*$
-- ^(?=.*GetRawField)(?=.*artifactID).*$
-- ^(?=.*SearchForObject)(?=.*artifactID).*$
-- ^(?=.*CreateDynamicHeader)(?=.*artifactID).*$
-- "select",\s?"artifactID"

fieldConverters.catalystID = function(group, value)	-- Referenced in Modules/Catalyst
	CacheField(group, "catalystID", value);
end
fieldConverters.professionID = function(group, value)	-- Used in Tooltips > Summarize Things (AddContainsData)
	CacheField(group, "professionID", value);
end
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

-- These are used to provide sourcePaths for the various types:
-- If some day we want sourcePath to be more dynamic, we can do that in the InformationType.
fieldConverters.decorID = function(group, value)
	CacheField(group, "decorID", value);
end
fieldConverters.illusionID = function(group, value)
	CacheField(group, "illusionID", value);
end
fieldConverters.titleID = function(group, value)
	CacheField(group, "titleID", value);
end

-- Used by tons of symlinks that I don't have time before expac to try and massage into using other search keys/symlinks
-- encounterID is primarily used by World Bosses, but searching by NPCID doesn't match a field on the encounter since they use 'crs'
-- and adjusting symlink logic to additionally do more checks would slow it down
fieldConverters.encounterID = function(group, value)
	CacheField(group, "encounterID", value);
end
-- expansionID is used by many items which are containers for expansion-wide content availability
fieldConverters.expansionID = function(group, value)
	CacheField(group, "expansionID", value);
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
