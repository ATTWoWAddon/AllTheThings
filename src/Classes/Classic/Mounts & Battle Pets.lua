-- Companion Lib
local _, app = ...

-- Global locals
local ipairs, rawset, rawget, select
	= ipairs, rawset, rawget, select;

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemIcon = app.WOWAPI.GetItemIcon;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetSpellLink = app.WOWAPI.GetSpellLink;
local IsSpellKnown
	= IsSpellKnown;

-- App & Module locals
local SearchForField = app.SearchForField;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;


local function SetMountCollected(t, spellID, collected)
	return app.SetCollected(t, "Spells", spellID, collected, "Mounts");
end
local function IsMountObjectCollected(t)
	for i,o in ipairs(SearchForField("spellID", t.spellID)) do
		if o.explicitlyCollected then
			return true;
		end
	end
	return false;
end
local mountFields = {
	IsClassIsolated = true,
	CACHE = function() return "Spells" end,
	["text"] = function(t)
		return "|cffb19cd9" .. t.name .. "|r";
	end,
	["icon"] = function(t)
		return GetSpellIcon(t.spellID);
	end,
	["link"] = function(t)
		return (t.itemID and select(2, GetItemInfo(t.itemID))) or GetSpellLink(t.spellID);
	end,
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Mounts;
	end,
	["collected"] = function(t)
		return SetMountCollected(t, t.spellID, IsMountObjectCollected(t));
	end,
	["explicitlyCollected"] = function(t)
		return IsSpellKnown(t.spellID) or (t.questID and app.IsQuestFlaggedCompleted(t.questID)) or (t.itemID and GetItemCount(t.itemID, true) > 0);
	end,
	["b"] = function(t)
		-- Only mark mounts as BoP by default before Wrath, after that the default is account-wide
		if app.GameBuildVersion < 30000 then
			return (t.parent and t.parent.b) or 1;
		else
			return (t.parent and t.parent.b) or nil;
		end
	end,
	["name"] = function(t)
		return GetSpellName(t.spellID) or RETRIEVING_DATA;
	end,
	["tsmForItem"] = function(t)
		---@diagnostic disable-next-line: undefined-field
		if t.itemID then return ("i:%d"):format(t.itemID); end
		---@diagnostic disable-next-line: undefined-field
		if t.parent and t.parent.itemID then return ("i:%d"):format(t.parent.itemID); end
	end,
	["linkForItem"] = function(t)
		return select(2, GetItemInfo(t.itemID)) or GetSpellLink(t.spellID);
	end,
};
local C_MountJournal = _G["C_MountJournal"];
if C_MountJournal and app.GameBuildVersion > 30000 then
	-- Once the Mount Journal API is available, then all mounts become account wide.
	SetMountCollected = function(t, spellID, collected)
		return app.SetAccountCollected(t, "Spells", spellID, collected);
	end
	local SpellIDToMountID = setmetatable({}, { __index = function(t, id)
		local allMountIDs = C_MountJournal.GetMountIDs();
		if allMountIDs and #allMountIDs > 0 then
			for i,mountID in ipairs(allMountIDs) do
				local spellID = select(2, C_MountJournal.GetMountInfoByID(mountID));
				if spellID then rawset(t, spellID, mountID); end
			end
			setmetatable(t, nil);
			return rawget(t, id);
		end
	end });
	mountFields.mountID = function(t)
		return SpellIDToMountID[t.spellID];
	end
	mountFields.name = function(t)
		local mountID = t.mountID;
		if mountID then return C_MountJournal.GetMountInfoByID(mountID); end
		return GetSpellName(t.spellID) or RETRIEVING_DATA;
	end
	mountFields.displayID = function(t)
		local mountID = t.mountID;
		if mountID then return C_MountJournal.GetMountInfoExtraByID(mountID); end
	end
	mountFields.lore = function(t)
		local mountID = t.mountID;
		if mountID then return select(2, C_MountJournal.GetMountInfoExtraByID(mountID)); end
	end
	IsMountObjectCollected = function(t)
		local mountID = t.mountID;
		if mountID then return select(11, C_MountJournal.GetMountInfoByID(mountID)); end
	end
else
	mountFields.name = function(t)
		return GetSpellName(t.spellID) or RETRIEVING_DATA;
	end
end

app.CreateMount = app.CreateClass("Mount", "spellID", mountFields,
"WithItem", {	-- This is a conditional contructor.
	link = mountFields.linkForItem;
	tsm = mountFields.tsmForItem
}, function(t) return t.itemID; end);


app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter.Mounts then currentCharacter.Mounts = {} end
	if not accountWideData.Mounts then accountWideData.Mounts = {} end
end);

-- Battle Pets are done in the Battle Pets lib for MOP Classic
if app.GameBuildVersion > 50000 then return; end

-- Battle Pets / Companions
local function SetBattlePetCollected(t, speciesID, collected)
	return app.SetCollected(t, "BattlePets", speciesID, collected);
end
local function IsBattlePetCollected(t)
	return t.itemID and GetItemCount(t.itemID, true) > 0
end
local speciesFields = {
	CACHE = function() return "BattlePets" end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.BattlePets;
	end,
	["collected"] = function(t)
		return SetBattlePetCollected(t, t.speciesID, IsBattlePetCollected(t));
	end,
	["text"] = function(t)
		return "|cff0070dd" .. (t.name or RETRIEVING_DATA) .. "|r";
	end,
	["link"] = function(t)
		if t.itemID then
			local link = select(2, GetItemInfo(t.itemID));
			if link and not IsRetrieving(link) then
				t.link = link;
				return link;
			end
		end
	end,
	["tsm"] = function(t)
		---@diagnostic disable-next-line: undefined-field
		if t.itemID then return ("i:%d"):format(t.itemID); end
		---@diagnostic disable-next-line: undefined-field
		return ("p:%d:1:3"):format(t.speciesID);
	end,
	["RefreshCollectionOnly"] = true,
};
if C_PetJournal and app.GameBuildVersion > 30000 then
	local C_PetJournal = _G["C_PetJournal"];
	-- Once the Pet Journal API is available, then all pets become account wide.
	SetBattlePetCollected = app.GameBuildVersion > 50000 and function(t, speciesID, collected)
		return app.SetAccountCollected(t, "BattlePets", speciesID, collected);
	end or function(t, speciesID, collected)
		if collected then
			return app.SetAccountCollected(t, "BattlePets", speciesID, collected);
		else
			-- Stop turning it off, dumbass Blizzard API.
			return app.IsAccountCached("BattlePets", speciesID);
		end
	end
	IsBattlePetCollected = function(t)
		local count = C_PetJournal.GetNumCollectedInfo(t.speciesID);
		return count and count > 0;
	end
	speciesFields.icon = function(t)
		return select(2, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.name = function(t)
		return C_PetJournal.GetPetInfoBySpeciesID(t.speciesID) or (t.itemID and GetItemInfo(t.itemID)) or RETRIEVING_DATA;
	end
	speciesFields.petTypeID = function(t)
		return select(3, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.displayID = function(t)
		return select(12, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	speciesFields.description = function(t)
		return select(6, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
	end
	app.AddEventRegistration("NEW_PET_ADDED", function(...)
		app.HandleEvent("OnUpdateWindows");
	end)
else
	speciesFields.icon = function(t)
		if t.itemID then
			return GetItemIcon(t.itemID) or 134400;
		end
		return 134400;
	end
	speciesFields.name = function(t)
		return t.itemID and GetItemInfo(t.itemID) or RETRIEVING_DATA;
	end
	if GetCompanionInfo and GetNumCompanions("CRITTER") ~= nil then
		local CollectedBattlePetHelper = {};
		local CollectedMountHelper = {};
		local function RefreshCompanionCollectionStatus(companionType)
			local anythingNew = false;
			if not companionType or companionType == "CRITTER" then
				setmetatable(CollectedBattlePetHelper, nil);
				local critterCount = GetNumCompanions("CRITTER");
				if not critterCount then
					print("Failed to get Companion Info for Critters");
				else
					for i=critterCount,1,-1 do
						local spellID = select(3, GetCompanionInfo("CRITTER", i));
						if spellID then
							if not CollectedBattlePetHelper[spellID] then
								CollectedBattlePetHelper[spellID] = true;
								anythingNew = true;
							end
						else
							print("Failed to get Companion Info for Critter ".. i);
						end
					end
				end
			end
			if not companionType or companionType == "MOUNT" then
				setmetatable(CollectedMountHelper, nil);
				for i=GetNumCompanions("MOUNT"),1,-1 do
					local spellID = select(3, GetCompanionInfo("MOUNT", i));
					if spellID then
						if not CollectedMountHelper[spellID] then
							CollectedMountHelper[spellID] = true;
							anythingNew = true;
						end
					else
						print("Failed to get Companion Info for Mount ".. i);
					end
				end
			end
			if anythingNew then app.HandleEvent("OnUpdateWindows"); end
		end
		local meta = { __index = function(t, spellID)
			RefreshCompanionCollectionStatus();
			return rawget(t, spellID);
		end };
		setmetatable(CollectedBattlePetHelper, meta);
		setmetatable(CollectedMountHelper, meta);
		IsBattlePetCollected = function(t)
			return t.spellID and CollectedBattlePetHelper[t.spellID];
		end
		IsMountObjectCollected = function(t)
			return t.spellID and CollectedMountHelper[t.spellID];
		end
		app:RegisterEvent("COMPANION_LEARNED");
		app:RegisterEvent("COMPANION_UNLEARNED");
		app:RegisterEvent("COMPANION_UPDATE");
		app.events.COMPANION_LEARNED = RefreshCompanionCollectionStatus;
		app.events.COMPANION_UNLEARNED = RefreshCompanionCollectionStatus;
		app.events.COMPANION_UPDATE = RefreshCompanionCollectionStatus;
	end
end

app.CreateSpecies = app.CreateClass("Species", "speciesID", speciesFields);
app.CreatePetAbility = app.CreateUnimplementedClass("PetAbility", "petAbilityID");
app.CreatePetType = app.CreateClass("PetType", "petTypeID", {
	["name"] = function(t)
		return _G["BATTLE_PET_NAME_" .. t.petTypeID];
	end,
	["icon"] = function(t)
		return app.asset("Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID]);
	end,
});