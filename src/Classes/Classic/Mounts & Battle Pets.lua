-- Companion Lib
local _, app = ...

-- Use the Mounts & Battle Pets Lib for Wrath+
if app.GameBuildVersion > 30000 then
	return;
end

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
	text = function(t)
		return "|cffb19cd9" .. t.name .. "|r";
	end,
	name = function(t)
		return GetSpellName(t.spellID) or RETRIEVING_DATA;
	end,
	icon = function(t)
		return GetSpellIcon(t.spellID);
	end,
	spellID = function(t)
		return t.mountID;
	end,
	link = function(t)
		return (t.itemID and select(2, GetItemInfo(t.itemID))) or GetSpellLink(t.spellID);
	end,
	RefreshCollectionOnly = true,
	collectible = function(t)
		return app.Settings.Collectibles.Mounts;
	end,
	collected = function(t)
		return SetMountCollected(t, t.spellID, IsMountObjectCollected(t));
	end,
	explicitlyCollected = function(t)
		return IsSpellKnown(t.spellID) or (t.questID and app.IsQuestFlaggedCompleted(t.questID)) or (t.itemID and GetItemCount(t.itemID, true) > 0);
	end,
	b = function(t)
		-- Only mark mounts as BoP by default before Wrath
		return (t.parent and t.parent.b) or 1;
	end,
	name = function(t)
		return GetSpellName(t.spellID) or RETRIEVING_DATA;
	end,
	tsmForItem = function(t)
		---@diagnostic disable-next-line: undefined-field
		if t.itemID then return ("i:%d"):format(t.itemID); end
		---@diagnostic disable-next-line: undefined-field
		if t.parent and t.parent.itemID then return ("i:%d"):format(t.parent.itemID); end
	end,
	linkForItem = function(t)
		return select(2, GetItemInfo(t.itemID)) or GetSpellLink(t.spellID);
	end,
};

app.CreateMount = app.CreateClass("Mount", "mountID", mountFields,
"WithItem", {	-- This is a conditional contructor.
	link = mountFields.linkForItem;
	tsm = mountFields.tsmForItem
}, function(t) return t.itemID; end);

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter.Mounts then currentCharacter.Mounts = {} end
	if not accountWideData.Mounts then accountWideData.Mounts = {} end
	if not currentCharacter.BattlePets then currentCharacter.BattlePets = {} end
	if not accountWideData.BattlePets then accountWideData.BattlePets = {} end
end);


-- Battle Pets / Companions
local function SetBattlePetCollected(t, speciesID, collected)
	return app.SetCollected(t, "BattlePets", speciesID, collected);
end
local function IsBattlePetCollected(t)
	return t.itemID and GetItemCount(t.itemID, true) > 0
end
local speciesFields = {
	CACHE = function() return "BattlePets" end,
	text = function(t)
		return "|cff0070dd" .. (t.name or RETRIEVING_DATA) .. "|r";
	end,
	name = function(t)
		return t.itemID and GetItemInfo(t.itemID) or RETRIEVING_DATA;
	end,
	icon = function(t)
		return t.itemID and GetItemIcon(t.itemID) or 134400;
	end,
	collectible = function(t)
		return app.Settings.Collectibles.BattlePets;
	end,
	collected = function(t)
		return SetBattlePetCollected(t, t.speciesID, IsBattlePetCollected(t));
	end,
	link = function(t)
		if t.itemID then
			local link = select(2, GetItemInfo(t.itemID));
			if link and not IsRetrieving(link) then
				t.link = link;
				return link;
			end
		end
	end,
	tsm = function(t)
		---@diagnostic disable-next-line: undefined-field
		if t.itemID then return ("i:%d"):format(t.itemID); end
		---@diagnostic disable-next-line: undefined-field
		return ("p:%d:1:3"):format(t.speciesID);
	end,
	RefreshCollectionOnly = true,
};
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
