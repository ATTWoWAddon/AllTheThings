# Comparison guide / P1–P4 · Five more dungeon and raid sources

The [Blackwing Lair walkthrough](blackwing-lair/) has files for all five steps. Here, each case follows one acquisition from the existing P1 source to the runnable option A example. **P1 is the complete existing repository file** linked first in each case. The Lua blocks below condense selected lines from that P1 file or the P4 candidate. The full sources contain the remaining loot and eligibility conditions.

**Local P1 copies** · [Blackrock Depths](p1/Blackrock%20Depths.lua) · [Demon Fall Canyon](p1/Demon%20Fall%20Canyon.lua) · [Dire Maul](p1/Dire%20Maul.lua) · [Temple of Ahn'Qiraj](p1/2.6%20Temple%20of%20Ahn%27Qiraj.lua) · [Gnomeregan](p1/Gnomeregan.lua). Each copy adds one identification line above the complete original. The pinned source links below use the original line numbers.

At **P2.1**, add the indicated fields while retaining the legacy expressions. At **P2.2**, add the JSON and validate it in shadow. Both stages still ship the legacy result. At **P3**, the same annotated Lua feeds two separate compilations. The progress path takes its timing from the selected policy. The independent legacy comparison (the golden) uses the frozen source, build configuration and old timing rules. **P4** removes retired writers and guards after that comparison passes. The linked P1 databases are checked-in evidence. Each P3 paragraph describes a proposed acceptance check.

## Blackrock Depths · Emperor Dagran Thaurissan → Emperor's Seal

**P1 · [Full Blackrock Depths source][brd-file].** Two nearby records show why the owner of a release matters. Gerstahn's Enthralled Sphere has an individual SoD phase writer. Emperor Dagran Thaurissan (`387`) has an ordinary loot list that includes Emperor's Seal (`11934`). The phase-four writer just above the seal applies to **Dark Iron Seal** (`227983`). [Gerstahn and the sphere][brd-sphere] · [Emperor][brd-boss] · [The two seals][brd-seals]

```lua
applyclassicphase(SOD_PHASE_FOUR, i(227983, { timeline = { ADDED_1_15_3 } }))
i(11934)
```

**P2.1.** Put `progressionKey = "brd.dungeon"` on instance `228` and `progressionKey = "brd.second-half"` on encounter `387`. Leave `11934` as an ordinary child. Retain the existing SoD item guards and phase writers for the legacy build.

**P2.2.** Add both openings in [SoD main](../input/profiles/sod/main.json). These are entries in its `content` object.

```json
{ "brd.dungeon": { "windows": [{ "from": "vanilla.3" }] },
  "brd.second-half": { "windows": [{ "from": "vanilla.4" }] } }
```

**P3.** The candidate gives the seal `sod:main:brd.dungeon` **and** `sod:main:brd.second-half`. At phase 3 the earlier Gerstahn route can open while the Emperor remains closed. At phase 4 the seal's schedule opens. The frozen SoD output has no explicit boss or seal phase at these records. The second-half rule needs its own reviewed expectation. The phase-four dungeon listing and the observation of the Emperor out of combat in the closed half support this specific encounter. [Legacy boss and seal][brd-output] · [Phase-four dungeon list](https://news.blizzard.com/en-us/article/24111477/season-of-discovery-phase-4-now-live) · [Phase-three observation](https://www.wowhead.com/news/latter-half-of-brd-inaccessible-bosses-hanging-out-at-grim-guzzler-338551)

**P4.** Under `inst(228)`, attach the rule once to the boss. [Candidate source](../input/sources.lua#L6-L39)

```lua
e(387, { creatureID = 9019, progressionKey = "brd.second-half", groups = { i(11934) } })
```

## Demon Fall Canyon · Azgaloth → Eye of the Observer

**P1 · [Full Demon Fall Canyon source][dfc-file].** A file-wide SoD guard encloses the phase-four dungeon. Azgaloth and his eye are a separate addition. There is also a later drop on an existing boss, Grimroot. [Dungeon and Grimroot][dfc-root] · [Azgaloth and the eye][dfc-eye]

```lua
applyclassicphase(SOD_PHASE_FIVE, n(232632, {
    timeline = { ADDED_1_15_4 }, groups = { i(231913) },
}))
```

**P2.1.** Add `flavors = { "sod" }` and `progressionKey = "dfc.dungeon"` to `inst(2784)`. Add `progressionKey = "dfc.azgaloth"` to `n(232632)`. Keep both phase writers, the file guard and the entrance requirements. Grimroot's extra drop `235787` gets its own key on the item.

**P2.2.** The [SoD main profile](../input/profiles/sod/main.json) knows the boss and item milestones. The exact order of the entrance opening within phase 4 is unresolved.

```json
{ "dfc.dungeon": { "status": "unknown", "windows": [] },
  "dfc.azgaloth": { "windows": [{ "from": "vanilla.5" }] },
  "dfc.ironwood-branch": { "windows": [{ "from": "vanilla.7" }] } }
```

**P3.** The eye needs `sod:main:dfc.dungeon` and `sod:main:dfc.azgaloth`. The legacy comparison keeps the old root and boss writers. Its shipped boss carries `phase=1609`. The candidate's unknown parent blocks promotion even at phase 5. To exercise the child opening separately, the [synthetic replay](../input/profiles/sod/replay.json) supplies `fixture.dfc-open`. [Shipped dungeon][dfc-output-root] · [Shipped boss and eye][dfc-output-eye]

**P4.** The direct SoD instance keeps quest `84384`, provider item `228172` and level 55. Only the boss gets the phase-five key, so Grimroot's existing loot can retain its own schedule. [Candidate source](../input/sources.lua#L40-L66)

```lua
n(232632, { progressionKey = "dfc.azgaloth", timeline = { "added 1.15.4.56738" },
    groups = { i(231913), i(231912) } })
```

## Dire Maul · Isalien → Hammer of Revitalization

**P1 · [Full Dire Maul source][dm-file].** The instance uses `PHASE_ONE_DIREMAUL`. A second writer encloses Isalien (`16097`) and her hammer (`22315`). The source also records the summoning item and client-specific requirements. [Instance writer][dm-root] · [Summon and loot][dm-summon]

```lua
applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {
    provider = { "i", 22057 }, timeline = { REMOVED_4_0_3 }, groups = { i(22315) },
}))
```

**P2.1.** On `inst(230)`, add `progressionKey = "dire-maul.common"`. On the existing `n_conditional(16097)`, add `progressionKey = "dire-maul.isalien"`. Keep the phase constants and the conditional cost/quest branches.

**P2.2.** In [Anniversary main](../input/profiles/anniversary/main.json), `dire-maul.common` opens at `vanilla.2` and the summon has `{ "windows": [{ "from": "vanilla.4" }] }`. In [historical progression](../input/profiles/progression/main.json), the summon has `{ "status": "unknown", "windows": [] }` pending a reviewed phase-five batch. [Anniversary Dungeon Set 2 release](https://news.blizzard.com/en-us/article/24194658/wow-classic-20th-anniversary-edition-phase-4-now-live)

**P3.** On Anniversary the hammer needs both `anniversary:main:dire-maul.common` and `anniversary:main:dire-maul.isalien`. Compare against an independently pinned Anniversary build with its original summon rules. The [committed Vanilla summon][dm-output] shows the cost, provider and hammer for that build. It supplies no Anniversary build result.

**P4.** Classic-compatible profiles keep the cost of one Brazier of Beckoning. The Retail variant keeps quest `8996` and `u_sqs`. Each source retains its provider and removal timeline. [Both candidate records](../input/sources.lua#L67-L92)

```lua
n(16097, { flavors = { "progression", "anniversary", "era", "sod" }, progressionKey = "dire-maul.isalien",
    cost = { { "i", 22050, 1 } }, provider = { "i", 22057 },
    timeline = { "removed 4.0.3.13287" }, groups = { i(22315) } })
```

## Temple of Ahn'Qiraj · Reworked C'Thun → Death's Sting

**P1 · [Full Temple of Ahn'Qiraj source][aq-file].** Instance `744` uses `PHASE_FIVE`. A SoD guard retains the original difficulty as removed history and introduces the reworked raid. C'Thun (`1551`) drops eye `21221` on both routes. The original Death's Sting is `21126`, the reworked drop is `233634`. [Instance][aq-root] · [Original difficulty][aq-history] · [Original loot][aq-old] · [SoD difficulty][aq-raid] · [SoD loot][aq-new]

```lua
applyclassicphase(SOD_PHASE_SIX, d(DIFFICULTY.SOD.PLAYER20, {
    timeline = { ADDED_1_15_5 }, groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(233634) } }) },
}))
```

**P2.1.** Add `aq40.common` as the instance's `progressionKey`. Mark the original acquisitions `aq40.original`. Add `flavors = { "sod" }` and `progressionKey = "aq40.reworked"` on the SoD difficulty. Keep the original guards, timelines and both phase writers.

**P2.2.** In [SoD main](../input/profiles/sod/main.json), both `aq40.common` and `aq40.reworked` have `{ "windows": [{ "from": "vanilla.6.raids" }] }`. The original has `{ "status": "disabled", "windows": [] }`. [Blizzard's phase-six event order](https://news.blizzard.com/en-us/article/24154449/anniversary-celebration-at-the-november-trading-post-season-of-discovery-phase-6-the-war-within-audio-design-and-more)

**P3.** The reworked drop needs `sod:main:aq40.common` and `sod:main:aq40.reworked`. Scepter, War Effort, end of collection and war all precede the raid opening. Compare the two historical loot lists independently. Test the finer opening against the event order as well as the old whole-phase result. [Legacy original boss][aq-output-old] · [Legacy reworked boss][aq-output-new]

**P4.** Under `inst(744)`, each difficulty owns its boss and loot. [Candidate sources](../input/sources.lua#L192-L233)

```lua
d(201, { flavors = { "sod" }, progressionKey = "aq40.reworked", timeline = { "added 1.15.5.57638" },
    groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(233634) } }) } })
```

## Gnomeregan · Mechanical Menagerie → Glimmering Gizmoblade

**P1 · [Full Gnomeregan source][gn-file].** The original dungeon contains Crowd Pummeler's item `9449`. In SoD the original becomes a removed normal-difficulty route. A second difficulty encloses the level-40 raid, where Mechanical Menagerie (`218242`) drops `213410`. [Original difficulty][gn-history] · [Original boss][gn-old] · [Raid writer][gn-raid] · [Menagerie loot][gn-loot]

```lua
applyclassicphase(SOD_PHASE_TWO, d(DIFFICULTY.SOD.PLAYER10, {
    timeline = { ADDED_1_15_1, REMOVED_2_0_1 }, lvl = 40, groups = { n(218242, { groups = { i(213410) } }) },
}))
```

**P2.1.** Add `progressionKey = "gnomeregan.dungeon"` to the original acquisition and `progressionKey = "gnomeregan.raid10"`, `flavors = { "sod" }` to the raid difficulty. Preserve the guard and the `SOD_PHASE_TWO` writer for the legacy build.

**P2.2.** In [SoD main](../input/profiles/sod/main.json), `gnomeregan.dungeon` has `{ "status": "disabled", "windows": [] }` and `gnomeregan.raid10` has `{ "windows": [{ "from": "vanilla.2" }] }`.

**P3.** Gizmoblade inherits only `sod:main:gnomeregan.raid10` in this example. It is future in phase 1 and scheduled open in phase 2. Compare against the old SoD raid with its level and build requirements. Check ordinary Retail separately for the flat dungeon route to `9449`. [Legacy raid difficulty][gn-output-raid] · [Legacy Menagerie and drop][gn-output-drop]

**P4.** Instance `231` holds a direct SoD raid record alongside the original acquisition. The reduced fixture exercises the SoD opening and level threshold. The full source also has a 2.0.1 removal boundary to preserve in a production migration. [Candidate sources](../input/sources.lua#L234-L271)

```lua
d(198, { flavors = { "sod" }, progressionKey = "gnomeregan.raid10", lvl = 40, timeline = { "added 1.15.1.53181" },
    groups = { n(218242, { groups = { i(213410) } }) } })
```

[brd-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Blackrock%20Depths.lua
[brd-sphere]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Blackrock%20Depths.lua#L2599-L2608
[brd-boss]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Blackrock%20Depths.lua#L3384-L3390
[brd-seals]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Blackrock%20Depths.lua#L3504-L3509
[dfc-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Demon%20Fall%20Canyon.lua
[dfc-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Demon%20Fall%20Canyon.lua#L1-L24
[dfc-eye]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Demon%20Fall%20Canyon.lua#L41-L47
[dm-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Dire%20Maul.lua
[dm-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Dire%20Maul.lua#L145-L147
[dm-summon]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Dire%20Maul.lua#L1442-L1465
[aq-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua
[aq-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L33-L35
[aq-history]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1347-L1351
[aq-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1564-L1585
[aq-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1598-L1606
[aq-new]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L2350-L2363
[gn-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Gnomeregan.lua
[gn-history]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Gnomeregan.lua#L294-L299
[gn-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Gnomeregan.lua#L883-L887
[gn-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Gnomeregan.lua#L951-L956
[gn-loot]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/standard/01%20-%20Dungeons%20Raids/01%20-%20Classic/Gnomeregan.lua#L1633-L1637
[brd-output]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7283-L7304
[dfc-output-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7874-L7882
[dfc-output-eye]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7896-L7897
[dm-output]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/Vanilla/Categories/Instances.lua#L3881-L3884
[aq-output-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L4453-L4462
[aq-output-new]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L4870-L4877
[gn-output-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L8494-L8495
[gn-output-drop]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L8718-L8719
