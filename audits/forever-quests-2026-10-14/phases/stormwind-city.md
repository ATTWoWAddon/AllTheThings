# Stormwind City Forever data status

Audit date: 2026-10-14. ATT base: `d75383ccdbff1208b87cf4024fa425c0825a7ad6`. Questie source: `cd4ac42468061cad65db3bf39163e5a2375e21f4`. Cached Wowhead snapshot: 2026-09-25; individual fetch dates are retained below. Forever contributor configuration targets build 1.60.1.69893. Questie map support includes reviewed relationships through 1.60.1.70291. Region and live-character observations are unavailable.

The original audit files remain separate from this phase. Questie is the primary source for providers, objectives, restrictions, and coordinates. Cached Wowhead Forever pages support quest identity, minimum level, class/race detail where present, finishers, and fixed/choice reward lists. No Era counterpart or unavailable field is inferred.

## Missing declarations

| Quest | Disposition | Reason |
|---|---|---|

## Requirement and restriction review

| Quest ID | Field | Disposition |
|---|---|---|
| 93963 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 94947 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97237 | `requiredRaces` | Pending source and inherited-field reconciliation. |
| 97914 | `requiredRaces` | Pending source and inherited-field reconciliation. |

## Implemented field corrections

| Quest | Fields | Evidence |
|---|---|---|
| 97894 | `{"isBreadcrumb": "true", "nextQuests": "{ 982 }"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=97894); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |
| 98021 | `{"sourceQuest": "94947", "lvl": "7"}` | [Wowhead Forever](https://www.wowhead.com/forever/quest=98021); Questie is primary for relationships and exclusions. Cached Wowhead supports identity and available detail, but does not independently establish every gate. Effective registry revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`. |

## Verification

Lua 5.1.5 checks using production contributor constructors failed for the expected fields before the correction and passed afterward. Scoped contributor syntax checks and `git diff --check` passed. Earlier additions retain their reviewed checks. Native alternative-completion and breadcrumb scenarios passed where applicable; breadcrumb cache refresh follows the quest-update lifecycle. Normal profession and recipe-lock scenarios were tested separately. Native prerequisite display treats active source quests as satisfied; no runtime change was made.

The Windows Forever parser and live in-game checks are unavailable on this macOS host. These checks do not establish a successful full addon build or live quest availability. No runtime files were changed.
