-- Regression coverage for renaming a saved ATT window suffix.
-- Run from the repository root: lua5.1 tests/window-suffix-migration.lua [repository-root]
--
-- Loads the production OneTimeFix runner from lib/Refresh.lua with a small app
-- stub, then exercises saved global and profile window data across logins.
local root = (arg and arg[1]) or "."
local tests = 0
local OLD_SUFFIX = "White Collectible Transmog"
local NEW_SUFFIX = "White and Gray Transmog"
local OLD_FRAME = "ATTWindow" .. OLD_SUFFIX
local NEW_FRAME = "ATTWindow" .. NEW_SUFFIX
local MIGRATION = "RenameWhiteAndGrayTransmogWindow"

---@class ATTWindowSuffixMigrationAccountWideData
---@field OneTimeFixes table<string, integer>? # Persisted fix markers; existing markers are preloaded by the fixture.

---@alias ATTWindowSuffixMigrationCallback fun(...: any) # Event callbacks can receive arbitrary event arguments.

---@class ATTWindowSuffixMigrationHandlers
---@field OnSavedVariablesAvailable ATTWindowSuffixMigrationCallback[]? # Production one-time-fix event.
---@field OnAfterSavedVariablesAvailable ATTWindowSuffixMigrationCallback[]? # Post-settings event used for lazy anchor targets.
---@field [string] ATTWindowSuffixMigrationCallback[]? # Callbacks grouped by event name.

---@class ATTWindowSuffixMigrationFrame
---@field Show fun() # The fixture errors if migration tries to show the renamed window.

---@class ATTWindowSuffixMigrationApp
---@field IsRetail boolean # Keeps this non-Retail runner fixture on its shared path.
---@field EmptyFunction fun() # Required app stub for loading Refresh.lua.
---@field print fun(...: any) # Silent app logger accepts arbitrary values.
---@field AddEventHandler fun(event: string, callback: ATTWindowSuffixMigrationCallback) # Captures production callbacks.
---@field GetWindow fun(self: ATTWindowSuffixMigrationApp, suffix: string): ATTWindowSuffixMigrationFrame # Records lazy-frame construction.
---@field windowLookups string[]? # Suffixes passed to the app's GetWindow stub.

---@class ATTWindowSuffixMigrationProfiles
---@field Profiles table<string, ATTWhiteGrayTransmogSavedProfile>? # Saved profiles keyed by profile name.

---@class ATTWindowSuffixMigrationWindowDefinition
---@field Commands string[]? # Slash-command aliases.
---@field RootCommands string[]? # Root-command aliases.
---@field [string] any # Other runtime window options can contain arbitrary values.

---@class ATTWindowSuffixMigrationRuntimeApp
---@field CreateWindow fun(self: ATTWindowSuffixMigrationRuntimeApp, suffix: string, definition: ATTWindowSuffixMigrationWindowDefinition) # Captures the real window declaration.

---@param name string # Assertion label printed on failure.
---@param condition boolean? # Required behavior result; nil also fails the check.
local function check(name, condition)
	if not condition then error("FAILED: " .. name, 2) end
	tests = tests + 1
end
---@param path string # Repository-relative file path.
---@return string contents # Complete file contents.
local function readFile(path)
	local file = assert(io.open(root .. "/" .. path, "rb"))
	local contents = file:read("*a")
	file:close()
	return contents
end
---@param list string[]? # Command names to search; nil represents no configured aliases.
---@param value string # Exact alias to find.
---@return boolean? found # True when the alias is present; otherwise nil.
local function contains(list, value)
	for _,entry in ipairs(list or {}) do
		if entry == value then return true end
	end
end
--- Load the actual one-time-fix runner with isolated saved data and event capture.
---@param savedVariables ATTWhiteGrayTransmogSavedVariables? # Global saved window settings, absent for a new user.
---@param profiles ATTWindowSuffixMigrationProfiles? # Profile window settings, absent for a new user.
---@param accountWideData ATTWindowSuffixMigrationAccountWideData # Account data holding persistent one-time markers.
---@return ATTWindowSuffixMigrationHandlers handlers # Registered production event callbacks.
---@return ATTWindowSuffixMigrationApp app # App stub recording lazy-window construction.
local function runOneTimeFixes(savedVariables, profiles, accountWideData)
	_G.AllTheThingsSavedVariables = savedVariables
	_G.AllTheThingsProfiles = profiles
	accountWideData.OneTimeFixes = accountWideData.OneTimeFixes or {}
	-- Skip unrelated production fixes so this fixture exercises only the window migration.
	accountWideData.OneTimeFixes.PreATT5_0_14AWQuests = 1
	accountWideData.OneTimeFixes.ConvertAccountModeFiltersForProfiles = 1
	---@type ATTWindowSuffixMigrationHandlers
	local handlers = {}
	local app = {
		IsRetail = false,
		EmptyFunction = function() end,
		print = function() end,
		AddEventHandler = function(event, callback)
			local eventHandlers = handlers[event]
			if not eventHandlers then
				eventHandlers = {}
				handlers[event] = eventHandlers
			end
			eventHandlers[#eventHandlers + 1] = callback
		end,
	}
	app.GetWindow = function(_, suffix)
		app.windowLookups = app.windowLookups or {}
		app.windowLookups[#app.windowLookups + 1] = suffix
		return { Show = function() error("migration must not show the renamed window") end }
	end

	assert(loadfile(root .. "/lib/Refresh.lua"))("AllTheThings", app)
	local callbacks = assert(handlers.OnSavedVariablesAvailable, "production SavedVariables handler missing")
	for _,callback in ipairs(callbacks) do
		callback(nil, accountWideData, nil)
	end
	return handlers, app
end
---@param handlers ATTWindowSuffixMigrationHandlers # Captured production event handlers.
---@param event string # Event whose callbacks should run.
local function fireEvent(handlers, event)
	for _,callback in ipairs(handlers[event] or {}) do callback() end
end

-- Old-only settings move intact, along with every profile's saved layout.
---@type ATTWhiteGrayTransmogGlobalWindowSettings
local oldGlobal = {
	visible = true,
	ShouldAutomaticallyOpen = true,
	x = 17,
	y = -23,
	width = 620,
	height = 430,
	point = "TOPLEFT",
	relativePoint = "BOTTOMRIGHT",
	relativeTo = OLD_FRAME,
	isLocked = true,
	scale = 1.25,
	movable = false,
	resizable = false,
	alpha = 0.75,
	backdrop = "old-backdrop",
	backdropColor = { 0.1, 0.2, 0.3, 0.4 },
	borderColor = { 0.5, 0.6, 0.7, 0.8 },
	Progress = 3,
	Total = 9,
	custom = { preserved = true },
}
---@type ATTWhiteGrayTransmogProfileWindowSettings
local oldDefaultPoints = {
	{ Point = "TOPLEFT", PointRef = "BOTTOMRIGHT", X = 1, Y = 2 },
	{ Point = "BOTTOMRIGHT", PointRef = "TOPLEFT", X = 3, Y = 4 },
	Width = 410,
	Height = 320,
	Locked = true,
	visible = false,
	custom = "default",
}
---@type ATTWhiteGrayTransmogProfileWindowSettings
local oldAltPoints = {
	{ Point = "CENTER", PointRef = "CENTER", X = 5, Y = 6 },
	Width = 510,
	Height = 420,
	Locked = false,
	visible = true,
}
local savedVariables = {
	Windows = {
		[OLD_SUFFIX] = oldGlobal,
		OtherWindow = { relativeTo = OLD_FRAME },
		SimilarButDifferent = { relativeTo = OLD_FRAME .. "Extra" },
	},
}
local profiles = {
	Profiles = {
		Default = { Windows = { [OLD_SUFFIX] = oldDefaultPoints } },
		Alt = { Windows = { [OLD_SUFFIX] = oldAltPoints } },
		Empty = { General = {} },
	},
}
---@type ATTWindowSuffixMigrationAccountWideData
local accountWideData = { OneTimeFixes = { ExistingFix = 1 } }
local handlers, app = runOneTimeFixes(savedVariables, profiles, accountWideData)
local windows = savedVariables.Windows
check("old-only global table moved without copying", windows[NEW_SUFFIX] == oldGlobal)
check("old global suffix removed", windows[OLD_SUFFIX] == nil)
check("global visibility preserved", windows[NEW_SUFFIX].visible == true)
check("auto-open preserved", windows[NEW_SUFFIX].ShouldAutomaticallyOpen == true)
check("global size and position preserved", windows[NEW_SUFFIX].width == 620 and windows[NEW_SUFFIX].height == 430 and windows[NEW_SUFFIX].x == 17 and windows[NEW_SUFFIX].y == -23)
check("global frame options and custom fields preserved", windows[NEW_SUFFIX].isLocked == true and windows[NEW_SUFFIX].scale == 1.25 and windows[NEW_SUFFIX].custom == oldGlobal.custom)
check("renamed window self-anchor updated", windows[NEW_SUFFIX].relativeTo == NEW_FRAME)
check("other window exact anchor updated", windows.OtherWindow.relativeTo == NEW_FRAME)
check("near-match anchor left unchanged", windows.SimilarButDifferent.relativeTo == OLD_FRAME .. "Extra")
check("default profile moved intact", profiles.Profiles.Default.Windows[NEW_SUFFIX] == oldDefaultPoints and profiles.Profiles.Default.Windows[OLD_SUFFIX] == nil)
check("alternate profile moved intact", profiles.Profiles.Alt.Windows[NEW_SUFFIX] == oldAltPoints and profiles.Profiles.Alt.Windows[OLD_SUFFIX] == nil)
check("profile without window container remains absent", profiles.Profiles.Empty.Windows == nil)
check("existing one-time markers preserved", accountWideData.OneTimeFixes.ExistingFix == 1 and accountWideData.OneTimeFixes[MIGRATION] == 1)
check("anchor callback runs after saved variables are available", #handlers.OnAfterSavedVariablesAvailable == 1 and app.windowLookups == nil)
fireEvent(handlers, "OnAfterSavedVariablesAvailable")
check("anchor callback prebuilds new suffix without showing it", #app.windowLookups == 1 and app.windowLookups[1] == NEW_SUFFIX)

-- Conflicts retain every non-nil new value, including false and zero, and fill gaps.
local oldConflict = {
	visible = true,
	width = 900,
	height = 700,
	x = 99,
	y = -99,
	relativeTo = OLD_FRAME,
	oldOnly = "kept",
	custom = "old",
}
---@type ATTWhiteGrayTransmogGlobalWindowSettings
local newConflict = {
	visible = false,
	width = 0,
	x = 0,
	relativeTo = "ATTWindowAnotherWindow",
	custom = "new",
}
---@type ATTWhiteGrayTransmogProfileWindowSettings
local oldProfilePoints = {
	{ Point = "TOP", PointRef = "BOTTOM", X = 10, Y = 20 },
	{ Point = "BOTTOM", PointRef = "TOP", X = 30, Y = 40 },
	Width = 700,
	Height = 500,
	Locked = false,
	visible = true,
	oldOnly = "profile-old",
}
---@type ATTWhiteGrayTransmogProfileWindowSettings
local newProfilePoints = {
	{ Point = "CENTER", PointRef = "CENTER", X = 0, Y = 0 },
	Width = 0,
	visible = false,
	newOnly = "profile-new",
}
---@type ATTWhiteGrayTransmogProfileWindowSettings
local oldProfileWithoutNewPoints = {
	{ Point = "LEFT", PointRef = "RIGHT", X = 7, Y = 8 },
	Width = 300,
	Height = 200,
}
local conflictSaved = { Windows = { [OLD_SUFFIX] = oldConflict, [NEW_SUFFIX] = newConflict } }
local conflictProfiles = {
	Profiles = {
		Default = { Windows = { [OLD_SUFFIX] = oldProfilePoints, [NEW_SUFFIX] = newProfilePoints } },
		NoNewPoints = { Windows = { [OLD_SUFFIX] = oldProfileWithoutNewPoints, [NEW_SUFFIX] = { visible = false } } },
	},
}
---@type ATTWindowSuffixMigrationAccountWideData
local conflictAccountData = {}
local conflictHandlers, conflictApp = runOneTimeFixes(conflictSaved, conflictProfiles, conflictAccountData)
local merged = conflictSaved.Windows[NEW_SUFFIX]
check("new global false and zero values win", merged.visible == false and merged.width == 0 and merged.x == 0)
check("old global missing values fill", merged.height == 700 and merged.y == -99 and merged.oldOnly == "kept")
check("new global custom value wins", merged.custom == "new")
check("conflicting old global suffix removed", conflictSaved.Windows[OLD_SUFFIX] == nil)
check("new global anchor wins without requesting an old frame", merged.relativeTo == "ATTWindowAnotherWindow")
local mergedPoints = conflictProfiles.Profiles.Default.Windows[NEW_SUFFIX]
check("new profile point group wins", mergedPoints[1] == newProfilePoints[1] and mergedPoints[2] == nil)
check("new profile false and zero values win", mergedPoints.visible == false and mergedPoints.Width == 0)
check("profile missing named fields fill from old", mergedPoints.Height == 500 and mergedPoints.Locked == false and mergedPoints.oldOnly == "profile-old")
check("old profile suffix removed", conflictProfiles.Profiles.Default.Windows[OLD_SUFFIX] == nil)
local filledPoints = conflictProfiles.Profiles.NoNewPoints.Windows[NEW_SUFFIX]
check("old profile point group fills when new has no points", filledPoints[1] == oldProfileWithoutNewPoints[1] and filledPoints.Width == 300 and filledPoints.visible == false)
fireEvent(conflictHandlers, "OnAfterSavedVariablesAvailable")
check("no frame is built without matching references", conflictApp.windowLookups == nil)

-- Missing tables and new users are safe, and the migration does not invent containers.
local emptySavedVariables = {}
local emptyProfiles = { Profiles = { Default = { General = {} } } }
local emptyHandlers, emptyApp = runOneTimeFixes(emptySavedVariables, emptyProfiles, {})
check("missing window containers stay absent", emptySavedVariables.Windows == nil and emptyProfiles.Profiles.Default.Windows == nil)
fireEvent(emptyHandlers, "OnAfterSavedVariablesAvailable")
check("empty profile case does not build a frame", emptyApp.windowLookups == nil)
local newUserHandlers, newUserApp = runOneTimeFixes(nil, nil, {})
fireEvent(newUserHandlers, "OnAfterSavedVariablesAvailable")
check("nil SavedVariables and profiles are safe", _G.AllTheThingsSavedVariables == nil and _G.AllTheThingsProfiles == nil and newUserApp.windowLookups == nil)

-- A second login sees the persisted marker and does not run the migration again.
savedVariables.Windows[OLD_SUFFIX] = { visible = true }
local secondHandlers, secondApp = runOneTimeFixes(savedVariables, profiles, accountWideData)
check("one-time marker prevents a second migration", savedVariables.Windows[OLD_SUFFIX] ~= nil and savedVariables.Windows[NEW_SUFFIX] == oldGlobal)
check("no frame is built before settings initialization on later logins", secondApp.windowLookups == nil)
fireEvent(secondHandlers, "OnAfterSavedVariablesAvailable")
check("saved anchors still prebuild the frame on later logins", #secondApp.windowLookups == 1 and secondApp.windowLookups[1] == NEW_SUFFIX)

-- The real renamed window definition keeps both command generations usable.
local capturedSuffix, capturedDefinition
---@type ATTWindowSuffixMigrationRuntimeApp
local runtimeApp = {
	CreateWindow = function(_, suffix, definition)
		capturedSuffix = suffix
		capturedDefinition = definition
	end,
}
assert(loadfile(root .. "/src/UI/Windows/White and Gray Transmog.lua"))("AllTheThings", runtimeApp)
check("runtime window uses canonical suffix", capturedSuffix == NEW_SUFFIX)
check("new and old slash commands remain available", contains(capturedDefinition.Commands, "attwgt") and contains(capturedDefinition.Commands, "attwct"))
check("new and old root commands remain available", contains(capturedDefinition.RootCommands, "wgt") and contains(capturedDefinition.RootCommands, "wct"))
local windowsXml = readFile("src/UI/Windows/Windows.xml")
check("Windows.xml loads renamed runtime file", windowsXml:find('<Script file="White and Gray Transmog.lua"/>', 1, true) ~= nil)
check("old runtime file is gone", io.open(root .. "/src/UI/Windows/White Collectible Transmog.lua", "rb") == nil)
local windowDefinitions = readFile("src/UI/Window Definitions.lua")
check("localized window mapping uses canonical suffix and new constant", windowDefinitions:find('["White and Gray Transmog"] = "WHITE_GRAY_TRANSMOG"', 1, true) ~= nil)

print("Passed " .. tests .. " window suffix migration checks")
