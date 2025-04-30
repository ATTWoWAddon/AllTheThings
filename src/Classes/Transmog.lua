-- App locals
local appName,app = ...;

local C_TransmogCollection = C_TransmogCollection;
if not C_TransmogCollection then
	-- Transmog is NOT supported.
	app.CreateItemSource = function(sourceID, itemID, t)
		if not t then
			t = { sourceID = sourceID };
		else
			t.sourceID = sourceID;
		end
		return app.CreateItem(itemID, t);
	end

	-- External Functionality
	app.GetGroupSourceID = app.EmptyFunction

	-- Extend the Filter Module to include ItemSource
	app.Modules.Filter.Set.ItemSource = app.EmptyFunction;
	return
end

local RETRIEVING_DATA
	= RETRIEVING_DATA

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemInfoInstant = app.WOWAPI.GetItemInfoInstant;

-- Transmog is supported!
-- Global locals
local ipairs, select, tinsert, pairs, rawget
	= ipairs, select, tinsert, pairs, rawget;
local C_Item_IsDressableItemByID, GetSlotForInventoryType
---@diagnostic disable-next-line: deprecated
	= C_Item.IsDressableItemByID, C_Transmog.GetSlotForInventoryType
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local L, contains, containsAny, SearchForField, SearchForFieldContainer
	= app.L, app.contains, app.containsAny, app.SearchForField, app.SearchForFieldContainer
local C_TransmogCollection_GetItemInfo, C_TransmogCollection_GetSourceInfo
	= C_TransmogCollection.GetItemInfo, C_TransmogCollection.GetSourceInfo;
local C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance,C_TransmogCollection_GetAllAppearanceSources
	= C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance,C_TransmogCollection.GetAllAppearanceSources
local C_TooltipInfo_GetItemByItemModifiedAppearanceID = C_TooltipInfo and C_TooltipInfo.GetItemByItemModifiedAppearanceID

local ATTAccountWideData, AccountSources, CharacterData
-- Stores the SourceID's which are considered collected via Unique logic per Session
-- Each SourceID value represents how many 'learned' SourceIDs grant Unique-collection for itself
local AccountUniqueSources = {}
local function AccountUniqueSources_ADD(sourceID)
	AccountUniqueSources[sourceID] = (AccountUniqueSources[sourceID] or 0) + 1
	-- app.PrintDebug("+UniqueSource",sourceID,AccountUniqueSources[sourceID])
end
local function AccountUniqueSources_REM(sourceID)
	local count = AccountUniqueSources[sourceID]
	if count then
		if count > 1 then
			AccountUniqueSources[sourceID] = count - 1
		else
			AccountUniqueSources[sourceID] = nil
		end
	end
	-- app.PrintDebug("-UniqueSource",sourceID,AccountUniqueSources[sourceID])
end
app.AccountUniqueSources = AccountUniqueSources

-- Inventory Slot Harvester
local SlotByInventoryType = setmetatable({}, {
	__index = function(t, key)
		local slot = GetSlotForInventoryType(key);
		t[key] = slot;
		return slot;
	end
});

-- Source ID Harvester
local inventorySlotsMap = {	-- Taken directly from CanIMogIt (Thanks!)
	["INVTYPE_HEAD"] = {1},
	["INVTYPE_NECK"] = {2},
	["INVTYPE_SHOULDER"] = {3},
	["INVTYPE_BODY"] = {4},
	["INVTYPE_CHEST"] = {5},
	["INVTYPE_ROBE"] = {5},
	["INVTYPE_WAIST"] = {6},
	["INVTYPE_LEGS"] = {7},
	["INVTYPE_FEET"] = {8},
	["INVTYPE_WRIST"] = {9},
	["INVTYPE_HAND"] = {10},
	["INVTYPE_RING"] = {11},
	["INVTYPE_TRINKET"] = {12},
	["INVTYPE_CLOAK"] = {15},
	["INVTYPE_WEAPON"] = {16, 17},
	["INVTYPE_SHIELD"] = {17},
	["INVTYPE_2HWEAPON"] = {16, 17},
	["INVTYPE_WEAPONMAINHAND"] = {16},
	["INVTYPE_RANGED"] = {16},
	["INVTYPE_RANGEDRIGHT"] = {16},
	["INVTYPE_WEAPONOFFHAND"] = {17},
	["INVTYPE_HOLDABLE"] = {17},
	["INVTYPE_TABARD"] = {19},
};
local DressUpModel = CreateFrame('DressUpModel');
local function GetSourceID(itemLink, quick)
	if not itemLink or (C_Item_IsDressableItemByID and not C_Item_IsDressableItemByID(itemLink)) then return nil, false end

	-- Updated function courtesy of CanIMogIt, Thanks AmiYuy and Team! :D
	-- (requires loaded ItemInfo to work for modified appearances)
	if GetItemInfo(itemLink) then
		local sourceID = select(2, C_TransmogCollection_GetItemInfo(itemLink));
		-- app.PrintDebug("TMOGSourceID",sourceID,itemLink)
		if sourceID then return sourceID, true; end
	end

	if quick then return end

	-- app.PrintDebug("Failed to directly retrieve SourceID",itemLink)
	local itemID, _, _, slotName = GetItemInfoInstant(itemLink);
	if slotName then
		local slots = inventorySlotsMap[slotName];
		if slots then
			DressUpModel:SetUnit("player");
			DressUpModel:Undress();
			for _,slot in pairs(slots) do
				---@diagnostic disable-next-line: param-type-mismatch
				DressUpModel:TryOn(itemLink, slot);
				local tmogInfo = DressUpModel:GetItemTransmogInfo(slot);
				if tmogInfo then
					-- app.PrintDebug("SlotInfo",slot)
					-- app.PrintTable(tmogInfo)
					---@diagnostic disable-next-line: undefined-field
					local sourceID = tmogInfo.appearanceID;
					if sourceID and sourceID ~= 0 then
						-- Adjusted to account for non-transmoggable SourceIDs which are collectible
						local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
						if sourceInfo then
							if sourceInfo.itemID == itemID then
								-- app.PrintDebug("DressUpModelSourceID",itemLink,sourceID,sourceInfo.itemID,sourceInfo.name)
								return sourceID, true;
							end
						end
					end
				end
			end
		end
	end
	return nil, true;
end
app.GetSourceID = GetSourceID;
app.GetGroupSourceID = function(group)
	-- does this group rawlink also have a sourceID?
	local sourceID = GetSourceID(group.rawlink);
	if sourceID then group.sourceID = sourceID; end
end

-- Attempts to determine an ItemLink which will return the provided SourceID
app.DetermineItemLink = function(sourceID)
	local link;
	local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID);
	local itemID = sourceInfo and sourceInfo.itemID;
	-- No ItemID don't try to generate the link
	if not itemID then
		-- app.PrintDebug("DetermineItemLink:Fail",sourceID,"(No Source Info from Blizzard)");
		return;
	end
	local itemFormat = "item:"..itemID;
	-- Check Raw Item
	link = itemFormat;
	-- if quality is Artifact / Unmodified Item / Category 'Paired' just return the basic Item string
	if sourceInfo.quality == 6 or sourceInfo.itemModID == 0 or sourceInfo.categoryID == 29 then
		-- app.PrintDebug("DetermineItemLink:Good",link,sourceID,"(Basic Item Data)");
		-- app.PrintTable(sourceInfo)
		return link;
	end
	-- Cannot do this process until the base Item is loaded in the Client
	if not GetItemInfo(link) then
		return RETRIEVING_DATA
	end

	-- 10.2.7 added a quick lookup of loaded sourceID via tooltip info
	local tooltipInfoForSource = C_TooltipInfo_GetItemByItemModifiedAppearanceID and C_TooltipInfo_GetItemByItemModifiedAppearanceID(sourceID)
	if tooltipInfoForSource then
		link = tooltipInfoForSource.hyperlink
		-- app.PrintDebug("DetermineItemLink:TooltipInfo",sourceID,link);
	end

	local checkID, found = GetSourceID(link);
	if found and checkID == sourceID then return link; end

	-- Only try to manually scan for a sourceID if we are Debugging (save regular users from unnecessary lookups)
	if not app.Debugging then return end

	-- Check ModIDs
	-- bonusID 3524 seems to imply "use ModID to determine SourceID" since without it, everything with ModID resolves as the base SourceID from links
	itemFormat = "item:"..itemID..":::::::::::%d:1:3524";
	-- /dump AllTheThings.GetSourceID("item:188859:::::::::::5:1:3524")
	for m=1,199,1 do
		---@diagnostic disable-next-line: undefined-field
		link = itemFormat:format(m);
		checkID, found = GetSourceID(link);
		-- app.PrintDebug(link,checkID,found)
		if found and checkID == sourceID then return link; end
	end

	-- Check BonusIDs
	itemFormat = "item:"..itemID.."::::::::::::1:%d";
	for b=1,13999,1 do
		---@diagnostic disable-next-line: undefined-field
		link = itemFormat:format(b);
		checkID, found = GetSourceID(link);
		-- app.PrintDebug(link,checkID,found)
		if found and checkID == sourceID then return link; end
	end
	-- app.PrintDebug("DetermineItemLink:Fail",sourceID,"(No ModID or BonusID match)");
end

-- Returns: The first found cached group for a given SourceID
-- NOTE: Do not use this function when the results are being passed into an Update afterward
-- or if ATT data has not been loaded yet
local function SearchForSourceIDQuickly(sourceID)
	if sourceID then return SearchForField("sourceID", sourceID)[1]; end
end
local function FilterItemSource(sourceInfo)
	return sourceInfo.isCollected
end
local function FilterItemSourceUnique(sourceInfo, allSources)
	-- NOTE: This makes it so that the loop isn't necessary.
	if sourceInfo.isCollected then return true end

	-- If at least one of the sources of this visual ID was collected, that means that we've collected the provided source
	local checkSourceID = sourceInfo.sourceID
	local item = SearchForSourceIDQuickly(checkSourceID);
	if not item then return end

	local knownItem, knownSource, valid;
	-- app.PrintDebug("FISU",checkSourceID,item.f,item.races,item.c,item.r)
	local factionRaces = app.Modules.FactionData.FACTION_RACES;
	for _,sourceID in ipairs(allSources or C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
		-- only compare against other Sources of the VisualID which the Account knows
		if sourceID ~= checkSourceID and AccountSources[sourceID] == 1 then
			knownItem = SearchForSourceIDQuickly(sourceID);
			if knownItem then
				-- app.PrintDebug("FISU?",sourceID,knownItem.f,knownItem.races,knownItem.c,knownItem.r)
				-- filter matches or one item is Cosmetic
				if item.f == knownItem.f or item.f == 2 or knownItem.f == 2 then
					valid = true;
					-- verify all possible restrictions that the known source may have against restrictions on the source in question
					-- if known source has no equivalent restrictions, then restrictions on the source are irrelevant
					-- Races
					if knownItem.races then
						if item.races then
							-- the known source has a race restriction that is not shared by the source in question
							if not containsAny(item.races, knownItem.races) then valid = nil; end
						else
							valid = nil;
						end
					end
					-- Classes
					if valid and knownItem.c then
						if item.c then
							-- the known source has a class restriction that is not shared by the source in question
							if not containsAny(item.c, knownItem.c) then valid = nil; end
						else
							valid = nil;
						end
					end
					-- Faction
					if valid and knownItem.r then
						if item.r then
							-- the known source has a faction restriction that is not shared by the source or source races in question
							if knownItem.r ~= item.r or (item.races and not containsAny(factionRaces[knownItem.r], item.races)) then valid = nil; end
						else
							valid = nil;
						end
					end

					-- found a known item which meets all the criteria to grant credit for the source in question
					if valid then
						knownSource = C_TransmogCollection_GetSourceInfo(sourceID);
						-- both sources are the same category (Equip-Type)
						if knownSource.categoryID == sourceInfo.categoryID
							-- and same Inventory Type
							and (knownSource.invType == sourceInfo.invType
								or sourceInfo.categoryID == 4 --[[CHEST: Robe vs Armor]]
								or SlotByInventoryType[knownSource.invType] == SlotByInventoryType[sourceInfo.invType])
						then
							return true;
						-- else print("sources share visual and filters but different equips",item.sourceID,sourceID)
						end
					end
				end
			else
				-- OH NOES! It doesn't exist!
				knownSource = C_TransmogCollection_GetSourceInfo(sourceID);
				-- both sources are the same category (Equip-Type)
				if knownSource.categoryID == sourceInfo.categoryID
					-- and same Inventory Type
					and (knownSource.invType == sourceInfo.invType
						or sourceInfo.categoryID == 4 --[[CHEST: Robe vs Armor]]
						or SlotByInventoryType[knownSource.invType] == SlotByInventoryType[sourceInfo.invType])
				then
					-- print("OH NOES! MISSING SOURCE ID ", sourceID, " FOUND THAT YOU HAVE COLLECTED, BUT ATT DOESNT HAVE!!!!");
					return true;
				-- else print(knownSource.sourceID, checkSourceID, "share appearances, but one is ", sourceInfo.invType, "and the other is", knownSource.invType, sourceInfo.categoryID);
				end
			end
		end
	end
	return false
end
local function FilterItemSourceUniqueOnlyMain(sourceInfo, allSources)
	-- NOTE: This makes it so that the loop isn't necessary.
	if sourceInfo.isCollected then return true end

	-- If at least one of the sources of this visual ID was collected, that means that we've acquired the base appearance.
	local item = SearchForSourceIDQuickly(sourceInfo.sourceID);
	if item and not item.nmc and not item.nmr then
		-- This item is for my race and class.
		for i,sourceID in ipairs(allSources or C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
			-- only compare against other Sources of the VisualID which the Account knows
			if sourceID ~= sourceInfo.sourceID and AccountSources[sourceID] == 1 then
				local otherItem = SearchForSourceIDQuickly(sourceID);
				if otherItem and (item.f == otherItem.f or item.f == 2 or otherItem.f == 2) and not otherItem.nmc and not otherItem.nmr then
					return true; -- Okay, fine. You are this class/race. Enjoy your +1, cheater. D:
				end
			end
		end
	end
	return false
end

local function GetUniqueUnlockedSourceIDs(sourceID, visualID, filter)
	local unlockedSourceIDs, allSources = {}, C_TransmogCollection_GetAllAppearanceSources(visualID)
	for _,otherSourceID in ipairs(allSources) do
		-- If this isn't the source we already did work on and we haven't already completed it
		-- app.PrintDebug("CheckUniqueUnlock",otherSourceID,AccountSources[otherSourceID],AccountUniqueSources[otherSourceID])
		if not AccountSources[otherSourceID] or otherSourceID == sourceID then
			local otherSourceInfo = C_TransmogCollection_GetSourceInfo(otherSourceID)
			if otherSourceInfo then
				if otherSourceInfo.isCollected then
					-- app.PrintDebug("CheckUniqueUnlock isCollected")
					-- AccountSources is already set via collection logic
					if not AccountUniqueSources[otherSourceID] then
						unlockedSourceIDs[#unlockedSourceIDs + 1] = otherSourceID
					end
					AccountUniqueSources[otherSourceID] = nil
				elseif filter(otherSourceInfo, allSources) then
					-- app.PrintDebug("CheckUniqueUnlock from filter")
					AccountUniqueSources_ADD(otherSourceID)
					-- if this otherSourceID was collected only from this new sourceID, then track it
					if AccountUniqueSources[otherSourceID] == 1 then
						unlockedSourceIDs[#unlockedSourceIDs + 1] = otherSourceID
					end
				end
			end
		end
	end
	return unlockedSourceIDs
end
local function GetUniqueRemovedSourceIDs(sourceID, visualID, filter)
	local removedSourceIDs, allSources = {}, C_TransmogCollection_GetAllAppearanceSources(visualID)
	for _,otherSourceID in ipairs(allSources) do
		if not AccountSources[otherSourceID] then
			local otherSourceInfo = C_TransmogCollection_GetSourceInfo(otherSourceID)
			-- app.PrintDebug("UniqueRemove?",otherSourceID,otherSourceInfo.isCollected,filter(otherSourceInfo, allSources))
			if otherSourceInfo and not otherSourceInfo.isCollected and not filter(otherSourceInfo, allSources) then
				-- if the otherSourceID will be no longer unique collected due to this removal, then track it
				if otherSourceID == sourceID or AccountUniqueSources[otherSourceID] == 1 then
					removedSourceIDs[#removedSourceIDs + 1] = otherSourceID
				end
				AccountUniqueSources_REM(otherSourceID)
			end
		end
	end
	return removedSourceIDs
end
app.AddCollectionTypeHandler("ItemWithAppearance", function(t)
	-- based on the current ItemSourceFilter assignment (i.e. collection mode)
	local tkey = t.key
	local tval = t[tkey]
	-- change what message format is used
	if app.ItemSourceFilter == FilterItemSource then
		-- Completionist
		-- app.PrintDebug("Completionist Report",app:SearchLink(t))
		local sourceID = t.sourceID
		if not t._missing then
			if app.Settings:GetTooltipSetting("Report:Collected") then
				app.print(L.ITEM_ID_ADDED:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), t.itemID))
			end
		else
			local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID)
			-- always report missing
			app.print(L.ITEM_ID_ADDED_MISSING:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo and sourceInfo.itemID, app.Version))
		end
		app.HandleEvent("OnThingCollected", t)
	else
		-- Unique
		-- app.PrintDebug("Unique Report",app:SearchLink(t))
		local sourceID = t.sourceID
		local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID)
		local unlockedSourceIDs = GetUniqueUnlockedSourceIDs(sourceID, sourceInfo.visualID, app.ItemSourceFilter)
		local newAppearancesLearned = #unlockedSourceIDs
		local newCollected = newAppearancesLearned > 0
		if not t._missing then
			-- TODO eventual setting to control reporting of already collected Things
			if newAppearancesLearned > 0 then
				if app.Settings:GetTooltipSetting("Report:Collected") then
					app.print(L.ITEM_ID_ADDED_SHARED:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), t.itemID, newAppearancesLearned));
				end
				app.HandleEvent("OnThingCollected", t)
				app.UpdateRawIDs(tkey, unlockedSourceIDs)
			end
		else
			-- always report missing
			app.print(L[newCollected and "ITEM_ID_ADDED_SHARED_MISSING" or "ITEM_ID_ADDED_MISSING"]:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID, newAppearancesLearned, app.Version));		app.HandleEvent("OnThingCollected", t)
			app.UpdateRawIDs(tkey, unlockedSourceIDs)
		end
	end
	app.UpdateRawID(tkey, tval)
end)
app.AddRemovalTypeHandler("ItemWithAppearance", function(t)
	-- based on the current ItemSourceFilter assignment (i.e. collection mode)
	local tkey = t.key
	local tval = t[tkey]
	-- change what message format is used
	if app.ItemSourceFilter == FilterItemSource then
		-- Completionist
		-- app.PrintDebug("Completionist Remove",app:SearchLink(t))
		local sourceID = t.sourceID
		if app.Settings:GetTooltipSetting("Report:Collected") then
			app.print(L.ITEM_ID_REMOVED:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), t.itemID))
		end
		app.HandleEvent("OnThingRemoved", t)
	else
		-- Unique
		-- app.PrintDebug("Unique Remove",app:SearchLink(t))
		local sourceID = t.sourceID
		local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID)
		local removedSourceIDs = GetUniqueRemovedSourceIDs(sourceID, sourceInfo.visualID, app.ItemSourceFilter)
		local uniqueRemoved = #removedSourceIDs
		-- TODO eventual setting to control reporting of already collected Things
		if uniqueRemoved > 0 then
			if app.Settings:GetTooltipSetting("Report:Collected") then
				app.print(L.ITEM_ID_REMOVED_SHARED:format(app:SearchLink(t) or ("|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"), sourceInfo.itemID, uniqueRemoved))
			end
			app.HandleEvent("OnThingRemoved", t)
			app.UpdateRawIDs(tkey, removedSourceIDs)
		end
	end
	app.UpdateRawID(tkey, tval)
end)

local VisualIDSourceIDsCache = setmetatable({}, { __index = function(t, visualID)
	local sourceIDs = C_TransmogCollection_GetAllAppearanceSources(visualID)
	t[visualID] = sourceIDs or app.EmptyTable
	return sourceIDs
end})
local CurrentCharacterFilterIDSet
local ArmorTypeMogs = {
	[2] = true,	-- Cosmetic
	[3] = true, -- Cloaks
	[4] = true,	-- Cloth
	[5] = true, -- Leather
	[6] = true, -- Mail
	[7] = true, -- Plate
	[10] = true, -- Shirts
}
local function MainOnlyCanTransmogAppearanceItem(knownItem)
	return not knownItem.nmr and not knownItem.nmc and ArmorTypeMogs[knownItem.f] and CurrentCharacterFilterIDSet[knownItem.f]
end
-- Given a known SourceID, will mark all Shared Visual SourceID's which meet the filter criteria of the known SourceID as 'collected'
local function MarkUniqueCollectedSourcesBySource(knownSourceID, currentCharacterOnly)
	-- Find this source in ATT
	local knownItem = SearchForSourceIDQuickly(knownSourceID);
	if not knownItem then return end

	local knownSource = C_TransmogCollection_GetSourceInfo(knownSourceID);
	if not knownSource then
		app.PrintDebug("Failed to get source info for",knownSourceID)
		return;
	end

	-- For each shared Visual SourceID
	-- if knownSource.visualID == 322 then app.Debugging = true; app.PrintTable(knownSource); end
	-- account cannot collect sourceID? not available for transmog?
	-- local _, canCollect = C_TransmogCollection.AccountCanCollectSource(knownSourceID); -- pointless, always false if sourceID is known
	-- local unknown1 = select(8, C_TransmogCollection.GetAppearanceSourceInfo(knownSourceID)); -- pointless, returns nil for many valid transmogs
	-- Trust that Blizzard returns SourceID's which can actually be used as Transmog for the VisualID
	local sourceIDs = VisualIDSourceIDsCache[knownSource.visualID]
	local canMog;
	local verifySourceIDs
	for _,sourceID in ipairs(sourceIDs) do
		if sourceID == knownSourceID then
			canMog = true;
		end
		-- collect the shared SourceIDs that are not yet calculated
		if not AccountSources[sourceID] then
			if verifySourceIDs then verifySourceIDs[#verifySourceIDs + 1] = sourceID
			else verifySourceIDs = { sourceID } end
		end
	end
	-- cannot mog the known SourceID or have no unknown shared SourceIDs to verify, then leave
	if not canMog or not verifySourceIDs then return; end

	-- this source unlocks a visual that the current character may tmog, so all shared visuals should be considered 'collected' regardless of restriction
	-- for current character only, all we care is that the knownItem is equippable and is not exclusive to another
	-- race/class to consider all shared appearances as 'collected' for the current character
	if currentCharacterOnly and MainOnlyCanTransmogAppearanceItem(knownItem) then
		for _,sourceID in ipairs(verifySourceIDs) do
			AccountUniqueSources_ADD(sourceID)
		end
		return
	end

	local checkItem, checkSource, valid, checkFilter
	local knownRaces, knownClasses, knownFaction, knownFilter = knownItem.races, knownItem.c, knownItem.r, knownItem.f;
	local factionRaces = app.Modules.FactionData.FACTION_RACES;

	for _,sourceID in ipairs(verifySourceIDs) do
		-- app.PrintDebug("visualID",knownSource.visualID,"sourceID",sourceID,"known:",acctSources[sourceID)]
		-- Find the check Source in ATT
		checkItem = SearchForSourceIDQuickly(sourceID);
		if checkItem then
			-- filter matches or one item is Cosmetic
			checkFilter = checkItem.f;
			if checkFilter == knownFilter or checkFilter == 2 or knownFilter == 2 then
				valid = true;
				-- verify all possible restrictions that the known source may have against restrictions on the source in question
				-- if known source has no equivalent restrictions, then restrictions on the source are irrelevant
				-- Races
				if knownRaces then
					if checkItem.races then
						-- the known source has a race restriction that is not shared by the source in question
						if not containsAny(checkItem.races, knownRaces) then valid = nil; end
					else
						valid = nil;
					end
				end
				-- Classes
				if valid and knownClasses then
					if checkItem.c then
						-- the known source has a class restriction that is not shared by the source in question
						if not containsAny(checkItem.c, knownClasses) then valid = nil; end
					else
						valid = nil;
					end
				end
				-- Faction
				if valid and knownFaction then
					if checkItem.r then
						-- the known source has a faction restriction that is not shared by the source or source races in question
						if knownFaction ~= checkItem.r or (checkItem.races and not containsAny(factionRaces[knownFaction], checkItem.races)) then valid = nil; end
					else
						valid = nil;
					end
				end

				-- found a known item which meets all the criteria to grant credit for the source in question
				if valid then
					checkSource = C_TransmogCollection_GetSourceInfo(sourceID);
					-- both sources are the same category (Equip-Type)
					if knownSource.categoryID == checkSource.categoryID
						-- and same Inventory Type
						and (knownSource.invType == checkSource.invType
							or checkSource.categoryID == 4 --[[CHEST: Robe vs Armor]]
							or SlotByInventoryType[knownSource.invType] == SlotByInventoryType[checkSource.invType])
					then
						-- app.PrintDebug("Unique Collected sourceID:",sourceID);
						AccountUniqueSources_ADD(sourceID)
					-- else print("sources share visual and filters but different equips",item.sourceID,sourceID)
					end
				end
			end
		else
			-- OH NOES! It doesn't exist!
			checkSource = C_TransmogCollection_GetSourceInfo(sourceID);
			-- both sources are the same category (Equip-Type)
			if checkSource.categoryID == knownSource.categoryID
				-- and same Inventory Type
				and (checkSource.invType == knownSource.invType
					or knownSource.categoryID == 4 --[[CHEST: Robe vs Armor]]
					or SlotByInventoryType[checkSource.invType] == SlotByInventoryType[knownSource.invType])
			then
				-- print("OH NOES! MISSING SOURCE ID ", sourceID, " FOUND THAT YOU HAVE COLLECTED, BUT ATT DOESNT HAVE!!!!");
				AccountUniqueSources_ADD(sourceID)
			-- else print(knownSource.sourceID, sourceInfo.sourceID, "share appearances, but one is ", sourceInfo.invType, "and the other is", knownSource.invType, sourceInfo.categoryID);
			end
		end
	end
end
local function DetermineMaxATTSourceID()
	-- app.PrintDebug("Initial Session Refresh")
	local maxSourceID = 0;
	for id,_ in pairs(SearchForFieldContainer("sourceID")) do
		-- track the max sourceID so we can evaluate sources not in ATT as well
		if id > maxSourceID then maxSourceID = id; end
	end
	app.MaxSourceID = maxSourceID;
	-- app.PrintDebug("MaxSourceID",maxSourceID)
end
local function CollectUniqueAppearances()
	-- Additionally, for Unique Mode we can grant collection of Appearances which match the Visual of explicitly known SourceIDs if other criteria (Race/Faction/Class) match as well using ATT info
	-- app.PrintDebug("Unique Refresh",app.MaxSourceID)
	wipe(AccountUniqueSources);
	local currentCharacterOnly = app.Settings:Get("MainOnly");
	local ItemSourceFilter = app.ItemSourceFilter;
	-- Simply determine the max known SourceID from ATT cached sources
	if not app.MaxSourceID then DetermineMaxATTSourceID() end
	CurrentCharacterFilterIDSet = app.Presets[app.Class]
	for sourceID=1,app.MaxSourceID do
		-- for each known source
		if AccountSources[sourceID] == 1 then
			-- collect shared visual sources
			MarkUniqueCollectedSourcesBySource(sourceID, currentCharacterOnly)
		end
	end
	local brokenUniqueSources = ATTAccountWideData.BrokenUniqueSources;
	if brokenUniqueSources then
		for sourceID,_ in pairs(brokenUniqueSources) do
			-- special reverse-check-logic for unknown SourceID's whose VisualID does not return
			-- the SourceID from C_TransmogCollection_GetAllAppearanceSources(VisualID)
			-- and haven't already been marked as unique-collected
			if not AccountSources[sourceID] then
				local sInfo = C_TransmogCollection_GetSourceInfo(sourceID)
				if ItemSourceFilter(sInfo) then
					-- app.PrintDebug("Fixed Unique SourceID Collected",sourceID)
					AccountUniqueSources_ADD(sourceID)
				end
			end
		end
	end
	-- app.PrintDebug("Unique Refresh done")
end
local function RefreshAppearanceSources()
	-- app.PrintDebug("RefreshAppearanceSources")
	wipe(AccountSources);
	-- C_TransmogCollection.PlayerKnowsSource is slower and provides less known sources...
	-- Simply determine the max known SourceID from ATT cached sources
	if not app.MaxSourceID then DetermineMaxATTSourceID() end
	-- Then evaluate all SourceIDs under the maximum which are known explicitly
	-- app.PrintDebug("Completionist Refresh")
	for sourceID=1,app.MaxSourceID do
		-- don't need to check for existing value... everything is cleared beforehand
		if C_TransmogCollection_PlayerHasTransmogItemModifiedAppearance(sourceID) then
			AccountSources[sourceID] = 1;
		end
	end
	-- app.PrintDebugPrior("Completionist Refresh done")
end
-- These events are technically 'refresh' of collections, but they also cause different results on
-- 'new settings' since they literally change the cached collection state of SourceIDs based on current
-- settings... maybe in future we can revise how these work so that changing settings doesn't require
-- a full refresh of all SourceID data when we simply want to adjust which SourceIDs we consider collected
-- for instance, Data.Sources would only change in refresh, with nil or 1 being stored
-- and a separate storage for Unique-collected Sources, then adjusting Transmog class logic to allow referencing
-- the Unique table when in Unique mode? maybe once events are all good it won't really matter
app.AddEventHandler("OnRecalculate", function()
	if app.MODE_DEBUG or app.Settings:Get("Thing:Transmog") then
		RefreshAppearanceSources();
		app.HandleEvent("OnSourcesCollected")
	end
end)
app.AddEventHandler("OnSourcesCollected", function()
	if not app.Settings:Get("Completionist") then
		CollectUniqueAppearances();
	end
end)

-- Adds necessary SourceID information for Item data into the Harvest variable
app.SaveHarvestSource = function(data)
	local sourceID, itemID = data.sourceID, data.modItemID;
	if sourceID and itemID then
		-- artifacts do a special modItemID...
		if not data.artifactID then
			local i, m, b = app.GetItemIDAndModID(itemID)
			-- we either want to save using modID OR bonusID, but not both
			if b and b > 0 and b ~= 3524 then
				itemID = app.GetGroupItemIDWithModID(nil, i, nil, b)
			elseif m and m > 0 then
				itemID = app.GetGroupItemIDWithModID(nil, i, m)
			end
		end
		if itemID < 1 then return end
		app.PrintDebug("Harvest",sourceID,"<=",itemID,app:SearchLink(data),data.link or data.text or data.hash)
		AllTheThingsHarvestItems[itemID] = sourceID;
	end
end
local function BuildAppearanceLink(sourceID)
	return "|cffff80ff|Htransmogappearance:" .. sourceID .. "|h[Source " .. sourceID .. "]|h|r"
end

-- Items With Appearances (Item Source)
do
	-- Allows generating and capturing the specific ItemString which represents the SourceID of a group, if possible
	local function GenerateGroupLinkUsingSourceID(group)
		app.DirectGroupRefresh(group)
		local sourceID = group and group.sourceID;
		if not sourceID then return; end

		local link = app.DetermineItemLink(sourceID);
		if not link then
			group.link = BuildAppearanceLink(sourceID)
			return
		end
		-- app.PrintDebug("GGLUS",sourceID,"=>",link)

		if IsRetrieving(link) then
			if not group.CanRetry then
				group.link = BuildAppearanceLink(sourceID)
				return
			end
			app.FunctionRunner.Run(GenerateGroupLinkUsingSourceID, group)
			return
		end

		app.ImportRawLink(group, link, true);
	end
	local ITEM_FILTERS_WITH_APPEARANCES = {
		[2]  = true,	-- Cosmetic
		[3]  = true,	-- Cloaks
		[20] = true,	-- Daggers
		[21] = true,	-- One-Handed Axes
		[22] = true,	-- Two-Handed Axes
		[23] = true,	-- One-Handed Maces
		[24] = true,	-- Two-Handed Maces
		[25] = true,	-- One-Handed Swords
		[26] = true,	-- Two-Handed Swords
		[27] = true,	-- Wands
		[28] = true,	-- Staves
		[29] = true,	-- Polearms
		[31] = true,	-- Guns
		[32] = true,	-- Bows
		[33] = true,	-- Crossbows
		[34] = true,	-- Fist Weapons
	};

	local KEY, CACHE, SETTING = "sourceID", "Sources", "Transmog"
	local CLASSNAME = "ItemWithAppearance"
	local function collected_Completionist(t)
		return AccountSources[t[KEY]]
	end
	local function collected_Unique(t)
		local sourceID = t[KEY]
		return (AccountSources[sourceID] and 1) or (AccountUniqueSources[sourceID] and 2)
	end

	-- Appearance-based Classes
	local AppearanceVariantClasses = { CLASSNAME }

	local AndAppearance = {
		__name = "AndAppearance",
		collectible = function(t) return app.Settings.Collectibles.Transmog end,
		collected = collected_Completionist,
		visualID = function(t)
			local sourceInfo = C_TransmogCollection_GetSourceInfo(t[KEY])
			return sourceInfo and sourceInfo.visualID
		end,
		__condition = function(t) return t.sourceID end,
		__onclassgenerated = function(variantName)
			AppearanceVariantClasses[#AppearanceVariantClasses + 1] = variantName
			-- any appearance-based variant is tracked based on 'Transmog' setting
			app.AddSimpleCollectibleSwap(variantName, SETTING)
		end,
	}
	app.GlobalVariants.AndAppearance = AndAppearance

	-- An appearance must be associated with an item since the Item link is displayed in Transmog UI
	local createItemWithAppearance = app.ExtendClass("Item", CLASSNAME, KEY, {
		CACHE = function() return CACHE end,
		-- this is swapped based on settings
		collectible = AndAppearance.collectible,
		collected = AndAppearance.collected,
		collectedwarband = app.IsClassic and app.EmptyFunction or
		function(t)
			return app.IsAccountCached("SourceItemsOnCharacter", t[KEY])
		end,
		visualID = AndAppearance.visualID,
		-- directly-created source objects can attempt to determine & save their providing ItemID to benefit from the attached Item fields
		itemID = app.IsRetail and function(t)
			if t.__autolink then return; end
			-- async generation of the proper Item Link
			-- itemID is set when Link is determined, so rawset in the group prior so that additional async calls are skipped
			t.__autolink = true;
			app.FunctionRunner.Run(GenerateGroupLinkUsingSourceID, t);
			-- GenerateGroupLinkUsingSourceID(t);
			-- if a value was set within this logic, return it here. weird logic sequencing was previously able to generate the itemID while
			-- caching the modItemID, leading to a 0 itemID return, and caching the item information into a 0-itemID cache record
			return rawget(t, "itemID")
		end,
		baselink = function(t)
			return BuildAppearanceLink(t.sourceID)
		end,
	});
	app.CreateItemSource = app.GameBuildVersion < 50000 and ((C_Seasons and C_Seasons.GetActiveSeason() == 2 and function(sourceID, itemID, t)
		if t and ((not t.q or t.q < 2) or not (t.f and ITEM_FILTERS_WITH_APPEARANCES[t.f])) then
			t[KEY] = sourceID;
			return app.CreateItem(itemID, t);
		end
		t = createItemWithAppearance(sourceID, t);
		t.itemID = itemID;
		return t;
	end) or function(sourceID, itemID, t)
		if t and (not t.q or t.q < 2) then
			t[KEY] = sourceID;
			return app.CreateItem(itemID, t);
		end
		t = createItemWithAppearance(sourceID, t);
		-- Shared Appearances may attempt to create an Item Source without an ItemID
		-- so quickly try to derive one since the Classic Item class doesn't protect against
		-- various situations where a nil itemID can cause problems and createItemWithAppearance
		-- extends from Item
		if not itemID then
			local sourceInfo = C_TransmogCollection_GetSourceInfo(sourceID)
			itemID = sourceInfo and sourceInfo.itemID or -1
		end
		t.itemID = itemID;
		return t;
	end) or function(sourceID, itemID, t)
		t = createItemWithAppearance(sourceID, t);
		-- TEMPORARY
		if itemID and itemID > 0 then
			t.itemID = itemID;
		end
		return t;
	end
	app.AddSimpleCollectibleSwap(CLASSNAME, SETTING)

	-- Extend the Filter Module to include ItemSource
	app.Modules.Filter.Set.ItemSource = function(useUnique, useMainOnly)
		if useUnique then
			if useMainOnly then
				app.ItemSourceFilter = FilterItemSourceUniqueOnlyMain;
			else
				app.ItemSourceFilter = FilterItemSourceUnique;
			end
			for _,classname in ipairs(AppearanceVariantClasses) do
				app.SwapClassDefinitionMethod(classname, "collected", collected_Unique)
			end
		else
			app.ItemSourceFilter = FilterItemSource;
			for _,classname in ipairs(AppearanceVariantClasses) do
				app.SwapClassDefinitionMethod(classname, "collected", collected_Completionist)
			end
		end
	end
end

-- Whenever we can't find a SourceID in ATT data, create a cached version of it so we can keep resolved data
-- instead of always generating new
local UnknownAppearancesCache = setmetatable({}, { __index = function(t, sourceID)
	local sourceGroup = app.CreateItemSource(sourceID)
	t[sourceID] = sourceGroup
	return sourceGroup
end})
local function GetLinkTooltipInfo(sourceGroup, useItemIDs, sameItem)
	local sourceID = sourceGroup.sourceID
	-- when the link never resolves, this link lookup triggers CanRetry prior to being checked below
	local link = sourceGroup.link or sourceGroup.silentLink
	local itemID = sourceGroup.modItemID or sourceGroup.itemID or sourceGroup.silentItemID;
	local itemIDstr = useItemIDs and (" (" .. ((sameItem and "*" or itemID) or "???") .. ")") or ""
	local missingStr = ""
	if IsRetrieving(link) then
		if not sourceGroup.HasRetried then
			link = RETRIEVING_DATA
		else
			missingStr = " |CFFFF0000(INVALID BLIZZARD DATA)|r"
			link = sourceID and BuildAppearanceLink(sourceID) or UNKNOWN
		end
	end
	local text
	local texture = app.GetUnobtainableTexture(sourceGroup);
	if texture then
		text = "|T"..texture..":0|t";
	else
		text = "    ";
	end
	return {
		left = text..link..itemIDstr..missingStr,
		right = app.GetCollectionIcon(sourceGroup.collected),
		working = link == RETRIEVING_DATA
	}
end

-- If data for an Item group is modified in certain ways, we may need to refresh that group
-- This also may take multiple frames since it may rely on SourceID or game API results which are not yet available
app.RefreshItemGroup = function(item)
	if not item or type(item) ~= "table" or not item.itemID then return end

	-- reset dynamic item group information
	item.hash = nil
	item.modItemID = nil
	item.rawlink = nil
	item.link = nil

	if item.sourceID then
		-- app.PrintDebug("RefreshItemGroup.sourceID",item.hash,item.sourceID,"=>",GetSourceID(item.link))
		local sourceID, success = GetSourceID(item.link)
		if not sourceID or not success then
			-- app.PrintDebug("RefreshItemGroup.FR")
			app.FunctionRunner.Run(app.RefreshItemGroup, item)
			return
		end
		if sourceID ~= item.sourceID then
			-- app.PrintDebug("RefreshItemGroup.newsourceID",app:SearchLink(item),sourceID)
			item.sourceID = sourceID
			app.DirectGroupUpdate(item)
		end
	end
end

-- InformationType Functionality
local function AddSourceInformation(sourceID, info, sourceGroup)
	local sourceInfo = sourceID and C_TransmogCollection_GetSourceInfo(sourceID);
	if not sourceInfo then return end
	-- app.PrintDebug("ASI",app:SearchLink(group))
	-- app.PrintGroup(group)
	local working
	local allVisualSources = C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID) or app.EmptyTable;
	if #allVisualSources < 1 or not contains(allVisualSources, sourceID) then
		-- Items with SourceInfo which don't register as having any visual data or don't include themselves as a shared appearance...
		-- This typically happens on Items which can have a collectible SourceID, but not usable for Transmog
		-- don't show the message on Sources which are explicitly non-collectible
		if sourceGroup.collectible ~= false then
			tinsert(info, { left = L.FORCE_REFRESH_REQUIRED, wrap = true, color = app.Colors.TooltipDescription });
		end
	end
	local linkInfo, sourceFilter, otherFilter
	local useItemIDs, origSource = app.Settings:GetTooltipSetting("itemID"), app.Settings:GetTooltipSetting("IncludeOriginalSource")
	if app.Settings:GetTooltipSetting("OnlyShowRelevantSharedAppearances") then
		-- The user doesn't want to see Shared Appearances that don't match the item's requirements.
		for i,otherSourceID in ipairs(allVisualSources) do
			if otherSourceID == sourceID and not sourceGroup.missing then
				if origSource then
					linkInfo = GetLinkTooltipInfo(sourceGroup, useItemIDs, true)
					if not working and linkInfo.working then
						working = true
					end
					info[#info + 1] = linkInfo
				end
			else
				local otherATTSource = app.SearchForObject("sourceID", otherSourceID, "field") or UnknownAppearancesCache[otherSourceID]
				sourceFilter = sourceGroup.f
				otherFilter = otherATTSource.f
				-- Only show Shared Appearances that match the requirements for this class to prevent people from assuming things.
				if (sourceFilter == otherFilter or sourceFilter == 2 or otherFilter == 2) and not otherATTSource.nmc and not otherATTSource.nmr then
					linkInfo = GetLinkTooltipInfo(otherATTSource, useItemIDs)
					if not working and linkInfo.working then
						working = true
					end
					info[#info + 1] = linkInfo
				end
			end
		end
	else
		-- This is where we need to calculate the requirements differently because Unique Mode users are extremely frustrating.
		for i,otherSourceID in ipairs(allVisualSources) do
			if otherSourceID == sourceID and not sourceGroup.missing then
				if origSource then
					linkInfo = GetLinkTooltipInfo(sourceGroup, useItemIDs, true)
					if not working and linkInfo.working then
						working = true
					end
					info[#info + 1] = linkInfo
				end
			else
				local otherATTSource = app.SearchForObject("sourceID", otherSourceID, "field") or UnknownAppearancesCache[otherSourceID]
				linkInfo = GetLinkTooltipInfo(otherATTSource, useItemIDs)
				if not working and linkInfo.working then
					working = true
				end
				local failText = "";
				sourceFilter = sourceGroup.f
				otherFilter = otherATTSource.f
				-- Show all of the reasons why an appearance does not meet given criteria.
				-- Only show Shared Appearances that match the requirements for this class to prevent people from assuming things.
				if sourceFilter ~= otherFilter and sourceFilter ~= 2 and otherFilter ~= 2 then
					-- This is NOT the same type. Therefore, no credit for you!
					if #failText > 0 then failText = failText .. ", "; end
					failText = failText .. (L.FILTER_ID_TYPES[otherATTSource.f] or "???");
				elseif otherATTSource.nmc then
					-- This is NOT for your class. Therefore, no credit for you!
					if #failText > 0 then failText = failText .. ", "; end
					-- failText = failText .. "Class Locked";
					for i,classID in ipairs(otherATTSource.c) do
						if i > 1 then failText = failText .. ", "; end
						failText = failText .. (app.ClassInfoByID[classID].name or "???");
					end
				elseif otherATTSource.nmr then
					-- This is NOT for your race. Therefore, no credit for you!
					if #failText > 1 then failText = failText .. ", "; end
					failText = failText .. L.RACE_LOCKED;
				else
					-- Should be fine
				end

				if #failText > 0 then linkInfo.left = linkInfo.left .. " |CFFFF0000(" .. failText .. ")|r"; end
				info[#info + 1] = linkInfo
			end
		end
	end

	return working;
end

local function CheckSourceInformation(sourceID, info, sourceGroup)
	local sourceInfo = sourceID and C_TransmogCollection_GetSourceInfo(sourceID);
	if not sourceInfo then return end
	-- Special case to double-check VisualID collection in Unique/Main modes because blizzard doesn't return consistent data
	-- non-collected SourceID, non-collected* for Account, and in Unique Mode
	if not sourceInfo.isCollected
		and not AccountSources[sourceID]
		and not AccountUniqueSources[sourceID]
		and not app.Settings:Get("Completionist")
	then
		local collected = app.ItemSourceFilter(sourceInfo);
		if collected then
			-- if this is true here, that means C_TransmogCollection_GetAllAppearanceSources() for this SourceID's VisualID
			-- does not return this SourceID, so it doesn't get flagged by the refresh logic and we need to track it manually for
			-- this Account as being 'collected'
			tinsert(info, {
				left = L.ADHOC_UNIQUE_COLLECTED_INFO,
				color = app.Colors.ChatLinkError
			});
			-- if the tooltip immediately refreshes for whatever reason then
			-- store this SourceID as being collected* so it can be properly collected* during force refreshes in the future without requiring a tooltip search
			local uniqueSources = ATTAccountWideData.BrokenUniqueSources;
			if not uniqueSources then
				uniqueSources = {}
				ATTAccountWideData.BrokenUniqueSources = uniqueSources
			end
			uniqueSources[sourceID] = 1;
		end
	end

	if sourceInfo.categoryID > 0 and sourceGroup.missing then
		local modItemID = app.GetGroupItemIDWithModID(sourceGroup)
		-- Do not localize first part of the message, it is for contribs
		tinsert(info, {
			left = "Item Source not found in the " .. appName .. " " .. app.Version .. " database.\n" .. L.SOURCE_ID_MISSING,
			color = app.Colors.ChatLinkError
		});
		tinsert(info, {
			left = "["..modItemID.."]="..sourceID .. " -- " .. tostring(sourceInfo.visualID)..")",
			color = app.Colors.SourceIgnored
		});
	end
end
local function BuildSourceInformationForPopout(group)
	-- Create groups showing Appearance information
	if not group.sourceID then return end
	-- print(group.__type)
	-- app.PrintGroup(group)
	-- source without an item, try to generate the valid item link for it
	if not group.itemID and not group.artifactID then
		app.ImportRawLink(group, app.DetermineItemLink(group.sourceID));
		-- if we found a Item link, save it into ATTHarvestItems for ease of use (don't need to add Item, parse, Harvest, add harvest, parse)
		app.SaveHarvestSource(group);
	end
	-- Attempt to get information about the source ID.
	local sourceInfo = C_TransmogCollection_GetSourceInfo(group.sourceID);
	if not sourceInfo then return end
	-- print("Source Info on popout")
	-- app.PrintTable(sourceInfo)
	-- Show a list of all of the Shared Appearances.
	local g = {};
	-- Go through all of the shared appearances and see if we've "unlocked" any of them.
	for _,otherSourceID in ipairs(C_TransmogCollection_GetAllAppearanceSources(sourceInfo.visualID)) do
		-- If this isn't the source we already did work on and we haven't already completed it
		if otherSourceID ~= group.sourceID then
			local shared = app.SearchForObject("sourceID", otherSourceID, "key");
			if shared then
				shared = app.CloneObject(shared, true);
				tinsert(g, shared);
				-- print("ATT Appearance:",shared.hash,shared.modItemID)
			else
				local otherSourceInfo = C_TransmogCollection_GetSourceInfo(otherSourceID);
				-- print("Missing Appearance")
				-- app.PrintTable(otherSourceInfo)
				if otherSourceInfo then
					local newItem = app.CreateItemSource(otherSourceID);
					if otherSourceInfo.isCollected then
						AccountSources[otherSourceID] = 1;
					end
					tinsert(g, newItem);
				end
			end
		end
	end
	local appearanceGroup;
	if #g > 0 then
		appearanceGroup = app.CreateNPC(app.HeaderConstants.SHARED_APPEARANCES, {
			OnUpdate = app.AlwaysShowUpdate,
			OnClick = app.UI.OnClick.IgnoreRightClick,
			sourceIgnored = true,
			skipFill = true,
			SortPriority = -2.3,
			g = g,
		});
	else
		appearanceGroup = app.CreateNPC(app.HeaderConstants.UNIQUE_APPEARANCE, {
			OnUpdate = app.AlwaysShowUpdate,
			OnClick = app.UI.OnClick.IgnoreRightClick,
			sourceIgnored = true,
			skipFill = true,
			SortPriority = -2.3,
		});
	end
	-- add the group showing the Appearance information for this popout
	if group.g then tinsert(group.g, appearanceGroup)
	else group.g = { appearanceGroup } end
end
app.AddEventHandler("OnNewPopoutGroup", BuildSourceInformationForPopout)

-- Event Handling
app.AddEventRegistration("TRANSMOG_COLLECTION_SOURCE_ADDED", function(sourceID)
	-- app.PrintDebug("TRANSMOG_COLLECTION_SOURCE_ADDED",sourceID)
	app.SetThingCollected("sourceID", sourceID, true, true)
end)
app.AddEventRegistration("TRANSMOG_COLLECTION_SOURCE_REMOVED", function(sourceID)
	-- app.PrintDebug("TRANSMOG_COLLECTION_SOURCE_REMOVED",sourceID)
	app.SetThingCollected("sourceID", sourceID, true)
end)

app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("SharedAppearances", {
		text = "SharedAppearances",
		HideCheckBox = true,
		priority = 2.85,
		Process = function(t, reference, tooltipInfo)
			local sourceID = reference.sourceID
			if not sourceID then return end
			if AddSourceInformation(sourceID, tooltipInfo, reference) then
				reference.working = true
			end
		end
	})
end)
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("CheckSourceInformation", {
		text = "CheckSourceInformation",
		ForceActive = true,
		HideCheckBox = true,
		priority = 2.86,
		Process = function(t, reference, tooltipInfo)
			local sourceID = reference.sourceID
			if not sourceID then return end
			CheckSourceInformation(sourceID, tooltipInfo, reference)
		end
	})
end)
app.AddEventHandler("OnStartup", function()
	local conversions = app.Settings.InformationTypeConversionMethods;
	conversions.sourceID = function(sourceID)
		-- add a value conversion for sourceID to include a checkmark/x
		local info = C_TransmogCollection_GetSourceInfo(sourceID)
		return sourceID .. " " .. app.GetCollectionIcon(info and info.isCollected)
	end
end);
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	ATTAccountWideData = accountWideData
	if not accountWideData.Sources then accountWideData.Sources = {}; end
	AccountSources = ATTAccountWideData.Sources

	if not accountWideData.SourceItemsOnCharacter then accountWideData.SourceItemsOnCharacter = {}; end

	-- saved var global will exist at this point
	CharacterData = ATTCharacterData
end);

if app.IsRetail then
	local function CheckForUnknownSourceID(link)
		local sourceID = GetSourceID(link)
		if not sourceID then
			-- app.PrintDebug("No SourceID",link)
			return
		end
		if app.IsAccountCached("Sources", sourceID) then
			-- app.PrintDebug("Learned SourceID",sourceID,link)
			app.SetAccountCached("SourceItemsOnCharacter",sourceID)
			return
		end
		-- if wrong class then won't be learned (probably)
		local item = app.SearchForObject("sourceID", sourceID, "field")
		if not item then
			-- ATT doesn't know about this SourceID...
			return
		end
		if item.b ~= 1 then
			-- app.PrintDebug("Non-bound SourceID",sourceID,link)
			return
		end
		if item.nmr then
			-- app.PrintDebug("Wrong race SourceID",sourceID,link)
			return
		end

		app.SetAccountCached("SourceItemsOnCharacter",sourceID,app.GUID)
		-- app.PrintDebug("Unlearned SourceID!",sourceID,link)
		app.WipeSearchCache()
		return
	end
	local CheckValue
	local function ClearIfValue(container, check)
		for id,val in pairs(container) do
			if val == check then
				-- app.PrintDebug("Cleared",id,"from",check)
				container[id] = nil
			end
		end
	end
	local function ClearIfMyGuid(container)
		local guid = app.GUID
		ClearIfValue(container, guid)
	end
	local function ClearIfCheckValue(container)
		ClearIfValue(container, CheckValue)
	end
	-- No longer tracking new Bound Source Items since with TWW all Bound items are automatically learned!
	-- local function CheckForBoundSourceItems()
	-- 	app.ScanInventory(CheckForUnknownSourceID)
	-- end
	local CheckForBoundSourceItems = app.EmptyFunction

	app.AddEventHandler("OnStartup", function()
		app.CallbackHandlers.DelayedCallback(CheckForBoundSourceItems, 5)
		-- Add information type once ATT starts up
		app.Settings.CreateInformationType("collectedwarband", { priority = 11001, HideCheckBox = true, ForceActive = true,
			Process = function(t, reference, tooltipInfo)
				local collectedGuid = t:GetValue(reference)
				if not collectedGuid then return end
				local charData = CharacterData[collectedGuid]
				if not charData then
					app.print("Removing 'collectedwarband' for unknown player Guid!",collectedGuid)
					CheckValue = collectedGuid
					app.SetAccountCachedByCheck("SourceItemsOnCharacter", ClearIfCheckValue)
					CheckValue = nil
					return
				end
				local charName = charData.text or UNKNOWN
				tinsert(tooltipInfo, { right = L.BOUND_ON:format(charName)});
			end
		});
	end);
	app.AddEventRegistration("BANKFRAME_OPENED", function()
		app.SetAccountCachedByCheck("SourceItemsOnCharacter", ClearIfMyGuid)
		app.WipeSearchCache()
		app.CallbackHandlers.DelayedCallback(CheckForBoundSourceItems, 2)
	end)
	app.AddEventHandler("OnRecalculateDone", CheckForBoundSourceItems)
end