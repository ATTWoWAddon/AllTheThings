local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, pairs, tinsert, type, math_max, math_min
	= ipairs, pairs, tinsert, type, math.max, math.min;

-- ATT's own settings window: a sidebar with every page, a search box, and the pages themselves.
-- The game's AddOn options only have an entry which opens it.
local SIDEBAR_WIDTH, PAGE_WIDTH, PAGE_HEIGHT, PADDING, TITLE_HEIGHT = 170, 672, 612, 10, 26;
local ROW_HEIGHT, SECTION_HEIGHT, MAX_RESULTS = 18, 20, 100;

-- The sidebar's sections. Pages are listed by the text they were created with, and
-- pages which aren't listed here (e.g. from extensions) go to the last section.
local Sections = {
	{ title = L.SETTINGS_SECTION_COLLECT, pages = { L.SETTINGS_START_PAGE, L.GENERAL_PAGE } },
	{ title = L.SETTINGS_SECTION_SHOW, pages = { L.GENERAL_CONTENT, L.FILTERS_PAGE, L.EXPANSION_FILTERS_PAGE, L.UNOBTAINABLES_PAGE, L.PHASES_PAGE } },
	{ title = L.SETTINGS_SECTION_LISTS, pages = { L.INTERFACE_PAGE, L.WINDOWS_PAGE, L.FILLERS_LABEL, L.ACCESSIBILITY_PAGE, L.FEATURES_PAGE } },
	{ title = L.TOOLTIP_LABEL, pages = { L.TOOLTIP_LABEL, L.INFORMATION_PAGE } },
	{ title = L.SETTINGS_SECTION_ALERTS, pages = { L.AUDIO_PAGE, L.REPORTING_LABEL } },
	{ title = L.PROFILES_PAGE, pages = { L.PROFILES_PAGE } },
	{ title = L.SETTINGS_SECTION_HELP, pages = { L.COMMANDS_PAGE, appName } },
	{ title = OTHER or "Other", pages = {} },
};
-- Pages which the sidebar only lists in the Advanced view
local AdvancedPages = {
	[L.FILLERS_LABEL] = true,
	[L.INFORMATION_PAGE] = true,
	[L.REPORTING_LABEL] = true,
};
local function ShowsAdvanced() return settings:GetTooltipSetting("Settings:Advanced"); end
local SectionByPage = {};
for _,section in ipairs(Sections) do
	for _,text in ipairs(section.pages) do SectionByPage[text] = section; end
end

-- Options register themselves with the page they're on. Pages which create their options on
-- demand add a provider, which is asked for its options whenever something is searched.
local Options, Providers = {}, {};
settings.RegisterOption = function(option)
	Options[#Options + 1] = option;
end
settings.AddOptionProvider = function(provider)
	Providers[#Providers + 1] = provider;
end

-- Window
local window = CreateFrame("Frame", "ATTSettingsWindow", UIParent, BackdropTemplateMixin and "BackdropTemplate");
window:SetSize(SIDEBAR_WIDTH + PAGE_WIDTH + PADDING * 3, TITLE_HEIGHT + PAGE_HEIGHT + PADDING * 2);
window:SetPoint("CENTER");
window:SetFrameStrata("HIGH");
window:SetToplevel(true);
window:EnableMouse(true);
window:SetMovable(true);
window:SetResizable(true);	-- only its height
if window.SetResizeBounds then
	window:SetResizeBounds(window:GetWidth(), window:GetHeight(), window:GetWidth(), 1000);
else
	window:SetMinResize(window:GetWidth(), window:GetHeight());
	window:SetMaxResize(window:GetWidth(), 1000);
end
window:SetClampedToScreen(true);
window:RegisterForDrag("LeftButton");
window:SetScript("OnDragStart", window.StartMoving);
window:SetScript("OnDragStop", window.StopMovingOrSizing);
window:SetBackdrop({
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 },
});
window:SetBackdropColor(0, 0, 0, 1);
-- The tooltip background is see-through, so cover it
local background = window:CreateTexture(nil, "BACKGROUND", nil, 1);
background:SetPoint("TOPLEFT", window, "TOPLEFT", 4, -4);
background:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 4);
background:SetColorTexture(0.04, 0.04, 0.05, 0.97);
local titleBar = window:CreateTexture(nil, "BACKGROUND", nil, 2);
titleBar:SetPoint("TOPLEFT", window, "TOPLEFT", 4, -4);
titleBar:SetPoint("TOPRIGHT", window, "TOPRIGHT", -4, -4);
titleBar:SetHeight(TITLE_HEIGHT);
titleBar:SetColorTexture(1, 1, 1, 0.06);
window:SetBackdropBorderColor(0.6, 0.6, 0.6, 1);
window:Hide();
tinsert(UISpecialFrames, "ATTSettingsWindow");	-- closes with Escape

local closeButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
closeButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", -2, -2);
closeButton:SetScript("OnClick", function() window:Hide(); end);
local titleText = window:CreateFontString(nil, "ARTWORK", "GameFontNormal");
titleText:SetPoint("LEFT", titleBar, "LEFT", 8, 0);
titleText:SetText(L.TITLE .. "  " .. (app.Version or ""));
settings.MakePanel(window);
local checkboxSkipAutoRefresh = window:CreateCheckBox(L.SKIP_AUTO_REFRESH,
function(self)
	self:SetChecked(settings:Get("Skip:AutoRefresh"))
end,
function(self)
	local skipRefresh = self:GetChecked();
	settings:Set("Skip:AutoRefresh", skipRefresh)
	if not skipRefresh and settings.NeedsRefresh then settings:UpdateMode("FORCE"); end
end)
checkboxSkipAutoRefresh:SetATTTooltip(L.SKIP_AUTO_REFRESH_TOOLTIP);
checkboxSkipAutoRefresh:SetScale(1);
checkboxSkipAutoRefresh:SetSize(20, 20);
checkboxSkipAutoRefresh.Text:SetScale(1);
checkboxSkipAutoRefresh.Text:SetFontObject(GameFontNormalSmall);
checkboxSkipAutoRefresh.Text:ClearAllPoints()
checkboxSkipAutoRefresh.Text:SetPoint("RIGHT", titleBar, "RIGHT", -34, 0)
checkboxSkipAutoRefresh:SetPoint("RIGHT", checkboxSkipAutoRefresh.Text, "LEFT", -2, 0)
checkboxSkipAutoRefresh:SetHitRectInsets(0, -checkboxSkipAutoRefresh.Text:GetUnboundedStringWidth(), 0, 0);

-- Pages are parented to this frame
local host = CreateFrame("Frame", nil, window);
host:SetWidth(PAGE_WIDTH);
host:SetPoint("TOPRIGHT", window, "TOPRIGHT", -PADDING, -TITLE_HEIGHT - PADDING);
host:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -PADDING, PADDING);
settings.PageHost = host;

local grip = CreateFrame("Button", nil, window);
grip:SetSize(16, 16);
grip:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -2, 2);
grip:SetFrameLevel(window:GetFrameLevel() + 20);
grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up");
grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight");
grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down");
grip:SetScript("OnMouseDown", function() window:StartSizing("BOTTOM"); end);
grip:SetScript("OnMouseUp", function() window:StopMovingOrSizing(); end);

local sidebar = CreateFrame("Frame", nil, window);
sidebar:SetPoint("TOPLEFT", window, "TOPLEFT", PADDING, -TITLE_HEIGHT - PADDING);
sidebar:SetPoint("BOTTOMLEFT", window, "BOTTOMLEFT", PADDING, PADDING);
sidebar:SetWidth(SIDEBAR_WIDTH);
local sidebarLine = window:CreateTexture(nil, "ARTWORK");
sidebarLine:SetColorTexture(1, 1, 1, 0.2);
sidebarLine:SetWidth(1);
sidebarLine:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 4, 0);
sidebarLine:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMRIGHT", 4, 0);

-- Pages
local Pages, PagesByText, CurrentPage = {}, {}, nil;
local ShowPage, RefreshSidebar, RefreshResults;

-- Called by settings.CreateOptionsPage for every page
settings.RegisterPage = function(page, text, parentText, isDefault)
	page.SettingsText = text;
	page.SettingsParent = parentText;
	page:Hide();
	Pages[#Pages + 1] = page;
	PagesByText[text] = page;
	if isDefault then settings.DefaultPage = page; end
	if window:IsShown() then RefreshSidebar(); end
end
local function GetPageTitle(page)
	return page.SettingsText == appName and L.SETTINGS_ABOUT or page.SettingsText;
end
local function GetSection(page)
	local text, seen = page.SettingsText, {};
	while text and not seen[text] do
		-- Every section-less page has the root as its last parent, which doesn't say where it belongs
		if SectionByPage[text] and (text ~= appName or page.SettingsText == appName) then return SectionByPage[text]; end
		seen[text] = true;
		local parent = PagesByText[text];
		text = parent and parent.SettingsParent;
	end
	return Sections[#Sections];
end

-- Search
local function GetOptionPage(option)
	local frame = option.page or option.frame;
	while frame do
		if frame.SettingsText then return frame; end
		frame = frame:GetParent();
	end
end
local function CleanText(text)
	return (text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|T.-|t", ""):gsub("^%s+", ""):gsub("%s+$", ""));
end
local function AddResult(results, option, query, onlyChanged)
	if #results >= MAX_RESULTS then return; end
	local text = option.text and CleanText(option.text) or "";
	if text == "" then return; end
	if onlyChanged then
		if not (option.IsChanged and option.IsChanged()) then return; end
	elseif not (text:lower():find(query, 1, true) or (option.tooltip and option.tooltip:lower():find(query, 1, true))) then
		return;
	end
	local page = GetOptionPage(option);
	if not page then return; end
	results[#results + 1] = { text = text, option = option, page = page };
end
local function Search(query, onlyChanged)
	local results = {};
	if not onlyChanged then
		for _,page in ipairs(Pages) do
			local title = GetPageTitle(page);
			if title:lower():find(query, 1, true) then
				results[#results + 1] = { text = title, page = page, isPage = true };
			end
		end
	end
	for _,option in ipairs(Options) do AddResult(results, option, query, onlyChanged); end
	for _,provider in ipairs(Providers) do
		provider(function(option) AddResult(results, option, query, onlyChanged); end);
	end
	return results;
end

-- Highlights the option which was opened from the search
local highlight = CreateFrame("Frame", nil, host);
highlight:SetFrameStrata("DIALOG");
highlight:Hide();
local highlightTexture = highlight:CreateTexture(nil, "OVERLAY");
highlightTexture:SetAllPoints();
highlightTexture:SetColorTexture(1, 0.82, 0, 0.3);
highlight:SetScript("OnUpdate", function(self, elapsed)
	self.remaining = self.remaining - elapsed;
	if self.remaining <= 0 then
		self:Hide();
	else
		self:SetAlpha(math_min(1, self.remaining));
	end
end);
local function HighlightOption(frame)
	-- Scroll to the option first
	local parent = frame:GetParent();
	while parent and not parent.ScrollContainer do parent = parent:GetParent(); end
	local scroller = parent and parent.ScrollContainer;
	if scroller and frame:GetTop() and parent:GetTop() then
		local offset = parent:GetTop() - frame:GetTop() - 60;
		scroller:SetVerticalScroll(math_max(0, math_min(offset, scroller:GetVerticalScrollRange())));
	end
	highlight:ClearAllPoints();
	highlight:SetPoint("TOPLEFT", frame, "TOPLEFT", -4, 4);
	local label = frame.Text;
	if label and label.GetStringWidth and frame.GetChecked then
		highlight:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", -4, -4);
		highlight:SetPoint("RIGHT", label, "RIGHT", 4, 0);
	else
		highlight:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 4, -4);
	end
	highlight.remaining = 2;
	highlight:SetAlpha(1);
	highlight:Show();
end

-- Results page
local resultsPage = CreateFrame("Frame", nil, host);
resultsPage:SetAllPoints();
resultsPage:Hide();
local resultsTitle = resultsPage:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
resultsTitle:SetPoint("TOPLEFT", resultsPage, "TOPLEFT", 8, -8);
local resultsScroller = CreateFrame("ScrollFrame", "ATTSettingsWindowResults", resultsPage, app.IsClassic and "UIPanelScrollFrameTemplate" or "ScrollFrameTemplate");
resultsScroller:SetPoint("TOPLEFT", resultsPage, "TOPLEFT", 0, -34);
resultsScroller:SetPoint("BOTTOMRIGHT", resultsPage, "BOTTOMRIGHT", -30, 0);
local resultsContent = CreateFrame("Frame", nil, resultsScroller);
resultsContent:SetSize(PAGE_WIDTH - 40, 1);
resultsScroller:SetScrollChild(resultsContent);
resultsPage:SetScript("OnShow", function(self)
	self:SetScript("OnShow", nil);
	local scrollBar = resultsScroller.ScrollBar or _G["ATTSettingsWindowResultsScrollBar"];
	if scrollBar then settings.HideUnneededScrollBar(resultsScroller, scrollBar); end
end);

local function OpenResult(result)
	ShowPage(result.page);
	local option = result.option;
	if not option then return; end
	-- The Basic view may hide it
	if option.advanced and not ShowsAdvanced() then settings:SetTooltipSetting("Settings:Advanced", true); end
	if option.Open then option.Open(); end
	-- The page has to be laid out before it can scroll to the option
	local frame = option.frame;
	if frame then
		C_Timer.After(0.1, function()
			if frame:IsVisible() then HighlightOption(frame); end
		end);
	end
end
local ResultRows = {};
local function GetResultRow(index)
	local row = ResultRows[index];
	if row then return row; end
	row = CreateFrame("Button", nil, resultsContent);
	row:SetSize(PAGE_WIDTH - 40, ROW_HEIGHT);
	row:SetPoint("TOPLEFT", resultsContent, "TOPLEFT", 0, -(index - 1) * ROW_HEIGHT);
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row.Text = row:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
	row.Text:SetPoint("LEFT", row, "LEFT", 8, 0);
	row.Text:SetJustifyH("LEFT");
	row.Text:SetWordWrap(false);
	row.Page = row:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall");
	row.Page:SetPoint("RIGHT", row, "RIGHT", -8, 0);
	row.Text:SetPoint("RIGHT", row.Page, "LEFT", -8, 0);
	row:SetATTTooltip(L.SETTINGS_RESULT_TOOLTIP);
	row:SetScript("OnClick", function(self)
		if IsShiftKeyDown() then
			-- A command which other players can use to open the same option
			app:ShowPopupDialogWithEditBox(L.CLIPBOARDCOPYPASTE, "/att settings " .. self.result.text, nil, 10);
		else
			OpenResult(self.result);
		end
	end);
	ResultRows[index] = row;
	return row;
end
local function ShowResults(title, results)
	if CurrentPage then CurrentPage:Hide(); end
	highlight:Hide();
	resultsTitle:SetText(title .. " (" .. #results .. ")");
	for i,result in ipairs(results) do
		local row = GetResultRow(i);
		row.result = result;
		row.Text:SetText(result.text);
		row.Page:SetText(result.isPage and GetSection(result.page).title or GetPageTitle(result.page));
		row:Show();
	end
	for i=#results+1,#ResultRows do ResultRows[i]:Hide(); end
	resultsContent:SetHeight(math_max(1, #results * ROW_HEIGHT));
	resultsScroller:SetVerticalScroll(0);
	resultsPage:Show();
end

-- Search box
local showChanged;
local searchBox = CreateFrame("EditBox", "ATTSettingsWindowSearch", sidebar, "SearchBoxTemplate");
searchBox:SetAutoFocus(false);
searchBox:SetHeight(20);
searchBox:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 6, 0);
searchBox:SetPoint("TOPRIGHT", sidebar, "TOPRIGHT", -4, 0);
RefreshResults = function()
	if not window:IsShown() then return; end	-- The settings may not be loaded yet
	local query = (searchBox:GetText() or ""):lower():match("^%s*(.-)%s*$");
	if query ~= "" then
		ShowResults(SEARCH or "Search", Search(query));
	elseif showChanged then
		ShowResults(L.SETTINGS_CHANGED, Search(nil, true));
	else
		resultsPage:Hide();
		if CurrentPage then CurrentPage:Show(); end
	end
	RefreshSidebar();
end
searchBox:HookScript("OnTextChanged", function(self)
	local text = self:GetText();
	if text == self.lastText then return; end
	self.lastText = text;
	if text ~= "" then showChanged = nil; end
	RefreshResults();
end);

-- Sidebar
local SidebarRows, SidebarHeaders = {}, {};
local function CreateSidebarRow()
	local row = CreateFrame("Button", nil, sidebar);
	row:SetHeight(ROW_HEIGHT);
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row.Selected = row:CreateTexture(nil, "BACKGROUND");
	row.Selected:SetAllPoints();
	row.Selected:SetColorTexture(1, 0.82, 0, 0.15);
	row.Text = row:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
	row.Text:SetPoint("RIGHT", row, "RIGHT", -4, 0);
	row.Text:SetJustifyH("LEFT");
	row.Text:SetWordWrap(false);
	row:SetScript("OnClick", function(self)
		if self.page then ShowPage(self.page); end
	end);
	return row;
end
local changedRow = CreateSidebarRow();
changedRow:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, 0);
changedRow:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", 0, 0);
changedRow.Text:SetPoint("LEFT", changedRow, "LEFT", 8, 0);
changedRow.Text:SetText(L.SETTINGS_CHANGED);
changedRow:SetATTTooltip(L.SETTINGS_CHANGED_TOOLTIP);
changedRow:SetScript("OnClick", function()
	showChanged = true;
	searchBox.lastText = "";
	searchBox:SetText("");
	searchBox:ClearFocus();
	RefreshResults();
end);

-- Basic and Advanced view
settings.MakePanel(sidebar);
sidebar.GetName = function() return "ATTSettingsWindow-Sidebar"; end
local checkboxAdvanced = sidebar:CreateCheckBox(L.SETTINGS_ADVANCED, function(self)
	self:SetChecked(ShowsAdvanced() and true or false);
	if window:IsShown() then RefreshSidebar(); end
end, function(self)
	settings:SetTooltipSetting("Settings:Advanced", self:GetChecked() and true or false);
end);
checkboxAdvanced:SetATTTooltip(L.SETTINGS_ADVANCED_TOOLTIP);
checkboxAdvanced:SetScale(1);
checkboxAdvanced:SetSize(20, 20);
checkboxAdvanced.Text:SetScale(1);
checkboxAdvanced.Text:SetFontObject(GameFontHighlightSmall);
checkboxAdvanced:SetPoint("BOTTOMLEFT", changedRow, "TOPLEFT", 4, 2);

RefreshSidebar = function()
	local advanced = ShowsAdvanced();
	local y, rowIndex, searching = -28, 0, resultsPage:IsShown();
	for sectionIndex,section in ipairs(Sections) do
		local pages = {};
		for _,text in ipairs(section.pages) do
			local page = PagesByText[text];
			if page and (advanced or not AdvancedPages[text] or page == CurrentPage) then pages[#pages + 1] = page; end
		end
		-- Followed by the pages below them, e.g. the Phases of each expansion
		for _,page in ipairs(Pages) do
			if not SectionByPage[page.SettingsText] and GetSection(page) == section then pages[#pages + 1] = page; end
		end
		local header = SidebarHeaders[sectionIndex];
		if not header then
			header = sidebar:CreateFontString(nil, "ARTWORK", "GameFontNormal");
			header:SetJustifyH("LEFT");
			header:SetText(section.title);
			SidebarHeaders[sectionIndex] = header;
		end
		header:SetShown(#pages > 0);
		if #pages > 0 then
			header:ClearAllPoints();
			header:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 2, y - 4);
			y = y - SECTION_HEIGHT;
			for _,page in ipairs(pages) do
				rowIndex = rowIndex + 1;
				local row = SidebarRows[rowIndex];
				if not row then
					row = CreateSidebarRow();
					SidebarRows[rowIndex] = row;
				end
				row.page = page;
				row:ClearAllPoints();
				row:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 0, y);
				row:SetPoint("RIGHT", sidebar, "RIGHT", 0, 0);
				row.Text:SetPoint("LEFT", row, "LEFT", SectionByPage[page.SettingsText] and 12 or 22, 0);
				row.Text:SetText(GetPageTitle(page));
				row.Selected:SetShown(not searching and page == CurrentPage);
				row:Show();
				y = y - ROW_HEIGHT;
			end
		end
	end
	for i=rowIndex+1,#SidebarRows do SidebarRows[i]:Hide(); end
	changedRow.Selected:SetShown(searching and showChanged and true or false);
end
ShowPage = function(page)
	showChanged = nil;
	-- Clearing the search must not bring the previous page back
	searchBox.lastText = "";
	searchBox:SetText("");
	searchBox:ClearFocus();
	resultsPage:Hide();
	highlight:Hide();
	if CurrentPage and CurrentPage ~= page then CurrentPage:Hide(); end
	CurrentPage = page;
	page:Show();
	RefreshSidebar();
end
window:SetScript("OnShow", function()
	if not CurrentPage then
		ShowPage(settings.DefaultPage or Pages[1]);
	else
		RefreshResults();
	end
end);

-- Opens the settings, optionally on a page or searching for something.
-- Without either it closes them again when they're already open.
settings.Open = function(self, text)
	text = type(text) == "string" and text:match("^%s*(.-)%s*$") or "";
	if text == "" then
		window:SetShown(not window:IsShown());
		return;
	end
	window:Show();
	local query = text:lower();
	for _,page in ipairs(Pages) do
		if GetPageTitle(page):lower() == query then
			ShowPage(page);
			return;
		end
	end
	-- A single option with that name opens directly
	local exact, count = nil, 0;
	for _,result in ipairs(Search(query)) do
		if not result.isPage and result.text:lower() == query then
			exact = result;
			count = count + 1;
		end
	end
	if count == 1 then
		OpenResult(exact);
	else
		searchBox:SetText(text);
	end
end

-- /att settings [page or search]
local function OpenFromCommand(args)
	settings:Open(args and table.concat(args, " "));
	return true;
end
app.ChatCommands.Add("settings", OpenFromCommand, {
	"Usage : /att settings [page or search]",
	"Opens the ATT settings, on the given page or searching for the given text",
});

-- The entry in the game's AddOn options
local entry = CreateFrame("Frame", nil, UIParent);
entry:Hide();
local entryTitle = entry:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
entryTitle:SetPoint("TOPLEFT", entry, "TOPLEFT", 16, -16);
entryTitle:SetText(L.TITLE);
local entryButton = CreateFrame("Button", nil, entry, "UIPanelButtonTemplate");
entryButton:SetPoint("TOPLEFT", entryTitle, "BOTTOMLEFT", 0, -16);
entryButton:SetSize(200, 26);
entryButton:SetText(L.SETTINGS_OPEN);
entryButton:SetScript("OnClick", function()
	if SettingsPanel and not InCombatLockdown() then HideUIPanel(SettingsPanel); end
	window:Show();
end);
if Settings and Settings.RegisterCanvasLayoutCategory then
	Settings.RegisterAddOnCategory(Settings.RegisterCanvasLayoutCategory(entry, appName));
else
	entry.name = appName;
	InterfaceOptions_AddCategory(entry);
end
