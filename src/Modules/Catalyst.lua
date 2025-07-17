-- Catalyst Module
local _, app = ...;

-- Globals
local setmetatable,tonumber,ipairs,tremove,unpack
	= setmetatable,tonumber,ipairs,tremove,unpack
local GameTooltip = GameTooltip

-- WOWAPI
local C_Item_GetItemInfoInstant,C_Item_GetItemUpgradeInfo
	= C_Item.GetItemInfoInstant,C_Item.GetItemUpgradeInfo

-- App
local containsAnyKey
	= app.containsAnyKey

-- Catalyst API Implementation
-- Access via AllTheThings.Modules.Catalyst
local api = {}
app.Modules.Catalyst = api

-- TODO: should actually return a symlink for each bonusID to select the proper 'catalyst' armor listing from ATT
-- then narrow down the matching armor slot, apply the bonusIDs to the new item, and render into tooltip

-- Helpful Reference: https://www.raidbots.com/static/data/live/item-conversions.json
-- Wago: https://wago.tools/db2/ItemBonus?build=11.1.5.60568&filter%5BType%5D=37&page=2
-- References the CatalystID of the corresponding Catalyst object which contains the available Catalyst results in ATT
-- Blizzard likely has some other meaning for the value I've used for 'catalystID' but it seems to correlate to this purpose
local PossibleCatalystBonusIDLookups = app.ItemConversionDB
if not PossibleCatalystBonusIDLookups then
	app.print("Catalyst Module missing ItemConversionDB! Cannot load!")
	return
end

local CatalystArmorSlots = {
	["INVTYPE_HEAD"] = true,
	["INVTYPE_SHOULDER"] = true,
	["INVTYPE_CLOAK"] = true,
	["INVTYPE_BODY"] = true,
	["INVTYPE_CHEST"] = true,
	["INVTYPE_ROBE"] = true,
	["INVTYPE_WRIST"] = true,
	["INVTYPE_HAND"] = true,
	["INVTYPE_WAIST"] = true,
	["INVTYPE_LEGS"] = true,
	["INVTYPE_FEET"] = true,
}

local CatalystInterchangeSlots = {
	["INVTYPE_CHEST"] = {"INVTYPE_CHEST","INVTYPE_BODY","INVTYPE_ROBE"},
	["INVTYPE_BODY"] = {"INVTYPE_BODY","INVTYPE_CHEST","INVTYPE_ROBE"},
	["INVTYPE_ROBE"] = {"INVTYPE_ROBE","INVTYPE_BODY","INVTYPE_CHEST"},
}

local CatalystArmorSubtypesByClass = {
	[1] = 4,
	[2] = 4,
	[3] = 3,
	[4] = 2,
	[5] = 1,
	[6] = 4,
	[7] = 3,
	[8] = 1,
	[9] = 1,
	[10] = 2,
	[11] = 2,
	[12] = 2,
	[13] = 3,
}
local ClassArmorSubtype = CatalystArmorSubtypesByClass[app.ClassIndex]

local SharedArmorTypeClasses = {[1]={},[2]={},[3]={},[4]={}}
for classID,armorType in pairs(CatalystArmorSubtypesByClass) do
	local classes = SharedArmorTypeClasses[armorType]
	classes[#classes + 1] = classID
end

local function IncludeOtherClassCatalystResults(data)
	-- TODO: improve this, swap function based on settings changes
	local showWithinBoEs = app.MODE_DEBUG_OR_ACCOUNT or app.Settings:Get("Filter:BoEs")
	if not showWithinBoEs then return end

	local ItemUnbound = app.Modules.Filter.Filters.ItemUnbound
	local canShowResults = ItemUnbound(data)
	if not canShowResults then
		-- last check if nested inside a BoE/BoA and allowed to show when nested
		return app.GetRelativeByFunc(data, ItemUnbound)
	end

	local tooltipData = GameTooltip and GameTooltip:GetTooltipData()
	-- not sure how this could happen
	if not tooltipData then return true end

	-- only need to check tooltip data if it matches the data we are testing to catalyst
	if tooltipData.id ~= data.itemID then return true end

	tooltipData = tooltipData.lines
	-- not sure how this could happen either
	if not tooltipData then return true end

	for i=1,#tooltipData do
		-- scan the tooltip data lines for the 'bonding' line, and only return false if the item's tooltip is 'Soulbound'
		-- ref: https://warcraft.wiki.gg/wiki/Enum.TooltipDataItemBinding
		if tooltipData[i].bonding == 3 then return end
	end
	return true
end

local function GetCatalystSlot(data)
	local link = data.link
	if not link then return end

	local itemID, _, _, itemEquipLoc, _, classID, subclassID = C_Item_GetItemInfoInstant(link)
	if not itemID then return end

	-- Armor only / Slot
	if classID ~= 4 or not CatalystArmorSlots[itemEquipLoc] then return end

	-- Correct Armor type for current Class (or a Cloth Cloak)
	if not (subclassID == ClassArmorSubtype or (itemEquipLoc == "INVTYPE_CLOAK" and subclassID == 1)) then
		-- check BoA too if not for current class
		local boaIncluded = IncludeOtherClassCatalystResults(data)
		if not boaIncluded then return end

		data.__boaIncluded = boaIncluded
	end

	return itemEquipLoc
end

local CatalystUpgradeTrackShift = {
	-- 972 = Veteran = LFR -> Champion
	[972] = 973,
	-- 973 = Champion = Normal -> Hero
	[973] = 974,
	-- 974 = Hero = Heroic -> Myth
	[974] = 978,
	-- 978 = Myth = Mythic -> Myth
	[978] = 978,
}

local function GetCatalysts(data)
	-- app.PrintDebug("GetCatalyst", data.hash)
	data._cata = 0
	local bonuses = data.bonuses
	if not bonuses or #bonuses < 1 then return end
	local bonusID = containsAnyKey(PossibleCatalystBonusIDLookups, bonuses)
	if not bonusID then return end
	local slot = GetCatalystSlot(data)
	if not slot then return end

	local catalystID = PossibleCatalystBonusIDLookups[bonusID]
	-- app.PrintDebug("Can Catalyst!",catalystID,app:SearchLink(data))
	local upgradeInfo = C_Item_GetItemUpgradeInfo(data.link)
	if not upgradeInfo then return end -- shouldn't happen

	local upgradeTrackID = upgradeInfo.trackStringID or 973	-- TODO: revisit with SL Catalysts...
	local upgradeLevel = upgradeInfo.currentLevel or 0

	-- If our upgrade level is 5+ then the item is actually on the next matching trackID for catalyst output
	if upgradeLevel > 4 then
		upgradeTrackID = CatalystUpgradeTrackShift[upgradeTrackID]
	end

	-- Create a Catalyst group to contain the resulting Catalyst Item
	local SymlinkGroup = {
		sym = {{"sub","catalyst_select_proper_tier_item",
			catalystID,
			upgradeTrackID,
			app.ClassIndex,
			slot,
			data}}
	}

	local catalystResults = app.ResolveSymbolicLink(SymlinkGroup, true)
	if not catalystResults or #catalystResults == 0 then
		app.PrintDebug("Catalyst Item failed to find matching catalyst output",catalystID,upgradeTrackID,slot,app:SearchLink(data))
		return
	end

	local newBonuses = app.CloneArray(bonuses)
	tremove(newBonuses, app.indexOf(newBonuses, bonusID))
	local catalystResult
	for i=1,#catalystResults do
		catalystResult = catalystResults[i]
		-- Copy all but the catalyst bonusID to the resulting item
		-- TODO: probably build a proper rawlink instead so it works properly for further nesting
		catalystResult.bonuses = newBonuses
		-- use a ridiculous bonusID to force the item cache to not find a matching modItemID
		-- hacky af but idk...
		catalystResult.bonusID = 99999
		-- Don't let a baked-in upgrade persist since our upgradeLevel might not allow it
		catalystResult.up = nil
		catalystResult._up = nil
		catalystResult.rawlink = nil
		catalystResult.filledType = "CATALYST"
	end

	-- app.PrintDebug("Catalyst Result:",catalystResult.hash,catalystResult.up,app:SearchLink(catalystResult))
	-- app.PrintTable(catalystResult.bonuses)
	data._cata = catalystResults
	return catalystResults
end

local function catalyst_select_proper_tier_item(ResolveFunctions)
	local select, pop, contains, find, invtype, is, isnt =
		ResolveFunctions.select,
		ResolveFunctions.pop,
		ResolveFunctions.contains,
		ResolveFunctions.find,
		ResolveFunctions.invtype,
		ResolveFunctions.is,
		ResolveFunctions.isnt
	return function(finalized, searchResults, o, cmd, catalystID, trackID, classID, armorSlot, baseItem)

		-- app.PrintDebug("Find Catalyst",catalystID, trackID, classID, armorSlot, app:SearchLink(baseItem))
		-- Select the Catalyst Object
		-- TODO: need to standardize Catalyst data listings...
		-- 1 Catalyst per Tier, list entirely within respective Raid
		select(finalized, searchResults, o, "select", "catalystID", catalystID)
		-- app.PrintDebug("Found",#searchResults,"catalysts for",catalystID)

		-- PvP Items should have a separate Catalyst root
		local ispvp = baseItem.pvp
		if ispvp then
			is(finalized, searchResults, o, "is", "pvp")
			pop(finalized, searchResults)
			-- app.PrintDebug("find pvp version of catalyst",catalystID,app:SearchLink(baseItem),#searchResults)
		else
			isnt(finalized, searchResults, o, "isnt", "pvp")
		end

		-- Find the Upgrade Track
		-- TODO: if we have multiple pvp variants again probably have to revisit this
		if not ispvp then
			find(finalized, searchResults, o, "find", "trackID", trackID)
			-- app.PrintDebug("Track group contains",#searchResults,"groups")
			pop(finalized, searchResults)
		end

		-- Only 1 Class result
		-- if item is really BoP or not Account Mode or not Ignore BoE Filters
		local includeBoA = baseItem.__boaIncluded or IncludeOtherClassCatalystResults(baseItem)
		if not includeBoA then
			-- Find the Class
			contains(finalized, searchResults, o, "contains", "c", classID)
			-- app.PrintDebug("Matching",#searchResults,"groups by c =",classID)
			pop(finalized, searchResults)	-- this includes the sym on the Class
			-- app.PrintDebug("Class group contains",#searchResults,"items")
		else
			-- get the Armor type of the Item
			local _, _, _, itemEquipLoc, _, _, armorType = C_Item_GetItemInfoInstant(baseItem.link)
			-- popout all the matching Armor Type items (if not a cloak)
			if itemEquipLoc ~= "INVTYPE_CLOAK" then
				contains(finalized, searchResults, o, "contains", "c", unpack(SharedArmorTypeClasses[armorType]))
				-- app.PrintDebug("Matching",#searchResults,"groups by c =",unpack(SharedArmorTypeClasses[armorType]))
			end
			pop(finalized, searchResults)
			-- app.PrintDebug("All Class group contains",#searchResults,"items")
		end

		-- Match the slot
		local interchanges = CatalystInterchangeSlots[armorSlot]
		if interchanges then
			invtype(finalized, searchResults, o, "invtype", unpack(interchanges))
			-- app.PrintDebug("Filtered to",#searchResults,"via slot",unpack(interchanges))
		else
			invtype(finalized, searchResults, o, "invtype", armorSlot)
			-- app.PrintDebug("Filtered to",#searchResults,"via slot",armorSlot)
		end
	end
end

-- Event Handling
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkSubroutine("catalyst_select_proper_tier_item", catalyst_select_proper_tier_item)

	local Fill = app.Modules.Fill
	if not Fill then return end

	local CreateObject = app.__CreateObject
	Fill.AddFiller("CATALYST",
	function(t, FillData)
		local catalystResults = t._cata or GetCatalysts(t)
		if not catalystResults or catalystResults == 0 then return end

		local objs = {}
		local o
		for i=1,#catalystResults do
			o = CreateObject(catalystResults[i])
			if not o.collected then
				t.filledCatalyst = true
			end
			objs[i] = o
		end
		-- app.PrintDebug("filledCatalyst=",#objs,"<",t.modItemID)
		return objs
	end,
	{
		ScopesIgnored = { "LIST" },
		SettingsIcon = app.asset("Interface_Catalyst"),
		SettingsTooltip = "Fills the Catalyst |T"..app.asset("Interface_Catalyst")..":0|t result of the current Item if one is possible and determined via ATT.\n\nNOTE: This Filler is not applied to the ATT Mini List."
	})
end)