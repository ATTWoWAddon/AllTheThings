# Redridge Mountains Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [91899 A Sealed Crate](https://www.wowhead.com/forever/quest=91899) | Added | Added in Redridge Mountains. Reconciled Questie and cached Wowhead record. |
| [91900 A Sealed Crate](https://www.wowhead.com/forever/quest=91900) | Added | Added in Redridge Mountains. Reconciled Questie and cached Wowhead record. |
| [91904 A Sealed Crate](https://www.wowhead.com/forever/quest=91904) | Deferred | Missing minimum level. |
| [91905 A Sealed Crate](https://www.wowhead.com/forever/quest=91905) | Deferred | Missing minimum level. |
| [95816 Sign Me Up!](https://www.wowhead.com/forever/quest=95816) | Deferred | No supported acquisition coordinates for the start provider. Additional availability requirements need behavioral translation. |

### 91899: A Sealed Crate

- [Wowhead quest](https://www.wowhead.com/forever/quest=91899), fetched 2026-09-25T06:01:06+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 256390], ['n', 256386]]`; finishers: NPC 256386, NPC 256390; minimum level 1.
- Objective source text: [].
- Structured objective groups: `{"3": [[248765]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 91900: A Sealed Crate

- [Wowhead quest](https://www.wowhead.com/forever/quest=91900), fetched 2026-09-25T06:01:11+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 256390]]`; finishers: NPC 256386, NPC 256390; minimum level 1.
- Objective source text: [].
- Structured objective groups: `{"3": [[248766]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 95999 | `requiredLevel` | Pending source and inherited-field reconciliation. |
| 95999 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98248 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 98386 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98387 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98407 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
