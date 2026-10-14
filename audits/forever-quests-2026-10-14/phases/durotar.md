# Durotar Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [94468 Call of Fire](https://www.wowhead.com/forever/quest=94468) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [98575 Tainted Tablet](https://www.wowhead.com/forever/quest=98575) | Added | Added in Durotar. Reconciled Questie and cached Wowhead record. |
| [98576 Glyphic Parchment](https://www.wowhead.com/forever/quest=98576) | Added | Added in Durotar. Reconciled Questie and cached Wowhead record. |

### 94468: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94468), fetched 2026-09-25T06:32:08+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['o', 61934]`; finishers: NPC 257597; minimum level 10.
- Objective source text: ["Bring the Torch of Eternal Flame to Bruegs Kindleborn in Dun Morogh."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[5176, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `6654`.

### 98575: Tainted Tablet

- [Wowhead quest](https://www.wowhead.com/forever/quest=98575), fetched 2026-09-25T07:05:57+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3143]`; finishers: NPC 3156; minimum level 1.
- Objective source text: ["Read the Tainted Tablet and speak to Nartok inside the Den in the Valley of Trials."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `282346`.

### 98576: Glyphic Parchment

- [Wowhead quest](https://www.wowhead.com/forever/quest=98576), fetched 2026-09-25T07:06:02+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3143]`; finishers: NPC 5884; minimum level 1.
- Objective source text: ["Read the Glyphic Parchment and speak with Mai'ah near the entrance to the Den in the Valley of Trials."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `282380`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96102 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96102 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96102 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96604 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96652 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96652 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96652 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 96655 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96655 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97899 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97899 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97899 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97900 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97900 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97900 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97901 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97901 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97901 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97902 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97902 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97902 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97903 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97903 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97903 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97904 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97904 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97904 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97905 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97905 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97905 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97906 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97906 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97906 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97907 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97907 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97907 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97908 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97908 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97908 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96102 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96604 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96652 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96655 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96821 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96822 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96825 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96873 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96874 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96875 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96876 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96877 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97223 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97225 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97279 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97281 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97282 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97899 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97900 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97901 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97902 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97903 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97904 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97905 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97906 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97907 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97908 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99048 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99049 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99051 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99052 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99123 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 1516 | `preQuestSingle` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
