-- Refresh Lib
local _, app = ...;

local OneTimeFixFunctions = {}
if app.IsRetail and app.GameBuildVersion > 70000 then

--- @type function,function,function
local select, ipairs, pairs
	= select, ipairs, pairs;
local ATTAccountWideData

local function CacheAccountWideMiscQuests()
	local oneTimeQuests = ATTAccountWideData.OneTimeQuests
	local IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted

	-- Cache some collection states for misc. once-per-account quests
	for _,questID in ipairs(app.OPAQDB or app.EmptyTable) do
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
local function FixNonOneTimeQuests(currentCharacter, accountWideData, characterData)
	local oneTimeQuests = accountWideData.OneTimeQuests;

	-- if we ever erroneously add an account-wide quest and find out it isn't put it here so it reverts back to being handled as a normal quest
	for _,questID in ipairs(app.NonOPAQDB or app.EmptyTable) do
		oneTimeQuests[questID] = nil;
	end
	-- quests in AccountWideQuestsDB will automatically be removed from OneTimeQuests
	for questID,_ in pairs(app.AccountWideQuestsDB) do
		oneTimeQuests[questID] = nil;
	end
	-- if someone gets a one-time quest flagged as completed, then later removes that character, we need to make sure we don't continue tracking that quest as completed by the unknown character since the Quests logic expects this situation to remain as a 'collected' quest, but the lack of character cached data will turn it into a non-collected situation, lingering forever for that player
	for questID,charGuid in pairs(oneTimeQuests) do
		if charGuid and not characterData[charGuid] then
			app.print("Cleaned up One-Time Quest marked as completed by an Unknown character UID:",charGuid,app:RawSearchLink("questID",questID,"field"))
			oneTimeQuests[questID] = nil
		-- elseif characterData[charGuid] then
		-- 	app.PrintDebug("Character with completed One-Time Quest still valid",charGuid,app:RawSearchLink("questID",questID,"field"))
		end
	end
end
-- ref. https://github.com/ATTWoWAddon/AllTheThings/commit/d1b02b8021a7f2aa80c03d212a2ea54a443e9117
OneTimeFixFunctions.Spell148972 = function(currentCharacter, accountWideData, characterData)
	local found
	for charGuid,charData in pairs(characterData) do
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
end
-- ref. https://github.com/ATTWoWAddon/AllTheThings/commit/d1b02b8021a7f2aa80c03d212a2ea54a443e9117
OneTimeFixFunctions.Spell241857 = function(currentCharacter, accountWideData, characterData)
	local found
	for charGuid,charData in pairs(characterData) do
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
end)
app.AddEventHandler("OnAfterSavedVariablesAvailable", FixNonOneTimeQuests)
end

-- ref. 1 represents account-wide completion, so all old data needs to be wiped initially to allow proper re-caching
OneTimeFixFunctions.PreATT5_0_14AWQuests = function(currentCharacter, accountWideData, characterData)
	local quests = accountWideData.Quests
	if not quests then return end

	if not accountWideData.PriorQuests then accountWideData.PriorQuests = {} end
	local priorQuests = accountWideData.PriorQuests
	for questID,completion in pairs(quests) do
		if completion == 1 then
			quests[questID] = nil
			priorQuests[questID] = 1
		end
	end

	app.print("One-Time cleanup of old-format account-wide quest completion cache performed!")
end
-- ref. convert profile filter data to properly setup Default toggle
OneTimeFixFunctions.ConvertAccountModeFiltersForProfiles = function(currentCharacter, accountWideData)
	app.AddEventHandler("OnAfterSavedVariablesAvailable", function(currentCharacter, accountWideData)

		local profiles = AllTheThingsProfiles.Profiles
		if not profiles then return end

		local profileFilters, filters

		for key,profile in pairs(profiles) do
			filters = profile.Filters
			-- if there's no General section in the Profile then skip
			if profile.General then
				if profile.General.AccountMode then
					profileFilters = {}
					app.CloneDictionary(filters or app.EmptyTable, profileFilters)
					profile.General["Profile:Filters"] = profileFilters
					profile.General["Profile:DefaultFilters"] = true
					-- make sure all Equipment filters are assigned in the Account mode Default profile
					for k in pairs(app.EquipmentFilters) do
						filters[k] = true
					end
				else
					-- User has never assigned any Filter manually, they are in "Default" Filtering
					if not filters or not next(filters) then
						profile.General["Profile:DefaultFilters"] = true
					else
						profile.General["Profile:DefaultFilters"] = false
						profileFilters = {}
						app.CloneDictionary(filters, profileFilters)
						profile.General["Profile:Filters"] = profileFilters
					end
				end
			end
		end
		app.print("One-Time conversion of Profile Filter sets performed!")
	end)
end
--- Saved global-window fields are a dictionary and may include custom persistent values.
---@class ATTWhiteGrayTransmogGlobalWindowSettings
---@field visible boolean? # Whether the window is visible.
---@field ShouldAutomaticallyOpen boolean? # Whether the window opens automatically.
---@field point string? # Saved anchor point on the window.
---@field relativePoint string? # Saved anchor point on the relative frame.
---@field relativeTo string? # Saved global frame name used as the window's anchor.
---@field x number? # Horizontal offset.
---@field y number? # Vertical offset.
---@field width number? # Saved window width.
---@field height number? # Saved window height.
---@field isLocked boolean? # Whether the window is locked.
---@field movable boolean? # Whether the window is movable.
---@field resizable boolean? # Whether the window is resizable.
---@field scale number? # Saved frame scale.
---@field alpha number? # Saved frame opacity.
---@field [string] any # Persisted window fields can contain arbitrary custom data.

--- Profile window settings combine an ordered point list with named layout options.
---@class ATTWhiteGrayTransmogProfilePoint
---@field Point string? # Anchor point on the window, when saved.
---@field PointRef string? # Anchor point on the relative frame, when saved.
---@field X number? # Horizontal offset, when saved.
---@field Y number? # Vertical offset, when saved.

---@class ATTWhiteGrayTransmogProfileWindowSettings
---@field Width number? # Saved profile width.
---@field Height number? # Saved profile height.
---@field Locked boolean? # Whether the window is locked.
---@field visible boolean? # Whether the window is visible.
---@field [number] ATTWhiteGrayTransmogProfilePoint # Ordered points; the last applied point can determine the final position.
---@field [string] any # Named or custom saved options outside the point list can have arbitrary values.

---@class ATTWhiteGrayTransmogSavedProfile
---@field Windows table<string, ATTWhiteGrayTransmogProfileWindowSettings>? # Window settings keyed by window suffix.
---@field [string] any # Other profile fields can contain arbitrary saved data.

---@class ATTWhiteGrayTransmogSavedVariables
---@field Windows table<string, ATTWhiteGrayTransmogGlobalWindowSettings>? # Global window settings keyed by window suffix.

--- Merge global SavedVariables window dictionaries; every non-nil target value wins, including false and zero.
---@param windowSettings table<string, ATTWhiteGrayTransmogGlobalWindowSettings> # Global window settings indexed by suffix.
---@param oldSuffix string # Previously persisted window suffix.
---@param newSuffix string # Canonical window suffix.
local function MergeWindowSettings(windowSettings, oldSuffix, newSuffix)
	local oldSettings = windowSettings[oldSuffix]
	if type(oldSettings) ~= "table" then return end

	local newSettings = windowSettings[newSuffix]
	if newSettings == nil then
		windowSettings[newSuffix] = oldSettings
	elseif type(newSettings) == "table" then
		for key,value in pairs(oldSettings) do
			if newSettings[key] == nil then
				newSettings[key] = value
			end
		end
	else
		return
	end
	windowSettings[oldSuffix] = nil
end
--- Merge profile settings without combining two ordered point lists.
--- If the target already has any numeric point, preserve its whole point list and only fill missing named fields.
---@param windowSettings table<string, ATTWhiteGrayTransmogProfileWindowSettings> # Per-profile window settings indexed by suffix.
---@param oldSuffix string # Previously persisted window suffix.
---@param newSuffix string # Canonical window suffix.
local function MergeProfileWindowSettings(windowSettings, oldSuffix, newSuffix)
	local oldSettings = windowSettings[oldSuffix]
	if type(oldSettings) ~= "table" then return end

	local newSettings = windowSettings[newSuffix]
	if newSettings == nil then
		windowSettings[newSuffix] = oldSettings
	elseif type(newSettings) == "table" then
		-- Profile points are applied in sequence, so mixing old and new points can override the new position.
		local hasNewPoints = false
		for key in pairs(newSettings) do
			if type(key) == "number" then
				hasNewPoints = true
				break
			end
		end
		for key,value in pairs(oldSettings) do
			if type(key) ~= "number" or not hasNewPoints then
				if newSettings[key] == nil then
					newSettings[key] = value
				end
			end
		end
	else
		return
	end
	windowSettings[oldSuffix] = nil
end
--- Runs once from the SavedVariables-available handler, before Settings initialization and window OnInit.
--- The runner records its persistent one-time marker before calling this migration.
--- The callback ignores the runner's character and account arguments.
OneTimeFixFunctions.RenameWhiteAndGrayTransmogWindow = function()
	local oldSuffix = "White Collectible Transmog"
	local newSuffix = "White and Gray Transmog"
	local oldFrameName = "ATTWindow" .. oldSuffix
	local newFrameName = "ATTWindow" .. newSuffix
	---@type table<string, ATTWhiteGrayTransmogGlobalWindowSettings>?
	local savedWindows = AllTheThingsSavedVariables and AllTheThingsSavedVariables.Windows

	if type(savedWindows) == "table" then
		MergeWindowSettings(savedWindows, oldSuffix, newSuffix)
		for _,settings in pairs(savedWindows) do
			if type(settings) == "table" and settings.relativeTo == oldFrameName then
				settings.relativeTo = newFrameName
			end
		end
	end

	---@type table<string, ATTWhiteGrayTransmogSavedProfile>?
	local profiles = AllTheThingsProfiles and AllTheThingsProfiles.Profiles
	if type(profiles) == "table" then
		for _,profile in pairs(profiles) do
			if type(profile) == "table" and type(profile.Windows) == "table" then
				MergeProfileWindowSettings(profile.Windows, oldSuffix, newSuffix)
			end
		end
	end

end
--- Run on every login after saved settings load; prebuild the lazy target before dependent windows apply anchors.
--- GetWindow constructs the frame without showing it; this also covers logins after the one-time migration marker is set.
app.AddEventHandler("OnAfterSavedVariablesAvailable", function()
	---@type table<string, ATTWhiteGrayTransmogGlobalWindowSettings>?
	local savedWindows = AllTheThingsSavedVariables and AllTheThingsSavedVariables.Windows
	if type(savedWindows) ~= "table" then return end
	local suffix = "White and Gray Transmog"
	local frameName = "ATTWindow" .. suffix
	for _,settings in pairs(savedWindows) do
		if type(settings) == "table" and settings.relativeTo == frameName then
			app:GetWindow(suffix)
			return
		end
	end
end)
local function OneTimeFixes(currentCharacter, accountWideData, characterData)
	if not accountWideData.OneTimeFixes then accountWideData.OneTimeFixes = {} end
	local appliedFixes = accountWideData.OneTimeFixes

	for fix,func in pairs(OneTimeFixFunctions) do
		if not appliedFixes[fix] then
			appliedFixes[fix] = 1
			func(currentCharacter, accountWideData, characterData)
		end
	end

	OneTimeFixFunctions = nil
end
app.AddEventHandler("OnSavedVariablesAvailable", OneTimeFixes)

-- for the first auto-refresh, don't actually print to chat since some users don't like that auto-chat on login
---@type function
local InCombatLockdown = InCombatLockdown;
---@type function
local print = app.EmptyFunction;
app.__FirstRefresh = true;
local IsRefreshing

-- [Event]Done is called automatically when processed by a Runner and it completes the set of functions
app.AddEventHandler("OnRefreshCollectionsDone", function()
	-- Report success once refresh is done
	print(app.L.DONE_REFRESHING);
	if app.__FirstRefresh then
		app.__FirstRefresh = nil;
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
