# Record notes for five instances

For the actual files and edits, use the complete comparison pages below. This page explains selected records and their evidence. Its code blocks are excerpts.

[Blackrock Depths](blackrock-depths/FILE_EVOLUTION.md) · [Demon Fall Canyon](demon-fall-canyon/FILE_EVOLUTION.md) · [Dire Maul](dire-maul/FILE_EVOLUTION.md) · [Temple of Ahn'Qiraj](temple-of-ahnqiraj/FILE_EVOLUTION.md) · [Gnomeregan](gnomeregan/FILE_EVOLUTION.md)

**Current P1 copies** · [Blackrock Depths](blackrock-depths/p1/) · [Demon Fall Canyon](demon-fall-canyon/p1/) · [Dire Maul](dire-maul/p1/) · [Temple of Ahn'Qiraj](temple-of-ahnqiraj/p1/) · [Gnomeregan](gnomeregan/p1/). Each directory separates the standard and standalone SoD source; Demon Fall Canyon has only SoD. Each copy adds one identification line above the exact production bytes. [Generated source provenance](full-source/sources.json) pins the current baseline at `195b274be460432481e33bb63bfaf9e68bfeec06`.

The source links below point to that baseline's standalone SoD files. Links labelled legacy or shipped output retain the earlier frozen database at `6f7b562a`; they are historical comparison evidence, not fresh output from the rebased Parser. Code blocks abbreviate records to explain their owner; the complete comparison pages show every field.

The P3 checks described below are proposed acceptance criteria. The saved sources and syntax checks do not establish an independent production legacy build comparison.

## Blackrock Depths · Emperor Dagran Thaurissan → Emperor's Seal

**P1 · [Full Blackrock Depths source][brd-file].** Two nearby records show why the owner of a release matters. Gerstahn's Enthralled Sphere has an individual SoD phase writer. Emperor Dagran Thaurissan (`387`) has an ordinary loot list that includes Emperor's Seal (`11934`). The phase-four writer just above the seal applies to **Dark Iron Seal** (`227983`). [Gerstahn and the sphere][brd-sphere] · [Emperor][brd-boss] · [The two seals][brd-seals]

```lua
applyclassicphase(SOD_PHASE_FOUR, i(227983, { timeline = { ADDED_1_15_3 } }))
i(11934)
```

**P2.1.** Put `brd.dungeon` on the standard `inst(228)` record and the SoD record passed to `instanceroot(228)`; put `brd.second-half` on encounter `387`. Leave `11934` as an ordinary child. Apply the annotations separately to standard and SoD, retaining their existing phase writers and ordinary fields for the legacy comparison.

**P2.2.** In the [shared schedule](../schedule.json), add these two entries under `rules.blackrock-depths`.

```json
{ "brd.dungeon": { "default": "start", "sod": "vanilla.3" },
  "brd.second-half": { "default": "start", "sod": "vanilla.4" } }
```

**P3.** The candidate gives the seal `sod:main:brd.dungeon` **and** `sod:main:brd.second-half`. At phase 3 the earlier Gerstahn route can open while the Emperor remains closed. At phase 4 the seal's schedule opens. The frozen SoD output has no explicit boss or seal phase at these records. The second-half rule needs its own reviewed expectation. The phase-four dungeon listing and the observation of the Emperor out of combat in the closed half support this specific encounter. [Legacy boss and seal][brd-output] · [Phase-four dungeon list](https://news.blizzard.com/en-us/article/24111477/season-of-discovery-phase-4-now-live) · [Phase-three observation](https://www.wowhead.com/news/latter-half-of-brd-inaccessible-bosses-hanging-out-at-grim-guzzler-338551)

**P4.** The smaller runnable fixture uses `inst(228)` and attaches the rule once to the boss. [Compact candidate source](../input/sources.lua#L6-L39)

```lua
e(387, { creatureID = 9019, progressionKey = "brd.second-half", groups = { i(11934) } })
```

## Demon Fall Canyon · Azgaloth → Eye of the Observer

**P1 · [Full Demon Fall Canyon source][dfc-file].** The standalone SoD file contains the phase-four `instanceroot(2784)` record; it has no standard counterpart. Azgaloth and his eye are a separate addition. There is also a later drop on an existing boss, Grimroot. [Dungeon and Grimroot][dfc-root] · [Azgaloth and the eye][dfc-eye]

```lua
applyclassicphase(SOD_PHASE_FIVE, n(232632, {
    timeline = { ADDED_1_15_4 }, groups = { i(231913) },
}))
```

**P2.1.** Add `progressionKey = "dfc.dungeon"` to the record passed to `instanceroot(2784)`. A transparent scope around `n(232632)` adds `dfc.azgaloth`; another around item `235787` adds `dfc.ironwood-branch`. Keep all three legacy writers and the entrance requirements. File selection already limits this source to SoD.

**P2.2.** Under `rules.demon-fall-canyon`, the [shared schedule](../schedule.json) records the two known SoD releases. The exact order of the entrance opening within phase 4 is unresolved.

```json
{ "dfc.dungeon": { "sod": "unknown" },
  "dfc.azgaloth": { "sod": "vanilla.5" },
  "dfc.ironwood-branch": { "sod": "vanilla.7" } }
```

**P3.** The eye needs `sod:main:dfc.dungeon` and `sod:main:dfc.azgaloth`. The legacy comparison keeps the old root and boss writers. Its shipped boss carries `phase=1609`. The candidate's unknown parent blocks promotion even at phase 5. To exercise the child opening separately, the [synthetic replay](../comparison.json) supplies `fixture.dfc-open`. [Shipped dungeon][dfc-output-root] · [Shipped boss and eye][dfc-output-eye]

**P4.** The direct SoD instance keeps quest `84384`, provider item `228172` and level 55. Only the boss gets the phase-five key, so Grimroot's existing loot can retain its own schedule. [Candidate source](../input/sources.lua#L40-L66)

```lua
n(232632, { progressionKey = "dfc.azgaloth", timeline = { "added 1.15.4.56738" },
    groups = { i(231913), i(231912) } })
```

## Dire Maul · Isalien → Hammer of Revitalization

**P1 · [Full Dire Maul source][dm-file].** The instance uses `PHASE_ONE_DIREMAUL`. A second writer encloses Isalien (`16097`) and her hammer (`22315`). The source also records the summoning item and client-specific requirements. [Instance writer][dm-root] · [Summon and loot][dm-summon]

```lua
applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {
    provider = { "i", 22057 }, groups = { i(22315) },
}))
```

**P2.1.** Add `dire-maul.common` to the standard `inst(230)` record and the SoD record passed to `instanceroot(230)`. A transparent scope around `n_conditional(16097)` adds `dire-maul.isalien`. Keep each alternative's existing phase writers and cost/quest requirements.

**P2.2.** In `rules.dire-maul`, the [shared schedule](../schedule.json) opens the dungeon at `vanilla.2` on Anniversary. Its summon uses `{ "default": "unknown", "anniversary": "vanilla.4" }`. The historical progression opening still needs a reviewed phase-five batch. [Anniversary Dungeon Set 2 release](https://news.blizzard.com/en-us/article/24194658/wow-classic-20th-anniversary-edition-phase-4-now-live)

**P3.** On Anniversary the hammer needs both `anniversary:main:dire-maul.common` and `anniversary:main:dire-maul.isalien`. Compare against an independently pinned Anniversary build with its original summon rules. The [committed Vanilla summon][dm-output] shows the cost, provider and hammer for that build. It supplies no Anniversary build result.

**P4.** Classic-compatible profiles keep the cost of one Brazier of Beckoning. The Retail variant keeps quest `8996` and `u_sqs`. Each source retains its own provider and timelines; the current standalone SoD source has no 4.0.3 removal on this summon. [Both candidate records](../input/sources.lua#L67-L92)

```lua
n(16097, { flavors = { "progression", "anniversary", "era", "sod" }, progressionKey = "dire-maul.isalien",
    cost = { { "i", 22050, 1 } }, provider = { "i", 22057 },
    timeline = { "removed 4.0.3.13287" }, groups = { i(22315) } })
```

## Temple of Ahn'Qiraj · Reworked C'Thun → Death's Sting

**P1 · [Full Temple of Ahn'Qiraj source][aq-file].** Instance `744` uses `PHASE_FIVE`. The standalone SoD source retains the original difficulty as removed history alongside the reworked raid. C'Thun (`1551`) drops eye `21221` on both routes. The original Death's Sting is `21126`, the reworked drop is `233634`. [Instance][aq-root] · [Original difficulty][aq-history] · [Original loot][aq-old] · [SoD difficulty][aq-raid] · [SoD loot][aq-new]

```lua
applyclassicphase(SOD_PHASE_SIX, d(DIFFICULTY.SOD.PLAYER20, {
    timeline = { ADDED_1_15_5 }, groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(233634) } }) },
}))
```

**P2.1.** Add `aq40.common` to each alternative's instance record. Mark the original acquisition region `aq40.original`, leaving shared achievements and factions outside it. The SoD reworked difficulty adds `aq40.reworked` outside the original scope. Keep all existing timelines and phase writers; no extra flavor field is needed for the selected standalone source.

**P2.2.** In `rules.temple-of-ahnqiraj`, set the SoD opening on `aq40.common` to `vanilla.6.raids`. The rework uses `{ "sod": { "sameAs": "aq40.common" } }`. The original SoD route is explicitly `"disabled"`. [Shared schedule](../schedule.json) · [Blizzard's phase-six event order](https://news.blizzard.com/en-us/article/24154449/anniversary-celebration-at-the-november-trading-post-season-of-discovery-phase-6-the-war-within-audio-design-and-more)

**P3.** The reworked drop needs `sod:main:aq40.common` and `sod:main:aq40.reworked`. Scepter, War Effort, end of collection and war all precede the raid opening. Compare the two historical loot lists independently. Test the finer opening against the event order as well as the old whole-phase result. [Legacy original boss][aq-output-old] · [Legacy reworked boss][aq-output-new]

**P4.** In the smaller runnable fixture, `inst(744)` contains each difficulty with its own boss and loot. [Compact candidate sources](../input/sources.lua#L192-L233)

```lua
d(201, { flavors = { "sod" }, progressionKey = "aq40.reworked", timeline = { "added 1.15.5.57638" },
    groups = { e(1551, { creatureID = 15727, groups = { i(21221), i(233634) } }) } })
```

## Gnomeregan · Mechanical Menagerie → Glimmering Gizmoblade

**P1 · [Full Gnomeregan source][gn-file].** The original dungeon contains Crowd Pummeler's item `9449`. In SoD the original becomes a removed normal-difficulty route. A second difficulty encloses the level-40 raid, where Mechanical Menagerie (`218242`) drops `213410`. [Original difficulty][gn-history] · [Original boss][gn-old] · [Raid writer][gn-raid] · [Menagerie loot][gn-loot]

```lua
applyclassicphase(SOD_PHASE_TWO, d(DIFFICULTY.SOD.PLAYER10, {
    timeline = { ADDED_1_15_1 }, lvl = 40, groups = { n(218242, { groups = { i(213410) } }) },
}))
```

**P2.1.** Add `gnomeregan.dungeon` to the standard instance and the SoD removed-dungeon record. The SoD raid and existing zone-drop writers use `gnomeregan.raid10` outside that disabled dungeon scope. Preserve the old writers; the separate hidden-quest root retains its original ownership.

**P2.2.** In `rules.gnomeregan`, use `{ "default": "start", "sod": "disabled" }` for the original dungeon and `{ "sod": "vanilla.2" }` for the separate raid. [Shared schedule](../schedule.json)

**P3.** Gizmoblade inherits only `sod:main:gnomeregan.raid10` in this example. It is future in phase 1 and scheduled open in phase 2. Compare against the old SoD raid with its level and build requirements. Check ordinary Retail separately for the flat dungeon route to `9449`. [Legacy raid difficulty][gn-output-raid] · [Legacy Menagerie and drop][gn-output-drop]

**P4.** The reduced fixture holds both acquisition routes under `inst(231)` and exercises the SoD opening and level threshold. The current standalone SoD raid has its `ADDED_1_15_1` timeline and level 40; do not restore the obsolete combined source's 2.0.1 removal boundary. [Candidate sources](../input/sources.lua#L234-L271)

```lua
d(198, { flavors = { "sod" }, progressionKey = "gnomeregan.raid10", lvl = 40, timeline = { "added 1.15.1.53181" },
    groups = { n(218242, { groups = { i(213410) } }) } })
```

[brd-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Blackrock%20Depths.lua
[brd-sphere]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Blackrock%20Depths.lua#L1184
[brd-boss]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Blackrock%20Depths.lua#L1707
[brd-seals]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Blackrock%20Depths.lua#L1765
[dfc-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Demon%20Fall%20Canyon.lua
[dfc-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Demon%20Fall%20Canyon.lua#L5
[dfc-eye]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Demon%20Fall%20Canyon.lua#L39
[dm-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Dire%20Maul.lua
[dm-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Dire%20Maul.lua#L131
[dm-summon]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Dire%20Maul.lua#L949
[aq-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua
[aq-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L27
[aq-history]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1290
[aq-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1469
[aq-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L1484
[aq-new]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/2.6%20Temple%20of%20Ahn%27Qiraj.lua#L2244
[gn-file]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Gnomeregan.lua
[gn-history]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Gnomeregan.lua#L225
[gn-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Gnomeregan.lua#L594
[gn-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Gnomeregan.lua#L634
[gn-loot]: https://github.com/ATTWoWAddon/AllTheThings/blob/195b274be460432481e33bb63bfaf9e68bfeec06/.contrib/.db/season%20of%20discovery/dungeons%20%26%20raids/Gnomeregan.lua#L1293
[brd-output]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7283-L7304
[dfc-output-root]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7874-L7882
[dfc-output-eye]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L7896-L7897
[dm-output]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/Vanilla/Categories/Instances.lua#L3881-L3884
[aq-output-old]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L4453-L4462
[aq-output-new]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L4870-L4877
[gn-output-raid]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L8494-L8495
[gn-output-drop]: https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L8718-L8719
