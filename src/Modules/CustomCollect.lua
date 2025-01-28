
-- CustomCollect Module
local _, app = ...

-- Concepts:
-- Encapsulates the functionality for adding/checking custom collection requirements of individual Things which
-- rely on specific Player choices to be available or unavailable

-- Global locals
local rawget, ipairs, pairs, type
	= rawget, ipairs, pairs, type

-- App locals
local IsQuestFlaggedCompleted, SearchForObject
local Callback = app.CallbackHandlers.Callback

app.AddEventHandler("OnLoad", function()
	IsQuestFlaggedCompleted, SearchForObject
	= app.IsQuestFlaggedCompleted, app.SearchForObject
end)

-- Module locals
app.ActiveCustomCollects = {};

local ExilesReachMapIDs = { [1409] = 1, [1609] = 1, [1610] = 1, [1611] = 1, [1726] = 1, [1727] = 1 }
-- Default instantiation with Quest-based checks, can be performed regardless of game API
local CCFuncs = {
	["NPE"] = function()
		-- needs mapID to check this
		if not app.CurrentMapID then return end
		-- print("first check")
		-- print("map check",app.CurrentMapID)
		-- check if the current MapID is in Exile's Reach
		if ExilesReachMapIDs[app.CurrentMapID] then
			-- this is an NPE character, so flag the GUID
			-- print("on map")
			return true
		-- if character has completed the first NPE quest
		elseif ((IsQuestFlaggedCompleted(56775) or IsQuestFlaggedCompleted(59926))
				-- but not finished the NPE chain
				and not (IsQuestFlaggedCompleted(60359) or IsQuestFlaggedCompleted(58911))) then
			-- print("incomplete NPE chain")
			return true
		end
		-- otherwise character is not NPE
		return false
	end,
	["SL_SKIP"] = function()
		-- Threads content becomes unavailable when a player reaches max level
		-- TODO: this is weird now... some stuff is available to alts post-70
		if app.Level >= 70 then return false end
		-- check if quest #62713 is completed. appears to be a HQT concerning whether the character has chosen to skip the SL Storyline
		return IsQuestFlaggedCompleted(62713)
	end,
	["HOA"] = function()
		-- check if quest #51211 is completed. Rewards the HoA to the player and permanently switches all possible Azerite rewards
		local hoa = IsQuestFlaggedCompleted(51211)
		-- also store the opposite of HOA for easy checks on Azewrong gear
		app.CurrentCharacter.CustomCollects["!HOA"] = not hoa
		-- for now, always assume both HoA qualifications are true so they do not filter
		app.ActiveCustomCollects["!HOA"] = true -- not hoa
		return true -- hoa
	end,
}

-- Shadowlands Covenants
if C_Covenants and C_Covenants.GetActiveCovenantID then
	local GetActiveCovenantID = C_Covenants.GetActiveCovenantID
	CCFuncs.SL_COV_KYR = function()
		local SLCovenantId = GetActiveCovenantID()
		return SLCovenantId == 1 or SLCovenantId == 0
	end
	CCFuncs.SL_COV_VEN = function()
		local SLCovenantId = GetActiveCovenantID()
		return SLCovenantId == 2 or SLCovenantId == 0
	end
	CCFuncs.SL_COV_NFA = function()
		local SLCovenantId = GetActiveCovenantID()
		return SLCovenantId == 3 or SLCovenantId == 0
	end
	CCFuncs.SL_COV_NEC = function()
		local SLCovenantId = GetActiveCovenantID()
		return SLCovenantId == 4 or SLCovenantId == 0
	end
end

-- Allows external code to add Custom Collect considerations
-- Potentially add if needed
-- app.AddCustomCollect = function(key, func)
-- 	if not key then
-- 		error("AddCustomCollect - key value missing")
-- 	end
-- 	if CCFuncs[key] then
-- 		error("AddCustomCollect - already have function for key "..key)
-- 	end
-- 	if type(func) ~= "function" then
-- 		error("AddCustomCollect - func value is not a function")
-- 	end
-- 	CCFuncs[key] = func
-- 	app.HandleEvent("OnAdd_CustomCollect")
-- end

-- receives a key and a function which returns the value to be set for
-- that key based on the current value and current character
local function SetCustomCollectibility(key, func)
	-- print("SetCustomCollectibility",key)
	func = func or CCFuncs[key]
	local result = func()
	if result ~= nil then
		-- app.PrintDebug("SetCustomCollectibility",key,result)
		app.CurrentCharacter.CustomCollects[key] = result
		app.ActiveCustomCollects[key] = result or app.Settings:Get("CC:"..key)
	else
		-- failed attempt to set the CC, try next frame
		-- app.PrintDebug("SetCustomCollectibility-Fail",key)
		Callback(SetCustomCollectibility, key, func)
	end
end
-- determines whether an object may be considered collectible for the current character based on the 'customCollect' value(s)
app.CheckCustomCollects = function(t)
	-- no customCollect, or Account/Debug mode then disregard
	if app.MODE_DEBUG_OR_ACCOUNT or not t.customCollect then return true end
	local cc = app.ActiveCustomCollects
	for _,c in ipairs(t.customCollect) do
		if not cc[c] then
			return false
		end
	end
	return true
end
-- Performs the necessary checks to determine any 'customCollect' settings the current character should have applied
local function RefreshCustomCollectibility()
	-- app.PrintDebug("RefreshCustomCollectibility")

	-- clear existing custom collects
	wipe(app.ActiveCustomCollects)

	for CCKey,CCfunc in pairs(CCFuncs) do
		SetCustomCollectibility(CCKey, CCfunc)
	end
end
app.AddEventHandler("OnReady", RefreshCustomCollectibility)
app.AddEventHandler("OnRecalculate", RefreshCustomCollectibility)
-- Add if needed
-- app.AddEventHandler("OnAdd_CustomCollect", function() Callback(RefreshCustomCollectibility) end)

-- Certain quests being completed should trigger a refresh of the Custom Collect status of the character (i.e. Covenant Switches, Threads of Fate, etc.)
local function DGU_CustomCollect(t)
	-- app.PrintDebug("DGU_CustomCollect",t.hash)
	Callback(RefreshCustomCollectibility)
end
local function DGU_Locationtrigger(t)
	-- app.PrintDebug("DGU_Locationtrigger",t.hash)
	Callback(app.LocationTrigger, true)
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
}
-- Add any automatically-assigned LocationTriggers
for _,questID in ipairs(app.__CacheQuestTriggers or app.EmptyTable) do
	DGU_Quests[questID] = DGU_Locationtrigger
end
app.__CacheQuestTriggers = nil
local function AssignDirectGroupOnUpdates()
	local questRef
	for questID,func in pairs(DGU_Quests) do
		questRef = SearchForObject("questID", questID, "field")
		if questRef then
			-- app.PrintDebug("Assign DGUOnUpdate",questRef.hash)
			questRef.DGUOnUpdate = func
		end
	end
end
app.AddEventHandler("OnInit", AssignDirectGroupOnUpdates)