
-- Costs Module
local _, app = ...;
local L = app.L

-- Concepts:
-- Encapsulates the functionality for handling and checking Cost information

-- Global locals
local rawget, ipairs, pairs, type,math_min,wipe
	= rawget, ipairs, pairs, type,math.min,wipe
local PlayerHasToy
	= PlayerHasToy

-- WoW API Cache
local GetCurrencyInfo = app.WOWAPI.GetCurrencyInfo;

-- App locals
local SearchForFieldContainer, GetRawField, GetRelativeByFunc, SearchForObject, IsComplete
	= app.SearchForFieldContainer, app.GetRawField, app.GetRelativeByFunc, app.SearchForObject, app.IsComplete
local OneTimeQuests = app.EmptyTable
local GetItemCount = app.WOWAPI.GetItemCount
local IsSpellKnownHelper, CreateObject, FillGroups

-- Module locals
local RecursiveGroupRequirementsFilter, RecursiveAccountFilter, DGU, UpdateRunner, ExtraFilters
-- If a Thing which has a cost is not a quest or is available as a quest
local function IsAvailable(ref)
	return not ref.questID or app.IsQuestAvailable(ref)
end
local CostLinkedFillOptions = {Fillers={}}

local Depth = 0
local CostDebugIDs = {
	-- ["ALL"] = true,
	-- ["DEPTH"] = 10,
	-- [209944] = true,	-- Friendsurge Defenders
	-- [2118] = true,	-- Elemental Overflow
	-- [195496] = true,	-- Eye of the Vengeful Hurricane
	-- [195502] = true,	-- Terros' Captive Core
	-- [24449] = true,	-- Fertile Spores
	-- [1885] = true,	-- Grateful Offering
	-- [168946] = true,	-- Bundle of Recyclable Parts
	-- [175140] = true,	-- All-Seeing Eyes
	-- [175141] = true,	-- All-Seeing Left Eye
	-- [175142] = true,	-- All-Seeing Right Eye
	-- [207026] = true,	-- Dreamsurge Coalescence
	-- [205052] = true,	-- Miloh
	-- [515] = true,	-- DMF Ticket
	-- [241] = true,	-- Champion's Seal
	-- [40610] = true,	-- Chestguard of the Lost Conqueror [10M]
	-- [194681] = true,	-- Sugarwing Cupcake
	-- [193215] = true,	-- Scaleseeker Mezeri
	-- [24368] = true,	-- Coilfang Armaments
	-- [9766] = true,	-- Coilfang Armaments (quest)
}
local function PrintDebug(id, ...)
	if CostDebugIDs.ALL then
		app.PrintDebug("DEBUG.ALL",id,...)
	elseif CostDebugIDs[id] then
		app.PrintDebug("DEBUG.ID",id,...)
	elseif Depth >= (CostDebugIDs.DEPTH or 999999) then
		app.PrintDebug("DEBUG.DEPTH:",Depth,...)
	end
end

local function FilterRequirement(ref)
	return RecursiveGroupRequirementsFilter(ref, ExtraFilters) and 1 or RecursiveAccountFilter(ref) and 2 or 3
end
-- Function which returns if a Thing has a cost based on a given 'ref' Thing, which has been previously determined as a
-- possible collectible. The return value indicates the collectibility
-- nil - Already collected or not available to obtain
-- 1 - Available to collect based on current Filtering
-- 2 - Available to collect based on only Unobtainable Filtering
-- 3 - Available to collect without Filtering
local function CheckCollectible(ref, costid)
	-- local RefSearch = app:RawSearchLink(ref.key,ref.keyval)
	-- Depth = Depth + 1
	-- Only track Costs through Things which are Available
	if not IsAvailable(ref) then
		-- PrintDebug(costid, "Non-available Thing blocking Cost chain",RefSearch)
		return;
	end
	-- PrintDebug(costid, "CheckCollectible",RefSearch,ref.__FillGroups,FilterRequirement(ref))
	-- Used as a cost for something which is collectible itself and not collected
	if ref.collectible and not ref.collected then
		-- PrintDebug(costid, "Purchase via Collectible",RefSearch,FilterRequirement(ref) == 1 and "VISIBLE" or FilterRequirement(ref) == 2 and "ACCOUNT" or "FILTERED")
		return FilterRequirement(ref)
	end
	-- If this group has sub-groups, are any of them collectible?
	local g = ref.g;
	if g then
		local o, collectible
		local mincollectible
		-- local subDepth = Depth
		for i=1,#g do
			o = g[i];
			-- Depth = subDepth
			collectible = CheckCollectible(o, costid)
			if collectible then
				mincollectible = math_min(collectible,mincollectible or 99)
				-- PrintDebug(costid, "Purchase via sub-group Collectible",collectible,RefSearch,"<=",app:RawSearchLink(o.key,o[o.key]))
				-- quick escape if we've already determined this container contains something visible with current filters
				if mincollectible == 1 then return mincollectible end
			end
		end
		-- PrintDebug(costid, "mincollectible after no collectible sub-groups",mincollectible,RefSearch)
		if mincollectible then return mincollectible end
	end
	-- Used as a cost for something which is collectible as a cost itself
	if ref.collectibleAsCost then
		-- PrintDebug(costid, "Purchase via collectibleAsCost",RefSearch,FilterRequirement(ref) == 1 and "VISIBLE" or FilterRequirement(ref) == 2 and "ACCOUNT" or "FILTERED")
		return FilterRequirement(ref)
	end
	-- NPC/Sym are Filler checks
	if not ref.__FillGroups then
		local clone = CreateObject(ref, true)
		FillGroups(clone, CostLinkedFillOptions)
		if clone.g then
			-- PrintDebug(costid, "Check filled cost",RefSearch)
			return CheckCollectible(clone, costid)
		end
	end
end
app.CheckCollectible = CheckCollectible;
local ItemUnboundSetting, Filters_ItemUnbound
-- Contains the functions to return if the CheckCollectible return value is acceptable under the current conditions
-- 1 - Available to collect based on current Filtering
-- 2 - Available to collect based on only Unobtainable Filtering
-- 3 - Available to collect without Filtering
local CollectibleAcceptible = {
	[1] = true,
}
local function CacheFilters()
	-- Cache repeat-used functions/values
	local filterModule = app.Modules.Filter
	RecursiveGroupRequirementsFilter = filterModule.Filters.RecursiveGroupRequirementsExtraFilter
	RecursiveAccountFilter = filterModule.Filters.RecursiveGroupRequirementsFilter_Account
	Filters_ItemUnbound = filterModule.Filters.ItemUnbound
	ItemUnboundSetting = filterModule.Get.ItemUnbound()
	if ItemUnboundSetting then
		CollectibleAcceptible[2] = function(itemUnbound) return itemUnbound end
	else
		CollectibleAcceptible[2] = nil
	end
end
app.AddEventHandler("OnLoad", CacheFilters)
local function BlockedParent(group)
	if group.questID and (group.saved or group.locked or OneTimeQuests[group.questID]) then
		return group
	end
end
local CurrencyAmounts = setmetatable({}, { __index = function(t, key)
	local currencyInfo = GetCurrencyInfo(key)
	t[key] = (currencyInfo and currencyInfo.quantity) or 0
	return t[key]
end})
local CostTotals = {
	i = {},
	ip = {},
	c = {},
	sp = {},
}
local function ResetCostTotals()
	-- app.PrintDebug("Reset Cost Totals")
	wipe(CostTotals.i)
	wipe(CostTotals.ip)
	wipe(CostTotals.c)
	wipe(CostTotals.sp)
	wipe(CurrencyAmounts)
end
do
	local itotals = CostTotals.i
	local iprovs = CostTotals.ip
	local ctotals = CostTotals.c
	local sprovs = CostTotals.sp

	CostTotals.AddItem = function(id, amount, ref)
		local total = (itotals[id] or 0) + amount
		itotals[id] = total
		-- PrintDebug(id, "Add Item Cost Amount",id,amount,"=>",total,"from",app:SearchLink(ref))
		return total
	end
	CostTotals.AddItemProvider = function(id, ref)
		iprovs[id] = true
		-- PrintDebug(id, "Add Item Provider",id,"from",app:SearchLink(ref))
		return true
	end
	CostTotals.AddSpellProvider = function(id, ref)
		sprovs[id] = true
		-- PrintDebug(id, "Add Spell Provider",id,"from",app:SearchLink(ref))
		return true
	end
	CostTotals.AddCurr = function(id, amount, ref)
		local total = (ctotals[id] or 0) + amount
		ctotals[id] = total
		-- PrintDebug(id, "Add Curr Cost Amount",id,amount,"=>",total,"from",app:SearchLink(ref))
		return total
	end
end
local function SetCostTotals(costs, isCost, refresh, costID, isOwnedCost)
	-- Iterate on the search result of the entry key
	local parent, blockedBy
	-- PrintDebug(costID, "SetCostTotals",#costs,isCost)
	for _,c in ipairs(costs) do
		-- Mark the group with a costTotal
		-- PrintDebug(costID, "Force Cost",app:SearchLink(c),isCost,c.hash,c.modItemID or c.currencyID)
		c._SettingsRefresh = refresh;
		c.isOwnedCost = isOwnedCost
		-- only mark cost on visible content
		if isCost and RecursiveGroupRequirementsFilter(c, ExtraFilters) then
			parent = c.parent
			blockedBy = GetRelativeByFunc(parent, BlockedParent)
			if not blockedBy then
				c.isCost = isCost
				-- PrintDebug(costID, "Unblocked Cost",app:SearchLink(c))
			else
				c.isCost = nil;
				-- PrintDebug(costID, "Skipped cost under locked/saved parent"
				-- 	,app:SearchLink(c)
				-- 	,app:SearchLink(blockedBy))
			end
		else
			-- PrintDebug(costID, "Not a cost",app:SearchLink(c))
			c.isCost = nil;
		end
		-- regardless of the Cost state, make sure to update this specific cost group for visibility
		DGU(c)
	end
end
local function DoCollectibleCheckForItemRef(ref, itemID, itemUnbound)
	-- Depth = 0
	local collectible = CheckCollectible(ref, itemID)
	if not collectible then return end
	local isCollectibleAcceptable = CollectibleAcceptible[collectible]
	if not isCollectibleAcceptable or (isCollectibleAcceptable ~= true and not isCollectibleAcceptable(itemUnbound)) then
		-- if collectible == 2 then
		-- 	if not itemUnbound then
		-- 		PrintDebug(itemID, app:SearchLink(ref),"is only collectible without Default Filtering, but from a BoP Item",app:RawSearchLink("itemID",itemID))
		-- 	end
		-- 	if not ItemUnboundSetting then
		-- 		PrintDebug(itemID, app:SearchLink(ref),"is only collectible without Default Filtering, but not ignoring BoE Item filtering",app:RawSearchLink("itemID",itemID))
		-- 	end
		-- elseif collectible == 3 then
		-- 	PrintDebug(itemID, app:SearchLink(ref),"is only collectible without Account Filtering",app:RawSearchLink("itemID",itemID))
		-- end
		return
	end
	-- PrintDebug(itemID, app:SearchLink(ref),"collectible with Default Filtering",app:RawSearchLink("itemID",itemID))
	local refproviders = ref.providers
	if refproviders and type(refproviders) == "table" then
		for _,providerCheck in ipairs(refproviders) do
			if providerCheck[1] == "i" and providerCheck[2] == itemID then
				CostTotals.AddItemProvider(itemID)
				break
			end
		end
	end
	local refcosts = ref.cost
	if refcosts and type(refcosts) == "table" then
		for _,costCheck in ipairs(refcosts) do
			if costCheck[1] == "i" and costCheck[2] == itemID then
				-- add the total item cost amount from this ref to our tracker
				CostTotals.AddItem(itemID, costCheck[3], ref)
				break
			end
		end
	end
end
local function DoCollectibleCheckForCurrRef(ref, currencyID)
	-- Depth = 0
	local collectible = CheckCollectible(ref, currencyID)
	-- Not currently considering transferrable currencies as being 'BoE', but maybe something to think about
	-- 2 - requires Account filtering to include
	-- 3 - required Unobtainable filtering to include
	if not collectible then return end
	if collectible > 1 then
		-- if collectible == 2 then
		-- 	PrintDebug(currencyID, app:SearchLink(ref),"collectible without Default Filtering",app:RawSearchLink("currencyID",currencyID))
		-- elseif collectible == 3 then
		-- 	PrintDebug(currencyID, app:SearchLink(ref),"collectible without Account Filtering",app:RawSearchLink("currencyID",currencyID))
		-- end
		return
	end
	-- PrintDebug(currencyID, app:SearchLink(ref),"collectible with Default Filtering",app:RawSearchLink("currencyID",currencyID))
	local refcosts = ref.cost
	if refcosts and type(refcosts) == "table" then
		for _,costCheck in ipairs(refcosts) do
			if costCheck[1] == "c" and costCheck[2] == currencyID then
				-- add the total currency cost amount from this ref to our tracker
				CostTotals.AddCurr(currencyID, costCheck[3], ref)
				break
			end
		end
	end
end
local function DoCollectibleCheckForSpellRef(ref, spellID, itemUnbound)
	-- Depth = 0
	local collectible = CheckCollectible(ref, spellID)
	if not collectible then return end
	local isCollectibleAcceptable = CollectibleAcceptible[collectible]
	if not isCollectibleAcceptable or (isCollectibleAcceptable ~= true and not isCollectibleAcceptable(itemUnbound)) then
		-- if collectible == 2 then
		-- 	if not itemUnbound then
		-- 		PrintDebug(spellID, app:SearchLink(ref),"is only collectible without Default Filtering, but from a Spell on a BoP Item",app:RawSearchLink("spellID",spellID))
		-- 	end
		-- 	if not ItemUnboundSetting then
		-- 		PrintDebug(spellID, app:SearchLink(ref),"is only collectible without Default Filtering, but not ignoring BoE Item filtering",app:RawSearchLink("spellID",spellID))
		-- 	end
		-- elseif collectible == 3 then
		-- 	PrintDebug(spellID, app:SearchLink(ref),"is only collectible without Account Filtering",app:RawSearchLink("spellID",spellID))
		-- end
		return
	end
	-- PrintDebug(spellID, app:SearchLink(ref),"collectible with Default Filtering",app:RawSearchLink("spellID",spellID))
	local refproviders = ref.providers
	if refproviders and type(refproviders) == "table" then
		for _,providerCheck in ipairs(refproviders) do
			if providerCheck[1] == "s" and providerCheck[2] == spellID then
				CostTotals.AddSpellProvider(spellID)
				break
			end
		end
	end
end
local function PlayerIsMissingProviderItem(itemID)
	return not PlayerHasToy(itemID) and GetItemCount(itemID, true, nil, true, true) == 0
end
local function FinishCostAssignmentsForItem(itemID, costs, refresh)
	local isProv = CostTotals.ip[itemID]
	local total = CostTotals.i[itemID] or 0
	local owned = 0
	local isCost
	if total > 0 or not isProv then
		owned = total > 0 and GetItemCount(itemID, true, nil, true, true) or 0
		isCost = total > owned
		-- PrintDebug(itemID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
	else
		isProv = PlayerIsMissingProviderItem(itemID)
		-- PrintDebug(itemID, app:SearchLink(costs[1]),isProv and "IS PROV" or "NOT PROV")
	end
	local isOwnedCost = (not isCost and owned > 0) or nil
	SetCostTotals(costs, isCost or isProv, refresh, itemID, isOwnedCost)
end
local function FinishCostAssignmentsForCurr(currencyID, costs, refresh)
	local total = CostTotals.c[currencyID] or 0
	local owned = CurrencyAmounts[currencyID]
	local isCost = total > owned
	-- PrintDebug(currencyID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
	SetCostTotals(costs, isCost, refresh, currencyID)
end
local function PlayerIsMissingProviderSpell(spellID)
	return not IsSpellKnownHelper(spellID)
end
local function FinishCostAssignmentsForSpell(spellID, costs, refresh)
	local isProv = CostTotals.sp[spellID]
	if isProv then
		isProv = PlayerIsMissingProviderSpell(spellID)
		-- if isProv then
		-- 	PrintDebug(spellID, app:SearchLink(costs[1]),"IS PROV")
		-- else
		-- 	PrintDebug(spellID, app:SearchLink(costs[1]),"NOT PROV")
		-- end
	end
	SetCostTotals(costs, isProv, refresh, spellID)
end

local UpdateCostGroup
local function UpdateCostsByItemID(itemID, refresh, includeUpdate, refs)
	local costs = SearchForObject("itemID", itemID, "field", true);
	if costs and #costs > 0 then
		-- PrintDebug(itemID, #costs,"item cost groups @",app:SearchLink(costs[1]))
		-- local isCost, isProv
		local itemUnbound = Filters_ItemUnbound(costs[1])
		refs = refs or GetRawField("itemIDAsCost", itemID)
		if refs then
			-- if #refs > 100 then PrintDebug(itemID, #refs,"item ref groups for",app:SearchLink(costs[1])) end
			-- PrintDebug(itemID, #refs,"item cost ref groups @",app:SearchLink(costs[1]))
			-- local ref
			for i=1,#refs do
				UpdateRunner.Run(DoCollectibleCheckForItemRef, refs[i], itemID, itemUnbound)
			end
		end
		UpdateRunner.Run(FinishCostAssignmentsForItem, itemID, costs, refresh)
		if includeUpdate then
			for i=1,#costs do
				UpdateRunner.Run(UpdateCostGroup, costs[i]);
			end
		end
	-- else PrintDebug("Item as Cost is not Sourced!",itemID)
	end
end
local function UpdateCostsByCurrencyID(currencyID, refresh, includeUpdate, refs)
	local costs = SearchForObject("currencyID", currencyID, "field", true);
	if costs and #costs > 0 then
		-- PrintDebug(currencyID, #costs,"curr cost groups @",app:SearchLink(costs[1]))
		-- local isCost
		refs = refs or GetRawField("currencyIDAsCost", currencyID)
		if refs then
			-- if #refs > 100 then PrintDebug(currencyID, #refs,"curr ref groups for",app:SearchLink(costs[1])) end
			-- local ref
			for i=1,#refs do
				UpdateRunner.Run(DoCollectibleCheckForCurrRef, refs[i], currencyID)
			end
		end
		UpdateRunner.Run(FinishCostAssignmentsForCurr, currencyID, costs, refresh)
		if includeUpdate then
			for i=1,#costs do
				UpdateRunner.Run(UpdateCostGroup, costs[i]);
			end
		end
	-- else PrintDebug(key,"as Cost is not Sourced!",id)
	end
end
local function UpdateCostsBySpellID(spellID, refresh, includeUpdate, refs)
	local costs = SearchForObject("spellID", spellID, "field", true);
	if costs and #costs > 0 then
		local itemUnbound = Filters_ItemUnbound(costs[1])
		refs = refs or GetRawField("spellIDAsCost", spellID)
		if refs then
			for i=1,#refs do
				UpdateRunner.Run(DoCollectibleCheckForSpellRef, refs[i], spellID, itemUnbound)
			end
		end
		UpdateRunner.Run(FinishCostAssignmentsForSpell, spellID, costs, refresh)
		if includeUpdate then
			for i=1,#costs do
				UpdateRunner.Run(UpdateCostGroup, costs[i]);
			end
		end
	end
end

local function CostCalcStart()
	if app.Debugging then
		app.print("Cost Updates Starting...")
	end
end
local function CostCalcComplete()
	if app.Debugging then
		app.print("Cost Updates Done")
	end
	if app.IsClassic then
		-- There isn't a lot of data, LET 'ER RIP!
		for suffix,window in pairs(app.Windows) do
			app.UpdateRunner.Run(window.Update, window, true)
		end
	else
		for suffix,window in pairs(app.Windows) do
			if suffix ~= "Prime" then
				-- TODO: I don't like this, find a way to make it not necessary when Cost updates are performed
				-- app.PrintDebug("Refresh after Costs",window.Suffix)
				app.UpdateRunner.Run(window.Update, window, true)
			end
		end
	end
end

local function UpdateCosts()
	CacheFilters();
	ExtraFilters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
	local refresh = app._SettingsRefresh;
	-- cancel all existing running cost updates
	UpdateRunner.Reset()
	UpdateRunner.OnEnd(CostCalcComplete)
	UpdateRunner.Run(CostCalcStart)
	-- app.PrintDebug("UpdateCosts",refresh)

	-- Get all itemIDAsCost entries
	for itemID,refs in pairs(SearchForFieldContainer("itemIDAsCost")) do
		UpdateRunner.Run(UpdateCostsByItemID, itemID, refresh, false, refs)
	end

	-- Get all currencyIDAsCost entries
	for currencyID,refs in pairs(SearchForFieldContainer("currencyIDAsCost")) do
		UpdateRunner.Run(UpdateCostsByCurrencyID, currencyID, refresh, false, refs)
	end

	-- Get all spellIDAsCost entries
	for spellID,refs in pairs(SearchForFieldContainer("spellIDAsCost")) do
		UpdateRunner.Run(UpdateCostsBySpellID, spellID, refresh, false, refs)
	end
end

-- Performs a recursive update sequence and update of cost against the referenced 'cost'/'providers' table
UpdateCostGroup = function(c)
	-- app.PrintDebug("UCG",app:SearchLink(c),app._SettingsRefresh)
	if type(c) ~= "table" then
		app.PrintDebug("------------------ Update Cost which is not a group?!?!",c)
		return
	end
	local refresh = app._SettingsRefresh;
	local costs, providers = c.cost, c.providers
	-- update cost
	if costs and type(costs) == "table" then
		-- app.PrintDebug("UCG:cost",#costs)
		local cost, type, id
		for i=1,#costs do
			cost = costs[i];
			type, id = cost[1], cost[2];
			-- app.PrintDebug("UCG:",type,id)
			if type == "i" then
				UpdateCostsByItemID(id, refresh, true)
			elseif type == "c" then
				UpdateCostsByCurrencyID(id, refresh, true)
			end
		end
	end
	-- update providers
	if providers and type(providers) == "table" then
		-- app.PrintDebug("UCG:providers",#providers)
		local prov, type, id
		for i=1,#providers do
			prov = providers[i];
			type, id = prov[1], prov[2];
			-- app.PrintDebug("UCG:",type,id)
			if type == "i" then
				UpdateCostsByItemID(id, refresh, true)
			elseif type == "c" then
				UpdateCostsByCurrencyID(id, refresh, true)
			elseif type == "s" then
				UpdateCostsBySpellID(id, refresh, true)
			end
		end
	end
	-- app.PrintDebug("UCG:Done",c.hash,app._SettingsRefresh)
end
local function OnSearchResultUpdate(group)
	UpdateCostGroup(group)
end
app.AddEventHandler("OnSearchResultUpdate", OnSearchResultUpdate)

local CACChain = {}
-- Returns whether 't' should be considered collectible based on the set of costCollectibles already assigned to this 't'
app.CollectibleAsCost = function(t)
	local collectibles = t.costCollectibles;
	-- literally nothing to collect with 't' as a cost, so don't process the logic anymore
	if not collectibles or #collectibles == 0 then
		t.collectibleAsCost = false;
		return;
	end
	local lastSettings, appSettings = t._SettingsRefresh, app._SettingsRefresh
	-- previously checked without Settings changed
	if lastSettings and lastSettings == appSettings then
		-- PrintDebug(t.keyval, "CAC:Cached",t.hash,t.isCost,lastSettings)
		return t.isCost;
	end
	local thash = t.hash
	if CACChain[thash] then
		-- this is possible in various valid situations due to looping repeatable cost/rewards
		-- app.PrintDebug("Recursive collectibleAsCost encountered!",app:SearchLink(t))
		return
	end
	CACChain[thash] = true
	-- PrintDebug(t.keyval, "CAC:Check",app:SearchLink(t))
	t._SettingsRefresh = appSettings;
	t.isCost = nil;
	-- this group should not be considered collectible as a cost if it is already obtained as a Toy
	local toyItemID = t.toyID
	if toyItemID and not PlayerIsMissingProviderItem(toyItemID) then
		-- PrintDebug(toyItemID, "Not collectibleAsCost since Toy owned!",app:SearchLink(t))
		CACChain[thash] = nil
		return
	end
	-- check the collectibles if any are considered collectible currently
	local itemUnbound = Filters_ItemUnbound(t)
	-- if this Item meets the user's ignore BoE/BoA filter, then make sure recursive checks are allowed to ignore the
	-- character filters, the same way we do for UpdateGroup logic
	-- mark this group as not collectible by cost while it is processing, in case it has sub-content which can be used to obtain this 't'
	t.collectibleAsCost = false;
	-- local subDepth = Depth
	local collectible, isCollectibleAcceptable
	for _,ref in ipairs(collectibles) do
		-- Use the common collectibility check logic
		-- Depth = subDepth
		collectible = CheckCollectible(ref)
		isCollectibleAcceptable = CollectibleAcceptible[collectible]
		if isCollectibleAcceptable and (isCollectibleAcceptable == true or isCollectibleAcceptable(itemUnbound)) then
			-- actual acceptable cost to continue processing
			t.isCost = true;
			t.collectibleAsCost = nil;
			CACChain[thash] = nil
			-- PrintDebug(t.keyval, "CAC:Set",app:SearchLink(t),"from",app:SearchLink(ref),"w/req",collectible,"@",t._SettingsRefresh)
			return true;
		end
	end
	-- app.PrintDebug("CAC:nil",t.hash)
	t.collectibleAsCost = nil;
	CACChain[thash] = nil
end
local function CalculateGroupsCostAmount(g, costID, includedHashes)
	local o, subg, subcost, c
	local cost = 0
	for i=1,#g do
		o = g[i]
		subcost = o.visible and not IsComplete(o) and o.cost or nil
		if not includedHashes[o.hash] and subcost and type(subcost) == "table" then
			for j=1,#subcost do
				c = subcost[j]
				if c[2] == costID then
					includedHashes[o.hash] = true
					cost = cost + c[3];
					break
				end
			end
		end
		subg = o.g
		if subg then
			cost = cost + CalculateGroupsCostAmount(subg, costID, includedHashes)
		end
	end
	return cost
end
-- Returns the total amount of 'costID' for all non-collected Things within the group (not including the group itself)
local function CalculateTotalCosts(group, costID)
	-- app.PrintDebug("CalculateTotalCosts",group.hash,costID)
	local g = group and group.g
	local cost = g and CalculateGroupsCostAmount(g, costID, {}) or 0
	-- app.PrintDebug("CalculateTotalCosts",group.hash,costID,"=>",cost)
	return cost
end

-- Costs API Implementation
-- Access via AllTheThings.Modules.Costs
local api = {};
app.Modules.Costs = api;
app.AddEventHandler("OnLoad", function()
	DGU = app.DirectGroupUpdate;
	IsSpellKnownHelper = app.IsSpellKnownHelper
	CreateObject = app.__CreateObject
	FillGroups = app.FillGroups
	UpdateRunner = app.CreateRunner("costs");
	api.Runner = UpdateRunner
	UpdateRunner.SetPerFrameDefault(100)
	UpdateRunner.DefaultOnStart(ResetCostTotals)
	UpdateRunner.DefaultOnReset(ResetCostTotals)
	local fillers = CostLinkedFillOptions.Fillers
	local getFiller = app.Modules.Fill.GetFiller
	fillers[#fillers + 1] = getFiller("NPC")
	fillers[#fillers + 1] = getFiller("SYMLINK")
	-- UpdateRunner.ToggleDebugFrameTime()
end)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	ExtraFilters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
end)
app.AddEventHandler("OnAfterSavedVariablesAvailable", function(currentCharacter, accountWideData)
	OneTimeQuests = accountWideData.OneTimeQuests
end)
app.AddEventHandler("OnRecalculate_NewSettings", UpdateCosts)
-- Information Types
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("Cost_Calculation", {
		text = "Cost_Calculation",
		priority = 2.91, HideCheckBox = true, ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			if not app.Settings:GetTooltipSetting("Currencies") then return end

			if not app.ThingKeys[reference.key] then return end

			local id = reference[reference.key]
			local currencyCount = CalculateTotalCosts(reference, id)
			if currencyCount > 0 then
				tooltipInfo[#tooltipInfo + 1] = { left = L.CURRENCY_NEEDED_TO_BUY, right = app.formatNumericWithCommas(currencyCount) }
			end
		end
	})
end)
-- Cost Capture Handling
do
	local setmetatable, tonumber, wipe = setmetatable, tonumber, wipe
	-- probably fine to only have 1 Runner for cost collector... I mean how many popouts can one person make...
	local CollectorRunner = app.CreateRunner("cost_collector")
	CollectorRunner.SetPerFrameDefault(25)
	local function AddCost(costType, id, amount)
		-- app.PrintDebug("Cost",costType.type,id,amount)
		costType[id] = costType[id] + amount
	end
	local __costType = { __index = function() return 0 end}
	local __costData = { __index = function(t, key)
		local k = setmetatable({}, __costType)
		-- app.PrintDebug("CostType",key)
		k.type = key
		t[key] = k
		return k
	end}

	local function AddGroupCosts(o, Collector, amount)
		-- app.PrintDebug("AGC",app:SearchLink(o),o.visible,amount)
		-- if we're adding a specific amount, then we ignore the duplicate prevention
		if not amount then
			if IsComplete(o) then return end
			-- only add costs once per hash in case it is duplicated
			local hash = o.hash
			if not hash or Collector.Hashes[hash] then return end
			Collector.Hashes[hash] = true
		end

		local cost = o.cost;
		cost = cost and type(cost) == "table" and cost;
		local providers = o.providers;
		if not cost and not providers then return; end

		amount = amount or o.objectiveCost or 1
		-- app.PrintDebug("AGC.Needed",
		-- 	o.visible and "VISIBLE",
		-- 	o.saved and "SAVED",
		-- 	o.collectible and "COLLECTIBLE",
		-- 	o.collected and "COLLECTED",amount)
		-- Gold cost currently ignored
		-- app.PrintDebug("AGC:Add",o.hash)
		-- app.PrintTable(cost)
		-- app.PrintTable(providers)
		local Data = Collector.Data
		if cost then
			local type
			for _,c in ipairs(cost) do
				type = c[1]
				if type == "c" or type == "i" then
					AddCost(Data[type], c[2], c[3] * amount)
				-- elseif type == "g" then
					-- special gold cost blah
					-- AddCost(Data[type], 1, c[2])
				end
			end
		end
		if providers then
			local type
			for _,c in ipairs(providers) do
				type = c[1]
				if type == "i" then
					AddCost(Data[type], c[2], amount)
				end
			end
		end
	end
	local IgnoredTypes = {
		NonCollectible = true,
		VisualHeader = true,
		VisualHeaderWithGroups = true,
	}
	local IgnoredTypesForNested = {
		EnsembleItem = true,
	}
	local function ScanGroups(Collector, group)
		-- ignore costs for and within certain groups
		if not group.visible or group.sourceIgnored then return end

		local runner = Collector.Runner
		local groupType = group.__type
		-- app.PrintDebug("AGC:Run",app:SearchLink(group),IgnoredTypes[groupType],IgnoredTypesForNested[groupType],group.filledCost)
		-- don't include NonCollectible or VisualHeaders
		if not IgnoredTypes[groupType] then
			runner.Run(AddGroupCosts, group, Collector)
		end
		local g = group.g
		if not g then return end

		-- don't scan groups inside Item groups which have a cost/provider (i.e. ensembles)
		-- this leads to wildly bloated totals
		if (not group.window and group.filledCost) or IgnoredTypesForNested[groupType] then return end

		for _,o in ipairs(g) do
			Collector:ScanGroups(o)
		end
	end
	local function StartUpdating(Collector)
		local group = Collector.InfoGroup
		Collector:Reset()
		group.text = (group.__text or "").."  "..BLIZZARD_STORE_PROCESSING
		group.OnSetVisibility = app.ReturnTrue
		-- app.PrintDebug("AGC:Start",Collector,Collector.WindowGroup.text)
		app.DirectGroupRefresh(group, true)
	end
	local function EndUpdating(Collector)
		local group = Collector.InfoGroup
		group.text = group.__text
		-- app.PrintDebug("AGC:End",Collector,Collector.WindowGroup.text)
		-- app.PrintTable(Collector.Data)
		-- Build all the cost data which is available to the current filters into the cost group
		local costItems = group.g
		local requiresCostItems = {}
		for costKey,costType in pairs(Collector.Data) do
			if type(costType) == "table" then
				local costThing
				for id,amount in pairs(costType) do
					id = tonumber(id)
					if id then
						if costKey == "c" then
							costThing = app.CreateCostCurrency(
								app.SearchForObject("currencyID", id, "key")
									or app.CreateCurrencyClass(id), amount)
						elseif costKey == "i" then
							costThing = app.CreateCostItem(
								app.SearchForObject("itemID", id, "field")
									or app.CreateItem(id), amount)
						-- elseif costKey == "g" then
						-- 	costThing = app.CreateRawText(
						-- 		app.SearchForObject("itemID", id, "field")
						-- 			or app.CreateItem(id), amount)
						else
							costThing = nil
						end
						if costThing then
							local costTbl = costThing.cost
							local costAmount = costTbl and type(costTbl) == "table" and #costTbl or 0.5
							if costThing.providers or costAmount > 0.5 then
								costThing.back = 0.5
								costThing[1] = costAmount
								requiresCostItems[#requiresCostItems + 1] = costThing
							else
								costItems[#costItems + 1] = costThing
							end
						end
					end
				end
			end
		end
		if #costItems > 0 then
			app.Sort(costItems, app.SortDefaults.Total)
			app.Sort(requiresCostItems, app.SortDefaults.Total)
			app.ArrayAppend(costItems, requiresCostItems)
			app.AssignChildren(group)
		else
			group.OnSetVisibility = nil
		end
		app.DirectGroupUpdate(group)
		Collector:Reset()
	end
	local function ScanSubCosts(Collector)
		-- app.PrintDebug("SSC:Start",Collector,Collector.WindowGroup.text)
		local costThing
		local anyNewCost
		local CurCostData = app.CloneDictionary(Collector.Data)
		-- Scan all current Total Costs, marking each with being scanned, and incrementing
		for costKey,costType in pairs(CurCostData) do
			if type(costType) == "table" then
				if rawget(costType, "Amounts") == nil then costType.Amounts = {} end
				if costKey == "c" then
					for id,amount in pairs(costType) do
						id = tonumber(id)
						if id and costType.Amounts[id] ~= amount then
							-- app.PrintDebug("have",costKey,id,amount,"checked @",costType.Amounts[id])
							costType.Amounts[id] = amount
							costThing = app.SearchForObject("currencyID", id, "key") or app.CreateCurrencyClass(id)
							anyNewCost = true
							AddGroupCosts(costThing, Collector, amount)
						end
					end
				elseif costKey == "i" then
					for id,amount in pairs(costType) do
						id = tonumber(id)
						if id and costType.Amounts[id] ~= amount then
							-- app.PrintDebug("have",costKey,id,amount,"checked @",costType.Amounts[id])
							costType.Amounts[id] = amount
							costThing = app.SearchForObject("itemID", id, "field") or app.CreateItem(id)
							anyNewCost = true
							AddGroupCosts(costThing, Collector, amount)
						end
					end
				end
			end
		end

		if anyNewCost then
			Collector.Runner.Run(ScanSubCosts, Collector)
		else
			Collector.Runner.Run(EndUpdating, Collector)
		end
	end
	local function BeginNewScan(Collector)
		-- app.PrintDebug("Collector.ScanGroups",Collector,Collector.WindowGroup.text)
		if not Collector:CheckStatusForScan() then return end

		Collector:UpdateStatus()
		wipe(Collector.InfoGroup.g)
		local runner = Collector.Runner
		runner.Run(StartUpdating, Collector)
		ScanGroups(Collector, Collector.WindowGroup)
		runner.Run(ScanSubCosts, Collector)
	end
	local function Reset(Collector)
		wipe(Collector.Data)
		wipe(Collector.Hashes)
	end
	local function CheckStatusForScan(Collector)
		-- app.PrintDebug("Collector.CheckStatusForScan",app._SettingsRefresh,Collector.WindowGroup.progress,Collector.WindowGroup.total)
		-- app.PrintTable(Collector.Status)
		return Collector.WindowGroup._fillcomplete
			and (Collector.Status.SettingsRefresh ~= app._SettingsRefresh
				or Collector.Status.Progress ~= Collector.WindowGroup.progress
				or Collector.Status.Total ~= Collector.WindowGroup.total)
	end
	local function UpdateStatus(Collector)
		Collector.Status.SettingsRefresh = app._SettingsRefresh
		Collector.Status.Progress = Collector.WindowGroup.progress
		Collector.Status.Total = Collector.WindowGroup.total
		-- app.PrintDebug("Collector.UpdateStatus")
		-- app.PrintTable(Collector.Status)
	end

	local CollectorBase = {
		Runner = CollectorRunner,
		ScanGroups = ScanGroups,
		StartUpdating = StartUpdating,
		EndUpdating = EndUpdating,
		ScanSubCosts = ScanSubCosts,
		BeginNewScan = BeginNewScan,
		Reset = Reset,
		CheckStatusForScan = CheckStatusForScan,
		UpdateStatus = UpdateStatus,
	}

	api.GetCostCollector = function(group, infoGroup)

		-- Table which can capture cost information for a collector
		local Collector = setmetatable({
			Data = setmetatable({}, __costData),
			Hashes = {},
			WindowGroup = group,
			InfoGroup = infoGroup,
			Status = {},
		}, { __index = CollectorBase })

		return Collector
	end

end	-- Cost Collector Handling

-- build a 'Cost' group which matches the "cost"/"providers (items)" tag of this group
local function BuildCost(group)
	local cost = group.cost;
	cost = cost and type(cost) == "table" and cost;
	local providers = group.providers;
	if not cost and not providers then return; end

	-- Pop out the cost objects into their own sub-groups for accessibility
	local costGroup = app.CreateRawText(L.COST, {
		description = L.COST_DESC,
		icon = 133785,
		sourceIgnored = true,
		OnUpdate = app.AlwaysShowUpdate,
		skipFull = true,
		SortPriority = -2.5,
		g = {},
		OnClick = app.UI.OnClick.OnlySortingRightClick,
	});
	-- Gold cost currently ignored
	-- print("BuildCost",group.hash)
	if cost then
		local costItem;
		for _,c in ipairs(cost) do
			-- print("Cost",c[1],c[2],c[3]);
			costItem = nil;
			if c[1] == "c" then
				costItem = SearchForObject("currencyID", c[2], "field") or app.CreateCurrencyClass(c[2]);
				costItem = app.CreateCostCurrency(costItem, c[3]);
			elseif c[1] == "i" then
				costItem = SearchForObject("itemID", c[2], "field") or app.CreateItem(c[2]);
				costItem = app.CreateCostItem(costItem, c[3]);
			end
			if costItem then
				app.NestObject(costGroup, costItem);
			end
		end
	end
	if providers then
		local costItem;
		for _,c in ipairs(providers) do
			-- print("Cost",c[1],c[2],c[3]);
			costItem = nil;
			if c[1] == "i" then
				costItem = SearchForObject("itemID", c[2], "field") or app.CreateItem(c[2]);
				costItem = app.CreateCostItem(costItem, 1);
			end
			if costItem then
				app.NestObject(costGroup, costItem);
			end
		end
	end
	app.NestObject(group, costGroup, nil, 1);
end

local RefreshCollectorHooked
-- Begins an async operation using a Runner to progressively accummulate the entirety of the 'cost'/'provider'
-- information contained by all groups within the provided 'group'
-- and captures the information into trackable Cost groups under a 'Total Costs' header
local function BuildTotalCost(group)

	-- Pop out the cost totals into their own sub-groups for accessibility
	local costGroup = app.CreateRawText(L.COST_TOTAL, {
		description = L.COST_TOTAL_DESC,
		icon = 901746,
		sourceIgnored = true,
		skipFull = true,
		SortPriority = -2.4,
		g = {},
		OnClick = app.UI.OnClick.OnlySortingRightClick,
	});
	-- keep an unmodified text copy
	costGroup.__text = costGroup.text

	if group.window then
		group.window.__RefreshCostCollector = app.Modules.Costs.GetCostCollector(group, costGroup)
	end

	-- We only need one hooked method to attempt to refresh the collector on whichever window triggered the respective events
	-- This will just get added as a permanent one-time event for the session once a popout is created
	if not RefreshCollectorHooked then
		RefreshCollectorHooked = true
		-- Event handlers are still called by every Window which triggers these events, so let's just only run the Refresh
		-- if the Window itself has it assigned, instead of trying to determine if the Window matches the Event Window
		local function RefreshIfExisting(window, suffix)
			-- app.PrintDebug("Cost.TC.Refresh?",window and window.Suffix,window and window.__RefreshCostCollector,window and window.data._fillcomplete)
			if window and window.__RefreshCostCollector then
				window.__RefreshCostCollector:BeginNewScan()
			end
		end
		app.AddEventHandler("OnWindowUpdated", RefreshIfExisting)
		app.AddEventHandler("OnWindowFillComplete", RefreshIfExisting)
		-- app.PrintDebug("RefreshCollectorHooked",group.window.Suffix)
	end

	-- Add the cost group to the popout
	app.NestObject(group, costGroup, nil, 1);
end

app.AddEventHandler("OnNewPopoutGroup", BuildCost)
app.AddEventHandler("OnNewPopoutGroup", BuildTotalCost)

-- Filler
-- ItemID's which should be skipped when filling purchases with certain levels of 'skippability'
local SkipPurchases = {
	-- 0 	- (default, never skipped)
	-- 1 	- (tooltip, skipped unless within tooltip/popout)
	-- 1.5	- (tooltip root, skipped unless tooltip root or within popout)
	-- 2 	- (popout, skipped unless within popout)
	-- 2.5 	- (popout root, skipped unless root of popout)
	itemID = {
		[137642] = 2.5,	-- Mark of Honor
		[21100] = 1,	-- Coin of Ancestry
		[23247] = 1,	-- Burning Blossom
		[33226] = 1,	-- Tricky Treat
		[37829] = 1,	-- Brewfest Prize Token
		[49927] = 1,	-- Love Token
	},
	currencyID = {
		[515] = 1,		-- Darkmoon Prize Ticket
		[1166] = 1.5,	-- Timewarped Badge
		[2778] = 2.5,	-- Bronze (Remix: Pandaria)
		[3252] = 2.5,	-- Bronze (Remix: Legion)
	},
	LearnedTypes = {
		Toy = 1,
		ToyEventually = 1,
		Recipe = 1,
		RecipeWithItem = 1,
		Mount = 1,
		BattlePet = 1,
	}
}
-- TODO: TBD some consolidation of Fillers based on the Root being filled...
-- Assign a new set of Fillers within FillData and prio that
-- Also check in-instance and any skips for any scope should also remove the Cost filler automatically
-- i.e. if filling MoH or Bronze, we would just remove the PURCHASE Filler from ActiveFillers, and not need to check this for every group
local function ShouldFillPurchases(group, FillData)
	local val
	for key,values in pairs(SkipPurchases) do
		val = group[key]
		if val then
			val = values[val]
			if not val then return true end
			if (FillData.SkipLevel or 0) < val - (group == FillData.Root and 0.5 or 0) then
				return
			end
		end
	end
	return true;
end
app.AddEventHandler("OnLoad", function()
	local Fill = app.Modules.Fill
	if not Fill then return end

	Fill.AddFiller("COST",
	function(group, FillData)
		-- do not fill purchases on certain items, can skip the skip though based on a level
		if not ShouldFillPurchases(group, FillData) then return end

		-- Certain Collected Types which are NOT the Root of the Fill should not be filled
		if SkipPurchases.LearnedTypes[group.__type] and group ~= FillData.Root and group.collected then
			-- app.PrintDebug("Don't Fill purchases for non-Root collected Toy",app:SearchLink(group))
			return
		end

		local collectibles = group.costCollectibles;
		if collectibles and #collectibles > 0 then
			-- if app.Debugging then
			-- 	local sourceGroup = app.CreateRawText("RAW COLLECTIBLES", {
			-- 		["OnUpdate"] = app.AlwaysShowUpdate,
			-- 		["skipFill"] = true,
			-- 		["g"] = {},
			-- 	})
			-- 	app.NestObjects(sourceGroup, collectibles, true)
			-- 	app.NestObject(group, sourceGroup, nil, 1)
			-- end
			local groupHash = group.hash;
			-- if FillData.Debug then app.PrintDebug("DeterminePurchaseGroups",app:SearchLink(group),"-collectibles",collectibles and #collectibles) end
			local groups = {};
			local clone;
			for _,o in ipairs(collectibles) do
				if o.hash ~= groupHash then
					-- if FillData.Debug then app.PrintDebug("Purchase @",app:SearchLink(o)) end
					clone = CreateObject(o);
					clone.filledType = "COST"
					groups[#groups + 1] = clone
				end
			end
			-- if FillData.Debug then app.PrintDebug("DeterminePurchaseGroups-final",groups and #groups) end
			-- mark this group as no-longer collectible as a cost since its cost collectibles have been determined
			if #groups > 0 then
				group.collectibleAsCost = false;
				group.filledCost = true;
				group.costTotal = nil;
			end
			return groups;
		end
	end,
	{
		SettingsIcon = app.asset("Currency"),
		SettingsTooltip = app.L.FILL_COST_DATA_CHECKBOX_TOOLTIP,
	})
end)
