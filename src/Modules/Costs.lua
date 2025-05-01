
-- Costs Module
local _, app = ...;
local L = app.L

-- Concepts:
-- Encapsulates the functionality for handling and checking Cost information

-- Global locals
local rawget, ipairs, pairs, type,math_min,wipe
	= rawget, ipairs, pairs, type,math.min,wipe
local PlayerHasToy, C_CurrencyInfo_GetCurrencyInfo
	= PlayerHasToy, C_CurrencyInfo.GetCurrencyInfo

-- App locals
local SearchForFieldContainer, GetRawField, GetRelativeByFunc, SearchForObject
	= app.SearchForFieldContainer, app.GetRawField, app.GetRelativeByFunc, app.SearchForObject
local OneTimeQuests = app.EmptyTable
local GetItemCount = app.WOWAPI.GetItemCount
local IsSpellKnownHelper
app.AddEventHandler("OnLoad", function()
	IsSpellKnownHelper = app.IsSpellKnownHelper
end)

-- Module locals
local RecursiveGroupRequirementsFilter, RecursiveAccountFilter, DGU, UpdateRunner, ExtraFilters, ResolveSymbolicLink
-- If a Thing which has a cost is not a quest or is available as a quest
local function IsAvailable(ref)
	return not ref.questID or app.IsQuestAvailable(ref)
end
local function ToggleExtraFilters(active)
	if not ExtraFilters then return end
	local Set = app.Modules.Filter.Set
	local Setter
	for name,_ in pairs(ExtraFilters) do
		Setter = Set[name]
		if Setter then Setter(active) end
	end
end

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
	-- [515] = true, -- DMF Ticket
	-- [241] = true, -- Champion's Seal
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
	-- Depth = Depth + 1
	-- Only track Costs through Things which are Available
	if not IsAvailable(ref) then
		-- app.PrintDebug("Non-available Thing blocking Cost chain",app:SearchLink(ref))
		return;
	end
	-- PrintDebug(costid, "CheckCollectible",app:SearchLink(ref))
	-- Used as a cost for something which is collectible itself and not collected
	if ref.collectible and not ref.collected then
		-- PrintDebug(costid, "Purchase via Collectible",app:SearchLink(ref),FilterRequirement(ref) == 1 and "VISIBLE" or FilterRequirement(ref) == 2 and "ACCOUNT" or "FILTERED")
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
				-- PrintDebug(costid, "Purchase via sub-group Collectible",collectible,app:SearchLink(ref),"<=",app:SearchLink(o))
				-- quick escape if we've already determined this container contains something visible with current filters
				if mincollectible == 1 then return mincollectible end
			end
		end
		return mincollectible
	end
	-- If this group has a symlink, generate the symlink into a cached version of the ref for the following sub-group check
	local symresults
	if ref.sym then
		-- since 'sym' is cached itself when retrieved, we don't need the recreating of objects here for caching
		symresults = ResolveSymbolicLink(ref, true)
	end
	-- If this group has sym results, are any of them collectible?
	if symresults then
		local o, collectible
		local mincollectible
		-- local subDepth = Depth
		for i=1,#symresults do
			o = symresults[i];
			-- Depth = subDepth
			collectible = CheckCollectible(o, costid)
			if collectible then
				mincollectible = math_min(collectible,mincollectible or 99)
				-- PrintDebug(costid, "Purchase via sym-group Collectible",collectible,app:SearchLink(ref),"<=",app:SearchLink(o))
				-- quick escape if we've already determined this container contains something visible with current filters
				if mincollectible == 1 then return mincollectible end
			end
		end
		return mincollectible
	end
	-- Used as a cost for something which is collectible as a cost itself
	if ref.collectibleAsCost then
		-- PrintDebug(costid, "Purchase via collectibleAsCost",app:SearchLink(ref),FilterRequirement(ref) == 1 and "VISIBLE" or FilterRequirement(ref) == 2 and "ACCOUNT" or "FILTERED")
		return FilterRequirement(ref)
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
	local currencyInfo = C_CurrencyInfo_GetCurrencyInfo(key)
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
local function SetCostTotals(costs, isCost, refresh)
	-- Iterate on the search result of the entry key
	local parent, blockedBy
	for _,c in ipairs(costs) do
		-- Mark the group with a costTotal
		-- PrintDebug("Force Cost",app:SearchLink(c),isCost)
		c._SettingsRefresh = refresh;
		-- only mark cost on visible content
		if isCost and RecursiveGroupRequirementsFilter(c, ExtraFilters) then
			parent = c.parent
			blockedBy = GetRelativeByFunc(parent, BlockedParent)
			if not blockedBy then
				c.isCost = isCost;
				-- PrintDebug("Unblocked Cost",app:SearchLink(c))
			else
				c.isCost = nil;
				-- PrintDebug("Skipped cost under locked/saved parent"
				-- 	,app:SearchLink(c)
				-- 	,app:SearchLink(blockedBy))
			end
		else
			-- PrintDebug("Not a cost",app:SearchLink(c))
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
	local isCost
	if total > 0 or not isProv then
		local owned = total > 0 and GetItemCount(itemID, true, nil, true, true) or 0
		isCost = total > owned
		-- PrintDebug(itemID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
	else
		isProv = PlayerIsMissingProviderItem(itemID)
		-- PrintDebug(itemID, app:SearchLink(costs[1]),isProv and "IS PROV" or "NOT PROV")
	end
	SetCostTotals(costs, isCost or isProv, refresh)
end
local function FinishCostAssignmentsForCurr(currencyID, costs, refresh)
	local total = CostTotals.c[currencyID] or 0
	local owned = CurrencyAmounts[currencyID]
	local isCost = total > owned
	-- PrintDebug(currencyID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
	SetCostTotals(costs, isCost, refresh)
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
	SetCostTotals(costs, isProv, refresh)
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
				-- ref = refs[i];
				-- if CheckCollectible(ref, itemID) then
				-- 	local refproviders = ref.providers
				-- 	if refproviders then
				-- 		for _,providerCheck in ipairs(refproviders) do
				-- 			if providerCheck[1] == "i" and providerCheck[2] == itemID then
				-- 				-- PrintDebug(itemID, app:SearchLink(costs[1]),isCost and "IS PROV" or "NOT PROV","with owned:",PlayerHasToy(itemID) or GetItemCount(itemID, true, nil, true, true) > 0)
				-- 				if not PlayerHasToy(itemID) and GetItemCount(itemID, true, nil, true, true) == 0 then
				-- 					isProv = true
				-- 				end
				-- 				break
				-- 			end
				-- 		end
				-- 	end
				-- 	local refcosts = ref.cost
				-- 	if refcosts then
				-- 		for _,costCheck in ipairs(refcosts) do
				-- 			if costCheck[1] == "i" and costCheck[2] == itemID then
				-- 				-- add the total item cost amount from this ref to our tracker
				-- 				CostTotals.AddItem(itemID, costCheck[3], ref)
				-- 				break
				-- 			end
				-- 		end
				-- 	end
				-- end
			end
			-- if not isProv then
			-- 	local total = CostTotals.i[itemID] or 0
			-- 	local owned = GetItemCount(itemID, true, nil, true, true)
			-- 	isCost = total > owned
			-- 	-- PrintDebug(itemID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
			-- end
		end
		UpdateRunner.Run(FinishCostAssignmentsForItem, itemID, costs, refresh)
		if includeUpdate then
			for i=1,#costs do
				UpdateRunner.Run(UpdateCostGroup, costs[i]);
			end
		end
		-- SetCostTotals(costs, isCost or isProv, refresh)
	-- else PrintDebug("Item as Cost is not Sourced!",itemID)
	end
	-- return costs;
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
				-- ref = refs[i];
				-- if CheckCollectible(ref, currencyID) then
				-- 	local refcosts = ref.cost
				-- 	if refcosts then
				-- 		for _,costCheck in ipairs(refcosts) do
				-- 			if costCheck[1] == "c" and costCheck[2] == currencyID then
				-- 				-- add the total currency cost amount from this ref to our tracker
				-- 				CostTotals.AddCurr(currencyID, costCheck[3], ref)
				-- 				break
				-- 			end
				-- 		end
				-- 	end
				-- end
			end
			-- local total = CostTotals.c[currencyID] or 0
			-- local owned = CurrencyAmounts[currencyID]
			-- isCost = total > owned
			-- PrintDebug(currencyID, app:SearchLink(costs[1]),isCost and "IS COST" or "NOT COST","requiring",total,"minus owned:",owned)
		end
		UpdateRunner.Run(FinishCostAssignmentsForCurr, currencyID, costs, refresh)
		if includeUpdate then
			for i=1,#costs do
				UpdateRunner.Run(UpdateCostGroup, costs[i]);
			end
		end
		-- SetCostTotals(costs, isCost, refresh)
	-- else PrintDebug(key,"as Cost is not Sourced!",id)
	end
	-- return costs;
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
	for suffix,window in pairs(app.Windows) do
		if suffix ~= "Prime" then
			-- TODO: I don't like this, find a way to make it not necessary when Cost updates are performed
			app.UpdateRunner.Run(window.Update, window, true)
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

	-- app.Debugging = nil
	-- Get all itemIDAsCost entries
	for itemID,refs in pairs(SearchForFieldContainer("itemIDAsCost")) do
		-- app.Debugging = nil
		-- if itemID == 105867.06 then app.Debugging = true end
		-- if itemID == 105867 then app.Debugging = true end
		-- if itemID == 163036 then app.Debugging = true end	-- Polished Pet Charms
		-- if itemID == 40619 then app.Debugging = true end	-- Leggings of the Lost Conqueror
		-- app.PrintDebug("Check Cost Item",itemID)
		-- UpdateCostsByItemID(itemID, refresh, refs);
		UpdateRunner.Run(UpdateCostsByItemID, itemID, refresh, false, refs)
		-- app.Debugging = nil
	end
	-- app.Debugging = true
	-- app.PrintDebugPrior("UpdateCosts:Items")
	-- app.Debugging = nil

	-- Get all currencyIDAsCost entries
	for currencyID,refs in pairs(SearchForFieldContainer("currencyIDAsCost")) do
		-- app.Debugging = nil
		-- if currencyID == 2029 then app.Debugging = true end
		-- app.PrintDebug("Check Cost Curr",currencyID)
		-- UpdateCostsByCurrencyID(currencyID, refresh, refs);
		UpdateRunner.Run(UpdateCostsByCurrencyID, currencyID, refresh, false, refs)
	end

	-- Get all spellIDAsCost entries
	for spellID,refs in pairs(SearchForFieldContainer("spellIDAsCost")) do
		UpdateRunner.Run(UpdateCostsBySpellID, spellID, refresh, false, refs)
	end
	-- app.Debugging = true
	-- app.PrintDebugPrior("UpdateCosts:Done",app._SettingsRefresh)
end

-- Performs a recursive update sequence and update of cost against the referenced 'cost'/'providers' table
UpdateCostGroup = function(c)
	-- app.PrintDebug("UCG",app:SearchLink(c),app._SettingsRefresh)
	local refresh = app._SettingsRefresh;
	-- local groups
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
				-- groups = ArrayAppend(groups, UpdateCostsByItemID(id, refresh))
			elseif type == "c" then
				UpdateCostsByCurrencyID(id, refresh, true)
				-- groups = ArrayAppend(groups, UpdateCostsByCurrencyID(id, refresh))
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
				-- groups = ArrayAppend(groups, UpdateCostsByItemID(id, refresh))
			elseif type == "c" then
				UpdateCostsByCurrencyID(id, refresh, true)
				-- groups = ArrayAppend(groups, UpdateCostsByCurrencyID(id, refresh))
			end
		end
	end
	-- if groups then
	-- 	-- app.PrintDebug("UCG:groups",#groups)
	-- 	local p
	-- 	for i=1,#groups do
	-- 		p = groups[i]
	-- 		UpdateRunner.Run(UpdateCostGroup, p);
	-- 	end
	-- end
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
		-- app.PrintDebug("CAC:Cached",t.hash,t.isCost,lastSettings)
		return t.isCost;
	end
	local thash = t.hash
	if CACChain[thash] then
		-- this is possible in various valid situations due to looping repeatable cost/rewards
		-- app.PrintDebug("Recursive collectibleAsCost encountered!",app:SearchLink(t))
		return
	end
	CACChain[thash] = true
	-- app.PrintDebug("CAC:Check",app:SearchLink(t))
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
			-- PrintDebug("CAC:Set",app:SearchLink(t),"from",app:SearchLink(ref),"w/req",collectible,"@",t._SettingsRefresh)
			return true;
		end
	end
	-- app.PrintDebug("CAC:nil",t.hash)
	t.collectibleAsCost = nil;
	CACChain[thash] = nil
end

-- Costs API Implementation
-- Access via AllTheThings.Modules.Costs
local api = {};
app.Modules.Costs = api;
app.AddEventHandler("OnLoad", function()
	DGU = app.DirectGroupUpdate;
	ResolveSymbolicLink = app.ResolveSymbolicLink
	UpdateRunner = app.CreateRunner("costs");
	api.Runner = UpdateRunner
	UpdateRunner.SetPerFrameDefault(100)
	UpdateRunner.DefaultOnStart(ResetCostTotals)
	UpdateRunner.DefaultOnReset(ResetCostTotals)
	-- UpdateRunner.ToggleDebugFrameTime()
end)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	OneTimeQuests = accountWideData.OneTimeQuests;
	ExtraFilters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
end)
app.AddEventHandler("OnRecalculate_NewSettings", UpdateCosts)

-- Cost Capture Handling
do
	local setmetatable, tonumber, wipe = setmetatable, tonumber, wipe
	-- probably fine to only have 1 Runner for cost collector... I mean how many popouts can one person make...
	local CollectorRunner = app.CreateRunner("cost_collector")
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

	local function AddGroupCosts(o, Collector)
		-- app.PrintDebug("AGC",o.hash)
		if not o.visible or o.saved or o.collected then return end
		-- only add costs once per hash in case it is duplicated
		local hash = o.hash
		if not hash or Collector.Hashes[hash] then return end
		Collector.Hashes[hash] = true

		local cost = o.cost;
		cost = cost and type(cost) == "table" and cost;
		local providers = o.providers;
		if not cost and not providers then return; end

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
					AddCost(Data[type], c[2], c[3])
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
					AddCost(Data[type], c[2], 1)
				end
			end
		end
	end
	local function ScanGroups(group, Collector)

		-- ignore costs for and within certain groups
		if not group.visible or group.sourceIgnored then return end

		CollectorRunner.Run(AddGroupCosts, group, Collector)
		local g = group.g
		if not g then return end

		-- don't scan groups inside Item groups which have a cost/provider (i.e. ensembles)
		-- this leads to wildly bloated totals
		if group.filledCost or (group.itemID and (group.cost or group.providers)) then return end

		for _,o in ipairs(g) do
			ScanGroups(o, Collector)
		end
	end
	local function StartUpdating(Collector)
		local group = Collector.__group
		if not group then return end

		Collector.Reset()
		local text = group.text
		Collector.__text = text
		group.text = (text or "").."  "..BLIZZARD_STORE_PROCESSING
		group.OnSetVisibility = app.ReturnTrue
		-- app.PrintDebug("StartUpdating",group.text)
		app.DirectGroupUpdate(group)
	end
	local function EndUpdating(Collector)
		local group = Collector.__group
		if not group then return end

		-- app.PrintDebug("AGC:End")
		-- app.PrintTable(Collector.Data)
		group.text = Collector.__text
		-- Build all the cost data which is available to the current filters into the cost group
		local Filter = app.RecursiveGroupRequirementsFilter
		local costItems = group.g
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
						end
						if costThing and Filter(costThing) then
							costItems[#costItems + 1] = costThing
						-- else app.PrintDebug("Filtered?") app.PrintTable(costThing)
						end
					end
				end
			end
		end
		if #costItems > 0 then
			app.Sort(costItems, app.SortDefaults.Total)
			app.AssignChildren(group)
		else
			group.OnSetVisibility = nil
		end
		app.DirectGroupUpdate(group)
		Collector.Reset()
	end

	api.GetCostCollector = function()

		local Collector = {}

		-- Table which can capture cost information for a collector
		Collector.Data = setmetatable({}, __costData)
		Collector.Hashes = {}

		Collector.ScanGroups = function(group, costGroup)
			Collector.__group = costGroup
			CollectorRunner.SetPerFrame(25)
			CollectorRunner.Run(StartUpdating, Collector)
			local g = group.g
			if g then
				for _,o in ipairs(g) do
					ScanGroups(o, Collector)
				end
			end
			CollectorRunner.Run(EndUpdating, Collector)
		end

		Collector.Reset = function()
			wipe(Collector.Data)
			wipe(Collector.Hashes)
		end

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
		skipFill = true,
		SortPriority = -2.5,
		g = {},
		OnClick = app.UI.OnClick.IgnoreRightClick,
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

-- Begins an async operation using a Runner to progressively accummulate the entirety of the 'cost'/'provider'
-- information contained by all groups within the provided 'group'
-- and captures the information into trackable Cost groups under a 'Total Costs' header
local function BuildTotalCost(group)
	if not group.g then return end

	-- Pop out the cost totals into their own sub-groups for accessibility
	local costGroup = app.CreateRawText(L.COST_TOTAL, {
		description = L.COST_TOTAL_DESC,
		icon = 901746,
		sourceIgnored = true,
		skipFill = true,
		SortPriority = -2.4,
		g = {},
		OnClick = app.UI.OnClick.IgnoreRightClick,
	});

	local Collector = app.Modules.Costs.GetCostCollector()

	local function RefreshCollector()
		wipe(costGroup.g)
		-- app.DirectGroupUpdate(costGroup)
		-- this triggers prior to the update in the window completing, and cost groups are determined by visibility
		-- so delay the refresh
		app.CallbackHandlers.DelayedCallback(Collector.ScanGroups, 1, group, costGroup)
	end

	RefreshCollector()

	-- we need to make sure we have a window reference for this group's Collector
	-- so that when the window is expired, we know to remove the necessary Handler(s)
	if group.window then
		-- changing settings should refresh the Collector...
		group.window:AddEventHandler("OnRecalculate_NewSettings", RefreshCollector)
		-- force refresh should refresh collector...
		group.window:AddEventHandler("OnRefreshCollections", RefreshCollector)
	end

	-- Add the cost group to the popout
	app.NestObject(group, costGroup, nil, 1);
end

app.AddEventHandler("OnNewPopoutGroup", BuildCost)
app.AddEventHandler("OnNewPopoutGroup", BuildTotalCost)