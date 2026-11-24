local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs, pairs, next
	= ipairs, pairs, next;

-- Settings: Start Page
-- The current mode, the presets as cards, and the modes which can be combined with them.
local child = settings:CreateOptionsPage(L.SETTINGS_START_PAGE, appName, true)

-- The settings which are stored before a preset is applied, so they can be restored
local StoredSettings = {
	"Thing:Transmog", "Completionist", "MainOnly", "Thing:Heirlooms", "Thing:HeirloomUpgrades",
	"Thing:Illusions", "Thing:Mounts", "Thing:BattlePets", "Thing:Toys", "Thing:Campsites", "Thing:Decor",
	"Thing:Achievements", "Thing:CharacterUnlocks", "Thing:Exploration", "Thing:FirstCrafts",
	"Thing:FlightPaths", "Thing:Quests", "Thing:QuestsLocked", "Thing:QuestsHidden", "Thing:QuestObjectives",
	"Thing:Recipes", "Thing:Reputations", "Thing:Titles", "Thing:ProfessionNodes", "Hide:BoEs", "Filter:BoEs",
	"Filter:ByLevel", "Show:UnavailablePersonalLoot", "Show:OnlyActiveEvents", "Show:PetBattles", "Hide:PvP",
	"Hide:ChallengeMaster", "Show:Skyriding", "Thing:Followers", "Thing:AzeriteEssences", "Thing:Conduits",
	"Thing:RuneforgeLegendaries", "Thing:MountMods", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA",
	"CC:SL_COV_VEN", "AccountMode", "AccountWide:Achievements", "AccountWide:CharacterUnlocks",
	"AccountWide:Quests", "AccountWide:Recipes", "AccountWide:Reputations", "AccountWide:Titles",
	"AccountWide:Followers", "AccountWide:AzeriteEssences", "AccountWide:Conduits",
};
local MAX_FILTER_ID = 113;	-- 113 = Bags, highest filterID in our Settings
local Presets = {
	{ title = L.TITLE_NONE_THINGS, text = L.PRESET_NONE, filters = "all",
		on = {
			"Hide:BoEs", "Filter:ByLevel", "Show:OnlyActiveEvents", "Hide:PvP", "Hide:ChallengeMaster",
		},
		off = {
			"Thing:Transmog", "Completionist", "MainOnly", "Thing:Heirlooms", "Thing:HeirloomUpgrades",
			"Thing:Illusions", "Thing:Mounts", "Thing:BattlePets", "Thing:Toys", "Thing:Campsites", "Thing:Decor",
			"Thing:Achievements", "Thing:CharacterUnlocks", "Thing:Exploration", "Thing:FirstCrafts",
			"Thing:FlightPaths", "Thing:Quests", "Thing:QuestsLocked", "Thing:QuestsHidden", "Thing:Recipes",
			"Thing:Reputations", "Thing:Titles", "Thing:ProfessionNodes", "Filter:BoEs", "Show:UnavailablePersonalLoot",
			"Show:PetBattles", "Show:Skyriding", "Thing:Followers", "Thing:AzeriteEssences", "Thing:Conduits",
			"Thing:RuneforgeLegendaries", "Thing:MountMods", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA",
			"CC:SL_COV_VEN",
		},
	},
	{ title = L.TITLE_CORE, text = L.PRESET_CORE, filters = "all",
		on = {
			"Thing:Transmog", "Thing:Heirlooms", "Thing:Illusions", "Thing:Mounts", "Thing:BattlePets", "Thing:Toys",
			"Thing:Campsites", "Thing:Decor", "Filter:BoEs", "Show:UnavailablePersonalLoot", "Show:PetBattles",
			"Hide:ChallengeMaster", "Show:Skyriding", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA", "CC:SL_COV_VEN",
		},
		off = {
			"Completionist", "MainOnly", "Thing:HeirloomUpgrades", "Thing:Achievements", "Thing:CharacterUnlocks",
			"Thing:Exploration", "Thing:FirstCrafts", "Thing:FlightPaths", "Thing:Quests", "Thing:QuestsLocked",
			"Thing:QuestsHidden", "Thing:Recipes", "Thing:Reputations", "Thing:Titles", "Thing:ProfessionNodes",
			"Hide:BoEs", "Filter:ByLevel", "Show:OnlyActiveEvents", "Hide:PvP", "Thing:Followers",
			"Thing:AzeriteEssences", "Thing:Conduits", "Thing:RuneforgeLegendaries", "Thing:MountMods",
		},
	},
	{ title = L.TITLE_RANKED, text = L.PRESET_RANKED, filters = "all",
		on = {
			"Thing:Transmog", "Completionist", "Thing:Heirlooms", "Thing:HeirloomUpgrades", "Thing:Illusions",
			"Thing:Mounts", "Thing:BattlePets", "Thing:Toys", "Thing:Decor", "Thing:Achievements", "Thing:Quests",
			"Thing:Recipes", "Thing:Reputations", "Thing:Titles", "Filter:BoEs", "Show:UnavailablePersonalLoot",
			"Show:PetBattles", "Show:Skyriding", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA", "CC:SL_COV_VEN",
		},
		off = {
			"MainOnly", "Thing:Campsites", "Thing:CharacterUnlocks", "Thing:Exploration", "Thing:FirstCrafts",
			"Thing:FlightPaths", "Thing:QuestsLocked", "Thing:QuestsHidden", "Thing:ProfessionNodes", "Hide:BoEs",
			"Filter:ByLevel", "Show:OnlyActiveEvents", "Hide:PvP", "Hide:ChallengeMaster", "Thing:Followers",
			"Thing:AzeriteEssences", "Thing:Conduits", "Thing:RuneforgeLegendaries", "Thing:MountMods",
		},
	},
	{ title = L.TITLE_INSANE, text = L.PRESET_INSANE, filters = "all",
		on = {
			"Thing:Transmog", "Thing:Heirlooms", "Thing:HeirloomUpgrades", "Thing:Illusions", "Thing:Mounts",
			"Thing:BattlePets", "Thing:Toys", "Thing:Campsites", "Thing:Decor", "Thing:Achievements",
			"Thing:CharacterUnlocks", "Thing:FirstCrafts", "Thing:FlightPaths", "Thing:Quests", "Thing:Recipes",
			"Thing:Reputations", "Thing:Titles", "Thing:ProfessionNodes", "Filter:BoEs", "Show:UnavailablePersonalLoot",
			"Show:PetBattles", "Show:Skyriding", "Thing:Followers", "Thing:AzeriteEssences", "Thing:Conduits",
			"Thing:RuneforgeLegendaries", "Thing:MountMods", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA",
			"CC:SL_COV_VEN",
		},
		off = {
			"Thing:QuestsLocked", "Thing:QuestsHidden", "Hide:BoEs", "Filter:ByLevel", "Show:OnlyActiveEvents",
			"Hide:PvP", "Hide:ChallengeMaster",
		},
		-- CRIEVE NOTE: For now, until Blizzard adds an exploration API that doesn't suck
		other = { ["Thing:Exploration"] = app.GameBuildVersion < 100000 and not app.IsForever },
	},
	-- Not a preset, but shows when none of the ones above are what's tracked
	{ title = L.SETTINGS_PRESET_CUSTOM, text = L.SETTINGS_PRESET_CUSTOM_TEXT, isCustom = true },
	{ title = L.TITLE_ACCOUNT, text = L.PRESET_ACCOUNT, accountMode = true, filters = "all",
		on = {
			"AccountWide:Achievements", "AccountWide:CharacterUnlocks", "AccountWide:Quests", "AccountWide:Recipes",
			"AccountWide:Reputations", "AccountWide:Titles", "AccountWide:Followers", "AccountWide:AzeriteEssences",
			"AccountWide:Conduits",
		},
	},
	{ title = L.TITLE_SOLO, text = L.PRESET_SOLO, accountMode = false, filters = "reset",
		off = {
			"AccountWide:Achievements", "AccountWide:CharacterUnlocks", "AccountWide:Quests", "AccountWide:Recipes",
			"AccountWide:Reputations", "AccountWide:Titles", "AccountWide:Followers", "AccountWide:AzeriteEssences",
			"AccountWide:Conduits", "CC:SL_COV_KYR", "CC:SL_COV_NEC", "CC:SL_COV_NFA", "CC:SL_COV_VEN",
		},
	},
	{ title = L.TITLE_UNIQUE_APPEARANCE, text = L.PRESET_UNIQUE,
		on = {
			"Thing:Transmog",
		},
		off = {
			"Completionist",
		},
	},
	{ title = L.TITLE_COMPLETIONIST, text = L.PRESET_COMP,
		on = {
			"Thing:Transmog", "Completionist",
		},
	},
};

local function HasStoredSettings()
	return next(settings:Get("PresetRestore")) ~= nil;
end
local function StoreSettings()
	-- Only store our settings if we haven't restored yet, not if we're swapping through presets
	if HasStoredSettings() then return; end
	local stored = {};
	for _,key in ipairs(StoredSettings) do
		stored[key] = settings:Get(key);
	end
	for filterID=1,MAX_FILTER_ID do
		local setting = settings:GetFilter(filterID);
		if app.EquipmentFilters[filterID] and setting ~= nil then
			stored[filterID] = setting;
		end
	end
	settings:Set("PresetRestore", stored);
end
local function RestoreSettings()
	local stored = settings:Get("PresetRestore");
	for _,key in ipairs(StoredSettings) do
		settings:Set(key, stored[key]);
	end
	for filterID=1,MAX_FILTER_ID do
		if stored[filterID] ~= nil then settings:SetFilter(filterID, stored[filterID]); end
	end
	settings:Set("PresetRestore", {});
	settings:UpdateMode(1);
end
local function ApplyPreset(preset)
	StoreSettings();
	if preset.accountMode ~= nil then settings:SetAccountMode(preset.accountMode); end
	if preset.on then
		for _,key in ipairs(preset.on) do settings:Set(key, true); end
	end
	if preset.off then
		for _,key in ipairs(preset.off) do settings:Set(key, false); end
	end
	if preset.other then
		for key,value in pairs(preset.other) do settings:Set(key, value); end
	end
	if preset.filters == "all" then
		for filterID=1,MAX_FILTER_ID do settings:SetFilter(filterID, true); end
	elseif preset.filters == "reset" then
		settings:ResetFilters();
	end
	settings:UpdateMode(1);
end
-- Whether everything a preset decides is currently set that way (not counting the item filters)
local IsPresetActive;
IsPresetActive = function(preset)
	if preset.isCustom then
		-- The presets before it decide what's tracked, the ones after it can be combined with them
		for _,other in ipairs(Presets) do
			if other == preset then return true; end
			if IsPresetActive(other) then return false; end
		end
	end
	if preset.accountMode ~= nil and (settings:Get("AccountMode") or false) ~= preset.accountMode then return false; end
	if preset.on then
		for _,key in ipairs(preset.on) do
			if not settings:Get(key) then return false; end
		end
	end
	if preset.off then
		for _,key in ipairs(preset.off) do
			if settings:Get(key) then return false; end
		end
	end
	if preset.other then
		for key,value in pairs(preset.other) do
			if (settings:Get(key) or false) ~= (value or false) then return false; end
		end
	end
	return true;
end

-- Current mode
local headerMode = child:CreateHeaderLabel("")
headerMode:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
headerMode.OnRefresh = function(self)
	self:SetText(settings:GetModeString() .. " (" .. settings:GetShortModeString() .. ")");
end
local textModeExplain = child:CreateTextLabel(L.MODE_EXPLAIN_LABEL)
textModeExplain:SetPoint("TOPLEFT", headerMode, "BOTTOMLEFT", 0, -4)
textModeExplain:SetWidth(640)
textModeExplain:SetWordWrap(true)

-- Restore
local buttonRestore = child:CreateButton({ text = L.PRESET_RESTORE, tooltip = L.PRESET_RESTORE_TOOLTIP, }, {
	OnClick = RestoreSettings,
})
buttonRestore:SetPoint("TOPRIGHT", child.separator, "BOTTOMRIGHT", -4, -6)
buttonRestore.OnRefresh = function(self) self:SetShown(HasStoredSettings()); end
buttonRestore:Hide()

-- Preset cards
local CARD_WIDTH, CARD_HEIGHT, CARD_GAP, CARDS_PER_ROW, CARDS_Y = 212, 96, 8, 3, -74;
local function CreateCard(preset, index)
	local card = CreateFrame("Button", nil, child, BackdropTemplateMixin and "BackdropTemplate");
	card:SetSize(CARD_WIDTH, CARD_HEIGHT);
	local column, row = (index - 1) % CARDS_PER_ROW, math.floor((index - 1) / CARDS_PER_ROW);
	card:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 4 + column * (CARD_WIDTH + CARD_GAP), CARDS_Y - row * (CARD_HEIGHT + CARD_GAP));
	card:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 },
	});
	local title = card:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
	title:SetPoint("TOPLEFT", card, "TOPLEFT", 10, -8);
	title:SetText(preset.title);
	local active = card:CreateFontString(nil, "ARTWORK", "GameFontGreenSmall");
	active:SetPoint("TOPRIGHT", card, "TOPRIGHT", -10, -10);
	active:SetText(L.SETTINGS_PRESET_ACTIVE);
	local text = card:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall");
	text:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -4);
	text:SetPoint("BOTTOMRIGHT", card, "BOTTOMRIGHT", -10, 6);
	text:SetJustifyH("LEFT");
	text:SetJustifyV("TOP");
	text:SetText(preset.text);

	local function UpdateColors(hovered)
		local isActive = IsPresetActive(preset);
		active:SetShown(isActive);
		card:SetBackdropColor(hovered and 0.18 or 0.08, hovered and 0.18 or 0.08, hovered and 0.2 or 0.1, 1);
		if isActive then
			card:SetBackdropBorderColor(0.2, 0.9, 0.2, 1);
		else
			card:SetBackdropBorderColor(hovered and 1 or 0.4, hovered and 0.82 or 0.4, hovered and 0 or 0.4, 1);
		end
	end
	card:SetATTTooltip(preset.isCustom and L.SETTINGS_PRESET_CUSTOM_TOOLTIP or L.PRESET_TOOLTIP);
	card:HookScript("OnEnter", function() UpdateColors(true); end);
	card:HookScript("OnLeave", function() UpdateColors(false); end);
	card:SetScript("OnClick", function()
		if preset.isCustom then
			settings:Open(L.GENERAL_PAGE);
		else
			ApplyPreset(preset);
		end
	end);
	card.OnRefresh = function(self) UpdateColors(self:IsMouseOver()); end
	child:RegisterObject(card);
	settings.RegisterOption({ frame = card, text = preset.title, tooltip = preset.text });
end
for index,preset in ipairs(Presets) do CreateCard(preset, index); end

-- Modes, which are on the General page as well
local englishFaction = UnitFactionGroup("player")
settings.Modes = {
	{ text = L.DEBUG_MODE, tooltip = L.DEBUG_MODE_TOOLTIP,
		OnRefresh = function(self)
			self:SetChecked(app.MODE_DEBUG)
		end,
		OnClick = function(self)
			settings:SetDebugMode(self:GetChecked())
		end,
	},
	{ text = L.ACCOUNT_MODE, tooltip = L.ACCOUNT_MODE_TOOLTIP, texture = "TrackAccountWide",
		OnRefresh = function(self)
			self:SetChecked(app.MODE_ACCOUNT)
			settings.SetUsable(self, not app.MODE_DEBUG)
		end,
		OnClick = function(self)
			settings:SetAccountMode(self:GetChecked())
		end,
	},
	{ text = "|c" .. (app.DefaultColors[englishFaction] or app.DefaultColors.Default) .. L.FACTION_MODE, tooltip = L.FACTION_MODE_TOOLTIP,
		OnRefresh = function(self)
			self:SetChecked(settings:Get("FactionMode"))
			settings.SetUsable(self, app.MODE_ACCOUNT and not app.MODE_DEBUG)
		end,
		OnClick = function(self)
			settings:SetFactionMode(self:GetChecked())
		end,
	},
	{ text = L.LOOT_MODE, tooltip = L.LOOT_MODE_TOOLTIP,
		OnRefresh = function(self)
			self:SetChecked(settings:Get("LootMode"))
			settings.SetUsable(self, not app.MODE_DEBUG)
		end,
		OnClick = function(self)
			settings:SetLootMode(self:GetChecked())
		end,
	},
};
settings.CreateModeCheckBox = function(panel, mode)
	local cb = panel:CreateCheckBox(mode.text, mode.OnRefresh, mode.OnClick);
	settings.StyleCheckBox(cb, 280);
	cb:SetATTTooltip(mode.tooltip);
	cb.SettingsOption.tooltip = mode.tooltip;
	if mode.texture then cb:SetCheckedTexture(app.asset(mode.texture)); end
	return cb;
end
local modesY = CARDS_Y - math.ceil(#Presets / CARDS_PER_ROW) * (CARD_HEIGHT + CARD_GAP) - 10;
local previousMode;
for _,mode in ipairs(settings.Modes) do
	local cb = settings.CreateModeCheckBox(child, mode);
	if previousMode then
		cb:SetPoint("TOP", previousMode, "TOP", 0, 0);
		cb:SetPoint("LEFT", previousMode.Text, "RIGHT", 8, 0);
	else
		cb:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 4, modesY);
	end
	previousMode = cb;
end
