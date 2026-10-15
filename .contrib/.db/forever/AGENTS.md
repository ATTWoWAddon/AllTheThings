# Forever Data Editing Guidelines

Follow the repository's parent `AGENTS.md` in addition to these instructions.

## Scope and preservation

- These rules apply to Lua files under this directory, including hidden configuration directories. Exclude the `zzOLD` subtree and every file named `ItemDB.lua` from formatting scans and edits.
- Work in an isolated worktree and branch. Reuse an existing worktree only when it belongs to the active task; preserve unrelated staged and unstaged work and the primary checkout.
- Preserve data values, strings, array element order, duplicate-key write order, existing annotations, version qualifiers, and Parser directive conditions. A formatting request does not authorize data corrections.
- Use Lua 5.1 exclusively for Lua compilation and tests.

## Field ordering

Move complete fields with their inline comments and nested values. Do not sort text lines or array elements. Treat the following as equivalent ordering slots without renaming the actual keys: `sourceQuest`/`sourceQuests`, `qg`/`qgs`/`provider`/`providers`, `coord`/`coords`, `race`/`raceID`/`races`, `class`/`classID`/`classes`, and `level`/`lvl`.

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
qi
timeline
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
groups
```

Apply the complete NPC order to numeric `n(npcID, ...)` records, not category headers such as `n(QUESTS, ...)`. The complete orders above follow the relevant examples in `.contrib/Standard.lua`, with the explicit rules here taking precedence when the examples differ.

Apply these shared rules to all applicable tables, including other constructors and plain table literals:

- Put `cost` after `coord`/`coords` and before the race/class/level block when those fields coexist.
- Keep the restriction fields together in the order `races`, `classes`, `lvl`; omit absent fields.
- Keep `isX` flags and `repeatable` together. Preserve their existing relative order except that `isBreadcrumb` is the last flag. Put `lockCriteria` immediately below that flag block when present.
- Put `timeline` at the end of metadata, immediately before `groups`; without `groups`, make it the final field. This includes moving it below metadata that is not listed in the complete orders.
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

- Comments for `qi` item references use `(QI!)`. Normalize a legacy `(PQI!)` marker to `(QI!)`; preserve `(QS!)` markers.
- Audit item references inside `objective(...)`, including item-type provider tuples, item-type costs, and any direct `i(...)` entries. Add `(QI!)` only when Wowhead for the relevant flavour confirms that the item is a Quest Item.
- Absence of `Quest Item` text in a tooltip is not sufficient proof that an item is not a quest item. Check the item's explicit classification when available. An unavailable page or missing source leaves the item unverified; do not guess or add a tag.
- Retain the original item name and unrelated markers when adding a QI marker. Report pre-existing name mismatches separately rather than silently correcting them under an annotation-only request.
- Recipe item comments require `(RECIPE!)`.
- Costs expressed with numeric entity IDs rather than descriptive constants need comments containing the quantity and entity name, for example `-- 200x Thorium Shells` for `{ "i", 15997, 200 }`. Preserve quantity and any applicable item annotations.
- When both a reputation faction and its rank use descriptive constants, omit a redundant comment repeating them, for example after `{ FACTION_STEAMWHEEDLE_CARTEL, EXALTED }`.

## Editing and verification workflow

1. Inspect the current branch, worktree, staged changes, and parent instructions. Inventory the eligible Lua files and parse the affected constructors and fields before proposing edits.
2. Make a plan grouped by rule and field type, including candidate counts, exclusions, uncertain cases, and boundaries requiring manual inspection. Distinguish new operations from unique records affected across the complete contribution.
3. Gather source evidence before making verified-name or item-classification edits. Record direct Wowhead links, affected IDs, the relevant flavour, and verification context for the PR's data-source disclosure. Leave unsupported changes unverified and unchanged.
4. Apply narrow, source-checked edits. For ordering, move whole fields and their attached comments; detect overlapping replacements, retain a recoverable baseline, and preserve line endings, blank-line indentation, and unrelated bytes.
5. Rescan the full eligible scope after applying the plan. Resolve or explicitly report remaining candidates and blocked cases instead of silently skipping them.
6. Independently verify the diff against the saved baseline. Check recursive field values, constructor identities, array order, duplicate-key order, unknown-field relative order, attached comments, whitespace-only lines, and each field's Parser condition stack. Confirm that moved expressions do not change evaluation order. For comment-only changes, compare Lua 5.1 stripped bytecode, which must be identical; for field reordering, compare parsed semantics as well as Lua 5.1 syntax, since bytecode can legitimately differ.
7. Keep separate commits for separate applied rules. Follow the parent repository's commit, attribution, and disclosure requirements. Honor configured commit signing; if signing fails, preserve the prepared changes and resolve the signing problem rather than silently disabling signing. Describe the final changes with useful counts rather than a list of filenames, and avoid double-counting records changed by several rules.
8. Commit, push, update a PR, integrate a branch, or remove branches and worktrees only within the current authorization. If continuing an existing PR, update that PR. Preserve unrelated local changes and verify local and remote state after Git operations.
