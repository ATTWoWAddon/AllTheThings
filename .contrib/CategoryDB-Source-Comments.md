# Reading CategoryDB.lua Source Comments

The `-- source:` comments in [`CategoryDB.lua`](.db/shared/modules/CategoryDB.lua) trace the source of each localized name and conditional branch. Start with the source table and ID, then check the flavor scope, fallback details, query limitations, and evidence role.

The **2026-10-18** source snapshot at the top of the file maps each flavor to its build, so inline comments do not repeat build numbers. These records describe that snapshot and its query results. When updating a source, check the build mapping as well.

## Start with one name

`[63]` is an ATT category ID, and `text.tw` is its Traditional Chinese field. This excerpt shows the beginning of that line, omitting the following `| no find=...` section:

```lua
tw = "日常烹飪",	-- source: TradeSkillCategory[63].Name_lang; found={RETAIL,RETAIL PTR,MOP CLASSIC}
```

`source:` identifies the `TradeSkillCategory` table, source ID 63, and `Name_lang` field. The ATT category ID happens to match the source ID here; that is not always the case. `found={...}` means this record was found in the RETAIL, RETAIL PTR, and MOP CLASSIC source snapshots.

The flavor list describes the source scope, while `-- #if` controls which branch ATT uses. Read each comment with the locale and conditional branch it belongs to; the source list alone is not a reason to change a pragma.

## Read the no find section

The rest of the same line records unsuccessful queries and query limitations. All fields from that section are reproduced below, with line breaks added for readability:

```text
no find={
  fallback={status=shared_fallback; flavor=RETAIL; source-locale=zhTW};
  query-locale=zhTW;
  reason=English probe returned TradeSkillCategory table not found (HTTP 400)%3B this locale query was not requested.;
  flavors={CLASSIC ERA,TBC PTR,TBC ANNIVERSARY,TITAN BETA(source-only),SEASON OF DISCOVERY};
  query-locale=zhTW;
  reason=No row for this category ID in the queried build.;
  flavors={FOREVER BETA}
}
```

`flavor=RETAIL; source-locale=zhTW` identifies the shared fallback as Retail's zhTW source, used for targets without a direct source. Read the two query results separately:

- For the first group, the table was unavailable during the English probe, so the zhTW query was not attempted. Even with `query-locale=zhTW`, the `reason` is needed to understand what was actually queried.
- For the second group, Forever Beta's zhTW data was queried, but it contained no row for this category ID.

An unavailable table does not establish that an ID is absent. A missing row only describes the queried build and locale. If `queried-value=...` is also present, check why the returned value did not match the displayed value.

Forever is recorded separately from the Classic family; Classic source coverage must not be substituted for Forever coverage. `TITAN BETA (source-only)` indicates a retained source snapshot and does not establish ATT support for that flavor. Multiple flavors or tables also do not necessarily represent multiple independent data providers.

## Distinguish fallback sources from targets

In `A -> {B...}`, the left side is the source flavor, and the right side lists the target flavors using or being compared against that evidence. For example, category `[71]` includes this excerpt:

```text
fallback-source={donor=RETAIL PTR -> {RETAIL}; source-locale=enUS}
```

This borrows a Retail PTR source for the Retail target; it does not establish that the same native row was found in Retail. Read `shared_fallback` and `shared_fallback_source` together with their source and target mapping.

A different case occurs when data requested for a locale returns English text. The comment on `[1].text.it` includes this excerpt:

```text
status=english_fallback; role=native-name; fallback={language=en; source-locale=itIT}; raw="Bullet"
```

The source export locale is recorded as `itIT`, but the returned text is the English word `Bullet`. The displayed `Pallottola` on the same line has a separate fallback source from Retail itIT. Therefore, `source-locale` alone does not establish that the returned text is localized. This field appears only in fallback contexts; read other sources in the context of the current locale field. `verified-locale=enUS` explicitly identifies the checked locale and does not imply that other locales were checked.

## Identify what the evidence supports

A single comment can contain several kinds of evidence. Read each section's `role`, `status`, and `note`.

- `role=native-name` supports the source name itself. For example, `[1].text.en` displays `Bullets`, while the source contains `raw="Bullet"`. The `transform=` field explains ATT's change from the singular source name to a plural category title. Thus, `found` alone does not guarantee an exact string match with the displayed name.
- `role=term-evidence` supports related terminology or subject matter. Category `[3]` has a source containing `Item - Darkmoon Tarot Cards`, while ATT retains the custom English title `Tarot Decks`. The related term is not evidence that this custom title is a native name.
- `role=semantic-relation` supports a field mapping or semantic relationship. For example, `ItemSubClass[29].{ClassID,SubClassID}` records classification information separately from the same table's localized `DisplayName_lang` field.
- `role=runtime_lookup` indicates that ATT obtains the value at runtime. For example, `[64].text.en` uses `WOWAPI_GetSpellName(124694)`. Its comment records `SpellName[124694].Name_lang`, `runtime={RETAIL,RETAIL PTR,MOP CLASSIC}`, and `verified-locale=enUS` as source evidence. GlobalStrings expressions record their sources in the same way.
- `role=candidate-corroboration/identity-unverified` marks candidate evidence. In the preceding example, the same line also references `TradeSkillCategory[64]`. Matching IDs or names do not establish a verified relationship to the runtime expression.
- `role=historical-name` supports a historical name. For example, `[404]` retains `Removal` with `historical_same_ID_verified`, alongside `no find` results for the current targets. The historical build is listed separately at the top of the file and must not be counted as a successful current-flavor lookup.

## Read compact groups and separators

`;` separates fields within a section, and ` | ` separates source or evidence sections. The meaning of `{...}` depends on its position: `found={...}` groups flavors, `.{ClassID,SubClassID}` groups fields, and `no find={...}` contains query results.

Flavors sharing the same source and conditions are grouped together. Each ` | ` section still has its own scope. Grouping reduces repetition; it does not promote candidate evidence, historical sources, or fallbacks to current native names.

A semicolon within a source value is encoded as `%3B`, as in `raw="ClassID=6%3B SubClassID=3"`. Here, `%3B` is part of the value rather than a field separator.

For a long comment, first split it into ` | ` sections, then identify each section's table, flavor, `raw`, `status`, `role`, and `note`. Finally, return to the line's locale and pragma to determine which displayed name the evidence supports.

## Field reference

| Field | Meaning |
| --- | --- |
| `source: Table[ID].Field` | Source table, record ID, and field. The source ID may differ from the ATT category ID. |
| `found` / `runtime` / `historical` | A found source, evidence for a runtime lookup, or a historical name, with the corresponding source flavors. |
| `candidate-corroboration` | Candidate evidence; `identity-unverified` preserves the unverified relationship. |
| `raw` / `transform` | The original source value and its transformation into ATT's displayed value. |
| `fallback` / `fallback-source` / `donor` | A borrowed source and its targets. `english-fallback` separately lists the scope in which English text was returned. |
| `source-locale` / `language` | The recorded source export locale and the explicitly stated fallback text language. |
| `verified-locale` | The locale explicitly checked. |
| `no find` / `flavors` | Target flavors for which a suitable source was not found or the query was limited. Read the associated reason. |
| `query-locale` / `queried-value` | The query locale and, when recorded, the returned value. Read `reason` for the actual query outcome. |
| `checked` / `reason` | What was checked and why a suitable source was not found. |
| `status` / `role` / `note` | The evidence's verification status, purpose, and limitations. |
