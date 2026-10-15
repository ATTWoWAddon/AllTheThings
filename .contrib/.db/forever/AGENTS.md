# Forever Data Editing Guidelines

Follow the repository's parent `AGENTS.md` in addition to these instructions.

## Scope and preservation

- These rules apply to Lua files under this directory, including hidden configuration directories. Exclude the `zzOLD` subtree and every file named `ItemDB.lua` from formatting scans and edits.
- Work in an isolated worktree and branch. Reuse an existing worktree only when it belongs to the active task; preserve unrelated staged and unstaged work and the primary checkout.
- Preserve data values, strings, array element order except for the explicit cost-ordering rule below, duplicate-key write order, existing annotations, version qualifiers, and Parser directive conditions. A formatting request does not authorize data corrections.
- Use Lua 5.1 exclusively for Lua compilation and tests.

## Field ordering

Move complete fields with their inline comments and nested values. Do not sort text lines or array elements except for the explicit cost-ordering rule below. Treat the following as equivalent ordering slots without renaming the actual keys: `sourceQuest`/`sourceQuests`, `qg`/`qgs`/`provider`/`providers`, `coord`/`coords`, `race`/`raceID`/`races`, `class`/`classID`/`classes`, and `level`/`lvl`.

For quest records, use this order for the listed fields:

```text
name
description
sourceQuests
sourceQuestNumRequired
altQuests
qs
provider
coord
maps
cost
races
classes
lvl
[flags, then lockCriteria]
customCollect
timeline
qi/qis
groups
```

For NPC records, use:

```text
description
crs
provider
coord
maps
questID
cost
races
classes
lvl
[flags, then lockCriteria]
timeline
qi/qis
groups
```

For object records, use:

```text
description
crs
sourceQuests
provider
coord
maps
questID
cost
races
classes
lvl
[flags, then lockCriteria]
timeline
qi/qis
groups
```

Apply the complete NPC order to numeric `n(npcID, ...)` records, not category headers such as `n(QUESTS, ...)`. The complete orders above follow the relevant examples in `.contrib/Standard.lua`, with the explicit rules here taking precedence when the examples differ.

Apply these shared rules to all applicable tables, including other constructors and plain table literals:

- Put `cost` after `coord`/`coords` and before the race/class/level block when those fields coexist.
- Keep the restriction fields together in the order `races`, `classes`, `lvl`; omit absent fields.
- Keep `isX` flags and `repeatable` together. Preserve their existing relative order except that `isBreadcrumb` is the last flag. Put `lockCriteria` immediately below that flag block when present.
- Put the final fields in this order: `timeline`, the `qi`/`qis` group, then `groups`; omit absent fields. Preserve the existing relative order within the `qi`/`qis` group. Place this tail after all other metadata, including fields not listed in the complete orders.
- Do not invent an order for unlisted fields. Preserve their relative order, although a field covered by an explicit rule may move across them.

Do not change function-call evaluation order or move fields across independent comments or Parser boundaries without inspecting their context. If a field is wrapped in Parser directives, move its complete conditional block only after verifying that every affected field retains exactly the same conditions. Preserve the directive text and directive order.

## Table and key formatting

- Use `key = ...` instead of `["key"] = ...` only when the key is a valid Lua identifier and is not a reserved word. Keep keys requiring bracket syntax unchanged.
- Use predefined race and class constants instead of numeric race/class IDs. Confirm the existing constant's value and applicable context; do not invent names or replace unrelated numeric values.
- After a comma followed by more code on the same line, use one space, not a tab. An inline comment is not further data; its preceding whitespace follows the comment rules below.
- Use spaces between braces and actual data on the same line: `{ data }`. Outside `cost`, do not introduce spaces solely between adjacent nested braces.
- For `cost`, leave a space inside every brace level, including adjacent nested tables: `cost = { { "i", 15997, 200 } },`.
- Put simple `cost`, `provider`, and `providers` tables on one line when their structure and comments allow it. Preserve separate entries when each needs its own comment. Do not merge across independent comments or Parser directives, and do not discard comments to force a single line.
- Add a trailing comma to a final table data element when it is missing. Inspect the parsed table context; a standalone closing `)` or `}` does not by itself establish that a comma is valid.
- Do not add a comma to the final element of an `eventSchedule` field. Do not add a comma after the `end` of a function-valued field merely to satisfy the trailing-element rule.
- When a standalone closing `}` terminates a table assigned to a variable, use `};` for that declaration instead of a table-element comma. Do not add table-element commas to function argument closings or loop headers, and do not merge separate closing-parenthesis lines.

## Comments and whitespace

- Every `provider`/`providers` entity entry needs a comment identifying the entity. Use the actual object or NPC name, not the objective's action text. For example, use `Attack Plan: Thelsamar`, not `Attack Plan: Thelsamar destroyed`.
- Include an NPC's full display name and subtitle in angle brackets when present, for example `High Tinker Mekkatorque <King of Gnomes>`. Preserve existing version qualifiers and other relevant annotations.
- Verify entity names against Wowhead for the relevant WoW flavour before adding or correcting them. Prefer Forever sources for Forever data; a missing Classic page does not establish that Forever data is unavailable. Do not infer an entity name or subtitle from an objective, an ID, or a similar entity. Distinguish an NPC subtitle from creature type, level, rank, and faction text in a tooltip. Do not silently substitute Classic or TBC evidence for current Forever names, titles, or item classification; document any explicitly verified cross-flavour context, otherwise leave the record unverified.
- Text comments use one space after `--`. Commented-out data or code, such as `--i(...)`, does not acquire a space after `--`. A standalone `--` has no following space. Preserve decorative separators and Parser directives.
- Before a same-line comment following code, use one tab by default. Preserve existing multiple-tab alignment used for layout, especially in profession data; do not collapse it indiscriminately.
- Remove unnecessary trailing spaces or tabs from content lines, while preserving the required space after a text-comment marker. Preserve whitespace-only lines, including their existing indentation tabs, and do not remove blank lines.

## Item and cost annotations

- Distinguish quest-objective or required items, marked `(QI!)`, from quest starters, marked `(QS!)`. Wowhead's `Quest Item` tooltip text or item class 12 establishes membership in the QI/QS category, but does not distinguish these roles. Verify the role separately from item and quest evidence for the relevant WoW flavour before adding or changing a marker.
- Check the item's quest relationships and the relevant quest's requirements or starter information. A location inside `objective(...)`, a `qi` field, or an existing annotation is not independent proof of the item's role. If an item has both uses, evaluate the specific reference and its quest context; do not apply a single marker indiscriminately to every occurrence.
- Match the exact item ID and relevant WoW flavour and context across item and quest evidence. Matching names, even a name unique in the local inventory, do not establish item identity. Do not infer that an item has both roles from different item IDs sharing a name.
- A quest source that supplies only an item name does not verify the referenced item ID or its role. Keep that reference unverified until a quest or object relationship is traceable to the exact item ID, or an in-game screenshot or Contributor Report establishes it.
- Comments for verified `qi` item references use `(QI!)`. Normalize a legacy `(PQI!)` marker to `(QI!)` only after confirming the QI role. Preserve confirmed `(QS!)` markers; do not convert them solely because Wowhead labels the item `Quest Item`.
- Audit item references inside `objective(...)`, including item-type provider tuples, item-type costs, and any direct `i(...)` entries. Classify each affected reference as QI, QS, or unresolved from the source evidence and context before selecting its marker. Report conflicting classifications for review instead of guessing.
- Absence of `Quest Item` text in a tooltip is not sufficient proof that an item is not a quest item. Check the item's explicit classification when available, then verify its role. An unavailable source, incomplete quest relationship, or unresolved role leaves the reference unverified and unchanged; do not add or replace a marker based on the broad classification alone.
- Retain the original item name and unrelated markers when adding or correcting a verified QI/QS marker. Report pre-existing name mismatches separately rather than silently correcting them under an annotation-only request.
- Recipe item comments require `(RECIPE!)`.
- Costs expressed with numeric entity IDs rather than descriptive constants need comments containing the quantity and entity name, for example `-- 200x Thorium Shells` for `{ "i", 15997, 200 }`. Preserve quantity and any applicable item annotations.
- When both a reputation faction and its rank use descriptive constants, omit a redundant comment repeating them, for example after `{ FACTION_STEAMWHEEDLE_CARTEL, EXALTED }`.
- Sort item entries within each `cost` list alphabetically by item name within their existing item-entry slots among non-gold costs. Preserve the positions and relative order of other non-gold cost types, put gold entries last, and keep equal-name item entries stable. Move complete entries with their comments and preserve quantities, annotations, and Parser conditions. Sort by the actual item name, not the quantity, marker, or item ID; report unknown names and conditional boundaries that prevent safe ordering instead of guessing.

## Editing and verification workflow

1. Inspect the current branch, worktree, staged changes, and parent instructions. Inventory the eligible Lua files and parse the affected constructors and fields before proposing edits.
2. Make a plan grouped by rule and field type, including candidate counts, exclusions, uncertain cases, and boundaries requiring manual inspection. For QI/QS annotations, list each affected item reference, its quest context, existing and proposed markers, classification and role evidence, and any conflicts or unresolved roles. Distinguish new operations from unique records affected across the complete contribution.
3. Gather source evidence before making verified-name or item-classification edits. Verify QI/QS roles individually rather than treating Wowhead's broad Quest Item classification as proof of QI. Record direct Wowhead item and quest links supporting the chosen role, affected item and quest IDs, the relevant flavour, and verification context for the PR's data-source disclosure. Leave unsupported changes unverified and unchanged.
4. Apply narrow, source-checked edits. For ordering, move whole fields and their attached comments; detect overlapping replacements, retain a recoverable baseline, and preserve line endings, blank-line indentation, and unrelated bytes.
5. Rescan the full eligible scope after applying the plan. Resolve or explicitly report remaining candidates and blocked cases instead of silently skipping them.
6. Independently verify the diff against the saved baseline. Check recursive field values, constructor identities, array order except for the explicitly permitted cost permutation, duplicate-key order, unknown-field relative order, attached comments, whitespace-only lines, and each field's Parser condition stack. When applying cost ordering, confirm that all complete entries retain their values, quantities, comments, and Parser conditions, item names are alphabetical within the item-entry slots, other non-gold cost positions are preserved, and gold entries come last. Confirm that moved expressions do not change evaluation order. For QI/QS annotations, independently confirm that the evidence identifies the exact item ID and supports the selected role and marker for each reference, not merely a matching name or the broad item class. For comment-only changes, compare Lua 5.1 stripped bytecode, which must be identical; for field reordering, compare parsed semantics as well as Lua 5.1 syntax, since bytecode can legitimately differ.
7. Keep separate commits for separate applied rules. Follow the parent repository's commit, attribution, and disclosure requirements. Honor configured commit signing; if signing fails, preserve the prepared changes and resolve the signing problem rather than silently disabling signing. Describe the final changes with useful counts rather than a list of filenames, and avoid double-counting records changed by several rules.
8. Commit, push, update a PR, integrate a branch, or remove branches and worktrees only within the current authorization. If continuing an existing PR, update that PR. Preserve unrelated local changes and verify local and remote state after Git operations.
