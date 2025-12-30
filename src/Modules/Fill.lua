---
--- Contains functionality to perform 'Filling' operations against existing Data by way of finding and nesting
---   additional Groups where necessary to provide feedback on available content which is not actually
---   Sourced in every possible available Location
--- Dependencies: Cache, Table, Runner, Callback
---

local _, app = ...

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




local pairs,rawget,math_floor,unpack
	= pairs,rawget,math.floor,unpack

-- App locals
local SearchForObject, GetRelativeValue, ArrayAppend, AssignChildren
	= app.SearchForObject, app.GetRelativeValue, app.ArrayAppend, app.AssignChildren
local wipearray = app.wipearray

-- Fill API Implementation
-- Access via AllTheThings.Modules.Fill
local api = {}
app.Modules.Fill = api

-- OnLoad locals
local CreateObject, PriorityNestObjects, ForceFillDB, IsQuestAvailable, DirectGroupUpdate
app.AddEventHandler("OnLoad", function()
	CreateObject = app.__CreateObject
	PriorityNestObjects = app.PriorityNestObjects
	ForceFillDB = app.ForceFillDB
	IsQuestAvailable = app.IsQuestAvailable
	if not IsQuestAvailable then
		IsQuestAvailable = app.EmptyFunction
		app.print("Fill Module requires: IsQuestAvailable!")
	end
	DirectGroupUpdate = app.DirectGroupUpdate
	if not DirectGroupUpdate then
		DirectGroupUpdate = app.EmptyFunction
		app.print("Fill Module requires: DirectGroupUpdate!")
	end
end)

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

local Scopes = {"TOOLTIP","LIST","POPOUT"}
local FillSettings = {
	Container = "Fillers",
	ScopesIgnored = {},
	-- TODO: move these to Locales
	Tooltips = {
		REAGENT = "Fills any Reagent |T"..app.asset("Interface_Reagent")..":0|t with known crafting outputs based on in-game Recipes.",
	},
	Icons = {
		REAGENT = app.asset("Interface_Reagent")
	},
	Defaults = {
		NPC = false
	},
}
local ActiveFillFunctions = {}
local ScopeFillPriority = {}
-- TODO: TBD provided by the Modules which define the Fillers
local FillFunctions = {
	-- TODO: Move to Reagents module once added
	REAGENT = function(group, FillData)
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
				search.filledType = "REAGENT"
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
}

do
-- Scope the Filler tables
for i=1,#Scopes do
	ScopeFillPriority[Scopes[i]] = {}
	ActiveFillFunctions[Scopes[i]] = {}
	FillSettings.ScopesIgnored[Scopes[i]] = {}
end
-- TEMP: fill the Priority scopes with any remaining static values
local tempPriority = {
	"REAGENT",
}
for scope,priority in pairs(ScopeFillPriority) do
	for i=1,#tempPriority do
		priority[#priority + 1] = tempPriority[i]
	end
end
app.AddEventHandler("OnStartup", function()
	FillSettings.Col = ArrayAppend({NAME}, Scopes)
	local names = {"[]"}
	for name,_ in pairs(FillFunctions) do
		names[#names + 1] = name
	end
	FillSettings.Row = names
	api.Settings = FillSettings
	app.HandleEvent("Fill.DefinedSettings", FillSettings)
end)
end

local function RefreshActiveFillFunctions()
	local scopedFunctions
	for scope,priority in pairs(ScopeFillPriority) do
		scopedFunctions = ActiveFillFunctions[scope]
		wipearray(scopedFunctions)
		for i=1,#priority do
			scopedFunctions[#scopedFunctions + 1] = FillFunctions[priority[i]]
			-- app.PrintDebug("ActiveFiller",scope,i,scopedFunctions[i])
		end
	end
end
local function ToggleFiller(scope, name, active)
	-- if ever 'false' settings require active fillers, then figure that out
	if active then
		api.ActivateFiller(name, scope)
	else
		api.DeactivateFiller(name, scope)
	end
end
local function ToggleFillerBySetting(scope, name)
	local value = app.Settings:GetValue(FillSettings.Container, scope..":"..name)
	ToggleFiller(scope, name, value)
end
local function SyncFillPriorityFromSettings()
	for i=1,#Scopes do
		for name,_ in pairs(FillFunctions) do
			ToggleFillerBySetting(Scopes[i], name)
		end
	end
end
app.AddEventHandler("OnStartup", function()
	-- sync the active fillers with any fillers based on Settings
	-- handled via OnRecalculate_NewSettings event & sequence

	-- add a OnSet handler for settings changes later
	app.AddEventHandler("Settings.OnSet", function(container, key, value)
		if container ~= FillSettings.Container then return end

		local scope, name = (":"):split(key)
		ToggleFiller(scope, name, value)
	end)

	-- add a refresh fillers event
	app.AddEventHandler("Fill.RefreshFillers", RefreshActiveFillFunctions, true)
	-- if settings changes are detected during recalculate, then re-sync those settings to the Fill priority
	app.AddEventHandler("OnRecalculate_NewSettings", SyncFillPriorityFromSettings, true)
	-- new fillers added after startup (maybe other addons idk) need to sync from settings
	app.AddEventHandler("Fill.OnAddFiller", SyncFillPriorityFromSettings)
	-- add event sequences for filler changes later (this ensures that the refresh event is performed via callback)
	app.LinkEventSequence("Fill.OnActivateFiller", "Fill.RefreshFillers")
	app.LinkEventSequence("Fill.OnDeactivateFiller", "Fill.RefreshFillers")
	-- since these Events fire when loading, we want to make sure they are processed immediately and their respective
	-- Event Sequence will be called once via CallbackEvent
	app.DesignateImmediateEvent("Fill.OnActivateFiller")
	app.DesignateImmediateEvent("Fill.OnDeactivateFiller")

	-- Any filler changes which affect Lists should trigger a Minilist Rebuild
	-- TODO: perhaps in future other popouts will know how to rebuild themselves...
	local function CheckRebuildMinilist(scope, name)
		if scope ~= "LIST" then return end

		app.LocationTrigger(true)
	end
	app.AddEventHandler("Fill.OnActivateFiller", CheckRebuildMinilist)
	app.AddEventHandler("Fill.OnDeactivateFiller", CheckRebuildMinilist)
end)

-- TODO: how to handle agnostic Filler priorities?
-- Allows adding a Filler to the set of FillFunctions
-- options.Settings.[ScopesIgnored|SettingsTooltip|SettingsIcon]
-- * ScopesIgnored -> [*scopes*] (used to disable Settings UI checkboxes entirely)
-- * SettingsTooltip -> str (displayed in Settings UI tooltips)
-- * SettingsIcon -> str (represents the icon asset appended to the filler name in Settings UI)
api.AddFiller = function(name, func, options)
	if not name then error("Fill.AddFiller - Requires a 'name'") end
	if not func or type(func) ~= "function" then error("Fill.AddFillter - Requires a 'func' provided as a function which accepts a 'group' and 'FillData'") end

	name = name:upper()
	if FillFunctions[name] then error("Fill.AddFiller - Duplicate Filler name: "..name) end

	FillFunctions[name] = func

	if options then
		if options.ScopesIgnored then
			for i = 1,#options.ScopesIgnored do
				FillSettings.ScopesIgnored[options.ScopesIgnored[i]][name] = true
			end
		end
		if options.SettingsTooltip then
			FillSettings.Tooltips[name] = options.SettingsTooltip
		end
		if options.SettingsIcon then
			FillSettings.Icons[name] = options.SettingsIcon
		end
	end

	app.HandleEvent("Fill.OnAddFiller",name)
end

-- Handles making an existing Filler active within a given Scope, whether or not it is already present within the ScopeFillPriority
api.ActivateFiller = function(name, scope)
	if not name then error("Fill.ActivateFiller - Requires a 'name'") end

	name = name:upper()
	if not FillFunctions[name] then error("Fill.ActivateFiller - Filler is not defined: "..name) end

	scope = scope:upper()
	local FillPriority = ScopeFillPriority[scope]
	if not FillPriority then error("Fill.ActivateFiller - Scope is not defined: "..scope) end

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

	app.HandleEvent("Fill.OnActivateFiller",scope,name)
end

-- Handles making an existing Filler inactive, whether or not it is already present within FillPriority
api.DeactivateFiller = function(name, scope)
	if not name then error("Fill.DeactivateFiller - Requires a 'name'") end

	name = name:upper()
	if not FillFunctions[name] then error("Fill.DeactivateFiller - Filler is not defined: "..name) end

	scope = scope:upper()
	local FillPriority = ScopeFillPriority[scope]
	if not FillPriority then error("Fill.DeactivateFiller - Scope is not defined: "..scope) end

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
		app.HandleEvent("Fill.OnDeactivateFiller",scope,name)
	end
end

-- Allows retrieval of a named, existing Filler for situations where a single Filler might be needed specifically
api.GetFiller = function(name)
	if not name then return end

	return FillFunctions[name]
end

local FillAdjusts = {}
-- 1 : Remove 'e' from Filled content and de-link the hierarchy to prevent recursive filtering
FillAdjusts[1] =
	function(group)
		group.e = nil
		group.parent = nil
		group.sourceParent = nil
		local g = group.g
		if g then
			for i=1,#g do
				FillAdjusts[1](g[i])
			end
		end
	end

-- Class types which should not be filled further
local FillStopTypes = {
	EnsembleItem = 1,
	EnsembleSpell = 1,
}
local function FillGroupDirect(group, FillData, doDGU)
	local groups, temp = {}, {}
	-- only use Fillers from within the respective FillData.Fillers
	local fillers = FillData.Fillers
	-- Unpack & single Append seems to typically be about 30% faster than repeat Append
	for i=1,#fillers do
		temp[#temp + 1] = fillers[i](group, FillData)
	end
	ArrayAppend(groups, unpack(temp))

	if #groups == 0 then return end

	-- Check for Fill Adjusts
	local fillAdjuster = FillAdjusts[group.fillAdjust]
	if fillAdjuster then
		for i=1,#groups do
			fillAdjuster(groups[i])
		end
	end

	-- Adding the groups normally based on available-source priority
	PriorityNestObjects(group, groups, nil, app.RecursiveCharacterRequirementsFilter, app.RecursiveGroupRequirementsFilter);

	-- if FillData.Debug then
	-- 	app.PrintDebug("FG-MergeResults",app:SearchLink(group),#groups,"=>",#group.g)
	-- end
	AssignChildren(group);
	if doDGU then DirectGroupUpdate(group) end
	-- check if this group is actually force-filled
	local ignoreSkip = group.sym or group.headerID or group.classID
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
local function SkipFillingGroup(group, FillData)
	local skipFill = group.skipFull
	if skipFill then return true end

	skipFill = group.skipFill
	if (skipFill and FillData.InMinilist) or skipFill == 2 then return true; end

	-- do not fill the same object twice in multiple Locations
	local groupHash, included = group.hash, FillData.Included;
	if included[groupHash] then return true; end

	-- do not fill 'saved' groups in ATT tooltips
	-- or groups directly under saved groups unless in Debug mode
	if not app.MODE_DEBUG then
		-- only ignore filling non-repeatable saved 'quest' groups
		if group.questID then
			--  (unless it's an Item/repeatable, which we ignore the ignore... :D)
			if group.itemID or group.repeatable then return end

			-- don't fill under unavailable quests
			if not IsQuestAvailable(group) then
				-- app.PrintDebug("Unavailable Quest not Filled",app:SearchLink(group))
				return true
			end
		end

		-- root fills of a thing from a saved parent should still show their contains, so don't use .parent
		local parent = rawget(group, "parent");
		-- direct parent is a non-repeatable saved quest, then do not fill with stuff
		if parent and parent.questID and not parent.itemID and not parent.repeatable and not IsQuestAvailable(parent) then
			-- app.PrintDebug("Unavailable Parent Quest not Filled",app:SearchLink(parent))
			return true
		end
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

	local g = group.g
	-- Some Types should never be filled beyond themselves, unless there's another group of the same Type
	-- Only matters for Ensembles right now. If any other Types added, might need to review
	if g and FillStopTypes[group.__type] then
		local nextFill, o
		for i=1,#g do
			o = g[i]
			if FillStopTypes[o.__type] then
				if nextFill then nextFill[#nextFill + 1] = o
				else nextFill = { o } end
			end
		end
		return nextFill
	end

	return g
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

	local g = group.g
	-- Some Types should never be filled beyond themselves, unless there's another group of the same Type
	-- Only matters for Ensembles right now. If any other Types added, might need to review
	if g and FillStopTypes[group.__type] then
		local nextFill, o
		for i=1,#g do
			o = g[i]
			if FillStopTypes[o.__type] then
				if nextFill then nextFill[#nextFill + 1] = o
				else nextFill = { o } end
			end
		end
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("AddLayered.g",FillData.CurrentLayer,#g,app:SearchLink(group))
		-- end
		app.ArrayAppend(FillData.NextLayer, nextFill)
		return
	end

	if g then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("AddLayered.g",FillData.CurrentLayer,#g,app:SearchLink(group))
		-- end
		app.ArrayAppend(FillData.NextLayer, g)
	end
end
local function RunGroupsLayeredAsync(FillData)
	local g = FillData.NextLayer;
	if g and #g > 0 then
		-- if FillData.CurrentLayer then
		-- 	app.PrintDebug("FillLayered",FillData.CurrentLayer,#g)
		-- 	FillData.CurrentLayer = FillData.CurrentLayer + 1
		-- end
		local Run = FillData.Runner.Run;
		-- Then nest anything further
		for i=1,#g do
			Run(FillGroupsLayeredAsync, g[i], FillData)
		end
		wipearray(FillData.NextLayer)
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
local FillGroups = function(group, options)
	group.__FillGroups = true
	-- Sometimes entire sub-groups should be preventing from even allowing filling (i.e. Dynamic groups)
	local skipFull = app.GetRelativeRawWithField(group, "skipFull");
	if skipFull then return end

	-- Check if this group is inside a Window or not
	local groupWindow = app.GetRelativeRawWithField(group, "window");
	local fillers = options and options.Fillers
	if not fillers then
		local fillScope = groupWindow and (groupWindow.Suffix == "CurrentInstance" and "LIST" or "POPOUT") or "TOOLTIP"
		fillers = ActiveFillFunctions[fillScope]
	end
	-- Setup the FillData for this fill operation
	local FillData = {
		Included = {},
		CraftedItems = {},
		NextLayer = {},
		-- CurrentLayer = 0,	-- debugging
		InWindow = groupWindow and true or nil,
		InMinilist = groupWindow and groupWindow.Suffix == "CurrentInstance" and true or nil,
		-- TODO: Fillers can provide context requirements for themselves to be utilized for a given
		-- fill operation.
		-- i.e. provided the Root/Window/Instance/Combat -- the Filler may return that it should not be included
		Fillers = fillers,
		SkipLevel = app.GetSkipLevel(),
		Root = group,
		FillRecipes = group.recipeID or app.ReagentsDB[group.itemID or 0],
		-- Debug = group.itemID == 24368
	};

	-- app.PrintDebug("FillGroups",group.__type,group,"Fillers",fillers,app:SearchLink(group))
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

		-- Layered Fill
		Runner.Run(FillGroupsLayeredAsync, group, FillData)
		Runner.Run(RunGroupsLayeredAsync, FillData)

	else
		-- app.PrintDebug("FG",group.hash)
		-- this logic performs fills across an entire logical layer of data via a breadth-first approach
		-- which should ideally have less nesting in total
		local FillLayer = {group}
		local NextLayer
		while #FillLayer > 0 do
			NextLayer = {}
			-- for i=1,#FillLayer do
			-- 	app.ArrayAppend(NextLayer, FillGroupsLayered(FillLayer[i], FillData))
			-- end
			for i=1,#FillLayer do
				NextLayer[#NextLayer + 1] = FillGroupsLayered(FillLayer[i], FillData)
			end
			wipearray(FillLayer)
			FillLayer = app.ArrayAppend(FillLayer, unpack(NextLayer))
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
