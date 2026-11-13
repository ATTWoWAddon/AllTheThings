# Blackwing Lair · how the complete sources change

**[Open the full Lua and JSON evolution](FILE_EVOLUTION.md)** for the complete P1 sources, every changed Lua line, and the JSON introduced at each step.

**Maintainer comparison guide, P1 → P4.** Start with the current [standard source](p1/standard.lua) and [standalone SoD source](p1/sod.lua). Each adds an identifying first line above the exact production bytes. Their paths and hashes are recorded in generated [source provenance](../full-source/sources.json). The standard file has the ordinary raid; the SoD file already contains its original history and reworked raid. These are alternative inputs, not layers to load together.

The saved versions demonstrate proposed migration edits. They do not install a P2/P3 migration switch in the production Parser. Release timing stays in the four rules under `rules.blackwing-lair` in [schedule.json](../../schedule.json); provenance and comparison controls are not extra schedules.

| Stage | Complete source alternatives | What changes | Proposed output authority |
|---|---|---|---|
| **P1** | [Standard](p1/standard.lua) · [SoD](p1/sod.lua) | Read the current sources and legacy phase writers. | Legacy. |
| **P2.1** | [Standard](p2.1/standard.lua) · [SoD](p2.1/sod.lua) | Add inherited keys, retaining ordinary fields and all old phase writers. Each alternative has its own control. | Legacy; timing rules may still be absent. |
| **P2.2** | [Standard](p2.2/standard.lua) · [SoD](p2.2/sod.lua) | Write the shared schedule; keep the Lua body unchanged. | Legacy; compare the proposed policy result separately. |
| **P3** | [Standard](p3/standard.lua) · [SoD](p3/sod.lua) | Change each selected alternative's stage value. The Lua body and schedule stay unchanged. | Policy after the group's promotion checks pass, with an independent legacy golden. |
| **P4** | [Retail](p4/retail.lua) · [Classic](p4/classic.lua) · [SoD](p4/sod.lua) | [Choose one source](p4/selection.json) before Lua execution; retire its old phase writers and remaining flavor guards. | Policy in phased contexts; ordinary output in Retail. |

## P1 → P2.1 · write keys at their owners

Both alternatives give the instance `raid.bwl.common`. One transparent scope encloses the original quest, boss and loot records with `raid.bwl.original`. The later book adds `raid.bwl.draconic-for-dummies`. The SoD reworked difficulty is outside the original scope and adds `raid.bwl.sod20`.

| Record | Effective requirements |
|---|---|
| Original boss and ordinary drops | `raid.bwl.common` AND `raid.bwl.original` |
| Book object `180667` | Both original-route keys AND `raid.bwl.draconic-for-dummies` |
| SoD reworked boss and drops | `raid.bwl.common` AND `raid.bwl.sod20` |

A child key adds a requirement; it cannot bypass its parent. A pure `progressionKey` plus `groups` table shares a condition across siblings without adding a visible output header. The full comparison preserves original constructor shapes, timelines, providers and loot. [Inspect the exact edits and inheritance](FILE_EVOLUTION.md#write-a-key-once-children-inherit-it).

The generated [standard control](p2.1/standard.migration.json) names only `standard.lua`; the [SoD control](p2.1/sod.migration.json) names only `sod.lua`. Both source paths are relative to their control file. Choose the applicable alternative, rather than collecting both controls into one build.

## P2.1 → P2.2 → P3 · one schedule, separate stage controls

At P2.2, write these four entries under `rules.blackwing-lair` in [schedule.json](../../schedule.json):

```json
{
  "raid.bwl.common": { "default": "vanilla.3", "sod": "vanilla.5" },
  "raid.bwl.original": { "default": { "sameAs": "raid.bwl.common" }, "sod": "disabled" },
  "raid.bwl.sod20": { "sod": { "sameAs": "raid.bwl.common" } },
  "raid.bwl.draconic-for-dummies": "unknown"
}
```

Move the whole SoD opening by changing `raid.bwl.common.sod`. The rework follows through `sameAs`. The original remains disabled in SoD; the book remains unresolved. `sameAs` shares timing, not loot. Retail reads no phase schedule.

P2.2 still ships the legacy result in the proposed migration. P3 changes the selected source's control from `"stage": "P2.2"` to `"stage": "P3"`. The Lua body and timing rules are unchanged. The example stage comments identify each saved comparison.

At P3, promotion requires an independently compiled legacy result and reviewed expectations for the whole source group. The unresolved book still prevents promotion of its affected path. Merely changing the comparison control does not prove those requirements.

## P3 → P4 · retain the selected source

`retail.lua` and `classic.lua` derive from the annotated standard source, resolving its remaining flavor choices while retaining ordinary version conditions. `sod.lua` derives only from the standalone SoD source.

The original SoD route keeps removed difficulty 9, its timeline and race restriction, and Ashkandi `19364`. The reworked route keeps difficulty 201, its token costs, quests and Ashkandi `230818`. Shared item IDs such as `19002` and `19003` remain distinct acquisitions. The original route's disabled rule cannot disable the rework.

The P4 selector still uses one file path per context. The migration control lists the available candidates; it does not itself load all three files. [Read the full selection and control JSON](FILE_EVOLUTION.md#select-the-source-before-lua-execution).

## Check the current standalone source with the Parser

[verify_current_parser.py](../full-source/verify_current_parser.py) extracts a bounded owner tree from the actual saved BWL P2.2, P3 and P4 SoD files. It retains `instanceroot(742)`, the original 40-player and reworked 20-player difficulties, Nefarian, and the complete item calls for `19002`, `19003`, `19364` and `230818`. [project-current-bwl.lua](../full-source/project-current-bwl.lua) converts that selected tree for the existing `--phase-example` API.

The regression compares policy projections from all three stages. Expected ordinary metadata comes independently from the current production SoD file and shared race/timeline constants. It checks distinct routes, additive keys, opening transitions and the original Horde restriction; deliberately removing that restriction must fail.

From the repository root on Windows with .NET Framework 4.8.1 targeting support and Lua 5.1:

```powershell
dotnet build .contrib/src/Parser/Parser.csproj -c Release -p:Platform=x64 "-p:OutputPath=$env:TEMP/att-phase-parser"
if ($LASTEXITCODE) { throw 'Parser build failed' }
python .contrib/phase-examples/evolution/full-source/verify_current_parser.py --parser "$env:TEMP/att-phase-parser/Parser.exe" --lua lua5.1 --output "$env:TEMP/att-current-bwl"
```

The output directory retains each stage's selected source, projection and compiled Lua, plus `current-source.json` with source and Parser hashes. This is a bounded current-source regression, not execution of the complete production raid or a new migration loader. The separate [historical Nefarian fixture](nefarian/README.md) remains pinned to its earlier source and profiles.

## Run the focused comparison

The [Nefarian walkthrough](nefarian/README.md) is a separate executable excerpt. It follows Head of Nefarian and the two swords through the shadow, policy and direct P4 paths. Its frozen profiles and historical shipped database evidence are distinct from the current full-source baseline.

From the repository root on Windows, with Python and Lua 5.1:

```powershell
$kit = '.contrib/phase-examples/evolution/blackwing-lair'
$parser = Resolve-Path '.contrib/.tools/Parser.exe'
python "$kit/verify.py" --parser $parser --lua lua5.1
```

The full-source checks compare every selected source alternative, writer owner and ordinary source token. They do not execute the whole native raid through the production Parser or establish production promotion.

[Other five instances and record evidence](../OTHER_INSTANCES.md)
