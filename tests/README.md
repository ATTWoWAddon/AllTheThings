# Lua regression tests

These tests run selected ATT code outside World of Warcraft. They read the
production files from the current checkout, provide the game APIs and saved data
that the code needs, and check the results. This lets us catch regressions in
character data, collection tooltips, API compatibility, sorting, and window
setup without starting the game.

The [testing strategy draft](TESTING_STRATEGY_DRAFT.md) walks through one existing
regression and proposes the next small step. Detailed [framework comparisons and
addon examples](TESTING_REFERENCES.md) are optional reading. Framework choices
remain open for review.

## Run a suite locally

Use **Lua 5.1**. No LuaRocks packages or separate test framework are required.
Run these commands from the repository root:

```sh
lua5.1 -e 'assert(_VERSION == "Lua 5.1", "Lua 5.1 is required")'
lua5.1 tests/player-names.lua
```

Replace the second command's filename to run another suite. Each suite also accepts
a repository-root path as its first argument; the default is `.`. If your Lua 5.1
executable has a different name, use its path in place of `lua5.1` and keep the
version check. A generic `lua` command may select a different Lua version.

The Information settings suite can also write the option inventory it checks to
a CSV file. Supply the repository root and then the output path:

```sh
lua5.1 tests/information-settings.lua . /tmp/att-information-settings.csv
```

Without that optional second argument, it only runs its assertions.

## How the tests connect to ATT code

A **unit under test** is an ATT function, initialization block, or event callback.
A **fixture** is the small world created for a test: character records, settings,
and API responses. A **mock** replaces a game service and can record how it was
called. An **assertion** compares what the real code did with the expected result.

```text
Production Lua files in this checkout
  -> Load a file or select a code block
  -> Compile and run real ATT code <- Fixture: saved data and fake APIs
  -> Call a function or deliver an event
  -> Check values, changed records, and recorded calls
  -> Report results and return a suite exit code
```

The connection works as follows:

1. **Read the source.** The suites load code from the current production files.
   A change to those files is therefore picked up on the next test run.
2. **Choose the loading boundary.** Some suites execute complete files; others
   locate functions or sections with Lua string patterns. For example,
   `player-names.lua` takes the name/class setup between
   two comments in `src/base.lua`. The selected text is the production code;
   the test does not maintain a second implementation of that logic.
3. **Provide its surroundings.** Suites supply addon arguments such as `app`
   and the game services normally available at startup. `loadfile()` loads whole
   files; `loadstring()` compiles selected text. Some suites use `setfenv()` for
   fixture globals; others supply globals or arguments directly. Standard Lua
   functions remain available.
4. **Exercise the unit.** Tests call the loaded functions or captured event
   callbacks, then inspect returned values, saved records, tooltip rows, or calls
   recorded by the mocks.

The suites load only the source needed for their scenarios. For example,
`wow-api-wrappers.lua` executes the complete
[wrapper module](../src/WoW%20API%20Wrappers.lua), and `information-settings.lua`
executes the complete [Information page](../src/Settings/Pages/Interface%20-%20Information.lua)
with fake controls. Both still need fixture services normally provided by addon
startup and the game.

### A concrete example: login data becomes tooltip input

[player-names.lua](player-names.lua) can be loaded in `"fixtures"` mode. In this
mode it returns its `initialize` function without running its own test cases.
This runnable example uses that function to execute the real wrapper, base-name,
and login-storage code:

```lua
local initialize = assert(loadfile("tests/player-names.lua"))("fixtures", ".")
local app = initialize({
    full = "Milo River",
    first = "Milo",
    second = "River",
    raw = "Local Realm",
    regionalNames = true,
})

assert(app.CurrentCharacter.name == "Milo River")
assert(app.CurrentCharacter.realm == "Local Realm")
```

Here the fixture makes the native complete-name API return `Milo River` and the
realm API return `Local Realm`. ATT's actual initialization code fills
`app.CurrentCharacter`; the assertions check that resulting record.

[character-names.lua](character-names.lua) uses the same initializer, then passes
its saved character record into the real tooltip and Summary code.
[linked-character-identifiers.lua](linked-character-identifiers.lua) uses it to
model an alt logging in before its Account Management window loads. The shared
initializer covers wrapper/base/login setup; each consuming suite supplies the
additional services needed by its own units.

## What each suite tests

Each row names an independently runnable suite. The groups describe related
behavior; CI discovers the files directly rather than using this table.

### Character identity and synchronization

| Suite | Production code it connects to | Results it checks |
| --- | --- | --- |
| [player-names.lua](player-names.lua) | [API wrappers](../src/WoW%20API%20Wrappers.lua), name/class setup in [base.lua](../src/base.lua), character storage in [AllTheThings.lua](../AllTheThings.lua), and name selection plus `CacheCharacterDataFromAPIs` in [CharacterClass.lua](../src/Classes/CharacterClass.lua). | Complete native names and actual realms survive login; existing spell/profession data survives; unit-token and GUID lookups use the intended APIs. |
| [character-names.lua](character-names.lua) | The Known By / Completed By functions and shared formatter in [Interface - Information.lua](../src/Settings/Pages/Interface%20-%20Information.lua), plus Summary serialization/deserialization in [Account Management.lua](../src/UI/Windows/Account%20Management.lua). | Local realm suffixes are hidden correctly; foreign realms, surnames, colors, custom text, and quantities survive; Summary updates preserve identity or invalidate its cache as appropriate. |
| [linked-character-identifiers.lua](linked-character-identifiers.lua) | Identifier helpers, SavedVariables initialization, sync tokens, and window `OnLoad` in [Account Management.lua](../src/UI/Windows/Account%20Management.lua), using the shared player fixture. | Identifiers are normalized correctly; initialization preserves cached identifiers, collection data, and playtime; window loading rebuilds stale identifiers before AutoSync, including after a delayed alt login. |
| [character-whispers.lua](character-whispers.lua) | Transport, message/event handlers, link-popup callback, and queue progress/cancellation callbacks in [Account Management.lua](../src/UI/Windows/Account%20Management.lua). | Native targets, logical links, chunks, acknowledgements, sender authorization, message-size boundaries, and queue cancellation remain consistent. |

### Information tooltips and settings

| Suite | Production code it connects to | Results it checks |
| --- | --- | --- |
| [character-tooltip.lua](character-tooltip.lua) | Known By / Completed By / Useful For processors and the shared formatter in [Interface - Information.lua](../src/Settings/Pages/Interface%20-%20Information.lua), ProfessionRanks serialization in [Account Management.lua](../src/UI/Windows/Account%20Management.lua), and SkillDB from [ReferenceDB.lua](../db/Standard/ReferenceDB.lua). | Realm/faction grouping and counts, identity formatting, collection and recipe eligibility across flavor fixtures, and numeric profession-rank round trips including stale-rank removal. |
| [information-achievements.lua](information-achievements.lua) | Value lookup and the achievement registration in the [Information page](../src/Settings/Pages/Interface%20-%20Information.lua). | Achievement IDs survive processing; source-quest notices appear only for the expected flavor fixtures. |
| [information-binding.lua](information-binding.lua) | The conversion prefix of the [Information page](../src/Settings/Pages/Interface%20-%20Information.lua). | Binding labels, ambiguous binding types, item-link lookup precedence, explicit metadata, unloaded-item fallbacks, and optional localization globals. |
| [information-pets.lua](information-pets.lua) | The Owned Pets registration and processor in [BattlePet.lua](../src/Classes/BattlePet.lua). | Owned combat/noncombat pet rows, shared headings, journal ordering, missing stats, fallback names/qualities, and an empty journal. |
| [information-quests.lua](information-quests.lua) | Quest-text helpers, lore, and Objectives registration in [Quests.lua](../src/Classes/Quests.lua), plus lore registration in the [Information page](../src/Settings/Pages/Interface%20-%20Information.lua). | Modern/legacy text reads, restored quest selection after errors, independent Lore/Objectives toggles, refreshed lore, missing entries, and later log re-entry. |
| [information-settings.lua](information-settings.lua) | The complete [Information page](../src/Settings/Pages/Interface%20-%20Information.lua), defaults/getter/setter in [Settings.lua](../src/Settings/Settings.lua), unit-tooltip gates in [Tooltip.lua](../src/Modules/Tooltip.lua), and late registrations from class modules. | Checkbox state/writes, processing gates, cache invalidation, presets, profile isolation, hidden overrides, late registration, control reuse/layout, and selected modifier consumers. |

### Runtime APIs, caches, and windows

| Suite | Production code it connects to | Results it checks |
| --- | --- | --- |
| [retail-profession-ranks.lua](retail-profession-ranks.lua) | Complete [API wrappers](../src/WoW%20API%20Wrappers.lua) and [callback scheduler](../lib/Callback.lua), plus rank initialization before window creation in [Retail/Tradeskills.lua](../src/UI/Windows/Retail/Tradeskills.lua). | Personal base/expansion ranks, foreign views, profession removal, coalesced refreshes, timestamps/cache invalidation, and Classic Era fallback without recipe APIs. |
| [wow-api-wrappers.lua](wow-api-wrappers.lua) | The complete [WoW API Wrappers.lua](../src/WoW%20API%20Wrappers.lua) module in separate fixture environments. | Metadata, transport, chat, merchant, and specialization wrapper selection; missing-API fallbacks; merchant tuple adaptation. |
| [sort-secret-values.lua](sort-secret-values.lua) | The complete [Sort.lua](../lib/Sort.lua) module and its string comparator. | Case-insensitive comparison and secret-value ordering using a stub secret classifier. |
| [window-suffix-migration.lua](window-suffix-migration.lua) | Complete [Refresh.lua](../lib/Refresh.lua) and [White and Gray Transmog.lua](../src/UI/Windows/White%20and%20Gray%20Transmog.lua), plus declaration checks in [Windows.xml](../src/UI/Windows/Windows.xml) and [Window Definitions.lua](../src/UI/Window%20Definitions.lua). | Saved window/profile migration, old/new conflicts, anchors, idempotence, lazy construction, aliases, and declaration wiring. |

### What the fixtures establish

Character fixtures supply saved records and name/realm APIs. Tooltip fixtures
add collection state, recipe metadata, inventory, and grouping settings. Whisper
fixtures record transport calls without sending network messages. Profession
fixtures manually flush callbacks recorded by the real scheduler.

The Information settings suite uses fake controls and processor spies to check
option wiring and processing gates. It does not validate every processor's
implementation or rendered layout. The quest suite checks text/selection flows;
its empty objective-list fixture does not cover all structured-objective cases.

Wrapper fixtures check API selection and data adaptation, not the real client's
API contracts. The sorting fixture marks ordinary strings as secret; it does not
create protected game values. Window migration checks saved data and declaration
wiring without constructing the real UI.

A pass establishes the checked behavior under those fixture conditions. Live game
API behavior, server delivery, and rendered in-game UI still need game validation.

## How to read failures

- A missing file, unmatched source section, or compilation error fails during
  setup. A renamed comment or moved function boundary can require updating the
  extraction pattern even when the behavior remains correct.
- An assertion failure means the selected code ran but produced a result or side
  effect that did not match the case's expectation. Read the case name and error
  message to find the input and the differing value.
- `player-names.lua`, `character-names.lua`, and `character-tooltip.lua` continue
  after individual case failures and exit with status 1 after reporting them.
  The other current suites stop at their first failed assertion or error.
  CI continues with later suites in either case.

When production code is refactored, check that the extraction still selects the
intended unit and its required helpers before changing the expected results.

## How CI runs the suites

[LuaRegression.yml](../.github/workflows/LuaRegression.yml), introduced by
[PR #2673](https://github.com/ATTWoWAddon/AllTheThings/pull/2673), runs on Ubuntu
26.04 and explicitly installs Lua 5.1. It starts automatically for matching addon,
test, and workflow changes in branch pushes and pull requests. It can also be
started through **Actions → Lua Regression Tests → Run workflow**.

CI recursively finds every `.lua` file under `tests/`, sorts paths with the `C`
locale, and runs them **sequentially in separate Lua processes**. A failed suite
does not stop later suites. Each file's result and exit code appears in the job
summary. The final **Full Success Check** rejects any failed suite, incomplete
execution, or an empty test set. This README is not a Lua file and is not executed.

## Adding or extending a test

1. Add a case to the suite that already exercises the relevant unit, or create a
   standalone `.lua` suite under `tests/`. CI discovers new suites automatically.
2. Load a whole production file when practical, or select the unit and required
   helpers. Give any extraction clear boundaries and an `assert()` with a useful
   message when the expected source cannot be located.
3. Supply the required game services and saved records. Define their responses
   explicitly and record calls or changed state that matter to the behavior.
4. Call the real unit and assert its result. Include an input that reproduces the
   regression and related boundary cases; keep expected results independent of
   the implementation being tested.
5. Use Lua 5.1, document the test architecture at the top of the file, and ensure
   an assertion or setup error results in a nonzero process exit.

Every `.lua` file under `tests/`, including nested directories, must be runnable
as a suite. Keep helper-only Lua modules outside that discovery tree. A shared
file placed here must also have a standalone test mode, as `player-names.lua` does.

The `tests/` directory is excluded from addon release packages and `git archive`
by [.pkgmeta](../.pkgmeta) and [.gitattributes](../.gitattributes).
