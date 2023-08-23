
-- Refresh Lib
-- Requires lib/Runner
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality required to perform refreshes of a User's current Character and Account collection

-- Global locals
local wipe, math_max, tonumber, InCombatLockdown, coroutine, type, select, C_TransmogCollection_GetIllusions, GetNumTitles, pcall, IsTitleKnown, ipairs, pairs =
	  wipe, math.max, tonumber, InCombatLockdown, coroutine, type, select, C_TransmogCollection.GetIllusions, GetNumTitles, pcall, IsTitleKnown, ipairs, pairs;
local C_MountJournal_GetMountInfoByID, C_MountJournal_GetMountIDs, PlayerHasToy, C_LegendaryCrafting_GetRuneforgePowerInfo, GetAchievementInfo, C_TransmogCollection_GetSourceInfo =
	  C_MountJournal.GetMountInfoByID, C_MountJournal.GetMountIDs, PlayerHasToy, C_LegendaryCrafting.GetRuneforgePowerInfo, GetAchievementInfo, C_TransmogCollection.GetSourceInfo;

-- App locals
local StartCoroutine = app.StartCoroutine;
app.RefreshFunctions = {};

local function CacheAccountWideCompleteViaAchievement(accountWideData)
	-- Cache some collection states for account wide quests that aren't actually granted account wide and can be flagged using an achievementID. (Allied Races)
	local collected;
	local acctQuests, oneTimeQuests = accountWideData.Quests, accountWideData.OneTimeQuests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	-- achievement collection state isn't readily available when ADDON_LOADED fires, so we do it here to ensure we get a valid state for matching
	for _,achievementQuests in ipairs({
		{ 12453, { 49973, 49613, 49354, 49614 } },	-- Allied Races: Nightborne
		{ 12517, { 53466, 53467, 53354, 53353, 53355, 52942, 52943, 52945, 52955, 51479 } },	-- Allied Races: Mag'har
		{ 13156, { 53831, 53823, 53824, 54419, 53826, 54301, 54925, 54300, 53825, 53827, 53828, 54031, 54033, 54032, 54034, 53830, 53719 } },	-- Allied Races: Zandalari Troll
		{ 12452, { 48066, 48067, 49756, 48079, 41884, 41764, 48185, 41799, 48190, 41800, 48434, 41815, 41840, 41882, 41841, 48403, 48433 } },	-- Allied Races: Highmountain Tauren
		{ 12450, { 49787, 48962 } },	-- Allied Races: Void Elf
		{ 12516, { 51813, 53351, 53342, 53352, 51474, 53566 } },	-- Allied Races: Dark Iron Dwarf
		{ 12451, { 49698, 49266, 50071 } },	-- Allied Races: Lightforged Draenei
		{ 13157, { 54706, 55039, 55043, 54708, 54721, 54723, 54725, 54726, 54727, 54728, 54730, 54731, 54729, 54732, 55136, 54733, 54734, 54735, 54851, 53720 } },	-- Allied Races: Kul Tiran
		{ 14012, { 58214, 57486, 57487, 57488, 57490, 57491, 57492, 57493, 57494, 57496, 57495, 57497 } },	-- Allied Races: Mechagnome
		{ 13207, { 53870, 53889, 53890, 53891, 53892, 53893, 53894, 53895, 53897, 53898, 54026, 53899, 58087, 53901, 53900, 53902, 54027, 53903, 53904, 53905, 54036, 53906, 53907, 53908, 57448 } },	-- Allied Races: Vulpera
		-- Garrison Shipyard Equipment Blueprints
		{ 10372, { 38932 } }, -- Equipment Blueprint: Bilge Pump
		{ 10373, { 39366 } }, -- Equipment Blueprint: Felsmoke Launchers
		{ 10374, { 39356 } }, -- Equipment Blueprint: High Intensity Fog Lights
		{ 10375, { 39365 } }, -- Equipment Blueprint: Ghostly Spyglass
		{ 10376, { 39364 } }, -- Equipment Blueprint: Gyroscopic Internal Stabilizer
		{ 10377, { 39363 } }, -- Equipment Blueprint: Ice Cutter
		{ 10378, { 39355 } }, -- Equipment Blueprint: Trained Shark Tank
		{ 10379, { 39360 } }, -- Equipment Blueprint: True Iron Rudder
		-- stupid pet tamer breadcrumbs that are once per account (there may be more breadcrumbs for the questline that need to be added here)
		-- these aren't really 'once per account' in that only a single character gets credit.
		-- all 5 quests of the faction are marked completed account-wide, and the other 5 can never be completed on that account
		-- { 6603, { 32008 } },	-- Taming Eastern Kingdoms / Audrey Burnhep (A)
		-- { 6602, { 32009 } },	-- Taming Kalimdor / Varzok (H)
	}) do
		-- If you completed the achievement, then mark the associated quests.
		collected = select(4, GetAchievementInfo(achievementQuests[1]));
		for _,questID in ipairs(achievementQuests[2]) do
			if collected then
				-- Mark the quest as completed for the Account
				acctQuests[questID] = 1;
				if not oneTimeQuests[questID] and IsQuestFlaggedCompleted(questID) then
					-- this once-per-account quest only counts for a specific character
					oneTimeQuests[questID] = app.GUID;
				end
			end
			-- otherwise indicate the one-time-nature of the quest
			if oneTimeQuests[questID] == nil then
				oneTimeQuests[questID] = false;
			end
		end
	end
end

local function CacheQuestStatesViaAppearanceUnlocks(accountWideData)
	local collected;
	local acctQuests, oneTimeQuests = accountWideData.Quests, accountWideData.OneTimeQuests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	-- Cache some collection states for account wide quests that aren't actually granted account wide and can be flagged using a known sourceID.  (Secrets)
	for _,appearanceQuests in ipairs({
		-- Waist of Time isn't technically once-per-account, so don't fake the cached data
		-- { 98614, { 52829, 52830, 52831, 52898, 52899, 52900, 52901, 52902, 52903, 52904, 52905, 52906, 52907, 52908, 52909, 52910, 52911, 52912, 52913, 52914, 52915, 52916, 52917, 52918, 52919, 52920, 52921, 52922, 52822, 52823, 52824, 52826} },	-- Waist of Time
	}) do
		-- If you have the appearance, then mark the associated quests.
		local sourceInfo = C_TransmogCollection_GetSourceInfo(appearanceQuests[1]);
		collected = sourceInfo.isCollected;
		for _,questID in ipairs(appearanceQuests[2]) do
			if collected then
				-- Mark the quest as completed for the Account
				acctQuests[questID] = 1;
				if not oneTimeQuests[questID] and IsQuestFlaggedCompleted(questID) then
					-- this once-per-account quest only counts for a specific character
					oneTimeQuests[questID] = app.GUID;
				end
			end
			-- otherwise indicate the one-time-nature of the quest
			if oneTimeQuests[questID] == nil then
				oneTimeQuests[questID] = false;
			end
		end
	end
end

local function CacheAccountWideMiscQuests(accountWideData)
	local acctQuests, oneTimeQuests = accountWideData.Quests, accountWideData.OneTimeQuests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;

	-- Cache some collection states for misc. once-per-account quests
	for _,questID in ipairs({
		-- BFA Mission/Outpost Quests which trigger locking Account-Wide HQTs
		52478,	-- Hillcrest Pasture (Mission Completion)
		52479,	-- Hillcrest Pasture (BFA Horde Outpost Unlock)
		52313,	-- Mudfisher Cove (Mission Completion)
		52314,	-- Mudfisher Cove (BFA Horde Outpost Unlock)
		52221,	-- Stonefist Watch (Mission Completion)
		52222,	-- Stonefist Watch (BFA Horde Outpost Unlock)
		52776,	-- Stonetusk Watch (Mission Completion)
		52777,	-- Stonetusk Watch (BFA Horde Outpost Unlock)
		52275,	-- Swiftwind Post (Mission Completion)
		52276,	-- Swiftwind Post (BFA Horde Outpost Unlock)
		52319,	-- Windfall Cavern (Mission Completion)
		52320,	-- Windfall Cavern (BFA Horde Outpost Unlock)
		52005,	-- The Wolf's Den (Mission Completion)
		52127,	-- The Wolf's Den (BFA Horde Outpost Unlock)
		53151,	-- Wolves For The Den (Mission Completion)
		53152,	-- Wolves For The Den (BFA Horde Outpost Upgrade)

		53006,	-- Grimwatt's Crash (Mission Completion)
		53007,	-- Grimwatt's Crash (BFA Alliance Outpost Unlock)
		52801,	-- Veiled Grotto (Mission Completion)
		52802,	-- Veiled Grotto (BFA Alliance Outpost Unlock)
		52962,	-- Mistvine Ledge (Mission Completion)
		52963,	-- Mistvine Ledge (BFA Alliance Outpost Unlock)
		52851,	-- Mugamba Overlook (Mission Completion)
		52852,	-- Mugamba Overlook (BFA Alliance Outpost Unlock)
		52886,	-- Verdant Hollow (Mission Completion)
		52888,	-- Verdant Hollow (BFA Alliance Outpost Unlock)
		53043,	-- Vulture's Nest (Mission Completion)
		53044,	-- Vulture's Nest (BFA Alliance Outpost Unlock)

		-- These are BOTH once-per-account (single character) completion & shared account-wide lockout groups (likely due to locking Account-Wide HQTs)
		53063,	-- A Mission of Unity (BFA Alliance WQ Unlock)
		53064,	-- A Mission of Unity (BFA Horde WQ Unlock)

		53061,	-- The Azerite Advantage (BFA Alliance Island Unlock / AWHQT 51994)
		53062,	-- The Azerite Advantage (BFA Horde Island Unlock / AWHQT 51994)

		53055,	-- Pushing Our Influence (BFA Horde PreQ for 1st Foothold)
		53056,	-- Pushing Our Influence (BFA Alliance PreQ for 1st Foothold)

		53207,	-- The Warfront Looms (BFA Horde Warfront Breadcrumb)
		53175,	-- The Warfront Looms (BFA Alliance Warfront Breadcrumb)

		-- Shard Labor
		61229,	-- forging the Crystal Mallet of the Heralds
		61191,	-- ringing the Vesper of the Silver Wind
		61183,	-- looting the Gift of the Silver Wind

		-- Ve'nari Items (The Quest Bonus is Accwide but quests itself are not accwide)
		63193,	-- Bangle of Seniority
		63523,	-- Broker Traversam Enhancer
		63183,	-- Extradimensional Pockets
		63201,	-- Loupe of Unusual Charm
		61144,	-- Possibility Matrix
		63200,	-- Rang Insignia: Acquisitionist
		63204,	-- Ritual Prism of Fortune
		63202,	-- Vessel of Unfortunate Spirits

		-- Druid forms
		65047,	-- Mark of the Nightwing Raven

		-- Heritage
		51483,	-- Heritage o' the Dark Iron
		49783,	-- Heritage of Highmountain
		53722,	-- Heritage of the Kul Tiran
		49782,	-- Heritage of the Lightforged
		51484,	-- Heritage of the Mag'har
		58436,	-- Heritage of the Mechagnome
		49784,	-- Heritage of the Nightborne
		49928,	-- Heritage of the Void
		58435,	-- Heritage of the Vulpera
		53721,	-- Heritage of the Zandalari
		-- etc.
	}) do
		-- If this Character has the Quest completed and it is not marked as completed for Account or not for specific Character
		if not oneTimeQuests[questID] and IsQuestFlaggedCompleted(questID) then
			-- Mark the quest as completed for the Account
			acctQuests[questID] = 1;
			-- Mark the character which completed the Quest
			oneTimeQuests[questID] = app.GUID;
		end
		-- otherwise indicate the one-time-nature of the quest
		if oneTimeQuests[questID] == nil then
			oneTimeQuests[questID] = false;
		end
	end
end

local function CacheAccountWideSharedQuests(accountWideData)
	local acctQuests = accountWideData.Quests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	local anyComplete;
	-- Check for fixing Blizzard's incompetence in consistency for shared account-wide quest eligibility which is only granted to some of the shared account-wide quests
	for _,questGroup in ipairs({
		{ 32008, 32009, 31878, 31879, 31880, 31881, 31882, 31883, 31884, 31885, },	-- Pet Battle Intro quests
		{
			53063,	-- A Mission of Unity (BFA Alliance WQ Unlock)
			53064,	-- A Mission of Unity (BFA Horde WQ Unlock)
		},
		{
			53061,	-- The Azerite Advantage (BFA Alliance Island Unlock / AWHQT 51994)
			53062,  -- The Azerite Advantage (BFA Horde Island Unlock / AWHQT 51994)
		},
		{
			53055,	-- Pushing Our Influence (BFA Horde PreQ for 1st Foothold)
			53056,	-- Pushing Our Influence (BFA Alliance PreQ for 1st Foothold)
		},
		{
			53207,	-- The Warfront Looms (BFA Horde Warfront Breadcrumb)
			53175,	-- The Warfront Looms (BFA Alliance Warfront Breadcrumb)
		},
		{
			31977,	-- The Returning Champion (Horde Winterspring Pass Pet Battle Quest)
			31975,	-- The Returning Champion (Alliance Winterspring Pass Pet Battle Quest)
		},
		{
			31980,	-- The Returning Champion (Horde Deadwind Pass Pet Battle Quest)
			31976,	-- The Returning Champion (Alliance Deadwind Pass Pet Battle Quest)
		},
	}) do
		for _,questID in ipairs(questGroup) do
			-- If this Character has the Quest completed
			if IsQuestFlaggedCompleted(questID) then
				-- Mark the quest as completed for the Account
				acctQuests[questID] = 1;
				anyComplete = true;
			end
		end
		-- if any of the quest group is considered complete, then the rest need to be considered 'complete' as well since they can never be actually completed on the account
		if anyComplete then
			for _,questID in ipairs(questGroup) do
				-- Mark the quest completion since it's not 'really' completed
				if not acctQuests[questID] then
					acctQuests[questID] = 2;
				end
			end
		end
		anyComplete = nil;
	end
end

local function FixWrongAccountWideQuests(accountWideData)
	local oneTimeQuests = accountWideData.OneTimeQuests;

	-- if we ever erroneously add an account-wide quest and find out it isn't (or Blizzard actually fixes it to give account-wide credit)
	-- put it here so it reverts back to being handled as a normal quest
	for _,questID in ipairs({
		32008,	-- Audrey Burnhep (A)
		32009,	-- Varzok (H)

		62038,	-- Handful of Oats
		62042,	-- Grooming Brush
		62047,	-- Sturdy Horseshoe
		62049,	-- Bucket of Clean Water
		62048,	-- Comfortable Saddle Blanket
		62050,	-- Dredhollow Apple
	}) do
		oneTimeQuests[questID] = nil;
	end
end

local function RefreshCollections()
	-- account-data is a global
	local ATTAccountWideData = ATTAccountWideData;
	local currentCharacter = app.CurrentCharacter;
	-- for the first auto-refresh, don't actually print to chat since some users don't like that auto-chat on login
	local print = app.__FirstRefresh and app.EmptyFunction or app.print;
	app.__FirstRefresh = nil;

	print(app.L["REFRESHING_COLLECTION"]);
	while InCombatLockdown() do coroutine.yield(); end

	-- Harvest Illusion Collections
	local collectedIllusions = ATTAccountWideData.Illusions;
	for _,illusion in ipairs(C_TransmogCollection_GetIllusions()) do
		if illusion.isCollected then collectedIllusions[illusion.sourceID] = 1; end
	end
	coroutine.yield();

	-- Harvest Title Collections
	local acctTitles, charTitles, charGuid = ATTAccountWideData.Titles, {}, app.GUID;
	for i=1,GetNumTitles(),1 do
		if IsTitleKnown(i) then
			if not acctTitles[i] then print("Added Title",app:Linkify(i,app.Colors.ChatLink,"search:titleID:"..i)) end
			charTitles[i] = 1;
		end
	end
	currentCharacter.Titles = charTitles;
	coroutine.yield();

	-- Refresh Mounts / Pets
	local acctSpells, charSpells = ATTAccountWideData.Spells, currentCharacter.Spells;
	for _,mountID in ipairs(C_MountJournal_GetMountIDs()) do
		local _, spellID, _, _, _, _, _, _, _, _, isCollected = C_MountJournal_GetMountInfoByID(mountID);
		if spellID then
			if isCollected then
				if not acctSpells[spellID] then print("Added Mount",app:Linkify(spellID,app.Colors.ChatLink,"search:spellID:"..spellID)) end
				charSpells[spellID] = 1;
			else
				charSpells[spellID] = nil;
			end
		end
	end
	coroutine.yield();

	-- Refresh Factions
	local faction;
	wipe(currentCharacter.Factions);
	for factionID,_ in pairs(app.SearchForFieldContainer("factionID")) do
		faction = app.SearchForObject("factionID", factionID);
		-- simply reference the .saved property of each known Faction to re-calculate the character value
		if faction and faction.saved then end
	end
	coroutine.yield();

	-- Harvest Item Collections that are used by the addon.
	app:GetDataCache();
	coroutine.yield();

	-- Refresh Toys from Cache
	local acctToys = ATTAccountWideData.Toys;
	for id,_ in pairs(app.SearchForFieldContainer("toyID")) do
		if PlayerHasToy(id) then
			if not acctToys[id] then print("Added Toy",app:Linkify(id,app.Colors.ChatLink,"search:toyID:"..id)) end
			acctToys[id] = 1;
		else
			-- remove Toys that the account doesnt actually have
			if acctToys[id] then print("Removed Toy",app:Linkify(id,app.Colors.ChatLink,"search:toyID:"..id)) end
			acctToys[id] = nil;
		end
	end
	coroutine.yield();

	-- Refresh RuneforgeLegendaries from Cache
	local acctRFLs = ATTAccountWideData.RuneforgeLegendaries;
	local state;
	for id,_ in pairs(app.SearchForFieldContainer("runeforgePowerID")) do
		state = (C_LegendaryCrafting_GetRuneforgePowerInfo(id) or app.EmptyTable).state;
		if state == 0 then
			if not acctRFLs[id] then print("Added Runeforge Power",app:Linkify(id,app.Colors.ChatLink,"search:runeforgePowerID:"..id)) end
			acctRFLs[id] = 1;
		else
			-- remove RFLs that the account doesnt actually have
			if acctRFLs[id] then print("Removed Runeforge Power",app:Linkify(id,app.Colors.ChatLink,"search:runeforgePowerID:"..id)) end
			acctRFLs[id] = nil;
		end
	end
	coroutine.yield();

	-- Refresh Achievements
	app.RefreshAchievementCollection();
	coroutine.yield();

	-- Double check if any once-per-account quests which haven't been detected as being completed are completed by this character
	local acctQuests, oneTimeQuests = ATTAccountWideData.Quests, ATTAccountWideData.OneTimeQuests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	for questID,questGuid in pairs(oneTimeQuests) do
		-- If this Character has the Quest completed and it is not marked as completed for Account or not for specific Character
		if IsQuestFlaggedCompleted(questID) then
			-- Throw up a warning to report if this was already completed by another character
			if questGuid and questGuid ~= charGuid then
				app.PrintDebug("One-Time-Quest ID " .. app:Linkify(questID,app.Colors.ChatLink,"search:questID:"..questID) .. " was previously marked as completed, but is also completed on the current character!");
			end
			-- Mark the quest as completed for the Account
			acctQuests[questID] = 1;
			-- Mark the character which completed the Quest
			oneTimeQuests[questID] = charGuid;
		end
	end
	coroutine.yield();

	CacheAccountWideCompleteViaAchievement(ATTAccountWideData);
	coroutine.yield();
	CacheQuestStatesViaAppearanceUnlocks(ATTAccountWideData);
	coroutine.yield();
	CacheAccountWideMiscQuests(ATTAccountWideData);
	coroutine.yield();
	CacheAccountWideSharedQuests(ATTAccountWideData);
	coroutine.yield();
	FixWrongAccountWideQuests(ATTAccountWideData);
	coroutine.yield();

	-- Run any defined independent Refresh functions
	for _,refresh in pairs(app.RefreshFunctions) do
		refresh();
		coroutine.yield();
	end

	app:RecalculateAccountWideData();
	coroutine.yield();

	-- Refresh Sources from Cache if tracking Transmog
	if app.DoRefreshAppearanceSources or app.Settings:Get("Thing:Transmog") then
		app.RefreshAppearanceSources();
	end
	coroutine.yield();

	-- Need to update the Settings window as well if User does not have auto-refresh for Settings
	if app.Settings:Get("Skip:AutoRefresh") or app.Settings.NeedsRefresh then
		app.Settings:UpdateMode("FORCE");
	else
		app:RefreshData(false, false, true);
	end

	-- Wait for refresh to actually finish
	while app.Processing_RefreshData do coroutine.yield(); end

	-- Report success once refresh is done
	print(app.L["DONE_REFRESHING"]);
end
app.RefreshCollections = function()
	StartCoroutine("RefreshingCollections", RefreshCollections);
end