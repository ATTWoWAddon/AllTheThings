# Ashenvale Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|
| [78132 Dragonslayer's Helm](https://www.wowhead.com/forever/quest=78132) | Deferred | Updated Wowhead baseline rewards need effective Forever reconciliation. No structured objectives or independently verified objective-free completion. |
| [78133 Dragonslayer's Shield](https://www.wowhead.com/forever/quest=78133) | Deferred | Updated Wowhead baseline rewards need effective Forever reconciliation. No structured objectives or independently verified objective-free completion. |
| [78134 Dragonslayer's Lance](https://www.wowhead.com/forever/quest=78134) | Deferred | Updated Wowhead baseline rewards need effective Forever reconciliation. No structured objectives or independently verified objective-free completion. |
| [86757 Slowing the Orc Advance](https://www.wowhead.com/forever/quest=86757) | Deferred | No cached Wowhead detail or allowed source evidence. No reward inventory. |
| [95042 Seeking the Kor Gem](https://www.wowhead.com/forever/quest=95042) | Added | Added in Ashenvale. Reconciled Questie and cached Wowhead record. |
| [98027 Gleaming Crescent Necklace](https://www.wowhead.com/forever/quest=98027) | Deferred | No cached Wowhead detail or allowed source evidence. No supported acquisition coordinates for the start provider. No structured objectives or independently verified objective-free completion. No reward inventory. |
| [98417 Vengeful Trail](https://www.wowhead.com/forever/quest=98417) | Deferred | No cached Wowhead detail or allowed source evidence. No reward inventory. |
| [98418 Shared Fury](https://www.wowhead.com/forever/quest=98418) | Deferred | No cached Wowhead detail or allowed source evidence. No reward inventory. |

### 95042: Seeking the Kor Gem

- [Wowhead quest](https://www.wowhead.com/forever/quest=95042), fetched 2026-09-25T06:38:21+00:00. The cached catalog identifies Forever content; rewards were read from its fixed and choice lists.
- Questie: [effective static provider registry](https://github.com/Questie/QuestieDB/blob/cd4ac42468061cad65db3bf39163e5a2375e21f4/src/config.lua), including generated base, traces, and authored Forever corrections. Provider `['n', 259649]`; finishers: NPC 259649; minimum level 20.
- Objective source text: ["Bring a Kor Gem to Ulric Frostveil in Ashenvale."].
- Structured objective groups: `{"3": [[6995]]}`. An absent group with an explicit dialogue/delivery instruction is represented by the quest itself, following existing ATT dialogue-quest conventions.
- Fixed item rewards: `[[272448, 1]]`; choice item rewards: `[]`. Reward counts are retained here; ATT catalogs each reward item using its existing quest-reward convention.
- Starting-item and provided-item IDs are distinct fields. Provided item: `none`.

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|

## Verification

The current addition phase passed Lua 5.1.5 contributor-record checks using the production quest/objective constructors, source-provider and map checks, minimum level and restriction checks, objective ordering, and fixed/choice reward inventory checks. Before the additions, the same checks failed because the requested quest declarations were absent. Lua 5.1.5 syntax checks and `git diff --check` passed.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
