-- Refresh Lib
local _, app = ...;

if app.IsRetail then
-- CRIEVE NOTE: At some point I want parser exporting this data,
-- I don't want to be requesting these questIDs on environments
-- where I know they don't exist. For now I'll just block them
local select, ipairs, pairs =
	  select, ipairs, pairs;
local ATTAccountWideData

local function CacheAccountWideMiscQuests()
	local acctQuests, oneTimeQuests = ATTAccountWideData.Quests, ATTAccountWideData.OneTimeQuests;
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

		-- Account Unlocks
		74576,	-- Restored Hakkari Bijou [Zul'Gurub]

		-- No additional HQT on completion, and once per account
		86535,	-- Test Run
		88947,	-- Undermined Delves
		91780,	-- Ethereal Delves

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
local function FixNonOneTimeQuests()
	local oneTimeQuests = ATTAccountWideData.OneTimeQuests;

	-- if we ever erroneously add an account-wide quest and find out it isn't put it here so it reverts back to being handled as a normal quest
	-- quests in AccountWideQuestsDB will automatically be removed from OneTimeQuests
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
	for questID,_ in pairs(app.AccountWideQuestsDB) do
		oneTimeQuests[questID] = nil;
	end
end
local OneTimeFixFunctions = {
	-- ref. https://github.com/ATTWoWAddon/AllTheThings/commit/d1b02b8021a7f2aa80c03d212a2ea54a443e9117
	Spell148972 = function()
		local ATTCharacterData = app.LocalizeGlobalIfAllowed("ATTCharacterData", true);
		local found
		for charGuid,charData in pairs(ATTCharacterData) do
			if charData.Spells and charData.Spells[148972] then
				charData.Spells[148972] = nil
				found = true
			end
		end
		if found then
			app.print(app.Modules.Color.Colorize("One-Time removal for inaccurate cached data performed!", app.Colors.Account),
						"If any character knows",
						app:Linkify("Spell 148972", app.Colors.ChatLink,"search:spellID:148972"),
						"they will need to log in to properly re-collect in ATT")
		end
	end,
	-- ref. https://github.com/ATTWoWAddon/AllTheThings/commit/d1b02b8021a7f2aa80c03d212a2ea54a443e9117
	Spell241857 = function()
		local ATTCharacterData = app.LocalizeGlobalIfAllowed("ATTCharacterData", true);
		local found
		for charGuid,charData in pairs(ATTCharacterData) do
			if charData.Spells and charData.Spells[241857] then
				charData.Spells[241857] = nil
				found = true
			end
		end
		if found then
			app.print(app.Modules.Color.Colorize("One-Time removal for inaccurate cached data performed!", app.Colors.Account),
						"If any character knows",
						app:Linkify("Spell 241857", app.Colors.ChatLink,"search:spellID:241857"),
						"they will need to log in to properly re-collect in ATT")
		end
	end,
}
local function OneTimeFixes()
	if not ATTAccountWideData.OneTimeFixes then ATTAccountWideData.OneTimeFixes = {} end
	local appliedFixes = ATTAccountWideData.OneTimeFixes

	for fix,func in pairs(OneTimeFixFunctions) do
		if not appliedFixes[fix] then
			appliedFixes[fix] = 1
			func(ATTAccountWideData)
		end
	end

	OneTimeFixFunctions = nil
end
local function CheckOncePerAccountQuestsForCharacter()
	-- Double check if any once-per-account quests which haven't been detected as being completed are completed by this character
	local acctQuests, oneTimeQuests = ATTAccountWideData.Quests, ATTAccountWideData.OneTimeQuests;
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	local charGuid = app.GUID;
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
end

app.AddEventHandler("OnRefreshCollections", CacheAccountWideMiscQuests)
app.AddEventHandler("OnRefreshCollections", CheckOncePerAccountQuestsForCharacter)
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	ATTAccountWideData = accountWideData
	OneTimeFixes()
end)
app.AddEventHandler("OnAfterSavedVariablesAvailable", function()
	FixNonOneTimeQuests()
end)
end

-- for the first auto-refresh, don't actually print to chat since some users don't like that auto-chat on login
local InCombatLockdown = InCombatLockdown;
local print = app.EmptyFunction;
local __FirstRefresh = true;
local IsRefreshing

-- [Event]Done is called automatically when processed by a Runner and it completes the set of functions
app.AddEventHandler("OnRefreshCollectionsDone", function()
	-- Report success once refresh is done
	print(app.L.DONE_REFRESHING);
	if __FirstRefresh then
		__FirstRefresh = nil;
		print = app.print;
	end
	IsRefreshing = nil
end)
local function RefreshCollections()
	-- Execute the OnRefreshCollections handlers.
	app.HandleEvent("OnRefreshCollections")
end
app.RefreshCollections = function()
	if IsRefreshing then return end
	IsRefreshing = true
	if InCombatLockdown() then
		print(app.L.REFRESHING_COLLECTION,"(",COMBAT,")");
	else
		print(app.L.REFRESHING_COLLECTION);
	end

	app.CallbackHandlers.AfterCombatCallback(RefreshCollections)
end

app.AddEventHandler("OnReady", app.RefreshCollections)
