local appName, app = ...;
local L, settings = app.L, app.Settings;

-- Global locals
local ipairs = ipairs;

-- Settings: General Page
-- A table of every Thing which can be collected: whether it's tracked, whether it counts for the
-- whole account, and the options which belong to it.
local child = settings:CreateOptionsPage(L.GENERAL_PAGE, appName)

local GameBuildVersion = app.GameBuildVersion;
local HasNativeCollections = app.IsForever or GameBuildVersion >= 30000;	-- Forever includes native collection support.

-- Each Thing has the prefix of its locale strings, and the name its settings use. Extras are shown beside it.
--	unofficial: ATT is faking support for it
--	icon / iconBuild: the expansion which introduced it, for those which don't have it in their locale string
--	extras: { locale, thing } also tracked with it, 'parent' is the Thing which must be tracked as well
local Groups = {
	{ title = L.ACCOUNT_THINGS_LABEL, things = {
		{ "APPEARANCES", "Transmog", unofficial = GameBuildVersion < 40000 and not app.IsForever, isTransmog = true },
		-- Heirlooms aren't in the game until late Wrath Classic.
		C_Heirloom and GameBuildVersion >= 30000 and { "HEIRLOOMS", "Heirlooms", icon = "Expansion_WOTLK", iconBuild = 30000, extras = {
			-- Heirloom Upgrades added with WOD
			GameBuildVersion >= 60000 and { "HEIRLOOMS_UPGRADES", "HeirloomUpgrades", icon = "Expansion_WOD", iconBuild = 60000, parent = "Heirlooms" },
		} } or false,
		-- Illusions were added with the Transmog API during Legion
		C_TransmogCollection and GameBuildVersion >= 70000 and { "ILLUSIONS", "Illusions", icon = "Expansion_LEGION", iconBuild = 70000 } or false,
		{ "MOUNTS", "Mounts", unofficial = not HasNativeCollections },
		{ "BATTLE_PETS", "BattlePets", unofficial = not HasNativeCollections },
		{ "TOYS", "Toys", unofficial = not HasNativeCollections },
		-- Campsites and Decor were added during The War Within
		GameBuildVersion >= 110100 and { "CAMPSITES", "Campsites", icon = "Expansion_TWW", iconBuild = 110000 },
		GameBuildVersion >= 110207 and { "DECOR", "Decor", icon = "Expansion_TWW", iconBuild = 110000 },
		-- Flight Paths are account-wide since The War Within
		settings.ForceAccountWide.FlightPaths and { "FLIGHT_PATHS", "FlightPaths" },
		GameBuildVersion >= 100000 and { "MOUNTMODS", "MountMods" },	-- Dragonflight+
		GameBuildVersion >= 90000 and { "RUNEFORGELEGENDARIES", "RuneforgeLegendaries" },	-- Shadowlands+
	} },
	{ title = L.GENERAL_THINGS_LABEL, isGeneral = true, things = {
		{ "ACHIEVEMENTS", "Achievements", icon = "Expansion_WOTLK", iconBuild = 30000, unofficial = not HasNativeCollections },
		{ "CHARACTERUNLOCKS", "CharacterUnlocks" },
		{ "EXPLORATION", "Exploration", wip = app.IsRetail or app.IsForever },
		not settings.ForceAccountWide.FlightPaths and { "FLIGHT_PATHS", "FlightPaths" },
		{ "QUESTS", "Quests", extras = {
			{ "QUESTS_LOCKED", "QuestsLocked" },
			{ "QUESTS_HIDDEN_TRACKER", "QuestsHidden" },
			(app.IsClassic or app.IsForever) and { "OBJECTIVES", "QuestObjectives", parent = "Quests" },
		} },
		{ "RECIPES", "Recipes", extras = {
			GameBuildVersion >= 100000 and { "FIRST_CRAFTS", "FirstCrafts", icon = "Expansion_DF", iconBuild = 100000 },
		} },
		{ "REPUTATIONS", "Reputations" },
		{ "TITLES", "Titles" },
		-- Profession Nodes were added during Dragonflight
		GameBuildVersion >= 100000 and { "PROFESSION_NODES", "ProfessionNodes", icon = "Expansion_DF", iconBuild = 100000 },
		GameBuildVersion >= 60000 and { "FOLLOWERS", "Followers" },	-- Warlords+
		GameBuildVersion >= 80200 and { "AZERITE_ESSENCES", "AzeriteEssences" },	-- BFA 8.2+
		GameBuildVersion >= 90000 and { "SOULBINDCONDUITS", "Conduits" },	-- Shadowlands+
	} },
};

local ACCOUNT_X, TRACK_X, ROW_HEIGHT, LABEL_WIDTH, EXTRA_GAP = 8, 28, 19, 220, 8;
-- The modes are at the top, above the Things and the content (see General - Content.lua)
local COLUMN_TOP, COLUMN_X, PAGE_WIDTH = 46, 384, 656;
local content = settings.CreatePageColumn(child, 0, COLUMN_X, COLUMN_TOP);
settings.GeneralPage = child;
settings.GeneralContentColumn = { left = COLUMN_X, right = PAGE_WIDTH, top = COLUMN_TOP };

-- The checkboxes of a row follow each other, however long their labels are
local function AlignAfter(cb, previous)
	cb:SetPoint("TOP", previous, "TOP", 0, 0);
	cb:SetPoint("LEFT", previous.Text, "RIGHT", EXTRA_GAP, 0);
end
-- Creates a Checkbox used to designate tracking the specified Thing
local function CreateTrackingCheckbox(thing)
	local localeKey, key = thing[1], thing[2];
	local name = L[localeKey.."_CHECKBOX"]
	local tooltip = L[localeKey.."_CHECKBOX_TOOLTIP"]
	if thing.unofficial then
		tooltip = tooltip .. "\n\n" .. L.UNOFFICIAL_SUPPORT_TOOLTIP;
	end
	if settings.RequiredForInsaneMode[key] then
		name = "|c" .. app.DefaultColors.Insane .. name;
	end
	-- The expansion it was introduced with
	if thing.icon and GameBuildVersion >= thing.iconBuild then
		name = "|T" .. app.asset(thing.icon) .. ":0|t " .. name;
	end
	if settings.ForceAccountWide[key] then
		tooltip = tooltip .. "\n\n" .. L.ACC_WIDE_DEFAULT;
	end
	local trackingOption = "Thing:"..key
	local parentTrackingOption = thing.parent and "Thing:"..thing.parent
	local cb = content:CreateCheckBox(name,
		function(self)
			self:SetChecked(settings:Get(trackingOption))
			settings.SetUsable(self, not (app.MODE_DEBUG or (parentTrackingOption and not settings:Get(parentTrackingOption))))
		end,
		function(self)
			settings:Set(trackingOption, self:GetChecked())
			settings:UpdateMode(1)
		end
	)
	settings.StyleCheckBox(cb, LABEL_WIDTH);
	cb:SetATTTooltip(tooltip)
	cb.SettingsOption.tooltip = tooltip
	cb.SettingsOption.IsChanged = function() return settings.IsSettingChanged(trackingOption) end
	if thing.wip then cb:MarkAsWIP(); end
	return cb
end

-- Creates a Checkbox to use for toggling 'Account-Wide' tracking of a specified Thing
local function CreateAccountWideCheckbox(thing, x, y)
	local key = thing[2];
	local trackingOption = "Thing:"..key
	local accountWideOption = "AccountWide:"..key
	local cb;
	if settings.ForceAccountWide[key] then
		-- It can't be turned off (and has no tooltip string)
		cb = content:CreateCheckBox("")
	else
		local tooltip = L["ACCOUNT_WIDE_"..thing[1].."_TOOLTIP"]
		cb = content:CreateCheckBox("",
			function(self)
				self:SetChecked(app.MODE_DEBUG_OR_ACCOUNT or settings:Get(accountWideOption))
				settings.SetUsable(self, not app.MODE_DEBUG_OR_ACCOUNT and settings:Get(trackingOption))
			end,
			function(self)
				settings:Set(accountWideOption, self:GetChecked())
				settings:UpdateMode(1)
			end
		)
		cb:SetATTTooltip(L.TRACK_ACC_WIDE.."\n\n" .. tooltip)
		-- The checkbox has no text of its own, so let the search find it with its Thing
		local option = cb.SettingsOption;
		option.text = L[thing[1].."_CHECKBOX"] .. " (" .. L.SETTINGS_ACCOUNT_WIDE .. ")";
		option.tooltip = tooltip;
		option.IsChanged = function() return settings.IsSettingChanged(accountWideOption) end
	end
	settings.StyleCheckBox(cb, 0);
	cb:SetCheckedTexture(app.asset("TrackAccountWide"))
	cb:SetPoint("TOPLEFT", content, "TOPLEFT", x, y);
end

-- Appearances can be tracked by their Sources, or only for the main armor of the class
local function CreateTransmogExtras(previous)
	local checkboxSources = content:CreateCheckBox(L.COMPLETIONIST_MODE,
	function(self)
		self:SetChecked(settings:Get("Completionist"))
		settings.SetUsable(self, settings:Get("Thing:Transmog") or app.MODE_DEBUG)
	end,
	function(self)
		settings:SetCompletionistMode(self:GetChecked())
	end)
	settings.StyleCheckBox(checkboxSources, LABEL_WIDTH);
	checkboxSources:SetATTTooltip(L.COMPLETIONIST_MODE_TOOLTIP)
	checkboxSources.SettingsOption.tooltip = L.COMPLETIONIST_MODE_TOOLTIP;
	AlignAfter(checkboxSources, previous);

	local checkboxMainOnlyMode = content:CreateCheckBox(L.MAIN_ONLY,
	function(self)
		local rPerc, gPerc, bPerc = GetClassColor(app.Class)
		self.Text:SetTextColor(rPerc, gPerc, bPerc, 1)
		if settings:Get("Completionist") or app.MODE_ACCOUNT or app.MODE_DEBUG then
			self:SetChecked(false)
			settings.SetUsable(self, false)
		else
			self:SetChecked(settings:Get("MainOnly"))
			settings.SetUsable(self, true)
		end
	end,
	function(self)
		settings:SetMainOnlyMode(self:GetChecked())
	end)
	settings.StyleCheckBox(checkboxMainOnlyMode, LABEL_WIDTH);
	checkboxMainOnlyMode:SetATTTooltip(L.MAIN_ONLY_TOOLTIP)
	checkboxMainOnlyMode.SettingsOption.tooltip = L.MAIN_ONLY_TOOLTIP;
	AlignAfter(checkboxMainOnlyMode, checkboxSources);
end

local function DimInDebugMode(self)
	self:SetAlpha(app.MODE_DEBUG and 0.4 or 1);
end

-- The current mode, and the modes which can be combined with what's tracked
local header = child:CreateHeaderLabel("");
header:SetFontObject(GameFontNormal);
header:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
header.OnRefresh = function(self)
	self:SetText(settings:GetModeString() .. " (" .. settings:GetShortModeString() .. ")");
end
local previousMode;
for _,mode in ipairs(settings.Modes) do
	local cb = settings.CreateModeCheckBox(child, mode);
	if previousMode then
		AlignAfter(cb, previousMode);
	else
		cb:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", ACCOUNT_X, -24);
	end
	previousMode = cb;
end

local y = -4;
for _,group in ipairs(Groups) do
	if group then
		local height, header = settings.CreatePageSectionHeader(content, group.title, y);
		header.OnRefresh = DimInDebugMode;
		if group.isGeneral then
			header.OnRefresh = function(self)
				DimInDebugMode(self);
				-- Halloween Easter Egg
				C_Calendar.OpenCalendar()
				local date = C_DateAndTime.GetCurrentCalendarTime()
				local numEvents = C_Calendar.GetNumDayEvents(0, date.monthDay)
				for i=1, numEvents do
					local event = C_Calendar.GetHolidayInfo(0, date.monthDay, i)
					if event and (event.texture == 235461 or event.texture == 235462) then -- Non-localised way to detect specific holiday
						self:SetText(L.STRANGER_THINGS_LABEL)
					end
				end
			end
		end
		y = y - height;
		for _,thing in ipairs(group.things) do
			if thing then
				CreateAccountWideCheckbox(thing, ACCOUNT_X, y);
				local cb = CreateTrackingCheckbox(thing);
				cb:SetPoint("TOPLEFT", content, "TOPLEFT", TRACK_X, y);
				if thing.isTransmog then CreateTransmogExtras(cb); end
				if thing.extras then
					for _,extra in ipairs(thing.extras) do
						if extra then
							local extraCheckbox = CreateTrackingCheckbox(extra);
							AlignAfter(extraCheckbox, cb);
							cb = extraCheckbox;
						end
					end
				end
				y = y - ROW_HEIGHT;
			end
		end
		y = y - 8;
	end
end
content:SetHeight(-y);
