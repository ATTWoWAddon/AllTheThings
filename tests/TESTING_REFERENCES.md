# Testing framework references

This is optional reference material for the [testing strategy draft](TESTING_STRATEGY_DRAFT.md). Use it when a concrete test needs a framework feature or a different loading environment. The draft explains the proposed first step; this file collects comparisons and source evidence for later decisions.

No additional framework has been integrated into ATT as part of this proposal. Runtime compatibility, fixture isolation, and failure reporting still need an ATT trial under Lua 5.1.

## Runtime framework choices

| Choice | Advantages | Trade-offs |
| --- | --- | --- |
| **Plain Lua 5.1 + `assert`** | No dependencies; simple CI; already proven by #2673. | Test discovery, setup/teardown, assertions, and reporting remain our responsibility. |
| **[LuaUnit](https://github.com/bluebird75/luaunit)** | Lightweight; richer assertions and test organization; can be vendored. | Mock/spy utilities and most runtime fixtures still need to be supplied. |
| **[Busted](https://github.com/lunarmodules/busted)** | Mature test structure, assertions, spies/stubs, setup/teardown; also used by Questie. | Additional dependencies and tooling complexity; does not solve ATT module loading by itself. |
| **[Lunatest](https://github.com/silentbicycle/lunatest)** | xUnit-style cases plus randomized tests; supports fixed seeds and replaying known regression inputs. | Optional random/time libraries; control seeds and trial counts for reproducibility. ATT loading and fixtures still need to be supplied. |
| **[lunit / lunitx](https://github.com/dcurrie/lunit/blob/master/README.lunitx)** | Small xUnit-style framework with named cases, assertions, setup/teardown, and test selection. | Its documented Lua 5.1 style uses `module()` and test environments; evaluate interaction with ATT globals and fixture isolation. |
| **[Telescope](https://github.com/norman/telescope)** | BDD-style nested contexts, before/after hooks, custom assertions, and reporters. | Requires conversion to its test registration and runner conventions; optional coverage integration is separate from test assertions. |

The additional candidates declare Lua 5.1 compatibility in their package specifications: [Lunatest](https://github.com/silentbicycle/lunatest/blob/master/rockspecs/lunatest-0.9.5-0.rockspec), [lunitx](https://github.com/dcurrie/lunit/blob/master/rockspecs/lunitx-0.8-2.rockspec), and [Telescope](https://github.com/norman/telescope/blob/master/rockspecs/telescope-0.6.0-1.rockspec). These are documentation-based candidates; ATT integration has not been tested. Pin the selected version and verify its dependencies, loading behavior, and failure reporting under Lua 5.1 during a small trial.

Whatever we choose, the test cases and fixtures should not be unnecessarily coupled to framework-specific helpers.

Assertion and analysis tools cover narrower needs: [luassert](https://github.com/lunarmodules/luassert) supplies assertions, spies, and stubs; [LuaCov](https://github.com/lunarmodules/luacov) measures executed-code coverage; [Luacheck](https://github.com/lunarmodules/luacheck) performs static analysis. They can complement a framework, but each needs its own integration and configuration.

## How existing addons load production code

These examples were reviewed on **2026-10-17**. Links are pinned to reviewed source revisions. Third-party tests were not executed locally during the review. Each project supplies its own production-code loader and WoW fixtures alongside the framework; its adoption does not establish ATT compatibility.

### Questie — Busted

A shared bootstrap supplies WoW API, frame, and event substitutes. The player suite loads the complete production `QuestiePlayer.lua` file before each case, then obtains the module through `QuestieLoader`.

[Player tests](https://github.com/Questie/Questie/blob/ef1241ccf348fcab3e98fb41ccb91143b6edd141/Modules/QuestiePlayer.test.lua), [bootstrap](https://github.com/Questie/Questie/blob/ef1241ccf348fcab3e98fb41ccb91143b6edd141/setupTests.lua), and [Lua 5.1 CI](https://github.com/Questie/Questie/blob/ef1241ccf348fcab3e98fb41ccb91143b6edd141/.github/workflows/ci.yml).

### RCLootCouncil — Busted

Its loader supplies WoW API substitutes and can load production Lua, TOC, and XML files. Tests range from a small table utility to loading the addon and simulating login before exercising its methods.

[Utility tests](https://github.com/evil-morfar/RCLootCouncil2/blob/ba8a53ae96903cc5fda083f5d3f497cde3e8f55c/.specs/Classes/Utils/TempTable.spec.lua), [addon loader](https://github.com/evil-morfar/RCLootCouncil2/blob/ba8a53ae96903cc5fda083f5d3f497cde3e8f55c/.specs/AddonLoader.lua), [integration test](https://github.com/evil-morfar/RCLootCouncil2/blob/ba8a53ae96903cc5fda083f5d3f497cde3e8f55c/.specs/Integration/Core/GetIlvlDifference.spec.lua), and [Lua 5.1 CI](https://github.com/evil-morfar/RCLootCouncil2/blob/ba8a53ae96903cc5fda083f5d3f497cde3e8f55c/.github/workflows/busted.yml).

### DisenchantBuddy — Busted

Tests construct an addon table and the required API substitutes, then load complete production files. A focused module suite supplies client-flavor inputs and checks the returned disenchant materials.

[Module tests](https://github.com/BreakBB/DisenchantBuddy/blob/95dd2a1723c18359130513610512027376723e48/DisenchantResults/Rare.test.lua), [addon tests](https://github.com/BreakBB/DisenchantBuddy/blob/95dd2a1723c18359130513610512027376723e48/DisenchantBuddy.test.lua), and [Lua 5.1 CI](https://github.com/BreakBB/DisenchantBuddy/blob/95dd2a1723c18359130513610512027376723e48/.github/workflows/ci.yml).

### AddonProfiles — LuaUnit

The entry point loads WoW API stubs, actual Ace3 libraries, and production Core, AddonManager, and ProfileManager modules. Suites cover initialization, data migration, and profile management with setup/teardown.

[Test entry point](https://github.com/jmervine/AddonProfiles/blob/fc3ac5829243e84a815098a0aaf70b1f998dcfb7/test/test.lua), [Core tests](https://github.com/jmervine/AddonProfiles/blob/fc3ac5829243e84a815098a0aaf70b1f998dcfb7/test/core_test.lua), [CI](https://github.com/jmervine/AddonProfiles/blob/fc3ac5829243e84a815098a0aaf70b1f998dcfb7/.github/workflows/main.yml), and [test image](https://github.com/jmervine/AddonProfiles/blob/fc3ac5829243e84a815098a0aaf70b1f998dcfb7/Dockerfile.test). The image uses an unpinned Lua `latest` tag, so it is not evidence of Lua 5.1 CI compatibility.

DisenchantBuddy offers a small complete-file loading example. RCLootCouncil shows the additional setup involved in a broader TOC/XML loader. Use these to understand the cost of each boundary before choosing how much infrastructure ATT needs.

This review did not find a verified WoW addon adoption example for **Lunatest**, **lunit/lunitx**, or **Telescope**. They remain general Lua candidates; this result does not establish that no addons use them.

## Parser framework compatibility

The [Parser project](../.contrib/src/Parser/Parser.csproj) targets .NET Framework 4.8 and includes NLua/native Lua 5.4 dependencies. These C# choices belong to that environment; ATT runtime tests continue to require Lua 5.1.

The following choices can target .NET Framework 4.8 according to their current documentation/package targets. Compatibility was checked on **2026-10-16**; framework, adapter, test SDK, and runtime versions still need to be selected and verified together in an ATT trial.

| Choice | Useful features for Parser fixtures | Compatibility and trade-offs |
| --- | --- | --- |
| **[NUnit](https://www.nuget.org/packages/NUnit/5.0.0)** | Per-test and one-time setup/teardown; `TestCase` and `TestCaseSource` for input/flavor matrices. | NUnit 5 targets .NET Framework 4.6.2+, covering 4.8. Select a compatible runner or [NUnit3TestAdapter](https://docs.nunit.org/articles/vs-test-adapter/Index.html); the adapter supports NUnit 3, 4, and 5. |
| **[xUnit.net v3](https://xunit.net/docs/getting-started/v3/getting-started)** | Facts/theories, a fresh test-class instance per test, and shared fixtures for expensive setup. | Supports .NET Framework 4.7.2+, covering 4.8. Requires an [SDK-style test project](https://xunit.net/docs/getting-started/v3/migration) that builds as an executable; choose and configure its Microsoft.Testing.Platform or VSTest integration. |
| **[MSTest](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-mstest-intro)** | Assembly/class/test lifecycle, `DataRow`/`DynamicData`, and Microsoft test-tool integration. | Supports .NET Framework 4.6.2+, covering 4.8. Choose framework/adapter/test-SDK packages or [MSTest.Sdk](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-mstest-sdk), whose default runner is Microsoft.Testing.Platform; account for the selected project's CI/reporting configuration. |

The test project's SDK and runner requirements are separate from the Parser's production target. An SDK-style test project can still target .NET Framework 4.8. Keep the real Parser's .NET Framework/NLua/native Lua dependencies in the experiment, initially on Windows with matching process/native-library architecture. Framework compatibility alone does not establish Parser portability.

Treat [xUnit v2](https://www.nuget.org/packages/xunit) as a legacy option: its package is marked deprecated and receives security fixes only. Evaluate v3's requirements explicitly for a new test project.

Selecting a C# test framework should follow a small experiment: can the relevant Parser operations be exercised in isolation without extensive refactoring or hidden global-state leakage? Check fixture cleanup and repeatability as well as assertion syntax and test discovery.

**Important:** A CI job intended to validate Parser C# source changes must build and test that source. Running only a checked-in `Parser.exe` would not validate modifications to the C# implementation.

## WoW-specific environments

These address the addon execution environment or in-game testing and should be evaluated against a specific need:

| Option | Environment | Useful scope and trade-offs |
| --- | --- | --- |
| **[Wowless](https://github.com/wowless/wowless)** | Headless WoW Lua/FrameXML environment using Elune, a WoW-aware Lua 5.1 fork. | Can exercise broader addon loading and UI/API interactions. Its project describes itself as pre-alpha; failures may come from the emulator, and setup/diagnosis costs need evaluation. |
| **[WoWUnit](https://github.com/Jaliborc/WoWUnit)** | Test addon running inside WoW, with monitoring UI and startup/event-driven execution. | Supports assertions and temporary global/table substitutions against a live-client environment. Requires in-game addon integration; it is a different execution path from the current standalone Linux CLI suites. |

The following integrations were reviewed on **2026-10-17**, with source links pinned to reviewed revisions. They were not executed locally. Their environments and evidence differ from a standalone Linux Lua test.

### Scrap — WoWUnit

Its [TOC](https://github.com/Jaliborc/Scrap/blob/c768db5539b2cd52c01c89af46b4562bbd169a31/Scrap.toc) declares WoWUnit as an optional dependency, and [XML](https://github.com/Jaliborc/Scrap/blob/c768db5539b2cd52c01c89af46b4562bbd169a31/addons/main/main.xml) loads tests after production files. The [tests](https://github.com/Jaliborc/Scrap/blob/c768db5539b2cd52c01c89af46b4562bbd169a31/addons/main/tests.lua) run in-game when WoWUnit is present, temporarily replace settings and the junk list, and call the real `Scrap:IsJunk()` method for specific item IDs.

### PetTracker — WoWUnit

The production [XML loader](https://github.com/Jaliborc/PetTracker/blob/9a4cfef00c6a6275ff114c09d384e53e34cbe1e8/addons/main/main.xml) includes a [test XML file](https://github.com/Jaliborc/PetTracker/blob/9a4cfef00c6a6275ff114c09d384e53e34cbe1e8/addons/main/tests/tests.xml). Its [search tests](https://github.com/Jaliborc/PetTracker/blob/9a4cfef00c6a6275ff114c09d384e53e34cbe1e8/addons/main/tests/search.lua) use real species/rival objects and the addon's search method; quality cases temporarily replace a pet-collection query.

### ArcUI (`Jinxit/arcui-fork` repository) — Wowless

A [CI workflow](https://github.com/Jinxit/arcui-fork/blob/88afb1dc4cf23f49ad80fb35db3c69d5bfa5dc66/.github/workflows/wowless.yml) mounts the addon into a prebuilt Wowless container and loads it in the headless environment. A separate error matcher compares captured errors with an accepted-error baseline and determines failure. This demonstrates addon-loading checks; it does not replace focused behavioral assertions or live-client verification.

Evaluate an in-game framework or emulator only when the behavior under test requires that environment. A passing emulator check still needs to be interpreted against its supported APIs and client data.
