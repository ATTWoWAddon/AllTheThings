-- App locals
local appName, app = ...;
local L = app.L

local wipe,ipairs,pairs,math,pcall,type,rawget,tostring,select,tremove,CreateFrame,GetCursorPosition,SetPortraitTexture,math_floor
	= wipe,ipairs,pairs,math,pcall,type,rawget,tostring,select,tremove,CreateFrame,GetCursorPosition,SetPortraitTexture,math.floor

---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip
local RETRIEVING_DATA = RETRIEVING_DATA
local SetPortraitTextureFromDisplayID = SetPortraitTextureFromCreatureDisplayID

local GetTradeSkillTexture = app.WOWAPI.GetTradeSkillTexture
local GetItemInfo = app.WOWAPI.GetItemInfo
local GetFactionName = app.WOWAPI.GetFactionName
local Callback = app.CallbackHandlers.Callback
local AfterCombatOrDelayedCallback = app.CallbackHandlers.AfterCombatOrDelayedCallback
local DelayedCallback = app.CallbackHandlers.DelayedCallback
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving
local Colorize = app.Modules.Color.Colorize
local GetProgressColorText = app.Modules.Color.GetProgressColorText
local GetNumberWithZeros = app.Modules.Color.GetNumberWithZeros
local GetProgressColor = app.Modules.Color.GetProgressColor
local AssignChildren = app.AssignChildren
local GetDisplayID = app.GetDisplayID
local Push = app.Push
local GetSpecsString = app.GetSpecsString
local GetClassesString = app.GetClassesString
local TryColorizeName = app.TryColorizeName
local GetRelativeValue = app.GetRelativeValue
local SearchForField, SearchForObject = app.SearchForField, app.SearchForObject
local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
local GetUnobtainableTexture = app.GetUnobtainableTexture

app.Windows = {};

-- allows resetting a given ATT window
local function ResetWindow(suffix)
	app.Windows[suffix] = nil;
	if suffix ~= "awp" then	-- don't spam for this window for now
		app.print("Reset Window",suffix);
	end
end
local function SetVisible(self, show, forceUpdate)
	-- app.PrintDebug("SetVisible",self.Suffix,show,forceUpdate)
	if show then
		self:Show();
		-- apply window position from profile
		app.Settings.SetWindowFromProfile(self.Suffix);
		self:Update(forceUpdate);
	else
		self:Hide();
	end
end
local function Toggle(self, forceUpdate)
	return SetVisible(self, not self:IsVisible(), forceUpdate);
end

local SkipAutoExpands = {
	-- Specific HeaderID values should not expand
	headerID = {
		[app.HeaderConstants.ZONE_DROPS] = true,
		[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
		[app.HeaderConstants.HOLIDAYS] = true
	},
	-- Item/Difficulty as Headers should not expand
	itemID = true,
	difficultyID = true,
}
local function SkipAutoExpand(group)
	local key = group.key;
	local skipKey = SkipAutoExpands[key];
	if not skipKey then return; end
	return skipKey == true or skipKey[group[key]];
end
local function ExpandGroupsRecursively(group, expanded, manual)
	-- expand if there is any sub-group
	if group.g then
		-- app.PrintDebug("EGR",group.hash,expanded,manual);
		-- if manually expanding
		if (manual or (
				-- not a skipped group for auto-expansion
				not SkipAutoExpand(group) and
				-- incomplete things actually exist below itself
				((group.total or 0) > (group.progress or 0)) and
				-- account/debug mode is active or it is not a 'saved' thing for this character
				(app.MODE_DEBUG_OR_ACCOUNT or not group.saved))
			) then
			-- app.PrintDebug("EGR:expand");
			group.expanded = expanded;
			for _,subgroup in ipairs(group.g) do
				ExpandGroupsRecursively(subgroup, expanded, manual);
			end
		end
	end
end
app.ExpandGroupsRecursively = ExpandGroupsRecursively
local VisibilityFilter, SortGroup
local function ProcessGroup(data, object)
	if not VisibilityFilter(object) then return end
	data[#data + 1] = object
	local g = object.g
	if g and object.expanded then
		-- Delayed sort operation for this group prior to being shown
		local sortType = object.SortType;
		if sortType then SortGroup(object, sortType); end
		for _,group in ipairs(g) do
			ProcessGroup(data, group);
		end
	end
end
local function UpdateWindow(self, force, got)
	local data = self.data;
	-- TODO: remove IsReady check when Windows have OnInit capability
	if not data or not app.IsReady then return end
	local visible = self:IsVisible();
	-- either by Setting or by special windows apply ad-hoc logic
	local adhoc = self.AdHoc or app.Settings:GetTooltipSetting("Updates:AdHoc")
	force = force or self.HasPendingUpdate;
	-- hidden adhoc window is set for pending update instead of forced
	if adhoc and force and not visible then
		self.HasPendingUpdate = true;
		force = nil;
	end
	-- app.PrintDebug(Colorize("Update:", app.Colors.ATT),self.Suffix,
	-- 	force and "FORCE" or "SOFT",
	-- 	visible and "VISIBLE" or "HIDDEN",
	-- 	got and "COLLECTED" or "PASSIVE",
	-- 	self.HasPendingUpdate and "PENDING" or "")
	if force or visible then
		-- clear existing row data for the update
		local rowData = self.rowData
		if not rowData then rowData = {} self.rowData = rowData end
		wipe(rowData)

		data.expanded = true;
		if not self.doesOwnUpdate and force then
			self:ToggleExtraFilters(true)
			app.PrintDebug(Colorize("TLUG", app.Colors.Time),self.Suffix)
			app.TopLevelUpdateGroup(data);
			self.HasPendingUpdate = nil;
			app.PrintDebugPrior("Done")
			self:ToggleExtraFilters()
		end

		-- Should the groups in this window be expanded prior to processing the rows for display
		if self.ExpandInfo then
			-- print("ExpandInfo",self.Suffix,self.ExpandInfo.Expand,self.ExpandInfo.Manual)
			ExpandGroupsRecursively(data, self.ExpandInfo.Expand, self.ExpandInfo.Manual);
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
					rowData[#rowData + 1] = data
				end
				if self.missingData then
					if got and visible then app.Audio:PlayCompleteSound(); end
					self.missingData = nil;
				end
				-- only add this info row if there is actually nothing visible in the list
				-- always a header row
				-- print("any data",#self.Container,#rowData,#data)
				if #rowData < 2 and not app.ThingKeys[data.key] then
					rowData[#rowData + 1] = app.CreateRawText(L.NO_ENTRIES, {
						description = L.NO_ENTRIES_DESC,
						collectible = 1,
						collected = 1,
						back = 0.7,
						OnClick = app.UI.OnClick.IgnoreRightClick
					})
				end
			else
				self.missingData = true;
			end
		else
			self.missingData = nil;
		end

		self:Refresh();
		-- app.PrintDebugPrior("Update:Done")
		return true;
	else
		local expireTime = self.ExpireTime;
		-- print("check ExpireTime",self.Suffix,expireTime)
		if expireTime and expireTime > 0 and expireTime < time() then
			-- app.PrintDebug(self.Suffix,"window is expired, removing from window cache")
			self:RemoveEventHandlers()
			app.Windows[self.Suffix] = nil;
		end
	end
	-- app.PrintDebugPrior("Update:None")
end
local function ClearRowData(self)
	self.__ref = self.ref
	self.ref = nil;
	self.Background:Hide();
	self.Texture:Hide();
	self.Texture.Background:Hide();
	self.Texture.Border:Hide();
	self.Indicator:Hide();
	self.Summary:Hide();
	self.Label:Hide();
end
local function CalculateRowIndent(data)
	if data.indent then return data.indent; end
	if data.parent then
		return CalculateRowIndent(data.parent) + 1;
	else
		return 0;
	end
end
local function CalculateRowBack(data)
	if data.back then return data.back; end
	if data.parent then
		return CalculateRowBack(data.parent) * 0.5;
	else
		return 0;
	end
end
local PortaitSettingsCache = setmetatable({}, {__index = app.ReturnTrue })
do
	local function CachePortraitSettings()
		PortaitSettingsCache.ALL = app.Settings:GetTooltipSetting("IconPortraits")
		PortaitSettingsCache.questID = app.Settings:GetTooltipSetting("IconPortraitsForQuests")
	end
	app.AddEventHandler("OnStartup", CachePortraitSettings)
	app.AddEventHandler("OnRenderDirty", CachePortraitSettings)
end
local function SetPortraitIcon(self, data)
	if PortaitSettingsCache.ALL and PortaitSettingsCache[data.key] then
		local displayID = GetDisplayID(data);
		if displayID then
			SetPortraitTextureFromDisplayID(self, displayID);
			self:SetTexCoord(0, 1, 0, 1);
			return true;
		elseif data.unit and not data.icon then
			SetPortraitTexture(self, data.unit);
			self:SetTexCoord(0, 1, 0, 1);
			return true;
		end
	end

	-- Fallback to a traditional icon.
	if data.atlas then
		self:SetAtlas(data.atlas);
		self:SetTexCoord(0, 1, 0, 1);
		if data["atlas-background"] then
			self.Background:SetAtlas(data["atlas-background"]);
			self.Background:SetWidth(self:GetHeight());
			self.Background:Show();
		end
		if data["atlas-border"] then
			self.Border:SetAtlas(data["atlas-border"]);
			self.Border:SetWidth(self:GetHeight());
			self.Border:Show();
			if data["atlas-color"] then
				local swatches = data["atlas-color"];
				self.Border:SetVertexColor(swatches[1], swatches[2], swatches[3], swatches[4] or 1.0);
			else
				self.Border:SetVertexColor(1, 1, 1, 1.0);
			end
		end
		return true;
	elseif data.icon then
		self:SetTexture(data.icon);
		local texcoord = data.texcoord;
		if texcoord then
			self:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
		else
			self:SetTexCoord(0, 1, 0, 1);
		end
		return true;
	end
	-- anything without an icon ends up with weird spacing in lists
	self:SetTexture(QUESTION_MARK_ICON);
	return true
end
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
local function SetIndicatorIcon(self, data)
	local texture = app.GetIndicatorIcon(data);
	if texture then
		self:SetTexture(texture);
		return true;
	end
end
local function GetReagentIcon(data, iconOnly)
	if data.filledReagent then
		return L[iconOnly and "REAGENT_ICON" or "REAGENT_TEXT"];
	end
end
local function GetUpgradeIconForRow(data, iconOnly)
	-- upgrade only for filled groups, or if itself is an upgrade
	if data.filledUpgrade or data.isUpgrade or (data.progress == data.total and ((data.upgradeTotal or 0) > 0)) then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetUpgradeIconForTooltip(data, iconOnly)
	-- upgrade only if itself has an upgrade
	if data.filledUpgrade or data.collectibleAsUpgrade then
		return L[iconOnly and "UPGRADE_ICON" or "UPGRADE_TEXT"];
	end
end
local function GetCostIconForRow(data, iconOnly)
	-- cost only for filled groups, or if itself is a cost
	if data.filledCost or data.isCost or (data.progress == data.total and ((data.costTotal or 0) > 0)) then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
	end
end
local function GetCostIconForTooltip(data, iconOnly)
	-- cost only if itself is a cost
	if data.filledCost or data.collectibleAsCost then
		return L[iconOnly and "COST_ICON" or "COST_TEXT"];
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
local function GetProgressTextForRow(data)
	-- build the row text from left to right with possible info
	local text = {}
	-- Reagent (show reagent icon)
	local icon = GetReagentIcon(data, true);
	if icon then
		text[#text + 1] = icon
	end
	-- Cost (show cost icon)
	icon = GetCostIconForRow(data, true);
	if icon then
		text[#text + 1] = icon
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForRow(data, true);
	if icon then
		text[#text + 1] = icon
	end
	-- Progress Achievement
	local statistic = data.statistic
	if statistic then
		text[#text + 1] = "["..statistic.."]"
	end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, true)
	if stateIcon then
		text[#text + 1] = stateIcon
	end
	-- Container
	local total = data.total;
	local isContainer = total and (total > 1 or (total > 0 and not data.collectible));
	if isContainer then
		local textContainer = GetProgressColorText(data.progress or 0, total)
		text[#text + 1] = textContainer
	end
	-- Non-collectible/total Container (only contains visible, non-collectibles...)
	local g = data.g;
	if not stateIcon and not isContainer and g and #g > 0 then
		local headerText;
		if data.expanded then
			headerText = "---";
		else
			headerText = "+++";
		end
		text[#text + 1] = headerText
	end

	-- Trackable (Only if no other text available)
	if #text == 0 then
		stateIcon = GetTrackableIcon(data, true)
		if stateIcon then
			text[#text + 1] = stateIcon
		end
	end

	return app.TableConcat(text, nil, "", " ");
end
app.GetProgressTextForRow = GetProgressTextForRow;

local function GetProgressTextForTooltip(data)
	-- build the row text from left to right with possible info
	local text = {}
	local iconOnly = app.Settings:GetTooltipSetting("ShowIconOnly");
	-- Reagent (show reagent icon)
	local icon = GetReagentIcon(data, iconOnly);
	if icon then
		text[#text + 1] = icon
	end
	-- Cost (show cost icon)
	icon = GetCostIconForTooltip(data, iconOnly);
	if icon then
		text[#text + 1] = icon
	end
	-- Upgrade (show upgrade icon)
	icon = GetUpgradeIconForTooltip(data, iconOnly);
	if icon then
		text[#text + 1] = icon
	end
	-- Collectible
	local stateIcon = GetCollectibleIcon(data, iconOnly)
	if stateIcon then
		text[#text + 1] = stateIcon
	end
	-- Saved (only certain data types)
	if data.npcID then
		stateIcon = GetTrackableIcon(data, iconOnly, true)
		if stateIcon then
			text[#text + 1] = stateIcon
		end
	end
	-- Container
	local total = data.total;
	local isContainer = total and (total > 1 or (total > 0 and not data.collectible));
	if isContainer then
		local textContainer = GetProgressColorText(data.progress or 0, total)
		if textContainer then
			text[#text + 1] = textContainer
		end
	end

	-- Trackable (Only if no other text available)
	if #text == 0 then
		stateIcon = GetTrackableIcon(data, iconOnly)
		if stateIcon then
			text[#text + 1] = stateIcon
		end
	end

	return app.TableConcat(text, nil, "", " ");
end
app.GetProgressTextForTooltip = GetProgressTextForTooltip

local function BuildDataSummary(data)
	local summary = {}
	local requireSkill = data.requireSkill
	if requireSkill then
		local profIcon = GetTradeSkillTexture(requireSkill)
		if profIcon then
			summary[#summary + 1] = "|T"..profIcon..":0|t "
		end
	end
	-- TODO: races
	local specs = data.specs;
	if specs and #specs > 0 then
		summary[#summary + 1] = GetSpecsString(specs, false, false)
	else
		local classes = data.c
		if classes and #classes > 0 then
			summary[#summary + 1] = GetClassesString(classes, false, false)
		end
	end
	summary[#summary + 1] = GetProgressTextForRow(data) or "---"
	return app.TableConcat(summary, nil, "", "")
end
local function SetRowData(self, row, data)
	ClearRowData(row);
	if data then
		local text = data.text;
		if IsRetrieving(text) then
			text = RETRIEVING_DATA;
			self.processingLinks = true;
		end
		local leftmost, relative, rowPad = row, "LEFT", 8;
		local x = CalculateRowIndent(data) * rowPad + rowPad;
		row.indent = x;
		local back = CalculateRowBack(data);
		row.ref = data;
		if back then
			row.Background:SetAlpha(back or 0.2);
			row.Background:Show();
		end
		local rowTexture = row.Texture;
		-- this will always be true due to question mark fallback
		if SetPortraitIcon(rowTexture, data) then
			rowTexture.Background:SetPoint("TOPLEFT", rowTexture);
			rowTexture.Border:SetPoint("TOPLEFT", rowTexture);
			rowTexture:SetPoint("LEFT", leftmost, relative, x, 0);
			rowTexture:Show();
			leftmost = rowTexture;
			relative = "RIGHT";
			x = rowPad / 4;
		end
		local rowIndicator = row.Indicator;
		-- indicator is always attached to the Texture
		if SetIndicatorIcon(rowIndicator, data) then
			rowIndicator:SetPoint("RIGHT", rowTexture, "LEFT")
			rowIndicator:Show();
		end
		local rowSummary = row.Summary;
		local rowLabel = row.Label;
		rowSummary:SetText(BuildDataSummary(data));
		-- for whatever reason, the Client does not properly align the Points when textures are used within the 'text' of the object, with each texture added causing a 1px offset on alignment
		-- 2022-03-15 It seems as of recently that text with textures now render properly without the need for a manual adjustment. Will leave the logic in here until confirmed for others as well
		-- 2023-07-25 The issue is caused due to ATT list scaling. With scaling other than 1 applied, the icons within the text shift relative to the number of icons
		-- rowSummary:SetPoint("RIGHT", iconAdjust, 0);
		rowSummary:Show();
		rowLabel:SetText(TryColorizeName(data, text));
		rowLabel:SetPoint("LEFT", leftmost, relative, x, 0);
		rowLabel:SetPoint("RIGHT");
		rowLabel:Show();
		rowLabel:SetPoint("RIGHT", rowSummary, "LEFT");
		if data.font then
			rowLabel:SetFontObject(data.font);
			rowSummary:SetFontObject(data.font);
		else
			rowLabel:SetFontObject("GameFontNormal");
			rowSummary:SetFontObject("GameFontNormal");
		end
		row:Show();
	else
		row:Hide();
	end
end
local function AdjustRowIndent(row, indentAdjust)
	-- only ever LEFT point set
	if not row.Texture:IsShown() then return end
	local _, _, _, x = row.Texture:GetPointByName("LEFT")
	local offset = x - indentAdjust
	-- app.PrintDebug("row texture at",x,indentAdjust,offset)
	row.Texture:SetPoint("LEFT", row, "LEFT", offset, 0);
end
local function ClearRowData(self)
	self.__ref = self.ref
	self.ref = nil;
	self.Background:Hide();
	self.Texture:Hide();
	self.Texture.Background:Hide();
	self.Texture.Border:Hide();
	self.Indicator:Hide();
	self.Summary:Hide();
	self.Label:Hide();
end
local function Refresh(self)
	if not self:IsVisible() then return; end
	-- app.PrintDebug(Colorize("Refresh:", app.Colors.TooltipDescription),self.Suffix)
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

	-- If there is no raw data, then return immediately.
	local rowData = self.rowData;
	if not rowData then return; end

	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #rowData;
	if totalRowCount <= 0 then return; end

	-- Fill the remaining rows up to the (visible) row count.
	local container, windowPad, minIndent = self.Container, 0, nil;
	local current = math.max(1, math.min(self.ScrollBar.CurrentValue, totalRowCount)) + 1

	-- Ensure that the first row doesn't move out of position.
	local row = container.rows[1]
	SetRowData(self, row, rowData[1]);

	local containerHeight = container:GetHeight();
	local rowHeight = row:GetHeight()
	local rowCount = math.floor(containerHeight / rowHeight)

	for i=2,rowCount do
		row = container.rows[i]
		SetRowData(self, row, rowData[current]);
		-- track the minimum indentation within the set of rows so they can be adjusted later
		if row.indent and (not minIndent or row.indent < minIndent) then
			minIndent = row.indent;
			-- print("new minIndent",minIndent)
		end
		current = current + 1;
	end

	-- Readjust the indent of visible rows
	-- if there's actually an indent to adjust on top row (due to possible indicator)
	row = container.rows[1];
	if row.indent ~= windowPad then
		AdjustRowIndent(row, row.indent - windowPad);
		-- increase the window pad extra for sub-rows so they will indent slightly more than the header row with indicator
		windowPad = windowPad + 8;
	else
		windowPad = windowPad + 4;
	end
	-- local headerAdjust = 0;
	-- if startIndent ~= 8 then
	--	-- header only adjust
	-- 	headerAdjust = startIndent - 8;
	-- 	print("header adjust",headerAdjust)
	-- 	row = container.rows[1];
	-- 	AdjustRowIndent(row, headerAdjust);
	-- end
	-- adjust remaining rows to align on the left
	if minIndent and minIndent ~= windowPad then
		-- print("minIndent",minIndent,windowPad)
		local adjust = minIndent - windowPad;
		for i=2,rowCount do
			row = container.rows[i];
			AdjustRowIndent(row, adjust);
		end
	end

	-- Hide the extra rows if any exist
	for i=math.max(2, rowCount + 1),#container.rows do
		row = container.rows[i];
		ClearRowData(row);
		row:Hide();
	end

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

	-- If this window has an UpdateDone method which should process after the Refresh is complete
	if self.UpdateDone then
		-- print("Refresh-UpdateDone",self.Suffix)
		Callback(self.UpdateDone, self);
	-- If the rows need to be processed again, do so next update.
	elseif self.processingLinks then
		-- print("Refresh-processingLinks",self.Suffix)
		Callback(self.Refresh, self);
		self.processingLinks = nil;
	end
	-- app.PrintDebugPrior("Refreshed:",self.Suffix)
	if GameTooltip and GameTooltip:IsVisible() then
		local row = GameTooltip:GetOwner()
		if row and row.__ref ~= row.ref then
			-- app.PrintDebug("owner.ref",app:SearchLink(row.ref))
			-- force tooltip to refresh since the scroll has changed for but the tooltip is still visible
			local OnLeave = row:GetScript("OnLeave")
			local OnEnter = row:GetScript("OnEnter")
			OnLeave(row)
			OnEnter(row)
		end
	end
end
local StoreWindowPosition = function(self)
	if AllTheThingsProfiles then
		local key = app.Settings:GetProfile();
		local profile = AllTheThingsProfiles.Profiles[key];
		-- not entirely sure how this is able to happen, but just ignore for now
		if not profile then return end
		if self.isLocked or self.lockPersistable then
			if not profile.Windows then profile.Windows = {}; end
			-- re-save the window position by point anchors
			local points = {};
			profile.Windows[self.Suffix] = points;
			for i=1,self:GetNumPoints() do
				local point, _, refPoint, x, y = self:GetPoint(i);
				points[i] = { Point = point, PointRef = refPoint, X = math.floor(x), Y = math.floor(y) };
			end
			points.Width = math.floor(self:GetWidth());
			points.Height = math.floor(self:GetHeight());
			points.Locked = self.isLocked or nil;
			-- print("saved window",self.Suffix)
			-- app.PrintTable(points)
		else
			-- a window which was potentially saved due to being locked, but is now being unlocked (unsaved)
			-- print("removing stored window",self.Suffix)
			if profile.Windows then
				profile.Windows[self.Suffix] = nil;
			end
		end
	end
end
-- Allows a Window to set the root data object to itself and link the Window to the root data, if data exists
local function SetData(self, data)
	-- app.PrintDebug("Window:SetData",self.Suffix,data.text)
	self.data = data;
	if data then
		data.window = self;
	end
end
-- Allows a Window to build the groups hierarcy if it has .data
local function BuildData(self)
	local data = self.data;
	if data then
		-- app.PrintDebug("Window:BuildData",self.Suffix,data.text)
		AssignChildren(data);
	end
end
-- returns a Runner specific to the 'self' window
local function GetRunner(self)
	local Runner = self.__Runner
	if Runner then return Runner end
	Runner = app.CreateRunner(self.Suffix)
	self.__Runner = Runner
	return Runner
end
local function ToggleExtraFilters(self, active)
	local filters = self.Filters
	if not filters then return end
	local Set = app.Modules.Filter.Set
	local Setter
	for name,_ in pairs(filters) do
		Setter = Set[name]
		if Setter then Setter(active) end
	end
end
local function OnScrollBarMouseWheel(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentValue - delta);
end
local function StopMovingOrSizing(self)
	self:StopMovingOrSizing();
	self.isMoving = nil;
	-- store the window position if the window is visible (this is called on new popouts prior to becoming visible for some reason)
	if self:IsVisible() then
		self:StorePosition();
	end
end
local function StartMovingOrSizing(self, fromChild)
	if not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			Push(self, "StartMovingOrSizing (Sizing)", function()
				if self.isMoving then
					-- keeps the rows within the window fitting to the window as it resizes
					self:Refresh();
					return true;
				end
			end);
		elseif self:IsMovable() then
			self:StartMoving();
		end
	end
end
local backdrop = {
	bgFile = 137056,
	edgeFile = 137057,
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
-- Shared Panel Functions
local function OnCloseButtonPressed(self)
	self:GetParent():Hide();
end
local function OnScrollBarValueChanged(self, value)
	if self.CurrentValue ~= value then
		self.CurrentValue = value;
		local window = self:GetParent()
		Callback(window.Refresh, window)
	end
end

local NewWindowRowContainer
do
local HandleEvent = app.HandleEvent
local function RowOnClick(self, button)
	HandleEvent("RowOnClick", self, button)
end
local function RowOnEnter(self)
	HandleEvent("RowOnEnter", self)
end
local function RowOnLeave(self)
	HandleEvent("RowOnLeave", self)
end
local function CreateRow(rows, i)
	local container, index = rows.__container, i - 1
	---@class ATTRowButtonClass: Button
	local row = CreateFrame("Button", nil, container);
	row.index = index
	rows[i] = row
	if index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		local aboveRow = rows[index] or CreateRow(rows, index)
		row:SetPoint("TOPLEFT", aboveRow, "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", aboveRow, "BOTTOMRIGHT");
	end

	-- Setup highlighting and event handling
	row:SetHighlightTexture(136810, "ADD");
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
	local rowHeight = row:GetHeight()

	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("RIGHT");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");

	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetAllPoints();
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetTexture(136810);

	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(rowHeight);

	-- Texture is the icon.
	---@class ATTRowButtonTextureClass: Texture
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(rowHeight);
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(rowHeight);
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(rowHeight);

	-- Forced/External Update of a Tooltip produced by an ATT row to use the same function which created it
	row.UpdateTooltip = RowOnEnter;

	-- Clear the Row Data Initially
	ClearRowData(row);
	return row;
end
NewWindowRowContainer = function(container)
	return setmetatable({__container=container}, { __index = function(t,i)
		return CreateRow(t,i)
	end})
end
end

-- allows a window to keep track of any specific custom handler functions it creates
local function AddEventHandler(self, event, handler)
	self.Handlers = self.Handlers or {}
	app.AddEventHandler(event, handler)
	self.Handlers[#self.Handlers + 1] = handler
end
-- allows a window to remove all event handlers it created
local function RemoveEventHandlers(self)
	if self.Handlers then
		for _,handler in ipairs(self.Handlers) do
			app.RemoveEventHandler(handler)
		end
	end
end
-- allows a window to stop being moved/resized by the cursor
local function StopATTMoving(self)
	self:StopMovingOrSizing();
	self.isMoving = nil;
	-- store the window position if the window is visible (this is called on new popouts prior to becoming visible for some reason)
	if self:IsVisible() then
		self:StorePosition()
	end
end
local function SelfMoveRefresher(self)
	if self.isMoving then
		-- keeps the rows within the window fitting to the window as it resizes
		self:Refresh()
		return true
	end
end
local function ToggleATTMoving(self)
	if self.isMoving then
		self:StopATTMoving()
		return
	end

	if not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	end

	if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
		self:StartSizing()
		self.isMoving = true
		Push(self, "StartMovingOrSizing (Sizing)", SelfMoveRefresher)
	elseif self:IsMovable() then
		self:StartMoving()
		self.isMoving = true
	end
end
function app:GetWindow(suffix, parent, onUpdate)
	if app.GetCustomWindowParam(suffix, "reset") then
		ResetWindow(suffix);
	end
	local window = app.Windows[suffix];
	if window then return window end

	-- Create the window instance.
	-- app.PrintDebug("GetWindow",suffix)
	---@class ATTWindowFrameForRetail: BackdropTemplate, Frame
	window = CreateFrame("Frame", appName .. "-Window-" .. suffix, parent or UIParent, BackdropTemplateMixin and "BackdropTemplate");
	app.Windows[suffix] = window;
	window.Suffix = suffix;
	window.Toggle = Toggle;
	local updateFunc = onUpdate or app:CustomWindowUpdate(suffix) or UpdateWindow;
	-- Update/Refresh functions can be called through callbacks, so they need to be distinct functions
	window.BaseUpdate = function(...) UpdateWindow(...) end;
	window.Update = function(...) updateFunc(...) end;
	window.Refresh = function(...) Refresh(...) end;
	window.StopATTMoving = StopATTMoving
	window.ToggleATTMoving = ToggleATTMoving
	window.SetVisible = SetVisible;
	window.StorePosition = StoreWindowPosition;
	window.SetData = SetData;
	window.BuildData = BuildData;
	window.GetRunner = GetRunner;
	window.ToggleExtraFilters = ToggleExtraFilters

	window:SetScript("OnMouseWheel", OnScrollBarMouseWheel);
	window:SetScript("OnMouseDown", StartMovingOrSizing);
	window:SetScript("OnMouseUp", StopMovingOrSizing);
	window:SetScript("OnHide", StopMovingOrSizing);
	window:SetBackdrop(backdrop);
	window:SetBackdropBorderColor(1, 1, 1, 1);
	window:SetBackdropColor(0, 0, 0, 1);
	window:SetClampedToScreen(true);
	window:SetToplevel(true);
	window:EnableMouse(true);
	window:SetMovable(true);
	window:SetResizable(true);
	window:SetPoint("CENTER");
	window:SetResizeBounds(96, 32);
	window:SetSize(300, 300);

	-- set the scaling for the new window if settings have been initialized
	local scale = app.Settings and app.Settings._Initialize and (suffix == "Prime" and app.Settings:GetTooltipSetting("MainListScale") or app.Settings:GetTooltipSetting("MiniListScale")) or 1;
	window:SetScale(scale);

	window:SetUserPlaced(true);
	window.data = {}

	-- set whether this window lock is persistable between sessions
	if suffix == "Prime" or suffix == "CurrentInstance" or suffix == "RaidAssistant" or suffix == "WorldQuests" then
		window.lockPersistable = true;
	end

	window:Hide();

	-- The Close Button. It's assigned as a local variable so you can change how it behaves.
	window.CloseButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
	window.CloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", -1, -1);
	window.CloseButton:SetSize(20, 20);
	window.CloseButton:SetScript("OnClick", OnCloseButtonPressed);

	-- The Scroll Bar.
	---@class ATTWindowScrollBar: Slider
	local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
	scrollbar:SetPoint("TOP", window.CloseButton, "BOTTOM", 0, -15);
	scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
	scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
	scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
	scrollbar.back:SetColorTexture(0.1,0.1,0.1,1);
	scrollbar.back:SetAllPoints(scrollbar);
	scrollbar:SetMinMaxValues(1, 1);
	scrollbar:SetValueStep(1);
	scrollbar:SetValue(1);
	scrollbar:SetObeyStepOnDrag(true);
	scrollbar.CurrentValue = 1;
	scrollbar:SetWidth(16);
	scrollbar:EnableMouseWheel(true);
	window:EnableMouseWheel(true);
	window.ScrollBar = scrollbar;

	-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
	local grip = window:CreateTexture(nil, "ARTWORK");
	grip:SetTexture(app.asset("grip"));
	grip:SetSize(16, 16);
	grip:SetTexCoord(0,1,0,1);
	grip:SetPoint("BOTTOMRIGHT", -5, 5);
	window.Grip = grip;

	-- The Row Container. This contains all of the row frames.
	---@class ATTWindowContainer: Frame
	local container = CreateFrame("Frame", nil, window);
	container:SetPoint("TOPLEFT", window, "TOPLEFT", 5, -5);
	container:SetPoint("RIGHT", scrollbar, "LEFT", -1, 0);
	container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
	-- container:SetClipsChildren(true);
	window.Container = container;
	container.rows = NewWindowRowContainer(container)
	container:Show();

	-- Setup the Event Handlers
	-- TODO: review how necessary this actually is in Retail
	local handlers = {};
	window:SetScript("OnEvent", function(self, e, ...)
		local handler = handlers[e];
		if handler then
			handler(self, ...);
		else
			app.PrintDebug("Unhandled Window Event",e,...)
			self:Update();
		end
	end);
	local refreshWindow = function() DelayedCallback(window.Refresh, 0.25, window) end;
	handlers.ACHIEVEMENT_EARNED = refreshWindow;
	handlers.QUEST_DATA_LOAD_RESULT = refreshWindow;
	handlers.QUEST_ACCEPTED = refreshWindow;
	handlers.QUEST_REMOVED = refreshWindow;
	window:RegisterEvent("ACHIEVEMENT_EARNED");
	window:RegisterEvent("QUEST_ACCEPTED");
	window:RegisterEvent("QUEST_DATA_LOAD_RESULT");
	window:RegisterEvent("QUEST_REMOVED");

	window.AddEventHandler = AddEventHandler
	window.RemoveEventHandlers = RemoveEventHandlers

	-- Some Window functions should be triggered from ATT events
	window:AddEventHandler("OnUpdateWindows", function(...)
		window:Update(...)
	end)
	window:AddEventHandler("OnRefreshWindows", function(...)
		window:Refresh(...)
	end)

	-- Ensure the window updates itself when opened for the first time
	window.HasPendingUpdate = true;
	-- TODO: eventually remove this when Windows are re-designed to have an OnInit/OnUpdate distinction for Retail
	window:Update();
	return window;
end

-- TODO: Refactoring
-- Some windows still new to be 'loaded' so they can setup their logic about when to show/hide
app.AddEventHandler("OnReady", function()
	app:GetWindow("AuctionData")
	app:GetWindow("Tradeskills")
end)
app.AddEventHandler("OnRefreshComplete", function() app.HandleEvent("OnUpdateWindows", true) end, true)

local function ToggleMiniListForCurrentZone()
	local window = app:GetWindow("CurrentInstance");
	if window:IsVisible() then
		window:Hide();
	else
		window.RefreshLocation(true);
	end
end
app.ToggleMiniListForCurrentZone = ToggleMiniListForCurrentZone;

local function LocationTrigger(forceNewMap)
	if not app.InWorld or not app.IsReady then return end
	local window = app:GetWindow("CurrentInstance");
	if not window:IsVisible() then return end
	-- app.PrintDebug("LocationTrigger-Callback")
	if forceNewMap then
		-- this allows minilist to rebuild itself
		wipe(window.CurrentMaps)
	end
	AfterCombatOrDelayedCallback(window.RefreshLocation, 0.25);
end
app.LocationTrigger = LocationTrigger;
app.AddEventHandler("OnCurrentMapIDChanged", LocationTrigger);

app.ToggleMainList = function()
	app:GetWindow("Prime"):Toggle();
end

-- TODO: figure out why minilist doesn't re-show itself sometimes, then make auto-hiding of windows configurable in some way...
-- app.AddEventRegistration("PET_BATTLE_OPENING_START", function(...)
-- 	-- check for open ATT windows
-- 	for _,window in pairs(app.Windows) do
-- 		if window:IsVisible() then
-- 			if not app.PetBattleClosed then app.PetBattleClosed = {}; end
-- 			tinsert(app.PetBattleClosed, window);
-- 			window:Toggle();
-- 		end
-- 	end
-- end)
-- this fires twice when pet battle ends
-- app.AddEventRegistration("PET_BATTLE_CLOSE", function(...)
-- 	-- app.PrintDebug("PET_BATTLE_CLOSE",app.PetBattleClosed and #app.PetBattleClosed)
-- 	if app.PetBattleClosed then
-- 		for _,window in ipairs(app.PetBattleClosed) do
-- 			-- special open for Current Instance list
-- 			if window.Suffix == "CurrentInstance" then
-- 				DelayedCallback(app.ToggleMiniListForCurrentZone, 1);
-- 			else
-- 				window:Toggle();
-- 			end
-- 		end
-- 		app.PetBattleClosed = nil;
-- 	end
-- end)

-- probably temporary function to fix Retail Lua errors when using AH
app.TrySearchAHForGroup = function(group)
	-- nothing works. AH frame is weird

	-- local itemID = group.itemID
	-- if itemID then
	local name, link = group.name, group.link or group.silentLink
	if name and app.HandleModifiedItemClick(link) then
		local AH = app.AH
		if not AH then AH = {} app.AH = AH end
		-- AuctionFrameBrowse_Search();	-- doesn't exist
		-- local itemKey = C_AuctionHouse.MakeItemKey(itemID)
		-- local itemKeys = {itemKey}
		local query = AH.query
		if not query then
			local sorts = {
				-- {sortOrder = Enum.AuctionHouseSortOrder.Name, reverseSort = false},
				{sortOrder = Enum.AuctionHouseSortOrder.Price, reverseSort = false},
				-- {sortOrder = Enum.AuctionHouseSortOrder.Buyout, reverseSort = false},
			}
			local filters = {
				-- Enum.AuctionHouseFilter.None
			}
			-- local itemClassFilters = {
			-- 	classID = LE_ITEM_CLASS_CONTAINER,
			-- 	subClassID = nil,
			-- 	inventoryType = nil
			-- }
			query = {
				sorts = sorts,
				filters = filters,
				-- itemClassFilters = itemClassFilters,
			}
			-- cache the query for future use to only change the search
			AH.query = query
		end
		query.searchString = name
		-- app.PrintDebug("search")
		-- app.PrintTable(query)
		-- local result = C_AuctionHouse.GetItemSearchResultInfo(itemKey, 0) -- always nil
		-- app.PrintTable(result)
		-- C_AuctionHouse.SearchForItemKeys(itemKeys,sorts) -- always Lua error
		C_AuctionHouse.SendBrowseQuery(query)
		return true;
	end
end

function app:CreateMiniListForGroup(group, forceFresh)
	-- Criteria now show their Source Achievement properly
	-- Achievements already fill out their Criteria information automatically, don't think this is necessary now - Runaway
	-- Is this an achievement lacking some achievement information?
	-- local achievementID = not group.criteriaID and group.achievementID;
	-- if achievementID and not group.g then
	-- 	app.PrintDebug("Finding better achievement data...",achievementID)
	-- 	local searchResults = SearchForField("achievementID", achievementID);
	-- 	if #searchResults > 0 then
	-- 		local bestResult;
	-- 		for i=1,#searchResults,1 do
	-- 			local searchResult = searchResults[i];
	-- 			if searchResult.achievementID == achievementID and not searchResult.criteriaID then
	-- 				if not bestResult or searchResult.g then
	-- 					bestResult = searchResult;
	-- 				end
	-- 			end
	-- 		end
	-- 		if bestResult then group = bestResult; end
	-- 		app.PrintDebug("Found",bestResult and bestResult.hash,group,bestResult)
	-- 	end
	-- end

	-- Pop Out Functionality! :O
	local suffix = app.GenerateSourceHash(group);
	local popout = not forceFresh and app.Windows[suffix];
	-- force data to be re-collected if this is a quest chain since its logic is affected by settings
	if group.questID or group.sourceQuests then popout = nil; end
	-- app.PrintDebug("Popout for",suffix,"showing?",showing)
	if not popout then
		popout = app:GetWindow(suffix);

		-- app.PrintDebug("group")
		-- app.PrintTable(group)

		-- being a search result means it has already received certain processing
		if not group.isBaseSearchResult then
			local skipFull = app.GetRelativeValue(group, "skipFull")
			-- clone/search initially so as to not let popout operations modify the source data
			group = app.__CreateObject(group);
			popout:SetData(group);
			group.skipFull = skipFull

			-- app.PrintDebug(Colorize("clone",app.Colors.ChatLink))
			-- app.PrintTable(group)
			-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
			-- app.PrintTable(group.g)

			-- make a search for this group if it is an item/currency/achievement and not already a container for things
			local key = group.key;
			if not group.g and not group.criteriaID and app.ThingKeys[key] then
				local cmd = group.link or key .. ":" .. group[key];
				app.SetSkipLevel(2);
				local groupSearch = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {SkipFill=true});
				app.SetSkipLevel(0);

				-- app.PrintDebug(Colorize("search",app.Colors.ChatLink))
				-- app.PrintTable(groupSearch)
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(groupSearch.g)
				-- Sometimes we want a specific Thing (/att i:147770)
				-- but since it is keyed by a different ID (spell 242155)
				-- this re-search replaces with an alternate item (147580)
				-- so instead we should only merge properties from the re-search to ensure initial data isn't replaced due to alternate data matching
				app.MergeProperties(group, groupSearch, true)
				-- g is not merged automatically
				-- app.PrintDebug("Copy .g",#groupSearch.g)
				---@diagnostic disable-next-line: need-check-nil
				group.g = groupSearch.g
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(group.g)
				-- This isn't needed for the example noted anymore...
				-- if not group.key and key then
				-- 	group.key = key;	-- Dunno what causes this in app.GetCachedSearchResults, but assigning this before calling to the new CreateObject function fixes currency popouts for currencies that aren't in the addon. /att currencyid:1533
				-- 	-- CreateMiniListForGroup missing key response, will likely fail to Create a Class Instance!
				-- end

				-- app.PrintDebug(Colorize("merge",app.Colors.ChatLink))
				-- app.PrintTable(group)
				-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
				-- app.PrintTable(group.g)
			end
		else
			popout:SetData(group);
		end

		group.isPopout = true

		-- Insert the data group into the Raw Data table.
		-- app.PrintDebug(Colorize("popout",app.Colors.ChatLink))
		-- app.PrintTable(group)
		-- app.PrintDebug(Colorize(".g",app.Colors.ChatLink))
		-- app.PrintTable(group.g)
		-- This logic allows for nested searches of groups within a popout to be returned as the root search which resets the parent
		-- if not group.isBaseSearchResult then
		--	-- make a search for this group if it is an item/currency and not already a container for things
		-- 	if not group.g and (group.itemID or group.currencyID) then
		-- 		local cmd = group.key .. ":" .. group[group.key];
		-- 		group = app.GetCachedSearchResults(app.SearchForLink, cmd);
		-- 	else
		-- 		group = CreateObject(group);
		-- 	end
		-- end

		-- TODO: Crafting Information
		-- TODO: Lock Criteria

		-- custom Update method for the popout so we don't have to force refresh
		popout.Update = function(self, force, got)
			-- app.PrintDebug("Update.ExpireTime", self.Suffix, force, got)
			-- mark the popout to expire after 5 min from now if it is visible
			if self:IsVisible() then
				self.ExpireTime = time() + 300;
				-- app.PrintDebug("Expire Refreshed",popout.Suffix)
			end
			-- Add Timerunning filter to the popout
			popout.Filters = app.Settings:GetTooltipSetting("Filter:MiniList:Timerunning") and { Timerunning = true } or nil
			self:BaseUpdate(force or got, got);
		end

		app.HandleEvent("OnNewPopoutGroup", popout.data)
		-- Sort any content added to the Popout data by the Global sort (not for popped out difficulty groups)
		if not popout.data.difficultyID then
			app.Sort(popout.data.g, app.SortDefaults.Global)
		end

		popout:BuildData();
		-- always expand all groups on initial creation
		ExpandGroupsRecursively(popout.data, true, true);
		-- Adjust some update/refresh logic if this is a Quest Chain window
		if popout.isQuestChain then
			local oldUpdate = popout.Update;
			popout.Update = function(self, ...)
				-- app.PrintDebug("Update.isQuestChain", self.Suffix, ...)
				local oldQuestAccountWide = app.Settings.AccountWide.Quests;
				local oldQuestCollection = app.Settings.Collectibles.Quests;
				app.Settings.Collectibles.Quests = true;
				app.Settings.AccountWide.Quests = false;
				oldUpdate(self, ...);
				app.Settings.Collectibles.Quests = oldQuestCollection;
				app.Settings.AccountWide.Quests = oldQuestAccountWide;
			end;
			local oldRefresh = popout.Refresh;
			popout.Refresh = function(self, ...)
				-- app.PrintDebug("Refresh.isQuestChain", self.Suffix, ...)
				local oldQuestAccountWide = app.Settings.AccountWide.Quests;
				local oldQuestCollection = app.Settings.Collectibles.Quests;
				app.Settings.Collectibles.Quests = true;
				app.Settings.AccountWide.Quests = false;
				oldRefresh(self, ...);
				app.Settings.Collectibles.Quests = oldQuestCollection;
				app.Settings.AccountWide.Quests = oldQuestAccountWide;
			end;
			-- Populate the Quest Rewards
			-- think this causes quest popouts to somehow break...
			-- app.TryPopulateQuestRewards(group)

			-- Then trigger a soft update of the window afterwards
			DelayedCallback(popout.Update, 0.25, popout);
		end
	end
	popout:Toggle(true);
	return popout;
end

if not C_ContentTracking then
	app.AddContentTracking = function(group)
		app.print("Content Tracking is not supported in this game version!")
	end
else
	local IsTracking, StartTracking, StopTracking
		= C_ContentTracking.IsTracking, C_ContentTracking.StartTracking, C_ContentTracking.StopTracking
	app.AddContentTracking = function(group)
		-- if this group is currently tracked
		local sourceID, mountID, achievementID = group.sourceID, group.mountJournalID, group.achievementID
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
	end
end
-- Adds ATT information about the list of Quests into the provided tooltip
local function AddQuestInfoToTooltip(info, quests, reference)
	if quests then
		local text, mapID;
		for _,q in ipairs(quests) do
			text = q.text;
			if not text then
				text = RETRIEVING_DATA;
				reference.working = true;
			end
			text = app.GetCompletionIcon(q.saved) .. " [" .. q.questID .. "] " .. text;
			mapID = q.mapID
				or (q.maps and q.maps[1])
				or (q.coord and q.coord[3])
				or (q.coords and q.coords[1] and q.coords[1][3]);
			if mapID then
				text = text .. " (" .. app.GetMapName(mapID) .. ")";
			end
			info[#info + 1] = {
				left = text
			}
		end
	end
end
local function formatNumericWithCommas(amount)
    local k
    while true do
        amount, k = tostring(amount):gsub("^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then
            break
        end
    end
    return amount
end
local function GetMoneyString(amount)
    if amount > 0 then
        local formatted
        local gold, silver, copper = math_floor(amount / 100 / 100), math_floor((amount / 100) % 100),
            math_floor(amount % 100)
        if gold > 0 then
            formatted = formatNumericWithCommas(gold) .. "|T237618:0|t"
        end
        if silver > 0 then
            formatted = (formatted or "") .. silver .. "|T237620:0|t"
        end
        if copper > 0 then
            formatted = (formatted or "") .. copper .. "|T237617:0|t"
        end
        return formatted
    end
    return amount
end

-- Returns true if any subgroup of the provided group is currently expanded, otherwise nil
local function HasExpandedSubgroup(group)
	if group and group.g then
		for _,subgroup in ipairs(group.g) do
			-- dont need recursion since a group has to be expanded for a subgroup to be visible within it
			if subgroup.expanded then
				return true;
			end
		end
	end
end

app.AddEventHandler("RowOnClick", function(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end

		local window = self:GetParent():GetParent();
		-- All non-Shift Right Clicks open a mini list or the settings.
		if button == "RightButton" then
			if IsAltKeyDown() then
				app.AddTomTomWaypoint(reference);
			elseif IsShiftKeyDown() then
				if app.Settings:GetTooltipSetting("Sort:Progress") then
					app.print("Sorting selection by total progress...");
					app.StartCoroutine("Sorting", function()
						app.SortGroup(reference, "progress");
						app.print("Finished Sorting.");
						window:Update();
					end);
				else
					app.print("Sorting selection alphabetically...");
					app.StartCoroutine("Sorting", function()
						app.SortGroup(reference, "name");
						app.print("Finished Sorting.");
						window:Update();
					end);
				end
			else
				if self.index > 0 then
					if reference.__dlo then
						-- clone the underlying object of the DLO and create a popout of that instead of the DLO itself
						app:CreateMiniListForGroup(reference.__o);
						return;
					end
					app:CreateMiniListForGroup(reference);
				else
					app.Settings:Open();
				end
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
							local dict, path, itemString = {}, nil, nil;
							for i,group in ipairs(missingItems) do
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
							local uniqueNames = {};
							for i,group in ipairs(missingItems) do
								local name = group.name;
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
							local itemList, search = {}, nil;
							for i,group in ipairs(missingItems) do
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
					local searched = app.TrySearchAHForGroup(reference);
					if searched then return true end
				else
					-- Not at the Auction House
					-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
					local link = reference.link or reference.silentLink;
					if app.HandleModifiedItemClick(link) or ChatEdit_InsertLink(link) then return true; end

					if button == "LeftButton" then
						-- Default behavior is to Refresh Collections.
						app.RefreshCollections();
					end
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
					if app.HandleModifiedItemClick(link) then
						return true
					end
				end

				-- If this reference is anything else, expand the groups.
				if reference.g then
					-- mark the window if it is being fully-collapsed
					if self.index < 1 then
						window.fullCollapsed = HasExpandedSubgroup(reference);
					end
					-- always expand if collapsed or if clicked the header and all immediate subgroups are collapsed, otherwise collapse
					ExpandGroupsRecursively(reference, not reference.expanded or (self.index < 1 and not window.fullCollapsed), true);
					window:Update();
					return true;
				end
			end
			if self.index > 0 then
				reference.expanded = not reference.expanded;
				window:Update();
			elseif not reference.expanded then
				reference.expanded = true;
				window:Update();
			else
				-- Allow the First Frame to move the parent.
				-- Toggle lock/unlock by holding Alt when clicking the header of a Window if it is movable
				if IsAltKeyDown() and window:IsMovable() then
					local locked = not window.isLocked;
					window.isLocked = locked;
					window:StorePosition();

					-- force tooltip to refresh since locked state drives tooltip content
					self:GetScript("OnLeave")(self)
					self:GetScript("OnEnter")(self)
				else
					self:SetScript("OnMouseUp", function(self)
						self:SetScript("OnMouseUp", nil);
						window:StopATTMoving()
					end);
					window:ToggleATTMoving()
				end
			end
		end
	end
end)
app.AddEventHandler("RowOnLeave", function (self)
	local reference = self.ref;
	if reference then reference.working = nil; end
	app.ActiveRowReference = nil;
	GameTooltip.ATT_AttachComplete = nil;
	GameTooltip.ATT_IsRefreshing = nil;
	GameTooltip.ATT_IsModifierKeyDown = nil;
	GameTooltip:ClearATTReferenceTexture();
	GameTooltip:ClearLines();
	GameTooltip:Hide();
end)
app.AddEventHandler("RowOnEnter", function(self)
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
			--print("Modifier change detected!", modded, modifier);
		elseif tooltip.ATT_AttachComplete == true then
			--print("Ignoring refresh.");
			return;
		end
	else
		tooltip.ATT_IsModifierKeyDown = modifier;
		tooltip.ATT_IsRefreshing = true;
		tooltip:ClearATTReferenceTexture();
	end
	-- app.PrintDebug("RowOnEnter", "Rebuilding...");

	-- Always display tooltip data when viewing information from our windows.
	local wereTooltipIntegrationsDisabled = not app.Settings:GetTooltipSetting("Enabled");
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", true); end

	-- Build tooltip information.
	local tooltipInfo = {};
	tooltip:ClearLines();
	app.ActiveRowReference = reference;
	local owner;
	if self:GetCenter() > (UIParent:GetWidth() / 2) and (not AuctionFrame or not AuctionFrame:IsVisible()) then
		owner = "ANCHOR_LEFT"
	else
		owner = "ANCHOR_RIGHT"
	end
	tooltip:SetOwner(self, owner);

	-- Attempt to show the object as a hyperlink in the tooltip
	local linkSuccessful;
	local refkey = reference.key
	local questReplace = app.Settings:GetTooltipSetting("Objectives")
	if refkey ~= "encounterID" and refkey ~= "instanceID" and (refkey ~= "questID" or not questReplace) then
		-- Encounter & Instance Links break the tooltip
		local link = reference.link or reference.tooltipLink or reference.silentLink
		if link and link:sub(1, 1) ~= "[" then
			local ok, result = pcall(tooltip.SetHyperlink, tooltip, link);
			if ok and result then
				linkSuccessful = true;
			else
				-- if a link fails to render a tooltip, it clears the tooltip and the owner
				-- so we have to re-assign it here for it to use :Show()
				tooltip:SetOwner(self, owner);
				if not questReplace then questReplace = true end
			end
			-- app.PrintDebug("Link:", link:gsub("|","\\"));
			-- app.PrintDebug("Link Result!", result, refkey, reference.__type,"TT lines",tooltip:NumLines());
		-- elseif link then app.PrintDebug("Ignore tooltip link",link) else
		end

		-- Only if the link was unsuccessful.
		if (not linkSuccessful or tooltip.ATT_AttachComplete == nil) and reference.currencyID then
			---@diagnostic disable-next-line: redundant-parameter
			tooltip:SetCurrencyByID(reference.currencyID, 1);
		end
	end

	-- Default top row line if nothing is generated from a link.
	if tooltip:NumLines() < 1 then
		-- sometimes text is nil
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
			}
		else
			tooltipInfo[#tooltipInfo + 1] = {
				left = title,
				r = 1, g = 1, b = 1
			}
		end
	end
	if reference.speciesID then
		-- TODO: Once we move the Battle Pets to their own class file, add this using settings.AppendInformationTextEntry to the speciesID InformationType.
		local progress, total = C_PetJournal.GetNumCollectedInfo(reference.speciesID);
		if total then
			tooltipInfo[#tooltipInfo + 1] = {
				left = tostring(progress) .. " / " .. tostring(total) .. L.COLLECTED_STRING,
			}
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

	-- TODO: Convert cost to an InformationType.
	if reference.cost then
		if type(reference.cost) == "table" then
			local _, name, icon, amount;
			for k,v in pairs(reference.cost) do
				_ = v[1];
				if _ == "i" then
					_,name,_,_,_,_,_,_,_,icon = GetItemInfo(v[2]);
					amount = v[3];
					if amount > 1 then
						amount = formatNumericWithCommas(amount) .. "x ";
					else
						amount = "";
					end
				elseif _ == "c" then
					amount = v[3];
					local currencyData = C_CurrencyInfo.GetCurrencyInfo(v[2]);
					name = C_CurrencyInfo.GetCurrencyLink(v[2], amount) or (currencyData and currencyData.name) or "Unknown";
					icon = currencyData and currencyData.iconFileID or nil;
					if amount > 1 then
						amount = formatNumericWithCommas(amount) .. "x ";
					else
						amount = "";
					end
				elseif _ == "g" then
					name = "";
					icon = nil;
					amount = GetMoneyString(v[2]);
				end
				if not name then
					reference.working = true;
					name = RETRIEVING_DATA;
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = (k == 1 and L.COST),
					right = amount .. (icon and ("|T" .. icon .. ":0|t") or "") .. name,
				}
			end
		else
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.COST,
				right = GetMoneyString(reference.cost),
			}
		end
	end

	-- Additional information (search will insert this information if found in search)
	if tooltip.ATT_AttachComplete == nil then
		-- an item used for a faction which is repeatable
		if reference.itemID and reference.factionID and reference.repeatable then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.ITEM_GIVES_REP .. (GetFactionName(reference.factionID) or ("Faction #" .. tostring(reference.factionID))) .. "'",
				color = app.Colors.TooltipDescription,
				wrap = true,
			}
		end

		-- Add any ID toggle fields
		app.ProcessInformationTypes(tooltipInfo, reference);
	end

	-- Ignored for Source/Progress
	if reference.sourceIgnored then
		tooltipInfo[#tooltipInfo + 1] = {
			left = L.DOES_NOT_CONTRIBUTE_TO_PROGRESS,
			wrap = true,
		}
	end
	-- Further conditional texts that can be displayed
	if reference.timeRemaining then
		tooltipInfo[#tooltipInfo + 1] = {
			left = app.GetColoredTimeRemaining(reference.timeRemaining),
		}
	end

	-- Calculate Best Drop Percentage. (Legacy Loot Mode)
	if reference.itemID and not reference.speciesID and not reference.spellID and app.Settings:GetTooltipSetting("DropChances") then
		local numSpecializations = GetNumSpecializations();
		if numSpecializations and numSpecializations > 0 then
			local encounterID = GetRelativeValue(reference.parent, "encounterID");
			if encounterID then
				local difficultyID = GetRelativeValue(reference.parent, "difficultyID");
				local encounterCache = SearchForField("encounterID", encounterID);
				if #encounterCache > 0 then
					local itemList = {};
					for i,encounter in ipairs(encounterCache) do
						if encounter.g and GetRelativeValue(encounter.parent, "difficultyID") == difficultyID then
							app.SearchForRelativeItems(encounter, itemList);
						end
					end
					local item
					for i=#itemList,1,-1 do
						item = itemList[i]
						if item.u and item.u < 3 then
							tremove(itemList, i)
						end
					end
					local specHits = {};
					for _,item in ipairs(itemList) do
						local specs = item.specs;
						if specs then
							for j,spec in ipairs(specs) do
								specHits[spec] = (specHits[spec] or 0) + 1;
							end
						end
					end

					local totalItems = #itemList; -- if somehow encounter drops 0 items but an item still references the encounter
					local chance, color;
					local legacyLoot = C_Loot.IsLegacyLootModeEnabled();

					-- Legacy Loot is simply 1 / total items chance since spec has no relevance to drops, i.e. this one item / total items in drop table
					if totalItems > 0 then
						chance = 100 / totalItems;
						color = GetProgressColor(chance / 100);
						tooltipInfo[#tooltipInfo + 1] = {
							left = L.LOOT_TABLE_CHANCE,
							right = "|c"..color..GetNumberWithZeros(chance, 1) .. "%|r",
						}
					else
						tooltipInfo[#tooltipInfo + 1] = {
							left = L.LOOT_TABLE_CHANCE,
							right = "N/A",
						}
					end

					local specs = reference.specs;
					if specs and #specs > 0 then
						-- Available for one or more loot specialization.
						local least, bestSpecs = 999, {};
						for _,spec in ipairs(specs) do
							local specHit = specHits[spec] or 0;
							-- For Personal Loot!
							if specHit > 0 and specHit <= least then
								least = specHit;
								bestSpecs[spec] = specHit;
							end
						end
						-- something has a best spec
						if least < 999 then
							-- define the best specs based on min
							local rollSpec = {};
							for specID,count in pairs(bestSpecs) do
								if count == least then
									rollSpec[#rollSpec + 1] = specID
								end
							end
							chance = 100 / least;
							color = GetProgressColor(chance / 100);
							-- print out the specs with min items
							local specString = GetSpecsString(rollSpec, true, true) or "???";
							tooltipInfo[#tooltipInfo + 1] = {
								left = legacyLoot and L.BEST_BONUS_ROLL_CHANCE or L.BEST_PERSONAL_LOOT_CHANCE,
								right = specString.."  |c"..color..GetNumberWithZeros(chance, 1).."%|r",
							}
						end
					elseif legacyLoot then
						-- Not available at all, best loot spec is the one with the most number of items in it.
						local most = 0;
						local bestSpecID
						for i=1,numSpecializations,1 do
							local id = GetSpecializationInfo(i);
							local specHit = specHits[id] or 0;
							if specHit > most then
								most = specHit;
								bestSpecID = i;
							end
						end
						if bestSpecID then
							local id, name, description, icon = GetSpecializationInfo(bestSpecID);
							if totalItems > 0 then
								chance = 100 / (totalItems - specHits[id]);
								color = GetProgressColor(chance / 100);
								tooltipInfo[#tooltipInfo + 1] = {
									left = L.HEADER_NAMES[app.HeaderConstants.BONUS_ROLL],
									right = "|T" .. icon .. ":0|t " .. name .. " |c"..color..GetNumberWithZeros(chance, 1) .. "%|r",
								}
							else
								tooltipInfo[#tooltipInfo + 1] = {
									left = L.HEADER_NAMES[app.HeaderConstants.BONUS_ROLL],
									right = "N/A",
								}
							end
						end
					end
				end
			end
		end
	end

	-- Show info about if this Thing cannot be collected due to a custom collectibility
	-- restriction on the Thing which this character does not meet
	if reference.customCollect then
		local customCollectEx;
		local requires = L.REQUIRES;
		for i,c in ipairs(reference.customCollect) do
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
	local isDebugMode, sqs, bestMatch = app.MODE_DEBUG, nil, nil;
	if reference.sourceQuests and (not reference.saved or isDebugMode) then
		local prereqs, bc = {}, {};
		for i,sourceQuestID in ipairs(reference.sourceQuests) do
			if sourceQuestID > 0 and (isDebugMode or not IsQuestFlaggedCompleted(sourceQuestID)) then
				sqs = SearchForField("questID", sourceQuestID);
				if #sqs > 0 then
					bestMatch = nil;
					for j,sq in ipairs(sqs) do
						if sq.questID == sourceQuestID then
							if isDebugMode or (not IsQuestFlaggedCompleted(sourceQuestID) and app.GroupFilter(sq)) then
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
							bc[#bc + 1] = bestMatch
						else
							prereqs[#prereqs + 1] = bestMatch
						end
					end
				else
					prereqs[#prereqs + 1] = app.CreateQuest(sourceQuestID)
				end
			end
		end
		if prereqs and #prereqs > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.PREREQUISITE_QUESTS,
			}
			AddQuestInfoToTooltip(tooltipInfo, prereqs, reference);
		end
		if bc and #bc > 0 then
			tooltipInfo[#tooltipInfo + 1] = {
				left = L.BREADCRUMBS_WARNING,
			}
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
		if reference.nextQuests then
			local isBreadcrumbAvailable = true;
			local nextq, nq = {}, nil;
			for _,nextQuestID in ipairs(reference.nextQuests) do
				if nextQuestID > 0 then
					nq = SearchForObject("questID", nextQuestID, "field");
					-- existing quest group
					if nq then
						nextq[#nextq + 1] = nq
					else
						nextq[#nextq + 1] = app.CreateQuest(nextQuestID)
					end
					if IsQuestFlaggedCompleted(nextQuestID) then
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

	-- Show information about it becoming locked due to some criteira
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
				if not reference.working and IsRetrieving(text) then
					reference.working = true
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
		local owner = self:GetParent():GetParent();
		if owner and owner.isLocked then
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
	tooltip.ATT_AttachComplete = not reference.working;
end)