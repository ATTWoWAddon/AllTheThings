-- Standalone regression tests for linked character name and realm identifiers.
-- Run from the repository root: lua .contrib/tests/linked-character-identifiers.lua [repository-root]
local root = arg[1] or ".";
local unpackValues = table.unpack or unpack;
local file = assert(io.open(root .. "/src/UI/Windows/Account Management.lua", "rb"));
local source = file:read("*a"):gsub("\r\n", "\n");
file:close();
local helpers = assert(source:match("(local function TrimString.-)local function AddCharacterLookup"), "Cannot locate linked character identifier helpers");
local chunk = assert((loadstring or load)("local app, CurrentCharacter = ...\nlocal GetCharacterWhisperTarget;\n" .. helpers .. "\nreturn NormalizeLinkedCharacterIdentifier", "@actual-linked-character-identifiers"));
local normalApp = { IsForever = false };
local currentCharacter = { realm = "Realm With Spaces" };
local normalize = chunk(normalApp, currentCharacter);
local tests = 0;
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

-- Exercise the actual SavedVariables initialization to invalidate disposable parsed identifiers.
local initSource = assert(source:match('(app.AddEventHandler%("OnSavedVariablesAvailable".-\nend%))'), "Cannot locate account SavedVariables initialization");
local initProgram = [[
local handler;
local app = { AddEventHandler = function(_, fn) handler = fn; end };
local CurrentCharacter, AccountWideData, CharacterData, cachedTotalTimePlayed, suppressTimePlayed;
local time = function() return 1000; end;
local RequestTimePlayed = function() error("Unexpected play-time request"); end;
]] .. initSource .. "\nreturn handler";
local initialize = assert((loadstring or load)(initProgram, "@actual-account-saved-variables"))();
local progress = { [123] = true };
local repaired = { name="First Last", realm="Realm With Spaces", Identifier="First-Last", Spells=progress, totalTimePlayed=12, lastTimePlayedRecorded=1000 };
local other = { name="Alice", realm="Other Realm", Identifier="Alice-OtherRealm", Spells={[456]=true} };
initialize(repaired, {}, { current=repaired, other=other });
assert(repaired.Identifier == nil and other.Identifier == nil, "Saved identifier caches must be rebuilt");
assert(repaired.name == "First Last" and repaired.realm == "Realm With Spaces", "Cache invalidation must preserve full name and realm");
assert(repaired.Spells == progress and repaired.Spells[123] and other.Spells[456], "Cache invalidation must preserve collection data");
assert(repaired.totalTimePlayed == 12 and repaired.lastTimePlayedRecorded == 1000, "Cache invalidation must preserve existing play-time data");
assert(forever(repaired.name, repaired.realm) == "First Last-RealmWithSpaces", "Already-correct fullname must rebuild its stale parsed identifier");
tests = tests + 5;

local explicitIdentifier = normalize("First Last", "Moon Guard");
local combinedIdentifier = normalize("First Last-Moon Guard");
assert(explicitIdentifier == combinedIdentifier, "Saved character and combined lookup identifiers must agree");
assert(normalize("First Shadow", "Realm") ~= normalize("First Moon", "Realm"), "Distinct surnames must not collapse to one linked character");
tests = tests + 2;
print("PASS linked character identifiers: " .. tests .. " checks");
