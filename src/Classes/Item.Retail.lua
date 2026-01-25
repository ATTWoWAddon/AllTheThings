
local _, app = ...
local L = app.L

-- App locals
local GetRawField, contains
	= app.GetRawField, app.contains
local IsQuestFlaggedCompleted, IsQuestFlaggedCompletedForObject = app.IsQuestFlaggedCompleted, app.IsQuestFlaggedCompletedForObject;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;

-- Global locals
local ipairs, pairs, rawset, rawget, tinsert, math_floor, tonumber, tostring
	= ipairs, pairs, rawset, rawget, tinsert, math.floor, tonumber, tostring
local ItemEventListener = ItemEventListener

-- WoW API Cache
local GetItemInfo = app.WOWAPI.GetItemInfo;
local GetItemIcon = app.WOWAPI.GetItemIcon;
local GetItemCount = app.WOWAPI.GetItemCount;
local IsBoAOverride = C_Item.IsItemBindToAccountUntilEquip or app.ReturnFalse;

-- CRIEVE NOTE: Add this to Classic's LocalizationDB and then remove this.
local L = app.L;
if not rawget(L, "ITEM_NAMES") then
	rawset(L, "ITEM_NAMES", {});
end
if not rawget(L, "SOURCE_NAMES") then
	rawset(L, "SOURCE_NAMES", {});
end

-- Class locals

-- Module locals

-- Returns the ItemID of the group (if existing) with a decimal portion containing the modID/1000 and bonusID/10000000
-- or converts a raw ItemID/ModID/BonusID into the combined modItemID value
-- Ex. 12345 (ModID 5) => 12345.005
-- Ex. 87654 (ModID 23)=> 87654.023
-- Ex. 102938 (ModID 1) (BonusID 4746) => 102938.00104746
local function GetGroupItemIDWithModID(t, rawItemID, rawModID, rawBonusID)
	local i, m, b, e
	if t then
		i = t.itemID or 0
		m = t.modID
		b = t.bonusID
		e = t.extraID
	else
		i = rawItemID and tonumber(rawItemID) or 0
		m = rawModID and tonumber(rawModID)
		b = rawBonusID and tonumber(rawBonusID)
	end
	-- e can only exist in absence of m and b, but needs to not overlap modID space
	if e then
		i = i + (e/1000000)
		return i
	end
	if m then
		i = i + (m / 1000)
	end
	if b and b ~= 3524 then
		i = i + (b / 100000000)
	end
	return i
end
app.GetGroupItemIDWithModID = GetGroupItemIDWithModID;
-- Returns the ItemID, ModID, BonusID of the provided ModItemID
-- Ex. 12345.05		=> 12345, 5
-- Ex. 87654.23		=> 87654, 23
-- Ex. 102938.014746=> 102938, 1, 4746
local function GetItemIDAndModID(modItemID)
	if modItemID and tonumber(modItemID) then
		-- print("GetItemIDAndModID",modItemID)
		local itemID = math_floor(modItemID);
		modItemID = (modItemID - itemID) * 1000.0 + 0.00000005;
		local modID = math_floor(modItemID);
		modItemID = (modItemID - modID) * 100000.0 + 0.00000005;
		local bonusID = math_floor(modItemID);
		-- print(itemID,modID,bonusID)
		return itemID, modID, bonusID;
	end
end
app.GetItemIDAndModID = GetItemIDAndModID
local function GroupMatchesParams(group, key, value, ignoreModID)
	if not group then return false; end
	-- Items are special
	local itemID = group.itemID;
	if itemID and key == "itemID" then
		local modItemID = group.modItemID;
		if modItemID and modItemID == value then
			return true;
		elseif ignoreModID or not modItemID then
			value = GetItemIDAndModID(value);
			return itemID == value;
		end
	end
	-- Other fields can require further verification
	-- Some objects also need to check altquestID for questID
	if key == "questID" then
		if group.otherFactionQuestID == value then return true; end
	-- NPCID can be contained in other fields as well (for now)
	elseif key == "npcID" or key == "creatureID" then
		if group.npcID == value then return true; end
		-- treat encounters with this NPC as a match for the NPC
		if group.encounterID then
			local crs = group.crs
			if crs and contains(crs, value) then
				return true
			end
		end
	-- Criteria contain identical achievementID field, so match by key when checking AchievementID
	-- (currently not a way to directly search CriteriaID...)
	elseif key == "achievementID" then
		if group.key == key and group[key] == value then return true; end
		return
	end
	-- check exact field match for other groups
	if group[key] == value then return true; end
end
app.GroupMatchesParams = GroupMatchesParams;
-- Returns the depth at which a given Item matches the provided modItemID
-- 1 = ItemID, 2 = ModID, 3 = BonusID
local function ItemMatchDepth(item, modItemID)
	if not item or not item.itemID then return; end
	local i, m, b = GetItemIDAndModID(modItemID);
	local depth = 0;
	if item.itemID == i then
		depth = 1;
		if item.modID == m then
			depth = 2;
			if item.bonusID == b then
				depth = 3;
			end
		end
	end
	return depth;
end
-- Refines a set of items down to the most-accurate matches to the provided modItemID
-- The sets of items will be returned based on their respective match depth to the given modItemID
-- Ex: { [1] = { { ItemID }, { ItemID2 } }, [2] = { { ModID } }, [3] = { { BonusID } } }
app.GroupBestMatchingItems = function(items, modItemID)
	if not items or #items == 0 then return; end
	-- print("refining",#items,"by depth to",modItemID)
	-- local i, m, b = GetItemIDAndModID(modItemID);
	local refinedBuckets, depth = {}, nil;
	for _,item in ipairs(items) do
		depth = ItemMatchDepth(item, modItemID);
		if depth then
			-- print("added refined item",depth,item.modItemID,item.key,item.key and item[item.key])
			if refinedBuckets[depth] then tinsert(refinedBuckets[depth], item)
			else refinedBuckets[depth] = { item }; end
		end
	end
	return refinedBuckets;
end
-- Imports the raw information from the rawlink into the specified group
app.ImportRawLink = function(group, rawlink, ignoreSource)
	rawlink = rawlink and rawlink:match("item[%-?%d:]+");
	if not rawlink or not group then return end

	group.rawlink = rawlink;
	-- specific versions of a given Item can actually be BoA while the base version is typically BoP
	-- so store the BoA flag for this instance of the Item
	if IsBoAOverride(rawlink) then
		group.b = 3
	end
	-- importing a rawlink will clear any cached upgrade info for the group
	group._up = nil;
	local _, linkItemID, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, specializationID, upgradeId, modID, bonusCount, bonusID1 = (":"):split(rawlink);
	if not linkItemID then return end

	-- app.PrintDebug("IRL+",rawlink,linkItemID,modID,bonusCount,bonusID1);
	-- set raw fields in the group based on the link
	group.itemID = tonumber(linkItemID);
	group.modID = modID and tonumber(modID) or nil;
	-- only set the bonusID if there is actually bonusIDs indicated
	if (tonumber(bonusCount) or 0) > 0 then
		-- Don't use bonusID 3524 as an actual bonusID
		local b = bonusID1 and tonumber(bonusID1) or nil;
		if b ~= 3524 and b ~= 0 then
			group.bonusID = b;
		end
	end
	group.modItemID = nil;
	if not ignoreSource then
		-- maybe make this a class method...
		app.GetGroupSourceID(group)
	end
	-- really weird situations where both modID and bonusID are empty but item has a 'special' extra ID to distinguish (like artifactID)
	if not group.modID and not group.modID then
		local extraID = tonumber(rawlink:match(":::1:8:(%d+)"))
		if extraID then
			group.extraID = extraID
		end
	end
end
-- Removes the color and hyperlink text/formatting from the link string
local function CleanLink(link)
	if not link then return link end
	local cleaned = link:lower():gsub("|c[%xniq:]+|?h?",""):gsub("|h%[.+","")
	-- :gsub("|cniq[0-9]:[|h]+","")
	-- :gsub("|r","")
	-- app.PrintDebug("CleanLink",link,cleaned)
	-- wanted this to just work to grab the portion of the link which contains the useful data, but
	-- it started being dumb, maybe review later
	-- local cleaned = link:match("[a-z]+[iI]?[dD]?:[%-?%d:]+")
	return cleaned
end
local api = {}
app.Modules.Item = api
api.CleanLink = CleanLink

-- TODO: Once Item information is stored in a single source table, this mechanism can reference that instead of using a cache table here
local CLASS = "Item"
local KEY = "itemID"
local cache = app.CreateCache("modItemID");
local ItemAsyncRefreshFunc
if ItemEventListener then
	ItemAsyncRefreshFunc = function(t)
		local _t, id = cache.GetCached(t)
		if _t.__Retrieved then return end

		_t.__Retrieved = true
		-- app.PrintDebug("RetrievalFunc",t.hash)
		-- app.PrintDebug("Item Callback", id)
		ItemEventListener:AddCallback(math_floor(id), function()
			-- app.PrintDebug("Item Loaded", id)
			app.DirectGroupRefresh(t, true)
			app.ReshowGametooltip()
		end)
		return true
	end
else
	ItemAsyncRefreshFunc = app.EmptyFunction;
end
app.AddEventRegistration("ITEM_DATA_LOAD_RESULT", function(itemID, success)
	if not success then
		local _t = cache.GetCachedByID(itemID)
		-- app.PrintDebug("NoServerData", itemID)
		_t.NoServerData = true
	end
end)
-- Consolidated function to cache available Item information
local function CacheInfo(t, field)
	local itemLink = t.rawlink
	if not itemLink then
		-- need to 'create' a valid accurate link for this item
		itemLink = t.itemID
		local modID, bonusID;
		-- sometimes the raw itemID is actually a modItemID, so try splitting that here as a final adjustment
		itemLink, modID, bonusID = GetItemIDAndModID(itemLink);
		bonusID = t.bonusID or bonusID;
		modID = t.modID or modID;
		if not bonusID or bonusID < 1 then
			bonusID = nil;
			t.bonusID = nil;
		end
		if not modID or modID < 1 then
			modID = nil;
			t.modID = nil;
		end
		local rawbonuses = rawget(t, "bonuses")
		-- app.PrintDebug("default_link",itemLink,modID,bonusID)
		if rawbonuses then
			local bonusesString = #rawbonuses..":"..app.TableConcat(rawbonuses, nil, nil, ":")
			itemLink = ("item:%d:::::::::::%s:%s:"):format(itemLink, modID or "", bonusesString)
			-- set the bonusID to the first bonusID
			t.bonusID = rawbonuses[1]
		elseif bonusID then
			itemLink = ("item:%d:::::::::::%s:1:%d:"):format(itemLink, modID or "", bonusID);
		elseif modID then
			-- bonusID 3524 seems to imply "use ModID to determine SourceID" since without it, everything with ModID resolves as the base SourceID from links
			itemLink = ("item:%d:::::::::::%d:1:3524:"):format(itemLink, modID);
		else
			itemLink = ("item:%d"):format(itemLink);
		end
		-- save this link so it doesn't need to be built again
		t.rawlink = itemLink
		t.modItemID = nil
	end

	local name, link, quality, _, _, _, _, _, _, icon, _, _, _, b = GetItemInfo(itemLink);
	-- app.PrintDebug("RawSetLink:=",itemLink,"->",link)
	local _t, id = cache.GetCached(t)
	if link then
		-- app.PrintDebug("rawset item info",id,link,name,quality,b)
		_t.name = name;
		_t.link = link;
		_t.title = nil
		_t.icon = icon;
		_t.q = quality;
		if quality > 6 then
			-- heirlooms return as 1 but are technically BoE for our concern
			_t.b = 2;
		else
			-- specific versions of a given Item can actually be BoA while the base version is typically BoP
			-- so store the BoA flag for this instance of the Item
			if b and IsBoAOverride(itemLink) then
				t.b = 3
			else
				_t.b = b
			end
		end
	else
		local icon = id and GetItemIcon(id) or 134400
		_t.icon = icon
		if _t.NoServerData or not t.CanRetry then
			if not _t.name then
				local itemName = t.baselink or L.ITEM_NAMES[id] or (t.sourceID and L.SOURCE_NAMES and L.SOURCE_NAMES[t.sourceID])
					or "Item #" .. tostring(id) .. "*";
				_t.title = L.FAILED_ITEM_INFO;
				_t.link = nil;
				_t.sourceID = nil;
				-- save the "name" field in the source group to prevent further requests to the cache
				if _t.NoServerData then
					_t.name = itemName;
					-- app.PrintDebug("NoItemInfo",t.hash)
				end
			end
		end
	end
	if field then return _t[field] end
end
cache.DefaultFunctions.link = CacheInfo
cache.DefaultFunctions.name = CacheInfo
cache.DefaultFunctions.icon = CacheInfo
local function default_specs(t)
	return app.GetFixedItemSpecInfo(t.itemID);
end
local function default_costCollectibles(t)
	local results, id;
	local modItemID = t.modItemID;
	local itemID = t.itemID
	-- Search by modItemID if possible for accuracy
	if modItemID and modItemID ~= itemID then
		id = modItemID;
		results = GetRawField("itemIDAsCost", id);
		-- app.PrintDebug("itemIDAsCost.modItemID",id,results and #results)
	end
	-- If no results, search by itemID + modID only if different
	if not results or #results < 1 then
		id = GetGroupItemIDWithModID(nil, itemID, t.modID);
		if id ~= modItemID then
			results = GetRawField("itemIDAsCost", id);
			-- app.PrintDebug("itemIDAsCost.modID",id,results and #results)
		end
	end
	-- If no results, search by plain itemID only
	if (not results or #results < 1) and itemID then
		id = itemID;
		results = GetRawField("itemIDAsCost", id);
		-- app.PrintDebug("itemIDAsCost.ID",id,results and #results)
	end
	-- Spells on Items can also be a Cost for Things
	local spellID = t.spellID
	if spellID then
		local spellResults = GetRawField("spellIDAsCost", spellID)
		if spellResults and #spellResults > 0 then
			-- app.PrintDebug("Found spell costs on item",#spellResults,spellID,app:SearchLink(spellResults[1]),app:SearchLink(t))
			results = app.ArrayAppend({}, results, spellResults)
		end
	end
	-- If this Item has a SourceID, then try getting cost results based on the matching SourceID's Source Item costCollectibles
	-- (some situations where a Sourced Appearance Item as a Cost has other modItemID variants which also effectively provide the Cost [e.g. Lemix Gear Conversion])
	-- only need to do this extra step if we're on a potentially unusual modItemID
	if (not results or #results < 1) and modItemID ~= itemID and t.sourceID then
		id = t.sourceID;
		local sourcedSource = app.SearchForObject("sourceID", id, "field")
		if sourcedSource then
			results = GetRawField("itemIDAsCost", sourcedSource.modItemID);
			-- app.PrintDebug("sourceID-costs",id,app:RawSearchLink("sourceID",id),"from",app:SearchLink(t),modItemID,itemID)
		-- else app.PrintDebug("non-sourced SourceID for Item with Cost?",id,app:RawSearchLink("sourceID",id))
		end
		-- app.PrintDebug("itemIDAsCost.sourceID",id,sourcedSource.modItemID,results and #results)
	end
	if results and #results > 0 then
		-- not sure we need to copy these into another table
		-- app.PrintDebug("default_costCollectibles",id,#results,app:SearchLink(t))
		return results;
	end
	return app.EmptyTable;
end
local itemFields = {
	_cache = function(t)
		return cache;
	end,
	AsyncRefreshFunc = function()
		return ItemAsyncRefreshFunc
	end,
	icon = function(t)
		return cache.GetCachedField(t, "icon");
	end,
	link = function(t)
		return cache.GetCachedField(t, "link");
	end,
	name = function(t)
		return cache.GetCachedField(t, "name");
	end,
	specs = function(t)
		return cache.GetCachedField(t, "specs", default_specs);
	end,
	q = function(t)
		return cache.GetCachedField(t, "q");
	end,
	b = function(t)
		return cache.GetCachedField(t, "b") or 2;
	end,
	title = function(t)
		return cache.GetCachedField(t, "title");
	end,
	tsm = function(t)
		local itemLink = t.itemID;
		if itemLink then
			local bonusID = t.bonusID;
			if bonusID and bonusID > 0 then
				return ("i:%d:0:1:%d"):format(itemLink, bonusID);
			--elseif t.modID then
				-- NOTE: At this time, TSM3 does not support modID. (RIP)
				--return ("i:%d:%d:1:3524"):format(itemLink, t.modID);
			end
			return ("i:%d"):format(itemLink);
		end
	end,
	modItemID = function(t)
		-- if app.IsReady then app.PrintDebug("item.modItemID?",t.key,t[t.key]) end
		local modItemID = GetGroupItemIDWithModID(t) or t.itemID;
		-- if app.IsReady then app.PrintDebug("item.modItemID=",modItemID) end
		t.modItemID = modItemID;
		return modItemID;
	end,
	indicatorIcon = app.GetQuestIndicator,
	costCollectibles = function(t)
		return cache.GetCachedField(t, "costCollectibles", default_costCollectibles);
	end,
	collectibleAsCost = app.CollectibleAsCost,
	costsCount = function(t)
		if t.costCollectibles then return #t.costCollectibles; end
	end,
	bonuses = function(t)
		local link = t.link
		if IsRetrieving(link) then return end
		local itemVals = {(":"):split(CleanLink(link))}

		-- BonusID count
		local bonusCount = tonumber(itemVals[14])
		if not bonusCount or bonusCount < 1 then
			t.bonuses = app.EmptyTable
			return app.EmptyTable
		end

		local bonusID
		local bonuses = {}
		for i=15,14 + bonusCount,1 do
			bonusID = tonumber(itemVals[i])
			if bonusID then
				bonuses[#bonuses + 1] = bonusID
			end
		end
		t.bonuses = bonuses
		return bonuses
	end,
	-- some calculated properties can let fall-through to the merge source of a group instead of needing to re-calculate in every copy
	isUpgrade = function(t)
		local merge = t.__merge
		if not merge then return end
		return merge.isUpgrade
	end,
	itemString = function(t)
		return CleanLink(t.rawlink or t.link)
	end,
};
-- Module imports
itemFields.collectibleAsUpgrade = app.Modules.Upgrade.CollectibleAsUpgrade;

app.CreateItem = app.CreateClass(CLASS, KEY, itemFields,
"AsHQT", {
	CollectibleType = function() return "QuestsHidden" end,
	collectible = app.CollectibleAsQuest,
	locked = app.GlobalVariants.AndLockCriteria.locked,
	collected = IsQuestFlaggedCompletedForObject,
	trackable = function(t)
		-- raw repeatable quests can't really be tracked since they immediately unflag
		return not rawget(t, "repeatable")
	end,
	saved = function(t)
		return IsQuestFlaggedCompleted(t.questID);
	end
}, (function(t) return t.type == "ihqt"; end),
"WithQuest", {
	CollectibleType = function() return "QuestsHidden" end,
	collectible = app.ReturnFalse,
	locked = app.GlobalVariants.AndLockCriteria.locked,
	collected = IsQuestFlaggedCompletedForObject,
	trackable = function(t)
		-- raw repeatable quests can't really be tracked since they immediately unflag
		return not rawget(t, "repeatable")
	end,
	saved = function(t)
		return IsQuestFlaggedCompleted(t.questID);
	end
}, (function(t) return t.questID; end),
"WithFaction", {
	collectible = function(t)
		return app.Settings.Collectibles.Reputations;
	end,
	collected = function(t)
		return app.TypicalCharacterCollected("Factions", t.factionID, "Reputations")
	end,
	variants = {
		app.GlobalVariants.AndFactionBonus,
	},
}, (function(t) return t.factionID; end));

local function OnClickCostItem(row, button)
	if button ~= "RightButton" then
		return true
	end

	local group = row.ref
	if not group then return true end

	-- perform a search-based popout of the cost item rather than cloning the group
	app.CreatePopoutForSearch(group.key..":"..group.itemID)
	return true
end
-- Wraps the given Type Object as a Cost Item, allowing altered functionality representing this being a calculable 'cost'
local CreateCostItem = app.CreateClass("CostItem", KEY, {
	IsClassIsolated = true,
	-- import the link field from Item so that loading works properly
	ImportFrom = "Item",
	ImportFields = { "link", "AsyncRefreshFunc" },
	-- total is the count of the cost item required
	total = function(t)
		return t.count or 1;
	end,
	-- progress is how many of the cost item your character has anywhere (bag/bank/reagent bank/warband bank)
	progress = function(t)
		return GetItemCount(t.itemID, true, nil, true, true) or 0;
	end,
	collectible = app.ReturnFalse,
	-- show a check when it is has matching quantity in your bags/reagent bank (bank/warband bank don't count at vendors)
	saved = function(t)
		return GetItemCount(t.itemID, nil, nil, true) >= t.total;
	end,
	-- hide any irrelevant wrapped fields of a cost item
	g = app.EmptyFunction,
	costCollectibles = app.EmptyFunction,
	collectibleAsCost = app.EmptyFunction,
	costsCount = app.EmptyFunction,
	OnClick = function() return OnClickCostItem end,
})
app.CreateCostItem = function(t, total)
	local c = app.WrapObject(CreateCostItem(t[KEY]), t);
	c.count = total;
	-- cost items should always be visible for clarity
	c.OnUpdate = app.AlwaysShowUpdate;
	return c;
end

--------------------------------------------
-- MUST HAVE DEBUGGING ENABLED TO UTILIZE --
--------------------------------------------
if not app.Debugging then return end

-- No reason to create all this for the avg user, and pretty sure none of this is typically used anyway
local HarvestedItemDatabase;
local C_Item_GetItemInventoryTypeByID = C_Item.GetItemInventoryTypeByID;
---@class ATTItemHarvesterForRetail: GameTooltip
local ItemHarvester = CreateFrame("GameTooltip", "ATTItemHarvester", UIParent, "GameTooltipTemplate");
ItemHarvester.AllTheThingsIgnored = true;
local CreateItemTooltipHarvester
local FilterBind = app.Modules.Filter.Filters.Bind
app.CreateItemHarvester = app.ExtendClass("Item", "ItemHarvester", "itemID", {
	IsClassIsolated = true,
	visible = app.ReturnTrue,
	RefreshCollectionOnly = true,
	collectible = app.ReturnTrue,
	collected = app.ReturnFalse,
	text = function(t)
		-- delayed localization since ATT's globals don't exist when this logic is processed on load
		if not HarvestedItemDatabase then
			HarvestedItemDatabase = app.LocalizeGlobal("AllTheThingsHarvestItems", true);
		end
		local link = t.link;
		if link then
			app.ImportRawLink(t, link);
			local itemName, _, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, _,
			itemEquipLoc, _, _, classID, subclassID, bindType
				= GetItemInfo(link);
			if itemName then
				local spellName, spellID;
				-- Recipe or Mount, grab the spellID if possible
				if classID == LE_ITEM_CLASS_RECIPE or (classID == LE_ITEM_CLASS_MISCELLANEOUS and subclassID == LE_ITEM_MISCELLANEOUS_MOUNT) then
					spellName, spellID = GetItemSpell(t.itemID);
					-- print("Recipe/Mount",classID,subclassID,spellName,spellID);
					if spellName == "Learning" then spellID = nil; end	-- RIP.
				end
				CreateItemTooltipHarvester(t.itemID, t);
				local info = {
					name = itemName,
					itemID = t.itemID,
					equippable = itemEquipLoc and itemEquipLoc ~= "" and true or false,
					class = classID,
					subclass = subclassID,
					inventoryType = C_Item_GetItemInventoryTypeByID(t.itemID),
					b = bindType,
					q = itemQuality,
					iLvl = itemLevel,
					spellID = spellID,
				};
				if itemMinLevel and itemMinLevel > 0 then
					info.lvl = itemMinLevel;
				end
				if info.inventoryType == 0 then
					info.inventoryType = nil;
				end
				if not FilterBind(info) then
					info.b = nil;
				end
				if info.iLvl and info.iLvl < 2 then
					info.iLvl = nil;
				end
				-- can debug output for tooltip harvesting
				-- if t.itemID == 141038 then
				-- 	info._debug = true;
				-- end
				t.itemType = itemType;
				t.itemSubType = itemSubType;
				t.info = info;
				HarvestedItemDatabase[t.itemID] = info;
				return link;
			end
		end

		local name = t.name;
		-- retries exceeded, so check the raw .name on the group (gets assigned when retries exceeded during cache attempt)
		if name then t.collected = true; end
		return name;
	end
});
CreateItemTooltipHarvester = app.ExtendClass("ItemHarvester", "ItemTooltipHarvester", "itemID", {
	IsClassIsolated = true,
	text = function(t)
		local link = t.link;
		if link then
			ItemHarvester:SetOwner(UIParent,"ANCHOR_NONE")
			ItemHarvester:SetHyperlink(link);
			-- a way to capture when the tooltip is giving information about something that is NOT the current ItemID
			local isSubItem, craftName;
			local lineCount = ItemHarvester:NumLines();
			local tooltipText = ATTItemHarvesterTextLeft1:GetText();
			if not IsRetrieving(tooltipText) and lineCount > 0 then
				-- local debugPrint = t.info._debug;
				-- if debugPrint then print("Item Info:",t.info.itemID) end
				for index=1,lineCount,1 do
					local line = _G["ATTItemHarvesterTextLeft" .. index] or _G["ATTItemHarvesterText" .. index];
					if line then
						local text = line:GetText();
						if text then
							-- sub items within recipe tooltips show this text, need to wait until it loads
							if IsRetrieving(text) then
								t.info.retries = (t.info.retries or 0) + 1;
								-- 30 attempts to load the sub-item, otherwise just continue parsing tooltip without it
								if t.info.retries < 30 then
									return
								end
								app.PrintDebug("Failed loading sub-item for",t.info.itemID)
							end
							-- pull the "Recipe Type: Recipe Name" out if it matches
							if index == 1 then
								-- if debugPrint then
								-- 	print("line match",text:match("^[^:]+:%s*([^:]+)$"))
								-- end
								craftName = text:match("^[^:]+:%s*([^:]+)$");
								if craftName then
									-- whitespace search... recipes have whitespace and then a sub-item
									craftName = "^%s+";
								end
							-- use this name to check that the Item it creates may be listed underneath, by finding whitespace after a matching recipe name
							elseif craftName and text:match(craftName) then
								-- if debugPrint then
									-- print("subitem",t.info.itemID,craftName)
								-- end
								isSubItem = true;
							-- leave the sub-item info when reaching the 'Requires' portion of the parent item tooltip
							elseif isSubItem and text:match("^Requires") then
								-- if debugPrint then
								-- 	print("leaving subitem",t.info.itemID,craftName)
								-- end
								-- leaving the sub-item tooltip when encountering 'Requires '
								isSubItem = nil;
							end

							if not isSubItem then
								-- if debugPrint then print(text) end
								if text:find("Classes: ") then
									local classes = {};
									local _,list = (":"):split(text);
									for i,className in ipairs({(","):split(list)}) do
										tinsert(classes, app.ClassInfoByClassName[className:trim()].classID);
									end
									if #classes > 0 then
										t.info.classes = classes;
									end
								elseif text:find("Races: ") then
									local _,list = (":"):split(text);
									local raceNames = {(","):split(list)};
									if raceNames then
										local races = {};
										for _,raceName in ipairs(raceNames) do
											local race = app.RaceDB[raceName:trim()];
											if not race then
												print("Unknown Race",t.info.itemID,raceName:trim())
											elseif type(race) == "number" then
												tinsert(races, race);
											else -- Pandaren
												for _,panda in pairs(race) do
													tinsert(races, panda);
												end
											end
										end
										if #races > 0 then
											t.info.races = races;
										end
									else
										print("Empty Races",t.info.itemID)
									end
								elseif text:find(" Only") then
									local faction, _, c = (" "):split(text);
									if not c then
										faction = faction:trim();
										if faction == "Alliance" then
											t.info.races = app.Modules.FactionData.FACTION_RACES[1];
										elseif faction == "Horde" then
											t.info.races = app.Modules.FactionData.FACTION_RACES[2];
										else
											print("Unknown Faction",t.info.itemID,faction);
										end
									end
								elseif text:find("Requires") and not text:find("Level") and not text:find("Riding") then
									local c = text:sub(1, 1);
									if c ~= " " and c ~= "\t" and c ~= "\n" and c ~= "\r" then
										text = text:trim():sub(9);
										if text:find("-") then
											t.info.minReputation = app.CreateFactionStandingFromText(text);
										else
											if text:find("%(") then
												if t.info.requireSkill then
													-- If non-specialization skill is already assigned, skip this part.
													text = nil;
												else
													text = ("("):split(text);
												end
											end
											if text then
												local spellName = text:trim();
												if spellName:find("Outland ") then spellName = spellName:sub(9);
												elseif spellName:find("Northrend ") then spellName = spellName:sub(11);
												elseif spellName:find("Cataclysm ") then spellName = spellName:sub(11);
												elseif spellName:find("Pandaria ") then spellName = spellName:sub(10);
												elseif spellName:find("Draenor ") then spellName = spellName:sub(9);
												elseif spellName:find("Legion ") then spellName = spellName:sub(8);
												elseif spellName:find("Kul Tiran ") then spellName = spellName:sub(11);
												elseif spellName:find("Zandalari ") then spellName = spellName:sub(11);
												elseif spellName:find("Shadowlands ") then spellName = spellName:sub(13);
												elseif spellName:find("Classic ") then spellName = spellName:sub(9); end
												if spellName == "Herbalism" then spellName = "Herb Gathering"; end
												spellName = spellName:trim();
												local spellID = app.SpellNameToSpellID[spellName];
												if spellID then
													local skillID = app.SkillDB.SpellToSkill[spellID];
													if skillID then
														t.info.requireSkill = skillID;
													elseif spellName == "Pick Pocket" then
														-- Do nothing, for now.
													elseif spellName == "Warforged Nightmare" then
														-- Do nothing, for now.
													else
														print("Unknown Skill",t.info.itemID, text, "'" .. spellName .. "'");
													end
												elseif spellName == "Previous Rank" then
													-- Do nothing
												elseif spellName == "" then
													-- Do nothing
												elseif spellName == "Brewfest" then
													-- Do nothing, yet.
												elseif spellName == "Call of the Scarab" then
													-- Do nothing, yet.
												elseif spellName == "Children's Week" then
													-- Do nothing, yet.
												elseif spellName == "Darkmoon Faire" then
													-- Do nothing, yet.
												elseif spellName == "Day of the Dead" then
													-- Do nothing, yet.
												elseif spellName == "Feast of Winter Veil" then
													-- Do nothing, yet.
												elseif spellName == "Hallow's End" then
													-- Do nothing, yet.
												elseif spellName == "Love is in the Air" then
													-- Do nothing, yet.
												elseif spellName == "Lunar Festival" then
													-- Do nothing, yet.
												elseif spellName == "Midsummer Fire Festival" then
													-- Do nothing, yet.
												elseif spellName == "Moonkin Festival" then
													-- Do nothing, yet.
												elseif spellName == "Noblegarden" then
													-- Do nothing, yet.
												elseif spellName == "Pilgrim's Bounty" then
													-- Do nothing, yet.
												elseif spellName == "Un'Goro Madness" then
													-- Do nothing, yet.
												elseif spellName == "Thousand Boat Bash" then
													-- Do nothing, yet.
												elseif spellName == "Glowcap Festival" then
													-- Do nothing, yet.
												elseif spellName == "Battle Pet Training" then
													-- Do nothing.
												elseif spellName == "Lockpicking" then
													-- Do nothing.
												elseif spellName == "Luminous Luminaries" then
													-- Do nothing.
												elseif spellName == "Pick Pocket" then
													-- Do nothing.
												elseif spellName == "WoW's 14th Anniversary" then
													-- Do nothing.
												elseif spellName == "WoW's 13th Anniversary" then
													-- Do nothing.
												elseif spellName == "WoW's 12th Anniversary" then
													-- Do nothing.
												elseif spellName == "WoW's 11th Anniversary" then
													-- Do nothing.
												elseif spellName == "WoW's 10th Anniversary" then
													-- Do nothing.
												elseif spellName == "WoW's Anniversary" then
													-- Do nothing.
												elseif spellName == "level 1 to 29" then
													-- Do nothing.
												elseif spellName == "level 1 to 39" then
													-- Do nothing.
												elseif spellName == "level 1 to 44" then
													-- Do nothing.
												elseif spellName == "level 1 to 49" then
													-- Do nothing.
												elseif spellName == "Unknown" then
													-- Do nothing.
												elseif spellName == "Open" then
													-- Do nothing.
												elseif spellName:find(" specialization") then
													-- Do nothing.
												elseif spellName:find(": ") then
													-- Do nothing.
												else
													print("Unknown Spell",t.info.itemID, text, "'" .. spellName .. "'");
												end
											end
										end
									end
								end
							end
						end
					end
				end
				-- if debugPrint then print("---") end
				t.info.retries = nil;
				t.text = link;
				t.collected = true;
			end
			ItemHarvester:Hide();
			return link;
		end
	end
});
