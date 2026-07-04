-- BattlePet Class
local _, app = ...

-- Globals
local wipe, setmetatable, rawget, select,pairs
	= wipe, setmetatable, rawget, select,pairs

-- WoW API Cache

-- Module

-- App
-- Battle Pets are handled in Mounts & Battle Pets for Classic/TBC
if app.GameBuildVersion < 30000 then return; end

-- BattlePet Lib / Species Lib
local KEY, CACHE = "speciesID", "BattlePets"
local CLASSNAME = "BattlePet"

local C_PetJournal_GetNumCollectedInfo,C_PetJournal_GetPetInfoByPetID,C_PetJournal_GetPetInfoBySpeciesID,C_PetJournal_GetPetInfoByIndex,C_PetJournal_GetNumPets,C_PetJournal_GetPetStats
	= C_PetJournal.GetNumCollectedInfo,C_PetJournal.GetPetInfoByPetID,C_PetJournal.GetPetInfoBySpeciesID,C_PetJournal.GetPetInfoByIndex,C_PetJournal.GetNumPets,C_PetJournal.GetPetStats

local cache = app.CreateCache(KEY);
local function CacheInfo(t, field)
	local _t, id = cache.GetCached(t);
	-- speciesName, speciesIcon, petType, companionID, tooltipSource, tooltipDescription, isWild,
	-- canBattle, isTradeable, isUnique, obtainable, creatureDisplayID = C_PetJournal.GetPetInfoBySpeciesID(speciesID)
	local speciesName, speciesIcon, petType, _, _, tooltipDescription, _, _, _, _, _, creatureDisplayID = C_PetJournal_GetPetInfoBySpeciesID(id);
	if speciesName and speciesIcon and petType and tooltipDescription and creatureDisplayID then
		_t.name = speciesName;
		_t.icon = speciesIcon;
		_t.petTypeID = petType;
		_t.lore = tooltipDescription;
		_t.displayID = creatureDisplayID;
		if not t.itemID or not t.link then
			_t.text = "|cff0070dd"..speciesName.."|r";
		end
	else
		_t.name = UNKNOWN;
		if not t.itemID or not t.link then
			_t.text = "|cff0070dd"..UNKNOWN.."|r";
		end
	end
	if field then return _t[field]; end
end
-- Returns how many of a given speciesID are currently collected
local CollectedSpeciesHelper = setmetatable({}, {
	__index = function(t, key)
		if key and key > 0 then
			local num = C_PetJournal_GetNumCollectedInfo(key)
			-- app.PrintDebug("SPECIES->NUM",key,num)
			if not num then
				app.PrintDebug("SpeciesID " .. key .. " was not found.")
				num = 0
			end
			t[key] = num
			return num
		end
		return 0
	end
});
local PetIDSpeciesIDHelper = setmetatable({}, {
	-- this metafunction seems to never be utilized... but guess it can stay for now
	__index = function(t, key)
		-- PetID are strings
		local speciesID = C_PetJournal_GetPetInfoByPetID(key);
		if speciesID then
			-- app.PrintDebug("PET->SPECIES",key,speciesID)
			t[key] = speciesID;
		end
		return speciesID;
	end
});

local PerCharacterSpecies = {
	[280] = true, 	-- Guild Page [A]
	[281] = true, 	-- Guild Page [H]
	[282] = true,	-- Guild Herald [A]
	[283] = true,	-- Guild Herald [H]
	-- ...etc
}
app.CreateSpecies = app.CreateClass(CLASSNAME, KEY, {
	CACHE = function() return CACHE end,
	collectible = function(t) return app.Settings.Collectibles[CACHE]; end,
	collected = function(t)
		-- certain Battle Pets are per Character, so we can implicitly check for them as Account-Wide since Battle Pets have no toggle for that
		-- account-wide collected
		return app.TypicalAccountCollected(CACHE, t[KEY])
	end,
	saved = function(t)
		-- Collection getters must be read-only. Reporting collection changes while a
		-- row is rendered causes already-owned pets to be announced repeatedly.
		return CollectedSpeciesHelper[t[KEY]] > 0 and 1 or nil
	end,
	text = function(t)
		return t.link or cache.GetCachedField(t, "text", CacheInfo);
	end,
	icon = function(t)
		return cache.GetCachedField(t, "icon", CacheInfo);
	end,
	lore = function(t)
		return cache.GetCachedField(t, "lore", CacheInfo);
	end,
	displayID = function(t)
		return cache.GetCachedField(t, "displayID", CacheInfo);
	end,
	petTypeID = function(t)
		return cache.GetCachedField(t, "petTypeID", CacheInfo);
	end,
	name = function(t)
		return cache.GetCachedField(t, "name", CacheInfo);
	end,
	b = function(t)
		return cache.GetCachedField(t, "b");
	end,
	tsm = function(t)
		return ("p:%d:1:3"):format(t.speciesID);
	end,
	knownByID = function(t)
		return t.speciesID
	end,
	perCharacter = function(t)
		return PerCharacterSpecies[t.speciesID]
	end,
},
"WithItem", {
	ImportFrom = "Item",
	ImportFields = { "name", "link", "tsm", "costCollectibles", "AsyncRefreshFunc" }
},
function(t) return t.itemID end);

local function RefreshBattlePets()
	-- C_PetJournal.GetPetInfoByIndex is not a complete or stable authority for
	-- collection ownership. Scan every species ATT knows about with the
	-- species-specific API before replacing the saved caches.
	wipe(CollectedSpeciesHelper)
	local acct, char, none = {}, {}, {}
	for speciesID in pairs(app.GetRawFieldContainer(KEY)) do
		if CollectedSpeciesHelper[speciesID] > 0 then
			acct[speciesID] = true
			if PerCharacterSpecies[speciesID] then
				char[speciesID] = true
			end
		else
			none[speciesID] = true
		end
	end

	-- Keep the instance GUID lookup used by pet-added/deleted events. This index
	-- is safe as supplemental metadata, but never as the source of ownership.
	local _, ownedPets = C_PetJournal_GetNumPets()
	for index = 1, ownedPets or 0 do
		local petID, speciesID = C_PetJournal_GetPetInfoByIndex(index)
		if petID and speciesID then
			PetIDSpeciesIDHelper[petID] = speciesID
		end
	end

	-- Replace stale values only after the authoritative species scan completes.
	app.SetBatchCached(CACHE, none)
	app.SetBatchAccountCached(CACHE, none)
	app.SetBatchCached(CACHE, char, 1)
	app.SetBatchAccountCached(CACHE, acct, 1)
end
app.AddEventHandler("OnRefreshCollections", RefreshBattlePets)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end)
-- at some point speciesID began to be included in the Event payload, huzzah!
app.AddEventRegistration("NEW_PET_ADDED", function(petID, speciesID)
	local speciesID = speciesID or (petID and PetIDSpeciesIDHelper[petID])
	if petID and speciesID then
		PetIDSpeciesIDHelper[petID] = speciesID
	end
	-- app.PrintDebug("NEW_PET_ADDED", petID, speciesID)

	if speciesID then
		CollectedSpeciesHelper[speciesID] = nil
		-- if the CollectedSpeciesHelper is exactly 1, then this is newly collected
		if CollectedSpeciesHelper[speciesID] == 1 then
			app.SetThingCollected(KEY, speciesID, not PerCharacterSpecies[speciesID], true)
		end
	end
end)
-- at some point speciesID began to be included in the Event payload, huzzah!
app.AddEventRegistration("PET_JOURNAL_PET_DELETED", function(petID, speciesID)
	local speciesID = speciesID or (petID and PetIDSpeciesIDHelper[petID]);
	-- app.PrintDebug("PET_JOURNAL_PET_DELETED",petID,speciesID);

	if speciesID then
		CollectedSpeciesHelper[speciesID] = nil
		-- if the CollectedSpeciesHelper is exactly 0, then this is now removed
		if CollectedSpeciesHelper[speciesID] == 0 then
			-- app.PrintDebug("Pet Missing",speciesID);
			app.SetThingCollected(KEY, speciesID, not PerCharacterSpecies[speciesID])
		end
	end
end)
app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)
if C_PetJournal_GetPetStats then
	app.AddEventHandler("OnLoad", function()
		app.Settings.CreateInformationType("Owned Pets", {
			priority = 11000,
			text = app.L.OWNED_PETS,
			Process = function(t, data, tooltipInfo)
				local speciesID = data.speciesID;
				if speciesID then
					local totalPets, ownedPets = C_PetJournal_GetNumPets()
					if ownedPets > 0 then
						local index = 0;
						local petID, s, owned, customName, level, health, maxHealth, power, speed, rarity;
						for i=1,ownedPets do
							petID, s, owned, customName, level = C_PetJournal_GetPetInfoByIndex(i);
							if petID and owned and speciesID == s then
								index = index + 1;
								if index == 1 then
									tinsert(tooltipInfo, { left = " " });
									tinsert(tooltipInfo, { left = app.L.OWNED_PETS });
								end
								health, maxHealth, power, speed, rarity = C_PetJournal_GetPetStats(petID);
								tinsert(tooltipInfo, {
									left = LEVEL .. " " .. level .. " (" .. _G["BATTLE_PET_BREED_QUALITY" .. rarity] .. ")",
									right = health .. " / " .. maxHealth .. " [" .. power .. " | " .. speed .. "]"
								});
							end
						end
					end
				end
			end
		});
	end);
end
