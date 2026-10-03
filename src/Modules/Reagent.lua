-- Reagents Module
local _, app = ...;

-- Globals
local setmetatable,tonumber,wipe,ipairs,pairs
	= setmetatable,tonumber,wipe,ipairs,pairs

-- App

-- Reagent API Implementation
-- Access via AllTheThings.Modules.Reagent
local api = {};
app.Modules.Reagent = api;

local RefreshCollectorHooked
-- Build a 'Reagents' group which if this group is listed as a craftable from Reagents
local function BuildReagents(group)
	-- Search if this group is listed as a result of a recipe
	-- TODO: need process to create Crafted -> Recipe -> Reagents reverse lookup
	-- foreach Recipe which crafts this group, create a 'Recipe - [Profession]' header
	-- add all the reagents as 'CostItem' groups

	-- Pop out the cost objects into their own sub-groups for accessibility
	-- Gold cost currently ignored
	-- Pop out the cost totals into their own sub-groups for accessibility
	-- TODO: localize
	local reagentGroup = app.CreateRawText("Total Reagents", {
		description = "Shows the breakdown of total reagents required to complete all Crafted Items within the current popout based on iterative crafting requirements and visible collectibles.\n\nNote: Any collectible Thing required to subsequently craft another collectible Thing will be assumed collected by the process of using it for the subsequent Thing.\n\nNote: Reagents with multiple qualities will all show the same quantity, but typically Recipes don't require specific quality reagents.",
		icon = app.asset("Interface_Reagent"),
		sourceIgnored = true,
		skipFull = true,
		SortPriority = -2.35,
		g = {},
		OnClick = app.UI.OnClick.OnlySortingRightClick,
	});
	-- keep an unmodified text copy
	reagentGroup.__text = reagentGroup.text

	if group.window then
		group.window.__RefreshReagentCollector = app.Modules.Reagent.GetReagentCollector(group, reagentGroup)
	end

	-- We only need one hooked method to attempt to refresh the collector on whichever window triggered the respective events
	-- This will just get added as a permanent one-time event for the session once a popout is created
	if not RefreshCollectorHooked then
		RefreshCollectorHooked = true
		-- Event handlers are still called by every Window which triggers these events, so let's just only run the Refresh
		-- if the Window itself has it assigned, instead of trying to determine if the Window matches the Event Window
		local function RefreshIfExisting(window, suffix)
			-- app.PrintDebug("Reagent.TC.Refresh?",window and window.Suffix,window and window.__RefreshReagentCollector,window and window.data._fillcomplete)
			if window and window.__RefreshReagentCollector then
				window.__RefreshReagentCollector:BeginNewScan()
			end
		end
		app.AddEventHandler("OnWindowUpdated", RefreshIfExisting)
		app.AddEventHandler("OnWindowFillComplete", RefreshIfExisting)
		-- app.PrintDebug("RefreshCollectorHooked",group.window.Suffix)
	end

	-- Add the cost group to the popout
	app.NestObject(group, reagentGroup, nil, 1);
end

-- Reagent Capture Handling
do
	-- probably fine to only have 1 Runner for cost collector... I mean how many popouts can one person make...
	local CollectorRunner = app.CreateRunner("reagent_collector")
	CollectorRunner.SetPerFrameDefault(10)

	-- RecipeDB => [RecipeID][ReagentID]=ReagentCount
	-- local RecipeReagentDB = setmetatable({}, app.MetaTable.AutoTable)
	-- TODO: probably have parser generate CraftedItemDB for simpler use
	local function GetFirstCraftingOutputRecipe(thing)
		local itemID = type(thing) == "table" and thing.itemID or tonumber(thing)
		if not itemID then end

		for reagent,recipes in pairs(app.ReagentsDB) do
			for recipeID,info in pairs(recipes) do
				if info[1] == itemID then
					-- TODO: some potential to prioritize recipes known by the current character
					return recipeID
				end
			end
		end
	end
	-- TODO: probably have parser generate RecipeDB for simpler use
	local function GetRecipeReagents(findRecipeID)
		local recipeInfo = {}
		for reagent,recipes in pairs(app.ReagentsDB) do
			for recipeID,info in pairs(recipes) do
				if recipeID == findRecipeID then
					recipeInfo[reagent] = info[2]
				end
			end
		end
		return recipeInfo
	end

	local function AddGroupRecipe(o, Collector)
		-- app.PrintDebug("AGR",o.hash,o.visible,o.recipeID,IsComplete(o))
		if not o.visible then return end

		-- only add crafted items once per hash in case it is duplicated
		local hash = o.hash
		if not hash or Collector.Hashes[hash] then return end
		Collector.Hashes[hash] = true

		-- a non-complete Thing which comes from a Recipe -> add the Recipe
		local recipeID = GetFirstCraftingOutputRecipe(o)
		if not recipeID then return end

		-- mark the recipe as being required
		-- app.PrintDebug("Needed Recipe",app:RawSearchLink("recipeID", recipeID))
		Collector.Data.Recipes[recipeID] = 1
	end
	local function AddRecipeReagentCount(recipeID, count, Reagents)
		-- TODO: this would be more efficient as a RecipeDB instead if that becomes a thing

		-- get all the Reagents & Counts required by the Recipe
		local recipeInfo = GetRecipeReagents(recipeID)
		-- app.PrintDebug("Reagents for",app:RawSearchLink("recipeID",recipeID))

		-- add the Reagents into the Reagents list
		for reagentID,count in pairs(recipeInfo) do
			Reagents[reagentID] = (Reagents[reagentID] or 0) + count
			-- app.PrintDebug(count,"x",app:RawSearchLink("itemID",reagentID))
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
		-- ignore reagents for and within certain groups
		if not group.visible or group.sourceIgnored then return end

		local runner = Collector.Runner
		local groupType = group.__type
		-- app.PrintDebug("AGR:Run",app:SearchLink(group),IgnoredTypes[groupType],IgnoredTypesForNested[groupType],group.filledCost)
		-- don't include NonCollectible or VisualHeaders
		if not IgnoredTypes[groupType] then
			runner.Run(AddGroupRecipe, group, Collector)
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

		-- idea for nesting reagents of each Recipe...
		-- at end, check all required Recipes to sum Reagents into CreateReagentItem
		-- CreateReagentItem .g is auto-populated based on ReagentDB Recipe lookup to fill
		-- all Reagents x CreateReagentItem.count

		-- Build all the reagents data
		local items = group.g
		-- ItemID / Amount
		for id,amount in pairs(Collector.Data.Reagents) do
			id = tonumber(id)
			if id then
				items[#items + 1] = app.CreateCostItem(
					app.SearchForObject("itemID", id, "field")
						or app.CreateItem(id), amount)
			end
		end
		if #items > 0 then
			app.Sort(items, app.SortDefaults.Total)
			app.AssignChildren(group)
		else
			group.OnSetVisibility = nil
		end
		app.DirectGroupUpdate(group)
		Collector:Reset()
	end
	local function ScanSubReagents(Collector)
		-- local group = Collector.__group
		-- app.PrintDebug("SSR:Start",Collector,group and group.__text)
		-- if not group then return end

		local Reagents = Collector.Data.Reagents
		-- TODO: don't rescan un-changed recipe counts
		for recipeID,count in pairs(Collector.Data.Recipes) do
			AddRecipeReagentCount(recipeID, count, Reagents)
		end

		-- TODO: adjust this method to track/scan existing Reagents to determine additional needed Recipes

		-- local costThing
		-- local anyNewCost
		-- local CurCostData = app.CloneDictionary(Collector.Data)
		-- -- Scan all current Total Costs, marking each with being scanned, and incrementing
		-- for costKey,costType in pairs(CurCostData) do
		-- 	if type(costType) == "table" then
		-- 		if rawget(costType, "Amounts") == nil then costType.Amounts = {} end
		-- 		if costKey == "c" then
		-- 			for id,amount in pairs(costType) do
		-- 				id = tonumber(id)
		-- 				if id and costType.Amounts[id] ~= amount then
		-- 					-- app.PrintDebug("have",costKey,id,amount,"checked @",costType.Amounts[id])
		-- 					costType.Amounts[id] = amount
		-- 					costThing = app.SearchForObject("currencyID", id, "key") or app.CreateCurrencyClass(id)
		-- 					anyNewCost = true
		-- 					AddGroupCosts(costThing, Collector, amount)
		-- 				end
		-- 			end
		-- 		elseif costKey == "i" then
		-- 			for id,amount in pairs(costType) do
		-- 				id = tonumber(id)
		-- 				if id and costType.Amounts[id] ~= amount then
		-- 					-- app.PrintDebug("have",costKey,id,amount,"checked @",costType.Amounts[id])
		-- 					costType.Amounts[id] = amount
		-- 					costThing = app.SearchForObject("itemID", id, "field") or app.CreateItem(id)
		-- 					anyNewCost = true
		-- 					AddGroupCosts(costThing, Collector, amount)
		-- 				end
		-- 			end
		-- 		end
		-- 	end
		-- end

		-- if anyNewCost then
		-- 	Collector.Runner.Run(ScanSubCosts, Collector)
		-- else
			Collector.Runner.Run(EndUpdating, Collector)
		-- end
	end
	local function BeginNewScan(Collector)
		-- app.PrintDebug("Collector.ScanGroups",Collector,Collector.WindowGroup.text)
		if not Collector:CheckStatusForScan() then return end

		Collector:UpdateStatus()
		wipe(Collector.InfoGroup.g)
		local runner = Collector.Runner
		runner.Run(StartUpdating, Collector)
		ScanGroups(Collector, Collector.WindowGroup)
		runner.Run(ScanSubReagents, Collector)
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
		ScanSubReagents = ScanSubReagents,
		BeginNewScan = BeginNewScan,
		Reset = Reset,
		CheckStatusForScan = CheckStatusForScan,
		UpdateStatus = UpdateStatus,
	}

	api.GetReagentCollector = function(group, infoGroup)

		-- Table which can capture cost information for a collector
		local Collector = setmetatable({
			Data = setmetatable({}, app.MetaTable.AutoTable),
			Hashes = {},
			WindowGroup = group,
			InfoGroup = infoGroup,
			Status = {},
		}, { __index = CollectorBase })

		return Collector
	end

end	-- Reagent Collector Handling

app.AddEventHandler("OnNewPopoutGroup", BuildReagents)
