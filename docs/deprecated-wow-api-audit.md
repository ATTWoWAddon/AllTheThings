# Deprecated WoW APIs and client support

Audit date November 5, 2026 (Asia/Taipei).

ATT branch `codex/deprecated-wow-api-audit`, rebased onto upstream `master` at `b96c21ade5b7a533ba31ed230d96c003b1cb8a6e`. Audited source tree IDs are recorded below. This document combines caller migration history and the complete wrapper audit in one report.

## Results

- **All 68 public wrapper members are covered**, including preferred APIs, legacy candidates, ATT helpers, and their per-track lifecycle evidence.
- **No confirmed unwrapped deprecated function calls remain in maintained addon code or Parser callback sources.** All 18 originally reported function names are covered by the retained migrations. Completed migrations are represented by their API history below.
- **The latest Retail PTR contains three additional deprecated names.** They have no ATT references. The same compatibility definitions are already present in the current Forever live source.
- **Generated databases retain 99 direct calls across three API families.** Of these, 74 are stored in current client data routes and 25 in the historical Cata output. Their maintained callback sources already use ATT wrappers.

## Client versions scanned

Each row pins the latest Gethe branch revision retrieved for that track. Interface values describe ATT's existing TOC declarations. Counts are stored generated calls outside ATT's wrapper. They do not measure runtime failures.

| Client track | Status | Pinned Gethe version / build | ATT interface | Generated outputs checked | Stored bypass calls |
| --- | --- | --- | --- | --- | --- |
| Retail | Live | [12.1.5 / 70783](https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/version.txt#L1) | `120105` | `Standard` | 0 |
| Classic Era family | Live | [1.15.9 / 70576](https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/version.txt#L1) | `11509` | `Vanilla / VanillaSOD` | 6 stored (3 per active dataset) |
| TBC Anniversary | Live | [2.5.6 / 70577](https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/version.txt#L1) | `20506` | `TBC` | 1 |
| Mists Classic | Live | [5.5.4 / 70631](https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/version.txt#L1) | `50504` | `Mists` | 42 |
| Titan Reforged | Live | [3.80.2 / 70522](https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/version.txt#L1) | `38002` | `Wrath` | 24 |
| Forever | Live | [1.60.1 / 70790](https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/version.txt#L1) | `16001` | `Camelot` | 1 |
| Retail PTR | Test | [12.1.7 / 70740](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/version.txt#L1) | `120107` | `Standard / .ptr` | 0 |

Forever launched on November 4 at 23:00 UTC, November 5 at 07:00 in Taiwan. It is now a live track. [Blizzard launch schedule](https://worldofwarcraft.blizzard.com/en-us/news/24315820/world-of-warcraft-forever-goes-live-globally-4-november).

Retail PTR is a test channel of Retail. Its Standard and .ptr generated outputs both have zero matches. The two Era datasets are mutually exclusive at runtime. The six stored calls comprise three in each dataset. Titan uses the Wrath data route at interface 38002. Retired international Wrath and Cata clients are excluded from the current-track table.

Retail, PTR and Forever advance to newer Gethe builds than the November 2 audit. The four Classic branch revisions are unchanged. Retail, PTR and Forever deprecated Lua files and their TOCs are byte-identical to their previous pinned snapshots, so the refreshed PTR adds no further deprecated definitions beyond the three already identified.

## Evidence and table notation

[Gethe/wow-ui-source](https://github.com/Gethe/wow-ui-source) is the primary source. Historical definitions, exact line origins, adjacent versions, and applicable TOC loaders establish the dates. Warcraft Wiki is used only as a clearly labelled fallback for native-name history that cannot be recovered from exported Lua. Gethe evidence takes precedence when the sources differ.

- **D**: first source-confirmed deprecation on that product lineage. A first product import is an observed bound, not proof that Blizzard introduced deprecation on that date.
- **R**: removal of the exported compatibility definition when a shim existed. Native-name removal supplied only by Wiki is labelled **Wiki**. A shim deletion does not by itself prove the native global is absent.
- **retained**: the compatibility definition is still present and applicable to the pinned client, subject to its CVar/load conditions. No removal version has been reached in those sources.
- **UI caller**: a selected Blizzard route still refers to the name. This is source evidence only; a stale caller cannot prove a native export survives.
- **— / ?**: no distinct event or native availability was established, respectively. These do not mean never deprecated, guaranteed support, or removal.
- **ATT**: an ATT-owned helper/fallback, with no Blizzard deprecation/removal version.

The seven tracks below are the six existing live flavours and Retail PTR. Historical Wrath/Cata patch numbers appear only where the current Mists progression lineage inherited an API change. Forever inherited several deprecated definitions in its first published snapshot on September 16, 2026; that snapshot has no version.txt, so no patch number is invented.

## Complete wrapper inventory

All **68 public members** declared in `src/WoW API Wrappers.lua` are included below. ATT member names are not necessarily Blizzard API names. The preferred candidate and each Blizzard fallback are audited separately in the lifecycle tables; an ATT helper has no Blizzard deprecation version. `AssignAPIWrapper`, its metatable, and local helper functions are ATT implementation details.

| ATT member | Preferred API or implementation | Fallback or alternative | Lifecycle group |
| --- | --- | --- | --- |
| `issecretvalue` | issecretvalue | ATT function returning false | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SendGameData` | `C_BattleNet.SendGameData` | BNSendGameData | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SendChatMessage` | `C_ChatInfo.SendChatMessage` | SendChatMessage | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SendAddonMessage` | `C_ChatInfo.SendAddonMessage` | SendAddonMessage | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetCoinTextureString` | `C_CurrencyInfo.GetCoinTextureString` | GetCoinTextureString | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetCurrencyInfo` | `C_CurrencyInfo.GetCurrencyInfo` | GetCurrencyInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetCurrencyLink` | `C_CurrencyInfo.GetCurrencyLink` | GetCurrencyLink | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionName` | `C_Reputation.GetFactionDataByID`.name | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionLore` | `C_Reputation.GetFactionDataByID`.description | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionBonusReputation` | `C_Reputation.GetFactionDataByID`.hasBonusRepGain | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionCurrentReputation` | `C_Reputation.GetFactionDataByID`.currentStanding | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionReputationCeiling` | `C_Reputation.GetFactionDataByID` threshold fields | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFactionReaction` | `C_Reputation.GetFactionDataByID`.reaction | `GetFactionInfoByID` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetFriendshipReputation` | `C_GossipInfo.GetFriendshipReputation` | ATT empty function | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemCount` | `C_Item.GetItemCount` | GetItemCount | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemClassInfo` | `C_Item.GetItemClassInfo` | GetItemClassInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemSubClassInfo` | `C_Item.GetItemSubClassInfo` | GetItemSubClassInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemIcon` | `C_Item.GetItemIconByID` | GetItemIcon | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemInfoInstant` | `C_Item.GetItemInfoInstant` | `GetItemInfoInstant` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemID` | `C_Item.GetItemIDForItemInfo` | `GetItemInfoInstant` | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemInfo` | `C_Item.GetItemInfo` | GetItemInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemSpell` | `C_Item.GetItemSpell` | GetItemSpell | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetDetailedItemLevelInfo` | `C_Item.GetDetailedItemLevelInfo` | GetDetailedItemLevelInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemSpecInfo` | `C_Item.GetItemSpecInfo` | GetItemSpecInfo | [Currency / reputation / items](#currency-reputation-and-items) |
| `IsArtifactRelicItem` | `C_ItemSocketInfo.IsArtifactRelicItem` | IsArtifactRelicItem | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetItemLinkByGUID` | `C_Item.GetItemLinkByGUID` | ATT identity function | [Currency / reputation / items](#currency-reputation-and-items) |
| `GetMerchantNumItems` | `C_MerchantFrame.GetNumItems` | GetMerchantNumItems | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetMerchantItemLink` | `C_MerchantFrame.GetItemLink` | GetMerchantItemLink | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetLootMethod` | `C_PartyInfo.GetLootMethod` | GetLootMethod | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SetLootMethod` | `C_PartyInfo.SetLootMethod` | SetLootMethod | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `ConvertToRaid` | `C_PartyInfo.ConvertToRaid` | ConvertToRaid | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `InviteUnit` | `C_PartyInfo.InviteUnit` | InviteUnit | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `LeaveParty` | `C_PartyInfo.LeaveParty` | LeaveParty | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `IsQuestFlaggedCompletedOnAccount` | `C_QuestLog.IsQuestFlaggedCompletedOnAccount` | ATT account quest cache | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetQuestRewardCurrencies` | `C_QuestLog.GetQuestRewardCurrencies` | ATT empty function | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetTradeSkillTexture` | `C_TradeSkillUI.GetTradeSkillTexture` | GetTradeSkillTexture | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetTradeSkillDisplayName` | `C_TradeSkillUI.GetTradeSkillDisplayName` | ATT empty function | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetProfessionInfoByRecipeID` | `C_TradeSkillUI.GetProfessionInfoByRecipeID` | `C_TradeSkillUI.GetTradeSkillLineForRecipe` with ATT result adaptation | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `IsTradeSkillLinked` | `C_TradeSkillUI.IsTradeSkillLinked` | IsTradeSkillLinked | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpecialization` | `C_SpecializationInfo.GetSpecialization` | GetSpecialization or GetActiveTalentGroup | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpecializationInfo` | `C_SpecializationInfo.GetSpecializationInfo` | GetSpecializationInfo | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellLink` | `C_Spell.GetSpellLink` | GetSpellLink | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellIcon` | `C_Spell.GetSpellTexture` | GetSpellTexture | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellCooldown` | `C_Spell.GetSpellCooldown` with ATT start-time adaptation | GetSpellCooldown | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellName` | `C_Spell.GetSpellName` | GetSpellInfo | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellRank` | GetSpellRank | ATT empty function | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `IsSpellKnown` | `C_SpellBook.IsSpellKnown` | IsSpellKnown | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `IsSpellKnownOrOverridesKnown` | `C_SpellBook.IsSpellInSpellBook` | IsSpellKnownOrOverridesKnown | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetNumSpellTabs` | `C_SpellBook.GetNumSpellBookSkillLines` | GetNumSpellTabs | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetSpellTabInfo` | `C_SpellBook.GetSpellBookSkillLineInfo` | GetSpellTabInfo | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetPlayerAuraBySpellID` | `C_UnitAuras.GetPlayerAuraBySpellID` | GetPlayerAuraBySpellID | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetAddOnMetadata` | `C_AddOns.GetAddOnMetadata` | GetAddOnMetadata | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `InsertChatLink` | ChatFrameUtil.InsertLink | ChatEdit_InsertLink | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `WrapDisplayTimePlayed` | ATT installer around ChatFrameUtil.DisplayTimePlayed | ATT installer around ChatFrame_DisplayTimePlayed | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetMerchantItemInfo` | `C_MerchantFrame.GetItemInfo` | GetMerchantItemInfo with ATT tuple adaptation | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SecondsToTime` | SecondsFormatterMixin | SecondsToTime | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `NormalizeHousingCatalogEntryInfo` | ATT normalization of housing result fields | ATT helper | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetHousingCatalogEntryInfo` | `C_HousingCatalog.GetCatalogEntryInfo` with ATT normalization | No older API selected | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `CreateHousingCatalogSearcher` | `C_HousingCatalog.CreateCatalogSearcher` | No older API selected | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `GetSpellInfo` | `C_Spell.GetSpellInfo` plus `C_Spell.GetSpellSubtext` and `C_SpellBook.GetSpellBookItemInfo` | Native GetSpellInfo for legacy input forms | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `IsPlayerSpell` | `C_SpellBook.IsSpellKnown` with Player bank | IsPlayerSpell | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `GetBuffDataByIndex` | `C_UnitAuras.GetBuffDataByIndex` | UnitBuff with ATT tuple adaptation | [Quest / profession / spell](#quests-professions-specialization-spells-and-auras) |
| `CombatLogGetCurrentEventInfo` | `C_CombatLog.GetCurrentEventInfo` on Classic | CombatLogGetCurrentEventInfo on Classic | [Combat log](#combat-log-payload-access) |
| `OpenOptionsCategory` | ATT forwarder to Settings.OpenToCategory | No older API selected | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `RegisterOptionsCategory` | ATT adapter around Settings.RegisterCanvasLayoutCategory, Settings.RegisterCanvasLayoutSubcategory and Settings.RegisterAddOnCategory | No older API selected | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `CreateDropdown` | ATT adapter around DropdownButton and WowStyle1DropdownTemplate | UIDropDownMenu_SetWidth and UIDropDownMenuTemplate | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SetDropdownText` | DropdownSelectionTextMixin.OverrideText and DropdownButton methods | UIDropDownMenu_SetText | [Communication / UI](#communication-merchant-party-and-ui-functions) |
| `SetupDropdownMenu` | DropdownButtonMixin.SetupMenu and menu description methods | UIDropDownMenu_Initialize, UIDropDownMenu_CreateInfo and UIDropDownMenu_AddButton | [Communication / UI](#communication-merchant-party-and-ui-functions) |

The inventory describes selection order, not equivalent return contracts or guaranteed runtime registration. `IsArtifactRelicItem` is registered only for interface values at least `70000`; housing getters/searchers require at least `110207`. Those numeric guards exclude all four Classic tracks and Forever, even where a native declaration is bundled. Combat-log access is explicitly disabled on Retail/PTR/Forever. `SendGameData` and `GetSpecializationInfo` can retain their initial `false` value if no candidate is available.

## Lifecycle by client

Tables below record the underlying Blizzard name rather than assigning Blizzard version numbers to ATT helper names. The preferred native names have their separate current-source matrix after the lifecycle tables.

### Communication, merchant, party and UI functions

| API or ATT-only selection | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `BNSendGameData` | D 12.0.0 (65459); retained [1][e1] [2][e2] | D 1.15.9 (68808); retained [1][e3] [2][e4] | D 2.5.6 (68502); retained [1][e5] [2][e6] | D 5.5.4 (67849); retained [1][e7] [2][e8] | D 3.80.2 (68943); retained [1][e9] [2][e10] | D first export 2026-09-16; retained [1][e11] [2][e12] | D 12.0.0 (65459); retained [1][e1] [2][e13] |
| `SendChatMessage` | D 11.2.0 (62417); retained [1][e14] [2][e15] | D 1.15.8 (63829); retained [1][e16] [2][e17] | D 2.5.5 (65340); retained [1][e18] [2][e19] | D 5.5.1 (63311); retained [1][e20] [2][e21] | D 3.80.0 (64393); retained [1][e22] [2][e23] | D first export 2026-09-16; retained [1][e24] [2][e25] | D 11.2.0 (62417); retained [1][e14] [2][e26] |
| `SendAddonMessage` | Namespace move 8.0.1 (Wiki); D/R grace — [1][e27] [Wiki][e28] [3][e29] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | Namespace move 8.0.1 (Wiki); D/R grace — [1][e27] [Wiki][e28] [3][e29] |
| `GetMerchantNumItems` | ?; D/R — [1][e30] [2][e31] | ?; D/R — [1][e32] [2][e33] | ?; D/R — [1][e34] [2][e35] | ?; D/R — [1][e36] [2][e37] | ?; D/R — [1][e38] [2][e39] | ?; D/R — [1][e40] [2][e41] | ?; D/R — [1][e42] [2][e43] |
| `GetMerchantItemLink` | ?; D/R — [1][e44] [2][e45] | ?; D/R — [1][e46] [2][e47] | ?; D/R — [1][e48] [2][e49] | ?; D/R — [1][e50] [2][e51] | ?; D/R — [1][e52] [2][e53] | ?; D/R — [1][e54] [2][e55] | ?; D/R — [1][e56] [2][e57] |
| `GetMerchantItemInfo` | D 11.0.5; R 12.0.0 [1][e58] [2][e59] | ?; D/R — [1][e60] [2][e61] | ?; D/R — [1][e62] [2][e63] | ?; D/R — [1][e64] [2][e65] | ?; D/R — [1][e66] [2][e67] | ?; D/R — | D 11.0.5; R 12.0.0 [1][e58] [2][e59] |
| `GetLootMethod` | D —; R 11.2.0 (Wiki) [1][e68] [Wiki][e69] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | D —; R 11.2.0 (Wiki) [1][e68] [Wiki][e69] |
| `SetLootMethod` | D —; R 11.2.0 (Wiki) [1][e70] [Wiki][e69] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | D —; R 11.2.0 (Wiki) [1][e70] [Wiki][e69] |
| `ConvertToRaid` | D 8.2.5; R 9.0.1 (36230) [1][e71] [2][e72] | UI caller; D/R — [1][e73] | UI caller; D/R — [1][e74] | UI caller; D/R — [1][e75] | UI caller; D/R — [1][e76] | ?; D/R — | D 8.2.5; R 9.0.1 (36230) [1][e71] [2][e72] |
| `InviteUnit` | D 8.2.5; R 9.0.1 (36230) [1][e77] [2][e72] | D 1.15.3(55515); R 1.15.9(68808) [1][e78] [2][e79] | ?; D/R — | D 4.4.0(54737); R 5.5.4(67849) [1][e80] [2][e81] | D 3.80.0(64393); R 3.80.1(66860) [1][e82] [2][e83] | ?; D/R — | D 8.2.5; R 9.0.1 (36230) [1][e77] [2][e72] |
| `LeaveParty` | D 8.2.5; R 9.0.1 (36230) [1][e84] [2][e72] | UI caller; D/R — [1][e85] | UI caller; D/R — [1][e86] | UI caller; D/R — [1][e87] | UI caller; D/R — [1][e88] | ?; D/R — [1][e89] | D 8.2.5; R 9.0.1 (36230) [1][e84] [2][e72] [3][e90] |
| `GetAddOnMetadata` | D 10.1.0; R 11.0.2 [1][e91] [2][e92] | D 1.14.4 (51001); R 1.15.9 (68808) [1][e93] [2][e79] | ?; D/R — | D 3.4.2 (50063); R 5.5.4 (67849) [1][e94] [2][e81] | D 3.80.0 (64393); R 3.80.1 (66860) [1][e95] [2][e83] | ?; D/R — | D 10.1.0; R 11.0.2 [1][e91] [2][e92] |
| `ChatEdit_InsertLink` | D 11.2.7 (64632); retained [1][e96] [2][e97] [3][e98] | D 1.15.9 (68808); retained [1][e99] [2][e100] | D 2.5.5 (65340); retained [1][e101] [2][e102] | D 5.5.4 (67849); retained [1][e103] [2][e104] | D 3.80.1 (66860); retained [1][e105] [2][e106] | D first export 2026-09-16; retained [1][e107] [2][e108] | D 11.2.7 (64632); retained [1][e96] [2][e97] [3][e109] |
| `ChatFrame_DisplayTimePlayed` | D 11.2.7 (64632); retained [1][e96] [2][e97] [3][e110] | D 1.15.9 (68808); retained [1][e99] [2][e111] | D 2.5.5 (65340); retained [1][e101] [2][e112] | D 5.5.4 (67849); retained [1][e103] [2][e113] | D 3.80.1 (66860); retained [1][e105] [2][e114] | D first export 2026-09-16; retained [1][e107] [2][e115] | D 11.2.7 (64632); retained [1][e96] [2][e97] [3][e116] |
| `SecondsToTime` | D 10.0.0 (46293); retained [1][e117] [2][e118] | D 1.14.4 (51001); retained [1][e119] [2][e120] | D 2.5.5 (65340); retained [1][e121] [2][e122] | D 3.4.1 (47612); retained [1][e123] [2][e124] | D 3.80.0 (64393); retained [1][e125] [2][e126] | D first export 2026-09-16; retained [1][e127] [2][e128] | D 10.0.0 (46293); retained [1][e117] [2][e129] |
| `UIDropDownMenu_SetWidth` | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e132] | D 1.15.4 (56738); retained [1][e133] [2][e134] | D 2.5.5 (65340); retained [1][e135] [2][e136] | D 4.4.1 (57294); retained [1][e137] [2][e138] | D 3.80.0 (64393); retained [1][e139] [2][e140] | D first export 2026-09-16; retained [1][e141] [2][e142] | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e143] |
| `UIDropDownMenu_SetText` | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e144] | D 1.15.4 (56738); retained [1][e133] [2][e145] | D 2.5.5 (65340); retained [1][e135] [2][e146] | D 4.4.1 (57294); retained [1][e137] [2][e147] | D 3.80.0 (64393); retained [1][e139] [2][e148] | D first export 2026-09-16; retained [1][e141] [2][e149] | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e150] |
| `UIDropDownMenu_CreateInfo` | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e151] | D 1.15.4 (56738); retained [1][e133] [2][e152] | D 2.5.5 (65340); retained [1][e135] [2][e153] | D 4.4.1 (57294); retained [1][e137] [2][e154] | D 3.80.0 (64393); retained [1][e139] [2][e155] | D first export 2026-09-16; retained [1][e141] [2][e156] | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e157] |
| `UIDropDownMenu_AddButton` | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e158] | D 1.15.4 (56738); retained [1][e133] [2][e159] | D 2.5.5 (65340); retained [1][e135] [2][e160] | D 4.4.1 (57294); retained [1][e137] [2][e161] | D 3.80.0 (64393); retained [1][e139] [2][e162] | D first export 2026-09-16; retained [1][e141] [2][e163] | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e164] |
| `UIDropDownMenu_Initialize` | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e165] | D 1.15.4 (56738); retained [1][e133] [2][e166] | D 2.5.5 (65340); retained [1][e135] [2][e167] | D 4.4.1 (57294); retained [1][e137] [2][e168] | D 3.80.0 (64393); retained [1][e139] [2][e169] | D first export 2026-09-16; retained [1][e141] [2][e170] | D 11.0.0 framework; retained [1][e130] [2][e131] [3][e171] |
| `InterfaceOptions_AddCategory` (migrated history) | D 10.0.0 (46293); R 11.0.0 (55793) [1][e172] [2][e173] | D 1.14.4; R 1.15.4 [1][e174] [2][e175] [3][e176] | Absent at first export; no local D/R [1][e177] | D 3.4.2; R 4.4.1 [1][e178] [2][e179] [3][e180] | Absent at first export; no local D/R [1][e181] | Absent at first export; no local D/R [1][e182] | D 10.0.0 (46293); R 11.0.0 (55793) [1][e172] [2][e173] |
| `InterfaceOptionsFrame_OpenToCategory` (migrated history) | D 10.0.0 (46293); R 11.0.0 (55793) [1][e183] [2][e173] | D 1.14.4; R 1.15.4 [1][e174] [2][e184] [3][e176] | Absent at first export; no local D/R [1][e177] | D 3.4.2; R 4.4.1 [1][e178] [2][e185] [3][e180] | Absent at first export; no local D/R [1][e181] | Absent at first export; no local D/R [1][e182] | D 10.0.0 (46293); R 11.0.0 (55793) [1][e183] [2][e173] |

The five `UIDropDownMenu` functions share the framework deprecation and remain defined in all seven sources. The Blizzard migration guide explicitly retains the older framework; its introduction on each product is dated from that track rather than assigned the Retail patch number. `SecondsToTime` remains a deprecated Lua utility, while ATT uses `SecondsFormatterMixin` for its remaining-time label.

`C_MerchantFrame.GetNumItems` and `C_MerchantFrame.GetItemLink` are unconfirmed candidate identifiers on every pinned track. Their corresponding globals still have Blizzard UI callers, and no deprecation was established. They must not be marked deprecated merely because ATT lists a namespaced candidate first.

The Retail `GetLootMethod`/`SetLootMethod` namespace declarations first appear in 11.2.0; Wiki supplies removal of their old native names, with no separately established Lua grace period. `SendAddonMessage` moved to the current `C_ChatInfo` namespace in 8.0.1. A later same-name `C_ChatInfo.SendAddonMessage` return-value bridge is a contract change, not deprecation of the current API name.

Both historical InterfaceOptions functions are preserved as migration history, although the current ATT wrappers call `Settings` directly. Their Era transition is D 1.14.4 / R 1.15.4, and their Mists progression transition is D Wrath 3.4.2 / R Cata 4.4.1. Immediate parent bodies and empty files after deletion distinguish real removal from a source-path move. TBC Anniversary, Titan and Forever already have empty stubs at their first published snapshots; a product-specific earlier removal version is not asserted.

### Current global and UI implementations

These selected implementations have no deprecation/removal event identified in the audited sources. `P` is a generated global declaration; `L` is a Blizzard Lua definition, and `U` is a selected Blizzard UI caller. Each cell links its source. Ordinary methods used by ATT helpers are included so their status is not confused with the legacy framework.

| Current global or UI function | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `ChatFrameUtil.DisplayTimePlayed` | [L][e186] | [L][e187] | [L][e188] | [L][e189] | [L][e190] | [L][e191] | [L][e192] |
| `ChatFrameUtil.InsertLink` | [L][e193] | [L][e194] | [L][e195] | [L][e196] | [L][e197] | [L][e198] | [L][e199] |
| `CreateFrame` | [U][e200] | [U][e201] | [U][e202] | [U][e203] | [U][e204] | [U][e205] | [U][e206] |
| `CreateFromMixins` | [P][e207] | [P][e208] | [P][e209] | [P][e210] | [P][e211] | [P][e212] | [P][e213] |
| `DropdownButtonMixin.GenerateMenu` | [L][e214] | [L][e215] | [L][e216] | [L][e217] | [L][e218] | [L][e219] | [L][e220] |
| `DropdownButtonMixin.IsMenuOpen` | [L][e221] | [L][e222] | [L][e223] | [L][e224] | [L][e225] | [L][e226] | [L][e227] |
| `DropdownButtonMixin.SetupMenu` | [L][e228] | [L][e229] | [L][e230] | [L][e231] | [L][e232] | [L][e233] | [L][e234] |
| `DropdownSelectionTextMixin.OverrideText` | [L][e235] | [L][e236] | [L][e237] | [L][e238] | [L][e239] | [L][e240] | [L][e241] |
| `MenuUtil.CreateRadio` | [L][e242] | [L][e243] | [L][e244] | [L][e245] | [L][e246] | [L][e247] | [L][e248] |
| `SecondsFormatterMixin.Format` | [L][e249] | [L][e250] | [L][e251] | [L][e252] | [L][e253] | [L][e254] | [L][e255] |
| `SecondsFormatterMixin.Init` | [L][e256] | [L][e257] | [L][e258] | [L][e259] | [L][e260] | [L][e261] | [L][e262] |
| `Settings.OpenToCategory` | [L][e263] | [L][e264] | [L][e265] | [L][e266] | [L][e267] | [L][e268] | [L][e269] |
| `Settings.RegisterAddOnCategory` | [L][e270] | [L][e271] | [L][e272] | [L][e273] | [L][e274] | [L][e275] | [L][e276] |
| `Settings.RegisterCanvasLayoutCategory` | [L][e277] | [L][e278] | [L][e279] | [L][e280] | [L][e281] | [L][e282] | [L][e283] |
| `Settings.RegisterCanvasLayoutSubcategory` | [L][e284] | [L][e285] | [L][e286] | [L][e287] | [L][e288] | [L][e289] | [L][e290] |
| `issecretvalue` | [P][e291] | [P][e292] | [P][e293] | [P][e294] | [P][e295] | [P][e296] | [P][e297] |

`NormalizeHousingCatalogEntryInfo` is entirely ATT-owned. Housing constructor/getter names remain current; their 12.0.5 bridge changed result fields and searcher methods. Their numeric ATT guards and data normalization are distinct from native API deprecation.


### Currency, reputation and items

| API or ATT-only selection | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `GetCoinTextureString` | D 10.2.6; R 12.1.5 [1][e298] [2][e299] | D 1.15.2; retained [1][e300] [2][e301] | D 2.5.5; retained [1][e302] [2][e303] | D 4.4.0; retained [1][e304] [2][e305] | D 3.80.0; retained [1][e306] [2][e307] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e298] [2][e299] [3][e308] |
| `GetCurrencyInfo` | D —; R 9.0.1 (Wiki fallback) [1][e309] [Wiki][e310] | D 1.15.4; R 1.15.9 [1][e311] [2][e312] [3][e79] | Legacy ?; D/R — [1][e313] | D 4.4.1; R 5.5.4 [1][e314] [2][e315] [3][e81] | D 3.80.0; R 3.80.1 [1][e316] [2][e317] [3][e83] | Legacy ?; D/R — | D —; R 9.0.1 (Wiki fallback) [1][e309] [Wiki][e310] |
| `GetCurrencyLink` | D —; R 9.0.1 (Wiki fallback) [1][e318] [Wiki][e319] | UI caller; D/R — [1][e320] | UI caller; D/R — [1][e321] | UI caller; D/R — [1][e322] | UI caller; D/R — [1][e323] | Legacy ?; D/R — | D —; R 9.0.1 (Wiki fallback) [1][e318] [Wiki][e319] |
| `GetFactionInfoByID` | D —; R 11.0.0 (Wiki fallback) [1][e324] [Wiki][e325] | UI/native inventory (Wiki); D/R — [Wiki][e326] | UI/native inventory (Wiki); D/R — [Wiki][e326] | UI caller; D/R — [1][e327] | Legacy ?; D/R — | Legacy ?; D/R — | D —; R 11.0.0 (Wiki fallback) [1][e324] [Wiki][e325] |
| `C_GossipInfo.GetFriendshipReputation` | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback |
| `GetItemCount` | D 10.2.6; R 12.1.5 [1][e328] [2][e299] | D 1.15.2; retained [1][e329] [2][e330] | D 2.5.5; retained [1][e331] [2][e332] | D 4.4.0; retained [1][e333] [2][e334] | D 3.80.0; retained [1][e335] [2][e336] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e328] [2][e299] [3][e308] |
| `GetItemClassInfo` | D 10.2.6; R 12.1.5 [1][e337] [2][e299] | D 1.15.2; retained [1][e338] [2][e339] | D 2.5.5; retained [1][e340] [2][e341] | D 4.4.0; retained [1][e342] [2][e343] | D 3.80.0; retained [1][e344] [2][e345] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e337] [2][e299] [3][e308] |
| `GetItemSubClassInfo` | D 10.2.6; R 12.1.5 [1][e346] [2][e299] | D 1.15.2; retained [1][e347] [2][e348] | D 2.5.5; retained [1][e349] [2][e350] | D 4.4.0; retained [1][e351] [2][e352] | D 3.80.0; retained [1][e353] [2][e354] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e346] [2][e299] [3][e308] |
| `GetItemIcon` | D 10.2.6; R 12.1.5 [1][e355] [2][e299] | D 1.15.2; retained [1][e356] [2][e357] | D 2.5.5; retained [1][e358] [2][e359] | D 4.4.0; retained [1][e360] [2][e361] | D 3.80.0; retained [1][e362] [2][e363] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e355] [2][e299] [3][e308] |
| `GetItemInfoInstant` | D 10.2.6; R 12.1.5 [1][e364] [2][e299] | D 1.15.2; retained [1][e365] [2][e366] | D 2.5.5; retained [1][e367] [2][e368] | D 4.4.0; retained [1][e369] [2][e370] | D 3.80.0; retained [1][e371] [2][e372] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e364] [2][e299] [3][e308] |
| `GetItemInfo` | D 10.2.6; R 12.1.5 [1][e373] [2][e299] | D 1.15.2; retained [1][e374] [2][e375] | D 2.5.5; retained [1][e376] [2][e377] | D 4.4.0; retained [1][e378] [2][e379] | D 3.80.0; retained [1][e380] [2][e381] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e373] [2][e299] [3][e308] |
| `GetItemSpell` | D 10.2.6; R 12.1.5 [1][e382] [2][e299] | D 1.15.2; retained [1][e383] [2][e384] | D 2.5.5; retained [1][e385] [2][e386] | D 4.4.0; retained [1][e387] [2][e388] | D 3.80.0; retained [1][e389] [2][e390] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e382] [2][e299] [3][e308] |
| `GetDetailedItemLevelInfo` | D 10.2.6; R 12.1.5 [1][e391] [2][e299] | D 1.15.2; retained [1][e392] [2][e393] | D 2.5.5; retained [1][e394] [2][e395] | D 4.4.0; retained [1][e396] [2][e397] | D 3.80.0; retained [1][e398] [2][e399] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e391] [2][e299] [3][e308] |
| `GetItemSpecInfo` | D 10.2.6; R 12.1.5 [1][e400] [2][e299] | D 1.15.2; retained [1][e401] [2][e402] | D 2.5.5; retained [1][e403] [2][e404] | D 4.4.0; retained [1][e405] [2][e406] | D 3.80.0; retained [1][e407] [2][e408] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e400] [2][e299] [3][e308] |
| `IsArtifactRelicItem` | D 11.2.5; R 12.0.0 [1][e409] [2][e58] | ATT gated; D/R — | ATT gated; D/R — | ATT gated; D/R — | ATT gated; D/R — | ATT gated; legacy ? | D 11.2.5; R 12.0.0 [1][e409] [2][e58] |
| `C_Item.GetItemLinkByGUID` | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback | No old API; ATT fallback |
| `GetItemInfoInstant` (ATT `GetItemID`) | D 10.2.6; R 12.1.5 [1][e364] [2][e299] | D 1.15.2; retained [1][e365] | D 2.5.5; retained [1][e367] | D 4.4.0; retained [1][e369] | D 3.80.0; retained [1][e371] | Legacy ?; D/R — | D 10.2.6 (Retail product history); R 12.1.5 (Retail product history) [1][e364] [2][e299] [3][e308] |

The nine distinct item globals cover ten ATT members: `GetItemID` uses `GetItemInfoInstant` as its fallback. Their coin/item shims first appear in Retail 10.2.6, Era 1.15.2, TBC Anniversary 2.5.5, the Mists progression lineage at Cata 4.4.0, and Titan 3.80.0. The current Classic shims require `loadDeprecationFallbacks`. Cata is historical lineage evidence, not an additional current track. Retail removes the dedicated item/coin compatibility files in 12.1.5; the PTR source catches up in 12.1.7. Forever has no independently dated removal event in its published history.

`GetCurrencyInfo` has separately dated Classic shim removal: Era D 1.15.4 / R 1.15.9, the Mists lineage D 4.4.1 / R 5.5.4, and Titan D 3.80.0 / R 3.80.1. Their remaining MerchantFrame callers are source expectations, and do not establish native export availability after those shims were deleted. TBC Anniversary has no independently confirmed D/R event. A Retail 9.0.1 namespace move is supplemented by the Wiki for the old native-name removal; no separate Retail grace period was established.

The six faction members in the inventory share `GetFactionInfoByID`. Retail replacement is source-confirmed in 11.0.0; Wiki supplies the old native-name removal version because Gethe does not export a distinct grace-period shim. Era/TBC retention in this row uses the Wiki Classic inventory; the Gethe QuestChoice caller is loaded only on Mists, so it cannot establish Era/TBC/Titan support.

`GetFriendshipReputation` selects only `C_GossipInfo.GetFriendshipReputation` and an ATT empty function. `GetItemLinkByGUID` uses an ATT identity fallback on clients without its preferred API; neither fallback has a Blizzard lifecycle. `IsArtifactRelicItem` is separately guarded at interface 70000 despite a current Forever namespace declaration.


### Quests, professions, specialization, spells and auras

| API or ATT-only selection | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `GetTradeSkillTexture` | Unverified identifier; D/R — | Unverified identifier; D/R — | Unverified identifier; D/R — | Unverified identifier; D/R — | Unverified identifier; D/R — | Unverified identifier; D/R — | Unverified identifier; D/R — |
| `IsTradeSkillLinked` | D —; R 7.0.3 (Wiki) [Wiki][e410] | ?; D/R — | ?; D/R — | UI caller; D/R — [1][e411] | UI caller; D/R — [1][e412] | ?; D/R — | D —; R 7.0.3 (Wiki) [Wiki][e410] |
| `GetSpecialization` | D 11.2.0 (62417); retained [1][e413] [2][e414] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | D 11.2.0 (62417); retained [1][e413] [2][e415] |
| `GetActiveTalentGroup` | D —; R 5.0.4 (Wiki) [Wiki][e416] | D 1.15.8 (63829); retained [1][e417] [2][e418] | D 2.5.5 (65340); retained [1][e419] [2][e420] | D 5.5.0 (61767); retained [1][e421] [2][e422] | D 3.80.0 (64393); retained [1][e423] [2][e424] | ?; D/R — | D —; R 5.0.4 (Wiki) [Wiki][e416] |
| `GetSpecializationInfo` | D 11.2.0 (62417); retained [1][e413] [2][e425] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | D 11.2.0 (62417); retained [1][e413] [2][e426] |
| `GetSpellLink` | D —; R 11.0.0 (Wiki) [Wiki][e427] [2][e428] | UI caller; D/R — [1][e429] | UI caller; D/R — [1][e430] | UI caller; D/R — [1][e431] | UI caller; D/R — [1][e432] | ?; D/R — | D —; R 11.0.0 (Wiki) [Wiki][e427] [2][e433] |
| `GetSpellTexture` | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e434] | UI caller; D/R — [1][e435] | UI caller; D/R — [1][e436] | ?; D/R — | UI caller; D/R — [1][e437] | ?; D/R — | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e434] |
| `GetSpellCooldown` | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e438] | ?; D/R — | ?; D/R — | UI caller; D/R — [1][e439] | ?; D/R — | ?; D/R — | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e438] |
| `GetSpellInfo` | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e440] | UI caller; D/R — [1][e441] | UI caller; D/R — [1][e442] | UI caller; D/R — [1][e443] | UI caller; D/R — [1][e444] | ?; D/R — | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e440] |
| `GetSpellRank` | D —; R 11.0.0 (Wiki) [Wiki][e445] [2][e446] | UI caller; D/R — [1][e447] | UI caller; D/R — [1][e448] | UI caller; D/R — [1][e449] | UI caller; D/R — [1][e450] | ?; D/R — | D —; R 11.0.0 (Wiki) [Wiki][e445] [2][e451] |
| `IsSpellKnown` | D 11.2.0 (62417); retained [1][e413] [2][e452] [3][e453] | D 1.15.8 (63829); retained [1][e417] [2][e454] [3][e455] | D 2.5.5 (65340); retained [1][e419] [2][e456] [3][e457] | D 5.5.1 (63311); retained [1][e458] [2][e459] [3][e460] | D 3.80.0 (64393); retained [1][e423] [2][e461] [3][e462] | D first export 2026-09-16; retained [1][e463] [2][e464] [3][e465] | D 11.2.0 (62417); retained [1][e413] [2][e466] [3][e467] |
| `IsSpellKnownOrOverridesKnown` | D 11.2.0 (62417); retained [1][e413] [2][e468] [3][e453] | D 1.15.8 (63829); retained [1][e417] [2][e469] [3][e455] | D 2.5.5 (65340); retained [1][e419] [2][e470] [3][e457] | D 5.5.1 (63311); retained [1][e458] [2][e471] [3][e460] | D 3.80.0 (64393); retained [1][e423] [2][e472] [3][e462] | D first export 2026-09-16; retained [1][e463] [2][e473] [3][e465] | D 11.2.0 (62417); retained [1][e413] [2][e474] [3][e467] |
| `GetNumSpellTabs` | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e475] | UI caller; D/R — [1][e476] | UI caller; D/R — [1][e477] | UI caller; D/R — [1][e478] | UI caller; D/R — [1][e479] | ?; D/R — | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e475] |
| `GetSpellTabInfo` | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e480] | UI caller; D/R — [1][e481] | UI caller; D/R — [1][e482] | UI caller; D/R — [1][e483] | UI caller; D/R — [1][e484] | ?; D/R — | D 11.0.0 (55793); R 11.0.2 (56110) [1][e91] [2][e173] [3][e480] |
| `GetPlayerAuraBySpellID` | D —; R 10.0.0 (Wiki) [Wiki][e485] | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | ?; D/R — | D —; R 10.0.0 (Wiki) [Wiki][e485] |
| `IsPlayerSpell` | D 11.2.0 (62417); retained [1][e413] [2][e486] [3][e453] | D 1.15.8 (63829); retained [1][e417] [2][e487] [3][e455] | D 2.5.5 (65340); retained [1][e419] [2][e488] [3][e457] | D 5.5.1 (63311); retained [1][e458] [2][e489] [3][e460] | D 3.80.0 (64393); retained [1][e423] [2][e490] [3][e462] | D first export 2026-09-16; retained [1][e463] [2][e491] [3][e465] | D 11.2.0 (62417); retained [1][e413] [2][e492] [3][e467] |
| `UnitBuff` | D 10.2.5 (52902); R 11.0.2 (56110) [1][e91] [2][e493] [3][e494] | D 1.15.9 (68808); retained [1][e79] [2][e495] [3][e496] | D 2.5.5 (65340); retained [1][e419] [2][e497] [3][e498] | D 5.5.4 (67849); retained [1][e81] [2][e499] [3][e500] | D 3.80.1 (66860); retained [1][e83] [2][e501] [3][e502] | ?; D/R — | D 10.2.5 (52902); R 11.0.2 (56110) [1][e91] [2][e493] [3][e494] |

The Retail 11.0.0 spell transition is not one uniform lifecycle. `GetSpellInfo`, `GetSpellTexture`, `GetSpellCooldown`, `GetNumSpellTabs` and `GetSpellTabInfo` have explicit 11.0.0 Lua shims removed in 11.0.2. `GetSpellLink` and `GetSpellRank` are listed in the 11.0.0 transition guide, but no corresponding shim was established; Wiki supplies their native-name removal version. A wrapper comment is not used as lifecycle evidence.

Classic specialization bridges select `GetActiveTalentGroup`, not the Standard-only `GetSpecialization`/`GetSpecializationInfo` file. The Classic aura shim is game-type gated. Its rollover filename mentions 1.15.8, but blame and predecessor files date its first confirmed Era export to 1.15.9; the other track dates are separately recorded above. Files excluded by the client loader do not prove a usable fallback.

`GetTradeSkillTexture` without a namespace remains an unverified legacy identifier on all seven tracks; no reliable deprecation/removal date was found. Its preferred namespaced API has both Classic declarations and modern Blizzard UI callers. `C_TradeSkillUI.GetTradeSkillLineForRecipe` is still referenced by Blizzard UI despite lacking a generated declaration; it must not be classified as removed merely because the wrapper prefers `GetProfessionInfoByRecipeID`.

The quest-cache fallback, the empty profession/currency-reward fallbacks, and spell/aura empty-return functions are ATT code, with no Blizzard deprecation/removal version. Preferred API availability is listed in the native declaration matrix. The rank-era compatibility requirement remains separately documented below.

| Undocumented namespaced candidate | Tracks with selected Blizzard UI callers |
| --- | --- |
| `C_TradeSkillUI.GetTradeSkillTexture` | Retail [1][e503]; Forever [1][e504]; PTR [1][e505] |
| `C_TradeSkillUI.GetTradeSkillLineForRecipe` | Retail [1][e506]; Era [1][e507]; TBC [1][e508]; Mists [1][e509]; Titan [1][e510]; Forever [1][e511]; PTR [1][e512] |
| `C_TradeSkillUI.IsTradeSkillLinked` | Retail [1][e513]; Forever [1][e514]; PTR [1][e515] |


### Combat-log payload access

| API or ATT-only selection | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `CombatLogGetCurrentEventInfo` | D 12.0.0 (65459); public payload removed 12.0.0 [1][e516] | D 1.15.9 (68808); conditional fallback retained [1][e517] | D 2.5.6 (68502); conditional fallback retained [1][e518] | D 5.5.4 (67849); conditional fallback retained [1][e519] | D 3.80.2 (68943); conditional fallback retained [1][e520] | D first export 2026-09-16; public payload unavailable [1][e521] | D 12.0.0 (65459); public payload removed 12.0.0 [1][e516] |

Classic declares public `C_CombatLog.GetCurrentEventInfo` with `HasRestrictions`. Retail/PTR/Forever expose `C_CombatLogSecure` in a SecureOnly environment; that function is not an addon replacement. Their deprecated bridge explicitly describes the lack of a public replacement, and ATT keeps the wrapper disabled on those clients. [Classic restrictions][e522] [PTR secure environment][e523] [Bridge explanation][e524].

## Current native API declarations

This table covers all **54 distinct namespaced API candidates actually referenced by the wrapper**, including support functions used inside adapters. `P` means a public generated declaration at the pinned build; `P*` also carries `HasRestrictions`. `?` means no public generated declaration was found, and does **not** mean removal. Blizzard Lua caller evidence for undocumented functions is recorded in the lifecycle notes. None of these preferred names is classified as deprecated merely because its old global was deprecated. A public declaration is not evidence that a gameplay system exists or that ATT registers the wrapper on that client.

| Namespaced API | Retail | Era | TBC Anniversary | Mists | Titan Reforged | Forever | Retail PTR |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `C_AddOns.GetAddOnMetadata` | [P][n1-retail] | [P][n1-era] | [P][n1-tbc] | [P][n1-mists] | [P][n1-titan] | [P][n1-forever] | [P][n1-ptr] |
| `C_BattleNet.SendGameData` | [P][n2-retail] | [P][n2-era] | [P][n2-tbc] | [P][n2-mists] | [P][n2-titan] | [P][n2-forever] | [P][n2-ptr] |
| `C_ChatInfo.SendAddonMessage` | [P][n3-retail] | [P][n3-era] | [P][n3-tbc] | [P][n3-mists] | [P][n3-titan] | [P][n3-forever] | [P][n3-ptr] |
| `C_ChatInfo.SendChatMessage` | [P*][n4-retail] | [P*][n4-era] | [P*][n4-tbc] | [P*][n4-mists] | [P*][n4-titan] | [P*][n4-forever] | [P*][n4-ptr] |
| `C_CombatLog.GetCurrentEventInfo` | ? | [P*][n5-era] | [P*][n5-tbc] | [P*][n5-mists] | [P*][n5-titan] | ? | ? |
| `C_CurrencyInfo.GetCoinTextureString` | [P][n6-retail] | [P][n6-era] | [P][n6-tbc] | [P][n6-mists] | [P][n6-titan] | [P][n6-forever] | [P][n6-ptr] |
| `C_CurrencyInfo.GetCurrencyInfo` | [P][n7-retail] | [P][n7-era] | [P][n7-tbc] | [P][n7-mists] | [P][n7-titan] | [P][n7-forever] | [P][n7-ptr] |
| `C_CurrencyInfo.GetCurrencyLink` | [P][n8-retail] | ? | ? | ? | ? | [P][n8-forever] | [P][n8-ptr] |
| `C_GossipInfo.GetFriendshipReputation` | [P][n9-retail] | [P][n9-era] | [P][n9-tbc] | [P][n9-mists] | [P][n9-titan] | [P][n9-forever] | [P][n9-ptr] |
| `C_HousingCatalog.CreateCatalogSearcher` | [P][n10-retail] | [P][n10-era] | [P][n10-tbc] | [P][n10-mists] | [P][n10-titan] | [P][n10-forever] | [P][n10-ptr] |
| `C_HousingCatalog.GetCatalogEntryInfo` | [P][n11-retail] | [P][n11-era] | [P][n11-tbc] | [P][n11-mists] | [P][n11-titan] | [P][n11-forever] | [P][n11-ptr] |
| `C_Item.GetDetailedItemLevelInfo` | [P][n12-retail] | [P][n12-era] | [P][n12-tbc] | [P][n12-mists] | [P][n12-titan] | [P][n12-forever] | [P][n12-ptr] |
| `C_Item.GetItemClassInfo` | [P][n13-retail] | [P][n13-era] | [P][n13-tbc] | [P][n13-mists] | [P][n13-titan] | [P][n13-forever] | [P][n13-ptr] |
| `C_Item.GetItemCount` | [P][n14-retail] | [P][n14-era] | [P][n14-tbc] | [P][n14-mists] | [P][n14-titan] | [P][n14-forever] | [P][n14-ptr] |
| `C_Item.GetItemIDForItemInfo` | [P][n15-retail] | [P][n15-era] | [P][n15-tbc] | [P][n15-mists] | [P][n15-titan] | [P][n15-forever] | [P][n15-ptr] |
| `C_Item.GetItemIconByID` | [P][n16-retail] | [P][n16-era] | [P][n16-tbc] | [P][n16-mists] | [P][n16-titan] | [P][n16-forever] | [P][n16-ptr] |
| `C_Item.GetItemInfo` | [P][n17-retail] | [P][n17-era] | [P][n17-tbc] | [P][n17-mists] | [P][n17-titan] | [P][n17-forever] | [P][n17-ptr] |
| `C_Item.GetItemInfoInstant` | [P][n18-retail] | [P][n18-era] | [P][n18-tbc] | [P][n18-mists] | [P][n18-titan] | [P][n18-forever] | [P][n18-ptr] |
| `C_Item.GetItemLinkByGUID` | [P][n19-retail] | ? | ? | ? | ? | [P][n19-forever] | [P][n19-ptr] |
| `C_Item.GetItemSpecInfo` | [P][n20-retail] | [P][n20-era] | [P][n20-tbc] | [P][n20-mists] | [P][n20-titan] | [P][n20-forever] | [P][n20-ptr] |
| `C_Item.GetItemSpell` | [P][n21-retail] | [P][n21-era] | [P][n21-tbc] | [P][n21-mists] | [P][n21-titan] | [P][n21-forever] | [P][n21-ptr] |
| `C_Item.GetItemSubClassInfo` | [P][n22-retail] | [P][n22-era] | [P][n22-tbc] | [P][n22-mists] | [P][n22-titan] | [P][n22-forever] | [P][n22-ptr] |
| `C_ItemSocketInfo.IsArtifactRelicItem` | [P][n23-retail] | ? | ? | ? | ? | [P][n23-forever] | [P][n23-ptr] |
| `C_MerchantFrame.GetItemInfo` | [P][n24-retail] | ? | ? | ? | ? | [P][n24-forever] | [P][n24-ptr] |
| `C_MerchantFrame.GetItemLink` | ? | ? | ? | ? | ? | ? | ? |
| `C_MerchantFrame.GetNumItems` | ? | ? | ? | ? | ? | ? | ? |
| `C_PartyInfo.ConvertToRaid` | [P*][n27-retail] | ? | ? | ? | ? | [P*][n27-forever] | [P*][n27-ptr] |
| `C_PartyInfo.GetLootMethod` | [P][n28-retail] | [P][n28-era] | [P][n28-tbc] | [P][n28-mists] | [P][n28-titan] | [P][n28-forever] | [P][n28-ptr] |
| `C_PartyInfo.InviteUnit` | [P][n29-retail] | [P][n29-era] | [P][n29-tbc] | [P][n29-mists] | [P][n29-titan] | [P][n29-forever] | [P][n29-ptr] |
| `C_PartyInfo.LeaveParty` | [P][n30-retail] | ? | ? | ? | ? | [P][n30-forever] | [P][n30-ptr] |
| `C_PartyInfo.SetLootMethod` | [P*][n31-retail] | [P*][n31-era] | [P*][n31-tbc] | [P*][n31-mists] | [P*][n31-titan] | [P*][n31-forever] | [P*][n31-ptr] |
| `C_QuestLog.GetQuestRewardCurrencies` | [P][n32-retail] | ? | ? | ? | ? | [P][n32-forever] | [P][n32-ptr] |
| `C_QuestLog.IsQuestFlaggedCompletedOnAccount` | [P][n33-retail] | ? | ? | ? | ? | [P][n33-forever] | [P][n33-ptr] |
| `C_Reputation.GetFactionDataByID` | [P][n34-retail] | ? | ? | ? | ? | [P][n34-forever] | [P][n34-ptr] |
| `C_SpecializationInfo.GetSpecialization` | [P][n35-retail] | [P][n35-era] | [P][n35-tbc] | [P][n35-mists] | [P][n35-titan] | [P][n35-forever] | [P][n35-ptr] |
| `C_SpecializationInfo.GetSpecializationInfo` | [P][n36-retail] | [P][n36-era] | [P][n36-tbc] | [P][n36-mists] | [P][n36-titan] | [P][n36-forever] | [P][n36-ptr] |
| `C_Spell.GetSpellCooldown` | [P][n37-retail] | [P][n37-era] | [P][n37-tbc] | [P][n37-mists] | [P][n37-titan] | [P][n37-forever] | [P][n37-ptr] |
| `C_Spell.GetSpellInfo` | [P][n38-retail] | [P][n38-era] | [P][n38-tbc] | [P][n38-mists] | [P][n38-titan] | [P][n38-forever] | [P][n38-ptr] |
| `C_Spell.GetSpellLink` | [P][n39-retail] | [P][n39-era] | [P][n39-tbc] | [P][n39-mists] | [P][n39-titan] | [P][n39-forever] | [P][n39-ptr] |
| `C_Spell.GetSpellName` | [P][n40-retail] | [P][n40-era] | [P][n40-tbc] | [P][n40-mists] | [P][n40-titan] | [P][n40-forever] | [P][n40-ptr] |
| `C_Spell.GetSpellSubtext` | [P][n41-retail] | [P][n41-era] | [P][n41-tbc] | [P][n41-mists] | [P][n41-titan] | [P][n41-forever] | [P][n41-ptr] |
| `C_Spell.GetSpellTexture` | [P][n42-retail] | [P][n42-era] | [P][n42-tbc] | [P][n42-mists] | [P][n42-titan] | [P][n42-forever] | [P][n42-ptr] |
| `C_SpellBook.GetNumSpellBookSkillLines` | [P][n43-retail] | ? | ? | ? | ? | [P][n43-forever] | [P][n43-ptr] |
| `C_SpellBook.GetSpellBookItemInfo` | [P][n44-retail] | ? | ? | ? | ? | [P][n44-forever] | [P][n44-ptr] |
| `C_SpellBook.GetSpellBookSkillLineInfo` | [P][n45-retail] | ? | ? | ? | ? | [P][n45-forever] | [P][n45-ptr] |
| `C_SpellBook.IsSpellInSpellBook` | [P][n46-retail] | [P][n46-era] | [P][n46-tbc] | [P][n46-mists] | [P][n46-titan] | [P][n46-forever] | [P][n46-ptr] |
| `C_SpellBook.IsSpellKnown` | [P][n47-retail] | [P][n47-era] | [P][n47-tbc] | [P][n47-mists] | [P][n47-titan] | [P][n47-forever] | [P][n47-ptr] |
| `C_TradeSkillUI.GetProfessionInfoByRecipeID` | [P][n48-retail] | ? | ? | ? | ? | [P][n48-forever] | [P][n48-ptr] |
| `C_TradeSkillUI.GetTradeSkillDisplayName` | [P][n49-retail] | [P][n49-era] | [P][n49-tbc] | [P][n49-mists] | [P][n49-titan] | [P][n49-forever] | [P][n49-ptr] |
| `C_TradeSkillUI.GetTradeSkillLineForRecipe` | ? | ? | ? | ? | ? | ? | ? |
| `C_TradeSkillUI.GetTradeSkillTexture` | ? | [P][n51-era] | [P][n51-tbc] | [P][n51-mists] | [P][n51-titan] | ? | ? |
| `C_TradeSkillUI.IsTradeSkillLinked` | ? | ? | ? | ? | ? | ? | ? |
| `C_UnitAuras.GetBuffDataByIndex` | [P][n53-retail] | [P][n53-era] | [P][n53-tbc] | [P][n53-mists] | [P][n53-titan] | [P][n53-forever] | [P][n53-ptr] |
| `C_UnitAuras.GetPlayerAuraBySpellID` | [P][n54-retail] | [P][n54-era] | [P][n54-tbc] | [P][n54-mists] | [P][n54-titan] | [P][n54-forever] | [P][n54-ptr] |

Non-namespaced UI methods (`ChatFrameUtil`, `Settings`, `SecondsFormatterMixin`, and the dropdown framework) are covered in the lifecycle notes below. Public `C_CombatLog.GetCurrentEventInfo` has a Classic-only declaration; the Retail/PTR/Forever secure counterpart is not an addon replacement.

## Historical version checks

Dates above come from the first Live source export containing the deprecation or removal. Dates identify the export commit. The earlier builds establish that the previous state still existed.

| API | Previous Live state | First changed Live state |
| --- | --- | --- |
| `ChatEdit_InsertLink` / `ChatFrame_DisplayTimePlayed` | [11.2.5 (64502), ordinary implementations](https://github.com/Gethe/wow-ui-source/blob/639a9bbc689c4cded69085bdcd66fa22a7db8335/Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrame.lua#L2132) | [11.2.7 (64632), deprecated aliases](https://github.com/Gethe/wow-ui-source/commit/74fbbd65a807931b7a28ab31e82e94c571368398) |
| `SecondsToTime` | [9.2.7 (45161), function without the deprecation comment](https://github.com/Gethe/wow-ui-source/blob/f43c2b83f700177e6a2a215f5d7d0c0825abd636/Interface/SharedXML/TimeUtil.lua#L227) | [10.0.0 (46293), explicit Deprecated comment](https://github.com/Gethe/wow-ui-source/blob/f0084386950fe3dc31a1d61de33b364e268cf66b/Interface/SharedXML/TimeUtil.lua#L265) |
| Both legacy InterfaceOptions functions | [10.2.7 (55461), compatibility functions present](https://github.com/Gethe/wow-ui-source/blob/6b65c2922baca3db5a28fb39b69c95cef1047bec/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L4) | [11.0.0 (55793), both definitions deleted](https://github.com/Gethe/wow-ui-source/commit/a2be406dbd035af8d82716449610aba97090ffe3) |

BNSendGameData and CombatLogGetCurrentEventInfo were independently confirmed in the [first 12.0.0 Live export](https://github.com/Gethe/wow-ui-source/commit/e97025bc56d48bac9341aae1cc5f4ec07d17ef6e). The preceding 11.2.7 (65299) export has neither name in its deprecated definitions or loaders.

The 10.0.0 and 11.0.0 exports predate version.txt. Their patch and build identifiers come from the corresponding Gethe commit subjects.

The five UIDropDownMenu functions share the 11.0.0 framework deprecation. Their replacement is the DropdownButton/Blizzard_Menu framework. Menu descriptions, frame creation and selection text require an adapter.

## Latest Retail PTR deprecations

| Deprecated API | Replacement | Deprecated in | Removal state | ATT references |
| --- | --- | --- | --- | --- |
| `BNSetBlocked` | `C_BattleNet.SetBlocked` | [Retail 12.1.7 PTR](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L39) and [Forever 1.60.1 live](https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L39) | Conditional fallback retained in the audited sources | 0 |
| `C_TransmogOutfitInfo.GetWeaponOptionsForSlot` | `C_TransmogOutfitInfo.GetOptionsForSlot` | [Retail 12.1.7 PTR](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L9) and [Forever 1.60.1 live](https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L9) | Conditional fallback retained in the audited sources | 0 |
| `C_TransmogOutfitInfo.SetViewedWeaponOptionForSlot` | `C_TransmogOutfitInfo.SetViewedOptionForSlot` | [Retail 12.1.7 PTR](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L10) and [Forever 1.60.1 live](https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedTransmog/Deprecated_Transmog.lua#L10) | Conditional fallback retained in the audited sources | 0 |

These three legacy interfaces remain native in the four Classic exports. Their replacement declarations are unconfirmed there. The Retail 12.1.5 source also retains the old interfaces. [Native Battle.net caller](https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_FriendsFrame/Mainline/FriendsFrame.lua#L1397). The PTR deprecation therefore applies to the pinned PTR and Forever sources.

The two Transmog aliases forward the new option records unchanged. The replacement field is `type`. The aliases do not reconstruct the old `weaponOption` field. [PTR Transmog structures](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/TransmogOutfitInfoDocumentation.lua#L919).

## Remaining generated calls

| API | All stored generated calls | Current client routes | Maintained source status |
| --- | --- | --- | --- |
| `UnitBuff` | 78 | 53 | Callback sources use `WOWAPI.GetBuffDataByIndex` |
| `IsPlayerSpell` | 16 | 16 | Phoenix callback source uses `WOWAPI.IsPlayerSpell` |
| `CombatLogGetCurrentEventInfo` | 5 | 5 | Bloodsail callback sources use the optional combat-log wrapper |
| **Total** | **99** | **74** | **Regenerate the affected outputs from migrated sources** |

The remaining 25 calls are UnitBuff calls in the historical Cata output. Stored generated calls and source migrations are counted separately. No generated database was edited or regenerated in this audit.

## GetSpellInfo and rank-era compatibility

The existing GetSpellInfo wrapper adapts modern results and spellbook indices. Complete rank-aware resolution remains a separate requirement for class spells and profession abilities. Its native delegation does not establish localized rank selection on every client track.

| Input form | Required behaviour |
| --- | --- |
| `GetSpellInfo(spellIDOrName)` | Preserve the legacy multiple-return contract used by ATT |
| `GetSpellInfo(slot, bookType)` | Preserve player and pet spellbook indexing |
| `GetSpellInfo(name, rank)` | Resolve the requested localized rank rather than silently selecting another rank |

The existing ATT name/rank call is evidence of a compatibility requirement. The native second-string behaviour is undocumented in the current GetSpellInfo signature and remains unverified across the client tracks. A future layer should reuse ATT's existing rank indexes and validate class-spell and profession cases. The namespace SpellInfo table has no rank/subtext member. Classic's object API obtains subtext separately through `C_Spell.GetSpellSubtext`, whose text may load asynchronously. [Classic object API](https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_ObjectAPI/Classic/Spell.lua#L39). [Classic spell/subtext contract](https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L341). [GetSpellInfo documentation](https://warcraft.wiki.gg/wiki/API_GetSpellInfo).

The historical `C_SpellBook.GetSpellInfo(spellID)` returned a structured SpellInfo table. It was introduced in 9.1.0 and moved to `C_Spell.GetSpellInfo` in 11.0.0. [Warcraft Wiki history](https://warcraft.wiki.gg/wiki/API_C_SpellBook.GetSpellInfo). [Blizzard transition guide](https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Deprecated/11_0_0_SpellBookAPITransitionGuide.lua).

## Related contracts and exclusions

- Housing catalog functions retain their names. Their historical bridge adapted fields such as quantity, placement totals and entry identifiers. The existing migration normalizes these results through ATT's wrapper. Their public declarations do not prove the housing system exists on each client. [Current housing contract](https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L125).
- C_ChatInfo.RegisterAddonMessagePrefix and C_ChatInfo.SendAddonMessage retain their current names. Their historical bridges adapted return values. The matched ATT callers ignore those returns. C_AreaPoiInfo.GetAreaPOIInfo and C_VignetteInfo.GetVignetteInfo also retain their names. ATT does not read the obsolete widgetSetID/addPaddingAboveWidgets fields on the matched paths. These are excluded from deprecated-function totals.
- The PTR/Wiki notes about GUID server/spawn components and trial/veteran addon-message restrictions require separate behaviour validation. They do not deprecate UnitGUID or the current C_ChatInfo.SendAddonMessage name. Forever already shares the account restriction described by the Wiki. [12.1.7 API notes](https://warcraft.wiki.gg/wiki/Patch_12.1.7/API_changes). [Addon-message contract](https://warcraft.wiki.gg/wiki/API_C_ChatInfo.SendAddonMessage).

## Method and validation

The following Git tree IDs identify the audited runtime and callback contents across the documentation rewrite.

| Source tree | Git object ID |
| --- | --- |
| `src` | `10ef95a6be3c51b01c334dd3114ceec3a59e7bad` |
| `lib` | `5ddc123157f7c43b50287ee12cc53bac52721adf` |
| `.contrib/.db` | `4f256fa2286f78f77acae5d4b60698a29afe9cc5` |
| `db` | `34bfe66d1c14a3f3d0d2e4ea8672fb275cb7be04` |

- Scanned 4,031 tracked Lua files, 25 XML files and the addon TOC in the rebased ATT source trees, including hidden .contrib callback sources and generated database copies.
- Enumerated all 68 public wrapper members, 54 distinct namespaced API candidates, and the non-namespaced framework/support functions. Every public member is mapped to a lifecycle family; current native declarations were checked separately from legacy definitions.
- Compared 431 candidate deprecated global/namespaced names and 37 framework methods across current and historical Gethe exports. Local aliases were resolved before classifying calls. Wrapper implementations, comments, fixtures and completed wrapper calls are excluded from bypass findings.
- Historical 11.0.0, 11.0.5 and 12.1.0 exports retain evidence for APIs whose shims are absent from current source. An old name, missing documentation, a stale Blizzard caller, or a language-server diagnostic alone does not establish deprecation or runtime removal. Historical file moves were distinguished from deletion by checking earlier bodies and loader rules.
- The rebase omitted five migrations already applied to master and retained the audit document. All 16 remaining commits have valid signatures. The 11 Lua 5.1 regression suites passed after rebase.
- Public declarations and call sites were inspected statically. Runtime API availability, Parser regeneration, native client export tests and in-game behaviour remain separate validation work.

## AI Assistance

gpt-6.1-sol assisted with implementation, per-flavour API/source history, static call analysis, rebase verification and documentation.

[e1]: https://github.com/Gethe/wow-ui-source/blob/e97025bc56d48bac9341aae1cc5f4ec07d17ef6e/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e2]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e3]: https://github.com/Gethe/wow-ui-source/blob/6edfb32fe366d0759aee9749e53e549cf98da9fc/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e4]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e5]: https://github.com/Gethe/wow-ui-source/blob/fa643dda0b6266402dceea40e90a5f7c381ad26e/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e6]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e7]: https://github.com/Gethe/wow-ui-source/blob/6d4fe9dc25ece7871f9bdd1a747e65933d7c9e2d/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e8]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e9]: https://github.com/Gethe/wow-ui-source/blob/fc86c0e9dcdcf6be3938fb3e2547581f509572ea/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e10]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e11]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e12]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e13]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua#L8
[e14]: https://github.com/Gethe/wow-ui-source/blob/9ad649eb770673ad5a49367396e568f394480cf0/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e15]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e16]: https://github.com/Gethe/wow-ui-source/blob/5de3826697acde236ccda485bc7deccee5a2f8ab/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e17]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e18]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e19]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e20]: https://github.com/Gethe/wow-ui-source/blob/44f8dfdaeb3d12a2c145d645055b8aac7e5fdea9/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e21]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e22]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e23]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e24]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e25]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e26]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua#L8
[e27]: https://github.com/Gethe/wow-ui-source/blob/aaaeb7f6ee6acd55932fe5d50fe86aba20697de0/AddOns/Blizzard_APIDocumentation/ChatInfoDocumentation.lua#L114
[e28]: https://warcraft.wiki.gg/wiki/Patch_8.0.1/API_changes
[e29]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_10_2_7.lua#L95
[e30]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L246
[e31]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L271
[e32]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L163
[e33]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L188
[e34]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L166
[e35]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L191
[e36]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L166
[e37]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L191
[e38]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L166
[e39]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L191
[e40]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L253
[e41]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L278
[e42]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L253
[e43]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L278
[e44]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L251
[e45]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L300
[e46]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L168
[e47]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L216
[e48]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L171
[e49]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L219
[e50]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L171
[e51]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L219
[e52]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L171
[e53]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L219
[e54]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L258
[e55]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L307
[e56]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L258
[e57]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L307
[e58]: https://github.com/Gethe/wow-ui-source/commit/e97025bc56d48bac9341aae1cc5f4ec07d17ef6e
[e59]: https://github.com/Gethe/wow-ui-source/blob/fa3531505e3e2406f9e3d5a0fbd9644bd5c85227/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_5.lua#L11
[e60]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L200
[e61]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L586
[e62]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L203
[e63]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L597
[e64]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L203
[e65]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L597
[e66]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L203
[e67]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L597
[e68]: https://github.com/Gethe/wow-ui-source/blob/9ad649eb770673ad5a49367396e568f394480cf0/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L287
[e69]: https://warcraft.wiki.gg/wiki/Patch_11.2.0/API_changes
[e70]: https://github.com/Gethe/wow-ui-source/blob/9ad649eb770673ad5a49367396e568f394480cf0/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L562
[e71]: https://github.com/Gethe/wow-ui-source/blob/f75b527f976856af9b61c23768d2222dc850f1bb/AddOns/Blizzard_Deprecated/Deprecated_8_2_5.lua#L365
[e72]: https://github.com/Gethe/wow-ui-source/commit/1cf759abedf90eaf4adaa1be3629855626c2d998
[e73]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L491
[e74]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L491
[e75]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L491
[e76]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L491
[e77]: https://github.com/Gethe/wow-ui-source/blob/f75b527f976856af9b61c23768d2222dc850f1bb/AddOns/Blizzard_Deprecated/Deprecated_8_2_5.lua#L369
[e78]: https://github.com/Gethe/wow-ui-source/blob/3cbcb5e9ee42e5f9bd8b63ce8d59b1ad54d3a20b/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_0.lua#L31
[e79]: https://github.com/Gethe/wow-ui-source/commit/6edfb32fe366d0759aee9749e53e549cf98da9fc
[e80]: https://github.com/Gethe/wow-ui-source/blob/ada51ee22712792d13cff1362e542ca1f759edf1/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_0.lua#L31
[e81]: https://github.com/Gethe/wow-ui-source/commit/6d4fe9dc25ece7871f9bdd1a747e65933d7c9e2d
[e82]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_0.lua#L31
[e83]: https://github.com/Gethe/wow-ui-source/commit/afd96906dc4a82480117614afddf738f96957ace
[e84]: https://github.com/Gethe/wow-ui-source/blob/f75b527f976856af9b61c23768d2222dc850f1bb/AddOns/Blizzard_Deprecated/Deprecated_8_2_5.lua#L364
[e85]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L499
[e86]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L499
[e87]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L499
[e88]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UnitPopup/Classic/UnitPopupButtons_Shared.lua#L499
[e89]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_CompactRaidFrames/Mainline/Blizzard_CompactRaidFrameManager.lua#L433
[e90]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_CompactRaidFrames/Mainline/Blizzard_CompactRaidFrameManager.lua#L433
[e91]: https://github.com/Gethe/wow-ui-source/commit/afa2ff42802ff4cdb2fe8e4f9c533930c6061d4c
[e92]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_10_1_0.lua#L11
[e93]: https://github.com/Gethe/wow-ui-source/blob/8681bc05e92f528c52c6a0b4ad1556688154ce71/Interface/AddOns/Blizzard_Deprecated/Deprecated_3_4_2.lua#L10
[e94]: https://github.com/Gethe/wow-ui-source/blob/3006c90fedfc06ce3fbc0c246424202eda50bbb0/Interface/AddOns/Blizzard_Deprecated/Deprecated_3_4_2.lua#L10
[e95]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_Deprecated/Deprecated_3_4_2.lua#L10
[e96]: https://github.com/Gethe/wow-ui-source/blob/74fbbd65a807931b7a28ab31e82e94c571368398/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e97]: https://github.com/Gethe/wow-ui-source/blob/74fbbd65a807931b7a28ab31e82e94c571368398/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e98]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e99]: https://github.com/Gethe/wow-ui-source/blob/6edfb32fe366d0759aee9749e53e549cf98da9fc/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e100]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e101]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e102]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e103]: https://github.com/Gethe/wow-ui-source/blob/6d4fe9dc25ece7871f9bdd1a747e65933d7c9e2d/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e104]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e105]: https://github.com/Gethe/wow-ui-source/blob/afd96906dc4a82480117614afddf738f96957ace/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e106]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e107]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e108]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e109]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L43
[e110]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e111]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e112]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e113]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e114]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e115]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e116]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua#L66
[e117]: https://github.com/Gethe/wow-ui-source/blob/f0084386950fe3dc31a1d61de33b364e268cf66b/Interface/SharedXML/TimeUtil.lua#L265
[e118]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L364
[e119]: https://github.com/Gethe/wow-ui-source/blob/8681bc05e92f528c52c6a0b4ad1556688154ce71/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L308
[e120]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L309
[e121]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L308
[e122]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L309
[e123]: https://github.com/Gethe/wow-ui-source/blob/acf102a7d64ccdb97f13961b64aabefa29c69501/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L308
[e124]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L309
[e125]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L308
[e126]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L309
[e127]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L363
[e128]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L364
[e129]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L364
[e130]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L5
[e131]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e132]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1375
[e133]: https://github.com/Gethe/wow-ui-source/blob/a433729bcb12b683d7853c7a7bd3eaff3d23d642/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e134]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1262
[e135]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e136]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1262
[e137]: https://github.com/Gethe/wow-ui-source/blob/8701c9bff1da9826e0d81f5aab7c9e37a96bf227/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e138]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1262
[e139]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e140]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1262
[e141]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_Menu/11_0_0_MenuImplementationGuide.lua#L4
[e142]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1378
[e143]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1378
[e144]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1401
[e145]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1289
[e146]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1289
[e147]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1289
[e148]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L1289
[e149]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1404
[e150]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L1404
[e151]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L338
[e152]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L297
[e153]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L297
[e154]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L297
[e155]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L297
[e156]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L338
[e157]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L338
[e158]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L414
[e159]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L373
[e160]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L373
[e161]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L373
[e162]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L373
[e163]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L414
[e164]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L414
[e165]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L77
[e166]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L76
[e167]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L76
[e168]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L76
[e169]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/Classic/UIDropDownMenu.lua#L76
[e170]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L77
[e171]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/Mainline/UIDropDownMenu.lua#L77
[e172]: https://github.com/Gethe/wow-ui-source/blob/f0084386950fe3dc31a1d61de33b364e268cf66b/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L4
[e173]: https://github.com/Gethe/wow-ui-source/commit/a2be406dbd035af8d82716449610aba97090ffe3
[e174]: https://github.com/Gethe/wow-ui-source/blob/a433729bcb12b683d7853c7a7bd3eaff3d23d642/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L1
[e175]: https://github.com/Gethe/wow-ui-source/blob/8681bc05e92f528c52c6a0b4ad1556688154ce71/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L4
[e176]: https://github.com/Gethe/wow-ui-source/blob/5967c0764949a1b8ff677a2d2bd9cfc839a9eede/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L4
[e177]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L1
[e178]: https://github.com/Gethe/wow-ui-source/blob/8701c9bff1da9826e0d81f5aab7c9e37a96bf227/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L1
[e179]: https://github.com/Gethe/wow-ui-source/blob/3006c90fedfc06ce3fbc0c246424202eda50bbb0/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L4
[e180]: https://github.com/Gethe/wow-ui-source/blob/f59d9967cbabe80af5b289b88b651c2182e9480c/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L4
[e181]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L1
[e182]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Deprecated.lua#L1
[e183]: https://github.com/Gethe/wow-ui-source/blob/f0084386950fe3dc31a1d61de33b364e268cf66b/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L24
[e184]: https://github.com/Gethe/wow-ui-source/blob/8681bc05e92f528c52c6a0b4ad1556688154ce71/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L24
[e185]: https://github.com/Gethe/wow-ui-source/blob/3006c90fedfc06ce3fbc0c246424202eda50bbb0/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L24
[e186]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L251
[e187]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L184
[e188]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L184
[e189]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L184
[e190]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L184
[e191]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L251
[e192]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_ChatFrameBase/Shared/ChatFrameUtil.lua#L251
[e193]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrameUtilOverrides.lua#L14
[e194]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_ChatFrameBase/Classic/ChatFrameUtilOverrides.lua#L1
[e195]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_ChatFrameBase/Classic/ChatFrameUtilOverrides.lua#L1
[e196]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_ChatFrameBase/Classic/ChatFrameUtilOverrides.lua#L1
[e197]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_ChatFrameBase/Classic/ChatFrameUtilOverrides.lua#L1
[e198]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrameUtilOverrides.lua#L14
[e199]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_ChatFrameBase/Mainline/ChatFrameUtilOverrides.lua#L14
[e200]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L994
[e201]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L791
[e202]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L855
[e203]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L855
[e204]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L855
[e205]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L1052
[e206]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_UIPanels_Game/Mainline/MerchantFrame.lua#L1052
[e207]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L97
[e208]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L78
[e209]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L78
[e210]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L78
[e211]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L78
[e212]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L97
[e213]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L97
[e214]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e215]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e216]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e217]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e218]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e219]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e220]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L255
[e221]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e222]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e223]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e224]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e225]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e226]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e227]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L275
[e228]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e229]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e230]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e231]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e232]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e233]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e234]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Menu/DropdownButton.lua#L237
[e235]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L751
[e236]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L603
[e237]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L603
[e238]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L603
[e239]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L603
[e240]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L804
[e241]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Menu/MenuTemplates.lua#L804
[e242]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e243]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e244]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e245]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e246]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e247]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e248]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Menu/MenuUtil.lua#L224
[e249]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L212
[e250]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L178
[e251]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L178
[e252]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L178
[e253]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L178
[e254]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L212
[e255]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L212
[e256]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L101
[e257]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L67
[e258]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L67
[e259]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L67
[e260]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L67
[e261]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L101
[e262]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_SharedXML/TimeUtil.lua#L101
[e263]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L143
[e264]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L143
[e265]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L143
[e266]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L143
[e267]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L143
[e268]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L144
[e269]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L144
[e270]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L133
[e271]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L133
[e272]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L133
[e273]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L133
[e274]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L133
[e275]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L134
[e276]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L134
[e277]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L161
[e278]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L161
[e279]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L161
[e280]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L161
[e281]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L161
[e282]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L162
[e283]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L162
[e284]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L165
[e285]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L165
[e286]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L165
[e287]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L165
[e288]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L165
[e289]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L166
[e290]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Settings_Shared/Blizzard_Settings.lua#L166
[e291]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L287
[e292]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L233
[e293]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L233
[e294]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L233
[e295]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L242
[e296]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L287
[e297]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/FrameScriptDocumentation.lua#L287
[e298]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e299]: https://github.com/Gethe/wow-ui-source/commit/7b27d6845ca49ecb713d49f49c22d9f0fb43f3e4
[e300]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e301]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e302]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e303]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e304]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e305]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e306]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e307]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedCurrencyScript/Deprecated_CurrencyScript.lua#L11
[e308]: https://github.com/Gethe/wow-ui-source/commit/b87363e0770c2f15b1e2f154de8ad3b0cf3ea90a
[e309]: https://github.com/Gethe/wow-ui-source/blob/1cf759abedf90eaf4adaa1be3629855626c2d998/AddOns/Blizzard_APIDocumentation/CurrencyInfoDocumentation.lua#L102
[e310]: https://warcraft.wiki.gg/wiki/API_GetCurrencyInfo
[e311]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/MerchantFrame.lua#L803
[e312]: https://github.com/Gethe/wow-ui-source/blob/a433729bcb12b683d7853c7a7bd3eaff3d23d642/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_1.lua#L11
[e313]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L867
[e314]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L867
[e315]: https://github.com/Gethe/wow-ui-source/blob/8701c9bff1da9826e0d81f5aab7c9e37a96bf227/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_1.lua#L11
[e316]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/TBC/MerchantFrame.lua#L867
[e317]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_Deprecated/Deprecated_4_4_1.lua#L11
[e318]: https://github.com/Gethe/wow-ui-source/blob/1cf759abedf90eaf4adaa1be3629855626c2d998/AddOns/Blizzard_APIDocumentation/CurrencyInfoDocumentation.lua#L130
[e319]: https://warcraft.wiki.gg/wiki/API_GetCurrencyLink
[e320]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanelTemplates/Classic/UIPanelTemplates.lua#L204
[e321]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanelTemplates/Classic/UIPanelTemplates.lua#L204
[e322]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanelTemplates/Classic/UIPanelTemplates.lua#L204
[e323]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanelTemplates/Classic/UIPanelTemplates.lua#L204
[e324]: https://github.com/Gethe/wow-ui-source/blob/a2be406dbd035af8d82716449610aba97090ffe3/Interface/AddOns/Blizzard_APIDocumentationGenerated/ReputationInfoDocumentation.lua#L45
[e325]: https://warcraft.wiki.gg/wiki/Patch_11.0.0/API_changes
[e326]: https://warcraft.wiki.gg/wiki/World_of_Warcraft_API/Classic
[e327]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_QuestChoice/Blizzard_QuestChoice.lua#L144
[e328]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e329]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e330]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e331]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e332]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e333]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e334]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e335]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e336]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L46
[e337]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e338]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e339]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e340]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e341]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e342]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e343]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e344]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e345]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L30
[e346]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e347]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e348]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e349]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e350]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e351]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e352]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e353]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e354]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L48
[e355]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e356]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e357]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e358]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e359]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e360]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e361]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e362]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e363]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L16
[e364]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e365]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e366]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e367]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e368]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e369]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e370]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e371]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e372]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L10
[e373]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e374]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e375]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e376]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e377]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e378]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e379]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e380]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e381]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L42
[e382]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e383]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e384]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e385]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e386]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e387]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e388]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e389]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e390]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L18
[e391]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e392]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e393]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e394]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e395]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e396]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e397]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e398]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e399]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L43
[e400]: https://github.com/Gethe/wow-ui-source/blob/2ab5d546be8afbb381671c99ce8147ddc9004780/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e401]: https://github.com/Gethe/wow-ui-source/blob/fbee1ffe0d1d9523b2080a4ce3efa96623e47694/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e402]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e403]: https://github.com/Gethe/wow-ui-source/blob/1d85c59fd23cd1543c03dd1a15631466f8ef071a/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e404]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e405]: https://github.com/Gethe/wow-ui-source/blob/1dd6c2eabedc28f0aec08516b7816bb9e1010017/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e406]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e407]: https://github.com/Gethe/wow-ui-source/blob/ff85f79b0b41af33b07303506db95e354a065cdd/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e408]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedItemScript/Deprecated_ItemScript.lua#L44
[e409]: https://github.com/Gethe/wow-ui-source/blob/2d236a6c436878b20405013cd6dfcfcca0dbec1c/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_2_5.lua#L17
[e410]: https://warcraft.wiki.gg/wiki/API_C_TradeSkillUI.IsTradeSkillLinked
[e411]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_TradeSkillUI/Mists/Blizzard_TradeSkillUI.lua#L234
[e412]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_TradeSkillUI/Wrath/Blizzard_TradeSkillUI.lua#L189
[e413]: https://github.com/Gethe/wow-ui-source/commit/9ad649eb770673ad5a49367396e568f394480cf0
[e414]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Standard.lua#L16
[e415]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Standard.lua#L16
[e416]: https://warcraft.wiki.gg/wiki/API_GetActiveTalentGroup
[e417]: https://github.com/Gethe/wow-ui-source/commit/5de3826697acde236ccda485bc7deccee5a2f8ab
[e418]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Vanilla.lua#L21
[e419]: https://github.com/Gethe/wow-ui-source/commit/1d85c59fd23cd1543c03dd1a15631466f8ef071a
[e420]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_TBC.lua#L21
[e421]: https://github.com/Gethe/wow-ui-source/commit/f6321eafdaec9621fb6287ac7f016925fc83fdd7
[e422]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Mists.lua#L30
[e423]: https://github.com/Gethe/wow-ui-source/commit/ff85f79b0b41af33b07303506db95e354a065cdd
[e424]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Wrath.lua#L21
[e425]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Standard.lua#L13
[e426]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpecialization/Deprecated_Specialization_Standard.lua#L13
[e427]: https://warcraft.wiki.gg/wiki/API_GetSpellLink
[e428]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Deprecated/11_0_0_SpellBookAPITransitionGuide.lua#L27
[e429]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/QuestInfo.lua#L1036
[e430]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/TBC/QuestInfo.lua#L1034
[e431]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/Cata/QuestLogFrame.lua#L555
[e432]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/Wrath/QuestInfo.lua#L1066
[e433]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Deprecated/11_0_0_SpellBookAPITransitionGuide.lua#L27
[e434]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L53
[e435]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/SpellBookFrame.lua#L232
[e436]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/SpellBookFrame.lua#L232
[e437]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_UIPanels_Game/Vanilla/SpellBookFrame.lua#L232
[e438]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L39
[e439]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_UIPanels_Game/Cata/SpellBookProfessions.lua#L42
[e440]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L12
[e441]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_ObjectAPI/Classic/Spell.lua#L39
[e442]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_ObjectAPI/Classic/Spell.lua#L39
[e443]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_ObjectAPI/Classic/Spell.lua#L39
[e444]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_ObjectAPI/Classic/Spell.lua#L39
[e445]: https://warcraft.wiki.gg/wiki/API_GetSpellRank
[e446]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_Deprecated/11_0_0_SpellBookAPITransitionGuide.lua#L106
[e447]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L921
[e448]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L921
[e449]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L921
[e450]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L921
[e451]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_Deprecated/11_0_0_SpellBookAPITransitionGuide.lua#L106
[e452]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e453]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e454]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e455]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e456]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e457]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e458]: https://github.com/Gethe/wow-ui-source/commit/44f8dfdaeb3d12a2c145d645055b8aac7e5fdea9
[e459]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e460]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e461]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e462]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e463]: https://github.com/Gethe/wow-ui-source/commit/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24
[e464]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e465]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e466]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L16
[e467]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L4
[e468]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e469]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e470]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e471]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e472]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e473]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e474]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L22
[e475]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L23
[e476]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L5
[e477]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L5
[e478]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L4
[e479]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L5
[e480]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_11_0_0.lua#L25
[e481]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L6
[e482]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L6
[e483]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L5
[e484]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_FrameXMLBase/Classic/IconDataProviderOverrides.lua#L6
[e485]: https://warcraft.wiki.gg/wiki/API_GetPlayerAuraBySpellID
[e486]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e487]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e488]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e489]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e490]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e491]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e492]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua#L11
[e493]: https://github.com/Gethe/wow-ui-source/commit/45cb43fde1273ac34a6238cd5c1a377013067049
[e494]: https://github.com/Gethe/wow-ui-source/blob/742bf9604e0009bebb9a61a4f953d2661f8b387e/Interface/AddOns/Blizzard_Deprecated/Deprecated_10_2_5.lua#L42
[e495]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L18
[e496]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L5
[e497]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L18
[e498]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L5
[e499]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L18
[e500]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L5
[e501]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L18
[e502]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_Deprecated/Deprecated_1_15_8.lua#L5
[e503]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L997
[e504]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L997
[e505]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L997
[e506]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L986
[e507]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L912
[e508]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L912
[e509]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L912
[e510]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_FrameXML/Classic/AlertFrameSystems.lua#L912
[e511]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L986
[e512]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_FrameXML/Mainline/AlertFrameSystems.lua#L986
[e513]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_ProfessionsTemplates/Blizzard_Professions.lua#L371
[e514]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_ProfessionsTemplates/Blizzard_Professions.lua#L378
[e515]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_ProfessionsTemplates/Blizzard_Professions.lua#L378
[e516]: https://github.com/Gethe/wow-ui-source/blob/e97025bc56d48bac9341aae1cc5f4ec07d17ef6e/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e517]: https://github.com/Gethe/wow-ui-source/blob/6edfb32fe366d0759aee9749e53e549cf98da9fc/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e518]: https://github.com/Gethe/wow-ui-source/blob/fa643dda0b6266402dceea40e90a5f7c381ad26e/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e519]: https://github.com/Gethe/wow-ui-source/blob/6d4fe9dc25ece7871f9bdd1a747e65933d7c9e2d/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e520]: https://github.com/Gethe/wow-ui-source/blob/fc86c0e9dcdcf6be3938fb3e2547581f509572ea/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e521]: https://github.com/Gethe/wow-ui-source/blob/cf7fa921a8d8e8256a987f0b6f8bc3a09bd2ef24/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L18
[e522]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogDocumentation.lua#L60
[e523]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogSecureDocumentation.lua#L6
[e524]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua#L10
[n1-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L165
[n1-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L154
[n1-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L154
[n1-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L154
[n1-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L154
[n1-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L165
[n1-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/AddOnsDocumentation.lua#L165
[n2-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L255
[n2-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L153
[n2-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L153
[n2-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L162
[n2-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L162
[n2-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L319
[n2-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/BattleNetDocumentation.lua#L303
[n3-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L516
[n3-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L358
[n3-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L358
[n3-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L358
[n3-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L358
[n3-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L516
[n3-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L516
[n4-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L564
[n4-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L403
[n4-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L403
[n4-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L403
[n4-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L403
[n4-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L564
[n4-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ChatInfoDocumentation.lua#L564
[n5-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogDocumentation.lua#L58
[n5-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogDocumentation.lua#L58
[n5-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogDocumentation.lua#L58
[n5-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/CombatLogDocumentation.lua#L58
[n6-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L161
[n6-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L56
[n6-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L56
[n6-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L56
[n6-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L56
[n6-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L161
[n6-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L161
[n7-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L249
[n7-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L87
[n7-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L87
[n7-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L87
[n7-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L87
[n7-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L249
[n7-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L249
[n8-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L281
[n8-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L281
[n8-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/CurrencyInfoDocumentation.lua#L281
[n9-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n9-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/GossipInfoDocumentation.lua#L60
[n10-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n10-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L11
[n11-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L125
[n11-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L119
[n11-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L119
[n11-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L119
[n11-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L119
[n11-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L125
[n11-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/HousingCatalogUIDocumentation.lua#L125
[n12-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L332
[n12-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L197
[n12-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L197
[n12-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L197
[n12-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L197
[n12-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L354
[n12-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L354
[n13-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L382
[n13-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L229
[n13-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L229
[n13-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L229
[n13-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L229
[n13-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L404
[n13-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L404
[n14-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L429
[n14-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L243
[n14-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L243
[n14-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L243
[n14-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L243
[n14-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L451
[n14-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L451
[n15-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L559
[n15-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L351
[n15-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L351
[n15-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L351
[n15-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L351
[n15-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L581
[n15-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L581
[n16-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L589
[n16-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L379
[n16-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L379
[n16-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L379
[n16-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L379
[n16-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L611
[n16-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L611
[n17-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L604
[n17-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L393
[n17-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L393
[n17-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L393
[n17-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L393
[n17-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L626
[n17-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L626
[n18-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L637
[n18-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L425
[n18-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L425
[n18-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L425
[n18-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L425
[n18-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n18-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n19-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L749
[n19-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L771
[n19-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L771
[n20-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L932
[n20-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n20-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n20-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n20-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L659
[n20-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L954
[n20-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L954
[n21-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L948
[n21-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L674
[n21-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L674
[n21-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L674
[n21-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L674
[n21-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L970
[n21-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L970
[n22-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L998
[n22-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L690
[n22-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L690
[n22-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L690
[n22-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L690
[n22-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L1020
[n22-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemDocumentation.lua#L1020
[n23-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemSocketInfoDocumentation.lua#L168
[n23-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemSocketInfoDocumentation.lua#L168
[n23-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ItemSocketInfoDocumentation.lua#L168
[n24-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/MerchantFrameDocumentation.lua#L27
[n24-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/MerchantFrameDocumentation.lua#L27
[n24-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/MerchantFrameDocumentation.lua#L27
[n27-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L134
[n27-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L134
[n27-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L143
[n28-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L287
[n28-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L105
[n28-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L105
[n28-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L105
[n28-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L105
[n28-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L287
[n28-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L296
[n29-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L357
[n29-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L139
[n29-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L139
[n29-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L139
[n29-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L139
[n29-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L357
[n29-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L366
[n30-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L484
[n30-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L484
[n30-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L493
[n31-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L562
[n31-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L253
[n31-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L253
[n31-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L253
[n31-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L253
[n31-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L562
[n31-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/PartyInfoDocumentation.lua#L571
[n32-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L493
[n32-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L493
[n32-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L493
[n33-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L898
[n33-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L931
[n33-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/QuestLogDocumentation.lua#L931
[n34-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ReputationInfoDocumentation.lua#L48
[n34-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/ReputationInfoDocumentation.lua#L48
[n34-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/ReputationInfoDocumentation.lua#L48
[n35-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L213
[n35-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L60
[n35-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L60
[n35-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L60
[n35-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L60
[n35-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L237
[n35-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L237
[n36-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L230
[n36-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L76
[n36-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L76
[n36-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L76
[n36-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L76
[n36-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L254
[n36-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpecializationInfoDocumentation.lua#L254
[n37-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L268
[n37-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L108
[n37-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L108
[n37-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L108
[n37-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L108
[n37-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L309
[n37-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L326
[n38-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L375
[n38-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L190
[n38-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L190
[n38-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L190
[n38-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L190
[n38-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L416
[n38-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L433
[n39-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L408
[n39-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L221
[n39-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L221
[n39-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L221
[n39-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L221
[n39-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L449
[n39-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L466
[n40-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L477
[n40-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L284
[n40-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L284
[n40-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L284
[n40-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L284
[n40-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L518
[n40-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L535
[n41-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L537
[n41-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L341
[n41-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L341
[n41-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L341
[n41-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L341
[n41-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L578
[n41-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L595
[n42-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L554
[n42-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L357
[n42-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L357
[n42-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L357
[n42-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L357
[n42-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L595
[n42-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellDocumentation.lua#L612
[n43-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L117
[n43-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L137
[n43-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L137
[n44-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L270
[n44-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L290
[n44-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L290
[n45-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L466
[n45-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L486
[n45-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L486
[n46-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L666
[n46-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L65
[n46-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L65
[n46-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L65
[n46-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L65
[n46-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L720
[n46-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L720
[n47-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L684
[n47-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L82
[n47-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L82
[n47-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L82
[n47-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L82
[n47-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L738
[n47-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/SpellBookDocumentation.lua#L738
[n48-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L458
[n48-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L473
[n48-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L473
[n49-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L867
[n49-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L25
[n49-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L25
[n49-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L25
[n49-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L25
[n49-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L882
[n49-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L882
[n51-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L39
[n51-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L39
[n51-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L39
[n51-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/TradeSkillUIDocumentation.lua#L39
[n53-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L324
[n53-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L256
[n53-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L256
[n53-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L256
[n53-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L256
[n53-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L324
[n53-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L324
[n54-retail]: https://github.com/Gethe/wow-ui-source/blob/297d7aaaa736f346b3e036f38ee088eaf7f8c07f/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L395
[n54-era]: https://github.com/Gethe/wow-ui-source/blob/4192ac60067fc55566182291bc67c85dd9b6794d/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L302
[n54-tbc]: https://github.com/Gethe/wow-ui-source/blob/68e0a2ec559d9761dfc4e7f864c3944f9d758a49/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L302
[n54-mists]: https://github.com/Gethe/wow-ui-source/blob/e5d9b3a22c3f0f6f41ebac0e454f4969594261cf/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L302
[n54-titan]: https://github.com/Gethe/wow-ui-source/blob/7014c309a25338905c41dc3799a93f9719ebb533/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L302
[n54-forever]: https://github.com/Gethe/wow-ui-source/blob/eac30af597e5aaa43a60f6675ef5fdcea100375f/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L397
[n54-ptr]: https://github.com/Gethe/wow-ui-source/blob/e927c305f67ed6b3b460bc00d0c39055747b9119/Interface/AddOns/Blizzard_APIDocumentationGenerated/UnitAuraDocumentation.lua#L397
