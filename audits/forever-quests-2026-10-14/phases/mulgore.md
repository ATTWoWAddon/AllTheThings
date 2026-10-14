# Mulgore Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [94911 Child of Nature](https://www.wowhead.com/forever/quest=94911) | Added | Added in Mulgore. Reconciled Questie and cached Wowhead record. |
| [99197 A Donation of Silk](https://www.wowhead.com/forever/quest=99197) | Deferred | No cached Wowhead detail or allowed source evidence. Missing or multiple start providers need acquisition reconciliation. Missing or multiple finish providers need completion reconciliation. No reward inventory. |

### 94911: Child of Nature

- [Wowhead quest](https://www.wowhead.com/forever/quest=94911), fetched 2026-09-25T06:37:16+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 259118]`; finishers: NPC 3033; minimum level 10.
- Objective source text: ["Speak with Turak Runetotem in Thunder Bluff."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96605 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96659 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 96659 | `breadcrumbForQuestId` | Pending source and inherited-field reconciliation. |
| 96661 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 96661 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97927 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97927 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97927 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97928 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97928 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97928 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97929 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97929 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97929 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97930 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97930 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97930 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97931 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97931 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97931 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97932 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97932 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97932 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97933 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97933 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97933 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97934 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97934 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97934 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97935 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97935 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97935 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97936 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97936 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97936 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97937 | `preQuestSingle` | Pending source and inherited-field reconciliation. |
| 97937 | `exclusiveTo` | Pending source and inherited-field reconciliation. |
| 97937 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 99411 | `requiredLevel` | Pending source and inherited-field reconciliation. |
| 76156 | `requiredClasses` | Pending source and inherited-field reconciliation. |
| 76240 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 76240 | `requiredClasses` | Pending source and inherited-field reconciliation. |
| 95805 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96130 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96241 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96259 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96260 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96261 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96294 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96605 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96659 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96661 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97927 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97928 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97929 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97930 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97931 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97932 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97933 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97934 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97935 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97936 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97937 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98424 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99079 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99080 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99081 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99082 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99101 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99108 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99196 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99411 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 1519 | `preQuestSingle` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
