# Lua regression tests

These tests run selected ATT code outside World of Warcraft. They read the
production files from the current checkout, provide the game APIs and saved data
that the code needs, and check the results. This lets us catch regressions in
names, tooltips, identifiers, and account synchronization without starting the game.

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

## How the tests connect to ATT code

A **unit under test** is an ATT function, initialization block, or event callback.
A **fixture** is the small world created for a test: character records, settings,
and API responses. A **mock** replaces a game service and can record how it was
called. An **assertion** compares what the real code did with the expected result.

```mermaid
flowchart TD
    source["Production Lua files in this checkout"] --> loader["Read and select the relevant code"]
    loader --> unit["Compile and run real ATT code"]
    fixture["Fixture: saved data and fake APIs"] --> unit
    unit --> call["Call a function or deliver an event"]
    call --> check["Check values, changed records, and recorded calls"]
    check --> result["Report results and return a suite exit code"]
```

The connection works as follows:

1. **Read the source.** The suites use `io.open()` to read the current production
   files. A change to those files is therefore picked up on the next test run.
2. **Select the code.** Most suites locate functions or sections with Lua string
   patterns. For example, `player-names.lua` takes the name/class setup between
   two comments in `src/base.lua`. The selected text is the production code;
   the test does not maintain a second implementation of that logic.
3. **Provide its surroundings.** A small wrapper supplies locals such as `app`
   that would normally come from addon startup. `loadstring()` compiles the code.
   Some suites use `setfenv()` to supply fake global APIs; others pass services
   into the wrapper as arguments. Standard Lua functions remain available.
4. **Exercise the unit.** The wrapper exposes local functions or captures event
   callbacks so the test can call them directly. Tests then inspect returned
   values, saved records, tooltip rows, or calls recorded by the mocks.

The suites load selected regions rather than starting the entire addon.
`player-names.lua` also executes the complete
[WoW API Wrappers.lua](../src/WoW%20API%20Wrappers.lua) file with fixture APIs.

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

| Suite | Production code it connects to | Results it checks |
| --- | --- | --- |
| [player-names.lua](player-names.lua) | [API wrappers](../src/WoW%20API%20Wrappers.lua), name/class setup in [base.lua](../src/base.lua), character storage in [AllTheThings.lua](../AllTheThings.lua), and name selection plus `CacheCharacterDataFromAPIs` in [CharacterClass.lua](../src/Classes/CharacterClass.lua). | Complete native names and actual realms survive login; existing spell/profession data survives; unit-token and GUID lookups use the intended APIs. |
| [character-names.lua](character-names.lua) | The Known By / Completed By functions and shared formatter in [Interface - Information.lua](../src/Settings/Pages/Interface%20-%20Information.lua), plus Summary serialization/deserialization in [Account Management.lua](../src/UI/Windows/Account%20Management.lua). | Local realm suffixes are hidden correctly; foreign realms, surnames, colors, custom text, and quantities survive; Summary updates preserve identity or invalidate its cache as appropriate. |
| [linked-character-identifiers.lua](linked-character-identifiers.lua) | Identifier helpers, SavedVariables initialization, sync identity, and window `OnLoad` in [Account Management.lua](../src/UI/Windows/Account%20Management.lua); one-time fix registration and execution in [Refresh.lua](../lib/Refresh.lua). | Identifiers are normalized correctly; old caches are cleared once; window loading rebuilds identifiers after identity changes and before AutoSync; collection data survives. |
| [character-whispers.lua](character-whispers.lua) | Transport, message/event handlers, link-popup callback, and queue progress/cancellation callbacks in [Account Management.lua](../src/UI/Windows/Account%20Management.lua). | Native targets, logical links, chunks, acknowledgements, sender authorization, message-size boundaries, and queue cancellation remain consistent. |

The name fixtures provide fake name, realm, class, race, and GUID APIs and count
calls to them. The tooltip fixtures provide saved characters, collection state,
item quantities, and localization labels. The identifier fixtures retain saved
records across simulated logins. The whisper fixtures record chat/Battle.net
calls and control time and coroutine progress; they do not send network messages.

A pass establishes the checked behavior under those fixture conditions. Live game
API behavior, server delivery, and rendered in-game UI still need game validation.

## How to read failures

- A missing file, unmatched source section, or compilation error fails during
  setup. A renamed comment or moved function boundary can require updating the
  extraction pattern even when the behavior remains correct.
- An assertion failure means the selected code ran but produced a result or side
  effect that did not match the case's expectation. Read the case name and error
  message to find the input and the differing value.
- `player-names.lua` and `character-names.lua` continue after individual case
  failures and exit with status 1 after reporting them. The identifier and whisper
  suites stop at their first failed assertion or error.

When production code is refactored, check that the extraction still selects the
intended unit and its required helpers before changing the expected results.

## How CI runs the suites

[LuaRegression.yml](../.github/workflows/LuaRegression.yml) runs on Ubuntu 26.04
and explicitly installs Lua 5.1. It starts automatically for matching addon,
test, and workflow changes in branch pushes and pull requests. Once the workflow
is on the default branch, it can also be started through **Actions → Lua Regression
Tests → Run workflow**.

CI recursively finds every `.lua` file under `tests/`, sorts paths with the `C`
locale, and runs them **sequentially in separate Lua processes**. A failed suite
does not stop later suites. Each file's result and exit code appears in the job
summary. The final **Full Success Check** rejects any failed suite, incomplete
execution, or an empty test set. This README is not a Lua file and is not executed.

## Adding or extending a test

1. Add a case to the suite that already exercises the relevant unit, or create a
   standalone `.lua` suite under `tests/`. CI discovers new suites automatically.
2. Read the production source and select the unit and any helpers it needs. Use
   clear boundaries and an `assert()` with a useful message when extraction fails.
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
