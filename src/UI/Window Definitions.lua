-- App locals
local _, app = ...;
local L = app.L

-- Global locals
local coroutine,ipairs,pairs,pcall,math,rawget,select,tostring,type,tremove,wipe,tonumber
	= coroutine,ipairs,pairs,pcall,math,rawget,select,tostring,type,tremove,wipe,tonumber
local CreateFrame,GetCursorPosition,IsModifierKeyDown
	= CreateFrame,GetCursorPosition,IsModifierKeyDown;

---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip;
local RETRIEVING_DATA = RETRIEVING_DATA;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local debugprofilestop = debugprofilestop;
local Callback = app.CallbackHandlers.Callback

-- Some common UI functions (TBD)
app.UI = {
	OnClick = {
		IgnoreClicks = function()
			return true
		end,
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
app.AddEventHandler("OnRefreshComplete", function()
	app.HandleEvent("OnUpdateWindows", true)
end, true)


-- Old Implementation (Deprecated!)
-- Store the Custom Windows Update functions which are required by specific Windows
do
	local customWindowUpdates = {};
	-- Returns the Custom Update function based on the Window suffix if existing
	function app:CustomWindowUpdate(suffix)
		return customWindowUpdates[suffix];
	end
	-- Allows externally adding custom window update logic which doesn't exist already
	app.AddCustomWindowOnUpdate = function(customName, onUpdate)
		if customWindowUpdates[customName] then
			app.print("Cannot replace Custom Window: "..customName)
		end
		-- app.print("Added",customName)
		customWindowUpdates[customName] = onUpdate
	end
end

-- Command Processing
local __ItemLinkCache = {}
local function StoreLinks(link)
	__ItemLinkCache[#__ItemLinkCache + 1] = link
	return "\x1F" .. #__ItemLinkCache
end
local function ParseCommandArgsAndParams(msg)
	wipe(__ItemLinkCache);

	-- Step 1: Replace links with tokens
	msg = msg:gsub("|c[%xnIQ:]+|H[a-z]+:%d+:.-|h%[.-%]|h|r", StoreLinks)
	-- app.PrintDebug("tokenized",msg)
	-- Step 2: Split by spaces
	local args = { (" "):split(msg) }

	-- Step 3: Replace tokens with original item links
	local customArg, customValue;
	for i, v in ipairs(args) do
		customArg = tonumber(v:match("\x1F(%d+)"))
		if customArg then
			args[i] = __ItemLinkCache[customArg];
		end
	end
	
	-- Step 4: Parse the Params
	-- The first arg is always the command
	local params = {};
	for i=1,#args do
		customArg, customValue = ("="):split(args[i]);
		params[customArg] = customValue or true;
	end
	return args, params;
end

-- Expand / Collapse Functions
local HeaderSkipKeys = {
	[app.HeaderConstants.ZONE_DROPS] = true,
	[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
	[app.HeaderConstants.HOLIDAYS] = true,
};
local ObjectSkipKeys = {
	[375368] = true,	-- Creation Catalyst Console
	[382621] = true,	-- Revival Catalyst Console
	[456208] = true,	-- The Catalyst
};
local ShouldSkipAutoExpandForKey = setmetatable({
	headerID = function(group) return HeaderSkipKeys[group.headerID]; end,
	objectID = function(group) return ObjectSkipKeys[group.objectID]; end,
	-- Item/Difficulty as Headers should not expand
	itemID = app.ReturnTrue,
	difficultyID = function(group)
		if app.Settings:GetTooltipSetting("Expand:Difficulty") then
			-- If we were passed in a hash table for difficulties, then run against that
			local difficultyHash = group.difficultyHash;
			for id,_ in pairs(app.GetCurrentDifficulties()) do
				if difficultyHash[id] then
					return false;
				end
			end
			-- If no match, then skip and also minimize the group
			group.expanded = false;
			return true;
		end
		return false;
	end,
	KEYLESS = function(group)
		print("ShouldSkipAutoExpandForKey - Group Missing valid 'key':");
		for key,value in pairs(group) do
			print(" ", key, value);
		end
		if group.g then
			print("  ", "#g", #group.g);
			for key,value in pairs(group.g[1]) do
				print("  ", key, value);
			end
		end
		return false;
	end,
}, {
	__index = function(t, key)
		t[key] = app.ReturnFalse;
		return app.ReturnFalse;
	end,
});
-- Returns true if any subgroup of the provided group is currently expanded, otherwise nil
local function HasExpandedSubgroup(group)
	if not group then return end

	local g = group.g
	if not g then return end

	for i=1,#g do
		-- dont need recursion since a group has to be expanded for a subgroup to be visible within it
		if g[i].expanded then
			return true;
		end
	end
end
local function ForceExpandGroupsRecursively(group, expanded)
	local g = group.g
	if g then
		group.expanded = expanded;
		for i=1,#g do
			ForceExpandGroupsRecursively(g[i], expanded);
		end
	end
end
local function ConditionallyExpandGroupsRecursively(group, expanded)
	local g = group.g
	if g and not ShouldSkipAutoExpandForKey[group.key or "KEYLESS"](group) and
		-- incomplete things actually exist below itself
		((group.total or 0) > (group.progress or 0)) and
		-- account/debug mode is active or it is not a 'saved' thing for this character
		(app.MODE_DEBUG_OR_ACCOUNT or not group.saved) then
		group.expanded = expanded;
		for i=1,#g do
			ConditionallyExpandGroupsRecursively(g[i], expanded);
		end
	end
end
local function ExpandGroupsRecursively(group, expanded, force)
	if force then
		ForceExpandGroupsRecursively(group, expanded);
	else
		ConditionallyExpandGroupsRecursively(group, expanded);
	end
end
app.ExpandGroupsRecursively = ExpandGroupsRecursively;
app.ForceExpandGroupsRecursively = ForceExpandGroupsRecursively;

-- Configuration Functions
local AdjustRowIndents = false;
local SetPortraitTexture = SetPortraitTexture;
local SetPortraitTextureFromDisplayID = SetPortraitTextureFromCreatureDisplayID;
local PortaitSettingsCache = setmetatable({}, {__index = app.ReturnTrue });
local function SetPortraitIcon(self, data)
	local icon = data.icon;
	if PortaitSettingsCache.ALL and PortaitSettingsCache[data.key] then
		local displayID = app.GetDisplayID(data);
		if displayID then
			if self.context ~= "displayID" or self.texture ~= displayID then
				SetPortraitTextureFromDisplayID(self, displayID);
				self:SetWidth(self:GetHeight());
				self:SetTexCoord(0, 1, 0, 1);
				self.context = "displayID";
				self.texture = displayID;
			end
			return true;
		else
			local unit = data.unit;
			if unit and not icon then
				if self.context ~= "unit" or self.texture ~= unit then
					SetPortraitTexture(self, unit);
					self:SetWidth(self:GetHeight());
					self:SetTexCoord(0, 1, 0, 1);
					self.context = "unit";
					self.texture = unit;
				end
				return true;
			end
		end
	end

	-- Fallback to a traditional icon.
	local atlas = data.atlas;
	if atlas then
		-- This isn't a part of the main conditional because
		-- an atlas can have multiple backgrounds and borders
		if self.context ~= "atlas" or self.texture ~= atlas then
			self:SetAtlas(data.atlas);
			self:SetWidth(self:GetHeight());
			self:SetTexCoord(0, 1, 0, 1);
			self.context = "atlas";
			self.texture = atlas;
		end
		atlas = data["atlas-background"];
		if atlas and self.Background.atlas ~= atlas then
			self.Background.atlas = atlas;
			self.Background:SetAtlas(atlas);
			self.Background:SetWidth(self:GetHeight());
			self.Background:Show();
		end
		atlas = data["atlas-border"];
		if atlas then
			if self.Border.atlas ~= atlas then
				self.Border.atlas = atlas;
				self.Border:SetAtlas(atlas);
				self.Border:SetWidth(self:GetHeight());
				self.Border:Show();
			end
			atlas = data["atlas-color"];
			if self.Border.atlasColor ~= atlas then
				self.Border.atlasColor = atlas;
				if atlas then
					self.Border:SetVertexColor(atlas[1] or 0, atlas[2] or 0, atlas[3] or 0, atlas[4] or 1);
				else
					self.Border:SetVertexColor(1, 1, 1, 1);
				end
			end
		end
		return true;
	elseif icon then
		if self.context ~= "icon" or self.texture ~= icon then
			self:SetWidth(self:GetHeight());
			self:SetTexture(data.icon);
			self.context = "icon";
			self.texture = icon;
			local texcoord = data.texcoord;
			if texcoord then
				self:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
			else
				self:SetTexCoord(0, 1, 0, 1);
			end
		end
		return true;
	end
	-- anything without an icon ends up with weird spacing in lists
	if self.context ~= "icon" or self.texture ~= QUESTION_MARK_ICON then
		self:SetTexture(QUESTION_MARK_ICON);
		self.context = "icon";
		self.texture = QUESTION_MARK_ICON;
	end
	return true
end
app.AddEventHandler("OnSettingsRefreshed", function()
	AdjustRowIndents = app.Settings:GetTooltipSetting("Adjust:RowIndents");
	PortaitSettingsCache.ALL = app.Settings:GetTooltipSetting("IconPortraits");
	PortaitSettingsCache.questID = app.Settings:GetTooltipSetting("IconPortraitsForQuests");
end);

-- Row & Group Processing Functions
local function CalculateRowBack(data)
	if data.back then return data.back; end
	if data.parent then
		return CalculateRowBack(data.parent) * 0.5;
	else
		return 0;
	end
end
local function CalculateRowIndent(data)
	if data.indent then return data.indent; end
	if data.parent then
		return CalculateRowIndent(data.parent) + 1;
	else
		return 0;
	end
end
local function SetRowData(self, row, data)
	if row.ref ~= data then
		-- New data, update everything
		row.__ref = row.ref;
		row.ref = data;
		if not data then
			row.back = 0;
			row:SetHighlightLocked(false);
			row.Background:SetAlpha(0);
			row.Background:Hide();
			row.Texture:Hide();
			row.Texture.Background:Hide();
			row.Texture.Border:Hide();
			row.Indicator:Hide();
			row.Summary:Hide();
			row.Label:Hide();
			row:Hide();
			return;
		end
		
		if not (data.__type or data.__dlo) or getmetatable(data) == nil then
			print(data.text, " does not have a metatable! This is NOT allowed!", data.__type, getmetatable(data));
		end
		
		-- Calculate the indent
		row.indent = (CalculateRowIndent(data) or 0) + 1;
		
		local font = data.font or "GameFontNormal";
		if font ~= row.lastFont then
			row.Label:SetFontObject(font);
			row.Summary:SetFontObject(font);
			row:SetHeight(select(2, row.Label:GetFont()) + 4);
			row.lastFont = font;
		end

		-- Every valid row has a summary, label, and texture
		row.Texture.Background:Hide();
		row.Texture.Border:Hide();
		row.Texture:Show();
		row.Summary:Show();
		row.Label:Show();
		row:Show();
	elseif not data then
		return true;	-- Already cleared
	end

	-- If we are searching for a given value, lock its highlight
	if self.HightlightDatas[data] then
		row:SetHighlightLocked(true)
	else
		row:SetHighlightLocked(false)
	end

	-- Calculate the back color
	local back = CalculateRowBack(data);
	if back ~= row.back then
		row.back = back;
		if back > 0 then
			row.Background:SetAlpha(back);
			row.Background:Show();
		else
			row.Background:Hide();
		end
	end
	
	-- Update the Summary Text (this will be the thing that updates the most)
	local summaryText = data.summaryText or "";
	local oldSummary = row.summaryText or "";
	if oldSummary ~= summaryText then
		row.Summary:SetText(summaryText);
		row.summaryText = summaryText;
	end
	
	-- Check to see what the text is currently
	local text = data.text;
	if IsRetrieving(text) then
		-- This means the link is still rendering
		text = RETRIEVING_DATA;

		local AsyncRefreshFunc = data.AsyncRefreshFunc
		if AsyncRefreshFunc then
			AsyncRefreshFunc(data)
		else
			-- app.PrintDebug("No Async Redraw Func for Type!",data.__type,data.hash)
			Callback(self.Redraw, self)
		end
	end
	if text ~= row.text then
		row.text = text;
		row.Label:SetText(text);
	end

	-- If the data has a texture, assign it.
	SetPortraitIcon(row.Texture, data);
	
	-- If we have a texture, let's assign it.
	local indicatorTexture = app.GetIndicatorIcon(data);
	if indicatorTexture then
		row.Indicator:SetTexture(indicatorTexture);
		row.Indicator:Show();
	else
		row.Indicator:Hide();
	end
end
local function UpdateVisibleRowData(self)
	-- app.PrintDebug(app.Modules.Color.Colorize("UpdateVisibleRowData:", app.Colors.TooltipDescription),self.Suffix)
	-- If there is no raw data, then return immediately.
	local rowData = self.rowData;
	if not rowData then return; end
	local height = self:GetHeight();
	if height > 80 then
		self.ScrollBar:Show();
		self.CloseButton:Show();
	elseif height > 40 then
		self.ScrollBar:Hide();
		self.CloseButton:Show();
	else
		self.ScrollBar:Hide();
		self.CloseButton:Hide();
	end
	
	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #rowData;
	if totalRowCount > 0 then
		local container = self.Container;
		local containerHeight = container:GetHeight()
		local rows = container.rows;
		local row = rows[1];
		local firstRowHeight = row:GetHeight()

		-- Ensure that the first row doesn't move out of position.
		SetRowData(self, row, rowData[1]);

		-- Fill the remaining rows up to the (visible) row count.
		row = rows[2]
		local current, rowHeight
			= math.max(1, math.min(self.ScrollBar.CurrentIndex, totalRowCount)) + 1, row:GetHeight();
		local maxRows = math.floor((containerHeight - firstRowHeight) / rowHeight) + 1
		local rowCount = math.min(maxRows, #rowData)
		self:SetMinMaxValues(rowCount, totalRowCount)

		-- Should this window attempt to scroll to specific data?
		if self.ScrollInfo then
			local field, value = self.ScrollInfo[1], self.ScrollInfo[2]
			-- app.PrintDebug("ScrollInfo",field,value)
			wipe(self.HightlightDatas)
			local foundAt, ref
			for i=2,totalRowCount do
				ref = rowData[i]
				if ref and ref[field] == value then
					if not foundAt then foundAt = i end
					self.HightlightDatas[ref] = true
				end
			end
			self.ScrollInfo = nil

			if foundAt then
				-- app.PrintDebug("Index",foundAt)
				-- Actually do the scroll if it was determined above
				-- Estimate the expected scroll position based on row heights in the current window
				local possibleRows = math.floor((containerHeight - firstRowHeight) / rows[2]:GetHeight()) + 1
				-- app.PrintDebug("Possible Rows:",possibleRows)
				local scrollIndex = math.min(foundAt - (possibleRows / 2), totalRowCount - possibleRows)
				local currentScroll = self.ScrollBar.CurrentIndex
				-- app.PrintDebug("Scrolling to:",scrollIndex,"from",currentScroll)
				if currentScroll ~= scrollIndex then
					self.ScrollBar:SetValue(scrollIndex)
					return
				end
			end
		end

		local minIndent
		for i=2,rowCount do
			row = rows[i];
			SetRowData(self, row, rowData[current]);
			local indent = row.indent;
			if indent and (not minIndent or minIndent > indent) then
				minIndent = indent;
			end
			current = current + 1;
		end

		-- Apply the Min Indent adjustment if there are any rows to indent
		if rowCount > 1 then
			local shift = math.floor(rowHeight / 2 + 0.1)
			-- TODO: testing moving this switch to a cached function assigned via settings OnSet event
			if AdjustRowIndents then
				local adjustBy = minIndent - 2
				for i=2,rowCount do
					row = rows[i];
					if row.indent then
						row.Texture:SetPoint("LEFT", row, "LEFT", (row.indent - adjustBy) * shift, 0);
					end
				end
			else
				for i=2,rowCount do
					row = rows[i];
					if row.indent then
						row.Texture:SetPoint("LEFT", row, "LEFT", row.indent * shift, 0);
					end
				end
			end
		end

		-- Hide the extra rows if any exist in the row container
		for i=math.max(2, rowCount + 1),#rows do
			-- Ignoring cleaning rows beyond already cleaned ones seems fine as long as people don't be weird
			if SetRowData(self, rows[i], nil) then break end
		end

		-- app.PrintDebugPrior("UpdateVisibleRowDataComplete:",self.Suffix)
		if GameTooltip and GameTooltip:IsVisible() then
			local row = GameTooltip:GetOwner()
			if row and row.__ref ~= row.ref then
				-- app.PrintDebug("owner.ref",app:SearchLink(row.ref))
				-- force tooltip to refresh since the scroll has changed but the tooltip is still visible
				local OnLeave = row:GetScript("OnLeave")
				local OnEnter = row:GetScript("OnEnter")
				OnLeave(row)
				OnEnter(row)
			end
		end
	end
end
local function StopMovingOrSizing(self)
	self:StopMovingOrSizing();
	self.isMoving = false;
end
local function SelfSizeRefresher(self)
	while self.isMoving do
		self:Refresh();
		coroutine.yield();
	end
	self:RecordSettings();
end
local function SelfMoveRefresher(self)
	while self.isMoving do
		coroutine.yield();
		if not self:IsMouseOver() then
			StopMovingOrSizing(self);
		end
	end
	self:RecordSettings();
end
local function StartMovingOrSizing(self)
	if self.isMoving then
		StopMovingOrSizing(self);
	elseif not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	else
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			self:StartATTCoroutine("StartMovingOrSizing (Sizing)", SelfSizeRefresher);
		elseif self:IsMovable() then
			self:StartMoving();
			self:StartATTCoroutine("StartMovingOrSizing (Moving)", SelfMoveRefresher);
		end
	end
end

-- Shared Panel Functions
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end

		-- All non-Shift Right Clicks open a mini list or the settings.
		local window = self:GetParent():GetParent();
		if button == "RightButton" then
			if IsAltKeyDown() then
				app.AddTomTomWaypoint(reference);
			elseif IsShiftKeyDown() then
				if app.Settings:GetTooltipSetting("Sort:Progress") then
					app.print("Sorting selection by total progress...");
					app:StartATTCoroutine("Sorting", function()
						app.SortGroup(reference, "progress");
						window:Update();
						app.print("Finished Sorting.");
					end);
				else
					app.print("Sorting selection alphabetically...");
					app:StartATTCoroutine("Sorting", function()
						app.SortGroup(reference, "name");
						window:Update();
						app.print("Finished Sorting.");
					end);
				end
				return true;
			elseif self.index > 0 then
				if not reference.IgnorePopout then
					app:CreateMiniListForGroup(reference.__o or reference);
				end
			else
				app.Settings:Open();
			end
		else
			if IsShiftKeyDown() then
				-- If we're at the Auction House
				local isTSMOpen = TSM_API and TSM_API.IsUIVisible("AUCTION");
				if isTSMOpen or (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
					local missingItems = {};
					app.Search.SearchForMissingItemsRecursively(reference, missingItems);
					local count = #missingItems;
					if count > 0 then
						if isTSMOpen then
							-- This is the new, unusable POS API that I don't understand. lol
							local dict, path, itemString, group = {}, nil, nil, nil;
							for i=1,#missingItems do
								group = missingItems[i]
								path = app.GenerateSourcePathForTSM(group, 0);
								if path then
									itemString = dict[path];
									if itemString then
										dict[path] = itemString .. ",i:" .. group.itemID;
									else
										dict[path] = "i:" .. group.itemID;
									end
								end
							end
							local search,first = "",true;
							for path,itemString in pairs(dict) do
								if first then
									first = false;
								else
									search = search .. ",";
								end
								search = search .. "group:" .. path .. "," .. itemString;
							end
							app:ShowPopupDialogWithMultiLineEditBox(search, nil, "Copy this to your TSM Import Group Popup");
							return true;
						elseif Auctionator and Auctionator.API and (AuctionatorShoppingFrame and (AuctionatorShoppingFrame:IsVisible() or count > 1)) then
							-- Auctionator needs unique Item Names. Nothing else.
							local uniqueNames = {}
							for i=1,#missingItems do
								local name = missingItems[i].name;
								if name then uniqueNames[name] = 1; end
							end

							-- Build the array of names.
							local arr = {};
							for key,value in pairs(uniqueNames) do
								arr[#arr + 1] = key
							end
							Auctionator.API.v1.MultiSearch(L.TITLE, arr);
							return;
						elseif TSMAPI and TSMAPI.Auction then
							-- This was the old, better, TSM API that made sense.
							local itemList, search, group = {}, nil, nil
							for i=1,#missingItems do
								group = missingItems[i]
								search = group.tsm or TSMAPI.Item:ToItemString(group.link or group.itemID);
								if search then itemList[search] = app.GenerateSourcePathForTSM(group, 0); end
							end
							app:ShowPopupDialog(L.TSM_WARNING_1 .. L.TITLE .. L.TSM_WARNING_2,
							function()
								TSMAPI.Groups:CreatePreset(itemList);
								app.print(L.PRESET_UPDATE_SUCCESS);
								if not TSMAPI.Operations:GetFirstByItem(search, "Shopping") then
									print(L.SHOPPING_OP_MISSING_1);
									print(L.SHOPPING_OP_MISSING_2);
								end
							end);
							return true;
						elseif reference.g and #reference.g > 0 and not reference.link then
							app.print(L.AUCTIONATOR_GROUPS);
							return true;
						end
					end
					
					-- Attempt to search manually with the link.
					local name, link = reference.name, reference.link or reference.silentLink;
					if name and link and app.HandleModifiedItemClick(link) then
						if C_AuctionHouse and C_AuctionHouse.SendBrowseQuery then
							local query = app.AuctionHouseQuery;
							if not query then
								query = {
									sorts = {
										-- {sortOrder = Enum.AuctionHouseSortOrder.Name, reverseSort = false},
										{sortOrder = Enum.AuctionHouseSortOrder.Price, reverseSort = false},
										-- {sortOrder = Enum.AuctionHouseSortOrder.Buyout, reverseSort = false},
									},
									filters = {},
								};
								app.AuctionHouseQuery = query
							end
							query.searchString = name
							C_AuctionHouse.SendBrowseQuery(query)
						elseif AuctionHouseFrame.SearchBar then
							AuctionHouseFrame.SearchBar:StartSearch();
						else
							AuctionFrameBrowse_Search();
						end
						return true;
					end
				else
					-- Not at the Auction House
					-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
					local link = reference.link or reference.silentLink;
					if link then
						if app.HandleModifiedItemClick(link) or ChatEdit_InsertLink(link) then return true; end
						local _, dialog = StaticPopup_Visible("ALL_THE_THINGS_EDITBOX");
						if dialog then dialog.editBox:SetText(link); return true; end
					end
					if button == "LeftButton" then app.RefreshCollections(); end
					return true;
				end
			end

			-- Alt Click on a data row attempts to (un)track the group/nested groups, not from window header unless a popout window
			if IsAltKeyDown() and (self.index > 0 or window.ExpireTime) then
				if app.AddContentTracking(reference) then
					return true
				end
			end

			-- Control Click Expands the Groups
			if IsControlKeyDown() then
				-- If this reference has a link, then attempt to preview the appearance.
				if reference.illusionID then
					-- Illusions are a nasty animal that need to be displayed a special way.
					DressUpVisual(reference.illusionLink);
					return true;
				else
					local link = reference.link or reference.silentLink;
					if link and app.HandleModifiedItemClick(link) then
						return true;
					end
				end

				-- If this reference is anything else, expand the groups.
				if reference.g then
					-- mark the window if it is being fully-collapsed
					if self.index < 1 then
						window.fullCollapsed = HasExpandedSubgroup(reference);
					end
					-- always expand if collapsed or if clicked the header and all immediate subgroups are collapsed, otherwise collapse
					ForceExpandGroupsRecursively(reference, not reference.expanded or (self.index < 1 and not window.fullCollapsed));
					window:Update();
					return true;
				end
			end
			
			if self.index > 0 then
				reference.expanded = not reference.expanded;
				window:Update();
			else
				if not reference.expanded then
					reference.expanded = true;
					window:Update();
				end
				if window:IsMovable() then
					if IsAltKeyDown() then
						-- Toggle lock/unlock by holding Alt when clicking the header of a Window if it is movable
						window.isLocked = not window.isLocked;
						window:RecordSettings();

						-- force tooltip to refresh since locked state drives tooltip content
						self:GetScript("OnLeave")(self)
						self:GetScript("OnEnter")(self)
					else
						self:SetScript("OnMouseUp", function(self)
							self:SetScript("OnMouseUp", nil);
							StopMovingOrSizing(window);
						end);
						StartMovingOrSizing(window);
					end
				end
			end
		end
	end
end
local function AddQuestInfoToTooltip(info, quests, reference)
	-- Adds ATT information about the list of Quests into the provided tooltip
	if not quests then return end

	local currentMapID = app.CurrentMapID;
	local text, mapID, q
	for i=1,#quests do
		q = quests[i]
		text = q.text;
		if IsRetrieving(text) then
			text = RETRIEVING_DATA;
			reference.working = true;
		end
		text = app.GetCompletionIcon(q.saved) .. " [" .. q.questID .. "] " .. text;
		mapID = app.GetBestMapForGroup(q, currentMapID);
		if mapID and mapID ~= currentMapID then text = text .. " (" .. app.GetMapName(mapID) .. ")"; end
		info[#info + 1] = { left = text }
	end
end
local function RowOnEnter(self)
	local reference = self.ref;
	if not reference then return; end
	reference.working = nil;
	local tooltip = GameTooltip;
	if not tooltip then return end;
	local modifier = IsModifierKeyDown();
	local IsRefreshing = tooltip.ATT_IsRefreshing;
	if IsRefreshing then
		local modded = not not tooltip.ATT_IsModifierKeyDown;
		if modded ~= modifier then
			tooltip.ATT_IsModifierKeyDown = modifier;
		elseif tooltip.ATT_AttachComplete == true then
			return;
		end
	else
		tooltip.ATT_IsModifierKeyDown = modifier;
		tooltip.ATT_IsRefreshing = true;
		tooltip:ClearATTReferenceTexture();
	end

	-- Always display tooltip data when viewing information from our windows.
	local wereTooltipIntegrationsDisabled = not app.Settings:GetTooltipSetting("Enabled");
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", true); end

	-- Build tooltip information.
	local tooltipInfo, working = {}, nil;
	tooltip:ClearLines();
	tooltip.ATT_AttachComplete = nil
	app.ActiveRowReference = reference;
	local window = self:GetParent():GetParent();
	if window.HightlightDatas[reference] then
		window.HightlightDatas[reference] = nil
		self:SetHighlightLocked(false)
	end
	local anchor = window.TooltipAnchor;
	if not anchor then
		if self:GetCenter() > (UIParent:GetWidth() / 2) and (not AuctionFrame or not AuctionFrame:IsVisible()) then
			anchor = "ANCHOR_LEFT";
		else
			anchor = "ANCHOR_RIGHT";
		end
	end
	tooltip:SetOwner(self, anchor);

	-- Attempt to show the object as a hyperlink in the tooltip
	-- Items always use their links
	if reference.itemID
		-- Quest links are ignored if 'Objectives' is enabled
		or (reference.key ~= (app.Settings:GetTooltipSetting("Objectives") and "questID" or "_Z_"))
	then
		local linkSuccessful
		local link = reference.link or reference.tooltipLink or reference.silentLink
		if link and link:sub(1, 1) ~= "[" then
			local ok = pcall(tooltip.SetHyperlink, tooltip, link);
			if ok and tooltip:NumLines() > 2 then
				linkSuccessful = true;
			else
				-- if a link fails to render a tooltip, it clears the tooltip and the owner
				-- so we have to re-assign it here for it to use :Show()
				tooltip:SetOwner(self, anchor);
			end
		end

		-- Only if the link was unsuccessful.
		if (not linkSuccessful or tooltip.ATT_AttachComplete == nil) and reference.currencyID then
			---@diagnostic disable-next-line: redundant-parameter
			tooltip:SetCurrencyByID(reference.currencyID, 1);
		end
	end

	-- Default top row line if nothing is generated from a link.
	if tooltip:NumLines() < 1 then
		tooltipInfo[#tooltipInfo + 1] = { left = reference.text or RETRIEVING_DATA }
	end

	local title = reference.title;
	if title then
		local left, right = app.DESCRIPTION_SEPARATOR:split(title);
		if right then
			tooltipInfo[#tooltipInfo + 1] = {
				left = left,
				right = right,
				r = 1, g = 1, b = 1
			};
		else
			tooltipInfo[#tooltipInfo + 1] = {
				left = title,
				r = 1, g = 1, b = 1
			};
		end
	end
	if reference.questID then
		-- TODO: This could be moved to the Quests lib and hook in using settings.AppendInformationTextEntry.
		local oneTimeQuestCharGuid = ATTAccountWideData.OneTimeQuests[reference.questID];
		if oneTimeQuestCharGuid then
			local charData = ATTCharacterData[oneTimeQuestCharGuid];
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ONCE_PER_ACCOUNT,
				right = L.COMPLETED_BY:format(charData and charData.text or UNKNOWN),
			}
		elseif oneTimeQuestCharGuid == false then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ONCE_PER_ACCOUNT,
				color = "ffcf271b",
			}
		end
	end

	-- Process all Information Types
	if tooltip.ATT_AttachComplete == nil then
		-- an item used for a faction which is repeatable
		if reference.itemID and reference.factionID and reference.repeatable then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.ITEM_GIVES_REP .. (app.WOWAPI.GetFactionName(reference.factionID) or ("Faction #" .. reference.factionID)) .. "'",
				color = app.Colors.TooltipDescription,
				wrap = true,
			};
		end
		app.ProcessInformationTypes(tooltipInfo, reference);
	end

	-- Further conditional texts that can be displayed
	if reference.timeRemaining then
		tooltipInfo[#tooltipInfo + 1] = {
			left = app.GetColoredTimeRemaining(reference.timeRemaining),
		}
	end

	-- Show info about if this Thing cannot be collected due to a custom collectibility
	-- restriction on the Thing which this character does not meet
	local customCollect = reference.customCollect
	if customCollect then
		local customCollectEx, c
		local requires = L.REQUIRES;
		for i=1,#customCollect do
			c = customCollect[i]
			customCollectEx = L.CUSTOM_COLLECTS_REASONS[c];
			local icon_color_str = customCollectEx.icon.." |c"..customCollectEx.color..(customCollectEx.text or "[MISSING_LOCALE_KEY]");
			if not app.CurrentCharacter.CustomCollects[c] then
				tooltipInfo[#tooltipInfo + 1] = {
					left = "|cffc20000" .. requires .. ":|r " .. icon_color_str,
					right = customCollectEx.desc or "",
				}
			else
				tooltipInfo[#tooltipInfo + 1] = {
					left = requires .. ": " .. icon_color_str,
					right = customCollectEx.desc or "",
				}
			end
		end
	end

	-- Show Quest Prereqs
	local isDebugMode = app.MODE_DEBUG;
	local sourceQuests = reference.sourceQuests;
	if sourceQuests and (isDebugMode or not reference.saved) then
		local prereqs, bc, bestMatch, sqs = {}, {}, nil, nil;
		local sourceQuestID, sq
		for i=1,#sourceQuests do
			sourceQuestID = sourceQuests[i]
			if sourceQuestID > 0 and (isDebugMode or not app.IsQuestFlaggedCompleted(sourceQuestID)) then
				sqs = app.SearchForField("questID", sourceQuestID);
				if #sqs > 0 then
					for j=1,#sqs do
						sq = sqs[j]
						if sq.questID == sourceQuestID and not sq.objectiveID then
							if isDebugMode or (not app.IsQuestFlaggedCompleted(sourceQuestID) and app.GroupFilter(sq)) then
								if sq.sourceQuests then
									-- Always prefer the source quest with additional source quest data.
									bestMatch = sq;
								elseif not sq.itemID and (not bestMatch or not bestMatch.sourceQuests) then
									-- Otherwise try to find the version of the quest that isn't an item.
									bestMatch = sq;
								end
							end
						end
					end
					if bestMatch then
						if bestMatch.isBreadcrumb then
							bc[#bc + 1] = bestMatch;
						else
							prereqs[#prereqs + 1] = bestMatch;
						end
						bestMatch = nil;
					end
				else
					prereqs[#prereqs + 1] = app.CreateQuest(sourceQuestID);
				end
			end
		end
		if prereqs and #prereqs > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.PREREQUISITE_QUESTS,
				wrap = true,
			};
			AddQuestInfoToTooltip(tooltipInfo, prereqs, reference);
		end
		if bc and #bc > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMBS_WARNING,
				wrap = true,
			};
			AddQuestInfoToTooltip(tooltipInfo, bc, reference);
		end
	end

	-- Show Breadcrumb information
	local lockedWarning;
	if reference.isBreadcrumb then
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.THIS_IS_BREADCRUMB,
			color = app.Colors.Breadcrumb,
		}
		local nextQuests = reference.nextQuests
		if nextQuests then
			local isBreadcrumbAvailable = true;
			local nextq, nq = {}, nil;
			local nextQuestID
			for i=1,#nextQuests do
				nextQuestID = nextQuests[i]
				if nextQuestID > 0 then
					nq = app.SearchForObject("questID", nextQuestID, "field");
					-- existing quest group
					if nq then
						nextq[#nextq + 1] = nq
					else
						nextq[#nextq + 1] = app.CreateQuest(nextQuestID)
					end
					if app.IsQuestFlaggedCompleted(nextQuestID) then
						isBreadcrumbAvailable = false;
					end
				end
			end
			if isBreadcrumbAvailable then
				-- The character is able to accept the breadcrumb quest without Party Sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			elseif reference.DisablePartySync == false then
				-- unknown if party sync will function for this Thing
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC_4,
					color = app.Colors.LockedWarning,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			elseif not reference.DisablePartySync then
				-- The character wont be able to accept this quest without the help of a lower level character using Party Sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.BREADCRUMB_PARTYSYNC_2,
					color = app.Colors.LockedWarning,
				}
				AddQuestInfoToTooltip(tooltipInfo, nextq, reference);
			else
				-- known to not be possible in party sync
				tooltipInfo[#tooltipInfo + 1] = {
					left = L.DISABLE_PARTYSYNC,
				}
			end
			lockedWarning = true;
		end
	end

	-- Show information about it becoming locked due to some criteria
	local lockCriteria = reference.lc;
	if lockCriteria then
		-- list the reasons this may become locked due to lock criteria
		local critKey, critValue;
		local critFuncs = app.QuestLockCriteriaFunctions;
		local critFunc;
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.UNAVAILABLE_WARNING_FORMAT:format(lockCriteria[1]),
			color = app.Colors.LockedWarning,
		}
		for i=2,#lockCriteria,2 do
			critKey = lockCriteria[i];
			critValue = lockCriteria[i + 1];
			critFunc = critFuncs[critKey];
			if critFunc then
				local label = critFuncs["label_"..critKey];
				local text = tostring(critFuncs["text_"..critKey](critValue))
				-- TODO: probably a more general way to check this on lines that can be retrieving
				if not working and IsRetrieving(text) then
					working = true
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = app.GetCompletionIcon(critFunc(critValue)).." "..label..": "..text,
				}
			end
		end
	end
	local altQuests = reference.altQuests;
	if altQuests then
		-- list the reasons this may become locked due to altQuests specifically
		local critValue;
		local critFuncs = app.QuestLockCriteriaFunctions;
		local critFunc = critFuncs.questID;
		local label = critFuncs.label_questID;
		local text;
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.UNAVAILABLE_WARNING_FORMAT:format(1),
			color = app.Colors.LockedWarning,
		}
		for i=1,#altQuests,1 do
			critValue = altQuests[i];
			if critFunc then
				text = critFuncs.text_questID(critValue);
				tooltipInfo[#tooltipInfo + 1] = {
					left = app.GetCompletionIcon(critFunc(critValue)).." "..label..": "..text,
				}
			end
		end
	end

	-- it is locked and no warning has been added to the tooltip
	if not lockedWarning and reference.locked then
		if reference.DisablePartySync == false then
			-- unknown if party sync will function for this Thing
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMB_PARTYSYNC_4,
				color = app.Colors.LockedWarning,
			}
		elseif not reference.DisablePartySync then
			-- should be possible in party sync
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMB_PARTYSYNC_3,
				color = app.Colors.LockedWarning,
			}
		else
			-- known to not be possible in party sync
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.DISABLE_PARTYSYNC,
			}
		end
	end
	if reference.sourceAchievements and (isDebugMode or not reference.collected) then
		local prereqs, bc, bestMatch, sas = {}, {}, nil, nil;
		for i,sourceAchievementID in ipairs(reference.sourceAchievements) do
			if sourceAchievementID > 0 and (isDebugMode or not ATTAccountWideData.Achievements[sourceAchievementID]) then
				sas = app.SearchForField("achievementID", sourceAchievementID);
				if #sas > 0 then
					for j,sa in ipairs(sas) do
						if sa.achievementID == sourceAchievementID and sa.key == "achievementID" then
							if isDebugMode or (app.RecursiveCharacterRequirementsFilter(sa) and not sa.collected) then
								bestMatch = sa;
							end
						end
					end
					if bestMatch then
						prereqs[#prereqs + 1] = bestMatch;
						bestMatch = nil;
					end
				else
					prereqs[#prereqs + 1] = app.CreateAchievement(sourceAchievementID);
				end
			end
		end

		if prereqs and #prereqs > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = "This has an incomplete prerequisite achievement that you need to complete first.",
				wrap = true,
			};
			for i,prereq in ipairs(prereqs) do
				local text = "   " .. prereq.achievementID .. ": " .. (prereq.text or RETRIEVING_DATA);
				if prereq.isGuild then text = text .. " (" .. GUILD .. ")"; end
				tooltipInfo[#tooltipInfo + 1] = {
					left = text,
					right = app.GetCompletionIcon(prereq.collected),
				};
			end
		end
	end

	if app.Settings:GetTooltipSetting("Show:TooltipHelp") then
		if reference.g then
			-- If we're at the Auction House
			if (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
				tooltipInfo[#tooltipInfo + 1] = {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS_AH") or "TOP_ROW_INSTRUCTIONS_AH"],
				}
			else
				tooltipInfo[#tooltipInfo + 1] = {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS") or "TOP_ROW_INSTRUCTIONS"],
				}
			end
		end
		if reference.questID then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.QUEST_ROW_INSTRUCTIONS,
			}
		end
	end
	-- Add info in tooltip for the header of a Window for whether it is locked or not
	if self.index == 0 then
		if window.isLocked then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.TOP_ROW_TO_UNLOCK,
			}
		elseif app.Settings:GetTooltipSetting("Show:TooltipHelp") then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.TOP_ROW_TO_LOCK,
			}
		end
	end
	
	--[[ ROW DEBUGGING ]
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Self",
		right = tostring(reference),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Base",
		right = tostring(getmetatable(reference)),
	});
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Parent",
		right = tostring(rawget(reference, "parent")),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "ParentText",
		right = tostring((rawget(reference, "parent") or app.EmptyTable).text),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "SourceParent",
		right = tostring(rawget(reference, "sourceParent")),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "SourceParentText",
		right = tostring((rawget(reference, "sourceParent") or app.EmptyTable).text),
	}
	tooltipInfo[#tooltipInfo + 1] = {
		left = "-- Ref Fields:",
	}
	for key,val in pairs(reference) do
		if key ~= "lore" and key ~= "description" then
			tooltipInfo[#tooltipInfo + 1] = {
				left = key,
				right = tostring(val),
			}
		end
	end
	local fields = {
		"__type",
		-- "key",
		-- "hash",
		-- "name",
		-- "link",
		-- "sourceIgnored",
		-- "collectible",
		-- "collected",
		-- "trackable",
		-- "saved",
		"collectibleAsCost",
		"costTotal",
		"isCost",
		"filledCost",
		"isUpgrade",
		"collectibleAsUpgrade",
		"upgradeTotal",
		"filledUpgrade",
		"skipFill",
		-- "itemID",
		-- "modItemID"
	};
	tooltipInfo[#tooltipInfo + 1] = {
		left = "-- Extra Fields:",
	}
	for _,key in ipairs(fields) do
		tooltipInfo[#tooltipInfo + 1] = {
			left = key,
			right = tostring(reference[key]),
		}
	end
	tooltipInfo[#tooltipInfo + 1] = {
		left = "Row Indent",
		right = tostring(CalculateRowIndent(reference)),
	}
	-- END DEBUGGING]]
	
	-- Attach all of the Information to the tooltip.
	app.Modules.Tooltip.AttachTooltipInformation(tooltip, tooltipInfo);
	if not IsRefreshing then tooltip:SetATTReferenceForTexture(reference); end
	tooltip:Show();

	-- Reactivate the original tooltip integrations setting.
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", false); end
	app.ActiveRowReference = nil;

	-- Tooltip for something which was not attached via search, so mark it as complete here
	working = working or reference.working
	-- don't capture working in the reference itself
	reference.working = nil
	tooltip.ATT_AttachComplete = not working
end
local function RowOnLeave(self)
	local reference = self.ref;
	if reference then reference.working = nil; end
	app.ActiveRowReference = nil;
	GameTooltip.ATT_AttachComplete = nil;
	GameTooltip.ATT_IsRefreshing = nil;
	GameTooltip.ATT_IsModifierKeyDown = nil;
	GameTooltip:ClearATTReferenceTexture();
	GameTooltip:ClearLines();
	GameTooltip:Hide();
end
local function CreateRow(container, rows, i)
	-- apparently Blizzard's frame debugger doesn't index for numeric values on this table! Rude.
	i = tonumber(i)
	if not i then return end

	---@class ATTRowClass: ATTButtonClass
	local row = CreateFrame("Button", nil, container);
	row.index = i - 1;
	rows[i] = row;
	if i == 1 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		local aboveRow = rows[row.index];
		row:SetPoint("TOPLEFT", aboveRow, "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", aboveRow, "BOTTOMRIGHT");
	end

	-- Setup highlighting and event handling
	row:SetHighlightAtlas("Options_List_Active");
	row:RegisterForClicks("LeftButtonDown","RightButtonDown");
	row:SetScript("OnClick", RowOnClick);
	row:SetScript("OnEnter", RowOnEnter);
	row:SetScript("OnLeave", RowOnLeave);
	row:EnableMouse(true);

	-- Label is the text information you read.
	row.Label = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Label:SetJustifyH("LEFT");
	row.Label:SetPoint("BOTTOM");
	row.Label:SetPoint("TOP");
	row:SetHeight(select(2, row.Label:GetFont()) + 4);
	local rowHeight = row:GetHeight();

	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");

	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetAllPoints();
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetTexture(136810);

	-- Texture is the icon.
	---@class ATTRowTextureClass: Texture
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("LEFT", row, "LEFT");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(rowHeight);
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("LEFT", row.Texture);
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(rowHeight);
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("LEFT", row.Texture);
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(rowHeight);

	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("RIGHT", row.Texture, "LEFT", -2, 0);
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(rowHeight);
	
	-- The Label should be sandwiched between the summary and the texture
	row.Label:SetPoint("RIGHT", row.Summary, "LEFT", 0, 0);
	row.Label:SetPoint("LEFT", row.Texture, "RIGHT", 2, 0);

	-- Clear the Row Data Initially
	row.ref = false
	SetRowData(container, row, nil);
	return row;
end

-- Window Creation
local AllWindowSettings;
local function ApplySettingsForWindow(self, windowSettings)
	local oldRecordSettings = self.RecordSettings;
	self.RecordSettings = app.EmptyFunction;
	self:SetMovable(windowSettings.movable);
	self:SetResizable(windowSettings.resizable);
	self.isLocked = windowSettings.isLocked;
	if windowSettings.scale then self:SetScale(windowSettings.scale); end
	if windowSettings.movable then
		self:ClearAllPoints();
		if windowSettings.x then
			local relativeTo = windowSettings.relativeTo;
			if relativeTo and not _G[relativeTo] then relativeTo = UIParent; end
			self:SetPoint(windowSettings.point or "CENTER", relativeTo or UIParent, windowSettings.relativePoint or "CENTER", windowSettings.x, windowSettings.y);
		else
			self:SetPoint("CENTER", UIParent, "CENTER");
		end
	end
	if windowSettings.width then
		self:SetSize(windowSettings.width, windowSettings.height);
	end
	if windowSettings.alpha then
		self:SetAlpha(windowSettings.alpha);
	end
	if windowSettings.backdrop then
		self:SetBackdrop(windowSettings.backdrop);
	end
	if windowSettings.backdropColor then
		local r, g, b, a = unpack(windowSettings.backdropColor);
		self:SetBackdropColor(r or 0, g or 0, b or 0, a or 0);
	end
	if windowSettings.borderColor then
		local r, g, b, a = unpack(windowSettings.borderColor);
		self:SetBackdropBorderColor(r or 0, g or 0, b or 0, a or 0);
	end
	if windowSettings.Progress and self.data then
		self.data.progress = windowSettings.Progress;
		self.data.total = windowSettings.Total;
	end
	self.RecordSettings = oldRecordSettings;
end
local function BuildDefaultsForWindow(self, fromSettings)
	local defaults = {
		backdrop = {
			bgFile = 137056,
			edgeFile = 137057,
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 4, right = 4, top = 4, bottom = 4 }
		},
		resizable = true,
		visible = false,
		movable = true,
		alpha = 1,
		x = 0,
		y = 0,
		width = 300,
		height = 300,
	};
	if app.Settings and app.Settings._Initialize then
		defaults.scale = app.Settings:GetTooltipSetting(self.Suffix == "Prime" and "MainListScale" or "MiniListScale") or 1;
		local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = app.Settings.GetWindowColors()
		defaults.backdropColor = { rBg, gBg, bBg, aBg };
		defaults.borderColor = { rBd, gBd, bBd, aBd };
	else
		-- TODO: this shouldn't be possible or allowed!
		app.PrintDebug(self.Suffix, "window is being created before Settings are initialized!! Using hardcoded defaults.");
		defaults.scale = 1;
		defaults.backdropColor = { 0, 0, 0, 1 };
		defaults.borderColor = { 1, 1, 1, 1 };
	end
	if fromSettings then
		for key,value in pairs(fromSettings) do
			defaults[key] = value;
		end
	end
	return defaults;
end
local function BuildSettingsForWindow(self, windowSettings)
	local point, relativeTo, relativePoint, xOfs, yOfs = self:GetPoint()
	if xOfs then
		windowSettings.width = self:GetWidth();
		windowSettings.height = self:GetHeight();
		windowSettings.x = xOfs;
		windowSettings.y = yOfs;
		windowSettings.point = point;
		windowSettings.relativePoint = relativePoint;
		windowSettings.relativeTo = relativeTo and relativeTo:GetName();
	end
	windowSettings.isLocked = self.isLocked;
	windowSettings.scale = self:GetScale();
	windowSettings.visible = not not self:IsVisible();
	windowSettings.movable = not not self:IsMovable();
	windowSettings.resizable = not not self:IsResizable();
	windowSettings.alpha = self:GetAlpha();
	windowSettings.backdrop = self:GetBackdrop();
	local r, g, b, a = self:GetBackdropColor();
	windowSettings.backdropColor = { r or 0, g or 0, b or 0, a or 1 };
	r, g, b, a = self:GetBackdropBorderColor();
	windowSettings.borderColor = { r or 0, g or 0, b or 0, a or 1 };
	if self.data then
		windowSettings.Progress = self.data.progress;
		windowSettings.Total = self.data.total;
	end
end
local function ClearSettingsForWindow(self)
	if not AllWindowSettings then return; end
	AllWindowSettings[self.Suffix] = nil;
end
local function ReclaimSettingsForWindow(self)
	local windowSettings = self.Settings;
	if windowSettings then
		AllWindowSettings[self.Suffix] = windowSettings;
	end
end
local function RecordSettingsForWindow(self)
	local windowSettings = self.Settings;
	if windowSettings then
		BuildSettingsForWindow(self, windowSettings);
	end
	return windowSettings;
end
local function LoadSettingsForWindow(self)
	if not AllWindowSettings then return; end
	local name = self.Suffix;
	local settings = AllWindowSettings[name];
	if not settings then
		settings = {};
		AllWindowSettings[name] = settings;
	end
	-- try to load settings from the Profile since Retail allows per-Profile window management
	-- TODO: in later phase make Layouts and Profiles separate such that
	-- - Layouts only control Window positions/behaviors
	-- - Profiles control settings as they currently do
	app.Settings.GetWindowSettingsFromProfile(name, settings)
	self.Settings = settings;
	self:Load(settings);
end
app.AddEventHandler("OnSavedVariablesAvailable", function()
	if AllWindowSettings then
		return;
	end

	-- Setup the Saved Variables if they aren't already.
	local savedVariables = AllTheThingsSavedVariables;
	if not savedVariables then
		savedVariables = {};
		AllTheThingsSavedVariables = savedVariables;
	end

	-- Load the Window Settings
	local windowSettings = savedVariables.Windows;
	if not windowSettings then
		windowSettings = {};
		savedVariables.Windows = windowSettings;
	end
	AllWindowSettings = windowSettings;

	-- Rename the old mini list settings container.
	local oldMiniListData = windowSettings.CurrentInstance;
	if oldMiniListData then
		app.PrintDebug("Found old Mini List Data settings");
		windowSettings.CurrentInstance = nil;
		windowSettings.MiniList = oldMiniListData;
	end
end)
app.AddEventHandler("OnInit", function()
	-- Clean out non-visible dynamic windows and cache the rest
	local dynamicWindows = {};
	for name, settings in pairs(AllWindowSettings) do
		if settings.dynamic then
			if settings.visible then
				dynamicWindows[name] = settings;
			else
				AllWindowSettings[name] = nil;
			end
		end
	end

	-- Load settings for all of the windows other than Prime.
	local primeWindow = app.Windows.Prime;
	app.Windows.Prime = nil;
	for name, window in pairs(app.Windows) do
		LoadSettingsForWindow(window);
		dynamicWindows[name] = nil;
	end

	-- Okay, now load Prime settings last.
	app.Windows.Prime = primeWindow;
	LoadSettingsForWindow(primeWindow);

	-- Okay, NOW apply visible to any Built windows
	for name, window in pairs(app.Windows) do
		local settings = window.Settings;
		if settings and (settings.visible or settings.ShouldAutomaticallyOpen) then
			window:Show()
		end
	end

	-- Now apply visible to any Defined windows
	for name, definition in pairs(app.WindowDefinitions) do
		local settings = AllWindowSettings[name];
		if settings and (settings.visible or settings.ShouldAutomaticallyOpen) then
			app:GetWindow(name):Show()
		end
	end

	-- Regenerate the Dynamic Windows
	for name,settings in pairs(dynamicWindows) do
		settings.visible = false;
		app:CreateMiniListFromSource(settings.key, settings.id, settings.sourcePath);
	end
end);

-- Automatic Opening Opt-In Methods
local GetShouldAutomaticallyOpen = function(self)
	return self.Settings and self.Settings.ShouldAutomaticallyOpen;
end
local SetShouldAutomaticallyOpen = function(self, shouldAutomaticallyOpen)
	if self.Settings then
		self.Settings.ShouldAutomaticallyOpen = shouldAutomaticallyOpen;
	end
end

-- Window UI Event Handlers
local tinsert = tinsert;
local InCombatLockdown = InCombatLockdown;
local function InternalBuildFlatSearchFilteredResponse(groups, filter, t)
	if groups then
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if filter(group) then
					tinsert(t, app.CloneClassInstance(group));
				elseif group.g then
					InternalBuildFlatSearchFilteredResponse(group.g, filter, t);
				end
			end
		end
	end
end
function app:BuildFlatSearchFilteredResponse(...)
	return InternalBuildFlatSearchFilteredResponse(...);
end
function app:BuildFlatSearchResponse(groups, field, value, t)
	if field == "requireSkill" then
		InternalBuildFlatSearchFilteredResponse(groups, function(group)
			local v = group[field];
			return v and (v == value or app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value);
		end, t);
	else
		InternalBuildFlatSearchFilteredResponse(groups, function(group)
			return group[field] == value;
		end, t);
	end
end
function app:BuildFlatSearchResponseForField(groups, field, t)
	InternalBuildFlatSearchFilteredResponse(groups, function(group)
		return group[field];
	end, t);
end

local function InternalBuildSearchFilteredResponse(groups, filter)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if filter(group) then
					if not t then t = {}; end
					tinsert(t, app.CloneClassInstance(group));
				else
					local response = InternalBuildSearchFilteredResponse(group.g, filter);
					if response then
						if not t then t = {}; end
						local clone = app.CloneClassInstance(group, true);
						clone.g = response;
						tinsert(t, clone);
					end
				end
			end
		end
		return t;
	end
end
function app:BuildSearchFilteredResponse(...)
	return InternalBuildSearchFilteredResponse(...);
end
function app:BuildSearchResponse(groups, field, value)
	if field == "requireSkill" then
		return InternalBuildSearchFilteredResponse(groups, function(group)
			local v = group[field];
			return v and (v == value or app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value);
		end);
	else
		return InternalBuildSearchFilteredResponse(groups, function(group)
			return group[field] == value;
		end);
	end
end
function app:BuildSearchResponseForField(groups, field)
	return InternalBuildSearchFilteredResponse(groups, function(group)
		return group[field];
	end);
end
local function OnCloseButtonPressed(self)
	self:GetParent():Hide();
end
local function OnEventDebugging(self, ...)
	print(self.Suffix, ...);
end
local function OnMouseWheelForWindow(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentIndex - delta);
end
local function OnScrollBarValueChanged(self, value)
	if self.CurrentIndex ~= value then
		self.CurrentIndex = value;
		-- app.PrintDebug("ScrollBarValueChanged", value);
		local window = self:GetParent()
		Callback(window.Refresh, window)
	end
end
local VisibilityFilter, SortGroup
local function ProcessGroup(data, object)
	if not VisibilityFilter(object) then return end
	data[#data + 1] = object;
	if object.expanded then
		local g = object.g;
		if not g then return; end
		-- Delayed sort operation for this group prior to being shown
		local sortType = object.SortType;
		if sortType then SortGroup(object, sortType); end
		for i=1,#g do
			ProcessGroup(data, g[i]);
		end
	end
end
-- TODO: instead of requiring 'trigger' parameter to indicate something was collected
-- to trigger the complete sound for a 100% window, let's have the window check a field for externally-assigned new collection
-- and clear on update
local function UpdateWindow(self, force, trigger)
	local data = self.data;
	if not data then return; end
	local visible = self:IsShown();
	force = force or self.HasPendingUpdate;
	-- app.PrintDebug(app.Modules.Color.Colorize("Update:", app.DefaultColors.ATT),self.Suffix,
	-- 	force and "FORCE" or "SOFT",
	-- 	visible and "VISIBLE" or "HIDDEN",
	-- 	trigger and "COLLECTED" or "PASSIVE",
	-- 	self.HasPendingUpdate and "PENDING" or "")
	if force or visible then
		local rowData = self.rowData
		if not rowData then
			rowData = {};
			self.rowData = rowData
		else
			wipe(rowData)
		end
		
		local didUpdate
		data.expanded = true;
		if not self.doesOwnUpdate and force then
			self:ToggleExtraFilters(true)
			-- app.PrintDebug(Colorize("TLUG", app.Colors.Time),self.Suffix)
			app.TopLevelUpdateGroup(data);
			self.HasPendingUpdate = nil;
			-- app.PrintDebugPrior("Done")
			self:ToggleExtraFilters()
			didUpdate = true
		end

		-- Should the groups in this window be expanded prior to processing the rows for display
		if self.ExpandInfo then
			-- print("ExpandInfo",self.Suffix,self.ExpandInfo.Expand,self.ExpandInfo.Force)
			ExpandGroupsRecursively(data, self.ExpandInfo.Expand, self.ExpandInfo.Force);
			self.ExpandInfo = nil;
		end

		-- cache a couple heavily referenced functions within ProcessGroup
		VisibilityFilter, SortGroup = app.VisibilityFilter, app.SortGroup
		ProcessGroup(rowData, data);
		-- app.PrintDebug("Update:RowData",#rowData)

		-- Does this user have everything?
		if data.total then
			if data.total <= data.progress then
				if #rowData < 1 then
					data.back = 1;
					rowData[#rowData + 1] = data;
				end
				if self.missingData then
					if trigger and visible and self.AllowCompleteSound then
						app.Audio:PlayCompleteSound();
					end
					self.missingData = nil;
				end
				-- only add this info row if there is actually nothing visible in the list
				-- always a header row
				-- print("any data",#self.Container,#rowData,#data)
				if #rowData < 2 and not app.ThingKeys[data.key] then
					rowData[#rowData + 1] = app.CreateRawText(L.NO_ENTRIES, {
						OnClick = app.UI.OnClick.IgnoreRightClick,
						preview = app.asset("Discord_2_128"),
						description = L.NO_ENTRIES_DESC,
					});
				end
			else
				self.missingData = true;
			end
		else
			self.missingData = nil;
		end
		
		-- app.PrintDebugPrior("Update:Done")
		app.HandleEvent("OnWindowUpdated", self, didUpdate)
		return true;
	end
	-- app.PrintDebugPrior("Update:None")
end
local FieldDefaults = {
	AddEventHandler = function(self, event, handler, keepGlobal)
		-- allows a window to keep track of any specific custom handler functions it creates
		self.Handlers = self.Handlers or {}
		-- goal: self:handler(...)
		-- event call: handler(...)
		-- TODO: eventually reconcile window-based event handling to always have a self reference
		if not keepGlobal then
			-- maybe eventually a different way to trigger an event when within scope of a Window so that it is attached directly??
			local function __handler(...)
				-- app.PrintDebug("__handler",event,...)
				handler(self, ...)
			end
			app.PrintDebug("AddEventHandler.__handler",self.Suffix,event)
			app.AddEventHandler(event, __handler)
			self.Handlers[#self.Handlers + 1] = __handler
		else
			app.PrintDebug("AddEventHandler.handler",self.Suffix,event)
			app.AddEventHandler(event, handler)
			self.Handlers[#self.Handlers + 1] = handler
		end
	end,
	RemoveEventHandlers = function(self)
		-- allows a window to remove all event handlers it created
		local handlers = self.Handlers
		if handlers then
			self.Handlers = nil
			for i=1,#handlers do
				app.RemoveEventHandler(handlers[i])
			end
		end
	end,
	RecordSettings = RecordSettingsForWindow,
	SetVisible = function(self, show)
		if show then
			self:Show();
		else
			self:Hide();
		end
	end,
	Toggle = function(self)
		self:SetVisible(not self:IsVisible());
	end,
	SetData = function(self, data)
		-- Allows a Window to set the root data object to itself and link the Window to the root data, if data exists
		if data then
			app.PrintDebug("Window:SetData",self.Suffix,data.text)
			data.window = self;
			self.data = data;
		end
	end,
	ExpandData = function(self, expanded)
		ForceExpandGroupsRecursively(self.data, expanded);
	end,
	SetMinMaxValues = function(self, rowCount, totalRowCount)
		-- Every possible row is visible
		if totalRowCount - rowCount < 1 then
			-- app.PrintDebug("Hide scrollbar")
			self.ScrollBar:SetMinMaxValues(1, 1);
			self.ScrollBar:SetStepsPerPage(0);
			self.ScrollBar:Hide();
		else
			-- self.ScrollBar:Show();
			totalRowCount = totalRowCount + 1;
			self.ScrollBar:SetMinMaxValues(1, totalRowCount - rowCount);
			self.ScrollBar:SetStepsPerPage(rowCount - 2);
		end
	end,
	ScrollTo = function(self, field, value)
		self.ScrollInfo = { field, value }
	end,
	ToggleExtraFilters = function(self, active)
		if self.Filters then
			local func
			for name,_ in pairs(self.Filters) do
				func = app.Modules.Filter.Set[name]
				if func then func(active) end
			end
		end
	end,
	GetRunner = function(self)
		-- returns a Runner specific to the 'self' window
		local Runner = self.__Runner
		if Runner then return Runner end
		Runner = app.CreateRunner(self.Suffix)
		self.__Runner = Runner
		return Runner
	end,
	OnEvent = function(self, e, ...)
		Callback(self.Update, self);
	end,
	
	-- Automatic Opening Opt-In Methods
	GetShouldAutomaticallyOpen = GetShouldAutomaticallyOpen,
	SetShouldAutomaticallyOpen = SetShouldAutomaticallyOpen,
	
	-- Rendering Functions
	HasPendingUpdate = true,
	AssignChildren = function(self)
		app.AssignChildren(self.data);
	end,
	DefaultUpdate = UpdateWindow,
	DefaultRefresh = UpdateVisibleRowData,
	DefaultRedraw = function(self)
		-- app.PrintDebug(app.Modules.Color.Colorize("Redraw:", app.DefaultColors.TooltipLore),self.Suffix,
		-- 	self.rowData and #self.rowData,
		-- 	self:IsShown() and "VISIBLE" or "HIDDEN")
		-- If there is no raw data or we aren't visible, then ignore this action.
		if not self:IsShown() or not self.rowData then return end

		-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
		local totalRowCount = #self.rowData;
		if totalRowCount > 0 then
			-- Ensure that the first row doesn't move out of position.
			local container = self.Container;
			local row = container.rows[1];
			if not row then return; end
			SetRowData(self, row, row.ref);

			-- Fill the remaining rows up to the (visible) row count.
			local containerHeight, totalHeight = container:GetHeight(), row:GetHeight();
			for i=2,totalRowCount do
				row = container.rows[i];
				if row then
					SetRowData(self, row, row.ref);
					totalHeight = totalHeight + row:GetHeight();
					if totalHeight > containerHeight then
						break;
					end
				else
					break;
				end
			end
		end
	end,
};
local ReservedFields = {
	Defaults = true,
	OnInit = true,
	OnCommand = true,
	OnLoad = true,
	OnSave = true,
	OnRebuild = true,
	OnRefresh = true,
	OnUpdate = true,
	OnShow = true,
	OnHide = true,
	ParseCommandArgsAndParams = true,
	IgnoreQuestUpdates = true,
	IgnorePetBattleEvents = true,
	GetShouldAutomaticallyOpen = true,
	SetShouldAutomaticallyOpen = true,
};
local PreCallShowSuffixes = {}
local PrecallShow = true
local function ShowPrecallShowWindows()
	PrecallShow = nil
	for k in pairs(PreCallShowSuffixes) do
		-- app.PrintDebug("Precall Show",k)
		app.Windows[k]:Show()
	end
	app.FunctionRunner.Run(app.RemoveEventHandler, ShowPrecallShowWindows)
end
app.AddEventHandler("OnUpdateWindows", ShowPrecallShowWindows)
local function BuildWindow(suffix)
	local definition = app.WindowDefinitions[suffix];
	if not definition then
		-- Deprecated, but supported in Retail for now.
		definition = {
			OnUpdate = app:CustomWindowUpdate(suffix),
		};
		app.WindowDefinitions[suffix] = definition;
	else
		app.WindowDefinitions[suffix] = nil;
	end
	
	-- Create the window instance.
	---@class ATTWindow: BackdropTemplate, ATTFrameClass
	local window = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate");
	window:SetClampedToScreen(true);
	window:SetToplevel(true);
	window:EnableMouse(true);
	if window.SetResizeBounds then
		window:SetResizeBounds(96, 32);
	else
		---@diagnostic disable-next-line: undefined-field
		window:SetMinResize(96, 32);
	end
	app.Windows[suffix] = window;
	window.HightlightDatas = {};
	window.Suffix = suffix;
	window:Hide();
	
	-- Apply Field Defaults
	for field,value in pairs(FieldDefaults) do
		window[field] = value;
	end
	
	-- Copy all non-reserved fields on the definition to the window frame.
	for field,value in pairs(definition) do
		if not ReservedFields[field] then
			window[field] = value;
		end
	end
	
	-- Load / Save, which allows windows to keep track of key pieces of information.
	local defaults = BuildDefaultsForWindow(window, definition.Defaults);
	local onLoad, onSave = definition.OnLoad, definition.OnSave;
	ApplySettingsForWindow(window, defaults);
	function window:Load(windowSettings)
		setmetatable(windowSettings, { __index = defaults });
		if onLoad then onLoad(self, windowSettings); end
		ApplySettingsForWindow(self, windowSettings);
	end
	
	-- Setup the Event Handlers
	local handlers = {
		PLAYER_LOGOUT = function()
			-- Save Settings on Logout
			local windowSettings = window:RecordSettings();
			if windowSettings and onSave then
				onSave(window, windowSettings);
			end
		end,
	};
	window:RegisterEvent("PLAYER_LOGOUT");
	if definition.Debugging then window:SetScript("OnEvent", OnEventDebugging); end
	local onEvent = window.OnEvent;
	window:HookScript("OnEvent", function(o, e, ...)
		local handler = handlers[e];
		if handler then
			handler(o, ...);
		else
			onEvent(o, e, ...);
		end
	end);

	-- Some Window functions should be triggered from ATT events
	window:AddEventHandler("OnUpdateWindows", function(...)
		window:Update(...)
	end, true)
	window:AddEventHandler("OnRefreshWindows", function(...)
		window:Refresh(...)
	end, true)
	window:AddEventHandler("OnRedrawWindows", function()
		window:Redraw()
	end, true)
	local eventHandlers = definition.EventHandlers
	if eventHandlers then
		for e,f in pairs(eventHandlers) do
			window:AddEventHandler(e,f)
		end
	end

	-- Register events to allow settings to be recorded.
	local onHide, onShow = definition.OnHide, definition.OnShow;
	window:SetScript("OnMouseDown", StartMovingOrSizing);
	window:SetScript("OnMouseUp", StopMovingOrSizing);
	window:SetScript("OnHide", function(self)
		StopMovingOrSizing(self);
		if onHide then onHide(self); end
		self:RecordSettings();
	end);
	window:SetScript("OnShow", function(self)
		if PrecallShow then
			-- app.PrintDebug("Window:OnShow:Early",self.Suffix)
			PreCallShowSuffixes[self.Suffix] = true
			return
		end
		if not self.data then
			self:Rebuild();
		else
			self:Update();
		end
		if onShow then onShow(self); end
		self:RecordSettings();
	end);
	
	-- Replace some functions to allow settings to be recorded.
	local oldSetBackdropColor = window.SetBackdropColor;
	local oldSetBackdropBorderColor = window.SetBackdropBorderColor;
	local oldStopMovingOrSizing = window.StopMovingOrSizing;
	window.SetBackdropColor = function(self, ...)
		oldSetBackdropColor(self, ...);
		self:RecordSettings();
	end
	window.SetBackdropBorderColor = function(self, ...)
		oldSetBackdropBorderColor(self, ...);
		self:RecordSettings();
	end
	window.StopMovingOrSizing = function(self, ...)
		oldStopMovingOrSizing(self, ...);
		self:RecordSettings();
	end
	
	-- Rendering Pipeline
	-- Phase 1: Rebuild, which prepares the data for row data generation (first pass filters checking)
	-- Phase 2: Update, which takes the prepared data and revalidates it.
	-- Phase 3: Refresh, which simply refreshes the rows as they are with the row data.
	-- Phase 4: Redraw, which only updates the rows that already have row data visually.
	local onRebuild = definition.OnRebuild;
	if onRebuild then
		-- NOTE: You can return true from the rebuild function to call the default on your new group data.
		if definition.Debugging then
			function window:ForceRebuild()
				print("ForceRebuild: " .. suffix);
				local lastUpdate = debugprofilestop();
				local response = onRebuild(self);
				if self.data then
					if response then self:AssignChildren(); end
					print("ForceRebuild (DATA): " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self.data.window = window;
					self:ForceUpdate(true);
				else
					print("ForceRebuild (NO DATA): " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				end
			end
			function window:Rebuild()
				print("Rebuild: " .. suffix);
				local lastUpdate = debugprofilestop();
				local response = onRebuild(self);
				if self.data then
					if response then self:AssignChildren(); end
					print("Rebuild (DATA): " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self.data.window = self;
					self:Update(true);
				else
					print("Rebuild (NO DATA): " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				end
			end
		else
			function window:ForceRebuild()
				local response = onRebuild(self);
				if self.data then
					if response then self:AssignChildren(); end
					self.data.window = self;
					self:ForceUpdate(true);
				end
			end
			function window:Rebuild()
				local response = onRebuild(self);
				if self.data then
					if response then self:AssignChildren(); end
					self.data.window = self;
					self:Update(true);
				end
			end
		end
	else
		if definition.Debugging then
			function window:ForceRebuild()
				if self.data then
					print("ForceRebuild: " .. suffix);
					local lastUpdate = debugprofilestop();
					self.data.window = self;
					self:AssignChildren();
					print("ForceRebuild: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self.data.window = self;
					self:ForceUpdate(true);
				end
			end
			function window:Rebuild()
				if self.data then
					print("Rebuild: " .. suffix);
					local lastUpdate = debugprofilestop();
					self:AssignChildren();
					print("Rebuild: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self.data.window = self;
					self:Update(true);
				end
			end
		else
			function window:ForceRebuild()
				if self.data then
					self:AssignChildren();
					self.data.window = self;
					self:ForceUpdate(true);
				end
			end
			function window:Rebuild()
				if self.data then
					self:AssignChildren();
					self.data.window = self;
					self:Update(true);
				end
			end
		end
	end
	
	local OnUpdate = definition.OnUpdate;
	if OnUpdate then
		if definition.Debugging then
			function window:ForceUpdate(force, trigger)
				print("ForceUpdate: " .. suffix, force, trigger);
				local lastUpdate = debugprofilestop();
				local result = OnUpdate(self, force, trigger) or self:DefaultUpdate(force, trigger);
				print("ForceUpdate: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					print("UpdateWindow: " .. suffix, force, trigger);
					local lastUpdate = debugprofilestop();
					local result = OnUpdate(self, force, trigger) or self:DefaultUpdate(force, trigger);
					print("UpdateWindow: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self:Refresh();
					return result;
				else
					self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
				end
			end
		else
			function window:ForceUpdate(force, trigger)
				local result = OnUpdate(self, force, trigger) or self:DefaultUpdate(force, trigger);
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					local result = OnUpdate(self, force, trigger) or self:DefaultUpdate(force, trigger);
					self:Refresh();
					return result;
				else
					self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
				end
			end
		end
	else
		if definition.Debugging then
			function window:ForceUpdate(force, trigger)
				print("ForceUpdate: " .. suffix, force, trigger);
				local lastUpdate = debugprofilestop();
				local result = self:DefaultUpdate(force, trigger);
				print("ForceUpdate: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					print("UpdateWindow: " .. suffix, force, trigger);
					local lastUpdate = debugprofilestop();
					local result = self:DefaultUpdate(force, trigger);
					print("UpdateWindow: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					self:Refresh();
					return result;
				else
					self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
				end
			end
		else
			function window:ForceUpdate(force, trigger)
				local result = self:DefaultUpdate(force, trigger);
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					local result = self:DefaultUpdate(force, trigger);
					self:Refresh();
					return result;
				else
					self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
				end
			end
		end
	end
	
	local onRefresh = definition.OnRefresh;
	if onRefresh then
		if definition.Debugging then
			function window:Refresh()
				if self:IsShown() then
					print("Refresh: " .. suffix);
					local lastUpdate = debugprofilestop();
					if onRefresh(self) then self:DefaultRefresh(); end
					print("Refresh: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					-- app.HandleEvent("OnWindowRefreshed", self, self.Suffix)
				end
			end
		else
			function window:Refresh()
				if self:IsShown() and onRefresh(self) then
					self:DefaultRefresh();
					app.HandleEvent("OnWindowRefreshed", self, self.Suffix)
				end
			end
		end
	else
		if definition.Debugging then
			function window:Refresh()
				if self:IsShown() then
					print("Refresh: " .. suffix);
					local lastUpdate = debugprofilestop();
					self:DefaultRefresh();
					print("Refresh: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
					-- app.HandleEvent("OnWindowRefreshed", self, self.Suffix)
				end
			end
		else
			function window:Refresh()
				if self:IsShown() then
					self:DefaultRefresh();
					app.HandleEvent("OnWindowRefreshed", self, self.Suffix)
				end
			end
		end
	end
	function window:Redraw()
		window:DefaultRedraw();
	end
	
	-- Delayed call starts two nested coroutines so that calls can chain, if necessary.
	-- The delay is refreshed to its full duration if multiple calls are made in the same frame.
	local delays = {};
	window.DelayedCall = function(self, method, delay, force)
		delays[method] = delay or 60;
		window:StartATTCoroutine("DelayedCall::" .. method, function()
			while delays[method] > 0 or InCombatLockdown() do
				delays[method] = delays[method] - 1;
				coroutine.yield();
			end
			window:StartATTCoroutine("DelayedCall::" .. method .. "PT2", function()
				coroutine.yield();
				window[method](window, force);
			end);
		end);
	end
	function window:DelayedRebuild()
		self:DelayedCall("Rebuild", 0);
	end
	function window:DelayedRefresh()
		self:DelayedCall("Refresh", 0);
	end
	function window:DelayedUpdate(force)
		self:DelayedCall("Update", 10, force);
	end
	
	-- The Close Button.
	local closeButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
	closeButton:SetScript("OnClick", OnCloseButtonPressed);
	closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", -2, -2);
	closeButton:SetSize(20, 20);
	window.CloseButton = closeButton;

	-- The Scroll Bar.
	---@class ATTWindowScrollBar: Slider
	local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
	scrollbar:SetPoint("TOP", closeButton, "BOTTOM", 0, -15);
	scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
	scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
	scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
	scrollbar.back:SetColorTexture(0.1,0.1,0.1,1);
	scrollbar.back:SetAllPoints(scrollbar);
	scrollbar:SetMinMaxValues(1, 1);
	scrollbar:SetValueStep(1);
	scrollbar:SetValue(1);
	scrollbar:SetObeyStepOnDrag(true);
	scrollbar:SetWidth(16);
	scrollbar.CurrentIndex = 1;
	scrollbar:EnableMouseWheel(true);
	window.ScrollBar = scrollbar;
	window:EnableMouseWheel(true);
	window:SetScript("OnMouseWheel", OnMouseWheelForWindow);

	-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
	local grip = window:CreateTexture(nil, "ARTWORK");
	grip:SetTexture(app.asset("grip"));
	grip:SetSize(16, 16);
	grip:SetTexCoord(0,1,0,1);
	grip:SetPoint("BOTTOMRIGHT", -5, 5);
	window.Grip = grip;

	-- The Row Container. This contains all of the row frames.
	---@class ATTRowContainer: Frame
	local container = CreateFrame("Frame", nil, window);
	container:SetPoint("TOPLEFT", window, "TOPLEFT", 5, -5);
	container:SetPoint("RIGHT", scrollbar, "LEFT", -1, 0);
	container:SetPoint("BOTTOM", window, "BOTTOM", 0, 5);
	window.Container = container;
	container.rows = setmetatable({}, {
		__index = function(rows, i)
			return CreateRow(container, rows, i);
		end,
	});
	container:Show();
	
	if not definition.IgnoreQuestUpdates and false then
		local delayedRefresh = function()
			window:DelayedRefresh();
		end;
		handlers.BAG_UPDATE_DELAYED = delayedRefresh;
		handlers.QUEST_WATCH_UPDATE = delayedRefresh;
		handlers.QUEST_ITEM_UPDATE = delayedRefresh;
		window:RegisterEvent("QUEST_WATCH_UPDATE");
		window:RegisterEvent("QUEST_ITEM_UPDATE");
		window:RegisterEvent("BAG_UPDATE_DELAYED");
		local delayedUpdateWithTrigger = function()
			window:Redraw();
			window:DelayedUpdate(true);
		end;
		handlers.QUEST_TURNED_IN = delayedUpdateWithTrigger;
		handlers.QUEST_ACCEPTED = delayedUpdateWithTrigger;
		handlers.QUEST_REMOVED = delayedUpdateWithTrigger;
		window:RegisterEvent("QUEST_ACCEPTED");
		window:RegisterEvent("QUEST_REMOVED");
		window:RegisterEvent("QUEST_TURNED_IN");
		local delayedUpdate = function()
			window:DelayedUpdate();
		end;
		handlers.QUEST_LOG_UPDATE = delayedUpdate;
		window:RegisterEvent("QUEST_LOG_UPDATE");
	end
	if not definition.IgnorePetBattleEvents and app.GameBuildVersion > 50000 then
		-- Pet Battles were added with MOP and we want all of our windows to hide when participating.
		local WasHiddenByPetBattle;
		handlers.PET_BATTLE_OPENING_START = function()
			if window:IsVisible() then
				WasHiddenByPetBattle = true;
				window:Hide();
			else
				WasHiddenByPetBattle = nil;
			end
		end
		handlers.PET_BATTLE_CLOSE = function()
			if WasHiddenByPetBattle then
				WasHiddenByPetBattle = nil;
				window:Show();
			end
		end
		window:RegisterEvent("PET_BATTLE_OPENING_START");
		window:RegisterEvent("PET_BATTLE_CLOSE");
	end

	-- Add command processing
	local onCommand = definition.OnCommand;
	if onCommand then
		function window:ProcessCommand(args, params)
			if not onCommand(self, args, params) then
				self:Toggle();
			end
		end
	else
		window.ProcessCommand = window.Toggle;
	end
	if definition.OnInit then
		definition.OnInit(window, handlers);
		-- @Crieve: I don't know why OnInit should add data... isn't that for Rebuild?
		-- if not (window.data and window.data.window) and not window.IsTopLevel then
		-- 	print(window.Suffix, "OI! You forgot to use self:SetData(data) in the OnInit!");
		-- end
	end
	if definition.Commands then
		if not window.SettingsName then
			window.SettingsName = window.Suffix
		end
		app.AddSlashCommands(definition.Commands, function(cmd)
			if not cmd or cmd:len() == 0 then
				window:Toggle();
			else
				window:ProcessCommand(ParseCommandArgsAndParams(cmd));
			end
		end)
		local primaryCommand = "/" .. definition.Commands[1];
		app.ChatCommands.Help[primaryCommand:lower()] = {
			definition.UsageText or ("Usage: " .. primaryCommand),
			definition.HelpText or ("Toggles the " .. window.SettingsName .. " Window.")
		};
	end
	
	-- If window settings were already loaded, then load this window's definition now
	-- Windows created after startup would otherwise fail to load their definition.
	if AllWindowSettings then
		LoadSettingsForWindow(window);
	end
	
	-- Inform event registers that a new window has been created.
	app.HandleEvent("OnWindowCreated", window, suffix);
	return window;
end
function app:CreateWindow(suffix, definition)
	app.WindowDefinitions[suffix] = definition;
	if definition then
		if definition.Preload then
			-- This window still needs to be loaded right away
			return app:GetWindow(suffix);
		elseif definition.Commands then
			app.AddSlashCommands(definition.Commands, function(cmd)
				if not cmd or cmd:len() == 0 then
					app:GetWindow(suffix):Toggle();
				else
					app:GetWindow(suffix):ProcessCommand(ParseCommandArgsAndParams(cmd));
				end
			end);
			local primaryCommand = "/" .. definition.Commands[1];
			app.ChatCommands.Help[primaryCommand:lower()] = {
				definition.UsageText or ("Usage: " .. primaryCommand),
				definition.HelpText or ("Toggles the " .. (definition.SettingsName or suffix) .. " Window.")
			};
		end
	end
end
function app:GetWindow(suffix)
	return app.Windows[suffix] or BuildWindow(suffix);
end

-- Dynamic Popouts for Quest Chains and other Groups
local OnInitForPopout;
function app:CreateMiniListForGroup(group)
	-- Is this an achievement criteria or lacking some achievement information?
	local achievementID = group.achievementID;
	if achievementID and group.criteriaID then
		local searchResults = app.SearchForField("achievementID", achievementID);
		if #searchResults > 0 then
			local bestResult;
			for i=1,#searchResults,1 do
				local searchResult = searchResults[i];
				if searchResult.achievementID == achievementID and not searchResult.criteriaID then
					if not bestResult or searchResult.g then
						bestResult = searchResult;
					end
				end
			end
			if bestResult then group = bestResult; end
		end
	end

	-- Is this a quest object or objective?
	local questID, parent = group.questID, group.parent;
	if questID and parent and parent.questID == questID then
		group = parent;
	end

	-- Pop Out Functionality! :O
	local popout = app:CreateWindow(app.GenerateSourceHash(group), {
		AllowCompleteSound = true,
		--Debugging = true,
		Preload = true,
		Defaults = {
			["visible"] = true,
		},
		OnInit = function(self)
			OnInitForPopout(self, (group.OnPopout and group:OnPopout()) or group)
			self:AssignChildren();
		
			-- always expand all groups on initial creation if enabled
			if app.Settings:GetTooltipSetting("Expand:MiniList") then
				self:ExpandData(true);
			end
			self:Update(true);
		end,
		OnShow = ReclaimSettingsForWindow,
		OnHide = ClearSettingsForWindow,
		OnLoad = function(self, settings)
			self.dynamic = true;
			settings.dynamic = true;
			settings.sourcePath = self.Suffix;

			-- This might be something we can rebuild
			local key = group.key;
			if key then
				settings.key = key;
				settings.id = group[key];
			end
		end,
		OnSave = function(self, settings)
			if not settings.visible then
				ClearSettingsForWindow(self);
			end
		end,
	});
	popout:SetVisible(true);
end
function app:CreateMiniListFromSource(key, id, sourcePath)
	-- If we provided the original source path, then we can find the exact element to popout.
	if sourcePath then
		local hashes = { (">"):split(sourcePath) };
		local ref = app.SearchForSourcePath(app:GetDataCache().g, hashes, 2, #hashes);
		if ref then
			app:CreateMiniListForGroup(ref);
			return;
		end
	end

	-- Without this it can't be recovered. :(
	if key and id then
		if sourcePath then
			-- Try to find an exact match.
			local searchResults = app.SearchForField(key, id);
			if #searchResults > 0 then
				for i,ref in ipairs(searchResults) do
					if app.GenerateSourceHash(ref) == sourcePath then
						app:CreateMiniListForGroup(ref);
						return;
					end
				end
			end
		end

		-- Search for the Link in the database
		local cmd = key .. ":" .. id;
		local ref = app.GetCachedSearchResults(app.SearchForLink, cmd);
		if ref then
			app:CreateMiniListForGroup(ref);
			return;
		end

		-- Search for the field/value pair everywhere in the DB.
		local t = {};
		app:BuildFlatSearchResponse(app:GetDataCache().g, key, id, t);
		if t and #t > 0 then
			local ref = #t == 1 and t[1] or app.CloneClassInstance({ hash = key .. id, key = key, [key] = id, g = t });
			if ref then
				app:CreateMiniListForGroup(ref);
				return;
			end
		end
	end
end
app.CreatePopoutForSearch = function(search)
	-- Performs a search for ATT content, then opens the single result in a new popout window
	app.SetSkipLevel(2)
	local group = app.GetCachedSearchResults(app.SearchForLink, search, nil, {SkipFill=true,IgnoreCache=true})
	app.SetSkipLevel(0)
	-- make sure it's 'something' returned from the search before throwing it into a window
	if group then
		if group.criteriaID and not group.achievementID then
			app.print("Unsourced Criteria",group.criteriaID,"Use /att criteriaID:achievementID to view unsourced Criteria info")
			return true
		end
		if group.link or group.name or group.text or group.key then
			app:CreateMiniListForGroup(group)
			return true
		end
	end
end

local DelayedCallback = app.CallbackHandlers.DelayedCallback
OnInitForPopout = function(self, group)
	-- being a search result means it has already received certain processing
	if not group.isBaseSearchResult then
		local skipFull = app.GetRelativeValue(group, "skipFull")
		-- clone/search initially so as to not let popout operations modify the source data
		group = app.CloneClassInstance(group);
		self:SetData(group);
		group.visible = true;
		group.skipFull = skipFull

		-- make a search for this group if it is an item/currency/achievement and not already a container for things
		local key = group.key;
		if not group.g and not group.criteriaID and app.ThingKeys[key] then
			local cmd = group.link or key .. ":" .. group[key];
			app.SetSkipLevel(2);
			local groupSearch = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {SkipFill=true,IgnoreCache=true});
			app.SetSkipLevel(0);
			app.MergeProperties(group, groupSearch, true)
			group.g = groupSearch.g
		end
	else
		self:SetData(group);
	end
	group.back = 1;
	group.indent = 0;

	app.HandleEvent("OnNewPopoutGroup", self.data)
	-- Sort any content added to the Popout data by the Global sort (not for popped out difficulty groups)
	if not (self.data.difficultyID or self.data.instanceID) then
		app.Sort(self.data.g, app.SortDefaults.Global)
	end
	
	-- Adjust some update/refresh logic if this is a Quest Chain window
	if self.isQuestChain then
		local oldUpdate = self.Update;
		self.Update = function(self, ...)
			-- app.PrintDebug("Update.isQuestChain", self.Suffix, ...)
			local oldQuestAccountWide = app.Settings.AccountWide.Quests;
			local oldQuestCollection = app.Settings.Collectibles.Quests;
			app.Settings.Collectibles.Quests = true;
			app.Settings.AccountWide.Quests = false;
			local result = oldUpdate(self, ...);
			app.Settings.Collectibles.Quests = oldQuestCollection;
			app.Settings.AccountWide.Quests = oldQuestAccountWide;
			return result;
		end;
		local oldRefresh = self.Refresh;
		self.Refresh = function(self, ...)
			-- app.PrintDebug("Refresh.isQuestChain", self.Suffix, ...)
			local oldQuestAccountWide = app.Settings.AccountWide.Quests;
			local oldQuestCollection = app.Settings.Collectibles.Quests;
			app.Settings.Collectibles.Quests = true;
			app.Settings.AccountWide.Quests = false;
			local result = oldRefresh(self, ...);
			app.Settings.Collectibles.Quests = oldQuestCollection;
			app.Settings.AccountWide.Quests = oldQuestAccountWide;
			return result;
		end;
		-- Populate the Quest Rewards
		-- think this causes quest popouts to somehow break...
		-- app.TryPopulateQuestRewards(group)
	else
		-- Non-Quest Chains should filter for Timerunning
		local oldDefaultUpdate = self.DefaultUpdate;
		self.DefaultUpdate = function(self, ...)
			-- Add Timerunning filter to the popout
			self.Filters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
			oldDefaultUpdate(self, ...);
		end
	end
end

-- Dynamic Search Function Templates
-- TODO: Move this to a Search Module
local table_concat
	= table.concat
local api = {};
FieldDefaults.SearchAPI = api;

-- Search Filter Function Templates
-- This table stores uniquely keyed filter functions and allows users
-- to reuse filter functions without needing to create additional ones
-- for the same combination of class types. This will ensure the speed
-- of code generation and prevent explosive memory use by similar logic.
local SearchFiltersByClassTypes = {};
local BaseSearchFilterMetatable = {
	__index = function(t, __type)
		if __type then t[__type] = false; end
		return false;
	end,
};
local function BuildSearchFilterForClassTypes(uniqueKey, classTypes)
	local searchFilter = SearchFiltersByClassTypes[classTypesKey];
	if not searchFilter then
		local filter = {};
		for i,__type in pairs(classTypes) do filter[__type] = true; end
		local FilterByClassType = setmetatable(filter, BaseSearchFilterMetatable);
		searchFilter = function(t) return FilterByClassType[t.__type]; end
		SearchFiltersByClassTypes[uniqueKey] = searchFilter;
	end
	return searchFilter;
end
api.BuildSearchFilterForClassTypes = BuildSearchFilterForClassTypes;

-- Categorized Search Function Templates
-- This table stores uniquely keyed search functions that looks first for
-- specified class types (__type keyed) and additionally filters results
-- by a unique key on the instances of those results to build an OnUpdate function.
-- This specific function builds a categorized hierarchy lookup for a dynamic category.
local CategorizedSearchFunctionsByClassTypes = {};
local CategorizedRelativeFields = { "u", "e", "awp", "rwp", "r", "c", "coords", "maps" };
local CategoryByRelativeFields = {
	-- Look for specific tags first, a PvP item will display as "vendor" or "achievement" instead, which isn't correct.
	{ "pvp", function(o) return app.HeaderConstants.PVP; end },
	
	-- Root Categories
	{ "RootCategory",
		function(o, value, categories)
			local rootCategory = app.GetRelativeGroup(o, "RootCategory", true);
			local hash = rootCategory.headerID or rootCategory.hash;
			local category = categories[hash];
			if not category then
				category = app.CloneClassInstance(rootCategory, true);
				category.g = {};
				categories[hash] = category;
			end
			return hash;
		end
	},
	
	-- Keys
	{ "achievementID", function(o) return app.HeaderConstants.ACHIEVEMENTS; end },
	{ "instanceID", function(o) return "raid"; end },	-- Determine if we want to split by raid and/or dungeon
	{ "headerID", 
		function(o, value, categories)
			if value == app.HeaderConstants.VENDORS or value == app.HeaderConstants.QUESTS or value == app.HeaderConstants.FACTIONS then
				return value;
			end
			if value == app.HeaderConstants.COMMON_BOSS_DROPS or value == app.HeaderConstants.RARES then
				return app.HeaderConstants.DROPS;
			end
			local group = app.GetRelativeGroup(o, "headerID", true);
			if group and group.type then
				local parentGroup = group.parent;
				if parentGroup and parentGroup.headerID and not parentGroup.type then
					return parentGroup.headerID;
				end
				if group.type == "fa" then
					return app.HeaderConstants.FACTIONS;
				elseif group.type == "a" then
					return app.HeaderConstants.ACHIEVEMENTS;
				elseif app.GetRelativeField(o, "headerID", app.HeaderConstants.QUESTS) then
					return app.HeaderConstants.QUESTS;
				--else
				--	print(group.type);
				end
				local hash = group.hash;
				local category = categories[hash];
				if not category then
					local clone = {};
					for key,value in pairs(group) do
						clone[key] = value;
					end
					category = app.CreateHeader(group[group.key], clone);
					category.g = {};
					categories[hash] = category;
				end
				return hash;
			end
			return value;
		end
	},
	{ "questID", function(o) return app.HeaderConstants.QUESTS; end },
};
local function AssignCategoryForResult(self, categories, result)
	-- Cache the original object for the result in the hierarchy.
	local o = result.__o;
	--[[
	for _,field in ipairs(CategorizedRelativeFields) do
		if not rawget(result, field) then
			result[field] = app.GetRelativeValue(o, field);
		end
	end
	if not o.sourceQuests then
		local questID = app.GetRelativeValue(o, "questID");
		if questID then
			if not result.sourceQuests then
				result.sourceQuests = {};
			end
			if not app.contains(result.sourceQuests, questID) then
				tinsert(result.sourceQuests, questID);
			end
		else
			local sourceQuests = app.GetRelativeValue(o, "sourceQuests");
			if sourceQuests then
				if not result.sourceQuests then
					result.sourceQuests = {};
					for k,questID in ipairs(sourceQuests) do
						tinsert(result.sourceQuests, questID);
					end
				else
					for k,questID in ipairs(sourceQuests) do
						if not app.contains(result.sourceQuests, questID) then
							tinsert(result.sourceQuests, questID);
						end
					end
				end
			end
		end
	end
	]]--
	
	
	-- Find the first category type that fits our search result
	local categoryType;
	for i,dataSet in ipairs(CategoryByRelativeFields) do
		local value = app.GetRelativeValue(o, dataSet[1]);
		if value then
			value = dataSet[2](o, value, categories, self);
			if value then
				categoryType = value;
				break;
			end
		end
	end
	if not categoryType then
		print("FAILED TO FIND CATEGORY TYPE", o.text);
		categoryType = app.HeaderConstants.DROPS;
	end

	-- Determine the type of category to put the thing into.
	local category = categories[categoryType];
	if not category then
		if categoryType == "raid" then
            category = app.CreateRawText(GROUP_FINDER, {
                icon = app.asset("Category_D&R"),
            });
		elseif type(categoryType) == "number" then
			category = app.CreateCustomHeader(categoryType);
		else
			print("Unhandled Category Type", categoryType);
		end
		if not categories[categoryType] then
			categories[categoryType] = category;
			category.g = {};
		end
	end
	tinsert((category or self).g, result);
	return result;
end
local function BuildCategorizedSearchFunctionForClassTypes(key, fallbackText, ...)
	local classTypes = {...};
	local classTypesKey = table_concat(classTypes, "");
	local uniqueKey = key .. classTypesKey;
	local OnUpdate = CategorizedSearchFunctionsByClassTypes[uniqueKey];
	if not OnUpdate then
		local SearchForClassTypes = BuildSearchFilterForClassTypes(classTypesKey, classTypes);
		OnUpdate = function(data)
			local g = data.g;
			if #g < 1 then
				local results = {};
				app:BuildFlatSearchFilteredResponse(app:GetDataCache().g, SearchForClassTypes, results);
				local headers, resultsByKey = {}, {};
				for i,result in pairs(results) do
					local id = result[key];
					if id then
						if not resultsByKey[id] then
							resultsByKey[id] = { result };
						else tinsert(resultsByKey[id], result); end
					end
				end
				
				-- If this object previously had categories, clear them out for reuse.
				local categories = data.categories;
				if categories then
					for key,category in pairs(categories) do
						wipe(category.g);
					end
				else
					categories = {};
					data.categories = categories;
				end
				
				-- For each of the results, find the most accessible one and then assign it to a category.
				for i,searchResults in pairs(resultsByKey) do
					app.Sort(searchResults, app.SortDefaults.Accessibility);
					local __o = searchResults[1];	-- This will be marked as the original source object for future popouts
					local o = app.CloneClassInstance(__o);
					o.sourceParent = __o.parent;
					o.__o = __o;
					AssignCategoryForResult(data, categories, o);
				end
				for key,category in pairs(categories) do
					tinsert(data.g, category);
					category.SortType = "name";
					category.parent = data;
				end
				data.SortType = "name";
				if #g < 1 then
					tinsert(g, app.CreateRawText(fallbackText or UNKNOWN, {
						OnUpdate = app.AlwaysShowUpdate,
						IgnorePopouts = true
					}));
				end
				app.AssignChildren(data);
			end
		end
		CategorizedSearchFunctionsByClassTypes[uniqueKey] = OnUpdate;
	end
	return OnUpdate;
end
api.BuildCategorizedSearchFunctionForClassTypes = BuildCategorizedSearchFunctionForClassTypes;

-- Flat Search Function Templates
-- This specific function builds a flat hierarchy lookup for a dynamic category.
local FlatSearchFunctionsByClassTypes = {};
local function BuildFlatSearchFunctionForClassTypes(key, fallbackText, ...)
	local classTypes = {...};
	local classTypesKey = table_concat(classTypes, "");
	local uniqueKey = key .. classTypesKey;
	local OnUpdate = FlatSearchFunctionsByClassTypes[uniqueKey];
	if not OnUpdate then
		local SearchForClassTypes = BuildSearchFilterForClassTypes(classTypesKey, classTypes);
		OnUpdate = function(data)
			local g = data.g;
			if #g < 1 then
				local results = {};
				app:BuildFlatSearchFilteredResponse(app:GetDataCache().g, SearchForClassTypes, results);
				local headers, resultsByKey = {}, {};
				for i,result in pairs(results) do
					local id = result[key];
					if id then
						if not resultsByKey[id] then
							resultsByKey[id] = { result };
						else tinsert(resultsByKey[id], result); end
					end
				end
				for i,searchResults in pairs(resultsByKey) do
					app.Sort(searchResults, app.SortDefaults.Accessibility);
					local __o = searchResults[1];	-- This will be marked as the original source object for future popouts
					local o = app.CloneClassInstance(__o);
					o.sourceParent = __o.parent;
					o.__o = __o;
					tinsert(g, o);
				end
				if #g < 1 then
					tinsert(g, app.CreateRawText(fallbackText or UNKNOWN, {
						OnUpdate = app.AlwaysShowUpdate,
						IgnorePopouts = true
					}));
				end
				app.AssignChildren(data);
				data.SortType = "name";
			end
		end
		FlatSearchFunctionsByClassTypes[uniqueKey] = OnUpdate;
	end
	return OnUpdate;
end
api.BuildFlatSearchFunctionForClassTypes = BuildFlatSearchFunctionForClassTypes;

-- Helper Function for Generating Both Search Function Templates
api.BuildCategorizedAndFlatSearchFunctionsForClassTypes = function(self, key, fallbackText, ...)
	self.OnUpdateCategorized = BuildCategorizedSearchFunctionForClassTypes(key, fallbackText, ...);
	self.OnUpdateFlat = BuildFlatSearchFunctionForClassTypes(key, fallbackText, ...);
end

-- Dynamic Categories (Delayed)
local DynamicCategoryHeaders = {
	{ id = "achievementID", name = ACHIEVEMENTS, icon = app.asset("Category_Achievements") },
	{ id = "sourceID", name = "Appearances", icon = 135276 },
	{ id = "speciesID", name = AUCTION_CATEGORY_BATTLE_PETS, icon = app.asset("Category_PetJournal") },
	{ id = "characterUnlock", name = CHARACTER .. " " .. UNLOCK .. "s", icon = app.asset("Category_ItemSets") },
	{ id = "currencyID", name = CURRENCY, icon = app.asset("Interface_Vendor") },
	{ id = "explorationID", name = "Exploration", icon = app.asset("Category_Exploration") },
	{ id = "factionID", name = L.FACTIONS, icon = app.asset("Category_Factions") },
	{ id = "flightpathID", name = L.FLIGHT_PATHS, icon = app.asset("Category_FlightPaths") },
	{ id = "mountID", name = MOUNTS, icon = app.asset("Category_Mounts") },
	-- TODO: Add professions here using the byValue probably
	{ id = "questID", name = TRACKER_HEADER_QUESTS, icon = app.asset("Interface_Quest_header") },
	{ id = "titleID", name = PAPERDOLL_SIDEBAR_TITLES, icon = app.asset("Category_Titles") },
	{ id = "toyID", name = TOY_BOX, icon = app.asset("Category_ToyBox") },
};
app.AddDynamicCategoryHeader = function(header)
	tinsert(DynamicCategoryHeaders, header);
end
local TypeGroupOverridesForDynamicCategoryHeader = {
	visible = true
};
local function OnUpdateForDynamicCategoryHeader(t)
	-- nothing to show so don't be visible
	if not t.g or #t.g == 0 then
		return
	end
	local o
	for i=#t.g,1,-1 do
		o = t.g[i]
		if o.__empty then
			tremove(t.g, i)
		end
	end
	if #t.g == 0 then
		return
	end
	t.visible = true
	return true
end
local function CreateTypeGroupsForHeader(header, searchResults)
	-- TODO: professions would be more complex since it's so many sub-groups to organize
	-- maybe just simpler to look for the 'requireSkill' field and put all those results into one 'Professions' group?
	-- app.PrintDebug("Creating type group header",header.name, header.id, searchResults and #searchResults)
	local results = {};
	app:BuildFlatSearchResponseForField(searchResults, header.id, results);
	--app:BuildTargettedSearchResponse(searchResults, header.id, nil, {g=true})
	-- app.PrintDebug("Found",#data,"search groups for",header.id)
	if #results == 0 then
		header.__empty = true
	else
		local g = {};
		app.MergeObjects(g, results);
		header.g = g;
		app.AssignChildren(header)
	end
	app.DirectGroupUpdate(header)
	return header
end
api.BuildDynamicCategorySummaryForSearchResults = function(searchResults)
	local g = {};
	local dcsRoot = app.CreateRawText(L.CLICK_TO_CREATE_FORMAT:format(L.DYNAMIC_CATEGORY_LABEL), {
		icon = app.asset("Interface_CreateDynamic"),
		OnUpdate = OnUpdateForDynamicCategoryHeader,
		SortType = "text",
		g = g
	});
	
	-- Loop through the dynamic headers and insert them into the "g" field of dynamic category
	for _, template in ipairs(DynamicCategoryHeaders) do
		local header = app.CloneClassInstance(app.CreateRawText(template.name, template));
		header.SortType = "name";
		header.parent = dcsRoot
		g[#g + 1] = app.DelayLoadedObject(CreateTypeGroupsForHeader, "text", 
			TypeGroupOverridesForDynamicCategoryHeader, header, searchResults)
	end
	return dcsRoot;
end