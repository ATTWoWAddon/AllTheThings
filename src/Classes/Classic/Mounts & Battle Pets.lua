-- Companion Lib
local _, app = ...

-- Use the Mounts & Battle Pets Lib for Wrath+
if app.GameBuildVersion > 30000 then
	return;
end

-- Global locals
local ipairs, pairs, select
	= ipairs, pairs, select;

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemIcon = app.WOWAPI.GetItemIcon;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetSpellLink = app.WOWAPI.GetSpellLink;
local IsSpellKnown = IsSpellKnown;

-- App & Module locals
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;

-- Pet Abilities and Pet Types
app.CreatePetAbility = app.CreateUnimplementedClass("PetAbility", "petAbilityID");
app.CreatePetType = app.CreateClass("PetType", "petTypeID", {
	["name"] = function(t)
		return _G["BATTLE_PET_NAME_" .. t.petTypeID];
	end,
	["icon"] = function(t)
		return app.asset("Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petTypeID]);
	end,
});

do	-- Mounts
local KEY, CACHE = "mountID", "Mounts"
app.CreateMount = app.CreateClass("Mount", KEY, {
	IsClassIsolated = true,
	CACHE = function() return CACHE end,
	text = function(t)
		return "|cffb19cd9" .. t.name .. "|r";
	end,
	name = function(t)
		return GetSpellName(t[KEY]) or RETRIEVING_DATA;
	end,
	icon = function(t)
		return GetSpellIcon(t[KEY]);
	end,
	spellID = function(t)
		return t[KEY];
	end,
	link = function(t)
		return GetSpellLink(t[KEY]);
	end,
	collectible = function(t)
		return app.Settings.Collectibles.Mounts;
	end,
	collected = function(t)
		return app.TypicalCharacterCollected(CACHE, t[KEY])
	end,
	b = function(t)
		-- Only mark mounts as BoP by default before Wrath
		return (t.parent and t.parent.b) or 1;
	end,
},
"WithItem", {	-- This is a conditional contructor.
	link = function(t)
		return select(2, GetItemInfo(t.itemID)) or GetSpellLink(t[KEY]);
	end,
	tsm = function(t)
		---@diagnostic disable-next-line: undefined-field
		if t.itemID then return ("i:%d"):format(t.itemID); end
		---@diagnostic disable-next-line: undefined-field
		if t.parent and t.parent.itemID then return ("i:%d"):format(t.parent.itemID); end
	end,
}, function(t) return t.itemID; end);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end);
app.AddEventHandler("OnRefreshCollections", function()
	local char, none, state = {}, {}, nil
	for id,g in pairs(app.SearchForFieldContainer(KEY)) do
		if IsSpellKnown(id) then
			char[id] = true;
		else
			for i,o in ipairs(g) do
				if (o.questID and app.IsQuestFlaggedCompleted(o.questID)) or (o.itemID and GetItemCount(o.itemID, true) > 0) then
					state = true;
					break;
				end
			end
			if state then
				char[id] = true;
				state = nil;
			else
				none[id] = true;
			end
		end
	end
	app.SetBatchCached(CACHE, none)
	app.SetBatchCached(CACHE, char, 1)
end);
end

do	-- Battle Pets
local KEY, CACHE = "speciesID", "BattlePets"
app.CreateSpecies = app.CreateClass("Species", KEY, {
	CACHE = function() return CACHE end,
	text = function(t)
		return "|cff0070dd" .. t.name .. "|r";
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
		return app.TypicalCharacterCollected(CACHE, t[KEY])
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
		return ("p:%d:1:3"):format(t[KEY]);
	end,
});
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	if not currentCharacter[CACHE] then currentCharacter[CACHE] = {} end
	if not accountWideData[CACHE] then accountWideData[CACHE] = {} end
end);
app.AddEventHandler("OnRefreshCollections", function()
	local char, none, state = {}, {}, nil
	for id,g in pairs(app.SearchForFieldContainer(KEY)) do
		for i,o in ipairs(g) do
			if o.itemID and GetItemCount(o.itemID, true) > 0 then
				state = true;
				break;
			end
		end
		if state then
			char[id] = true;
			state = nil;
		else
			none[id] = true;
		end
	end
	app.SetBatchCached(CACHE, none)
	app.SetBatchCached(CACHE, char, 1)
end);
end