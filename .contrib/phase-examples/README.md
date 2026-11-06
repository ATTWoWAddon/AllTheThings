# Run the three phase interfaces

**Comparison guide · P1–P4 migration and the runnable P4 example.** These six instances are written three ways so you can choose one interface. A data contributor would maintain the inputs for the chosen option. The parallel versions here let reviewers compare their output.

| Label at the start of the file | Who edits it and why |
|---|---|
| **Authoring input (A/B/C)** | The letter(s) name the option that uses the file. For **A**, edit `sources.lua` and `profiles/<flavor>/main.json`. For **B**, edit `layout.lua`, the selected `fragments/*.lua`, `selection.json` and the same profiles. For **C**, edit `sources.lua`, `catalogs/<flavor>/main.json` and `policies/<instance>.json`. All paths are under [input/](input). |
| **Comparison fixture / Comparison tooling** | The `replay.json` files and `:replay` rows create synthetic openings for tests. The example compiler, workflow, evaluator, inspector and verifiers are maintained by developers of this comparison. |
| **Generated** | The example Parser writes [SoD](generated/sod-main.lua) and [Retail](generated/retail.lua) Lua samples. Windows CI builds [Parser.exe](../.tools/Parser.exe) and writes the [build record](generated/build.json) beside the samples. Regenerate them after editing their sources. |

## Migration stages by file

P1–P4 describe how one group of source records is migrated. A, B and C are three possible file layouts. A name such as `vanilla.5` identifies a milestone on one flavor’s release schedule. Different groups can migrate independently.

| Migration stage | File to open for Blackwing Lair | What produces the database at that stage |
|---|---|---|
| **P1** | [Existing raid source](../.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/1.6%20Blackwing%20Lair.lua). Look for `applyclassicphase(PHASE_THREE, ...)`. | The production Parser reads the existing phase writers. Freeze that build and its inputs for comparison. |
| **P2.1 · Lua first** | [Lua additions in the design](https://github.com/NORPG/AllTheThings/blob/codex/flavor-phase/.contrib/progression/PHASE_DESIGN.md#p21-add-the-lua-keys-before-writing-json). Add keys to the same raid source while keeping its old guards. | The legacy path still supplies output. A missing JSON rule can be recorded as pending. |
| **P2.2 · JSON next** | [A/B profile](input/profiles/sod/main.json), or [C catalog](input/catalogs/sod/main.json) and [C instance rules](input/policies/blackwing-lair.json). | Write the rules and validate them separately. The official output still comes from the legacy path. |
| **P3** | Reuse the P2.2 policy files. The [migration manifest and comparison design](https://github.com/NORPG/AllTheThings/blob/codex/flavor-phase/.contrib/progression/PHASE_DESIGN.md#migration-manifest) define which group advances. | The progress rules supply official output for that group. Independently compile the old Lua with its original phase writers to obtain the legacy golden. |
| **P4 · executable example** | [Shared A/C raid source](input/sources.lua), or [B layout](input/layout.lua), [selection](input/selection.json) and [reworked loot](input/fragments/bwl.rework.lua). Keep the reviewed JSON. | Remove the old phase writers and flavor guards from that group. The example Parser emits a [SoD module](generated/sod-main.lua) using the proposed format. |

The standalone command exercises the **P4 candidate** and the ordinary **Retail default**. P1 and P2.1 point to the existing source and design excerpt. The P2.2 shadow run and the P3 legacy golden are specified in the design. The 21 modules from this comparison test equivalence across A/B/C. Retail takes the ordinary tree and has no release schedule.

## Run an example

From the repository root on Windows, use the Parser shipped with this branch. Output paths below are examples in your temp directory.

```powershell
$parser = Resolve-Path .contrib/.tools/Parser.exe
$inputDir = Resolve-Path .contrib/phase-examples/input
foreach ($option in 'A','B','C') {
    & $parser --phase-example $option $inputDir sod:main "$env:TEMP/att-$option.lua"
    if ($LASTEXITCODE) { throw "Compilation failed for $option" }
}
lua5.1 .contrib/phase-examples/show.lua "$env:TEMP/att-A.lua" vanilla.5 19003
```

The Head of Nefarian (`19003`) has two routes in this SoD output when ordinary requirements pass.

| Source | Schedule at `vanilla.5` |
|---|---|
| Instance 742 → legacy difficulty 9 → encounter 1536 → head 19003 | Disabled. The original loot remains available for historical inspection. |
| Instance 742 → SoD difficulty 201 → encounter 1536 → head 19003 | Active. The common BWL scope and the reworked raid scope have both opened. |

Inspect the two Ashkandis with `19364` and `230818`. The original stays disabled; the reworked drop opens at `vanilla.5`. For an ordinary build, compile context `retail` and pass `-` as the view to `show.lua`.

## Choose an interface

| Option | Where to edit loot | Where to move only the SoD opening | Tradeoff |
|---|---|---|---|
| **A. Source keys, one JSON per profile** | Add the item under the boss in [sources.lua](input/sources.lua). A new independent release gets its own `progressionKey`. | Edit [the SoD profile](input/profiles/sod/main.json). | Reviewing one flavor's schedule is easy. A maintainer comparing a raid across flavors opens several profiles. |
| **B. Named groups, selected Lua files** | Add the item to the [reworked BWL fragment](input/fragments/bwl.rework.lua). [layout.lua](input/layout.lua) defines its position. | Edit [the same SoD profile](input/profiles/sod/main.json). To change which payload a slot loads, edit [selection.json](input/selection.json). | A context selects complete files before the Parser reads them. Moving a group involves both its slot and the fragment. |
| **C. Source keys, one JSON per instance** | Use [the same Lua records as A](input/sources.lua). | Edit the `sod:main` row in [blackwing-lair.json](input/policies/blackwing-lair.json). The [SoD catalog](input/catalogs/sod/main.json) owns milestone order. | One file shows all versions of a raid. Reviewing an entire flavor's windows involves several instance files. |

For example, add an existing-phase Nefarian drop under encounter `1536` in its own difficulty; the item inherits its full route's keys. A later drop needs a new source key plus a window in the appropriate A/B profile or C instance file. Moving that drop in SoD leaves the original acquisition and the other profiles independent.

A/B read only their profile-local rules. C reads only its milestone catalog and the matching context row from each instance policy file. In B, an explicit `null` slot excludes the group before reading its file; a selected fragment contributes its key to its children without adding a generated parent. All options reject malformed mappings and preserve the previous output if compilation fails.

### Reading a release rule

In the [SoD profile (A/B)](input/profiles/sod/main.json) and [Blackwing Lair policy (C)](input/policies/blackwing-lair.json), find `raid.bwl.sod20`. Its `windows` field opens the 20-player difficulty at `vanilla.5`. A drop under that difficulty inherits the opening. To release a single item later, give **only that occurrence** a `progressionKey` in Lua and add the same key to the chosen JSON policy.

The following **comparison fixture** shows how to write a temporary removal and reopening using existing SoD milestones. It illustrates the format with an invented schedule. To try it, replace just the value of `raid.bwl.sod20` in a working copy.

```json
{
  "$comment": "The first window closes at the scepter milestone. The second reopens the route when the raids unlock.",
  "windows": [
    { "from": "vanilla.5", "until": "vanilla.6.scepter" },
    { "from": "vanilla.6.raids" }
  ]
}
```

`from` includes its milestone. `until` excludes its milestone. Omit it for an open-ended window. Write windows in release order, without overlaps. For a history-only route use `{ "status": "disabled", "windows": [] }`. For an unconfirmed opening use `{ "status": "unknown", "windows": [] }`. Use Lua `--` comments and a single string-valued `"$comment"` per JSON object wherever an editor needs a note. Both are consumed when the Parser writes the database.

## Six things to try

| Instance | Input and observation |
|---|---|
| **Blackrock Depths** | With `sod:main` compare `vanilla.3` and `vanilla.4`. Gerstahn's Enthralled Sphere (`223539`) opens at 3. Angerforge's Battle Axe (`227948`) opens at 4. The second-half rule is attached directly to Emperor Dagran Thaurissan (encounter `387`). His Emperor's Seal (`11934`) inherits it: the early boss remains accessible at 3 while the Emperor and his loot open at 4. |
| **Demon Fall Canyon** | Retail has no instance `2784`. In the explicitly synthetic `sod:replay`, view `fixture.dfc-open` for Grimroot's original Warsong Axe (`228082`), then `vanilla.5` for Azgaloth's Eye of the Observer (`231913`), then `vanilla.7` for Grimroot's new Ancient Ironwood Branch (`235787`). Preserve the original character/entry requirements. |
| **Dire Maul** | Isalien (`16097`) drops Hammer of Revitalization (`22315`). Anniversary opens Dungeon Set 2 at `vanilla.4`. Historical progression opens it in phase 5; `progression:replay` uses `fixture.set2-open` to demonstrate the later batch. The summon still has its own requirements. |
| **Blackwing Lair** | At SoD phase 4 both boss routes are closed. At phase 5 the rework opens with Ashkandi `230818`; the old route to `19364` stays disabled. Inspect item `19003` to see two occurrences. The original book (`21109`) has an independent unknown scope beneath the disabled route. |
| **Temple of Ahn'Qiraj** | The SoD scepter, War Effort, end of collection and war milestones precede `vanilla.6.raids`. Only then may the reworked C'Thun route supply `233634`. Eye of C'Thun (`21221`) appears in both loot lists. Original Death's Sting (`21126`) cannot leak into the rework. |
| **Gnomeregan** | Retail contains the ordinary dungeon, including `9449`. SoD phase 2 opens the level-40, 10-player version, difficulty `198`. Only that version contains the Mechanical Menagerie (`218242`) and Glimmering Gizmoblade (`213410`). |

The `main` profiles retain evidence gaps. Demon Fall Canyon is known to open during SoD phase 4, and original Classic Dungeon Set 2 during phase 5, but their precise order within the illustrated batches remains under review. Their affected main-profile policies are `unknown`. The two `replay` profiles insert synthetic observations solely to exercise what happens after the opening; they do not assign a live release date. The original AQ gate is realm-dependent in the relevant Classic contexts. The reduced profiles leave that route unknown rather than assuming one global date.

## Run and inspect the checks

```powershell
python .contrib/phase-examples/verify.py --parser $parser --lua lua5.1 --output "$env:TEMP/att-phase-examples"
```

The runner calls the built Parser for A, B and C in seven contexts. The retained Lua modules are grouped by option, for example `A/sod-main.lua`, `B/retail.lua` and `C/progression-replay.lua`. The Lua 5.1 checks compare complete trees and evaluate each boundary. Negative inputs exercise missing keys beneath disabled owners, typos, unknown milestones, invalid windows and previous-output preservation. To build from source, run `dotnet build .contrib/src/Parser/Parser.csproj -c Release -p:Platform=x64` on Windows with .NET Framework 4.8 targeting support. The [Windows workflow](../../.github/workflows/PhaseExamples.yml) builds the actual Parser, runs the checks, and publishes `Parser.exe`, its SHA256 provenance file and all generated modules in the `phase-examples-windows` artifact.

### Using a generated module

```lua
local db = dofile("att-A.lua")
local evaluator = dofile(".contrib/phase-examples/evaluate.lua")
local result = evaluator.find(db, { itemID = 19003 }, "vanilla.5", function(node, route, index)
    -- Supply the caller's ordinary per-node checks (timeline, quest, level, cost, etc.).
    return true -- For this example the character meets all ordinary requirements.
end)
for _, route in ipairs(result.routes) do
    print(route.schedule, route.obtainable)
end
```

Within a scope, disjoint windows combine with OR, with an inclusive `from` and exclusive `until`. A route requires every inherited scope and ordinary source condition to pass. An item can be obtained through any complete passing route. The evaluator reports disabled, unknown, future and removed routes for inspection. The example caller supplies ordinary game conditions; `show.lua` demonstrates scheduling under the assumption that these pass.

### Input and output boundaries

This opt-in command reads a **declarative Lua subset**: a returned array of records, nested literal tables, supported ATT-style ID constructors and, for B, named group references. Expressions are parsed as data. A/C keep special records in a shared input without executing rejected helper calls. B additionally avoids reading excluded fragment files. The input directory sits outside the production database roots. The generated module is a review artifact consumed by the supplied evaluator. Installing this branch does not migrate live addon databases or settings.

Each phased module returns `context`, ordered `milestones`, fully namespaced `policies` and the retained `groups` tree. Nodes carry cumulative `progressionScopes` plus their ordinary IDs and source fields. Retail has the ordinary tree and empty policy and scope data. The compact milestone arrays here cover these six fixtures; the design PR contains the full proposed profile catalogs. Production P1–P4 coexistence, full-client eligibility, migration goldens and general support for arbitrary acquisition Lua remain part of that separate design review.

### Record evidence

The IDs and representative source fields are taken from the repository's [Classic dungeon and raid data](../.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic). The linked design includes source lines, limits and full-case tables. [Design PR #2734](https://github.com/ATTWoWAddon/AllTheThings/pull/2734)

- Blackrock Depths and Demon Fall Canyon: [SoD phase 3](https://worldofwarcraft.blizzard.com/en-gb/news/24078318), [Emperor observed out of combat in the closed half](https://www.wowhead.com/news/latter-half-of-brd-inaccessible-bosses-hanging-out-at-grim-guzzler-338551), [phase 4 dungeon list](https://news.blizzard.com/en-us/article/24111477/season-of-discovery-phase-4-now-live), [phase 5 added boss](https://worldofwarcraft.blizzard.com/en-us/news/24139952).
- Dire Maul: [Classic content plan](https://us.forums.blizzard.com/en/wow/t/classic-content-plan/120346), [Anniversary Dungeon Set 2](https://news.blizzard.com/en-us/article/24194658/wow-classic-20th-anniversary-edition-phase-4-now-live).
- Blackwing Lair, Temple and Gnomeregan: [reworked BWL](https://worldofwarcraft.blizzard.com/zh-tw/news/24139952), [AQ schedule](https://worldofwarcraft.blizzard.com/en-us/news/24154449), [SoD Gnomeregan](https://worldofwarcraft.blizzard.com/en-gb/news/24056979).
