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
	local oneTimeQuests = ATTAccountWideData.OneTimeQuests
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted

	-- Cache some collection states for misc. once-per-account quests
	for _,questID in ipairs(app.OPAQ or app.EmptyTable) do
		-- If this Character has the Quest completed and it is not marked as completed for Account or not for specific Character
		if not oneTimeQuests[questID] and IsQuestFlaggedCompleted(questID) then
			-- Mark the character which completed the Quest
			oneTimeQuests[questID] = app.GUID
		end
		-- otherwise indicate the one-time-nature of the quest
		if oneTimeQuests[questID] == nil then
			oneTimeQuests[questID] = false
		end
	end
end
local function FixNonOneTimeQuests()
	local oneTimeQuests = ATTAccountWideData.OneTimeQuests;

	-- if we ever erroneously add an account-wide quest and find out it isn't put it here so it reverts back to being handled as a normal quest
	for _,questID in ipairs(app.NonOPAQDB or app.EmptyTable) do
		oneTimeQuests[questID] = nil;
	end
	-- quests in AccountWideQuestsDB will automatically be removed from OneTimeQuests
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
	local oneTimeQuests = ATTAccountWideData.OneTimeQuests
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted;
	local charGuid = app.GUID;
	for questID,questGuid in pairs(oneTimeQuests) do
		-- If this Character has the Quest completed and it is not marked as completed for Account or not for specific Character
		if IsQuestFlaggedCompleted(questID) then
			-- Throw up a warning to report if this was already completed by another character
			if questGuid and questGuid ~= charGuid then
				app.PrintDebug("One-Time-Quest ID " .. app:Linkify(questID,app.Colors.ChatLink,"search:questID:"..questID) .. " was previously marked as completed, but is also completed on the current character!");
			end
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
