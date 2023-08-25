-- Localization for Portuguese (Brazil) Clients.
if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

DRAKE_MANUSCRIPTS = "Manuscrito de Vigia-dracos";	--TODO: plural
TRACK_ACC_WIDE = app.ccColors.Account .. "Track "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R";	--TODO
ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R by default.";	--TODO

-- General Text
	--TODO: L.DESCRIPTION = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";
	--TODO: L.THINGS_UNTIL = " THINGS UNTIL ";
	--TODO: L.THING_UNTIL = " THING UNTIL ";
	--TODO: L.YOU_DID_IT = "YOU DID IT!|r";

-- Big new chunk from AllTheThings.lua
	--TODO: L.PROGRESS = "Progress";
	--TODO: L.TRACKING_PROGRESS = "Tracking Progress";
	--TODO: L.COLLECTED_STRING = " Collected";
	--TODO: L.PROVIDERS = "Provider(s)";
	--TODO: L.COLLECTION_PROGRESS = "Collection Progress";
	--TODO: L.CONTAINS = "Contains:";
	--TODO: L.FACTIONS = "Factions";
	--TODO: L.COORDINATES_STRING = "Coordinates";
	--TODO: L.NO_COORDINATES_FORMAT = "No known coordinates for %s";
	--TODO: L.TOM_TOM_NOT_FOUND = "You must have TomTom installed to plot coordinates.";
	--TODO: L.FLIGHT_PATHS = "Flight Paths";
	--TODO: L.KNOWN_BY = "Known by ";
	L.REQUIRES = "Requer";
	--TODO: L.RACE_LOCKED = "Race Locked";
	--TODO: L.PLEASE_REPORT_MESSAGE = "Please report this to the ATT Discord in #retail-errors! Thanks!";
	--TODO: L.REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C to copy multiline report to your clipboard)";
	--TODO: L.NOT_AVAILABLE_IN_PL = "Not available in Personal Loot.";
	--TODO: L.MARKS_OF_HONOR_DESC = "Marks of Honor must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the item)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	--TODO: L.ITEM_GIVES_REP = "Provides Reputation with '";
	--TODO: L.COST = "Cost";
	--TODO: L.COST_DESC = "This contains the visual breakdown of what is required to obtain or purchase this Thing";
	--TODO: L.SOURCES = "Source(s)";
	--TODO: L.SOURCES_DESC = "Shows the Source of this Thing.\n\nParticularly, a specific Vendor/NPC, Quest, Encounter, etc.";
	--TODO: L.WRONG_FACTION = "You might need to be on the other faction to view this.";
	--TODO: L.ARTIFACT_INTRO_REWARD = "Awarded for completing the introductory quest for this Artifact.";
	--TODO: L.FACTION_SPECIFIC_REP = "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	--TODO: L.VISIT_FLIGHT_MASTER = "Visit the Flight Master to cache.";
	--TODO: L.FLIGHT_PATHS_DESC = "Flight paths are cached when you talk to the flight master on each continent.\n  - Crieve";
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	--TODO: L.HEIRLOOM_TEXT = "Unlocked Heirloom";
	--TODO: L.HEIRLOOM_TEXT_DESC = "This indicates whether or not you have acquired or purchased the heirloom yet.";
	--TODO: L.FAILED_ITEM_INFO = "Failed to acquire item information. The item may be invalid or may not have been cached on your server yet.";
	--TODO: L.HEIRLOOMS_UPGRADES_DESC = "This indicates whether or not you have upgraded the heirloom to a certain level.\n\nR.I.P. Gold.\n - Crieve";
	L.MUSIC_ROLLS_AND_SELFIE_DESC = "These are unlocked per-character and are not currently shared across your account. If someone at Blizzard is reading this, it would be really swell if you made these "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..".\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	--TODO: L.MUSIC_ROLLS_AND_SELFIE_DESC_2 = "\n\nYou must first unlock the Music Rolls by completing the Bringing the Bass quest in your garrison for this item to drop.\n\nSelfies require the S.E.L.F.I.E Toy.";
	--TODO: L.OPPOSITE_FACTION_EQ = "Opposite faction equivalent: ";
	--TODO: L.SELFIE_DESC = "Take a selfie using your ";
	--TODO: L.SELFIE_DESC_2 = " with |cffff8000";
	--TODO: L.TIER_DATA[1].lore = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.";
	--TODO: L.TIER_DATA[2].lore = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.";
	--TODO: L.TIER_DATA[3].lore = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.";
	--TODO: L.TIER_DATA[4].lore = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.";
	--TODO: L.TIER_DATA[5].lore = "Mists of Pandaria is the fourth expansion pack. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.";
	--TODO: L.TIER_DATA[6].lore = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.";
	--TODO: L.TIER_DATA[7].lore = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.";
	--TODO: L.TIER_DATA[8].lore = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.";
	--TODO: L.TIER_DATA[9].lore = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.";
	L.TIER_DATA[10].lore = "Dragonflight is the ninth expansion. As revoadas dragônicas de Azeroth retornaram, convocadas a defender seu lar ancestral, as Ilhas do Dragão. Repletas de magia elemental e das energias vitais de Azeroth, as Ilhas despertam uma vez mais. Cabe a você explorar suas maravilhas primordiais e revelar segredos há muito esquecidos.";	--TODO: First sentence
	--TODO: L.TITLES_DESC = "Titles are tracked across your account, however, your individual character must qualify for certain titles to be usable on that character.";
	--TODO: L.SHARED_APPEARANCES_LABEL = "Shared Appearances";
	--TODO: L.SHARED_APPEARANCES_LABEL_DESC = "The items in this list are shared appearances for the above item. In Unique Appearance Mode, this list can help you understand why or why not a specific item would be marked Collected.";
	--TODO: L.UNIQUE_APPEARANCE_LABEL = "Unique Appearance";
	--TODO: L.UNIQUE_APPEARANCE_LABEL_DESC = "This item has a Unique Appearance. You must collect this item specifically to earn the appearance.";
	--TODO: L.UPON_COMPLETION = "Upon Completion";
	--TODO: L.UPON_COMPLETION_DESC = "The above quests need to be completed before being able to complete the things listed below.";
	--TODO: L.QUEST_CHAIN_REQ = "Quest Chain Requirements";
	--TODO: L.QUEST_CHAIN_REQ_DESC = "The following quests need to be completed before being able to complete the final quest.";
	--TODO: L.AH_SEARCH_NO_ITEMS_FOUND = "No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.";
	--TODO: L.AH_SEARCH_BOE_ONLY = "Only Bind on Equip items can be found using this search.";
	--TODO: L.TSM_WARNING_1 = "Running this command can potentially destroy your existing TSM settings by reassigning items to the ";
	--TODO: L.TSM_WARNING_2 = " preset.\n\nWe recommend that you use a different profile when using this feature.\n\nDo you want to proceed anyways?";
	--TODO: L.PRESET_UPDATE_SUCCESS = "Updated the preset successfully.";
	--TODO: L.SHOPPING_OP_MISSING_1 = "The preset is missing a 'Shopping' Operation assignment.";
	--TODO: L.SHOPPING_OP_MISSING_2 = "Type '/tsm operations' to create or assign one.";
	--TODO: L.AUCTIONATOR_GROUPS = "Group-based searches are only supported using Auctionator.";
	--TODO: L.TSM4_ERROR = "TSM4 is not compatible with ATT yet. If you know how to create Presets like we used to do in TSM3, please whisper Crieve on Discord!";
	--TODO: L.QUEST_MAY_BE_REMOVED = "Failed to acquire information. This quest may have been removed from the game. ";
	--TODO: L.MINUMUM_STANDING = "Requires a minimum standing of";
	--TODO: L._WITH_ = " with ";
	--TODO: L.MAXIMUM_STANDING = "Requires a standing lower than";
	--TODO: L.MIN_MAX_STANDING = "Requires a standing between";
	--TODO: L.AND_ = "And ";
	--TODO: L._AND = " and";
	--TODO: L._MORE = " more";
	--TODO: L._OTHER_SOURCES = " other sources";
	--TODO: L.DURING_WQ_ONLY = "This can be completed when the world quest is active.";
	--TODO: L.COMPLETED_DAILY = "This can be completed daily.";
	--TODO: L.COMPLETED_WEEKLY = "This can be completed weekly.";
	--TODO: L.COMPLETED_MONTHLY = "This can be completed monthly.";
	--TODO: L.COMPLETED_YEARLY = "This can be completed yearly.";
	--TODO: L.COMPLETED_MULTIPLE = "This can be repeated multiple times.";
	--TODO: L.CRITERIA_FOR = "Criteria for";
	--TODO: L.CURRENCY_FOR = "Currency for";
	--TODO: L.LOOT_TABLE_CHANCE = "Loot Table Chance";
	--TODO: L.BEST_BONUS_ROLL_CHANCE = "Best Bonus Roll Chance";
	--TODO: L.BEST_PERSONAL_LOOT_CHANCE = "Best Personal Loot Chance";
	--TODO: L.BONUS_ROLL = "Bonus Roll";
	--TODO: L.PREREQUISITE_QUESTS = "There are prerequisite quests that must be completed before this may be obtained:";
	--TODO: L.BREADCRUMBS = "Breadcrumbs";
	--TODO: L.BREADCRUMBS_WARNING = "There are breadcrumb quests that may not be obtainable after completing this:";
	--TODO: L.THIS_IS_BREADCRUMB = "This is a breadcrumb quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC = "This may be unable to be completed without Party Sync if completing any of these quests first:";
	--TODO: L.BREADCRUMB_PARTYSYNC_2 = "This may be obtained via Party Sync with another character that has not completed any of these quests:";
	--TODO: L.BREADCRUMB_PARTYSYNC_3 = "This may be obtained via Party Sync with a character that is able to accept this quest.";
	--TODO: L.BREADCRUMB_PARTYSYNC_4 = "Please let us know your results on Discord if you attempt obtaining this Quest via Party Sync!";
	--TODO: L.DISABLE_PARTYSYNC = "This is likely not able to be completed by this character even using Party Sync. If you manage otherwise, please let us know on Discord!";
	--TODO: L.UNAVAILABLE_WARNING_FORMAT = "|c%sBecomes unavailable if %d of the following are met:|r";
	--TODO: L.NO_ENTRIES = "No entries matching your filters were found.";
	--TODO: L.NO_ENTRIES_DESC = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.";
	--TODO: L.DEBUG_LOGIN = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.";
	--TODO: L.UNSORTED_1 = "Unsorted";
	--TODO: L.UNSORTED_2 = " (Unsorted)";
	--TODO: L.UNSORTED_DESC = "This data hasn't been Sourced yet within ATT.";
	--TODO: L.NEVER_IMPLEMENTED = "Never Implemented";
	--TODO: L.NEVER_IMPLEMENTED_DESC = "Items here technically exist within the game but have never been made available to players";
	--TODO: L.HIDDEN_QUEST_TRIGGERS = "Hidden Quest Triggers";
	--TODO: L.HIDDEN_QUEST_TRIGGERS_DESC = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	--TODO: L.UNSORTED_DESC_2 = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";
	--TODO: L.BOUNTY_DESC = "This list contains Unobtainable items that the ATT Discord has reported as bugs that Blizzard has yet to fix.\n\nNOTE: All filters are ignored within this list for visibility. Only items removed from the game due to negligence rather than a gigantic fire breathing dragon are present on this list.\n\nTo Blizzard Devs: Please fix the items and encounters listed below.";
	--TODO: L.OPEN_AUTOMATICALLY = "Open Automatically";
	--TODO: L.OPEN_AUTOMATICALLY_DESC = "If you aren't a Blizzard Developer, it might be a good idea to uncheck this. This was done to force Blizzard to fix and/or acknowledge these bugs.";
	--TODO: L.TWO_CLOAKS = "|cffFF0000These two cloaks have very limited confirmed drops if any and are presumed broken!|r";
	--TODO: L.OGOM_THE_MANGLER_DESC = "|cffFF0000Ogom the Mangler seems just to spawn when you are doing the Daily 'Assault on the Iron Siegeworks'. This Quest wasn't active since the start of Legion and the buyable Quest 'Missive: Assault on the Iron Siegeworks' does not work either.|r";
	--TODO: L.DIFF_COMPLETED_1 = "You have collected everything from this difficulty. Switch to ";
	--TODO: L.DIFF_COMPLETED_2 = " instead.";
	--TODO: L.MINI_LIST = "Mini List";
	--TODO: L.MINI_LIST_DESC = "This list contains the relevant information for your current zone, which cannot be found in the ATT database";
	--TODO: L.UPDATE_LOCATION_NOW = "Update Location Now";
	--TODO: L.UPDATE_LOCATION_NOW_DESC = "If you wish to forcibly refresh the data to your current Map, click this button now!";
	--TODO: L.PERSONAL_LOOT_DESC = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.\n\nClick twice to create a group automatically if you're by yourself.";
	--TODO: L.RAID_ASSISTANT = "Raid Assistant";
	--TODO: L.RAID_ASSISTANT_DESC = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!";
	--TODO: L.LOOT_SPEC_UNKNOWN = "Loot Specialization Unknown";
	--TODO: L.LOOT_SPEC = "Loot Specialization";
	--TODO: L.LOOT_SPEC_DESC = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to change it now!";
	--TODO: L.DUNGEON_DIFF = "Dungeon Difficulty";
	--TODO: L.DUNGEON_DIFF_DESC = "The difficulty setting for dungeons.\n\nClick this row to change it now!";
	--TODO: L.RAID_DIFF = "Raid Difficulty";
	--TODO: L.RAID_DIFF_DESC = "The difficulty setting for raids.\n\nClick this row to change it now!";
	--TODO: L.LEGACY_RAID_DIFF = "Legacy Raid Difficulty";
	--TODO: L.LEGACY_RAID_DIFF_DESC = "The difficulty setting for legacy raids.\n\nClick this row to change it now!";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON = "Teleport to/from Dungeon";
	--TODO: L.TELEPORT_TO_FROM_DUNGEON_DESC = "Click here to teleport to/from your current instance.\n\nYou can utilize the Mists of Pandaria Scenarios to quickly teleport yourself outside of your current instance this way.";
	--TODO: L.RESET_INSTANCES = "Reset Instances";
	--TODO: L.RESET_INSTANCES_DESC = "Click here to reset your instances.\n\n"..ALT_KEY_TEXT.." click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!";
	--TODO: L.DELIST_GROUP = "Delist Group";
	--TODO: L.DELIST_GROUP_DESC = "Click here to delist the group. If you are by yourself, it will softly leave the group without porting you out of any instance you are in.";
	--TODO: L.LEAVE_GROUP = "Leave Group";
	--TODO: L.LEAVE_GROUP_DESC = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.";
	--TODO: L.LOOT_SPEC_DESC_2 = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.CURRENT_SPEC = "Current Specialization";
	--TODO: L.CURRENT_SPEC_DESC = "If you switch your talents, your loot specialization changes with you.";
	--TODO: L.DUNGEON_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a dungeon.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.CLICK_TO_CHANGE = "Click to change now. (if available)";
	--TODO: L.RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a raid.\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.LEGACY_RAID_DIFF_DESC_2 = "This setting allows you to customize the difficulty of a legacy raid. (Pre-Siege of Orgrimmar)\n\nClick this row to go back to the Raid Assistant.";
	--TODO: L.REROLL = "Reroll";
	--TODO: L.REROLL_DESC = "Click this button to reroll using the active filter.";
	--TODO: L.APPLY_SEARCH_FILTER = "Apply a Search Filter";
	--TODO: L.APPLY_SEARCH_FILTER_DESC = "Please select a search filter option.";
	--TODO: L.SEARCH_EVERYTHING_BUTTON_OF_DOOM = "Click this button to search... EVERYTHING.";
	--TODO: L.ACHIEVEMENT_DESC = "Click this button to select a random achievement based on what you're missing.";
	--TODO: L.ITEM_DESC = "Click this button to select a random item based on what you're missing.";
	--TODO: L.INSTANCE_DESC = "Click this button to select a random instance based on what you're missing.";
	--TODO: L.DUNGEON_DESC = "Click this button to select a random dungeon based on what you're missing.";
	--TODO: L.RAID_DESC = "Click this button to select a random raid based on what you're missing.";
	--TODO: L.MOUNT_DESC = "Click this button to select a random mount based on what you're missing.";
	--TODO: L.PET_DESC = "Click this button to select a random pet based on what you're missing.";
	--TODO: L.QUEST_DESC = "Click this button to select a random quest based on what you're missing.";
	--TODO: L.TOY_DESC = "Click this button to select a random toy based on what you're missing.";
	--TODO: L.ZONE_DESC = "Click this button to select a random zone based on what you're missing.";
	--TODO: L.GO_GO_RANDOM = "Random - Go Get 'Em!";
	--TODO: L.GO_GO_RANDOM_DESC = "This window allows you to randomly select a place or item to get. Go get 'em!";
	--TODO: L.CHANGE_SEARCH_FILTER = "Change Search Filter";
	--TODO: L.CHANGE_SEARCH_FILTER_DESC = "Click this to change your search filter.";
	--TODO: L.REROLL_2 = "Reroll: ";
	--TODO: L.NOTHING_TO_SELECT_FROM = "There was nothing to randomly select from. If 'Ad-Hoc Updates' is enabled in Settings, the Main list must be updated (/att) before using this window.";
	--TODO: L.NO_SEARCH_METHOD = "No search method specified.";
	--TODO: L.PROFESSION_LIST = "Profession List";
	--TODO: L.PROFESSION_LIST_DESC = "Open your professions to cache them.";
	--TODO: L.CACHED_RECIPES_1 = "Cached ";
	--TODO: L.CACHED_RECIPES_2 = " known recipes!";
	--TODO: L.WORLD_QUESTS_DESC = "These are World Quests and other time-limited Things that are currently available somewhere. Go get 'em!";
	--TODO: L.QUESTS_DESC = "Shows all possible QuestID's in the game in ascending numeric order.";
	--TODO: L.UPDATE_WORLD_QUESTS = "Update World Quests Now";
	--TODO: L.UPDATE_WORLD_QUESTS_DESC = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	--TODO: L.CLEAR_WORLD_QUESTS = "Clear World Quests";
	--TODO: L.CLEAR_WORLD_QUESTS_DESC = "Click to clear the current information within the World Quests frame";
	--TODO: L.ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC = "All items that can be used to obtain achievements that you are missing are displayed here.";
	--TODO: L.ALL_THE_APPEARANCES_DESC = "All appearances that you need are displayed here.";
	--TODO: L.ALL_THE_MOUNTS_DESC = "All mounts that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_BATTLEPETS_DESC = "All pets that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_QUESTS_DESC = "All quests that have objective or starting items that can be sold on the auction house are displayed here.";
	--TODO: L.ALL_THE_RECIPES_DESC = "All recipes that you have not collected yet are displayed here.";
	--TODO: L.ALL_THE_ILLUSIONS_DESC = "Illusions, toys, and other items that can be used to earn collectible items are displayed here.";
	--TODO: L.ALL_THE_REAGENTS_DESC = "All items that can be used to craft an item using a profession on your account.";
	--TODO: L.AH_SCAN_SUCCESSFUL_1 = ": Successfully scanned ";
	--TODO: L.AH_SCAN_SUCCESSFUL_2 = " item(s).";
	--TODO: L.REAGENT_CACHE_OUT_OF_DATE = "Reagent Cache is out-of-date and will be re-cached when opening your professions!";
	--TODO: L.ARTIFACT_CACHE_OUT_OF_DATE = "Artifact Cache is out-of-date/inaccurate and will be re-cached when logging onto each character!";
	--TODO: L.QUEST_LOOP = "Likely just broke out of an infinite source quest loop.";
	--TODO: L.QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT = "Quest '%s' %s will prevent collection of Breadcrumb Quest '%s' %s";
	--TODO: L.QUEST_OBJECTIVE_INVALID = "Invalid Quest Objective";
	--TODO: L.REFRESHING_COLLECTION = "Refreshing collection...";
	--TODO: L.DONE_REFRESHING = "Done refreshing collection.";
	--TODO: L.ADHOC_UNIQUE_COLLECTED_INFO = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";
	--TODO: L.REQUIRES_PVP = "|CFF00FFDEThis Thing requires Player vs Player activities or a currency related to those activities.|r";
	--TODO: L.REQUIRES_PETBATTLES = "|CFF00FFDEThis Thing requires Pet Battling.|r";
	--TODO: L.REPORT_INACCURATE_QUEST = "Wrong Quest Info! (Click to Report)";
	--TODO: L.NESTED_QUEST_REQUIREMENTS = "Nested Quest Requirements";
	--TODO: L.MAIN_LIST_REQUIRES_REFRESH = "[Open Main list to update progress]";
	--TODO: L.DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207This group and its content do not contribute to the progress of this window since it is Sourced in another Location!|r";
	--TODO: L.CURRENCY_NEEDED_TO_BUY = "Estimated amount needed to obtain remaining Things";
	--TODO: L.LOCK_CRITERIA_LEVEL_LABEL = "Player Level";
	--TODO: L.LOCK_CRITERIA_QUEST_LABEL = "Completed Quest";
	--TODO: L.LOCK_CRITERIA_SPELL_LABEL = "Learned Spell/Mount/Recipe";
	--TODO: L.LOCK_CRITERIA_FACTION_LABEL = "Faction Reputation";
	--TODO: L.LOCK_CRITERIA_FACTION_FORMAT = "%s with %s (Current: %s)";
	--TODO: L.FORCE_REFRESH_REQUIRED = "This may require a Force Refresh ("..SHIFT_KEY_TEXT.." click) to properly be collected.";
	--TODO: L.FUTURE_UNOBTAINABLE = "Future Unobtainable!";
	--TODO: L.FUTURE_UNOBTAINABLE_TOOLTIP = "This is content that has been confirmed or is highly-probable to be made unobtainable in a known future patch.";
	L.TRADING_POST = "Posto Comercial";

	-- Item Filter Window
		--TODO: L.ITEM_FILTER_TEXT = "Item Filters";
		--TODO: L.ITEM_FILTER_DESCRIPTION = "You can search the ATT Database by using a item filter.";
		--TODO: L.ITEM_FILTER_BUTTON_TEXT = "Set Item Filter";
		--TODO: L.ITEM_FILTER_BUTTON_DESCRIPTION = "Click this to change the item filter you want to search for within ATT.";
		--TODO: L.ITEM_FILTER_POPUP_TEXT = "Which Item Filter would you like to search for?";

-- Instructional Text
	--TODO: L.MINIMAP_MOUSEOVER_TEXT = "Right click to change settings.\nLeft click to open the Main List.\n"..CTRL_KEY_TEXT.." click to open the Mini List.\n"..SHIFT_KEY_TEXT.." click to Refresh Collections.";
	--TODO: L.TOP_ROW_INSTRUCTIONS = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists\n"..ALT_KEY_TEXT.." right click to Plot Waypoints|r";
	--TODO: L.TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	--TODO: L.RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000The more information, the better.  Thanks!|r";
	--TODO: L.TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." click to Lock this Window";
	--TODO: L.TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." click to Unlock this Window";
	--TODO: L.QUEST_ROW_INSTRUCTIONS = "Right Click to see any Quest Chain Requirements";
	--TODO: L.SYM_ROW_INFORMATION = "Right Click to see additional content which is Sourced in another location";
	--TODO: L.QUEST_ONCE_PER_ACCOUNT = "Once-Per-Account Quest";
	--TODO: L.QUEST_ONCE_PER_ACCOUNT_FORMAT = "Completed By: %s";

-- Settings.lua
	--TODO: L.SKIP_AUTO_REFRESH = "Skip Settings-Toggle Data Refreshes!";
	--TODO: L.SKIP_AUTO_REFRESH_TOOLTIP = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";
	--TODO: L.AFTER_REFRESH = "After Refresh";

	-- General tab
		-- Mode Title
			--TODO: L.MODE = "Mode";
			--TODO: L.TITLE_COMPLETIONIST = "Completionist ";
			--TODO: L.TITLE_UNIQUE_APPEARANCE = "Unique ";
			--TODO: L.TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
			--TODO: L.TITLE_ACCOUNT = app.ccColors.Account .. "Account|R ";
			--TODO: L.TITLE_MAIN_ONLY = " (Main Only)";
			--TODO: L.TITLE_NONE_THINGS = "None of the Things ";
			--TODO: L.TITLE_ONLY = " Only ";
			--TODO: L.TITLE_INSANE = app.ccColors.Insane.."Insane|R ";
			--TODO: L.TITLE_SOME_THINGS = "Some of the Things ";
			--TODO: L.TITLE_LEVEL = "Level ";
			--TODO: L.TITLE_SOLO = "Solo ";
			--TODO: L._BETA_LABEL = " |cff4AA7FF[Beta]|R";

		--TODO: L.GENERAL_CONTENT = "General Content";
		--TODO: L.MERCH_BUTTON_LABEL = "Merch";
		--TODO: L.TWITCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!";
		--TODO: L.DISCORD_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Discord server.\n\nYou can share your progress/frustrations with other collectors!";
		--TODO: L.PATREON_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Patreon page.\n\nHere you can see how you can support the AddOn financially!";
		--TODO: L.MERCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
		--TODO: L.MODE_EXPLAIN_LABEL = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		--TODO: L.DEBUG_MODE = app.ccColors.Red.."Debug Mode|r (Show Everything)";
		--TODO: L.DEBUG_MODE_TOOLTIP = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
		--TODO: L.COMPLETIONIST_MODE = "+Sources";
		--TODO: L.COMPLETIONIST_MODE_TOOLTIP = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
		--TODO: L.I_ONLY_CARE_ABOUT_MY_MAIN = "Main Only";
		--TODO: L.MAIN_ONLY_MODE_TOOLTIP = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
		--TODO: L.ACCOUNT_MODE = app.ccColors.Account.."Account Mode";
		--TODO: L.ACCOUNT_MODE_TOOLTIP = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.";
		--TODO: L.FACTION_MODE = "Faction Only";
		--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
		--TODO: L.PRECISION_SLIDER = "Precision Level";
		--TODO: L.PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
		--TODO: L.MINIMAP_SLIDER = "Minimap Button Size";
		--TODO: L.MINIMAP_SLIDER_TOOLTIP = 'Use this to customize the size of the Minimap Button.\n\nDefault: 36';
		L.ACCOUNT_THINGS_LABEL = ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." Things";	--TODO
		--TODO: L.GENERAL_THINGS_LABEL = "General Things";
		--TODO: L.EXPANSION_THINGS_LABEL = "Expansion Things";
		--TODO: L.EXTRA_THINGS_LABEL = "Additional Resources";
		--TODO: L.STRANGER_THINGS_LABEL = "Stranger Things";
		--TODO: L.ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Enable this option to track achievements.";
		L.TMOG_CHECKBOX_TOOLTIP = "Enable this option to track appearance acquisition.\n\nNOTE: Disabling this option also disables all fanfares and acquisition logic.  You can use this toggle as a way to prevent lag spikes while doing important group content, but bear in mind the computation will need to occur once re-enabled.\n\n"..ACC_WIDE_DEFAULT;	--TODO
		--TODO: L.AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
		L.BATTLE_PETS_CHECKBOX_TOOLTIP = "Enable this option to track battle pets and companions. These can be found in the open world or via boss drops in various Dungeons and Raids as well as from Vendors and Reputation.\n\n"..ACC_WIDE_DEFAULT;	--TODO
		--TODO: L.FLIGHT_PATHS_CHECKBOX = app.ccColors.Insane .. "Flight Paths & Ferry Stations";
		--TODO: L.FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\nNOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.";
		--TODO: L.FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		--TODO: L.HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.\n\n"..ACC_WIDE_DEFAULT;
		--TODO: L.HEIRLOOMS_UPGRADES_CHECKBOX = app.ccColors.Insane .. "+Upgrades";
		--TODO: L.HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
		L.ILLUSIONS_CHECKBOX = app.ccColors.Insane..WEAPON_ENCHANTMENT;	--TODO: make it plural
		L.ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.\n\n"..ACC_WIDE_DEFAULT;	--TODO
		L.MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!\n\n"..ACC_WIDE_DEFAULT;	--TODO
		--TODO: L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t " .. app.ccColors.Insane .. "Music Rolls & Selfie Filters";
		--TODO: L.MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX_TOOLTIP = "Enable this option to track music rolls and selfie filters.\n\nYou can use your Jukebox Toy to play in-game music and your Selfie Camera toy to collect filters for your selfies from certain locations.";
		--TODO: L.QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Quests are not permanently tracked due to the nature of how Daily, Weekly, Yearly, and World Quests are tracked in the Blizzard Database.";
		--TODO: L.QUESTS_LOCKED_CHECKBOX = app.ccColors.Insane .. "+Locked";
		L.QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." Quests to incorporate progress from other characters.";	--TODO
		--TODO: L.RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		--TODO: L.REPUTATIONS_CHECKBOX = app.ccColors.Insane .. "Reputations";
		--TODO: L.REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		--TODO: L.RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t " .. app.ccColors.Insane .. "Runecarving Powers";
		--TODO: L.RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Runecarving Powers.";
		L.DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP = "Enable this option to track "..EXPANSION_NAME9.." "..DRAKE_MANUSCRIPTS;	--TODO
		--TODO: L.SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Soulbind Conduits.";
		--TODO: L.TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		L.TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!\n\n"..ACC_WIDE_DEFAULT;	--TODO
		--TODO: L.MINIMAP_BUTTON_CHECKBOX = "Show the Minimap Button";
		--TODO: L.MINIMAP_BUTTON_CHECKBOX_TOOLTIP = "Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.";
		--TODO: L.MINIMAP_BUTTON_STYLE_CHECKBOX = "Use the Old Minimap Style";
		--TODO: L.MINIMAP_BUTTON_STYLE_CHECKBOX_TOOLTIP = "Some people don't like the new minimap button...\n\nThose people are wrong!\n\nIf you don't like it, here's an option to go back to the old style.";
		--TODO: L.SHOW_COMPLETED_GROUPS_CHECKBOX = "Show Completed Groups";
		--TODO: L.SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: L.SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
		--TODO: L.SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		--TODO: L.SHOW_INCOMPLETE_THINGS_CHECKBOX = "Show All Trackable Things";
		--TODO: L.SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
		--TODO: L.SHOW_REPEATABLE_THINGS_CHECKBOX = "Collect Repeatable Quests";
		--TODO: L.SHOW_REPEATABLE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to treat repeatable daily, weekly, and yearly quests as collectible. They will appear in the list like a regular collectible quest.\n\nNOTE: This is NOT intended to be used all the time, but if you're doing a set of dailies in a zone you've otherwise completed and need to be reminded of what is there, you can use this to see them.";
		--TODO: L.FIRST_TIME_CHECKBOX = "First Time Only";
		--TODO: L.FIRST_TIME_CHECKBOX_TOOLTIP = "Enable this option if you want to treat repeatable daily, weekly, yearly and world quests as collected if completed at least once, ignoring quest previously completed that has been reset.\n\nNOTE: Previously completed repeatable quest are only stored if you completed the quest with the addon active and that data will be lost if removed the addon data from WTF folder.";
		--TODO: L.FILTER_THINGS_BY_LEVEL_CHECKBOX = app.ccColors.Insane .. "No Level Restrictions";
		--TODO: L.FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Enable this setting if you want to see content available regardless of player level.\n\nNOTE: Disabling this is especially useful on Starter Accounts.";
		--TODO: L.SHOW_BOE_CHECKBOX = app.ccColors.Insane .. "BoE/BoA Items";
		--TODO: L.SHOW_BOE_CHECKBOX_TOOLTIP = "Enable this setting if you want to show Bind-on-Equip/Account items.\n\nDisabling this setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.";
		--TODO: L.SHOW_PVP_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which 'may' require Player vs. Player interactions within the game.";
		--TODO: L.SHOW_ALL_SEASONAL = app.ccColors.Insane .. "All Seasonal Events";
		--TODO: L.SHOW_ALL_SEASONAL_TOOLTIP = "Enable this setting to show all seasonal events, instead of only currently active seasonal events.";
		--TODO: L.SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which requires Pet Battles within the game.";
		--TODO: L.IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignore BoE/BoA Item Filters";
		--TODO: L.IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE/BoA items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.";
		--TODO: L.EXPAND_DIFFICULTY_CHECKBOX = "Expand Current Difficulty";
		--TODO: L.EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
		--TODO: L.WARN_DIFFICULTY_CHECKBOX = "Warn Completed Difficulty";
		--TODO: L.WARN_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to be warned when you enter an instance with a difficulty setting that will result in you being unable to earn new collectibles when there is an alternative unsaved difficulty that you could enter instead.";
		--TODO: L.REPORT_COLLECTED_THINGS_CHECKBOX = "Report Collected Things";
		--TODO: L.REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		--TODO: L.REPORT_COMPLETED_QUESTS_CHECKBOX = "Report Quests";
		--TODO: L.REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see the QuestID for any quest you Accept or Complete immediately after it happens. (For reporting bugs, trackings purposes, etc)";
		--TODO: L.REPORT_UNSORTED_CHECKBOX = "Only 'Unsourced'";
		--TODO: L.REPORT_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the QuestID if it isn't already Sourced.";
		--TODO: L.BEHAVIOR_LABEL = "List Behavior";
		--TODO: L.DYNAMIC_CATEGORY_LABEL = "Dynamic Categories";
		--TODO: L.DYNAMIC_CATEGORY_OFF_TOOLTIP = "Do not generate any Dynamic Categories.";
		--TODO: L.DYNAMIC_CATEGORY_SIMPLE = "Simple";
		--TODO: L.DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Generate Dynamic Categories based only on the very highest Category.";
		--TODO: L.DYNAMIC_CATEGORY_NESTED = "Nested";
		--TODO: L.DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
		--TODO: L.DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Requires Reload|r";
		--TODO: L.CLICK_TO_CREATE_FORMAT = "Click to Create %s";
		--TODO: L.KEYBINDINGS_TEXT = "You can set keybindings for ATT in the game's options.";

	-- Account-Wide Checkboxes
		L.ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = TRACK_ACC_WIDE.."\n\nAchievement tracking is usually "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but there are a number of achievements exclusive to specific classes and races that you can't get on your main.";	--TODO
		L.ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = TRACK_ACC_WIDE.."\n\nAzerite Essences cannot technically be collected and used "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but if you only care about collecting them on your main character then you may prefer tracking them "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..".";	--TODO
		L.ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = TRACK_ACC_WIDE.."\n\nFlight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";	--TODO
		L.ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = TRACK_ACC_WIDE.."\n\nFollowers are typically per character, but do you really want to have to collect 243 Garrison Inn Followers on one character at a rate of 1 per week?\n\nI think not, good sir.";	--TODO
		L.ACCOUNT_WIDE_MUSIC_ROLLS_SELFIE_FILTERS_TOOLTIP = TRACK_ACC_WIDE.."\n\nMusic Rolls & Selfie Filters are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nNOTE: You can only play Music Rolls using the Jukebox Toy or snap a selfie with your S.E.L.F.I.E Camera Toy that you have collected on your current character.";	--TODO
		L.ACCOUNT_WIDE_QUESTS_TOOLTIP = TRACK_ACC_WIDE.."\n\nQuest completion is typically per Character, but this will consider a Quest as completed if ANY Character has completed that specific Quest.";	--TODO
		L.ACCOUNT_WIDE_RECIPES_TOOLTIP = TRACK_ACC_WIDE.."\n\nRecipes are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.";	--TODO
		L.ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = TRACK_ACC_WIDE.."\n\nReputations are now tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database for achievements, so turning this on may be a good idea.";	--TODO
		L.ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = TRACK_ACC_WIDE.."\n\nEnable this to consider a Soulbind Conduit as collected for all characters if at least one character has learned it.";	--TODO
		L.ACCOUNT_WIDE_TITLES_TOOLTIP = TRACK_ACC_WIDE.."\n\nMost titles are tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but some prestigious titles in WoW are locked to the character that earned them.\n\nToggle this if you don't care about that and want to see those titles marked Collected for your alts.";	--TODO

	-- Filters tab
		--TODO: L.ITEM_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		--TODO: L.CLASS_DEFAULTS_BUTTON = "Class Defaults";
		--TODO: L.CLASS_DEFAULTS_BUTTON_TOOLTIP = "Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.";
		--TODO: L.ALL_BUTTON_TOOLTIP = "Click this button to enable all options at once.";
		--TODO: L.UNCHECK_ALL_BUTTON_TOOLTIP = "Click this button to disable all options at once.";
		--TODO: L.CUSTOM_FILTERS_LABEL = "Automated Content";
		--TODO: L.CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if it is available to your current character or if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		--TODO: L.CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Enable this setting to forcibly show %s content even if it is not available to the current character.";

	-- Unobtainables tab
		--TODO: L.UNOBTAINABLES_TAB = "Unobtainables";
		--TODO: L.SEASONAL_LABEL = "Seasonal";
		--TODO: L.SEASONAL_ALL = "|cffECBC21Show All Seasonal";
		--TODO: L.UNOBTAINABLE_LABEL = "Unobtainable Content";
		--TODO: L.UNOBTAINABLE_ALL = "|cffECBC21Show All Unobtainable";
		--TODO: L.NO_CHANCE_ALL = "|cffECBC21Show All \"No Chance\"";
		--TODO: L.HIGH_CHANCE_ALL = "|cffECBC21Show All \"High Chance\"";

	-- Interface tab
		--TODO: L.TOOLTIP_LABEL = "Tooltips";
		--TODO: L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Tooltip Integrations";
		--TODO: L.ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		--TODO: L.DISPLAY_IN_COMBAT_CHECKBOX = "In Combat";
		--TODO: L.DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		--TODO: L.TOOLTIP_MOD_LABEL = "Modifier";
		--TODO: L.TOOLTIP_SHOW_LABEL = "Shown Information";
		--TODO: L.SHOW_COLLECTION_PROGRESS_CHECKBOX = "Collection Progress";
		--TODO: L.SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		--TODO: L.ICON_ONLY_CHECKBOX = "Icon Only";
		--TODO: L.ICON_ONLY_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
		--TODO: L.COORDINATES_CHECKBOX = "Coordinates";
		--TODO: L.COORDINATES_CHECKBOX_TOOLTIP = "Enable this option if you want to see coordinates in the tooltip when hovering over an entry in the mini list.";
		--TODO: L.DESCRIPTIONS_CHECKBOX = "Descriptions";
		--TODO: L.DESCRIPTIONS_CHECKBOX_TOOLTIP = "Enable this option to show descriptions within the tooltip. This may include the descriptive text added by a Contributor that felt some additional information was necessary.\n\nYou might want to keep this turned on.";
		--TODO: L.LORE_CHECKBOX = "Lore";
		--TODO: L.LORE_CHECKBOX_TOOLTIP = "Enable this option to show lore within the tooltip. This may include the descriptive text supplied by the Dungeon Journal or for flavor by a Contributor.";
		--TODO: L.KNOWN_BY_CHECKBOX = "Known By";
		--TODO: L.KNOWN_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
		--TODO: L.COMPLETED_BY_CHECKBOX = "Completed By";
		--TODO: L.COMPLETED_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
		--TODO: L.SHOW_MODELS_CHECKBOX = "Model Preview";
		--TODO: L.SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		--TODO: L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Currency calculation";
		--TODO: L.SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
		--TODO: L.SHARED_APPEARANCES_CHECKBOX = "Shared Appearances";
		--TODO: L.SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
		--TODO: L.INCLUDE_ORIGINAL_CHECKBOX = "Original Source";
		--TODO: L.INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
		--TODO: L.ONLY_RELEVANT_CHECKBOX = "Only Relevant";
		--TODO: L.ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
		--TODO: L.PROFESSION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the profession requirements in the tooltip.";
		--TODO: L.LEVELREQ_CHECKBOX = "Levels";
		--TODO: L.LEVELREQ_CHECKBOX_TOOLTIP = "Enable this option if you want to see the level requirements in the tooltip.";
		--TODO: L.CLASSES_CHECKBOX = "Classes";
		--TODO: L.CLASSES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of class requirements in the tooltip.";
		--TODO: L.RACES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of race requirements in the tooltip.";
		--TODO: L.SPEC_CHECKBOX = "Specializations";
		--TODO: L.SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		--TODO: L.SUMMARIZE_CHECKBOX = "Summarize Things";
		--TODO: L.SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		--TODO: L.CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		--TODO: L.SOURCE_LOCATIONS_CHECKBOX = "Source Locations";
		--TODO: L.SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		--TODO: L.LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		--TODO: L.COMPLETED_SOURCES_CHECKBOX = "For Completed";
		--TODO: L.COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		--TODO: L.DROP_CHANCES_CHECKBOX = "Drop Chances";
		--TODO: L.DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		--TODO: L.FOR_CREATURES_CHECKBOX = "For Creatures";
		--TODO: L.FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		--TODO: L.FOR_THINGS_CHECKBOX = "For Things";
		--TODO: L.FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		--TODO: L.FOR_UNSORTED_CHECKBOX = "For Unsorted";
		--TODO: L.FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		--TODO: L.WITH_WRAPPING_CHECKBOX = "Allow Wrapping",
		--TODO: L.WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.",
		--TODO: L.SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		--TODO: L.SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
		--TODO: L.PERCENTAGES_CHECKBOX = "Show Percentage Completion";
		--TODO: L.PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		--TODO: L.MORE_COLORS_CHECKBOX = "Show Colors";
		--TODO: L.MORE_COLORS_CHECKBOX_TOOLTIP = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
		--TODO: L.TOOLTIP_HELP_CHECKBOX = "Show Tooltip Help";
		--TODO: L.TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Enable this option if you want to see the help info in ATT window tooltips which indicates various key/click combinations for ATT window functionality.\nIf you already know all of the key/click combinations, you may want to save tooltip space and disable this option.";
		--TODO: L.MAIN_LIST_SLIDER_LABEL = "Main List Scale";
		--TODO: L.MAIN_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
		--TODO: L.MINI_LIST_SLIDER_LABEL = "Mini Lists Scale";
		--TODO: L.MINI_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
		--TODO: L.ADDITIONAL_LABEL = "Additional Information";
		--TODO: L.WINDOW_COLORS = "Window Colors";
		--TODO: L.BACKGROUND_TOOLTIP = "Set the background color of all ATT windows.";
		--TODO: L.BORDER_TOOLTIP = "Set the border color of all ATT windows.";
		--TODO: L.RESET_TOOLTIP = "Reset the background and border color of all ATT windows.";
		--TODO: L.CLASS_BORDER = "Use Class Color For Border";
		--TODO: L.CLASS_BORDER_TOOLTIP = "Use your class color for the borders. This updates when you log onto another class.";

	-- Features tab
		--TODO: L.MINIMAP_LABEL = "Minimap Button";
		--TODO: L.MODULES_LABEL = "Modules & Mini Lists";
		--TODO: L.REPORTING_LABEL = "Reporting";
		--TODO: L.ADHOC_UPDATES_CHECKBOX = "Ad-Hoc Window Updates";
		--TODO: L.ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
		--TODO: L.SKIP_CUTSCENES_CHECKBOX = "Automatically Skip Cutscenes";
		--TODO: L.SKIP_CUTSCENES_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically skip all cutscenes on your behalf.";
		--TODO: L.AUTO_BOUNTY_CHECKBOX = "Automatically Open the Bounty List";
		--TODO: L.AUTO_BOUNTY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the items that have an outstanding collection bounty. If you manage to snag one of the items posted on this list, you could make a good sum of gold.\n\nShortcut Command: /attbounty";
		--TODO: L.AUTO_MAIN_LIST_CHECKBOX = "Automatically Open the Main List";
		--TODO: L.AUTO_MAIN_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically open the Main List when you login.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Main List\n\nShortcut Command: /att";
		--TODO: L.AUTO_MINI_LIST_CHECKBOX = "Automatically Open the Mini List";
		--TODO: L.AUTO_MINI_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want to see everything you can collect in your current zone. The list will automatically switch when you change zones. Some people don't like this feature, but when you are solo farming, this feature is extremely useful.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Mini List\n\nShortcut Command: /att mini";
		--TODO: L.AUTO_PROF_LIST_CHECKBOX = "Automatically Open the Profession List";
		--TODO: L.AUTO_PROF_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List";
		--TODO: L.AUTO_RAID_ASSISTANT_CHECKBOX = "Automatically Open the Raid Assistant";
		--TODO: L.AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP = "Enable this option if you want to see an alternative group/party/raid settings manager called the 'Raid Assistant'. The list will automatically update whenever group settings change.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Raid Assistant\n\nShortcut Command: /attra";
		--TODO: L.AUTO_WQ_LIST_CHECKBOX = "Automatically Open the World Quests List";
		--TODO: L.AUTO_WQ_LIST_CHECKBOX_TOOLTIP = "Enable this option if you want the 'World Quests' list to appear automatically. The list will automatically update whenever you switch zones.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle World Quests List\n\nShortcut Command: /attwq";
		--TODO: L.CURRENCIES_IN_WQ_CHECKBOX = "Show Collectible Cost Groups";
		--TODO: L.CURRENCIES_IN_WQ_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be considered collectible and show under dynamically-populated Quests.";
		--TODO: L.AUCTION_TAB_CHECKBOX = "Show the Auction House Module Tab";
		--TODO: L.AUCTION_TAB_CHECKBOX_TOOLTIP = "Enable this option if you want to see the Auction House Module provided with ATT.\n\nSome addons are naughty and modify this frame extensively. ATT doesn't always play nice with those toys.";
		--TODO: L.SORT_BY_PROGRESS_CHECKBOX = "Sort By Progress";
		--TODO: L.SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." right click) to sort by the total progress of each group (instead of by Name)";
		--TODO: L.QUEST_CHAIN_NESTED_CHECKBOX = "Show Nested Quest Chains";
		--TODO: L.QUEST_CHAIN_NESTED_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		--TODO: L.CELEBRATIONS_LABEL = "Celebrations & Sound Effects";
		--TODO: L.AUDIO_CHANNEL = "Audio Channel";
		--TODO: L.CELEBRATE_COLLECTED_CHECKBOX = "Collected Things Trigger a Celebration";
		--TODO: L.CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		--TODO: L.SOUNDPACK = "Soundpack";
		--TODO: L.WARN_REMOVED_CHECKBOX = "Removed Things Trigger a Warning";
		--TODO: L.WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		--TODO: L.SCREENSHOT_COLLECTED_CHECKBOX = "Collected Things Trigger a Screenshot";
		--TODO: L.SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to take a screenshot for every Thing you collect.";
		--TODO: L.ICON_LEGEND_LABEL = "Icon Legend";
		--TODO: L.ICON_LEGEND_TEXT = app.ccColors.White .. "|TInterface\\AddOns\\AllTheThings\\assets\\status-unobtainable.blp:0|t " .. "Unobtainable" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-prerequisites.blp:0|t " .. "Obtainable only with prerequisites" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-seasonal-unavailable.blp:0|t " .. "Seasonal content" .. "\n|TInterface\\FriendsFrame\\StatusIcon-Offline:0|t " .. "Unavailable on current character";
		--TODO: L.CHAT_COMMANDS_LABEL = "Chat Commands";
		--TODO: L.CHAT_COMMANDS_TEXT = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFOpens the Main List.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFOpens the Mini List.\n\n|R/att bounty\n|cffFFFFFFOpens a list of bugged or unconfirmed items.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFOpens the Raid Assistant.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFOpens the World Quests List.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Item Link]\n|cffFFFFFFOpens a window with shared appearances. Also works with other things, such as|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFShows all future Removed With Patch things.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFOpens the Random List.\n\n|R/att unsorted\n|cffFFFFFFOpens a list of unsourced items. Best opened in Debug Mode.\n\n|R/rl\n|cffFFFFFFReload your WoW interface.|R";

	-- Profiles tab
		--TODO: L.PROFILES_PAGE = "Profiles";
		--TODO: L.PROFILE = "Profile";
		--TODO: L.PROFILE_INITIALIZE = "Initialize Profiles";
		--TODO: L.PROFILE_INITIALIZE_TOOLTIP = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
		--TODO: L.PROFILE_INITIALIZE_CONFIRM = "Are you sure you want to enable Profile support?";
		--TODO: L.PROFILE_NEW_TOOLTIP = "Create a blank Profile to be used by the current Character";
		--TODO: L.PROFILE_COPY_TOOLTIP = "Copy the Selected Profile into the Current Profile";
		--TODO: L.PROFILE_DELETE_TOOLTIP = "Delete the Selected Profile";
		--TODO: L.PROFILE_SWITCH_TOOLTIP = "Set the Selected Profile as the Current Profile\n\nA Profile can also be "..SHIFT_KEY_TEXT.." clicked to Switch to it";
		--TODO: L.SHOW_PROFILE_LOADED = "Show which profile loads during login or when switching between profiles";

	-- Sync tab
		--TODO: L.SYNC_PAGE = "Sync";
		--TODO: L.ACCOUNT_SYNCHRONIZATION = "Account Synchronization";
		--TODO: L.AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatically Sync Account Data";
		--TODO: L.AUTO_SYNC_ACC_DATA_TOOLTIP = "Enable this option if you want ATT to attempt to automatically synchronize account data between accounts when logging in or reloading the UI.";
		--TODO: L.ACCOUNT_MANAGEMENT = "Account Management";
		--TODO: L.ACCOUNT_MANAGEMENT_TOOLTIP = "This list shows you all of the functionality related to syncing account data.";
		--TODO: L.ADD_LINKED_CHARACTER_ACCOUNT = "Add Linked Character / Account";
		--TODO: L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP = "Click here to link a character or account to your account.";
		--TODO: L.ADD_LINKED_POPUP = "Please type the name of the character or BNET account to link to.";
		--TODO: L.SYNC_CHARACTERS_TOOLTIP = "This shows all of the characters on your account.";
		--TODO: L.NO_CHARACTERS_FOUND = "No characters found.";
		--TODO: L.LINKED_ACCOUNTS = "Linked Accounts";
		--TODO: L.LINKED_ACCOUNTS_TOOLTIP = "This shows all of the linked accounts you have defined so far.";
		--TODO: L.NO_LINKED_ACCOUNTS = "No linked accounts found.";
		--TODO: L.LINKED_ACCOUNT_TOOLTIP = "This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.";
		--TODO: L.DELETE_LINKED_CHARACTER = "Right Click to Delete this Linked Character";
		--TODO: L.DELETE_LINKED_ACCOUNT = "Right Click to Delete this Linked Account";
		--TODO: L.DELETE_CHARACTER = "Right Click to Delete this Character";
		--TODO: L.CONFIRM_DELETE = "\n \nAre you sure you want to delete this?";

	-- About tab
		--TODO: L.ABOUT_PAGE = "About";
		--TODO: L.ABOUT_1 = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|CFFFFFFFF\n\nPS: Check out All The Things Classic and TBC Classic!\n\nYes, I intend to play Classic WoW, but between working full time and developing the two versions of the addon, there won't be a lot of time for raiding.\n\nNo, ATT is not the addon that places icons on your bag icons. That's CanIMogIt and Caerdon Wardrobe!\n\nFor online collection comparing check out DataForAzeroth.com from shoogen!|r";
		--TODO: L.ABOUT_2 = "Additional Contributors: |CFFFFFFFF(in no particular order)\nDaktar, Lucetia, Slumber, Gold, Avella, Aiue, Dead Serious, Oiche, Oxlotus, Eiltherune, Blueyleader, Iyanden, Pr3vention, BigBlaris, Talonzor, Mogwai, Heallie, Eckhardt, Boohyaka, Sadidorf, Sanctuari, Molkree, Runawaynow, Braghe, Myrhial, Darkal, Tag, and the rest of the ALL THE THINGS Discord!\n\nSpecial Shoutout to AmiYuy (CanIMogIt) and Caerdon (Caerdon Wardrobe).|r";
		--TODO: L.ABOUT_3 = "\n|CFFFFFFFFYou should absolutely download their addons to get the collection icons on items in your bags!|r";

	-- Binding Localizations
		--TODO: L.TOGGLE_ACCOUNT_MODE = "Toggle Account Mode";
		--TODO: L.TOGGLE_COMPLETIONIST_MODE = "Toggle Completionist Mode";
		--TODO: L.TOGGLE_DEBUG_MODE = "Toggle Debug Mode";
		--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";
		--TODO: L.TOGGLE_COMPLETEDTHINGS = "Toggle Completed Things (Both)";
		--TODO: L.TOGGLE_COMPLETEDGROUPS = "Toggle Completed Groups";
		--TODO: L.TOGGLE_COLLECTEDTHINGS = "Toggle Collected Things";
		--TODO: L.TOGGLE_BOEITEMS = "Toggle BoE/BoA Items";
		--TODO: L.TOGGLE_SOURCETEXT = "Toggle Source Locations";
		--TODO: L.MODULES = "Modules";
		--TODO: L.TOGGLE_MAINLIST = "Toggle ATT Main List";
		--TODO: L.TOGGLE_MINILIST = "Toggle ATT Mini List";
		--TODO: L.TOGGLE_PROFESSION_LIST = "Toggle ATT Profession List";
		--TODO: L.TOGGLE_WORLD_QUESTS_LIST = "Toggle ATT World Quests";
		--TODO: L.TOGGLE_RAID_ASSISTANT = "Toggle ATT Raid Assistant";
		--TODO: L.TOGGLE_RANDOM = "Toggle ATT Random";
		--TODO: L.REROLL_RANDOM = "Reroll the Random Selection";

	-- Event Text
		--TODO: L.ITEM_ID_ADDED = "%s (%d) was added to your collection.";
		--TODO: L.ITEM_ID_ADDED_RANK = "%s (%d) [Rank %d] was added to your collection.";
		--TODO: L.ITEM_ID_ADDED_MISSING = "%s (%d) was added to your collection. Not found in the database. Please report to the ATT Discord!";
		--TODO: L.ITEM_ID_ADDED_SHARED = "%s (%d) [+%d] were added to your collection.";
		--TODO: L.ITEM_ID_ADDED_SHARED_MISSING = "%s (%d) [+%d] were added to your collection. Not found in the database. Please report to the ATT Discord!";
		--TODO: L.ITEM_ID_REMOVED = "%s (%d) was removed from your collection.";
		--TODO: L.ITEM_ID_REMOVED_SHARED = "%s (%d) [+%d] were removed from your collection.";

	-- Tooltip Text
		--TODO: L.DROP_RATE = "Drop Rate";
		--TODO: L.QUEST_GIVER = "Quest Giver";
		--TODO: L.LOCKOUT = "Lockout";
		--TODO: L.SHARED = "Shared";
		--TODO: L.SPLIT = "Per Difficulty";
		--TODO: L.REQUIRES_LEVEL = "Requires Level";
		--TODO: L.SECRETS_HEADER = "Secrets";
		--TODO: L.LIMITED_QUANTITY = "This has a limited quantity and may not always be present on the vendor.";
		--TODO: L.SOURCE_ID_MISSING = "Please report this Item and where it was acquired to the ATT Discord in #retail-errors!";
		--TODO: L.ADDED_WITH_PATCH_FORMAT = "This gets added in patch %s";
		--TODO: L.REMOVED_WITH_PATCH_FORMAT = "This gets removed in patch %s";

	-- Artifact Relic Completion
		--TODO: L.ARTIFACT_RELIC_CACHE = "Open your Artifact UI for all of your Artifact Weapons to cache whether this is an upgrade or not. This is useful for determining if you can trade this item to a Twink or not.";
		--TODO: L.ARTIFACT_RELIC_COMPLETION = "Artifact Relic Completion";
		--TODO: L.NOT_TRADEABLE = "Not Tradeable";
		--TODO: L.TRADEABLE = "Tradeable";

	-- Icons and Collection Text
		--TODO: L.COLLECTED = "|T" .. app.asset("known") .. ":0|t |cff15abffCollected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollected*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.COMPLETE_OTHER"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.INCOMPLETE"] = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplete|r";	-- Acquired the colors and icon from CanIMogIt.
		--TODO: L.KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |cff15abffKnown on current character|r";
		--TODO: L.UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Unknown on current character|r";
		--TODO: L.COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cff0891ffCurrency|r";

local a = L.ABBREVIATIONS;
for key,value in pairs({
		["Antorus, o Trono Ardente"] = "Antorus",	-- ["Antorus, the Burning Throne"] = "Antorus"
		--TODO: ["Expansion Pre"] = "Pre",
		--TODO: ["Expansion Features"] = "EF",
		--TODO: [GROUP_FINDER] = "D&R",	-- ["Dungeons & Raids"] = "D&R"
		--TODO: ["The Burning Crusade"] = "BC",
		--TODO: ["Burning Crusade"] = "BC",
		--TODO: ["The BC"] = "BC",
		--TODO: ["Wrath of the Lich King"] = "WotLK",
		--TODO: ["Cataclysm"] = "Cata",
		--TODO: ["Mists of Pandaria"] = "MoP",
		--TODO: ["Warlords of Draenor"] = "WoD",
		--TODO: ["Battle for Azeroth"] = "BFA",
		--TODO: ["The Shadowlands"] = "SL",
		--TODO: ["Shadowlands"] = "SL",
		--TODO: ["Player vs Player"] = "PvP",
		--TODO: ["Raid Finder"] = "LFR",
		--TODO: ["Looking For Raid"] = "LFR",
		--TODO: ["Normal"] = "N",
		--TODO: ["Heroic"] = "H",
		--TODO: ["Mythic"] = "M",
		["Ny'alotha, a Cidade Desperta"] = "Ny'alotha",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["Tazavesh, o Mercado Oculto"] = "Tazavesh",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
		--TODO: ["10 Player"] = "10M",
		--TODO: ["10 Player (Heroic)"] = "10M (H)",
		--TODO: ["25 Player"] = "25M",
		--TODO: ["25 Player (Heroic)"] = "25M (H)",
		--TODO: ["Emissary Quests"] = "Emissary",
		--TODO: [TRACKER_HEADER_WORLD_QUESTS] = "WQ",	-- ["World Quests"] = "WQ"
		--TODO: ["WoW Anniversary"] = "Anniversary",
		--TODO: ["Covenant:"] = "Cov:",
})
do a[key] = value; end

--TODO: L.CUSTOM_DIFFICULTIES[-1] = "Raid Finder (5.4)";
--TODO: L.CUSTOM_DIFFICULTIES[-2] = "Flexible (5.4)";
--TODO: L.CUSTOM_DIFFICULTIES[-3] = "Normal (5.4)";
--TODO: L.CUSTOM_DIFFICULTIES[-4] = "Heroic (5.4)";

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Allied Races
		[-254] = "Raças Aliadas",									-- Allied Races
		[-255] = "Armadura Tradicional",							-- Heritage
	-- 5.3
		[-398] = "Campo de Batalha: Sertões",						-- Battlefield: Barrens
	-- Chests
		[-851] = "Depósito do Império Negro",						-- Black Empire Cache
	-- Shadowlands Header
		[-979] = "Corretor Ve'ken & Corretor Ve'nott",				-- Broker Ve'ken & Broker Ve'nott
		[-924] = "Rede de Transporte",								-- Transport Network
		[-967] = "Restauração de espelho",							-- Mirror Restoration
	-- Dragonflight
		[-1100] = DRAKE_MANUSCRIPTS,								-- Drakewatcher Manuscripts
		[-1101] = "Tempestades Primevas",							-- Primal Storms
		[-1102] = "Wrathion e Sabellian",							-- Wrathion & Sabellian
		[-1120] = "Centauro Maruuk",								-- Maruuk Centaur
		[-1130] = "Morsanos de Iskaara",							-- Iskaara Tuskarr
		[-1150] = "Farins de Argília",								-- Loamm Niffen
		[-1151] = "Pechincha",										-- Bartering
		[-1200] = "Câmaras de Zskera",								-- Zskera Vaults
		[-1202] = "Ofensivas de Fyrakk",							-- Fyrakk Assaults
		[-1203] = "Busca farejante",								-- Sniffenseeking
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
			[-5202] = "Equilíbrio de poder",						-- Balance of Power
})
do a[key] = value; end

-- Fall-back 'name' values for Quests based on QuestID
local a = L.QUEST_NAMES;
for key,value in pairs({
	-- [QuestID] = "Name",
})
do a[key] = value; end

-- Fall-back 'name' values for Items based on ItemID
local a = L.ITEM_NAMES;
for key,value in pairs({
	-- [ItemID] = "Name",
})
do a[key] = value; end

--TODO:
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..("Interface\\Icons\\achievement_newplayerexperience")..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
	["HOA"] = { icon = "|T"..("Interface\\Icons\\inv_heartofazeroth")..":0|t", color = "ffe6cc80", text = GetSpellInfo(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
	["!HOA"] = { icon = "|T"..("Interface\\Icons\\mystery_azerite_chest_normal")..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellInfo(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
})
do a[key] = value; end
