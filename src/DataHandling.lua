---
--- Contains functionality to handle the manipulation of data within ATT
--- Dependencies: Runner, Callback
---

local appName, app = ...

local pairs,ipairs,rawget,tinsert,tonumber,GetTimePreciseSec,tremove,select,setmetatable,getmetatable,type
	= pairs,ipairs,rawget,tinsert,tonumber,GetTimePreciseSec,tremove,select,setmetatable,getmetatable,type

local DelayedCallback = app.CallbackHandlers.DelayedCallback
local Runner = app.CreateRunner("update")
app.UpdateRunner = Runner

-- Module Locals
local L,Colorize
app.AddEventHandler("OnLoad", function()
	L = app.L
	if app.Modules.Color then
		Colorize = app.Modules.Color.Colorize
	else
		Colorize = function(text) return text end
	end
end)

---- Update Group Data ----

local DefaultGroupVisibility, DefaultThingVisibility
local UpdateGroups
local RecursiveGroupRequirementsFilter, GroupFilter, GroupVisibilityFilter, ThingVisibilityFilter, TrackableFilter
local FilterSet, FilterGet, Filters_ItemUnbound, ItemUnboundSetting
local SetGroupVisibility, SetThingVisibility, BaseSetGroupVisibility, BaseSetThingVisibility
local function SetDefaultVisibility(parent, group)
	group.visible = true
end
-- Visibilty Checks
-- nil - the check doesn't result in a visible outcome
-- true - the check resulted in a visible outcome
-- 2 - the check resulted in a visible outcome and should force the parent to also persist visibility
local function Visibility_ForceShow(group)
	if group.forceShow then
		group.forceShow = nil
		-- Continue the forceShow visibility outward
		return 2
	end
end
local function Visibility_Total_Group(group)
	local total = group.total
	if total > 0 then
		return group.progress < total or GroupVisibilityFilter(group)
	end
end
local function Visibility_Total_Thing(group)
	local total = group.total
	if total > 0 then
		return group.progress < total or ThingVisibilityFilter(group)
	end
end
local function Visibility_Cost(group)
	if (group.costTotal or 0) > 0 then
		-- app.PrintDebug("SGV.cost",group.hash,visible,group.costTotal)
		return true
	end
end
local function Visibility_Upgrade(group)
	if (group.upgradeTotal or 0) > 0 then
		-- if debug then print("SGV.hasUpgrade",group.hash,visible) end
		return true
	end
end
local function Visibility_Trackable_Group(group)
	if TrackableFilter(group) then
		local visible = not group.saved or GroupVisibilityFilter(group)
		return visible and 2 or nil
	end
end
local function Visibility_Trackable_Thing(group)
	if TrackableFilter(group) then
		local visible = not group.saved or ThingVisibilityFilter(group)
		return visible and 2 or nil
	end
end
local function Visibility_Custom(group)
	if group.OnSetVisibility then
		return group:OnSetVisibility()
	end
end
local function Visibility_LootMode(group)
	if ((group.itemID and group.f) or group.sym) then
		return 2
	end
end
local GroupVisibilityChecks = {
	Visibility_ForceShow,
	Visibility_Total_Group,
	Visibility_Cost,
	Visibility_Upgrade,
	Visibility_Trackable_Group,
	Visibility_Custom,
}
local ThingVisibilityChecks = {
	Visibility_ForceShow,
	Visibility_Total_Thing,
	Visibility_Cost,
	Visibility_Upgrade,
	Visibility_Trackable_Thing,
	Visibility_Custom,
}
-- Local caches for some heavily used functions within updates
local function CacheFilterFunctions()
	local FilterApi = app.Modules.Filter
	FilterSet = FilterApi.Set
	FilterGet = FilterApi.Get
	Filters_ItemUnbound = FilterApi.Filters.ItemUnbound
	ItemUnboundSetting = FilterGet.ItemUnbound()
	RecursiveGroupRequirementsFilter = app.RecursiveGroupRequirementsFilter
	GroupFilter = app.GroupFilter
	GroupVisibilityFilter, ThingVisibilityFilter = app.GroupVisibilityFilter, app.CollectedItemVisibilityFilter
	TrackableFilter = app.ShowTrackableThings
	DefaultGroupVisibility, DefaultThingVisibility = app.DefaultGroupFilter(), app.DefaultThingFilter()
	-- app.PrintDebug("CacheFilterFunctions","DG",DefaultGroupVisibility,"DT",DefaultThingVisibility)
	-- app.PrintDebug("ItemUnboundSetting",ItemUnboundSetting)
	SetGroupVisibility = DefaultGroupVisibility and SetDefaultVisibility or BaseSetGroupVisibility
	SetThingVisibility = DefaultThingVisibility and SetDefaultVisibility or BaseSetThingVisibility
	-- Add Loot Visibility if in Settings
	if app.Settings.Collectibles.Loot then
		ThingVisibilityChecks[#ThingVisibilityChecks + 1] = Visibility_LootMode
	else
		for i=#ThingVisibilityChecks,1,-1 do
			if ThingVisibilityChecks[i] == Visibility_LootMode then
				tremove(ThingVisibilityChecks, i)
				break
			end
		end
	end
end
app.AddEventHandler("OnInit", function()
	CacheFilterFunctions()
	app.AddEventHandler("OnSettingsRefreshed", CacheFilterFunctions)
end)
BaseSetGroupVisibility = function(parent, group)
	-- Set visible initially based on the global 'default' visibility, or whether the group should inherently be shown
	local visible
	for i=1,#GroupVisibilityChecks do
		visible = GroupVisibilityChecks[i](group)
		-- Apply the visibility to the group
		if visible then
			group.visible = true
			if not parent then return end

			-- source ignored group which is determined to be visible should ensure the parent is also visible
			if visible == 2 or group.sourceIgnored then
				parent.forceShow = true
				-- app.PrintDebug("SGV:ForceParent",parent.text,"via Source Ignored",group.text)
			end
			return
		end
	end
end
BaseSetThingVisibility = function(parent, group)
	local visible
	for i=1,#ThingVisibilityChecks do
		visible = ThingVisibilityChecks[i](group)
		-- Apply the visibility to the group
		if visible then
			group.visible = true
			if not parent then return end

			-- source ignored group which is determined to be visible should ensure the parent is also visible
			if visible == 2 or group.sourceIgnored then
				parent.forceShow = true
				-- app.PrintDebug("STV:ForceParent",parent.text,"via Source Ignored",group.text)
			end
			return
		end
	end
end
local function UpdateGroup(group, parent)
	group.visible = nil

	-- debug = group.itemID and group.factionID == 2045
	-- if debug then print("UG",group.hash,parent and parent.hash) end

	-- Determine if this user can enter the instance or acquire the item and item is equippable/usable
	-- Things which are determined to be a cost for something else which meets user filters will
	-- be shown anyway, so don't need to undergo a filtering pass
	local valid = group.isCost or group.forceShow
	-- if valid then
		-- app.PrintDebug("Pre-valid group as from cost/upgrade",group.isCost,group.isUpgrade,app:SearchLink(group))
	-- end
	-- A group with a source parent means it has a different 'real' heirarchy than in the current window
	-- so need to verify filtering based on that instead of only itself
	if not valid then
		if group.sourceParent then
			valid = RecursiveGroupRequirementsFilter(group)
			-- if debug then print("UG.RGRF",valid,"=>",group.sourceParent.hash) end
		else
			valid = GroupFilter(group)
			-- if debug then print("UG.GF",valid) end
		end
	end

	if valid then
		-- Set total/progress for this object using its cost/custom information if any
		local customTotal = group.customTotal or 0
		local customProgress = customTotal > 0 and group.customProgress or 0
		local total, progress = customTotal, customProgress

		-- if debug then print("UG.Init","custom",customProgress,customTotal,"=>",progress,total) end

		-- If this item is collectible, then mark it as such.
		if group.collectible then
			total = total + 1
			if group.collected then
				progress = progress + 1
			end
		end

		-- Set the total/progress on the group
		-- if debug then print("UG.prog",progress,total,group.collectible) end
		group.progress = progress
		group.total = total
		group.costTotal = group.isCost and 1 or 0
		group.upgradeTotal = group.isUpgrade and 1 or 0

		-- Check if this is a group
		local g = group.g
		if g then
			-- if debug then print("UpdateGroup.g",group.progress,group.total,group.__type) end

			-- skip Character filtering for sub-groups if this Item meets the Ignore BoE filter logic, since it can be moved to the designated character
			-- local ItemBindFilter, NoFilter = app.ItemBindFilter, app.NoFilter
			if ItemUnboundSetting and Filters_ItemUnbound(group) then
				-- app.ItemBindFilter = NoFilter
				-- Toggle only Account-level filtering within this Item and turn off the ItemUnboundSetting to ignore sub-checks for the same logic
				ItemUnboundSetting = nil
				FilterSet.ItemUnbound(nil, true)
				-- app.PrintDebug("Within BoE",group.hash,group.link)
				-- Update the subgroups recursively...
				UpdateGroups(group, g)
				-- reapply the previous BoE filter
				-- app.PrintDebug("Leaving BoE",group.hash,group.link)
				FilterSet.ItemUnbound(true)
				ItemUnboundSetting = true
				-- app.ItemBindFilter = ItemBindFilter
			else
				UpdateGroups(group, g)
			end

			-- app.PrintDebug("UpdateGroup.g.Updated",group.progress,group.total,group.__type)
			SetGroupVisibility(parent, group)
		else
			SetThingVisibility(parent, group)
		end

		-- Increment the parent group's totals if the group is not ignored for sources
		if parent and not group.sourceIgnored then
			parent.total = (parent.total or 0) + group.total
			parent.progress = (parent.progress or 0) + group.progress
			parent.costTotal = (parent.costTotal or 0) + (group.costTotal or 0)
			parent.upgradeTotal = (parent.upgradeTotal or 0) + (group.upgradeTotal or 0)
		-- else
			-- print("Ignoring progress/total",group.progress,"/",group.total,"for group",group.text)
		end
	end

	-- if debug then print("UpdateGroup.Done",group.progress,group.total,group.visible,group.__type) end
	-- debug = nil
	-- return group.visible
end
UpdateGroups = function(parent, g)
	if g then
		local group
		for i=1,#g do
			group = g[i]
			if group.OnUpdate then
				if not group:OnUpdate(parent, UpdateGroup) then
					UpdateGroup(group, parent)
				elseif group.visible then
					group.total = nil
					group.progress = nil
					UpdateGroups(group, group.g)
				end
			else
				UpdateGroup(group, parent)
			end
		end
	end
end
app.UpdateGroups = UpdateGroups
-- Adjusts the progress/total of the group's parent chain, and refreshes visibility based on the new values
local function AdjustParentProgress(group, progChange, totalChange, costChange, upgradeChange)
	-- rawget, .parent will default to sourceParent in some cases
	local parent = group and not group.sourceIgnored and rawget(group, "parent")
	if parent then
		-- app.PrintDebug("APP:",parent.text)
		-- app.PrintDebug("CUR:",parent.progress,parent.total)
		-- app.PrintDebug("CHG:",progChange,totalChange)
		parent.total = (parent.total or 0) + totalChange
		parent.progress = (parent.progress or 0) + progChange
		parent.costTotal = (parent.costTotal or 0) + costChange
		parent.upgradeTotal = (parent.upgradeTotal or 0) + upgradeChange
		-- Assign cost cache
		-- app.PrintDebug("END:",parent.progress,parent.total)
		-- verify visibility of the group, always a 'group' since it is already a parent of another group, as long as it's not the root window data
		if not parent.window then
			parent.visible = nil
			SetGroupVisibility(rawget(parent, "parent"), parent)
		end
		AdjustParentProgress(parent, progChange, totalChange, costChange, upgradeChange)
	end
end


-- For directly applying the full Update operation for the top-level data group within a window
local function TopLevelUpdateGroup(group)
	group.TLUG = GetTimePreciseSec()
	group.total = nil
	group.progress = nil
	group.costTotal = nil
	group.upgradeTotal = nil
	-- app.PrintDebug("TLUG",group.hash)
	-- Root data in Windows should ALWAYS be visible
	if group.window then
		-- app.PrintDebug("Root Group",group.text)
		group.forceShow = true
	end
	if group.OnUpdate then
		if not group:OnUpdate(nil, UpdateGroup) then
			UpdateGroup(group)
		elseif group.visible then
			group.total = nil
			group.progress = nil
			UpdateGroups(group, group.g)
		end
	else
		UpdateGroup(group)
	end
	-- app.PrintDebugPrior("TLUG",group.hash)
end
app.TopLevelUpdateGroup = TopLevelUpdateGroup
local DGUDelay = 0.5
-- Allows changing the Delayed group update frequency between 0 - 2 seconds, mainly for testing
app.SetDGUDelay = function(delay)
	DGUDelay = math.min(2, math.max(0, tonumber(delay)))
end
-- For directly applying the full Update operation at the specified group, and propagating the difference upwards in the parent hierarchy,
-- then triggering a delayed soft-update of the Window containing the group if any. 'got' indicates that this group was 'gotten'
-- and was the cause for the update
local function DirectGroupUpdate(group, got)
	-- DGU OnUpdate needs to run regardless of filtering
	if group.DGUOnUpdate then
		-- app.PrintDebug("DGU:OnUpdate",group.hash)
		group:DGUOnUpdate()
	end
	local window = app.GetRelativeRawWithField(group, "window")
	if window then window:ToggleExtraFilters(true) end
	local wasHidden = app.GetRawRelativeField(group, "visible")
	-- starting an update from a non-top-level group means we need to verify this group should even handle updates based on current filters first
	if wasHidden and not app.RecursiveDirectGroupRequirementsFilter(group) then
		-- app.PrintDebug("DGU:Filtered",group.visible,app:SearchLink(group))
		if window then window:ToggleExtraFilters() end
		return
	end
	local prevTotal, prevProg, prevCost, prevUpgrade
		= group.total or 0, group.progress or 0, group.costTotal or 0, group.upgradeTotal or 0
	TopLevelUpdateGroup(group)
	local progChange, totalChange, costChange, upgradeChange
		= group.progress - prevProg, group.total - prevTotal, group.costTotal - prevCost, group.upgradeTotal - prevUpgrade
	-- Something to change for a visible group prior to the DGU or changed in visibility
	if progChange ~= 0 or totalChange ~= 0 or costChange ~= 0 or upgradeChange ~= 0 then
		local isHidden = not group.visible
		-- app.PrintDebug("DGU:Change",window.Suffix,wasHidden,"=>",isHidden,app:SearchLink(group),progChange, totalChange, costChange, upgradeChange)
		if not isHidden or isHidden ~= wasHidden then
			AdjustParentProgress(group, progChange, totalChange, costChange, upgradeChange)
		end
	end
	-- TODO: find some way to handle the link to Fill logic via an Event
	-- After completing the Direct Update, setup a soft-update on the affected Window, if any
	if window then
		-- sometimes we may want to trigger a delayed fill operation on a group, but when attempting the fill originally,
		-- the group may not yet be in a state for proper filling... so we can instead assign the group to trigger a fill
		-- once it received a direct update within a window
		-- TODO: use an Event for this check eventually
		if group.DGU_Fill then
			group.DGU_Fill = nil
			-- app.PrintDebug("DGU_Fill",app:SearchLink(group))
			app.FillGroups(group)
		end
		-- app.PrintDebug("DGU:Update",app:SearchLink(group),">",DGUDelay,window.Suffix,window.Update,window.isQuestChain)
		DelayedCallback(window.Update, DGUDelay, window, window.isQuestChain, got)
		window:ToggleExtraFilters()
	elseif group.DGU_Fill then
		-- group wants to fill, but isn't yet in a window... so do a delayed DGU again
		if not tonumber(group.DGU_Fill) then
			group.DGU_Fill = 3
		else
			group.DGU_Fill = group.DGU_Fill - 1
		end
		-- give up after a few tries if it doesn't get into a window...
		if group.DGU_Fill <= 0 then
			group.DGU_Fill = nil
			-- app.PrintDebug("DGU_Fill ignored",app:SearchLink(group))
			return
		end
		-- app.PrintDebug("Delayed DGU_Fill",app:SearchLink(group))
		app.FillRunner.Run(DirectGroupUpdate, group)
	end
end
app.DirectGroupUpdate = DirectGroupUpdate
-- Trigger a soft-Update of the window containing the specific group, regardless of Filtering/Visibility of the group
local function DirectGroupRefresh(group)
	local window = app.GetRelativeRawWithField(group, "window")
	if window then
		-- app.PrintDebug("DGR:Refresh",group.hash,">",DGUDelay,window.Suffix,window.Refresh)
		DelayedCallback(window.Update, DGUDelay, window)
	else
		-- app.PrintDebug("DGR:Refresh",group.hash,">",DGUDelay,"No window!")
		-- app.PrintTable(group)
		-- this scenario happens when the meta-group of a DLO used in /att list triggers a DGR on itself
		-- due to it being completely detached from the actual 'list' window
		-- perhaps this is niche enough of an occurrence that we can just try to refresh the 'list' window
		-- in this situation
		local window = app.Windows.list
		if window then
			DelayedCallback(window.Update, DGUDelay, window)
		end
	end
end
app.DirectGroupRefresh = DirectGroupRefresh
local LIMIT_UPDATE_SEARCH_RESULTS = 10
-- Dynamically increments the progress for the parent heirarchy of each collectible search result
local function UpdateSearchResults(searchResults)
	-- app.PrintDebug("UpdateSearchResults",searchResults and #searchResults)
	if not searchResults or #searchResults == 0 then return end
	-- in extreme cases of tons of search results to update all at once, we will split up the updates to remove the apparent stutter
	if #searchResults > LIMIT_UPDATE_SEARCH_RESULTS then
		local subresults = {}
		for i=1,#searchResults do
			subresults[#subresults + 1] = searchResults[i]
			if i % LIMIT_UPDATE_SEARCH_RESULTS == 0 then
				Runner.Run(UpdateSearchResults, subresults)
				subresults = {}
			end
		end
		Runner.Run(UpdateSearchResults, subresults)
		return
	end
	-- Update all the results within visible windows
	local hashes = {}
	local found = {}
	local HandleEvent = app.HandleEvent
	-- Directly update the Source groups of the search results, and collect their hashes for updates in other windows
	local result
	for i=1,#searchResults do
		result = searchResults[i]
		hashes[result.hash] = true
		found[#found + 1] = result
		-- Make sure any update events are handled for this Thing
		HandleEvent("OnSearchResultUpdate", result)
	end

	-- loop through visible ATT windows and collect matching groups
	-- app.PrintDebug("Checking Windows...")
	local SearchForSpecificGroups = app.SearchForSpecificGroups
	for suffix,window in pairs(app.Windows) do
		-- Collect matching groups from the updating groups from visible windows other than Main list
		if window.Suffix ~= "Prime" and window:IsVisible() then
			-- app.PrintDebug(window.Suffix)
			SearchForSpecificGroups(found, window.data, hashes)
		end
	end

	-- apply direct updates to all found groups
	-- app.PrintDebug("Updating",#found,"groups")
	local o
	for i=1,#found do
		o = found[i]
		DirectGroupUpdate(o, true)
	end
	-- TODO: use event
	app.WipeSearchCache()
	-- app.PrintDebug("UpdateSearchResults Done",#searchResults,"=>",#found)
end
-- Pulls all cached fields for the field/id and passes the results into UpdateSearchResults
local function UpdateRawID(field, id)
	-- app.PrintDebug("UpdateRawID",field,id)
	if field and id then
		UpdateSearchResults(app.SearchForFieldInAllCaches(field, id))
	end
end
app.UpdateRawID = UpdateRawID
-- Pulls all cached fields for the field/ids and passes the results into UpdateSearchResults
local function UpdateRawIDs(field, ids)
	-- app.PrintDebug("UpdateRawIDs",field,ids and #ids)
	if field and ids and #ids > 0 then
		UpdateSearchResults(app.SearchForManyInAllCaches(field, ids))
	end
end
app.UpdateRawIDs = UpdateRawIDs


---- Group Handling Functionality (creation/merging/nesting) ----


-- Fields which are dynamic or pertain only to the specific ATT window and should never merge automatically
-- Maybe build/add from /base.lua:DefaultFields since those always are able to be dynamic
local MergeSkipFields = {
	-- true -> never
	expanded = true,
	indent = true,
	g = true,
	nmr = true,
	nmc = true,
	progress = true,
	total = true,
	visible = true,
	modItemID = true,
	rawlink = true,
	sourceIgnored = true,
	isCost = true,
	costTotal = true,
	isUpgrade = true,
	upgradeTotal = true,
	iconPath = true,
	hash = true,
	sharedDescription = true,
	-- fields added to a group from GetSearchResults
	tooltipInfo = true,
	working = true,
	-- update cached info
	TLUG = true,
	-- 1 -> only when cloning
	e = 1,
	u = 1,
	c = 1,
	up = 1,
	pb = 1,
	pvp = 1,
	races = 1,
	isDaily = 1,
	isWeekly = 1,
	isMonthly = 1,
	isYearly = 1,
	OnUpdate = 1,
	requireSkill = 1,
	modID = 1,
	bonusID = 1,
}
-- Fields on a Thing which are specific to where the Thing is Sourced or displayed in a ATT window
local SourceSpecificFields = {
-- Returns the 'most obtainable' event value from the provided set of event values
	["e"] = function(...)
		-- print("GetMostObtainableValue:")
		-- app.PrintTable(vals)
		local e
		local vals = select("#", ...)
		for i=1,vals do
			e = select(i, ...)
			-- missing e value means NOT requiring an event
			if not e then return end
		end
		return e
	end,
-- Returns the 'most obtainable' unobtainable value from the provided set of unobtainable values
	["u"] = function(...)
		-- app.PrintDebug("GetMostObtainableValue:")
		local max, check, new = -1, nil, nil
		local phases = L.PHASES
		local phase, u
		local vals = select("#", ...)
		-- app.PrintDebug(...)
		for i=1,vals do
			u = select(i, ...)
			-- missing u value means NOT unobtainable
			if not u then return end
			phase = phases[u]
			if phase then
				check = phase.state or 0
			else
				-- otherwise it's an invalid unobtainable filter
				app.print("Invalid Unobtainable Filter:",u)
				return
			end
			-- track the highest unobtainable value, which is the most obtainable (according to PHASES)
			if check > max then
				new = u
				max = check
			elseif u > new then
				new = u
			end
		end
		-- app.PrintDebug("new:",new)
		return new
	end,
-- Returns the 'earliest' Added with Patch value from the provided set of `awp` values
	["awp"] = function(...)
		local min, awp
		local vals = select("#", ...)
		for i=1,vals do
			awp = select(i, ...)
			-- ignore missing awp...
			-- track the lowest awp value, which is the furthest-future patch
			if awp and (not min or awp < min) then
				min = awp
			end
		end
		return min
	end,
-- Returns the 'highest' Removed with Patch value from the provided set of `rwp` values
	["rwp"] = function(...)
		local max, rwp = -1,nil
		local vals = select("#", ...)
		for i=1,vals do
			rwp = select(i, ...)
			-- missing rwp value means NOT removed
			if not rwp then return end
			-- track the highest rwp value, which is the furthest-future patch
			if rwp > max then
				max = rwp
			end
		end
		return max
	end,
-- Simple boolean
	["pvp"] = true,
	["pb"] = true,
	["requireSkill"] = true,
	-- could be more complex, but for now just prevent showing when not true for all sources
	["minReputation"] = true,
	["maxReputation"] = true,
}
-- Group Merge Handling
local function Assign_Direct(g, k, v)
	g[k] = v
end
local function Assign_Missing(g, k, v)
	if rawget(g, k) == nil then g[k] = v end
end
local function Assign_sourceParent(g, k, v)
	g.sourceParent = v
end
local MergeFuncByKey = setmetatable({
	parent = Assign_sourceParent,

}, { __index = function(t,key)
	return Assign_Direct
end})
local MergeFuncByKeyNoReplace = setmetatable({
	parent = Assign_sourceParent,

}, { __index = function(t,key)
	return Assign_Missing
end})
local MergeFuncByKeyClone = setmetatable({
	parent = Assign_sourceParent,

}, { __index = function(t,key)
	return Assign_Direct
end})
-- have merge skip fields do nothing
for k,v in pairs(MergeSkipFields) do
	MergeFuncByKey[k] = app.EmptyFunction
	MergeFuncByKeyNoReplace[k] = app.EmptyFunction
	if v == true then
		MergeFuncByKeyClone[k] = app.EmptyFunction
	end
end
-- have source specific fields do nothing
for k,v in pairs(SourceSpecificFields) do
	MergeFuncByKey[k] = app.EmptyFunction
	MergeFuncByKeyNoReplace[k] = app.EmptyFunction
	MergeFuncByKeyClone[k] = app.EmptyFunction
end
-- Merges the properties of the t group into the g group, making sure not to alter the filterability of the group.
-- Additionally can specify that the object is being cloned so as to skip special merge restrictions
local function MergeProperties(g, t, noReplace, clone)
	if not g or not t then return end
	if g ~= t then
		g.__merge = t.__merge or t
	end
	if noReplace then
		for k,v in pairs(t) do
			MergeFuncByKeyNoReplace[k](g,k,v)
		end
	elseif clone then
		for k,v in pairs(t) do
			MergeFuncByKeyClone[k](g,k,v)
		end
	else
		for k,v in pairs(t) do
			MergeFuncByKey[k](g,k,v)
		end
	end
	-- custom special logic for fields which need to represent the commonality between all Sources of a group
	-- loop through specific fields for custom logic
	-- initial creation of a g object, has no key
	if not g.key then
		for k,_ in pairs(SourceSpecificFields) do
			g[k] = t[k]
		end
	else
		local gk, tk
		for k,f in pairs(SourceSpecificFields) do
			-- existing is set
			gk = rawget(g, k)
			-- app.PrintDebug("SSF",k,g,t,gk,rawget(t, k))
			if gk then
				tk = rawget(t, k)
				-- no value on merger
				if tk == nil then
					-- app.PrintDebug(g.hash,"remove",k,gk,tk)
					g[k] = nil
				elseif f and type(f) == "function" then
					-- two different values with a compare function
					-- app.PrintDebug(g.hash,"compare",k,gk,tk)
					g[k] = f(gk, tk)
					-- app.PrintDebug(g.hash,"result",g[k])
				end
			end
		end
	end
	-- only copy metatable to g if another hasn't been set already
	if not getmetatable(g) and getmetatable(t) then
		setmetatable(g, getmetatable(t))
	end
end
app.MergeProperties = MergeProperties

-- The base logic for turning a Table of data into an 'object' that provides dynamic information concerning the type of object which was identified
-- based on the priority of possible key values
-- TODO: this priority-based object creation will move to Classes/base.lua -- CloneClassInstance does not suffice in its current state
local function CreateObject(t, rootOnly)
	-- app.PrintDebug("CO",t);
	-- Commented this part out because there aren't enough class definitions exposed to the logic yet
	-- Retail class design is still wildin' and doesn't use the CreateClass functionality
	--local object = app.CloneClassInstance(t, rootOnly);
	--if object and getmetatable(object) then return object; end
	if not t then return {}; end
	-- already an object, so need to create a new instance of the same data
	if t.key then
		local result = {};
		-- app.PrintDebug("CO.key",t.key,t[t.key],"=>",result);
		MergeProperties(result, t, nil, true);
		-- include the raw g since it will be replaced at the end with new objects
		result.g = t.g;
		t = result;
		-- if not getmetatable(t) then
		-- 	app.PrintDebug(Colorize("Bad CreateObject (key without metatable) used:",app.Colors.ChatLinkError))
		-- 	app.PrintTable(t)
		-- end
		-- app.PrintDebug("Merge done",result.key,result[result.key], t, result);
	-- is it an array of raw datas which needs to be turned into an array of usable objects
	elseif t[1] then
		local result = {};
		-- array
		-- app.PrintDebug("CO.[]","=>",result);
		for i,o in ipairs(t) do
			result[i] = CreateObject(o, rootOnly);
		end
		return result;
	-- use the highest-priority piece of data which exists in the table to turn it into an object
	else
		-- a table which somehow has a metatable which doesn't include a 'key' field
		local meta = getmetatable(t);
		if meta then
			app.PrintDebug(Colorize("Bad CreateObject (metatable without key) used:",app.Colors.ChatLinkError))
			app.PrintTable(t)
			local result = {};
			-- app.PrintDebug("CO.meta","=>",result);
			MergeProperties(result, t, nil, true);
			if not rootOnly and t.g then
				local newg = {}
				result.g = newg
				for i,o in ipairs(t.g) do
					newg[#newg+1] = CreateObject(o)
				end
			end
			setmetatable(result, meta);
			return result;
		end
		if t.mapID then
			t = app.CreateMap(t.mapID, t);
		elseif t.explorationID then
			t = app.CreateExploration(t.explorationID, t);
		elseif t.sourceID then
			t = app.CreateItemSource(t.sourceID, t.itemID, t);
		elseif t.encounterID then
			t = app.CreateEncounter(t.encounterID, t);
		elseif t.instanceID then
			t = app.CreateInstance(t.instanceID, t);
		elseif t.currencyID then
			t = app.CreateCurrencyClass(t.currencyID, t);
		elseif t.mountmodID then
			t = app.CreateMountMod(t.mountmodID, t);
		elseif t.speciesID then
			t = app.CreateSpecies(t.speciesID, t);
		elseif t.objectID then
			t = app.CreateObject(t.objectID, t);
		elseif t.flightpathID then
			t = app.CreateFlightPath(t.flightpathID, t);
		elseif t.followerID then
			t = app.CreateFollower(t.followerID, t);
		elseif t.illusionID then
			t = app.CreateIllusion(t.illusionID, t);
		elseif t.professionID then
			t = app.CreateProfession(t.professionID, t);
		elseif t.categoryID then
			t = app.CreateCategory(t.categoryID, t);
		elseif t.criteriaID then
			t = app.CreateAchievementCriteria(t.criteriaID, t);
		elseif t.achID or t.achievementID then
			t = app.CreateAchievement(t.achID or t.achievementID, t);
		elseif t.recipeID then
			t = app.CreateRecipe(t.recipeID, t);
		elseif t.factionID then
			t = app.CreateFaction(t.factionID, t);
		elseif t.heirloomID then
			t = app.CreateHeirloom(t.heirloomID, t);
		elseif t.azeriteessenceID then
			t = app.CreateAzeriteEssence(t.azeriteessenceID, t);
		elseif t.itemID or t.modItemID then
			local itemID, modID, bonusID = app.GetItemIDAndModID(t.modItemID or t.itemID)
			t.itemID = itemID
			t.modID = modID
			t.bonusID = bonusID
			if t.toyID then
				t = app.CreateToy(itemID, t);
			elseif t.runeforgepowerID then
				t = app.CreateRuneforgeLegendary(t.runeforgepowerID, t);
			elseif t.conduitID then
				t = app.CreateConduit(t.conduitID, t);
			else
				t = app.CreateItem(itemID, t);
			end
		elseif t.npcID or t.creatureID then
			t = app.CreateNPC(t.npcID or t.creatureID, t);
		elseif t.questID then
			t = app.CreateQuest(t.questID, t);
		-- Non-Thing groups
		elseif t.unit then
			t = app.CreateUnit(t.unit, t);
		elseif t.classID then
			t = app.CreateCharacterClass(t.classID, t);
		elseif t.raceID then
			t = app.CreateRace(t.raceID, t);
		elseif t.headerID then
			t = app.CreateNPC(t.headerID, t);
		elseif t.expansionID then
			t = app.CreateExpansion(t.expansionID, t);
		elseif t.difficultyID then
			t = app.CreateDifficulty(t.difficultyID, t);
		elseif t.spellID then
			t = app.CreateSpell(t.spellID, t);
		elseif t.f or t.filterID then
			t = app.CreateFilter(t.f or t.filterID, t);
		elseif t.text then
			t = app.CreateRawText(t.text, t)
		else
			-- app.PrintDebug("CO:raw");
			-- app.PrintTable(t);
			if rootOnly then
				-- shallow copy the root table only, since using t as a metatable will allow .g to exist still on the table
				-- app.PrintDebug("rootOnly copy of",t.text)
				local result = {};
				for k,v in pairs(t) do
					result[k] = v;
				end
				t = result;
			else
				-- app.PrintDebug("metatable copy of",t.text)
				t = setmetatable({}, { __index = t });
			end
		end
		-- app.PrintDebug("CO.field","=>",t);
	end

	-- allows for copying an object without all of the sub-groups
	if rootOnly then
		t.g = nil;
	else
		-- app.PrintDebug("CreateObject key/value",t.key,t[t.key]);
		-- if g, then replace each object in all sub groups with an object version of the table
		local g = t.g;
		if g then
			local gNew = {};
			for i,o in ipairs(g) do
				gNew[i] = CreateObject(o)
			end
			t.g = gNew;
		end
	end

	return t;
end
app.__CreateObject = CreateObject;

local function GetHash(t)
	local hash = app.CreateHash(t);
	app.PrintDebug(Colorize("No base .hash for t:",app.Colors.ChatLinkError),hash,t.text);
	app.PrintTable(t)
	return hash;
end
local NestObjects
-- Merges an Object into an existing set of Objects so as to not duplicate any incoming Objects
local function MergeObject(g, t, index, newCreate)
	if g and t then
		local hash = t.hash or GetHash(t);
		for i,o in ipairs(g) do
			if (o.hash or GetHash(o)) == hash then
				MergeProperties(o, t, true);
				NestObjects(o, t.g, newCreate);
				return
			end
		end
		if newCreate then t = CreateObject(t); end
		if index then
			tinsert(g, index, t);
		else
			g[#g + 1] = t
		end
	end
end
-- Nests an Object under another Object, only creating the 'g' group if necessary
-- ex. NestObject(parent, new, newCreate, index)
local function NestObject(p, t, newCreate, index)
	if not p or not t then return end
	local g = p.g;
	if g then
		MergeObject(g, t, index, newCreate);
	elseif newCreate then
		p.g = { CreateObject(t) };
	else
		p.g = { t };
	end
end
-- Merges multiple Objects into an existing set of Objects so as to not duplicate any incoming Objects
-- ex. MergeObjects(group, group2, newCreate)
local function MergeObjects(g, g2, newCreate)
	if not g or not g2 then return end
	if #g2 > 25 then
		local t, hash, hashObj
		local hashTable = {}
		for i,o in ipairs(g) do
			local hash = o.hash;
			if hash then
				-- are we merging the same object multiple times from one group?
				hashObj = hashTable[hash]
				if hashObj then
					-- don't replace existing properties
					MergeProperties(hashObj, o, true);
				else
					hashTable[hash] = o;
				end
			end
		end
		if newCreate then
			for i,o in ipairs(g2) do
				hash = o.hash;
				-- print("_",hash);
				if hash then
					t = hashTable[hash];
					if t then
						MergeProperties(t, o, true);
						NestObjects(t, o.g, newCreate);
					else
						t = CreateObject(o);
						hashTable[hash] = t;
						g[#g + 1] = t
					end
				else
					g[#g + 1] = CreateObject(o)
				end
			end
		else
			for i,o in ipairs(g2) do
				hash = o.hash;
				-- print("_",hash);
				if hash then
					t = hashTable[hash];
					if t then
						MergeProperties(t, o, true);
						NestObjects(t, o.g);
					else
						hashTable[hash] = o;
						g[#g + 1] = o
					end
				else
					g[#g + 1] = CreateObject(o)
				end
			end
		end
	else
		for i,o in ipairs(g2) do
			MergeObject(g, o, nil, newCreate);
		end
	end
end
-- Nests multiple Objects under another Object, only creating the 'g' group if necessary
-- ex. NestObjects(parent, groups, newCreate)
NestObjects = function(p, g, newCreate)
	if not g then return; end
	local pg = p.g;
	if pg then
		MergeObjects(pg, g, newCreate);
	elseif #g > 0 then
		p.g = {};
		MergeObjects(p.g, g, newCreate);
	end
end
-- Nests multiple Objects under another Object using an optional set of functions to determine priority on the adding of objects, only creating the 'g' group if necessary
-- ex. PriorityNestObjects(parent, groups, newCreate, function1, function2, ...)
local function PriorityNestObjects(p, g, newCreate, ...)
	if not g or #g == 0 then return; end
	local pFuncs = {...};
	if pFuncs[1] then
		-- app.PrintDebug("PriorityNestObjects",#pFuncs,"Priorities",#g,"Objects")
		-- setup containers for the priority buckets
		local pBuckets, pBucket, skipped = {}, nil, nil;
		for i,_ in ipairs(pFuncs) do
			pBuckets[i] = {};
		end
		-- check each object
		for _,o in ipairs(g) do
			-- check each priority function
			for i,pFunc in ipairs(pFuncs) do
				-- if the function matches, put the object in the bucket
				if pFunc(o) then
					-- app.PrintDebug("Matched Priority Function",i,o.hash)
					pBucket = pBuckets[i];
					pBucket[#pBucket + 1] = o
					break;
				end
			end
			-- no bucket was found, put in skipped
			if not pBucket then
				-- app.PrintDebug("No Priority",o.hash)
				if skipped then skipped[#skipped + 1] = o
				else skipped = { o }; end
			end
			-- reset bucket
			pBucket = nil;
		end
		-- then nest each bucket in order of priority
		for i,pBucket in ipairs(pBuckets) do
			-- app.PrintDebug("Nesting Priority Bucket",i,#pBucket)
			NestObjects(p, pBucket, newCreate);
			-- app.PrintDebug(".g",p.g and #p.g)
		end
		-- and nest anything skipped
		-- app.PrintDebug("Nesting Skipped",skipped and #skipped)
		NestObjects(p, skipped, newCreate);
		-- app.PrintDebug(".g",p.g and #p.g)
	else
		NestObjects(p, g, newCreate);
	end
	-- app.PrintDebug("PNO-Done",#pFuncs,"Priorities",#g,"Objects",p.g and #p.g)
end
-- Merges multiple sources of an object into a single object. Can specify to clean out all sub-groups of the result
app.MergedObject = function(group, rootOnly)
	if not group or not group[1] then return group; end
	local merged = CreateObject(group[1], rootOnly);
	for i=2,#group do
		MergeProperties(merged, group[i]);
	end
	-- for a merged object, clean any other references it might still have
	merged.sourceParent = nil;
	merged.parent = nil;
	if rootOnly then
		merged.g = nil;
	end
	return merged;
end
app.MergeObject = MergeObject
app.MergeObjects = MergeObjects
app.NestObject = NestObject
app.NestObjects = NestObjects
app.PriorityNestObjects = PriorityNestObjects