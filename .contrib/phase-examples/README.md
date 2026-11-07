# Run the three phase interfaces

**Edit [schedule.json](schedule.json) to change when a dungeon, boss or drop opens.** The six instances share this file. Lua owns the loot tables. The Parser receives expanded inputs generated from the schedule.

## Change one opening

These four entries are the whole Blackwing Lair schedule, under `rules.blackwing-lair`:

```json
{
  "raid.bwl.common": { "default": "vanilla.3", "sod": "vanilla.5" },
  "raid.bwl.original": { "default": { "sameAs": "raid.bwl.common" }, "sod": "disabled" },
  "raid.bwl.sod20": { "sod": { "sameAs": "raid.bwl.common" } },
  "raid.bwl.draconic-for-dummies": "unknown"
}
```

To move the entire SoD opening, change only `"vanilla.5"` on the first line. The 20-player route follows that rule. To delay **only** the 20-player raid, replace its `sameAs` with the later milestone. The original 40-player loot stays disabled in SoD, and the date of the book remains unknown.

| When you change… | Edit… |
|---|---|
| Which boss drops an item | The Lua source that owns the drop. An item opening with its boss inherits the boss's rules and needs no JSON entry. |
| An independent opening, removal or reopening | One key under the instance in [schedule.json](schedule.json). Use `calendars` in the same file only when introducing or reordering a milestone. |
| A synthetic replay or the Lua slots for comparison B | [comparison.json](comparison.json), used by the comparison tests and source-layout example. |

After a schedule edit, run this from the repository root. It writes the 19 comparison inputs under `input/profiles/`, `input/catalogs/`, `input/policies/` and `input/selection.json`. Include the generated changes so the shipped Parser can read them directly. CI uses `--check` to catch stale copies.

```console
python .contrib/phase-examples/prepare.py
```

`default` applies to the four phased flavors in this example. `sameAs` copies another key's timing in the **same flavor and profile**. Both sources keep their own identities and ordinary acquisition conditions. Retail loads its ordinary sources and skips phase scheduling entirely. A SoD-only rule names `sod` explicitly. A retained Lua key without a matching rule fails validation.

## Migration stages by file

[Open Blackwing Lair before and after each edit](evolution/blackwing-lair/README.md). Start with the complete current raid file, then compare the annotated file and its three proposed P4 sources. The separate executable Nefarian excerpt follows both loot tables. P1–P4 are migration stages. A/B/C are alternative authoring interfaces. `vanilla.5` is an in-game milestone.

| Step | Actual snapshot | What changes |
|---|---|---|
| **P1** | [Original Lua](evolution/blackwing-lair/p1/1.6%20Blackwing%20Lair.lua) · [Shipped database](evolution/blackwing-lair/nefarian/p1/legacy-sod.md) | The existing raid uses `applyclassicphase` plus a SoD guard around the reworked difficulty. |
| **P2.1** | [Complete annotated raid](evolution/blackwing-lair/p2.1/1.6%20Blackwing%20Lair.lua) | Add the keys and SoD applicability first. The old wrappers still supply official output. |
| **P2.2** | [Lua](evolution/blackwing-lair/p2.2/1.6%20Blackwing%20Lair.lua) · [Shared schedule, including the SoD exceptions](schedule.json) | Write release windows and validate them in shadow. |
| **P3** | [Lua](evolution/blackwing-lair/p3/1.6%20Blackwing%20Lair.lua) · [Stage switch](evolution/blackwing-lair/p3/migration.json) | The same Lua and JSON now supply official progress output. Keep the old writers for an independent legacy comparison. |
| **P4** | [Rewritten Lua](evolution/blackwing-lair/p4/sod.lua) · [Generated Nefarian excerpt](evolution/blackwing-lair/nefarian/p4/expected-sod.lua) | Remove the guards and wrappers. Keep the reviewed policy and separate the original and reworked loot routes. |

[Five more before-and-after examples](evolution/OTHER_INSTANCES.md) cover Blackrock Depths, Demon Fall Canyon, Dire Maul, Temple of Ahn’Qiraj and Gnomeregan. The [production design](https://github.com/NORPG/AllTheThings/blob/codex/flavor-phase/.contrib/progression/PHASE_DESIGN.md#migration-manifest) describes how different source groups advance independently.

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

All three interfaces use the same authored schedule. Their generated formats are kept in the PR so the shipped Parser can run any example directly after checkout.

| Interface | Lua input to edit | Generated JSON consumed by the Parser |
|---|---|---|
| A · direct sources | [sources.lua](input/sources.lua) | [One schedule per profile](input/profiles/sod/main.json) |
| B · selected source files | [layout.lua](input/layout.lua) and the relevant [fragment](input/fragments/bwl.rework.lua) | The same profile plus [a slot selection](input/selection.json). Excluded slots are skipped before their files are read. |
| C · policies grouped by raid | [sources.lua](input/sources.lua), as in A | [Milestone catalog](input/catalogs/sod/main.json) and [one policy file per instance](input/policies/blackwing-lair.json) |

### Reading a release rule

A milestone string opens a source from that milestone onward. `"start"` opens at the first view, `"disabled"` keeps a historical route closed, and `"unknown"` records an unconfirmed opening. All inherited scopes and other ordinary conditions still apply.

For a removal and reopening, use explicit windows only on the affected key. For example, this **synthetic comparison** changes the SoD rework under `rules.blackwing-lair`. The first window closes at the scepter milestone and the second reopens the route at the raid milestone.

```json
{
  "raid.bwl.sod20": {
    "sod": {
      "windows": [
        { "from": "vanilla.5", "until": "vanilla.6.scepter" },
        { "from": "vanilla.6.raids" }
      ]
    }
  }
}
```

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
python .contrib/phase-examples/verify_compact.py --parser $parser --lua lua5.1 --baseline-output "$env:TEMP/att-phase-examples"
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
