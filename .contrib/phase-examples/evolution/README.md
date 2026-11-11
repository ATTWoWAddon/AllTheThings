# Six complete Lua and JSON evolutions

Choose an instance. Each page starts with its **whole existing Lua file**, shows the actual P2.1 edits, identifies the JSON entries to write at P2.2, and ends with the complete P4 files.

| Instance | Follow this change | File comparison |
|---|---|---|
| Blackwing Lair | Give original loot and the SoD rework separate rules; write the original key once. | [P1 → P4](blackwing-lair/FILE_EVOLUTION.md) |
| Blackrock Depths | Open the dungeon before the Emperor; keep later boss rewards and recipe batches separate. | [P1 → P4](blackrock-depths/FILE_EVOLUTION.md) |
| Demon Fall Canyon | Add the dungeon, then Azgaloth, then a later drop on Grimroot. | [P1 → P4](demon-fall-canyon/FILE_EVOLUTION.md) |
| Dire Maul | Give Isalien a later opening than the dungeon while preserving the summon requirements. | [P1 → P4](dire-maul/FILE_EVOLUTION.md) |
| Temple of Ahn'Qiraj | Separate original and reworked C'Thun loot; retain the additional Atiesh and coffer conditions. | [P1 → P4](temple-of-ahnqiraj/FILE_EVOLUTION.md) |
| Gnomeregan | Keep the old dungeon as history in SoD and add the raid; preserve shared drops outside that history. | [P1 → P4](gnomeregan/FILE_EVOLUTION.md) |

The pages follow the same sequence:

| Step | What the author changes |
|---|---|
| **P1** | Nothing yet. Read the complete existing Lua. |
| **P2.1** | Add `progressionKey` to the relevant Lua parent or source. Keep the old phase calls. |
| **P2.2** | Write the opening rules in [schedule.json](../schedule.json). The Lua stays the same. |
| **P3** | Change the migration control from `P2.2` to `P3`. The Lua and timing rules stay the same. |
| **P4** | Select complete Lua files for each flavor. Remove the old phase calls and flavor guards; retain version conditions and ordinary requirements. |

These are migration steps, not game release phases. Each instance has its own control, so different instances can be at different steps.

## Which files do I edit?

**For the proposed migration:** change the production Lua path shown at the start of the instance page, then write its rules in the one [schedule.json](../schedule.json). The page shows the complete result at each step. A key on a parent applies to its children; another child key adds another requirement.

**For this comparison kit:** the five new instances' stage copies and control files are generated. The Lua headers and the comparison pages identify their roles. The generator reproduces the proposed edits; it does not modify production data or install the migration controls. Blackwing Lair retains its existing saved snapshots.

There is one handwritten timing file:

| Section in `schedule.json` | Contents |
|---|---|
| `rules` | The 18 rules shared with the small runnable examples. |
| `fullSourceRules` | 19 additional groups found in the complete sources. Four have explicit SoD windows; 15 remain `unknown`. |

The five added sources contain 213 old phase calls. Repeated calls can use the same group rule; they do not need 213 timing entries. Unknown rules remain unresolved on the affected records. They are never treated as open, and those sources cannot be promoted until their timing is reviewed. Retail uses its ordinary source without a phase schedule.

## Reproduce the comparison kit

Run from the repository root with Lua 5.1:

```console
python .contrib/phase-examples/evolution/full-source/generate.py
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

The checks preserve the original P1 bytes, compare the saved P2/P4 source tokens across branches, validate rule coverage, and check Lua 5.1 syntax. They do not execute these complete native files through the production Parser or supply the independent legacy build comparison required for promotion.

[Run the smaller Parser example](../README.md#run-an-example) · [Record details and evidence](OTHER_INSTANCES.md)
