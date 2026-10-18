# Forever Data Audit and Editing Plan

Follow the [repository contribution rules](../../../AGENTS.md). Use this document to classify the work, select evidence, prepare changes, and verify the result. The current user's instructions determine the authorized scope and take precedence over this plan.

## 1. Establish the task contract

Record these decisions before scanning or editing:

| Decision | Required result |
| --- | --- |
| Source scope | Lua files under this directory, including hidden configuration directories. Exclude the `zzOLD` subtree and every file named `ItemDB.lua`. Discover files again for each run. |
| Work area | An isolated worktree and branch belonging to this task. Reuse its existing worktree when appropriate; preserve unrelated staged and unstaged changes and the primary checkout. |
| Requested operations | Identify the requested audit, identity corrections, names, item annotations, ordering, formatting, or documentation work. Carry forward applicable session authorization; an audit-only request produces findings. |
| Target data | WoW flavour/product, client build when applicable, source commit, and locale. Respect an explicitly requested historical target. |
| Reporting destination | The current PR/discussion thread or other destination requested by the user. Quest-table absence findings belong in the discussion, without new code annotations. |
| Delivery | Establish which commit, push, PR update, integration, history, or cleanup actions are authorized. Continue the existing PR when updating that contribution. Do not ask again for an already authorized step. |

Use Lua **5.1 exclusively** for Lua compilation and tests.

Prepare three outputs: a classified inventory, a rule-by-rule change plan, and a verification/reporting ledger. Keep dated audit results, individual unresolved records, and source snapshots in that ledger or the discussion rather than adding record-specific rules to this document.

## 2. Classify the source before choosing a rule

### 2.1 Entity and reference identity

An entity is identified by **kind + exact ID + WoW flavour**. A source claim also carries its applicable build/version and locale. Equal numbers in different entity kinds and equal names on different IDs identify different records.

For every targeted reference, record its path and source anchor, owning record/quest, constructor binding or field role, existing label and markers, version qualifiers, and Parser condition stack. Keep an entity's name separate from the purpose of a particular reference.

| Source role | Interpretation |
| --- | --- |
| Standard `q(...)`, `i(...)`, NPC `n(...)`, or `o(...)` | Resolve the constructor binding and exact quest/item/NPC/object ID before applying entity rules. |
| Category/header constructor | A category constant or generated header is a grouping record, not an NPC. Apply applicable shared metadata rules. |
| Locally rebound helper | Follow the local binding. An `i` bound to `GetRecipeHelperForProfession(...)` is a recipe helper; its label can describe the spell or product rather than the pattern item. |
| `provider` / `providers` tuple | The tuple tag determines the entity kind. Resolve its ID or constant in that domain. |
| Quest-reference field | Interpret `sourceQuest(s)`, `altQuests`, `questID`, and tagged quest criteria according to their schema. Counts such as `sourceQuestNumRequired` are not IDs. |
| NPC/item field | `qg`/`qgs` identify NPCs; `qi`/`qis` and `qs`/`qss` identify items. Their field location supplies context, not independent proof of identity or item role. |
| Symbolic value | Resolve an existing definition and its applicable conditions. Leave unresolved bindings classified as unknown. |

Parse strings, comments, and Lua syntax before locating punctuation or identifiers. Keep commented-out source separate from executable source references. Classify comments using section 6.4.

### 2.2 Container and order policy

Assign each record, field, and collection an order policy before proposing a move. Classify existing subgroups within mixed collections using headings, Parser branches, version batches, slot/category structure, and evidence of intended ordering.

| Container role | Order policy |
| --- | --- |
| Keyed record metadata | The recognized field schema and shared constraints in section 5. Preserve duplicate-key write order. |
| Cost list | The typed cost algorithm in section 7.1. |
| Established alphabetical catalogue | Stable alphabetical order within the demonstrated group, including entity records and eligible metadata arrays. |
| Existing progression block | Preserve the contiguous stages and alternative starts of an intentionally grouped chain. Use numbered steps, grouping, and dependency evidence together. |
| Categorized collection | Preserve category order and boundaries, then apply each subgroup's own policy. This includes equipment slots, race/sex groups, quality/level groups, and source/version batches. |
| Positional or relational sequence | Preserve the schema-defined positions or relationship order: coordinates, schedules, objective indices, and dependency/priority lists. |
| Unknown policy | Preserve the sequence and report the classification question. |

A field name or an inversion percentage alone does not establish alphabetical intent. A quest relationship alone does not turn an entire catalogue into a progression block. Record the evidence for the chosen group boundaries and policy.

### 2.3 Track independent claims

Maintain separate statuses for each question:

| Claim | Statuses |
| --- | --- |
| Pinned client-table membership | Listed / not listed in this snapshot / unverified. |
| Exact-ID name | Confirmed / unavailable / conflicting / not examined. |
| Identity in this reference | Confirmed / context conflict / unresolved. |
| Item role in this quest reference | QI / QS / unresolved / not applicable. |
| Planned operation | Ready / held with reason / unchanged / outside the requested scope. |

A successful name lookup does not confirm the other claims. A held claim blocks only operations that depend on it; independently supported formatting work can remain ready.

## 3. Match each question to suitable evidence

### 3.1 Evidence capabilities

| Question | Required evidence | What the result establishes |
| --- | --- | --- |
| Is this quest ID in the target client data? | A complete Wago `QuestV2` export pinned to the selected Forever build and hotfix mode. | Membership in that exact client-table snapshot. This table has no quest-name column and does not establish server availability or the validity of a local reference. |
| What is this entity's name? | The exact typed-ID Wowhead **Forever** record, or applicable in-game/Contributor evidence permitted by the parent rules. | The name and attributes actually exposed by that source. For web audits, use Forever pages and `dataEnv=16` tooltips, without another-flavour fallback. |
| Does this reference use the intended ID? | Exact-ID evidence tied to the owning context and every relationship needed by the proposed correction. | Identity in that reference. Name similarity or uniqueness in the local files does not establish an ID relationship. |
| Is an item a quest item? | Explicit item classification or other positive evidence for the relevant flavour. | The broad QI/QS category. `Quest Item` text or class 12 does not select the reference's role; missing tooltip text is not proof that the item is outside this category. |
| Is this reference QI or QS? | Exact item-to-current-quest evidence for its required/objective use or quest-start relationship. | QI or QS for that reference. A quest requirement containing only an item name is insufficient exact-ID evidence. |
| Does a pattern belong to this recipe? | Explicit pattern-item / recipe-spell / product relationships for the reference being corrected. | The linked identities actually shown, rather than a chain inferred from similar names. |

Existing Lua fields, comments, markers, and constructor positions describe the current data and provide context. They do not replace external evidence for gameplay changes. Apply the parent rules for accepted data-change evidence and PR disclosure. The user's Wago instruction supplies the source for the client-membership audit; its result is reported separately from gameplay corrections.

### 3.2 Pin and capture sources

1. Select the requested flavour/build. Cross-check the repository's Forever build configuration, applicable product version metadata, and the version actually returned by Wago. An unpinned Wago page can default to another product.
2. Record the source commit, direct requested/final URL, exact entity/relationship IDs, flavour/product, build where available, locale, retrieval date, response outcome, and raw-source hash. Distinguish a valid missing record from a network failure or invalid response.
3. Validate table identity, columns, completeness, and ID uniqueness before a set comparison. Record whether hotfixes are included. A page containing only one results page is not a complete absence check.
4. Reuse captured evidence only when its identity, flavour/build context, response validity, and content integrity match the claim. State which snapshot was checked; do not describe cached or unpinned data as a newly verified build.
5. Check reference context before changing its label. When a source name contradicts the intended quest, creature, item, or version context, resolve the identity question first.

### 3.3 Route findings by question

| Finding | Required handling |
| --- | --- |
| Quest ID absent from the pinned table | Report the ID, current label, source reference links, build/table source, and applicable conditions in the requested discussion thread. Table absence does not create or remove code TODOs. |
| Quest name unavailable during an authorized name/TODO pass | Preserve the existing name and context and append ` (TODO: verify quest name)` once. With no existing comment, use `-- TODO: verify quest name`. Preserve existing TODOs; a known name without an inline comment is not an unavailable source. |
| Conflicting reference identity | Hold identity-dependent ID and label changes for that reference; report its context, conflicting evidence, and missing proof. |
| Unresolved item role | Preserve the role marker and report the missing role evidence. Independently supported name or formatting operations remain eligible when their own prerequisites are satisfied. |
| Source title confirmed | Change only the approved label span while retaining unrelated markers, quantities, version aliases, and contextual prose. |

These are different evidence results. Keep membership, title, identity, and role findings distinct in both reports and code changes.

## 4. Execute a dependency-ordered plan

Select the requested rule families, then execute these phases. For an audit-only task, phases describing changes produce proposals instead of editing source.

| Phase | Work | Output required before advancing |
| --- | --- | --- |
| 0. Baseline | Inspect the worktree, branch, instructions, existing staged changes, and publication scope. Save recoverable source snapshots and hashes. | Task contract, immutable baseline, eligible-file inventory, and unrelated-work boundaries. |
| 1. Inventory | Parse the full eligible scope for the selected rule families. Resolve bindings, owners, comment attachments, collection policies, and Parser/version context. | Every targeted occurrence classified; unresolved syntax or bindings reported. |
| 2. Evidence | Check the independent claims in section 3 and compare the intended reference with the source. | Per-reference evidence/status ledger; ready and held operations counted separately. |
| 3. Identity | Prepare and apply authorized identity corrections before deriving labels or order from them. Inspect repeated identities within their owning groups. | Exact approved ID/relationship deltas; affected references re-inventoried and dependent claims refreshed. |
| 4. Labels and roles | Apply supported names/subtitles, provider/cost labels, and separately verified item markers. | Final labels and per-reference roles, with uncertainty routed to the prescribed destination. |
| 5. Structure and presentation | Plan field layout and collection ordering separately, using final identities/names. Apply the syntax and presentation policies to their classified regions. | Whole-field/entry operations grouped by rule, with exact source matches, boundaries, and invariants. |
| 6. Acceptance | Independently compare the actual diff with the baseline, then rescan the full eligible scope for the enabled rules and their dependents. | All changes explained by the plan; no unexplained candidates; held classifications and baseline diagnostics reported. |
| 7. Delivery | Prepare accurate counts, evidence links, commits, and the requested PR/thread update. | Signed, attributed, authorized publication; verified local/remote state and preservation of unrelated work. |

Each rule plan records its scope, typed references/containers, evidence prerequisites, candidate count, proposed change or permutation, attached comments, Parser conditions, expected unchanged properties, and held cases.

Apply these dependency rules throughout:

```text
ID or entity-kind change -> refresh names, relationships, roles and duplicate analysis
Final name change       -> refresh provider/cost labels and affected alphabetical keys
Reference-role evidence -> select that reference's QI/QS marker
Classified structure    -> select its field, sequence and presentation policies
Any source edit         -> refresh affected offsets, hashes and final source links
All applied operations  -> independent verification, full-scope rescan and delivery
```

A repeated ID can be legitimate in different contexts or conditions. A collision exposed by a rename requires identity analysis. Moving duplicate-looking records together or deleting one does not resolve an incorrect ID. Removal or replacement requires its own authorized, supported plan.

## 5. Define metadata field order once

Use the type's complete order below and the shared constraints in this section. The complete Quest/Rare/Treasure examples in [Standard.lua](../../Standard.lua) supply the reference structure; the confirmed Forever policies here define the resulting order. Preserve the current field keys.

Classify singular and plural spellings as members of the same field family. Each family shares its semantic rules and ordering slot; a plural value applies the relevant rules to each entry. Preserve existing key spellings and scalar/list shapes.

| Field family | Members | Ordering slot |
| --- | --- | --- |
| Prerequisite quest | `sourceQuest`, `sourceQuests` | Prerequisite slot in the record schema. |
| Quest giver | `qg`, `qgs` | Source block. |
| Quest item | `qi`, `qis` | Tail, after `timeline` and before `groups`. |
| Quest starter | `qs`, `qss` | Quest-starter slot before the source block. |
| Provider | `provider`, `providers` | Source block. |
| Coordinate | `coord`, `coords` | Coordinate slot before `cost`. |

The quest-giver and provider families share the existing source-block slot while retaining their distinct field semantics. Preserve relative order among all fields sharing a slot; singular/plural spelling does not introduce a separate position or authorize merging fields.

Other aliases also share a slot without renaming: `race`/`raceID`/`races`; `class`/`classID`/`classes`; `level`/`lvl`. The complete schemas below expand these families and aliases wherever their slot appears.

| Record type | Recognized fields in order |
| --- | --- |
| Quest | `name` -> `description` -> `sourceQuest`/`sourceQuests` -> `sourceQuestNumRequired` -> `altQuests` -> `qs`/`qss` -> source block -> `coord`/`coords` -> `maps` -> `cost` -> restrictions -> flags/lock -> `customCollect` -> tail. |
| NPC | `description` -> `crs` -> source block -> `coord`/`coords` -> `maps` -> `questID` -> `cost` -> restrictions -> flags/lock -> tail. |
| Object | `description` -> `crs` -> `sourceQuest`/`sourceQuests` -> source block -> `coord`/`coords` -> `maps` -> `questID` -> `cost` -> restrictions -> flags/lock -> tail. |

Apply a complete schema only to its classified entity record. For other constructors, category headers, and plain keyed tables, use applicable shared constraints:

| Block | Constraint |
| --- | --- |
| Cost and restrictions | `coord(s)` precedes `cost`; `cost` precedes the race/class/level block when present. |
| Restrictions | Keep race, class, and level together in that order; omit absent fields. |
| Flags and lock | Keep `isX` flags and `repeatable` together. Preserve their relative order, place `isBreadcrumb` last, then put `lockCriteria` immediately below the block. |
| Tail | Put all other metadata before `timeline`, then the `qi`/`qis` group, then `groups`. Omit absent fields and preserve the relative order within `qi`/`qis`. |
| Unlisted fields | Preserve their order relative to one another. Listed fields may cross them to satisfy the declared constraints; do not invent a complete schema for them. |
| Repeated keys | Preserve write order and the resulting value. A conflicting ordering requirement holds that move for review. |

Move complete fields with their values and attached annotations. Inspect expression effects and dependencies: a permitted permutation may change textual evaluation order, but must preserve observable behavior. Unknown or stateful dependencies hold the affected move. Keep each field under the same Parser predicates; a conditional unit can move only when its complete structure and directive order are preserved.

## 6. Apply syntax, labels, and presentation by role

### 6.1 Keys, constants, braces, and line layout

| Classified position | Policy |
| --- | --- |
| String table key that is a valid non-keyword Lua 5.1 identifier | Use `key = ...`. Retain bracket syntax for other keys. |
| Race/class ID value | Use an existing predefined constant after checking its value and context. Preserve scalar/array shape and other numeric domains. |
| Comma followed by more code on the same line | Use one space. An inline comment is handled by the comment-gap policy. |
| Brace next to actual data on the same line | Use `{ data }` spacing. Outside cost tables, preserve adjacent-brace spacing rather than introducing gaps solely between braces. Empty tables have no data boundary to adjust. |
| Cost table brace boundaries | Leave a space inside every populated level, including adjacent nested tables: `cost = { { "i", itemID, quantity } },`. |
| Simple `cost`, `provider`, or `providers` table | Put it on one line when the whole value and its annotations can be preserved. Per-entry comments, independent comments, Parser branches, or complex expressions retain the structure they need. |

### 6.2 Determine separators from syntax and field role

Inspect what the closing token terminates, then apply the matching policy. Keep separately written closing-parenthesis lines separate.

| Parsed position | Policy |
| --- | --- |
| Final ordinary table data element | Add a missing trailing comma, including when the element ends with `)` or `}`. |
| Final element inside an `eventSchedule` value | Preserve its positional schedule structure and leave the final element without an added comma. The surrounding metadata field has its own separator. |
| Final function-valued element or field ending in `end` | Do not add `end,` solely for the trailing-element rule. Preserve separators needed by the surrounding syntax. |
| Variable table assignment/declaration with a standalone closing `}` line | Terminate that assignment with `};`. This is not a rule to add semicolons to all statements. |
| Function argument closing or loop header | Apply its Lua grammar, without inserting a table-element comma. |

### 6.3 Entity labels and item annotations

| Reference role | Required content and proof |
| --- | --- |
| Entity name | The exact-ID name appropriate to the reference context. Preserve version aliases and explanatory qualifiers. |
| NPC display label | Full name and actual `<subtitle>` when supplied by the source. Distinguish the subtitle from creature type, level, rank, and faction. |
| Every provider entity | A comment identifying that entity. Use the actual object name rather than an objective's action text. |
| Verified required/objective item | `(QI!)` for the current quest reference. Normalize `(PQI!)` to `(QI!)` after confirming that role. |
| Verified quest starter | `(QS!)` for the current quest reference. An item can have a different role in another quest; preserve confirmed QS annotations. |
| Item inside `objective(...)` | Audit direct items, typed providers, and item costs using the same identity/role procedure. Position inside the objective is not role evidence. |
| Ordinary recipe-item comment | Include `(RECIPE!)` when the item is verified as a recipe. Recipe helpers retain their spell/product label semantics; their first argument alone does not trigger ordinary recipe-item tags. |
| Numeric-ID cost | Include quantity and entity name, for example `-- 200x Item Name`. Preserve applicable item markers. |
| Reputation pair expressed with faction and standing constants | Omit a comment merely repeating those two constants. |

Treat identity, name, role, and presentation edits as separately reviewable operations. A marker-only operation retains the item name and unrelated annotations; report a pre-existing name conflict through its own claim and plan.

### 6.4 Comments and whitespace

Classify the region before changing spacing or trimming a line.

| Region | Policy |
| --- | --- |
| Ordinary text line comment | One space after `--`, with existing indentation retained. |
| Commented-out Lua/data | Use zero spaces between `--` and the code, such as `--i(...)`; preserve the disabled code body. |
| Bare comment marker | `--` has no following space. |
| Parser directive or decorative separator/banner | Preserve its text, structure, indentation, and directive order. |
| Code followed by an inline line comment | Use one tab by default, with protected regions retaining their existing layout. Preserve established multi-tab column alignment as a layout group, including profession data; keep uncertain alignment for review. |
| Whitespace-only line | Preserve the entire line, including tabs/spaces and blank-line count. |
| Unnecessary trailing spaces/tabs on an ordinary content line | Trim ordinary code and prose-comment line endings. Preserve string/long-string contents, protected directive/banner regions, and whitespace-only lines. The space between a text-comment marker and its text is required content formatting. |

Formatting applies to the classified token region, not punctuation found inside strings, prose, disabled code, or directives. Preserve the file's line endings.

## 7. Maintain each collection's declared order

Field ordering and collection ordering are different operations. Use the policy assigned in section 2.2 and move complete entries with their nested values and attached annotations.

### 7.1 Typed cost algorithm

For each eligible cost list:

1. Stably separate gold entries into a gold tail.
2. In the remaining non-gold sequence, identify the item-entry slots.
3. Stably sort the item entries by actual item name into those slots.
4. Keep all other non-gold entries in their slots in that non-gold sequence.
5. Append the stable gold tail.

Preserve each tuple, quantity, comment, and Parser condition. Scalar costs retain their scalar representation. Unknown names, ambiguous keys, or unsafe boundaries produce a held ordering candidate.

### 7.2 Alphabetical catalogues and metadata lists

After an ID or label change, recheck every affected alphabetical group, including sibling records, eligible providers, and NPC-source lists. Use existing structure and demonstrated naming order to identify the intended run; inspect mostly alphabetical groups as well as perfectly sorted ones.

* Use the final primary name as the case-insensitive key, retaining its articles and intrinsic punctuation. Exclude quantity prefixes, role markers, NPC subtitles, and separate version/context annotations from the key while keeping them attached to the entry. Do not strip arbitrary parenthesized text from a real name.
* Preserve equal-name order and duplicate entries. When a preserved source label supplies a key, retain its unverified status; an ambiguous or missing key holds the affected move.
* Keep category, progression, source-batch, and Parser boundaries. Sort a classified subgroup without flattening its parent collection.
* Minor prior disorder can be corrected within a confirmed alphabetical group covered by the task. Distinguish those corrections from inversions introduced by the current rename.
* Validate that the records are independent and their permutation preserves behavior. Use the same source/value/condition checks as other ordering operations.

Semantic sequences and unknown collections retain their order. Record the classification and reason in the plan so a rescan can distinguish an intended sequence from an unresolved sorting candidate.

## 8. Verify the actual change by operation

An independent review compares the actual diff with the saved baseline and evidence, rather than merely checking that an edit script completed.

| Operation | Acceptance criteria |
| --- | --- |
| Whitespace, comment, or equivalent layout change | Intended tokens/literals and parsed values preserved; Lua 5.1 syntax and identical stripped bytecode where applicable; unrelated source bytes, line endings, and whitespace-only lines preserved. |
| Key simplification or constant substitution | Same resolved key/value; check the actual binding, constant definition, and flavour/context; valid Lua 5.1. |
| ID/relationship correction | Only the approved reference-specific token/value changes, supported by exact linked evidence. Verify intended records and related references again; preserve unrelated IDs and markers. |
| Name or item-marker change | Exact label/marker span, correct claim-specific evidence, all unrelated annotations/qualifiers/quantities preserved. |
| Metadata field move | Same recursively parsed fields/values, duplicate-key write order, unknown-field relative order, attached comments, and per-field Parser conditions; no change in observable expression behavior. |
| Collection permutation | A bijection of complete entries, with identical identities, nested values, quantities, annotations, and conditions; the declared order policy, stable ties, and category boundaries all satisfied. |

Rescan the full eligible scope for the selected rules and affected dependencies. Every remaining candidate needs a recorded result: corrected, already compliant, intentional semantic order, held for evidence/classification, or outside scope. Refresh counts and source links after the final edits.

Use Lua 5.1 for applicable syntax/tests. Reproduce diagnostics against the baseline before assigning them to this change; report unchanged baseline failures separately from new failures and state the actual passing scope. Keep baseline diagnostics as run findings rather than permanently exempting a filename. Reuse completed checks while their source and dependencies remain unchanged.

## 9. Deliver a reviewable result

* Separate applied rules into focused commits. Describe the actual changes and useful counts rather than a list of filenames. Follow the parent subject-length, message, signing, and actual-model attribution requirements. Honor configured signing and resolve signing failures without disabling it.
* Report operations, source references, unique IDs, and unique records/tables as separate counts. Recompute the final contribution's totals after reversions or identity corrections.
* Update the existing PR/discussion with direct evidence links, the relevant flavour/build/date context, verification results, and held findings. Follow the requested destination for existence reports and other audit output.
* Keep PR and issue disclosures accurate under the parent `Summary`, `Data Sources` when applicable, and `AI Assistance` requirements. Distinguish source checks, static validation, Parser/CI results, and observed in-game behavior.
* Perform only authorized Git/publication actions and verify the resulting remote state. Preserve unrelated work and clean up task worktrees within the current authorization.
