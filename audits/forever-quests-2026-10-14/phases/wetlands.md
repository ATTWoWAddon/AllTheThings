# Wetlands Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [87318 Hearts of the Lost](https://www.wowhead.com/forever/quest=87318) | Deferred | No cached Wowhead detail or allowed source evidence. No structured objectives or independently verified objective-free completion. No reward inventory. |
| [88757 Accessories of the Lost](https://www.wowhead.com/forever/quest=88757) | Deferred | No cached Wowhead detail or allowed source evidence. No reward inventory. |
| [88758 Sentiments of the Lost](https://www.wowhead.com/forever/quest=88758) | Deferred | No cached Wowhead detail or allowed source evidence. No structured objectives or independently verified objective-free completion. No reward inventory. |
| [94497 Call of Water](https://www.wowhead.com/forever/quest=94497) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |
| [94499 Call of Water](https://www.wowhead.com/forever/quest=94499) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |
| [94500 Call of Water](https://www.wowhead.com/forever/quest=94500) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |
| [94501 Call of Water](https://www.wowhead.com/forever/quest=94501) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |
| [98240 Crimson Crate Delivery](https://www.wowhead.com/forever/quest=98240) | Deferred | Missing or multiple start providers need acquisition reconciliation. Missing finish provider needs completion reconciliation. |
| [98283 Carnage](https://www.wowhead.com/forever/quest=98283) | Deferred | No cached Wowhead detail or allowed source evidence. No reward inventory. |
| [98459 A Lack of Virtue](https://www.wowhead.com/forever/quest=98459) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |
| [98461 Unrequited Love](https://www.wowhead.com/forever/quest=98461) | Added | Added in Wetlands. Reconciled Questie and cached Wowhead record. |

### 94497: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94497), fetched 2026-09-25T06:33:29+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 258203]`; finishers: NPC 258203; minimum level 20.
- Objective source text: ["Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands."].
- Structured objective groups: `{"3": [[265734]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `265732`.

### 94499: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94499), fetched 2026-09-25T06:33:34+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 258203]`; finishers: NPC 258203; minimum level 20.
- Objective source text: ["Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands."].
- Structured objective groups: `{"3": [[265748]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `265747`.

### 94500: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94500), fetched 2026-09-25T06:33:39+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 258203]`; finishers: NPC 258203; minimum level 20.
- Objective source text: ["Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands."].
- Structured objective groups: `{"3": [[265773]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `265772`.

### 94501: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94501), fetched 2026-09-25T06:33:59+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 258203]`; finishers: NPC 258043; minimum level 20.
- Objective source text: ["Bring the Vial of Purest Water to Norric Lochthane in Loch Modan."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[6637, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `7810`.

### 98459: A Lack of Virtue

- [Wowhead quest](https://www.wowhead.com/forever/quest=98459), fetched 2026-09-25T07:05:16+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 254078]`; finishers: NPC 1481; minimum level 18.
- Objective source text: ["Deliver Tom's Gift to Bart Tidewater in Menethil Harbor in the Wetlands."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `281240`.

### 98461: Unrequited Love

- [Wowhead quest](https://www.wowhead.com/forever/quest=98461), fetched 2026-09-25T07:05:37+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 2913]`; finishers: NPC 2096; minimum level 18.
- Objective source text: ["Deliver Hollee's Note to Tarrel Rockweaver near Menethil Harbor in the Wetlands."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `281243`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 98197 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98209 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98282 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
