do
-- App locals
local appName,app = ...;

local EJ_GetEncounterInfo = EJ_GetEncounterInfo;
if EJ_GetEncounterInfo and app.GameBuildVersion >= 60000 then
	local MAX_CREATURES_PER_ENCOUNTER = 9;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	local tinsert, EJ_GetCreatureInfo = tinsert, EJ_GetCreatureInfo;
	local cache = app.CreateCache("encounterID");
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		local name, lore, _, _, link = EJ_GetEncounterInfo(id);
		_t.name = name;
		_t.lore = lore;
		_t.link = link;
		_t.displayID = select(4, EJ_GetCreatureInfo(1, id));
		if field then return _t[field]; end
	end
	local function default_displayInfo(t)
		local displayInfos, id, displayInfo = {}, t.encounterID, nil;
		for i=1,MAX_CREATURES_PER_ENCOUNTER do
			displayInfo = select(4, EJ_GetCreatureInfo(i, id));
			if displayInfo then
				tinsert(displayInfos, displayInfo);
			else
				break;
			end
		end
		return displayInfos;
	end
	app.CreateEncounter = app.CreateClass("Encounter", "encounterID", {
		["name"] = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		["lore"] = function(t)
			return cache.GetCachedField(t, "lore", CacheInfo);
		end,
		["silentLink"] = function(t)
			return cache.GetCachedField(t, "link", CacheInfo);
		end,
		["displayID"] = function(t)
			return cache.GetCachedField(t, "displayID", CacheInfo);
		end,
		["displayInfo"] = function(t)
			return cache.GetCachedField(t, "displayInfo", default_displayInfo);
		end,
		["icon"] = app.GetRelativeDifficultyIcon,
	},
	"WithQuest", {
		trackable = app.ReturnTrue,
		saved = function(t)
			return IsQuestFlaggedCompleted(t.questID);
		end
	}, (function(t) return t.questID; end));
else
	app.CreateEncounter = function(id, t)
		local providers = t.providers;
		if providers then
			local provider = providers[1];
			--tremove(providers, 1);
			if #providers < 1 then t.providers = nil; end
			t = (provider[1] == "n" and app.CreateNPC or app.CreateObject)(provider[2], t);
			t.encounterID = id;
			return t;
		else
			local npcID = t.creatureID or (t.crs and t.crs[1]) or t.npcID or (t.qgs and t.qgs[1]);
			if npcID then
				t = app.CreateNPC(npcID, t);
				t.encounterID = id;
				return t;
			end
		end
		return setmetatable({
			encounterID = id,
			text = "@CRIEVE: INVALID ENCOUNTER " .. id,
			collected = false,
			collectible = true
		}, { __index = t });
	end
end
end