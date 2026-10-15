# Durotar Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [94468 Call of Fire](https://www.wowhead.com/forever/quest=94468) | Added | Added in Loch Modan. Reconciled Questie and cached Wowhead record. |
| [98575 Tainted Tablet](https://www.wowhead.com/forever/quest=98575) | Added | Added in Durotar. Reconciled Questie and cached Wowhead record. |
| [98576 Glyphic Parchment](https://www.wowhead.com/forever/quest=98576) | Added | Added in Durotar. Reconciled Questie and cached Wowhead record. |

### 94468: Call of Fire

- [Wowhead quest](https://www.wowhead.com/forever/quest=94468), fetched 2026-09-25T06:32:08+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['o', 61934]]`; finishers: NPC 257597; minimum level 10.
- Objective source text: ["Bring the Torch of Eternal Flame to Bruegs Kindleborn in Dun Morogh."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[5176, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `6654`.

### 98575: Tainted Tablet

- [Wowhead quest](https://www.wowhead.com/forever/quest=98575), fetched 2026-09-25T07:05:57+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 3143]]`; finishers: NPC 3156; minimum level 1.
- Objective source text: ["Read the Tainted Tablet and speak to Nartok inside the Den in the Valley of Trials."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `282346`.

### 98576: Glyphic Parchment

- [Wowhead quest](https://www.wowhead.com/forever/quest=98576), fetched 2026-09-25T07:06:02+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Providers `[['n', 3143]]`; finishers: NPC 5884; minimum level 1.
- Objective source text: ["Read the Glyphic Parchment and speak with Mai'ah near the entrance to the Den in the Valley of Trials."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `282380`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 96102 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96102 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96102 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96604 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96652 | `preQuestSingle` | Corrected: sourceQuest records the effective Questie prerequisite. |
| 96652 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 96652 | `breadcrumbForQuestId` | Corrected: optional introduction uses isBreadcrumb and nextQuests; no mandatory follow-up prerequisite was added. |
| 96655 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 96655 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97899 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97899 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97899 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97900 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97900 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97900 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97901 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97901 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97901 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97902 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97902 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97902 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97903 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97903 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97903 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97904 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97904 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97904 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97905 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97905 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97905 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97906 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97906 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97906 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97907 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97907 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97907 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 97908 | `preQuestSingle` | Already satisfied after local Great Outdoors altQuests correction: native alternative completion accepts another starting-zone introduction without a cross-faction count bypass. |
| 97908 | `exclusiveTo` | Corrected: explicit alternative quest completions are represented with altQuests. |
| 97908 | `requiredSpell` | Pending source and inherited-field reconciliation. |
| 96102 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96604 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96652 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96655 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96821 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96822 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96825 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96873 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96874 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96875 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 96876 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 96877 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97223 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97225 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97279 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97281 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97282 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97899 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97900 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97901 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97902 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97903 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97904 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97905 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97906 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97907 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 97908 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99048 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99049 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99051 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99052 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 99123 | `requiredRaces` | Already satisfied: Forever HORDE_ONLY excludes post-Cata Goblin; normalized adapter mask was incorrect. |
| 1516 | `preQuestSingle` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 96102 | `{"altQuests": "{ 96057, 97925, 97937, 97950, 97961, 97972, 97973 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96102); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96604 | `{"altQuests": "{ 95998, 96101, 96605, 96606, 96607, 96608 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96604); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96652 | `{"sourceQuest": "794", "altQuests": "{ 96627, 96628, 96630, 96638, 96656, 96659 }", "isBreadcrumb": "true", "nextQuests": "{ 96604 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96652); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 96655 | `{"altQuests": "{ 96626, 96629, 96634, 96646, 96658, 96661 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=96655); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97899 | `{"altQuests": "{ 96045, 97915, 97927, 97938, 97951, 97963 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97899); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97900 | `{"altQuests": "{ 96044, 97916, 97928, 97939, 97952, 97964 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97900); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97901 | `{"altQuests": "{ 96059, 97917, 97929, 97940, 97953, 98284, 98286 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97901); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97902 | `{"altQuests": "{ 96058, 97918, 97930, 97941, 97954, 98285, 98287 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97902); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97903 | `{"altQuests": "{ 96047, 97919, 97931, 97942, 97955, 97965 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97903); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97904 | `{"altQuests": "{ 96050, 97920, 97932, 97943, 97956, 97967 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97904); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97905 | `{"altQuests": "{ 96055, 97921, 97933, 97944, 97957, 97968 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97905); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97906 | `{"altQuests": "{ 96031, 97922, 97934, 97946, 97958, 97969 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97906); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97907 | `{"altQuests": "{ 96046, 97923, 97935, 97948, 97959, 97970 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97907); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 97908 | `{"altQuests": "{ 96056, 97924, 97936, 97949, 97960, 97971 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97908); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
