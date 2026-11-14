# Phase Explorer

Open an ATT checkout to see how its Lua and JSON files connect: which records use a rule, which rules they inherit, and when those rules open or close for each flavor.

## Open the GUI

Install the .NET 10 SDK. From the repository root, run:

```console
dotnet run --project .contrib/src/PhaseExplorer/PhaseExplorer.App -- --root .
```

Use **Open folder** to choose another checkout or input directory. The bottom bar shows the selected directory and the number of Lua/JSON files found. **Refresh** rereads files after an external edit.

The **Phase Explorer** workflow also packages standalone Windows x64, Linux x64 and macOS ARM64 applications. Extract the artifact's `.tar.gz`, then open `PhaseExplorer.App.exe` on Windows, `PhaseExplorer.App` on Linux, or `ATT-Phase-Explorer.app` on macOS.

## Follow a relationship

1. **Search** for a name, ID, file name, `progressionKey`, or legacy phase constant.
2. Select a result. The middle tree shows that source occurrence and its containing records.
3. Select a record. The relationship list shows **Authored** bindings, **Inherited AND** requirements, and **Used by** references. Click a linked row to open its Lua or JSON source.
4. Choose **Context** to select the schedule, expanded profile or generated output to inspect, then choose **Flavor** and **Milestone**. **Combined AND** includes the parent requirements: a child rule adds a condition; it does not replace them.

Each occurrence keeps its own file and location. Two drops of the same item remain two routes. **Used by** keeps item, quest and other record types separate even when their numbers match. A provider or cost reference remains a reference. **Source consumer** links lead back to the JSON selection, migration or input declaration that names this file.

Hover over a file or context label for its full path, and drag the column dividers to make room. Search displays up to 500 hits. Large tree branches offer **Load next 250**; large sources show an excerpt around the selected location, with the original file, line and character range above it.

The complete source graph stays in memory while a file is open. In the macOS ARM64 checks, opening the 23.8 MB item database JSON used about 1.5–1.8 GiB of process memory, depending on previously opened files.

Legacy phase calls lead to their constant definitions. New progression keys lead to their flavor's schedule. **Stage** identifies the migration control that applies to the selected source, so files at different stages can coexist.

The complete examples keep `standard.lua` and `sod.lua` as separate source alternatives. Open the file you want to inspect; changing **Flavor** evaluates its rules and does not merge or replace the source. P2/P3 **Stage** follows the matching `standard.migration.json` or `sod.migration.json`. **Source consumer** also connects each production source and P1 copy to generated `sources.json` provenance.

### Try Blackwing Lair

Search for `19364` and choose its occurrence in `evolution/blackwing-lair/p4/sod.lua`. Under **Context**, choose `schedule.json` from `.contrib/phase-examples/`; then choose `sod` under **Flavor** and `vanilla.5` under **Milestone**. Its original route inherits `raid.bwl.original`, which is **disabled**. Then search for `230818` in the same file: the reworked route inherits `raid.bwl.sod20`, which opens at `vanilla.5`. Click either timing result to open its declaration.

## Read a rule

| State | Meaning |
|---|---|
| Scheduled | Opening windows are listed; choose a milestone to inspect one point in time. |
| Active | The selected milestone is inside an opening window. |
| Future | Its first opening is later. |
| Removed | Previously opened, but closed at the selected milestone. A later window can reopen it. |
| Disabled | This source route is explicitly disabled for the selected flavor. |
| Unknown | Its timing is unresolved. |
| Unresolved | Source guards or legacy rules prevent a combined result. |
| Missing / Error | A required definition is absent or invalid; follow the source link. |
| Ordinary | Retail has no phase schedule. |

The viewer reads the selected files; it does not keep another timing catalog. The **Source** pane is read-only. Directory scanning includes Lua/JSON files and skips repository metadata, build caches and symbolic links.
