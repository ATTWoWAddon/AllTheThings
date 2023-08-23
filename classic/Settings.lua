--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--				Copyright 2017-2023 Dylan Fortune (Crieve-Sargeras)           --
--------------------------------------------------------------------------------
local appName, app = ...;
local L = app.L;

-- Local cache
local ATTClassicSettings, ATTClassicSettingsPerCharacter = {}, {};

-- The Settings Frame
local settings = CreateFrame("FRAME", appName .. "-Settings", InterfaceOptionsFramePanelContainer or UIParent, BackdropTemplateMixin and "BackdropTemplate");
app.Settings = settings;
settings.AccountWide = {
	Achievements = true,
	BattlePets = true,
	Deaths = true,
	Exploration = true,
	FlightPaths = true,
	Illusions = true,
	Mounts = true,
	PVPRanks = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	RWP = true,
	Titles = true,
	Toys = true,
};
settings.Collectibles = {
	Achievements = true,
	BattlePets = true,
	Exploration = true,
	FlightPaths = true,
	Illusions = true,
	Loot = true,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	RWP = true,
	Titles = true,
	Toys = true,
};
settings.name = appName;
settings.MostRecentTab = nil;
settings:Hide();
settings.Tabs = {};
settings.TabsByName = {};
settings:SetBackdrop({
	bgFile = "Interface/RAIDFRAME/UI-RaidFrame-GroupBg",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = false, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
});
settings:SetBackdropColor(0, 0, 0, 1);
InterfaceOptions_AddCategory(settings);
settings.Open = function(self)
	-- Open the Options menu.
	if InterfaceOptionsFrame:IsVisible() then
		InterfaceOptionsFrame_Show();
	else
		InterfaceOptionsFrame_OpenToCategory(self.name);
		InterfaceOptionsFrame_OpenToCategory(self.name);
	end
end
settings:SetScript("OnShow", function(self)
	self:Refresh();
end);

-- Settings Class
local GeneralSettingsBase = {
	__index = {
		["AccountMode"] = false,
		["DebugMode"] = false,
		["FactionMode"] = false,
		["AccountWide:Achievements"] = false,
		["AccountWide:BattlePets"] = true,
		["AccountWide:Deaths"] = true,
		["AccountWide:Exploration"] = false,
		["AccountWide:FlightPaths"] = false,
		["AccountWide:Illusions"] = true,
		["AccountWide:Mounts"] = true,
		["AccountWide:PVPRanks"] = false,
		["AccountWide:Quests"] = false,
		["AccountWide:Recipes"] = true,
		["AccountWide:Reputations"] = false,
		["AccountWide:RWP"] = true,
		["AccountWide:Titles"] = false,
		["AccountWide:Toys"] = true,
		["Hide:PvP"] = false,
		["Thing:Achievements"] = true,
		["Thing:BattlePets"] = true,
		["Thing:Deaths"] = true,
		["Thing:Exploration"] = true,
		["Thing:FlightPaths"] = true,
		["Thing:Illusions"] = true,
		--["Thing:Loot"] = false,
		["Thing:Mounts"] = true,
		--["Thing:PVPRanks"] = false,
		["Thing:Quests"] = true,
		["Thing:Recipes"] = true,
		["Thing:Reputations"] = true,
		--["Thing:RWP"] = false,
		["Thing:Titles"] = true,
		["Thing:Toys"] = true,
		["Show:CompletedGroups"] = false,
		["Show:CollectedThings"] = false,
		["Show:OnlyActiveEvents"] = true,
	},
};
local FilterSettingsBase = {
	__index = {

	},
};
local RWPFilterSettingsBase = {
	__index = {

	},
};
local TooltipSettingsBase = {
	__index = {
		["Auto:AuctionList"] = true,
		["Auto:ProfessionList"] = true,
		["Integrate:LFGBulletinBoard"] = true,
		["Celebrate"] = true,
		["Channel"] = "master",
		["ClassRequirements"] = true,
		["Coordinates"] = true,
		["Descriptions"] = true,
		["DisplayInCombat"] = true,
		["Enabled"] = true,
		["KnownBy"] = true,
		["Locations"] = 5,
		["Lore"] = true,
		["MainListScale"] = 1,
		["MiniListScale"] = 1,
		["MinimapButton"] = true,
		["MinimapSize"] = 36,
		["MinimapStyle"] = false,
		["Models"] = true,
		["Objectives"] = true,
		["PlayDeathSound"] = false,
		["Precision"] = 2,
		["Progress"] = true,
		["QuestGivers"] = true,
		["RaceRequirements"] = true,
		["Report:Collected"] = true,
		["Report:CompletedQuests"] = false,
		["ShowIconOnly"] = false,
		["Show:CraftedItems"] = false,
		["Show:OtherCharacterQuests"] = false,
		["Show:Recipes"] = false,
		["Show:Remaining"] = false,
		["Show:SpellRanks"] = true,
		["SoftReserves"] = true,
		["SoftReservePersistence"] = false,
		["SourceLocations"] = true,
		["SourceLocations:Completed"] = true,
		["SourceLocations:Creatures"] = true,
		["SourceLocations:Things"] = true,
		["SummarizeThings"] = true,
		["Warn:Removed"] = true,
	},
};
local UnobtainableSettingsBase = {
	__index = {
		[1] = false,	-- Never Implemented
		[2] = false,	-- Removed From Game
		[3] = false,	-- Blizzard Balance
	},
};
local OnClickForTab = function(self)
	local id = self:GetID();
	local parent = self:GetParent();
	--PanelTemplates_SetTab(parent, id);
	-- print("CLICKED TAB", id, self:GetText());
	for i,tab in ipairs(parent.Tabs) do
		if i == id then
			for j,o in ipairs(tab.objects) do
				o:Show();
			end
		else
			for j,o in ipairs(tab.objects) do
				o:Hide();
			end
		end
	end
end;
settings.Initialize = function(self)
	PanelTemplates_SetNumTabs(self, #self.Tabs);

	local global_ATTClassicSettings = _G["ATTClassicSettings"];
	if global_ATTClassicSettings then ATTClassicSettings = global_ATTClassicSettings; end
	_G["ATTClassicSettings"] = ATTClassicSettings;

	local global_ATTClassicSettingsPerCharacter = _G["ATTClassicSettingsPerCharacter"];
	if global_ATTClassicSettingsPerCharacter then ATTClassicSettingsPerCharacter = global_ATTClassicSettingsPerCharacter; end
	_G["ATTClassicSettingsPerCharacter"] = ATTClassicSettingsPerCharacter;

	-- Assign the default settings
	if not ATTClassicSettings.General then ATTClassicSettings.General = {}; end
	if not ATTClassicSettings.Tooltips then ATTClassicSettings.Tooltips = {}; end
	if not ATTClassicSettings.Unobtainables then ATTClassicSettings.Unobtainables = {}; end
	setmetatable(ATTClassicSettings.General, GeneralSettingsBase);
	setmetatable(ATTClassicSettings.Tooltips, TooltipSettingsBase);
	setmetatable(ATTClassicSettings.Unobtainables, UnobtainableSettingsBase);

	-- Assign the preset filters for your character class as the default states
	if not ATTClassicSettingsPerCharacter.Filters then ATTClassicSettingsPerCharacter.Filters = {}; end
	if not ATTClassicSettingsPerCharacter.RWPFilters then ATTClassicSettingsPerCharacter.RWPFilters = {}; end
	FilterSettingsBase.__index = app.Presets[app.Class] or app.Presets.ALL;
	RWPFilterSettingsBase.__index = app.PresetRWPs[app.Class] or app.PresetRWPs.ALL;
	setmetatable(ATTClassicSettingsPerCharacter.Filters, FilterSettingsBase);
	setmetatable(ATTClassicSettingsPerCharacter.RWPFilters, RWPFilterSettingsBase);

	self.LocationsSlider:SetValue(self:GetTooltipSetting("Locations"));
	self.MainListScaleSlider:SetValue(self:GetTooltipSetting("MainListScale"));
	self.MiniListScaleSlider:SetValue(self:GetTooltipSetting("MiniListScale"));
	self.PrecisionSlider:SetValue(self:GetTooltipSetting("Precision"));
	self.MinimapButtonSizeSlider:SetValue(self:GetTooltipSetting("MinimapSize"));
	if self:GetTooltipSetting("MinimapButton") then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton(); end
		app.Minimap:Show();
	elseif app.Minimap then
		app.Minimap:Hide();
	end
	OnClickForTab(self.Tabs[1]);
	self:UpdateMode();

	-- Account Synchronization
	--self.TabsByName["Features"]:InitializeSyncWindow();
end
settings.CheckSeasonalDate = function(self, eventID, startMonth, startDay, endMonth, endDay)
	local today = date("*t");
	local now, start, ends = time({day=today.day,month=today.month,year=today.year,hour=0,min=0,sec=0});
	if startMonth <= endMonth then
		start = time({day=startDay,month=startMonth,year=today.year,hour=0,min=0,sec=0});
		ends = time({day=endDay,month=endMonth,year=today.year,hour=0,min=0,sec=0});
	else
		local year = today.year;
		if today.month < startMonth then year = year - 1; end
		start = time({day=startDay,month=startMonth,year=year,hour=0,min=0,sec=0});
		ends = time({day=endDay,month=endMonth,year=year + 1,hour=0,min=0,sec=0});
	end

	local active = (now >= start and now <= ends);
	app.ActiveEvents[eventID] = active;
end
settings.Get = function(self, setting)
	return ATTClassicSettings.General[setting];
end
settings.GetFilter = function(self, filterID)
	return ATTClassicSettingsPerCharacter.Filters[filterID];
end
settings.GetFilterForRWPBase = function(self, filterID)
	return app.PresetRWPs.ALL[filterID];
end
settings.GetFilterForRWP = function(self, filterID)
	return ATTClassicSettingsPerCharacter.RWPFilters[filterID];
end
settings.GetModeString = function(self)
	local mode = "Mode";
	if self:Get("DebugMode") then
		mode = "Debug " .. mode;
	else
		if self:Get("AccountMode") then
			if self:Get("FactionMode") then
				mode = FACTION .. " " .. mode;
			else
				mode = "Account " .. mode;
			end
		end

		if self:Get("Hide:PvP") then
			mode = "PvE " .. mode;
		end

		local things = {};
		local thingCount = 0;
		local totalThingCount = 0;
		local excludes = {
			["Thing:Deaths"] = true,
			["Thing:RWP"] = true,
		};
		if not (C_TransmogCollection and C_TransmogCollection.GetIllusions) then
			excludes["Thing:Illusions"] = true;
		end
		for key,_ in pairs(GeneralSettingsBase.__index) do
			if string.sub(key, 1, 6) == "Thing:" and not excludes[key] then
				totalThingCount = totalThingCount + 1;
				if settings:Get(key) then
					thingCount = thingCount + 1;
					tinsert(things, string.sub(key, 7));
				end
			end
		end
		if thingCount == 0 then
			if self:Get("Thing:RWP") then
				mode = "RWP Only " .. mode;
			else
				mode = "None of the Things " .. mode;
			end
		else
			if thingCount == 1 then
				mode = things[1] .. " Only " .. mode;
			elseif thingCount == 2 then
				mode = things[1] .. " + " .. things[2] .. " Only " .. mode;
			elseif thingCount == totalThingCount then
				mode = "Insane " .. mode;
			else
				mode = "Normal " .. mode;
			end
			if self:Get("Thing:RWP") then
				mode = mode .. " + RWP";
			end
		end
	end
	if self:Get("Filter:ByLevel") then
		mode = "Level " .. app.Level .. " " .. mode;
	end
	return mode;
end
settings.GetShortModeString = function(self)
	if self:Get("DebugMode") then
		return "D";
	elseif self:Get("AccountMode") then
		return "A";
	else
		return "N";
	end
end
settings.GetPersonal = function(self, setting)
	return ATTClassicSettingsPerCharacter[setting];
end
settings.GetTooltipSetting = function(self, setting)
	return ATTClassicSettings.Tooltips[setting];
end
settings.GetUnobtainableFilter = function(self, u)
	return ATTClassicSettings.Unobtainables[u];
end
settings.Set = function(self, setting, value)
	ATTClassicSettings.General[setting] = value;
	self:Refresh();
end
settings.SetFilter = function(self, filterID, value)
	ATTClassicSettingsPerCharacter.Filters[filterID] = value;
	self:Refresh();
	app:RefreshDataCompletely("SetFilter:" .. filterID);
end
settings.SetTooltipSetting = function(self, setting, value)
	ATTClassicSettings.Tooltips[setting] = value;
	wipe(app.searchCache);
	self:Refresh();
end
settings.SetUnobtainableFilter = function(self, u, value)
	ATTClassicSettings.Unobtainables[u] = value;
	self:Refresh();
	app:RefreshDataCompletely("SetUnobtainableFilter");
end
settings.SetPersonal = function(self, setting, value)
	ATTClassicSettingsPerCharacter[setting] = value;
	self:Refresh();
end
settings.Refresh = function(self)
	for i,tab in ipairs(self.Tabs) do
		if tab.OnRefresh then tab:OnRefresh(); end
		for j,o in ipairs(tab.objects) do
			if o.OnRefresh then o:OnRefresh(); end
		end
	end
end
settings.CreateCheckBox = function(self, text, OnRefresh, OnClick)
	local cb = CreateFrame("CheckButton", self:GetName() .. "-" .. text, self, "InterfaceOptionsCheckButtonTemplate");
	tinsert(self.MostRecentTab.objects, cb);
	cb:SetScript("OnClick", OnClick);
	cb.OnRefresh = OnRefresh;
	cb.Text:SetText(text);
	return cb;
end
settings.CreateTab = function(self, text)
	local id = #self.Tabs + 1;
	local tab = CreateFrame('Button', self:GetName() .. '-Tab' .. id, self, 'OptionsFrameTabButtonTemplate');
	if id > 1 then tab:SetPoint("TOPLEFT", self.Tabs[id - 1], "TOPRIGHT", 0, 0); end
	tinsert(self.Tabs, tab);
	self.MostRecentTab = tab;
	tab.objects = {};
	tab:SetID(id);
	tab:SetText(text);
	self.TabsByName[text] = tab;
	--PanelTemplates_TabResize(tab, 0);
	tab:SetScript('OnClick', OnClickForTab);
	return tab;
end
settings.ShowCopyPasteDialog = function(self)
	app:ShowPopupDialogWithEditBox("Ctrl+A, Ctrl+C to Copy to your Clipboard.", self.copypasta or self:GetText(), nil, 10);
end

settings.SetAccountMode = function(self, accountMode)
	self:Set("AccountMode", accountMode);
	self:UpdateMode();
	app:RefreshDataCompletely("SetAccountMode");
end
settings.ToggleAccountMode = function(self)
	self:SetAccountMode(not self:Get("AccountMode"));
end
settings.SetDebugMode = function(self, debugMode)
	self:Set("DebugMode", debugMode);
	self:UpdateMode();
	if debugMode then app.RefreshCollections(); end
	app:RefreshDataCompletely("SetDebugMode");
end
settings.ToggleDebugMode = function(self)
	self:SetDebugMode(not self:Get("DebugMode"));
end
settings.SetFactionMode = function(self, factionMode)
	self:Set("FactionMode", factionMode);
	self:UpdateMode();
	if factionMode then app.RefreshCollections(); end
	app:RefreshDataCompletely("SetFactionMode");
end
settings.ToggleFactionMode = function(self)
	self:SetFactionMode(not self:Get("FactionMode"));
end
settings.SetCompletedThings = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode();
	app:RefreshDataCompletely("SetCompletedThings");
end
settings.ToggleCompletedThings = function(self)
	self:SetCompletedThings(not self:Get("Show:CompletedGroups"));
end
settings.SetCompletedGroups = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:UpdateMode();
	app:RefreshDataCompletely("SetCompletedGroups");
end
settings.ToggleCompletedGroups = function(self)
	self:SetCompletedGroups(not self:Get("Show:CompletedGroups"));
end
settings.SetCollectedThings = function(self, checked)
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode();
	app:RefreshDataCompletely("SetCollectedThings");
end
settings.ToggleCollectedThings = function(self)
	settings:SetCollectedThings(not self:Get("Show:CollectedThings", checked));
end
settings.SetHideBOEItems = function(self, checked)
	self:Set("Hide:BoEs", checked);
	if checked then
		app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
	else
		app.RequireBindingFilter = app.NoFilter;
	end
	app:RefreshDataCompletely("SetHideBOEItems");
end
settings.ToggleBOEItems = function(self)
	self:SetHideBOEItems(not self:Get("Hide:BoEs"));
end
settings.SetLootMode = function(self, checked)
	self:Set("Thing:Loot", checked);
	self:UpdateMode();
	app:RefreshDataCompletely("SetLootMode");
end
settings.ToggleLootMode = function(self)
	self:SetLootMode(not self:Get("Thing:Loot"));
end
settings.SetSourceLocations = function(self, checked)
	self:SetTooltipSetting("SourceLocations", checked);
end
settings.ToggleSourceLocations = function(self)
	self:SetSourceLocations(not self:GetTooltipSetting("SourceLocations"));
end
settings.UpdateMode = function(self)
	if self:Get("DebugMode") then
		app.GroupFilter = app.NoFilter;
		app.VisibilityFilter = app.NoFilter;

		app.ItemTypeFilter = app.NoFilter;
		app.ClassRequirementFilter = app.NoFilter;
		app.RaceRequirementFilter = app.NoFilter;
		app.RequiredSkillFilter = app.NoFilter;
		app.RequireFactionFilter = app.NoFilter;
		app.RequireEventFilter = app.NoFilter;

		local accountWideSettings = self.AccountWide;
		for key,value in pairs(accountWideSettings) do
			accountWideSettings[key] = true;
		end

		local collectibleSettings = self.Collectibles;
		for key,value in pairs(collectibleSettings) do
			collectibleSettings[key] = true;
		end

		-- Modules
		app.Modules.PVPRanks.SetCollectible(true);
	else
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		app.GroupFilter = app.FilterItemClass;

		local accountWideSettings = self.AccountWide;
		for key,value in pairs(accountWideSettings) do
			accountWideSettings[key] = self:Get("AccountWide:" .. key);
		end

		local collectibleSettings = self.Collectibles;
		for key,value in pairs(collectibleSettings) do
			collectibleSettings[key] = self:Get("Thing:" .. key);
		end

		-- Modules
		app.Modules.PVPRanks.SetCollectible(self:Get("Thing:PVPRanks"));

		if self:Get("AccountMode") then
			app.ItemTypeFilter = app.NoFilter;
			app.ClassRequirementFilter = app.NoFilter;
			app.RequiredSkillFilter = app.NoFilter;
			app.RequireFactionFilter = app.NoFilter;
			if self:Get("FactionMode") then
				app.RaceRequirementFilter = app.FilterItemClass_RequireRacesCurrentFaction;
			else
				app.RaceRequirementFilter = app.NoFilter;
			end
		else
			app.ItemTypeFilter = app.FilterItemClass_RequireItemFilter;
			app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
			app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
			app.RequiredSkillFilter = app.FilterItemClass_RequiredSkill;
			app.RequireFactionFilter = app.FilterItemClass_RequireFaction;
		end

		if self:Get("Show:OnlyActiveEvents") then
			app.RequireEventFilter = app.Modules.Events.FilterIsEventActive;
		else
			app.RequireEventFilter = app.NoFilter;
		end
	end

	local filters = ATTClassicSettingsPerCharacter.Filters;
	for filterID,state in pairs({
		[100] = self.Collectibles.Mounts,
		[101] = self.Collectibles.BattlePets,
		[102] = self.Collectibles.Toys,
		[200] = self.Collectibles.Recipes,
	}) do
		filters[filterID] = state;
	end
	if self:Get("Show:CompletedGroups") or self:Get("DebugMode") then
		app.GroupVisibilityFilter = app.NoFilter;
	else
		app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
	end
	if self:Get("Show:CollectedThings") or self:Get("DebugMode") then
		app.CollectedItemVisibilityFilter = app.NoFilter;
	else
		app.CollectedItemVisibilityFilter = app.Filter;
	end
	if self:Get("Show:IncompleteThings") then
		app.ShowIncompleteThings = app.FilterItemTrackable;
	else
		app.ShowIncompleteThings = app.Filter;
	end
	if self:Get("Filter:BoEs") then
		app.ItemBindFilter = app.FilterItemBind;
	else
		app.ItemBindFilter = app.Filter;
	end
	if self:Get("Hide:BoEs") then
		app.RequireBindingFilter = app.FilterItemClass_RequireBinding;
	else
		app.RequireBindingFilter = app.NoFilter;
	end
	if self:Get("Hide:PvP") then
		app.PvPFilter = app.FilterItemPvP;
	else
		app.PvPFilter = app.NoFilter;
	end
	app:UnregisterEvent("PLAYER_LEVEL_UP");
	if self:Get("Filter:ByLevel") and not self:Get("DebugMode") then
		app:RegisterEvent("PLAYER_LEVEL_UP");
		app.GroupRequirementsFilter = app.FilterGroupsByLevel;
	else
		app.GroupRequirementsFilter = app.NoFilter;
	end
	app:UnregisterEvent("GOSSIP_SHOW");
	app:UnregisterEvent("TAXIMAP_OPENED");
	if self:Get("Thing:FlightPaths") or self:Get("DebugMode") then
		app:RegisterEvent("GOSSIP_SHOW");
		app:RegisterEvent("TAXIMAP_OPENED");
	end
end

-- The ALL THE THINGS Epic Logo!
local f = settings:CreateTexture(nil, "ARTWORK");
f:SetPoint("TOPLEFT", settings, "TOPLEFT", 8, -8);
f:SetTexture(app.asset("Discord_2_64"));
f:SetSize(36, 36);
f:Show();
settings.logo = f;

f = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
f:SetPoint("TOPLEFT", settings.logo, "TOPRIGHT", 4, -4);
f:SetJustifyH("LEFT");
f:SetText(L["TITLE"]);
f:SetScale(1.5);
f:Show();
settings.title = f;

f = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
f:SetPoint("TOPRIGHT", settings, "TOPRIGHT", -8, -8);
f:SetJustifyH("RIGHT");
f:SetText("Crieve-Atiesh\n" .. app.Version);
f:Show();
settings.version = f;

f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("TOPLEFT", settings, "BOTTOMLEFT", 0, -6);
f:SetText("CurseForge");
f:SetWidth(140);
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", settings.ShowCopyPasteDialog);
f:SetATTTooltip("Click this button to copy the url to get the ALL THE THINGS addon from Curse.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.");
f.copypasta = "https://www.curseforge.com/wow/addons/all-the-things";
settings.curse = f;

f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("TOPLEFT", settings.curse, "TOPRIGHT", 4, 0);
f:SetText("Discord");
f:SetWidth(140);
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", settings.ShowCopyPasteDialog);
f:SetATTTooltip("Click this button to copy the url to get to the ALL THE THINGS Discord.\n\nYou can share your progress/frustrations with other collectors!");
f.copypasta = "discord.gg/allthethings";
settings.discord = f;

f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("TOPLEFT", settings.discord, "TOPRIGHT", 4, 0);
f:SetText("Twitch");
f:SetWidth(140);
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", settings.ShowCopyPasteDialog);
f:SetATTTooltip("Click this button to copy the url to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!");
f.copypasta = "twitch.tv/crieve";
settings.twitch = f;

local currentBuild = select(4, GetBuildInfo());
local reasons = L["UNOBTAINABLE_ITEM_REASONS"];
local UnobtainableFilterOnClick = function(self)
	local checked = self:GetChecked();
	if checked then
		-- If the phase is active, fall through to the base setting.
		if UnobtainableSettingsBase.__index[self.u] then
			settings:SetUnobtainableFilter(self.u, nil);
		else
			settings:SetUnobtainableFilter(self.u, true);
		end
	else
		settings:SetUnobtainableFilter(self.u, false);
	end
end;
local UnobtainableOnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:SetChecked(settings:GetUnobtainableFilter(self.u));

		local minimumBuild = reasons[self.u][4];
		if minimumBuild and minimumBuild > currentBuild then
			self:Disable();
			self:SetAlpha(0.2);
		else
			self:Enable();
			self:SetAlpha(1);
			if UnobtainableSettingsBase.__index[self.u] then
				self.Text:SetTextColor(0.6, 0.7, 1);
			else
				self.Text:SetTextColor(1, 1, 1);
			end
		end
	end
end;

------------------------------------------
-- The "General" Tab.					--
------------------------------------------
local line;
(function()
local tab = settings:CreateTab("General");
tab:SetPoint("TOPLEFT", settings.logo, "BOTTOMRIGHT", 16, 0);
line = settings:CreateTexture(nil, "ARTWORK");
line:SetPoint("LEFT", settings, "LEFT", 4, 0);
line:SetPoint("RIGHT", settings, "RIGHT", -4, 0);
line:SetPoint("TOP", settings.Tabs[1], "BOTTOM", 0, 0);
line:SetColorTexture(1, 1, 1, 0.4);
line:SetHeight(2);

local ModeLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ModeLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ModeLabel:SetJustifyH("LEFT");
ModeLabel:Show();
tinsert(settings.MostRecentTab.objects, ModeLabel);
ModeLabel.OnRefresh = function(self)
	self:SetText(settings:GetModeString());
end;

local DebugModeCheckBox = settings:CreateCheckBox("|C" .. app.Colors.Completed .. "Debug Mode|r (Show Everything)",
function(self)
	self:SetChecked(settings:Get("DebugMode"));
end,
function(self)
	settings:SetDebugMode(self:GetChecked());
end);
DebugModeCheckBox:SetATTTooltip("Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.");
DebugModeCheckBox:SetPoint("TOPLEFT", ModeLabel, "BOTTOMLEFT", 0, -8);

local AccountModeCheckBox = settings:CreateCheckBox("|Cff00ab00Account Mode|r",
function(self)
	self:SetChecked(settings:Get("AccountMode"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetAccountMode(self:GetChecked());
end);
AccountModeCheckBox:SetATTTooltip("Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.");
AccountModeCheckBox:SetPoint("TOPLEFT", DebugModeCheckBox, "BOTTOMLEFT", 0, 4);

local FactionModeCheckBox = settings:CreateCheckBox("Only Current Faction",
function(self)
	self:SetChecked(settings:Get("FactionMode"));
	if settings:Get("DebugMode") or not settings:Get("AccountMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetFactionMode(self:GetChecked());
end);
FactionModeCheckBox:SetATTTooltip(L["FACTION_MODE_TOOLTIP"]);
FactionModeCheckBox:SetPoint("TOPLEFT", AccountModeCheckBox, "TOPLEFT", 140, 0);

-- This creates the "Precision" slider.
local PrecisionSlider = CreateFrame("Slider", "ATTPrecisionSlider", settings, "OptionsSliderTemplate");
PrecisionSlider:SetPoint("RIGHT", settings, "RIGHT", -20, 0);
PrecisionSlider:SetPoint("TOP", ModeLabel, "BOTTOM", 0, -12);
tinsert(settings.MostRecentTab.objects, PrecisionSlider);
settings.PrecisionSlider = PrecisionSlider;
PrecisionSlider.tooltipText = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
PrecisionSlider:SetOrientation('HORIZONTAL');
PrecisionSlider:SetWidth(260);
PrecisionSlider:SetHeight(20);
PrecisionSlider:SetValueStep(1);
PrecisionSlider:SetMinMaxValues(0, 8);
PrecisionSlider:SetObeyStepOnDrag(true);
_G[PrecisionSlider:GetName() .. 'Low']:SetText('0')
_G[PrecisionSlider:GetName() .. 'High']:SetText('8')
_G[PrecisionSlider:GetName() .. 'Text']:SetText("Level of Precision for Percentage")
PrecisionSlider.Label = PrecisionSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
PrecisionSlider.Label:SetPoint("TOP", PrecisionSlider, "BOTTOM", 0, 0);
PrecisionSlider.Label:SetText(PrecisionSlider:GetValue());
PrecisionSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("Precision") then
		return 1;
	end
	settings:SetTooltipSetting("Precision", newValue);
	app:RedrawWindows("PrecisionSlider");
end);

-- This creates the "Minimap Button Size" slider.
local MinimapButtonSizeSlider = CreateFrame("Slider", "ATTMinimapButtonSizeSlider", settings, "OptionsSliderTemplate");
MinimapButtonSizeSlider:SetPoint("RIGHT", settings, "RIGHT", -20, 0);
MinimapButtonSizeSlider:SetPoint("TOP", PrecisionSlider, "BOTTOM", 0, -28);
tinsert(settings.MostRecentTab.objects, MinimapButtonSizeSlider);
settings.MinimapButtonSizeSlider = MinimapButtonSizeSlider;
MinimapButtonSizeSlider.tooltipText = 'Use this to customize the size of the Minimap Button.\n\nDefault: 36';
MinimapButtonSizeSlider:SetOrientation('HORIZONTAL');
MinimapButtonSizeSlider:SetWidth(260);
MinimapButtonSizeSlider:SetHeight(20);
MinimapButtonSizeSlider:SetValueStep(1);
MinimapButtonSizeSlider:SetMinMaxValues(18, 48);
MinimapButtonSizeSlider:SetObeyStepOnDrag(true);
_G[MinimapButtonSizeSlider:GetName() .. 'Low']:SetText('18')
_G[MinimapButtonSizeSlider:GetName() .. 'High']:SetText('48')
_G[MinimapButtonSizeSlider:GetName() .. 'Text']:SetText("Minimap Button Size")
MinimapButtonSizeSlider.Label = MinimapButtonSizeSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MinimapButtonSizeSlider.Label:SetPoint("TOP", MinimapButtonSizeSlider, "BOTTOM", 0, 0);
MinimapButtonSizeSlider.Label:SetText(MinimapButtonSizeSlider:GetValue());
MinimapButtonSizeSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("MinimapSize") then
		return 1;
	end
	settings:SetTooltipSetting("MinimapSize", newValue)
	if app.Minimap then app.Minimap:SetSize(newValue, newValue); end
end);



local ThingsLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ThingsLabel:SetPoint("TOPLEFT", AccountModeCheckBox, "BOTTOMLEFT", 0, -16);
ThingsLabel:SetJustifyH("LEFT");
ThingsLabel:SetText("Which \"Things\" do you want to track?");
ThingsLabel:Show();
tinsert(settings.MostRecentTab.objects, ThingsLabel);
ThingsLabel.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		self:SetAlpha(0.2);
	else
		self:SetAlpha(1);
	end
end;

local AchievementsCheckBox = settings:CreateCheckBox(TRACKER_FILTER_ACHIEVEMENTS,
function(self)
	self:SetChecked(settings:Get("Thing:Achievements"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("achievementID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Achievements", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("AchievementsCheckBox");
end);
AchievementsCheckBox:SetATTTooltip("Enable this option to track achievements.\n\nNOTE: At this time, they are not officially implemented in WoW's API, but ATT can kinda make its own until then.");
AchievementsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Achievements", t.total);
end
AchievementsCheckBox:SetPoint("TOPLEFT", ThingsLabel, "BOTTOMLEFT", 0, -8);

local AchievementsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Achievements"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Achievements") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Achievements", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("AchievementsAccountWideCheckBox");
end);
AchievementsAccountWideCheckBox:SetATTTooltip("This behaviour is dependent on whether an achievement supports detection account wide or not. Unchecking this option just tells the achievement that you only want to check your current character. Some achievements are exclusively per-character.");
AchievementsAccountWideCheckBox:SetPoint("TOPLEFT", AchievementsCheckBox, "TOPLEFT", 220, 0);

local BattlePetsCheckBox = settings:CreateCheckBox(AUCTION_CATEGORY_BATTLE_PETS,
function(self)
	self:SetChecked(settings:Get("Thing:BattlePets"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("speciesID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:BattlePets", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("BattlePetsCheckBox");
end);
BattlePetsCheckBox:SetATTTooltip("Enable this option to track battle & companion pets.\n\nNOTE: At this time, you cannot use them for battling, but they can follow you around and be all cute and stuff.\n\nGotta Horde 'em all!");
BattlePetsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Battle Pets", t.total);
end
BattlePetsCheckBox:SetPoint("TOPLEFT", AchievementsCheckBox, "BOTTOMLEFT", 0, 4);

local BattlePetsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:BattlePets"));
	if settings:Get("DebugMode") or not settings:Get("Thing:BattlePets") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:BattlePets", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("BattlePetsAccountWideCheckBox");
end);
BattlePetsAccountWideCheckBox:SetATTTooltip("Companion pets can be collected on multiple characters and realistically would require that you have an insane amount of bag space in order to collect them all on one character.\n\nWe recommend you keep this turned on, but you do you fam.");
BattlePetsAccountWideCheckBox:SetPoint("TOPLEFT", BattlePetsCheckBox, "TOPLEFT", 220, 0);

local DeathsCheckBox = settings:CreateCheckBox("Deaths / Soul Fragments",
function(self)
	self:SetChecked(settings:Get("Thing:Deaths"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Thing:Deaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("DeathsCheckBox");
end);
DeathsCheckBox:SetATTTooltip("Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.");
DeathsCheckBox:SetPoint("TOPLEFT", BattlePetsCheckBox, "BOTTOMLEFT", 0, 4);

local DeathsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Deaths"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Deaths") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Deaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("DeathsAccountWideCheckBox");
end);
DeathsAccountWideCheckBox:SetATTTooltip("Most people keep this setting turned on. It may be considered insane to turn it off!");
DeathsAccountWideCheckBox:SetPoint("TOPLEFT", DeathsCheckBox, "TOPLEFT", 220, 0);

local ExplorationCheckBox = settings:CreateCheckBox("Exploration / Map Completion",
function(self)
	self:SetChecked(settings:Get("Thing:Exploration"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("explorationID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Exploration", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ExplorationCheckBox");
end);
ExplorationCheckBox:SetATTTooltip("Enable this option to track exploration completion for outdoor maps. If you want the Explorer title, completing this in preparation for Wrath Classic will greatly help you!");
ExplorationCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Exploration", t.total);
end
ExplorationCheckBox:SetPoint("TOPLEFT", DeathsCheckBox, "BOTTOMLEFT", 0, 4);

local ExplorationAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Exploration"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Exploration") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Exploration", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ExplorationAccountWideCheckBox");
end);
ExplorationAccountWideCheckBox:SetATTTooltip("Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?");
ExplorationAccountWideCheckBox:SetPoint("TOPLEFT", ExplorationCheckBox, "TOPLEFT", 220, 0);

local FlightPathsCheckBox = settings:CreateCheckBox("Flight Paths / Ferry Stations",
function(self)
	self:SetChecked(settings:Get("Thing:FlightPaths"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("flightPathID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:FlightPaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("FlightPathsCheckBox");
end);
FlightPathsCheckBox:SetATTTooltip("Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\NOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.");
FlightPathsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Flight Paths", t.total);
end
FlightPathsCheckBox:SetPoint("TOPLEFT", ExplorationCheckBox, "BOTTOMLEFT", 0, 4);

local FlightPathsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:FlightPaths"));
	if settings:Get("DebugMode") or not settings:Get("Thing:FlightPaths") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:FlightPaths", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("FlightPathsAccountWideCheckBox");
end);
FlightPathsAccountWideCheckBox:SetATTTooltip("Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?");
FlightPathsAccountWideCheckBox:SetPoint("TOPLEFT", FlightPathsCheckBox, "TOPLEFT", 220, 0);

-- Illusions aren't in the game until Transmog is.
local IllusionsCheckBox;
if C_TransmogCollection then
IllusionsCheckBox = settings:CreateCheckBox("Illusions",
function(self)
	self:SetChecked(settings:Get("Thing:Illusions"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("illusionID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Illusions", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("IllusionsCheckBox");
end);
IllusionsCheckBox:SetATTTooltip("Enable this option to track illusions, which are really cool looking transmog effects you can apply to your weapons!");
IllusionsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Illusions", t.total);
end
IllusionsCheckBox:SetPoint("TOPLEFT", FlightPathsCheckBox, "BOTTOMLEFT", 0, 4);

local IllusionsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(true);
	self:Disable();
	self:SetAlpha(0.2);
end);
IllusionsAccountWideCheckBox:SetATTTooltip("Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?");
IllusionsAccountWideCheckBox:SetPoint("TOPLEFT", IllusionsCheckBox, "TOPLEFT", 220, 0);
end

local LootCheckBox = settings:CreateCheckBox("Loot / Drops / Items",
function(self)
	self:SetChecked(settings:Get("Thing:Loot"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetLootMode(self:GetChecked());
end);
LootCheckBox:SetATTTooltip("Enable this option to track loot.\n\nLoot being any item you can get from a mob, quest, or container. Loot that qualifies for one of the other filters will still appear in ATT if this filter is turned off.\n\nYou can change which sort of loot displays for you based on the Filters tab.\n\nDefault: Class Defaults, Disabled.");
LootCheckBox:SetPoint("TOPLEFT", IllusionsCheckBox or FlightPathsCheckBox, "BOTTOMLEFT", 0, 4);

local RWPCheckBox = settings:CreateCheckBox("Removed With Patch Loot",
function(self)
	self:SetChecked(settings:Get("Thing:RWP"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("itemID");
		for i,o in pairs(container) do
			for i,p in ipairs(o) do
				if p.itemID and p.rwp and p.f and app.Settings:GetFilterForRWPBase(p.f) then
					total = total + 1;
					break;
				end
			end
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:RWP", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("RWPCheckBox");
end);
RWPCheckBox:SetATTTooltip("Enable this option to track future removed from game loot. Only Items tagged with 'removed with patch' data count toward this. If you find an item not tagged that should be tagged, please let me know!\n\nYou can change which sort of loot displays for you based on the Filters tab.\n\nDefault: Class Defaults, Disabled.");
RWPCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total RWP", t.total);
end
RWPCheckBox:SetPoint("TOPLEFT", LootCheckBox, "BOTTOMLEFT", 0, 4);

local RWPAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:RWP"));
	if settings:Get("DebugMode") or not settings:Get("Thing:RWP") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:RWP", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("RWPAccountWideCheckBox");
end);
RWPAccountWideCheckBox:SetATTTooltip("Removed from Game Items should be collected account wide. Certain items cannot be learned by every class, so ATT will do its best to only show you things that you can collect on your current character.");
RWPAccountWideCheckBox:SetPoint("TOPLEFT", RWPCheckBox, "TOPLEFT", 220, 0);

local MountsCheckBox = settings:CreateCheckBox("Mounts",
function(self)
	self:SetChecked(settings:Get("Thing:Mounts"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("spellID");
		for i,o in pairs(container) do
			for i,p in ipairs(o) do
				if p.f == 100 then
					total = total + 1;
					break;
				end
			end
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Mounts", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("MountsCheckBox");
end);
if C_PetJournal then
MountsCheckBox:SetATTTooltip("Enable this option to track mounts.");
else
MountsCheckBox:SetATTTooltip("Enable this option to track mounts.\n\nFair warning! Do this at your own risk, it will take up a lot of inventory space across your account and they can not be sent between characters!\n\nAdditionally, the cost of all Vendor mounts is reduced to 1/10 of their current prices with Wrath.");
end
MountsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Mounts", t.total);
end
MountsCheckBox:SetPoint("TOPLEFT", RWPCheckBox, "BOTTOMLEFT", 0, 4);

local MountsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Mounts"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Mounts") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Mounts", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("MountsAccountWideCheckBox");
end);
MountsAccountWideCheckBox:SetPoint("TOPLEFT", MountsCheckBox, "TOPLEFT", 220, 0);

local QuestsCheckBox = settings:CreateCheckBox("Quests",
function(self)
	self:SetChecked(settings:Get("Thing:Quests"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("questID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Quests", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("QuestsCheckBox");
end);
QuestsCheckBox:SetATTTooltip("Enable this option to track quests.\n\nYou can right click any quest in the lists to pop out their full quest chain to show your progress and any prerequisite or breadcrumb quests.\n\nNOTE: Quests are not permanently tracked due to the nature of how Daily, Weekly, Yearly, and Repeatable Quests are tracked in the Blizzard Database.");
QuestsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Quests", t.total);
end
QuestsCheckBox:SetPoint("TOPLEFT", MountsCheckBox, "BOTTOMLEFT", 0, 4);

local QuestsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Quests"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Quests") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Quests", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("QuestsAccountWideCheckBox");
end);
QuestsAccountWideCheckBox:SetPoint("TOPLEFT", QuestsCheckBox, "TOPLEFT", 220, 0);

local RecipesCheckBox = settings:CreateCheckBox("Recipes",
function(self)
	self:SetChecked(settings:Get("Thing:Recipes"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("spellID");
		for i,o in pairs(container) do
			for i,p in ipairs(o) do
				if p.f == 200 then
					total = total + 1;
					break;
				end
			end
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Recipes", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("RecipesCheckBox");
end);
RecipesCheckBox:SetATTTooltip("Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.");
RecipesCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Recipes", t.total);
end
RecipesCheckBox:SetPoint("TOPLEFT", QuestsCheckBox, "BOTTOMLEFT", 0, 4);

local RecipesAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Recipes"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Recipes") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Recipes", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("RecipesAccountWideCheckBox");
end);
RecipesAccountWideCheckBox:SetATTTooltip("Recipes are not normally tracked account wide in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.");
RecipesAccountWideCheckBox:SetPoint("TOPLEFT", RecipesCheckBox, "TOPLEFT", 220, 0);

local ReputationsCheckBox = settings:CreateCheckBox("Reputations",
function(self)
	self:SetChecked(settings:Get("Thing:Reputations"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("factionID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Reputations", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ReputationsCheckBox");
end);
ReputationsCheckBox:SetATTTooltip("Enable this option to track reputations.\n\nOnce you reach Exalted with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.");
ReputationsCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Reputations", t.total);
end
ReputationsCheckBox:SetPoint("TOPLEFT", RecipesCheckBox, "BOTTOMLEFT", 0, 4);

local ReputationsAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Reputations"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Reputations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Reputations", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ReputationsAccountWideCheckBox");
end);
ReputationsAccountWideCheckBox:SetATTTooltip("Reputations are not normally tracked account wide in Blizzard's database, but we can do that.");
ReputationsAccountWideCheckBox:SetPoint("TOPLEFT", ReputationsCheckBox, "TOPLEFT", 220, 0);

local TitlesCheckBox = settings:CreateCheckBox(PAPERDOLL_SIDEBAR_TITLES,
function(self)
	self:SetChecked(settings:Get("Thing:Titles"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("titleID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Titles", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("TitlesCheckBox");
end);
TitlesCheckBox:SetATTTooltip("Enable this option to track character titles.");
TitlesCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Titles", t.total);
end
TitlesCheckBox:SetPoint("TOPLEFT", ReputationsCheckBox, "BOTTOMLEFT", 0, 4);

local TitlesAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Titles"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Titles") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Titles", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("TitlesAccountWideCheckBox");
end);
TitlesAccountWideCheckBox:SetATTTooltip("Titles are not normally tracked account wide in Blizzard's database, but we can do that.");
TitlesAccountWideCheckBox:SetPoint("TOPLEFT", TitlesCheckBox, "TOPLEFT", 220, 0);

local ToysCheckBox = settings:CreateCheckBox(TOY_BOX,
function(self)
	self:SetChecked(settings:Get("Thing:Toys"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
	if not self.total or self.total == 0 then
		local total = 0;
		local container = app.SearchForFieldContainer("toyID");
		for i,o in pairs(container) do
			total = total + 1;
		end
		self.total = total;
	end
end,
function(self)
	settings:Set("Thing:Toys", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ToysCheckBox");
end);
ToysCheckBox:SetATTTooltip("Enable this option to track items that currently act as a toy or become a collectible toy in the future.");
ToysCheckBox.OnTooltip = function(t)
	GameTooltip:AddLine(" ");
	GameTooltip:AddDoubleLine("Total Toys", t.total);
end
ToysCheckBox:SetPoint("TOPLEFT", TitlesCheckBox, "BOTTOMLEFT", 0, 4);

local ToysAccountWideCheckBox = settings:CreateCheckBox("Account Wide",
function(self)
	self:SetChecked(settings:Get("AccountWide:Toys"));
	if settings:Get("DebugMode") or not settings:Get("Thing:Toys") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("AccountWide:Toys", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("ToysAccountWideCheckBox");
end);
ToysAccountWideCheckBox:SetATTTooltip("Toys are not normally tracked account wide in Blizzard's database, but we can do that.");
ToysAccountWideCheckBox:SetPoint("TOPLEFT", ToysCheckBox, "TOPLEFT", 220, 0);

local ShowMinimapButtonCheckBox = settings:CreateCheckBox("Show the Minimap Button",
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapButton"));
end,
function(self)
	settings:SetTooltipSetting("MinimapButton", self:GetChecked());
	if self:GetChecked() then
		if not app.Minimap then app.Minimap = app.CreateMinimapButton(); end
		app.Minimap:Show();
	elseif app.Minimap then
		app.Minimap:Hide();
	end
end);
ShowMinimapButtonCheckBox:SetATTTooltip("Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.");
ShowMinimapButtonCheckBox:SetPoint("TOPLEFT", ExplorationAccountWideCheckBox, "TOPLEFT", 160, 0);

local MinimapButtonStyleCheckBox = settings:CreateCheckBox("Use the Old Minimap Style",
function(self)
	self:SetChecked(settings:GetTooltipSetting("MinimapStyle"));
end,
function(self)
	settings:SetTooltipSetting("MinimapStyle", self:GetChecked());
	if app.Minimap then app.Minimap:UpdateStyle(); end
end);
MinimapButtonStyleCheckBox:SetATTTooltip("Some people don't like the new minimap button...\n\nThose people are wrong!\n\nIf you don't like it, here's an option to go back to the old style.");
MinimapButtonStyleCheckBox:SetPoint("TOPLEFT", ShowMinimapButtonCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCompletedGroupsCheckBox = settings:CreateCheckBox("Show Completed Groups",
function(self)
	self:SetChecked(settings:Get("Show:CompletedGroups"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetCompletedGroups(self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataQuietly("ShowCompletedGroupsCheckBox");
end);
ShowCompletedGroupsCheckBox:SetATTTooltip("Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.");
ShowCompletedGroupsCheckBox:SetPoint("TOPLEFT", MinimapButtonStyleCheckBox, "BOTTOMLEFT", 0, -4);

local ShowCollectedThingsCheckBox = settings:CreateCheckBox("Show Collected Things",
function(self)
	self:SetChecked(settings:Get("Show:CollectedThings"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetCollectedThings(self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataQuietly("ShowCollectedThingsCheckBox");
end);
ShowCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.");
ShowCollectedThingsCheckBox:SetPoint("TOPLEFT", ShowCompletedGroupsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowIncompleteThingsCheckBox = settings:CreateCheckBox("Show Incomplete Things",
function(self)
	self:SetChecked(settings:Get("Show:IncompleteThings"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Show:IncompleteThings", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataQuietly("ShowIncompleteThingsCheckBox");
end);
ShowIncompleteThingsCheckBox:SetATTTooltip("Enable this option if you want to see items, objects, NPCs, and headers associated with incomplete quests that don't necessarily have anything you can collect as a result of completing them.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.");
ShowIncompleteThingsCheckBox:SetPoint("TOPLEFT", ShowCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local FilterThingsByLevelCheckBox = settings:CreateCheckBox("Filter Things By Level",
function(self)
	self:SetChecked(settings:Get("Filter:ByLevel"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Filter:ByLevel", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("FilterThingsByLevelCheckBox");
end);
FilterThingsByLevelCheckBox:SetATTTooltip("Enable this setting if you only want to see content available to your current level character.");
FilterThingsByLevelCheckBox:SetPoint("TOPLEFT", ShowIncompleteThingsCheckBox, "BOTTOMLEFT", 0, -4);

local HideBoEItemsCheckBox = settings:CreateCheckBox("Hide BoE Items",
function(self)
	self:SetChecked(settings:Get("Hide:BoEs"));
	if settings:Get("DebugMode") or settings:Get("Filter:BoEs") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetHideBOEItems(self:GetChecked());
end);
HideBoEItemsCheckBox:SetATTTooltip("Enable this setting if you want to hide Bind on Equip items.\n\nThis setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.");
HideBoEItemsCheckBox:SetPoint("TOPLEFT", FilterThingsByLevelCheckBox, "BOTTOMLEFT", 0, 4);

local IgnoreFiltersForBoEsCheckBox = settings:CreateCheckBox("Ignore Filters for BoEs",
function(self)
	self:SetChecked(settings:Get("Filter:BoEs"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Filter:BoEs", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("IgnoreFiltersForBoEsCheckBox");
end);
IgnoreFiltersForBoEsCheckBox:SetATTTooltip("Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.");
IgnoreFiltersForBoEsCheckBox:SetPoint("TOPLEFT", HideBoEItemsCheckBox, "BOTTOMLEFT", 0, 4);

local HidePvPCheckBox = settings:CreateCheckBox("Hide PvP Activities",
function(self)
	self:SetChecked(settings:Get("Hide:PvP"));
	if settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:Set("Hide:PvP", self:GetChecked());
	settings:UpdateMode();
	app:RefreshDataCompletely("HidePvPCheckBox");
end);
HidePvPCheckBox:SetATTTooltip("Enable this setting if you want to hide all PVP related activities, items, and achievements.");
HidePvPCheckBox:SetPoint("TOPLEFT", IgnoreFiltersForBoEsCheckBox, "BOTTOMLEFT", 0, 4);

local ReportCollectedThingsCheckBox = settings:CreateCheckBox("Report Collected Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:Collected"));
end,
function(self)
	settings:SetTooltipSetting("Report:Collected", self:GetChecked());
end);
ReportCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.");
ReportCollectedThingsCheckBox:SetPoint("TOPLEFT", HidePvPCheckBox, "BOTTOMLEFT", 0, -4);

local ReportCompletedQuestsCheckBox = settings:CreateCheckBox("Report Completed Quests",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:CompletedQuests"));
end,
function(self)
	settings:SetTooltipSetting("Report:CompletedQuests", self:GetChecked());
end);
ReportCompletedQuestsCheckBox:SetATTTooltip("Enable this option if you want to see the Quest ID for any quest you complete immediately after it happens. (For reporting bugs, trackings purposes, etc)");
ReportCompletedQuestsCheckBox:SetPoint("TOPLEFT", ReportCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local ReportUnsortedCompletedQuestsCheckBox = settings:CreateCheckBox("Only Unsorted Quests",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Report:UnsortedQuests"));
end,
function(self)
	settings:SetTooltipSetting("Report:UnsortedQuests", self:GetChecked());
end);
ReportUnsortedCompletedQuestsCheckBox:SetATTTooltip("Enable this option if you only want to see the Quest ID for any quest you complete that isn't already listed in the addon.");
ReportUnsortedCompletedQuestsCheckBox:SetPoint("TOPLEFT", ReportCompletedQuestsCheckBox, "BOTTOMLEFT", 4, 4);
end)();

------------------------------------------
-- The "Filters" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Filters");
tab.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		PanelTemplates_DisableTab(settings, self:GetID());
	else
		PanelTemplates_EnableTab(settings, self:GetID());
	end
end;

local ItemFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ItemFiltersLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ItemFiltersLabel:SetJustifyH("LEFT");
ItemFiltersLabel:SetText("Armor / Weapon Filters");
ItemFiltersLabel:Show();
tinsert(settings.MostRecentTab.objects, ItemFiltersLabel);

-- Armor
local last, xoffset, yoffset = ItemFiltersLabel, 0, -4;
local itemFilterNames = L["FILTER_ID_TYPES"];

-- Primary Armor Class
local ItemFilterOnClick = function(self)
	settings:SetFilter(self.filterID, self:GetChecked());
end;
local ItemFilterOnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
		self:SetAlpha(0.2);
	elseif FilterSettingsBase.__index[self.filterID] then
		self:SetChecked(settings:GetFilter(self.filterID));
		self:Enable();
		self:SetAlpha(1);
	else
		self:SetChecked(false);
		self:Disable();
		self:SetAlpha(0.2);
	end
end;
for i,filterID in ipairs({ 2, 4, 5, 6, 7 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Weapons
yoffset = -4;
for i,filterID in ipairs({ 20, 34, 29, 8, 28  }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Ranged Weapons
yoffset = -4;
for i,filterID in ipairs({ 33, 32, 31, 27  }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Big Ole Boys
yoffset = -4;
for i,filterID in ipairs({ 21, 22, 23, 24, 25, 26 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Secondary Armor Classes
last, xoffset, yoffset = ItemFiltersLabel, 180, -4;
for i,filterID in ipairs({ 3, 10, 9, 51, 52, 53 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", xoffset, yoffset);
	filter.filterID = filterID;
	last = filter;
	xoffset = 0;
	yoffset = 6;
end

-- Secondary Weapon Classes
yoffset = -4;
for i,filterID in ipairs({ 50, 57, 54, 1 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

-- Miscellaneous
yoffset = -4;
for i,filterID in ipairs({ 113, 55, 104, 36 }) do
	local filter = settings:CreateCheckBox(itemFilterNames[filterID] or tostring(filterID), ItemFilterOnRefresh, ItemFilterOnClick);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.filterID = filterID;
	last = filter;
	yoffset = 6;
end

f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("BOTTOMLEFT", settings, "BOTTOMLEFT", 8, 8);
f:SetText("Class Defaults");
f:SetWidth(120);
f:SetHeight(24);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", function(self)
	for key,value in pairs(ATTClassicSettingsPerCharacter.Filters) do
		ATTClassicSettingsPerCharacter.Filters[key] = nil;
	end
	settings:Refresh();
	app:RefreshDataCompletely("ResetClassDefaults");
end);
f:SetATTTooltip("Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.");
f.OnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
	else
		self:Enable();
	end
end;
tinsert(settings.MostRecentTab.objects, f);
settings.classdefaults = f;

f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("TOPLEFT", settings.classdefaults, "TOPRIGHT", 3, 0);
f:SetText("All");
f:SetWidth(80);
f:SetHeight(24);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", function(self)
	local active, count = 0, 0;
	for key,value in pairs(FilterSettingsBase.__index) do
		if value then
			count = count + 1;
			if ATTClassicSettingsPerCharacter.Filters[key] then
				active = active + 1;
			end
		end
	end
	if count > 0 then
		if (active / count) > 0.5 then
			for key,value in pairs(FilterSettingsBase.__index) do
				if value then ATTClassicSettingsPerCharacter.Filters[key] = false; end
			end
		else
			for key,value in pairs(FilterSettingsBase.__index) do
				if value then ATTClassicSettingsPerCharacter.Filters[key] = true; end
			end
		end
		settings:Refresh();
		app:RefreshDataCompletely("ApplyClassDefaults");
	end
end);
f:SetATTTooltip("Click this button to toggle all of the filters at once.");
f.OnRefresh = function(self)
	if settings:Get("AccountMode") or settings:Get("DebugMode") then
		self:Disable();
	else
		self:Enable();
	end
end;
tinsert(settings.MostRecentTab.objects, f);

local GeneralUnobtainableFiltersLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
GeneralUnobtainableFiltersLabel:SetPoint("TOPLEFT", line, "BOTTOMRIGHT", -200, -8);
GeneralUnobtainableFiltersLabel:SetJustifyH("LEFT");
GeneralUnobtainableFiltersLabel:SetText("|CFFFFAAAAGeneral Unobtainable Filters|r");
GeneralUnobtainableFiltersLabel:Show();
tinsert(settings.MostRecentTab.objects, GeneralUnobtainableFiltersLabel);

-- General Unobtainable Filters
yoffset = -4;
last = GeneralUnobtainableFiltersLabel;
for i,u in ipairs({ 1, 2, 3, 4 }) do
	local filter = settings:CreateCheckBox(reasons[u][3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(reasons[u][2]);
	filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, yoffset);
	filter.u = u;
	last = filter;
	yoffset = 6;
end
end)();

------------------------------------------
-- The "Phases" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Phases");
tab.OnRefresh = function(self)
	if settings:Get("DebugMode") then
		PanelTemplates_DisableTab(settings, self:GetID());
	else
		PanelTemplates_EnableTab(settings, self:GetID());
	end
end;

-- Update the default unobtainable states based on build version.
for u,reason in pairs(reasons) do
	if reason[4] then
		if currentBuild >= reason[4] then
			if reason[5] and currentBuild >= reason[5] then
				UnobtainableSettingsBase.__index[u] = true;
			else
				UnobtainableSettingsBase.__index[u] = false;
			end
		else
			UnobtainableSettingsBase.__index[u] = false;
		end
	end
end
UnobtainableSettingsBase.__index[11] = true;

local ClassicPhasesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ClassicPhasesLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
ClassicPhasesLabel:SetJustifyH("LEFT");
ClassicPhasesLabel:SetText("|CFFAAFFAAClassic Phases|r");
ClassicPhasesLabel:Show();
tinsert(settings.MostRecentTab.objects, ClassicPhasesLabel);

-- Classic Phases
local last, xoffset, yoffset, spacing, vspacing = ClassicPhasesLabel, 0, -4, 8, 1;
for i,o in ipairs({ { 11, 0, 0 }, {1101, spacing, -vspacing }, { 12, 0, -vspacing }, { 13, 0 }, { 14, 0 }, { 15, 0 }, { 1501, spacing, -vspacing }, { 1502, spacing }, { 1503, spacing }, { 1504, spacing }, { 16, 0, -vspacing }, { 1601, spacing, -vspacing }, { 1602, spacing }, { 1603, spacing }, {1701, spacing, -vspacing }, }) do
	local u = o[1];
	yoffset = o[3] or 6;
	local reason = reasons[u];
	local filter = settings:CreateCheckBox(reason[3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(reason[2] .. (reason[6] or ""));
	filter:SetPoint("LEFT", ClassicPhasesLabel, "LEFT", o[2], 0);
	filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
	filter:SetScale(o[2] > 0 and 0.8 or 1);
	filter.u = u;
	last = filter;
end

local TBCPhasesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
TBCPhasesLabel:SetPoint("TOP", ClassicPhasesLabel, "TOP", 0, 0);
TBCPhasesLabel:SetPoint("LEFT", line, "LEFT", 208, 0);
TBCPhasesLabel:SetJustifyH("LEFT");
TBCPhasesLabel:SetText("|CFFAAFFAATBC Phases|r");
TBCPhasesLabel:Show();
tinsert(settings.MostRecentTab.objects, TBCPhasesLabel);

last, xoffset, yoffset = TBCPhasesLabel, 0, -4;
for i,o in ipairs({ { 17, 0, 0 }, { 18, 0 }, {1801, spacing, -vspacing }, { 1802, spacing }, { 19, 0, -vspacing }, { 1901, spacing, -vspacing }, { 1902, spacing }, { 20, 0, -vspacing }, { 21, 0 }, {2101, spacing, -vspacing }, { 2102, spacing }, { 2103, spacing }, { 2104, spacing }, { 2105, spacing }, { 2106, spacing }, { 2107, spacing }, { 1601, spacing, -vspacing }, }) do
	local u = o[1];
	yoffset = o[3] or 6;
	local reason = reasons[u];
	local filter = settings:CreateCheckBox(reason[3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(reason[2] .. (reason[6] or ""));
	filter:SetPoint("LEFT", TBCPhasesLabel, "LEFT", o[2], 0);
	filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
	filter:SetScale(o[2] > 0 and 0.8 or 1);
	filter.u = u;
	last = filter;
end

local WrathPhasesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
WrathPhasesLabel:SetPoint("TOP", ClassicPhasesLabel, "TOP", 0, 0);
WrathPhasesLabel:SetPoint("LEFT", line, "LEFT", 408, 0);
WrathPhasesLabel:SetJustifyH("LEFT");
WrathPhasesLabel:SetText("|CFFAAFFAAWrath Phases|r");
WrathPhasesLabel:Show();
tinsert(settings.MostRecentTab.objects, WrathPhasesLabel);

last, xoffset, yoffset = WrathPhasesLabel, 0, -4;
for i,o in ipairs({ { 30, 0, 0 }, {3001, spacing, -vspacing }, { 31, 0, -vspacing }, {3101, spacing, -vspacing }, { 32, 0, -vspacing }, { 33, 0 }, {3301, spacing, -vspacing }, { 34, 0, -vspacing }, { 35, 0, -vspacing }, }) do
	local u = o[1];
	yoffset = o[3] or 6;
	local reason = reasons[u];
	local filter = settings:CreateCheckBox(reason[3] or tostring(u), UnobtainableOnRefresh, UnobtainableFilterOnClick);
	filter:SetATTTooltip(reason[2] .. (reason[6] or ""));
	filter:SetPoint("LEFT", WrathPhasesLabel, "LEFT", o[2], 0);
	filter:SetPoint("TOP", last, "BOTTOMLEFT", 0, yoffset);
	filter:SetScale(o[2] > 0 and 0.8 or 1);
	filter.u = u;
	last = filter;
end

end)();

------------------------------------------
-- The "Interface" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Interface");
local TooltipLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
TooltipLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
TooltipLabel:SetJustifyH("LEFT");
TooltipLabel:SetText("Tooltips");
TooltipLabel:Show();
tinsert(settings.MostRecentTab.objects, TooltipLabel);

local EnableTooltipInformationCheckBox = settings:CreateCheckBox("|CFFADD8E6Enable Tooltip Integrations|r",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Enabled"));
end,
function(self)
	settings:SetTooltipSetting("Enabled", self:GetChecked());
end);
EnableTooltipInformationCheckBox:SetATTTooltip("Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.");
EnableTooltipInformationCheckBox:SetPoint("TOPLEFT", TooltipLabel, "BOTTOMLEFT", 4, 0);

local DisplayInCombatCheckBox = settings:CreateCheckBox("Display In Combat",
function(self)
	self:SetChecked(settings:GetTooltipSetting("DisplayInCombat"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("DisplayInCombat", self:GetChecked());
end);
DisplayInCombatCheckBox:SetATTTooltip("Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.");
DisplayInCombatCheckBox:SetPoint("TOPLEFT", EnableTooltipInformationCheckBox, "BOTTOMLEFT", 8, 4);


local ShowCollectionProgressCheckBox = settings:CreateCheckBox("Show Collection Progress",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Progress"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Progress", self:GetChecked());
end);
ShowCollectionProgressCheckBox:SetATTTooltip("Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.");
ShowCollectionProgressCheckBox:SetPoint("TOPLEFT", DisplayInCombatCheckBox, "BOTTOMLEFT", 0, 4);

local ShortenProgressCheckBox = settings:CreateCheckBox("Only Show Icon",
function(self)
	self:SetChecked(settings:GetTooltipSetting("ShowIconOnly"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("Progress") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("ShowIconOnly", self:GetChecked());
end);
ShortenProgressCheckBox:SetATTTooltip("Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...");
ShortenProgressCheckBox:SetPoint("TOPLEFT", ShowCollectionProgressCheckBox, "BOTTOMLEFT", 8, 4);


local SummarizeThingsCheckBox = settings:CreateCheckBox("Summarize Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SummarizeThings"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SummarizeThings", self:GetChecked());
end);
SummarizeThingsCheckBox:SetATTTooltip("Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.");
SummarizeThingsCheckBox:SetPoint("TOPLEFT", ShortenProgressCheckBox, "BOTTOMLEFT", -8, 4);

local ShowCraftedItemsCheckBox = settings:CreateCheckBox("Show Crafted Items",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:CraftedItems"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:CraftedItems", self:GetChecked());
end);
ShowCraftedItemsCheckBox:SetATTTooltip("Enable this option if you want to see a list of all of the items that can be crafted by any of your characters for a reagent in its tooltip.");
ShowCraftedItemsCheckBox:SetPoint("TOPLEFT", SummarizeThingsCheckBox, "BOTTOMLEFT", 8, 4);

local ShowRecipesCheckBox = settings:CreateCheckBox("Show Recipes",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Recipes"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:Recipes", self:GetChecked());
end);
ShowRecipesCheckBox:SetATTTooltip("Enable this option if you want to see a list of all of the recipes that can be crafted by any of your characters for a reagent in its tooltip.");
ShowRecipesCheckBox:SetPoint("TOPLEFT", ShowCraftedItemsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSpellRanksCheckBox = settings:CreateCheckBox("Show Spell Ranks",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:SpellRanks"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SummarizeThings") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:SpellRanks", self:GetChecked());
end);
ShowSpellRanksCheckBox:SetATTTooltip("Enable this option if you want to see the best spell rank of triviality for any unleveled related profession for a reagent in its tooltip.\n\nSpell Ranks of 'trivial' or lesser will not be displayed.\nWhile on Account or Debug Mode, this will show for all of your characters that you have cached in ATT.");
ShowSpellRanksCheckBox:SetPoint("TOPLEFT", ShowRecipesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCoordinatesCheckBox = settings:CreateCheckBox("Show Coordinates",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Coordinates"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Coordinates", self:GetChecked());
end);
ShowCoordinatesCheckBox:SetATTTooltip("Enable this option if you want to see coordinates in the tooltip when hovering over an entry in the mini list.");
ShowCoordinatesCheckBox:SetPoint("TOPLEFT", ShowSpellRanksCheckBox, "BOTTOMLEFT", -8, 4);

local ShowDescriptionsCheckBox = settings:CreateCheckBox("Show Descriptions",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Descriptions"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Descriptions", self:GetChecked());
end);
ShowDescriptionsCheckBox:SetATTTooltip("Enable this option to show descriptions within the tooltip. This may include the descriptive text supplied by the Dungeon Journal or a custom description added by a Contributor who felt some additional information was necessary.\n\nYou might want to keep this turned on.");
ShowDescriptionsCheckBox:SetPoint("TOPLEFT", ShowCoordinatesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowKnownByCheckBox = settings:CreateCheckBox("Show Known By",
function(self)
	self:SetChecked(settings:GetTooltipSetting("KnownBy"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("KnownBy", self:GetChecked());
end);
ShowKnownByCheckBox:SetATTTooltip("Enable this option if you want to see the full list of characters on all servers that know this recipe in the tooltip.");
ShowKnownByCheckBox:SetPoint("TOPLEFT", ShowDescriptionsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowModelsCheckBox = settings:CreateCheckBox("Show Model Preview",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Models"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Models", self:GetChecked());
end);
ShowModelsCheckBox:SetATTTooltip("Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.");
ShowModelsCheckBox:SetPoint("TOPLEFT", ShowKnownByCheckBox, "BOTTOMLEFT", 0, 4);

local ShowOtherCharactersCheckBox = settings:CreateCheckBox("Show Other Characters",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:OtherCharacterQuests"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("Show:OtherCharacterQuests", self:GetChecked());
end);
ShowOtherCharactersCheckBox:SetATTTooltip("Enable this option if you want to see all of the characters on your account that still need to complete a quest in its tooltip.\n\nIE: You can look at a quest item and see that it may still be useful to a different character before getting rid of it.");
ShowOtherCharactersCheckBox:SetPoint("TOPLEFT", ShowModelsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowClassRequirementsCheckBox = settings:CreateCheckBox("Show Class Requirements",
function(self)
	self:SetChecked(settings:GetTooltipSetting("ClassRequirements"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("ClassRequirements", self:GetChecked());
end);
ShowClassRequirementsCheckBox:SetATTTooltip("Enable this option if you want to see the full list of class requirements in the tooltip.");
ShowClassRequirementsCheckBox:SetPoint("TOPLEFT", ShowOtherCharactersCheckBox, "BOTTOMLEFT", 0, 4);

local ShowRaceRequirementsCheckBox = settings:CreateCheckBox("Show Race Requirements",
function(self)
	self:SetChecked(settings:GetTooltipSetting("RaceRequirements"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("RaceRequirements", self:GetChecked());
end);
ShowRaceRequirementsCheckBox:SetATTTooltip("Enable this option if you want to see the full list of race requirements in the tooltip.");
ShowRaceRequirementsCheckBox:SetPoint("TOPLEFT", ShowClassRequirementsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSoftReservesCheckBox = settings:CreateCheckBox("Show Soft Reserves",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SoftReserves"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SoftReserves", self:GetChecked());
end);
ShowSoftReservesCheckBox:SetATTTooltip("Enable this option if you want to see Soft Reserves made by your Raid Members within the ATT database in the tooltip.");
ShowSoftReservesCheckBox:SetPoint("TOPLEFT", ShowRaceRequirementsCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSourceLocationsCheckBox = settings:CreateCheckBox("Show Source Locations",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations"));
	if not settings:GetTooltipSetting("Enabled") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations", self:GetChecked());
end);
ShowSourceLocationsCheckBox:SetATTTooltip("Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.");
ShowSourceLocationsCheckBox:SetPoint("TOPLEFT", ShowSoftReservesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowCompletedSourceLocationsForCheckBox = settings:CreateCheckBox("For Completed Sources",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Completed"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Completed", self:GetChecked());
end);
ShowCompletedSourceLocationsForCheckBox:SetATTTooltip("Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.");
ShowCompletedSourceLocationsForCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsCheckBox, "BOTTOMLEFT", 8, 4);

local ShowSourceLocationsForCreaturesCheckBox = settings:CreateCheckBox("For Creatures",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Creatures"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Creatures", self:GetChecked());
end);
ShowSourceLocationsForCreaturesCheckBox:SetATTTooltip("Enable this option if you want to see Source Locations for Creatures.");
ShowSourceLocationsForCreaturesCheckBox:SetPoint("TOPLEFT", ShowCompletedSourceLocationsForCheckBox, "BOTTOMLEFT", 0, 4);

local ShowSourceLocationsForThingsCheckBox = settings:CreateCheckBox("For Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("SourceLocations:Things"));
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end,
function(self)
	settings:SetTooltipSetting("SourceLocations:Things", self:GetChecked());
end);
ShowSourceLocationsForThingsCheckBox:SetATTTooltip("Enable this option if you want to see Source Locations for Things.");
ShowSourceLocationsForThingsCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsForCreaturesCheckBox, "BOTTOMLEFT", 0, 4);

local ShowRemainingCheckBox = settings:CreateCheckBox("Show Remaining Things",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Show:Remaining"));
	if self:GetChecked() then
		app.GetProgressText = app.GetProgressTextRemaining;
	else
		app.GetProgressText = app.GetProgressTextDefault;
	end
end,
function(self)
	local checked = self:GetChecked();
	settings:SetTooltipSetting("Show:Remaining", checked);
	if checked then
		app.GetProgressText = app.GetProgressTextRemaining;
	else
		app.GetProgressText = app.GetProgressTextDefault;
	end
	app:RedrawWindows("ShowRemainingCheckBox");
end);
ShowRemainingCheckBox:SetATTTooltip("Enable this option if you want to see the number of items remaining instead of the progress over total.");
ShowRemainingCheckBox:SetPoint("TOPLEFT", ShowSourceLocationsForThingsCheckBox, "BOTTOMLEFT", -8, 4);

local DebuggingLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
DebuggingLabel:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -220, -8);
DebuggingLabel:SetJustifyH("LEFT");
DebuggingLabel:SetText("Debugging");
DebuggingLabel:Show();
tinsert(settings.MostRecentTab.objects, DebuggingLabel);
local ids = {
	["achievementID"] = "Achievement ID",
	["artID"] = "Art ID",
	["creatureID"] = "Creature ID",
	["Coordinates"] = "Coordinates",
	["currencyID"] = "Currency ID",
	["Descriptions"] = "Descriptions",
	["displayID"] = "Display ID",
	["explorationID"] = "Exploration ID",
	["factionID"] = "Faction ID",
	["filterID"] = "Filter ID",
	["flightPathID"] = "Flight Path ID",
	["itemID"] = "Item ID",
	["itemLevel"] = "Item Level",
	["itemString"] = "Item String",
	["Lore"] = "Lore",
	["mapID"] = "Map ID",
	["modelID"] = "Model ID",
	["objectID"] = "Object ID",
	["Objectives"] = "Objectives",
	["questID"] = "Quest ID",
	["QuestGivers"] = "Quest Givers",
	["speciesID"] = "Species ID",
	["spellID"] = "Spell ID",
};
local last = nil;
for _,id in pairs({"achievementID","artID", "creatureID","Coordinates","currencyID","Descriptions","displayID","explorationID","factionID","filterID","flightPathID"}) do
	local filter = settings:CreateCheckBox(ids[id],
	function(self)
		self:SetChecked(settings:GetTooltipSetting(id));
	end,
	function(self)
		settings:SetTooltipSetting(id, self:GetChecked());
		settings:Refresh();
	end);
	if not last then
		filter:SetPoint("TOPLEFT", DebuggingLabel, "BOTTOMLEFT", 4, 0);
	else
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 4);
	end
	last = filter;
end
last = nil;
for _,id in pairs({"itemID","itemLevel","itemString","Lore","mapID","modelID","objectID","Objectives","questID","QuestGivers","speciesID","spellID"}) do
	local filter = settings:CreateCheckBox(ids[id],
	function(self)
		self:SetChecked(settings:GetTooltipSetting(id));
	end,
	function(self)
		settings:SetTooltipSetting(id, self:GetChecked());
		settings:Refresh();
	end);
	if not last then
		filter:SetPoint("TOPLEFT", DebuggingLabel, "BOTTOMLEFT", 164, 0);
	else
		filter:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, 4);
	end
	last = filter;
end

-- This creates the "Main List Scale" slider.
local MainListScaleSlider = CreateFrame("Slider", "ATTMainListScaleSlider", settings, "OptionsSliderTemplate");
MainListScaleSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
MainListScaleSlider:SetPoint("TOP", ShowRaceRequirementsCheckBox, "BOTTOM", 0, 0);
tinsert(settings.MostRecentTab.objects, MainListScaleSlider);
settings.MainListScaleSlider = MainListScaleSlider;
MainListScaleSlider.currentValue = 0;
MainListScaleSlider.tooltipText = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
MainListScaleSlider:SetOrientation('HORIZONTAL');
MainListScaleSlider:SetWidth(280);
MainListScaleSlider:SetHeight(20);
MainListScaleSlider:SetValueStep(0.1);
MainListScaleSlider:SetMinMaxValues(0.1, 4);
MainListScaleSlider:SetObeyStepOnDrag(true);
_G[MainListScaleSlider:GetName() .. 'Low']:SetText('0.1')
_G[MainListScaleSlider:GetName() .. 'High']:SetText('4')
_G[MainListScaleSlider:GetName() .. 'Text']:SetText("Main List Scale")
MainListScaleSlider.Label = MainListScaleSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MainListScaleSlider.Label:SetPoint("TOP", MainListScaleSlider, "BOTTOM", 0, 0);
MainListScaleSlider.Label:SetText(MainListScaleSlider:GetValue());
MainListScaleSlider:SetScript("OnValueChanged", function(self, newValue)
	if self.currentValue ~= newValue then
		self.currentValue = newValue;
		self.Label:SetText(newValue);
		settings:SetTooltipSetting("MainListScale", newValue);
		local prime = app:GetWindow("Prime");
		prime:SetScale(newValue);
		prime:Refresh();
	end
end);

-- This creates the "Mini List Scale" slider.
local MiniListScaleSlider = CreateFrame("Slider", "ATTMiniListScaleSlider", settings, "OptionsSliderTemplate");
MiniListScaleSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
MiniListScaleSlider:SetPoint("TOP", MainListScaleSlider, "BOTTOM", 0, -32);
tinsert(settings.MostRecentTab.objects, MiniListScaleSlider);
settings.MiniListScaleSlider = MiniListScaleSlider;
MiniListScaleSlider.currentValue = 0;
MiniListScaleSlider.tooltipText = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
MiniListScaleSlider:SetOrientation('HORIZONTAL');
MiniListScaleSlider:SetWidth(280);
MiniListScaleSlider:SetHeight(20);
MiniListScaleSlider:SetValueStep(0.1);
MiniListScaleSlider:SetMinMaxValues(0.1, 4);
MiniListScaleSlider:SetObeyStepOnDrag(true);
_G[MiniListScaleSlider:GetName() .. 'Low']:SetText('0.1')
_G[MiniListScaleSlider:GetName() .. 'High']:SetText('4')
_G[MiniListScaleSlider:GetName() .. 'Text']:SetText("Mini List Scale")
MiniListScaleSlider.Label = MiniListScaleSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
MiniListScaleSlider.Label:SetPoint("TOP", MiniListScaleSlider, "BOTTOM", 0, 0);
MiniListScaleSlider.Label:SetText(MiniListScaleSlider:GetValue());
MiniListScaleSlider:SetScript("OnValueChanged", function(self, newValue)
	if self.currentValue ~= newValue then
		self.currentValue = newValue;
		self.Label:SetText(newValue);
		settings:SetTooltipSetting("MiniListScale", newValue)
		for key,window in pairs(app.Windows) do
			if key ~= "Prime" then
				window:SetScale(newValue);
				window:Refresh();
			end
		end
	end
end);

-- This creates the "Locations" slider.
local LocationsSlider = CreateFrame("Slider", "ATTLocationsSlider", settings, "OptionsSliderTemplate");
LocationsSlider:SetPoint("LEFT", DebuggingLabel, "LEFT", 0, 0);
LocationsSlider:SetPoint("TOP", MiniListScaleSlider, "BOTTOM", 0, -32);
tinsert(settings.MostRecentTab.objects, LocationsSlider);
settings.LocationsSlider = LocationsSlider;
LocationsSlider.tooltipText = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
LocationsSlider:SetOrientation('HORIZONTAL');
LocationsSlider:SetWidth(280);
LocationsSlider:SetHeight(20);
LocationsSlider:SetValueStep(1);
LocationsSlider:SetMinMaxValues(1, 40);
LocationsSlider:SetObeyStepOnDrag(true);
_G[LocationsSlider:GetName() .. 'Low']:SetText('1')
_G[LocationsSlider:GetName() .. 'High']:SetText('40')
_G[LocationsSlider:GetName() .. 'Text']:SetText("Displayed Source Locations")
LocationsSlider.Label = LocationsSlider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
LocationsSlider.Label:SetPoint("TOP", LocationsSlider, "BOTTOM", 0, 0);
LocationsSlider.Label:SetText(LocationsSlider:GetValue());
LocationsSlider:SetScript("OnValueChanged", function(self, newValue)
	self.Label:SetText(newValue);
	if newValue == settings:GetTooltipSetting("Locations") then
		return 1;
	end
	settings:SetTooltipSetting("Locations", newValue)
end);
LocationsSlider.OnRefresh = function(self)
	if not settings:GetTooltipSetting("Enabled") or not settings:GetTooltipSetting("SourceLocations") then
		self:Disable();
		self:SetAlpha(0.2);
	else
		self:Enable();
		self:SetAlpha(1);
	end
end;


end)();

------------------------------------------
-- The "Features" Tab.					--
------------------------------------------
(function()
local tab = settings:CreateTab("Features");
local CelebrationsLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
CelebrationsLabel:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 330, -8);
CelebrationsLabel:SetJustifyH("LEFT");
CelebrationsLabel:SetText("Celebrations & Sound Effects");
CelebrationsLabel:Show();
tinsert(settings.MostRecentTab.objects, CelebrationsLabel);

local ChangeSkipCutsceneState = function(self, checked)
	if checked then
		self:RegisterEvent("PLAY_MOVIE");
		self:RegisterEvent("CINEMATIC_START");
	else
		self:UnregisterEvent("PLAY_MOVIE");
		self:UnregisterEvent("CINEMATIC_START");
	end
end
local AutomaticallySkipCutscenesCheckBox = settings:CreateCheckBox("Automatically Skip Cutscenes",
function(self)
	local checked = settings:GetTooltipSetting("Skip:Cutscenes");
	self:SetChecked(checked);
	self:SetScript("OnEvent", function(self, ...)
		-- print(self, "OnEvent", ...);
		MovieFrame:Hide();
		CinematicFrame_CancelCinematic();
	end);
	ChangeSkipCutsceneState(self, checked);
end,
function(self)
	settings:SetTooltipSetting("Skip:Cutscenes", self:GetChecked());
end);
AutomaticallySkipCutscenesCheckBox:SetATTTooltip("Enable this option if you want ATT to automatically skip all cutscenes on your behalf.");
AutomaticallySkipCutscenesCheckBox:SetPoint("TOPLEFT", CelebrationsLabel, "BOTTOMLEFT", 4, 0);

local UseMasterAudioChannel = settings:CreateCheckBox("Use the Master Audio Channel",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Channel") == "master");
end,
function(self)
	local state = self:GetChecked() and "master" or "sound";
	if settings:GetTooltipSetting("Channel") ~= state then
		settings:SetTooltipSetting("Channel", state);
	end
end);
UseMasterAudioChannel:SetATTTooltip("Enable this option if you want the celebrations and other ATT sound effects to play on the 'MASTER' audio channel.\n\nDefault: Yes\n\nA lot of people play with sound effects off, so this option allows the ATT sounds to bypass that should it be desired.");
UseMasterAudioChannel:SetPoint("TOPLEFT", AutomaticallySkipCutscenesCheckBox, "BOTTOMLEFT", 0, 4);

local CelebrateCollectedThingsCheckBox = settings:CreateCheckBox("Collected Things Trigger a Celebration",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Celebrate"));
end,
function(self)
	settings:SetTooltipSetting("Celebrate", self:GetChecked());
end);
CelebrateCollectedThingsCheckBox:SetATTTooltip("Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.");
CelebrateCollectedThingsCheckBox:SetPoint("TOPLEFT", UseMasterAudioChannel, "BOTTOMLEFT", 0, 4);

local DeathSoundCheckBox = settings:CreateCheckBox("Play a Sound Effect when you Die",
function(self)
	self:SetChecked(settings:GetTooltipSetting("PlayDeathSound"));
end,
function(self)
	settings:SetTooltipSetting("PlayDeathSound", self:GetChecked());
end);
DeathSoundCheckBox:SetATTTooltip("Enable this option if you want to hear a sound effect when you die.");
DeathSoundCheckBox:SetPoint("TOPLEFT", CelebrateCollectedThingsCheckBox, "BOTTOMLEFT", 0, 4);

local WarnRemovedThingsCheckBox = settings:CreateCheckBox("Removed Things Trigger a Warning",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Warn:Removed"));
end,
function(self)
	settings:SetTooltipSetting("Warn:Removed", self:GetChecked());
end);
WarnRemovedThingsCheckBox:SetATTTooltip("Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.");
WarnRemovedThingsCheckBox:SetPoint("TOPLEFT", DeathSoundCheckBox, "BOTTOMLEFT", 0, 4);

local ModulesLabel = settings:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
ModulesLabel:SetPoint("TOP", WarnRemovedThingsCheckBox, "BOTTOM", 0, -8);
ModulesLabel:SetPoint("LEFT", CelebrationsLabel, "LEFT", 0, 0);
ModulesLabel:SetJustifyH("LEFT");
ModulesLabel:SetText("Modules & Mini Lists");
ModulesLabel:Show();
tinsert(settings.MostRecentTab.objects, ModulesLabel);

local OpenAuctionListAutomatically = settings:CreateCheckBox("Automatically Open the Auction Module",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:AuctionList"));
end,
function(self)
	local checked = self:GetChecked();
	settings:SetTooltipSetting("Auto:AuctionList", checked);
	if checked then
		local window = app:GetWindow("Auctions");
		if window then window:UpdatePosition(); end
	end
end);
OpenAuctionListAutomatically:SetATTTooltip("Enable this option if you want to automatically open the Auction List when you open the auction house.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Auction List\n\nShortcut Command: /attauctions");
OpenAuctionListAutomatically:SetPoint("TOPLEFT", ModulesLabel, "BOTTOMLEFT", 4, 0);

local OpenProfessionListAutomatically = settings:CreateCheckBox("Automatically Open the Profession List",
function(self)
	self:SetChecked(settings:GetTooltipSetting("Auto:ProfessionList"));
end,
function(self)
	settings:SetTooltipSetting("Auto:ProfessionList", self:GetChecked());
end);
OpenProfessionListAutomatically:SetATTTooltip("Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List\n\nShortcut Command: /attskills");
OpenProfessionListAutomatically:SetPoint("TOPLEFT", OpenAuctionListAutomatically, "BOTTOMLEFT", 0, 4);

local temporaryText = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
temporaryText:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
temporaryText:SetPoint("TOPRIGHT", line, "BOTTOMLEFT", 300, -8);
temporaryText:SetJustifyH("LEFT");
temporaryText:SetText("The sync tool has temporarily left this menu.\n\nYou can still access it via the command: /attsync\n\n\nIf someone knows what started causing the window to freeze when you changed to a different addon's settings context, hit me up.\n\nCool things are in development that should make this feature a whole lot better!");
temporaryText:Show();
tinsert(settings.MostRecentTab.objects, temporaryText);

local f = CreateFrame("Button", nil, settings, "UIPanelButtonTemplate");
f:SetPoint("TOP", temporaryText, "BOTTOM", 0, -8);
f:SetPoint("LEFT", line, "LEFT", 8, -8);
f:SetPoint("RIGHT", line, "LEFT", 300, -8);
f:SetText("Open the Sync Window");
f:SetHeight(30);
f:RegisterForClicks("AnyUp");
f:SetScript("OnClick", function()
	local syncWindow = app:GetWindow("Synchronization");
	if syncWindow then
		if SettingsPanel and SettingsPanel:IsShown() then SettingsPanel:Hide(); end
		syncWindow:Show();
	end
end);
f:SetATTTooltip("Click this button to open the Sync Window");
tinsert(settings.MostRecentTab.objects, f);

function tab:InitializeSyncWindow()
	-- Synchronization Window
	local syncWindow = app:GetWindow("Sync");
	syncWindow.CloseButton:Disable();
	syncWindow:SetClampedToScreen(false);
	syncWindow:SetToplevel(true);
	syncWindow:SetMovable(false);
	syncWindow:SetResizable(false);
	local oldShow, oldHide = syncWindow.Show, syncWindow.Hide;
	syncWindow.Show = function(self)
		self:ClearAllPoints();
		self:SetParent(settings);
		self:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 0, 0);
		self:SetSize(300, 530);
		self:SetScale(1);
		oldShow(self);
	end
	syncWindow.Hide = function(self)
		self:ClearAllPoints();
		self:SetParent(UIParent);
		self:SetSize(300, 530);
		oldHide(self);
	end

	tinsert(tab.objects, syncWindow);
end
end)();

------------------------------------------
-- The "About" Tab.				--
------------------------------------------
(function()
local tab = settings:CreateTab("About");
local AboutText = settings:CreateFontString(nil, "ARTWORK", "GameFontNormal");
AboutText:SetPoint("TOPLEFT", line, "BOTTOMLEFT", 8, -8);
AboutText:SetPoint("TOPRIGHT", line, "BOTTOMRIGHT", -8, -8);
AboutText:SetJustifyH("LEFT");
AboutText:SetText(L["TITLE"] .. " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|C" .. app.Colors.Raid .. "Crieve (DFortun81 on GitHub)|CFFFFFFFF\n\nIf you wish to play with us, we're on Atiesh (Alliance) in the <All The Things> guild!|r\n\n\nContributors working on Classic:\n |CFFFFFFFF\nPr3vention, Avella, Mogwai, Crieve and Talonzor |r\n\n\n\nIf we're missing something, please let us know!\n\nStill lots of things to add, but thankfully there is a finite number of things in WoW Classic and TBC Classic, so we should eventually get it all!");
AboutText:Show();
tinsert(settings.MostRecentTab.objects, AboutText);
end)();