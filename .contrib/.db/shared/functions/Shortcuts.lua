---@diagnostic disable: lowercase-global


-- ============================================================================
-- LuaLS / DocGen type model
-- ============================================================================
-- Parser-side documentation types used by the shortcut functions below.
-- These annotations are documentation-only and do not change runtime data.

---@alias FileID integer # WoW file data ID for an asset.
---@alias CreatureDisplayID integer # Creature display ID for an object model.
---@alias CampsiteID integer # Warband campsite scene ID.
---@alias ATTCategoryID integer # ATT category ID used for names and icons.
---@alias TransmogSetID integer # Transmog gear set ID.
---@alias ProfessionNodeID integer # Profession specialization node ID.
---@alias PVPRankID integer # Classic PvP rank ID.
---@alias ItemClassID integer # Item class ID.
---@alias ItemSubclassID integer # Item subclass ID.
---@alias ExpansionID integer # Expansion identifier.
---@alias ObjectID integer # Interactable world object ID, such as a chest.
---@alias ItemID integer # Base item ID.
---@alias ModID integer # Item modifier ID selecting an item variant.
---@alias ModItemID number # Encoded item identifier for modifier, bonus, or appearance variants.
---@alias SourceID integer # Transmog appearance source ID.
---@alias BonusID integer # Item bonus ID selecting an item variant.
---@alias IllusionID integer # Weapon enchantment illusion source ID.
---@alias ArtifactID integer # Artifact weapon appearance ID.
---@alias AzeriteEssenceID integer # Azerite essence ID.
---@alias DecorID integer # Housing decor entry ID.
---@alias CurrencyID integer # Currency type ID.
---@alias FilterID integer # ATT filter/category ID.
---@alias MountID integer # Mount spell ID used by ATT.
---@alias QuestID integer # Quest ID.
---@alias ObjectiveID integer # Objective index within a quest.
---@alias MissionID integer # Garrison mission ID.
---@alias SpellID integer # Spell ID.
---@alias SkillID integer # Profession or skill line ID.
---@alias RecipeID integer # Crafting recipe spell ID.
---@alias CreatureID integer # Creature entry ID.
---@alias NPCID integer # Interactive creatures are NPCs.
---@alias ATTHeaderID integer # Negative NPC IDs are used as ATT Headers
---@alias FollowerID integer # Garrison follower ID.
---@alias GarrisonBuildingID integer # Garrison building ID.
---@alias GarrisonTalentID integer # Garrison or order hall research talent ID.
---@alias RaceID integer # Character race ID.
---@alias ClassID integer # Character class ID.
---@alias ChrSpecializationID integer # Character specialization ID.
---@alias TitleID integer # Character title ID.
---@alias AchievementID integer # Achievement ID.
---@alias AchievementCategoryID integer # Achievement category ID.
---@alias CriteriaID integer # Achievement criterion ID or legacy criterion index.
---@alias JournalEncounterID integer # Encounter Journal encounter ID.
---@alias DungeonEncounterID integer # Dungeon encounter ID, distinct from Encounter Journal IDs.
---@alias BattlePetSpeciesID integer # Battle pet species ID.
---@alias BattlePetAbilityID integer # Battle pet ability ID.
---@alias BattlePetTypeID integer # Battle pet family/type ID.
---@alias FactionID integer # Reputation faction ID.
---@alias UiMapID integer # UI map ID used for zones and coordinates.
---@alias MapID integer # Internal world or instance map ID.
---@alias JournalInstanceID integer # Encounter Journal instance ID.
---@alias FlightPathID integer # Flight path taxi node ID.
---@alias ExplorationID integer # Exploration area ID.
---@alias DifficultyID integer # Instance difficulty ID, including parser multi-difficulty IDs.
---@alias EventID integer # Event or holiday identifier used by ATT schedules and filters.
---@alias ATTUnobtainableStatus integer|string|string[] # Unobtainable code or helper-supplied timeline event(s).
---@alias ATTPhaseID integer # Release phase ID (see Phases.lua), e.g. `PHASE_ONE` or `TBC_PHASE_TWO`.
---@alias ATTIgnoredValue string # Parser sentinel value assigned via `IGNORED_VALUE`.
---@alias Region "US"|"EU"|"KR"|"TW"|"CN" # WoW portal region code.
---@alias ATTTimelineEvent string # Patch change string using created, added, removed, or deleted plus a patch version.
---@alias ATTPatchVersion string # Patch version string, such as `5.0.4`.
---@alias ATTLuaExpression string # Lua source expression embedded in generated output.
---@alias ATTSymFieldValue any # Field-dependent value matched or assigned by a symbolic command.
---@alias ATTSymSubroutineName # Registered symbolic subroutine names.
---| "pvp_gear_base" # Selects a PvP season header and optional set header; accepts an ignored legacy tier.
---| "pvp_gear_faction_base" # Selects PvP season, faction, and set headers; accepts an ignored legacy tier.
---| "pvp_set_ensemble" # Extracts PvP set appearances by season, set, and class; accepts an ignored legacy tier.
---| "pvp_set_faction_ensemble" # Extracts PvP set appearances by season, faction, set, and class; accepts an ignored legacy tier.
---| "pvp_weapons_ensemble" # Extracts PvP weapons by season and set; accepts an ignored legacy tier.
---| "pvp_weapons_faction_ensemble" # Extracts PvP weapons by season, faction, and set; accepts an ignored legacy tier.
---| "common_recipes_vendor" # Selects a vendor by NPC ID and excludes vendor-specific recipes.
---| "common_vendor" # Selects a vendor by NPC ID and returns its children.
---| "tw_instance" # Selects a Timewalking instance by ID and adds the Infinite Timereaver common drop.
---| "instance_tier" # Selects instance tier items by instance ID and optional difficulty and class IDs.
---| "legion_relinquished_base" # Collects the base set of Legion relinquished item candidates.
---| "legion_relinquished" # Filters Legion relinquished candidates by an inventory-type list and optional filter IDs.
---| "legion_relinquished_relic" # Filters Legion relinquished candidates by optional relic types.
---| "korthian_armaments" # Selects Korthian armaments for an inventory type.
---| "common_wod_dungeon_drop" # Selects common Warlords dungeon drops for a difficulty and header ID.
---| "common_wod_dungeon_drop_tw" # Selects Timewalking Warlords dungeon drops for a difficulty and header ID.
---| "bfa_azerite_armor_chest_dungeons" # Selects Azerite armor from dungeon rewards.
---| "bfa_azerite_armor_chest_warfront" # Selects Azerite armor from Warfront rewards.
---| "bfa_azerite_armor_chest_zonedrops" # Selects Azerite armor from world-quest rewards.
---| "bfa_azerite_armor_chest" # Selects Azerite armor sources according to the owner modifier ID.
---| "common_island_expedition_salvage" # Selects common island expedition salvage using filter IDs.
---| "catalyst_select_proper_tier_item" # Selects a catalyst tier item using catalyst, track, class, slot, and base item.
---@alias ATTSymCommand # Symbolic instruction: command name followed by positional arguments; some commands accept additional values.
---| { [1]: "select", [2]: string, [3]?: number } # Selects a field and zero or more numeric IDs.
---| { [1]: "selectparent", [2]?: integer } # Selects an ancestor; the default level is one.
---| { [1]: "fill" } # Adds content from matching source objects.
---| { [1]: "finalize" } # Moves current results into the finalized set.
---| { [1]: "merge" } # Merges finalized results back into the current set.
---| { [1]: "pop" } # Expands the current results to their children.
---| { [1]: "myModID" } # Applies the owner modifier ID to finalized items.
---| { [1]: "usemyModID" } # Uses the owner modifier ID as the offset for subsequent selection.
---| { [1]: "whereMyModID" } # Filters by the owner modifier ID when one is set.
---| { [1]: "push", [2]: string, [3]: ATTSymFieldValue } # Wraps results in an object with the specified field and value.
---| { [1]: "where", [2]: string, [3]: ATTSymFieldValue } # Keeps results whose truthy field equals the supplied value.
---| { [1]: "whereany", [2]: string, [3]: ATTSymFieldValue } # Keeps results whose truthy field matches any supplied value.
---| { [1]: "not", [2]: string, [3]: ATTSymFieldValue } # Excludes results whose truthy field matches a supplied value.
---| { [1]: "contains", [2]: string, [3]: ATTSymFieldValue } # Keeps results whose field contains a supplied value.
---| { [1]: "exclude", [2]: string, [3]: number } # Excludes results matching supplied numeric IDs.
---| { [1]: "extract", [2]: string } # Extracts nested results containing the named field.
---| { [1]: "is", [2]: string } # Keeps results with a truthy named field.
---| { [1]: "isnt", [2]: string } # Keeps results without a truthy named field.
---| { [1]: "find", [2]: string, [3]: ATTSymFieldValue } # Finds nested results matching a field value.
---| { [1]: "index", [2]: integer } # Selects the indexed child from each current result group.
---| { [1]: "invtype", [2]: string } # Filters by one or more inventory types.
---| { [1]: "meta_achievement", [2]: AchievementID } # Selects and merges achievements, then prunes their groups.
---| { [1]: "partial_achievement", [2]: AchievementID } # Resolves partial criteria for an achievement.
---| { [1]: "prune", [2]?: string } # Prunes named fields from finalized results; defaults to groups.
---| { [1]: "modID", [2]: ModID } # Assigns a modifier ID to resolved items.
---| { [1]: "usemodID", [2]: ModID } # Uses a modifier ID for subsequent selection.
---| { [1]: "groupfill", [2]?: boolean } # Fills cloned current results when true, or finalized results otherwise.
---| { [1]: "relictype", [2]: string } # Filters by one or more relic types.
---| { [1]: "sub", [2]: ATTSymSubroutineName } # Runs a named symbolic subroutine with its arguments.
---@alias ATTSym ATTSymCommand[] # Ordered symbolic commands used to resolve referenced objects.
--- Tagged item, NPC, object, or spell provider reference.
---@alias ATTProvider
---| { [1]: "i", [2]: ItemID|ModItemID } # Item
---| { [1]: "n", [2]: NPCID } # Creature
---| { [1]: "o", [2]: ObjectID } # Object
---| { [1]: "s", [2]: SpellID } # Spell
--- Tagged gold, item, or currency cost entry.
---@alias ATTCost
---| { [1]: "g", [2]: number } # Gold
---| { [1]: "i", [2]: ItemID|ModItemID, [3]: number, [4]?: ATTPhaseID } # Item
---| { [1]: "c", [2]: CurrencyID, [3]: number, [4]?: ATTPhaseID } # Currency
---@alias x_axis number # Horizontal map coordinate, expressed as a percentage.
---@alias y_axis number # Vertical map coordinate, expressed as a percentage.
---@alias ATTObjectArray ATTObject[] # Ordered list of parser objects.
---@alias ATTObjectArrayArray ATTObjectArray[] # Ordered list of parser-object groups.

--- Parser data node containing identifiers, shared metadata, and optional child groups.
--- Intentionally non-exact: parser objects are an extensible data model and
--- may carry module/flavor-specific fields outside this central shortcut schema.
---@class ATTObject
---@field groups? ATTObjectArray # Nested parser objects.
---@field g? ATTObjectArray # Legacy alias for `groups`; normalized by parser helpers.
---@field type? string # Parser object type override.
---@field text? string|ATTLocalizationStringTable # Display/localization text.
---@field description? string|ATTLocalizationStringTable # Description/localization data.
---@field name? string # Display name.
---@field readable? string # Human-readable parser label.
---@field icon? string|FileID # Icon path/file ID.
---@field model? FileID # Model file data ID.
---@field displayID? CreatureDisplayID # Display ID.
---@field sourceID? SourceID # Appearance/source ID.
---@field achievementCategoryID? AchievementCategoryID # Achievement category ID.
---@field artifactID? ArtifactID # Artifact weapon appearance ID.
---@field azeriteessenceID? AzeriteEssenceID # Azerite essence ID.
---@field buildingID? GarrisonBuildingID # Garrison building ID.
---@field campsiteID? CampsiteID # Warband campsite scene ID.
---@field categoryID? ATTCategoryID # ATT category ID used for localized names and icons.
---@field classID? number # Class ID, optionally specialization-encoded as a decimal.
---@field decorID? DecorID # Housing decor entry ID.
---@field expansionID? number # Expansion ID, optionally patch-encoded as a decimal.
---@field followerID? FollowerID # Garrison follower ID.
---@field illusionID? IllusionID # Weapon enchantment illusion source ID.
---@field objectiveID? ObjectiveID # Objective index within the parent quest.
---@field petAbilityID? BattlePetAbilityID # Battle pet ability ID.
---@field petTypeID? BattlePetTypeID # Battle pet family/type ID.
---@field professionnodeID? ProfessionNodeID # Profession specialization path/node ID.
---@field pvpRankID? PVPRankID # Classic PvP rank ID.
---@field raceID? RaceID # Character race ID represented by this object.
---@field setID? TransmogSetID # Transmog gear set ID.
---@field setHeaderID? TransmogSetID # Gear set ID used to display its shared label as a header.
---@field setSubHeaderID? TransmogSetID # Gear set ID used to display its description as a subheader.
---@field talentID? GarrisonTalentID # Garrison or order hall research talent ID.
---@field itemID? ItemID # General item ID.
---@field qs? ItemID # item grants or starts a quest.
---@field qss? ItemID[] # items grant or start a quest.
---@field qi? ItemID # item exists specifically for use in a quest.
---@field qis? ItemID[] # items exist specifically for use in a quest.
---@field modItemID? ModItemID # Encoded item identifier for modifier, bonus, or appearance variants.
---@field modID? ModID # Item modifier ID selecting an item variant.
---@field bonusID? BonusID # Item bonus ID selecting an item variant.
---@field questID? QuestID # Quest ID.
---@field sourceQuest? QuestID # Prerequisite/source quest.
---@field sourceQuests? QuestID[] # Prerequisite/source quests.
---@field sourceQuestNumRequired? integer # Number of source quests required.
---@field spellID? SpellID # Spell ID.
---@field npcID? NPCID # NPC ID.
---@field creatureID? CreatureID # Creature ID; also accepted as an NPC identifier.
---@field encounterID? JournalEncounterID # Encounter Journal encounter ID.
---@field achievementID? AchievementID # Achievement ID.
---@field allianceAchievementID? AchievementID # Alliance achievement ID paired with a Horde variant.
---@field hordeAchievementID? AchievementID # Horde achievement ID paired with an Alliance variant.
---@field altAchID? AchievementID # Alternate achievement ID used for the Horde variant.
---@field criteriaID? CriteriaID # Achievement criterion ID or legacy criterion index.
---@field factionID? FactionID # Reputation faction ID.
---@field mapID? UiMapID # UI map ID for a zone or map object.
---@field map? UiMapID # Legacy singular map field.
---@field maps? UiMapID[] # UI map IDs associated with this object.
---@field difficultyID? DifficultyID # Instance difficulty ID, including parser multi-difficulty IDs.
---@field difficulties? DifficultyID[] # Instance difficulties associated with this object.
---@field skillID? SkillID # Associated profession or skill line ID.
---@field professionID? SkillID # Profession skill line ID represented by this object.
---@field requireSkill? SkillID|ATTIgnoredValue # Required profession or skill line ID, or the parser ignore sentinel.
---@field headerID? ATTHeaderID # ATT header identifier interpreted according to the header type.
---@field filterID? FilterID # Alias for the ATT filter/category field `f`.
---@field currencyID? CurrencyID # Currency type ID.
---@field speciesID? BattlePetSpeciesID # Battle pet species ID.
---@field flightpathID? FlightPathID # Flight path taxi node ID.
---@field explorationID? ExplorationID # Exploration area ID.
---@field missionID? MissionID # Garrison mission ID.
---@field mountID? MountID # Mount spell ID used by ATT.
---@field titleID? TitleID # Character title ID.
---@field recipeID? RecipeID # Crafting recipe spell ID.
---@field instanceID? JournalInstanceID # Encounter Journal instance ID.
---@field savedInstanceID? MapID # Internal instance map ID used to look up saved lockouts.
---@field sharedLockout? boolean|integer # Shared instance lockout across non-LFR difficulties; normalized to `isLockoutShared` by the parser (data commonly uses `1`).
---@field firstcraftID? RecipeID # Recipe spell ID whose first craft is tracked.
---@field objectID? ObjectID # Interactable world object ID, such as a chest.
---@field rank? integer # Rank discriminator for ranked objects such as Azerite essences.
---@field cr? CreatureID # Single creature associated with the object.
---@field crs? CreatureID[] # Creatures associated with the object.
---@field qg? NPCID # Single NPC quest giver.
---@field qgs? NPCID[] # NPC quest givers.
---@field coord? ATTRawCoordinates|ATTIgnoredValue # Authored coordinate input or the ignored-value sentinel.
---@field coords? ATTRawCoordinates # Authored coordinate input.
---@field provider? ATTProvider|ATTIgnoredValue # Single typed reference providing this content.
---@field providers? ATTProvider[] # Typed references providing this content.
---@field cost? number|ATTCost[] # Copper amount or a list of cost entries.
---@field timeline? ATTTimelineEvent[]|ATTIgnoredValue # Patch events describing when the object is created, added, removed, or deleted.
---@field _defaulttimeline? ATTTimelineEvent[] # Parser fallback timeline used when no explicit timeline is supplied.
---@field forcetimeline? ATTTimelineEvent[] # Parser-only timeline override consumed during expansion processing.
---@field e? EventID # Event association applied by `applyevent`.
---@field symselector? integer # Symbolic-selector ID.
---@field sym? ATTSym # Symbolic commands used to resolve referenced objects.
---@field u? ATTUnobtainableStatus # Unobtainable status (why the object can't be obtained).
---@field phase? ATTPhaseID # Release phase in which the object becomes available (Classic builds).
---@field up? number|string # Encoded upgrade target or parser sentinel such as `IGNORED_VALUE`.
---@field r? RaceID # Race restriction.
---@field races? RaceID[]|ATTIgnoredValue # Race restrictions.
---@field c? ClassID[] # Class restrictions.
---@field classes? ClassID[]|ATTIgnoredValue # Class restrictions.
---@field f? FilterID # Filter ID.
---@field lvl? integer|{ [1]: integer, [2]: integer? } # Minimum level, or a level tuple with an optional maximum.
---@field minReputation? { [1]: FactionID, [2]: integer } # Reputation requirement tuple.
---@field maxReputation? { [1]: FactionID, [2]: integer } # Reputation requirement tuple.
---@field customCollect? string|string[] # Custom collection requirement key(s) for character-specific availability.
---@field pb? boolean|ATTIgnoredValue # Pet-battle filter flag.
---@field isDaily? boolean|ATTIgnoredValue # Daily-reset flag.
---@field isWeekly? boolean|ATTIgnoredValue # Weekly-reset flag.
---@field isMonthly? boolean # Monthly-reset flag.
---@field isYearly? boolean # Yearly-reset flag.
---@field isWorldQuest? boolean # Marks a world quest.
---@field isBreadcrumb? boolean # Marks a breadcrumb quest which can be skipped by its follow-up.
---@field isLocked? boolean # Declared lock flag; no ATTObject handler currently consumes it.
---@field isRaid? boolean # Marks raid content for display and quest filtering.
---@field collectible? boolean # Whether the object is collectible.
---@field repeatable? boolean # Whether the object is repeatable.
---@field isRepeatable? boolean # Alias for `repeatable`.
---@field gender? integer # Gender restriction/variant ID.
---@field pvp? boolean # PvP requirement/filter flag.
---@field cm? boolean # Challenge-mode requirement/filter flag.
---@field sr? boolean # Skyriding requirement/filter flag.
---@field ignoreBonus? boolean # Suppresses item modifier and bonus IDs during parser processing.
---@field autoname? string # Type-and-ID string used to generate a name for supported object types.
---@field OnInit? string # Lua function source applied to the constructed object during addon initialization.
---@field OnClick? string # Lua function source or function reference stored as a string; called with `(row, button)`, and a truthy return consumes the click.
---@field IgnoreWarnings? boolean # Suppresses warnings when applying shared or bubbled fields.
---@field isLimited? boolean # Limited quantity; ATT shows a limited-quantity tooltip line.
---@field altQuests? QuestID[] # Alternate quest IDs that stand in for this quest.
---@field learnedAt? integer # Skill level at which the recipe is learned.
---@field lockCriteria? { [1]: integer, [integer]: string|integer } # Lock criteria: a match count followed by key/value pairs, e.g. `{ 1, "questID", 12345 }`. Keys seen in data: questID, lvl, factionID, achID, spellID, sourceID, toyID, renownID, decorID.
---@field OnUpdate? string # Lua source of a `function(t)` stored as a string, e.g. `[[function(t) ... end]]`. Run when the group updates.
---@field lore? string # Lore text for the group.
---@field allianceQuestData? table # Alliance-specific quest data (short form: aqd).
---@field aqd? table # Alias for `allianceQuestData`.
---@field hordeQuestData? table # Horde-specific quest data (short form: hqd).
---@field hqd? table # Alias for `hordeQuestData`.
---@field maps_disp? UiMapID[] # Maps shown in the information line when `maps` is not set.
---@field sourceAchievement? AchievementID # Source achievement (cached as `sourceAchievementID`).
---@field modelScale? number # Scale applied to the model preview camera distance in the tooltip.
---@field DisablePartySync? boolean # Passed to the quest lock check to disable party sync handling.
---@field nextRecipeID? RecipeID # Next recipe in a recipe chain.
---@field previousRecipeID? RecipeID # Previous recipe in a recipe chain.
---@field OnTooltip? string # Lua source of a `function(t, tooltipInfo)` stored as a string, e.g. `[[function(t, tooltipInfo) ... end]]`.
---@field sourceAchievements? AchievementID[] # Source achievements (cached as `sourceAchievementID`).
---@field skipFill? boolean|integer # Skips Fill processing for this object (`true` in data; Symlink sets `2`).
---@field classes_display? ClassID[] # Class list used for display only (the parser maps it to `c_disp`).
---@field petBattleLvl? integer # Pet battle level shown in the information line.
---@field allianceQuestID? QuestID # Alliance-only version of the quest ID. Handled by the parser.
---@field hordeQuestID? QuestID # Horde-only version of the quest ID. Handled by the parser.
---@field extraTransmogSetItems? table # Extra transmog set items; the parser converts them to `extraTransmogSetSpells`.
---@field isBounty? boolean # Marks a bounty entry; the Bounty window searches this field.
---@field _drop? string[] # Parser fields to remove after processing.
---@field _noautomation? boolean # Disables parser automation for this object.
---@field _remove? boolean # Marks the object for parser-side removal.
---@field _multiDifficultyID? DifficultyID # Original multi-difficulty ID retained for parser/instance processing.
---@field _ignore? boolean # Declared ignore flag; no parser handler currently consumes it.
---@field _DATAGROUP? string # Group key used by constructors to register the object in DATAGROUP and IDGROUP.
---@field _DATAGROUPS? string[] # Group keys used by constructors to register the object in DATAGROUP and IDGROUP.
---@field [integer] ATTObject # Array-style group entries.

--- Achievement parser object supporting a shared achievement ID or an Alliance/Horde pair.
---@class ATTAchievementObject: ATTObject
---@field achievementID? AchievementID # Achievement ID represented by this object.
---@field allianceAchievementID? AchievementID # Alliance achievement ID for a faction-specific achievement pair.
---@field hordeAchievementID? AchievementID # Horde achievement ID for a faction-specific achievement pair.

--- Achievement criterion parser object identified by a criterion ID or legacy index.
---@class ATTAchievementCriteriaObject: ATTObject
---@field criteriaID CriteriaID # Achievement criterion ID or legacy criterion index.

--- Item parser object identified by a base item ID, with optional modifier and bonus metadata.
---@class ATTItemObject: ATTObject
---@field itemID ItemID # Item ID represented by this object.

--- Quest parser object identified by a quest ID.
---@class ATTQuestObject: ATTObject
---@field questID QuestID # Quest ID represented by this object.

--- Spell parser object identified by a spell ID.
---@class ATTSpellObject: ATTObject
---@field spellID SpellID # Spell ID represented by this object.

--- NPC parser object used to group an NPC's sourced content.
---@class ATTNPCObject: ATTObject
---@field npcID NPCID # NPC ID represented by this object.

--- Creature parser object identified by a creature entry ID.
---@class ATTCreatureObject: ATTObject
---@field creatureID CreatureID # Creature ID represented by this object.

--- Encounter Journal encounter parser object containing encounter metadata and rewards.
---@class ATTEncounterObject: ATTObject
---@field encounterID JournalEncounterID # Encounter Journal encounter ID represented by this object.

--- Reputation faction parser object containing faction metadata and optional reward groups.
---@class ATTFactionObject: ATTObject
---@field factionID FactionID # Reputation faction ID represented by this object.

--- UI map parser object used to group content for a zone or map.
---@class ATTMapObject: ATTObject
---@field mapID UiMapID # UI map ID represented by this object.

--- Currency parser object identified by a currency type ID.
---@class ATTCurrencyObject: ATTObject
---@field currencyID CurrencyID # Currency ID represented by this object.

--- Instance difficulty parser object carrying difficulty-specific content.
---@class ATTDifficultyObject: ATTObject
---@field difficultyID DifficultyID # Difficulty ID represented by this object, including parser multi-difficulty IDs.

--- Header parser object grouping content under a custom or automatically named label.
---@class ATTHeaderObject: ATTObject
---@field headerID ATTHeaderID # ATT header ID represented by this object.
---@field SortPriority? number # Parser root-category sort priority.

--- Profession parser object identified by a profession skill line.
---@class ATTProfessionObject: ATTObject
---@field professionID SkillID # Profession skill ID represented by this object.

--- Crafting recipe parser object carrying its spell ID and profession requirement.
---@class ATTRecipeObject: ATTObject
---@field recipeID RecipeID # Recipe spell ID represented by this object.
---@field requireSkill? SkillID|ATTIgnoredValue # Required profession skill ID, or the parser ignore sentinel.
---@field _requireSkill? SkillID # Parser-side recipe profession requirement cache.

--- Encounter Journal dungeon or raid instance parser object with optional lockout metadata.
---@class ATTInstanceObject: ATTObject
---@field instanceID JournalInstanceID # Encounter Journal instance ID represented by this object.
---@field savedInstanceID? MapID # Instance map ID used to look up the character's saved lockouts.

--- Parser object tracking the first craft of a recipe, optionally through a completion quest.
---@class ATTFirstCraftObject: ATTObject
---@field firstcraftID RecipeID # Recipe spell ID whose first craft is tracked.
---@field questID? QuestID # Quest ID used to track completion of this first craft when available.

--- Battle pet parser object identified by a species ID.
---@class ATTBattlePetObject: ATTObject
---@field speciesID BattlePetSpeciesID # Battle-pet species ID represented by this object.

--- Exploration area parser object used to track discovery of a named location.
---@class ATTExplorationObject: ATTObject
---@field explorationID ExplorationID # Exploration area ID represented by this object.

--- Flight path parser object used to track discovery of a taxi node.
---@class ATTFlightPathObject: ATTObject
---@field flightpathID FlightPathID # Flight-path node ID represented by this object.

--- Garrison mission parser object identified by a mission ID.
---@class ATTMissionObject: ATTObject
---@field missionID MissionID # Garrison mission ID represented by this object.

--- Mount parser object identified by its summoning spell ID.
---@class ATTMountObject: ATTObject
---@field mountID MountID # Mount spell ID represented by this object.

--- Character title parser object identified by a title ID.
---@class ATTTitleObject: ATTObject
---@field titleID TitleID # Character title ID represented by this object.

--- Map position tuple containing horizontal and vertical percentages and a UI map ID.
---@class Coord
---@field [1] x_axis # Horizontal map position expressed as a percentage.
---@field [2] y_axis # Vertical map position expressed as a percentage.
---@field [3] UiMapID # UI map ID on which the position is located.

--- Horizontal and vertical map positions; the surrounding map key supplies the UI map ID.
---@class ATTCoordinatePair
---@field [1] x_axis # Horizontal map position expressed as a percentage.
---@field [2] y_axis # Vertical map position expressed as a percentage.

--- Nested lists of coordinate tuples accepted by the Parser.
---@class ATTCoordinateList
---@field [integer] Coord|ATTCoordinateList # Coordinate tuple or nested tuple list.

--- Normalized exported coordinates by UI map ID, also accepted as top-level Parser input.
---@alias ATTCoordinatesByMapID table<UiMapID, ATTCoordinatePair[]>

--- Coordinate source forms accepted before Parser normalization.
---@alias ATTRawCoordinates Coord|ATTCoordinateList|ATTCoordinatesByMapID

--- Localized text or programmatic tokens indexed by ATT locale keys.
---@class ATTLocalizationStringTable
---@field en string # Default English text or programmatic localization token.
---@field de? string # German localized text (`deDE`).
---@field es? string # European Spanish localized text (`esES`).
---@field mx? string # Mexican Spanish localized text (`esMX`).
---@field fr? string # French localized text (`frFR`).
---@field it? string # Italian localized text (`itIT`).
---@field ko? string # Korean localized text (`koKR`).
---@field pt? string # Brazilian Portuguese localized text (`ptBR`).
---@field ru? string # Russian localized text (`ruRU`).
---@field cn? string # Simplified Chinese localized text (`zhCN`).
---@field tw? string # Traditional Chinese localized text (`zhTW`).

--- Localization definition registered by `createLocalizationString`, with a unique constant and localized text.
---@class ATTLocalizationStringData
---@field constant string # Unique parser constant name.
---@field readable? string # Human-readable label used in parser diagnostics.
---@field text ATTLocalizationStringTable # Localized text/programmatic tokens by locale. Runtime formatting iterates this table.
---@field icon? string # Optional icon path or programmatic icon token.
---@field color? string # Optional color string or programmatic color token.
---@field description? ATTLocalizationStringTable # Optional localized description.
---@field export? boolean # Whether this localization definition is exported to generated addon data.
---@field [string] any # Additional localization metadata.

--- Shared fields used by both raw header definitions and processed header data.
---@class ATTHeaderDefinitionBase: ATTObject
---@field readable string # Human-readable parser label.
---@field text string|ATTLocalizationStringTable # Localized header text.
---@field constant? string # Unique header constant.
---@field icon? string|FileID # Header icon texture path or file ID.
---@field sort? number # Header child-sorting setting.
---@field SortPriority? number # Parser root-category sort priority.
---@field eventID? EventID # Primary event ID associated with this header.
---@field eventIDs? EventID[] # Additional event IDs remapped to this header's `eventID`.
---@field export? boolean # Whether this header definition is exported to generated addon data.
---@field npcfill? boolean # Whether sourced Things may be filled into matching NPC sources.

--- Mutable header while its schedule and standalone flag are normalized.
---@class ATTHeaderProcessingDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? number[]|string # Numeric schedule input or its generated Lua schedule expression during processing.
---@field standalone? boolean # Whether this header may be retained without child groups; defaults to `false`.

--- Raw definition accepted by `createHeader`.
---@class ATTHeaderInputDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? number[] # Numeric schedule definition consumed by `createHeader`.
---@field standalone? boolean # Whether this header may be retained without child groups; defaults to `false`.

--- Processed definition stored in `CustomHeaders`.
---@class ATTHeaderDefinition: ATTHeaderDefinitionBase
---@field eventSchedule? string # Generated Lua schedule expression after processing.
---@field standalone boolean # Normalized by `createHeader`; defaults to `false`.
---@field filepath? string # Parser source file which registered this header.

--- Custom world object definition registered by `createCustomObject` in `ObjectDB`.
---@class ATTCustomObjectDefinition: ATTObject
---@field readable string # Human-readable parser label.
---@field text string|ATTLocalizationStringTable # Localized object text.
---@field constant? string # Unique custom-object constant.

--- Date input accepted by `getTimestamp`. Either `day` (such as an
--- `os.date("*t")` result) or parser-style `monthDay` must be present.
---@alias ATTDateParts
---| { year: integer, month: integer, day: integer, monthDay?: integer, hour?: integer, minute?: integer, weekday?: integer }
---| { year: integer, month: integer, day?: integer, monthDay: integer, hour?: integer, minute?: integer, weekday?: integer }

--- Registry of symbolic selector IDs with a `select` helper for building lookup commands.
---@class ATTSymSelectorTable
---@field select fun(key: string): ATTSymCommand # Builds a symbolic `select` command for the named selector ID.
---@field [string] integer # Selector IDs; the reserved `select` method is declared separately.

--- Closed root-category registry; runtime rejects unknown keys via `__index`.
---@class (exact) ATTRootConstants
---@field AchievementDB string # Root-category key for the achievement metadata database.
---@field Achievements string # Root-category key for achievement content.
---@field Arcantina string # Root-category key for Arcantina content.
---@field BlackMarket string # Root-category key for Black Market Auction House content.
---@field Character string # Root-category key for character-related content.
---@field Craftables string # Root-category key for crafted items.
---@field Delves string # Root-category key for Delve content.
---@field ExpansionFeatures string # Root-category key for expansion-specific features.
---@field Factions string # Root-category key for reputation faction content.
---@field GroupFinder string # Root-category key for Group Finder content.
---@field HiddenAchievementTriggers string # Root-category key for hidden achievement triggers.
---@field HiddenCurrencyTriggers string # Root-category key for hidden currency triggers.
---@field HiddenQuestTriggers string # Root-category key for hidden quest triggers.
---@field Holidays string # Root-category key for holiday content.
---@field Housing string # Root-category key for player housing content.
---@field InGameShop string # Root-category key for in-game shop content.
---@field Instances string # Root-category key for dungeon and raid instances.
---@field ItemDB string # Root-category key for the item metadata database.
---@field ItemDBConditional string # Root-category key for conditional item metadata.
---@field NeverImplemented string # Root-category key for content never implemented in the game.
---@field PVP string # Root-category key for player-versus-player content.
---@field PetBattles string # Root-category key for pet-battle content.
---@field Professions string # Root-category key for profession content.
---@field Promotions string # Root-category key for promotional content.
---@field RecipeDB string # Root-category key for the recipe metadata database.
---@field SeasonOfDiscovery string # Root-category key for Season of Discovery content.
---@field Secrets string # Root-category key for secret content.
---@field Sourceless string # Root-category key for existing content whose source is unknown.
---@field Talebound string # Root-category key for Talebound content.
---@field TradingPost string # Root-category key for Trading Post content.
---@field Uncollectible string # Root-category key for uncollectible item content.
---@field Unsorted string # Root-category key for content awaiting categorization.
---@field WorldDrops string # Root-category key for world-drop content.
---@field WorldEvents string # Root-category key for world-event content.
---@field Zones string # Root-category key for outdoor zone content.
---@field AprilFools string # Root-category key for April Fools content; resolves to `Special_AprilFools`.


--- Generic constructor used by most shortcuts in this file.
--- Accepts either an ordinary object table or an array of child objects. Array
--- input is normalized to `groups`. The function also performs parser
--- validation and registers `_DATAGROUP` / `_DATAGROUPS` references when set.
---@param field string # Identifier field to assign on the constructed object.
---@param id number # Numeric identifier assigned to the selected field.
---@param t? ATTObject|ATTObjectArray # Object metadata or child objects to normalize into the constructed object.
---@return ATTObject # Constructed parser object with the requested identifier.
struct = function(field, id, t)		-- Construct a commonly formatted object.
	if type(id) ~= "number" then
		error("struct() requires a number 'id'. Received:",type(id),"for",field)
		return
	end
	if not t then t = {};
	elseif (t.g or t.groups) and t[1] then
		error("Don't use 'g' or 'groups' with an array of objects! Fix Group: "..field..":"..id);
		return;
	elseif not t.groups and t[1] then
		t = { groups = validateGroups(t) };
	elseif t.groups then
		validateGroups(t.groups);
	end
	if not id then
		error("Missing ID for",field,"group");
	end
	if t[field] and t[field] ~= id then
		error("Don't reuse tables within constructed objects! Fix Group: "..field..":"..id.." which has "..t[field].." already assigned!")
	end
	t[field] = id;
	if t._DATAGROUP then
		local group = DATAGROUP[t._DATAGROUP]
		group[#group + 1] = t
		group = IDGROUP[t._DATAGROUP][field]
		group[#group + 1] = id
	end
	if t._DATAGROUPS then
		local datagroup
		for i=1,#t._DATAGROUPS do
			datagroup = t._DATAGROUPS[i]
			local group = DATAGROUP[datagroup]
			group[#group + 1] = t
			group = IDGROUP[datagroup][field]
			group[#group + 1] = id
		end
	end
	return t;
end

--- Deep-clones parser data into an optional destination table.
--- Existing keys in `c` are preserved; table values copied from `t` are
--- recursively cloned so the resulting parser object can be mutated safely.
---@overload fun<T>(t: T): T
---@param t any # Source value to deep-clone; non-table values are returned unchanged.
---@param c? table # Destination table whose existing keys are preserved.
---@return any # Deep-cloned value, or the original value when it is not a table.
clone = function(t, c)	-- Clone a piece of data as a separate table (t => c, return c)
	if type(t) ~= "table" then return t end
	c = c or {};

	for key,value in pairs(t) do
		if c[key] == nil then
			c[key] = type(value) == "table" and clone(value) or value;
		end
	end
	return c;
end

-- Helper Functions
--
-- Core table/group manipulation utilities used by parser db. Most of these
-- mutate the provided object tree in place and also return the same table so
-- they can be composed around constructors.
--- Checks whether a value is an array-style table (including an empty table).
---@param t? any # Value to check for an array-style or empty table.
---@return boolean|nil # Whether the value is an array-style or empty table, or nil for nil input.
isarray = function(t)
	return t and type(t) == 'table' and (#t > 0 or next(t) == nil);
end
--- Checks whether a phase ID is a Release Phase (belongs in `phase`) rather than an Unobtainable Filter (belongs in `u`).
---@param phaseID? ATTPhaseID # Phase ID to check.
---@return boolean # Whether the phase ID denotes a release phase.
isreleasephase = function(phaseID)
	---@diagnostic disable-next-line: undefined-global
	local phase = phaseID and Phases and Phases[phaseID];
	return phase and (phase.minimumBuildVersion or phase.buildVersion) and true or false;
end
--- Counts the number of keys in a table.
---@param t? table # Table whose keys are counted; nil or non-table input returns nil.
---@return integer|nil # Number of keys, or nil for nil or non-table input.
keycount = function(t)
	if not t or type(t) ~= "table" then return end
	local c = 0
	for _ in pairs(t) do
		c = c + 1
	end
	return c
end
-- Concats all the key/value pairs in the table into a string
--- Concatenates the key/value pairs of a table into a string.
---@param tbl? table # Table whose key/value pairs are formatted as text.
---@param sep? string # Separator between formatted pairs; defaults to an empty string.
---@return string # Formatted key/value pairs, or an empty string for nil input.
StringifyTable = function(tbl, sep)
	if tbl then
		local tostring = tostring
		sep = sep or ""
		local tblvals = {};
		for k,v in pairs(tbl) do
			tblvals[#tblvals + 1] = k..":"..tostring(tbl[k])
		end
		return table.concat(tblvals, sep)
	end
	return "";
end
-- Ensures that 't' has a 'groups' field containing the array/'g' data of the table
--- Normalizes array or `g` data into a table containing a `groups` field.
---@param t ATTObject|ATTObjectArray # Object or child array whose array/`g` data is normalized into `groups`.
---@return ATTObject # Object with array or legacy g data normalized into groups when present.
togroups = function(t)
	if isarray(t) then
		local groups = {};
		for _,group in ipairs(t) do
			table.insert(groups, group);
		end
		return { groups = groups }
	end
	if t.g then
		t.groups = t.g
		t.g = nil
		return t
	end
	return t;
end
--- Appends an object to a table and returns that table.
---@param o ATTObject # Parser object to append.
---@param t ATTObjectArray # Destination array receiving the object.
---@return ATTObjectArray # Destination array after appending the object.
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
-- Appends a common groups set into the groups for this object. The last element is the one to append into.
--- Combines group arrays, using the final argument as the destination when multiple arrays are supplied.
---@param ... ATTObjectArray # Arrays to combine; the last is the destination when multiple arrays are supplied.
---@return ATTObjectArray # Combined groups in the selected destination array.
appendGroups = function(...)
	local data = { ... };
	local count = #data;
	if count < 2 then
		-- Clone the group.
		local groups = {};
		for i,o in ipairs(data[1]) do
			table.insert(groups, o);
		end
		return groups;
	else
		-- The last element is the one to append into.
		local groups = data[count];
		for i=1,count-1,1 do
			for j,o in ipairs(data[i]) do
				table.insert(groups, o);
			end
		end
		return groups;
	end
end
-- Appends together multiple arrays of groups (into the first provided group). This way multiple portions of a single group can be created separately and joined together for one final 'groups' container
--- Appends multiple group arrays into the first destination array.
---@overload fun<T>(g: T[]): T[]
---@param g? any[] # Destination array, created from nil when additional arrays are supplied.
---@param ... any[]|nil # Child arrays to append in order; nil arguments are skipped.
---@return any[]|nil # Destination array with appended values, or nil when no array is created.
appendAllGroups = function(g, ...)
	local arrs = select("#", ...);
	if arrs > 0 then
		g = g or {};
		local i, a = #g + 1, nil;
		for n=1,arrs do
			a = select(n, ...);
			if a then
				for ai=1,#a do
					g[i] = a[ai];
					i = i + 1;
				end
			end
		end
	end
	return g;
end
local SharedKeyWarnings = {
	-- sharedData description is not 'always' correct to consolidate to sharedDescription since it is recursive for all children, and may not be intentional for them
	-- description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
local BubbleDownKeyWarnings = {
	description = "Using an identical 'description' on nested multiple groups via bubbleDown is not recommended. Use 'sharedDescription' instead for reduced data requirements!",
}
-- I've determined that this isn't going to work out with how our data is currently organized
-- Since we've grown accustomed to making the inner timeline fully-replace any bubbleDown, there's no
-- real way to add logic to merge these properly. Oh well, maybe another field will eventually benefit
-- from this concept :(
-- local CustomMergedData = {
-- 	timeline = function(t, new)
-- 		local old = t.timeline
-- 		if old == new then
-- 			print("Self-merging timeline within bubbledown??",tostring(new),"=>",tostring(old))
-- 			for k, v in pairs(t) do
-- 				print(k,"=",v)
-- 			end
-- 			return
-- 		end
-- 		-- don't merge into an ignored timeline, the purpose is to prevent merging if it's ignored!
-- 		if old == IGNORED_VALUE then
-- 			return
-- 		end
-- 		if type(old) ~= "table" then
-- 			print("Merging into timeline which is not an array =>",old)
-- 			old = {old}
-- 		end
-- 		if type(new) ~= "table" then
-- 			print("Merging from timeline which is not an array =>",new)
-- 			new = {new}
-- 		end
-- 		-- print("#new",#new,tostring(old),tostring(new))
-- 		for _,patch in ipairs(new) do
-- 			old[#old + 1] = patch
-- 			-- print("merged timeline",patch,"@",#old)
-- 		end
-- 		t.timeline = old
-- 	end
-- }
-- Simply applies keys from 'data' into 't' using a custom function by key, or where the key does not already exist
--- Copies missing fields from `data` into `t` without replacing fields already present.
---@param data? ATTObject # Source fields to deep-clone into missing destination fields.
---@param t? ATTObject # Destination object whose existing fields are preserved.
applyData = function(data, t)
	if data and t then
		for key, value in pairs(data) do
			if t[key] == nil and key ~= "IgnoreWarnings" then	-- don't replace existing data
				if SharedKeyWarnings[key] and not data.IgnoreWarnings then
					print(SharedKeyWarnings[key],key,"[",value,"]")
				end
				t[key] = clone(value)
			-- else
			-- 	local custom = CustomMergedData[key]
			-- 	if custom then
			-- 		custom(t, value)
			-- 	end
			end
		end
	end
end
-- Performs applyData logic to the top-level table
-- This is sort of a workaround for replacing bubbleDownSelf a billion times with static field and groups
--- Normalizes the top-level object and applies missing fields from `data` to it.
--- Array input is wrapped in a group container before the fields are applied.
---@param data ATTObject # Source fields to apply where the normalized top-level object has no value.
---@param t ATTObject|ATTObjectArray # Object or child array to normalize before applying the fields.
---@return ATTObject # Normalized object with the supplied data applied.
applyDataSelf = function(data, t)
	if not data then
		error("applyDataSelf: No Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("applyDataSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular applyData on the group
	applyData(data, t);
	return t
end
-- Simpler way to applyDataSelf in a more readable wording
with = applyDataSelf
-- Applies a function against the group and all sub-groups
--- Recursively applies a function to a group and all of its nested groups.
--- Invokes the function after visiting children, including on array containers.
--- Returns the original input, whose fields may have been changed by the function.
---@param func? fun(group: ATTObject|ATTObjectArray) # Callback invoked after visiting children, including on array containers.
---@param t ATTObject|ATTObjectArray # Object tree or child array to traverse and pass to the callback.
---@return ATTObject|ATTObjectArray # Original input after applying the function.
applyFunc = function(func, t)
	if not func then return t end
	if t --[[@as ATTObject]].groups then
		applyFunc(func, t.groups)
	elseif t --[[@as ATTObject]].g then
		applyFunc(func, t.g)
	elseif isarray(t) then
		for _,group in ipairs(t --[[@as ATTObjectArray]]) do
			applyFunc(func, group)
		end
	end
	func(t)
	return t
end
--- Splits a timeline event string into its textual and numeric components.
---@param epoch ATTTimelineEvent # Timeline event string to split into its action and patch components.
---@return (string|number)[] # Textual and numeric components of the timeline event.
splitTimelineEvent = function(epoch)
	local words = {};
	for word in epoch:gmatch("%S+") do table.insert(words, word) end
	for i=2,#words,1 do words[i] = tonumber(words[i]) or words[i]; end
	return words;
end
-- Applies the timeline event (epoch) to the object.
--- Adds a timeline event to an object while preserving timeline ordering and avoiding duplicates.
---@param epoch? ATTTimelineEvent # Timeline event to insert in order, unless already present.
---@param t? ATTObject # Object whose timeline receives the event.
applyTimelineEvent = function(epoch, t)
	if epoch and t then
		local timeline = t.timeline;
		if not timeline then
			-- Nothing there already, simply assign a new timeline.
			t.timeline = { epoch };
		else
			-- More complicated... (merge the data!)
			local index = -1;
			local epochParts = splitTimelineEvent(epoch);
			for i,currentEpoch in ipairs(timeline) do
				if currentEpoch == epoch then
					-- Epoch already present. Don't duplicate it.
					return;
				end
				local after = true;
				local parts = splitTimelineEvent(currentEpoch);
				for j=2,math.min(#epochParts, #parts),1 do
					if epochParts[j] < parts[j] then
						after = false;
						break;
					end
				end
				if not after then
					-- We don't want to circumvent the timeline's ability to strip out data that's not supposed to be in the game yet.
					if i == 1 and parts[1] == "added" and epochParts[1] == "removed" then
						return;
					end
					--[[
					-- Uncomment to Test:
					local summary = "";
					for j=1,i - 1,1 do
						summary = summary .. "  [" .. j .. "]: '" .. timeline[j] .. "'\n";
					end
					summary = summary .. "  >>> '" .. epoch .. "'\n  [" .. i .. "]: '" .. currentEpoch .. "'";
					print(summary);
					]]--
					index = i;
					break;
				end
			end
			if index >= 0 then
				table.insert(timeline, index, epoch);
			else
				table.insert(timeline, epoch);
			end
		end
	end
end
-- Applies a copy of the provided data into the tables of the provided array/group
--- Applies shared data to each direct child in a group or group container.
---@generic T: ATTObject|ATTObjectArray
---@param data ATTObject # Fields to apply to each direct child where values are missing.
---@param t T # Child array or group container whose direct children receive the fields.
---@return T # Original input with shared data applied to its direct children.
sharedData = function(data, t)
	if not data then
		error("sharedData: No Shared Data",StringifyTable(t,","))
	end
	if not t or (#t == 0 and not t --[[@as ATTObject]].g and not t --[[@as ATTObject]].groups) then
		error("sharedData: No Source 't'",StringifyTable(t,","))
	end
	if t then
		for _,group in ipairs(t --[[@as ATTObjectArray]]) do
			applyData(data, group);
		end
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			for _,group in ipairs(t.g or t.groups --[[@as ATTObjectArray]]) do
				applyData(data, group);
			end
		end
	end
	return t;
end
-- Performs sharedData logic but also applies the data to the top-level table
--- Applies shared data to the top-level object and its direct children.
--- Array input is wrapped in a group container; the result is always an object.
---@param data ATTObject # Fields to apply to the top-level object and each direct child where values are missing.
---@param t ATTObject|ATTObjectArray # Object or child array to normalize before applying the shared fields.
---@return ATTObject # Object containing the input groups and applied shared data.
sharedDataSelf = function(data, t)
	if not data then
		error("sharedDataSelf: No Shared Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("sharedDataSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .groups container first to prevent merge confusion
	t = togroups(t);
	-- then apply the data to itself
	applyData(data, t);
	-- then apply regular sharedData on the group if it has content
	if not (#t == 0 and not t.g and not t.groups) then
		return sharedData(data, t);
	end
	return t
end
-- Simpler way to sharedDataSelf in a more readable wording
withShared = sharedDataSelf
-- Applies a copy of the provided data into all sub-groups of the provided table/array
--- Recursively applies missing fields from `data` to all nested groups.
--- Recursively propagates shared metadata to descendant parser objects.
--- Existing values on child objects take precedence. This is intended for
--- inheritance-like metadata such as timeline, classes, races, or requirements.
---@generic T: ATTObject|ATTObjectArray
---@param data ATTObject # Fields to propagate recursively without replacing existing values.
---@param t T # Object tree or child array receiving the fields throughout its descendants.
---@return T # Original input after propagating the data to nested groups.
bubbleDown = function(data, t)
	if not data then
		error("bubbleDown: No Bubble Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("bubbleDown: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- override to use 'timelineSelf' if the only data provided is a 'timeline' value
	-- if data.timeline and keycount(data) == 1 then
	-- 	local timelineSelfReturn = timelineSelf(data, t, true)
	-- 	if timelineSelfReturn then return timelineSelfReturn end
	-- end
	if not data.IgnoreWarnings then
		for key,val in pairs(data) do
			if BubbleDownKeyWarnings[key] then
				print(BubbleDownKeyWarnings[key],"[",val,"]")
			end
		end
	end
	if t then
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			applyData(data, t);
			if t.groups then
				bubbleDown(data, t.groups);
			end
			if t.g then
				bubbleDown(data, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t --[[@as ATTObjectArray]]) do
				bubbleDown(data, group);
			end
		else
			applyData(data, t);
		end
		return t;
	end
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array assuming that table matches the requirements of the filter.
--- Recursively applies data only to groups accepted by the supplied filter function.
--- A true or integer filter result copies missing fields; false/nil skips that object.
--- Children are visited regardless of the parent result; arrays are traversed
--- without being passed to the filter. Returns the original input unchanged in shape.
---@generic T: ATTObject|ATTObjectArray|nil
---@param data ATTObject # Fields to apply where accepted objects have no existing value.
---@param filter fun(group: ATTObject): boolean|integer|nil # Predicate accepting objects with a true or integer result; false/nil skips them.
---@param t T # Object tree or child array to traverse, even when a parent is rejected.
---@return T # Original input after applying data to matching nested groups.
---@overload fun(data: ATTObject, filter: fun(group: ATTObject): boolean|integer|nil): nil
bubbleDownFiltered = function(data, filter, t)
	if t then
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			if filter(t) then applyData(data, t); end
			bubbleDownFiltered(data, filter, t.groups);
			bubbleDownFiltered(data, filter, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t --[[@as ATTObjectArray]]) do
				bubbleDownFiltered(data, filter, group);
			end
		else
			if filter(t --[[@as ATTObject]]) then applyData(data, t); end
		end
		return t;
	end
end
-- Performs bubbleDown logic but also applies the data to the top-level table
--- Applies bubbled data to the top-level object and all nested groups.
---@param data ATTObject # Fields to propagate to the normalized root and descendants without replacing existing values.
---@param t ATTObject|ATTObjectArray # Object or child array to normalize before recursively applying the fields.
---@return ATTObject # Normalized object with data applied to itself and nested groups.
bubbleDownSelf = function(data, t)
	if not data then
		error("bubbleDownSelf: No Bubble Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("bubbleDownSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular bubbleDown on the group
	return bubbleDown(data, t);
end
-- Performs only the logic of applying the provided data against the merging object, this is intended as a quick replacement for those bubbleDown(Self) uses of only 'timeline' data
--- Applies timeline-only data to direct children via `sharedData`.
--- Preserves the input type; auto mode returns nil when data is not timeline-only.
---@generic T: ATTObject|ATTObjectArray
---@param data ATTObject # Object containing only the `timeline` field to share with direct children.
---@param t T # Child array or group container whose direct children receive the timeline.
---@param auto? boolean # Whether invalid timeline-only data returns nil instead of raising an error.
---@return T|nil # Updated input, or nil when auto mode rejects non-timeline data.
timelineSelf = function(data, t, auto)
	if not data then
		error("timelineSelf: No Data",StringifyTable(t,","))
		return t
	end
	if not t then
		error("timelineSelf: No Source 't'",StringifyTable(t,","))
		return t
	end
	local datacount = keycount(data)
	local withtimeline = data.timeline and true or nil
	if datacount > 1 or not withtimeline then
		-- if we automatically call this function, then don't ERROR just return empty so the caller can handle it
		if auto then return end

		error("timelineSelf is only intended to replace 'timeline' bubbleDowns, ensure no other data is being bubbled! ",StringifyTable(t,","))
		return t
	end
	-- typically bubbleDownSelf is on expansion objects, and we want to avoid forcing timeline on these
	-- so instead do a sharedData pass of the timeline
	return sharedData(data, t)
end
-- Applies the timeline event (epoch) to all sub-groups of the provided table/array
--- Recursively applies a timeline event to all nested groups.
---@generic T: ATTObject|ATTObjectArray
---@param epoch ATTTimelineEvent # Timeline event to add recursively while preserving each timeline order.
---@param t T # Object tree or child array whose objects receive the event.
---@return T # Original input after propagating the timeline event.
bubbleDownTimelineEvent = function(epoch, t)
	if not epoch then
		error("bubbleDownTimelineEvent: No Epoch",StringifyTable(t,","))
	end
	if not t then
		error("bubbleDownTimelineEvent: No Source 't'",StringifyTable(t,","))
	end
	if t then
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			applyTimelineEvent(epoch, t);
			if t.groups then
				bubbleDownTimelineEvent(epoch, t.groups);
			end
			if t.g then
				bubbleDownTimelineEvent(epoch, t.g);
			end
		elseif isarray(t) then
			for _,group in ipairs(t --[[@as ATTObjectArray]]) do
				bubbleDownTimelineEvent(epoch, group);
			end
		else
			applyTimelineEvent(epoch, t);
		end
		return t;
	end
end
--- Normalizes the object to a group container and bubbles a timeline event through it.
---@param epoch ATTTimelineEvent # Timeline event to add to the normalized root and descendants.
---@param t ATTObject|ATTObjectArray # Object or child array to normalize before applying the event recursively.
---@return ATTObject # Normalized object after propagating the timeline event.
bubbleDownTimelineEventSelf = function(epoch, t)
	return bubbleDownTimelineEvent(epoch, togroups(t));
end
--- Builds a human-readable representation of a nested table for validation errors.
---@param indent string # Indentation prefix for each entry, extended when descending into nested tables.
---@param t table # Nested table to format for validation error output.
---@return string # Formatted representation of the supplied nested table.
generateValidationStructure = function(indent, t)
	local msg = "";
	for j,o in pairs(t) do
		msg = msg .. "\n" .. indent .. j .. ": " .. tostring(o);
		if type(o) == "table" then
			msg = msg .. generateValidationStructure(indent .. " ", o);
		end
	end
	return msg;
end
-- Validates and returns 't' (expected 'groups' content) ensuring that contained content is in the expected formats
--- Validates that group contents use numeric array keys and table values.
---@param t? ATTObjectArray # Group array to validate for numeric keys and table-valued child objects.
---@return ATTObjectArray|nil # Validated groups, or nil for nil input.
validateGroups = function(t)
	if t then
		for i,group in pairs(t) do
			if type(i) ~= "number" then
				error("You're trying to use '" .. i .. "' in a 'groups' field. (can't do that!)\nDetails: " .. generateValidationStructure(" ", t));
			elseif type(group) ~= "table" then
				error("You're trying to use '" .. group .. "' in a 'groups' field. (can't do that!)\nDetails: " .. generateValidationStructure(" ", t));
			end
		end
		return t;
	end
end
--- Checks whether an array contains a value.
---@param arr table # Array to search by direct value equality.
---@param value any # Value to find among the array entries.
---@return boolean|nil # True when the array contains the value, otherwise nil.
contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
--- Checks whether two arrays share at least one value.
---@param arr table # First array to compare for shared values.
---@param otherArr table # Second array to compare by direct value equality.
---@return boolean|nil # True when the arrays share a value, otherwise nil.
containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
--- Checks whether a table contains a value.
---@param dict table # Table whose values are searched, regardless of their keys.
---@param value any # Value to find by direct equality.
---@return boolean|nil # True when the table contains the value, otherwise nil.
containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
--- Returns a filtered copy of a table excluding the supplied value or values.
---@param data any # Single value or array of values to omit from the result.
---@param t table # Source array to copy while excluding the requested values.
---@return table # New table with the specified value or values excluded.
exclude = function(data, t)
	local t2 = {};
	if type(data) == "table" then
		-- Group of Values (You shouldn't be excluding a complex object if that's what you're trying to do)
		if #data > 0 then
			for i,o in ipairs(t) do
				if not contains(data, o) then
					table.insert(t2, o);
				end
			end
		else
			-- Just create a clone
			for i,o in ipairs(t) do
				table.insert(t2, o);
			end
		end
	else
		-- Single Value
		for i,o in ipairs(t) do
			if o ~= data then
				table.insert(t2, o);
			end
		end
	end
	return t2;
end
--- Returns a filtered copy of a table excluding all supplied values.
---@param t table # Source array to copy while excluding the supplied values.
---@param ... any # Values to omit from the copied array.
---@return table # New table with all specified values excluded.
excludeMany = function(t, ...)
	return exclude({...}, t);
end
--- Merges multiple arrays into a new array.
---@param ... ATTObjectArray # Child arrays to concatenate in order into a new array.
---@return ATTObjectArray # New array containing the combined groups.
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Applies reputation requirements to grouped reputation tiers while skipping the initial ranks.
---@param rep FactionID # Faction ID assigned to each minimum reputation requirement.
---@param group ATTObjectArrayArray # Child arrays ordered by reputation tier; array index 1 requires tier 4.
---@return ATTObjectArray # Groups with applicable reputation requirements propagated.
bubbleDownRepSkip = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDownFiltered({minReputation = {rep, i+3}},FILTERFUNC_NoheaderID,groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Applies reputation requirements to grouped reputation tiers.
---@param rep FactionID # Faction ID assigned to each minimum reputation requirement.
---@param group ATTObjectArrayArray # Child arrays whose indices become their minimum reputation tiers.
---@return ATTObjectArray # Groups with reputation requirements propagated.
bubbleDownRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDownFiltered({minReputation = {rep, i}},FILTERFUNC_NoheaderID,groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
local classicRepsMap = {
	NEUTRAL,
	FRIENDLY,
	HONORED,
	REVERED,
	EXALTED
};
--- Applies Classic reputation requirements to grouped reputation tiers.
---@param rep FactionID # Faction ID assigned to each minimum reputation requirement.
---@param group ATTObjectArrayArray # Child arrays ordered from Neutral through Exalted.
---@return ATTObjectArray # Groups with Classic reputation requirements propagated.
bubbleDownClassicRep = function(rep, group)
	local t = {};
	for i,groups in ipairs(group) do
		groups = bubbleDownFiltered({minReputation = {rep, classicRepsMap[i]}},FILTERFUNC_NoheaderID,groups)
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
--- Recursively invokes a method for an object and all nested groups.
--- Array containers are traversed; only objects are passed to the method.
--- Returns the original input, whose fields may have been changed by the method.
---@param method fun(group: ATTObject) # Callback invoked on each object before traversing its children.
---@param t? ATTObject|ATTObjectArray # Object tree or child array to traverse; array containers are not passed to the callback.
---@return ATTObject|ATTObjectArray|nil # Original input after invoking the method, or nil when no input is supplied.
run = function(method, t)
	if t then
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			method(t --[[@as ATTObject]]);
			run(method, t.groups);
			run(method, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t --[[@as ATTObjectArray]]) do
				run(method, group);
			end
		else
			method(t --[[@as ATTObject]]);
		end
		return t;
	end
end
--- Recursively unpacks an array beginning at the requested index.
---@param t table # Array whose consecutive entries are returned as separate values.
---@param i? integer # First array index to unpack; defaults to 1.
---@return any ... # Consecutive array values beginning at the requested index, stopping at the first nil.
unpack = function(t, i)
  i = i or 1
  if t[i] ~= nil then
	return t[i], unpack(t, i + 1)
  end
end

-- Helper Functions
--- Provides the `asset` parser shortcut/helper.
--- Prints the path and raises an error because this helper is deprecated.
---@param path string # Asset path printed before this deprecated helper raises an error.
asset = function(path)
	print("ASSET: " .. path);
	error("The asset function has been deprecated");
end
--- Provides the `icon` parser shortcut/helper.
--- Prints the path and raises an error because this helper is deprecated.
---@param path string # Icon path printed before this deprecated helper raises an error.
icon = function(path)
	print("ICON: " .. path);
	error("The icon function has been deprecated");
end
--- Applies an event ID to all nested data.
---@param eventID EventID # Event identifier to propagate through the `e` field.
---@param data ATTObject|ATTObjectArray # Object tree or child array receiving the event association.
---@return ATTObject|ATTObjectArray # Input object or groups after the event association is applied.
applyevent = function(eventID, data)
	if not eventID then
		print("INVALID EVENT ID PASSED TO APPLYHOLIDAY");
		---@diagnostic disable-next-line: undefined-global
		print(CurrentSubFileName or CurrentFileName);
	end
	return bubbleDown({ e = eventID }, data);
end
-- #if ANYCLASSIC
--- Applies a Classic release phase to the provided data for Classic builds.
---@param phase? ATTPhaseID # Classic release phase to assign to the `phase` field; ignored in non-Classic builds.
---@param t ATTObject|ATTObjectArray # Object tree receiving the Classic phase, or returned unchanged in other builds.
---@return ATTObject|ATTObjectArray # Input object or groups after the applicable Classic phase is applied.
applyclassicphase = function(phase, t)
	if t then
		local data = { phase = phase };
		if t --[[@as ATTObject]].g or t --[[@as ATTObject]].groups then
			applyData(data, t);
		elseif isarray(t) then
			for _,group in ipairs(t --[[@as ATTObjectArray]]) do
				applyData(data, group);
			end
		else
			applyData(data, t);
		end
		return t;
	end
	return t;
end
--- Selects the Classic or non-Classic value for the active build.
---@param classicValue any # Value returned for Classic builds.
---@param value any # Value returned for non-Classic builds.
---@return any # Value selected for the active client flavor.
ifclassic = function(classicValue, value)
	return classicValue;
end
-- #else
--- Applies a Classic release phase to the provided data for Classic builds.
---@param phase? ATTPhaseID # Classic release phase to assign to the `phase` field; ignored in non-Classic builds.
---@param data ATTObject|ATTObjectArray # Object tree receiving the Classic phase, or returned unchanged in other builds.
---@return ATTObject|ATTObjectArray # Input object or groups after the applicable Classic phase is applied.
applyclassicphase = function(phase, data)
	return data;
end
--- Selects the Classic or non-Classic value for the active build.
---@param classicValue any # Value returned for Classic builds.
---@param value any # Value returned for non-Classic builds.
---@return any # Value selected for the active client flavor.
ifclassic = function(classicValue, value)
	return value;
end
-- #endif

local squishes = {};
--- Returns the appropriate level after expansion-specific level squishes.
---@param originalLvl integer # Level used before Cataclysm.
---@param cataLvl integer # Level used from Cataclysm until the Shadowlands level squish.
---@param shadowlandsLvl integer # Level used after the Shadowlands level squish.
---@return integer # Level appropriate to the active expansion.
lvlsquish = function(originalLvl, cataLvl, shadowlandsLvl)
	if cataLvl < shadowlandsLvl then
		local squish = "lvlsquish(" .. originalLvl .. ", " .. cataLvl .. ", " ..shadowlandsLvl .. ") > " .. "lvlsquish(" .. originalLvl .. ", " .. shadowlandsLvl .. ", " .. cataLvl .. ")";
		if not squishes[squish] then
			print("Someone messed up a lvlsquish order.", squish);
			squishes[squish] = true;
		end
	end
	local lvl;
	-- #if AFTER SL
	lvl = shadowlandsLvl;
	-- #elseif AFTER CATA
	lvl = cataLvl;
	-- #else
	lvl = originalLvl;
	-- #endif
	return lvl;
end
--- Builds the symbolic selector for a PvP weapons arsenal.
---@param TIER integer # Legacy tier argument retained in the symbolic command; ignored by the current resolver.
---@param SEASON ATTHeaderID # Season header ID selected by the weapons ensemble resolver.
---@param PVPSET ATTHeaderID # PvP set header ID searched beneath the season header.
---@return ATTSym # Symbolic commands selecting the PvP weapons arsenal.
Sym_PvPWeaponsArsenal = function(TIER, SEASON, PVPSET)
	return {{"sub","pvp_weapons_ensemble",TIER,SEASON,PVPSET}}
end
--- Creates the Shadowlands Legendaries header and assigns its symbolic selector.
---@param t? ATTObject|ATTObjectArray # Metadata or child objects for the Shadowlands legendary header.
---@return ATTHeaderObject # Header containing the legendary-memory selector.
SL_Legendaries = function(t)
	t = n(LEGENDARIES, t)
	t.symselector = SymSelector.LEGION_LEGENDARY_HEADERS
	return t
end
--- Creates the Chronicle of Lost Memories item with its legendary-memory symbolic data.
---@param t? ATTObject|ATTObjectArray # Metadata or child objects for the Chronicle of Lost Memories item.
---@return ATTItemObject # Item containing the legendary-memory symbolic data.
ChronicleOfLostMemories = function(t)
	t = t or {}
	-- TODO: revise this, don't rely on a header containing all legendaries
	-- also, Covenant legendaries are not rewarded by the Chronicle since they require a specific renown and are rewarded automatically
	-- so also need to exclude those with custom collect
	t.sym = {
		SymSelector.select("LEGION_LEGENDARY_HEADERS"),	-- Legendary header
		{ "extract", "runeforgepowerID" },	-- extract all Legendaries into a direct list
		{ "exclude", "itemID",
			190584,	-- Memory of Unity (DK)
			190587,	-- Memory of Unity (DH)
			190588,	-- Memory of Unity (DRUID)
			199552,	-- Memory of Unity (EVOKER)
			190589,	-- Memory of Unity (HUNTER)
			190590,	-- Memory of Unity (MAGE)
			190591,	-- Memory of Unity (MONK)
			190592,	-- Memory of Unity (PALADIN)
			190593,	-- Memory of Unity (PRIEST)
			190594,	-- Memory of Unity (ROGUE)
			190595,	-- Memory of Unity (SHAMAN)
			190596,	-- Memory of Unity (WARLOCK)
			190598,	-- Memory of Unity (WARRIOR)
		},
	}
	t._drop = { "customCollect" }
	return i(184665, t)	-- Chronicle of Lost Memories
end

-- Cost Helper Functions
--- Appends one or more cost entries to an object.
---@generic T: ATTObject
---@param item T # Object whose cost list receives the new entries.
---@param ... ATTCost # Typed cost entries to append without replacing existing costs.
---@return T # Input object after adding the supplied cost entries.
applycost = function(item, ...)
	local cost = item.cost;
	if not cost then
		cost = {};
		item --[[@as ATTObject]].cost = cost;
	end
	for i,o in ipairs({ ... }) do
		table.insert(cost, o);
	end
	return item;
end
--- Assign a token cost to an item.
---@generic T: ATTObject
---@param tokenItemID ItemID # Item ID of the token required in a quantity of one.
---@param item T # Object receiving the single-token item cost.
---@return T # The input object with a one-item token cost.
tokencost = function(tokenItemID, item)				-- Assign a token cost to an item.
	applycost(item, { "i", tokenItemID, 1 });
	return item;
end
--- Assign a Remnant of Anguish cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Remnants of Anguish required; nonpositive amounts add no cost.
---@param item T # Object receiving the Remnant of Anguish currency cost.
---@return T # The input object with a Remnant of Anguish cost when the amount is positive.
anguish = function(cost, item)						-- Assign a Remnant of Anguish cost to an item.
	if cost > 0 then applycost(item, { "c", 3392, cost }); end
	return item;
end
--- Assign an Bloody Tokens cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Bloody Tokens required; nonpositive amounts add no cost.
---@param item T # Object receiving the Bloody Tokens currency cost.
---@return T # The input object with a Bloody Tokens cost when the amount is positive.
bloody = function(cost, item)							-- Assign an Bloody Tokens cost to an item.
	if cost > 0 then applycost(item, { "c", BLOODY_TOKENS, cost }); end
	return item;
end
--- Assigns a Champion's Seal cost and the applicable Classic phase.
---@param cost number # Number of Champion's Seals required.
---@param item ATTObject # Object receiving the cost and the Wrath phase 2 flag in Classic builds.
---@return ATTObject # The input object with Champion's Seal cost and its applicable Classic phase.
champ = function(cost, item)							-- Assigns a Champion's Seal cost and the applicable Classic phase.
	applycost(item, { "c", 241, cost });	-- Champion's Seal
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
--- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch).
---@generic T: ATTObject
---@param cost number # Number of Chef's Awards or Epicurean's Awards required, depending on the patch.
---@param item T # Object receiving the patch-appropriate cooking award currency cost.
---@return T # The input object with the patch-appropriate Chef's or Epicurean's Award cost.
chefsaward = function(cost, item)						-- Assign a Chef's Award or Epicurean's Award cost to an item. (based on patch)
	-- #if AFTER 5.0.4
	applycost(item, { "c", 81, cost });	-- Epicurean's Award
	-- #else
	applycost(item, { "c", 402, cost });	-- Chef's Award
	-- #endif
	return item;
end
--- Assign a Conquest cost to an item.
---@generic T: ATTObject
---@param cost number # Conquest currency amount required; nonpositive amounts add no cost.
---@param item T # Object receiving the Conquest currency cost.
---@return T # The input object with a Conquest cost when the amount is positive.
conquest = function(cost, item)							-- Assign a Conquest cost to an item.
	if cost > 0 then applycost(item, { "c", CONQUEST, cost }); end
	return item;
end
--- Assign a Dalaran Jewelcrafter's Token cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Dalaran Jewelcrafter's Tokens required.
---@param item T # Object receiving the Dalaran Jewelcrafter's Token currency cost.
---@return T # The input object with a Dalaran Jewelcrafter's Token cost.
daljewelcraftingtoken = function(cost, item)			-- Assign a Dalaran Jewelcrafter's Token cost to an item.
	applycost(item, { "c", 61, cost });
	return item;
end
--- Assign a Darkmoon Daggermaw cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Darkmoon Daggermaw items required.
---@param item T # Object receiving the Darkmoon Daggermaw item cost.
---@return T # The input object with a Darkmoon Daggermaw item cost.
darkmoondaggermaw = function(cost, item)				-- Assign a Darkmoon Daggermaw cost to an item.
	applycost(item, { "i", 124669, cost });	-- Darkmoon Daggermaw
	return item;
end
--- Assign a Darkmoon Prize Ticket cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Darkmoon Prize Tickets required.
---@param item T # Object receiving the Darkmoon Prize Ticket currency cost.
---@return T # The input object with a Darkmoon Prize Ticket cost.
darkmoonprizeticket = function(cost, item)				-- Assign a Darkmoon Prize Ticket cost to an item.
	applycost(item, { "c", 515, cost });	-- Darkmoon Prize Ticket
	return item;
end
--- Assigns a Defiler's Scourgestone cost in Classic builds.
---@generic T: ATTObject
---@param cost number # Number of Defiler's Scourgestones required in Classic builds.
---@param item T # Object receiving the Defiler's Scourgestone currency cost in Classic builds.
---@return T # The input object with a Defiler's Scourgestone cost in Classic builds.
defilersscourgestone = function(cost, item)				-- Assigns a Defiler's Scourgestone cost in Classic builds.
	-- #if ANYCLASSIC
	applycost(item, { "c", DEFILERS_SCOURGESTONE, cost });
	-- #endif
	return item;
end
--- Assigns an Emblem of Conquest cost when supported and the applicable Classic phase.
---@param cost number # Number of Emblems of Conquest required before patch 4.0.1.
---@param item ATTObject # Object receiving the cost and the Wrath phase 2 flag in Classic builds.
---@return ATTObject # The input object with the applicable Emblem of Conquest cost and Classic phase.
emoc = function(cost, item)								-- Assigns an Emblem of Conquest cost when supported and the applicable Classic phase.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 221, cost });	-- Emblem of Conquest
	-- #endif
	return applyclassicphase(WRATH_PHASE_TWO, item);
end
--- Assigns an Emblem of Frost cost when supported and the applicable Classic phase.
---@param cost number # Number of Emblems of Frost required before patch 4.0.1.
---@param item ATTObject # Object receiving the cost and the Wrath phase 4 flag in Classic builds.
---@return ATTObject # The input object with the applicable Emblem of Frost cost and Classic phase.
emof = function(cost, item)								-- Assigns an Emblem of Frost cost when supported and the applicable Classic phase.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 341, cost });	-- Emblem of Frost
	-- #endif
	return applyclassicphase(WRATH_PHASE_FOUR, item);
end
--- Assigns an Emblem of Heroism cost when supported and the applicable Classic phase.
---@param cost number # Number of Emblems of Heroism required before patch 4.0.1.
---@param item ATTObject # Object receiving the cost and the Wrath phase 1 flag in Classic builds.
---@return ATTObject # The input object with the applicable Emblem of Heroism cost and Classic phase.
emoh = function(cost, item)								-- Assigns an Emblem of Heroism cost when supported and the applicable Classic phase.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 101, cost });	-- Emblem of Heroism
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
--- Assigns an Emblem of Triumph cost when supported and the applicable Classic phase.
---@param cost number # Number of Emblems of Triumph required before patch 4.0.1.
---@param item ATTObject # Object receiving the cost and the Wrath phase 3 flag in Classic builds.
---@return ATTObject # The input object with the applicable Emblem of Triumph cost and Classic phase.
emot = function(cost, item)								-- Assigns an Emblem of Triumph cost when supported and the applicable Classic phase.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 301, cost });	-- Emblem of Triumph
	-- #endif
	return applyclassicphase(WRATH_PHASE_THREE, item);
end
--- Assigns an Emblem of Valor cost when supported and the applicable Classic phase.
---@param cost number # Number of Emblems of Valor required before patch 4.0.1.
---@param item ATTObject # Object receiving the cost and the Wrath phase 1 flag in Classic builds.
---@return ATTObject # The input object with the applicable Emblem of Valor cost and Classic phase.
emov = function(cost, item)								-- Assigns an Emblem of Valor cost when supported and the applicable Classic phase.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 102, cost });	-- Emblem of Valor
	-- #endif
	return applyclassicphase(WRATH_PHASE_ONE, item);
end
--- Assign a Epicurean's Award cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Epicurean's Awards required.
---@param item T # Object receiving the Epicurean's Award currency cost.
---@return T # The input object with an Epicurean's Award cost.
epicurean = function(cost, item)						-- Assign a Epicurean's Award cost to an item.
	applycost(item, { "c", 81, cost });
	return item;
end
--- Assign a Flame-Blessed Iron cost to an item.
---@generic T: ATTObject
---@param cost number # Flame-Blessed Iron currency amount required; nonpositive amounts add no cost.
---@param item T # Object receiving the Flame-Blessed Iron currency cost.
---@return T # The input object with a Flame-Blessed Iron cost when the amount is positive.
fbiron = function(cost, item)						-- Assign a Flame-Blessed Iron cost to an item.
	if cost > 0 then applycost(item, { "c", 3090, cost }); end
	return item;
end
--- Assign a Gold cost to an item.
---@generic T: ATTObject
---@param cost number # Cost in gold, converted to copper by multiplying by 10,000.
---@param item T # Object receiving the gold cost entry.
---@return T # The input object with a gold cost converted to copper.
gold = function(cost, item)								-- Assign a Gold cost to an item.
	applycost(item, { "g", cost * 10000 });	-- Gold
	return item;
end
--- Assign an Heavy Savage Leather cost to an item.
---@generic T: ATTObject
---@param cost number # Number of Heavy Savage Leather items required; nonpositive amounts add no cost.
---@param item T # Object receiving the Heavy Savage Leather item cost.
---@return T # The input object with a Heavy Savage Leather cost when the amount is positive.
heavysavageleather = function(cost, item)				-- Assign an Heavy Savage Leather cost to an item.
	if cost > 0 then applycost(item, { "i", 56516, cost }); end
	return item;
end
--- Assign an Honor cost to an item. (modern).
---@generic T: ATTObject
---@param cost number # Modern Honor currency amount required; nonpositive amounts add no cost.
---@param item T # Object receiving the modern Honor currency cost.
---@return T # The input object with a modern Honor cost when the amount is positive.
honor = function(cost, item)							-- Assign an Honor cost to an item. (modern)
	if cost > 0 then applycost(item, { "c", HONOR, cost }); end
	return item;
end
--- Returns the input unchanged; the pre-Cataclysm Honor helper is not implemented.
---@generic T: ATTObject
---@param cost number # Intended pre-Cataclysm Honor amount; currently unused by this unimplemented helper.
---@param item T # Object returned unchanged while this helper is unimplemented.
---@return T # The input object unchanged; this helper is not implemented.
honorpoints = function(cost, item)						-- Returns the input unchanged; the pre-Cataclysm Honor helper is not implemented.
	-- #if BEFORE CATA
	-- TODO: Add the before Cata Honor System
	--applycost(item, { "c", , cost });	-- Honor
	-- #endif
	return item;
end
--- Assigns a Mark of Honor item cost on supported patches.
---@generic T: ATTObject
---@param cost number # Number of Mark of Honor items required after patch 7.0.3.22248.
---@param item T # Object receiving the Mark of Honor item cost when supported by the patch.
---@return T # The input object with a Mark of Honor item cost on supported patches.
moh = function(cost, item)								-- Assigns a Mark of Honor item cost on supported patches.
	-- #if AFTER 7.0.3.22248
	applycost(item, { "i", 137642, cost });	-- Mark of Honor
	-- #endif
	return item;
end
--- Assigns a Sidereal Essence cost in Classic builds.
---@generic T: ATTObject
---@param cost number # Sidereal Essence currency amount required in Classic builds.
---@param item T # Object receiving the Sidereal Essence currency cost in Classic builds.
---@return T # The input object with a Sidereal Essence cost in Classic builds.
siderealessence = function(cost, item)					-- Assigns a Sidereal Essence cost in Classic builds.
	-- #if ANYCLASSIC
	applycost(item, { "c", SIDEREAL_ESSENCE, cost });
	-- #endif
	return item;
end
--- Assigns a Spirit Shard item or currency cost according to the patch.
---@generic T: ATTObject
---@param cost number # Number of Spirit Shards required, as items or currency depending on the patch.
---@param item T # Object receiving the patch-appropriate Spirit Shard item or currency cost.
---@return T # The input object with the patch-appropriate Spirit Shard item or currency cost.
spiritshard = function(cost, item)						-- Assign a Spirit Shard item or currency cost.
	-- #if AFTER 8.0.1
	applycost(item, { "c", 1704, cost });	-- Spirit Shard (currency)
	-- #else
	applycost(item, { "i", 28558, cost });	-- Spirit Shard (item)
	-- #endif
	return item;
end
--- Assigns a Tol Barad Commendation currency cost.
---@generic T: ATTObject
---@param cost number # Number of Tol Barad Commendations required.
---@param item T # Object receiving the Tol Barad Commendation currency cost.
---@return T # The input object with a Tol Barad Commendation cost.
tolbaradcommendation = function(cost, item)				-- Assigns a Tol Barad Commendation currency cost.
	applycost(item, { "c", 391, cost });	-- Tol Barad Commendation
	return item;
end
--- Assign a Traders Tender cost to an item.
---@generic T: ATTObject
---@param cost number # Trader's Tender currency amount required; nonpositive amounts add no cost.
---@param item T # Object receiving the Trader's Tender currency cost.
---@return T # The input object with a Trader's Tender cost when the amount is positive.
traderstender = function(cost, item)                	-- Assign a Traders Tender cost to an item.
	if cost > 0 then applycost(item, { "c", TRADERS_TENDER, cost }); end
	return item;
end
--- Assigns a Venture Coin currency cost before patch 4.0.1.
---@generic T: ATTObject
---@param cost number # Number of Venture Coins required before patch 4.0.1.
---@param item T # Object receiving the Venture Coin currency cost before patch 4.0.1.
---@return T # The input object with a Venture Coin cost before patch 4.0.1.
venture = function(cost, item)							-- Assigns a Venture Coin currency cost before patch 4.0.1.
	-- #if BEFORE 4.0.1
	applycost(item, { "c", 201, cost });	-- Venture Coin
	-- #endif
	return item;
end
--- Assigns a Champion's Writ item cost and the applicable Classic phase.
---@param item ATTObject # Object receiving a cost of one Champion's Writ and the Wrath phase 2 flag in Classic builds.
---@return ATTObject # The input object with a Champion's Writ cost and its applicable Classic phase.
writ = function(item)									-- Assigns a Champion's Writ item cost and the applicable Classic phase.
	applycost(item, { "i", 46114, 1 });	-- 1x Champion's Writ
	return applyclassicphase(WRATH_PHASE_TWO, item);
end

-- Achievement Shortcuts
--- Create an ACHIEVEMENT Object.
---@param id AchievementID # Achievement ID, or Alliance achievement ID for a faction-specific pair.
---@param altID? AchievementID # Optional Horde achievement ID paired with the Alliance achievement ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Achievement object with the requested ID.
---@overload fun(id: AchievementID, t?: ATTObject|ATTObjectArray): ATTAchievementObject
ach = function(id, altID, t)							-- Create an ACHIEVEMENT Object
	---@type AchievementID|ATTObject|ATTObjectArray|nil
	local altID = altID;
	if t or type(altID) == "number" then
		---@cast altID AchievementID|nil
		t = struct("allianceAchievementID", id, t or {});
		t.hordeAchievementID = altID;
	else
		---@cast altID ATTObject|ATTObjectArray|nil
		t = struct("achievementID", id, altID);
	end
	-- #if AFTER WRATH
	-- Apply a default timeline of 3.0.2 to Achievements
	if not t.timeline then
		t._defaulttimeline = { ADDED_3_0_2 }
	end
	-- #endif
	---@cast t ATTAchievementObject
	return t;
end
--- Create an ACHIEVEMENT Object with getting Exalted with a Faction as a requirement.
---@param id AchievementID # Achievement ID.
---@param factionID FactionID # Reputation faction with which Exalted standing is required.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Achievement object with a faction reputation requirement.
achWithRep = function(id, factionID, t)					-- Create an ACHIEVEMENT Object with getting Exalted with a Faction as a requirement.
	t = ach(id, t);
	t.minReputation = { factionID, EXALTED }
	return t;
end
--- Creates an achievement without applying the currently unused faction list.
---@param id AchievementID # Achievement ID.
---@param factions FactionID[] # Faction IDs accepted by the signature; currently unused.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Achievement object; the supplied faction list is not applied.
achWithReps = function(id, factions, t)					-- Create an achievement; factions are currently unused.
	return ach(id, t);
end
--- Creates an achievement without applying the currently unused faction list.
---@param id AchievementID # Achievement ID.
---@param factions FactionID[] # Faction IDs accepted by the signature; currently unused.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Achievement object; the supplied faction list is not applied.
achWithAnyReps = function(id, factions, t)				-- Create an achievement; factions are currently unused.
	return ach(id, t);
end
--- Create an ACHIEVEMENT Object whose Criteria will not be adjusted by AchievementDB info.
---@param id AchievementID # Achievement ID, or Alliance achievement ID for a faction-specific pair.
---@param altID? AchievementID # Optional Horde achievement ID paired with the Alliance achievement ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Achievement object whose criteria bypass automatic adjustment.
---@overload fun(id: AchievementID, t?: ATTObject|ATTObjectArray): ATTAchievementObject
achraw = function(id, altID, t)							-- Create an ACHIEVEMENT Object whose Criteria will not be adjusted by AchievementDB info
	t = ach(id, altID, t);
	if t then
		if t.sym then
			error("Do not use 'sym' on achievement: "..id..". It causes criteria to be placed under Hidden Quest Triggers")
		end
		-- TODO: hopefully we can define a better way for these Criteria to exist such that the Criteria can be moved as expected again
		-- they were being moved under HQT defined in _quests via AchievementDB from Blizzard
		-- but for now prevent the Criteria from disappearing into the Unsorted window
		bubbleDown({ _noautomation = true }, t);
	end
	return t;
end
--- Create an ACHIEVEMENT Object whose Criteria is simply to complete a partial set of a broader Achievement's Criteria.
---@param id AchievementID # Achievement ID.
---@param fullAch AchievementID # Broader achievement whose criteria supply this partial achievement.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementObject # Partial achievement object linked to the broader achievement.
achpart = function(id, fullAch, t)						-- Create an ACHIEVEMENT Object whose Criteria is simply to complete a partial set of a broader Achievement's Criteria
	t = ach(id, t)
	t._noautomation = true
	t.sym = {{"partial_achievement",fullAch}}
	return t
end

-- SHORTCUTS for Object Class Types
--- Create an ACHIEVEMENT CATEGORY Object.
---@param id AchievementCategoryID # Achievement category ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Achievement category object.
achcat = function(id, t)								-- Create an ACHIEVEMENT CATEGORY Object
	return struct("achievementCategoryID", id, t);
end
achievementCategory = achcat;
--- Create an ARTIFACT Object.
---@param id ArtifactID # Artifact weapon appearance ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Artifact appearance object.
artifact = function(id, t)								-- Create an ARTIFACT Object
	return struct("artifactID", id, t);
end
--- Create a AZERITE ESSENCE Object.
---@param id AzeriteEssenceID # Azerite essence ID.
---@param rank? integer # Optional Azerite essence rank.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Azerite essence object with the requested rank.
---@overload fun(id: AzeriteEssenceID, t?: ATTObject|ATTObjectArray): ATTObject
az = function(id, rank, t)								-- Create a AZERITE ESSENCE Object
	---@type integer|ATTObject|ATTObjectArray|nil
	local rank = rank;
	if t or type(rank) == "number" then
		---@cast rank integer|nil
		t = struct("azeriteessenceID", id, t or {});
		t.rank = rank;
		return t;
	else
		---@cast rank ATTObject|ATTObjectArray|nil
		return struct("azeriteessenceID", id, rank);
	end
end
azeriteEssence = az;									-- Create a AZERITE ESSENCE Object. (alternative shortcut)
--- Create an Item which is marked as having obtained the Heart of Azeroth.
---@param id ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item marked as having obtained the Heart of Azeroth.
azeriteItem = function(id, t)							-- Create an Item which is marked as having obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "HOA" };
	return t;
end
--- Create an Item which is marked as having not obtained the Heart of Azeroth.
---@param id ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item marked as not having obtained the Heart of Azeroth.
azewrongItem = function(id, t)							-- Create an Item which is marked as having not obtained the Heart of Azeroth
	t = i(id, t);
	t.customCollect = { "!HOA" };
	return t;
end
--- Create a CAMPSITE Object.
---@param id CampsiteID # Warband campsite scene ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Campsite object.
campsite = function(id, t)								-- Create a CAMPSITE Object
	return struct("campsiteID", id, t);
end
--- Create a BATTLE PET Object (Battle Pet == Species == Pet).
---@param id BattlePetSpeciesID # Battle pet species ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTBattlePetObject # Battle pet species object.
battlepet = function(id, t)								-- Create a BATTLE PET Object (Battle Pet == Species == Pet)
	return struct("speciesID", id, t);
end
pet = battlepet;										-- Create a BATTLE PET Object (alternative shortcut)
p = battlepet;											-- Create a BATTLE PET Object (alternative shortcut)
--- Create a BATTLE PET ABILITY Object.
---@param id BattlePetAbilityID # Battle pet ability ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Battle pet ability object.
battlepetability = function(id, t)						-- Create a BATTLE PET ABILITY Object
	return struct("petAbilityID", id, t);
end
bpa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
pa = battlepetability;									-- Create a BATTLE PET ABILITY Object (alternative shortcut)
--- Create a BATTLE PET TYPE Object.
---@param id BattlePetTypeID # Battle pet family/type ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Battle pet type object.
battlepettype = function(id, t)							-- Create a BATTLE PET TYPE Object
	return struct("petTypeID", id, t);
end
bpt = battlepettype;									-- Create a BATTLE PET TYPE Object (alternative shortcut)
--- Create a CATEGORY Object.
---@param id ATTCategoryID # ATT category ID used for localized names and icons.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Category object.
category = function(id, t)								-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
cat = category
--- Create a CHARACTER CLASS Object.
---@param id ClassID # Character class ID.
---@param spec ChrSpecializationID # Specialization ID encoded into the class ID in the three-argument form.
---@param t ATTObject|ATTObjectArray # Object fields or child objects for the class or specialization header.
---@return ATTObject # Class object for the requested class or specialization.
---@overload fun(id: ClassID, t?: ATTObject|ATTObjectArray): ATTObject
cl = function(id, spec, t)								-- Create a CHARACTER CLASS Object
	---@type ChrSpecializationID|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local spec, t = spec, t;
	-- spec is optional
	if not t then
		---@cast spec ATTObject|ATTObjectArray|nil
		t = spec;
	else
		---@cast spec ChrSpecializationID
		if spec == FROST or spec == RESTORATION or spec == HOLY or spec == PROTECTION then
			if id == MAGE then
				spec = 64;
			elseif id == SHAMAN then
				spec = 264;
			elseif id == PRIEST then
				spec = 257
			elseif id == WARRIOR then
				spec = 73;
			end
		end
		id = id + (spec / 1000)
		t = togroups(t)
	end;
	return struct("classID", id, t);
end
--- Flag all nested content to require achieving Challenge Master FoS (Realm Best times for Challenge Modes in MoP and WoD).
---@param t ATTObject|ATTObjectArray # Object or child groups whose nested content receives the Challenge Master requirement.
---@return ATTObject|ATTObjectArray # Input object or groups with the Challenge Master requirement propagated.
challengemaster = function(t)							-- Flag all nested content to require achieving Challenge Master FoS (Realm Best times for Challenge Modes in MoP and WoD)
	return bubbleDown({ cm = true }, t);
end
--- Create a CHARACTER CLASS Object without a Class Lock.
---@param id ClassID # Character class ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTHeaderObject # Class header without a class lock.
clWithoutLock = function(id, t)							-- Create a CHARACTER CLASS Object without a Class Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Class;
	return t;
end
--- Create a CREATURE Object.
---@param id CreatureID # Creature entry ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTCreatureObject # Creature object.
creature = function(id, t)								-- Create a CREATURE Object
	return struct("creatureID", id, t);
end
cr = creature;											-- Create a CREATURE Object (alternative shortcut)
--- Create an Achievement Criteria Object (localized automatically).
---@param criteriaUID CriteriaID # Achievement criterion ID or legacy criterion index.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTAchievementCriteriaObject # Achievement criteria object.
crit = function(criteriaUID, t)							-- Create an Achievement Criteria Object (localized automatically)
	if not t then t = {};
	elseif not t.groups then
		if isarray(t) then
			t = { groups = t };
		end
	end
	if (t.groups or t.g) and #(t.groups or t.g) > 0 and false then
		error(table.concat({"Do not nest content (g/groups) inside Achievement Criteria:",criteriaUID}))
	end
	if t.achievementID then
		-- print(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
		-- error(table.concat({"Do not use AchievementID:",t.achievementID," inside Achievement Criteria:",criteriaUID," ==> Use '_quests', '_npcs', 'cost', or 'provider' to define where/how this Criteria is granted instead of directly nesting it in Source."}))
	end
	if t.questID then
		error(table.concat({"Do not use 'questID' in crit(",criteriaUID,") ==> [\"_quests\"]={",t.questID,"}"}))
	end
	if t.creatureID or t.npcID then
		error(table.concat({"Do not use 'creatureID' or 'npcID' in crit(",criteriaUID,") ==> [\"crs\"]={",t.creatureID or t.npcID,"}"}))
	end
	t.criteriaID = criteriaUID;
	-- Apply a default timeline of 3.0.2 to Criteria
	if not t.timeline then
		t._defaulttimeline = { ADDED_3_0_2 }
	end
	---@cast t ATTAchievementCriteriaObject
	return t;
end
--- Create a CURRENCY Object.
---@param id CurrencyID # Currency type ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTCurrencyObject # Currency object.
currency = function(id, t)								-- Create a CURRENCY Object
	return struct("currencyID", id, t);
end
--- Create a DIFFICULTY Object.
---@param id DifficultyID|DifficultyID[] # Single instance difficulty ID or a list to combine into a multi-difficulty ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTDifficultyObject # Difficulty object, including any configured multi-difficulty metadata.
d = function(id, t)										-- Create a DIFFICULTY Object
	if not id then
		error("INVALID DIFFICULTY", id);
	end
	local difficultyID, ids = GetOrCreateMultiDifficulty(id);
	t = struct("difficultyID", difficultyID, t);
	if t then
		local db = DifficultyDB[difficultyID];
		if db then
			if db.simplify then
				-- must preserve the multi-difficultyID for parser/instance helper, since changing the difficultyID secretly
				-- inside a shortcut function is anything but 'simple'
				-- TODO: clean this up and make it Parser logic instead to change the id values
				t._multiDifficultyID = difficultyID
				--- Simplified DifficultyDB entries use IDs registered from difficulty lists.
				---@cast ids -nil
				difficultyID = ids[1];
				local difficulties = {}
				for i=2,#ids,1 do
					difficulties[#difficulties + 1] = ids[i];
				end
				t.difficultyID = difficultyID;
				if #difficulties > 0 then
					t.difficulties = difficulties
				end
				ids = nil;
			end
			-- #if AFTER MOP
			t.modID = db.modID;
			-- #endif
		end

		if ids then
			local oldDifficulties = t.difficulties;
			if oldDifficulties then
				local merged,dict,count = {},{},1;
				for i,d in ipairs(oldDifficulties) do
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				local firstID = ids[1];
				for i=2,#ids,1 do
					local d = ids[i];
					if not dict[d] then
						dict[d] = count;
						merged[count] = d;
						count = count + 1;
					end
				end
				if dict[firstID] then
					table.remove(merged, dict[firstID]);
				end
				table.insert(merged, 1, firstID);
				t.difficulties = merged;
			else
				t.difficulties = ids;
			end
		end
	end
	return t;
end
--- Create an ENCOUNTER Object (Post-Wrath).
---@param id JournalEncounterID # Encounter Journal encounter ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTEncounterObject # Encounter object.
e = function(id, t)										-- Create an ENCOUNTER Object (Post-Wrath)
	return struct("encounterID", id, t);
end
--- Flag all nested content as requiring Elite PvP gameplay.
---@param t ATTObject|ATTObjectArray # Object or child groups whose nested content receives the Elite PvP requirement.
---@return ATTObject|ATTObjectArray # Input object or groups with the Elite PvP requirement propagated.
elitepvp = function(t)									-- Flag all nested content as requiring Elite PvP gameplay
	return bubbleDown({
		pvp = true,
		u = ELITE_PVP_REQUIREMENT,					-- CRIEVE NOTE: This currently uses the same filter as our other filters. This should probably be changed to act like the PVP filter or make "pvp" a 2 or something.
	}, t);
end
local PatchDecimals = 2
local RevDecimals = 2
local PatchShift = 10 ^ PatchDecimals
local RevShift = 10 ^ RevDecimals
--- Create an EXPANSION Object.
---@param id ExpansionID # Expansion ID.
---@param patch number # Patch component encoded into the expansion ID in the three-argument form.
---@param t ATTObject|ATTObjectArray # Object fields or child objects for the expansion or patch header.
---@return ATTObject # Expansion or patch object.
---@overload fun(id: ExpansionID, t?: ATTObject|ATTObjectArray): ATTObject
expansion = function(id, patch, t)						-- Create an EXPANSION Object
	---@type number|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local patch, t = patch, t;
	-- patch is optional
	local hasPatch
	if not t then
		---@cast patch ATTObject|ATTObjectArray|nil
		t = patch;
	else
		---@cast patch number
		hasPatch = true
		id = id + (patch / PatchShift);
		t = togroups(t);
	end
	t = struct("expansionID", id, t);
	-- TEMP until timeline use within bubbleDown is removed
	if t.timeline then
		-- print("WARN: Removing timeline from expansion header",id,unpack(t.timeline))
		t.timeline = nil;
	end
	if t.forcetimeline then
		t.timeline = t.forcetimeline;
		t.forcetimeline = nil;
	end
	if t and not t.timeline then
		-- when an expansion header uses a specific patch, we can assume it's intended to have that specific timeline applied
		-- note that this will cause 'awp' values within NYI context, which isn't technically correct
		if hasPatch then
			---@cast patch number
			local patchstring = string.format("%.2f", patch)
			t.timeline = { "added " .. math.floor(id) ..".".. patchstring }
		else
			local deftimeline = EXPANSION_DEFAULT_TIMELINES[id]
			if not deftimeline then
				print("WARN: No EXPANSION_DEFAULT_TIMELINES found for expansionID:",id)
				t.timeline = { "added " .. math.floor(id) .. ".0" }
			else
				t.timeline = { deftimeline }
			end
		end
	end
	return t;
end
--- Create an EXPANSION Object with a specified Timeline (for use as a Header)
---@param id ExpansionID # Expansion ID.
---@param timeline? ATTTimelineEvent[]|ATTIgnoredValue # Timeline to assign, or the ignore sentinel.
---@param t? ATTObject|ATTObjectArray # Optional object fields or child objects.
---@return ATTObject # Expansion header with the supplied timeline when valid.
expansionHeader = function(id, timeline, t)
	t = expansion(id, t)
	if timeline == IGNORED_VALUE then
		return t
	end
	if not timeline or not isarray(timeline) then
		print("WARN: Use of 'expansionHeader' without a valid 'timeline': "..tostring(timeline))
		return t
	end
	t.timeline = timeline
	return t
end
--- Create an EXPLORATION Object.
---@param id ExplorationID # Exploration area ID.
---@param t? ATTObject|ATTObjectArray|string # Optional object fields or child objects; legacy string values are ignored.
---@return ATTExplorationObject # Exploration object.
exploration = function(id, t)							-- Create an EXPLORATION Object
	if type(t) == "string" then
		t = nil;
	end
	return struct("explorationID", id, t);
end
--- Create an EXPLORATION Object (which fails to return in exploration API and must be visited manually for name-based area check to capture).
---@param id ExplorationID # Exploration area ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTExplorationObject # Exploration object marked for manual visitation.
visit_exploration = function(id, t)						-- Create an EXPLORATION Object (which fails to return in exploration API and must be visited manually for name-based area check to capture)
	t = struct("explorationID", id, t)
	t.collectible = false	-- only way to cache these is to visit manually -- too tedious :/
	-- #IF ANYCLASSIC
	-- leave it up to the ExplorationAreaPositionDB for that Classic Version
	t.coord = nil
	t.coords = nil
	-- Flag as collectible if the areaID is confirmed as validly-working in that Classic Version
	if ValidExplorationAreaIDsForClassic[id] then
		t.collectible = nil
	else
		-- completely omit non-valid explorations from Classic for now since they're connected to Exploration Achievements
		t._remove=true
	end
	-- #ENDIF
	return t
end
map_exploration = visit_exploration;
--- Create a FACTION Object.
---@param id FactionID # Reputation faction ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTFactionObject # Faction object.
faction = function(id, t)								-- Create a FACTION Object
	return struct("factionID", id, t);
end
--- Create a FIRST CRAFT Object.
---@param id RecipeID # Crafting recipe spell ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTFirstCraftObject # First-craft object for the recipe.
firstcraft = function(id, t)							-- Create a FIRST CRAFT Object
	t = struct("firstcraftID", id, t);
	t.provider = { "s", id };
	return t;
end
fc = firstcraft;
--- Create a FLIGHT PATH Object.
---@param id FlightPathID # Flight path taxi node ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTFlightPathObject # Flight path object.
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightpathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
--- Create a FILTER Object.
---@param id FilterID # ATT filter/category ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Filter object.
filter = function(id, t)								-- Create a FILTER Object
	if not id or id < 0 then
		error("Used filter() with bad filter value "..(id or "")..". Did you mean to use n()?")
	end
	return struct("f", id, t);
end
f = filter;												-- Create a FILTER Object (Alternative)
--- Create a FOLLOWER Object.
---@param id FollowerID # Garrison follower ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Follower object.
follower = function(id, t)								-- Create a FOLLOWER Object
	return struct("followerID", id, t);
end
--- Create a GARRISON BUILDING Object.
---@param id GarrisonBuildingID # Garrison building ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Garrison building object.
garrisonBuilding = function(id, t)						-- Create a GARRISON BUILDING Object
	return struct("buildingID", id, t);
end
gb = garrisonBuilding;									-- Create a GARRISON BUILDING Object (Alternative)
--- Create a GARRISON TALENT Object.
---@param id GarrisonTalentID # Garrison or order hall research talent ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Garrison talent object.
garrisonTalent = function(id, t)						-- Create a GARRISON TALENT Object
	return struct("talentID", id, t);
end
--- Create an GARRISON TALENT Object (Alternative).
---@param id GarrisonTalentID # Garrison or order hall research talent ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Garrison talent object.
gt = function(id, t)									-- Create an GARRISON TALENT Object (Alternative)
	return struct("talentID", id, t);
end
--- Create a GEAR SET Object (IE: "Vestments of Prophecy").
---@param id TransmogSetID # Transmog gear set ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Gear set object.
gs = function(id, t)									-- Create a GEAR SET Object (IE: "Vestments of Prophecy")
	return struct("setID", id, t);
end
--- Create a GEAR SET HEADER Object (IE: "Season 1").
---@param id TransmogSetID # Gear set ID whose shared label is used as the header name.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Gear set header object.
gsh = function(id, t)									-- Create a GEAR SET HEADER Object (IE: "Season 1")
	return struct("setHeaderID", id, t);
end
--- Create a GEAR SET SUB HEADER Object (IE: "Gladiator").
---@param id TransmogSetID # Gear set ID whose description is used as the subheader name.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Gear set subheader object.
gssh = function(id, t)									-- Create a GEAR SET SUB HEADER Object (IE: "Gladiator")
	return struct("setSubHeaderID", id, t);
end
--- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination.
---@param ty string|integer # Header type controlling automatic naming.
---@param id ATTHeaderID # In-game object identifier resolved using the automatic header type.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTHeaderObject # Automatic header for the requested in-game object.
header = function(ty, id, t)							-- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination
	if type(ty) == "string" or id >= 0 then
		-- Create an Automatic Header which will use the plain Text of the specified in-game object based on Type-ID combination
		t = struct("headerID", id, t);
		if not ty then
			error("Invalid header() type for id",id);
		end
		t.type = ty;
	else
		-- This is a custom header
		t = struct("headerID", ty, id);
	end
	---@cast t ATTHeaderObject
	return t;
end
--- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance).
---@param id ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Heirloom item object.
heir = function(id, t)									-- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance)
	return struct("itemID", id, t);
end
--- Create a HQT (Hidden Quest Tracker) Object.
---@param id QuestID # Quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Hidden quest trigger object.
hqt = function(id, t)									-- Create a HQT (Hidden Quest Tracker) Object
	t = q(id, t);
	if not t.type then
		t.type = "hqt"
	end
	return t
end
--- Creates a Hidden Quest Trigger object related to bonus Faction reputation from a given Source. Assumes typical Exalted-based rep unless overridden in MAX_FACTION_RANKS
---@param questID QuestID # Hidden quest ID tracking the source's bonus reputation.
---@param factionID FactionID # Faction ID used for the default reputation cap, from `MAX_FACTION_RANKS` or rank 8.
---@param t? ATTObject|ATTObjectArray # Optional trigger fields or an array of child objects.
---@return ATTQuestObject # Hidden quest trigger linked to faction reputation.
hqt_bonusRep = function(questID, factionID, t)
	t = t or {}
	-- TODO: adjust with 'givesReputation' when implemented
	if not t.maxReputation then
		t.maxReputation = { factionID, MAX_FACTION_RANKS[factionID] or 8 }
	end
	t.type = "hqtbr"
	return hqt(questID, t)
end
--- Creates a Hidden Quest Trigger object related to bonus Faction reputation from a given Source. Assumes typical Renown-based rep (rank 20 max) unless overridden in MAX_FACTION_RANKS
---@param questID QuestID # Hidden quest ID tracking the source's bonus reputation.
---@param factionRenownID FactionID # Renown faction ID used for the default reputation cap, from `MAX_FACTION_RANKS` or rank 20.
---@param t? ATTObject|ATTObjectArray # Optional trigger fields or an array of child objects.
---@return ATTQuestObject # Hidden quest trigger linked to faction renown.
hqt_bonusRenown = function(questID, factionRenownID, t)
	t = t or {}
	-- TODO: adjust with 'givesReputation' when implemented
	if not t.maxReputation then
		t.maxReputation = { factionRenownID, MAX_FACTION_RANKS[factionRenownID] or 20 }
	end
	return hqt_bonusRep(questID, factionRenownID, t)
end
--- Creates a weekly Hidden Quest Trigger object related to bonus Faction reputation from a given Source. Assumes typical Renown-based rep (rank 20 max) unless overridden in MAX_FACTION_RANKS
---@param questID QuestID # Hidden quest ID tracking the source's weekly bonus reputation.
---@param factionRenownID FactionID # Renown faction ID used for the default reputation cap, from `MAX_FACTION_RANKS` or rank 20.
---@param t? ATTObject|ATTObjectArray # Optional trigger fields or an array of child objects.
---@return ATTQuestObject # Weekly hidden quest trigger linked to faction renown.
hqt_bonusRenown_weekly = function(questID, factionRenownID, t)
	local t = hqt_bonusRenown(questID, factionRenownID, t)
	t.isWeekly = true
	return t
end
--- Create an ILLUSION Object (only necessary for illusions without itemIDs).
---@param id IllusionID # Weapon enchantment illusion source ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Illusion object.
illusion = function(id, t)								-- Create an ILLUSION Object (only necessary for illusions without itemIDs)
	return struct("illusionID", id, t);
end
ill = illusion;											-- Create an ILLUSION Object

-- Create an ITEM Object
--- Creates an item object for the requested ID.
---@param id ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item object for the requested ID.
item = function(id, t)
	return struct("itemID", id, t);
end
i = item;												-- Create an ITEM Object (alternative shortcut)
--- Create an ITEM Object that ignores bonus IDs.
---@param id ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item object configured to ignore bonus IDs.
ig = function(id, t)									-- Create an ITEM Object that ignores bonus IDs.
	t = struct("itemID", id, t);
	-- #if NOT ANYCLASSIC
	t.ignoreBonus = true;
	-- #endif
	return t;
end
--- Create an ITEM Object which can be Upgraded to another Item version (specified by ModID/BonusID).
---@param itemID ItemID # Base item ID.
---@param modID? ModID # Optional modifier ID of the upgraded variant; `modID` or `bonusID` must be nonzero.
---@param bonusID? BonusID # Optional bonus ID of the upgraded item variant.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Upgradeable item object.
iupgrade = function(itemID, modID, bonusID, t)			-- Create an ITEM Object which can be Upgraded to another Item version (specified by ModID/BonusID)
	if (modID or 0) == 0 and (bonusID or 0) == 0 then
		error("Item Upgrade needs ModID or BonusID!");
	end
	local i = i(itemID, t);
	-- use ModID/BonusID combination to represent the new Item available via Upgrading
	i.up = (tonumber(modID) or 0) + ((tonumber(bonusID) or 0) / 100000);
	return i;
end
--- Create an ITEM which imports Wago Ensemble data during Parse.
---@param itemID ItemID # Base item ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item object configured to import ensemble data.
iensemble = function(itemID, t)							-- Create an ITEM which imports Wago Ensemble data during Parse
	-- Include '_IgnoreSharedEnsembleByQuestID' in the RARE situation that two distinct ensembles are given the same QuestID by Blizz
	local i = i(itemID, t);
	i.type = "ensembleID"
	return i
end
--- Create an exact ITEM Object (specified by ModID/BonusID).
---@param itemID ItemID # Base item ID.
---@param modID? ModID # Optional modifier ID selecting the exact item variant.
---@param bonusID? BonusID # Optional bonus ID selecting the exact item variant.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTItemObject # Item object for the requested exact variant.
iexact = function(itemID, modID, bonusID, t)			-- Create an exact ITEM Object (specified by ModID/BonusID)
	local i = i(itemID, t);
	if modID and modID ~= 0 then
		i.modID = modID;
	end
	if bonusID and bonusID ~= 0 then
		i.bonusID = bonusID;
	end
	return i;
end
--- Creates an item-drop Hidden Quest Trigger object.
---@param itemID ItemID # Item ID used as the trigger's provider and automatic-name source.
---@param questID QuestID # Hidden quest ID completed when the item drops.
---@param t? ATTObject|ATTObjectArray # Trigger metadata or child objects to attach to the hidden quest.
---@return ATTQuestObject # Hidden quest trigger associated with an item drop.
itemDropHQT = function(itemID, questID, t)
	t = t or {}
	t.provider = {"i",itemID}	-- Item
	return hqt(questID, name(HEADERS.Item, itemID, t))	-- Item Drop
end
--- This function helps build an item container for a "sack" or "bag" or some other type of reward structure.
---@param id ItemID # Item ID of the container that provides the listed contents.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTHeaderObject # Header representing the item container and its contents.
container = function(id, t)								-- This function helps build an item container for a "sack" or "bag" or some other type of reward structure.
	local bag = header(HEADERS.Item, id, t);
	local providers = bag.providers;
	if not providers then
		providers = {};
		bag.providers = providers;
	end
	providers[#providers + 1] = { "i", id };
	if bag.provider then
		providers[#providers + 1] = bag.provider;
		bag.provider = nil;
	end
	return bag;
end
--- This function helps build proper listing for 'Salvage' Recipes and their visible 'Display Item'.
---@param recipeID RecipeID # Salvage recipe spell ID added as a provider.
---@param displayItemID ItemID # Item ID used for the salvage recipe display and container provider.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTHeaderObject # Header representing the salvage recipe and display item.
salvagerecipe = function(recipeID, displayItemID, t)	-- This function helps build proper listing for 'Salvage' Recipes and their visible 'Display Item'
	local item = container(displayItemID, t)
	local providers = item.providers
	providers[#providers + 1] = { "s", recipeID }
	return item
end

--- Creates an instance object for the requested journal ID.
---@param id JournalInstanceID # Encounter Journal instance ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTInstanceObject # Instance object.
inst = function(id, t)									-- Create an INSTANCE Object
	t = struct("instanceID", id, t);

	-- #if BEFORE WRATH
	-- Not yet supported in classic.
	if t and (t.groups or t.g) then
		-- Convert to a MAP ID.
		if not t.mapID then
			if t.maps then
				t.mapID = t.maps[1];
				table.remove(t.maps, 1);
				if #t.maps < 1 then
					t.maps = nil;
				end
			else
				--error("Instance Missing a MapID: " .. id);
			end
		end
	end
	-- #endif
	return t;
end

--- Creates a map object for the requested UI map ID.
---@param id UiMapID # UI map ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTMapObject # Map object.
map = function(id, t)									-- Create a MAP Object
	if t then
		-- do not attach achievements to maps
		if t.achievementID then
			error("Do not attach 'achievementID' to a map.")
		end
	end
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
--- Create an MISSION Object.
---@param id MissionID # Garrison mission ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTMissionObject # Garrison mission object.
mission = function(id, t)								-- Create an MISSION Object
	return struct("missionID", id, t);
end
mi = mission											-- Create a MISSION Object (Alternative)
--- Create a MOLE MACHINE Quest Object.
---@param questID? QuestID # Optional character unlock quest ID; omitted to create the Mole Machine NPC instead.
---@param explorationID ExplorationID # Exploration area ID used to name the unlock quest.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject|ATTNPCObject # Quest or NPC object for the mole machine.
molemachine = function(questID, explorationID, t)		-- Create a MOLE MACHINE Quest Object
	if questID then
		t = q(questID, name(HEADERS.Exploration, explorationID, t))
		t.type = "characterUnlockQuestID"
		if t and not t.provider then
			t.provider = { "n", 143925 };	-- Dark Iron Mole Machine
		end
	else
		t = struct("npcID", 143925, t);	-- Dark Iron Mole Machine
	end
	if t then
		if not t.icon then
			t.icon = 1786409;
		end
		if not t.timeline then
			t._defaulttimeline = { ADDED_8_0_1 };
		end
		if not t.races then
			t.races = { DARKIRON };
		end
	end
	---@cast t ATTQuestObject|ATTNPCObject
	return t;
end
--- Create a MOUNT Object, which is just a spellID with a filter.
---@param id MountID # Mount spell ID used by ATT.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTMountObject # Mount object.
mount = function(id, t)									-- Create a MOUNT Object, which is just a spellID with a filter.
	return struct("mountID", id, t);
end

--- Creates an NPC/header object. With a nil `id`, this preserves the legacy behavior of returning `unpack(t)`.
---@param id? ATTHeaderID|NPCID|CreatureID # Positive NPC/creature ID or negative custom header ID; nil returns unpacked `t`.
---@param t? ATTObject|ATTObjectArray # Optional object fields or child objects; unpacked directly when `id` is nil.
---@return ATTNPCObject|ATTHeaderObject|ATTObject|nil first # First NPC or header object, or the first unpacked legacy value when the ID is nil.
---@return ATTObject|nil ... # additional Values returned only by the legacy `id == nil` + array form.
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
	if not id then
		print("NPC ID Missing for n() header");
		--[[
		-- Uncomment this if something from retail sneaks past the header checker again.
		for i,o in ipairs(t) do
			print("  " .. i .. ": ");
			for key,value in pairs(o) do
				if key == "groups" or key == "g" then
					print("    " .. key .. ": ");
					for j,p in ipairs(value) do
						print("    " .. j .. ": ");
						for key2,value2 in pairs(p) do
							if key2 == "groups" or key2 == "g" then
								print("    " .. key2 .. ": TRIMMED");
							else
								print("    " .. key2 .. " - " .. tostring(value2));
							end
						end
					end
				else
					print("    " .. key .. " - " .. tostring(value));
				end
			end
		end
		]]--
		if t then
			return unpack(t);
		else
			return nil;
		end
	end
	---@cast id ATTHeaderID|NPCID|CreatureID
	-- #IF NOT ANYCLASSIC
	-- Retail Cleanliness checks
	if id == COMMON_BOSS_DROPS or
		id == COMMON_VENDOR_ITEMS or
		id == DROPS
	then
		-- Items contained under these Header values will automatically list under the respective NPCs in minilists
		if t.crs or t.cr then
			t.maps = nil;
			t.map = nil;
		end
	end
	-- #ENDIF
	-- Temporary solution until we nuke headers using this shortcut
	return struct(id > 0 and "npcID" or "headerID", id, t);
end
n = npc;												-- Create an NPC Object (alternative shortcut)
--- Create an NPC Object which is Conditional (assign u = CONDITIONALLY_AVAILABLE for Retail).
---@param id ATTHeaderID|NPCID|CreatureID # Positive NPC/creature ID or negative custom header ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTNPCObject|ATTHeaderObject # Conditional NPC or header object.
n_conditional = function(id, t)							-- Create an NPC Object which is Conditional (assign u = CONDITIONALLY_AVAILABLE for Retail)
	t = n(id, t);
	-- #if NOT ANYCLASSIC
	t.u = CONDITIONALLY_AVAILABLE
	bubbleDownFiltered({u=CONDITIONALLY_AVAILABLE},FILTERFUNC_NoTimeline,t)
	-- #endif
	return t;
end
--- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest).
---@param id ObjectID # Interactable world object ID, such as a chest.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # World object entry.
obj = function(id, t)									-- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest)
	return struct("objectID", id, t);
end
o = obj;												-- Create a WORLD OBJECT Object (alternative shortcut)
--- Create a group which represents the shared contents for multiple, identically-named WORLD OBJECTS.
---@param t ATTObject|ATTObjectArray # Shared-content container or child array for the repeated world objects.
---@param o? ATTObjectArray # Optional additional object groups appended when `t` is a child array.
---@return ATTObject|nil # Shared-content group, or nil when it has no child group container.
o_repeated = function(t, o)								-- Create a group which represents the shared contents for multiple, identically-named WORLD OBJECTS
	if t[1] then
		-- move the raw array of objects into a .g group
		-- include o as a separate array so we can list the shared contents/objects separately for easier data application
		t = { g = appendAllGroups(t, o) };
	end
	t.type = "AsGenericObjectContainer"
	if t.groups or t.g then
		for i,group in ipairs(t.groups or t.g --[[@as ATTObjectArray]]) do
			-- first existing objectID value of the sub-groups will be used to show the localized name in-game instead of creating a new custom category as well
			if group.objectID and not t.objectID then
				-- is it really this simple
				t = struct("objectID", group.objectID, t);
				break
			end
		end
		-- Now we want the children of these generic groups to be 'special' since they require 'special' logic in the addon
		for i,group in ipairs(t.groups or t.g --[[@as ATTObjectArray]]) do
			if group.objectID then
				group.type = "AsSubGenericObject"
			end
		end
		return t
	end
	print("Could not find a group with an objectID value");
end
--- Pet Battle (bubbleDown pb filter).
---@param t ATTObject|ATTObjectArray # Object or child groups whose nested content receives the pet-battle filter.
---@return ATTObject|ATTObjectArray # Input object or groups with the pet-battle filter propagated.
petbattle = function(t)									-- Pet Battle (bubbleDown pb filter)
	return bubbleDown({ pb = true }, t);
end
--- Create a PROFESSION Object.
---@param skillID SkillID # Profession or skill line ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTProfessionObject # Profession object.
prof = function(skillID, t)								-- Create a PROFESSION Object
	return struct("professionID", skillID, t);
end
--- Create a PROFESSION NODE Object.
---@param id ProfessionNodeID # Profession specialization path/node ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Profession specialization node object.
professionnode = function(id, t)						-- Create a PROFESSION NODE Object
	return struct("professionnodeID", id, t);
end
pn = professionnode;
--- Flag all nested content as requiring PvP gameplay.
---@param t ATTObject|ATTObjectArray # Object or child groups whose nested content receives the PvP requirement.
---@return ATTObject|ATTObjectArray # Input object or groups with the PvP requirement propagated.
pvp = function(t)										-- Flag all nested content as requiring PvP gameplay
	return bubbleDown({ pvp = true }, t);
end
--- Create a PVP Rank Object.
---@param id PVPRankID # Classic PvP rank ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # PvP rank object.
pvprank = function(id, t)								-- Create a PVP Rank Object.
	return struct("pvpRankID", id, t);
end
--- Create a QUEST Object.
---@param id QuestID # Quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Quest object.
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
--- Create a QUEST Object flagged with the NYI unobtainable flag.
---@param id QuestID # Quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Quest object marked never implemented.
qNYI = function (id, t)									-- Create a QUEST Object flagged with the NYI unobtainable flag
	t = q(id, t);
	t.u = NEVER_IMPLEMENTED;
	return t;
end
--- Create a QUEST OBJECTIVE Object.
---@param id ObjectiveID # Objective index within the parent quest.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Quest objective object.
questobjective = function(id, t)						-- Create a QUEST OBJECTIVE Object
	t = struct("objectiveID", id, t);
	if t and t.itemID then
		print("INCORRECT OBJECTIVE FORMAT", id, t.itemID);
		print("Use a provider entry instead!");
	end
	return t;
end
objective = questobjective;								-- Create a QUEST OBJECTIVE Object (alternative shortcut)
qo = questobjective;									-- Create a QUEST OBJECTIVE Object (alternative shortcut)
--- Create a RACE Object.
---@param id RaceID # Character race ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Race object.
race = function(id, t)									-- Create a RACE Object
	return struct("raceID", id, t);
end
--- Create a CHARACTER RACE Object without a Race Lock.
---@param id RaceID # Character race ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTHeaderObject # Race header without a race lock.
raceWithoutLock = function(id, t)						-- Create a CHARACTER RACE Object without a Race Lock
	t = struct("headerID", id, t);
	t.type = HEADERS.Race;
	return t;
end
--- Create a Raw Decor Object.
---@param id DecorID # Housing decor entry ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Raw decor object.
rawdecor = function(id, t)								-- Create a Raw Decor Object
	return struct("decorID", id, t)
end
--- Create a RECIPE Object.
---@param id RecipeID # Crafting recipe spell ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTRecipeObject # Recipe object.
recipe = function(id, t)								-- Create a RECIPE Object
	return struct("recipeID", id, t);
end
r = recipe;												-- Create a RECIPE Object (alternative shortcut)
--- Create an Ensemble directly from SpellID.
---@param spellID SpellID # Spell ID identifying the ensemble.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTSpellObject # Spell object configured as an ensemble.
sensemble = function(spellID, t)						-- Create an Ensemble directly from SpellID
	local i = sp(spellID, t);
	i.type = "ensembleSpellID"
	return i
end
--- Skyriding (bubbleDown sr filter).
---@param t ATTObject|ATTObjectArray # Object or child groups whose nested content receives the Skyriding requirement.
---@return ATTObject|ATTObjectArray # Input object or groups with the skyriding filter propagated.
skyriding = function(t)									-- Skyriding (bubbleDown sr filter)
	return bubbleDown({ sr = true }, t);
end
--- Create a SPELL Object.
---@param id SpellID # Spell ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTSpellObject # Spell object.
spell = function(id, t)									-- Create a SPELL Object
	return struct("spellID", id, t);
end
sp = spell;												-- Create a SPELL Object (alternative shortcut)
--- Create an Item Source Object.
---@param id SourceID # Transmog appearance source ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTObject # Item source object.
itemsource = function(id, t)							-- Create an Item Source Object
	return struct("sourceID", id, t)
end
--- Create a TITLE Object.
---@param id TitleID # Character title ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTTitleObject # Title object.
title = function(id, t)									-- Create a TITLE Object
	return struct("titleID", id, t);
end
--- Create a TITLE Object for Female Characters.
---@param id TitleID # Character title ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTTitleObject # Title object restricted to female characters.
title_female = function(id, t)							-- Create a TITLE Object for Female Characters
	t = struct("titleID", id, t);
	t.gender = 3;
	return t;
end
--- Create a TITLE Object for Male Characters.
---@param id TitleID # Character title ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTTitleObject # Title object restricted to male characters.
title_male = function(id, t)							-- Create a TITLE Object for Male Characters
	t = struct("titleID", id, t);
	t.gender = 2;
	return t;
end

-- Common Object Types
--- Creates a QUEST which is for a Dragonriding Race.
---@param id QuestID # Dragonriding race quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Quest object for a Dragonriding race.
dragonridingrace = function(id, t)						-- Creates a QUEST which is for a Dragonriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	t.sourceQuestNumRequired = 1;
	t.sourceQuests = {
		68795,	-- Dragonriding
		DF_ACCOUNT_CAMPAIGN_QUEST,
	};
	return t;
end
--- Creates a QUEST which is for a Skyriding Race.
---@param id QuestID # Skyriding race quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Quest object for a Skyriding race.
skyridingrace = function(id, t)							-- Creates a QUEST which is for a Skyriding Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end
--- Creates a QUEST which is for a D.R.I.V.E. Race.
---@param id QuestID # D.R.I.V.E. race quest ID.
---@param t? ATTObject|ATTObjectArray # Optional object fields or an array of child objects.
---@return ATTQuestObject # Quest object for a D.R.I.V.E. race.
driverace = function(id, t)								-- Creates a QUEST which is for a D.R.I.V.E. Race
	t = q(id, t);
	t.repeatable = true;
	t.collectible = false;	-- quest literally cannot be completed
	-- TODO: Do similar conditions exist?
	-- t.sourceQuestNumRequired = 1;
	-- t.sourceQuests = {
	-- 	68795,	-- Dragonriding
	-- 	DF_ACCOUNT_CAMPAIGN_QUEST,
	-- };
	return t;
end
-- Simple function for First Craft HQTs
--- Creates a First Craft hidden quest trigger for a recipe.
---@param questID QuestID # Hidden quest ID tracking first-craft completion.
---@param recipeID RecipeID # Recipe spell ID whose first craft is tracked.
---@param added? ATTTimelineEvent # Optional timeline event marking first-craft availability.
---@param removed? ATTTimelineEvent # Optional removal event appended to the timeline; requires `added`.
---@return ATTFirstCraftObject # First-craft hidden quest trigger.
FirstCraft = function(questID, recipeID, added, removed)
	local t = fc(recipeID, {questID=questID})
	t.provider = { "s", recipeID };
	if added then
		t.timeline = { added };
	end
	if removed then
		if not added then
			error("Cannot have removed FirstCraft without added")
		end
		t.timeline[#t.timeline + 1] = removed
	end
	return t;
end
-- Simple function for Recipes with HQTs
--- Creates a recipe object associated with a hidden quest trigger.
---@param recipeID RecipeID # Crafting recipe spell ID.
---@param questID QuestID # Hidden quest ID associated with the recipe.
---@param added? ATTTimelineEvent # Optional timeline event marking recipe availability.
---@param description? string|ATTLocalizationStringTable # Optional display description for the recipe.
---@param maps? UiMapID[] # Optional UI map IDs associated with the recipe.
---@return ATTRecipeObject # Recipe object linked to the hidden quest trigger.
r_withQuest = function(recipeID, questID, added, description, maps)
	local t = r(recipeID, {questID=questID})
	if added then
		t.timeline = { added };
	end
	if description then
		t.description = description;
	end
	if maps then
		t.maps = maps;
	end
    return t
end
-- Creates a simple 'gathered' Item which has a set of object providers
-- Note: If additional table data is provided it must be the last param
--- Creates a gathered item with the supplied object providers.
---@param itemID ItemID # Base item ID.
---@param ... ObjectID|ATTObject|ATTObjectArray # World object provider IDs, optionally followed by object fields or child objects as the final argument.
---@return ATTItemObject # Gathered item with the supplied object providers.
i_gathered = function(itemID, ...)
	local t
	local params = {...}
	---@type ObjectID|ATTObject|ATTObjectArray|nil
	local last = params[#params]
	if type(last) == "table" then
		t = i(itemID, last)
		last = nil
		params[#params] = nil
	else
		t = i(itemID)
	end
	local providers = t.providers
	if not providers then
		providers = {}
		t.providers = providers
	end
	---@cast params ObjectID[]
	for i=1,#params do
		providers[#providers + 1] = { "o", params[i] }
	end
	return t
end
-- Outdoor Zones Headers with Filters
--- Creates a BATTLE_PETS header with pet battle filter on it. Use this with Outdoor Zones.
---@param timeline ATTTimelineEvent[] # Patch events applied to the header and nested content; defaults to 5.0.4 in the one-argument form.
---@param t ATTObject|ATTObjectArray # Header fields or child objects to receive the timeline and pet-battle filter.
---@return ATTObject # Battle pets header with the applicable filter.
---@overload fun(t: ATTObject|ATTObjectArray): ATTObject
battlepets = function(timeline, t)						-- Creates a BATTLE_PETS header with pet battle filter on it. Use this with Outdoor Zones.
	---@type ATTTimelineEvent[]|ATTObject|ATTObjectArray, ATTObject|ATTObjectArray|nil
	local timeline, t = timeline, t;
	if not t then
		---@cast timeline ATTObject|ATTObjectArray
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	t = togroups(t);
	t.timeline = timeline;
	return petbattle(filter(BATTLE_PETS, t));
end
--- Creates a PET_BATTLES header with pet battle filter on it. Use this with Outdoor Zones.
---@param timeline ATTTimelineEvent[] # Patch events applied to the header and nested content; defaults to 5.0.4 in the one-argument form.
---@param t ATTObject|ATTObjectArray # Header fields or child objects to receive the timeline and pet-battle filter.
---@return ATTObject # Pet battles header with the applicable filter.
---@overload fun(t: ATTObject|ATTObjectArray): ATTObject
petbattles = function(timeline, t)						-- Creates a PET_BATTLES header with pet battle filter on it. Use this with Outdoor Zones.
	---@type ATTTimelineEvent[]|ATTObject|ATTObjectArray, ATTObject|ATTObjectArray|nil
	local timeline, t = timeline, t;
	if not t then
		---@cast timeline ATTObject|ATTObjectArray
		t = timeline;
		timeline = { ADDED_5_0_4 };
	end
	t = togroups(t);
	t.timeline = timeline;
	return petbattle(n(PET_BATTLES, t));
end
--- Creates a LOCKPICKING header with Rogue Class Filtering on it. Use this with Outdoor Zones.
---@param skipRequirement boolean|nil # Whether to omit the Rogue class restriction in the two-argument form.
---@param t ATTObject|ATTObjectArray # Optional header fields or child objects for the Lockpicking profession.
---@return ATTProfessionObject # Lockpicking profession header.
---@overload fun(): ATTProfessionObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTProfessionObject
lockpicking = function(skipRequirement, t)				-- Creates a LOCKPICKING header with Rogue Class Filtering on it. Use this with Outdoor Zones.
	---@type boolean|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local skipRequirement, t = skipRequirement, t;
	if not t then
		---@cast skipRequirement ATTObject|ATTObjectArray|nil
		t = skipRequirement;
		skipRequirement = nil;
	end
	local obj = prof(LOCKPICKING, t);
	if not skipRequirement then obj.classes = { ROGUE }; end
	return obj;
end
--- Creates a PICK POCKET header with Rogue Class Filtering on it. Use this with Outdoor Zones.
---@param skipRequirement boolean|nil # Whether to omit the Rogue class restriction in the two-argument form.
---@param t ATTObject|ATTObjectArray # Optional header fields or child objects for the Pick Pocket header.
---@return ATTHeaderObject # Pickpocketing header.
---@overload fun(): ATTHeaderObject
---@overload fun(t: ATTObject|ATTObjectArray): ATTHeaderObject
pickpocketing = function(skipRequirement, t)			-- Creates a PICK POCKET header with Rogue Class Filtering on it. Use this with Outdoor Zones.
	---@type boolean|ATTObject|ATTObjectArray|nil, ATTObject|ATTObjectArray|nil
	local skipRequirement, t = skipRequirement, t;
	if not t then
		---@cast skipRequirement ATTObject|ATTObjectArray|nil
		t = skipRequirement;
		skipRequirement = nil;
	end
	local obj = header(HEADERS.Spell, 921, t);	-- Pick Pocket
	if not skipRequirement then obj.classes = { ROGUE }; end
	return obj;
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
--- Flag as Alliance Only.
---@generic T: ATTObject
---@param t T # Object to restrict to Alliance races; must not already define `races`.
---@return T # Input object or groups after applying the Alliance restriction.
a = function(t)	-- Flag as Alliance Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as ALLIANCE_ONLY on a thing already marked with races.");
	else
		t --[[@as ATTObject]].races = ALLIANCE_ONLY;
	end
	return t;
end
-- Adds an item which is convertible between itself and another subitem by way of a subitem amount and whether the
-- item to subitem is possible
--- Creates an item with a conversion cost to another item and optional reverse-conversion child.
---@param itemID ItemID # Item ID produced by converting the specified subitems.
---@param subItemID ItemID # Item ID consumed by the conversion.
---@param subItemAmount number # Number of subitems required to obtain one item.
---@param includeItemToSubitem? boolean # Whether to add the subitem as a child for reverse conversion.
---@return ATTItemObject # Item with its conversion cost and optional reverse-conversion child.
convertItem = function(itemID, subItemID, subItemAmount, includeItemToSubitem)
	return i(itemID, {cost={{"i",subItemID,subItemAmount}},groups=includeItemToSubitem and {i(subItemID)} or nil})
end
--- Add a Creature List to an object.
---@generic T: ATTObject
---@param id CreatureID|CreatureID[] # Single creature ID stored in `cr`, or a list stored in `crs`.
---@param t T # Object whose creature sources are assigned.
---@return T # Input object or groups after adding the creature IDs.
crs = function(id, t)									-- Add a Creature List to an object.
	if type(id) == "number" then
		t --[[@as ATTObject]].cr = id;
	else
		---@cast id CreatureID[]
		t --[[@as ATTObject]].crs = id;
	end
	return t;
end
--- Flag as Horde Only.
---@generic T: ATTObject
---@param t T # Object to restrict to Horde races; must not already define `races`.
---@return T # Input object or groups after applying the Horde restriction.
h = function(t) -- Flag as Horde Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as HORDE_ONLY on a thing already marked with races.");
	else
		t --[[@as ATTObject]].races = HORDE_ONLY;
	end
	return t;
end
--- Assigns a display ID to an object.
---@generic T: ATTObject
---@param displayID CreatureDisplayID # Creature display ID to assign for the object's model.
---@param t T # Object whose `displayID` is assigned.
---@return T # Input object after assigning the display ID.
model = function(displayID, t)
	t --[[@as ATTObject]].displayID = displayID;
	return t;
end
-- Converts a given Item/Mod/Bonus combination into the current modItemID format (should roughly match GetGroupItemIDWithModID from Item.Retail.lua)
--- Encodes ItemID, ModID, and BonusID into the parser's modItemID numeric format.
---@param itemID? ItemID # Base item ID; defaults to 0 when omitted.
---@param modID? ModID # Item modifier ID to encode for Legion and later builds.
---@param bonusID? BonusID # Item bonus ID to encode for Legion and later builds; bonus 3524 is omitted.
---@return ModItemID # Encoded modifier and bonus variant identifier.
modItemId = function(itemID, modID, bonusID)
	itemID = itemID and tonumber(itemID) or 0;
	-- #if AFTER LEGION
	local m, b;
	m = modID and tonumber(modID);
	b = bonusID and tonumber(bonusID);
	if m then
		itemID = itemID + (m / 1000);
	end
	if b and b ~= 3524 then
		itemID = itemID + (b / 100000000);
	end
	-- #endif
	return itemID;
end
-- Adds the 'autoname' field with proper formatting to set the 'name' of this object automatically in Retail
-- NOTE: The base Type must support: GlobalVariants.WithAutoName as a Class Variant for the 'autoname' field to be recognized in the addon to generate a 'name'
-- ref. Classes/Quest.lua
--- Adds automatic-name metadata for a supported object type and ID.
---@param type? string # Supported `HEADERS` type used to resolve the automatic name.
---@param id? integer # ID of the source whose name should be used.
---@param t? ATTObject|ATTObjectArray # Object or child objects to normalize and assign automatic-name metadata.
---@return ATTObject|ATTObjectArray|nil # Object with automatic-name metadata, or the original input when the type or ID is missing.
name = function(type, id, t)
	if not type or not id then return t end
	t = togroups(t or {})
	if t.autoname then
		error("Cannot use name() when the contained data includes 'autoname' field! "..type..":"..id)
	end
	t.autoname = type..":"..id
	return t
end
-- Converts 3 separate patch values into a single patch decimal for use within expansion() groups
--- Encodes major, minor, and build values into the parser's decimal patch format.
---@param major number # Major patch component stored before the decimal point.
---@param minor number # Minor patch component encoded at two decimal places.
---@param build number # Build component encoded at five decimal places.
---@return number # Encoded decimal patch value.
patch = function(major, minor, build)
	major = math.floor(tonumber(major) or 0)
	minor = math.floor(tonumber(minor) or 0)
	build = math.floor(tonumber(build) or 0)
	if major >= PatchShift then
		print("Using a Major Patch with too many digits! It will not be represented properly in-game",major)
	end
	if minor >= RevShift then
		print("Using a Minor Patch with too many digits! It will not be represented properly in-game",minor)
	end
	if build > 99999 then
		print("WARN: Not currently supporting Build > 99999 within a Patch",build)
	end
	return major + (minor / RevShift) + (build / 100000)
end
--- Mark an object unobtainable where u is the type.
---@generic T: ATTObject
---@param u ATTUnobtainableStatus # Unobtainable status value to store in `u`.
---@param t T # Object whose unobtainable status is assigned.
---@return T # Input object after assigning its unobtainable status.
un = function(u, t) t --[[@as ATTObject]].u = u; return t; end						-- Mark an object unobtainable where u is the type.
--- A daily group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards).
---@param questID QuestID # Quest ID used to track the daily reward's completion.
---@param t? ATTObject|ATTObjectArray # Daily reward metadata or child reward objects.
---@return ATTHeaderObject # Daily reward header linked to the quest.
dailyReward = function(questID, t)								-- A daily group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards)
	local t = n(DAILY, t)
	t.questID = questID
	t.isDaily = true
	return t
end
--- A weekly group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards).
---@param questID QuestID # Quest ID used to track the weekly reward's completion.
---@param t? ATTObject|ATTObjectArray # Weekly reward metadata or child reward objects.
---@return ATTHeaderObject # Weekly reward header linked to the quest.
weeklyReward = function(questID, t)								-- A weekly group based on questID with specific rewards (typically an HQT trigger with lockout-based loot/rewards)
	local t = n(WEEKLY, t)
	t.questID = questID
	t.isWeekly = true
	return t
end

-- Region Specific Filters
--- Restricts an object to a specific WoW portal region.
---@generic T: ATTObject
---@param region Region # Portal region in which the object remains available.
---@param t T # Object to receive an initialization callback that enforces the region restriction.
---@return T # Input object after applying the region restriction.
regionExclusive = function(region, t)
	if t.OnInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnInit = [[function(t)
	if GetCVar("portal") ~= "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end
--- Marks an object unavailable in a specific WoW portal region.
---@generic T: ATTObject
---@param region Region # Portal region in which the object is marked unavailable.
---@param t T # Object to receive an initialization callback that enforces regional unavailability.
---@return T # Input object after marking the region unavailable.
regionUnavailable = function(region, t)
	if t.OnInit then
		error("ERROR: You already have an OnInit assigned for this object.");
	end
	t.OnInit = [[function(t)
	if GetCVar("portal") == "]] .. region .. [[" then
		t.u = 1;
	end
	return t;
end]];
	return t;
end

--- Restricts an object to the US region.
---@generic T: ATTObject
---@param t T # Object to make available only in the US portal region.
---@return T # Input object after applying the region-only restriction.
usONLY = function(t)	-- the object only available on US realm
	return regionExclusive("US", t);
end
--- Restricts an object to the EU region.
---@generic T: ATTObject
---@param t T # Object to make available only in the EU portal region.
---@return T # Input object after applying the region-only restriction.
euONLY = function(t)	-- the object only available on EU realm
	return regionExclusive("EU", t);
end
--- Restricts an object to the KR region.
---@generic T: ATTObject
---@param t T # Object to make available only in the KR portal region.
---@return T # Input object after applying the region-only restriction.
krONLY = function(t)	-- the object only available on KR realm
	return regionExclusive("KR", t);
end
--- Restricts an object to the TW region.
---@generic T: ATTObject
---@param t T # Object to make available only in the TW portal region.
---@return T # Input object after applying the region-only restriction.
twONLY = function(t)	-- the object only available on TW realm
	return regionExclusive("TW", t);
end
--- Restricts an object to the CN region.
---@generic T: ATTObject
---@param t T # Object to make available only in the CN portal region.
---@return T # Input object after applying the region-only restriction.
cnONLY = function(t)	-- the object only available on CN realm
	return regionExclusive("CN", t);
end
--- Marks an object unavailable in the US region.
---@generic T: ATTObject
---@param t T # Object to mark unavailable in the US portal region.
---@return T # Input object after marking the region unavailable.
usUnavailable = function(t)	-- the object only unavailable on US realm
	return regionUnavailable("US", t);
end
--- Marks an object unavailable in the EU region.
---@generic T: ATTObject
---@param t T # Object to mark unavailable in the EU portal region.
---@return T # Input object after marking the region unavailable.
euUnavailable = function(t)	-- the object only unavailable on EU realm
	return regionUnavailable("EU", t);
end
--- Marks an object unavailable in the KR region.
---@generic T: ATTObject
---@param t T # Object to mark unavailable in the KR portal region.
---@return T # Input object after marking the region unavailable.
krUnavailable = function(t)	-- the object only unavailable on KR realm
	return regionUnavailable("KR", t);
end
--- Marks an object unavailable in the TW region.
---@generic T: ATTObject
---@param t T # Object to mark unavailable in the TW portal region.
---@return T # Input object after marking the region unavailable.
twUnavailable = function(t)	-- the object only unavailable on TW realm
	return regionUnavailable("TW", t);
end
--- Marks an object unavailable in the CN region.
---@generic T: ATTObject
---@param t T # Object to mark unavailable in the CN portal region.
---@return T # Input object after marking the region unavailable.
cnUnavailable = function(t)	-- the object only unavailable on CN realm
	return regionUnavailable("CN", t);
end

-- Constants containers
do
	---@type table<string, table>
	DATAGROUP = SelfAutoTable()
	---@type table<string, table<string, integer[]>>
	IDGROUP = SelfAutoTable()
	---@type table<string, table>
	SYM = SelfAutoTable()
	local symselector = 0
	--- Returns the next unique symbolic-selector ID.
	---@return integer # New unique symbolic-selector ID.
	local NextSymSelector = function()
		symselector = symselector + 1
		return symselector
	end
	-- Provides a Unique value for each unique Key referenced on the table
	---@type ATTSymSelectorTable
	SymSelector = setmetatable({
		-- Returns the proper symlink "select" table for a given SymSelector key
		-- e.g. {"select","symselector",SymSelector[key]}
		--- Provides the `select` parser shortcut/helper.
		---@param key string # Registry name whose unique selector ID is used in the symbolic `select` command.
		---@return ATTSymCommand # Symbolic command selecting the named registry ID.
		select = function(key) return {"select","symselector",SymSelector[key]} end,
	}, {
		--- Assigns a new selector ID for a missing registry key.
		---@param t ATTSymSelectorTable # Selector registry receiving the ID.
		---@param key string # Missing selector name.
		---@return integer # New selector ID assigned to the missing key.
		__index = function(t, key)
			local s = NextSymSelector()
			t[key] = s
			return s
		end
	});
end

-- Temporary function to force Items to use the Misc filter so that they do not get turned into Recipes by the Parser
-- until the 'guessing' logic is eventually relegated when Prof DB's are sufficient
--- Forces an item to use the Misc filter to prevent parser recipe conversion.
---@generic T: ATTObject
---@param t T # Item to force into the Misc filter so parser recipe conversion is skipped.
---@return T # Input object after assigning the Misc filter.
TempForceMisc = function(t)
	t --[[@as ATTObject]].f = MISC
	return t
end

-- Root Category Headers
--
-- Root categories are parser-only containers collected into the global `_`
-- database. `root()` merges repeated declarations for the same category.
--- Initializes root registries and registration helpers.
(function()
-- Root constants
-- Usage: ROOTS.[Constant]
---@type ATTRootConstants
ROOTS = setmetatable({
	AchievementDB = "AchievementDB",
	Achievements = "Achievements",
	Arcantina = "Arcantina",
	BlackMarket = "BlackMarket",
	Character = "Character",
	Craftables = "Craftables",
	Delves = "Delves",
	ExpansionFeatures = "ExpansionFeatures",
	Factions = "Factions",
	GroupFinder = "GroupFinder",
	HiddenAchievementTriggers = "HiddenAchievementTriggers",
	HiddenCurrencyTriggers = "HiddenCurrencyTriggers",
	HiddenQuestTriggers = "HiddenQuestTriggers",
	Holidays = "Holidays",
	Housing = "Housing",
	InGameShop = "InGameShop",
	Instances = "Instances",
	ItemDB = "ItemDB",
	ItemDBConditional = "ItemDBConditional",
	NeverImplemented = "NeverImplemented",
	PVP = "PVP",
	PetBattles = "PetBattles",
	Professions = "Professions",
	Promotions = "Promotions",
	RecipeDB = "RecipeDB",
	SeasonOfDiscovery = "SeasonOfDiscovery",
	Secrets = "Secrets",
	Sourceless = "Sourceless",
	TradingPost = "TradingPost",
	Uncollectible = "Uncollectible",
	Unsorted = "Unsorted",
	WorldDrops = "WorldDrops",
	WorldEvents = "WorldEvents",
	Zones = "Zones",
	--
	AprilFools = "Special_AprilFools",
}, {
	--- Rejects an unknown root category.
	---@param t ATTRootConstants # Root category registry.
	---@param category string # Unknown root category name.
	__index = function(t, category)
		error("Attempting to reference ROOTS." .. category .. ", which is not a valid Root Category.");
	end,
});

-- Root Data Processors
--- Marks quest objects under the Hidden Quest Triggers root as HQT objects.
---@param data ATTObject # Object to mark as an HQT type when it contains a quest ID.
local function HQTCleanup(data)
	if data.questID then
		-- force quests under the HQT section to be the HQT type
		data.type = "hqt"
		return
	end
end
--- Marks nested quest groups so parser-generated `g` data can be dropped.
---@param g any # Object or object hierarchy whose quest nodes should drop generated child groups.
---@return ATTObject|ATTObjectArray|nil # Input object or groups after marking nested quest data, or nil input.
local function __DropG(g)
	return bubbleDownFiltered({
		-- keep API data from populating into NYI/Hidden quests
		_drop={"g"}
	},FILTERFUNC_questID,g)
end
--- Preprocesses Hidden Quest Trigger data before it is attached to the root.
---@param g any # Hidden-quest content to normalize and mark with the HQT type.
---@return ATTObject|ATTObjectArray|nil # Input object or groups after hidden-quest preprocessing, or nil input.
local function __HiddenQuestTriggers(g)
	return applyFunc(HQTCleanup, __DropG(g))
end
--- Returns all arguments unchanged.
---@param ... any # Values to pass through unchanged to the caller.
---@return any ... # All supplied arguments, unchanged and in order.
local function ReturnArguments(...)
	return ...;
end
local RootDataProcessors = setmetatable({
	[ROOTS.HiddenAchievementTriggers] = __DropG,
	[ROOTS.HiddenCurrencyTriggers] = __DropG,
	[ROOTS.HiddenQuestTriggers] = __HiddenQuestTriggers,
	[ROOTS.NeverImplemented] = __DropG
}, {
	--- Returns the passthrough processor for an unregistered root.
	---@param t table # Root processor registry.
	---@param key string|integer # Root category key.
	---@return function # The passthrough function used for unregistered roots.
	__index = function(t, key) return ReturnArguments; end,
});

-- Connect data to a Root Category
--- Create a ROOT CATEGORY Object.
---@param category string|integer # Name or numeric key of the destination root category.
---@param g any # Object, child array, or numeric-keyed references to merge; nil creates or retrieves the root.
---@return table # Persistent root table after merging or processing the supplied data.
--- Adds data to a named parser root category.
--- Repeated calls merge into the existing root array. Hidden/NYI roots can run
--- preprocessing through `RootDataProcessors` before the data is stored.
root = function(category, g)							-- Create a ROOT CATEGORY Object
	g = RootDataProcessors[category](g or {});
	local o = _[category];
	if not o then
		if isarray(g) then
			o = g;
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				o = g;
			else
				o = { g };
			end
		end
		_[category] = o;
	else
		if isarray(g) then
			for i,t in ipairs(g) do
				table.insert(o, t);
			end
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				for key,value in pairs(g) do
					o[key] = value;
				end
			else
				table.insert(o, g);
			end
		end
	end
	return o;
end
--- Registers battleground content under the PvP root.
---@param mapID UiMapID # UI map ID of the battleground to register under the PvP root.
---@param g? ATTObject|ATTObjectArray # Battleground map metadata or child objects.
battleground = function(mapID, g)						-- Create a BATTLEGROUND in the PvP header.
	root(ROOTS.PVP, n(BATTLEGROUNDS, { m(mapID, g) }));
end
--- Registers an instance under the Instances root.
---@param instID JournalInstanceID # Encounter Journal instance ID to register.
---@param g? ATTObject|ATTObjectArray # Optional instance metadata or child objects.
instanceroot = function(instID, g)
	root(ROOTS.Instances, inst(instID, g));
end
--- Registers nested map content under the Zones root.
---@param ... UiMapID|ATTObject|ATTObjectArray # UI map IDs from outermost to innermost, followed by the object or child array to nest.
maproot = function(...)									-- Create a MAP ROOT in the Zones header.
	-- Example: maproot(KALIMDOR, ELWYNN_FOREST, { });
	local args = { ... };
	local count = #args;
	local data = args[count];
	---@cast data ATTObject|ATTObjectArray
	for i=count-1,1,-1 do
		data = { m(args[i] --[[@as UiMapID]], data) };
	end
	root(ROOTS.Zones, data);
end
--- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.).
---@param skillID SkillID # Profession skill ID assigned to the container.
---@param t? ATTObject|ATTObjectArray # Profession metadata or child objects to register under the Professions root.
---@return ATTProfessionObject # Profession container registered under the Professions root.
profession = function(skillID, t)						-- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.)
	local p = prof(skillID, t);
	-- CRIEVE NOTE: I need to look back at this and see if it's necessary.
	-- #if NOT ANYCLASSIC
	bubbleDown({ requireSkill = skillID }, p);
	-- #elseif FOREVER
	bubbleDown({ requireSkill = skillID }, p);
	-- #endif
	root(ROOTS.Professions, p);
	return p;
end

-- Assign a Root Category Header
local rootCategoryHeaders = {};
---@type table<string|integer, ATTHeaderObject>
RootCategoryHeaders = rootCategoryHeaders;	-- This is global, so that it can be found by Parser!
--- Assigns a header object to a root category with a parser sort priority.
---@param priority number # Parser sort priority assigned to the root-category header.
---@param category string|integer # Name or numeric key of the root category receiving the header.
---@param headerID ATTHeaderID # ATT header ID to assign to the root category.
---@param data? ATTObject|ATTObjectArray # Header metadata and optional child objects; children are moved into the root category.
assignRootCategoryHeader = function(priority, category, headerID, data)
	if not headerID or type(headerID) ~= "number" then
		print("ROOT CATEGORY: " .. category);
		print("INVALID ROOT CATEGORY HEADER: You must pass a headerID into the createRootCategoryHeader(priority,category,headerID,data) function.");
	elseif rootCategoryHeaders[category] then
		error("ERROR: ROOT CATEGORY HEADER " .. category .. " ALREADY ASSIGNED. Please double check that the root category definitions are unique.");
	end
	data = n(headerID, data or {});
	data.SortPriority = priority;
	data.timeline = { EXPANSION_DEFAULT_TIMELINES[EXPANSION.CLASSIC] };
	rootCategoryHeaders[category] = data;
	if data.groups then
		root(category, data.groups);
		data.groups = nil;
	end
	return data;
end
end)();

-- Create a String.
--- Initializes localization registries and string registration helpers.
(function()
local localizationStringsByConstant = {};
---@type table<string, ATTLocalizationStringData>
LocalizationStrings = localizationStringsByConstant;	-- This is global, so that it can be found by Parser!
--- Checks whether a localization string is programmatic (prefixed with `~`).
---@param str string # Text to check for the programmatic `~` prefix.
---@return boolean # Whether the text begins with the programmatic marker.
function isTextProgrammatic(str)
	return str:sub(1, 1) == '~';
end
--- Registers a parser localization string and applies optional color/icon formatting.
--- Registers a parser localization definition by its unique `constant`.
--- The definition may provide literal/localized text, an icon, formatting, or
--- programmatic text. Duplicate constants are rejected.
---@param data ATTLocalizationStringData # Localization definition to register, including its constant, localized text, and optional formatting.
createLocalizationString = function(data)
	if not data then
		print("INVALID LOCALIZATION STRING: You must pass data into the createLocalizationString function.");
	elseif not data.constant then
		error("INVALID LOCALIZATION STRING (missing 'constant')", data.readable);
	end

	-- Prevent invalid variable declarations
	if string.match(data.constant, "^%d") then
		data.constant = "_" .. data.constant;
	end

	if localizationStringsByConstant[data.constant] then
		error("ERROR: LOCALIZATION STRING CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. localizationStringsByConstant[data.constant].readable .. ". Please double check that the localization definitions are unique or reuse the same localization.");
	else
		local textData = data.text;
		if (not (textData and (type(textData) == "string" or (type(textData) == "table" and textData.en)))) and not data.icon then
			print("INVALID LOCALIZATION STRING", data.readable, textData);
		else
			localizationStringsByConstant[data.constant] = data;

			-- Build the text using icon and color, if supplied.
			if data.color then
				-- Include the color first!
				if isTextProgrammatic(data.color) then
					for key,value in pairs(textData) do
						if isTextProgrammatic(value) then
							textData[key] = "~\"|c\" .. " .. data.color:sub(2) .. " .. " .. value:sub(2) .. " .. \"|r\"";
						else
							textData[key] = "~\"|c\" .. " .. data.color:sub(2) .. " .. \"" .. value .. "|r\"";
						end
					end
				else
					-- Simple color prefixing
					for key,value in pairs(textData) do
						if isTextProgrammatic(value) then
							textData[key] = "~\"|c" .. data.color .. "\" .. " .. value:sub(2) .. " .. \"|r\"";
						else
							textData[key] = "|c" .. data.color .. value .. "|r";
						end
					end
				end
			end
			if data.icon then
				-- Prefix the string with the texture.
				if isTextProgrammatic(data.icon) then
					for key,value in pairs(textData) do
						if value == "" then
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t\"";
						elseif isTextProgrammatic(value) then
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t \" .. " .. value:sub(2);
						else
							textData[key] = "~\"|T\" .. " .. data.icon:sub(2) .. " .. \":0|t " .. value .. "\"";
						end
					end
				else
					-- Simple texture prefixing (this is very infrequent)
					for key,value in pairs(textData) do
						if value == "" then
							textData[key] = "|T" .. data.icon .. ":0|t";
						elseif isTextProgrammatic(value) then
							textData[key] = "~\"|T" .. data.icon .. ":0|t \" .. " .. value:sub(2);
						else
							textData[key] = "|T" .. data.icon .. ":0|t " .. value;
						end
					end
				end
			end
			for key,value in pairs(textData) do
				textData[key] = textData[key]:gsub("\" .. \"", "");
			end
		end
	end
	return "~L." .. data.constant;
end
end)();

-- Create a Header. Returns a UNIQUE ID, starting at 0.
--- Initializes custom header registries, schedules, and translation helpers.
(function()
if not NextHeaderID then
	-- Once we've eliminated all of the old style NPC IDs, we can change this value and
	-- delete the Dynamic Header IDs file to reassign easier to manage header IDs.
	NextHeaderID = -1;
	HeaderAssignments = {};
end
---@type table<ATTHeaderID, ATTHeaderDefinition>
local customHeaders = {};
---@type table<string, ATTHeaderInputDefinition|ATTHeaderProcessingDefinition|ATTHeaderDefinition>, table<string, ATTHeaderInputDefinition|ATTHeaderProcessingDefinition|ATTHeaderDefinition>
local customHeadersByReadable, customHeadersByConstant = {}, {};
---@type table<ATTHeaderID, ATTHeaderDefinition>
CustomHeaders = customHeaders;	-- This is global, so that it can be found by Parser!
--- Serializes sorted table key/value pairs into a Lua table-literal string.
---@param t table<string, string|number> # Schedule fields whose numeric or expression values are serialized into a Lua table literal.
---@return string # Lua table-literal source with sorted keys.
local concatKeyPairs = function(t)
	local keys = {};
	for key,value in pairs(t) do
		table.insert(keys, key);
	end
	table.sort(keys);
	local schedule = "{";
	for i,key in ipairs(keys) do
		if i > 1 then
			schedule = schedule .. ",";
		end
		schedule = schedule .. key .. "=" .. t[key];
	end
	return schedule .. "}";
end
--- Converts a parser date table into a Unix timestamp.
---@param t ATTDateParts # Date components containing `day` or `monthDay`, plus optional hour and minute.
---@return integer # Unix timestamp derived from the date fields.
local getTimestamp = function(t)
	return os.time({
		year=t.year,
		month=t.month,
		day=t.monthDay or t.day,
		hour=t.hour,
		minute=t.minute,
	});
end
local SECONDS_IN_A_DAY = 86400;
local SECONDS_IN_A_WEEK = 604800;
-- Creates a Custom Header for use within ATT data
-- 'npcfill = true' indicates that Things Sourced under this Header can be 'filled' into the corresponding NPC Sources if tagged with applicable NPC data
--- Creates and registers a custom ATT header, returning its unique header ID.
--- Registers a reusable parser header definition and returns its header ID.
--- Header metadata is indexed for parser generation and can later be referenced
--- through `header(...)`, `n(...)`, or generated constants.
---@param data? ATTHeaderInputDefinition # Header definition to validate, normalize, and register with an assigned header ID.
---@return ATTHeaderID|nil # Assigned header ID, or nil when validation fails.
createHeader = function(data)
	if not data then
		print("INVALID HEADER: You must pass data into the createHeader function.");
	elseif not data.readable then
		print("INVALID HEADER (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID HEADER", data.readable, data.text);
	else
		if data.constant then
			-- Prevent invalid variable declarations
			if string.match(data.constant, "^%d") then
				data.constant = "_" .. data.constant;
			end
			if customHeadersByConstant[data.constant] then
				error("ERROR: HEADER CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. customHeadersByConstant[data.constant].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
			else
				customHeadersByConstant[data.constant] = data;
			end
		end
		if customHeadersByReadable[data.readable] then
			error("ERROR: HEADER READABLE " .. data.readable .. " ALREADY ASSIGNED TO " .. customHeadersByReadable[data.readable].text.en .. ". Please double check that the header definitions are unique or reuse the same header.");
		else
			customHeadersByReadable[data.readable] = data;
		end
		if data.eventSchedule then
			local schedule = "{";
			local currentDate = os.date("*t");
			---@cast currentDate osdate
			if data.eventSchedule[1] == 0 then	-- Set Start and End Date
				local startTime = {
					year=data.eventSchedule[2],
					month=data.eventSchedule[3],
					monthDay=data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};
				local endTime = {
					year=data.eventSchedule[5] or (currentDate.year + 1),
					month=data.eventSchedule[6] or data.eventSchedule[3],
					monthDay=data.eventSchedule[7] or data.eventSchedule[4],
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				};

				-- Generate Time Stamps and add the weekday to the objects
				startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
				endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

				-- Append the schedule
				schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime)  .. ")";
			elseif data.eventSchedule[1] == 1 then	-- Recurring, every year forever on the same dates.
				local veryfirst = true;
				for yearOffset = -1,1,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end
					local startTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[2],
						monthDay=data.eventSchedule[3],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[4],
						minute=data.eventSchedule[5],
					};
					local endTime = {
						year=currentDate.year + yearOffset,
						month=data.eventSchedule[6],
						monthDay=data.eventSchedule[7],
						--weekday=7,	-- generated below
						hour=data.eventSchedule[8],
						minute=data.eventSchedule[9],
					};
					-- Feast of Winter Veil, for example, goes from Dec (Month 12) to Jan (Month 01)
					if endTime.month < startTime.month then
						endTime.year = endTime.year + 1;
					end

					-- Generate Time Stamps and add the weekday to the objects
					startTime.weekday = os.date("*t", getTimestamp(startTime)).wday;
					endTime.weekday = os.date("*t", getTimestamp(endTime)).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ")";
				end
			elseif data.eventSchedule[1] == 2 then	-- Recurring every month on the first Sunday until the next Sunday.
				-- START_YEAR, START_MONTH
				-- Example: 2023, 5
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Calculate the difference between the specified month/year and the current month/year
				local year, month, totalMonthOffset = data.eventSchedule[2], data.eventSchedule[3], 0;
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				while year < currentYear do
					while month <= 12 do
						month = month + 1;
						totalMonthOffset = totalMonthOffset + 1;
					end
					month = 1;
					year = year + 1;
				end
				while month < currentMonth do
					month = month + 1;
					totalMonthOffset = totalMonthOffset + 1;
				end

				-- Go back one month, to get last month's data.
				totalMonthOffset = (totalMonthOffset + totalEventIDs) - 1;	-- Ensure the offset is 0 or more
				month = month - 1;
				if month == 0 then month = 12; end

				local veryfirst = true;
				for monthOffset = 0,10,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Grab the current eventID
					local eventID = eventIDs[(totalMonthOffset % totalEventIDs) + 1];

					-- Determine the first sunday
					local startTime = {
						year=year,
						month=month,
						monthDay=1,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local startTimeStamp = getTimestamp(startTime) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

					-- Find the first Sunday of the Month
					for dayOffset = 1,14,1 do
						if os.date("*t", startTimeStamp).wday == 1 then
							break;
						end
						startTime.monthDay = startTime.monthDay + 1;
						startTimeStamp = getTimestamp(startTime);
					end

					-- Determine the next Sunday
					local endTime = {
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.monthDay + 7,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local endTimeStamp = getTimestamp(endTime);
					startTime.weekday = os.date("*t", startTimeStamp).wday;
					endTime.weekday = os.date("*t", endTimeStamp).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ",{remappedID=" .. eventID .. "})";

					totalMonthOffset = totalMonthOffset + 1;
					month = month + 1;
					if month > 12 then
						month = 1;
						year = year + 1;
					end
				end
			elseif data.eventSchedule[1] == 3 then	-- Recurring every two weeks, lasting a week.
				-- START_YEAR, START_MONTH, START_DAY
				-- Example: 2023, 12, 4
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Specify the first recorded event matching the first eventID.
				local startTimeStamp = getTimestamp({
					year=data.eventSchedule[2],
					month=data.eventSchedule[3] or 1,
					monthDay=data.eventSchedule[4] or 1,
					--weekday=7,	-- generated below
					hour=0,
					minute=0,
				}) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

				-- Calculate the difference between the first recorded event to now.
				local currentTimeStamp = os.time(currentDate);
				local totalOffset, SECONDS_IN_TWO_WEEKS = 0, SECONDS_IN_A_WEEK * 2;
				while true do
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					if startTimeStamp < currentTimeStamp then
						totalOffset = totalOffset + 1;
					else
						-- We want at least one event behind us if it is still active.
						startTimeStamp = startTimeStamp - SECONDS_IN_TWO_WEEKS;
						break;
					end
				end

				-- Now generate a full years worth of events going forward.
				local veryfirst = true;
				for week = 0,26,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Determine when the event is supposed to end.
					local startTime = os.date("*t", startTimeStamp);
					local endTime = os.date("*t", startTimeStamp + SECONDS_IN_A_WEEK);

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs({
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.day,
						weekday=startTime.wday,
						hour=0,
						minute=0,
					}) .. "," .. concatKeyPairs({
						year=endTime.year,
						month=endTime.month,
						monthDay=endTime.day,
						weekday=endTime.wday,
						hour=0,
						minute=0,
					}) .. ",{remappedID=" .. eventIDs[(totalOffset % totalEventIDs) + 1] .. "})";

					-- Adjust by 2 weeks.
					startTimeStamp = startTimeStamp + SECONDS_IN_TWO_WEEKS;
					totalOffset = totalOffset + 1;
				end
			elseif data.eventSchedule[1] == 4 then	-- Recurring every week between specific weekdays and times
				-- START: WEEKDAY, HOUR, MINUTE, DURATION (in minutes)
				-- Example: 1, 21, 0, 120,	-- Sunday at 09:00 PM (21:00) until 11:00 AM (23:00)
				-- Calculate the Duration of the Event (in seconds)
				local durationOfEvent = data.eventSchedule[5] * 60;

				-- Find the first timestamp matching the desired weekday.
				local weekday = data.eventSchedule[2];
				local startTimeStamp = getTimestamp({
					year=currentDate.year,
					month=currentDate.month,
					monthDay=currentDate.day,
					hour=data.eventSchedule[3],
					minute=data.eventSchedule[4],
				}) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.
				while os.date("*t", startTimeStamp).wday ~= weekday do
					startTimeStamp = startTimeStamp - SECONDS_IN_A_DAY;
				end

				-- Calculate the difference between the first recorded event to now.
				local currentTimeStamp = os.time(currentDate);
				local totalOffset = 0;
				while true do
					startTimeStamp = startTimeStamp + SECONDS_IN_A_WEEK;
					if startTimeStamp < currentTimeStamp then
						totalOffset = totalOffset + 1;
					else
						-- We want at least one event behind us if it is still active.
						startTimeStamp = startTimeStamp - SECONDS_IN_A_WEEK;
						break;
					end
				end

				-- Hour and minute don't change per week, so make sure these persist since there's randomly rounding errors in time?
				local eventHour, eventMinute = data.eventSchedule[3], data.eventSchedule[4]

				-- Now generate a full years worth of events going forward.
				local veryfirst = true;
				for week = 0,52,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Determine when the event is supposed to end.
					local startTime = os.date("*t", startTimeStamp);
					startTime.hour = eventHour ~= 0 and eventHour or nil
					startTime.minute = eventMinute ~= 0 and eventMinute or nil
					local endTime = os.date("*t", getTimestamp(startTime) + durationOfEvent);

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs({
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.day,
						weekday=startTime.wday,
						hour=startTime.hour,
						minute=startTime.minute,
					}) .. "," .. concatKeyPairs({
						year=endTime.year,
						month=endTime.month,
						monthDay=endTime.day,
						weekday=endTime.wday,
						hour=endTime.hour,
						minute=endTime.minute,
					}) .. ")";

					-- Adjust by 1 week.
					startTimeStamp = startTimeStamp + SECONDS_IN_A_WEEK;
					totalOffset = totalOffset + 1;
				end
			elseif data.eventSchedule[1] == 5 then	-- Setup Phase: Starts the first Friday of the month (3 days of assembly with no vendors). Open Phase: Opens on Monday following setup and stays active until Sunday evening.
				-- START_YEAR, START_MONTH
				-- Example: 2026, 7
				local eventIDs = data.eventIDs;
				if not eventIDs then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, MISSING EVENT IDs!");
					return;
				end
				local totalEventIDs = #eventIDs;
				if totalEventIDs < 1 then
					print("INVALID HEADER", data.readable, " INVALID SCHEDULE, EVENT IDs EMPTY!");
					return;
				end

				-- Calculate the difference between the specified month/year and the current month/year
				local year, month, totalMonthOffset = data.eventSchedule[2], data.eventSchedule[3], 0;
				local currentYear, currentMonth = currentDate.year, currentDate.month;
				while year < currentYear do
					while month <= 12 do
						month = month + 1;
						totalMonthOffset = totalMonthOffset + 1;
					end
					month = 1;
					year = year + 1;
				end
				while month < currentMonth do
					month = month + 1;
					totalMonthOffset = totalMonthOffset + 1;
				end

				-- Go back one month, to get last month's data.
				totalMonthOffset = (totalMonthOffset + totalEventIDs) - 1;	-- Ensure the offset is 0 or more
				month = month - 1;
				if month == 0 then month = 12; end

				local veryfirst = true;
				for monthOffset = 0,10,1 do
					if veryfirst then
						veryfirst = false;
					else
						schedule = schedule .. ",";
					end

					-- Grab the current eventID
					local eventID = eventIDs[(totalMonthOffset % totalEventIDs) + 1];

					-- Determine the first Friday
					local startTime = {
						year=year,
						month=month,
						monthDay=1,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local startTimeStamp = getTimestamp(startTime) + 30;	-- Add a 30 second offset to prevent bad imprecision from causing problems.

					-- Find the first Friday of the Month
					for dayOffset = 1,14,1 do
						if os.date("*t", startTimeStamp).wday == 6 then
							break;
						end
						startTime.monthDay = startTime.monthDay + 1;
						startTimeStamp = getTimestamp(startTime);
					end

					-- Determine the next Sunday
					local endTime = {
						year=startTime.year,
						month=startTime.month,
						monthDay=startTime.monthDay + 10,
						--weekday=7,	-- generated below
						hour=0,
						minute=0,
					};
					local endTimeStamp = getTimestamp(endTime);
					startTime.weekday = os.date("*t", startTimeStamp).wday;
					endTime.weekday = os.date("*t", endTimeStamp).wday;

					-- Append the schedule
					schedule = schedule .. "\n\t_.Modules.Events.CreateSchedule(" .. concatKeyPairs(startTime) .. "," .. concatKeyPairs(endTime) .. ",{remappedID=" .. eventID .. "})";

					totalMonthOffset = totalMonthOffset + 1;
					month = month + 1;
					if month > 12 then
						month = 1;
						year = year + 1;
					end
				end

			else
				print("INVALID HEADER", data.readable, " INVALID SCHEDULE TYPE", data.eventSchedule[1]);
				return;
			end
			---@cast data -ATTHeaderInputDefinition, +ATTHeaderProcessingDefinition
			data.eventSchedule = schedule .. "\n}";
		end

		-- Whether or not to allow empty headers for this type (Default: No)
		if not data.standalone then data.standalone = false; end
		---@cast data -ATTHeaderInputDefinition, -ATTHeaderProcessingDefinition, +ATTHeaderDefinition

		-- Try to find the headerID assignment from the readable table.
		local headerID = HeaderAssignments[data.readable];
		if not headerID then
			headerID = NextHeaderID;
			NextHeaderID = NextHeaderID - 1;
		end
		if customHeaders[headerID] then
			error("ERROR: HEADER ID " .. headerID .. " ALREADY ASSIGNED TO " .. customHeaders[headerID].readable .. ", but attempting to assign to " .. data.readable .. ". Please double check that the header definitions are different");
			return;
		end
		customHeaders[headerID] = data;
		---@diagnostic disable-next-line: undefined-global
		data.filepath = CurrentSubFileName or CurrentFileName;
		--print("HEADER", headerID .. ":", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
		return headerID;
	end
end
--[[
-- Here's an example showing all the different supported fields.
CRIEVES_SUPER_COOL_HEADER = createHeader({
	readable = "Crieve's Super Cool Header",
	constant = "CRIEVES_SUPER_COOL_HEADER",	-- If you specify a constant, the identifier will become accessible in the addon code (app.HeaderConstants.CRIEVES_SUPER_COOL_HEADER)
	icon = 12345,
	text = {
		en = "Crieve's Super Cool Header",
		ru = "TODO: Russion Translation Here",
	},
	description = {
		en = "This is just an example!",
	},
});
]]--
local temporaryHeaderAssignments = {};
--- Returns a programmatic header-translation token for a header ID or localization table.
---@param data? ATTHeaderID|table<string, string> # Existing header ID or localized text from which to create a reusable translation header.
---@param key? string|integer # Header text field such as `description` or `lore`; used only with a numeric header ID.
---@return string|nil # Programmatic header translation token, or nil for invalid input.
translate = function(data, key)
	if not data then
		print("INVALID TRANSLATION: You must pass data into the translate function.");
	else
		if type(data) == "number" then
			if key then data = data .. ":" .. key; end
			return "~H:" .. data;
		else
			if not data.en then
				print("INVALID TRANSLATION (missing 'en')", data.en or (type(data.text) == "table" and data.text) or data);
			else
				-- We want to reuse this headerID for things that use the same translation data.
				local headerID = temporaryHeaderAssignments[data.en];
				if not headerID then
					headerID = createHeader({ readable = data.en, text = data });
					temporaryHeaderAssignments[data.en] = headerID;
				end
				return "~H:" .. headerID;
			end
		end
	end
end
end)();

-- Create a Custom Object. Returns a UNIQUE ID, starting at 100000000.
--- Initializes custom object ID allocation and registration.
(function()
local nextCustomObjectID = 100000000;
--- Registers a custom object and returns its unique object ID.
--- Registers a reusable custom parser object and returns its custom object ID.
--- Custom objects are parser definitions, not ordinary runtime WoW API objects.
---@param data ATTCustomObjectDefinition # Custom object definition to validate and store in `ObjectDB`.
---@return ObjectID|nil # Assigned custom object ID, or nil when validation fails.
createCustomObject = function(data)
	if not data then
		print("INVALID OBJECT: You must pass data into the createCustomObject function.");
	elseif not data.readable then
		print("INVALID OBJECT (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID OBJECT", data.readable, data.text);
	else
		local objectID = nextCustomObjectID;
		ObjectDB[objectID] = data;
		nextCustomObjectID = objectID + 1;
		return objectID;
	end
end
end)();

do
local itemDBConditional = ItemDBConditional;
local CurrentProfessionID = ALCHEMY;
--- Updates parser ItemDB/RecipeDB metadata for a recipe and its profession requirement.
--- Links an item and recipe in the parser-side ItemDB/RecipeDB.
--- This records recipe metadata, profession requirements, and optional
--- unobtainable state so generated database files can resolve the relationship.
---@param itemID ItemID # Item ID to associate with the recipe, or 0 to update the recipe directly in `RecipeDB`.
---@param recipeID RecipeID # Recipe spell ID to associate with the item or recipe metadata.
---@param unobtainStatus? ATTUnobtainableStatus|ATTPhaseID # Optional Classic unobtainable code or release phase, single timeline event, or list of timeline events.
---@param requireSkill? SkillID # Profession skill requirement override; defaults to the active profession.
---@return ATTObject # Updated item or recipe metadata object.
local ItemRecipeHelper = function(itemID, recipeID, unobtainStatus, requireSkill)
	-- Cache the object.
	local object;
	if itemID == 0 then
		-- The RecipeDB table isn't setup to always return a value.
		object = RecipeDB[recipeID];
	else
		-- Cache the object as an item
		object = itemDBConditional[itemID];

		-- Update the recipeID.
		local originalSpellID = object.spellID;
		local originalRecipeID = object.recipeID;
		if not originalRecipeID then
			object.recipeID = recipeID;
		elseif originalRecipeID ~= recipeID then
			-- Replace it, but also show a warning.
			print("Item", itemID, "recipeID changed", originalRecipeID, ">", recipeID);
			object.recipeID = recipeID;
		end

		-- Check for a spellID.
		if originalSpellID then
			object.spellID = nil;
			if not (originalSpellID == originalRecipeID or originalSpellID == recipeID) then
				print("Item", itemID, "spellID changed", originalSpellID, "> nil");
			end
		end
	end

	-- Mark it as a recipe.
	object.f = RECIPES;

	-- Update the skill requirement.
	if requireSkill then
		if itemID ~= 0 then
			RecipeDB[recipeID]._requireSkill = requireSkill;
		end
	end
	requireSkill = requireSkill or CurrentProfessionID;
	local originalRequireSkill = object.requireSkill;
	if not originalRequireSkill then
		if itemID ~= 0 then
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	elseif originalRequireSkill ~= requireSkill then
		-- Replace it, but also show a warning.
		if itemID == 0 then
			print("Recipe", recipeID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
		else
			print("Item", itemID, "requireSkill changed", originalRequireSkill, ">", requireSkill);
			RecipeDB[recipeID].requireSkill = requireSkill;
		end
		object.requireSkill = requireSkill;
	end

	-- allow for timeline to be a raw 'u' value or single string of 'timeline' or table of multiple 'timeline' values
	local unobtainType = unobtainStatus and type(unobtainStatus);
	if unobtainType then
		if unobtainType == "number" then
			---@cast unobtainStatus integer
			-- #if ANYCLASSIC
			-- CRIEVE NOTE: At this time, this is exclusive to Classic builds.
			if isreleasephase(unobtainStatus) then
				RecipeDB[recipeID].phase = unobtainStatus
			else
				RecipeDB[recipeID].u = unobtainStatus
			end
			-- #endif
		elseif unobtainType == "string" then
			---@cast unobtainStatus ATTTimelineEvent
			object.timeline = { unobtainStatus };
		elseif unobtainType == "table" then
			---@cast unobtainStatus ATTTimelineEvent[]
			object.timeline = unobtainStatus;
		end
	end
	return object;
end
--- Sets the active profession and returns the item/recipe helper function.
---@param professionID SkillID # Profession skill ID set as the default for subsequent recipe-helper calls.
---@return fun(itemID: ItemID, recipeID: RecipeID, unobtainStatus?: ATTUnobtainableStatus, requireSkill?: SkillID): ATTObject # Shared item/recipe helper using the currently selected profession.
GetRecipeHelperForProfession = function(professionID)
	CurrentProfessionID = professionID;
	return ItemRecipeHelper;
end


--[[
-- Proof of Concept:
-- If you assign new partial data to the item, it'll retain its previous data instead of discarding it.
local disgustingOozeling = ItemDBConditional[20769];
disgustingOozeling.spellID = 25162;
disgustingOozeling.speciesID = 114;

ItemDBConditional[20769] = { description = "What a shame it would be to lose this data..." };

print("Disgusting Oozeling contains:");
for key,value in pairs(ItemDBConditional[20769]) do
	print(" " .. key .. ": " .. value);
end
]]--
end
