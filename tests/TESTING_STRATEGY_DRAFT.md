# Testing Strategy for AllTheThings (Draft)

> **Status:** Proposal for repository review — no framework or architecture decision has been made.
>
> **Scope:** ATT runtime (Lua), Parser (C# / embedded Lua), and generated database data.
>
> **Context:** [PR #2673](https://github.com/ATTWoWAddon/AllTheThings/pull/2673) demonstrates that Lua 5.1 regression suites can run in GitHub Actions. It is a CI proof of concept, **not** the proposed long-term testing architecture.

## Why discuss this?

We want regression tests that catch real defects without turning the test environment into another large project to maintain.

WoW in-game testing remains the most authoritative way to verify real client behavior, but it is expensive to repeat and difficult to automate. Offline tests are faster, but their results are only as trustworthy as their assumptions, fixtures, and mocks.

The challenge is to balance:

| Goal | What we need to avoid |
| --- | --- |
| **Maintainability** | Tests that break after harmless refactors; large mock systems; frequent snapshot updates. |
| **Extensibility** | Every new test requiring changes to a central test framework or another custom runner. |
| **Accuracy** | Tests proving that mocks agree with the implementation rather than with actual behavior. |
| **Execution cost** | Running a complete Parser build or manually checking WoW for every small change. |

A higher test count or greater code coverage is not necessarily better if it comes with weak assertions or unrealistic fixtures.

## Proposed direction: minimal mocking, real code, targeted checks

Rather than adopting a full WoW emulator or a comprehensive test hierarchy immediately, start with a small number of useful test boundaries.

| Boundary | Test approach | What a passing result establishes |
| --- | --- | --- |
| **Runtime logic** | Run real Lua code against explicit inputs; mock only required external services. | The selected logic behaves as expected for those inputs. |
| **Parser behavior** | Exercise real Parser code using small, controlled fixtures. | The selected transformations and flavor rules produce the expected result. |
| **Generated data** | Validate semantic invariants and a few focused, reviewed expected outputs. | The checked data rules and output contracts hold. |
| **WoW client behavior** | Verify important or uncertain behavior in-game; retain reproducible observations when useful. | The observed client/build/flavor behaved that way in the tested scenario. |

These are **testing boundaries**, not necessarily four separate frameworks, directories, or CI workflows.

### Guiding principles

1. **Test production code, not a duplicate implementation.** Prefer executing actual modules and Parser code over reimplementing their behavior in a test.
2. **Mock at the external boundary.** Provide only the WoW APIs, data, time, messages, or events needed for the scenario; avoid a general-purpose fake WoW client.
3. **Keep assumptions visible.** A mocked API response is test input, not evidence that Blizzard's API actually behaves that way.
4. **Prefer behavior over source layout.** Tests should not depend on comments, whitespace, or function position when a real module can be loaded instead.
5. **Use observed client behavior where it matters.** Record flavor, build, locale, and circumstances for in-game observations reused as offline fixtures.
6. **Keep regression tests focused.** Test known failure modes, edge cases, invariants, and critical workflows rather than pursuing a coverage percentage.
7. **Add shared infrastructure only when duplication justifies it.** A small, local fixture is often easier to understand than a configurable global mock registry.
8. **A failing test should be actionable.** It should identify the behavior that changed, not merely report a huge generated-file diff.

## Runtime Lua testing

ATT runtime is designed for the WoW Lua environment, and its modules depend on the `app` object, game APIs, initialization order, and events. We should not assume all modules are standalone.

### Preferred loading approach

For modules that support it, use a minimal test loader to execute the **entire production file** with the addon arguments and required dependencies. Keep the loader independent of the assertion framework.

Some existing regression suites extract source ranges with Lua string patterns. This was useful for the initial CI proof of concept, but changing comments or moving code can break extraction without changing behavior. Treat source extraction as a temporary or exceptional technique, rather than the default for new tests.

There is no requirement to rewrite every module for testability. If a module requires dozens of unrelated API mocks to load, consider testing a narrower, stable code boundary or leaving that behavior to in-game verification.

### Framework candidates

| Choice | Advantages | Trade-offs |
| --- | --- | --- |
| **Plain Lua 5.1 + `assert`** | No dependencies; simple CI; already proven by #2673. | Test discovery, setup/teardown, assertions, and reporting remain our responsibility. |
| **[LuaUnit](https://github.com/bluebird75/luaunit)** | Lightweight; richer assertions and test organization; can be vendored. | Mock/spy utilities and most runtime fixtures still need to be supplied. |
| **[Busted](https://github.com/lunarmodules/busted)** | Mature test structure, assertions, spies/stubs, setup/teardown; also used by Questie. | Additional dependencies and tooling complexity; does not solve ATT module loading by itself. |

**Open question:** Is Busted's extra functionality worth the dependency cost, or would LuaUnit/plain Lua cover ATT's foreseeable needs?

Whatever we choose, the test cases and fixtures should not be unnecessarily coupled to framework-specific helpers.

## Parser testing

The Parser is a separate execution environment: **C# targeting .NET Framework 4.8**, using **NLua / Lua 5.4**. Runtime Lua 5.1 tests cannot substitute for testing the actual Parser.

The existing Parser CI demonstrates that configured builds can run; more focused regression checks would make failures easier to reproduce and diagnose.

Potential first targets:

- Preprocessor directives and flavor-dependent inclusion/exclusion.
- Field transformations, inheritance, merging, and normalization.
- Exported data structure and selected output semantics.
- Regressions previously fixed in Parser logic.

The preferred approach is to run **real Parser code against small input fixtures**, rather than make a test-only implementation of its rules. Ideally, these fixtures would avoid loading the entire database.

[NUnit](https://nunit.org/) is a candidate for C# unit/component tests because of its fixture and parameterized-test support. However, selecting a C# test framework should follow a small experiment: can the relevant Parser operations be exercised in isolation without extensive refactoring or hidden global-state leakage?

**Important:** A CI job intended to validate Parser C# source changes must build and test that source. Running only a checked-in `Parser.exe` would not validate modifications to the C# implementation.

## Generated database verification

Two complementary techniques are useful:

**Semantic assertions:** Check rules that should remain true across many records or flavors. These avoid storing and reviewing large expected-output snapshots. Invariants must reflect ATT's actual data rules, including legitimate exceptions.

**Small golden files:** For especially fragile transformations, keep tiny reviewed input/output examples and compare normalized results. Avoid snapshots of the entire generated database: legitimate content updates would create excessive noise.

Potential checks include the structure expected by the runtime, flavor-specific inclusions/exclusions, and known edge cases around quest relationships or inherited fields. The specific invariants should be agreed on before making them merge-blocking.

Parser tests and runtime tests may use different tools; they still need a shared understanding of the **generated-data contract**. A separate contract-testing framework is not required.

## In-game verification and evidence

In-game testing is the reference for real WoW behavior, especially when APIs differ by client flavor or change between builds. It should be **selective**, not a prerequisite for every routine PR.

For important or uncertain behavior, capture a small, reviewable observation where practical:

```text
Flavor: <Retail / Era / SoD / Forever / ...>
Build: <client build>
Locale: <locale>
Scenario: <steps and relevant state>
Observed API values / events: <result>
```

That observation can inform an offline test fixture. It does **not** guarantee the same behavior on other builds, flavors, or scenarios. Fixtures should be reviewed when their underlying API assumptions change.

We should not require a WoW emulator or in-game test framework as part of the initial CI design. Tools such as Wowless or WoWUnit can be evaluated later for specific problems that justify their overhead.

## CI implications

Keep the fast, deterministic checks suitable for PRs separate from expensive or environment-dependent checks.

| Check | Suggested execution |
| --- | --- |
| Runtime logic and focused component tests | Relevant pushes and PRs |
| Small Parser unit/component fixtures | Relevant pushes and PRs, once an isolated entry point exists |
| Generated-data invariants and focused golden files | Relevant Parser/data changes |
| Full multi-flavor Parser runs | Retain existing coverage; schedule/trigger according to cost |
| In-game verification | Manual, targeted to changes that require real-client evidence |

Workflow path filters must cover the source being tested, including `.contrib/src/Parser/**` for C# changes where applicable. CI should distinguish **test failures**, **fixture/setup failures**, and **environment or build failures**.

The current #2673 runner is a useful starting point, but its file-discovery and reporting rules can be revised after the framework and directory conventions are chosen.

## Small experiments before committing to an architecture

Instead of implementing a large shared harness up front, validate two difficult assumptions:

### Experiment A — Runtime module loading

- Select one representative ATT module.
- Execute its unmodified production file in Lua 5.1.
- Provide only the minimal required `app` state and WoW API stubs.
- Write a behavioral assertion that would fail under a realistic regression.
- Record how much setup code is needed, what assumptions it makes, and how sensitive it is to harmless refactors.

**Success criterion:** The test is understandable, reasonably isolated, and does not require a growing fake WoW environment.

### Experiment B — Parser fixture execution

- Select one Parser rule with meaningful flavor-dependent behavior.
- Exercise the real Parser path using a tiny fixture.
- Assert on semantic output, not formatting or broad snapshots.
- Verify deterministic repeatability and clean state between tests.
- Measure whether the test requires changes to Parser architecture, and whether those changes are independently beneficial.

**Success criterion:** The test isolates a real failure mode and is materially cheaper to maintain and run than a full Parser build.

The outcome of these experiments should inform framework selection and any shared harness design—not the other way around.

## Decisions to make with maintainers

1. **Runtime framework:** Stay with plain Lua, adopt LuaUnit, or adopt Busted? Which missing features justify a new dependency?
2. **Runtime load boundary:** Can we test complete ATT modules with small fixtures, or are some parts too tightly coupled to startup and WoW APIs?
3. **Mocking policy:** What should remain a local fixture, and when is a shared mock justified?
4. **Parser entry point:** Is an isolated, small-fixture execution path feasible without substantial Parser changes?
5. **Merge policy:** Which checks are reliable enough to block a PR, and which should remain advisory or manual?
6. **Ownership:** Who maintains fixture assumptions when Blizzard APIs or flavor behavior change?

## Tentative recommendation

Start with a **minimal, framework-agnostic testing boundary** and the two experiments above. Do not build a general WoW API emulator, a large shared fixture system, or a full-database snapshot suite up front.

Busted and NUnit are reasonable leading candidates for Lua and C# respectively, but neither should be adopted solely for consistency or feature count. We should choose them when they demonstrably reduce the total maintenance cost of useful, trustworthy tests.

**The intended outcome is a small test system that can grow when needed—not a second implementation of ATT or WoW.**
