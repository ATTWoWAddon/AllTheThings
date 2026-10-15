# Shared English audit

Date: 2026-10-15 (Asia/Taipei). Branch: `codex/english-flavor-audit`. Changes remain local; no push, merge, or pull request was performed.

## Coverage

- Enumerated 1,562 files under `.contrib/.db/shared` including hidden source files: 436,209 lines, 28,066 readable fields, 28,296 English fields, and 32,895 lines containing comment markers. These counts are source text counts, not a claim that every field contains independent English prose.
- Applied codespell 2.4.3 to the full shared subtree, inspected all 211 English/comment/identifier candidate lines after excluding non-English locale assignments, and reviewed in context the 1,158 readable UI entries from 1,157 UI string source files, plus readable header labels across 316 header source files. General grammar candidate patterns were also reviewed.
- Reviewed candidate English names/comments against the requested WoW sources. IDs, keys, logic, conditions, non-English translations, file names, and original line endings are preserved.
- Coverage limit: this is a full-subtree candidate scan plus contextual UI/header/candidate review. It is not a semantic verification of all 28,296 English records or every historical flavor/build. No live game client, screenshots, or Contributor Report was available. The source pages/tooltip endpoints expose current live English data; no exact game-client build was observed.
- Wago attempt: `https://wago.tools/db2/GameObjects?build=12.0.1.65818` was inaccessible through browsing; this build was an attempted query only, never treated as verified source evidence. No edit relies on it.
- Source counts below count independent publishers: Wowhead page plus Wowhead tooltip count as one. Editorial grammar changes have 0 gameplay sources because no game fact changes. Game names/headers require at least 2 sources.

## Applied changes

### 1. `.contrib/.db/shared/lib/Strings/AllTheThings/ITEM_FILTER_DESCRIPTION.lua` lines 2, 6
- Before: `using a item filter`
- After: `using an item filter`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use an before the vowel sound in item.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 2. `.contrib/.db/shared/lib/Strings/AllTheThings/QUESTS_DESC.lua` lines 2, 6
- Before: `QuestID's`
- After: `QuestIDs`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use a plural, without a possessive apostrophe.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 3. `.contrib/.db/shared/lib/Strings/Classes/Ensemble/RELOG_REQUIRED.lua` lines 2, 6
- Before: `to logout & login`
- After: `to log out & log in`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use the two-word verb phrases.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 4. `.contrib/.db/shared/lib/Strings/Classes/Title/TITLES_DESC.lua` lines 2, 6
- Before: `across your account, however,`
- After: `across your account; however,`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Separate independent clauses with a semicolon.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 5. `.contrib/.db/shared/lib/Strings/Settings/About/ABOUT_TOP.lua` lines 2, 7
- Before: `more technical savvy`
- After: `more technically savvy`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use an adverb to modify savvy.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 6. `.contrib/.db/shared/lib/Strings/Settings/About/ABOUT_TOP.lua` lines 2, 7
- Before: `try my best to answer it, even if it's`
- After: `try my best to answer them, even if they are`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Agree with plural questions.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 7. `.contrib/.db/shared/lib/Strings/Settings/Features/AUTO_MAIN_LIST_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `when you login.`
- After: `when you log in.`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use log in as a verb.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 8. `.contrib/.db/shared/lib/Strings/Settings/Features - Reporting/REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `trackings purposes`
- After: `tracking purposes`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use the singular attributive noun tracking.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 9. `.contrib/.db/shared/lib/Strings/Settings/Features - Reporting/REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `see nearby content such as vignettes to the chat.`
- After: `see nearby content such as vignettes in chat.`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use in for the location where a chat report is shown.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 10. `.contrib/.db/shared/lib/Strings/Settings/General/ACCOUNT_WIDE_DEATHS_TOOLTIP.lua` lines 2, 6
- Before: `Death Tracker to se`
- After: `Death Tracker to see this information.`
- Flavor/context: Shared; tooltip discusses pre-Wrath Classic and Wrath+ statistics.
- Reason: Complete the visibly truncated final sentence without changing the described behavior.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 11. `.contrib/.db/shared/lib/Strings/Settings/General/DEATHS_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `one of your characters die`
- After: `one of your characters dies`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: The subject one takes a singular verb.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 12. `.contrib/.db/shared/lib/Strings/Settings/General/MAIN_ONLY_TOOLTIP.lua` lines 2, 6
- Before: `chararacter`
- After: `character`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Correct duplicated letters in character.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 13. `.contrib/.db/shared/lib/Strings/Settings/General/QUESTS_HIDDEN_TRACKER_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `QuestID's`
- After: `QuestIDs`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use a plural, without a possessive apostrophe.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 14. `.contrib/.db/shared/lib/Strings/Settings/General/TITLES_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `played for awhile`
- After: `played for a while`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use the noun phrase a while after for.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 15. `.contrib/.db/shared/lib/Strings/Settings/Interface/ICON_ONLY_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `topright corner`
- After: `top right corner`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Separate top and right.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 16. `.contrib/.db/shared/lib/Strings/Settings/Interface/NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `This is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.`
- After: `This helps you avoid missing Breadcrumb Quests and should be used primarily with Quest completion in mind.`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Correct infinitive phrasing and the idiom with something in mind.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 17. `.contrib/.db/shared/lib/Strings/Settings/Interface/PROFESSION_NODES_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `profession nodes completion`
- After: `profession node completion`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use singular node as an attributive noun.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 18. `.contrib/.db/shared/lib/Strings/Settings/Interface/Information/READDED_WITH_PATCH_CLASSIC_FORMAT.lua` lines 2, 6
- Before: `readded`
- After: `re-added`
- Flavor/context: Shared Classic timeline text.
- Reason: Hyphenate re-added for clarity.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 19. `.contrib/.db/shared/lib/Strings/UI/Windows/Popup Dialogs/ACCOUNT_MANAGEMENT_PARSE_ERROR_TITLE.lua` lines 2, 6
- Before: `occured`
- After: `occurred`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Correct occurred with a doubled r.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 20. `.contrib/.db/shared/lib/Strings/UI/Windows/Hidden/Sourceless/SOURCELESS_DESC.lua` lines 2, 6
- Before: `where it comes from or if it is even still obtainable`
- After: `where they come from or whether they are even still obtainable`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Agree pronouns and verbs with plural things.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 21. `.contrib/.db/shared/lib/Strings/UI/Windows/Option Descriptions/AUCTIONS_SPELLS_DESC.lua` lines 2, 6
- Before: `quests than can`
- After: `quests that can`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use the relative pronoun that.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 22. `.contrib/.db/shared/lib/Strings/UI/Windows/Option Descriptions/RAID_ASSISTANT_CREATE_GROUP_DESC.lua` lines 2, 6
- Before: `in conjection with Leave Group option`
- After: `in conjunction with the Leave Group option`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Correct conjunction and add the definite article.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 23. `.contrib/.db/shared/lib/Strings/UI/Windows/Option Descriptions/ACCOUNT_MANAGEMENT_BATTLE_NET_DESC.lua` lines 2, 6
- Before: `old fashioned way`
- After: `old-fashioned way`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Hyphenate the adjective before way.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 24. `.contrib/.db/shared/lib/Strings/UI/Windows/Window Descriptions/CLASS_SPECIFIC_THINGS_TOOLTIP.lua` lines 2, 6
- Before: `class specific things`
- After: `class-specific things`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Hyphenate the adjective before things.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 25. `.contrib/.db/shared/lib/Strings/UI/Windows/Window Descriptions/RACE_SPECIFIC_THINGS_TOOLTIP.lua` lines 2, 6
- Before: `race specific things`
- After: `race-specific things`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Hyphenate the adjective before things.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 26. `.contrib/.db/shared/lib/Strings/AllTheThings/FUTURE_UNOBTAINABLE_TOOLTIP.lua` lines 2, 6
- Before: `is highly-probable to be made`
- After: `is highly likely to be made`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use the grammatical phrase highly likely to.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 27. `.contrib/.db/shared/lib/Strings/AllTheThings/DECOR_DESC.lua` lines 2, 6
- Before: `select a random decor`
- After: `select a random piece of decor`
- Flavor/context: Retail housing/decor feature.
- Reason: Decor is an uncountable noun.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 28. `.contrib/.db/shared/lib/Strings/UI/Windows/Option Descriptions/AUCTIONS_DECOR_DESC.lua` lines 2, 6
- Before: `collected yet are displayed`
- After: `collected yet is displayed`
- Flavor/context: Retail housing/decor feature.
- Reason: Use singular agreement with uncountable decor.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 29. `.contrib/.db/shared/lib/Strings/Settings/Interface/DROP_CHANCES_CHECKBOX_TOOLTIP.lua` lines 2, 6
- Before: `calculate various drop chance information`
- After: `calculate various drop chances`
- Flavor/context: Shared (Retail and Classic, when the feature is included).
- Reason: Use a countable plural after various.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 30. `.contrib/.db/shared/functions/Shortcuts.lua` lines 2911
- Before: `which is convertable between`
- After: `which is convertible between`
- Flavor/context: Shared (Retail and Classic).
- Reason: Correct convertible.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 31. `.contrib/.db/shared/modules/ClassPresetsDB.lua` lines 192
- Before: `if they cant have an impact`
- After: `if they can't have an impact`
- Flavor/context: Shared (Retail and Classic).
- Reason: Use the contraction can't.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 32. `.contrib/.db/shared/modules/FilterDB.lua` lines 5
- Before: `FilterConstants contants table`
- After: `FilterConstants constants table`
- Flavor/context: Shared (Retail and Classic).
- Reason: Correct constants.
- Independent gameplay sources: 0.
- Source marking: English editorial correction, verified against the exact original wording in this file; no WoW factual change.

### 33. `.contrib/.db/shared/lib/Headers/Item Qualities/Uncommon.lua` lines 2
- Before: `readable = "Unommon"`
- After: `readable = "Uncommon"`
- Flavor/context: Shared (Retail and Classic).
- Reason: Correct metadata spelling to match existing Blizzard ITEM_QUALITY2_DESC expression.
- Independent gameplay sources: 2.
  - [1] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Uncommon
  - [2] Wowhead: https://www.wowhead.com/guide/wild-battle-pet-quicklists-1254

### 34. `.contrib/.db/shared/lib/Headers/Expansion Features/08 - Battle for Azeroth/Nzoth Assaults.lua` lines 2
- Before: `readable = "N'zoth Assaults"`
- After: `readable = "N'Zoth Assaults"`
- Flavor/context: Retail; Battle for Azeroth 8.3 assault feature.
- Reason: Match the documented name N'Zoth; runtime text already uses WORLD_MAP_THREATS.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/guide/visions-of-nzoth-assaults
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Assaults

### 35. `.contrib/.db/shared/lib/Headers/Expansion Features/08 - Battle for Azeroth/Visions of Nzoth.lua` lines 2
- Before: `readable = "Visions of Nzoth"`
- After: `readable = "Visions of N'Zoth"`
- Flavor/context: Retail; Battle for Azeroth 8.3 feature; existing 10.1.5+ spell-name branch preserved.
- Reason: Match the existing English fallback and the documented proper name.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/guide/visions-of-nzoth-assaults
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Assaults

### 36. `.contrib/.db/shared/modules/MountDB.lua` lines 1785
- Before: `-- Wonderous Wavewhisker`
- After: `-- Wondrous Wavewhisker`
- Flavor/context: Retail; Dragonflight mount (item 206167, spell 397406).
- Reason: Match the current mount spell name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/item=206167/way-of-the-wondrous-wavewhisker
  - [1] Wowhead: https://nether.wowhead.com/tooltip/spell/397406?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Way_of_the_Wonderous_Wavewhisker

### 37. `.contrib/.db/shared/modules/ToyDB.lua` lines 17
- Before: `-- Haunted Momento`
- After: `-- Haunted Memento`
- Flavor/context: Retail and Wrath+ Classic; item 40110.
- Reason: Match the item name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/wotlk/item=40110/haunted-memento
  - [1] Wowhead: https://nether.wowhead.com/tooltip/item/40110?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Haunted_Memento

### 38. `.contrib/.db/shared/modules/ToyDB.lua` lines 810
- Before: `-- Gnoll Targetting Barrel`
- After: `-- Gnoll Targeting Barrel`
- Flavor/context: Retail; Battle for Azeroth toy item 163201.
- Reason: Match the current item name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/item=163201/gnoll-targeting-barrel
  - [1] Wowhead: https://nether.wowhead.com/tooltip/item/163201?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Gnoll_Targeting_Barrel

### 39. `.contrib/.db/shared/modules/PetDB.lua` lines 1650
- Before: `-- Prarie Dog`
- After: `-- Prairie Dog`
- Flavor/context: Retail and Mists Classic battle pets; NPC 61141 / species 386.
- Reason: Match the battle pet NPC name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/npc=61141/prairie-dog
  - [1] Wowhead: https://nether.wowhead.com/tooltip/npc/61141?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Prairie_Dog

### 40. `.contrib/.db/shared/modules/PetDB.lua` lines 1651
- Before: `-- Prarie Mouse`
- After: `-- Prairie Mouse`
- Flavor/context: Retail and Mists Classic battle pets; NPC 59702 / species 727.
- Reason: Match the independently verified species/NPC name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/npc=59702/prairie-mouse
  - [1] Wowhead: https://nether.wowhead.com/tooltip/npc/59702?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Prairie_Mouse

### 41. `.contrib/.db/shared/lib/Structures/Professions/Engineering.lua` lines 808
- Before: `-- Schematic: Oglethorpe's Missle Splitter`
- After: `-- Schematic: Oglethorpe's Missile Splitter`
- Flavor/context: Retail; Warlords of Draenor recipe item 118477.
- Reason: Match the verified recipe item name; comment only.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/item=118477/schematic-oglethorpes-missile-splitter
  - [1] Wowhead: https://nether.wowhead.com/tooltip/item/118477?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Oglethorpe%27s_Missile_Splitter

### 42. `.contrib/.db/shared/objects/ObjectDB.lua` lines 258121
- Before: `Burried Cache`
- After: `Buried Cache`
- Flavor/context: Retail; Shadowlands 9.0.2+; object 357771 (Ardenweald).
- Reason: Match the corrected current English object name, corroborated by the two-zone cache entry.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/object=357771/buried-cache
  - [1] Wowhead: https://nether.wowhead.com/tooltip/object/357771?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Buried_Cache

### 43. `.contrib/.db/shared/objects/ObjectDB.lua` lines 258124
- Before: `Burried Cache`
- After: `Buried Cache`
- Flavor/context: Retail; Shadowlands 9.0.2+; object 357771 (Ardenweald).
- Reason: Match the corrected current English object name, corroborated by the two-zone cache entry.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/object=357771/buried-cache
  - [1] Wowhead: https://nether.wowhead.com/tooltip/object/357771?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Buried_Cache

### 44. `.contrib/.db/shared/objects/ObjectDB.lua` lines 258210
- Before: `Burried Cache`
- After: `Buried Cache`
- Flavor/context: Retail; Shadowlands 9.0.2+; object 357937 (Revendreth).
- Reason: Match the corrected current English object name, corroborated by the two-zone cache entry.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/object=357937/buried-cache
  - [1] Wowhead: https://nether.wowhead.com/tooltip/object/357937?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Buried_Cache

### 45. `.contrib/.db/shared/objects/ObjectDB.lua` lines 258213
- Before: `Burried Cache`
- After: `Buried Cache`
- Flavor/context: Retail; Shadowlands 9.0.2+; object 357937 (Revendreth).
- Reason: Match the corrected current English object name, corroborated by the two-zone cache entry.
- Independent gameplay sources: 2.
  - [1] Wowhead: https://www.wowhead.com/object=357937/buried-cache
  - [1] Wowhead: https://nether.wowhead.com/tooltip/object/357937?dataEnv=1&locale=0
  - [2] Warcraft Wiki: https://warcraft.wiki.gg/wiki/Buried_Cache

## Preserved names and unresolved candidates

| Record | Existing English | Disposition / evidence |
|---|---|---|
| Object 190696, Wrath+ / Retail | Mosswalker Possesions | Preserve. Current Wowhead tooltip returns this spelling; Warcraft Wiki explicitly marks it sic: https://warcraft.wiki.gg/wiki/Mosswalker_Possesions . |
| Object 209566, MoP+ / Retail | Barrel of Monkies | Preserve. Exact current Wowhead tooltip retains Monkies. |
| Object 281235, BfA / Retail | Crystalized Honey Fragment | Preserve. Exact current Wowhead tooltip retains Crystalized; https://warcraft.wiki.gg/wiki/Category:Stormsong_Valley_objects also lists that spelling. |
| Objects 398001–398003, Dragonflight / Retail | Speciman Tank | Preserve. Exact current Wowhead tooltip retains Speciman. |
| Objects 402562, 402568, Dragonflight / Retail | Etched Reciever East / North | Preserve. Exact current Wowhead tooltips retain Reciever. English page https://www.wowhead.com/object=402562/etched-reciever-east confirms. |
| Object 503056, Retail | Customer Retrival Harpoons | Preserve. Exact current Wowhead tooltip retains Retrival. |
| Object 241605, WoD / Retail | Crystalized Essence of the Elements | Unapplied candidate: current Wowhead tooltip says Crystallized Essence of the Elements, but a second independent matching source was not verified. |
| Object 329737, BfA / Retail | Norbit Control Pannel | Unapplied candidate: current Wowhead tooltip says Norbit Control Panel; https://warcraft.wiki.gg/wiki/Norbit_Control_Pannel retains old spelling, so sources disagree. |
| Object 404432, Dragonflight / Retail | Bload Soaked Book | Unapplied candidate: current Wowhead tooltip says Blood Soaked Book; Wiki covers a related item as Blood-Soaked Book, not the exact object name/ID. https://warcraft.wiki.gg/wiki/Blood-Soaked_Book . |
| Object 623295, Forever data | Abandonded Belongings | Unapplied/unverified: Retail Wowhead endpoint returns 404. Must verify the correct Forever flavor/build before changing. |
| Item 154703, BfA / Retail, NYI section | Hot Air Baloon (comment) | Unapplied candidate: current Wowhead tooltip says Hot Air Balloon - Pet (NEEDS NAME). A second matching source was not verified; do not invent a final name. |

## Evidence artifacts

- `wowhead-evidence.json`: raw English Wowhead responses for 23 exact kind/ID queries, with dataEnv=1 (Retail), including successes and 404 failure.
- `changes.json`: detailed applied correction groups with exact changed source lines and rationale.
- `changes.json`: flattened source/flavor mapping for root unified final-diff ledger.

## Validation

- Every write used byte-preserving replacements; original CRLF and total line counts were checked.
- `git diff --check` passed for the shared subtree. Compared all 39 changed files (72 final changed source lines) against the HEAD baseline after applying Git checkout filters: translated locale assignments, format placeholders, total line counts, and CRLF were unchanged.
- Lua 5.1 validation is coordinated by root. This subagent has not claimed game runtime testing.