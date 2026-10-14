# Silverpine Forest Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [78261 The Horn of Xelthos](https://www.wowhead.com/forever/quest=78261) | Deferred | Updated Wowhead baseline rewards need effective Forever reconciliation. Missing or multiple start providers need acquisition reconciliation. Missing or multiple finish providers need completion reconciliation. Missing minimum level. Minimum level conflicts with cached Wowhead detail. Explicit Questie and Wowhead class restrictions conflict. |
| [91859 A Curious Pair](https://www.wowhead.com/forever/quest=91859) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [91860 A Grim Fate](https://www.wowhead.com/forever/quest=91860) | Deferred | Missing or multiple finish providers need completion reconciliation. No structured objectives or independently verified objective-free completion. |
| [91862 Lumina Windsinger](https://www.wowhead.com/forever/quest=91862) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [91920 Wild Eyes](https://www.wowhead.com/forever/quest=91920) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [91921 Return to Quinn (Again)](https://www.wowhead.com/forever/quest=91921) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [94505 Call of Water](https://www.wowhead.com/forever/quest=94505) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [95034 The Debt](https://www.wowhead.com/forever/quest=95034) | Deferred | Wowhead prerequisite references require source reconciliation. |
| [95036 A Moon-Kissed Blade](https://www.wowhead.com/forever/quest=95036) | Deferred | Explicit Questie and Wowhead race restrictions conflict. Wowhead prerequisite references require source reconciliation. |
| [95111 An Underrated Talent](https://www.wowhead.com/forever/quest=95111) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [95140 Old Fire-Eye](https://www.wowhead.com/forever/quest=95140) | Deferred | No structured objectives or independently verified objective-free completion. |
| [95883 The Tortured Soul](https://www.wowhead.com/forever/quest=95883) | Deferred | Missing or multiple start providers need acquisition reconciliation. Missing or multiple finish providers need completion reconciliation. |
| [95884 The Offering Stone](https://www.wowhead.com/forever/quest=95884) | Deferred | Missing or multiple finish providers need completion reconciliation. |
| [95885 The Offering of Blood](https://www.wowhead.com/forever/quest=95885) | Deferred | No structured objectives or independently verified objective-free completion. |
| [95981 Watching the Roads](https://www.wowhead.com/forever/quest=95981) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [96204 The Windshaper's Wrath](https://www.wowhead.com/forever/quest=96204) | Deferred | No structured objectives or independently verified objective-free completion. Wowhead prerequisite references require source reconciliation. |
| [98298 Arugal's Folly](https://www.wowhead.com/forever/quest=98298) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |
| [98299 Stop the Spread](https://www.wowhead.com/forever/quest=98299) | Added | Added in Silverpine Forest. Reconciled Questie and cached Wowhead record. |

### 91859: A Curious Pair

- [Wowhead quest](https://www.wowhead.com/forever/quest=91859), fetched 2026-09-25T06:00:46+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 248840]`; finishers: NPC 259611; minimum level 18.
- Objective source text: ["Speak with Deathguard Baldren about the mysterious Earthen Ring travelers who recently passed through The Sepulcher."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91862: Lumina Windsinger

- [Wowhead quest](https://www.wowhead.com/forever/quest=91862), fetched 2026-09-25T06:01:01+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 248755]`; finishers: NPC 248755; minimum level 18.
- Objective source text: ["Retrieve the Fenris Isle Key from the Rot Hide Gnolls and use it to free Lumina Windsinger."].
- Structured objective groups: `{"3": [[267412]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91920: Wild Eyes

- [Wowhead quest](https://www.wowhead.com/forever/quest=91920), fetched 2026-09-25T06:01:42+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 1951]`; finishers: NPC 1937; minimum level 10.
- Objective source text: ["Gather 3 murloc eyes and bring them to Apothecary Renferrel at the Sepulcher."].
- Structured objective groups: `{"3": [[730]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[4597, 1], [4596, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91921: Return to Quinn (Again)

- [Wowhead quest](https://www.wowhead.com/forever/quest=91921), fetched 2026-09-25T06:01:47+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 1937]`; finishers: NPC 1951; minimum level 10.
- Objective source text: ["Bring Quinn's potion to Quinn Yorick at the Ivar Patch, north of the Sepulcher."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `248930`.

### 94505: Call of Water

- [Wowhead quest](https://www.wowhead.com/forever/quest=94505), fetched 2026-09-25T06:34:09+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 5895]`; finishers: NPC 258043; minimum level 20.
- Objective source text: ["Bring the Shard of Water to Norric Lochthane in Loch Modan."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[5177, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `7813`.

### 95111: An Underrated Talent

- [Wowhead quest](https://www.wowhead.com/forever/quest=95111), fetched 2026-09-25T06:38:31+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 248840]`; finishers: NPC 3539; minimum level 20.
- Objective source text: ["Speak with Ott and ask him to forge your blade."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `268192`.

### 95981: Watching the Roads

- [Wowhead quest](https://www.wowhead.com/forever/quest=95981), fetched 2026-09-25T06:41:42+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 2121]`; finishers: NPC 2121; minimum level 10.
- Objective source text: ["Slay 8 Dalaran Wizards and 8 Dalaran Watchers for Shadow Priest Allister in the Sepulcher."].
- Structured objective groups: `[[[1888], [1889]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[281265, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98298: Arugal's Folly

- [Wowhead quest](https://www.wowhead.com/forever/quest=98298), fetched 2026-09-25T07:02:10+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 1938]`; finishers: NPC 1938; minimum level 9.
- Objective source text: ["Bring 6 Worgen Bits to Dalar Dawnweaver in The Sepulcher."].
- Structured objective groups: `{"3": [[280375]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[281315, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98299: Stop the Spread

- [Wowhead quest](https://www.wowhead.com/forever/quest=98299), fetched 2026-09-25T07:02:15+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 1938]`; finishers: NPC 1938; minimum level 9.
- Objective source text: ["Slay 5 Sickly Refugees and 5 Haggard Refugees for Dalar Dawnweaver in The Sepulcher."].
- Structured objective groups: `[[[2053], [2054]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
