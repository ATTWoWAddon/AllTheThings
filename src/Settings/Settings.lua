local appName, app = ...

-- Temporarily attach the settings menu's locales to L.
local appL = app.L;
setmetatable(appL.SETTINGS_MENU, {
	__index = function(t, key)
		local str = appL[key];
		if str then
			--print("SETTINGS_MENU", key);
			t[key] = str;
			return str;
		else
			print("SETTINGS_MENU", key, "missing reference");
			return "INVALID LOCALIZATION";
		end
	end
});

-- Create the settings container.
-- TODO: Investigate if this needs to be a frame or if it can be something else.
local settings = CreateFrame("FRAME", appName .. "-Settings", InterfaceOptionsFramePanelContainer)
app.Settings = settings;
settings:SetAllPoints();
settings:Hide();

-- Common Settings
settings.AccountWide = setmetatable({
	Achievements = true,
	BattlePets = true,
	DeathTracker = true,
	Exploration = true,
	FlightPaths = true,
	Heirlooms = true,
	Illusions = true,
	Mounts = true,
	PVPRanks = true,
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
	MountMods = true,
	FlightPaths = app.GameBuildVersion >= 110000,
	Heirlooms = true,
	Illusions = true,
	Mounts = true,
	RuneforgeLegendaries = true,
	Toys = true,
	Transmog = true,
	--WarbandScene = app.GameBuildVersion >= 110100,
}

-- INSANE MODE
settings.RequiredForInsaneMode = {
	Achievements = true,
	AzeriteEssences = app.GameBuildVersion >= 80000,
	BattlePets = true,
	CharacterUnlocks = app.IsRetail,	-- CRIEVE NOTE: This class might be up to the chopping block with a thing I have on my todo list. I'll leave it for now.
	Conduits = app.GameBuildVersion >= 100000,
	DeathTracker = app.IsClassic,
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
	--WarbandScene = app.GameBuildVersion >= 110100,
}

-- RANKED MODE
settings.RequiredForRankedMode = {
	Achievements = true,
	BattlePets = true,
	Heirlooms = app.GameBuildVersion >= 30000,
	Illusions = app.GameBuildVersion >= 70000,
	Mounts = true,
	Quests = true,
	Recipes = true,
	Reputations = true,
	Titles = true,
	Toys = true,
	Transmog = app.GameBuildVersion >= 40000,
}

-- CORE MODE
settings.RequiredForCoreMode = {
	BattlePets = true,
	Heirlooms = app.GameBuildVersion >= 30000,
	Illusions = app.GameBuildVersion >= 70000,
	Mounts = true,
	Toys = true,
	Transmog = app.GameBuildVersion >= 40000,
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