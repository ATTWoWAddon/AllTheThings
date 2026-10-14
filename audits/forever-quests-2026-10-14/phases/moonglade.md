# Moonglade Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [98341 The Great Windborne Cat Spirit](https://www.wowhead.com/forever/quest=98341) | Deferred | Explicit Questie and Wowhead race restrictions conflict. |
| [98342 The Great Cat Spirit](https://www.wowhead.com/forever/quest=98342) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98362 To Thunder Bluff](https://www.wowhead.com/forever/quest=98362) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98394 The Great Cat Spirit](https://www.wowhead.com/forever/quest=98394) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98396 The Great Cat Spirit](https://www.wowhead.com/forever/quest=98396) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98397 To Darnassus](https://www.wowhead.com/forever/quest=98397) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98404 The Great Windborne Cat Spirit](https://www.wowhead.com/forever/quest=98404) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98405 The Great Cat Spirit](https://www.wowhead.com/forever/quest=98405) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |
| [98731 Blessings of the Great Cat Spirit](https://www.wowhead.com/forever/quest=98731) | Deferred | No structured objectives or independently verified objective-free completion. |
| [98738 Blessings of the Great Windborne Cat Spirit](https://www.wowhead.com/forever/quest=98738) | Deferred | No structured objectives or independently verified objective-free completion. Explicit Questie and Wowhead race restrictions conflict. |
| [98739 Blessings of the Great Cat Spirit](https://www.wowhead.com/forever/quest=98739) | Added | Added in Moonglade. Reconciled Questie and cached Wowhead record. |

### 98342: The Great Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98342), fetched 2026-09-25T07:03:06+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11957]`; finishers: NPC 11957; minimum level 20.
- Objective source text: ["Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit."].
- Structured objective groups: `{"3": [[280502], [280679], [280680]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98362: To Thunder Bluff

- [Wowhead quest](https://www.wowhead.com/forever/quest=98362), fetched 2026-09-25T07:03:10+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11802]`; finishers: NPC 3033; minimum level 20.
- Objective source text: ["Return to Thunder Bluff and speak with Turak Runetotem on the Elder Rise."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98394: The Great Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98394), fetched 2026-09-25T07:03:56+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11802]`; finishers: NPC 11957; minimum level 20.
- Objective source text: ["Seek out the Great Cat Spirit in southern part Moonglade and learn what it has to share with you about the nature of the cat."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98396: The Great Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98396), fetched 2026-09-25T07:04:01+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11957]`; finishers: NPC 11957; minimum level 20.
- Objective source text: ["Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit."].
- Structured objective groups: `{"3": [[280502], [280679], [280680]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98397: To Darnassus

- [Wowhead quest](https://www.wowhead.com/forever/quest=98397), fetched 2026-09-25T07:04:06+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11802]`; finishers: NPC 4217; minimum level 20.
- Objective source text: ["Return to Darnassus and speak with Mathrengyl Bearwalker in the Cenarion Enclave."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98404: The Great Windborne Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98404), fetched 2026-09-25T07:04:36+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 272054]`; finishers: NPC 272054; minimum level 20.
- Objective source text: ["Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan."].
- Structured objective groups: `{"3": [[280502], [280679], [280680]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98405: The Great Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98405), fetched 2026-09-25T07:04:36+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11802]`; finishers: NPC 11957; minimum level 20.
- Objective source text: ["Seek out the Great Cat Spirit in southern part Moonglade and learn what it has to share with you about the nature of the cat."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

### 98739: Blessings of the Great Cat Spirit

- [Wowhead quest](https://www.wowhead.com/forever/quest=98739), fetched 2026-09-25T07:06:38+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 11957]`; finishers: NPC 11802; minimum level 20.
- Objective source text: ["Speak to Dendrite."].
- Structured objective groups: `{}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
