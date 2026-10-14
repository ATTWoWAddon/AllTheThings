# Tirisfal Glades Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [91282 A Second Home](https://www.wowhead.com/forever/quest=91282) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [91285 Murlocs at the Gates](https://www.wowhead.com/forever/quest=91285) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [91294 Touring the Grounds](https://www.wowhead.com/forever/quest=91294) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [91316 Making Repairs](https://www.wowhead.com/forever/quest=91316) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [91317 The Tarnished](https://www.wowhead.com/forever/quest=91317) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [91858 Diplomatic Incident](https://www.wowhead.com/forever/quest=91858) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [94427 A Lesson in Divinity](https://www.wowhead.com/forever/quest=94427) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [94436 A Lesson in Divinity](https://www.wowhead.com/forever/quest=94436) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [94438 A Lesson in Divinity](https://www.wowhead.com/forever/quest=94438) | Deferred | No structured objectives or independently verified objective-free completion. |
| [94440 A Lesson in Divinity](https://www.wowhead.com/forever/quest=94440) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [94441 A Lesson in Divinity](https://www.wowhead.com/forever/quest=94441) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |
| [95803 A Token of Good Faith](https://www.wowhead.com/forever/quest=95803) | Added | Added in Tirisfal Glades. Reconciled Questie and cached Wowhead record. |

### 91282: A Second Home

- [Wowhead quest](https://www.wowhead.com/forever/quest=91282), fetched 2026-09-25T05:58:08+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246152]`; finishers: NPC 246349; minimum level 8.
- Objective source text: ["Find the fortress of Bandarion Keep and report to Breton Samuels there."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91285: Murlocs at the Gates

- [Wowhead quest](https://www.wowhead.com/forever/quest=91285), fetched 2026-09-25T05:58:13+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246349]`; finishers: NPC 246349; minimum level 7.
- Objective source text: ["Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done."].
- Structured objective groups: `[[[250283], [250282]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[[246164, 1], [246165, 1]]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91294: Touring the Grounds

- [Wowhead quest](https://www.wowhead.com/forever/quest=91294), fetched 2026-09-25T05:58:35+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246349]`; finishers: NPC 246378; minimum level 8.
- Objective source text: ["Speak to the residents of Bandarion Keep."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91316: Making Repairs

- [Wowhead quest](https://www.wowhead.com/forever/quest=91316), fetched 2026-09-25T05:58:35+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246393]`; finishers: NPC 246393; minimum level 8.
- Objective source text: ["Collect 12 pieces of Sturdy Lumber from Shadowvale in Tirisfal Glades."].
- Structured objective groups: `{"3": [[246213]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[[246265, 1]]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91317: The Tarnished

- [Wowhead quest](https://www.wowhead.com/forever/quest=91317), fetched 2026-09-25T05:58:40+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246378]`; finishers: NPC 246378; minimum level 9.
- Objective source text: ["Slay 8 Tarnished Drudges, 6 Tarnished Zealots, and collect the head of Commander Rudolph Gelhardt in Tirisfal Glades."].
- Structured objective groups: `[[[259434], [259433]], null, [[270435]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91858: Diplomatic Incident

- [Wowhead quest](https://www.wowhead.com/forever/quest=91858), fetched 2026-09-25T06:00:41+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246378]`; finishers: NPC 248840; minimum level 18.
- Objective source text: ["Travel to The Sepulcher in Silverpine Forest and speak with Trevan Rol about the missing Earthen Ring travelers."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94427: A Lesson in Divinity

- [Wowhead quest](https://www.wowhead.com/forever/quest=94427), fetched 2026-09-25T06:31:02+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246378]`; finishers: NPC 257648; minimum level 12.
- Objective source text: ["Speak to Tanis Alderwood in the Undercity."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94436: A Lesson in Divinity

- [Wowhead quest](https://www.wowhead.com/forever/quest=94436), fetched 2026-09-25T06:31:17+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246378]`; finishers: NPC 257655; minimum level 12.
- Objective source text: ["Speak with Deathguard Billmuth at Bandarion Keep.", "", "Should you misplace your Symbol of Life, return to Danitha Morr for a replacement."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94440: A Lesson in Divinity

- [Wowhead quest](https://www.wowhead.com/forever/quest=94440), fetched 2026-09-25T06:31:27+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 257663]`; finishers: NPC 257655; minimum level 12.
- Objective source text: ["Retrieve the Scarlet Crusade Attack Plans from the Scarlet Crusaders at Venomweb Vale, and return to Deathguard Billmuth at Tyr's Watch."].
- Structured objective groups: `{"3": [[264693]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94441: A Lesson in Divinity

- [Wowhead quest](https://www.wowhead.com/forever/quest=94441), fetched 2026-09-25T06:31:32+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 257655]`; finishers: NPC 246378; minimum level 12.
- Objective source text: ["Speak with Danitha Morr in the keep at Bandarion Keep."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 95803: A Token of Good Faith

- [Wowhead quest](https://www.wowhead.com/forever/quest=95803), fetched 2026-09-25T06:41:07+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 246378]`; finishers: NPC 10181; minimum level 9.
- Objective source text: ["Bring the head of Rudolph Gelhardt to Sylvanas Windrunner in the Undercity."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `270436`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96607 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96656 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96656 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 96658 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96658 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97951 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97951 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97951 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97952 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97952 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97952 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97953 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97953 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97953 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97954 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97954 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97954 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97955 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97955 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97955 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97956 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97956 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97956 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97957 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97957 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97957 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97958 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97958 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97958 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97959 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97959 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97959 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97960 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97960 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97960 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97961 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97961 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97961 | `requiredSpell` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
