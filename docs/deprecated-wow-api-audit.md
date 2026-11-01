# Deprecated WoW API rescan, including 12.1.7 PTR

Audit date: November 2, 2026 (Asia/Taipei).

ATT baseline: [`d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc`](https://github.com/ATTWoWAddon/AllTheThings/commit/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc). All ATT links below refer to this exact tree.

## Result

- **No confirmed unwrapped deprecated function calls remain in maintained addon code or `.contrib` callback sources.** The original 18 function-name findings have been migrated to `app.WOWAPI` or the current menu adapter.
- **12.1.7 PTR adds three explicit deprecated function names; ATT references none of them.** They are listed below even though they require no ATT migration at this baseline.
- **Generated `db/` copies still contain 99 direct calls to three old APIs in 11 files.** Of these, 74 calls belong to current client data routes; 25 belong to the historical Cata output. Their maintained sources already use wrappers.

The October 14 report described `a9ceed3b`; its original count of 18 is not the count for the current tree. This report replaces that historical result with a rescan of the migrated branch.

## Scope and evidence

- Scanned all **4,026 tracked Lua files, 25 XML files and the single addon TOC**, including hidden `.contrib` sources, generated database callbacks and library code.
- Findings count runtime calls, including callback strings emitted by the Parser. Comments, diagnostic suppressions, test mocks and wrapper implementation/fallback definitions in `src/WoW API Wrappers.lua` are excluded.
- Local aliases were traced to their assigned function. Calls through `app.WOWAPI` or `_.WOWAPI` are outside the bypass scope even when the local variable retains an old API name.
- A function must have explicit deprecated-source or Wiki evidence. A missing generated API definition, an old global name or a language-server diagnostic is insufficient by itself.
- Compared pinned Gethe live and PTR deprecated definitions and generated API documentation. Historical 11.0.0 and 12.1.0 exports cover compatibility APIs already removed from current exports. Non-`C_` framework methods were checked separately.
- This is static source verification. No WoW client, Parser regeneration or in-game runtime test was performed.

Primary version pins: [live 12.1.5 / 70688](https://github.com/Gethe/wow-ui-source/blob/d07eb00237d8891f153215db98a5df880a26cfe5/version.txt#L1); [PTR 12.1.7 / 70668](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/version.txt#L1). Historical exports: [11.0.0](https://github.com/Gethe/wow-ui-source/tree/742bf9604e0009bebb9a61a4f953d2661f8b387e) and [12.1.0](https://github.com/Gethe/wow-ui-source/tree/a89e9d0ceb7f6cd31e8fc5ca7df1a338ac0b1b58). The [Warcraft Wiki 12.1.7 API summary](https://warcraft.wiki.gg/wiki/Patch_12.1.7/API_changes) is a secondary cross-check.

## Explicit 12.1.7 PTR deprecations

| Deprecated API | Replacement | ATT references | Pinned Blizzard evidence |
| --- | --- | ---: | --- |
| `BNSetBlocked` | `C_BattleNet.SetBlocked` | 0 | [Battle.net compatibility definition](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L39) |
| `C_TransmogOutfitInfo.GetWeaponOptionsForSlot` | `C_TransmogOutfitInfo.GetOptionsForSlot` | 0 | [Transmog compatibility alias](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L9) |
| `C_TransmogOutfitInfo.SetViewedWeaponOptionForSlot` | `C_TransmogOutfitInfo.SetViewedOptionForSlot` | 0 | [Transmog compatibility alias](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L10) |

These three definitions are new in the pinned PTR deprecated sources relative to the pinned live export. The compatibility code is conditional on `loadDeprecationFallbacks`; these are **deprecated, not already removed**, in this PTR snapshot. The declarations are in the dedicated Battle.net and Transmog addons, not a file named `Deprecated_12_1_7.lua`.

The Transmog aliases return the new `TransmogOutfitOptionInfo` records unchanged; they do not restore the legacy `TransmogOutfitWeaponOptionInfo.weaponOption` field. The replacement field is `type`. See the [PTR option structure](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_APIDocumentationGenerated/TransmogOutfitInfoDocumentation.lua#L919). ATT uses neither old function, so no migration is required here.

## Remaining bypasses in generated data

| Old API | Calls in all generated outputs | Calls in current client routes | Maintained source |
| --- | ---: | ---: | --- |
| `UnitBuff` | 78 | 53 | [Tooltip generator](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/.contrib/.db/shared/lib/Functions/Function%20Templates.lua#L11) and [Soul of Iron callback](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/.contrib/.db/standard/11%20-%20Character/Achievements.lua#L811) now use `_.WOWAPI.GetBuffDataByIndex`. |
| `IsPlayerSpell` | 16 | 16 | [Phoenix callback](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/.contrib/.db/standard/02%20-%20Outdoor%20Zones/06%20Pandaria/Vale%20of%20Eternal%20Blossoms.lua#L24) now uses `_.WOWAPI.IsPlayerSpell`. |
| `CombatLogGetCurrentEventInfo` | 5 | 5 | [Standard source](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/.contrib/.db/standard/02%20-%20Outdoor%20Zones/02%20Eastern%20Kingdoms/Stranglethorn%20Vale.lua#L51) and [Forever source](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/.contrib/.db/forever/zones/eastern%20kingdoms/stranglethorn%20vale.lua#L44) bind `_.WOWAPI.CombatLogGetCurrentEventInfo` and check availability. |
| **Total** | **99** | **74** | **Three stale generated API families; no additional unresolved source migration.** |

Exact generated locations:

| Generated file | API | Direct calls |
| --- | --- | ---: |
| [db/Camelot/Categories/Zones.lua:17835](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Camelot/Categories/Zones.lua#L17835) | `CombatLogGetCurrentEventInfo` | 1 |
| [db/Cata/ReferenceDB.lua:25–49](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Cata/ReferenceDB.lua#L25) | `UnitBuff` | 25 |
| [db/Mists/Categories/Zones.lua:74390–74393](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Mists/Categories/Zones.lua#L74390) | `IsPlayerSpell` | 16 |
| [db/Mists/ReferenceDB.lua:25–50](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Mists/ReferenceDB.lua#L25) | `UnitBuff` | 26 |
| [db/TBC/Categories/Zones.lua:18337](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/TBC/Categories/Zones.lua#L18337) | `CombatLogGetCurrentEventInfo` | 1 |
| [db/Vanilla/Categories/Character.lua:28](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Vanilla/Categories/Character.lua#L28) | `UnitBuff` | 2 |
| [db/Vanilla/Categories/Zones.lua:14679](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Vanilla/Categories/Zones.lua#L14679) | `CombatLogGetCurrentEventInfo` | 1 |
| [db/VanillaSOD/Categories/Character.lua:28](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/VanillaSOD/Categories/Character.lua#L28) | `UnitBuff` | 2 |
| [db/VanillaSOD/Categories/Zones.lua:16497](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/VanillaSOD/Categories/Zones.lua#L16497) | `CombatLogGetCurrentEventInfo` | 1 |
| [db/Wrath/Categories/Zones.lua:19713](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Wrath/Categories/Zones.lua#L19713) | `CombatLogGetCurrentEventInfo` | 1 |
| [db/Wrath/ReferenceDB.lua:25–47](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/db/Wrath/ReferenceDB.lua#L25) | `UnitBuff` | 23 |

Each Phoenix output line contains four calls; each Vanilla/SoD character line contains two. This explains why the number of lines differs from the call count.

The Cata row is retained here only to account for all tracked generated copies. It is excluded from the current-flavour table. Rebuilding the affected generated outputs from their already migrated sources is the remaining work; this audit does not edit or regenerate `db/`.

## Current client tracks

Only existing client tracks are listed. PTR is a release channel of Retail, not a separate flavour. The table records pinned Gethe source exports and ATT declarations; it does not claim complete in-game validation or that every API is available in every mode.

| Client track | Status at audit date | Pinned Gethe version / build | ATT interface | Data route | Stored generated bypass calls |
| --- | --- | --- | ---: | --- | ---: |
| Retail | Live | [12.1.5 / 70688](https://github.com/Gethe/wow-ui-source/blob/d07eb00237d8891f153215db98a5df880a26cfe5/version.txt#L1) | `120105` | `Standard` | 0 |
| Classic Era family | Live | [1.15.9 / 70576](https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/version.txt#L1) | `11509` | `Vanilla / VanillaSOD` | 6 (3 per mutually exclusive output) |
| TBC Anniversary | Live | [2.5.6 / 70577](https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/version.txt#L1) | `20506` | `TBC` | 1 |
| Mists Classic | Live | [5.5.4 / 70631](https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/version.txt#L1) | `50504` | `Mists` | 42 |
| Titan Reforged | Live | [3.80.2 / 70522](https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/version.txt#L1) | `38002` | `Wrath` | 24 |
| Forever | Pre-release source; name-reservation period; beta ended | [1.60.1 / 70532](https://github.com/Gethe/wow-ui-source/blob/ca8368f2f2380cbe696854f7f2646387c278a61b/version.txt#L1) | `16001` | `Camelot` | 1 |

The Era package contains both Vanilla and VanillaSOD category sources. Their season guards select one active dataset; the six stored calls are three calls in each mutually exclusive dataset. Titan uses the `Wrath` route at interface `38002`; this does not add the retired international Wrath or Cata clients as current flavours.

Forever is retained as a pre-release client track, not labelled as a currently playable beta. At the audit date the beta has ended and early name reservations run through November 3. The scheduled global launch is November 4, 23:00 UTC (November 5, 07:00 Asia/Taipei). See the [official product page](https://worldofwarcraft.blizzard.com/en-us/forever/), [name-reservation notice](https://worldofwarcraft.blizzard.com/en-us/news/24303866/) and [launch schedule](https://worldofwarcraft.blizzard.com/en-gb/news/24301508).

The additional scan target is [Retail 12.1.7 PTR / 70668](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/version.txt#L1) (`120107`, already declared in ATT's TOC). Retail live remains the pinned 12.1.5 export above.

## Previously reported source calls: migration status

| Original function names | Current maintained path | Evidence |
| --- | --- | --- |
| `GetAddOnMetadata` | `app.WOWAPI.GetAddOnMetadata` | [Version lookup](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/base.lua#L21); [Window metadata alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Window%20Definitions.lua#L11) |
| `BNSendGameData` | `app.WOWAPI.SendGameData` | [Direct wrapper binding](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Windows/Account%20Management.lua#L11) |
| `ChatEdit_InsertLink` | `app.WOWAPI.InsertChatLink` | [Commands alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Commands.lua#L7); [Click-handler alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Window%20Definitions.lua#L4) |
| `ChatFrame_DisplayTimePlayed` | `app.WOWAPI.WrapDisplayTimePlayed` | [Native display interception](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Windows/Account%20Management.lua#L16) |
| `GetMerchantItemInfo` | `app.WOWAPI.GetMerchantItemInfo` | [Merchant alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Windows/Debugger.lua#L25) |
| `SecondsToTime` | `app.WOWAPI.SecondsToTime` | [Formatter alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Modules/Color.lua#L16) |
| `GetSpecializationInfo` | `app.WOWAPI.GetSpecializationInfo` | [Requirement inference alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Settings/Pages/Interface%20-%20Information.lua#L673) |
| `GetSpellInfo`, `IsPlayerSpell` | Corresponding `app.WOWAPI` members; Phoenix callback uses `_.WOWAPI` | [Knowledge alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Classes/Spell.lua#L62); [Spell-info alias](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Classes/Spell.lua#L239) |
| `UnitBuff`, `CombatLogGetCurrentEventInfo` | Aura-data/combat-log wrappers in maintained callback sources | Source links in the generated-data table above. |
| `InterfaceOptionsFrame_OpenToCategory`, `InterfaceOptions_AddCategory` | `OpenOptionsCategory` / `RegisterOptionsCategory`, using current `Settings` APIs | [Settings aliases](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Settings/Settings.lua#L1562) |
| `UIDropDownMenu_SetWidth`, `UIDropDownMenu_SetText` | `CreateDropdown` / `SetDropdownText` | [Dropdown creation](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Settings/Pages/Features%20-%20Audio.lua#L155); [Selection text](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Settings/Pages/Features%20-%20Audio.lua#L159) |
| `UIDropDownMenu_CreateInfo`, `UIDropDownMenu_AddButton`, `UIDropDownMenu_Initialize` | `SetupDropdownMenu` owns the modern menu and legacy backend | [Menu setup](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Settings/Pages/Features%20-%20Audio.lua#L166) |

Housing catalog functions keep their current names. `Decor.lua` now normalizes catalog data through the wrapper and reads current record/quantity fields. Compatibility field handling inside the wrapper is outside the bypass scope.

## Other 12.1.7 changes and exclusions

The following native documentation names disappear or change in the PTR export without a matching explicit deprecated bridge. They are tracked as API-change candidates, not added to the three confirmed deprecated names. None is referenced by ATT.

| Live documentation name | PTR documentation name | Pinned PTR declaration |
| --- | --- | --- |
| `C_CatalogShop.ConfirmHousingPurchase` | `C_CatalogShop.ConfirmVCProductPurchase` | [CatalogShop](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_APIDocumentationGenerated/CatalogShopDocumentation.lua#L50) |
| `C_PaperDollInfo.CanCursorCanGoInSlot` | `C_PaperDollInfo.CursorCanGoInSlot` | [PaperDollInfo](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_APIDocumentationGenerated/PaperDollInfoDocumentation.lua#L41) |
| `C_SecureTransfer.GetMailInfo` | `C_SecureTransfer.GetMailSendInfo` | [SecureTransfer](https://github.com/Gethe/wow-ui-source/blob/9fc0ba94381153262856ed0120a2675f1a11c30a/Interface/AddOns/Blizzard_APIDocumentationGenerated/SecureTransferDocumentation.lua#L61) |

`C_SecureTransfer.GetMailReceiveInfo` is an additional receive-mail interface with a different result contract; it is not an interchangeable replacement for `GetMailInfo`.

The [12.1.7 Wiki summary](https://warcraft.wiki.gg/wiki/Patch_12.1.7/API_changes) also announces server/spawn GUID obfuscation, with a future-PTR-build qualification. **Potential ATT impact, inferred from source:** [the spawn-time calculation](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Modules/Tooltip.lua#L893) decodes spawn-UID bits for Alive/Spawned tooltips, and [the Layer label](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Modules/Tooltip.lua#L900) interprets the server component. Those interpretations need validation against the changed GUID contract. This is not a deprecation of `UnitGUID`, and no runtime failure was tested.

The [12.1.7 addon-message restriction](https://warcraft.wiki.gg/wiki/API_C_ChatInfo.SendAddonMessage) for trial/veteran accounts affects a current API used by [Social](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/Modules/Social.lua#L17) and [account sync](https://github.com/ATTWoWAddon/AllTheThings/blob/d408d37f56b8f5c6e9437ef495ca9e0d32f8d1cc/src/UI/Windows/Account%20Management.lua#L270). It is an account/capability restriction, not a renamed function. The TOC-variable rule is also a loading-contract change; ATT has no variable-bearing addon directives in its tracked TOC.

Excluded after manual review:

- `C_ChatInfo.RegisterAddonMessagePrefix` and `C_ChatInfo.SendAddonMessage` retain their native names. Their historical deprecated files adapted return values; ATT ignores those returns at the matched calls.
- `C_AreaPoiInfo.GetAreaPOIInfo` and `C_VignetteInfo.GetVignetteInfo` retain their native names. Historical shims added old result fields; ATT does not read the deprecated `widgetSetID` / `addPaddingAboveWidgets` fields at these call paths.
- `C_TradeSkillUI.GetTradeSkillLineForRecipe`, `C_Transmog.GetSlotForInventoryType` and `C_TransmogSets.GetAllSourceIDs` have no confirmed deprecation definition in the checked sources. A replacement candidate or diagnostic alone does not qualify them as findings.
- `MenuUtil.ShowTooltip`, `MenuUtil.HideTooltip` and `TooltipUtil.SurfaceArgs` have historical deprecation evidence but no ATT references. `getglobal` and `setglobal` are also absent.

## Follow-up

1. Regenerate the affected database packages from the migrated `.contrib` sources and verify the generated callback strings use their wrappers. Treat the historical Cata output separately from current client support.
2. Validate the Alive/Spawned and Layer tooltip logic when the announced GUID-obfuscation build is available.
3. Recheck the three PTR deprecations against the release export. The pinned scan requires no additional wrapper migration for those unused functions.
