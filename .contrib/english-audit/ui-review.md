# English UI/source audit

Date: 2026-10-15 (Asia/Taipei). Baseline: branch codex/english-flavor-audit, based on master.

## Coverage

Ran a full codespell 2.4.3 scan of src/, lib/, locales/, README.md, AllTheThings.lua, Bindings.xml, .pkgmeta, and AllTheThings.toc; additionally scanned prose with the system English dictionary, reviewed 371 long quoted-prose candidates, and targeted common grammar errors in 4,968 comment lines. This is a comprehensive automated spelling pass with a targeted contextual prose and grammar review, not a claim that every English sentence and every WoW record has been individually verified. No generated db/ files were edited. Actual bulk English locale source under .contrib/ is covered separately by another audit scope.

All replacements preserve original bytes outside the selected excerpts and preserve CRLF/LF counts. No executable Lua identifiers, numeric IDs, protocol strings, or logic were changed. English spelling/grammar entries cite their precise language rationale; WoW source links are supplied only for externally verified game facts/names. The report does not misrepresent an English grammar edit as supported by a WoW data site.

## Flavor/source method

The user requires at least two independent sources for game-related changes. Wowhead page and Wowhead tooltip are counted together as one source. Applied game-name/fact changes have a Warcraft Wiki article plus Wowhead (2 independent source organizations). Generic editorial corrections have 0 external gameplay sources and are expressly labeled editorial; they do not imply game-data verification.

Generic source comments are marked shared unless the file or existing runtime guard narrows them. The shared contributor lookup table can contain multiple expansions and flavors; a record source proves the indicated name in the stated data environment, not identical availability across all ATT flavors. Wowhead tooltip queries used locale=0 (English) and dataEnv=4 (Classic Era) or dataEnv=1 (Retail). These endpoints do not expose an exact client build; no build is invented. Query date is 2026-10-15. Direct Wowhead record pages are included alongside each endpoint.

## Changes

### UI-001: AllTheThings.lua:163

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `heirarchy`
- After: `hierarchy`
- Basis: English spelling/contraction: 'heirarchy' -> 'hierarchy'. No WoW name or data value is changed.

### UI-002: lib/Sort.lua:524

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `propogate`
- After: `propagate`
- Basis: English spelling/contraction: 'propogate' -> 'propagate'. No WoW name or data value is changed.

### UI-003: src/Cache.lua:130

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `occurance`
- After: `occurrence`
- Basis: English spelling/contraction: 'occurance' -> 'occurrence'. No WoW name or data value is changed.

### UI-004: src/DataHandling.lua:41

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `Visibilty Checks`
- After: `Visibility Checks`
- Basis: English spelling/contraction: 'Visibilty Checks' -> 'Visibility Checks'. No WoW name or data value is changed.

### UI-005: src/DataHandling.lua:215

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `heirarchy`
- After: `hierarchy`
- Basis: English spelling/contraction: 'heirarchy' -> 'hierarchy'. No WoW name or data value is changed.

### UI-006: src/Events.lua:121, 134

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `incase`
- After: `in case`
- Basis: English spelling/contraction: 'incase' -> 'in case'. No WoW name or data value is changed.

### UI-007: src/UI/Window Definitions.lua:579

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `propogate`
- After: `propagate`
- Basis: English spelling/contraction: 'propogate' -> 'propagate'. No WoW name or data value is changed.

### UI-008: src/UI/Window Definitions.lua:2318

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `accessbility`
- After: `accessibility`
- Basis: English spelling/contraction: 'accessbility' -> 'accessibility'. No WoW name or data value is changed.

### UI-009: src/UI/Windows/Account Management.lua:617

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `supercedes`
- After: `supersedes`
- Basis: English spelling/contraction: 'supercedes' -> 'supersedes'. No WoW name or data value is changed.

### UI-010: src/UI/Windows/Account Management.lua:1541

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `isntance names`
- After: `instance names`
- Basis: English spelling/contraction: 'isntance names' -> 'instance names'. No WoW name or data value is changed.

### UI-011: src/UI/Windows/Account Management.lua:2632

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `but ARENT THANKS`
- After: `but AREN'T THANKS`
- Basis: English spelling/contraction: 'but ARENT THANKS' -> "but AREN'T THANKS". No WoW name or data value is changed.

### UI-012: src/UI/Windows/List.lua:377

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `.visibile for display`
- After: `.visible for display`
- Basis: English spelling/contraction: '.visibile for display' -> '.visible for display'. No WoW name or data value is changed.

### UI-013: src/UI/Windows/Mini List.lua:491

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `Detatch the Window`
- After: `Detach the Window`
- Basis: English spelling/contraction: 'Detatch the Window' -> 'Detach the Window'. No WoW name or data value is changed.

### UI-014: src/Settings/Settings.lua:902, 1020

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `heirloom uprades and quests locked`
- After: `heirloom upgrades and locked quests`
- Basis: English spelling/contraction: 'heirloom uprades' -> 'heirloom upgrades'. No WoW name or data value is changed. Place locked before the noun quests it modifies.

### UI-015: src/Classes/base.lua:398

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `contructors`
- After: `constructors`
- Basis: English spelling/contraction: 'contructors' -> 'constructors'. No WoW name or data value is changed.

### UI-016: src/Classes/base.lua:1046

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `evalutes`
- After: `evaluates`
- Basis: English spelling/contraction: 'evalutes' -> 'evaluates'. No WoW name or data value is changed.

### UI-017: src/Classes/Quests.lua:800

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `more noticable of being incorrectly sourced`
- After: `easier to notice when it is incorrectly sourced`
- Basis: English spelling/contraction: 'noticable' -> 'noticeable'. No WoW name or data value is changed. Replace the ungrammatical noticeable of being construction with easier to notice when it is.

### UI-018: src/Classes/Quests.lua:2108

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `character wont`
- After: `character won't`
- Basis: English spelling/contraction: 'character wont' -> "character won't". No WoW name or data value is changed.

### UI-019: src/Classes/Quests.lua:2299

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `to progess`
- After: `to progress`
- Basis: English spelling/contraction: 'to progess' -> 'to progress'. No WoW name or data value is changed.

### UI-020: src/Classes/Quests.lua:2659

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `incase`
- After: `in case`
- Basis: English spelling/contraction: 'incase' -> 'in case'. No WoW name or data value is changed.

### UI-021: src/Classes/Transmog.lua:355, 761

- Flavor: Shared transmog implementation; changed section requires C_TransmogCollection API
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `ATT DOESNT HAVE`
- After: `ATT DOESN'T HAVE`
- Basis: English spelling/contraction: 'ATT DOESNT HAVE' -> "ATT DOESN'T HAVE". No WoW name or data value is changed.

### UI-022: src/Classes/Transmog.lua:1278

- Flavor: Shared transmog implementation; changed section requires C_TransmogCollection API
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `consoldiated`
- After: `consolidated`
- Basis: English spelling/contraction: 'consoldiated' -> 'consolidated'. No WoW name or data value is changed.

### UI-023: src/Modules/Costs.lua:1100

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `accummulate`
- After: `accumulate`
- Basis: English spelling/contraction: 'accummulate' -> 'accumulate'. No WoW name or data value is changed.

### UI-024: src/Modules/Events.lua:473

- Flavor: Shared event module; changed Timerunning section is gated by Timerunning APIs
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `recusrively`
- After: `recursively`
- Basis: English spelling/contraction: 'recusrively' -> 'recursively'. No WoW name or data value is changed.

### UI-025: src/Modules/Filter.lua:415

- Flavor: Retail (existing app.IsRetail and build >70000 guard)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `hierachy`
- After: `hierarchy`
- Basis: English spelling/contraction: 'hierachy' -> 'hierarchy'. No WoW name or data value is changed.

### UI-026: src/Modules/Search.lua:305

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `heirarchical`
- After: `hierarchical`
- Basis: English spelling/contraction: 'heirarchical' -> 'hierarchical'. No WoW name or data value is changed.

### UI-027: src/Modules/Search.lua:433

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `hierachy`
- After: `hierarchy`
- Basis: English spelling/contraction: 'hierachy' -> 'hierarchy'. No WoW name or data value is changed.

### UI-028: src/Modules/Search.lua:534

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `custom Criterias`
- After: `custom Criteria`
- Basis: English spelling/contraction: 'custom Criterias' -> 'custom Criteria'. No WoW name or data value is changed.

### UI-029: src/Modules/Tooltip.lua:780

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `this isnt too`
- After: `this isn't too`
- Basis: English spelling/contraction: 'this isnt too' -> "this isn't too". No WoW name or data value is changed.

### UI-030: src/UI/Windows/World Quests.lua:87, 549

- Flavor: Retail (window explicitly gated by app.IsRetail and build >=70000)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `heirarchy`
- After: `hierarchy`
- Basis: Correct the English spelling of hierarchy.

### UI-031: src/UI/Windows/Retail/Tradeskills.lua:150

- Flavor: Retail (file explicitly gated by app.IsRetail)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `actual' ouput`
- After: `actual' output`
- Basis: Correct the English spelling of output.

### UI-032: src/Classes/Classic/Mounts & Battle Pets.lua:56

- Flavor: Classic Era/TBC (build <30000; Forever excluded by existing guard)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `conditional contructor`
- After: `conditional constructor`
- Basis: Correct the English spelling of constructor.

### UI-033: src/Expansions/Legion.lua:169

- Flavor: Retail, Legion artifact implementation (build >=70000 plus C_ArtifactUI)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `correpsonding itemID`
- After: `corresponding itemID`
- Basis: Correct the English spelling of corresponding.

### UI-034: src/Expansions/Warlords.lua:236

- Flavor: Retail, Warlords garrison implementation (build >=60000 plus C_Garrison)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `Diffculty Header`
- After: `Difficulty Header`
- Basis: Correct the English spelling of difficulty.

### UI-035: src/Settings/Pages/Interface - Information.lua:867

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `search results loose their parent references`
- After: `search results lose their parent references`
- Basis: The verb meaning to cease having a reference is lose; loose is an adjective or a different verb.

### UI-036: src/Classes/Quests.lua:1874

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `when its using a provider`
- After: `when it's using a provider`
- Basis: The clause needs the contraction of it is, not the possessive determiner its.

### UI-037: src/Classes/Transmog.lua:1277

- Flavor: Shared transmog implementation; changed section requires C_TransmogCollection API
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `lose it's source`
- After: `lose its source`
- Basis: Use possessive its before source, rather than the contraction it is.

### UI-038: src/Expansions/Legion.lua:192

- Flavor: Retail, Legion artifact implementation (build >=70000 plus C_ArtifactUI)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `misses it's appearance`
- After: `misses its appearance`
- Basis: Use possessive its before appearance, rather than the contraction it is.

### UI-039: src/Modules/Catalyst.lua:347

- Flavor: Retail catalyst implementation (requires app.ItemConversionDB)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `above it's mapped`
- After: `above its mapped`
- Basis: Use possessive its before the adjective mapped and noun phrase upgrade track ID.

### UI-040: src/Classes/Item.Retail.lua:533

- Flavor: Retail item implementation
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `when it is has matching quantity`
- After: `when it has a matching quantity`
- Basis: Remove the duplicate verb is and supply the article a before matching quantity.

### UI-041: src/Events.lua:430

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `the amount of handlers`
- After: `the number of handlers`
- Basis: Handlers are countable, so number expresses the count.

### UI-042: src/Classes/Quests.lua:970

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `if there's too many`
- After: `if there are too many`
- Basis: Use the plural verb are with the implied plural quest completions.

### UI-043: AllTheThings.lua:303

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `an Achievement Criteria`
- After: `an Achievement Criterion`
- Basis: Use singular criterion with the singular article an and demonstrative this entry.

### UI-044: src/UI/Windows/Account Management.lua:1296

- Flavor: Shared across ATT flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `MORE THAN ONE DATA FOR FIELD`
- After: `MORE THAN ONE VALUE FOR FIELD`
- Basis: Data is not a singular count noun; value describes one parsed field value accurately.

### UI-045: README.md:68

- Flavor: Repository documentation; applies to all flavors
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `notes from [WarcraftPets website]`
- After: `notes from [the WarcraftPets website]`
- Basis: Use the definite article before the named website.

### UI-046: locales/Default Locale.lua:59

- Flavor: Shared expansion lore; Classic setting
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `mind control of the Onyxia`
- After: `mind control of Onyxia`
- Basis: Remove the erroneous article the before the personal name Onyxia. The name and lore claims remain unchanged.

### UI-047: locales/Default Locale.lua:83, 275

- Flavor: Shared Legion expansion lore; English text and untranslated English fallback passages
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `Khadgar moved Dalaran to the shores of this land, the city serves`
- After: `Khadgar moved Dalaran to the shores of this land; the city serves`
- Basis: Join the two independent clauses with a semicolon to repair the comma splice without changing the lore.

### UI-048: src/Modules/Contributor.lua:521

- Flavor: Shared contributor table; verified against Classic Era NPC 14305
- Independent gameplay sources: 2 (cross-verified game fact/name)
- Before: `Human Orhpan`
- After: `Human Orphan`
- Basis: Correct the NPC name spelling in a comment only.
- Source: https://www.wowhead.com/classic/npc=14305/human-orphan
- Source: https://nether.wowhead.com/tooltip/npc/14305?dataEnv=4&locale=0
- Source: https://warcraft.wiki.gg/wiki/Randis

### UI-049: src/Modules/Contributor.lua:522

- Flavor: Shared contributor table; verified against Classic Era NPC 14444
- Independent gameplay sources: 2 (cross-verified game fact/name)
- Before: `Orcish Orhpan`
- After: `Orcish Orphan`
- Basis: Correct the NPC name spelling in a comment only.
- Source: https://www.wowhead.com/classic/npc=14444/orcish-orphan
- Source: https://nether.wowhead.com/tooltip/npc/14444?dataEnv=4&locale=0
- Source: https://warcraft.wiki.gg/wiki/Grunth

### UI-050: src/UI/Windows/World Quests.lua:8

- Flavor: Retail World Quests window; existing app.IsRetail and build >=70000 guards
- Independent gameplay sources: 2 (cross-verified game fact/name)
- Before: `World Quests weren't even a thing until... Was it WOD? Or was it Legion?`
- After: `World Quests were introduced in Legion.`
- Basis: Replace the uncertain expansion statement with the documented introduction of World Quests in Legion.
- Source: https://warcraft.wiki.gg/wiki/World_quest
- Source: https://www.wowhead.com/guide/legion/world-quests

### UI-051: src/Modules/Catalyst.lua:347

- Flavor: Retail catalyst implementation (requires app.ItemConversionDB)
- Independent gameplay sources: 0 (editorial English correction; no gameplay claim)
- Before: `whether the item showing`
- After: `whether the item is showing`
- Basis: Supply the auxiliary verb is for the present progressive clause.

## Deliberately preserved / unresolved

- Single-source object-name candidates were held under the user requirement for at least two independent sources: Crystalized Fel -> Crystallized Fel (268734), Crystalized Memory -> Crystallized Memory (272010), Dark Chest of Forbiden Evils -> Dark Chest of Forbidden Evils (617397), Amani Skelton -> Amani Skeleton (668269). Wowhead tooltip confirms the proposed names (1 independent source); object-specific Warcraft Wiki/Wago cross-verification was unavailable. Warcraft Wiki has a Crystallized Fel (object) page, but the exact ID mapping was not confirmed, so it is not counted as a verified second source. All four existing comments were preserved.

- `src/Modules/Contributor.lua:3126`, Retail object 503056: the English source returns **Customer Retrival Harpoons**, exactly matching the existing comment. Preserved the apparent official typo. Sources: https://www.wowhead.com/object=503056 and https://nether.wowhead.com/tooltip/object/503056?dataEnv=1&locale=0 .

- `src/Modules/Contributor.lua` (NPC IDs identify the exact comments), comments say **Alleria Winderunner** for Retail NPCs 215597, 221539, 232642, 232660, 234483. The live Retail tooltip lookup returns **Void Elf Riftwalker**, **Void Elf Riftwalker**, **Void Elf Riftwalker**, **Void Elf Archer**, and **Consortium Assistant**, respectively. Left these unresolved instead of changing the spelling to a name not verified for the exact IDs. They require a separately scoped data/history investigation. Exact evidence is in wowhead-evidence.json; endpoints follow `https://nether.wowhead.com/tooltip/npc/ID?dataEnv=1&locale=0`.

- `src/Modules/Contributor.lua`, object IDs 614787/614788: **Summons to Broken Shorw** is a suspected typo; Wowhead returned HTTP 404 for both IDs. Preserved pending a version-matched source, rather than claiming an unverifiable correction.

- Accepted English variants and code identifiers were preserved, including `useable`, `transferrable`, `re-use`, `inital`, `uptodate`, `isnt`, and `SetRescursiveFilters`. Multilingual false positives and proper nouns such as Varian, Revered, Scrit, Poen, Ore, Fallow, and Morta Gage were not auto-corrected.

- Expansion lore was reviewed for English grammar only; the lore stories were not fully fact-checked. No new factual claims about flavor availability or timelines were introduced outside the documented World Quests comment.

## Validation

Final scope totals: 29 files, 55 changed source lines, 51 replacement groups, 56 correction occurrences (two corrections share one line). `git diff --check` passed with fsmonitor disabled. CRLF and LF counts match the filtered HEAD checkout for every edited file.

A final diff review confirmed that only comments, one diagnostic string, three English lore lines, and one README phrase changed. Existing line-ending counts are preserved. The root agent will run final Lua 5.1 syntax/bytecode-equivalence and diff checks across all combined changes. This subtask has not run WoW in-game or any GPU/UI runtime checks.
