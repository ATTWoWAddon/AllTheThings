# Six complete Lua and JSON evolutions

Choose an instance. Each page starts with its **complete current standard and standalone SoD sources**, shows the actual P2.1 edits, identifies the JSON entries to write at P2.2, and ends with the complete P4 files. Demon Fall Canyon has only a SoD source.

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
| **P1** | Nothing yet. Read each complete current source alternative. |
| **P2.1** | Add `progressionKey` to the relevant Lua parent or source. Keep the old phase calls. |
| **P2.2** | Write the opening rules in [schedule.json](../schedule.json). The Lua stays the same. |
| **P3** | Change the migration control from `P2.2` to `P3`. The Lua and timing rules stay the same. |
| **P4** | Select one complete Lua file per flavor. Remove old phase calls and remaining flavor guards; retain version conditions and ordinary requirements. |

These are migration steps, not game release phases. Each instance has its own control, so different instances can be at different steps.

## Which files do I edit?

**For the proposed migration:** edit the production Lua alternative shown at the start of the instance page, then write its rules in the one [schedule.json](../schedule.json). A key on a parent applies to its children; another child key adds another requirement.

**For this comparison kit:** stage copies, controls and selection files are generated examples of those edits. They do not install a production migration switch. P2.1, P2.2 and P3 keep the same annotated Lua body; only the stage identification and comparison control change.

The current baseline is master `195b274be460432481e33bb63bfaf9e68bfeec06`, after the standalone SoD split. Five instances have `p1/standard.lua` and `p1/sod.lua`; Demon Fall Canyon has only `p1/sod.lua`. The identifying first line is followed by the exact production bytes. SoD replaces the standard source root; its files already contain their applicable original history and reworked records. Never load both alternatives for the same build.

| File | Role |
|---|---|
| Production Lua named in each page | Human-authored data and proposed key locations. |
| [schedule.json](../schedule.json) | Handwritten opening, removal and reopening rules. |
| Per-case P1 Lua | Generated comparison copies of unmodified production sources. |
| P2.1/P2.2/P3 Lua and `*.migration.json` | Generated comparisons; each control names one source alternative. |
| P4 Lua, `selection.json`, `migration.json` | Generated comparisons; select one scalar file path, or `null` for an absent source. |
| [full-source/sources.json](full-source/sources.json) | Generated verification provenance: source commit, paths, alternatives and SHA-256. No phase rules to maintain here. |
| Per-case `coverage.json` | Generated mapping from original phase writers to their owners and proposed keys. |

There is one handwritten timing file:

| Section in `schedule.json` | Contents |
|---|---|
| `rules` | The 18 rules shared with the small runnable examples. |
| `fullSourceRules` | 19 additional groups found in the complete sources. Four have explicit SoD windows; 15 remain `unknown`. |

The eleven source alternatives contain 273 old phase calls, including six in Blackwing Lair. Repeated calls can use the same group rule; each occurrence does not need its own timing entry. Unknown rules remain unresolved on the affected records. They are never treated as open, and those sources cannot be promoted until their timing is reviewed. Retail uses its ordinary source without a phase schedule.

## Reproduce the comparison kit

Run from the repository root with Lua 5.1:

```console
python .contrib/phase-examples/evolution/full-source/source_sets.py --check
python .contrib/phase-examples/evolution/full-source/generate.py --check
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

The checks compare all P1 payloads with their current production alternatives, compare the saved P2/P4 source tokens for each selected flavor and version, validate writer ownership and route multiplicity, and check Lua 5.1 syntax. They do not execute these complete native files through the production Parser or supply the independent legacy build comparison required for promotion.

[Run the smaller Parser example](../README.md#run-an-example) · [Record details and evidence](OTHER_INSTANCES.md)

The [current standalone BWL Parser regression](blackwing-lair/FILE_EVOLUTION.md#check-the-current-standalone-source-with-the-parser) separately executes a bounded tree extracted from the current P2.2/P3/P4 files through the existing example API. It checks complete selected item calls and independently derived ordinary metadata. The historical Nefarian fixture remains a separate regression; neither test is a complete production parse.
