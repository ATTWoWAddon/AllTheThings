-- App locals
local _, app = ...;
local L = app.L

-- Global locals
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


local GetProgressColorText = app.Modules.Color.GetProgressColorText;
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
local function GetCatalystIcon(data, iconOnly)
	if data.filledCatalyst then
		return L[iconOnly and "CATALYST_ICON" or "CATALYST_TEXT"];
	end
end
local function GetCollectibleIcon(data, iconOnly)
	if data.collectible then
		local collected = data.collected
		if not collected and data.collectedwarband then
			return iconOnly and L.COLLECTED_WARBAND_ICON or L.COLLECTED_WARBAND;
		end
		return iconOnly and app.GetCollectionIcon(collected) or app.GetCollectionText(collected);
	end
end
local function GetCostIconForRow(data, iconOnly)
	-- cost only if itself is a cost
	if data.isCost or data.isOwnedCost or (data.progress == data.total and data.costTotal > 0) then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
	end
end
local function GetCostIconForTooltip(data, iconOnly)
	-- cost only if itself is a cost
	if data.isCost or data.isOwnedCost then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
	end
end
local function GetIndicatorIcon(group)
	-- Returns an applicable Indicator Icon Texture for the specific group if one can be determined
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
local function GetReagentIcon(data, iconOnly)
	if data.filledReagent then
		return L[iconOnly and "REAGENT_ICON" or "REAGENT_TEXT"];
	end
end
local function GetUpgradeIconForRow(data, iconOnly)
	-- upgrade only for filled groups, or if itself is an upgrade
	if data.isUpgrade or (data.progress == data.total and data.upgradeTotal > 0) then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetUpgradeIconForTooltip(data, iconOnly)
	-- upgrade only if itself has an upgrade
	if data.collectibleAsUpgrade then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetTrackableIcon(data, iconOnly, forSaved)
	if data.trackable then
		local saved = data.saved;
		-- only show if the data is saved, or is not repeatable
		if saved or not rawget(data, "repeatable") then
			if forSaved then
				-- if for saved, we ignore if it is un-saved for less clutter
				if saved then
					return iconOnly and app.GetCompletionIcon(saved) or app.GetSavedText(saved);
				end
			else
				return iconOnly and app.GetCompletionIcon(saved) or app.GetCompletionText(saved);
			end
		end
	end
end

local __Text = {}
local function GetProgressTextForRow(data, forceTracking)
	-- build the row text from left to right with possible info
	-- Reagent (show reagent icon)
	-- NOTE: creating a new table is *slightly* (0-0.5%) faster but generates way more garbage memory over time
	app.wipearray(__Text)
	local icon = GetReagentIcon(data, true);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Cost (show cost icon)
	icon = GetCostIconForRow(data, true);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForRow(data, true);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Upgrade (show upgrade icon)
	icon = GetCatalystIcon(data, true);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Progress Achievement
	local statistic = data.statistic
	if statistic then
		__Text[#__Text + 1] = "["..statistic.."]"
	end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, true)
	if stateIcon then
		__Text[#__Text + 1] = stateIcon
		-- don't need to force tracking icon since it's a collectible Thing directly
		forceTracking = nil
	end
	-- Container
	local isContainer = data.isContainer
	if isContainer then
		__Text[#__Text + 1] = GetProgressColorText(data.progress or 0, data.total)
	end
	-- Non-collectible/total Container (only contains visible, non-collectibles...)
	if not stateIcon and not isContainer then
		local g = data.g;
		if g and #g > 0 then
			local headerText;
			if data.expanded then
				headerText = "---";
			else
				headerText = "+++";
			end
			__Text[#__Text + 1] = headerText
		end
	end

	-- Trackable (Only if no other text available)
	if #__Text == 0 or forceTracking then
		stateIcon = GetTrackableIcon(data, true)
		if stateIcon then
			__Text[#__Text + 1] = stateIcon
		end
	end

	return app.TableConcat(__Text, nil, "", " ");
end
local function GetProgressTextForTooltip(data)
	-- build the row text from left to right with possible info
	-- NOTE: creating a new table is *slightly* (0-0.5%) faster but generates way more garbage memory over time
	app.wipearray(__Text)
	local iconOnly = app.Settings:GetTooltipSetting("ShowIconOnly");
	-- Reagent (show reagent icon)
	local icon = GetReagentIcon(data, iconOnly);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Cost (show cost icon)
	icon = GetCostIconForTooltip(data, iconOnly);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForTooltip(data, iconOnly);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Catalyst (show catalyst icon)
	icon = GetCatalystIcon(data, iconOnly);
	if icon then
		__Text[#__Text + 1] = icon
	end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, iconOnly)
	if stateIcon then
		__Text[#__Text + 1] = stateIcon
	end
	-- Saved (only certain data types)
	if data.npcID then
		stateIcon = GetTrackableIcon(data, iconOnly, true)
		if stateIcon then
			__Text[#__Text + 1] = stateIcon
		end
	end
	-- Container
	local isContainer = data.isContainer
	if isContainer then
		__Text[#__Text + 1] = GetProgressColorText(data.progress or 0, data.total)
	end

	-- Trackable (Only if no other text available)
	if #__Text == 0 then
		stateIcon = GetTrackableIcon(data, iconOnly)
		if stateIcon then
			__Text[#__Text + 1] = stateIcon
		end
	end

	return app.TableConcat(__Text, nil, "", " ");
end
app.GetProgressTextForRow = GetProgressTextForRow;
app.GetProgressTextForTooltip = GetProgressTextForTooltip
app.GetIndicatorIcon = GetIndicatorIcon
app.GetUnobtainableTexture = GetUnobtainableTexture

--[[
-- This was Classic's original version.
local function GetProgressTextForRow(data)
	local total = data.total;
	if total and (total > 1 or (total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, total);
	elseif data.collectible then
		return app.GetCollectionIcon(data.collected);
	elseif data.trackable then
		return app.GetCompletionIcon(data.saved);
	end
end
local function GetProgressTextForTooltip(data)
	local iconOnly = app.Settings:GetTooltipSetting("ShowIconOnly");
	if iconOnly then return GetProgressTextForRow(data); end

	if data.total and (data.total > 1 or (data.total > 0 and not data.collectible)) then
		return GetProgressColorText(data.progress or 0, data.total);
	elseif data.collectible or (data.spellID and data.itemID and data.trackable) then
		return app.GetCollectionText(data.collected);
	elseif data.trackable then
		return app.GetCompletionText(data.saved);
	end
end
app.GetProgressTextForRow = GetProgressTextForRow;
app.GetProgressTextForTooltip = GetProgressTextForTooltip;
]]--

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
app.WindowDefinitions = {};
app.Windows = {};

-- Window Color Management
local function ApplyAllWindowColors(...)
	-- Apply the user-set colours
	local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = app.Settings.GetWindowColors()

	for suffix, window in pairs(app.Windows) do
		window:SetBackdropColor(rBg, gBg, bBg, aBg)
		window:SetBackdropBorderColor(rBd, gBd, bBd, aBd)
	end
end
app.AddEventHandler("Settings.OnSet", function(context, setting, value)
	if (context == "General" and (setting == "Window:BackgroundColor" or setting == "Window:BorderColor"))
		or (context == "Tooltips" and setting == "Window:UseClassForBorder") then
		ApplyAllWindowColors();
	end
end)
app.AddEventHandler("OnStartup", function()
	ApplyAllWindowColors();
end)