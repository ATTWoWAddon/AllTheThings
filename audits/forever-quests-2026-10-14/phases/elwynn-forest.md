# Elwynn Forest Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [92479 A Scribbled Letter](https://www.wowhead.com/forever/quest=92479) | Deferred | Explicit Questie and Wowhead class restrictions conflict. |
| [94774 Divine Grace](https://www.wowhead.com/forever/quest=94774) | Added | Reconciled Questie and cached Wowhead record. |
| [94792 Taming the Beast](https://www.wowhead.com/forever/quest=94792) | Added | Reconciled Questie and cached Wowhead record. |
| [94793 Training the Beast](https://www.wowhead.com/forever/quest=94793) | Added | Reconciled Questie and cached Wowhead record. |
| [94863 Taming the Beast](https://www.wowhead.com/forever/quest=94863) | Added | Reconciled Questie and cached Wowhead record. |
| [94864 Taming the Beast](https://www.wowhead.com/forever/quest=94864) | Added | Reconciled Questie and cached Wowhead record. |

### 94774: Divine Grace

- [Wowhead quest](https://www.wowhead.com/forever/quest=94774), fetched 2026-09-25T06:34:39+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 377]`; finishers: NPC 376; minimum level 10.
- Objective source text: ["Speak to High Priestess Laurena in Stormwind."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94792: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94792), fetched 2026-09-25T06:35:21+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 251507]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[524, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266158`.

### 94793: Training the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94793), fetched 2026-09-25T06:35:27+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 251507]`; finishers: NPC 258930; minimum level 10.
- Objective source text: ["Speak to Isaac Chan in Goldshire."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94863: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94863), fetched 2026-09-25T06:36:30+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 251507]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[1922, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266253`.

### 94864: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94864), fetched 2026-09-25T06:36:35+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 251507]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[822, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266254`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 95998 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96626 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96626 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96627 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96627 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 97915 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97915 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97915 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97916 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97916 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97916 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97917 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97917 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97917 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97918 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97918 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97918 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97919 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97919 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97919 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97920 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97920 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97920 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97921 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97921 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97921 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97922 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97922 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97922 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97923 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97923 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97923 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97924 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97924 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97924 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97925 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97925 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97925 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 91736 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 91743 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 91752 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 91753 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 91772 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 91775 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 91777 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 95998 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99130 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
