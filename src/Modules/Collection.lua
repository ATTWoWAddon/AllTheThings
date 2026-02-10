local _, app = ...
local L = app.L

-- Dependencies: Locales, Modules.RetrievingData

local pairs,type
	= pairs,type

local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local Runner = app.CreateRunner("collection")

local SearchForObject
app.AddEventHandler("OnLoad", function()
	SearchForObject = app.SearchForObject
end)

-- Collection Events
local Callback = app.CallbackHandlers.Callback
local FanfareFunctions = setmetatable({
	Mount = app.Audio.PlayMountFanfare
}, { __index = function(t,key) return app.Audio.PlayFanfare end })

local TooSpammyThings = {
	Exploration = true,
	Quests = true,
}

-- TODO: maybe consolidate to collecting an actual 'Thing' when possible
app.AddEventHandler("OnThingCollected", function(typeORt)
	if type(typeORt) == "table" then
		if not typeORt or not typeORt.collectible then return end

		-- TODO: test base with Quests/Objects ...
		local base = typeORt.base or typeORt

		local thingType
		-- TODO: why is 'base' a function in Classic, likely simpleMeta
		if type(base) == "function" then
			-- app.PrintDebug("use base func",base(typeORt, "__type"))
			thingType = base(typeORt, "__type")
		else
			-- app.PrintDebug("use base class",base.__type)
			thingType = base.__type
		end
		-- app.PrintDebug("BaseType",thingType)
		if TooSpammyThings[thingType] then return end

		Callback(FanfareFunctions[thingType])
		if app.Settings:GetTooltipSetting("Screenshot") then Callback(Screenshot) end
	else
		if typeORt and not app.Settings:Get("Thing:"..typeORt) then return end
		if TooSpammyThings[typeORt] then return end

		Callback(FanfareFunctions[typeORt])
		if app.Settings:GetTooltipSetting("Screenshot") then Callback(Screenshot) end
	end
end)

app.AddEventHandler("OnThingRemoved", function(typeORt)
	if type(typeORt) == "table" then
		if not typeORt or not typeORt.collectible then return end

		Callback(app.Audio.PlayRemoveSound)
	else
		if not typeORt or not app.Settings:Get("Thing:"..typeORt) then return end

		Callback(app.Audio.PlayRemoveSound)
	end
end)

local DefaultCollectedThingFunc = function(t)
	if not t._missing then
		app.print(L.ITEM_ID_ADDED:format(app:SearchLink(t) or t.text or UNKNOWN, t.keyval or "???"))
	else
		app.print(L.ITEM_ID_ADDED_MISSING:format(app:SearchLink(t) or t.text or UNKNOWN, t.keyval or "???"))
	end
end
local CollectionReportFormats = setmetatable({}, { __index = function(t,key) return DefaultCollectedThingFunc end})
-- Allows supporting more collection report formats from other Modules based on __type
app.AddCollectionReportFormatFunc = function(ttype, func)
	CollectionReportFormats[ttype] = func
end
local DefaultRemovedThingFunc = function(t)
	app.print(L.ITEM_ID_REMOVED:format(app:SearchLink(t) or t.text or UNKNOWN, t.keyval or "???"))
end
local RemovalReportFormats = setmetatable({}, { __index = function(t,key) return DefaultRemovedThingFunc end})
-- Allows supporting more removal report formats from other Modules based on __type
app.AddRemovalReportFormatFunc = function(ttype, func)
	RemovalReportFormats[ttype] = func
end

local DefaultCollectionTypeFunc = function(t)
	if app.Settings:GetTooltipSetting("Report:Collected") then
		CollectionReportFormats[t.__type](t)
	end
	local tkey = t.key
	local tval = t[tkey]
	app.HandleEvent("OnThingCollected", t)
	app.UpdateRawID(tkey, tval)
end
local CollectionTypeHandlers = setmetatable({}, { __index = function(t,key) return DefaultCollectionTypeFunc end})
-- Allows supporting custom collection handlers from other Modules based on __type
-- NOTE: Added handlers should include necessary chat Report logic and
-- trigger necessary calls to app.HandleEvent("OnThingCollected") and app.UpdateRawID(s) if needed
app.AddCollectionTypeHandler = function(type, func)
	CollectionTypeHandlers[type] = func
end
local DefaultRemovalTypeFunc = function(t)
	if app.Settings:GetTooltipSetting("Report:Collected") then
		RemovalReportFormats[t.__type](t)
	end
	local tkey = t.key
	local tval = t[tkey]
	app.HandleEvent("OnThingRemoved", t)
	app.UpdateRawID(tkey, tval)
end
local RemovalTypeHandlers = setmetatable({}, { __index = function(t,key) return DefaultRemovalTypeFunc end})
-- Allows supporting custom collection handlers from other Modules based on __type
-- NOTE: Added handlers should include necessary chat Report logic and
-- trigger necessary calls to app.HandleEvent("OnThingCollected") and app.UpdateRawID(s) if needed
app.AddRemovalTypeHandler = function(type, func)
	RemovalTypeHandlers[type] = func
end

local function HandleCollectionChange(t, isadd)
	-- Report new things to your collection!
	-- to test: comment out text/name/link from BattlePet class, then cage & relearn a battle pet
	if IsRetrieving(t.text) and t.CanRetry then
		-- app.PrintDebug("HCC:RETRY",app:SearchLink(t))
		Runner.Run(HandleCollectionChange, t, isadd)
		return
	end

	local ttype = t.__type
	-- use the Collection Handler for this Type to process the collection
	-- if that Thing is currently considered collectible
	if isadd then
		CollectionTypeHandlers[ttype](t)
	else
		RemovalTypeHandlers[ttype](t)
	end
end
local function DoCollection(group, isadd)
	if not group then return; end
	-- Only if it's something collectible...
	-- TODO: Settings option to allow reporting even when not considered collectible
	if not group.collectible then return end

	if isadd then
		-- TODO: Settings option to allow reporting even when already considered collected
		if group.collected then return end
	end

	Runner.Run(HandleCollectionChange, group, isadd)
end

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	-- Update timestamps.
	local now = time();
	local timeStamps = currentCharacter.TimeStamps;
	if not timeStamps then
		timeStamps = {};
		currentCharacter.TimeStamps = timeStamps;
	end
	for key,value in pairs(currentCharacter) do
		if type(value) == "table" and not timeStamps[key] then
			timeStamps[key] = now;
		end
	end
	currentCharacter.lastPlayed = now;
	local function UpdateTimestampForField(field)
		local now = time();
		timeStamps[field] = now;
		currentCharacter.lastPlayed = now;
	end

	local accountWide = app.Settings.AccountWide
	-- Returns the cached status for this Account for a given field ID
	local function IsAccountCached(field, id)
		return accountWideData[field][id] or nil
	end
	-- Returns the cached status for this Character for a given field ID
	local function IsCached(field, id)
		return currentCharacter[field][id] or nil
	end
	-- Assigns the cached status for this Character for a given field ID without causing any related events
	local function SetCached(field, id, state)
		if currentCharacter[field][id] ~= state then
			currentCharacter[field][id] = state
			UpdateTimestampForField(field);
		end
	end
	-- Assigns the cached status for this Account for a given field ID without causing any related events
	local function SetAccountCached(field, id, state)
		accountWideData[field][id] = state
	end
	-- Assigns the cached status for this Account for a given field by running a check function against a given cache container
	local function SetAccountCachedByCheck(field, check)
		-- app.PrintDebug("SACBC",field,check)
		check(accountWideData[field])
	end
	-- Returns the tracked status for this Account for a given field ID
	local function IsAccountTracked(field, id, setting)
		return accountWide[setting or field] and accountWideData[field][id] or nil
	end
	-- Allows directly saving a cached state for a table of ids for a given field at the Account level
	-- Note: This does not include reporting of collected things. It should be used in situations where this is not desired (onstartup refresh, etc.)
	local function SetBatchAccountCached(field, ids, state)
		-- app.PrintDebug("SBAC:A",field,state)
		local container = accountWideData[field]
		for id,_ in pairs(ids) do
			container[id] = state
		end
	end
	-- Allows directly saving a cached state for a table of ids for a given field.
	-- Note: This does not include reporting of collected things. It should be used in situations where this is not desired (onstartup refresh, etc.)
	local function SetBatchCached(field, ids, state)
		-- app.PrintDebug("SBC",field,state)
		local container = currentCharacter[field]
		local anyNew = false;
		for id,_ in pairs(ids) do
			if container[id] ~= state then
				container[id] = state;
				anyNew = true;
			end
		end
		if anyNew then UpdateTimestampForField(field); end
	end
	local function SetBatchCachedAndTrackChanges(field, ids, changes, state)
		-- app.PrintDebug("SBC",field,state)
		local container = currentCharacter[field]
		local anyChanges = false;
		for id,_ in pairs(ids) do
			if container[id] ~= state then
				container[id] = state;
				changes[#changes + 1] = id;
				anyChanges = true;
			end
		end
		if anyChanges then
			UpdateTimestampForField(field);
			return true;
		end
	end
	-- TODO: replace uses with SetThingCollected
	local function SetAccountCollected(t, field, id, collected, settingKey)
		-- app.PrintDebug("SC:A",app:SearchLink(t),t and t.collectible,field,id,collected)
		local oldstate = IsAccountCached(field, id)
		if collected then
			if not oldstate then
				-- if it's a known collectible thing not collected under current settings, then collect it
				if t then
					DoCollection(t, true)
				else
					-- if t exists, then AddToCollection does some handling of collection stuff...
					app.HandleEvent("OnThingCollected", settingKey or field)
				end
			end
			accountWideData[field][id] = 1
			return 1
		end
		if oldstate then
			-- basically have to recalculate account data to know if this thing is still technically collected
			-- via another character data, so clear it anyway
			if accountWideData[field][id] then
				DoCollection(t, false)
				accountWideData[field][id] = nil
				-- if t exists, then DoCollection does some handling of collection stuff...
				if not t then
					app.HandleEvent("OnThingRemoved", settingKey or field)
				end
			end
		end
		return accountWideData[field][id] and 2 or nil
	end
	-- TODO: replace uses with SetThingCollected
	local function SetCollected(t, field, id, collected, settingKey)
		-- app.PrintDebug("SC",app:SearchLink(t),field,id,collected)
		local oldstate = IsCached(field, id)
		if collected then
			if not oldstate then
				UpdateTimestampForField(field);
				-- if it's a known collectible thing not collected under current settings, then collect it
				if t then
					DoCollection(t, true)
				else
					-- if t exists, then AddToCollection does some handling of collection stuff...
					app.HandleEvent("OnThingCollected", settingKey or field)
				end
			end
			SetCached(field, id, 1)
			accountWideData[field][id] = 1
			return 1
		end
		if oldstate then
			-- basically have to recalculate account data to know if this thing is still technically collected
			-- via another character data, so clear it anyway
			if accountWideData[field][id] then
				UpdateTimestampForField(field);
				DoCollection(t, false)
				accountWideData[field][id] = nil
				-- if t exists, then DoCollection does some handling of collection stuff...
				if not t then
					app.HandleEvent("OnThingRemoved", settingKey or field)
				end
			end
		end
		SetCached(field, id, nil)
		return accountWideData[field][id] and 2 or nil
	end
	-- Use this when the collection state of a Thing changes, for both Character and Account collectibles
	-- field : The Key of the Thing
	-- id : The ID for the Key
	-- accountWide : Whether this Thing is collected for the entire Account by Blizzard
	-- collected : Whether this Thing was actually collected, otherwise being removed
	local function SetThingCollected(key, id, accountWide, collected)
		local t = SearchForObject(key, id, "key")
				or SearchForObject(key, id, "field")
				or app.CreateClassInstance(key, id)
		local cacheKey = t.CACHE
		if not cacheKey then
			app.PrintDebug("STC:NoCACHE",app:SearchLink(t), key, id, accountWide, collected)
			return
		end
		-- app.PrintDebug("STC",app:SearchLink(t),key, id, accountWide, collected, cacheKey)
		local oldstate = (accountWide and IsAccountCached or IsCached)(cacheKey, id)
		local accountCache = accountWideData[cacheKey]
		if collected then
			if not oldstate then
				DoCollection(t, true)
			end
			if not accountWide then SetCached(cacheKey, id, 1) end
			accountCache[id] = 1
			return 1
		end
		if oldstate then
			-- basically have to recalculate account data to know if this thing is still technically collected
			-- via another character data, so clear it anyway
			if accountCache[id] then
				DoCollection(t, false)
				accountCache[id] = nil
			end
		end
		if not accountWide then SetCached(cacheKey, id, nil) end
		return accountCache[id] and 2 or nil
	end
	app.SetThingCollected = SetThingCollected
	app.SetAccountCollected = SetAccountCollected;
	app.SetCached = SetCached
	app.SetAccountCached = SetAccountCached
	app.SetAccountCachedByCheck = SetAccountCachedByCheck
	app.SetCollected = SetCollected;
	app.IsCached = IsCached
	app.IsAccountCached = IsAccountCached
	app.IsAccountTracked = IsAccountTracked
	app.SetBatchAccountCached = SetBatchAccountCached
	app.SetBatchCached = SetBatchCached
	app.SetBatchCachedAndTrackChanges = SetBatchCachedAndTrackChanges;
	-- Consolidated Functions
	app.TypicalCharacterCollected = function(CACHE, id, SETTING)
		-- character collected
		if IsCached(CACHE, id) then return 1; end
		-- account-wide collected
		if IsAccountTracked(CACHE, id, SETTING) then return 2; end
	end
	app.TypicalAccountCollected = function(CACHE, id)
		-- account-wide collected
		if IsAccountCached(CACHE, id) then return 1; end
	end
	app.WipeCached = function(CACHE, accountWide)
		if accountWide then
			accountWideData[CACHE] = {}
		else
			currentCharacter[CACHE]= {}
		end
	end
end)
