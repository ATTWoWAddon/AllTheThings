-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local tinsert
	= tinsert;
local coroutine, ipairs,pairs,pcall,math,select,tremove,wipe
	= coroutine, ipairs,pairs,pcall,math,select,tremove,wipe;
local CreateFrame,GetCursorPosition,IsModifierKeyDown
	= CreateFrame,GetCursorPosition,IsModifierKeyDown;

---@class ATTGameTooltip: GameTooltip
local GameTooltip = GameTooltip;
local RETRIEVING_DATA = RETRIEVING_DATA;
local debugprofilestop = debugprofilestop;

-- Expand / Collapse Functions
local SkipAutoExpands = {
	-- Specific HeaderID values should not expand
	headerID = {
		[app.HeaderConstants.ZONE_DROPS] = true,
		[app.HeaderConstants.COMMON_BOSS_DROPS] = true,
		[app.HeaderConstants.HOLIDAYS] = true,
	},
	objectID = {
		[375368] = true,	-- Creation Catalyst Console
		[382621] = true,	-- Revival Catalyst Console
		[456208] = true,	-- The Catalyst
	},
	-- Item/Difficulty as Headers should not expand
	itemID = true,
	difficultyID = true,
}
local function IsAutoExpandSkippedForGroup(group)
	local key = group.key;
	local skipKey = SkipAutoExpands[key];
	if not skipKey then return; end
	return skipKey == true or skipKey[group[key]];
end
local function IsFullyCollapsed(group)
	-- Returns true if any subgroup of the provided group is currently expanded, otherwise nil
	if group then
		local g = group.g
		if g then
			for i=1,#g do
				-- dont need recursion since a group has to be expanded for a subgroup to be visible within it
				if g[i].expanded then
					return true;
				end
			end
		end
	end
end
local function ExpandGroupsRecursively(group, expanded, manual)
	local g = group.g
	if g then
		if manual or (not IsAutoExpandSkippedForGroup(group) and
			-- incomplete things actually exist below itself
			((group.total or 0) > (group.progress or 0)) and
			-- account/debug mode is active or it is not a 'saved' thing for this character
			(app.MODE_DEBUG_OR_ACCOUNT or not group.saved)) then
			group.expanded = expanded;
			for i=1,#g do
				ExpandGroupsRecursively(g[i], expanded, manual);
			end
		end
	end
end
app.ExpandGroupsRecursively = ExpandGroupsRecursively;

-- Portrait Behaviour Functions
local SetPortraitTexture = SetPortraitTexture;
local SetPortraitTextureFromDisplayID = SetPortraitTextureFromCreatureDisplayID;
local PortaitSettingsCache = setmetatable({}, {__index = app.ReturnTrue });
local function SetPortraitIcon(self, data)
	if PortaitSettingsCache.ALL and PortaitSettingsCache[data.key] then
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
				local swatches = data["atlas-color"] or app.EmptyTable;
				self.Border:SetVertexColor(swatches[1] or 0, swatches[2] or 0, swatches[3] or 0, swatches[4] or 1);
			else
				self.Border:SetVertexColor(1, 1, 1, 1);
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
	-- anything without an icon ends up with weird spacing in lists
	self:SetTexture(QUESTION_MARK_ICON);
	return true
end
local function CachePortraitSettings()
	PortaitSettingsCache.ALL = app.Settings:GetTooltipSetting("IconPortraits");
	PortaitSettingsCache.questID = app.Settings:GetTooltipSetting("IconPortraitsForQuests");
end
app.AddEventHandler("OnStartup", CachePortraitSettings);
app.AddEventHandler("OnRedrawWindows", CachePortraitSettings);

-- Row & Group Processing Functions
local UpdateGroups;
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
				if not group:OnUpdate(parent, UpdateGroup) then
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
local function SetRowData(self, row, data)
	if row.ref ~= data then
		-- New data, update everything
		row.__ref = row.ref;
		row.ref = data;
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
		
		if not data.__type or getmetatable(data) == nil then
			print(data.text, " does not have a metatable! This is NOT allowed!", data.__type, getmetatable(data));
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
		local indent = ((CalculateRowIndent(data) or 0) + 1) * 8;
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
	local summaryText = data.summaryText or "";
	local oldSummary = row.summaryText or "";
	if oldSummary ~= summaryText then
		row.Summary:SetText(summaryText);
		row.summaryText = summaryText;
	end
	
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
		row.Label:SetText(text);
		row:SetHeight(select(2, row.Label:GetFont()) + 4);
	end

	-- If the data has a texture, assign it.
	local indicatorTexture = app.GetIndicatorIcon(data);
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
local function UpdateVisibleRowData(self)
	-- app.PrintDebug(app.Modules.Color.Colorize("Refresh:", app.Colors.TooltipDescription),self.Suffix)
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
		-- Ensure that the first row doesn't move out of position.
		local container = self.Container;
		local rows = container.rows;
		local row = rows[1];
		SetRowData(self, row, rowData[1]);

		-- Fill the remaining rows up to the (visible) row count.
		local current, rowCount, containerHeight, totalHeight =
			math.max(1, math.min(self.ScrollBar.CurrentIndex, totalRowCount)) + 1, 1, container:GetHeight(), row:GetHeight();
		for i=2,totalRowCount do
			row = rows[i];
			SetRowData(self, row, rowData[current]);
			totalHeight = totalHeight + row:GetHeight();
			if totalHeight > containerHeight then
				break;
			else
				current = current + 1;
				rowCount = rowCount + 1;
			end
		end

		-- Hide the extra rows if any exist
		for i=math.max(2, rowCount + 1),#rows do
			local row = rows[i];
			if row.ref then
				SetRowData(self, row, nil);
			else
				break;
			end
		end
		self:SetMinMaxValues(rowCount, totalRowCount + 1);

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
local function StopMovingOrSizing(self)
	self:StopMovingOrSizing();
	self.isMoving = false;
	self:RecordSettings();
end
local function StartMovingOrSizing(self)
	if not (self:IsMovable() or self:IsResizable()) or self.isLocked then
		return
	end
	if self.isMoving then
		StopMovingOrSizing(self);
	else
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

		-- All non-Shift Right Clicks open a mini list or the settings.
		local window = self:GetParent():GetParent();
		if button == "RightButton" then
			if IsAltKeyDown() then
				app.AddTomTomWaypoint(reference, false);
			elseif IsShiftKeyDown() then
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
			elseif self.index > 0 then
				app:CreateMiniListForGroup(self.ref);
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
					local name, link = reference.name, reference.link or reference.silentLink;
					if name and link and HandleModifiedItemClick(link) then
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
						if HandleModifiedItemClick(link) or ChatEdit_InsertLink(link) then return true; end
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
					if link and HandleModifiedItemClick(link) then
						return true;
					end
				end

				-- If this reference is anything else, expand the groups.
				if reference.g then
					-- mark the window if it is being fully-collapsed
					if self.index < 1 then
						window.fullCollapsed = IsFullyCollapsed(reference);
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
			else
				if not reference.expanded then
					reference.expanded = true;
					window:Update();
				end
				if window:IsMovable() then
					-- Allow the First Frame to move the parent.
					if IsAltKeyDown() then
						-- Toggle lock/unlock by holding Alt when clicking the header of a Window if it is movable
						window.isLocked = not window.isLocked;
						window:RecordSettings();

						-- force tooltip to refresh since locked state drives tooltip content
						self:GetScript("OnLeave")(self)
						self:GetScript("OnEnter")(self)
					else
						-- Allow the First Frame to move the parent.
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
	local window = self:GetParent():GetParent();
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
		local left, right = app.DESCRIPTION_SEPARATOR:split(title);
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
		-- an item used for a faction which is repeatable
		if reference.itemID and reference.factionID and reference.repeatable then
			tinsert(tooltipInfo, {
				left = L.ITEM_GIVES_REP .. (app.WOWAPI.GetFactionName(reference.factionID) or ("Faction #" .. reference.factionID)) .. "'",
				color = app.Colors.TooltipDescription,
				wrap = true,
			});
		end
		app.ProcessInformationTypes(tooltipInfo, reference);
	end

	-- Show Breadcrumb information
	if reference.isBreadcrumb then tinsert(tooltipInfo, { left = "This is a breadcrumb quest.", color = app.Colors.Breadcrumb }); end

	-- Show Quest Prereqs
	local isDebugMode = app.MODE_DEBUG;
	if reference.sourceQuests and (isDebugMode or not reference.saved) then
		local currentMapID, prereqs, bc = app.CurrentMapID, {}, {};
		for i,sourceQuestID in ipairs(reference.sourceQuests) do
			if sourceQuestID > 0 and (isDebugMode or not app.IsQuestFlaggedCompleted(sourceQuestID)) then
				local sqs = app.SearchForField("questID", sourceQuestID);
				if #sqs > 0 then
					local bestMatch = nil;
					for j,sq in ipairs(sqs) do
						if sq.questID == sourceQuestID and not sq.objectiveID then
							if isDebugMode or (app.RecursiveCharacterRequirementsFilter(sq) and not app.IsQuestFlaggedCompleted(sourceQuestID)) then
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
					right = app.GetCompletionIcon(app.IsQuestFlaggedCompleted(prereq.questID)),
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
					right = app.GetCompletionIcon(app.IsQuestFlaggedCompleted(prereq.questID)),
				});
			end
		end
	end
	if reference.sourceAchievements and (isDebugMode or not reference.collected) then
		local currentMapID, prereqs, bc = app.CurrentMapID, {}, {};
		for i,sourceAchievementID in ipairs(reference.sourceAchievements) do
			if sourceAchievementID > 0 and (isDebugMode or not ATTAccountWideData.Achievements[sourceAchievementID]) then
				local sas = app.SearchForField("achievementID", sourceAchievementID);
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
	-- Add info in tooltip for the header of a Window for whether it is locked or not
	if self.index == 0 then
		if window.isLocked then
			tinsert(tooltipInfo, {
				left = L.TOP_ROW_TO_UNLOCK,
			})
		elseif app.Settings:GetTooltipSetting("Show:TooltipHelp") then
			tinsert(tooltipInfo, {
				left = L.TOP_ROW_TO_LOCK,
			})
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
local function CreateRow(container, rows, i)
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
	local rowHeight = row:GetHeight();

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
	row.Indicator:SetWidth(rowHeight);

	-- Texture is the icon.
	---@class ATTRowTextureClass: Texture
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

	-- Clear the Row Data Initially
	SetRowData(container, row, nil);
	return row;
end

-- Refresh Coroutines (Deprecated)
local InCombatLockdown = InCombatLockdown;
local refreshDataCooldown = 5;
local refreshFromTrigger;
local currentlyRefreshingData = false;
local LastSettingsChangeUpdate;
local function ProcessGroup(data, object)
	if app.VisibilityFilter(object) then
		data[#data + 1] = object;
		local g = object.g;
		if g and object.expanded then
			-- Delayed sort operation for this group prior to being shown
			local sortType = object.SortType;
			if sortType then app.SortGroup(object, sortType); end
			for i=1,#g do
				ProcessGroup(data, g[i]);
			end
		end
	end
end
local function UpdateWindow(self, force, trigger)
	-- If this window doesn't have data, do nothing.
	local data = self.data;
	if not data then return; end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
	if force or self:IsShown() then
		data.expanded = true;
		if self.HasPendingUpdate then
			local rows = self.Container.rows;
			for i=1,#rows,1 do
				SetRowData(self, rows[i], nil);
			end
			data.progress = 0;
			data.total = 0;
			if not (data.OnUpdate and data:OnUpdate()) then
				UpdateGroups(data, data.g);
			end
			self.HasPendingUpdate = nil;
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
					if trigger and self.AllowCompleteSound then
						app.Audio:PlayCompleteSound();
					end
				end
				if not self.ignoreNoEntries then
					local noentries = self.noEntriesRow or app.CreateRawText(L.NO_ENTRIES, {
						OnClick = app.UI.OnClick.IgnoreRightClick,
						preview = app.asset("Discord_2_128"),
						description = L.NO_ENTRIES_DESC,
					});
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
local function UpdateWindows(source, force, trigger)
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
		if app.HasPendingUpdate then
			app.HasPendingUpdate = nil;

			if LastSettingsChangeUpdate ~= app._SettingsRefresh then
				LastSettingsChangeUpdate = app._SettingsRefresh;

				app.HandleEvent("OnRecalculate_NewSettings")
			end

			UpdateWindows(source, true, refreshFromTrigger);
		else
			UpdateWindows(source, nil, refreshFromTrigger);
		end
		refreshFromTrigger = nil;
		currentlyRefreshingData = false;

		-- Execute the OnRefreshComplete handlers.
		app.HandleEvent("OnRefreshComplete");
	end);
end
function app:RefreshDataCompletely(source, trigger)
	app.HasPendingUpdate = true;
	RefreshData("RefreshDataCompletely:" .. source, trigger);
end
function app:RefreshDataQuietly(source, trigger)
	RefreshData("RefreshDataQuietly:" .. source, trigger);
end


-- Window Creation
local AllWindowSettings, AllWindowSettingsLoaded;
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
	self:SetVisible(windowSettings.visible);
	self:SetFrameLevel(9999);
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
		x = 0,
		y = 0,
		width = 300,
		height = 300,
	};
	if app.Settings._Initialize then
		defaults.scale = app.Settings and app.Settings._Initialize and (app.Settings:GetTooltipSetting(self.Suffix == "Prime" and "MainListScale" or "MiniListScale")) or 1;
		local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = app.Settings.GetWindowColors()
		defaults.backdropColor = { rBg, gBg, bBg, aBg };
		defaults.borderColor = { rBd, gBd, bBd, aBd };
	else
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
	self.Settings = settings;
	self:Load(settings);
end
app.AddEventHandler("OnStartup", function()
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
		print("Found old Mini List Data settings");
		windowSettings.CurrentInstance = nil;
		windowSettings.MiniList = oldMiniListData;
	end
	
	-- Clean out non-visible dynamic windows and cache the rest
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

	-- Regenerate the Dynamic Windows
	for name,settings in pairs(dynamicWindows) do
		settings.visible = false;
		app:CreateMiniListFromSource(settings.key, settings.id, settings.sourcePath);
	end
	
	-- Mark Windows as loaded.
	AllWindowSettingsLoaded = true;
end);

-- Window UI Event Handlers
local function BuildCategory(self, headers, searchResults, inst)
	local count = #searchResults;
	if count == 0 then return; end
	if count > 1 then
		-- Find the most accessible version of the thing.
		app.Sort(searchResults, app.SortDefaults.Accessibility);
	end
	local mostAccessibleSource = searchResults[1];
	inst.sourceParent = mostAccessibleSource;
	local u = app.GetRelativeValue(mostAccessibleSource, "u");
	if u then
		if u == 1 then return inst; end
		inst.u = u;
	end
	local e = app.GetRelativeValue(mostAccessibleSource, "e");
	if e then inst.e = e; end
	local awp = app.GetRelativeValue(mostAccessibleSource, "awp");
	if awp then inst.awp = awp; end
	local rwp = app.GetRelativeValue(mostAccessibleSource, "rwp");
	if rwp then inst.rwp = rwp; end
	local r = app.GetRelativeValue(mostAccessibleSource, "r");
	if r then inst.r = r; end
	local c = app.GetRelativeValue(mostAccessibleSource, "c");
	if c then inst.c = c; end
	local races = app.GetRelativeValue(mostAccessibleSource, "races");
	if races then inst.races = races; end
	for key,value in pairs(mostAccessibleSource) do
		inst[key] = value;
	end

	local header, headerType = {}, self, nil;
	for j,o in ipairs(searchResults) do
		if o.parent then
			if not o.sourceQuests then
				local questID = app.GetRelativeValue(o, "questID");
				if questID then
					if not inst.sourceQuests then
						inst.sourceQuests = {};
					end
					if not app.contains(inst.sourceQuests, questID) then
						tinsert(inst.sourceQuests, questID);
					end
				else
					local sourceQuests = app.GetRelativeValue(o, "sourceQuests");
					if sourceQuests then
						if not inst.sourceQuests then
							inst.sourceQuests = {};
							for k,questID in ipairs(sourceQuests) do
								tinsert(inst.sourceQuests, questID);
							end
						else
							for k,questID in ipairs(sourceQuests) do
								if not app.contains(inst.sourceQuests, questID) then
									tinsert(inst.sourceQuests, questID);
								end
							end
						end
					end
				end
			end

			if app.GetRelativeValue(o, "isHolidayCategory") then
				headerType = "holiday";
			elseif app.GetRelativeValue(o, "isPromotionCategory") then
				headerType = "promo";
			elseif app.GetRelativeValue(o, "isPVPCategory") or o.pvp then
				headerType = "pvp";
			elseif app.GetRelativeValue(o, "isEventCategory") then
				headerType = "event";
			elseif app.GetRelativeValue(o, "isCraftedCategory") then
				headerType = "crafted";
			elseif o.parent.achievementID then
				headerType = app.HeaderConstants.ACHIEVEMENTS;
			elseif app.GetRelativeValue(o, "instanceID") then
				headerType = "raid";
			elseif app.GetRelativeValue(o, "isWorldDropCategory") or o.parent.headerID == app.HeaderConstants.COMMON_BOSS_DROPS then
				headerType = "drop";
			elseif o.parent.questID then
				headerType = app.HeaderConstants.QUESTS;
			elseif app.GetRelativeField(o.parent, "headerID", app.HeaderConstants.VENDORS) then
				headerType = app.HeaderConstants.VENDORS;
			elseif o.parent.npcID then
				headerType = app.GetDeepestRelativeValue(o, "headerID") or "drop";
			else
				headerType = app.GetDeepestRelativeValue(o, "headerID") or "drop";
				if headerType == true then	-- Seriously don't do this...
					headerType = "drop";
				end
			end
			local coords = app.GetRelativeValue(o, "coords");
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
			header = app.CreateRawText(GROUP_FINDER, {
				icon = app.asset("Category_D&R"),
			});
		elseif headerType == "promo" then
			header = app.CreateRawText(BATTLE_PET_SOURCE_8, {
				icon = app.asset("Category_Promo"),
			});
		elseif headerType == "pvp" then
			header = app.CreateRawText(PVP, {
				icon = app.asset("Category_PvP"),
			});
		elseif headerType == "event" then
			header = app.CreateRawText(BATTLE_PET_SOURCE_7, {
				icon = app.asset("Category_Event"),
			});
		elseif headerType == "drop" then
			header = app.CreateRawText(BATTLE_PET_SOURCE_1, {
				icon = app.asset("Category_WorldDrops"),
			});
		elseif headerType == "crafted" then
			header = app.CreateRawText(LOOT_JOURNAL_LEGENDARIES_SOURCE_CRAFTED_ITEM, {
				icon = app.asset("Category_Crafting"),
			});
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
	tinsert(header.g, inst);
	--app.MergeObject(header.g, inst);
	return inst;
end
function app:BuildFlatSearchFilteredResponse(groups, filter, t)
	if groups then
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if filter(group) then
					tinsert(t, app.CloneClassInstance(group));
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
					tinsert(t, app.CloneClassInstance(group));
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
					tinsert(t, app.CloneClassInstance(group));
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
					tinsert(t, app.CloneClassInstance(group));
				else
					local response = app:BuildSearchFilteredResponse(group.g, filter);
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
function app:BuildSearchResponseForField(groups, field)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				if group[field] then
					if not t then t = {}; end
					tinsert(t, app.CloneClassInstance(group));
				else
					local response = app:BuildSearchResponseForField(group.g, field);
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
local function OnCloseButtonPressed(self)
	self:GetParent():Hide();
end
local function OnMouseWheelForWindow(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentIndex - delta);
end
local function OnScrollBarValueChanged(self, value)
	if self.CurrentIndex ~= value then
		self.CurrentIndex = value;
		self:GetParent():Refresh();
	end
end
local function SetVisibleForWindow(self, show)
	if show then
		self:Show();
	else
		self:Hide();
	end
end
local FieldDefaults = {
	AddEventHandler = function(self, event, handler)
		-- allows a window to keep track of any specific custom handler functions it creates
		self.Handlers = self.Handlers or {}
		app.AddEventHandler(event, handler)
		self.Handlers[#self.Handlers + 1] = handler
	end,
	RemoveEventHandlers = function(self)
		-- allows a window to remove all event handlers it created
		local handlers = self.Handlers
		if handlers then
			for i=1,#handlers do
				app.RemoveEventHandler(handlers[i])
			end
		end
	end,
	RecordSettings = RecordSettingsForWindow,
	SetVisible = SetVisibleForWindow,
	Toggle = function(self)
		SetVisibleForWindow(self, not self:IsVisible());
	end,
	SetData = function(self, data)
		if self.data ~= data then
			self.data = data;
			self:Rebuild();
		end
	end,
	BuildCategory = BuildCategory,
	ExpandData = function(self, expanded)
		ExpandGroupsRecursively(self.data, expanded, true);
	end,
	SetMinMaxValues = function(self, displayedValue, totalValue)
		self.ScrollBar:SetMinMaxValues(1, math.max(1, totalValue - displayedValue));
	end,
	
	-- Rendering Functions
	AssignChildren = function(self)
		app.AssignChildren(self.data);
	end,
	DefaultUpdate = UpdateWindow,
	DefaultRefresh = UpdateVisibleRowData,
	Redraw = function(self)
		-- If there is no raw data or we aren't visible, then ignore this action.
		if self:IsShown() and self.rowData then
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
	IgnoreQuestUpdates = true,
	IgnorePetBattleEvents = true,
};
function app:CreateWindow(suffix, settings)
	local window = app.Windows[suffix];
	if window then return window; end
	local debugging = settings.Debugging;
	
	-- Create the window instance.
	---@class ATTWindow: BackdropTemplate, ATTFrameClass
	window = CreateFrame("Frame", nil, settings.parent or UIParent, BackdropTemplateMixin and "BackdropTemplate");
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
	window.Suffix = suffix;
	window:Hide();
	
	-- Apply Field Defaults
	for field,value in pairs(FieldDefaults) do
		window[field] = value;
	end
	
	-- Copy all non-reserved fields on to the window frame.
	for field,value in pairs(settings) do
		if not ReservedFields[field] then
			window[field] = value;
		end
	end
	
	-- Load / Save, which allows windows to keep track of key pieces of information.
	local defaults = BuildDefaultsForWindow(window, settings.Defaults);
	local onLoad, onSave = settings.OnLoad, settings.OnSave;
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
				onSave(window, window:RecordSettings());
			end
		end,
	};
	window:RegisterEvent("PLAYER_LOGOUT");
	window:SetScript("OnEvent", function(o, e, ...)
		if debugging then print(e, ...); end
		local handler = handlers[e];
		if handler then
			handler(window, ...);
		else
			window:Update();
		end
	end);
	
	-- Some Window functions should be triggered from ATT events
	window:AddEventHandler("OnUpdateWindows", function(...)
		window:Update(...)
	end)
	window:AddEventHandler("OnRefreshWindows", function(...)
		window:Refresh(...)
	end)
	window:AddEventHandler("OnRedrawWindows", function()
		window:Redraw()
	end)
	
	-- Register events to allow settings to be recorded.
	local onHide, onShow = settings.OnHide, settings.OnShow;
	window:SetScript("OnMouseDown", StartMovingOrSizing);
	window:SetScript("OnMouseUp", StopMovingOrSizing);
	window:SetScript("OnHide", function(self)
		StopMovingOrSizing(self);
		if onHide then onHide(self); end
		self:RecordSettings();
	end);
	window:SetScript("OnShow", function(self)
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
	local onRebuild = settings.OnRebuild;
	if onRebuild then
		-- NOTE: You can return true from the rebuild function to call the default on your new group data.
		if debugging then
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
		if debugging then
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
	
	local OnUpdate = settings.OnUpdate or UpdateWindow;
	if debugging then
		function window:ForceUpdate(force, trigger)
			print("ForceUpdate: " .. suffix, force, trigger);
			local lastUpdate = debugprofilestop();
			local result = OnUpdate(self, force, trigger);
			print("ForceUpdate: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
			self:Refresh();
			return result;
		end
		function window:Update(force, trigger)
			if self:IsShown() then
				print("UpdateWindow: " .. suffix, force, trigger);
				local lastUpdate = debugprofilestop();
				local result = OnUpdate(self, force, trigger);
				print("UpdateWindow: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				self:Refresh();
				return result;
			else
				self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
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
				self.HasPendingUpdate = self.HasPendingUpdate or force or trigger;
			end
		end
	end

	local onRefresh = settings.OnRefresh;
	if onRefresh then
		if debugging then
			function window:Refresh()
				if self:IsShown() then
					print("Refresh: " .. suffix);
					local lastUpdate = debugprofilestop();
					if onRefresh(self) then self:DefaultRefresh(); end
					print("Refresh: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				end
			end
		else
			function window:Refresh()
				if self:IsShown() and onRefresh(self) then self:DefaultRefresh(); end
			end
		end
	else
		if debugging then
			function window:Refresh()
				if self:IsShown() then
					print("Refresh: " .. suffix);
					local lastUpdate = debugprofilestop();
					self:DefaultRefresh();
					print("Refresh: " .. suffix, ("%d ms"):format(debugprofilestop() - lastUpdate));
				end
			end
		else
			function window:Refresh()
				if self:IsShown() then self:DefaultRefresh(); end
			end
		end
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
	
	-- The Close Button. It's assigned as a local variable so you can change how it behaves.
	local closeButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
	closeButton:SetScript("OnClick", OnCloseButtonPressed);
	window.CloseButton = closeButton;
	if app.isRetail then
		closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", -1, -1);
		closeButton:SetSize(20, 20);
	else
		closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 0, -1);
		closeButton:SetSize(24, 24);
	end

	-- The Scroll Bar.
	---@class ATTWindowScrollBar: Slider
	local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
	scrollbar:SetPoint("TOP", closeButton, "BOTTOM", 0, -15);
	scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
	scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
	scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
	scrollbar.back:SetColorTexture(0.1,0.1,0.1,1)
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
	container:SetPoint("TOPLEFT", window, "TOPLEFT", 2, -6);
	container:SetPoint("RIGHT", scrollbar, "LEFT", -1, 0);
	container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
	window.Container = container;
	container.rows = setmetatable({}, {
		__index = function(rows, i)
			return CreateRow(container, rows, i);
		end,
	});
	container:Show();
	
	if not settings.IgnoreQuestUpdates and false then
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
	
	
	-- Add command processing
	local onCommand = settings.OnCommand;
	if onCommand then
		function window:ProcessCommand(cmd)
			if not onCommand(self, cmd) then
				self:Toggle();
			end
		end
	else
		window.ProcessCommand = window.Toggle;
	end
	if settings.OnInit then
		settings.OnInit(window, handlers);
	end
	if settings.Commands then
		if not window.SettingsName then
			window.SettingsName = window.Suffix
		end
		app.AddSlashCommands(settings.Commands, function(cmd) window:ProcessCommand(cmd) end)
		local primaryCommand = "/" .. settings.Commands[1];
		app.ChatCommands.Help[primaryCommand:lower()] = {
			settings.UsageText or ("Usage: " .. primaryCommand),
			settings.HelpText or ("Toggles the " .. window.SettingsName .. " Window.")
		};
	end
	
	-- If window settings were already loaded, then load this window's settings now
	-- Windows created after startup would otherwise fail to load their settings.
	if AllWindowSettingsLoaded then
		LoadSettingsForWindow(window);
	end
	return window;
end
function app:GetWindow(suffix)
	return app.Windows[suffix];
end

-- Warning: This one is different in Retail for some reason.
-- Identify why, then figure out which one we want to use.
function app:BuildSearchResponse(groups, field, value)
	if groups then
		local t;
		for i,group in ipairs(groups) do
			if not group.IgnoreBuildRequests then
				local v = group[field];
				if v and (v == value or (field == "requireSkill" and app.SkillDB.SpellToSkill[app.SkillDB.SpecializationSpells[v] or 0] == value)) then
					if not t then t = {}; end
					tinsert(t, app.CloneClassInstance(group));
				else
					local response = app:BuildSearchResponse(group.g, field, value);
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

-- Dynamic Popouts for Quest Chains and other Groups
local function OnInitForPopout(self, questID, group)
	if group.questID or group.sourceQuests then
		local mainQuest = app.CloneClassInstance(group);
		if group.parent then mainQuest.sourceParent = group.parent; end
		if mainQuest.sym then
			mainQuest.collectible = true;
			mainQuest.visible = true;
			mainQuest.progress = 0;
			mainQuest.total = 0;
			if not mainQuest.g then
				local resolved = app.ResolveSymbolicLink(group);
				if resolved then
					for i=#resolved,1,-1 do
						resolved[i] = app.CloneClassInstance(resolved[i]);
					end
					mainQuest.g = resolved;
				end
			else
				local resolved = app.ResolveSymbolicLink(group);
				if resolved then
					app.MergeObjects(mainQuest.g, resolved);
				end
			end
		end

		if questID then mainQuest.collectible = true; end
		local g = { mainQuest };

		-- Check to see if Source Quests are listed elsewhere.
		if questID and not group.sourceQuests then
			local searchResults = app.SearchForField("questID", questID);
			if #searchResults > 1 then
				for i=1,#searchResults,1 do
					local searchResult = searchResults[i];
					if searchResult.questID == questID and searchResult.sourceQuests then
						searchResult = app.CloneClassInstance(searchResult);
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
					sourceQuest = sourceQuestID < 1 and app.SearchForField("creatureID", math.abs(sourceQuestID)) or app.SearchForField("questID", sourceQuestID);
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
							sourceQuest = app.CloneClassInstance(found);
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
					tinsert(prereqs, app.CreateRawText("Upon Completion", {
						["description"] = "The above quests need to be completed before being able to complete the quest(s) listed below.",
						["icon"] = 135932,
						["visible"] = true,
						["expanded"] = true,
						["hideText"] = true,
						["g"] = g,
					}));
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
		self.data = app.CloneClassInstance(group);
		self.data.collectible = true;
		self.data.visible = true;
		self.data.progress = 0;
		self.data.total = 0;
		if not self.data.g then
			local resolved = app.ResolveSymbolicLink(group);
			if resolved then
				for i=#resolved,1,-1 do
					resolved[i] = app.CloneClassInstance(resolved[i]);
				end
				self.data.g = resolved;
			end
		else
			local resolved = app.ResolveSymbolicLink(group);
			if resolved then
				app.MergeObjects(self.data.g, resolved);
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
	self.data = app.CloneClassInstance(self.data);
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
		local searchResults = app.SearchForField("currencyIDAsCost", currencyID);
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
			app.MergeObjects(usedtobuy.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, usedtobuy);
			self.data.usedtobuy = usedtobuy;
		end
	end

	local itemID = group.itemID;
	if itemID and not self.data.tradedin then
		local searchResults = app.SearchForField("itemIDAsCost", itemID);
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
			app.MergeObjects(tradedin.g, searchResults);
			if not self.data.g then self.data.g = {}; end
			tinsert(self.data.g, tradedin);
			self.data.tradedin = tradedin;
		end
	end
	]]--

	local dataKey = self.data.key;
	if dataKey then
		if group.cost and type(group.cost) == "table" then
			local costGroup = app.CreateRawText("Cost", {
				["description"] = "The following contains all of the relevant items or currencies needed to acquire this.",
				["icon"] = 133785,
				["g"] = {},
			});
			local costItem;
			for i,c in ipairs(group.cost) do
				costItem = nil;
				if c[1] == "c" then
					costItem = app.CreateCurrencyClass(c[2]);
				elseif c[1] == "i" then
					costItem = app.CreateItem(c[2]);
				end
				if costItem then
					costItem = app.CloneClassInstance(costItem);
					costItem.visible = true;
					costItem.OnUpdate = app.AlwaysShowUpdate;
					app.MergeObject(costGroup.g, costItem);
				end
			end
			if #costGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				app.MergeObject(self.data.g, costGroup, 1);
			end
		end

		if group.providers or group.qgs or group.crs then
			local sourceGroup = app.CreateRawText("Sources", {
				["description"] = "The following contains all of the relevant sources.",
				["icon"] = 133785,
				["OnUpdate"] = app.AlwaysShowUpdate,
				["g"] = {},
			});
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
						app.MergeObject(sourceGroup.g, sourceItem);
					end
				end
			end
			if group.crs then
				for _,creatureID in ipairs(group.crs) do
					sourceItem = app.CreateNPC(creatureID);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					app.MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if group.qgs then
				for _,qg in ipairs(group.qgs) do
					sourceItem = app.CreateNPC(qg);
					sourceItem.visible = true;
					sourceItem.OnUpdate = app.AlwaysShowUpdate;
					app.MergeObject(sourceGroup.g, sourceItem);
				end
			end
			if #sourceGroup.g > 0 then
				if not self.data.g then self.data.g = {}; end
				app.MergeObject(self.data.g, sourceGroup, 1);
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
				local searchResults = app.SearchForField("achievementID", achievementID);
				if #searchResults > 0 then
					for i=1,#searchResults,1 do
						local searchResult = searchResults[i];
						if searchResult.achievementID == achievementID and searchResult.criteriaID then
							if not self.data.g then self.data.g = {}; end
							app.MergeObject(self.data.g, app.CloneClassInstance(searchResult));
						end
					end
				end
			end
		end
	end
	if group.GetRelatedThings then
		local relatedThingsGroup = app.CreateRawText("Related Things", {
			["description"] = "The following contains things that may be related or relevant to the content.",
			["icon"] = 133785,
			["g"] = {},
		});
		local relatedThings = {};
		group.GetRelatedThings(group, relatedThings);
		for i,o in ipairs(relatedThings) do
			app.MergeObject(relatedThingsGroup.g, app.CloneClassInstance(o));
		end
		if #relatedThingsGroup.g > 0 then
			if not self.data.g then self.data.g = {}; end
			app.MergeObject(self.data.g, relatedThingsGroup);
		end
	end

	self:AssignChildren();
	UpdateGroups(self.data, self.data.g);
end
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
				ClearSettingsForWindow(self);
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
