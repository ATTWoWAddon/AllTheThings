---
--- Contains functionality to perform 'Filling' operations against existing Data by way of finding and nesting
---   additional Groups where necessary to provide feedback on available content which is not actually
---   Sourced in every possible available Location
--- Dependencies: Cache, Table, Runner, Callback
---

local appName, app = ...

local CurrentSkipLevel = 0	-- Whether to skip certain cost items
-- Returns the current Skip Level
app.GetSkipLevel = function()
	return CurrentSkipLevel
end
-- Assigns a Skip Level to be used when Fill operations take place. This is to reduce extremely excessive bloated lists
-- due to huge amounts of Sources for some Cost groups
-- 0 	- (default, never skipped)
-- 1 	- (tooltip, skipped unless within tooltip/popout)
-- 1.5	- (tooltip root, skipped unless tooltip root or within popout)
-- 2 	- (popout, skipped unless within popout)
-- 2.5 	- (popout root, skipped unless root of popout)
app.SetSkipLevel = function(level)
	-- print("SkipPurchases exclusion",level)
	CurrentSkipLevel = level or 0
end

-- Currently, Classic does not use any of the following Fill logic but the above
-- SkipLevel functions are referenced within Classic files
if app.IsClassic then return end




local wipe,pairs,ipairs,rawget,math_floor
	= wipe,pairs,ipairs,rawget,math.floor

-- App locals
local SearchForObject, SearchForField, GetRelativeValue, ArrayAppend, AssignChildren
	= app.SearchForObject, app.SearchForField, app.GetRelativeValue, app.ArrayAppend, app.AssignChildren

-- Fill API Implementation
-- Access via AllTheThings.Modules.Fill
local api = {}
app.Modules.Fill = api

-- OnLoad locals
local CreateObject, ResolveSymbolicLink, PriorityNestObjects, NPCExpandHeaders, ForceFillDB
app.AddEventHandler("OnLoad", function()
	CreateObject = app.__CreateObject
	ResolveSymbolicLink = app.ResolveSymbolicLink
	PriorityNestObjects = app.PriorityNestObjects
	NPCExpandHeaders = app.HeaderData.FILLNPCS or app.EmptyTable
	ForceFillDB = app.ForceFillDB
end)

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
		[2778] = 2.5,	-- Bronze
	},
	LearnedTypes = {
		Toy = 1,
		Recipe = 1,
		RecipeWithItem = 1,
		Mount = 1,
		BattlePet = 1,
	}
}
-- TODO: TBD some consolidation of Fillers based on the Root being filled...
-- i.e. if filling MoH or Bronze, we would just remove the PURCHASE Filler from ActiveFillers, and not need to check this for every group
local function ShouldFillPurchases(group, FillData)
	local val
	for key,values in pairs(SkipPurchases) do
		val = group[key]
		if val then
			val = values[val]
			if not val then return true end
			if (FillData.SkipLevel or CurrentSkipLevel) < val - (group == FillData.Root and 0.5 or 0) then
				return
			end
		end
	end
	return true;
end

-- TODO: allow Modules to define Fill functions and use that for Cost/Upgrade/Catalyst/Reagents?
-- TODO: Settings automatically updated via Modules adding Fill functions
-- TODO: splitting Fill functions by Fill Source? (Window vs Tooltip)

-- TODO: TBD helper functions move to modules which need them for their Fillers
-- Used with recipeID to make distinct itemID combinations, must be 1 order of magnitude greater than the highest recipeID
local RECIPEMOD_THRESHOLD = 10000000
local function DetermineRecipeOutputGroups(group, FillData)
	local recipeID = group.recipeID;
	if not recipeID then return end
	-- only fill root recipes or those marked as 'fillable'
	if not group.fillable and FillData.Root ~= group then return end

	-- this would be more efficient as a RecipeDB instead if that becomes a thing
	local info
	for reagent,recipes in pairs(app.ReagentsDB) do
		info = recipes[recipeID]
		if info then break end
	end
	if not info then return end

	local skipLevel = FillData.SkipLevel or 0
	-- track crafted items which are filled across the entire fill sequence
	local craftedItems = FillData.CraftedItems

	local recipeMod = recipeID / RECIPEMOD_THRESHOLD
	local craftedItemID = info[1];
	if craftedItemID and not craftedItems[craftedItemID]
		and not craftedItems[craftedItemID + recipeMod] and skipLevel > 1 then
		craftedItems[craftedItemID + recipeMod] = true
		local search = SearchForObject("itemID",craftedItemID,"field")
		search = (search and CreateObject(search)) or app.CreateItem(craftedItemID)
		-- app.PrintDebug("DetermineRecipeOutput",search.hash,app:SearchLink(group),"=>",app:SearchLink(search))
		return {search}
	end
end
local function GetAllNestedGroupsByFunc(results, groups, func)
	local g
	for _,o in ipairs(groups) do
		if func(o) then results[#results + 1] = o end
		g = o.g
		if g then
			for _,t in ipairs(g) do
				GetAllNestedGroupsByFunc(results, t, func)
			end
		end
	end
end
local function GetNpcIDForDrops(group)
	-- assuming for any 'crs' references on an encounter/header group that all crs are linked to the same resulting content
	-- Fyrakk Assaults uses two headers with 'crs' test that when changing this check
	return group.npcID or group.creatureID or ((group.encounterID or group.isWorldQuest) and group.crs and group.crs[1])
end
local function GetRelativeFieldInSet(group, field, set)
	if group then
		local val = group[field]
		return set[val] and val or GetRelativeFieldInSet(group.sourceParent or group.parent, field, set);
	end
end

local ActiveFillFunctions = {}
-- TODO: TBD by functions/values provided by the Modules which define the Fillers
local FillPriority = {
	"UPGRADE",
	"CATALYST",
	"PURCHASE",
	"SYMLINK",
	"CRAFTED",
}
-- TODO: TBD provided by the Modules which define the Fillers
local FillFunctions = {
	CATALYST = function(group, FillData)
		local catalystResult = group.catalystResult;
		if catalystResult then
			if not catalystResult.collected then
				group.filledCatalyst = true;
			end
			-- app.PrintDebug("filledCatalyst=",catalystResult.modItemID,catalystResult.collected,"<",group.modItemID)
			local o = CreateObject(catalystResult);
			return { o };
		end
	end,
	UPGRADE = function(group, FillData)
		local nextUpgrade = group.nextUpgrade;
		if nextUpgrade then
			if not nextUpgrade.collected then
				group.filledUpgrade = true;
			end
			-- app.PrintDebug("filledUpgrade=",nextUpgrade.modItemID,nextUpgrade.collected,"<",group.modItemID)
			local o = CreateObject(nextUpgrade);
			return { o };
		end
	end,
	PURCHASE = function(group, FillData)
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
			-- 	NestObjects(sourceGroup, collectibles, true)
			-- 	NestObject(group, sourceGroup, nil, 1)
			-- end
			local groupHash = group.hash;
			-- app.PrintDebug("DeterminePurchaseGroups",app:SearchLink(group),"-collectibles",collectibles and #collectibles);
			local groups = {};
			local clone;
			for _,o in ipairs(collectibles) do
				if o.hash ~= groupHash then
					-- app.PrintDebug("Purchase @",app:SearchLink(o))
					clone = CreateObject(o);
					groups[#groups + 1] = clone
				end
			end
			-- app.PrintDebug("DeterminePurchaseGroups-final",groups and #groups);
			-- mark this group as no-longer collectible as a cost since its cost collectibles have been determined
			if #groups > 0 then
				group.collectibleAsCost = false;
				group.filledCost = true;
				group.costTotal = nil;
			end
			return groups;
		end
	end,
	CRAFTED = function(group, FillData)
		local itemID = group.itemID;
		local itemRecipes = app.ReagentsDB[itemID];
		-- if we're filling a window (level 2) for a Reagent
		-- then we will allow showing the same crafted item multiple times
		-- so that different reagents can all be visible for the same purpose
		local expandedNesting = (FillData.SkipLevel or 0) > 1 and FillData.FillRecipes
		-- if not itemRecipes then return; end
		if not itemRecipes then
			if expandedNesting then
				return DetermineRecipeOutputGroups(group, FillData)
			end
			return
		end

		local craftableItemIDs = {}
		-- track crafted items which are filled across the entire fill sequence
		local craftedItems = FillData.CraftedItems
		if FillData.Root == group then
			craftedItems[itemID] = true
		end
		local craftedItemID, recipe, skillID

		-- If needing to filter by skill due to BoP reagent, then check via recipe cache instead of by crafted item
		-- If the reagent itself is BOP, then only show things you can make.
		-- 2024-08-15: Revised: instead of changing what is filled (affected by filtering) instead always fill everything possible
		-- and include necessary filtering information for each output, i.e. the skillID on outputs
		-- this should filter properly based on ignoring filters on BoE items & using Debug/Account mode without having to refill

		local groups = {};
		-- find recipe(s) which creates this item
		for recipeID,info in pairs(itemRecipes) do
			craftedItemID = info[1];
			-- app.PrintDebug(app:RawSearchLink("itemID",itemID),"x",info[2],"=>",app:RawSearchLink("itemID",craftedItemID),"via",app:RawSearchLink("spellID",recipeID));
			if craftedItemID and not craftableItemIDs[craftedItemID] and (expandedNesting or not craftedItems[craftedItemID]) then
				-- app.PrintDebug("recipeID",recipeID);
				recipe = SearchForObject("recipeID",recipeID,"key") or app.CreateRecipe(recipeID)
				if recipe then
					if expandedNesting then
						recipe = app.CreateNonCollectibleWithGroups(recipe)
						recipe.fillable = true
						groups[#groups + 1] = recipe
					else
						-- crafted items should be considered unique per recipe
						-- recipes are 1M+ now :O
						craftableItemIDs[craftedItemID + (recipeID / RECIPEMOD_THRESHOLD)] = recipe;
					end
				else
					-- app.PrintDebug("Unsourced recipeID",recipe);
					-- we don't have the Recipe sourced, so just include the crafted item anyway
					craftableItemIDs[craftedItemID] = true;
				end
			-- else app.PrintDebug("Skipped, already listed")
			end
		end

		if not expandedNesting then
			local search
			for craftedItemID,recipe in pairs(craftableItemIDs) do
				craftedItemID = math_floor(craftedItemID)
				craftedItems[craftedItemID] = true
				skillID = recipe ~= true and GetRelativeValue(recipe, "skillID") or nil
				-- Searches for a filter-matched crafted Item
				search = SearchForObject("itemID",craftedItemID,"field");
				search = (search and CreateObject(search)) or app.CreateItem(craftedItemID)
				-- link the respective crafted item object to the skill required by the crafting recipe
				search.requireSkill = skillID
				search.containsType = "REAGENT"
				-- app.PrintDebug("craftedItemID",app:RawSearchLink("itemID",craftedItemID),"via skill",app:RawSearchLink("professionID",skillID),skillID)
				groups[#groups + 1] = search
			end
		end

		-- app.PrintDebug("DetermineCraftedGroups",app:SearchLink(group),groups and #groups);
		if #groups > 0 then
			group.filledReagent = true;
		end
		return groups;
	end,
	SYMLINK = function(group, FillData)
		if group.sym then
			-- app.PrintDebug("DSG-Now",app:SearchLink(group));
			local groups = ResolveSymbolicLink(group);
			-- make sure this group doesn't waste time getting resolved again somehow
			group.sym = nil;
			if groups and #groups > 0 then
				-- flag all nested symlinked content so that any NPC groups do not nest NPC data
				local results = {}
				GetAllNestedGroupsByFunc(results, groups, GetNpcIDForDrops)
				for _,o in ipairs(results) do
					o.NestNPCDataSkip = true
				end
			end
			-- app.PrintDebug("DSG",groups and #groups);
			return groups;
		end
	end,
	-- Pulls in Common drop content for specific NPCs if any exists
	-- (so we don't need to always symlink every NPC which is included in common boss drops somewhere)
	NPC = function(group, FillData)
		if group.NestNPCDataSkip then return end

		local npcID = GetNpcIDForDrops(group)
		if not npcID then return end

		-- app.PrintDebug("NPC Group",app:SearchLink(group),npcID)
		-- search for groups of this NPC
		local npcGroups = SearchForField("npcID", npcID);
		if not npcGroups or #npcGroups == 0 then return end

		-- see if there's a difficulty wrapping the fill group
		local difficultyID = GetRelativeValue(group, "difficultyID");
		if difficultyID then
			-- app.PrintDebug("FillNPC.Diff",difficultyID)
			-- can only fill npc groups for the npc which match the difficultyID
			local headerID, groups, npcDiff;
			for _,npcGroup in ipairs(npcGroups) do
				if npcGroup.hash ~= group.hash then
					headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
					-- app.PrintDebug("DropCheck",app:SearchLink(npcGroup),"=>",headerID)
					-- where headerID is allowed and the nested difficultyID matches
					if headerID then
						npcDiff = GetRelativeValue(npcGroup, "difficultyID");
						-- copy the header under the NPC groups
						if not npcDiff or npcDiff == difficultyID then
							-- wrap the npcGroup in the matching header if it is not a header
							if not npcGroup.headerID then
								npcGroup = app.CreateCustomHeader(headerID, {g={CreateObject(npcGroup)}})
							end
							-- app.PrintDebug("IsDrop.Diff",difficultyID,group.hash,"<==",npcGroup.hash)
							if groups then groups[#groups + 1] = CreateObject(npcGroup)
							else groups = { CreateObject(npcGroup) }; end
						end
					end
				end
			end
			return groups;
		else
			-- app.PrintDebug("FillNPC")
			local headerID, groups;
			for _,npcGroup in ipairs(npcGroups) do
				if npcGroup.hash ~= group.hash then
					headerID = GetRelativeFieldInSet(npcGroup, "headerID", NPCExpandHeaders);
					-- app.PrintDebug("DropCheck",app:SearchLink(npcGroup),"=>",headerID)
					-- where headerID is allowed
					if headerID then
						-- copy the header under the NPC groups
						-- wrap the npcGroup in the matching header if it is not a header
						if not npcGroup.headerID then
							npcGroup = app.CreateCustomHeader(headerID, {g={CreateObject(npcGroup)}})
						end
						-- app.PrintDebug("IsDrop",group.hash,"<==",npcGroup.hash)
						if groups then groups[#groups + 1] = CreateObject(npcGroup)
						else groups = { CreateObject(npcGroup) }; end
					end
				end
			end
			return groups;
		end
	end
}

local SettingsBasedFillers = {
	Tooltips = {
		["NPCData:Nested"] = {"NPC"}
	}
}

local function RefreshActiveFillFunctions()
	local ActiveFillers = #ActiveFillFunctions
	wipe(ActiveFillFunctions)
	for i=1,#FillPriority do
		ActiveFillFunctions[#ActiveFillFunctions + 1] = FillFunctions[FillPriority[i]]
		-- app.PrintDebug("ActiveFiller",i,ActiveFillFunctions[i])
	end
	-- was there a change in fillers?
	if ActiveFillers ~= #ActiveFillFunctions then
		-- TODO: don't really have a consistent way to 'rebuild' any given window due to Filler changes...
		-- only one is minilist can rebuild
	end
end
local function ToggleFiller(name, active)
	-- if ever 'false' settings require active fillers, then figure that out
	if active then
		api.ActivateFiller(name)
	else
		api.DeactivateFiller(name)
	end
end
local function ToggleFillersBySetting(container, key)
	local check = SettingsBasedFillers[container]
	if not check then return end

	check = check[key]
	if not check then return end

	local value = app.Settings:GetValue(container, key)
	for i=1,#check do
		ToggleFiller(check[i], value)
	end
end
local function ToggleFillersBySettingValue(container, key, value)
	local check = SettingsBasedFillers[container]
	if not check then return end

	check = check[key]
	if not check then return end

	for i=1,#check do
		ToggleFiller(check[i], value)
	end
end
app.AddEventHandler("OnStartup", function()
	-- sync the active fillers with any fillers based on Settings
	for container,keys in pairs(SettingsBasedFillers) do
		for key,fillers in pairs(keys) do
			ToggleFillersBySetting(container, key)
		end
	end
	RefreshActiveFillFunctions()

	-- add a OnSet handler for settings changes later
	app.AddEventHandler("Settings.OnSet", function(container, key, value)
		ToggleFillersBySettingValue(container, key, value)
	end)

	-- add a refresh fillers event
	app.AddEventHandler("Fill.RefreshFillers", RefreshActiveFillFunctions)
	-- add event sequences for filler changes later (this ensures that the refresh event is performed via callback)
	app.LinkEventSequence("Fill.OnAddFiller", "Fill.RefreshFillers")
	app.LinkEventSequence("Fill.ActivateFiller", "Fill.RefreshFillers")
	app.LinkEventSequence("Fill.DeactivateFiller", "Fill.RefreshFillers")
end)

-- TODO: how to handle agnostic Filler priorities?
-- Allows adding a Filler to the set of FillFunctions
-- options.Settings.[Container|Key]
api.AddFiller = function(name, func, options)
	if not name then error("Fill.AddFiller - Requires a 'name'") end
	if not func or type(func) ~= "function" then error("Fill.AddFillter - Requires a 'func' provided as a function which accepts a 'group' and 'FillData'") end

	name = name:upper()
	if FillFunctions[name] then error("Fill.AddFiller - Duplicate Filler name: "..name) end

	FillFunctions[name] = func
	FillPriority[#FillPriority + 1] = name

	if options then
		-- linked to a Settings value
		if options.Settings then
			local container = options.Settings.Container
			local key = options.Settings.Key
			if not container and not key then error("Fill.AddFiller - Requires both options.Settings.Container or options.Settings.Key for options.Settings: "..name) end

			local settingscontainer = SettingsBasedFillers[container]
			if not settingscontainer then
				settingscontainer = {}
				SettingsBasedFillers[container] = settingscontainer
			end

			local settingskey = settingscontainer[key]
			if not settingskey then
				settingskey = {}
				settingscontainer[key] = settingskey
			end

			settingskey[#settingskey + 1] = name

			ToggleFiller(name, app.Settings:GetValue(container, key))
		end
	end

	app.HandleEvent("Fill.OnAddFiller",name)
end

-- Handles making an existing Filler active, whether or not it is already present within FillPriority
api.ActivateFiller = function(name)
	if not name then error("Fill.ActivateFiller - Requires a 'name'") end

	name = name:upper()
	if not FillFunctions[name] then error("Fill.ActivateFiller - Filler is not defined: "..name) end

	-- find the negative Filler index
	local i = -1
	local filler = FillPriority[i]
	while (filler and filler ~= name) do
		i = i - 1
		filler = FillPriority[i]
	end
	-- app.PrintDebug("Fill.ActivateFiller.Backup",i,filler)
	-- already an active filler?
	-- find the Filler index
	if not filler then
		i = 1
		filler = FillPriority[i]
		while (filler and filler ~= name) do
			i = i + 1
			filler = FillPriority[i]
		end
		-- app.PrintDebug("Fill.ActivateFiller.Active",i,filler)
		-- it's already active, so return
		if filler then return end
	end

	-- move the filter to the active filter set
	FillPriority[#FillPriority + 1] = name

	-- remove the backup index and shift any further backups
	while (filler) do
		-- app.PrintDebug("Fill.ActivateFiller.Shifted",i,FillPriority[i - 1])
		FillPriority[i] = FillPriority[i - 1]
		i = i - 1
		filler = FillPriority[i]
	end

	app.HandleEvent("Fill.ActivateFiller",name)
end

-- Handles making an existing Filler inactive, whether or not it is already present within FillPriority
api.DeactivateFiller = function(name)
	if not name then error("Fill.DeactivateFiller - Requires a 'name'") end

	name = name:upper()
	if not FillFunctions[name] then error("Fill.DeactivateFiller - Filler is not defined: "..name) end

	-- find the Filler index if existing
	for i=1,#FillPriority do
		if FillPriority[i] == name then
			-- app.PrintDebug("Fill.DeactivateFiller.Remove",name,i)
			tremove(FillPriority, i)
			break
		end
	end

	-- find the next negative Filler index if not already deactivated
	local i = -1
	local filler = FillPriority[i]
	while (filler and filler ~= name) do
		i = i - 1
		filler = FillPriority[i]
	end
	if not filler then
		-- app.PrintDebug("Fill.DeactivateFiller.Backup",i,name)
		FillPriority[i] = name
		app.HandleEvent("Fill.DeactivateFiller",name)
	end
end

local function FillGroupDirect(group, FillData, doDGU)
	local ignoreSkip = group.sym or group.headerID or group.classID
	local groups = {}
	-- TODO compare performance with table assigns and then unpack into single arrayappend, but probably worse?
	for i=1,#ActiveFillFunctions do
		ArrayAppend(groups, ActiveFillFunctions[i](group, FillData))
	end

	-- Adding the groups normally based on available-source priority
	PriorityNestObjects(group, groups, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);

	if groups and #groups > 0 then
		-- if FillData.Debug then
		-- 	app.PrintDebug("FG-MergeResults",app:SearchLink(group),#groups,"=>",#group.g)
		-- end
		AssignChildren(group);
		if doDGU then app.DirectGroupUpdate(group); end
		-- check if this group is actually force-filled
		local forceFillType = not ignoreSkip and ForceFillDB[group.__type]
		if forceFillType and forceFillType[group.keyval] then
			ignoreSkip = true
		end
		-- mark this group as being filled since it actually received filled content (unless it's ignored for being skipped)
		if not ignoreSkip then
			local groupHash = group.hash;
			if groupHash then
				-- app.PrintDebug("FGA-Included",groupHash,#groups)
				FillData.Included[groupHash] = true;
			end
		end
	end
end
local function SkipFillingGroup(group, FillData)
	local skipFill = group.skipFull
	if skipFill then return true end

	skipFill = group.skipFill
	if (skipFill and FillData.InWindow) or skipFill == 2 then return true; end

	-- do not fill the same object twice in multiple Locations
	local groupHash, included = group.hash, FillData.Included;
	if included[groupHash] then return true; end

	-- do not fill 'saved' groups in ATT tooltips
	-- or groups directly under saved groups unless in Debug mode
	if not app.MODE_DEBUG then
		-- only ignored filling saved 'quest' groups (unless it's an Item, which we ignore the ignore... :D)
		if group.questID then
			if not group.itemID and group.saved then
				return true
			end
			-- don't fill under locked quests
			if group.locked then
				return true
			end
		end
		-- root fills of a thing from a saved parent should still show their contains, so don't use .parent
		local parent = rawget(group, "parent");
		-- direct parent is a saved quest, then do not fill with stuff
		if parent and parent.questID and (parent.saved or parent.locked) then return true; end
	end
end
-- Fills the group and returns an array of the next layer of groups to fill
local function FillGroupsLayered(group, FillData)
	if SkipFillingGroup(group, FillData) then
		-- if FillData.Debug then
		-- 	app.print(app.Modules.Color.Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		-- end
		-- app.PrintDebug(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		return;
	end
	-- app.PrintDebug("FGR",group.hash)

	FillGroupDirect(group, FillData)

	return group.g
end
-- Fills the group and returns an array of the next layer of groups to fill
-- Run an entire layer, run a function to run the next layer
-- Capture next layer
local function FillGroupsLayeredAsync(group, FillData)
	if SkipFillingGroup(group, FillData) then
		-- if FillData.Debug then
		-- 	app.print(app.Modules.Color.Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		-- end
		-- app.PrintDebug(Colorize("FGR-SKIP",app.Colors.ChatLinkError),app:SearchLink(group))
		return;
	end
	-- app.PrintDebug("FGL",group.hash)

	FillGroupDirect(group, FillData, true)

	local g = group.g;
	if g then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("AddLayered.g",FillData.CurrentLayer,#g,app:SearchLink(group))
		-- end
		app.ArrayAppend(FillData.NextLayer, g)
	end
end
local function RunGroupsLayeredAsync(FillData)
	local g = FillData.NextLayer;
	if #g > 0 then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("FillLayered",FillData.CurrentLayer,#g)
		-- 	FillData.CurrentLayer = FillData.CurrentLayer + 1
		-- end
		local Run = FillData.Runner.Run;
		-- Then nest anything further
		for _,o in ipairs(g) do
			Run(FillGroupsLayeredAsync, o, FillData)
		end
		wipe(FillData.NextLayer)
		-- Re-run the layer runner since there's been more filling scheduled
		Run(RunGroupsLayeredAsync, FillData)
	end
end
-- If we fill something under the group where it may be usable without itself meeting current filters,
-- then it should override filtering during UpdateGroup
local function AssignGroupFilledTag(group)
	group.wasFilled = group.filledReagent or group.filledCost or group.filledUpgrade
	-- app.PrintDebug("wasFilled",app:SearchLink(group),group.filledReagent,group.filledCost,group.filledUpgrade)
end
local function HandleOnWindowFillComplete(window)
	window.data._fillcomplete = true
	AssignGroupFilledTag(window.data)
	app.HandleEvent("OnWindowFillComplete", window)
end
-- Appends sub-groups into the item group based on what is required to have this item (cost, source sub-group, reagents, symlinks)
local FillGroups = function(group)
	group.__FillGroups = true
	-- Sometimes entire sub-groups should be preventing from even allowing filling (i.e. Dynamic groups)
	local skipFull = app.GetRelativeRawWithField(group, "skipFull");
	if skipFull then return end
	-- Check if this group is inside a Window or not
	local groupWindow = app.GetRelativeRawWithField(group, "window");
	-- Setup the FillData for this fill operation
	local FillData = {
		Included = {},
		CraftedItems = {},
		NextLayer = {},
		-- CurrentLayer = 0,	-- debugging
		InWindow = groupWindow and true or nil,
		SkipLevel = app.GetSkipLevel(),
		Root = group,
		FillRecipes = group.recipeID or app.ReagentsDB[group.itemID or 0],
		-- Debug = group.itemID == 207026
	};

	-- app.PrintDebug("FillGroups",group.__type,group,app:SearchLink(group))
	-- app.PrintTable(FillData)

	-- Fill the group with all nestable content
	if groupWindow then
		local Runner = groupWindow:GetRunner();
		FillData.Runner = Runner
		if not groupWindow.SelfHandleOnWindowFillComplete then
			-- capture a function closure which can handle the event for the window
			-- since OnEnd does not handle parameters
			groupWindow.SelfHandleOnWindowFillComplete = function()
				HandleOnWindowFillComplete(groupWindow)
			end
		end
		-- only trigger the OnWindowFillComplete event if we are filling the Root group of the window
		if groupWindow.data == group then
			Runner.OnEnd(groupWindow.SelfHandleOnWindowFillComplete)
		end
		-- 1 is way too low as it then takes 1 frame per individual row in the minilist... i.e. Valdrakken took 14,000 frames
		Runner.SetPerFrame(25);
		-- Recursive Fill
		-- Runner.Run(FillGroupsRecursiveAsync, group, FillData);

		-- Layered Fill
		Runner.Run(FillGroupsLayeredAsync, group, FillData)
		Runner.Run(RunGroupsLayeredAsync, FillData)

	else
		-- app.PrintDebug("FG",group.hash)
		-- this performs depth-first filling which leads to usually one group having tons of nesting
		-- and other top-level groups being skipped as they had some other means of being
		-- filled in a deeper group
		-- FillGroupsRecursive(group, FillData);

		-- this logic performs fills across an entire logical layer of data via a breadth-first approach
		-- which should ideally have less nesting in total
		local FillLayer = {group}
		local NextLayer = {}
		while #FillLayer > 0 do
			for _,fillGroup in ipairs(FillLayer) do
				app.ArrayAppend(NextLayer, FillGroupsLayered(fillGroup, FillData))
			end
			FillLayer = NextLayer
			NextLayer = {}
		end

		AssignGroupFilledTag(group)
		-- app.PrintDebugPrior("FG",group.hash)
	end

	-- if app.Debugging then app.PrintTable(included) end
	-- app.PrintDebug("FillGroups Complete",group.hash,group.__type)
end
app.FillGroups = FillGroups
local function TryFillPopoutGroup(group)
	-- If the group specifically needs to be filled, do that now that it's in the window
	if not group.__FillGroups then
		-- app.PrintDebug("DoFillGroups",app:SearchLink(group))
		app.SetSkipLevel(2)
		FillGroups(group)
		app.SetSkipLevel(0)
	-- else app.PrintDebug("already filled",app:SearchLink(group))
	end
end
app.AddEventHandler("OnNewPopoutGroup", TryFillPopoutGroup)