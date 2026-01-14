-- App locals
local _, app = ...;
local contains = app.contains;
local AssignChildren, CloneClassInstance, CloneReference, wipearray
	= app.AssignChildren, app.CloneClassInstance, app.CloneReference, app.wipearray;
local IsQuestFlaggedCompleted, IsQuestReadyForTurnIn = app.IsQuestFlaggedCompleted, app.IsQuestReadyForTurnIn;
local DESCRIPTION_SEPARATOR = app.DESCRIPTION_SEPARATOR;
local GetDeepestRelativeValue = app.GetDeepestRelativeValue;
local GetProgressTextForRow = app.GetProgressTextForRow;
local GetRelativeField, GetRelativeValue = app.GetRelativeField, app.GetRelativeValue;
local ResolveSymbolicLink = app.ResolveSymbolicLink;
local SearchForField = app.SearchForField;
local MergeObject = app.MergeObject;
local MergeObjects = app.MergeObjects;
local L = app.L;

-- Global locals
local ipairs, pairs, pcall, tinsert, tremove, math_floor
	= ipairs, pairs, pcall, tinsert, tremove, math.floor;
local C_QuestLog_IsOnQuest, GetTimePreciseSec = C_QuestLog.IsOnQuest, GetTimePreciseSec;
local GetTradeSkillTexture = app.WOWAPI.GetTradeSkillTexture;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local IsModifierKeyDown = IsModifierKeyDown;

---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip;

-- Implementation
-- Processing Functions (Coroutines)
local UpdateGroups;
local function UpdateGroup(group, parent)
	local visible = false;

	-- Determine if this user can enter the instance or acquire the item.
	if app.GroupFilter(group) then
		-- Check if this is a group
		if group.g then
			-- If this item is collectible, then mark it as such.
			if group.collectible then
				-- An item is a special case where it may have both an appearance and a set of items
				group.progress = group.collected and 1 or 0;
				group.total = 1;
			else
				-- Default to 0 for both
				group.progress = 0;
				group.total = 0;
			end

			-- Update the subgroups recursively...
			visible = UpdateGroups(group, group.g);

			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				if not group.sourceIgnored then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + group.total;
					parent.progress = (parent.progress or 0) + group.progress;
				end

				-- If this group is trackable, then we should show it.
				if group.total > 0 and app.GroupVisibilityFilter(group) then
					visible = true;
				elseif app.ShowTrackableThings(group) and not group.saved then
					visible = true;
				elseif ((group.itemID and group.f) or group.sym) and app.Settings.Collectibles.Loot then
					visible = true;
				end
			else
				visible = false;
			end
		else
			-- If the 'can equip' filter says true
			if app.GroupFilter(group) then
				if group.collectible then
					-- Increment the parent group's totals.
					parent.total = (parent.total or 0) + 1;

					-- If we've collected the item, use the "Show Collected Items" filter.
					if group.collected then
						parent.progress = (parent.progress or 0) + 1;
						if app.CollectedItemVisibilityFilter(group) then
							visible = true;
						end
					else
						visible = true;
					end
				elseif app.ShowTrackableThings(group) and not group.saved then
					-- If this group is trackable, then we should show it.
					visible = true;
				elseif ((group.itemID and group.f) or group.sym) and app.Settings.Collectibles.Loot then
					visible = true;
				elseif app.MODE_DEBUG then
					visible = true;
				end
			elseif app.MODE_DEBUG then
				visible = true;
			else
				visible = false;
			end
		end
	end

	-- Set the visibility
	group.visible = visible;
	return visible;
end
UpdateGroups = function(parent, g)
	if g then
		local visible = false;
		for i=1,#g,1 do
			local group = g[i];
			if group.OnUpdate then
				--local lastUpdate = GetTimePreciseSec();
				local result = group:OnUpdate(parent, UpdateGroup);
				--local duration = (GetTimePreciseSec() - lastUpdate) * 10000;
				--if duration > 10 then print(group.text, "OnUpdate: ", duration); end
				if not result then
					if UpdateGroup(group, parent) then
						visible = true;
					end
				elseif group.visible then
					visible = true;
				end
			elseif UpdateGroup(group, parent) then
				visible = true;
			end
		end
		return visible;
	end
end

app.UpdateGroups = UpdateGroups;




-- Row Helper Functions
local CreateRow;
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
local function CalculateRowIndicatorTexture(group)
	-- If group is quest and is currently accepted or saved...
	local questID = group.questID;
	if questID and C_QuestLog_IsOnQuest(questID) then
		return app.asset(IsQuestReadyForTurnIn(questID) and "Interface_Questin" or "Interface_Questin_grey");
	elseif group.saved then
		if group.parent and group.parent.locks or group.repeatable then
			return app.asset("known");
		else
			return app.asset("known_green");
		end
	end

	if group.u then
		local phase = L.PHASES[group.u];
		if phase and (not phase.buildVersion or app.GameBuildVersion < phase.buildVersion) then
			return L["UNOBTAINABLE_ITEM_TEXTURES"][phase.state];
		end
	end
	return group.e and L["UNOBTAINABLE_ITEM_TEXTURES"][app.Modules.Events.FilterIsEventActive(group) and 5 or 4];
end
local function ExpandGroupsRecursively(group, expanded, manual)
	if group.g and (not group.itemID or manual) then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.g) do
			ExpandGroupsRecursively(subgroup, expanded, manual);
		end
	end
end
local function HasExpandedSubgroup(group)
	-- Returns true if any subgroup of the provided group is currently expanded, otherwise nil
	if group and group.g then
		for _,subgroup in ipairs(group.g) do
			-- dont need recursion since a group has to be expanded for a subgroup to be visible within it
			if subgroup.expanded then
				return true;
			end
		end
	end
end
app.ExpandGroupsRecursively = ExpandGroupsRecursively;

local __Summary = {}
local function BuildDataSummary(data)
	-- NOTE: creating a new table is *slightly* (0-0.5%) faster but generates way more garbage memory over time
	wipearray(__Summary)
	local requireSkill = data.requireSkill
	if requireSkill then
		local profIcon = GetTradeSkillTexture(requireSkill) or GetSpellIcon(requireSkill)
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
	__Summary[#__Summary + 1] = GetProgressTextForRow(data) or "---"
	return app.TableConcat(__Summary, nil, "", "")
end

local IconPortraitTooltipExtraSettings = {
	questID = "IconPortraitsForQuests",
};
local SetPortraitTexture = _G["SetPortraitTexture"];
local SetPortraitTextureFromDisplayID = _G["SetPortraitTextureFromCreatureDisplayID"];
local function SetPortraitIcon(self, data, x)
	if app.Settings:GetTooltipSetting("IconPortraits") then
		local extraSetting = IconPortraitTooltipExtraSettings[data.key];
		if not extraSetting or app.Settings:GetTooltipSetting(extraSetting) then
			local displayID = app.GetDisplayID(data);
			if displayID then
				SetPortraitTextureFromDisplayID(self, displayID);
				self:SetWidth(self:GetHeight());
				self:SetTexCoord(0, 1, 0, 1);
				return true;
			elseif data.unit and not data.icon then
				SetPortraitTexture(self, data.unit);
				self:SetWidth(self:GetHeight());
				self:SetTexCoord(0, 1, 0, 1);
				return true;
			end
		end
	end

	-- Fallback to a traditional icon.
	if data.atlas then
		self:SetAtlas(data.atlas);
		self:SetWidth(self:GetHeight());
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
		self:SetWidth(self:GetHeight());
		self:SetTexture(data.icon);
		local texcoord = data.texcoord;
		if texcoord then
			self:SetTexCoord(texcoord[1], texcoord[2], texcoord[3], texcoord[4]);
		else
			self:SetTexCoord(0, 1, 0, 1);
		end
		return true;
	end
end
local function SetRowData(self, row, data)
	if row.ref ~= data then
		-- New data, update everything
		row.ref = data;
		row.summaryText = nil;
		if not data then
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

		local font = data.font or "GameFontNormal";
		if font ~= row.lastFont then
			row.Label:SetFontObject(font);
			row.Summary:SetFontObject(font);
			row.lastFont = font;
		end

		-- Every valid row has a summary and label
		row.Label:SetPoint("RIGHT", row.Summary, "LEFT", 0, 0);
		row.Summary:Show();
		row.Label:Show();
		row:Show();

		-- Calculate the indent
		local indent = ((CalculateRowIndent(data) * 8) or 0) + 8;
		row.Texture.Background:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.Texture.Border:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.Texture:SetPoint("LEFT", row, "LEFT", indent, 0);
		row.indent = indent;

		-- Calculate the back color
		local back = CalculateRowBack(data);
		if back then
			row.back = back;
			if back > 0 then
				row.Background:SetAlpha(back);
				row.Background:Show();
			else
				row.Background:Hide();
			end
		end
	elseif not data then
		return;	-- Already cleared
	end

	-- Update the Summary Text (this will be the thing that updates the most)
	local summary = data.summary or BuildDataSummary(data);
	local oldSummary = row.summaryText;
	if oldSummary then
		if summary then
			if oldSummary ~= summary then
				row.Summary:SetText(summary);
				row.summaryText = summary;
				self.smudged = true;	-- Mark this as smudged, so that it knowns to Update the rows completely. (this means that something changed its state)
			end
		else
			row.Summary:SetText((data.g and not data.expanded and #data.g > 0 and "+++") or "---");
			row.summaryText = nil;
			self.smudged = true;	-- Mark this as smudged, so that it knowns to Update the rows completely. (this means that something changed its state)
		end
	else
		if summary then
			row.Summary:SetText(summary);
			row.summaryText = summary;
		else
			row.Summary:SetText((data.g and not data.expanded and #data.g > 0 and "+++") or "---");
		end
	end

	-- Determine the Indicator Texture
	local indicatorTexture = CalculateRowIndicatorTexture(data);

	-- Check to see what the text is currently
	local text = data.text;
	if text ~= row.text then
		if not text then
			text = RETRIEVING_DATA;
			self.processingLinks = true;
		elseif text:match(RETRIEVING_DATA) or text:find("^%[%]") or text:find("%[]") then
			-- This means the link is still rendering
			self.processingLinks = true;
		else
			row.text = text;
		end
		row.Label:SetText(app.TryColorizeName(data, text));
		row:SetHeight(select(2, row.Label:GetFont()) + 4);
	end

	-- If the data has a texture, assign it.
	if SetPortraitIcon(row.Texture, data) and row.Texture:GetTextureFilePath() then
		row.Texture:Show();
		row.Label:SetPoint("LEFT", row.Texture, "RIGHT", 2, 0);

		-- If we have a texture, let's assign it.
		if indicatorTexture then
			row.Indicator:SetTexture(indicatorTexture);
			row.Indicator:SetPoint("RIGHT", row.Texture, "LEFT", -2, 0);
			row.Indicator:Show();
		else
			row.Indicator:Hide();
		end
	else
		row.Texture:Hide();
		row.Label:SetPoint("LEFT", row, "LEFT", row.indent, 0);

		-- If we have a texture, let's assign it.
		if indicatorTexture then
			row.Indicator:SetTexture(indicatorTexture);
			row.Indicator:SetPoint("RIGHT", row, "LEFT", row.indent, 0);
			row.Indicator:Show();
		else
			row.Indicator:Hide();
		end
	end
end
local function RedrawVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end

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
end
local function UpdateVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end
	if self:GetHeight() > 48 then self.ScrollBar:Show(); else self.ScrollBar:Hide(); end

	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local totalRowCount = #self.rowData;
	if totalRowCount > 0 then
		-- Ensure that the first row doesn't move out of position.
		local container = self.Container;
		local row = container.rows[1] or CreateRow(container);
		SetRowData(self, row, self.rowData[1]);

		-- Fill the remaining rows up to the (visible) row count.
		local current, rowCount, containerHeight, totalHeight =
			math.max(1, math.min(self.CurrentIndex, totalRowCount)) + 1, 1, container:GetHeight(), row:GetHeight();

		for i=2,totalRowCount do
			row = container.rows[i] or CreateRow(container);
			SetRowData(self, row, self.rowData[current]);
			totalHeight = totalHeight + row:GetHeight();
			if totalHeight > containerHeight then
				break;
			else
				current = current + 1;
				rowCount = rowCount + 1;
			end
		end

		-- Hide the extra rows if any exist
		for i=math.max(2, rowCount + 1),#container.rows do
			local row = container.rows[i];
			if row.ref then
				SetRowData(self, row, nil);
			else
				break;
			end
		end
		self:SetMinMaxValues(rowCount, totalRowCount + 1);

		-- The data is smudged, meaning it needs to be Updated.
		if self.smudged then
			self.smudged = nil;
			self:Update(true);
		end

		-- If the rows need to be processed again, do so next update.
		if self.processingLinks then
			self:StartATTCoroutine("Process Links", function()
				while self.processingLinks do
					self.processingLinks = nil;
					coroutine.yield();
					self:Redraw();
				end
				if self.UpdateDone then
					self:StartATTCoroutine("UpdateDone", function()
						coroutine.yield();
						self:StartATTCoroutine("UpdateDoneP2", function()
							coroutine.yield();
							self:UpdateDone();
						end);
					end);
				end
			end);
		elseif self.UpdateDone and rowCount > 5 then
			self:StartATTCoroutine("UpdateDone", function()
				coroutine.yield();
				self:StartATTCoroutine("UpdateDoneP2", function()
					coroutine.yield();
					self:UpdateDone();
				end);
			end);
		end
	else
		self:Hide();
	end
end
local function IsSelfOrChild(self, focus)
	-- This function helps validate that the focus is within the local hierarchy.
	return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
local function StopMovingOrSizing(self)
	if self.isMoving then
		self:StopMovingOrSizing();
		self.isMoving = false;
		self:RecordSettings();
	end
end
local function StartMovingOrSizing(self)
	if not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
			self:StartSizing();
			self:StartATTCoroutine("StartMovingOrSizing (Sizing)", function()
				while self.isMoving do
					self:Refresh();
					coroutine.yield();
				end
				self:RecordSettings();
			end);
		elseif self:IsMovable() then
			self:StartMoving();
		end
	end
end
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		-- If the row data itself has an OnClick handler... execute that first.
		if reference.OnClick and reference.OnClick(self, button) then
			return true;
		end

		local window = self:GetParent():GetParent();
		if IsShiftKeyDown() then
			if button == "RightButton" then
				if app.Settings:GetTooltipSetting("Sort:Progress") then
					app.print("Sorting selection by total progress...");
					app:StartATTCoroutine("Sorting", function()
						app.SortGroup(reference, "progress");
						self:GetParent():GetParent():Update();
						app.print("Finished Sorting.");
					end);
				else
					app.print("Sorting selection alphabetically...");
					app:StartATTCoroutine("Sorting", function()
						app.SortGroup(reference, "name");
						self:GetParent():GetParent():Update();
						app.print("Finished Sorting.");
					end);
				end
				return true;
			end

			-- If we're at the Auction House
			local isTSMOpen = TSM_API and TSM_API.IsUIVisible("AUCTION");
			if isTSMOpen or (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
				local missingItems = {};
				app.Search.SearchForMissingItemsRecursively(reference, missingItems);
				local count = #missingItems;
				if count < 1 then
					app.print("No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.");
					return true;
				end
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
						tinsert(arr, key);
					end
					Auctionator.API.v1.MultiSearch(L["TITLE"], arr);
					return;
				end

				-- Attempt to search manually with the link.
				local link = reference.link or reference.silentLink;
				if link and HandleModifiedItemClick(link) then
					if AuctionHouseFrame.SearchBar then
						AuctionHouseFrame.SearchBar:StartSearch();
					else
						AuctionFrameBrowse_Search();
					end
				end
				return true;
			else
				-- Not at the Auction House
				-- If this reference has a link, then attempt to preview the appearance or write to the chat window.
				local link = reference.link or reference.silentLink;
				if link then
					if HandleModifiedItemClick(link) or ChatEdit_InsertLink(link) then return true; end
					local _, dialog = StaticPopup_Visible("ALL_THE_THINGS_EDITBOX");
					if dialog then dialog.editBox:SetText(link); return true; end
				end
				if button == "LeftButton" then app.RefreshCollections(); end
				return true;
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
				if link and HandleModifiedItemClick(link) then
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
				ExpandGroupsRecursively(reference, not reference.expanded or (self.index < 1 and not window.fullCollapsed), true);
				window:Update();
				return true;
			end
		end

		-- All non-Shift Right Clicks open a mini list or the settings.
		if button == "RightButton" then
			if IsAltKeyDown() then
				app.AddTomTomWaypoint(reference, false);
			elseif self.index > 0 then
				app:CreateMiniListForGroup(self.ref);
			else
				app.Settings:Open();
			end
		elseif self.index > 0 then
			reference.expanded = not reference.expanded;
			window:Update();
		elseif not reference.expanded then
			reference.expanded = true;
			window:Update();
		else
			-- Allow the First Frame to move the parent.
			if window:IsMovable() then
				self:SetScript("OnMouseUp", function(self)
					self:SetScript("OnMouseUp", nil);
					StopMovingOrSizing(window);
				end);
				StartMovingOrSizing(window);
			end
		end
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
			--print("Modifier change detected!");
		elseif tooltip.ATT_AttachComplete == true then
			--print("Ignoring refresh.");
			return;
		end
	else
		tooltip.ATT_IsModifierKeyDown = modifier;
		tooltip.ATT_IsRefreshing = true;
		tooltip:ClearATTReferenceTexture();
	end
	--print("RowOnEnter", "Rebuilding...");


	-- Always display tooltip data when viewing information from our windows.
	local wereTooltipIntegrationsDisabled = not app.Settings:GetTooltipSetting("Enabled");
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", true); end

	-- Build tooltip information.
	local tooltipInfo = {};
	tooltip:ClearLines();
	app.ActiveRowReference = reference;
	local anchor = self:GetParent():GetParent().TooltipAnchor;
	if not anchor then
		if self:GetCenter() > (UIParent:GetWidth() / 2) and (not AuctionFrame or not AuctionFrame:IsVisible()) then
			anchor = "ANCHOR_LEFT";
		else
			anchor = "ANCHOR_RIGHT";
		end
	end
	tooltip:SetOwner(self, anchor);

	-- Attempt to show the object as a hyperlink in the tooltip
	local linkSuccessful;
	if reference.key ~= "encounterID" and reference.key ~= "instanceID" and reference.key ~= "questID" then
		-- Encounter & Instance Links break the tooltip, Quest Links are inconsistent.
		local link = reference.link or reference.silentLink
		if link and link:sub(1, 1) ~= "[" then
			local ok, success = pcall(tooltip.SetHyperlink, tooltip, link);
			if success then
				linkSuccessful = true;
			end
			--print("Link:", link:gsub("|","\\"));
			--print("Link Result!", success, reference.key, reference.__type);
		end

		-- Only if the link was unsuccessful.
		if (not linkSuccessful or tooltip.ATT_AttachComplete == nil) and reference.currencyID then
			---@diagnostic disable-next-line: redundant-parameter
			tooltip:SetCurrencyByID(reference.currencyID, 1);
		end
	end

	-- Default top row line if nothing is generated from a link.
	if tooltip:NumLines() < 1 then
		tinsert(tooltipInfo, { left = reference.text });
	end

	local title = reference.title;
	if title then
		local left, right = DESCRIPTION_SEPARATOR:split(title);
		if right then
			tinsert(tooltipInfo, {
				left = left,
				right = right,
				r = 1, g = 1, b = 1,
			});
		else
			tinsert(tooltipInfo, {
				left = title,
				r = 1, g = 1, b = 1,
			});
		end
	elseif reference.retries then
		tinsert(tooltipInfo, {
			left = "Failed to acquire information. This may have been removed from the game.",
			r = 1, g = 1, b = 1,
		});
	end

	-- Process all Information Types
	if tooltip.ATT_AttachComplete == nil then
		app.ProcessInformationTypes(tooltipInfo, reference);
	end

	-- Show Breadcrumb information
	if reference.isBreadcrumb then tinsert(tooltipInfo, { left = "This is a breadcrumb quest.", color = app.Colors.Breadcrumb }); end

	-- Show Quest Prereqs
	local isDebugMode = app.MODE_DEBUG;
	if reference.sourceQuests and (isDebugMode or not reference.saved) then
		local currentMapID, prereqs, bc = app.CurrentMapID, {}, {};
		for i,sourceQuestID in ipairs(reference.sourceQuests) do
			if sourceQuestID > 0 and (isDebugMode or not IsQuestFlaggedCompleted(sourceQuestID)) then
				local sqs = SearchForField("questID", sourceQuestID);
				if #sqs > 0 then
					local bestMatch = nil;
					for j,sq in ipairs(sqs) do
						if sq.questID == sourceQuestID and not sq.objectiveID then
							if isDebugMode or (app.RecursiveCharacterRequirementsFilter(sq) and not IsQuestFlaggedCompleted(sourceQuestID)) then
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
							tinsert(bc, bestMatch);
						else
							tinsert(prereqs, bestMatch);
						end
					end
				else
					tinsert(prereqs, app.CreateQuest(sourceQuestID));
				end
			end
		end

		if prereqs and #prereqs > 0 then
			tinsert(tooltipInfo, {
				left = "This quest has an incomplete prerequisite quest that you need to complete first.",
				wrap = true,
			});
			for i,prereq in ipairs(prereqs) do
				local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
				local mapID = app.GetBestMapForGroup(prereq, currentMapID);
				if mapID and mapID ~= currentMapID then text = text .. " (" .. app.GetMapName(mapID) .. ")"; end
				tinsert(tooltipInfo, {
					left = text,
					right = app.GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)),
				});
			end
		end
		if bc and #bc > 0 then
			tinsert(tooltipInfo, {
				left = "This quest has a breadcrumb quest that you may be unable to complete after completing this one.",
				wrap = true,
			});
			for i,prereq in ipairs(bc) do
				local text = "   " .. prereq.questID .. ": " .. (prereq.text or RETRIEVING_DATA);
				local mapID = app.GetBestMapForGroup(prereq, currentMapID);
				if mapID and mapID ~= currentMapID then text = text .. " (" .. app.GetMapName(mapID) .. ")"; end
				tinsert(tooltipInfo, {
					left = text,
					right = app.GetCompletionIcon(IsQuestFlaggedCompleted(prereq.questID)),
				});
			end
		end
	end
	if reference.sourceAchievements and (isDebugMode or not reference.collected) then
		local currentMapID, prereqs, bc = app.CurrentMapID, {}, {};
		for i,sourceAchievementID in ipairs(reference.sourceAchievements) do
			if sourceAchievementID > 0 and (isDebugMode or not ATTAccountWideData.Achievements[sourceAchievementID]) then
				local sas = SearchForField("achievementID", sourceAchievementID);
				if #sas > 0 then
					local bestMatch = nil;
					for j,sa in ipairs(sas) do
						if sa.achievementID == sourceAchievementID and sa.key == "achievementID" then
							if isDebugMode or (app.RecursiveCharacterRequirementsFilter(sa) and not sa.collected) then
								bestMatch = sa;
							end
						end
					end
					if bestMatch then
						tinsert(prereqs, bestMatch);
					end
				else
					tinsert(prereqs, app.CreateAchievement(sourceAchievementID));
				end
			end
		end

		if prereqs and #prereqs > 0 then
			tinsert(tooltipInfo, {
				left = "This has an incomplete prerequisite achievement that you need to complete first.",
				wrap = true,
			});
			for i,prereq in ipairs(prereqs) do
				local text = "   " .. prereq.achievementID .. ": " .. (prereq.text or RETRIEVING_DATA);
				if prereq.isGuild then text = text .. " (" .. GUILD .. ")"; end
				tinsert(tooltipInfo, {
					left = text,
					right = app.GetCompletionIcon(prereq.collected),
				});
			end
		end
	end
	if app.Settings:GetTooltipSetting("Show:TooltipHelp") then
		if reference.g then
			-- If we're at the Auction House
			if (AuctionFrame and AuctionFrame:IsShown()) or (AuctionHouseFrame and AuctionHouseFrame:IsShown()) then
				tinsert(tooltipInfo, {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS_AH") or "TOP_ROW_INSTRUCTIONS_AH"],
					r = 1, g = 1, b = 1,
					wrap = true,
				});
			else
				tinsert(tooltipInfo, {
					left = L[(self.index > 0 and "OTHER_ROW_INSTRUCTIONS") or "TOP_ROW_INSTRUCTIONS"],
					r = 1, g = 1, b = 1,
					wrap = true,
				});
			end
		end
	end

	-- Attach all of the Information to the tooltip.
	app.Modules.Tooltip.AttachTooltipInformation(tooltip, tooltipInfo);
	if not IsRefreshing then tooltip:SetATTReferenceForTexture(reference); end
	tooltip:Show();
	app.ActiveRowReference = nil;

	-- Reactivate the original tooltip integrations setting.
	if wereTooltipIntegrationsDisabled then app.Settings:SetTooltipSetting("Enabled", false); end

	-- Tooltip for something which was not attached via search, so mark it as complete here
	tooltip.ATT_AttachComplete = not reference.working;
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
CreateRow = function(self)
	---@class ATTRowClass: ATTButtonClass
	local row = CreateFrame("Button", nil, self);
	row.index = #self.rows;
	if row.index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		row:SetPoint("TOPLEFT", self.rows[row.index], "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", self.rows[row.index], "BOTTOMRIGHT");
	end
	tinsert(self.rows, row);

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

	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");

	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetPoint("BOTTOM");
	row.Background:SetPoint("RIGHT");
	row.Background:SetPoint("TOP");
	row.Background:SetTexture(136810);

	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(row:GetHeight());

	-- Texture is the icon.
	---@class ATTRowTextureClass: Texture
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(row:GetHeight());
	row.Texture.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Texture.Background:SetPoint("BOTTOM");
	row.Texture.Background:SetPoint("TOP");
	row.Texture.Background:SetWidth(row:GetHeight());
	row.Texture.Border = row:CreateTexture(nil, "BORDER");
	row.Texture.Border:SetPoint("BOTTOM");
	row.Texture.Border:SetPoint("TOP");
	row.Texture.Border:SetWidth(row:GetHeight());

	-- Forced/External Update of a Tooltip produced by an ATT row to use the same function which created it
	row.UpdateTooltip = RowOnEnter;

	-- Clear the Row Data Initially
	SetRowData(self, row, nil);
	return row;
end

-- Window Creation
app.Windows = {};
local defaultBackdrop = {
	bgFile = 137056,
	edgeFile = 137057,
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
local defaultNoEntriesRow = {
	text = "No data was found.",
	preview = app.asset("Discord_2_128"),
	description = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.",
};
local AllWindowSettings;
local function ApplySettingsForWindow(self, windowSettings)
	local oldRecordSettings = self.RecordSettings;
	self.RecordSettings = app.EmptyFunction;
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
	self:SetMovable(windowSettings.movable);
	self:SetResizable(windowSettings.resizable);
	self:SetVisible(windowSettings.visible);
	if windowSettings.backdrop then
		self:SetBackdrop(windowSettings.backdrop);
	end
	if windowSettings.backdropColor then
		local r, g, b, a = unpack(windowSettings.backdropColor);
		self:SetBackdropColor(r or 0, g or 0, b or 0, a or 1);
	end
	if windowSettings.borderColor then
		local r, g, b, a = unpack(windowSettings.borderColor);
		self:SetBackdropBorderColor(r or 0, g or 0, b or 0, a or 1);
	end
	if windowSettings.Progress and self.data then
		self.data.progress = windowSettings.Progress;
		self.data.total = windowSettings.Total;
	end
	self.RecordSettings = oldRecordSettings;
end
local function BuildSettingsForWindow(self, windowSettings, isForDefaults)
	local scale = self:GetScale();
	if scale then
		windowSettings.scale = scale;
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
	else
		windowSettings.scale = 1;
		windowSettings.x = 0;
		windowSettings.y = 0;
	end
	windowSettings.visible = not not self:IsVisible();
	windowSettings.movable = not not self:IsMovable();
	windowSettings.resizable = not not self:IsResizable();
	if isForDefaults then
		windowSettings.backdrop = defaultBackdrop;
		if app.IsReady and app.Settings.GetWindowColors then
			local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = app.Settings.GetWindowColors()
			windowSettings.backdropColor = { rBg, gBg, bBg, aBg };
			windowSettings.borderColor = { rBd, gBd, bBd, aBd };
		else
			windowSettings.backdropColor = { 0, 0, 0, 1 };
			windowSettings.borderColor = { 1, 1, 1, 1 };
		end
	else
		windowSettings.backdrop = self:GetBackdrop();
		local r, g, b, a = self:GetBackdropColor();
		windowSettings.backdropColor = { r or 0, g or 0, b or 0, a or 1 };
		r, g, b, a = self:GetBackdropBorderColor();
		windowSettings.borderColor = { r or 0, g or 0, b or 0, a or 1 };
	end
	if self.data then
		windowSettings.Progress = self.data.progress;
		windowSettings.Total = self.data.total;
	end
end
local function ClearSettingsForWindow(self)
	if not AllWindowSettings then return; end
	AllWindowSettings[self.Suffix] = nil;
end
local function LoadSettingsForWindow(self)
	if not AllWindowSettings then return; end
	local name = self.Suffix;
	local settings = AllWindowSettings[name];
	if not settings then
		settings = {};
		AllWindowSettings[name] = settings;
	end
	self.Settings = settings;
	self:Load();
end
app.AddEventHandler("OnStartup", function()
	-- Setup the Saved Variables if they aren't already.
	local savedVariables = AllTheThingsSavedVariables;
	if not AllTheThingsSavedVariables then
		savedVariables = {};
		AllTheThingsSavedVariables = savedVariables;
	end
	local windowSettings = savedVariables.Windows;
	if not windowSettings then
		windowSettings = {};
		savedVariables.Windows = windowSettings;
	end

	-- Rename the old mini list settings container.
	local oldMiniListData = windowSettings.CurrentInstance;
	if oldMiniListData then
		print("Found old Mini List Data settings");
		windowSettings.CurrentInstance = nil;
		windowSettings.MiniList = oldMiniListData;
	end

	-- Load the Window Settings
	if AllWindowSettings then
		return;
	end
	AllWindowSettings = windowSettings;
	local dynamicWindows = {};
	for name, settings in pairs(windowSettings) do
		if settings.dynamic then
			if settings.visible then
				dynamicWindows[name] = settings;
			else
				windowSettings[name] = nil;
			end
		end
	end

	-- Load all of the windows other than Prime.
	local primeWindow = app.Windows.Prime;
	app.Windows.Prime = nil;
	for name, window in pairs(app.Windows) do
		LoadSettingsForWindow(window);
		dynamicWindows[name] = nil;
	end

	-- Okay, now load Prime last.
	app.Windows.Prime = primeWindow;
	LoadSettingsForWindow(primeWindow);
	dynamicWindows.Prime = nil;

	for name,settings in pairs(dynamicWindows) do
		settings.visible = false;
		app:CreateMiniListFromSource(settings.key, settings.id, settings.sourcePath);
	end
end);

app:RegisterEvent("PLAYER_LOGOUT");
app.events.PLAYER_LOGOUT = function()
	for _, window in pairs(app.Windows) do
		window:Save();
	end
end;

local function SetWindowData(self, data)
	if self.data ~= data then
		self.data = data;
		self:DelayedRebuild();
	end
end
local function SetWindowVisible(self, show)
	if show then
		self:Show();
	else
		self:Hide();
	end
end
local function ToggleWindow(self, cmd)
	self:SetVisible(not self:IsVisible());
end
local function ProcessGroup(data, object)
	if app.VisibilityFilter(object) then
		data[#data + 1] = object;
		if object.g and object.expanded then
			-- Delayed sort operation for this group prior to being shown
			local sortType = object.SortType;
			if sortType then app.SortGroup(object, sortType); end
			for i=1,#object.g,1 do
				ProcessGroup(data, object.g[i]);
			end
		end
	end
end
local function UpdateWindow(self, force, trigger)
	-- If this window doesn't have data, do nothing.
	local data = self.data;
	if not data then
		self:DelayedRebuild();
		return;
	end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
	if force or self:IsShown() then
		data.expanded = true;
		if self.forceFullDataRefresh then
			local rows = self.Container.rows;
			for i=1,#rows,1 do
				SetRowData(self, rows[i], nil);
			end
			data.progress = 0;
			data.total = 0;
			--local lastUpdate = GetTimePreciseSec();
			if not (data.OnUpdate and data:OnUpdate()) then
				UpdateGroups(data, data.g);
			end
			self.forceFullDataRefresh = nil;
			--print("UpdateGroups RESULT", (GetTimePreciseSec() - lastUpdate) * 10000);
		end
		ProcessGroup(self.rowData, data);

		-- Does this user have everything?
		if data.total and data.total > 0 then
			if data.total <= data.progress then
				if #self.rowData < 1 then
					data.back = 1;
					tinsert(self.rowData, data);
				end
				if self.missingData then
					self.missingData = nil;
					--print("UNSETTING MISSING DATA", trigger, self.AllowCompleteSound);
					if trigger and self.AllowCompleteSound then
						--print("PLAY COMPLETE SOUND", self.data.text);
						app.Audio:PlayCompleteSound();
					end
				end
				if not self.ignoreNoEntries then
					local noentries = self.noEntriesRow or defaultNoEntriesRow;
					noentries.parent = self.data;
					tinsert(self.rowData, noentries);
				end
			else
				self.missingData = true;
			end
		else
			self.missingData = nil;
		end
		return true;
	end
end
local function RedrawWindows()
	for name, window in pairs(app.Windows) do
		window:Redraw();
	end
end
function app:RefreshWindows()
	for name, window in pairs(app.Windows) do
		window:Refresh();
	end
end
function app:UpdateWindows(source, force, trigger)
	if trigger then trigger = source; end
	for name, window in pairs(app.Windows) do
		local window_oldUpdate = window.Update;
		window.UpdatePending = true;
		window.Update = function(self, ...)
			local result = window_oldUpdate(self, ...);
			self.Update = window_oldUpdate;
			self.UpdatePending = nil;
			return result;
		end
	end
	for name, window in pairs(app.Windows) do
		if window.UpdatePending then
			window:Update(force, trigger);
		end
	end
end

-- When settings that affect the display of a window change, we want to redraw the windows.
app.AddEventHandler("OnRenderDirty", RedrawWindows);
app.AddEventHandler("OnSavesUpdated", RedrawWindows);

local refreshDataCooldown = 5;
local refreshFromTrigger;
local currentlyRefreshingData = false;
local LastSettingsChangeUpdate;
local function RefreshData(source, trigger)
	app.WipeSearchCache();
	refreshDataCooldown = 5;
	if trigger then
		--print("REFRESH_DATA", source, trigger);
		trigger = source;
	end
	refreshFromTrigger = refreshFromTrigger or trigger;
	if currentlyRefreshingData then return; end
	app:StartATTCoroutine("RefreshData", function()
		currentlyRefreshingData = true;

		-- While the player is in combat, wait for combat to end.
		while InCombatLockdown() do coroutine.yield(); end

		-- Wait 1/2 second. For multiple simultaneous requests, each one will reapply the delay.
		while refreshDataCooldown > 0 do
			refreshDataCooldown = refreshDataCooldown - 1;
			coroutine.yield();
		end

		-- Execute the OnRecalculate handlers.
		app.HandleEvent("OnRecalculate");

		-- Send an Update to the Windows to Rebuild their Row Data
		if app.forceFullDataRefresh then
			app.forceFullDataRefresh = nil;

			if LastSettingsChangeUpdate ~= app._SettingsRefresh then
				LastSettingsChangeUpdate = app._SettingsRefresh;

				app.HandleEvent("OnRecalculate_NewSettings")
			end

			app:UpdateWindows(source, true, refreshFromTrigger);
		else
			app:UpdateWindows(source, nil, refreshFromTrigger);
		end
		refreshFromTrigger = nil;
		currentlyRefreshingData = false;

		-- Execute the OnRefreshComplete handlers.
		app.HandleEvent("OnRefreshComplete");
	end);
end
function app:RefreshDataCompletely(source, trigger)
	app.forceFullDataRefresh = true;
	RefreshData("RefreshDataCompletely:" .. source, trigger);
end
function app:RefreshDataQuietly(source, trigger)
	RefreshData("RefreshDataQuietly:" .. source, trigger);
end

local BuildCategory = function(self, headers, searchResults, inst)
	local count = #searchResults;
	if count == 0 then return; end
	if count > 1 then
		-- Find the most accessible version of the thing.
		app.Sort(searchResults, app.SortDefaults.Accessibility);
	end
	local mostAccessibleSource = searchResults[1];
	inst.sourceParent = mostAccessibleSource;
	local u = GetRelativeValue(mostAccessibleSource, "u");
	if u then
		if u == 1 then return inst; end
		inst.u = u;
	end
	local e = GetRelativeValue(mostAccessibleSource, "e");
	if e then inst.e = e; end
	local awp = GetRelativeValue(mostAccessibleSource, "awp");
	if awp then inst.awp = awp; end
	local rwp = GetRelativeValue(mostAccessibleSource, "rwp");
	if rwp then inst.rwp = rwp; end
	local r = GetRelativeValue(mostAccessibleSource, "r");
	if r then inst.r = r; end
	local c = GetRelativeValue(mostAccessibleSource, "c");
	if c then inst.c = c; end
	local races = GetRelativeValue(mostAccessibleSource, "races");
	if races then inst.races = races; end
	for key,value in pairs(mostAccessibleSource) do
		inst[key] = value;
	end

	local header, headerType = {}, self, nil;
	for j,o in ipairs(searchResults) do
		if o.parent then
			if not o.sourceQuests then
				local questID = GetRelativeValue(o, "questID");
				if questID then
					if not inst.sourceQuests then
						inst.sourceQuests = {};
					end
					if not contains(inst.sourceQuests, questID) then
						tinsert(inst.sourceQuests, questID);
					end
				else
					local sourceQuests = GetRelativeValue(o, "sourceQuests");
					if sourceQuests then
						if not inst.sourceQuests then
							inst.sourceQuests = {};
							for k,questID in ipairs(sourceQuests) do
								tinsert(inst.sourceQuests, questID);
							end
						else
							for k,questID in ipairs(sourceQuests) do
								if not contains(inst.sourceQuests, questID) then
									tinsert(inst.sourceQuests, questID);
								end
							end
						end
					end
				end
			end

			if GetRelativeValue(o, "isHolidayCategory") then
				headerType = "holiday";
			elseif GetRelativeValue(o, "isPromotionCategory") then
				headerType = "promo";
			elseif GetRelativeValue(o, "isPVPCategory") or o.pvp then
				headerType = "pvp";
			elseif GetRelativeValue(o, "isEventCategory") then
				headerType = "event";
			elseif GetRelativeValue(o, "isCraftedCategory") then
				headerType = "crafted";
			elseif o.parent.achievementID then
				headerType = app.HeaderConstants.ACHIEVEMENTS;
			elseif GetRelativeValue(o, "instanceID") then
				headerType = "raid";
			elseif GetRelativeValue(o, "isWorldDropCategory") or o.parent.headerID == app.HeaderConstants.COMMON_BOSS_DROPS then
				headerType = "drop";
			elseif o.parent.questID then
				headerType = app.HeaderConstants.QUESTS;
			elseif GetRelativeField(o.parent, "headerID", app.HeaderConstants.VENDORS) then
				headerType = app.HeaderConstants.VENDORS;
			elseif o.parent.npcID then
				headerType = GetDeepestRelativeValue(o, "headerID") or "drop";
			else
				headerType = GetDeepestRelativeValue(o, "headerID") or "drop";
				if headerType == true then	-- Seriously don't do this...
					headerType = "drop";
				end
			end
			local coords = GetRelativeValue(o, "coords");
			if coords then
				if not inst.coords then
					inst.coords = { unpack(coords) };
				else
					for i,coord in ipairs(coords) do
						tinsert(inst.coords, coord);
					end
				end
			end
		end
	end

	-- Determine the type of header to put the thing into.
	if not headerType then headerType = "drop"; end
	header = headers[headerType];
	if not header then
		if headerType == "holiday" then
			header = app.CreateCustomHeader(app.HeaderConstants.HOLIDAYS);
		elseif headerType == "raid" then
			header = {};
			header.text = GROUP_FINDER;
			header.icon = app.asset("Category_D&R");
		elseif headerType == "promo" then
			header = {};
			header.text = BATTLE_PET_SOURCE_8;
			header.icon = app.asset("Category_Promo");
		elseif headerType == "pvp" then
			header = {};
			header.text = PVP;
			header.icon = app.asset("Category_PvP");
		elseif headerType == "event" then
			header = {};
			header.text = BATTLE_PET_SOURCE_7;
			header.icon = app.asset("Category_Event");
		elseif headerType == "drop" then
			header = {};
			header.text = BATTLE_PET_SOURCE_1;
			header.icon = app.asset("Category_WorldDrops");
		elseif headerType == "crafted" then
			header = {};
			header.text = LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM;
			header.icon = app.asset("Category_Crafting");
		elseif type(headerType) == "number" then
			header = app.CreateCustomHeader(headerType);
		else
			print("Unhandled Header Type", headerType);
		end
		if not headers[headerType] then
			headers[headerType] = header;
			tinsert(self.g, header);
			header.parent = self;
			header.g = {};
		end
	end
	inst.parent = header;
	inst.progress = nil;
	inst.total = nil;
	inst.g = nil;
	MergeObject(header.g, inst);
	return inst;
end
function app:CreateWindow(suffix, settings)
	local window = app.Windows[suffix];
	if not window and settings then
		-- Create the window instance.
		---@class ATTWindow: BackdropTemplate, ATTFrameClass
		window = CreateFrame("Frame", nil, settings.parent or UIParent, BackdropTemplateMixin and "BackdropTemplate");
		app.Windows[suffix] = window;
		window.data = nil;
		window.Settings = nil;
		window.Suffix = suffix;
		window.SetData = SetWindowData;
		window.BuildCategory = BuildCategory;
		window.AllowCompleteSound = settings.AllowCompleteSound;
		window:SetScript("OnMouseDown", StartMovingOrSizing);
		window:SetScript("OnMouseUp", StopMovingOrSizing);
		window:SetScript("OnHide", StopMovingOrSizing);
		window:SetBackdrop(defaultBackdrop);
		window:SetBackdropBorderColor(1, 1, 1, 1);
		window:SetBackdropColor(0, 0, 0, 1);
		window:SetClampedToScreen(true);
		window:SetToplevel(true);
		window:EnableMouse(true);
		window:SetMovable(true);
		window:SetResizable(true);
		if window.SetResizeBounds then
			window:SetResizeBounds(96, 32);
		else
			---@diagnostic disable-next-line: undefined-field
			window:SetMinResize(96, 32);
		end
		window:SetSize(300, 300);
		window:Hide();

		if AllTheThingsSettings then
			if suffix == "Prime" then
				window:SetScale(app.Settings:GetTooltipSetting("MainListScale"));
			else
				window:SetScale(app.Settings:GetTooltipSetting("MiniListScale"));
			end
		end

		-- Whether or not to debug things
		local debugging = settings.Debugging;

		-- Load / Save, which allows windows to keep track of key pieces of information.
		window.ClearSettings = ClearSettingsForWindow;
		if not settings.IgnoreSettings then
			local defaults = {};
			BuildSettingsForWindow(window, defaults, true);
			if settings.Defaults then
				for key,value in pairs(settings.Defaults) do
					defaults[key] = value;
				end
			end
			function window:Load()
				local windowSettings = self.Settings;
				if not windowSettings then
					return;
				end
				setmetatable(windowSettings, { __index = defaults });
				if settings.OnLoad then
					settings.OnLoad(self, windowSettings);
				end
				ApplySettingsForWindow(self, windowSettings);
			end
			function window:RecordSettings()
				local windowSettings = self.Settings;
				if windowSettings then
					BuildSettingsForWindow(self, windowSettings);
				end
				return windowSettings;
			end
			function window:Save()
				local windowSettings = self:RecordSettings();
				if windowSettings and settings.OnSave then
					settings.OnSave(self, windowSettings);
				end
			end
		else
			window.Load = settings.OnLoad or app.EmptyFunction;
			window.RecordSettings = app.EmptyFunction;
			window.Save = settings.OnSave or app.EmptyFunction;
		end



		-- Visible, which overrides the default functions and gives the addon the ability to receive information about it.
		local visible, oldShow, oldHide = false, window.Show, window.Hide;
		function window:Show()
			if not visible then
				visible = true;
				oldShow(self);
				if not self.data then
					self:Rebuild();
				else
					self:Update();
				end
				if settings.OnShow then
					settings.OnShow(self);
				end
				self:RecordSettings();
			end
		end
		function window:Hide()
			if visible then
				visible = false;
				oldHide(self);
				if settings.OnHide then
					settings.OnHide(self);
				end
				self:RecordSettings();
			end
		end
		window.SetVisible = SetWindowVisible;
		window.Toggle = ToggleWindow;

		-- Phase 1: Rebuild, which prepares the data for row data generation (first pass filters checking)
		-- NOTE: You can return true from the rebuild function to call the default on your new group data.
		function window:DefaultRebuild()
			AssignChildren(self.data);
		end
		function window:AssignChildren()
			AssignChildren(self.data);
		end
		function window:ExpandData(expanded)
			ExpandGroupsRecursively(self.data, expanded, true);
		end
		local onRebuild = settings.OnRebuild;
		if onRebuild then
			if debugging then
				function window:ForceRebuild()
					print("ForceRebuild: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						print("ForceRebuild (DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self.data.window = window;
						self:ForceUpdate(true);
					else
						print("ForceRebuild (NO DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
				function window:Rebuild()
					print("Rebuild: " .. suffix);
					local lastUpdate = GetTimePreciseSec();
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						print("Rebuild (DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self.data.window = self;
						self:Update(true);
					else
						print("Rebuild (NO DATA): " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
			else
				function window:ForceRebuild()
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						self.data.window = self;
						self:ForceUpdate(true);
					end
				end
				function window:Rebuild()
					local response = onRebuild(self);
					if self.data then
						if response then self:DefaultRebuild(); end
						self.data.window = self;
						self:Update(true);
					end
				end
			end
		else
			if debugging then
				function window:ForceRebuild()
					if self.data then
						print("ForceRebuild: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						self.data.window = self;
						self:DefaultRebuild();
						print("ForceRebuild: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self.data.window = self;
						self:ForceUpdate(true);
					end
				end
				function window:Rebuild()
					if self.data then
						print("Rebuild: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						self:DefaultRebuild();
						print("Rebuild: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
						self.data.window = self;
						self:Update(true);
					end
				end
			else
				function window:ForceRebuild()
					if self.data then
						self:DefaultRebuild();
						self.data.window = self;
						self:ForceUpdate(true);
					end
				end
				function window:Rebuild()
					if self.data then
						self:DefaultRebuild();
						self.data.window = self;
						self:Update(true);
					end
				end
			end
		end

		-- Phase 2: Update, which takes the prepared data and revalidates it.
		local OnUpdate = settings.OnUpdate or UpdateWindow;
		window.DefaultUpdate = UpdateWindow;
		if debugging then
			function window:ForceUpdate(force, trigger)
				print("ForceUpdate: " .. suffix, force, trigger);
				local lastUpdate = GetTimePreciseSec();
				local result = OnUpdate(self, force, trigger);
				print("ForceUpdate: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					print("UpdateWindow: " .. suffix, force, trigger);
					local lastUpdate = GetTimePreciseSec();
					local result = OnUpdate(self, force, trigger);
					print("UpdateWindow: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					self:Refresh();
					return result;
				else
					self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
				end
			end
		else
			function window:ForceUpdate(force, trigger)
				local result = OnUpdate(self, force, trigger);
				self:Refresh();
				return result;
			end
			function window:Update(force, trigger)
				if self:IsShown() then
					local result = OnUpdate(self, force, trigger);
					self:Refresh();
					return result;
				else
					self.forceFullDataRefresh = self.forceFullDataRefresh or force or trigger;
				end
			end
		end

		-- Phase 3: Refresh, which simply refreshes the rows as they are with the row data.
		local defaultOnRefresh = UpdateVisibleRowData;
		local onRefresh = settings.OnRefresh;
		if onRefresh then
			if debugging then
				function window:Refresh()
					if self:IsShown() then
						print("Refresh: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						if onRefresh(self) then defaultOnRefresh(self); end
						print("Refresh: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
			else
				function window:Refresh()
					if self:IsShown() and onRefresh(self) then defaultOnRefresh(self); end
				end
			end
		else
			if debugging then
				function window:Refresh()
					if self:IsShown() then
						print("Refresh: " .. suffix);
						local lastUpdate = GetTimePreciseSec();
						defaultOnRefresh(self);
						print("Refresh: " .. suffix, (GetTimePreciseSec() - lastUpdate) * 10000);
					end
				end
			else
				--window.Refresh = defaultOnRefresh;
				function window:Refresh()
					if self:IsShown() then defaultOnRefresh(self); end
				end
			end
		end

		-- Phase 4: Redraw, which only updates the rows that already have row data visually.
		function window:Redraw()
			if self:IsShown() then
				RedrawVisibleRowData(self);
			end
		end

		local delays = {};
		window.DelayedCall = function(self, method, delay, force)
			delays[method] = delay or 60;
			window:StartATTCoroutine("DelayedCall::" .. method, function()
				while delays[method] > 0 do
					coroutine.yield();
					delays[method] = delays[method] - 1;
				end
				while InCombatLockdown() do
					coroutine.yield();
				end
				window:StartATTCoroutine("DelayedCall::" .. method .. "PT2", function()
					coroutine.yield();
					window[method](window, force);
				end);
			end);
		end
		function window:DelayedRebuild()
			self:DelayedCall("Rebuild", 1);
		end
		function window:DelayedRefresh()
			self:DelayedCall("Refresh", 5);
		end
		function window:DelayedUpdate(force)
			self:DelayedCall("Update", 60, force);
		end

		-- The Row Container. This contains all of the row frames.
		---@class ATTRowContainer: Frame
		local container = CreateFrame("Frame", nil, window);
		container:SetPoint("TOPLEFT", window, "TOPLEFT", 2, -6);
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
		window.Container = container;
		container.rows = {};
		container:Show();

		local topright = window:CreateTexture(nil, "OVERLAY")
		topright:SetTexture(251963)
		topright:SetPoint("TOPRIGHT", window, "TOPRIGHT", -2, -2);
		topright:SetTexCoord(0.7, 0.745, 0.04, 0.4)
		topright:SetSize(20, 20);
		window.TopRight = topright;

		-- The Close Button. It's assigned as a local variable so you can change how it behaves.
		local closeButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
		closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 0, -1);
		closeButton:SetScript("OnClick", function() window:Toggle(); end);
		closeButton:SetSize(24, 24);
		window.CloseButton = closeButton;

		-- The Scroll Bar.
		window.CurrentIndex = 0;
		---@class ATTWindowScrollBar: Slider
		local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
		container:SetPoint("RIGHT", scrollbar, "LEFT", -2, 0);
		scrollbar:SetPoint("TOP", window, "TOP", 0, -40);
		scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
		scrollbar:SetScript("OnValueChanged", function(o, value)
			if window.CurrentIndex ~= value then
				window.CurrentIndex = value;
				window:Refresh();
			end
		end);
		scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
		scrollbar.back:SetColorTexture(0.1,0.1,0.1,1)
		scrollbar.back:SetAllPoints(scrollbar);
		scrollbar:SetMinMaxValues(1, 1);
		scrollbar:SetValueStep(1);
		scrollbar:SetValue(1);
		scrollbar:SetObeyStepOnDrag(true);
		scrollbar:SetWidth(16);
		scrollbar:EnableMouseWheel(true);
		window:SetScript("OnMouseWheel", function(o, delta)
			scrollbar:SetValue(window.CurrentIndex - delta);
		end);
		window.SetMinMaxValues = function(o, displayedValue, totalValue)
			scrollbar:SetMinMaxValues(1, math.max(1, totalValue - displayedValue));
		end

		-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
		local grip = window:CreateTexture(nil, "ARTWORK");
		grip:SetTexture(app.asset("grip"));
		grip:SetSize(16, 16);
		grip:SetTexCoord(0,1,0,1);
		grip:SetPoint("BOTTOMRIGHT", -5, 5);
		window:EnableMouseWheel(true);
		window.ScrollBar = scrollbar;

		-- Setup the Event Handlers
		local handlers = {};
		window:SetScript("OnEvent", function(o, e, ...)
			if debugging then print(e, ...); end
			local handler = handlers[e];
			if handler then
				handler(window, ...);
			else
				window:Update();
			end
		end);
		if not settings.IgnoreQuestUpdates then
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
		if not settings.IgnorePetBattleEvents and app.GameBuildVersion > 50000 then
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
		window.IsDynamicCategory = settings.IsDynamicCategory;
		window.DynamicCategoryHeader = settings.DynamicCategoryHeader;
		window.DynamicProfessionID = settings.DynamicProfessionID;
		window.IsTopLevel = settings.IsTopLevel;
		if settings.OnInit then
			settings.OnInit(window, handlers);
		end
		if settings.Commands then
			local onCommand;
			if settings.OnCommand then
				onCommand = function(cmd)
					if not settings.OnCommand(window, cmd) then
						window:Toggle(cmd);
					end
				end
			else
				onCommand = function(cmd)
					window:Toggle(cmd);
				end
			end

			window.Commands = settings.Commands;
			window.HideFromSettings = settings.HideFromSettings;
			window.SettingsName = settings.SettingsName or window.Suffix;
			settings.Commands.RootCommandIndex = settings.RootCommandIndex
			app.AddSlashCommands(settings.Commands, onCommand)
			local primaryCommand = "/" .. settings.Commands[settings.RootCommandIndex or 1];
			app.ChatCommands.Help[primaryCommand:lower()] = {
				settings.UsageText or ("Usage: " .. primaryCommand),
				settings.HelpText or ("Toggles the " .. window.SettingsName .. " Window.")
			};
		end
		if settings.TooltipAnchor then
			window.TooltipAnchor = settings.TooltipAnchor;
		end
		LoadSettingsForWindow(window);

		-- Replace some functions.
		local oldSetBackdropColor = window.SetBackdropColor;
		window.SetBackdropColor = function(self, ...)
			oldSetBackdropColor(self, ...);
			self:RecordSettings();
		end
		local oldSetBackdropBorderColor = window.SetBackdropBorderColor;
		window.SetBackdropBorderColor = function(self, ...)
			oldSetBackdropBorderColor(self, ...);
			self:RecordSettings();
		end
		local oldStopMovingOrSizing = window.StopMovingOrSizing;
		window.StopMovingOrSizing = function(self, ...)
			oldStopMovingOrSizing(self, ...);
			self:RecordSettings();
		end
	end
	return window;
end
function app:GetWindow(suffix)
	return app.Windows[suffix];
end
local function CloneReferenceForBuildRequests(group)
	local clone = {};
	if group.g then
		local g = {};
		for i,group in ipairs(group.g) do
			if not group.IgnoreBuildRequests then
				local child = CloneReferenceForBuildRequests(group);
				child.parent = clone;
				tinsert(g, child);
			end
		end
		clone.g = g;
	end
	return setmetatable(clone, { __index = group });
end
function app:BuildFlatSearchFilteredResponse(groups, filter, t)
	if groups then
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if filter(group) then
					tinsert(t, CloneReferenceForBuildRequests(group));
				elseif group.g then
					app:BuildFlatSearchFilteredResponse(group.g, filter, t);
				end
			end
		end
	end
end
function app:BuildFlatSearchResponse(groups, field, value, t)
	if groups then
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				local v = group[field];
				if v and (v == value or (field == "requireSkill" and app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value)) then
					tinsert(t, CloneReferenceForBuildRequests(group));
				elseif group.g then
					app:BuildFlatSearchResponse(group.g, field, value, t);
				end
			end
		end
	end
end
function app:BuildFlatSearchResponseForField(groups, field, t)
	if groups then
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if group[field] then
					tinsert(t, CloneReferenceForBuildRequests(group));
				elseif group.g then
					app:BuildFlatSearchResponseForField(group.g, field, t);
				end
			end
		end
	end
end
function app:BuildSearchFilteredResponse(groups, filter)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if filter(group) then
					if not t then t = {}; end
					tinsert(t, CloneReferenceForBuildRequests(group));
				else
					local response = app:BuildSearchFilteredResponse(group.g, filter);
					if response then
						if not t then t = {}; end
						tinsert(t, setmetatable({g=response}, { __index = group }));
					end
				end
			end
		end
		return t;
	end
end
function app:BuildSearchResponse(groups, field, value)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				local v = group[field];
				if v and (v == value or (field == "requireSkill" and app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value)) then
					if not t then t = {}; end
					tinsert(t, CloneReferenceForBuildRequests(group));
				else
					local response = app:BuildSearchResponse(group.g, field, value);
					if response then
						if not t then t = {}; end
						tinsert(t, setmetatable({g=response}, { __index = group }));
					end
				end
			end
		end
		return t;
	end
end
function app:BuildSearchResponseForField(groups, field)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if group[field] then
					if not t then t = {}; end
					tinsert(t, CloneReferenceForBuildRequests(group));
				else
					local response = app:BuildSearchResponseForField(group.g, field);
					if response then
						if not t then t = {}; end
						tinsert(t, setmetatable({g=response}, { __index = group }));
					end
				end
			end
		end
		return t;
	end
end

-- Dynamic Popouts for Quest Chains and other Groups
local function OnInitForPopout(self, questID, group)
	if group.questID or group.sourceQuests then
		local mainQuest = CloneReference(group);
		if group.parent then mainQuest.sourceParent = group.parent; end
		if mainQuest.sym then
			mainQuest.collectible = true;
			mainQuest.visible = true;
			mainQuest.progress = 0;
			mainQuest.total = 0;
			if not mainQuest.g then
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					for i=#resolved,1,-1 do
						resolved[i] = CloneClassInstance(resolved[i]);
					end
					mainQuest.g = resolved;
				end
			else
				local resolved = ResolveSymbolicLink(group);
				if resolved then
					MergeObjects(mainQuest.g, resolved);
				end
			end
		end

		if questID then mainQuest.collectible = true; end
		local g = { mainQuest };

		-- Check to see if Source Quests are listed elsewhere.
		if questID and not group.sourceQuests then
			local searchResults = SearchForField("questID", questID);
			if #searchResults > 1 then
				for i=1,#searchResults,1 do
					local searchResult = searchResults[i];
					if searchResult.questID == questID and searchResult.sourceQuests then
						searchResult = CloneReference(searchResult);
						searchResult.collectible = true;
						searchResult.g = g;
						mainQuest = searchResult;
						g = { mainQuest };
						break;
					end
				end
			end
		end

		-- Show Quest Prereqs
		if mainQuest.sourceQuests then
			local breakafter = 0;
			local sourceQuests, sourceQuest, subSourceQuests, prereqs = mainQuest.sourceQuests, nil, nil, nil;
			while sourceQuests and #sourceQuests > 0 do
				subSourceQuests = {}; prereqs = {};
				for i,sourceQuestID in ipairs(sourceQuests) do
					sourceQuest = sourceQuestID < 1 and SearchForField("creatureID", math.abs(sourceQuestID)) or SearchForField("questID", sourceQuestID);
					if #sourceQuest > 0 then
						local found = nil;
						for i=1,#sourceQuest,1 do
							-- Only care about the first search result.
							local sq = sourceQuest[i];
							if sq and sq.questID and not sq.objectiveID then
								questID = sq.questID;
								if sq.parent and sq.parent.questID == questID then
									sq = sq.parent;
								end
								if app.GroupFilter(sq) then
									if app.RecursiveCharacterRequirementsFilter(sq) and questID == sourceQuestID then
										if not found or (not found.sourceQuests and sq.sourceQuests) then
											found = sq;
										end
									end
								end
							end
						end
						if found then
							sourceQuest = CloneReference(found);
							sourceQuest.collectible = true;
							sourceQuest.visible = true;
							sourceQuest.hideText = true;
							if found.sourceQuests and #found.sourceQuests > 0 and (not found.saved or app.CollectedItemVisibilityFilter(sourceQuest)) then
								-- Mark the sub source quest IDs as marked (as the same sub quest might point to 1 source quest ID)
								for j, subsourceQuests in ipairs(found.sourceQuests) do
									subSourceQuests[subsourceQuests] = true;
								end
							end
						else
							sourceQuest = nil;
						end
					elseif sourceQuestID > 0 then
						-- Create a Quest Object.
						sourceQuest = app.CreateQuest(sourceQuestID, { ['visible'] = true, ['collectible'] = true, ['hideText'] = true });
					else
						-- Create a NPC Object.
						sourceQuest = app.CreateNPC(math.abs(sourceQuestID), { ['visible'] = true, ['hideText'] = true });
					end

					-- If the quest was valid, attach it.
					if sourceQuest then tinsert(prereqs, sourceQuest); end
				end

				-- Convert the subSourceQuests table into an array
				sourceQuests = {};
				if #prereqs > 0 then
					for sourceQuestID,i in pairs(subSourceQuests) do
						tinsert(sourceQuests, tonumber(sourceQuestID));
					end
					tinsert(prereqs, {
						["text"] = "Upon Completion",
						["description"] = "The above quests need to be completed before being able to complete the quest(s) listed below.",
						["icon"] = 135932,
						["visible"] = true,
						["expanded"] = true,
						["hideText"] = true,
						["g"] = g,
					});
					g = prereqs;
					breakafter = breakafter + 1;
					if breakafter >= 100 then
						app.print("Likely just broke out of an infinite source quest loop. Please report this to the ATT Discord!");
						break;
					end
				end
			end

			-- Clean up the recursive hierarchy. (this removed duplicates)
			sourceQuests = {};
			prereqs = g;
			local orig = g;
			while prereqs and #prereqs > 0 do
				for i=#prereqs,1,-1 do
					local o = prereqs[i];
					if o.key then
						sourceQuest = o.key .. o[o.key];
						if sourceQuests[sourceQuest] then
							-- Already exists in the hierarchy. Uh oh.
							tremove(prereqs, i);
						else
							sourceQuests[sourceQuest] = true;
						end
					end
				end

				if #prereqs > 1 then
					prereqs = prereqs[#prereqs];
					if prereqs then prereqs = prereqs.g; end
					orig = prereqs;
				else
					prereqs = prereqs[#prereqs];
					if prereqs then prereqs = prereqs.g; end
					orig[#orig].g = prereqs;
				end
			end

			-- Clean up standalone "Upon Completion" headers.
			prereqs = g;
			repeat
				local n = #prereqs;
				local lastprereq = prereqs[n];
				if lastprereq.text == "Upon Completion" and n > 1 then
					tremove(prereqs, n);
					local g = prereqs[n-1].g;
					if not g then
						g = {};
						prereqs[n-1].g = g;
					end
					if lastprereq.g then
						for i,data in ipairs(lastprereq.g) do
							tinsert(g, data);
						end
					end
					prereqs = g;
				else
					prereqs = lastprereq.g;
				end
			until not prereqs or #prereqs < 1;
		end
		self.data = {
			text = "Quest Chain Requirements",
			icon = 135932,
			description = "The following quests need to be completed before being able to complete the final quest.",
			hideText = true,
			g = g,
		};
	elseif group.sym then
		self.data = CloneReference(group);
		self.data.collectible = true;
		self.data.visible = true;
		self.data.progress = 0;
		self.data.total = 0;
		if not self.data.g then
			local resolved = ResolveSymbolicLink(group);
			if resolved then
				for i=#resolved,1,-1 do
					resolved[i] = CloneClassInstance(resolved[i]);
				end
				self.data.g = resolved;
			end
		else
			local resolved = ResolveSymbolicLink(group);
			if resolved then
				MergeObjects(self.data.g, resolved);
			end
		end
	elseif group.g then
		-- This is already a container with accurate numbers.
		self.data = group;
	else
		-- This is a standalone item
		group.visible = true;
		if not group.g and (group.itemID or group.currencyID) then
			local cmd = group.link or group.key .. ":" .. group[group.key];
			group = app.GetCachedSearchResults(app.SearchForLink, cmd);
		end
		self.data = group;
	end

	-- Clone the data and then insert it into the Raw Data table.
	self.data = CloneReference(self.data);
	self.data.hideText = true;
	self.data.visible = true;
	self.data.indent = 0;
	self.data.total = 0;
	self.data.progress = 0;
	app.HandleEvent("OnNewPopoutGroup", self.data);
	if self.data.g then
		-- Sort any content added to the Popout data by the Global sort
		app.Sort(self.data.g, app.SortDefaults.Global)
	end

	--[[
	local currencyID = group.currencyID;
	if currencyID and not self.data.usedtobuy then
		local searchResults = SearchForField("currencyIDAsCost", currencyID);
		if #searchResults > 0 then
			local usedtobuy = {};
			usedtobuy.g = {};
			usedtobuy.text = "Used to Buy";
			usedtobuy.icon = 133784;
			usedtobuy.description = "This tooltip dynamically calculates the total number you need based on what is still visible below this header.";
			usedtobuy.OnTooltip = function(t, tooltipInfo)
				local total = 0;
				for _,o in ipairs(t.g) do
					if o.visible then
						if o.cost then
							for k,v in ipairs(o.cost) do
								if v[1] == "c" and v[2] == currencyID then
									total = total + (v[3] or 1);
								end
							end
						end
						if o.providers then
							for k,v in ipairs(o.providers) do
								if v[1] == "c" and v[2] == currencyID then
									total = total + (v[3] or 1);
								end
							end
						end
					end
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = "Total Needed",
					right = total
				};
			end
			MergeObjects(usedtobuy.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, usedtobuy);
			self.data.usedtobuy = usedtobuy;
		end
	end

	local itemID = group.itemID;
	if itemID and not self.data.tradedin then
		local searchResults = SearchForField("itemIDAsCost", itemID);
		if #searchResults > 0 then
			local tradedin = {};
			tradedin.g = {};
			tradedin.text = "Used For";
			tradedin.icon = 133784;
			tradedin.description = "This tooltip dynamically calculates the total number you need based on what is still visible below this header.";
			tradedin.OnTooltip = function(t, tooltipInfo)
				local total = 0;
				for _,o in ipairs(t.g) do
					if o.visible then
						if o.cost then
							for k,v in ipairs(o.cost) do
								if v[1] == "i" and v[2] == itemID then
									total = total + (v[3] or 1);
								end
							end
						end
						if o.providers then
							for k,v in ipairs(o.providers) do
								if v[1] == "i" and v[2] == itemID then
									total = total + (v[3] or 1);
								end
							end
						end
					end
				end
				tooltipInfo[#tooltipInfo + 1] = {
					left = "Total Needed",
					right = total
				};
			end
			MergeObjects(tradedin.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, tradedin);
			self.data.tradedin = tradedin;
		end
	end
	]]--

	local dataKey = self.data.key;
	if dataKey then
		if group.cost and type(group.cost) == "table" then
			local costGroup = {
				["text"] = "Cost",
				["description"] = "The following contains all of the relevant items or currencies needed to acquire this.",
				["icon"] = 133785,
				["g"] = {},
			};
			local costItem;
			for i,c in ipairs(group.cost) do
				costItem = nil;
				if c[1] == "c" then
					costItem = app.CreateCurrencyClass(c[2]);
				elseif c[1] == "i" then
					costItem = app.CreateItem(c[2]);
				end
				if costItem then
					costItem = CloneReference(costItem);
					costItem.visible = true;
					costItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(costGroup.g, costItem);
				end
			end
			if #costGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				MergeObject(self.data.g, costGroup, 1);
			end
		end

		if group.providers or group.qgs or group.crs then
			local sourceGroup = {
				["text"] = "Sources",
				["description"] = "The following contains all of the relevant sources.",
				["icon"] = 133785,
				["OnUpdate"] = app.AlwaysShowUpdate,
				["g"] = {},
			};
			local sourceItem;
			if group.providers then
				for _,p in ipairs(group.providers) do
					sourceItem = nil;
					if p[1] == "n" then
						sourceItem = app.CreateNPC(p[2]);
					elseif p[1] == "o" then
						sourceItem = app.CreateObject(p[2]);
					elseif p[1] == "i" then
						sourceItem = app.CreateItem(p[2]);
					end
					if sourceItem then
						sourceItem.visible = true;
						sourceItem.OnUpdate = app.AlwaysShowUpdate;
						MergeObject(sourceGroup.g, sourceItem);
					end
				end
			end
			if group.crs then
				for _,creatureID in ipairs(group.crs) do
					sourceItem = app.CreateNPC(creatureID);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if group.qgs then
				for _,qg in ipairs(group.qgs) do
					sourceItem = app.CreateNPC(qg);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if #sourceGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				MergeObject(self.data.g, sourceGroup, 1);
			end
		end

		if not self.data.ignoreSourceLookup then
			local searchID = self.data[dataKey];
			if self.data.sym and self.data.sym[1][1] == "partial_achievement" then
				searchID = self.data.sym[1][2];
			end
			local results = app:BuildSearchResponse(app:GetDataCache().g, dataKey, searchID);
			if results and #results > 0 then
				if not self.data.g then self.data.g = {}; end
				for i,result in ipairs(results) do
					tinsert(self.data.g, result);
				end
			end
		else
			-- If this is an achievement, build the criteria within it if possible.
			local achievementID = group.achievementID;
			if achievementID then
				local searchResults = SearchForField("achievementID", achievementID);
				if #searchResults > 0 then
					for i=1,#searchResults,1 do
						local searchResult = searchResults[i];
						if searchResult.achievementID == achievementID and searchResult.criteriaID then
							if not self.data.g then self.data.g = {}; end
							MergeObject(self.data.g, CloneReference(searchResult));
						end
					end
				end
			end
		end
	end
	if group.GetRelatedThings then
		local relatedThingsGroup = {
			["text"] = "Related Things",
			["description"] = "The following contains things that may be related or relevant to the content.",
			["icon"] = 133785,
			["g"] = {},
		};
		local relatedThings = {};
		group.GetRelatedThings(group, relatedThings);
		for i,o in ipairs(relatedThings) do
			MergeObject(relatedThingsGroup.g, CloneReference(o));
		end
		if #relatedThingsGroup.g > 0 then
			if not self.data.g then self.data.g = {}; end
			MergeObject(self.data.g, relatedThingsGroup);
		end
	end

	AssignChildren(self.data);
	UpdateGroups(self.data, self.data.g);
end
function app:CreateMiniListForGroup(group)
	-- Is this an achievement criteria or lacking some achievement information?
	local achievementID = group.achievementID;
	if achievementID and group.criteriaID then
		local searchResults = SearchForField("achievementID", achievementID);
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
		OnInit = function(self)
			OnInitForPopout(self, questID, (group.OnPopout and group:OnPopout()) or group);
		end,
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
				self:ClearSettings();
			end
		end,
	});
	if IsAltKeyDown() then
		app.AddTomTomWaypoint(popout.data, false);
	else
		if not popout.data.expanded then
			ExpandGroupsRecursively(popout.data, true, true);
		end
		popout:SetVisible(true);
	end
	return popout;
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
			local searchResults = SearchForField(key, id);
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
			local ref = #t == 1 and t[1] or CloneClassInstance({ hash = key .. id, key = key, [key] = id, g = t });
			if ref then
				app:CreateMiniListForGroup(ref);
				return;
			end
		end
	end
end
