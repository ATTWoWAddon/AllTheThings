# P1 · what the legacy Parser shipped for Nefarian

**Comparison reference for P1–P3.** These fields come from the committed Season of Discovery database at `6f7b562a`. The full records include additional fields. Use this reference to compare the two loot sources independently.

| Selected legacy output | Where to look |
|---|---|
| Instance `742` carries `phase=1609`. Its ordinary prerequisites include `sourceQuests={7761}`. | [Instance record](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L1865-L1866) |
| The original difficulty is `d(9,{rwp=11504,u=2,...})`. Under its encounter `1536`, item `19003` retains `r=2,u=2` and Ashkandi `19364` retains `u=2`. | [Difficulty 9](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L1880) · [Original loot](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L2038-L2043) |
| The reworked difficulty is `d(201,{awp=11504,...})`. Its encounter `1536` also drops `19003` and has its own Ashkandi `230818`. | [Difficulty 201](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L2066) · [Reworked loot](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/db/VanillaSOD/Categories/Instances.lua#L2430-L2455) |

`1609` is the SoD phase-five ID. The legacy source uses `PHASE_THREE` for the raid, which the SoD build aliases to `SOD_PHASE_FIVE`. Read the release field together with the difficulty, timeline and ordinary acquisition conditions. [Phase-five ID](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/shared/lib/Constants/Phases.lua#L1336-L1341) · [SoD alias](https://github.com/ATTWoWAddon/AllTheThings/blob/6f7b562aad5d78ffbc0d608e9627932d90272827/.contrib/.db/shared/lib/Constants/Phases.lua#L1483)
