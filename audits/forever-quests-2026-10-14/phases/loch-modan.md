# Loch Modan Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [86613 Excavation Tools](https://www.wowhead.com/forever/quest=86613) | Deferred | No supported acquisition coordinates for the start provider. No structured objectives or independently verified objective-free completion. |
| [94466 Call of Fire](https://www.wowhead.com/forever/quest=94466) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [94467 Call of Fire](https://www.wowhead.com/forever/quest=94467) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [94468 Call of Fire](https://www.wowhead.com/forever/quest=94468) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [94473 Fire Sapta](https://www.wowhead.com/forever/quest=94473) | Deferred | Additional availability requirements need behavioral translation. |
| [94495 Call of Water](https://www.wowhead.com/forever/quest=94495) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [94502 Call of Water](https://www.wowhead.com/forever/quest=94502) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [94616 Water Sapta](https://www.wowhead.com/forever/quest=94616) | Deferred | No structured objectives or independently verified objective-free completion. |

### 94466: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94466), fetched 2026-09-25T06:31:58+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 257808]]`; finishers: NPC 257808; minimum level 10.
- Objective source text: ["Bring 1 Fire Tar and 1 Reagent Pouch to Braldir Ashmantle in Loch Modan."].
- Structured objective groups: `{"3": [[5026], [6652]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[6636, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94467: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94467), fetched 2026-09-25T06:32:03+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 257808]]`; finishers: Object 61934; minimum level 10.
- Objective source text: ["Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame."].
- Structured objective groups: `{"3": [[6655]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[6654, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `6653`.

### 94468: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94468), fetched 2026-09-25T06:32:08+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['o', 61934]]`; finishers: NPC 257597; minimum level 10.
- Objective source text: ["Bring the Torch of Eternal Flame to Bruegs Kindleborn in Dun Morogh."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[5176, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `6654`.

### 94495: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94495), fetched 2026-09-25T06:33:23+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 258043]]`; finishers: NPC 258203; minimum level 20.
- Objective source text: ["Find Hervdana Saegrund in the Wetlands."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94502: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94502), fetched 2026-09-25T06:33:59+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 258043]]`; finishers: Object 619896; minimum level 20.
- Completion provider filled from cached Wowhead quest-end infobox: [[], [619896]].
- Objective source text: ["Cleanse the corruption at Stendel's Pond in Westfall. Return to Norric in Loch Modan when finished."].
- Structured objective groups: `{"3": [[7812]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `7811`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 86585 | `requiredLevel` | Corrected: lvl = 10. Effective Questie and cached Wowhead fields agree. |
| 86614 | `requiredLevel` | Corrected: lvl = 13. Effective Questie and cached Wowhead fields agree. |
| 86758 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 86776 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 86585 | `{"lvl": "10"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=86585); effective Questie registry at revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 86614 | `{"lvl": "13"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=86614); effective Questie registry at revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
