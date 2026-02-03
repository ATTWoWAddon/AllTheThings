
local app = select(2, ...);

-- Use the Mounts & Battle Pets Lib for pre-Wrath Content
if app.GameBuildVersion <= 30000 then
	return;
end

-- Global locals
local ipairs, pairs, rawset, rawget, math_floor, select, tonumber
	= ipairs, pairs, rawset, rawget, math.floor, select, tonumber;

local C_MountJournal_GetMountInfoExtraByID,C_MountJournal_GetMountInfoByID,C_MountJournal_GetMountIDs
	= C_MountJournal.GetMountInfoExtraByID,C_MountJournal.GetMountInfoByID,C_MountJournal.GetMountIDs

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetSpellLink = app.WOWAPI.GetSpellLink;

-- App locals
local Colorize = app.Modules.Color.Colorize;

-- Mount Lib
do
	-- Ugh really annoying that Mounts have a unique ID and we use their SpellID instead, assuming this is because in Classic they
	-- haven't made them MountID yet... bah
	local KEY, CACHE, SETTING = "mountID", "Mounts", "Mounts"
	local CLASSNAME = "Mount"

	local SpellIDToMountID = setmetatable({}, { __index = function(t, id)
		local allMountIDs = C_MountJournal_GetMountIDs();
		if allMountIDs and #allMountIDs > 0 then
			local spellID;
			for i,mountID in ipairs(allMountIDs) do
				spellID = select(2, C_MountJournal_GetMountInfoByID(mountID));
				if spellID then t[spellID] = mountID; end
			end
			setmetatable(t, nil);
			return rawget(t, id);
		end
	end });
	local cache = app.CreateCache("spellID");
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		local mountID = SpellIDToMountID[id];
		if mountID then
			local displayID, lore = C_MountJournal_GetMountInfoExtraByID(mountID);
			_t.displayID = displayID;
			_t.lore = lore;
			_t.name = C_MountJournal_GetMountInfoByID(mountID);
			_t.mountJournalID = mountID;
		end
		local name, icon = GetSpellName(id), GetSpellIcon(id);
		if name then
			_t.name = name
			_t.icon = icon;
		end
		_t.link = GetSpellLink(id);
		if not _t.link and not t.CanRetry then
			local name = id and ("Spell #%d"):format(id);
			_t.name = _t.name or name;
			_t.icon = _t.icon or 134400;	-- question mark
			_t.link = GetSpellLink(id);
		end
		if field then return _t[field]; end
	end

	local PerCharacterMountSpells = {
		[75207] = 1,	-- Vashj'ir Seahorse
		[148970] = 1,	-- Felsteed (Green)
		[148972] = 1,	-- Dreadsteed (Green)
		[241857] = 1,	-- Druid Lunarwing
		[231437] = 1,	-- Druid Lunarwing (Owl)
	}
	local AccountWideMountSpells = {
		1255451,	-- Feldruid's Scornwing Idol
	}
	app.CreateMount = app.CreateClass(CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		_cache = function(t)
			return cache;
		end,
		-- Mounts use special text coloring instead of default text
		text = function(t)
			local name = t.name
			if name then
				return Colorize(name, app.Colors.Mount)
			end
			return t.link
		end,
		icon = function(t)
			return cache.GetCachedField(t, "icon", CacheInfo);
		end,
		link = function(t)
			return cache.GetCachedField(t, "link", CacheInfo);
		end,
		lore = function(t)
			return cache.GetCachedField(t, "lore", CacheInfo);
		end,
		displayID = function(t)
			return cache.GetCachedField(t, "displayID", CacheInfo);
		end,
		name = function(t)
			return cache.GetCachedField(t, "name", CacheInfo);
		end,
		mountJournalID = function(t)
			return cache.GetCachedField(t, "mountJournalID", CacheInfo);
		end,
		collectibleAsCost = app.CollectibleAsCost,
		collectible = function(t) return app.Settings.Collectibles[SETTING]; end,
		collected = function(t)
			local id = t[KEY]
			-- character collected
			if app.IsCached(CACHE, id) then return 1; end
			-- account-wide collected
			if app.IsAccountCached(CACHE, id, SETTING) then return 1; end
		end,
		saved = function(t)
			return app.IsCached(CACHE, t.spellID)
		end,
		b = function(t)
			return (t.parent and t.parent.b) or 1;
		end,
		spellID = function(t)
			return t.mountID;
		end,
		tsm = function(t)
			if t.parent and t.parent.itemID then return ("i:%d"):format(t.parent.itemID); end
		end,
		perCharacter = function(t)
			return PerCharacterMountSpells[t.mountID]
		end
	},
	"WithItem", {
		ImportFrom = "Item",
		ImportFields = { "name", "link", "icon", "tsm", "costCollectibles", "AsyncRefreshFunc" },
	},
	function(t) return t.itemID end)
	app.AddEventHandler("OnRefreshCollections", function()
		local acct, char, none = {}, {}, {}
		local IsSpellKnown = app.IsSpellKnownHelper
		for _,mountID in ipairs(C_MountJournal_GetMountIDs()) do
			local _, spellID, _, _, _, _, _, _, _, _, isCollected = C_MountJournal_GetMountInfoByID(mountID);
			-- somehow, randomly, some players have had a spellID value which exists but isn't a number...
			spellID = tonumber(spellID)
			if spellID then
				-- spell check for every mount might not be a necessary fallback anymore
				-- of all the mounts I don't have, none of them have known spells instead
				-- if not isCollected and IsSpellKnown(spellID) then
				-- 	app.print("Mount not collected but spell learned:",spellID,GetSpellName(spellID))
				-- end
				if isCollected or IsSpellKnown(spellID) then
					if PerCharacterMountSpells[spellID] then
						char[spellID] = true;
					else
						acct[spellID] = true;
					end
				else
					none[spellID] = true
				end
			else
				app.PrintDebug("Mount with no spell",mountID)
			end
		end

		-- Spell-based Mounts (don't appear in Mount Journal)
		for spellID,_ in pairs(PerCharacterMountSpells) do
			if IsSpellKnown(spellID) then
				char[spellID] = true
			else
				none[spellID] = true
			end
		end
		for _,spellID in ipairs(AccountWideMountSpells) do
			if IsSpellKnown(spellID) then
				acct[spellID] = true
			else
				none[spellID] = true
			end
		end

		-- Character Cache
		app.SetBatchCached(CACHE, char, 1)
		app.SetBatchCached(CACHE, none)
		-- Remove old storage of Mounts within Character Spell cache
		app.SetBatchCached("Spells", acct)
		app.SetBatchCached("Spells", char)
		app.SetBatchCached("Spells", none)
		-- Account Cache
		app.SetBatchAccountCached(CACHE, none)
		app.SetBatchAccountCached(CACHE, acct, 1)
	end);
	app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
		if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
		if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
	end);
	app.AddEventRegistration("NEW_MOUNT_ADDED", function(id)
		local _, spellID = C_MountJournal_GetMountInfoByID(id)
		app.SetThingCollected("spellID", spellID, not PerCharacterMountSpells[spellID], true)
	end);
	app.AddSimpleCollectibleSwap(CLASSNAME, SETTING)
end
