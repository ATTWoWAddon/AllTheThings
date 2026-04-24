

-- Retrieving Data Module
local _, app = ...;

-- Dependencies

-- Concepts:
-- Encapsulates the functionality for determining whether a value is to be considered 'retrieving'

-- Global locals
local wipe, RETRIEVING_DATA = wipe, RETRIEVING_DATA

-- App locals

-- Module locals
local RetrievingTexts = {
	[""] = true,
	["[]"] = true,
	-- not sure Classic builds have all of these strings
	[RETRIEVING_DATA or "Retrieving data"] = true,
	[RETRIEVING_INVITE_LIST or "Retrieving invite list"] = true,
	[RETRIEVING_ITEM_INFO or "Retrieving item information"] = true,
	[RETRIEVING_TRADESKILL_INFO or "Retrieving information"] = true,
}

-- Retrieving Data API Implementation
-- Access via AllTheThings.Modules.RetrievingData
local api = {};
app.Modules.RetrievingData = api;
-- Returns whether the provided string matches a string which indicates the data is not yet loaded in the Client
local function IsRetrieving(text)
	return (not text
		or RetrievingTexts[text]
		or text:find(RETRIEVING_DATA)
		or text:find("%[%]"))
		-- make sure regardless of conditional return we return a true here for consistency
		and true;
end
api.IsRetrieving = IsRetrieving;
-- Returns whether the provided string is empty or equals RETRIEVING_DATA which indicates the data is not yet loaded in the Client (not used for Items or in general)
api.IsRetrievingData = function(text)
	return (not text or RetrievingTexts[text])
		-- make sure regardless of conditional return we return a true here for consistency
		and true;
end

-- Search Results Lib
local searchCache, working = {}, nil;
app.GetCachedData = function(cacheKey, method, ...)
	if IsRetrieving(cacheKey) then return; end
	local cache = searchCache[cacheKey];
	-- app.PrintDebug("GetCachedData",cacheKey,cache and "CACHE-HIT" or "CACHE-MISS")
	if not cache then
		cache, working = method(...);
		if not working then
			-- Only cache if the tooltip if no additional work is needed.
			-- app.PrintDebug("CACHED-DATA",cache.hash,cache.working)
			cache.working = nil
			searchCache[cacheKey] = cache;
		end
		return cache, working;
	end
	return cache;
end
local function WipeSearchCache()
	wipe(searchCache);
	app.WipeTooltipInfoCache()
end
app.WipeSearchCache = WipeSearchCache;
app.AddEventHandler("OnCurrentDifficultiesChanged", WipeSearchCache);
app.AddEventHandler("OnRefreshComplete", WipeSearchCache);
app.AddEventHandler("OnThingCollected", WipeSearchCache);
app.AddEventHandler("OnThingRemoved", WipeSearchCache);
app.AddEventHandler("OnSettingsRefreshed", WipeSearchCache);
app.AddEventHandler("Fill.RefreshFillers", WipeSearchCache)
