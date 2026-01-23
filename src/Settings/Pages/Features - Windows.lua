local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Windows Page
local child = settings:CreateOptionsPage(L.WINDOWS_PAGE, L.FEATURES_PAGE)

-- CONTENT
local headerSync = child:CreateHeaderLabel(L.WINDOWS_PAGE)
if child.separator then
	headerSync:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerSync:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

-- Window Manager
local WindowButtons = {};
local function OnClickForWindowButton(self)
	HideUIPanel(SettingsPanel);
	self.Window:Show();
end
local function UpdateButtonText(self, window)
	local text = window.SettingsName;
	local data = window.data;
	if data then
		local icon = data.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
	end
	self:SetText(text);
end
local function OnTooltipForWindowButton(self, tooltipInfo)
	local window = self.Window;
	if window.HasPendingUpdate and not window.CachedTotalsForSettings then
		window.CachedTotalsForSettings = true;
		if IsShiftKeyDown() then
			window:ForceRebuild();
		else
			window:ForceUpdate();
		end
	end
	UpdateButtonText(self, window);
	tinsert(tooltipInfo, { left = self:GetText() });
	tinsert(tooltipInfo, { left = " " });

	-- Assign the Text Label and Tooltip
	local data = window.data;
	if data then
		local progressText = app.GetProgressTextForTooltip(data);
		if progressText then tinsert(tooltipInfo, { progress = progressText }); end
		local description = data.description;
		if description then tinsert(tooltipInfo, { left = "|cffffffff" .. description .. "|r\n\n", wrap = true }); end
	end

	if window.Commands then
		local commands = "";
		for k=1,#window.Commands,1 do
			commands = commands .. "\n  /" .. window.Commands[k];
		end
		tinsert(tooltipInfo, { left = "Commands: |cffcccccc" .. commands .. "|r" });
	end
	if window.HasPendingUpdate then
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, {
			left = L["UPDATES_PAUSED"],
			right = L["MAIN_LIST_REQUIRES_REFRESH"],
			r = 1, g = 0.4
		});
	end
end

app.AddEventHandler("OnSettingsRefreshed", function()
	local keys,sortedList,topKeys = {},{},{};
	for suffix,window in pairs(app.Windows) do
		if window.IsTopLevel then
			tinsert(topKeys, suffix);
		else
			keys[suffix] = window;
		end
	end
	for suffix,window in pairs(keys) do
		tinsert(sortedList, suffix);
	end
	app.Sort(sortedList, app.SortDefaults.Strings);
	for i,suffix in ipairs(topKeys) do
		tinsert(sortedList, 1, suffix);
	end
	local j = 0;
	for i,suffix in ipairs(sortedList) do
		local window = app.Windows[suffix];
		if window and not window.dynamic and window.Commands and not window.HideFromSettings then
			j = j + 1;
			local button = WindowButtons[j];
			if not button then
				button = CreateFrame("Button", nil, child, "UIPanelButtonTemplate");
				button:RegisterForClicks("AnyUp");
				button:SetScript("OnClick", OnClickForWindowButton);
				button.OnTooltip = OnTooltipForWindowButton;
				button:SetATTTooltip();
				tinsert(WindowButtons, button);
			end
			button.Window = window;
			button.Suffix = window.Suffix;
			UpdateButtonText(button, window);

			-- TODO: Preferred new style, once we get the window template designed
			--settings:CreateOptionsPage("/" .. window.Commands[1], L.WINDOWS_PAGE)
		end
	end
	local parent = child.separator or child;
	local lastWindowButtonButton, lastWindowButtonDistance, button = parent, -8;
	local scale, columnCount = 0, 1;
	while scale < 0.9 do
		columnCount = columnCount + 1;
		scale = math.min(1, 18 / (j / columnCount));
	end
	local buttonWidth = (1/scale) * (640 / columnCount);
	local buttonHeight = (1/scale) * (500 / math.floor(j / columnCount));
	local column = 0;
	for i=1,j,1 do
		button = WindowButtons[i];
		button:ClearAllPoints();
		button:SetScale(scale);
		column = column + 1;
		if column > columnCount then column = 1; end
		if column == 1 then
			button:SetPoint("LEFT", parent, "LEFT", 8, -8);
			button:SetPoint("TOP", lastWindowButtonButton, "BOTTOM", 0, lastWindowButtonDistance);
			lastWindowButtonDistance = -1;
		else
			button:SetPoint("TOPLEFT", lastWindowButtonButton, "TOPRIGHT", 0, 0);
		end
		button:SetWidth(buttonWidth);
		button:SetHeight(buttonHeight);
		lastWindowButtonButton = button;
	end
	for i=#WindowButtons,j+1,-1 do
		WindowButtons[i]:Hide();
	end
end);
