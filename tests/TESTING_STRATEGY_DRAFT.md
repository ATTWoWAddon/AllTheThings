# Testing Strategy for AllTheThings (Draft)

> **Status:** Proposal for review. No new framework or shared test architecture has been selected.

This proposal starts with one existing ATT regression test, follows how it reaches production code, and identifies the next useful improvement. Framework comparisons and other addons' implementations are collected in the optional [reference document](TESTING_REFERENCES.md).

## Start with a behavior we want to preserve

Suppose a character's complete name is `Milo River`, and the realm is `Winter And Rivers`. An old saved record contains `Milo` as the name and `River` as the realm. On login, ATT should repair both fields while keeping the character's collection data.

The [player-name suite](player-names.lua) already tests this Forever scenario. It supplies those name values and the stale record, runs ATT's initialization code, and checks the saved result:

```text
Before login: name = "Milo",       realm = "River"
Client input: name = "Milo River", realm = "Winter And Rivers"
After login:  name = "Milo River", realm = "Winter And Rivers"
```

This makes the failure concrete: code that mistakes the surname for a realm, loses part of the complete name, or discards existing collection data should fail a check. A regression test preserves that expectation when the production code changes.

The test runs outside WoW under **Lua 5.1**. Its API responses are controlled inputs. A pass establishes what ATT does with those inputs; confirming the real client's responses still requires observations from the relevant flavor and build.

## Follow the test into production code

The test needs a small surrounding world before it can run login code. It creates saved character data and supplies functions that return the chosen name, realm, and client build. This setup is the **fixture**. Its replacement game APIs are **stubs**: they give the production code predictable answers without starting WoW.

The fixture then executes code read from the current checkout. It loads the complete [WoW API wrapper file](../src/WoW%20API%20Wrappers.lua), followed by the selected name-initialization block from [base.lua](../src/base.lua) and character-storage block from [AllTheThings.lua](../AllTheThings.lua). Those blocks receive the `app` object and API environment they need.

Finally, **assertions** compare the resulting saved fields with the expected values and check that existing spell and profession data survived. The expectations come from the scenario; the test does not implement a second version of ATT's name-handling logic.

The [test README](README.md#how-the-tests-connect-to-att-code) shows the loading steps and a runnable fixture example. It also maps the other suites to their production units. For day-to-day commands and failure diagnosis, start there.

In [PR #2673](https://github.com/ATTWoWAddon/AllTheThings/pull/2673), CI automates these existing suites on Ubuntu 26.04 with Lua 5.1. It discovers Lua files recursively, sorts their paths, runs each in a fresh process, continues after failures, and accepts or rejects the run only after all suites finish. That establishes a working execution path for these tests; the broader architecture remains open.

## Improve how the code is loaded

The example exposes a maintenance cost. The wrapper file is loaded whole, but the name and login blocks are located with source-text patterns. Moving a comment or changing a section boundary can break setup even if the behavior is unchanged.

For a suitable module, the next improvement is to execute its entire production file with a small `app` object and only the external services it needs. This removes the extraction boundary. It can also reveal dependencies on startup order, events, or unrelated game APIs, so it should be tried on one representative module first.

[DisenchantBuddy's tests](TESTING_REFERENCES.md#disenchantbuddy--busted) provide a useful example: create an addon table, supply the required APIs, load production files, then check the returned materials. The important connection is between that setup and real module behavior. The framework gives the cases structure and assertions.

A broader loader can read TOC/XML and reproduce more startup context, as [RCLootCouncil demonstrates](TESTING_REFERENCES.md#rclootcouncil--busted). That is a larger maintenance commitment. If one ATT module requires dozens of unrelated API substitutes, first reconsider the chosen boundary rather than immediately building a general fake client.

## Choose a framework when the test needs it

The current suites use ordinary Lua assertions and custom reporting. They already answer whether the selected behavior passed. A framework becomes useful when repeated work starts getting in the way: resetting fixtures, describing cases, comparing complex results, or recording calls.

LuaUnit is one option for richer assertions and test organization; [AddonProfiles](TESTING_REFERENCES.md#addonprofiles--luaunit) combines it with WoW API stubs and actual addon modules. Busted also provides case structure and spies/stubs, as the DisenchantBuddy example shows. Either choice still leaves ATT responsible for loading its code and supplying credible inputs.

Compare those benefits using the same small ATT test. Keep a framework only if it makes the case and its failures easier to understand at an acceptable dependency cost. Detailed [Lua candidates and supporting tools](TESTING_REFERENCES.md#runtime-framework-choices) are available for that comparison; no migration is proposed yet.

## Extend the approach when another boundary needs it

A runtime test cannot establish every part of ATT's behavior. The Parser transforms source data before the addon consumes it. A useful Parser regression would feed a tiny flavor-specific fixture through the real transformation and check the result. The [Parser project](../.contrib/src/Parser/Parser.csproj) targets .NET Framework 4.8 and uses NLua/native Lua 5.4 dependencies, so this needs its own C# execution setup. Its [framework and runner compatibility notes](TESTING_REFERENCES.md#parser-framework-compatibility) belong to that later experiment.

Generated output can then be checked with rules that should hold across records, or with a small reviewed input/output example. Each rule must account for legitimate flavor differences. Whole-database snapshots would make routine content changes expensive to review; begin with a specific output contract that has caused trouble.

Game-dependent behavior needs observations from the client. Record the flavor, build, locale, scenario, and observed values or events when an observation becomes an offline fixture. This keeps the fixture's assumptions visible when clients change. [WoWUnit and Wowless examples](TESTING_REFERENCES.md#wow-specific-environments) show optional ways to exercise more of the environment, with different costs and limits.

## Make the next change small enough to review

The proposed first step is one runtime module-loading experiment:

1. Choose a representative module and a behavior that matters, preferably a known regression.
2. Load its unmodified production file under Lua 5.1 with explicit inputs and minimal external services.
3. Show that the intended behavior passes and that a realistic wrong result would fail the assertion. Check that repeated runs start from clean state.
4. Record the setup cost and whether a harmless source refactor would break the test. Use that evidence to decide whether shared loading code or a framework would help.

Success means a maintainer can follow the inputs through real ATT code to a useful assertion without maintaining a growing fake WoW environment. Keep source extraction available for existing cases while evaluating a better boundary; there is no need for a wholesale rewrite.

After reviewing that result, a separate Parser fixture experiment can test whether the same approach is practical there. Build and exercise changed Parser source, include its native dependencies, and verify deterministic output and cleanup. Running only a checked-in executable would not validate C# changes. Keep existing full multi-flavor Parser runs while adding focused fixtures.

As checks are added, ensure CI watches their actual source paths, including `.contrib/src/Parser/**` for Parser work. Report setup/build failures separately from behavior failures, and make a check merge-blocking only when its assumptions and failures are understood. Maintainers still need to agree on the first module, ownership of its fixtures, and any framework choice that the experiment supports.
