# Dun Morogh Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [94449 Call of Fire](https://www.wowhead.com/forever/quest=94449) | Added | Added in Dun Morogh. Reconciled Questie and cached Wowhead record. |
| [94465 Call of Fire](https://www.wowhead.com/forever/quest=94465) | Added | Added in Dun Morogh. Reconciled Questie and cached Wowhead record. |
| [94472 Earth Sapta](https://www.wowhead.com/forever/quest=94472) | Deferred | Additional availability requirements need behavioral translation. |
| [94824 Confounding Flash](https://www.wowhead.com/forever/quest=94824) | Added | Added in Dun Morogh. Reconciled Questie and cached Wowhead record. |
| [98574 Hallowed Memorandum](https://www.wowhead.com/forever/quest=98574) | Added | Added in Dun Morogh. Reconciled Questie and cached Wowhead record. |

### 94449: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94449), fetched 2026-09-25T06:31:37+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 258098], ['n', 258113]]`; finishers: NPC 257597; minimum level 10.
- Objective source text: ["Find Bruegs Kindleborn in Dun Morogh."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94465: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94465), fetched 2026-09-25T06:31:57+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 257597]]`; finishers: NPC 257808; minimum level 10.
- Objective source text: ["Bring the Torch of the Dormant Flame to Braldir Ashmantle in Loch Modan."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `6653`.

### 94824: Confounding Flash

- [Wowhead quest](https://www.wowhead.com/forever/quest=94824), fetched 2026-09-25T06:36:15+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 1226]]`; finishers: NPC 258785; minimum level 10.
- Objective source text: ["Speak to High Priestess Mims in Ironforge."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98574: Hallowed Memorandum

- [Wowhead quest](https://www.wowhead.com/forever/quest=98574), fetched 2026-09-25T07:05:52+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 658]]`; finishers: NPC 837; minimum level 1.
- Objective source text: ["Read the Hallowed Memorandum and speak to Branstock Khalder in Anvilmar."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `282338`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 95214 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96031 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96031 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96031 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96044 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96044 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96044 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96045 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96045 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96045 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96046 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96046 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96046 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96047 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96047 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96047 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96050 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96050 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96050 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96055 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96055 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96055 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96056 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96056 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96056 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96057 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96057 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96057 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96058 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96058 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96058 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96059 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96059 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96059 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96408 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 96608 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96628 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96628 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96628 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 96629 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96629 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 99158 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 95041 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95212 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95214 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 96392 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95212 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99159 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99162 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
