
local _, app = ...

-- Globals
local rawget, select, pairs, tonumber, math_floor
	= rawget, select, pairs, tonumber, math.floor
local GetCategoryInfo,GetAchievementInfo,GetAchievementCriteriaInfo,GetLFGDungeonInfo
	= GetCategoryInfo,GetAchievementInfo,GetAchievementCriteriaInfo,GetLFGDungeonInfo

-- WoW API Cache

-- Module
local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving

-- App
local GetRawFieldContainer = app.GetRawFieldContainer
local SearchForObject = app.SearchForObject
local CreateClassInstance = app.CreateClassInstance

-- Automatic Headers
local HeaderTypeAbbreviations = {
	a = "achievementID",
	c = "classID",
	cu = "currencyID",
	en = "encounterID",
	e = "explorationID",
	fa = "factionID",
	m = "mapID",
	i = "itemID",
	r = "raceID",
	q = "questID",
	s = "spellID",
};
local DungeonInfoTexCoords = { 0, 0.66, 0, 1 }
-- Alternate functions to attach data into a table based on an id for a given type code
-- TODO: maybe this should be built using related Classes?
local AlternateDataTypes = {
	ac = function(id)
		return { name = GetCategoryInfo(id) };
	end,
	crit = function(id)
		local ach = math_floor(id);
		local crit = math_floor(100 * (id - ach) + 0.005);
		local icon = select(10, GetAchievementInfo(ach))
		return { name = GetAchievementCriteriaInfo(ach, crit), icon = icon };
	end,
	d = function(id)
		local name, _, _, _, _, _, _, _, _, _, textureFilename = GetLFGDungeonInfo(id);
		return { name = name, icon = textureFilename, texcoord = DungeonInfoTexCoords };
	end,
	df = function(id)
		local aid = math_floor(id);
		local hid = math_floor(10000 * (id - aid) + 0.005);
		id = app.FactionID == Enum.FlightPathFaction.Alliance and tonumber(aid) or tonumber(hid);
		local name, _, _, _, _, _, _, _, _, _, textureFilename = GetLFGDungeonInfo(id);
		return { name = name, icon = textureFilename, texcoord = DungeonInfoTexCoords };
	end,
	n = function(id)
		return { name = app.NPCNameFromID[tonumber(id)], displayID = app.NPCDisplayIDFromID[tonumber(id)] };
	end,
	o = function(id)
		return { name = app.ObjectNames[tonumber(id)] or ("Object ID #"..id), icon = app.ObjectIcons[tonumber(id)] };
	end,
	["_G"] = function(id)
		return { name = _G[id] };
	end,
	-- TODO: add Campaign lookups
	-- https://wowpedia.fandom.com/wiki/Category:API_namespaces/C_CampaignInfo
};
-- Returns the 'name' and 'icon' values to use for a given id/type automatic name lookup
local function GetAutomaticHeaderData(id, type)
	local altFunc = AlternateDataTypes[type];
	if altFunc then
		return altFunc(id);
	end
	local typeID = HeaderTypeAbbreviations[type] or type;
	local obj = (GetRawFieldContainer(typeID) and SearchForObject(typeID, id, "key")) or CreateClassInstance(typeID,id)
	if obj then
		-- app.PrintDebug("GetAutomaticHeaderData", id, typeID, obj.text, obj.key, obj[obj.key]);
		-- app.PrintDebug("Automatic Header",obj.name or obj.link)
		local name = obj.name or obj.link;
		return { name = not IsRetrieving(name) and name or nil, icon = obj.icon };
	end
	app.print("Failed finding object/function for automatic header",type,id);
end
-- Allows for directly accessing the Automatic Header Name logic for a specific ID/Type combination
app.GetAutomaticHeaderData = GetAutomaticHeaderData;
local cache = app.CreateCache("headerCode");
local function CacheInfo(t, field)
	local type = t.type;
	if not type then return; end
	local id = t.headerID;
	local _t = cache.GetCached(t);
	local data = GetAutomaticHeaderData(id, type);
	if data then
		for key,value in pairs(data) do
			_t[key] = value;
		end
	else
		print("FAILED TO FIND AUTO HEADER DATA", id, type);
	end
	if field then return _t[field]; end
end

-- Automatic Type Header
do
	app.CreateHeader = app.CreateClass("AutoHeader", "autoHeaderID", {
		IsClassIsolated = true,
		headerCode = function(t)
			if t.type then
				return t.type..t.autoHeaderID;
			else
				return t.autoHeaderID;
			end
		end,
		headerID = function(t)
			-- CRIEVE NOTE: This is because there's mini list logic that sorts by this.
			return t.autoHeaderID;
		end,
		name = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		icon = function(t)
			return cache.GetCachedField(t, "icon", CacheInfo) or 4555017;
		end,
		texcoord = function(t)
			return cache.GetCachedField(t, "texcoord", CacheInfo)
		end,
	},
	"WithQuest", {
		trackable = function(t)
			-- raw repeatable quests can't really be tracked since they immediately unflag
			return not rawget(t, "repeatable") and t.repeatable
		end,
		saved = function(t)
			return IsQuestFlaggedCompleted(t.questID)
		end,
		repeatable = function(t)
			return t.isDaily or t.isWeekly or t.isMonthly or t.isYearly
		end,
	}, (function(t) return t.questID end))
end
