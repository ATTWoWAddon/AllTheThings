# Mulgore Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [94911 Child of Nature](https://www.wowhead.com/forever/quest=94911) | Added | Added in Mulgore. Reconciled Questie and cached Wowhead record. |
| [99197 A Donation of Silk](https://www.wowhead.com/forever/quest=99197) | Deferred | No cached Wowhead detail or allowed source evidence. Missing or multiple start providers need acquisition reconciliation. Missing finish provider needs completion reconciliation. No reward inventory. |

### 94911: Child of Nature

- [Wowhead quest](https://www.wowhead.com/forever/quest=94911), fetched 2026-09-25T06:37:16+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 259118]]`; finishers: NPC 3033; minimum level 10.
- Objective source text: ["Speak with Turak Runetotem in Thunder Bluff."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96605 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96659 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96659 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 96661 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96661 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97927 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97927 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97927 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97928 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97928 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97928 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97929 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97929 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97929 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97930 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97930 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97930 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97931 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97931 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97931 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97932 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97932 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97932 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97933 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97933 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97933 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97934 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97934 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97934 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97935 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97935 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97935 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97936 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97936 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97936 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97937 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97937 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97937 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 99411 | `requiredLevel` | Pending source and inherited-field reconciliation. |
| 76156 | `requiredClasses` | Pending source and inherited-field reconciliation. |
| 76240 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 76240 | `requiredClasses` | Pending source and inherited-field reconciliation. |
| 95805 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96130 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96241 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96259 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96260 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96261 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96294 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96605 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96659 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96661 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97927 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97928 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97929 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97930 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97931 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97932 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97933 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97934 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97935 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97936 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97937 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 98424 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99079 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99080 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99081 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99082 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99101 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99108 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99196 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99411 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 1519 | `preQuestSingle` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 96605 | `{"altQuests": "{ 95998, 96101, 96604, 96606, 96607, 96608 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96605); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96659 | `{"altQuests": "{ 96627, 96628, 96630, 96638, 96652, 96656 }", "isBreadcrumb": "true", "nextQuests": "{ 96605 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96659); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96661 | `{"altQuests": "{ 96626, 96629, 96634, 96646, 96655, 96658 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96661); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97927 | `{"altQuests": "{ 96045, 97899, 97915, 97938, 97951, 97963 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97927); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97928 | `{"altQuests": "{ 96044, 97900, 97916, 97939, 97952, 97964 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97928); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97929 | `{"altQuests": "{ 96059, 97901, 97917, 97940, 97953, 98284, 98286 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97929); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97930 | `{"altQuests": "{ 96058, 97902, 97918, 97941, 97954, 98285, 98287 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97930); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97931 | `{"altQuests": "{ 96047, 97903, 97919, 97942, 97955, 97965 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97931); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97932 | `{"altQuests": "{ 96050, 97904, 97920, 97943, 97956, 97967 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97932); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97933 | `{"altQuests": "{ 96055, 97905, 97921, 97944, 97957, 97968 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97933); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97934 | `{"altQuests": "{ 96031, 97906, 97922, 97946, 97958, 97969 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97934); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97935 | `{"altQuests": "{ 96046, 97907, 97923, 97948, 97959, 97970 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97935); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97936 | `{"altQuests": "{ 96056, 97908, 97924, 97949, 97960, 97971 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97936); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97937 | `{"altQuests": "{ 96057, 96102, 97925, 97950, 97961, 97972, 97973 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97937); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
