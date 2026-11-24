local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: Windows Page
-- One scrollable list of every ATT window, grouped by kind. Each row opens its window and,
-- where the window supports it, toggles its Flat style and its Dynamic Category (Main List entry).
local child = settings:CreateOptionsPage(L.WINDOWS_PAGE, L.FEATURES_PAGE)

-- Groups, in display order. Each window definition picks its group with SettingsGroup
-- (one of the keys below) and may set SettingsOrder to come before the alphabetical rest.
-- Windows without a known SettingsGroup go into "Other".
local Groups = {
	{ key = "Main", title = L.WINDOWS_GROUP_MAIN_LISTS },
	{ key = "Collections", title = COLLECTIONS or "Collections" },
	{ key = "Professions", title = TRADE_SKILLS or "Professions" },
	{ key = "Progress", title = L.WINDOWS_GROUP_PROGRESS },
	{ key = "Tools", title = L.WINDOWS_GROUP_TOOLS },
	{ key = "Other", title = OTHER or "Other" },
};
local KnownGroups = {};
for _,group in ipairs(Groups) do KnownGroups[group.key] = true; end
local function GetGroupKey(window)
	local key = window.SettingsGroup or (window.IsTopLevel and "Main");
	return key and KnownGroups[key] and key or "Other";
end

local FLAT_LABEL = L.WINDOWS_FLAT_LABEL;
local FLAT_TOOLTIP = L.WINDOWS_FLAT_TOOLTIP;
local DYNAMIC_LABEL = L.WINDOWS_DYNAMIC_LABEL;
local DYNAMIC_TOOLTIP = L.WINDOWS_DYNAMIC_TOOLTIP;
local RELOAD_NEEDED = L.WINDOWS_RELOAD_NEEDED;

-- Layout (scroll content coordinates)
local ROW_HEIGHT, HEADER_HEIGHT, SECTION_GAP = 22, 24, 8;
local BUTTON_WIDTH, PROGRESS_X, PROGRESS_WIDTH, COMMAND_X, COMMAND_WIDTH = 200, 214, 126, 344, 130;
local BUTTON_TEXT_PADDING = 8;	-- keeps longer (localized) names inside the button
local FLAT_X, DYNAMIC_X = 492, 556;	-- column centers

-- Window Button Helpers
local function OnClickForWindowButton(self)
	app:GetWindow(self.Suffix):Show();
end
local function UpdateButtonText(self, window)
	local text = window.Title or window.SettingsName or window.Suffix;
	local icon = window.IconTexture or (window.data and window.data.icon)
	if icon then text = "|T" .. icon .. ":0|t " .. text; end
	self:SetText(text);
end
local function OnTooltipForWindowButton(self, tooltipInfo)
	local window = self.Window;
	UpdateButtonText(self, window);
	tooltipInfo[#tooltipInfo+1] = { left = self:GetText() }
	tooltipInfo[#tooltipInfo+1] = { left = " " }

	-- Assign the Text Label and Tooltip
	local data = window.data;
	if data then
		local summaryText = app.GetProgressTextForTooltip(data);
		if summaryText then tooltipInfo[#tooltipInfo+1] = { summaryText = summaryText } end
		local description = data.description;
		if description then tooltipInfo[#tooltipInfo+1] = { left = "|cffffffff" .. description .. "|r\n\n", wrap = true } end
	end

	local commandTexts = {}
	if window.Commands then
		for k=1,#window.Commands do
			commandTexts[#commandTexts + 1] = "/"..window.Commands[k]
		end
	end
	if window.RootCommands then
		for k=1,#window.RootCommands do
			commandTexts[#commandTexts + 1] = "/att "..window.RootCommands[k]
		end
	end
	if #commandTexts > 0 then
		tooltipInfo[#tooltipInfo+1] = { left = L.COMMANDS_LABEL .. " |cffcccccc\n  " .. app.TableConcat(commandTexts, nil, nil, "\n  ") .. "|r" }
	end
	if window.HasPendingUpdate then
		tooltipInfo[#tooltipInfo+1] = { left = " " }
		tooltipInfo[#tooltipInfo+1] = {
			left = L["UPDATES_PAUSED"],
			right = L["MAIN_LIST_REQUIRES_REFRESH"],
			r = 1, g = 0.4
		}
	end
end
local function GetCommandText(window)
	if window.Commands and window.Commands[1] then
		return "/" .. window.Commands[1];
	end
	if window.RootCommands and window.RootCommands[1] then
		return "/att " .. window.RootCommands[1];
	end
	return "";
end
local function GetProgressText(window)
	local data = window.data;
	if not data or not data.total or data.total < 1 then return ""; end
	return app.Modules.Color.GetProgressColorText(data.progress or 0, data.total) or "";
end

-- Scrollable content
local function CreateScroller(template)
	local name = settings:GetName() .. "-WindowsScroll-" .. template;
	local scrollFrame = CreateFrame("ScrollFrame", name, child, template);
	local scrollChild = CreateFrame("Frame", nil, scrollFrame);
	scrollChild:SetSize(1, 1);
	scrollFrame:SetScrollChild(scrollChild);
	return scrollFrame, scrollChild, scrollFrame.ScrollBar or _G[name .. "ScrollBar"];
end
-- Retail and Forever give ScrollFrameTemplate a slim scrollbar. The Classic clients (Era, TBC, Mists, ...)
-- give it a boxy one, so use the classic panel scrollbar (arrows and a thumb) there instead.
local scroller, content, scrollBar = CreateScroller(app.IsClassic and "UIPanelScrollFrameTemplate" or "ScrollFrameTemplate");
scroller:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 0, -6);
scroller:SetPoint("BOTTOMRIGHT", child, "BOTTOMRIGHT", -4, 34);
content:SetWidth(DYNAMIC_X + 40);
-- Keep the scrollbar (and its arrow buttons) inside the scroll area and away from the panel border
if scrollBar then
	scrollBar:ClearAllPoints();
	scrollBar:SetPoint("TOPRIGHT", scroller, "TOPRIGHT", -10, -18);
	scrollBar:SetPoint("BOTTOMRIGHT", scroller, "BOTTOMRIGHT", -10, 18);
end

-- Reload bar (shown when a Main List toggle differs from what was loaded)
local reloadButton = CreateFrame("Button", nil, child, "UIPanelButtonTemplate");
reloadButton:SetText(RELOADUI or "Reload UI");
reloadButton:SetWidth(reloadButton:GetFontString():GetUnboundedStringWidth() + 24);
reloadButton:SetHeight(22);
reloadButton:SetPoint("BOTTOMRIGHT", child, "BOTTOMRIGHT", -32, 6);
reloadButton:SetScript("OnClick", function() ReloadUI(); end);
reloadButton:Hide();
local reloadText = child:CreateFontString(nil, "ARTWORK", "GameFontNormal");
reloadText:SetPoint("RIGHT", reloadButton, "LEFT", -8, 0);
reloadText:SetText(RELOAD_NEEDED);
reloadText:Hide();

-- The Dynamic Category state each window loaded with this session.
local LoadedDynamicState = {};
local function UpdateReloadBar()
	local needed;
	for suffix,loaded in pairs(LoadedDynamicState) do
		if app.IsDynamicCategoryEnabled(suffix) ~= loaded then
			needed = true;
			break;
		end
	end
	reloadButton:SetShown(needed and true or false);
	reloadText:SetShown(needed and true or false);
end

-- Checkbox helpers
local function CreateRowCheckBox(onClick, tooltip)
	local cb = CreateFrame("CheckButton", nil, content, settings.UITemplates.Checkbox);
	cb:SetSize(22, 22);
	cb:SetHitRectInsets(0, 0, 0, 0);
	cb:SetScript("OnClick", onClick);
	cb:SetATTTooltip(tooltip);
	return cb;
end
local function OnClickFlat(self)
	local window = self.Window;
	if not window then return; end
	local flat = self:GetChecked() and true or false;
	if window.GetFlat and window:GetFlat() ~= flat then
		window:SetFlat(flat);
		-- Flat is saved with the window on logout; record it now too so it isn't lost on a crash
		if window.Settings and window.OnSave then window:OnSave(window.Settings); end
	end
end
local function OnClickDynamic(self)
	local window = self.Window;
	if not window then return; end
	app.SetDynamicCategoryEnabled(window.Suffix, self:GetChecked() and true or false);
	UpdateReloadBar();
end

-- Rows and section headers (reused between refreshes)
local Rows, Headers = {}, {};
local function GetRow(index)
	local row = Rows[index];
	if row then return row; end
	row = {};
	local button = CreateFrame("Button", nil, content, "UIPanelButtonTemplate");
	button:RegisterForClicks("AnyUp");
	button:SetScript("OnClick", OnClickForWindowButton);
	button.OnTooltip = OnTooltipForWindowButton;
	button:SetATTTooltip();
	button:SetSize(BUTTON_WIDTH, ROW_HEIGHT - 2);
	-- Pad the label and cut it off with "..." when it doesn't fit (the tooltip shows the full name)
	local label = button:GetFontString();
	if label then
		label:ClearAllPoints();
		label:SetPoint("LEFT", button, "LEFT", BUTTON_TEXT_PADDING, 0);
		label:SetPoint("RIGHT", button, "RIGHT", -BUTTON_TEXT_PADDING, 0);
		label:SetWordWrap(false);
	end
	row.Button = button;

	local progress = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall");
	progress:SetJustifyH("RIGHT");
	progress:SetWidth(PROGRESS_WIDTH);
	progress:SetWordWrap(false);
	row.Progress = progress;

	local command = content:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
	command:SetJustifyH("LEFT");
	command:SetWidth(COMMAND_WIDTH);
	command:SetWordWrap(false);
	row.Command = command;

	row.Flat = CreateRowCheckBox(OnClickFlat, FLAT_TOOLTIP);
	row.Dynamic = CreateRowCheckBox(OnClickDynamic, DYNAMIC_TOOLTIP);
	Rows[index] = row;
	return row;
end
local function HideRow(row)
	row.Button:Hide();
	row.Progress:Hide();
	row.Command:Hide();
	row.Flat:Hide();
	row.Dynamic:Hide();
end
local function GetHeader(index)
	local header = Headers[index];
	if header then return header; end
	header = {};
	header.Title = content:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
	header.Title:SetJustifyH("LEFT");
	header.FlatLabel = content:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
	header.DynamicLabel = content:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
	header.FlatLabel:SetText(FLAT_LABEL);
	header.DynamicLabel:SetText(DYNAMIC_LABEL);
	header.Line = content:CreateTexture(nil, "ARTWORK");
	header.Line:SetColorTexture(1, 1, 1, 0.2);
	header.Line:SetHeight(1);
	Headers[index] = header;
	return header;
end
local function HideHeader(header)
	header.Title:Hide();
	header.FlatLabel:Hide();
	header.DynamicLabel:Hide();
	header.Line:Hide();
end

local function CollectWindows()
	-- Make sure every window which can show in Settings exists
	for suffix,definition in pairs(app.WindowDefinitions) do
		if not definition.HideFromSettings then
			app:GetWindow(suffix);
		end
	end
	local grouped = {};
	for suffix,window in pairs(app.Windows) do
		if not window.HideFromSettings and not window.dynamic and (window.Commands or window.RootCommands or window.IsTopLevel) then
			local key = GetGroupKey(window);
			local list = grouped[key];
			if not list then
				list = {};
				grouped[key] = list;
			end
			list[#list + 1] = window;
			if window.SupportsDynamicCategory and LoadedDynamicState[suffix] == nil then
				LoadedDynamicState[suffix] = app.IsDynamicCategoryEnabled(suffix);
			end
		end
	end
	local function SortWindows(a, b)
		local ao, bo = a.SettingsOrder or 999, b.SettingsOrder or 999;
		if ao ~= bo then return ao < bo; end
		local an = (a.Title or a.SettingsName or a.Suffix or ""):lower();
		local bn = (b.Title or b.SettingsName or b.Suffix or ""):lower();
		return an < bn;
	end
	for _,list in pairs(grouped) do
		table.sort(list, SortWindows);
	end
	return grouped;
end

local function RefreshWindowManager()
	local grouped = CollectWindows();
	local y, rowIndex, headerIndex = -4, 0, 0;
	for _,group in ipairs(Groups) do
		local list = grouped[group.key];
		if list and #list > 0 then
			-- Section header, with column labels when any window in it has a toggle
			local anyFlat, anyDynamic;
			for _,window in ipairs(list) do
				if window.SetFlat then anyFlat = true; end
				if window.SupportsDynamicCategory then anyDynamic = true; end
			end
			headerIndex = headerIndex + 1;
			local header = GetHeader(headerIndex);
			header.Title:ClearAllPoints();
			header.Title:SetPoint("TOPLEFT", content, "TOPLEFT", 4, y);
			header.Title:SetText(group.title);
			header.Title:Show();
			header.FlatLabel:ClearAllPoints();
			header.FlatLabel:SetPoint("TOP", content, "TOPLEFT", FLAT_X, y - 6);
			header.FlatLabel:SetShown(anyFlat and true or false);
			header.DynamicLabel:ClearAllPoints();
			header.DynamicLabel:SetPoint("TOP", content, "TOPLEFT", DYNAMIC_X, y - 6);
			header.DynamicLabel:SetShown(anyDynamic and true or false);
			header.Line:ClearAllPoints();
			header.Line:SetPoint("TOPLEFT", content, "TOPLEFT", 4, y - HEADER_HEIGHT + 4);
			header.Line:SetPoint("RIGHT", content, "LEFT", DYNAMIC_X + 36, 0);
			header.Line:Show();
			y = y - HEADER_HEIGHT;

			for _,window in ipairs(list) do
				rowIndex = rowIndex + 1;
				local row = GetRow(rowIndex);
				local button = row.Button;
				button.Window = window;
				button.Suffix = window.Suffix;
				UpdateButtonText(button, window);
				button:ClearAllPoints();
				button:SetPoint("TOPLEFT", content, "TOPLEFT", 8, y);
				button:Show();

				row.Progress:ClearAllPoints();
				row.Progress:SetPoint("LEFT", content, "LEFT", PROGRESS_X, 0);
				row.Progress:SetPoint("TOP", button, "TOP", 0, 0);
				row.Progress:SetPoint("BOTTOM", button, "BOTTOM", 0, 0);
				row.Progress:SetText(GetProgressText(window));
				row.Progress:Show();

				row.Command:ClearAllPoints();
				row.Command:SetPoint("LEFT", content, "LEFT", COMMAND_X, 0);
				row.Command:SetPoint("TOP", button, "TOP", 0, 0);
				row.Command:SetPoint("BOTTOM", button, "BOTTOM", 0, 0);
				row.Command:SetText(GetCommandText(window));
				row.Command:Show();

				local flat = row.Flat;
				flat.Window = window;
				if window.SetFlat and window.GetFlat then
					flat:ClearAllPoints();
					flat:SetPoint("TOPLEFT", content, "TOPLEFT", FLAT_X - 11, y + 1);
					flat:SetChecked(window:GetFlat() and true or false);
					flat:Show();
				else
					flat:Hide();
				end

				local dynamic = row.Dynamic;
				dynamic.Window = window;
				if window.SupportsDynamicCategory then
					dynamic:ClearAllPoints();
					dynamic:SetPoint("TOPLEFT", content, "TOPLEFT", DYNAMIC_X - 11, y + 1);
					dynamic:SetChecked(app.IsDynamicCategoryEnabled(window.Suffix));
					dynamic:Show();
				else
					dynamic:Hide();
				end

				y = y - ROW_HEIGHT;
			end
			y = y - SECTION_GAP;
		end
	end
	for i=rowIndex+1,#Rows do HideRow(Rows[i]); end
	for i=headerIndex+1,#Headers do HideHeader(Headers[i]); end
	content:SetHeight(-y + 4);
	UpdateReloadBar();
end
child.OnRefresh = function(self)
	if self:IsVisible() then RefreshWindowManager(); end
end
child:HookScript("OnShow", RefreshWindowManager);

-- Let the settings search find the windows
settings.AddOptionProvider(function(add)
	for suffix,definition in pairs(app.WindowDefinitions) do
		if not definition.HideFromSettings then
			add({ page = child, text = definition.Title or definition.SettingsName or suffix });
		end
	end
end);
