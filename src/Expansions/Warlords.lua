-- App locals
local _, app = ...;

-- Check to see if Garrison APIs are available for Warlords
local C_Garrison = C_Garrison;
if not C_Garrison then
	app.CreateGarrisonBuilding = app.CreateUnimplementedClass("GarrisonBuilding", "garrisonbuildingID");
	app.CreateGarrisonMission = app.CreateUnimplementedClass("GarrisonMission", "missionID");
	app.CreateGarrisonTalent = app.CreateUnimplementedClass("GarrisonTalent", "garrisonTalentID");
	app.CreateFollower = app.CreateUnimplementedClass("Follower", "followerID");
	return
end

-- WoW API Cache

local select, setmetatable, pairs
	= select, setmetatable, pairs
local L = app.L;

-- Buildings
do
	local KEY, CACHE = "garrisonbuildingID", "GarrisonBuildings"
	local C_Garrison_GetBuildingInfo
		= C_Garrison.GetBuildingInfo;
	local GarrisonBuildingInfoMeta = { __index = function(t, key)
		local _, name, _, icon, lore = C_Garrison_GetBuildingInfo(t[KEY]);
		if not name then return nil; end
		t.name = name;
		t.icon = icon;
		t.lore = lore;
		setmetatable(t, nil);
		return t[key];
	end };
	local GarrisonBuildingInfoByID = setmetatable({}, { __index = function(t, id)
		local info = setmetatable({ [KEY] = id }, GarrisonBuildingInfoMeta);
		t[id] = info;
		return info;
	end });
	app.CreateGarrisonBuilding = app.CreateClass("GarrisonBuilding", KEY, {
		info = function(t)
			return GarrisonBuildingInfoByID[t[KEY]];
		end,
		name = function(t)
			return t.info.name;
		end,
		icon = function(t)
			return t.info.icon;
		end,
		lore = function(t)
			return t.info.lore;
		end,
	},
	"RecipeItem", {
		ImportFrom = "Item",
		ImportFields = { "name", "link", "icon", "specs", "tsm", "costCollectibles", "AsyncRefreshFunc" },
		description = function()
			return L.GARRISON_BUILDINGS_REQUIRE_GARRISON
		end,
		-- we collect the "Recipes" to know how to build the buildings
		collectible = function(t) return app.Settings.Collectibles.Recipes; end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
	}, (function(t) return t.itemID; end));
	
	app.AddGenericFieldConverter(KEY);
	app.AddEventHandler("OnRefreshCollections", function()
		local state
		local saved, none = {}, {}
		for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
			-- [11] = needsPlan
			state = not select(11, C_Garrison_GetBuildingInfo(id))
			if state then
				saved[id] = true
			else
				none[id] = true
			end
		end
		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		-- can't un-cache because API data is incorrect unless in Garrison, thanks Blizzard
		-- Account Cache (removals handled by Sync)
		app.SetBatchAccountCached(CACHE, saved, 1)
	end);
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end);
end

-- Missions
do
	local C_Garrison_GetMissionName = C_Garrison.GetMissionName;
	app.CreateGarrisonMission = app.CreateClass("GarrisonMission", "missionID", {
		name = function(t)
			return C_Garrison_GetMissionName(t.missionID);
		end,
		icon = function(t)
			return 1103070;
		end,
	});
	-- Information Types
	app.AddEventHandler("OnLoad", function()
		app.Settings.CreateInformationType("missionID", { text = L.MISSION_ID })
	end)
end

-- Talents
do
	local C_Garrison_GetTalentInfo = C_Garrison.GetTalentInfo;
	local GarrisonTalentInfoMeta = { __index = function(t, key)
		local info = C_Garrison_GetTalentInfo(t.garrisonTalentID);
		if not info then return nil; end
		t.name = info.name;
		t.icon = info.icon or 1103070;
		t.description = info.description;
		setmetatable(t, nil);
		return t[key];
	end };
	local GarrisonTalentInfoByID = setmetatable({}, { __index = function(t, id)
		local info = setmetatable({ garrisonTalentID = id }, GarrisonTalentInfoMeta);
		t[id] = info;
		return info;
	end });
	app.CreateGarrisonTalent = app.CreateClass("GarrisonTalent", "garrisonTalentID", {
		info = function(t)
			return GarrisonTalentInfoByID[t.garrisonTalentID];
		end,
		name = function(t)
			return t.info.name;
		end,
		icon = function(t)
			return t.info.icon;
		end,
		description = function(t)
			return t.info.description;
		end,
		saved = function(t)
			return C_Garrison_GetTalentInfo(t.garrisonTalentID).researched;
		end,
	});
end

-- Followers (Not Warlords exclusive, but the API originally was added with Warlords!)
do
	local KEY, CACHE = "followerID", "Followers"
	local CLASSNAME = "Follower"
	local C_Garrison_GetFollowerInfo, C_Garrison_GetFollowerLinkByID, C_Garrison_IsFollowerCollected
		= C_Garrison.GetFollowerInfo, C_Garrison.GetFollowerLinkByID, C_Garrison.IsFollowerCollected;
	local cache = app.CreateCache(KEY);
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		---@diagnostic disable-next-line: redundant-parameter
		local info = C_Garrison_GetFollowerInfo(id);
		if info then
			_t.name = info.name;
			_t.lvl = info.level;
			_t.icon = info.portraitIconID;
			_t.title = info.className;
			_t.displayID = info.displayIDs and info.displayIDs[1] and info.displayIDs[1].id;
		end
		_t.link = C_Garrison_GetFollowerLinkByID(id);
		if field then return _t[field]; end
	end
	app.CreateFollower = app.CreateClass(CLASSNAME, KEY, {
		name = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		icon = function(t)
			return cache.GetCachedField(t, "icon", CacheInfo);
		end,
		lvl = function(t)
			return cache.GetCachedField(t, "lvl", CacheInfo);
		end,
		title = function(t)
			return cache.GetCachedField(t, "title", CacheInfo);
		end,
		displayID = function(t)
			return cache.GetCachedField(t, "displayID", CacheInfo);
		end,
		link = function(t)
			return cache.GetCachedField(t, "link", CacheInfo);
		end,
		description = function(t)
			return L.FOLLOWERS_COLLECTION_DESC;
		end,
		RefreshCollectionOnly = true,
		collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
		collected = function(t)
			return app.TypicalCharacterCollected(CACHE, t[KEY])
		end,
		saved = function(t)
			local id = t[KEY];
			-- character collected
			if app.IsCached(CACHE, id) then return 1; end
		end,
	});
	
	app.AddGenericFieldConverter(KEY);
	app.AddEventHandler("OnRefreshCollections", function()
		local state
		local saved = {}
		for id,_ in pairs(app.GetRawFieldContainer(KEY)) do
			-- this returns false when wrong SL covenant, so we can't clear followers once cached for a character
			state = C_Garrison_IsFollowerCollected(id)
			if state then
				saved[id] = true
			end
		end
		-- Character Cache
		app.SetBatchCached(CACHE, saved, 1)
		-- Account Cache (removals handled by Sync)
		app.SetBatchAccountCached(CACHE, saved, 1)
	end);
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end);
	app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
	app.AddEventHandler("OnLoad", function()
		app.AddDynamicCategoryHeader({ id = "followerID", name = GARRISON_FOLLOWERS, icon = app.asset("Category_Followers") });
		app.AddRandomSearchCategory("Followers", "followerID", L.FOLLOWERS, L.FOLLOWER_DESC, app.asset("Category_Followers"));
	end);
end

-- Subroutines
local function common_wod_dungeon_drop(ResolveFunctions)
	local select, pop, where = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.where;
	return function(finalized, searchResults, o, cmd, difficultyID, headerID)
		select(finalized, searchResults, o, "select", "headerID", app.HeaderConstants.COMMON_DUNGEON_DROPS);	-- Common Dungeon Drops
		pop(finalized, searchResults);	-- Discard the Header and acquire all of their children.
		where(finalized, searchResults, o, "where", "difficultyID", difficultyID);	-- Normal/Heroic/Mythic/Timewalking
		pop(finalized, searchResults);	-- Discard the Diffculty Header and acquire all of their children.
		where(finalized, searchResults, o, "where", "headerID", headerID);	-- Head/Shoulder/Chest/Legs/Feet/Wrist/Hands/Waist
	end
end
local function common_wod_dungeon_drop_tw(ResolveFunctions)
	local select, pop, where = ResolveFunctions.select, ResolveFunctions.pop, ResolveFunctions.where;
	return function(finalized, searchResults, o, cmd, difficultyID, headerID)
		select(finalized, searchResults, o, "select", "headerID", app.HeaderConstants.COMMON_DUNGEON_DROPS);	-- Common Dungeon Drops
		pop(finalized, searchResults);	-- Discard the Header and acquire all of their children.
		where(finalized, searchResults, o, "where", "difficultyID", difficultyID);
		pop(finalized, searchResults);	-- Discard the Header and acquire all of their children.
		where(finalized, searchResults, o, "where", "headerID", headerID);	-- Head/Shoulder/Chest/Legs/Feet/Wrist/Hands/Waist
	end
end

-- Event Handling
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkSubroutine("common_wod_dungeon_drop", common_wod_dungeon_drop);
	app.RegisterSymlinkSubroutine("common_wod_dungeon_drop_tw", common_wod_dungeon_drop_tw);
end);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	-- Convert deprecated saved variable containers into the new structure
	if currentCharacter.Buildings then
		currentCharacter.GarrisonBuildings = currentCharacter.Buildings;
		currentCharacter.Buildings = nil;
	end
	if accountWideData.Buildings then
		accountWideData.GarrisonBuildings = accountWideData.Buildings;
		accountWideData.Buildings = nil;
	end
end);