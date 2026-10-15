# Teldrassil Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96606 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96630 | `preQuestSingle` | Corrected: sourceQuest records the effective Questie prerequisite. |
| 96630 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96630 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 96634 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 96634 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97938 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97938 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97938 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97939 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97939 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97939 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97940 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97940 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97940 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97941 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97941 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97941 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97942 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97942 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97942 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97943 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97943 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97943 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97944 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97944 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97944 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97946 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97946 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97946 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97948 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97948 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97948 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97949 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97949 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97949 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97950 | `preQuestSingle` | Corrected: require The Great Outdoors 96606, with alternative completion supplied by its altQuests. |
| 97950 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97950 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97977 | `preQuestSingle` | Corrected: sourceQuest records the effective Questie prerequisite. |
| 97979 | `preQuestSingle` | Corrected: sourceQuest records the effective Questie prerequisite. |
| 87288 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98392 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 98403 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99046 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 99053 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 96606 | `{"altQuests": "{ 95998, 96101, 96604, 96605, 96607, 96608 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96606); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96630 | `{"sourceQuest": "921", "altQuests": "{ 96627, 96628, 96638, 96652, 96656, 96659 }", "isBreadcrumb": "true", "nextQuests": "{ 96606 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96630); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96634 | `{"sourceQuest": "96606", "altQuests": "{ 96626, 96629, 96646, 96655, 96658, 96661 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96634); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97938 | `{"sourceQuest": "96606", "altQuests": "{ 96045, 97899, 97915, 97927, 97951, 97963 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97938); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97939 | `{"sourceQuest": "96606", "altQuests": "{ 96044, 97900, 97916, 97928, 97952, 97964 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97939); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97940 | `{"sourceQuest": "96606", "altQuests": "{ 96059, 97901, 97917, 97929, 97953, 98284, 98286 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97940); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97941 | `{"sourceQuest": "96606", "altQuests": "{ 96058, 97902, 97918, 97930, 97954, 98285, 98287 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97941); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97942 | `{"sourceQuest": "96606", "altQuests": "{ 96047, 97903, 97919, 97931, 97955, 97965 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97942); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97943 | `{"sourceQuest": "96606", "altQuests": "{ 96050, 97904, 97920, 97932, 97956, 97967 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97943); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97944 | `{"sourceQuest": "96606", "altQuests": "{ 96055, 97905, 97921, 97933, 97957, 97968 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97944); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97946 | `{"sourceQuest": "96606", "altQuests": "{ 96031, 97906, 97922, 97934, 97958, 97969 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97946); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97948 | `{"sourceQuest": "96606", "altQuests": "{ 96046, 97907, 97923, 97935, 97959, 97970 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97948); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97949 | `{"sourceQuest": "96606", "altQuests": "{ 96056, 97908, 97924, 97936, 97960, 97971 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97949); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97950 | `{"sourceQuest": "96606", "altQuests": "{ 96057, 96102, 97925, 97937, 97961, 97972, 97973 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97950); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97977 | `{"sourceQuest": "458"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97977); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97979 | `{"sourceQuest": "456"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97979); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
