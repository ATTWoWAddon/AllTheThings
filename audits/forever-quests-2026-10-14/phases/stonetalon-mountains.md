# Stonetalon Mountains Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [86574 Stonetalon Supply Run](https://www.wowhead.com/forever/quest=86574) | Added | Added in Stonetalon Mountains. Reconciled Questie and cached Wowhead record. |
| [86576 Bloodfury Trinkets](https://www.wowhead.com/forever/quest=86576) | Deferred | Missing or multiple finish providers need completion reconciliation. |
| [97538 Pigments for Paints](https://www.wowhead.com/forever/quest=97538) | Added | Added in Stonetalon Mountains. Reconciled Questie and cached Wowhead record. |

### 86574: Stonetalon Supply Run

- [Wowhead quest](https://www.wowhead.com/forever/quest=86574), fetched 2026-09-25T05:56:43+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 268925]`; finishers: NPC 16458; minimum level 20.
- Objective source text: ["Collect 6 Stonetalon Supplies from Pridewing Wyverns and deliver them to Innkeeper Faralia."].
- Structured objective groups: `{"3": [[277917]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[281251, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `277915`.

### 97538: Pigments for Paints

- [Wowhead quest](https://www.wowhead.com/forever/quest=97538), fetched 2026-09-25T06:51:39+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3024]`; finishers: NPC 3024; minimum level 20.
- Objective source text: ["Tah Winterhoof in Thunder Bluff wants 30 Mirkweed Pods from Mirkfallon Lake."].
- Structured objective groups: `{"3": [[278201]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
