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
| 95214 | `preQuestSingle` | Deferred: conflicting prerequisite IDs require direct evidence before replacing existing metadata. |
| 96031 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96031 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96031 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96044 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96044 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96044 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96045 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96045 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96045 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96046 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96046 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96046 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96047 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96047 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96047 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96050 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96050 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96050 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96055 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96055 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96055 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96056 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96056 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96056 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96057 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96057 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96057 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96058 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96058 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96058 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96059 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96059 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96059 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96408 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 96608 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96628 | `preQuestSingle` | Deferred: conflicting prerequisite IDs require direct evidence before replacing existing metadata. |
| 96628 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96628 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 96629 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96629 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 99158 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 95041 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95212 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95214 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 96392 | `wowheadPrerequisites` | Pending source and inherited-field reconciliation. |
| 95212 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99159 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99162 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 96031 | `{"altQuests": "{ 97906, 97922, 97934, 97946, 97958, 97969 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96031); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96044 | `{"altQuests": "{ 97900, 97916, 97928, 97939, 97952, 97964 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96044); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96045 | `{"altQuests": "{ 97899, 97915, 97927, 97938, 97951, 97963 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96045); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96046 | `{"altQuests": "{ 97907, 97923, 97935, 97948, 97959, 97970 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96046); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96047 | `{"altQuests": "{ 97903, 97919, 97931, 97942, 97955, 97965 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96047); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96050 | `{"altQuests": "{ 97904, 97920, 97932, 97943, 97956, 97967 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96050); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96055 | `{"altQuests": "{ 97905, 97921, 97933, 97944, 97957, 97968 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96055); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96056 | `{"altQuests": "{ 97908, 97924, 97936, 97949, 97960, 97971 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96056); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96057 | `{"altQuests": "{ 96102, 97925, 97937, 97950, 97961, 97972, 97973 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96057); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96058 | `{"altQuests": "{ 97902, 97918, 97930, 97941, 97954, 98285, 98287 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96058); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96059 | `{"altQuests": "{ 97901, 97917, 97929, 97940, 97953, 98284, 98286 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96059); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96408 | `{"isBreadcrumb": "true", "nextQuests": "{ 96392 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96408); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96608 | `{"altQuests": "{ 95998, 96101, 96604, 96605, 96606, 96607 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96608); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96628 | `{"altQuests": "{ 96627, 96630, 96638, 96652, 96656, 96659 }", "isBreadcrumb": "true", "nextQuests": "{ 96608 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96628); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96629 | `{"altQuests": "{ 96626, 96634, 96646, 96655, 96658, 96661 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96629); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 99158 | `{"isBreadcrumb": "true", "nextQuests": "{ 99159 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=99158); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
