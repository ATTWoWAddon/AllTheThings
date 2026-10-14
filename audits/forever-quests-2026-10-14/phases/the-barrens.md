# The Barrens Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [95494 Bruised Pride and Lion Hides](https://www.wowhead.com/forever/quest=95494) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [95495 The Hermit Tanner](https://www.wowhead.com/forever/quest=95495) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [95507 Vrang's Game](https://www.wowhead.com/forever/quest=95507) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [95508 Unwelcome Guests](https://www.wowhead.com/forever/quest=95508) | Deferred | No structured objectives or independently verified objective-free completion. |
| [95621 Trouble in the Valley](https://www.wowhead.com/forever/quest=95621) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [95774 Her Name Is Olgra](https://www.wowhead.com/forever/quest=95774) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [95819 Sign Me Up!](https://www.wowhead.com/forever/quest=95819) | Deferred | No supported acquisition coordinates for the start provider. Additional availability requirements need behavioral translation. |
| [97250 Wrongly Blamed, Justly Corrected](https://www.wowhead.com/forever/quest=97250) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [98024 Journey to the Crossroads](https://www.wowhead.com/forever/quest=98024) | Added | Added in The Barrens. Reconciled Questie and cached Wowhead record. |
| [98093 Field to Clear](https://www.wowhead.com/forever/quest=98093) | Deferred | No supported acquisition coordinates for the start provider. |
| [98094 Scout Support](https://www.wowhead.com/forever/quest=98094) | Deferred | No structured objectives or independently verified objective-free completion. |
| [98095 Valuable Vantages](https://www.wowhead.com/forever/quest=98095) | Deferred | No structured objectives or independently verified objective-free completion. |

### 95494: Bruised Pride and Lion Hides

- [Wowhead quest](https://www.wowhead.com/forever/quest=95494), fetched 2026-09-25T06:40:22+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3682]`; finishers: NPC 3682; minimum level 14.
- Objective source text: ["Collect 6 Savannah Lion Hides from the Savannah Matriarchs and Savannah Patriarchs in the Barrens."].
- Structured objective groups: `{"3": [[269715]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 95495: The Hermit Tanner

- [Wowhead quest](https://www.wowhead.com/forever/quest=95495), fetched 2026-09-25T06:40:27+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3682]`; finishers: NPC 261366; minimum level 14.
- Objective source text: ["Bring the Bundle of Hides to the hermit on the ridge overlooking the Dry Hills in the Barrens."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `269718`.

### 95507: Vrang's Game

- [Wowhead quest](https://www.wowhead.com/forever/quest=95507), fetched 2026-09-25T06:40:32+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3682]`; finishers: NPC 3682; minimum level 14.
- Objective source text: ["Collect 8 Trapped Game from traps found in Sprung Traps in the Barrens."].
- Structured objective groups: `{"3": [[269719]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 95621: Trouble in the Valley

- [Wowhead quest](https://www.wowhead.com/forever/quest=95621), fetched 2026-09-25T06:40:42+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 261366]`; finishers: NPC 261366; minimum level 14.
- Objective source text: ["Travel to the wrecked caravan and learn more about why the Kul Tirans are here."].
- Structured objective groups: `{"3": [[270151]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 95774: Her Name Is Olgra

- [Wowhead quest](https://www.wowhead.com/forever/quest=95774), fetched 2026-09-25T06:41:02+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 3432]`; finishers: NPC 3432; minimum level 14.
- Objective source text: ["Slay quilboars and collect 4 of Olgra's Adornments for Mankrik's memorial."].
- Structured objective groups: `{"3": [[277277]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 97250: Wrongly Blamed, Justly Corrected

- [Wowhead quest](https://www.wowhead.com/forever/quest=97250), fetched 2026-09-25T06:49:53+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 5911]`; finishers: NPC 5911; minimum level 18.
- Objective source text: ["Slay Alliance soldiers encroaching into the Barrens at the border to Dustwallow Marsh, then return to Grunt Logmar at Camp Taurajo."].
- Structured objective groups: `[[[268622], [268623]]]`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[[277286, 1], [277288, 1], [277289, 1]]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98024: Journey to the Crossroads

- [Wowhead quest](https://www.wowhead.com/forever/quest=98024), fetched 2026-09-25T06:59:08+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 4949]`; finishers: NPC 3429; minimum level 7.
- Objective source text: ["Report To Thork at The Crossroads in The Barrens."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 79007 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97003 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97253 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
