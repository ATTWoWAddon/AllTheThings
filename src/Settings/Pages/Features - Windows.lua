local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Windows Page
local child = settings:CreateOptionsPage(L.WINDOWS_PAGE, L.FEATURES_PAGE)

-- Window Manager
local WindowButtons = {};
local function OnClickForWindowButton(self)
	HideUIPanel(SettingsPanel);
	app:GetWindow(self.Suffix):Show();
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
	UpdateButtonText(self, window);
	tinsert(tooltipInfo, { left = self:GetText() });
	tinsert(tooltipInfo, { left = " " });

	-- Assign the Text Label and Tooltip
	local data = window.data;
	if data then
		local summaryText = app.GetProgressTextForTooltip(data);
		if summaryText then tinsert(tooltipInfo, { summaryText = summaryText }); end
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
local function RefreshWindowManager()
	local keys,sortedList,topKeys = {},{},{};
	for suffix,window in pairs(app.WindowDefinitions) do
		app:GetWindow(suffix);
		if window.IsTopLevel then
			tinsert(topKeys, suffix);
		else
			keys[suffix] = window;
		end
	end
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
		if window then
			if not window.dynamic and window.Commands and not window.HideFromSettings then
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
end;
child:SetScript("OnShow", function(self)
	self.OnRefresh = RefreshWindowManager;
	self:SetScript("OnShow", nil);
end);


-- Settings: Windows Style Page
local PageTitle = "Style";
local ConfigurationStyles = {
	SetFlat = {
		Title = "Category & Flat Options",
	},
};
local WindowStyleButtons = {};
local function OnClickForWindowStyleButton(self)
	local window = app:GetWindow(self.Suffix);
	window:ToggleFlat();
	window:Show();
end
local function RefreshWindowStyles(self)
	local lastChild, lastXOffset, lastYOffset = self.separator, 8, -8;
	for configKey,config in pairs(ConfigurationStyles) do
		local windows = config.windows;
		if not windows then
			windows = {};
			config.windows = windows;
		end
		for suffix,window in pairs(app.WindowDefinitions) do
			if window[configKey] then
				windows[suffix] = window;
			end
		end
		for suffix,window in pairs(app.Windows) do
			if window[configKey] then
				windows[suffix] = window;
			end
		end
		local styleHeader = config.styleHeader;
		if not styleHeader then
			styleHeader = self:CreateHeaderLabel(config.Title)
			styleHeader:SetPoint("TOPLEFT", lastChild, "BOTTOMLEFT", lastXOffset, lastYOffset);
			config.styleHeader = styleHeader;
		end
		lastChild = styleHeader;
		lastXOffset = 0;
		
		local buttons = config.buttons;
		if not buttons then
			buttons = {};
			config.buttons = buttons;
		end
		
		local buttonIndex = 1;
		for suffix,window in pairs(windows) do
			local button = buttons[buttonIndex];
			if not button then
				button = CreateFrame("Button", nil, self, "UIPanelButtonTemplate");
				button:RegisterForClicks("AnyUp");
				button:SetScript("OnClick", OnClickForWindowStyleButton);
				button.OnTooltip = OnTooltipForWindowButton;
				button:SetATTTooltip();
				buttons[buttonIndex] = button;
				button:SetPoint("TOPLEFT", lastChild, "BOTTOMLEFT", lastXOffset, lastYOffset);
				button:SetWidth(120);
				button:SetHeight(30);
			end
			button.Window = window;
			button.Suffix = window.Suffix;
			UpdateButtonText(button, window)
			buttonIndex = buttonIndex + 1;
			lastChild = button;
		end
	end
end
settings:CreateOptionsPage(PageTitle, L.WINDOWS_PAGE):SetScript("OnShow", function(self)
	self.OnRefresh = RefreshWindowStyles;
	self:SetScript("OnShow", nil);
end);
