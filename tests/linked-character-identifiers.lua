-- Standalone regression tests for linked character name and realm identifiers.
-- Run from the repository root: lua tests/linked-character-identifiers.lua [repository-root]
--
-- Test architecture:
-- Loads the actual normalizer and its name/realm helpers from Account Management.
-- Small fixtures supply client flavor and the current realm without loading the addon.
-- Input arrays retain an explicit count when a trailing realm argument is nil.
-- This distinguishes an explicitly missing realm from an omitted realm argument.
-- The check helper calls the normalizer and verifies both returned values:
-- the normalized name-realm identifier and the complete name without the realm.
-- Cases cover full names, delimiters, spacing, invalid inputs, and Forever names.
--
-- The Refresh library's actual OneTimeFix registration and runner clear saved caches.
-- A fresh library load simulates each login while reusing the account's saved marker.
-- Forever, Classic, and Retail fixtures verify first-login cleanup and preservation
-- of rebuilt caches on the next login. The actual SavedVariables callback uses a
-- fixed clock so identity, collection progress, and play time can be checked.
-- The complete window OnLoad runs after OneTimeFix; a broadcast stub verifies all
-- saved identifiers are current before AutoSync, including renames and realm changes.
-- The player-names fixture runs actual login storage for an alt without loading its
-- account window; the main window must then rebuild that alt's stale identifier.
-- Native messaging registration is stubbed; collection data must survive loading.
-- A failed assertion stops the run with a message; success prints the check count.

--- Record-shaped values deliberately rejected as names or explicit realms.
---@class ATTIdentifierTestRecordInput
---@field name? string Name carried by a malformed table input.

--- Valid strings and transport IDs mixed with intentionally invalid argument values.
---@alias ATTIdentifierTestInput ATTAccountTransportKey|boolean|ATTIdentifierTestRecordInput|nil

--- Packed normalizer inputs, including an explicit count when the last argument is nil.
---@class ATTIdentifierTestArguments
---@field [1]? ATTIdentifierTestInput Candidate name or combined name-realm identifier.
---@field [2]? ATTIdentifierTestInput Optional explicit realm, including invalid test values.
---@field n? integer Argument count used to preserve an explicit trailing nil.

--- Client flavor exposed to the extracted identifier helper closures.
---@class ATTIdentifierTestApp
---@field IsForever boolean Whether the fixture represents a Forever client.

--- Current-realm context, allowing malformed cached realm values for rejection tests.
---@class ATTIdentifierTestCurrentCharacter
---@field realm? string|number Realm fallback; numbers deliberately exercise invalid data.

--- Production normalizer accepting packed test inputs and returning the identifier and complete name.
---@alias ATTIdentifierTestNormalizer fun(identifier: ATTIdentifierTestInput, ...: ATTIdentifierTestInput): string?, string?

--- Loaded production chunk binding a client flavor and optional current-realm context.
---@alias ATTIdentifierTestNormalizerFactory fun(app: ATTIdentifierTestApp, currentCharacter: ATTIdentifierTestCurrentCharacter?): ATTIdentifierTestNormalizer

--- Learned-spell flags whose contents and table identity must survive cache invalidation.
---@alias ATTIdentifierTestSpellFlags table<integer, boolean>

--- Saved characters supplied to the extracted initialization callback.
---@alias ATTIdentifierTestCharacterData table<string, ATTNameTestCharacter>

--- Saved account-wide state shared by fresh login sessions in the OneTimeFix tests.
--- OneTimeFixes records completed fix names so rebuilt identifiers survive the next login.
---@class ATTIdentifierTestAccountWideData
---@field OneTimeFixes? table<string, integer> Applied fix names mapped to the saved completion marker 1.

--- Actual one-time runner receiving the current character and persistent account state.
---@alias ATTIdentifierTestOneTimeHandler fun(currentCharacter: ATTNameTestCharacter, accountWideData: ATTIdentifierTestAccountWideData)

--- Addon services supplied when loading the real Refresh library's fix declarations.
--- Exposes the client build and saved characters, and captures the runner without dispatching other events.
---@class ATTIdentifierTestRefreshApp
---@field IsRetail boolean Whether Retail-only fix declarations should be registered.
---@field GameBuildVersion integer Client build used by the Retail fix gate.
---@field AddEventHandler fun(eventName: string, callback: function) Captures the SavedVariables runner; other events are not dispatched.
---@field LocalizeGlobalIfAllowed fun(name: string, create: boolean): ATTIdentifierTestCharacterData Returns the saved character records.

--- Client label, Retail flag, and build for one identifier-migration test scenario.
--- Exercises the actual fix registrations on Forever, Classic, and Retail builds.
---@class ATTIdentifierTestFlavor
---@field label string Client name included in assertion failures.
---@field isRetail boolean Whether the fixture represents Retail.
---@field build integer Client build passed to the Refresh library.

--- Actual initialization callback binding saved records and updating play-time metadata.
---@alias ATTIdentifierTestSavedVariablesHandler fun(currentCharacter: ATTNameTestCharacter, accountWideData: ATTIdentifierTestAccountWideData, characterData: ATTIdentifierTestCharacterData)

--- Event-registration mock capturing the actual SavedVariables callback.
---@class ATTIdentifierTestInitializationApp
---@field AddEventHandler fun(eventName: string, callback: ATTIdentifierTestSavedVariablesHandler) Captures a callback; the event name is unused.

--- Settings consumed by the actual Account Management window load callback.
---@class ATTIdentifierTestWindowSettings
---@field AutoSync boolean Whether window loading starts automatic synchronization.
---@field EnableBattleNet boolean Whether the window enables Battle.net transport.
---@field LinkedCharacters? table<ATTAccountTransportKey, boolean> Allowed saved transport recipients.

--- Window methods needed to exercise its real startup callback.
---@class ATTIdentifierTestAccountWindow
---@field OnLoad fun(self: ATTIdentifierTestAccountWindow, settings: ATTIdentifierTestWindowSettings) Loads settings and refreshes saved identifiers.
---@field RegisterEvent fun(self: ATTIdentifierTestAccountWindow, eventName: string): nil Accepts a native event registration without dispatching it.

--- Expected current and optional alt identifiers at each automatic broadcast.
---@class ATTIdentifierTestWindowCalls
---@field expected string Identifier that must already be current when AutoSync starts.
---@field broadcast integer Number of AutoSync calls observed.
---@field other? ATTNameTestCharacter Alt saved record checked before the main character synchronizes.
---@field otherExpected? string Expected normalized alt identifier before AutoSync.

---@type string
local root = arg[1] or ".";
--- Uses the available Lua unpack API without losing explicitly packed nil arguments.
local unpackValues = table.unpack or unpack;
local file = assert(io.open(root .. "/src/UI/Windows/Account Management.lua", "rb"));
local source = file:read("*a"):gsub("\r\n", "\n");
file:close();
local helpers = assert(source:match("(local function TrimString.-)local function AddCharacterLookup"), "Cannot locate linked character identifier helpers");
--- Loads the actual production helpers and binds their client and current-character context.
---@type ATTIdentifierTestNormalizerFactory
local chunk = assert((loadstring or load)([[
---@type ATTIdentifierTestApp, ATTIdentifierTestCurrentCharacter?
local app, CurrentCharacter = ...
---@type fun(identifier: ATTAccountTransportKey): ATTAccountTransportKey
local GetCharacterWhisperTarget;
]] .. helpers .. "\nreturn NormalizeLinkedCharacterIdentifier", "@actual-linked-character-identifiers"));
---@type ATTIdentifierTestApp
local normalApp = { IsForever = false };
---@type ATTIdentifierTestCurrentCharacter
local currentCharacter = { realm = "Realm With Spaces" };
---@type ATTIdentifierTestNormalizer
local normalize = chunk(normalApp, currentCharacter);
local tests = 0;
--- Runs a production normalizer and checks both results without accepting thrown errors.
---@param label string Case label included in assertion failures.
---@param arguments ATTIdentifierTestArguments Packed call inputs; n preserves explicit nil realms.
---@param fullName string? Expected normalized name-realm identifier, or nil for rejected inputs.
---@param shortName string? Expected complete normalized name without the realm, or nil for rejected inputs.
---@param fn ATTIdentifierTestNormalizer? Alternate bound normalizer; nil uses the default fixture.
local function check(label, arguments, fullName, shortName, fn)
	local ok, actualFull, actualShort = pcall(fn or normalize, unpackValues(arguments, 1, arguments.n or #arguments));
	assert(ok, label .. " threw: " .. tostring(actualFull));
	assert(actualFull == fullName, label .. ": expected identifier " .. tostring(fullName) .. ", got " .. tostring(actualFull));
	assert(actualShort == shortName, label .. ": expected name " .. tostring(shortName) .. ", got " .. tostring(actualShort));
	tests = tests + 1;
end

-- Explicit name and realm arguments retain all name parts, even with a missing realm.
check("full name and explicit realm", {"aeldorath zephrai", "Classic Beta PvE 2"}, "Aeldorath Zephrai-ClassicBetaPve2", "Aeldorath Zephrai");
check("ordinary name and realm", {"alice", "aegwynn"}, "Alice-Aegwynn", "Alice");
check("hyphenated full name and realm", {"anne-marie shadow", "Moon Guard"}, "Anne-Marie Shadow-MoonGuard", "Anne-Marie Shadow");
check("explicit realm takes priority", {"alice-realm tail", "Actual Realm"}, "Alice-Realm Tail-ActualRealm", "Alice-Realm Tail");
check("explicit nil realm", {n=2,"first last"}, "First Last-RealmWithSpaces", "First Last");
check("explicit empty realm", {"first last", ""}, "First Last-RealmWithSpaces", "First Last");
check("explicit whitespace realm", {"first last", " \t "}, "First Last-RealmWithSpaces", "First Last");
check("explicit whitespace trimmed", {" \t first last \n", " \t Moon Guard \n"}, "First Last-MoonGuard", "First Last");
check("internal name spaces preserved", {"first  last", "Realm"}, "First  Last-Realm", "First  Last");

-- Combined strings split only at the first literal realm delimiter.
check("ordinary current realm", {"alice"}, "Alice-RealmWithSpaces", "Alice");
check("full name current realm", {"first last"}, "First Last-RealmWithSpaces", "First Last");
check("ordinary combined identifier", {"alice-aegwynn"}, "Alice-Aegwynn", "Alice");
check("full name combined identifier", {"first last-Moon Guard"}, "First Last-MoonGuard", "First Last");
check("spaced realm with hyphens", {"first last-Realm-With Spaces"}, "First Last-Realm-WithSpaces", "First Last");
check("spaces surrounding delimiter", {" \t first last \t- \t Moon Guard \n"}, "First Last-MoonGuard", "First Last");
check("trailing delimiter current realm", {"alice-"}, "Alice-RealmWithSpaces", "Alice");
check("whitespace realm current realm", {"alice- \t"}, "Alice-RealmWithSpaces", "Alice");
check("realm punctuation literal", {"alice-Realm (EU).+"}, "Alice-Realm(Eu).+", "Alice");

-- Complete non-ASCII names and realms retain their existing identifier behavior.
check("non-ASCII complete name", {"玩家 星辰", "銀月"}, "玩家 星辰-銀月", "玩家 星辰");
check("non-ASCII combined identifier", {"玩家 星辰-銀月 伺服器"}, "玩家 星辰-銀月伺服器", "玩家 星辰");
check("ASCII casing unchanged", {"aLICE shadow-moon", "eU pVE 2"}, "Alice Shadow-Moon-EuPve2", "Alice Shadow-Moon");

-- Malformed or unavailable values should not throw or create an empty identifier.
check("nil name", {n=1}, nil, nil);
check("numeric name", {123}, nil, nil);
check("table name", {{name="Alice"}}, nil, nil);
check("empty name", {""}, nil, nil);
check("whitespace name", {" \t\n "}, nil, nil);
check("missing name before delimiter", {" -Realm"}, nil, nil);
check("invalid realm number", {"Alice", 123}, nil, nil);
check("invalid realm table", {"Alice", {}}, nil, nil);
check("invalid realm boolean", {"Alice", false}, nil, nil);
check("missing current character", {"Alice"}, nil, nil, chunk(normalApp, nil));
check("missing current realm", {"Alice"}, nil, nil, chunk(normalApp, {}));
check("invalid current realm", {"Alice"}, nil, nil, chunk(normalApp, {realm=123}));
check("blank current realm", {"Alice"}, nil, nil, chunk(normalApp, {realm=" \t "}));
check("explicit realm without current character", {"first last", "Realm"}, "First Last-Realm", "First Last", chunk(normalApp, nil));

-- Forever native display names follow the same full-name/realm contract.
---@type ATTIdentifierTestNormalizer
local forever = chunk({IsForever=true}, currentCharacter);
check("Forever native display fullname", {"first last"}, "First Last-RealmWithSpaces", "First Last", forever);
check("Forever qualified native fullname", {"first last-Moon Guard"}, "First Last-MoonGuard", "First Last", forever);
check("Forever realm hyphens", {"first last-Realm-With Spaces"}, "First Last-Realm-WithSpaces", "First Last", forever);
check("Forever explicit hyphenated name remains complete", {"first-last", "Moon Guard"}, "First-Last-MoonGuard", "First-Last", forever);
check("Forever explicit surname hyphen remains complete", {"Milo River-Song", "Moon Guard"}, "Milo River-Song-MoonGuard", "Milo River-Song", forever);
check("Forever explicit nil realm retains full name", {n=2,"first last"}, "First Last-RealmWithSpaces", "First Last", forever);
check("Forever non-ASCII display fullname", {"玩家 星辰-銀月 伺服器"}, "玩家 星辰-銀月伺服器", "玩家 星辰", forever);
assert(forever("First Last", "Moon Guard") == forever("First Last-Moon Guard"), "Native fullname lookup must match saved metadata");
tests = tests + 1;

-- Capture actual Account Management startup behavior alongside the one-time migration.
local initSource = assert(source:match('(app.AddEventHandler%("OnSavedVariablesAvailable".-\nend%))'), "Cannot locate account SavedVariables initialization");
local initProgram = [[
---@type ATTIdentifierTestSavedVariablesHandler?
local handler;
---@type ATTIdentifierTestInitializationApp
local app = { AddEventHandler = function(_, fn) handler = fn; end };
---@type ATTNameTestCharacter?, ATTIdentifierTestAccountWideData?, ATTIdentifierTestCharacterData?, number?, boolean?
local CurrentCharacter, AccountWideData, CharacterData, cachedTotalTimePlayed, suppressTimePlayed;
--- Returns a fixed timestamp so existing play-time data stays current during initialization.
---@return integer now Constant timestamp in seconds.
local time = function() return 1000; end;
--- Fails if initialization requests play time despite the fixture's current recorded timestamp.
local RequestTimePlayed = function() error("Unexpected play-time request"); end;
]] .. initSource .. "\nreturn handler";
--- Captured production startup callback invoked with the saved fixture records.
---@type ATTIdentifierTestSavedVariablesHandler
local initialize = assert((loadstring or load)(initProgram, "@actual-account-saved-variables"))();
local refreshFile = assert(io.open(root .. "/lib/Refresh.lua", "rb"));
local refreshSource = refreshFile:read("*a"):gsub("\r\n", "\n");
refreshFile:close();
local fixSource = assert(refreshSource:match("^(.-)%-%- for the first auto%-refresh"), "Cannot locate OneTimeFix registration and runner");
--- Loads fresh production fix declarations and captures their SavedVariables runner for one login.
---@param characterData ATTIdentifierTestCharacterData Saved records shared across login sessions.
---@param isRetail boolean Whether Retail-only fix declarations should be included.
---@param build integer Client build used by the Refresh library's Retail gate.
---@return ATTIdentifierTestOneTimeHandler handler Actual OneTimeFix runner for this session.
local function loadOneTimeFixes(characterData, isRetail, build)
	---@type ATTIdentifierTestOneTimeHandler?
	local handler;
	---@type ATTIdentifierTestRefreshApp
	local app = {
		IsRetail = isRetail,
		GameBuildVersion = build,
		--- Captures the final SavedVariables callback without dispatching unrelated events.
		---@param eventName string Event registered by the production Refresh library.
		---@param callback function Production event callback.
		AddEventHandler = function(eventName, callback)
			if eventName == "OnSavedVariablesAvailable" then handler = callback; end
		end,
		--- Returns the persistent character store used by the identifier cleanup.
		---@param name string Requested SavedVariables name; must be ATTCharacterData.
		---@param create boolean Whether the caller allows creating the store; must be true.
		---@return ATTIdentifierTestCharacterData records Saved character records.
		LocalizeGlobalIfAllowed = function(name, create)
			assert(name == "ATTCharacterData" and create == true, "Unexpected SavedVariables lookup");
			return characterData;
		end,
	};
	assert(loadstring(fixSource, "@actual-one-time-fixes"))("AllTheThings", app);
	return assert(handler, "OneTimeFix runner was not registered");
end

-- Load the complete production window callback; only messaging registration and broadcast are mocked.
local windowSource = assert(source:match('(OnLoad = function%(self, settings%).-)\n\tOnSave ='), "Cannot locate account window OnLoad");
local tokenSource = assert(source:match('(local function GetSyncIdentityToken.-)local function FindCharacterInfo'), "Cannot locate synchronization token helper");
--- Compiles the real normalizer and window load callback with persistent saved-record fixtures.
---@param character ATTNameTestCharacter Current saved character after native identity refresh.
---@param characterData ATTIdentifierTestCharacterData Saved characters shared by all login sessions.
---@param expectedIdentifier string Required current identifier before AutoSync starts.
---@return ATTIdentifierTestAccountWindow window Production OnLoad callback and native registration stub.
---@return ATTIdentifierTestWindowCalls calls Expected identifier and observed AutoSync count.
local function loadAccountWindow(character, characterData, expectedIdentifier)
	local windowProgram = [[
---@type ATTNameTestCharacter, ATTIdentifierTestCharacterData, ATTIdentifierTestWindowCalls
local character, CharacterData, calls = ...;
local app = { CurrentCharacter = character };
local CurrentCharacter, EnableBattleNet, GetCharacterWhisperTarget, BNGetInfo;
local LinkedCharacters, SilentlyLinkedCharacters = {}, {};
local AddonMessagePrefix, UNKNOWN = "ATTSYNC", "UNKNOWN";
--- Accepts native messaging registrations without emitting in-game events.
---@param target string|ATTIdentifierTestAccountWindow Addon prefix or window receiving event registration.
---@param eventName? string Native event name; omitted when registering the addon prefix.
---@return nil result Registration has no test-side return value.
local function ignoreRegistration(target, eventName) end;
local C_ChatInfo = { RegisterAddonMessagePrefix = ignoreRegistration };
]] .. helpers .. tokenSource .. [[
--- Observes the identity at the point the actual callback starts synchronization.
---@param detail string Broadcast reason supplied by the real callback.
---@param message string Synchronization request supplied by the real callback.
local function BroadcastMessage(detail, message)
	assert(detail == "AutoSync" and message:match("^check,"), "Expected automatic synchronization");
	assert(CurrentCharacter.Identifier == calls.expected, "AutoSync started before the current identifier was rebuilt");
	if calls.other then
		assert(calls.other.Identifier == calls.otherExpected, "AutoSync started before the delayed alt identifier was rebuilt");
	end
	calls.broadcast = calls.broadcast + 1;
end;
local window = { RegisterEvent = ignoreRegistration,
]] .. windowSource .. "\n}; return window";
	---@type ATTIdentifierTestWindowCalls
	local calls = { expected = expectedIdentifier, broadcast = 0 };
	local window = assert(loadstring(windowProgram, "@actual-account-window-load"))(character, characterData, calls);
	return window, calls;
end

---@type ATTPlayerNameTestInitializer
local initializePlayer = assert(loadfile(root .. "/tests/player-names.lua"))("fixtures", root);

---@type ATTIdentifierTestFlavor[]
local flavors = {
	{label="Forever", isRetail=false, build=16001},
	{label="Classic", isRetail=false, build=30400},
	{label="Retail", isRetail=true, build=120000},
};
for _,flavor in ipairs(flavors) do
	---@type ATTIdentifierTestSpellFlags
	local progress = { [123] = true };
	---@type ATTNameTestCharacter
	local repaired = { name="First Last", realm="Realm With Spaces", Identifier="First-Last", Spells=progress, totalTimePlayed=12, lastTimePlayedRecorded=1000 };
	---@type ATTNameTestCharacter
	local other = { name="Alice", realm="Other Realm", Identifier="Alice-OtherRealm", Spells={[456]=true} };
	---@type ATTIdentifierTestCharacterData
	local characterData = { current=repaired, other=other };
	---@type ATTIdentifierTestAccountWideData
	local accountWideData = {};
	loadOneTimeFixes(characterData, flavor.isRetail, flavor.build)(repaired, accountWideData);
	initialize(repaired, accountWideData, characterData);
	assert(repaired.Identifier == nil and other.Identifier == nil, flavor.label .. ": first login must clear all saved identifier caches");
	assert(accountWideData.OneTimeFixes and accountWideData.OneTimeFixes.ResetSavedCharacterIdentifiers == 1, flavor.label .. ": cleanup must save an account-wide completion marker");
	assert(repaired.name == "First Last" and repaired.realm == "Realm With Spaces", "Cache invalidation must preserve full name and realm");
	assert(repaired.Spells == progress and repaired.Spells[123] and other.Spells[456], "Cache invalidation must preserve collection data");
	assert(repaired.totalTimePlayed == 12 and repaired.lastTimePlayedRecorded == 1000, "Cache invalidation must preserve existing play-time data");
	local window, calls = loadAccountWindow(repaired, characterData, "First Last-RealmWithSpaces");
	---@type ATTIdentifierTestWindowSettings
	local settings = { AutoSync = true, EnableBattleNet = false };
	window:OnLoad(settings);
	assert(repaired.Identifier == calls.expected and calls.broadcast == 1, "Window loading must rebuild the current cache before AutoSync");
	assert(other.Identifier == "Alice-OtherRealm", "Window loading must rebuild all saved character identifiers");
	-- Recreate the library for the next login; only SavedVariables survive between sessions.
	loadOneTimeFixes(characterData, flavor.isRetail, flavor.build)(repaired, accountWideData);
	initialize(repaired, accountWideData, characterData);
	window:OnLoad(settings);
	assert(repaired.Identifier == "First Last-RealmWithSpaces" and other.Identifier == "Alice-OtherRealm", flavor.label .. ": second login must retain correct identifier values");
	assert(accountWideData.OneTimeFixes.ResetSavedCharacterIdentifiers == 1, flavor.label .. ": second login must preserve the completion marker");
	-- Native login storage changes the identity; the owning module refreshes its derived cache.
	repaired.name = "First Renamed";
	calls.expected = "First Renamed-RealmWithSpaces";
	window:OnLoad(settings);
	assert(repaired.Identifier == calls.expected and calls.broadcast == 3, "A renamed character must use its new identifier before AutoSync");
	repaired.realm = "Transferred Realm";
	calls.expected = "First Renamed-TransferredRealm";
	window:OnLoad(settings);
	assert(repaired.Identifier == calls.expected and calls.broadcast == 4, "A transferred character must use its new realm before AutoSync");
	-- The alt logs in and updates native identity but never loads Account Management.
	local altApp = initializePlayer({
		full="Alice Shadow", first="Alice", second="Shadow", raw="Updated Realm", build=flavor.build,
		savedName=other.name, savedRealm=other.realm, savedIdentifier=other.Identifier,
	});
	other = altApp.CurrentCharacter;
	characterData.other = other;
	loadOneTimeFixes(characterData, flavor.isRetail, flavor.build)(other, accountWideData);
	assert(other.Identifier == "Alice-OtherRealm", "The completed OneTimeFix must not clear a delayed alt's stale cache again");
	local altProgress = other.Spells;
	calls.other, calls.otherExpected = other, "Alice Shadow-UpdatedRealm";
	window:OnLoad(settings);
	assert(other.Identifier == calls.otherExpected and calls.broadcast == 5, "The main window must refresh the delayed alt before AutoSync");
	assert(repaired.Identifier == calls.expected, "Rebuilding all records must preserve the current character's correct identifier");
	assert(repaired.Spells == progress and repaired.Spells[123] and other.Spells == altProgress and other.Spells[10], "Window loading must preserve collection progress");
	assert(repaired.totalTimePlayed == 12 and repaired.lastTimePlayedRecorded == 1000, "Window loading must preserve existing play-time data");
	tests = tests + 16;
end

local explicitIdentifier = normalize("First Last", "Moon Guard");
local combinedIdentifier = normalize("First Last-Moon Guard");
assert(explicitIdentifier == combinedIdentifier, "Saved character and combined lookup identifiers must agree");
assert(normalize("First Shadow", "Realm") ~= normalize("First Moon", "Realm"), "Distinct surnames must not collapse to one linked character");
tests = tests + 2;
print("PASS linked character identifiers: " .. tests .. " checks");
