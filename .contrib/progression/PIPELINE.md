# Independent progression Parser pipeline

This pipeline accompanies the [progression runtime](RUNTIME_PROGRESSION.md). It binds existing Era, SoD, and Wrath acquisition sources to independent release profiles before Parser merging. The generic Parser, profile configuration, tests, and CI tooling belong to the Phase change; Titan extends this foundation separately.

## Source conditions and profile boundaries

The shared catalog identifies a source by its repository path and ordered ancestry selectors. Era uses the instance scopes present in its preprocessed raid data. SoD retains separate replacement difficulty/reward scopes, including distinct occurrences of the same vendor. Classic and Wrath Naxxramas remain separate sources despite sharing instance ID `754`.

The progression catalog adapts only explicitly declared numeric `phase` values within qualified scopes. The `applyclassicphase` helper writes this field. Catalog `phaseIDs` declare eligible numeric phase IDs, profile `phaseMappings` map them to namespaced releases, and a phase definition may supply `phaseID` for an existing numeric phase preference. The binding stage does not read or consume `u`: unavailable conditions, events, undeclared numeric phases, and unbound sources keep their existing handling. Merge and copy operations retain the complete release, unavailable, event, and numeric-phase conditions of each acquisition route.

The Parser's existing validation of malformed authored data is unchanged. It still warns when a release-phase ID is placed in `u` and normalizes that legacy input according to the upstream schema. This existing validation is separate from progression binding; it does not make `u` another progression input.

The active profiles are `era`, `sod`, and `wrath`, with visibility baselines `era:6`, `sod:8`, and `wrath:4`. Era and SoD retain configured `DataPatch 1.15.9.70576`; Wrath retains `3.4.5.63697`. These configuration values and the existing source declarations are repository inputs, not new observations of a server's current progression. Builds without a progression profile retain their existing handling.

Ulduar achievements `17340` and `17341` have six authored callback sites under existing version conditions; the configured Wrath build emits four. With the Wrath profile, availability updates target the original acquisition route. Without a profile, the callback retains the existing unavailable-state and `rwp` behavior. The generic Phase change does not introduce a Titan availability policy.

## CI-built Parser and provenance

Build the Parser in Windows CI using the existing SDK-style `net48` project, pinned dependencies, and `Release|x64`. Rebuild into fresh staging, then use that same payload for compiled fixtures and generation. No local Parser build substitutes for the CI artifact.

The Parser C# changes and their matching `.contrib/.tools/Parser.exe` belong in the same commit. The adjacent `Parser.build-manifest.json` records the original CI repository, source commit, run/attempt, and the hashes of the executable and companion files. Verify every listed file against that manifest. If the final PR history is reconstructed, preserve the original artifact provenance, prove its C# compilation inputs unchanged, and validate the final head separately; do not relabel an older run as a build of the rewritten commit.

The workflow uploads a complete `parser-windows-x64-<source SHA>` payload. Its build manifest is separate from the generated database hash manifest. Download the matching runtime and database artifacts from the same run and retain the run URL.

## Compiled and generated checks

The shared `ParserIntegrationFixture.cs` host and `ProgressionParserIntegrationTests.cs` suite are run by `Test-Parser.ps1` in this directory. The compiled fixture exercises actual configuration, qualified source binding, complete route merging, phase-only conversion with independent unavailable conditions, generic profile extensibility, and baseline-independent data. The test host runs as a separate x64 .NET Framework process with the freshly built Parser's application configuration, so its dependency redirects apply. A fixture compilation or execution failure must fail CI.

The generic workflow generates the eight existing flavors: Standard, Vanilla, VanillaSOD, TBC, Wrath, Cata, Mists, and Camelot. Fresh-output preparation and `.contrib/validate-db.py` verify required references, localization, XML targets, and categories, then record SHA-256 hashes. Progression diagnostics are retained for the three enabled profiles. Every enabled selector must match the expected source and record a positive hit; missing or mismatched diagnostics fail the check.

CI's `--bindings-only` check validates reports and private-field exclusion. Full acquisition-tree checks execute the actual downloaded category constructors with Lua 5.1. Run from a validation checkout containing the matching source, generated databases, and `.contrib/Debugging/Progression/` reports:

```text
python .contrib/validate-db.py
python .contrib/progression/validate-generated.py --repo-root . --lua lua5.1
lua5.1 tests/flavor-progression.lua .
```

Verify transferred hashes before running these checks. Preserve complete generated outputs; an empty or minimal database does not establish successful generation. Report compiled Parser, generated Lua, and live-client evidence separately.

## Evidence and delivery

The profile catalogs qualify existing authored source structures and retain their repository-assumed status. No new loot records, screenshots, Contributor Reports, or gameplay observations are supplied by these tests. Changes to actual record availability require the evidence specified by `AGENTS.md`.

Generated databases remain CI artifacts rather than committed files. The included Parser binary corresponds to the generic Phase C# sources. Titan-specific inputs, raw-data isolation, loading guards, and their matching binary belong to the dependent Titan change and require their own source CI.
