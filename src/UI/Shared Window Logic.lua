-- App locals
local _, app = ...;
local L = app.L

local type
	= type

-- Some common UI functions (TBD)
app.UI = {
	OnClick = {
		IgnoreRightClick = function(row, button)
			return button == "RightButton"
		end,
		OnlySortingRightClick = function(row, button)
			if button == "LeftButton" then return end

			return button == "RightButton" and not IsShiftKeyDown()
		end,
	}
}

-- TODO: this doesnt really belong in this file imo... but can move around later for both Classic/Retail
do
	local FilterBind = app.Modules.Filter.Filters.Bind
	local function SearchForMissingItemsRecursively(group, listing)
		-- app.PrintDebug("SearchForMissingItemsRecursively",app:SearchLink(group))
		if group.visible then
			if group.itemID and (group.collectible or (group.total and group.total > 0)) and not FilterBind(group) then
				listing[#listing + 1] = group
			end
			local g = group.g
			if g and group.expanded then
				-- Go through the sub groups and determine if any of them have a response.
				for i=1,#g do
					SearchForMissingItemsRecursively(g[i], listing)
				end
			end
		end
	end
app.Search = {
	SearchForMissingItemsRecursively = SearchForMissingItemsRecursively
}
end

local function GetUnobtainableTexture(group)
	if not group then return; end
	if type(group) ~= "table" then
		-- This function shouldn't be used with only u anymore!
		app.print("Invalid use of GetUnobtainableTexture", group);
		return;
	end

	-- Determine the texture color, default is green for events.
	local u = group.u;
	if u then
		local phase = L.PHASES[u];
		if phase then
			if not phase.buildVersion and group.itemID then
				local b = group.b or 0;
				if b == 2 or b == 0 then	-- BoE or Unbound
					return L.UNOBTAINABLE_ITEM_TEXTURES[2];
				end
			end
			if not phase.buildVersion or app.GameBuildVersion < phase.buildVersion then
				return L.UNOBTAINABLE_ITEM_TEXTURES[phase.state];
			end
		end
	end
	if group.e then
		return L.UNOBTAINABLE_ITEM_TEXTURES[app.Modules.Events.FilterIsEventActive(group) and 5 or 4];
	end
	-- any item which is 'missing' will show as unobtainable to differentiate itself (maybe new icon sometime?)
	if group.itemID and group._missing then
		return L.UNOBTAINABLE_ITEM_TEXTURES[6]
	end
end
app.GetUnobtainableTexture = GetUnobtainableTexture

-- Returns an applicable Indicator Icon Texture for the specific group if one can be determined
local function GetIndicatorIcon(group)
	-- Use the group's own indicator if defined
	local groupIndicator = group.indicatorIcon
	if groupIndicator then return groupIndicator end

	-- Otherwise use some common logic
	if group.saved then
		if group.parent and group.parent.locks or group.repeatable then
			return app.asset("known");
		else
			return app.asset("known_green");
		end
	end
	return GetUnobtainableTexture(group);
end
app.GetIndicatorIcon = GetIndicatorIcon

-- Generates a summary string containing race, class, and progress text
local __Summary = {}
local function BuildDataSummary(data)
	-- NOTE: creating a new table is *slightly* (0-0.5%) faster but generates way more garbage memory over time
	app.wipearray(__Summary)
	local requireSkill = data.requireSkill
	if requireSkill then
		local profIcon = app.WOWAPI.GetTradeSkillTexture(requireSkill) or app.WOWAPI.GetSpellIcon(requireSkill)
		if profIcon then
			__Summary[#__Summary + 1] = "|T"
			__Summary[#__Summary + 1] = profIcon
			__Summary[#__Summary + 1] = ":0|t "
		end
	end
	-- TODO: races
	local specs = data.specs;
	if specs and #specs > 0 then
		__Summary[#__Summary + 1] = app.GetSpecsString(specs, false, false)
	else
		local classes = data.c
		if classes and #classes > 0 then
			__Summary[#__Summary + 1] = app.GetClassesString(classes, false, false)
		end
	end
	__Summary[#__Summary + 1] = app.GetProgressTextForRow(data) or ((data.g and not data.expanded and #data.g > 0 and "+++") or "---");
	return app.TableConcat(__Summary, nil, "", "")
end
app.ExtendBaseClassHandler("summaryText", BuildDataSummary);

if not C_ContentTracking then
	app.AddContentTracking = function(group)
		app.print("Content Tracking is not supported in this game version!")
	end
else
	local IsTracking, StartTracking, StopTracking
		= C_ContentTracking.IsTracking, C_ContentTracking.StartTracking, C_ContentTracking.StopTracking
	app.AddContentTracking = function(group)
		-- if this group is currently tracked
		local sourceID, mountID, achievementID, questID = group.sourceID, group.mountJournalID, group.achievementID, group.questID
		local type = sourceID and 0
					or mountID and 1
					or achievementID and 2
					or nil
		if type then
			local id = type == 1 and mountID
					or type == 2 and achievementID
					or sourceID
			if IsTracking(type,id) then
				-- app.PrintDebug("StopTracking",type,id)
				StopTracking(type, id, Enum.ContentTrackingStopType.Manual)
			else
				-- app.PrintDebug("StartTracking",type,id)
				StartTracking(type, id)
			end
			return true
		end
		-- Quests can be tracked using another API
		if questID then
			-- Add tracking
			if C_QuestLog.AddQuestWatch(questID) or C_QuestLog.AddWorldQuestWatch(questID) then
				return true
			end
			-- Remove tracking
			if C_QuestLog.RemoveQuestWatch(questID) or C_QuestLog.RemoveWorldQuestWatch(questID) then
				return true
			end
		end
	end
end

-- Window Creation
app.Windows = {};