local appName, app = ...
local L = app.L;

-- Create the settings container.
-- TODO: Investigate if this needs to be a frame or if it can be something else.
local settings = CreateFrame("FRAME", appName .. "-Settings", InterfaceOptionsFramePanelContainer)
app.Settings = settings;
settings:SetAllPoints();
settings:Hide();

-- Define some Common UI Templates
settings.UITemplates = {
	Checkbox = app.IsRetail and "UICheckButtonTemplate" or "UICheckButtonTemplate",
	Slider = "MinimalSliderTemplate",
}

-- Common Settings
settings.AccountWide = setmetatable({
	Achievements = true,
	BattlePets = true,
	Campsites = true,
	Decor = true,
	Exploration = true,
	FlightPaths = true,
	Heirlooms = true,
	Illusions = true,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	Titles = true,
	Toys = true,
	Transmog = true,
}, { __index = function(t, key)
	-- hopefully temporary...
	-- GarrisonBuildings is captured in the cache, but tracked via Recipes...
	-- would prefer they eventually become moved to CharacterUnlocks with special handling
	if key == "GarrisonBuildings" then
		return t.Recipes
	end
end});
settings.Collectibles = {
	Achievements = true,
	BattlePets = true,
	Exploration = true,
	FlightPaths = true,
	Heirlooms = true,
	Illusions = true,
	Loot = true,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	Titles = true,
	Toys = true,
	Transmog = true,
};
settings.ForceAccountWide = {
	BattlePets = true,
	Campsites = true,
	Decor = app.GameBuildVersion >= 110207,
	FlightPaths = app.GameBuildVersion >= 110000,
	Heirlooms = true,
	Illusions = true,
	MountMods = true,
	Mounts = true,
	RuneforgeLegendaries = true,
	Toys = true,
	Transmog = true,
}

-- INSANE MODE
settings.RequiredForInsaneMode = {
	Achievements = true,
	AzeriteEssences = app.GameBuildVersion >= 80000,
	BattlePets = true,
	Campsites = app.GameBuildVersion >= 110100,
	CharacterUnlocks = true,
	Conduits = app.GameBuildVersion >= 100000,
	Decor = app.GameBuildVersion >= 110207,
	MountMods = app.GameBuildVersion >= 100000,
	Exploration = app.IsClassic,	-- CRIEVE NOTE: For now, until Blizzard fixes their broken Retail version of the exploration API.
	FlightPaths = true,
	Followers = app.GameBuildVersion >= 60000,
	Heirlooms = app.GameBuildVersion >= 30000,
	HeirloomUpgrades = app.GameBuildVersion >= 60000,
	Illusions = app.GameBuildVersion >= 70000,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	RuneforgeLegendaries = app.GameBuildVersion >= 90000,
	Titles = true,
	Toys = true,
	Transmog = app.GameBuildVersion >= 40000,
	-- Expansion Filters
	Classic = true,
	TBC = app.GameBuildVersion >= 20000,
	Wrath = app.GameBuildVersion >= 30000,
	Cata = app.GameBuildVersion >= 40000,
	MoP = app.GameBuildVersion >= 50000,
	WoD = app.GameBuildVersion >= 60000,
	Legion = app.GameBuildVersion >= 70000,
	BfA = app.GameBuildVersion >= 80000,
	SL = app.GameBuildVersion >= 90000,
	DF = app.GameBuildVersion >= 100000,
	TWW = app.GameBuildVersion >= 110000,
	MID = app.GameBuildVersion >= 120000,
}

-- RANKED MODE
settings.RequiredForRankedMode = {
	Achievements = true,
	BattlePets = true,
	Decor = app.GameBuildVersion >= 110207,
	Heirlooms = app.GameBuildVersion >= 30000,
	Illusions = app.GameBuildVersion >= 70000,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	Titles = true,
	Toys = true,
	Transmog = app.GameBuildVersion >= 40000,
	-- Expansion Filters
	Classic = true,
	TBC = app.GameBuildVersion >= 20000,
	Wrath = app.GameBuildVersion >= 30000,
	Cata = app.GameBuildVersion >= 40000,
	MoP = app.GameBuildVersion >= 50000,
	WoD = app.GameBuildVersion >= 60000,
	Legion = app.GameBuildVersion >= 70000,
	BfA = app.GameBuildVersion >= 80000,
	SL = app.GameBuildVersion >= 90000,
	DF = app.GameBuildVersion >= 100000,
	TWW = app.GameBuildVersion >= 110000,
	MID = app.GameBuildVersion >= 120000,
}

-- CORE MODE
settings.RequiredForCoreMode = {
	BattlePets = true,
	Campsites = app.GameBuildVersion >= 110100,
	Decor = app.GameBuildVersion >= 110207,
	Heirlooms = app.GameBuildVersion >= 30000,
	Illusions = app.GameBuildVersion >= 70000,
	Mounts = true,
	Toys = true,
	Transmog = app.GameBuildVersion >= 40000,
	-- Expansion Filters
	Classic = true,
	TBC = app.GameBuildVersion >= 20000,
	Wrath = app.GameBuildVersion >= 30000,
	Cata = app.GameBuildVersion >= 40000,
	MoP = app.GameBuildVersion >= 50000,
	WoD = app.GameBuildVersion >= 60000,
	Legion = app.GameBuildVersion >= 70000,
	BfA = app.GameBuildVersion >= 80000,
	SL = app.GameBuildVersion >= 90000,
	DF = app.GameBuildVersion >= 100000,
	TWW = app.GameBuildVersion >= 110000,
	MID = app.GameBuildVersion >= 120000,
}

if app.GameBuildVersion >= 90000 then
	-- In this version, also include Convenants
	-- Returns true if something is being hidden/filtered and removing any Mode status
	settings.NonMode = function(self)
		-- Non-Account Mode with Covenants filtered
		if not self:Get("AccountMode") then
			local currentCharacter = app.CurrentCharacter;
			if currentCharacter then
				local customCollects = currentCharacter.CustomCollects;
				if customCollects then
					-- TODO: maybe track custom collect filters through a different Get method for easier logic
					if not (customCollects.SL_COV_KYR or self:Get("CC:SL_COV_KYR"))
						or not (customCollects.SL_COV_NEC or self:Get("CC:SL_COV_NEC"))
						or not (customCollects.SL_COV_NFA or self:Get("CC:SL_COV_NFA"))
						or not (customCollects.SL_COV_VEN or self:Get("CC:SL_COV_VEN")) then
						return true;
					end
				end
			end
		end

		return
		-- Hiding BoE's
		self:Get("Hide:BoEs")
		-- Hiding PvP
		or self:Get("Hide:PvP")
		-- Hiding Higher Level Content
		or self:Get("Filter:ByLevel")
		-- Hiding Pet Battles
		or not self:Get("Show:PetBattles")
		-- Hiding Skyriding
		or not self:Get("Show:Skyriding")
		-- Hiding any Seasonal content
		or self:Get("Show:OnlyActiveEvents")
		-- Hiding quest rewards that aren't available to your current character
		or not self:Get("Show:UnavailablePersonalLoot")
	end
else
	-- Returns true if something is being hidden/filtered and removing Insane status
	settings.NonMode = function(self)
		return
		-- Hiding BoE's
		self:Get("Hide:BoEs")
		-- Hiding PvP
		or self:Get("Hide:PvP")
		-- Hiding Higher Level Content
		or self:Get("Filter:ByLevel")
		-- Hiding Pet Battles
		or not self:Get("Show:PetBattles")
		-- Hiding Skyriding
		or not self:Get("Show:Skyriding")
		-- Hiding any Seasonal content
		or self:Get("Show:OnlyActiveEvents")
		-- Hiding quest rewards that aren't available to your current character
		or not self:Get("Show:UnavailablePersonalLoot")
	end
end


-- Settings Class
local Things = {
	"Achievements",
	"AzeriteEssences",
	"BattlePets",
	"Campsites",
	"CharacterUnlocks",
	"Conduits",
	"Decor",
	"MountMods",
	"Exploration",
	"FlightPaths",
	"Followers",
	"Heirlooms",
	"HeirloomUpgrades",
	"Illusions",
	"Mounts",
	"Quests",
	"QuestsLocked",
	"QuestsHidden",
	"Recipes",
	"Reputations",
	"RuneforgeLegendaries",
	"Titles",
	"Toys",
	"Transmog",
}
local GeneralSettingsBase = {
	__index = {
		["AccountMode"] = false,
		["Completionist"] = true,
		["LootMode"] = false,
		["MainOnly"] = false,
		["DebugMode"] = false,
		["FactionMode"] = false,
		["AccountWide:Achievements"] = app.GameBuildVersion >= 40000,
		["AccountWide:AzeriteEssences"] = true,
		["AccountWide:BattlePets"] = true,
		["AccountWide:CharacterUnlocks"] = true,
		["AccountWide:Conduits"] = true,
		["AccountWide:Exploration"] = false,
		["AccountWide:FlightPaths"] = false,
		["AccountWide:Followers"] = true,
		["AccountWide:Heirlooms"] = true,
		["AccountWide:Illusions"] = true,
		["AccountWide:Mounts"] = true,
		["AccountWide:Quests"] = false,
		["AccountWide:Recipes"] = true,
		["AccountWide:Reputations"] = app.GameBuildVersion >= 40000,
		["AccountWide:Titles"] = true,
		["AccountWide:Toys"] = true,
		["AccountWide:Transmog"] = true,
		["Thing:Achievements"] = true,
		["Thing:AzeriteEssences"] = app.GameBuildVersion >= 80000,
		["Thing:BattlePets"] = true,
		["Thing:Campsites"] = app.GameBuildVersion >= 110100,
		["Thing:CharacterUnlocks"] = app.IsRetail,	-- CRIEVE NOTE: This class might be up to the chopping block with a thing I have on my todo list. I'll leave it for now.
		["Thing:Conduits"] = app.GameBuildVersion >= 100000,
		["Thing:Decor"] = app.GameBuildVersion >= 110207,
		["Thing:MountMods"] = app.GameBuildVersion >= 100000,
		["Thing:Exploration"] = app.IsClassic,	-- CRIEVE NOTE: For now, until Blizzard fixes their broken Retail version of the exploration API.
		["Thing:FlightPaths"] = true,
		["Thing:Followers"] = app.GameBuildVersion >= 60000,
		["Thing:Heirlooms"] = true,
		["Thing:HeirloomUpgrades"] = app.GameBuildVersion >= 60000,
		["Thing:Illusions"] = true,
		["Thing:Mounts"] = true,
		["Thing:Quests"] = true,
		["Thing:QuestsLocked"] = false,
		["Thing:QuestsHidden"] = false,
		["Thing:Recipes"] = true,
		["Thing:Reputations"] = true,
		["Thing:RuneforgeLegendaries"] = app.GameBuildVersion >= 90000,
		["Thing:Titles"] = true,
		["Thing:Toys"] = true,
		["Thing:Transmog"] = app.GameBuildVersion >= 40000,
		["Only:RWP"] = app.GameBuildVersion < 40000,
		["Only:NotTrash"] = app.GameBuildVersion <= 40000,
		["Skip:AutoRefresh"] = false,
		["Show:CompletedGroups"] = false,
		["Show:CollectedThings"] = false,
		["Show:OnlyActiveEvents"] = true,
		["Show:PetBattles"] = true,
		["Show:Skyriding"] = true,
		["Show:UnavailablePersonalLoot"] = true,
		["Hide:PvP"] = false,
		["Hide:ChallengeMaster"] = app.GameBuildVersion < 50000 or app.GameBuildVersion > 70000,
		["Dynamic:Style"] = 1,
		["CC:SL_COV_KYR"] = false,
		["CC:SL_COV_VEN"] = false,
		["CC:SL_COV_NFA"] = false,
		["CC:SL_COV_NEC"] = false,
		["Profile:ShowProfileLoadedMessage"] = true,
		["Window:BackgroundColor"] = { r = 0, g = 0, b = 0, a = 1 },
		["Window:BorderColor"] = { r = 1, g = 1, b = 1, a = 1 },
		["Window:UseClassForBorder"] = false,
		["PresetRestore"] = {},
		-- Expansion Filters (disabled by default)
		["ExpansionFilter:Enabled"] = false,
		["ExpansionFilter:Classic"] = true,
		["ExpansionFilter:TBC"] = app.GameBuildVersion >= 20000,
		["ExpansionFilter:Wrath"] = app.GameBuildVersion >= 30000,
		["ExpansionFilter:Cata"] = app.GameBuildVersion >= 40000,
		["ExpansionFilter:MoP"] = app.GameBuildVersion >= 50000,
		["ExpansionFilter:WoD"] = app.GameBuildVersion >= 60000,
		["ExpansionFilter:Legion"] = app.GameBuildVersion >= 70000,
		["ExpansionFilter:BfA"] = app.GameBuildVersion >= 80000,
		["ExpansionFilter:SL"] = app.GameBuildVersion >= 90000,
		["ExpansionFilter:DF"] = app.GameBuildVersion >= 100000,
		["ExpansionFilter:TWW"] = app.GameBuildVersion >= 110000,
		["ExpansionFilter:MID"] = app.GameBuildVersion >= 120000,
		["ExpansionFilter:TLT"] = app.GameBuildVersion >= 130000,
	},
};
local FilterSettingsBase = {
	__index = app.Presets[app.Class] or app.Presets.ALL,
};
local TransmogPresets = app.PresetTransmogs or app.Presets;
local TransmogFilterSettingsBase = {
	__index = TransmogPresets[app.Class] or TransmogPresets.ALL,
};
local TooltipSettingsBase = {
	__index = {
		["Adjust:RowIndents"] = true,
		["Auto:AuctionList"] = true,
		["Auto:ProfessionList"] = true,
		["Celebrate"] = true,
		["Channel"] = "Master",
		["Cost"] = true,
		["Screenshot"] = false,
		["DisplayInCombat"] = true,
		["Enabled"] = true,
		["Enabled:Mod"] = "None",
		["EnablePetCageTooltips"] = true,
		["Expand:Difficulty"] = true,
		["Expand:MiniList"] = true,
		["CompletedBy"] = true,
		["KnownBy"] = true,
		["Locations"] = 5,
		["InactiveWindowAlpha"] = 1,
		["MainListScale"] = 1,
		["MiniListScale"] = 1,
		["IncludeOriginalSource"] = true,
		["LootSpecializations"] = true,
		["WorldMapButton"] = true,
		["MinimapButton"] = true,
		["MinimapSize"] = 36,
		["IconPortraits"] = true,
		["IconPortraitsForQuests"] = true,
		["Models"] = true,
		["Objectives"] = app.GameBuildVersion < 80000,
		["Owned Pets"] = true,
		["Precision"] = 2,
		["PlayDeathSound"] = false,
		["Progress"] = true,
		["Repeatables"] = true,
		["ShowIconOnly"] = false,
		["SharedAppearances"] = true,
		["Show:CraftedItems"] = false,
		["Show:Recipes"] = false,
		["Show:Remaining"] = false,
		["Show:OnlyShowNonTrivialRecipes"] = true,
		["Show:Percentage"] = true,
		["Show:TooltipHelp"] = true,
		["SoftReserves"] = true,
		["SoftReservePersistence"] = false,
		["UseMoreColors"] = true,
		["Skip:Cutscenes"] = false,
		["SourceLocations"] = true,
		["SourceLocations:Completed"] = true,
		["SourceLocations:Creatures"] = true,
		["SourceLocations:Things"] = true,
		["SourceLocations:Unsorted"] = false,
		["SpecializationRequirements"] = true,
		["SummarizeThings"] = true,
		["Warn:Removed"] = true,
		["Currencies"] = true,
		["QuestChain:Nested"] = true,
		["WorldQuestsList:Currencies"] = true,
		["SocialProgress"] = true,

		-- Features: Reporting
		["Report:Collected"] = true,
		["Report:CompletedQuests"] = true,
		["Report:UnsortedQuests"] = true,
		["Report:DeathTracker"] = true,

		-- Nearby Content
		["Nearby:ReportContent"] = false,
		["Nearby:Type:npc"] = true,
		["Nearby:Type:object"] = true,
		["Nearby:PlotWaypoints"] = false,
		["Nearby:ClearWaypoints"] = true,
		["Nearby:IncludeCompleted"] = true,
		["Nearby:IncludeUnknown"] = true,
		["Nearby:FlashTheTaskbar"] = true,
		["RareFind"] = true,

		-- Information Type Behaviours
		["ContainsCount"] = 25,
		["MaxTooltipTopLineLength"] = 999,

		-- Information Types
		["description"] = true,
		["playerCoord"] = true,
		["requireEvent"] = true,
		["requireSkill"] = true,
		["petBattleLvl"] = true,
		["providers"] = true,
		["nextEvent"] = true,
		["spellName"] = true,
		["coords"] = true,
		["parent"] = true,
		["locks"] = true,
		["lore"] = true,
		["maps"] = true,
		["awp"] = true,
		["crs"] = true,
		["qgs"] = true,
		["lvl"] = true,
		["rwp"] = true,
		["pvp"] = true,
		["pb"] = true,
		["sr"] = true,
		["c"] = true,
		["r"] = true,
		["u"] = true,
	},
};
local UnobtainableSettingsBase = {
	__index = {
		[1] = false,	-- Never Implemented
		[2] = false,	-- Removed From Game
		[3] = false,	-- Real Money
		[7] = true,		-- Trading Post
	},
};
settings.__UnobtainableSettingsBase = UnobtainableSettingsBase;

-- Check for Season of Discovery
local season = C_Seasons and C_Seasons.GetActiveSeason() or 0;
if season > 0 then
	if season == 1 then	-- SOM
		UnobtainableSettingsBase.__index[1604] = true;
	end
	if season == 2 then	-- SOD
		if app.GameBuildVersion >= 11502 then app.MaximumSkillLevel = 300;
		elseif app.GameBuildVersion >= 11501 then app.MaximumSkillLevel = 225;
		else app.MaximumSkillLevel = 150; end
	end
end

local RawSettings;
local function SetupRawSettings()
	if not RawSettings.General then RawSettings.General = {} end
	if not RawSettings.Tooltips then RawSettings.Tooltips = {} end
	if not RawSettings.Unobtainable then RawSettings.Unobtainable = {} end
	if not RawSettings.Filters then RawSettings.Filters = {} end
	setmetatable(RawSettings.General, GeneralSettingsBase)
	setmetatable(RawSettings.Tooltips, TooltipSettingsBase)
	setmetatable(RawSettings.Filters, FilterSettingsBase)
	setmetatable(RawSettings.Unobtainable, UnobtainableSettingsBase)
end
local AllTheThingsSettingsPerCharacter = {};
settings.Initialize = function(self)
	-- app.PrintDebug("settings.Initialize")

	-- Assign the default settings
	if not settings:ApplyProfile() then
		if not AllTheThingsSettings then AllTheThingsSettings = {} end
		RawSettings = AllTheThingsSettings
		SetupRawSettings()
	end

	-- Initialise custom colors, iterate so if app.Colors gets new colors they aren't lost
	local colors = settings:Get("Window:CustomColors") or {}
	-- make sure the table reference is actually assigned back to be saved
	settings:Set("Window:CustomColors",colors)
	-- replace the direct table with a metatable of the user's colors & Default fallbacks
	app.SetCustomColors(colors)

	-- Assign the preset filters for your character class as the default states
	local PerCharacter = app.LocalizeGlobal("AllTheThingsSettingsPerCharacter", true)
	if PerCharacter then AllTheThingsSettingsPerCharacter = PerCharacter; end
	if not PerCharacter.Filters then PerCharacter.Filters = {}; end
	if not PerCharacter.TransmogFilters then PerCharacter.TransmogFilters = {}; end
	setmetatable(PerCharacter.Filters, FilterSettingsBase);
	setmetatable(PerCharacter.TransmogFilters, TransmogFilterSettingsBase);

	-- force re-enable of optional filters which become not optional
	-- (any filterID's here must be 'true' in all class presets)
	local reEnableFilters = { }
	for _,filterID in ipairs(reEnableFilters) do
		if not PerCharacter.Filters[filterID] then
			PerCharacter.Filters[filterID] = nil
		end
	end

	self:UpdateMode()
	-- TODO: need to properly use other libraries to create minimap button if delayed...
	-- but other addons only handle pre-existing minimap buttons when they load, so for now move back to the order it was
	app.SetMinimapButtonSettings(
		self:GetTooltipSetting("MinimapButton"),
		self:GetTooltipSetting("MinimapSize"));

	if settings.RefreshActiveInformationTypes then
		settings.RefreshActiveInformationTypes()
		settings.RefreshActiveInformationTypes = nil
	end

	-- Somehow some forced Account-Wide Things were set to false in user Profiles, so using app.IsAccountTracked ALWAYS returned false
	-- so let's erase that data, and assign those Things in the Base General class
	for thing,_ in pairs(settings.ForceAccountWide) do
		local accountWideThing = "AccountWide:"..thing;
		settings:Set(accountWideThing, nil)
		GeneralSettingsBase.__index[accountWideThing] = true
		settings.AccountWide[thing] = true
	end

	-- Remove obsolete Settings keys
	settings:Set("ExpansionFilter:Enabled", nil)

	app._SettingsRefresh = GetTimePreciseSec()
	settings._Initialize = true
	-- app.PrintDebug("settings.Initialize:Done")
end
local function rawcopy(source, copy)
	if source and copy then
		for k,v in pairs(source) do
			copy[k] = v
		end
	end
end
-- Creates, assigns, and returns a RawSettings object for a given Profile Key
settings.NewProfile = function(self, key)
	if AllTheThingsProfiles and key then
		-- cannot create existing profile name
		if AllTheThingsProfiles.Profiles[key] then return end

		local raw = {
			General = {},
			Tooltips = {},
			Unobtainable = {},
			Filters = {},
		}
		AllTheThingsProfiles.Profiles[key] = raw
		return raw
	end
end
-- Creates, assigns, copies existing, and returns a RawSettings object for a given Profile Key
settings.CopyProfile = function(self, key, copyKey)
	if AllTheThingsProfiles then
		key = key or settings:GetProfile()
		-- don't try to copy the same profile
		if key == copyKey then return end
		-- delete the existing profile manually
		AllTheThingsProfiles.Profiles[key] = nil
		-- re-create the profile
		local raw = settings:NewProfile(key)
		if raw then
			local copy = AllTheThingsProfiles.Profiles[copyKey]
			if copy then
				rawcopy(copy.General, raw.General)
				rawcopy(copy.Tooltips, raw.Tooltips)
				rawcopy(copy.Unobtainable, raw.Unobtainable)
				rawcopy(copy.Filters, raw.Filters)
			end
		end
		return raw
	end
end
-- Removes a Profile
settings.DeleteProfile = function(self, key)
	if AllTheThingsProfiles and key and key ~= "Default" then
		AllTheThingsProfiles.Profiles[key] = nil
		-- deleting the current character's profile, reassign to Default
		if key == AllTheThingsProfiles.Assignments[app.GUID] then
			AllTheThingsProfiles.Assignments[app.GUID] = nil
			settings.ApplyProfile()
		end
		-- deleting a profile used by other characters, they too will reset to default
		for char,profKey in pairs(AllTheThingsProfiles.Assignments) do
			if profKey == key then
				AllTheThingsProfiles.Assignments[char] = nil
			end
		end
		return true
	end
end
-- Gets the Profile for the current character
settings.GetProfile = function(self, localized)
	if AllTheThingsProfiles then
		return AllTheThingsProfiles.Assignments[app.GUID] or (localized and DEFAULT or "Default")
	end
end
-- Sets a Profile for the current character
settings.SetProfile = function(self, key)
	if AllTheThingsProfiles and key then
		-- don't assign Default... it's Default...
		if key == "Default" then key = nil end
		AllTheThingsProfiles.Assignments[app.GUID] = key
	end
end
-- Creates the data structures and initial 'Default' profiles for ATT
settings.SetupProfiles = function()
	-- base profiles containers
	local ATTProfiles = {
		Profiles = {},
		Assignments = {},
	};
	AllTheThingsProfiles = ATTProfiles;
	local default = app.Settings:NewProfile(DEFAULT);
	-- copy various existing settings that are now Profiled
	if AllTheThingsSettings then
		-- General Settings
		if AllTheThingsSettings.General then
			for k,v in pairs(AllTheThingsSettings.General) do
				default.General[k] = v;
			end
		end
		-- Tooltip Settings
		if AllTheThingsSettings.Tooltips then
			for k,v in pairs(AllTheThingsSettings.Tooltips) do
				default.Tooltips[k] = v;
			end
		end
		-- Seasonal Filters
		if AllTheThingsSettings.Seasonal then
			for k,v in pairs(AllTheThingsSettings.Seasonal) do
				default.Seasonal[k] = v;
			end
		end
		-- Unobtainable Filters
		if AllTheThingsSettings.Unobtainable then
			for k,v in pairs(AllTheThingsSettings.Unobtainable) do
				default.Unobtainable[k] = v and true or nil;
			end
		end
	end

	-- pull in window data for the default profile
	for _,window in pairs(app.Windows) do
		window:RecordSettings();
	end

	app.print("Initialized ATT Profiles!");

	-- delete old variables
	AllTheThingsSettings = nil;
end
-- Applies the profile for the current character as the base settings table
settings.ApplyProfile = function(self)
	-- Setup the use of profiles after a short delay to ensure that the layout window positions are collected
	if not AllTheThingsProfiles then settings.SetupProfiles(); end

	local key = settings:GetProfile()
	RawSettings = AllTheThingsProfiles.Profiles[key] or settings:NewProfile(key)
	if RawSettings then
		SetupRawSettings()

		-- when applying a profile, clean out any 'false' Unobtainable keys for cleaner settings storage
		-- for non-defaulted fields
		local unobCopy = app.CloneDictionary(RawSettings.Unobtainable)
		-- this key is no longer used
		unobCopy.DoFiltering = false
		for unobID,set in pairs(unobCopy) do
			if not set and not UnobtainableSettingsBase.__index[unobID] then
				RawSettings.Unobtainable[unobID] = nil
			end
		end

		-- 'Seasonal' set of filters is no longer used
		RawSettings.Seasonal = nil
	end

	-- Ensure the window settings of this Profile are loaded
	if app.LoadSettingsForAllWindows then
		app.LoadSettingsForAllWindows()
	end
	app.HandleEvent("Settings.OnApplyProfile", key)
	return RawSettings and true or nil
end
local OldSuffixConversion = {
	MiniList = "CurrentInstance"
}
-- TEMP function to ensure profile is referenced for any custom window layouts which already exist in a Profile
-- Eventually moving to a Layout system
settings.GetWindowSettingsFromProfile = function(suffix, windowSettings)
	local profileWindows = RawSettings and RawSettings.Windows
	if not profileWindows then return end

	-- need to allow some suffixes from old Retail to new common ones
	local points = profileWindows[suffix] or profileWindows[OldSuffixConversion[suffix]]
	local window = app.Windows[suffix]
	-- app.PrintDebug("GetWindowSettingsFromProfile",suffix,OldSuffixConversion[suffix],points,window)
	if window then
		if RawSettings then
			windowSettings.scale = settings:GetTooltipSetting(suffix == "Prime" and "MainListScale" or "MiniListScale") or 1
		end
		if points then
			-- TODO: this is only 1 point
			for _,point in ipairs(points) do
				windowSettings.point = point.Point
				windowSettings.relativeTo = nil
				windowSettings.relativePoint = point.PointRef
				windowSettings.x = point.X
				windowSettings.y = point.Y
				windowSettings.width = points.Width
				windowSettings.height = points.Height
			end
			windowSettings.isLocked = points.Locked
			-- app.PrintTable(windowSettings)
		end
		local rBg, gBg, bBg, aBg, rBd, gBd, bBd, aBd = settings.GetWindowColors()
		windowSettings.backdropColor = { rBg, gBg, bBg, aBg }
		windowSettings.borderColor = { rBd, gBd, bBd, aBd }
	end
end
-- TEMP function to ensure profile is updated with any changed window layouts which already exist in a Profile
-- Eventually moving to a Layout system
settings.SetWindowSettingsToProfile = function(suffix, windowSettings)
	local profileWindows = RawSettings and RawSettings.Windows
	if not profileWindows then return end

	local points = profileWindows[suffix]
	if not points then
		-- is the profile saved with old window suffix?
		-- if so, then swap it to the new suffix
		points = profileWindows[OldSuffixConversion[suffix]]
		if points then
			profileWindows[suffix] = points
			profileWindows[OldSuffixConversion[suffix]] = nil
		end
	end

	local point = points and points[1]

	-- don't add/update Profile settings if there currently are none
	if not point then
		-- clear out if there's any unused data leftover
		profileWindows[suffix] = nil
		return
	end

	point.Point       = windowSettings.point
	point.PointRef    = windowSettings.relativePoint
	point.X           = windowSettings.x
	point.Y           = windowSettings.y
	points.Width      = windowSettings.width
	points.Height     = windowSettings.height
	points.Locked     = windowSettings.isLocked
end
settings.Get = function(self, setting)
	return RawSettings.General[setting];
end
settings.GetValue = function(self, container, setting)
	local settingscontainer = RawSettings[container]
	if not settingscontainer then
		return
	end
	return settingscontainer[setting]
end
settings.GetDefaultFilter = function(self, filterID)
	return FilterSettingsBase.__index[filterID]
end
local RawFilters
local function SetRawFilters(changedSetting)
	if changedSetting and changedSetting ~= "Profile:StoreFilters" then return end
	if settings:Get("Profile:StoreFilters") then
		RawFilters = RawSettings.Filters
	else
		RawFilters = AllTheThingsSettingsPerCharacter.Filters
	end
end
-- TODO: maybe later we can use OnSettingChanged to trigger UpdateMode when needed by the setting
-- instead of having UpdateMode tacked into a thousand individual checkboxes and buttons
-- app.AddEventHandler("OnSettingChanged", SetRawFilters);
app.AddEventHandler("OnSettingsNeedsRefresh", SetRawFilters);
app.AddEventHandler("OnLoad", SetRawFilters)
settings.ResetFilters = function(self)
	wipe(RawFilters)
	settings:UpdateMode(1)
end
settings.GetFilter = function(self, filterID)
	return RawFilters[filterID];
end
settings.GetFilterForTransmogBase = function(self, filterID)
	return app.PresetTransmogs.ALL[filterID];
end
settings.GetFilterForTransmog = function(self, filterID)
	return AllTheThingsSettingsPerCharacter.TransmogFilters[filterID];
end
settings.SetFilter = function(self, filterID, value)
	RawFilters[filterID] = value;
	settings:UpdateMode(1);
end
settings.GetRawFilters = function(self)
	return RawFilters;
end
settings.GetRawSettings = function(self, name)
	return RawSettings[name];
end
-- Applies a metatable (to provide Defaults) for a given settings Container if one is not already defined
settings.ApplySettingsMetatable = function(self, container, meta)
	local settingscontainer = RawSettings[container]
	if not settingscontainer then
		settingscontainer = setmetatable({}, meta)
		RawSettings[container] = settingscontainer
	elseif not getmetatable(settingscontainer) then
		setmetatable(settingscontainer, meta)
		RawSettings[container] = settingscontainer
	end
end
settings.GetModeString = function(self)
	local mode = L.MODE;
	if settings:Get("Thing:Transmog") or app.MODE_DEBUG then
		if self:Get("Completionist") then
			mode = L.TITLE_COMPLETIONIST .. mode
		else
			mode = L.TITLE_UNIQUE_APPEARANCE .. mode
		end
	end
	if app.MODE_DEBUG then
		mode = L.TITLE_DEBUG .. mode;
	else
		if app.MODE_ACCOUNT then
			if self:Get("FactionMode") then
				local englishFaction = UnitFactionGroup("player")
				if englishFaction == "Alliance" then
					mode = L.TITLE_ALLIANCE .. " " .. mode
				elseif englishFaction == "Horde" then
					mode = L.TITLE_HORDE .. " " .. mode
				else
					mode = L.TITLE_NEUTRAL .. " " .. mode
				end
			else
				mode = L.TITLE_ACCOUNT .. mode
			end
		elseif self:Get("MainOnly") and not self:Get("Completionist") then
			mode = app.ClassName .. " " .. mode .. L.TITLE_MAIN_ONLY
		else
			mode = app.ClassName .. " " .. mode
		end

		if app.GameBuildVersion < 40000 and self:Get("Only:RWP") and self.Collectibles.Transmog then
			mode = "RWP " .. mode;
		end

		local solo = not app.MODE_DEBUG_OR_ACCOUNT
		local keyPrefix, thingName, thingActive
		local insaneTotalCount, insaneCount = 0, 0;
		local rankedTotalCount, rankedCount = 0, 0;
		local coreTotalCount, coreCount = 0, 0;
		local totalThingCount, thingCount, things = 0, 0, {};
		for key,_ in pairs(GeneralSettingsBase.__index) do
			keyPrefix, thingName = (":"):split(key)
			if keyPrefix == "Thing" or keyPrefix == "ExpansionFilter" then
				totalThingCount = totalThingCount + 1
				thingActive = settings:Get(key);
				if thingActive then
					-- Heirloom Upgrades only count when Heirlooms are enabled
					-- This prevents the heirloom uprades and quests locked from being displayed as a mode.
					-- Only 'Things' in General settings count towards the mode string
					if (key ~= "Thing:HeirloomUpgrades" or settings:Get("Thing:Heirlooms"))
						and keyPrefix == "Thing"
					then
						thingCount = thingCount + 1
						table.insert(things, thingName)
					end
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
						insaneCount = insaneCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
						rankedCount = rankedCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
						coreCount = coreCount + 1;
					end
				else
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
					end
				end
			elseif solo and keyPrefix == "AccountWide"
				and not settings.ForceAccountWide[thingName]
				and settings:Get(key)
				and settings:Get("Thing:"..thingName) then
				solo = false
			end
		end
		if thingCount == 0 then
			mode = L.TITLE_NONE_THINGS .. mode;
		elseif thingCount == 1 then
			mode = things[1] .. L.TITLE_ONLY .. mode;
		elseif thingCount == 2 then
			mode = things[1] .. " + " .. things[2] .. L.TITLE_ONLY .. mode;
		elseif insaneCount == insaneTotalCount then
			-- only Insane if not hiding anything!
			if settings:NonMode() then
				-- don't add Insane :)
			else
				mode = L.TITLE_INSANE .. mode
			end
		elseif rankedCount == rankedTotalCount then
			-- only Ranked if not hiding anything!
			if settings:NonMode() then
				-- don't add Ranked :)
			else
				mode = L.TITLE_RANKED .. mode
			end
		elseif coreCount == coreTotalCount then
			-- only Core if not hiding anything!
			if settings:NonMode() then
				-- don't add Core :)
			else
				mode = L.TITLE_CORE .. mode
			end
		elseif not settings:Get("Thing:Transmog") and self.RequiredForInsaneMode.Transmog then
			mode = L.TITLE_SOME_THINGS .. mode
		end
		if solo then
			mode = L.TITLE_SOLO .. mode
		end
	end
	if self:Get("Filter:ByLevel") then
		mode = L.TITLE_LEVEL .. app.Level .. " " .. mode;
	end
	-- Waiting on Refresh to properly show values
	if self.NeedsRefresh then
		mode = L.AFTER_REFRESH .. mode
	end
	return mode;
end
settings.GetShortModeString = function(self)
	if app.MODE_DEBUG then
		return "D";
	else
		local things = {}
		local thingCount = 0
		local totalThingCount = 0
		local keyPrefix, thingName, thingActive
		local insaneTotalCount, insaneCount = 0, 0;
		local rankedTotalCount, rankedCount = 0, 0;
		local coreTotalCount, coreCount = 0, 0;
		local solo = not app.MODE_DEBUG_OR_ACCOUNT
		for key,_ in pairs(GeneralSettingsBase.__index) do
			keyPrefix, thingName = (":"):split(key)
			if keyPrefix == "Thing" or keyPrefix == "ExpansionFilter" then
				totalThingCount = totalThingCount + 1
				thingActive = settings:Get(key);
				if thingActive then
					-- Heirloom Upgrades only count when Heirlooms are enabled
					-- This prevents the heirloom uprades and quests locked from being displayed as a mode.
					if key ~= "Thing:HeirloomUpgrades" or settings:Get("Thing:Heirlooms") then
						thingCount = thingCount + 1
						table.insert(things, thingName)
					end
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
						insaneCount = insaneCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
						rankedCount = rankedCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
						coreCount = coreCount + 1;
					end
				else
					if self.RequiredForInsaneMode[thingName] then
						insaneTotalCount = insaneTotalCount + 1;
					end
					if self.RequiredForRankedMode[thingName] then
						rankedTotalCount = rankedTotalCount + 1;
					end
					if self.RequiredForCoreMode[thingName] then
						coreTotalCount = coreTotalCount + 1;
					end
				end
			elseif solo and keyPrefix == "AccountWide"
				and not settings.ForceAccountWide[thingName]
				and settings:Get(key)
				and settings:Get("Thing:"..thingName) then
				solo = false
			end
		end
		local style = ""
		if thingCount == 0 then
			style = "N"
		elseif insaneCount == insaneTotalCount then
			-- only Insane if not hiding anything!
			if settings:NonMode() then
				-- don't add Insane :)
			else
				style = "I"
			end
		elseif rankedCount == rankedTotalCount then
			-- only Ranked if not hiding anything!
			if settings:NonMode() then
				-- don't add Ranked :)
			else
				style = "R"
			end
		elseif coreCount == coreTotalCount then
			-- only Core if not hiding anything!
			if settings:NonMode() then
				-- don't add Core :)
			else
				style = "C"
			end
		else
			style = ""
		end
		if solo then
			style = "S"..style
		end
		-- Waiting on Refresh to properly show values
		if self.NeedsRefresh then
			style = "R: " .. style
		end
		if self:Get("Completionist") then
			if app.MODE_ACCOUNT then
				return style .. "AC"
			else
				return style .. "C"
			end
		else
			if app.MODE_ACCOUNT then
				return style .. "AU"
			elseif self:Get("MainOnly") then
				return style .. "UM"
			else
				return style .. "U"
			end
		end
	end
end
settings.GetTooltipSetting = function(self, setting)
	return RawSettings.Tooltips[setting];
end
local ModifierFuncs = {
	["Shift"] = IsShiftKeyDown,
	["Ctrl"] = IsControlKeyDown,
	["Alt"] = IsAltKeyDown,
	["Cmd"] = IsMetaKeyDown,
}
settings.GetTooltipSettingWithMod = function(self, setting)
-- only returns 'true' for the requested TooltipSetting if the Setting's associated Modifier key is currently being pressed
	local v = RawSettings.Tooltips[setting]
	if not v then return v end
	local k = RawSettings.Tooltips[setting..":Mod"]
	if k == "None" then
		return v
	end
	local func = ModifierFuncs[k]
	if func and func() then
		return v
	end
end
-- TODO: I think these settings events should just concat their full qualifier with only the value as the parameter
settings.Set = function(self, setting, value)
	RawSettings.General[setting] = value;
	app.HandleEvent("Settings.OnSet","General",setting,value)
	-- app.HandleEvent("Settings.OnSet.General."..setting,value)
	self:Refresh();
end
settings.SetValue = function(self, container, setting, value)
	local settingscontainer = RawSettings[container]
	if not settingscontainer then
		settingscontainer = {}
		RawSettings[container] = settingscontainer
	end
	settingscontainer[setting] = value
	app.HandleEvent("Settings.OnSet",container,setting,value)
	-- app.HandleEvent("Settings.OnSet."..container.."."..setting,value)
	self:Refresh()
end
settings.SetTooltipSetting = function(self, setting, value)
	RawSettings.Tooltips[setting] = value;
	app.HandleEvent("Settings.OnSet","Tooltips",setting,value)
	-- app.HandleEvent("Settings.OnSet.Tooltips."..setting,value)
	app.WipeSearchCache();
	self:Refresh();
end
settings.GetUnobtainableFilter = function(self, u)
	return not u or RawSettings.Unobtainable[u];
end
settings.SetUnobtainableFilter = function(self, u, value)
	self:SetValue("Unobtainable", u, value)
	self:UpdateMode(1);
end

settings.Objects = {};
local function Refresh()
	local objects = settings.Objects
	-- app.PrintDebug("Settings.Refresh",objects and #objects)
	if objects then
		for _,object in ipairs(objects) do
			if object.OnRefresh then object:OnRefresh() end
			if object.RefreshChildren then object:RefreshChildren() end
		end
	end
	-- app.PrintDebug("Settings.Refresh:Done")
end
app.AddEventHandler("OnRefreshSettings", Refresh)
settings.Refresh = app.EmptyFunction	-- Refresh triggers when Initializing Settings, which we don't want to do anything yet
-- setup settings refresh functionality once Startup is done
-- there's some tooltip settings updates during quest refresh triggered during Onstartup
-- that inadvertently trigger an unexpected settings refresh which delays the loading sequence
-- by a micro-amount. Let's just avoid refreshing the settings until OnStartupDone
app.AddEventHandler("OnStartupDone", function()
	settings.Refresh = function(self, source)
		-- app.PrintDebug("settings.Refresh",source)
		app.CallbackEvent("OnRefreshSettings");
	end
	-- do an immediate Refresh as well
	Refresh()
end)

local function Mixin(o, mixin)
	for k,v in pairs(mixin) do
		o[k] = v;
	end
	return o;
end
local ATTSettingsObjectMixin, ATTSettingsPanelMixin;
-- Mixins
ATTSettingsObjectMixin = {
	-- Performs SetPoint anchoring against the 'other' frame to align this Checkbox below it. Allows an 'indent' which defines how many steps of indentation to
	-- apply either positive (right) or negative (left), or specifying another frame against which to LEFT-align
	AlignBelow = function(self, other, indent, add)
		if type(indent) == "number" then
			self:SetPoint("TOPLEFT", other, "BOTTOMLEFT", indent * 8, add or 4)
		elseif type(indent) == "table" then
			self:SetPoint("TOP", other, "BOTTOM", 0, add or 4)
			self:SetPoint("LEFT", indent, "LEFT")
		else
			self:SetPoint("TOPLEFT", other, "BOTTOMLEFT", 0, add or 4)
		end
		return self
	end,
	-- Performs SetPoint anchoring against the 'other' frame to align this Checkbox after it (right)
	AlignAfter = function(self, other, add)
		local text = other.Text
		add = add or 0;
		if text and text:GetText() then
			self:SetPoint("TOP", other, "TOP")
			self:SetPoint("LEFT", other.Text, "RIGHT", 4 + add, 0)
		else
			self:SetPoint("LEFT", other, "RIGHT", -4 + add, 0)
		end
		return self
	end,
	-- Disables, checks, fades the checkbox
	OnRefreshCheckedDisabled = function(self)
		if self.SetChecked then
			self:SetChecked(true)
		end
		if self.Disable then
			self:Disable()
		end
		if self.SetAlpha then
			self:SetAlpha(0.4)
		end
	end,
	-- Creates a font string attached to the top of the provided frame with the given text
	AddLabel = function(self, text)
		local label = self:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		Mixin(label, ATTSettingsObjectMixin);
		self:RegisterObject(label);
		label:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, -2)
		label:SetJustifyH("LEFT")
		label:SetHeight(18)
		label:SetText(text)
		return label
	end,
	MarkAsWIP = function(self)
		local wip = self:CreateTexture(nil, "OVERLAY");
		wip:SetPoint("LEFT", self.Text or self, "RIGHT", 2, 0);
		wip:SetTexture(app.asset("WIP"));
		wip:SetScale(0.5);
		--wip:SetRotation(-270);
		wip:Show();
	end,
	-- Registers an Object within itself
	RegisterObject = function(self, o)
		local objects = self.Objects
		if not objects then
			objects = {}
			self.Objects = objects;
		end
		tinsert(objects, o);
	end,
	-- Allows an Object to Refresh all Objects
	RefreshChildren = function(self)
		local objects = self.Objects
		if objects then
			for _,object in ipairs(objects) do
				if object.OnRefresh then object:OnRefresh() end
				if object.RefreshChildren then object:RefreshChildren() end
			end
		end
	end
};
ATTSettingsPanelMixin = {
	-- Create a header label
	CreateHeaderLabel = function(self, text)
		-- Create the header label
		local headerLabel = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
		Mixin(headerLabel, ATTSettingsObjectMixin);
		self:RegisterObject(headerLabel);
		headerLabel:SetJustifyH("LEFT")
		headerLabel:SetText(text)
		headerLabel:SetWordWrap(false)
		headerLabel:Show()

		-- Return the header label
		return headerLabel
	end,
	-- Create a text label, which defaults to the entire width of the options frame
	CreateTextLabel = function(self, text)
		-- Create the text label
		local textLabel = self:CreateFontString(nil, "ARTWORK", "GameFontNormal")
		Mixin(textLabel, ATTSettingsObjectMixin);
		self:RegisterObject(textLabel);
		textLabel:SetJustifyH("LEFT")
		textLabel:SetText(text)
		textLabel:SetWidth(640)	-- This can be manually adjusted afterwards to 320 for half-columns
		textLabel:Show()

		-- Return the text label
		return textLabel
	end,
	CreateCheckBox = function(self, text, OnRefresh, OnClick)
		if not text then
			app.print("Invalid Checkbox Info")
			text = "INVALID CHECKBOX"
		end
		---@class ATTSettingsCheckButton: CheckButton
		---@field Text FontString
		---@field OnRefreshCheckedDisabled any
		local cb = CreateFrame("CheckButton", self:GetName() .. "-" .. text, self, settings.UITemplates.Checkbox)
		Mixin(cb, ATTSettingsObjectMixin);
		self:RegisterObject(cb);
		if OnClick then cb:SetScript("OnClick", OnClick) end
		cb.OnRefresh = OnRefresh or cb.OnRefreshCheckedDisabled
		cb.Text:SetText(text)
		cb.Text:SetScale(1.3)
		cb.Text:SetWordWrap(false)
		cb:SetHitRectInsets(0,0 - cb.Text:GetUnboundedStringWidth(),0,0);
		cb:SetScale(0.8);
		return cb
	end,
	CreateTextbox = function(self, opts, functions)

		local name = self:GetName().."TB"..(opts.name or app.UniqueCounter.CreateTextbox)
		local title = opts.title
		local text = opts.text
		local width = opts.width or 150
		local template = opts.template or "InputBoxTemplate"

		---@class ATTOptionsEditBox: EditBox
		---@field AddLabel fun(self:any, label: string)
		local editbox = CreateFrame("EditBox", name, self, template)
		Mixin(editbox, ATTSettingsObjectMixin);
		self:RegisterObject(editbox);
		editbox:SetAutoFocus(false)
		editbox:SetTextInsets(0, 0, 3, 3)
		editbox:SetMaxLetters(256)
		editbox:SetHeight(19)
		editbox:SetWidth(width)

		if text then
			editbox:SetText(text)
		end

		if title then
			editbox:AddLabel(title)
		end

		-- setup textbox functions
		if functions then
			for k,f in pairs(functions) do
				editbox[k] = f
			end
		end
		-- print("created custom EditBox using",template)

		return editbox
		--[[ https://www.townlong-yak.com/framexml/live/go/BoxTemplate
		Virtual EditBox AuctionHouseLevelRangeEditBoxTemplate
		Virtual EditBox AuctionHouseQuantityInputEditBoxTemplate
		Virtual EditBox AuctionHouseSearchBoxTemplate
		Virtual EditBox AuthChallengeEditBoxTemplate
		Virtual EditBox AutoCompleteEditBoxTemplate
		Virtual EditBox BagSearchBoxTemplate
		Virtual EditBox ChatFrameEditBoxTemplate
		Virtual EditBox CommunitiesChatEditBoxTemplate
		Virtual EditBox CreateChannelPopupEditBoxTemplate
		Virtual EditBox InputBoxTemplate
		Virtual EditBox LargeInputBoxTemplate
		Virtual EditBox LargeMoneyInputBoxTemplate
		Virtual EditBox LFGListEditBoxTemplate
		Virtual EditBox NameChangeEditBoxTemplate
		Virtual EditBox SearchBoxTemplate
		Virtual EditBox SharedEditBoxTemplate
		Virtual EditBox StoreEditBoxTemplate
		]]
	end,
	CreateButton = function(self, opts, functions)

		local name = self:GetName().."B"..(opts.name or app.UniqueCounter.CreateButton)
		local text = opts.text
		local width = opts.width
		local tooltip = opts.tooltip
		local refs = opts.refs
		local template = opts.template or "UIPanelButtonTemplate"

		---@class ATTSettingsButton: ATTButtonClass
		local f = CreateFrame("Button", name, self, template)
		Mixin(f, ATTSettingsObjectMixin)
		self:RegisterObject(f)
		f:SetText(text)
		if width then
			f:SetWidth(width)
		else
			f:SetWidth(f:GetFontString():GetUnboundedStringWidth() + 20)
		end
		f:SetHeight(22)
		f:RegisterForClicks("AnyUp")

		if functions then
			for k,func in pairs(functions) do
				f:SetScript(k, func)
			end
		end

		if refs then
			for k,ref in pairs(refs) do
				f[k] = ref
			end
		end

		if tooltip then
			f:SetATTTooltip(tooltip)
		end
		f:Show()

		return f
	end,
	-- Returns the frame which will be offset by the associated scrollbar
	-- .ScrollContainer - the frame which acts as the scrollable area within which the scrollframe will be visible
	-- :SetMaxScroll(max) - change how much the scrollbar is able to scroll the scrollframe
	-- :CreateCheckBox(text, OnRefresh, OnClick) - create a checkbox attached to the scrollable area
	CreateScrollFrame = function(self)
		-- Create the ScrollFrame
		---@class ATTOptionsScrollFrame: ScrollFrame
		local scrollFrame = CreateFrame("ScrollFrame", settings:GetName().."SF"..app.UniqueCounter.AddScrollframe, self, "ScrollFrameTemplate")
		---@class ATTOptionsScrollFrameChild: Frame
		local child = CreateFrame("Frame", settings:GetName().."SCF"..app.UniqueCounter.AddScrollableframe)
		Mixin(child, ATTSettingsPanelMixin);
		self:RegisterObject(child);
		scrollFrame:SetScrollChild(child)
		child:SetWidth(1)	-- This is automatically defined, so long as the attribute exists at all
		child:SetHeight(1)	-- This is automatically defined, so long as the attribute exists at all
		child.ScrollContainer = scrollFrame
		-- Move the Scrollbar inside of the frame which it scrolls
		---@diagnostic disable-next-line: undefined-field
		scrollFrame.ScrollBar:SetPoint("RIGHT", -36, 0)
		return child
	end,
	CreateCheckBoxWithCount = function(self, text, OnRefresh, OnClick)
		local box = self:CreateCheckBox(text, OnRefresh, OnClick)
		Mixin(box, ATTSettingsObjectMixin)
		box:SetParent(self)
		self:RegisterObject(box)
		box.OnRefresh = OnRefresh or box.OnRefreshCheckedDisabled
		if not self.ATT then self.ATT = { CB = { }, CB_Count = 0 } end
		if not self.ATT.CB then self.ATT.CB = {} self.ATT.CB_Count = 0 end
		local count = self.ATT.CB_Count + 1
		self.ATT.CB[count] = box
		self.ATT.CB_Count = count
		return box
	end,
	CreateSlider = function(self, name, setup)
		if not name or not setup then
			app.print("Invalid Slider Info")
			name = "INVALID SLIDER"
			setup = {}
		end
		local slider = CreateFrame("Slider", self:GetName() .. "-SL-" .. name, self, settings.UITemplates.Slider)
		Mixin(slider, ATTSettingsObjectMixin)
		slider:SetParent(self)
		self:RegisterObject(slider)
		slider:SetOrientation("HORIZONTAL")
		slider:SetValueStep(setup.STEP or 1)
		local min = setup.MIN or 1
		local max = setup.MAX or 100
		slider:SetMinMaxValues(min, max)
		slider:SetObeyStepOnDrag(true)
		slider.LabelLow = slider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		slider.LabelLow:SetPoint("TOPLEFT", slider, "BOTTOMLEFT", 0, 2)
		slider.LabelLow:SetText(tostring(min))
		slider.LabelHigh = slider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		slider.LabelHigh:SetPoint("TOPRIGHT", slider, "BOTTOMRIGHT", 0, 2)
		slider.LabelHigh:SetText(tostring(max))
		slider.Label = slider:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		slider.Label:SetPoint("TOP", slider, "BOTTOM", 0, 2)
		slider.Label:SetText(slider:GetValue())

		if setup.TEXT then
			slider.Text = slider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			slider.Text:SetPoint("BOTTOMLEFT", slider, "TOPLEFT", 0, 0)
			slider.Text:SetText(setup.TEXT)
			slider.Text:SetTextColor(1, 1, 1)
		end
		if setup.TOOLTIP then
			slider:SetATTTooltip(setup.TOOLTIP)
		end

		slider.__KEY = setup.SETTING
		slider.__FORMAT = setup.FORMAT
		slider.__OnRefresh = setup.OnRefresh
		slider.__OnValueChanged = setup.OnValueChanged
		settings.Helpers.Slider.SetScript_OnValueChanged(slider)
		slider.OnRefresh = settings.Helpers.Slider.OnRefresh
		return slider
	end,
};
-- All Object mixins apply to the Panels as well
Mixin(ATTSettingsPanelMixin, ATTSettingsObjectMixin);
Mixin(settings, ATTSettingsPanelMixin);

-- Some common helpers for instantiation of Settings objects
settings.Helpers = {
	Slider = {
		SetScript_OnValueChanged = function(self)
			self:SetScript("OnValueChanged", function(self, newValue)
				if self.oldValue ~= newValue then
					self.oldValue = newValue
					local shortVal = self.__FORMAT:format(newValue)
					self.Label:SetText(shortVal)
					settings:SetTooltipSetting(self.__KEY, tonumber(shortVal))
					if self.__OnValueChanged then
						self:__OnValueChanged()
					end
				end
			end)
		end,
		OnRefresh = function(self)
			if self.__OnRefresh then
				self:__OnRefresh()
			end
			local val = settings:GetTooltipSetting(self.__KEY)
			self:SetValue(val)
			self.Label:SetText((self.__FORMAT):format(val))
		end,
	},
}

local OptionsPages, AddOnCategoryID, RootCategoryID = {}, appName, nil;
local openToCategory = Settings and Settings.OpenToCategory or InterfaceOptionsFrame_OpenToCategory;
settings.Open = function(self)
	if InCombatLockdown() then return end
	openToCategory(RootCategoryID or AddOnCategoryID)
end
settings.CreateOptionsPage = function(self, text, parentCategory, isRootCategory)
	---@class ATTSubCategoryFrame: Frame
	---@field CreateCheckBox fun(self: any, locale: string, OnRefresh: function, OnClick: function)
	---@field CreateHeaderLabel fun(self: any, locale: string)
	local subcategory = CreateFrame("Frame", settings:GetName() .. "-" .. text, InterfaceOptionsFramePanelContainer);
	Mixin(subcategory, ATTSettingsPanelMixin);
	self:RegisterObject(subcategory);
	subcategory:SetAllPoints();

	if Settings and Settings.RegisterCanvasLayoutCategory then
		local category;
		if text == appName then
			category = Settings.RegisterCanvasLayoutCategory(subcategory, text)
			Settings.RegisterAddOnCategory(category);
			AddOnCategoryID = category.ID;
		else
			parentCategory = OptionsPages[parentCategory or appName];
			category = Settings.RegisterCanvasLayoutSubcategory(parentCategory.category, subcategory, text)
			if isRootCategory then RootCategoryID = category.ID; end
		end
		subcategory:Hide();
		subcategory.category = category;
	else
		subcategory.name = text;
		if text ~= appName then subcategory.parent = parentCategory or appName; end
		InterfaceOptions_AddCategory(subcategory);
	end
	OptionsPages[text] = subcategory;

	-- Common Header
	local logo = subcategory:CreateTexture(nil, "ARTWORK");
	logo:SetPoint("TOPLEFT", subcategory, "TOPLEFT", 8, -2);
	logo:SetTexture(app.asset("Discord_2_64"));
	logo:SetSize(36, 36);
	logo:Show();

	local title = subcategory:CreateHeaderLabel(L.TITLE);
	title:SetPoint("TOPLEFT", logo, "TOPRIGHT", 4, -4);
	title:SetScale(1.5);

	local version = subcategory:CreateHeaderLabel(app.Version);
	version:SetPoint("TOPRIGHT", subcategory, "TOPRIGHT", -8, 0);
	version:SetJustifyH("RIGHT");

	local separator = subcategory:CreateTexture(nil, "ARTWORK");
	separator:SetPoint("LEFT", subcategory, "LEFT", 4, 0);
	separator:SetPoint("RIGHT", subcategory, "RIGHT", -4, 0);
	separator:SetPoint("TOP", logo, "BOTTOM", 0, -2);
	separator:SetColorTexture(1, 1, 1, 0.4);
	separator:SetHeight(2);
	subcategory.separator = separator;

	local checkboxSkipAutoRefresh = subcategory:CreateCheckBox(L.SKIP_AUTO_REFRESH,
	function(self)
		self:SetChecked(settings:Get("Skip:AutoRefresh"))
	end,
	function(self)
		local skipRefresh = self:GetChecked();
		settings:Set("Skip:AutoRefresh", skipRefresh)
		if not skipRefresh and settings.NeedsRefresh then settings:UpdateMode("FORCE"); end
	end)
	checkboxSkipAutoRefresh:SetATTTooltip(L.SKIP_AUTO_REFRESH_TOOLTIP);
	checkboxSkipAutoRefresh:SetPoint("BOTTOMRIGHT", separator, "TOPRIGHT", -(checkboxSkipAutoRefresh.Text:GetWidth() * checkboxSkipAutoRefresh.Text:GetScale()), 0)
	return subcategory;
end

settings.SetAccountMode = function(self, accountMode)
	self:Set("AccountMode", accountMode);
	self:UpdateMode(1);
end
settings.ToggleAccountMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetAccountMode(not self:Get("AccountMode"));
	if self:Get("AccountMode") == true then
		app.print(L.TITLE_ACCOUNT..L.MODE.."|R "..L.ENABLED..".")
	else
		app.print(L.TITLE_ACCOUNT..L.MODE.."|R "..L.DISABLED..".")
	end
end
settings.SetCompletionistMode = function(self, completionistMode)
	self:Set("Completionist", completionistMode)
	self:UpdateMode(1)
end
settings.ToggleCompletionistMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletionistMode(not self:Get("Completionist"))
	if self:Get("Completionist") == true then
		app.print(L.TITLE_COMPLETIONIST..L.MODE.."|R "..L.ENABLED..".")
	else
		app.print(L.TITLE_COMPLETIONIST..L.MODE.."|R "..L.DISABLED..".")
	end
end
settings.SetDebugMode = function(self, debugMode)
	self:Set("DebugMode", debugMode);
	if debugMode then
		-- cache the current settings to re-apply after
		settings:Set("Cache:CompletedGroups", settings:Get("Show:CompletedGroups"))
		settings:Set("Cache:CollectedThings", settings:Get("Show:CollectedThings"))
		settings:SetCompletedGroups(true, true)
		settings:SetCollectedThings(true, true)
	else
		settings:SetCompletedGroups(settings:Get("Cache:CompletedGroups"), true)
		settings:SetCollectedThings(settings:Get("Cache:CollectedThings"), true)
	end
	self:UpdateMode(1);
end
settings.ToggleDebugMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetDebugMode(not self:Get("DebugMode"));
	if self:Get("DebugMode") == true then
		app.print(L.TITLE_DEBUG..L.MODE.."|R "..L.ENABLED..".")
	else
		app.print(L.TITLE_DEBUG..L.MODE.."|R "..L.DISABLED..".")
	end
end
settings.SetFactionMode = function(self, factionMode)
	self:Set("FactionMode", factionMode);
	self:UpdateMode(1);
end
settings.ToggleFactionMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetFactionMode(not self:Get("FactionMode"));
end
settings.SetMainOnlyMode = function(self, mainOnly)
	self:Set("MainOnly", mainOnly);
	self:SetCompletionistMode(self:Get("Completionist"));
end
settings.ToggleMainOnlyMode = function(self)
	self:ForceRefreshFromToggle();
	self:SetMainOnlyMode(not self:Get("MainOnly"));
end
settings.SetCompletedThings = function(self, checked)
	self:Set("Show:CompletedGroups", checked);
	self:Set("Show:CollectedThings", checked);
	settings:Set("Cache:CompletedGroups", checked);
	settings:Set("Cache:CollectedThings", checked);
	self:UpdateMode(1);
end
settings.ToggleCompletedThings = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedThings(not self:Get("Show:CompletedGroups"));
end
settings.SetCompletedGroups = function(self, checked, skipRefresh)
	self:Set("Show:CompletedGroups", checked);
	self:UpdateMode(not skipRefresh);
end
settings.ToggleCompletedGroups = function(self)
	self:ForceRefreshFromToggle()
	self:SetCompletedGroups(not self:Get("Show:CompletedGroups"));
	settings:Set("Cache:CompletedGroups", self:Get("Show:CompletedGroups"));
end
settings.SetCollectedThings = function(self, checked, skipRefresh)
	self:Set("Show:CollectedThings", checked);
	self:UpdateMode(not skipRefresh);
end
settings.ToggleCollectedThings = function(self)
	self:ForceRefreshFromToggle()
	settings:SetCollectedThings(not self:Get("Show:CollectedThings"));
	settings:Set("Cache:CollectedThings", self:Get("Show:CollectedThings"));
end
settings.SetHideBOEItems = function(self, checked)
	self:Set("Hide:BoEs", checked);
	self:UpdateMode(1);
end
settings.ToggleBOEItems = function(self)
	self:ForceRefreshFromToggle()
	self:SetHideBOEItems(not self:Get("Hide:BoEs"));
end
settings.SetLootMode = function(self, checked)
	self:Set("LootMode", checked);
	self:UpdateMode(1);
end
settings.ToggleLootMode = function(self)
	self:ForceRefreshFromToggle()
	self:SetLootMode(not self:Get("LootMode"));
end
-- When we toggle a setting directly (keybind etc.) the refresh should always take place immediately,
-- so force it always
settings.ForceRefreshFromToggle = function(self)
	self.ToggleRefresh = true;
end
-- Setup tracking for all Things based on the Settings value, or whether it is forcibly tracked or forced AccountWide
settings.SetThingTracking = function(self, force)
	if force == "Debug" then
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = true
			self.Collectibles[thing] = true
		end
	elseif force == "Account" then
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = true
			self.Collectibles[thing] = self:Get("Thing:"..thing)
		end
	else
		for _,thing in ipairs(Things) do
			self.AccountWide[thing] = self:Get("AccountWide:"..thing)
			self.Collectibles[thing] = self:Get("Thing:"..thing)
		end
	end
end
-- Updates various application settings and values based on toggled Settings, as well as the Mode name and Refreshes the Settings
settings.UpdateMode = function(self, doRefresh)
	local filterSet = app.Modules.Filter.Set;
	if self:Get("Completionist") then
		filterSet.ItemSource()
	else
		if self:Get("MainOnly") and not self:Get("AccountMode") and not self:Get("DebugMode") then
			filterSet.ItemSource(true, true)
		else
			filterSet.ItemSource(true)
		end
	end
	if self:Get("DebugMode") then
		app.MODE_ACCOUNT = nil;
		app.MODE_DEBUG = true;
		filterSet.Group()
		filterSet.Unobtainable()
		filterSet.Visible(true)
		filterSet.FilterID()
		filterSet.Class()
		filterSet.Race()
		filterSet.RequireSkill()
		filterSet.Event()
		filterSet.MinReputation()
		filterSet.CustomCollect()
		-- Default filter fallback in Debug mode is based on Show Completed toggles so that uncollectible/completed content can still be hidden in Debug if desired
		filterSet.DefaultGroup(not self:Get("Show:CompletedGroups"))
		filterSet.DefaultThing(not self:Get("Show:CollectedThings"))
		filterSet.Trackable()

		settings:SetThingTracking("Debug");
		if app.IsClassic then
			-- Modules
			self.OnlyRWP = false;
			self.OnlyNotTrash = false;
		end
	else
		app.MODE_DEBUG = nil;
		filterSet.Visible(true)
		filterSet.Group(true)
		filterSet.DefaultGroup(true)
		filterSet.DefaultThing(true)

		-- Check for any inactive unobtainable filters.
		local anyFiltered = false
		for u,phase in pairs(L.PHASES) do
			if not settings:GetUnobtainableFilter(u) then
				anyFiltered = true;
				break;
			end
		end
		if anyFiltered then
			filterSet.Unobtainable(true)
		else
			filterSet.Unobtainable()
		end
		if self:Get("Show:TrackableThings") then
			filterSet.Trackable(true)
		else
			filterSet.Trackable()
		end

		if self:Get("AccountMode") then
			app.MODE_ACCOUNT = true;
			filterSet.FilterID()
			filterSet.Class()
			filterSet.RequireSkill()
			filterSet.MinReputation()
			filterSet.CustomCollect()
			if self:Get("FactionMode") then
				filterSet.Race(true, true)
			else
				filterSet.Race()
			end

			-- Force Account-Wide with Account Mode otherwise you get really dumb situations
			settings:SetThingTracking("Account")
		else
			app.MODE_ACCOUNT = nil;
			filterSet.FilterID(true)
			filterSet.Class(true)
			filterSet.Race(true)
			filterSet.RequireSkill(true)
			filterSet.MinReputation(true)
			filterSet.CustomCollect(true)

			settings:SetThingTracking()
		end
		if self:Get("Show:OnlyActiveEvents") then
			filterSet.Event(true)
		else
			filterSet.Event()
		end
		self.OnlyRWP = app.GameBuildVersion < 40000 and self:Get("Only:RWP");
		self.OnlyNotTrash = app.IsClassic and self:Get("Only:NotTrash");
	end
	app.MODE_DEBUG_OR_ACCOUNT = app.MODE_DEBUG or app.MODE_ACCOUNT;

	if self:Get("Show:CompletedGroups") then
		filterSet.CompletedGroups()
	else
		filterSet.CompletedGroups(true)
	end
	if self:Get("Show:CollectedThings") then
		filterSet.CompletedThings()
	else
		filterSet.CompletedThings(true)
	end

	if self:Get("Hide:BoEs") then
		filterSet.ItemUnbound()
		filterSet.Bound(true)
	else
		if self:Get("Filter:BoEs") then
			filterSet.ItemUnbound(true)
		else
			filterSet.ItemUnbound()
		end
		filterSet.Bound()
	end
	if self:Get("Hide:PvP") then
		filterSet.PvP(true)
	else
		filterSet.PvP()
	end
	if app.IsClassic then
		if self:Get("Hide:ChallengeMaster") then
			filterSet.ChallengeMaster(true)
		else
			filterSet.ChallengeMaster()
		end
	end
	if self:Get("Show:PetBattles") then
		filterSet.PetBattles()
	else
		filterSet.PetBattles(true)
	end
	if self:Get("Show:Skyriding") then
		filterSet.Skyriding()
	else
		filterSet.Skyriding(true)
	end

	if self:Get("Show:UnavailablePersonalLoot") then
		filterSet.UnavailablePersonalLoot()
	else
		filterSet.UnavailablePersonalLoot(true)
	end
	if self:Get("Filter:ByLevel") and not self:Get("DebugMode") then
		filterSet.Level(true)
	else
		filterSet.Level()
	end

	if self:Get("Filter:BySkillLevel") and not self:Get("DebugMode") then
		filterSet.SkillLevel(true)
	else
		filterSet.SkillLevel()
	end
	app:UnregisterEvent("TAXIMAP_OPENED")
	if self:Get("Thing:FlightPaths") or self:Get("DebugMode") then
		app:RegisterEvent("TAXIMAP_OPENED")
	end
	self.Collectibles.Loot = self:Get("LootMode");

	-- refresh forced from toggle
	if self.ToggleRefresh then
		doRefresh = "FORCE"
		self.ToggleRefresh = nil
	end
	-- if auto-refresh
	if doRefresh then
		app._SettingsRefresh = GetTimePreciseSec()
		self.NeedsRefresh = true
	end
	-- app.PrintDebug("UpdateMode",doRefresh)
	-- FORCE = Force Update
	-- 1 = Force Update IF NOT Skip
	-- not = Soft Update
	doRefresh = doRefresh == "FORCE" or (doRefresh and not settings:Get("Skip:AutoRefresh"))
	if doRefresh then
		app.HandleEvent("OnSettingsNeedsRefresh")
		app.CallbackEvent("OnRecalculate")
		self.NeedsRefresh = nil
	end

	-- ensure the settings pane itself is refreshed
	self:Refresh()
end
app.AddEventHandler("OnBeforeRecalculate", function()
	if settings.NeedsRefresh then
		-- Settings need to refresh before recalculate
		app.HandleEvent("OnSettingsNeedsRefresh")
	end
end)
app.AddEventHandler("OnRefreshCollectionsDone", function()
	settings.NeedsRefresh = nil
	-- Need to update the Settings window as well if User does not have auto-refresh for Settings
	settings:UpdateMode()
end)
local LastSettingsChangeUpdate
app.AddEventHandler("OnRecalculateDone", function()
	if LastSettingsChangeUpdate ~= app._SettingsRefresh then
		LastSettingsChangeUpdate = app._SettingsRefresh
		app.HandleEvent("OnRecalculate_NewSettings")
	end
end)
app.AddEventHandler("OnReady", function()
	app.AddEventHandler("Settings.OnApplyProfile", function()
		if settings:Get("Profile:ShowProfileLoadedMessage") then
			app.print(L.PROFILE..":",settings:GetProfile(true))
		end
	end)
end)

-- One-time conversion of old auto-open settings into ShouldAutomaticallyOpen keys on respective windows
local function ConvertAutoOpenSettings()
	if settings:GetTooltipSetting("Auto:MainList") then
		app:GetWindow("Prime"):SetShouldAutomaticallyOpen(true)
		settings:SetTooltipSetting("Auto:MainList", nil)
	end
	if settings:GetTooltipSetting("Auto:MiniList") then
		app:GetWindow("MiniList"):SetShouldAutomaticallyOpen(true)
		settings:SetTooltipSetting("Auto:MiniList", nil)
	end
	if settings:GetTooltipSetting("Auto:RaidAssistant") then
		app:GetWindow("RaidAssistant"):SetShouldAutomaticallyOpen(true)
		settings:SetTooltipSetting("Auto:RaidAssistant", nil)
	end
	if settings:GetTooltipSetting("Auto:WorldQuestsList") then
		app:GetWindow("WorldQuests"):SetShouldAutomaticallyOpen(true)
		settings:SetTooltipSetting("Auto:WorldQuestsList", nil)
	end
	app.FunctionRunner.Run(app.RemoveEventHandler, ConvertAutoOpenSettings)
end
app.AddEventHandler("OnLoad", ConvertAutoOpenSettings)
