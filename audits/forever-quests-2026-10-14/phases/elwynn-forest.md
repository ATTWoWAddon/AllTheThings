# Elwynn Forest Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [92479 A Scribbled Letter](https://www.wowhead.com/forever/quest=92479) | Deferred | Explicit Questie and Wowhead class restrictions conflict. |
| [94774 Divine Grace](https://www.wowhead.com/forever/quest=94774) | Added | Added in Elwynn Forest. Reconciled Questie and cached Wowhead record. |
| [94792 Taming the Beast](https://www.wowhead.com/forever/quest=94792) | Added | Added in Elwynn Forest. Reconciled Questie and cached Wowhead record. |
| [94793 Training the Beast](https://www.wowhead.com/forever/quest=94793) | Added | Added in Elwynn Forest. Reconciled Questie and cached Wowhead record. |
| [94863 Taming the Beast](https://www.wowhead.com/forever/quest=94863) | Added | Added in Elwynn Forest. Reconciled Questie and cached Wowhead record. |
| [94864 Taming the Beast](https://www.wowhead.com/forever/quest=94864) | Added | Added in Elwynn Forest. Reconciled Questie and cached Wowhead record. |

### 94774: Divine Grace

- [Wowhead quest](https://www.wowhead.com/forever/quest=94774), fetched 2026-09-25T06:34:39+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 377]]`; finishers: NPC 376; minimum level 10.
- Objective source text: ["Speak to High Priestess Laurena in Stormwind."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94792: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94792), fetched 2026-09-25T06:35:21+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 251507]]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Rockhide Boar. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[524, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266158`.

### 94793: Training the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94793), fetched 2026-09-25T06:35:27+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 251507]]`; finishers: NPC 258930; minimum level 10.
- Objective source text: ["Speak to Isaac Chan in Goldshire."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 94863: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94863), fetched 2026-09-25T06:36:30+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 251507]]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Gray Forest Wolf. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[1922, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266253`.

### 94864: Taming the Beast

- [Wowhead quest](https://www.wowhead.com/forever/quest=94864), fetched 2026-09-25T06:36:35+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 251507]]`; finishers: NPC 251507; minimum level 10.
- Objective source text: ["Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Josephine Carson."].
- Structured objective groups: `[[[822, null, 17]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `266254`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 95998 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96626 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96626 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96627 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96627 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 97915 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97915 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97915 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97916 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97916 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97916 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97917 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97917 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97917 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97918 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97918 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97918 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97919 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97919 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97919 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97920 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97920 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97920 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97921 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97921 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97921 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97922 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97922 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97922 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97923 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97923 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97923 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97924 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97924 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97924 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97925 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97925 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
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

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 95998 | `{"altQuests": "{ 96101, 96604, 96605, 96606, 96607, 96608 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=95998); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96626 | `{"altQuests": "{ 96629, 96634, 96646, 96655, 96658, 96661 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96626); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96627 | `{"altQuests": "{ 96628, 96630, 96638, 96652, 96656, 96659 }", "isBreadcrumb": "true", "nextQuests": "{ 95998 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96627); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97915 | `{"altQuests": "{ 96045, 97899, 97927, 97938, 97951, 97963 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97915); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97916 | `{"altQuests": "{ 96044, 97900, 97928, 97939, 97952, 97964 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97916); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97917 | `{"altQuests": "{ 96059, 97901, 97929, 97940, 97953, 98284, 98286 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97917); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97918 | `{"altQuests": "{ 96058, 97902, 97930, 97941, 97954, 98285, 98287 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97918); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97919 | `{"altQuests": "{ 96047, 97903, 97931, 97942, 97955, 97965 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97919); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97920 | `{"altQuests": "{ 96050, 97904, 97932, 97943, 97956, 97967 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97920); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97921 | `{"altQuests": "{ 96055, 97905, 97933, 97944, 97957, 97968 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97921); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97922 | `{"altQuests": "{ 96031, 97906, 97934, 97946, 97958, 97969 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97922); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97923 | `{"altQuests": "{ 96046, 97907, 97935, 97948, 97959, 97970 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97923); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97924 | `{"altQuests": "{ 96056, 97908, 97936, 97949, 97960, 97971 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97924); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97925 | `{"altQuests": "{ 96057, 96102, 97937, 97950, 97961, 97972, 97973 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97925); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
