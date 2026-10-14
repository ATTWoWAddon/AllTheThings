# Darkshore Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [87760 Holy Diver](https://www.wowhead.com/forever/quest=87760) | Added | Reconciled Questie and cached Wowhead record. |
| [98013 Swelling Forces](https://www.wowhead.com/forever/quest=98013) | Added | Reconciled Questie and cached Wowhead record. |
| [98028 Baron Marinous](https://www.wowhead.com/forever/quest=98028) | Added | Reconciled Questie and cached Wowhead record. |
| [98042 It's All Fun and Games Until...](https://www.wowhead.com/forever/quest=98042) | Added | Reconciled Questie and cached Wowhead record. |

### 87760: Holy Diver

- [Wowhead quest](https://www.wowhead.com/forever/quest=87760), fetched 2026-09-25T05:57:43+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 10219]`; finishers: NPC 10219; minimum level 15.
- Objective source text: ["Find a Stormscale Beastmistress, slay her, and bring back her Rod of Deep Dominion."].
- Structured objective groups: `{"3": [[280686]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[5996, 5], [6372, 5]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98013: Swelling Forces

- [Wowhead quest](https://www.wowhead.com/forever/quest=98013), fetched 2026-09-25T06:58:58+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 270269]`; finishers: NPC 270269; minimum level 12.
- Objective source text: ["Eliminate 12 Stormscale Myrmidons, 8 Stormscale Sorceresses, and 6 Stormscale Warriors for Arbal at the Grove of the Ancients."].
- Structured objective groups: `[[[2181], [2182], [2183]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98028: Baron Marinous

- [Wowhead quest](https://www.wowhead.com/forever/quest=98028), fetched 2026-09-25T06:59:33+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['i', 279275]`; finishers: NPC 3616; minimum level 17.
- Objective source text: ["Bring the Clouded Water Globe to Onu at the Grove of the Ancients in Darkshore."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[[281291, 1], [281292, 1]]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `279275`.

### 98042: It's All Fun and Games Until...

- [Wowhead quest](https://www.wowhead.com/forever/quest=98042), fetched 2026-09-25T06:59:34+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['o', 12666]`; finishers: NPC 3649; minimum level 12.
- Objective source text: ["Obtain a Peerless Eye from a Twilight Disciple or Thug at the Master's Glaive in Darkshore and find someone in Auberdine who is willing to take it."].
- Structured objective groups: `{"3": [[279279]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 97894 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 97894 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97926 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98025 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
