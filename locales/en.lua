--------------------------------------------------------------------------------
--						L O C A L I Z A T I O N  F I L E					  --
--------------------------------------------------------------------------------
--						English / United States (default)					  --
--------------------------------------------------------------------------------
--				Maintained By Dylan Fortune (http://dylanfortune.com)		  --
--------------------------------------------------------------------------------
--	 A localization file contains a single dictionary that populates a table  --
--------------------------------------------------------------------------------
--				This script is called directly after the Core.lua file. 	  --
--------------------------------------------------------------------------------

local name, app = ...;

-- Globals
CHARACTER_TYPE_FRAME_TRIAL_BOOST_CHARACTER = "Class Trial";
CHARACTER_UPGRADE_CHARACTER_LIST_LABEL = "Character Boost";
DRAKE_MANUSCRIPTS = "Drakewatcher Manuscripts";
TRACK_ACC_WIDE = app.ccColors.Account .. "Track "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R";
ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.."|R by default.";

local L = {
	-- General Text
	["TITLE"] = app.ccColors.ATT.."ALL THE THINGS|r";
	["AUCTION_TAB"] = app.ccColors.ATT.."ATT|r";
	["DESCRIPTION"] = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";
	["THINGS_UNTIL"] = " THINGS UNTIL ";
	["THING_UNTIL"] = " THING UNTIL ";
	["YOU_DID_IT"] = "YOU DID IT!|r";

	-- Big new chunk from AllTheThings.lua
	["PROGRESS"] = "Progress";
	["TRACKING_PROGRESS"] = "Tracking Progress";
	["COLLECTED_STRING"] = " Collected";
	["PROVIDERS"] = "Provider(s)";
	["COLLECTION_PROGRESS"] = "Collection Progress";
	["CONTAINS"] = "Contains:";
	["FACTIONS"] = "Factions";
	["COORDINATES_STRING"] = "Coordinates";
	["NO_COORDINATES_FORMAT"] = "No known coordinates for %s";
	["TOM_TOM_NOT_FOUND"] = "You must have TomTom installed to plot coordinates.";
	["FLIGHT_PATHS"] = "Flight Paths";
	["KNOWN_BY"] = "Known by ";
	["REQUIRES"] = "Requires";
	["RACE_LOCKED"] = "Race Locked";
	["PLEASE_REPORT_MESSAGE"] = "Please report this to the ATT Discord in #retail-errors! Thanks!";
	["REPORT_TIP"] = "\n("..CTRL_KEY_TEXT.."+C to copy multiline report to your clipboard)";
	["NOT_AVAILABLE_IN_PL"] = "Not available in Personal Loot.";
	["MARKS_OF_HONOR_DESC"] = "Marks of Honor must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the item)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	["ITEM_GIVES_REP"] = "Provides Reputation with '";
	["COST"] = "Cost";
	["COST_DESC"] = "This contains the visual breakdown of what is required to obtain or purchase this Thing";
	["SOURCES"] = "Source(s)";
	["SOURCES_DESC"] = "Shows the Source of this Thing.\n\nParticularly, a specific Vendor/NPC, Quest, Encounter, etc.";
	["WRONG_FACTION"] = "You might need to be on the other faction to view this.";
	["ARTIFACT_INTRO_REWARD"] = "Awarded for completing the introductory quest for this Artifact.";
	["FACTION_SPECIFIC_REP"] = "Not all reputations can be viewed on a single character. IE: Warsong Outriders cannot be viewed by an Alliance Player and Silverwing Sentinels cannot be viewed by a Horde Player.";
	["VISIT_FLIGHT_MASTER"] = "Visit the Flight Master to cache.";
	["FLIGHT_PATHS_DESC"] = "Flight paths are cached when you talk to the flight master on each continent.\n  - Crieve";
	["FOLLOWERS_COLLECTION_DESC"] = "Followers can be collected "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";
	["HEIRLOOM_TEXT"] = "Unlocked Heirloom";
	["HEIRLOOM_TEXT_DESC"] = "This indicates whether or not you have acquired or purchased the heirloom yet.";
	["FAILED_ITEM_INFO"] = "Failed to acquire item information. The item may be invalid or may not have been cached on your server yet.";
	["HEIRLOOMS_UPGRADES_DESC"] = "This indicates whether or not you have upgraded the heirloom to a certain level.\n\nR.I.P. Gold.\n - Crieve";
	["MUSIC_ROLLS_AND_SELFIE_DESC"] = "These are unlocked per-character and are not currently shared across your account. If someone at Blizzard is reading this, it would be really swell if you made these "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..".\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";
	["MUSIC_ROLLS_AND_SELFIE_DESC_2"] = "\n\nYou must first unlock the Music Rolls by completing the Bringing the Bass in your garrison for this item to drop.\n\nSelfies require the S.E.L.F.I.E Toy.";
	["OPPOSITE_FACTION_EQ"] = "Opposite faction equivalent: ";
	["SELFIE_DESC"] = "Take a selfie using your ";
	["SELFIE_DESC_2"] = " with |cffff8000";
	["TITLES_DESC"] = "Titles are tracked across your account, however, your individual character must qualify for certain titles to be usable on that character.";
	["SHARED_APPEARANCES_LABEL"] = "Shared Appearances";
	["SHARED_APPEARANCES_LABEL_DESC"] = "The items in this list are shared appearances for the above item. In Unique Appearance Mode, this list can help you understand why or why not a specific item would be marked Collected.";
	["UNIQUE_APPEARANCE_LABEL"] = "Unique Appearance";
	["UNIQUE_APPEARANCE_LABEL_DESC"] = "This item has a Unique Appearance. You must collect this item specifically to earn the appearance.";
	["UPON_COMPLETION"] = "Upon Completion";
	["UPON_COMPLETION_DESC"] = "The above quests need to be completed before being able to complete the things listed below.";
	["QUEST_CHAIN_REQ"] = "Quest Chain Requirements";
	["QUEST_CHAIN_REQ_DESC"] = "The following quests need to be completed before being able to complete the final quest.";
	["AH_SEARCH_NO_ITEMS_FOUND"] = "No cached items found in search. Expand the group and view the items to cache the names and try again. Only Bind on Equip items will be found using this search.";
	["AH_SEARCH_BOE_ONLY"] = "Only Bind on Equip items can be found using this search.";
	["TSM_WARNING_1"] = "Running this command can potentially destroy your existing TSM settings by reassigning items to the ";
	["TSM_WARNING_2"] = " preset.\n\nWe recommend that you use a different profile when using this feature.\n\nDo you want to proceed anyways?";
	["PRESET_UPDATE_SUCCESS"] = "Updated the preset successfully.";
	["SHOPPING_OP_MISSING_1"] = "The preset is missing a 'Shopping' Operation assignment.";
	["SHOPPING_OP_MISSING_2"] = "Type '/tsm operations' to create or assign one.";
	["AUCTIONATOR_GROUPS"] = "Group-based searches are only supported using Auctionator.";
	["TSM4_ERROR"] = "TSM4 is not compatible with ATT yet. If you know how to create Presets like we used to do in TSM3, please whisper Crieve on Discord!";
	["QUEST_MAY_BE_REMOVED"] = "Failed to acquire information. This quest may have been removed from the game. ";
	["MINUMUM_STANDING"] = "Requires a minimum standing of";
	["_WITH_"] = " with ";
	["MAXIMUM_STANDING"] = "Requires a standing lower than";
	["MIN_MAX_STANDING"] = "Requires a standing between";
	["AND_"] = "And ";
	["_AND"] = " and";
	["_MORE"] = " more";
	["_OTHER_SOURCES"] = " other sources";
	["DURING_WQ_ONLY"] = "This can be completed when the world quest is active.";
	["COMPLETED_DAILY"] = "This can be completed daily.";
	["COMPLETED_WEEKLY"] = "This can be completed weekly.";
	["COMPLETED_MONTHLY"] = "This can be completed monthly.";
	["COMPLETED_YEARLY"] = "This can be completed yearly.";
	["COMPLETED_MULTIPLE"] = "This can be repeated multiple times.";
	["CRITERIA_FOR"] = "Criteria for";
	["CURRENCY_FOR"] = "Currency for";
	["LOOT_TABLE_CHANCE"] = "Loot Table Chance";
	["BEST_BONUS_ROLL_CHANCE"] = "Best Bonus Roll Chance";
	["BEST_PERSONAL_LOOT_CHANCE"] = "Best Personal Loot Chance";
	["BONUS_ROLL"] = "Bonus Roll";
	["PREREQUISITE_QUESTS"] = "There are prerequisite quests that must be completed before this may be obtained:";
	["BREADCRUMBS"] = "Breadcrumbs";
	["BREADCRUMBS_WARNING"] = "There are breadcrumb quests that may not be obtainable after completing this:";
	["THIS_IS_BREADCRUMB"] = "This is a breadcrumb quest.";
	["BREADCRUMB_PARTYSYNC"] = "This may be unable to be completed without Party Sync if completing any of these quests first:";
	["BREADCRUMB_PARTYSYNC_2"] = "This may be obtained via Party Sync with another character that has not completed any of these quests:";
	["BREADCRUMB_PARTYSYNC_3"] = "This may be obtained via Party Sync with a character that is able to accept this quest.";
	["BREADCRUMB_PARTYSYNC_4"] = "Please let us know your results on Discord if you attempt obtaining this Quest via Party Sync!";
	["DISABLE_PARTYSYNC"] = "This is likely not able to be completed by this character even using Party Sync. If you manage otherwise, please let us know on Discord!";
	["UNAVAILABLE_WARNING_FORMAT"] = "|c%sBecomes unavailable if %d of the following are met:|r";
	["NO_ENTRIES"] = "No entries matching your filters were found.";
	["NO_ENTRIES_DESC"] = "If you believe this was in error, try activating 'Debug Mode'. One of your filters may be restricting the visibility of the group.";
	["DEBUG_LOGIN"] = "Awarded for logging in.\n\nGood job! YOU DID IT!\n\nOnly visible while in Debug Mode.";
	["UNSORTED_1"] = "Unsorted";
	["UNSORTED_2"] = " (Unsorted)";
	["UNSORTED_DESC"] = "This data hasn't been Sourced yet within ATT.";
	["NEVER_IMPLEMENTED"] = "Never Implemented";
	["NEVER_IMPLEMENTED_DESC"] = "Items here technically exist within the game but have never been made available to players";
	["HIDDEN_QUEST_TRIGGERS"] = "Hidden Quest Triggers";
	["HIDDEN_QUEST_TRIGGERS_DESC"] = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	["UNSORTED_DESC_2"] = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";
	["BOUNTY_DESC"] = "This list contains Unobtainable items that the ATT Discord has reported as bugs that Blizzard has yet to fix.\n\nNOTE: All filters are ignored within this list for visibility. Only items removed from the game due to negligence rather than a gigantic fire breathing dragon are present on this list.\n\nTo Blizzard Devs: Please fix the items and encounters listed below.";
	["OPEN_AUTOMATICALLY"] = "Open Automatically";
	["OPEN_AUTOMATICALLY_DESC"] = "If you aren't a Blizzard Developer, it might be a good idea to uncheck this. This was done to force Blizzard to fix and/or acknowledge these bugs.";
	["TWO_CLOAKS"] = "|cffFF0000These two cloaks have very limited confirmed drops if any and are presumed broken!|r";
	["OGOM_THE_MANGLER_DESC"] = "|cffFF0000Ogom the Mangler seems just to spawn when you are doing the Daily 'Assault on the Iron Siegeworks'. This Quest wasn't active since the start of Legion and the buyable Quest 'Missive: Assault on the Iron Siegeworks' does not work either.|r";
	["DIFF_COMPLETED_1"] = "You have collected everything from this difficulty. Switch to ";
	["DIFF_COMPLETED_2"] = " instead.";
	["MINI_LIST"] = "Mini List";
	["MINI_LIST_DESC"] = "This list contains the relevant information for your current zone, which cannot be found in the ATT database";
	["UPDATE_LOCATION_NOW"] = "Update Location Now";
	["UPDATE_LOCATION_NOW_DESC"] = "If you wish to forcibly refresh the data to your current Map, click this button now!";
	["PERSONAL_LOOT_DESC"] = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.\n\nClick twice to create a group automatically if you're by yourself.";
	["RAID_ASSISTANT"] = "Raid Assistant";
	["RAID_ASSISTANT_DESC"] = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!";
	["LOOT_SPEC_UNKNOWN"] = "Loot Specialization Unknown";
	["LOOT_SPEC"] = "Loot Specialization";
	["LOOT_SPEC_DESC"] = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to change it now!";
	["DUNGEON_DIFF"] = "Dungeon Difficulty";
	["DUNGEON_DIFF_DESC"] = "The difficulty setting for dungeons.\n\nClick this row to change it now!";
	["RAID_DIFF"] = "Raid Difficulty";
	["RAID_DIFF_DESC"] = "The difficulty setting for raids.\n\nClick this row to change it now!";
	["LEGACY_RAID_DIFF"] = "Legacy Raid Difficulty";
	["LEGACY_RAID_DIFF_DESC"] = "The difficulty setting for legacy raids.\n\nClick this row to change it now!";
	["TELEPORT_TO_FROM_DUNGEON"] = "Teleport to/from Dungeon";
	["TELEPORT_TO_FROM_DUNGEON_DESC"] = "Click here to teleport to/from your current instance.\n\nYou can utilize the Mists of Pandaria Scenarios to quickly teleport yourself outside of your current instance this way.";
	["RESET_INSTANCES"] = "Reset Instances";
	["RESET_INSTANCES_DESC"] = "Click here to reset your instances.\n\n"..ALT_KEY_TEXT.." click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!";
	["DELIST_GROUP"] = "Delist Group";
	["DELIST_GROUP_DESC"] = "Click here to delist the group. If you are by yourself, it will softly leave the group without porting you out of any instance you are in.";
	["LEAVE_GROUP"] = "Leave Group";
	["LEAVE_GROUP_DESC"] = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.";
	["LOOT_SPEC_DESC_2"] = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to go back to the Raid Assistant.";
	["CURRENT_SPEC"] = "Current Specialization";
	["CURRENT_SPEC_DESC"] = "If you switch your talents, your loot specialization changes with you.";
	["DUNGEON_DIFF_DESC_2"] = "This setting allows you to customize the difficulty of a dungeon.\n\nClick this row to go back to the Raid Assistant.";
	["CLICK_TO_CHANGE"] = "Click to change now. (if available)";
	["RAID_DIFF_DESC_2"] = "This setting allows you to customize the difficulty of a raid.\n\nClick this row to go back to the Raid Assistant.";
	["LEGACY_RAID_DIFF_DESC_2"] = "This setting allows you to customize the difficulty of a legacy raid. (Pre-Siege of Orgrimmar)\n\nClick this row to go back to the Raid Assistant.";
	["REROLL"] = "Reroll";
	["REROLL_DESC"] = "Click this button to reroll using the active filter.";
	["APPLY_SEARCH_FILTER"] = "Apply a Search Filter";
	["APPLY_SEARCH_FILTER_DESC"] = "Please select a search filter option.";
	["SEARCH_EVERYTHING_BUTTON_OF_DOOM"] = "Click this button to search... EVERYTHING.";
	["ACHIEVEMENT"] = BATTLE_PET_SOURCE_6;
	["ACHIEVEMENT_DESC"] = "Click this button to select a random achievement based on what you're missing.";
	["ITEM"] = AUCTION_HOUSE_HEADER_ITEM;
	["ITEM_DESC"] = "Click this button to select a random item based on what you're missing.";
	["INSTANCE"] = INSTANCE;
	["INSTANCE_DESC"] = "Click this button to select a random instance based on what you're missing.";
	["DUNGEON"] = CALENDAR_TYPE_DUNGEON;
	["DUNGEON_DESC"] = "Click this button to select a random dungeon based on what you're missing.";
	["RAID"] = RAID;
	["RAID_DESC"] = "Click this button to select a random raid based on what you're missing.";
	["MOUNT"] = MOUNT;
	["MOUNT_DESC"] = "Click this button to select a random mount based on what you're missing.";
	["PET"] = PET;
	["PET_DESC"] = "Click this button to select a random pet based on what you're missing.";
	["QUEST"] = BATTLE_PET_SOURCE_2;
	["QUEST_DESC"] = "Click this button to select a random quest based on what you're missing.";
	["TOY"] = TOY;
	["TOY_DESC"] = "Click this button to select a random toy based on what you're missing.";
	["ZONE"] = ZONE;
	["ZONE_DESC"] = "Click this button to select a random zone based on what you're missing.";
	["GO_GO_RANDOM"] = "Random - Go Get 'Em!";
	["GO_GO_RANDOM_DESC"] = "This window allows you to randomly select a place or item to get. Go get 'em!";
	["CHANGE_SEARCH_FILTER"] = "Change Search Filter";
	["CHANGE_SEARCH_FILTER_DESC"] = "Click this to change your search filter.";
	["REROLL_2"] = "Reroll: ";
	["NOTHING_TO_SELECT_FROM"] = "There was nothing to randomly select from. If 'Ad-Hoc Updates' is enabled in Settings, the Main list must be updated (/att) before using this window.";
	["NO_SEARCH_METHOD"] = "No search method specified.";
	["PROFESSION_LIST"] = "Profession List";
	["PROFESSION_LIST_DESC"] = "Open your professions to cache them.";
	["CACHED_RECIPES_1"] = "Cached ";
	["CACHED_RECIPES_2"] = " known recipes!";
	["WORLD_QUESTS"] = TRACKER_HEADER_WORLD_QUESTS;
	["WORLD_QUESTS_DESC"] = "These are World Quests and other time-limited Things that are currently available somewhere. Go get 'em!";
	["QUESTS_DESC"] = "Shows all possible QuestID's in the game in ascending numeric order.";
	["UPDATE_WORLD_QUESTS"] = "Update World Quests Now";
	["UPDATE_WORLD_QUESTS_DESC"] = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	["CLEAR_WORLD_QUESTS"] = "Clear World Quests";
	["CLEAR_WORLD_QUESTS_DESC"] = "Click to clear the current information within the World Quests frame";
	["ALL_THE_ITEMS_FOR_ACHIEVEMENTS_DESC"] = "All items that can be used to obtain achievements that you are missing are displayed here.";
	["ALL_THE_APPEARANCES_DESC"] = "All appearances that you need are displayed here.";
	["ALL_THE_MOUNTS_DESC"] = "All mounts that you have not collected yet are displayed here.";
	["ALL_THE_BATTLEPETS_DESC"] = "All pets that you have not collected yet are displayed here.";
	["ALL_THE_QUESTS_DESC"] = "All quests that have objective or starting items that can be sold on the auction house are displayed here.";
	["ALL_THE_RECIPES_DESC"] = "All recipes that you have not collected yet are displayed here.";
	["ALL_THE_ILLUSIONS_DESC"] = "Illusions, toys, and other items that can be used to earn collectible items are displayed here.";
	["ALL_THE_REAGENTS_DESC"] = "All items that can be used to craft an item using a profession on your account.";
	["AH_SCAN_SUCCESSFUL_1"] = ": Successfully scanned ";
	["AH_SCAN_SUCCESSFUL_2"] = " item(s).";
	["REAGENT_CACHE_OUT_OF_DATE"] = "Reagent Cache is out-of-date and will be re-cached when opening your professions!";
	["ARTIFACT_CACHE_OUT_OF_DATE"] = "Artifact Cache is out-of-date/inaccurate and will be re-cached when logging onto each character!";
	["QUEST_LOOP"] = "Likely just broke out of an infinite source quest loop.";
	["QUEST_PREVENTS_BREADCRUMB_COLLECTION_FORMAT"] = "Quest '%s' %s will prevent collection of Breadcrumb Quest '%s' %s";
	["QUEST_OBJECTIVE_INVALID"] = "Invalid Quest Objective";
	["REFRESHING_COLLECTION"] = "Refreshing collection...";
	["DONE_REFRESHING"] = "Done refreshing collection.";
	["ADHOC_UNIQUE_COLLECTED_INFO"] = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";
	["REQUIRES_PVP"] = "|CFF00FFDEThis Thing requires Player vs Player activities or a currency related to those activities.|r";
	["REQUIRES_PETBATTLES"] = "|CFF00FFDEThis Thing requires Pet Battling.|r";
	["REPORT_INACCURATE_QUEST"] = "Wrong Quest Info! (Click to Report)";
	["NESTED_QUEST_REQUIREMENTS"] = "Nested Quest Requirements";
	["MAIN_LIST_REQUIRES_REFRESH"] = "[Open Main list to update progress]";
	["DOES_NOT_CONTRIBUTE_TO_PROGRESS"] = "|cffe08207This group and its content do not contribute to the progress of this window since it is Sourced in another Location!|r";
	["CURRENCY_NEEDED_TO_BUY"] = "Estimated amount needed to obtain remaining Things";
	["LOCK_CRITERIA_LEVEL_LABEL"] = "Player Level";
	["LOCK_CRITERIA_ACHIEVEMENT_LABEL"] = ACHIEVEMENT_UNLOCKED;
	["LOCK_CRITERIA_QUEST_LABEL"] = "Completed Quest";
	["LOCK_CRITERIA_SPELL_LABEL"] = "Learned Spell/Mount/Recipe";
	["LOCK_CRITERIA_FACTION_LABEL"] = "Faction Reputation";
	["LOCK_CRITERIA_FACTION_FORMAT"] = "%s with %s (Current: %s)";
	["FORCE_REFRESH_REQUIRED"] = "This may require a Force Refresh ("..SHIFT_KEY_TEXT.." click) to properly be collected.";
	["FUTURE_UNOBTAINABLE"] = "Future Unobtainable!";
	["FUTURE_UNOBTAINABLE_TOOLTIP"] = "This is content that has been confirmed or is highly-probable to be made unobtainable in a known future patch.";
	["TRADING_POST"] = "Trading Post";

	["TIER_DATA"] = {
		{	-- Classic
			["icon"] = app.asset("Expansion_CLASSIC"),
			["lore"] = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.",
			["lvl"] = 1,
		},
		{	-- Burning Crusade
			["icon"] = app.asset("Expansion_TBC"),
			["lore"] = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.",
			["lvl"] = 10,
		},
		{	-- Wrath of the Lich King
			["icon"] = app.asset("Expansion_WOTLK"),
			["lore"] = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.",
			["lvl"] = 10,
		},
		{	-- Cataclysm
			["icon"] = app.asset("Expansion_CATA"),
			["lore"] = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.",
			["lvl"] = 10,
		},
		{	-- Mists of Pandaria
			["icon"] = app.asset("Expansion_MOP"),
			["lore"] = "Mists of Pandaria is the fourth expansion pack. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.",
			["lvl"] = 10,
		},
		{	-- Warlords of Draenor
			["icon"] = app.asset("Expansion_WOD"),
			["lore"] = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.",
			["lvl"] = 10,
		},
		{	-- Legion
			["icon"] = app.asset("Expansion_LEGION"),
			["lore"] = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.",
			["lvl"] = 10,
		},
		{	-- Battle for Azeroth
			["icon"] = app.asset("Expansion_BFA"),
			["lore"] = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.",
			["lvl"] = 10,
		},
		{	-- Shadowlands
			["icon"] = app.asset("Expansion_SL"),
			["lore"] = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.",
			["lvl"] = 48,
		},
		{	-- Dragonflight
			["icon"] = app.asset("Expansion_DF"),
			["lore"] = "Dragonflight is the ninth expansion. The dragonflights of Azeroth have returned, called upon to defend their ancestral home, the Dragon Isles. Surging with elemental magic and the life energies of Azeroth, the Isles are awakening once more, and it's up to you to explore their primordial wonder and discover long-forgotten secrets.",
			["lvl"] = 58,
		},
	};

	-- Item Filter Window
	["ITEM_FILTER_TEXT"] = "Item Filters";
	["ITEM_FILTER_DESCRIPTION"] = "You can search the ATT Database by using a item filter.";
	["ITEM_FILTER_BUTTON_TEXT"] = "Set Item Filter";
	["ITEM_FILTER_BUTTON_DESCRIPTION"] = "Click this to change the item filter you want to search for within ATT.";
	["ITEM_FILTER_POPUP_TEXT"] = "Which Item Filter would you like to search for?";

	-- Instructional Text
	["MINIMAP_MOUSEOVER_TEXT"] = "Right click to change settings.\nLeft click to open the Main List.\n"..CTRL_KEY_TEXT.." click to open the Mini List.\n"..SHIFT_KEY_TEXT.." click to Refresh Collections.";
	["TOP_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists|r";
	["OTHER_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Refresh Collections\n"..CTRL_KEY_TEXT.." click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." right click to Sort Groups/Popout Lists\n"..ALT_KEY_TEXT.." right click to Plot Waypoints|r";
	["TOP_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	["OTHER_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." click to Search the Auction House|r";
	["RECENTLY_MADE_OBTAINABLE"] = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	["RECENTLY_MADE_OBTAINABLE_PT2"] = "|CFFFF0000The more information, the better.  Thanks!|r";
	["TOP_ROW_TO_LOCK"] = "|cff3399ff"..ALT_KEY_TEXT.." click to Lock this Window";
	["TOP_ROW_TO_UNLOCK"] = "|cffcf0000"..ALT_KEY_TEXT.." click to Unlock this Window";
	["QUEST_ROW_INSTRUCTIONS"] = "Right Click to see any Quest Chain Requirements";
	["SYM_ROW_INFORMATION"] = "Right Click to see additional content which is Sourced in another location";
	["QUEST_ONCE_PER_ACCOUNT"] = "Once-Per-Account Quest";
	["QUEST_ONCE_PER_ACCOUNT_FORMAT"] = "Completed By: %s";

	-- Settings.lua
		["SKIP_AUTO_REFRESH"] = "Skip Settings-Toggle Data Refreshes!";
		["SKIP_AUTO_REFRESH_TOOLTIP"] = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";
		["AFTER_REFRESH"] = "After Refresh";

		-- General tab
			-- Mode Title
				["MODE"] = "Mode";
				["TITLE_COMPLETIONIST"] = "Completionist ";
				["TITLE_UNIQUE_APPEARANCE"] = "Unique ";
				["TITLE_DEBUG"] = app.ccColors.Red .. "Debug|R ";
				["TITLE_ACCOUNT"] = app.ccColors.Account .. "Account|R ";
				["TITLE_ALLIANCE"] = app.ccColors.Alliance .. FACTION_ALLIANCE .. "|R";
				["TITLE_HORDE"] = app.ccColors.Horde .. FACTION_HORDE .. "|R";
				["TITLE_NEUTRAL"] = FACTION_NEUTRAL;
				["TITLE_MAIN_ONLY"] = " (Main Only)";
				["TITLE_NONE_THINGS"] = "None of the Things ";
				["TITLE_ONLY"] = " Only ";
				["TITLE_INSANE"] = app.ccColors.Insane .. "Insane|R ";
				["TITLE_SOME_THINGS"] = "Some of the Things ";
				["TITLE_LEVEL"] = "Level ";
				["TITLE_SOLO"] = "Solo ";
				["_BETA_LABEL"] = " |cff4AA7FF[Beta]|R";

	["GENERAL_CONTENT"] = "General Content";
	["TWITCH_BUTTON_LABEL"] = "Twitch";
	["DISCORD_BUTTON_LABEL"] = "Discord";
	["PATREON_BUTTON_LABEL"] = "Patreon";
	["MERCH_BUTTON_LABEL"] = "Merch";
	["TWITCH_BUTTON_TOOLTIP"] = "Click this button to copy the URL to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!";
	["DISCORD_BUTTON_TOOLTIP"] = "Click this button to copy the URL to get to the All The Things Discord server.\n\nYou can share your progress/frustrations with other collectors!";
	["PATREON_BUTTON_TOOLTIP"] = "Click this button to copy the URL to get to the All The Things Patreon page.\n\nHere you can see how you can support the AddOn financially!";
	["MERCH_BUTTON_TOOLTIP"] = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
	["MODE_EXPLAIN_LABEL"] = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
	["DEBUG_MODE"] = app.ccColors.Red.."Debug Mode|r (Show Everything)";
	["DEBUG_MODE_TOOLTIP"] = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
	["COMPLETIONIST_MODE"] = "+Sources";
	["COMPLETIONIST_MODE_TOOLTIP"] = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
	["I_ONLY_CARE_ABOUT_MY_MAIN"] = "Main Only";
	["MAIN_ONLY_MODE_TOOLTIP"] = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
	["ACCOUNT_MODE"] = app.ccColors.Account.."Account Mode";
	["ACCOUNT_MODE_TOOLTIP"] = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.";
	["FACTION_MODE"] = "Faction Only";
	["FACTION_MODE_TOOLTIP"] = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
	["PRECISION_SLIDER"] = "Precision Level";
	["PRECISION_SLIDER_TOOLTIP"] = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
	["MINIMAP_SLIDER"] = "Minimap Button Size";
	["MINIMAP_SLIDER_TOOLTIP"] = 'Use this to customize the size of the Minimap Button.\n\nDefault: 36';
	["ACCOUNT_THINGS_LABEL"] = ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." Things";
	["GENERAL_THINGS_LABEL"] = "General Things";
	["EXPANSION_THINGS_LABEL"] = "Expansion Things";
	["EXTRA_THINGS_LABEL"] = "Additional Resources";
	["STRANGER_THINGS_LABEL"] = "Stranger Things";
	["ACHIEVEMENTS_CHECKBOX"] = app.ccColors.Insane .. ACHIEVEMENTS;
	["ACHIEVEMENTS_CHECKBOX_TOOLTIP"] = "Enable this option to track achievements.";
	["TMOG_CHECKBOX"] = app.ccColors.Insane .. WARDROBE;
	["TMOG_CHECKBOX_TOOLTIP"] = "Enable this option to track appearance acquisition.\n\nNOTE: Disabling this option also disables all fanfares and acquisition logic.  You can use this toggle as a way to prevent lag spikes while doing important group content, but bear in mind the computation will need to occur once re-enabled.\n\n"..ACC_WIDE_DEFAULT;
	["AZERITE_ESSENCES_CHECKBOX"] = "|T"..app.asset("Expansion_BFA")..":0|t " .. app.ccColors.Insane .. SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE2_TITLE;
	["AZERITE_ESSENCES_CHECKBOX_TOOLTIP"] = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
	["BATTLE_PETS_CHECKBOX"] = app.ccColors.Insane .. PETS;
	["BATTLE_PETS_CHECKBOX_TOOLTIP"] = "Enable this option to track battle pets and companions. These can be found in the open world or via boss drops in various Dungeons and Raids as well as from Vendors and Reputation.\n\n"..ACC_WIDE_DEFAULT;
	["FLIGHT_PATHS_CHECKBOX"] = app.ccColors.Insane .. "Flight Paths & Ferry Stations";
	["FLIGHT_PATHS_CHECKBOX_TOOLTIP"] = "Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\nNOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.";
	["FOLLOWERS_CHECKBOX"] = app.ccColors.Insane .. GARRISON_FOLLOWERS.." & "..COVENANT_MISSIONS_FOLLOWERS;
	["FOLLOWERS_CHECKBOX_TOOLTIP"] = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
	["HEIRLOOMS_CHECKBOX"] = app.ccColors.Insane .. HEIRLOOMS;
	["HEIRLOOMS_CHECKBOX_TOOLTIP"] = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.\n\n"..ACC_WIDE_DEFAULT;
	["HEIRLOOMS_UPGRADES_CHECKBOX"] = app.ccColors.Insane .. "+Upgrades";
	["HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP"] = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
	["ILLUSIONS_CHECKBOX"] = app.ccColors.Insane .. "Illusions";
	["ILLUSIONS_CHECKBOX_TOOLTIP"] = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.\n\n"..ACC_WIDE_DEFAULT;
	["MOUNTS_CHECKBOX"] = app.ccColors.Insane .. MOUNTS;
	["MOUNTS_CHECKBOX_TOOLTIP"] = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!\n\n"..ACC_WIDE_DEFAULT;
	["MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX"] = "|T"..app.asset("Expansion_WOD")..":0|t " .. app.ccColors.Insane .. "Music Rolls & Selfie Filters";
	["MUSIC_ROLLS_SELFIE_FILTERS_CHECKBOX_TOOLTIP"] = "Enable this option to track music rolls and selfie filters.\n\nYou can use your Jukebox Toy to play in-game music and your Selfie Camera toy to collect filters for your selfies from certain locations.";
	["QUESTS_CHECKBOX"] = app.ccColors.Insane .. QUESTS_LABEL;
	["QUESTS_CHECKBOX_TOOLTIP"] = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
	["QUESTS_LOCKED_CHECKBOX"] = app.ccColors.Insane .. "+Locked";
	["QUESTS_LOCKED_CHECKBOX_TOOLTIP"] = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." Quests to incorporate progress from other characters.";
	["RECIPES_CHECKBOX"] = app.ccColors.Insane .. AUCTION_CATEGORY_RECIPES;
	["RECIPES_CHECKBOX_TOOLTIP"] = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
	["REPUTATIONS_CHECKBOX"] = app.ccColors.Insane .. "Reputations";
	["REPUTATIONS_CHECKBOX_TOOLTIP"] = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
	["RUNEFORGELEGENDARIES_CHECKBOX"] = "|T"..app.asset("Expansion_SL")..":0|t " .. app.ccColors.Insane .. "Runecarving Powers";
	["RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP"] = "Enable this option to track Shadowlands Runecarving Powers.";
	["DRAKEWATCHERMANUSCRIPTS_CHECKBOX"] = "|T"..app.asset("Expansion_DF")..":0|t " .. app.ccColors.Insane .. DRAKE_MANUSCRIPTS;
	["DRAKEWATCHERMANUSCRIPTS_CHECKBOX_TOOLTIP"] = "Enable this option to track "..EXPANSION_NAME9.." "..DRAKE_MANUSCRIPTS;
	["SOULBINDCONDUITS_CHECKBOX"] = "|T"..app.asset("Expansion_SL")..":0|t " .. app.ccColors.Insane .. GetSpellInfo(348869);
	["SOULBINDCONDUITS_CHECKBOX_TOOLTIP"] = "Enable this option to track Shadowlands Soulbind Conduits.";
	["TITLES_CHECKBOX"] = app.ccColors.Insane .. PAPERDOLL_SIDEBAR_TITLES;
	["TITLES_CHECKBOX_TOOLTIP"] = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
	["TOYS_CHECKBOX"] = app.ccColors.Insane .. TOY_BOX;
	["TOYS_CHECKBOX_TOOLTIP"] = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!\n\n"..ACC_WIDE_DEFAULT;
	["MINIMAP_BUTTON_CHECKBOX"] = "Show the Minimap Button";
	["MINIMAP_BUTTON_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the minimap button. This button allows you to quickly access the Main List, show your Overall Collection Progress, and access the Settings Menu by right clicking it.\n\nSome people don't like clutter. Alternatively, you can access the Main List by typing '/att' in your chatbox. From there, you can right click the header to get to the Settings Menu.";
	["MINIMAP_BUTTON_STYLE_CHECKBOX"] = "Use the Old Minimap Style";
	["MINIMAP_BUTTON_STYLE_CHECKBOX_TOOLTIP"] = "Some people don't like the new minimap button...\n\nThose people are wrong!\n\nIf you don't like it, here's an option to go back to the old style.";
	["SHOW_COMPLETED_GROUPS_CHECKBOX"] = "Show Completed Groups";
	["SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
	["SHOW_COLLECTED_THINGS_CHECKBOX"] = "Show Collected Things";
	["SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP"] = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
	["SHOW_INCOMPLETE_THINGS_CHECKBOX"] = "Show All Trackable Things";
	["SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see items, objects, NPCs, and headers which can be tracked within the game without necessarily being considered 'collectible'.\n\nYou can use this to help you earn the Loremaster Achievement if you don't already have it.\n\nNOTE: Rare Spawns and Vignettes also appear in the listing with this setting turned on.";
	["SHOW_REPEATABLE_THINGS_CHECKBOX"] = "Collect Repeatable Quests";
	["SHOW_REPEATABLE_THINGS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to treat repeatable daily, weekly, and yearly quests as collectible. They will appear in the list like a regular collectible quest.\n\nNOTE: This is NOT intended to be used all the time, but if you're doing a set of dailies in a zone you've otherwise completed and need to be reminded of what is there, you can use this to see them.";
	["FIRST_TIME_CHECKBOX"] = "First Time Only";
	["FIRST_TIME_CHECKBOX_TOOLTIP"] = "Enable this option if you want to treat repeatable daily, weekly, yearly and world quests as collected if completed at least once, ignoring quest previously completed that has been reset.\n\nNOTE: Previously completed repeatable quest are only stored if you completed the quest with the addon active and that data will be lost if removed the addon data from WTF folder.";
	["FILTER_THINGS_BY_LEVEL_CHECKBOX"] = app.ccColors.Insane .. "No Level Restrictions";
	["FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP"] = "Enable this setting if you want to see content available regardless of player level.\n\nNOTE: Disabling this is especially useful on Starter Accounts.";
	["SHOW_BOE_CHECKBOX"] = app.ccColors.Insane .. "BoE/BoA Items";
	["SHOW_BOE_CHECKBOX_TOOLTIP"] = "Enable this setting if you want to show Bind-on-Equip/Account items.\n\nDisabling this setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.";
	["SHOW_PVP_CHECKBOX"] = "|T"..app.asset("Category_PvP")..":0|t " .. app.ccColors.Insane .. PVP_OPTIONS;
	["SHOW_PVP_CHECKBOX_TOOLTIP"] = "Enable this setting if you want to show content which 'may' require Player vs. Player interactions within the game.";
	["SHOW_ALL_SEASONAL"] = app.ccColors.Insane .. "All Seasonal Events";
	["SHOW_ALL_SEASONAL_TOOLTIP"] = "Enable this setting to show all seasonal events, instead of only currently active seasonal events.";
	["SHOW_PET_BATTLES_CHECKBOX"] = "|T"..app.asset("Category_PetBattles")..":0|t " .. app.ccColors.Insane .. SHOW_PET_BATTLES_ON_MAP_TEXT;
	["SHOW_PET_BATTLES_CHECKBOX_TOOLTIP"] = "Enable this setting if you want to show content which requires Pet Battles within the game.";
	["IGNORE_FILTERS_FOR_BOES_CHECKBOX"] = "Ignore BoE/BoA Item Filters";
	["IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP"] = "Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE/BoA items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.";
	["EXPAND_DIFFICULTY_CHECKBOX"] = "Expand Current Difficulty";
	["EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP"] = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
	["WARN_DIFFICULTY_CHECKBOX"] = "Warn Completed Difficulty";
	["WARN_DIFFICULTY_CHECKBOX_TOOLTIP"] = "Enable this option if you want to be warned when you enter an instance with a difficulty setting that will result in you being unable to earn new collectibles when there is an alternative unsaved difficulty that you could enter instead.";
	["REPORT_COLLECTED_THINGS_CHECKBOX"] = "Report Collected Things";
	["REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
	["REPORT_COMPLETED_QUESTS_CHECKBOX"] = "Report Quests";
	["REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the QuestID for any quest you Accept or Complete immediately after it happens. (For reporting bugs, trackings purposes, etc)";
	["REPORT_UNSORTED_CHECKBOX"] = "Only 'Unsourced'";
	["REPORT_UNSORTED_CHECKBOX_TOOLTIP"] = "Enable this option if you only want to see the QuestID if it isn't already Sourced.";
	["BEHAVIOR_LABEL"] = "List Behavior";
	["DYNAMIC_CATEGORY_LABEL"] = "Dynamic Categories";
	["DYNAMIC_CATEGORY_OFF"] = OFF;
	["DYNAMIC_CATEGORY_OFF_TOOLTIP"] = "Do not generate any Dynamic Categories.";
	["DYNAMIC_CATEGORY_SIMPLE"] = "Simple";
	["DYNAMIC_CATEGORY_SIMPLE_TOOLTIP"] = "Generate Dynamic Categories based only on the very highest Category.";
	["DYNAMIC_CATEGORY_NESTED"] = "Nested";
	["DYNAMIC_CATEGORY_NESTED_TOOLTIP"] = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
	["DYNAMIC_CATEGORY_TOOLTIP_NOTE"] = "\n\n|cffff0000Requires Reload|r";
	["CLICK_TO_CREATE_FORMAT"] = "Click to Create %s";
	["LOADING_FORMAT"] = "%s "..LFG_LIST_LOADING;	-- %s Loading...
	["READY_FORMAT"] = "%s "..READY;	-- %s Ready
	["KEYBINDINGS"] = SETTINGS_KEYBINDINGS_LABEL;
	["KEYBINDINGS_TEXT"] = "You can set keybindings for ATT in the game's options.";

	-- Account-Wide Checkboxes
	["ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nAchievement tracking is usually "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but there are a number of achievements exclusive to specific classes and races that you can't get on your main.";
	["ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nAzerite Essences cannot technically be collected and used "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but if you only care about collecting them on your main character then you may prefer tracking them "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..".";
	["ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nFlight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";
	["ACCOUNT_WIDE_FOLLOWERS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nFollowers are typically per character, but do you really want to have to collect 243 Garrison Inn Followers on one character at a rate of 1 per week?\n\nI think not, good sir.";
	["ACCOUNT_WIDE_MUSIC_ROLLS_SELFIE_FILTERS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nMusic Rolls & Selfie Filters are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nNOTE: You can only play Music Rolls using the Jukebox Toy or snap a selfie with your S.E.L.F.I.E Camera Toy that you have collected on your current character.";
	["ACCOUNT_WIDE_QUESTS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nQuest completion is typically per Character, but this will consider a Quest as completed if ANY Character has completed that specific Quest.";
	["ACCOUNT_WIDE_RECIPES_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nRecipes are not normally tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.";
	["ACCOUNT_WIDE_REPUTATIONS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nReputations are now tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE.." in Blizzard's database for achievements, so turning this on may be a good idea.";
	["ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nEnable this to consider a Soulbind Conduit as collected for all characters if at least one character has learned it.";
	["ACCOUNT_WIDE_TITLES_TOOLTIP"] = TRACK_ACC_WIDE.."\n\nMost titles are tracked "..ITEM_UPGRADE_DISCOUNT_TOOLTIP_ACCOUNT_WIDE..", but some prestigious titles in WoW are locked to the character that earned them.\n\nToggle this if you don't care about that and want to see those titles marked Collected for your alts.";

	-- Filters tab
	["TRACKING_PAGE"] = TRACKING;
	["ITEM_FILTER_LABEL"] = AUCTION_CATEGORY_WEAPONS.." & "..ARMOR;
	["ITEM_EXPLAIN_LABEL"] = "|cffFFFFFFThis content is always shown if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
	["CLASS_DEFAULTS_BUTTON"] = "Class Defaults";
	["CLASS_DEFAULTS_BUTTON_TOOLTIP"] = "Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.";
	["ALL_BUTTON"] = ALL;
	["ALL_BUTTON_TOOLTIP"] = "Click this button to enable all options at once.";
	["UNCHECK_ALL_BUTTON"] = NONE;
	["UNCHECK_ALL_BUTTON_TOOLTIP"] = "Click this button to disable all options at once.";
	["CUSTOM_FILTERS_LABEL"] = "Automated Content";
	["CUSTOM_FILTERS_EXPLAIN_LABEL"] = "|cffFFFFFFThis content is always shown if it is available to your current character or if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
	["CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT"] = "Enable this setting to forcibly show %s content even if it is not available to the current character.";

	-- Unobtainables tab
	["UNOBTAINABLES_TAB"] = "Unobtainables";
	["UNOBTAINABLE_LABEL"] = "Unobtainable Content";
	["UNOBTAINABLE_ALL"] = "|cffECBC21Show All Unobtainable";
	["NO_CHANCE_ALL"] = "|cffECBC21Show All \"No Chance\"";
	["HIGH_CHANCE_ALL"] = "|cffECBC21Show All \"High Chance\"";

	-- Interface tab
	["INTERFACE_PAGE"] = UIOPTIONS_MENU;
	["TOOLTIP_LABEL"] = "Tooltips";
	["ENABLE_TOOLTIP_INFORMATION_CHECKBOX"] = "Tooltip Integrations";
	["ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
	["DISPLAY_IN_COMBAT_CHECKBOX"] = "In Combat";
	["DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP"] = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
	["TOOLTIP_MOD_LABEL"] = "Modifier";
	["TOOLTIP_MOD_NONE"] = NONE_KEY;
	["TOOLTIP_MOD_SHIFT"] = SHIFT_KEY_TEXT;
	["TOOLTIP_MOD_CTRL"] = CTRL_KEY_TEXT;
	["TOOLTIP_MOD_ALT"] = ALT_KEY_TEXT;
	["TOOLTIP_MOD_CMD"] = CMD_KEY_TEXT;
	["TOOLTIP_SHOW_LABEL"] = "Shown Information";
	["SHOW_COLLECTION_PROGRESS_CHECKBOX"] = "Collection Progress";
	["SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
	["ICON_ONLY_CHECKBOX"] = "Icon Only";
	["ICON_ONLY_CHECKBOX_TOOLTIP"] = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
	["COORDINATES_CHECKBOX"] = "Coordinates";
	["COORDINATES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see coordinates in the tooltip when hovering over an entry in the mini list.";
	["DESCRIPTIONS_CHECKBOX"] = "Descriptions";
	["DESCRIPTIONS_CHECKBOX_TOOLTIP"] = "Enable this option to show descriptions within the tooltip. This may include the descriptive text added by a Contributor that felt some additional information was necessary.\n\nYou might want to keep this turned on.";
	["LORE_CHECKBOX"] = "Lore";
	["LORE_CHECKBOX_TOOLTIP"] = "Enable this option to show lore within the tooltip. This may include the descriptive text supplied by the Dungeon Journal or for flavor by a Contributor.";
	["KNOWN_BY_CHECKBOX"] = "Known By";
	["KNOWN_BY_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
	["COMPLETED_BY_CHECKBOX"] = "Completed By";
	["COMPLETED_BY_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
	["SHOW_MODELS_CHECKBOX"] = "Model Preview";
	["SHOW_MODELS_CHECKBOX_TOOLTIP"] = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
	["SHOW_CURRENCY_CALCULATIONS_CHECKBOX"] = "Currency calculation";
	["SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP"] = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
	["SHARED_APPEARANCES_CHECKBOX"] = "Shared Appearances";
	["SHARED_APPEARANCES_CHECKBOX_TOOLTIP"] = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
	["INCLUDE_ORIGINAL_CHECKBOX"] = "Original Source";
	["INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP"] = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
	["ONLY_RELEVANT_CHECKBOX"] = "Only Relevant";
	["ONLY_RELEVANT_CHECKBOX_TOOLTIP"] = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
	["PROFESSION_CHECKBOX"] = TRADE_SKILLS;	-- Professions
	["PROFESSION_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the profession requirements in the tooltip.";
	["LEVELREQ_CHECKBOX"] = "Levels";
	["LEVELREQ_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the level requirements in the tooltip.";
	["CLASSES_CHECKBOX"] = "Classes";
	["CLASSES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the full list of class requirements in the tooltip.";
	["RACES_CHECKBOX"] = RACES;
	["RACES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the full list of race requirements in the tooltip.";
	["SPEC_CHECKBOX"] = "Specializations";
	["SPEC_CHECKBOX_TOOLTIP"] = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
	["SUMMARIZE_CHECKBOX"] = "Summarize Things";
	["SUMMARIZE_CHECKBOX_TOOLTIP"] = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
	["CONTAINS_SLIDER_TOOLTIP"] = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
	["SOURCE_LOCATIONS_CHECKBOX"] = "Source Locations";
	["SOURCE_LOCATIONS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
	["LOCATIONS_SLIDER_TOOLTIP"] = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
	["COMPLETED_SOURCES_CHECKBOX"] = "For Completed";
	["COMPLETED_SOURCES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
	["DROP_CHANCES_CHECKBOX"] = "Drop Chances";
	["DROP_CHANCES_CHECKBOX_TOOLTIP"] = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
	["FOR_CREATURES_CHECKBOX"] = "For Creatures";
	["FOR_CREATURES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see Source Locations for Creatures.";
	["FOR_THINGS_CHECKBOX"] = "For Things";
	["FOR_THINGS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see Source Locations for Things.";
	["FOR_UNSORTED_CHECKBOX"] = "For Unsorted";
	["FOR_UNSORTED_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
	["WITH_WRAPPING_CHECKBOX"] = "Allow Wrapping",
	["WITH_WRAPPING_CHECKBOX_TOOLTIP"] = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.",
	["SHOW_REMAINING_CHECKBOX"] = "Show Remaining Things";
	["SHOW_REMAINING_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
	["PERCENTAGES_CHECKBOX"] = "Show Percentage Completion";
	["PERCENTAGES_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
	["MORE_COLORS_CHECKBOX"] = "Show Colors";
	["MORE_COLORS_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
	["TOOLTIP_HELP_CHECKBOX"] = "Show Tooltip Help";
	["TOOLTIP_HELP_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the help info in ATT window tooltips which indicates various key/click combinations for ATT window functionality.\nIf you already know all of the key/click combinations, you may want to save tooltip space and disable this option.";
	["MAIN_LIST_SLIDER_LABEL"] = "Main List Scale";
	["MAIN_LIST_SCALE_TOOLTIP"] = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
	["MINI_LIST_SLIDER_LABEL"] = "Mini Lists Scale";
	["MINI_LIST_SCALE_TOOLTIP"] = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
	["ADDITIONAL_LABEL"] = "Additional Information";
	["WINDOW_COLORS"] = "Window Colors";
	["BACKGROUND"] = EMBLEM_BACKGROUND;
	["BACKGROUND_TOOLTIP"] = "Set the background color of all ATT windows.";
	["BORDER"] = EMBLEM_BORDER;
	["BORDER_TOOLTIP"] = "Set the border color of all ATT windows.";
	["RESET"] = RESET;
	["RESET_TOOLTIP"] = "Reset the background and border color of all ATT windows.";
	["CLASS_BORDER"] = "Use Class Color For Border";
	["CLASS_BORDER_TOOLTIP"] = "Use your class color for the borders. This updates when you log onto another class.";

	-- Features tab
	["FEATURES_PAGE"] = FEATURES_LABEL;
	["MINIMAP_LABEL"] = "Minimap Button";
	["MODULES_LABEL"] = "Modules & Mini Lists";
	["REPORTING_LABEL"] = "Reporting";
	["ADHOC_UPDATES_CHECKBOX"] = "Ad-Hoc Window Updates";
	["ADHOC_UPDATES_CHECKBOX_TOOLTIP"] = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
	["SKIP_CUTSCENES_CHECKBOX"] = "Automatically Skip Cutscenes";
	["SKIP_CUTSCENES_CHECKBOX_TOOLTIP"] = "Enable this option if you want ATT to automatically skip all cutscenes on your behalf.";
	["AUTO_BOUNTY_CHECKBOX"] = "Automatically Open the Bounty List";
	["AUTO_BOUNTY_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the items that have an outstanding collection bounty. If you manage to snag one of the items posted on this list, you could make a good sum of gold.\n\nShortcut Command: /attbounty";
	["AUTO_MAIN_LIST_CHECKBOX"] = "Automatically Open the Main List";
	["AUTO_MAIN_LIST_CHECKBOX_TOOLTIP"] = "Enable this option if you want to automatically open the Main List when you login.\n\nYou can also bind this setting to a Key:\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Main List\n\nShortcut Command: /att";
	["AUTO_MINI_LIST_CHECKBOX"] = "Automatically Open the Mini List";
	["AUTO_MINI_LIST_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see everything you can collect in your current zone. The list will automatically switch when you change zones. Some people don't like this feature, but when you are solo farming, this feature is extremely useful.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Mini List\n\nShortcut Command: /att mini";
	["AUTO_PROF_LIST_CHECKBOX"] = "Automatically Open the Profession List";
	["AUTO_PROF_LIST_CHECKBOX_TOOLTIP"] = "Enable this option if you want ATT to open and refresh the profession list when you open your professions. Due to an API limitation imposed by Blizzard, the only time an addon can interact with your profession data is when it is open. The list will automatically switch when you change to a different profession.\n\nWe don't recommend disabling this option as it may prevent recipes from tracking correctly.\n\nYou can also bind this setting to a Key. (only works when a profession is open)\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Profession Mini List";
	["AUTO_RAID_ASSISTANT_CHECKBOX"] = "Automatically Open the Raid Assistant";
	["AUTO_RAID_ASSISTANT_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see an alternative group/party/raid settings manager called the 'Raid Assistant'. The list will automatically update whenever group settings change.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle Raid Assistant\n\nShortcut Command: /attra";
	["AUTO_WQ_LIST_CHECKBOX"] = "Automatically Open the World Quests List";
	["AUTO_WQ_LIST_CHECKBOX_TOOLTIP"] = "Enable this option if you want the 'World Quests' list to appear automatically. The list will automatically update whenever you switch zones.\n\nYou can also bind this setting to a Key.\n\nKey Bindings -> Addons -> ALL THE THINGS -> Toggle World Quests List\n\nShortcut Command: /attwq";
	["CURRENCIES_IN_WQ_CHECKBOX"] = "Show Collectible Cost Groups";
	["CURRENCIES_IN_WQ_CHECKBOX_TOOLTIP"] = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be considered collectible and show under dynamically-populated Quests.";
	["AUCTION_TAB_CHECKBOX"] = "Show the Auction House Module Tab";
	["AUCTION_TAB_CHECKBOX_TOOLTIP"] = "Enable this option if you want to see the Auction House Module provided with ATT.\n\nSome addons are naughty and modify this frame extensively. ATT doesn't always play nice with those toys.";
	["SORT_BY_PROGRESS_CHECKBOX"] = "Sort By Progress";
	["SORT_BY_PROGRESS_CHECKBOX_TOOLTIP"] = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." right click) to sort by the total progress of each group (instead of by Name)";
	["QUEST_CHAIN_NESTED_CHECKBOX"] = "Show Nested Quest Chains";
	["QUEST_CHAIN_NESTED_CHECKBOX_TOOLTIP"] = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
	["CELEBRATIONS_LABEL"] = "Celebrations & Sound Effects";
	["AUDIO_CHANNEL"] = "Audio Channel";
	["CHANNEL_MASTER"] = MASTER;
	["CHANNEL_MUSIC"] = MUSIC_VOLUME;
	["CHANNEL_SFX"] = FX_VOLUME;
	["CHANNEL_AMBIENCE"] = AMBIENCE_VOLUME;
	["CHANNEL_DIALOG"] = DIALOG_VOLUME;
	["CELEBRATE_COLLECTED_CHECKBOX"] = "Collected Things Trigger a Celebration";
	["CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP"] = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
	["WARN_REMOVED_CHECKBOX"] = "Removed Things Trigger a Warning";
	["WARN_REMOVED_CHECKBOX_TOOLTIP"] = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
	["SCREENSHOT_COLLECTED_CHECKBOX"] = "Collected Things Trigger a Screenshot";
	["SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP"] = "Enable this option if you want to take a screenshot for every Thing you collect.";
	["ICON_LEGEND_LABEL"] = "Icon Legend";
	["ICON_LEGEND_TEXT"] = app.ccColors.White .. "|TInterface\\AddOns\\AllTheThings\\assets\\status-unobtainable.blp:0|t " .. "Unobtainable" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-prerequisites.blp:0|t " .. "Obtainable only with prerequisites" .. "\n|TInterface\\AddOns\\AllTheThings\\assets\\status-seasonal-unavailable.blp:0|t " .. "Seasonal content" .. "\n|TInterface\\FriendsFrame\\StatusIcon-Offline:0|t " .. "Unavailable on current character";
	["CHAT_COMMANDS_LABEL"] = "Chat Commands";
	["CHAT_COMMANDS_TEXT"] = "/att |cffFFFFFFor|R /things |cffFFFFFFor|R /allthethings\n|cffFFFFFFOpens the Main List.\n\n|R/att mini |cffFFFFFFor|R /attmini\n|cffFFFFFFOpens the Mini List.\n\n|R/att bounty\n|cffFFFFFFOpens a list of bugged or unconfirmed items.\n\n|R/att ra |cffFFFFFFor|R /attra\n|cffFFFFFFOpens the Raid Assistant.\n\n|R/att wq |cffFFFFFFor|R /attwq\n|cffFFFFFFOpens the World Quests List.\n\n|R/att item:1234 |cffFFFFFFor|R /att [Item Link]\n|cffFFFFFFOpens a window with shared appearances. Also works with other things, such as|R quest:1234|cffFFFFFF, |Rnpcid:1234|cffFFFFFF, |Rmapid:1234|cffFFFFFF or |Rrecipeid:1234|cffFFFFFF.\n\n|R/att rwp\n|cffFFFFFFShows all future Removed With Patch things.\n\n|R/att random |cffFFFFFFor|R /attrandom |cffFFFFFFor|R /attran\n|cffFFFFFFOpens the Random List.\n\n|R/att unsorted\n|cffFFFFFFOpens a list of unsourced items. Best opened in Debug Mode.\n\n|R/rl\n|cffFFFFFFReload your WoW interface.|R";

	-- Profiles tab
	["PROFILES_PAGE"] = "Profiles";
	["PROFILE"] = "Profile";
	["PROFILE_INITIALIZE"] = "Initialize Profiles";
	["PROFILE_INITIALIZE_TOOLTIP"] = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
	["PROFILE_INITIALIZE_CONFIRM"] = "Are you sure you want to enable Profile support?";
	["PROFILE_NEW_TOOLTIP"] = "Create a blank Profile to be used by the current Character";
	["PROFILE_COPY_TOOLTIP"] = "Copy the Selected Profile into the Current Profile";
	["PROFILE_DELETE_TOOLTIP"] = "Delete the Selected Profile";
	["PROFILE_SWITCH_TOOLTIP"] = "Set the Selected Profile as the Current Profile\n\nA Profile can also be "..SHIFT_KEY_TEXT.." clicked to Switch to it";
	["SHOW_PROFILE_LOADED"] = "Show which profile loads during login or when switching between profiles";

	-- Sync tab
	["SYNC_PAGE"] = "Sync";
	["ACCOUNT_SYNCHRONIZATION"] = "Account Synchronization";
	["AUTO_SYNC_ACC_DATA_CHECKBOX"] = "Automatically Sync Account Data";
	["AUTO_SYNC_ACC_DATA_TOOLTIP"] = "Enable this option if you want ATT to attempt to automatically synchronize account data between accounts when logging in or reloading the UI.";
	["ACCOUNT_MANAGEMENT"] = "Account Management";
	["ACCOUNT_MANAGEMENT_TOOLTIP"] = "This list shows you all of the functionality related to syncing account data.";
	["ADD_LINKED_CHARACTER_ACCOUNT"] = "Add Linked Character / Account";
	["ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP"] = "Click here to link a character or account to your account.";
	["ADD_LINKED_POPUP"] = "Please type the name of the character or BNET account to link to.";
	["CHARACTERS"] = CHARACTER;	-- Character
	["SYNC_CHARACTERS_TOOLTIP"] = "This shows all of the characters on your account.";
	["NO_CHARACTERS_FOUND"] = "No characters found.";
	["LINKED_ACCOUNTS"] = "Linked Accounts";
	["LINKED_ACCOUNTS_TOOLTIP"] = "This shows all of the linked accounts you have defined so far.";
	["NO_LINKED_ACCOUNTS"] = "No linked accounts found.";
	["LINKED_ACCOUNT_TOOLTIP"] = "This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.";
	["DELETE_LINKED_CHARACTER"] = "Right Click to Delete this Linked Character";
	["DELETE_LINKED_ACCOUNT"] = "Right Click to Delete this Linked Account";
	["DELETE_CHARACTER"] = "Right Click to Delete this Character";
	["CONFIRM_DELETE"] = "\n \nAre you sure you want to delete this?";

	-- About tab
	["ABOUT_PAGE"] = "About";
	["ABOUT_1"] = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|CFFFFFFFF\n\nPS: Check out All The Things Classic and Wrath Classic!|r";
	["ABOUT_2"] = "Active Contributors: |CFFFFFFFF(in no particular order)\nGold, Dead Serious, Sanctuari, Molkree, Runawaynow, Braghe, Myrhial, Darkal, Tag, Jezartroz, AlexSoft, Jenstonedart, and the rest of the ALL THE THINGS Discord!|r";
	["ABOUT_3"] = "\nHall of Fame: |CFFFFFFFF(in no particular order)\nDaktar, Lucetia, Slumber, Avella, Aiue, Oiche, Oxlotus, Eiltherune, Blueyleader, Iyanden, Pr3vention, BigBlaris, Talonzor, Mogwai, Heallie, Eckhardt, Boohyaka, Sadidorf|r";
	["ABOUT_4"] = "\n\n|CFFFFFFFFSpecial Shoutout to AmiYuy (CanIMogIt) and Caerdon (Caerdon Wardrobe). You should absolutely download their addons to get the collection icons on items in your bags!|r ",
	["ABOUT_5"] = "\n\n|CFFFFFFFFFor online collection comparing check out DataForAzeroth.com from Shoogen and WoWthing.org from Freddie!|r";

	-- Binding Localizations
	["TOGGLE_ACCOUNT_MODE"] = "Toggle Account Mode";
	["TOGGLE_COMPLETIONIST_MODE"] = "Toggle Completionist Mode";
	["TOGGLE_DEBUG_MODE"] = "Toggle Debug Mode";
	["TOGGLE_FACTION_MODE"] = "Toggle Faction Mode";
	["PREFERENCES"] = PREFERENCES;	-- Preferences
	["TOGGLE_COMPLETEDTHINGS"] = "Toggle Completed Things (Both)";
	["TOGGLE_COMPLETEDGROUPS"] = "Toggle Completed Groups";
	["TOGGLE_COLLECTEDTHINGS"] = "Toggle Collected Things";
	["TOGGLE_BOEITEMS"] = "Toggle BoE/BoA Items";
	["TOGGLE_SOURCETEXT"] = "Toggle Source Locations";
	["MODULES"] = "Modules";
	["TOGGLE_MAINLIST"] = "Toggle ATT Main List";
	["TOGGLE_MINILIST"] = "Toggle ATT Mini List";
	["TOGGLE_PROFESSION_LIST"] = "Toggle ATT Profession List";
	["TOGGLE_WORLD_QUESTS_LIST"] = "Toggle ATT World Quests";
	["TOGGLE_RAID_ASSISTANT"] = "Toggle ATT Raid Assistant";
	["TOGGLE_RANDOM"] = "Toggle ATT Random";
	["REROLL_RANDOM"] = "Reroll the Random Selection";

	-- Event Text
	["ITEM_ID_ADDED"] = "%s (%d) was added to your collection.";
	["ITEM_ID_ADDED_RANK"] = "%s (%d) [Rank %d] was added to your collection.";
	["ITEM_ID_ADDED_MISSING"] = "%s (%d) was added to your collection. Not found in the database. Please report to the ATT Discord!";
	["ITEM_ID_ADDED_SHARED"] = "%s (%d) [+%d] were added to your collection.";
	["ITEM_ID_ADDED_SHARED_MISSING"] = "%s (%d) [+%d] were added to your collection. Not found in the database. Please report to the ATT Discord!";
	["ITEM_ID_REMOVED"] = "%s (%d) was removed from your collection.";
	["ITEM_ID_REMOVED_SHARED"] = "%s (%d) [+%d] were removed from your collection.";

	-- Tooltip Text
	["DROP_RATE"] = "Drop Rate";
	["QUEST_GIVER"] = "Quest Giver";
	["LOCKOUT"] = "Lockout";
	["SHARED"] = "Shared";
	["SPLIT"] = "Per Difficulty";
	["REQUIRES_LEVEL"] = "Requires Level";
	["SECRETS_HEADER"] = "Secrets";
	["LIMITED_QUANTITY"] = "This has a limited quantity and may not always be present on the vendor.";
	["SOURCE_ID_MISSING"] = "Please report this Item and where it was acquired to the ATT Discord in #retail-errors!";
	["ADDED_WITH_PATCH_FORMAT"] = "This gets added or expanded with new source(s) in patch %s";
	["REMOVED_WITH_PATCH_FORMAT"] = "This gets removed in patch %s";

	-- Filter Text
	["ACHIEVEMENT_ID"] = "Achievement ID";
	["ACHIEVEMENT_CATEGORY_ID"] = "Achievement Category ID";
	["ARTIFACT_ID"] = "Artifact ID";
	["AZERITE_ESSENCE_ID"] = "Azerite Essence ID";
	["CREATURE_ID"] = "Creature ID";
	["CURRENCY_ID"] = "Currency ID";
	["DIFFICULTY_ID"] = "Difficulty ID";
	["ENCOUNTER_ID"] = "Encounter ID";
	["EXPANSION_ID"] = "Expansion ID";
	["FILTER_ID"] = "Filter ID";
	["FOLLOWER_ID"] = "Follower ID";
	["HEADER_ID"] = "Header ID";
	["ILLUSION_ID"] = "Illusion ID";
	["INSTANCE_ID"] = "Instance ID";
	["ITEM_ID"] = "Item ID";
	["FACTION_ID"] = "Faction ID";
	["FLIGHT_PATH_ID"] = "Flight Path ID";
	["MAP_ID"] = "Map ID";
	["MOUNT_ID"] = "Mount ID";
	["MUSIC_ROLL_ID"] = "Music Roll ID";
	["NPC_ID"] = "NPC ID";
	["OBJECT_ID"] = "Object ID";
	["QUEST_ID"] = "Quest ID";
	["SET_ID"] = "Gear Set ID";
	["SOURCE_ID"] = "Source ID";
	["SPECIES_ID"] = "Species ID";
	["SPELL_ID"] = "Spell ID";
	["TITLE_ID"] = "Title ID";
	["TOY_ID"] = "Toy ID";
	["VISUAL_ID"] = "Visual ID";
	["iLvl"] = "iLvl";

	-- Artifact Relic Completion
	["ARTIFACT_RELIC_CACHE"] = "Open your Artifact UI for all of your Artifact Weapons to cache whether this is an upgrade or not. This is useful for determining if you can trade this item to a Twink or not.";
	["ARTIFACT_RELIC_COMPLETION"] = "Artifact Relic Completion";
	["NOT_TRADEABLE"] = "Not Tradeable";
	["TRADEABLE"] = "Tradeable";

	-- Icons and Collection Text
	["COLLECTED_ICON"] = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE_ICON"] = "|T" .. app.asset("known_circle") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_ICON"] = "|T" .. app.asset("known_green") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["INCOMPLETE_ICON"] = "|T" .. app.asset("incomplete") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED_ICON"] = "|T" .. app.asset("unknown") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED"] = "|T" .. app.asset("known") .. ":0|t |cff15abffCollected|r";	-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE"] = "|T" .. app.asset("known_circle") .. ":0|t |cff15abffCollected*|r";	-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";	-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";	-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_OTHER"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";	-- Acquired the colors and icon from CanIMogIt.
	["INCOMPLETE"] = "|T" .. app.asset("incomplete") .. ":0|t |cff15abffIncomplete|r";	-- Acquired the colors and icon from CanIMogIt.
	["KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |cff15abffKnown on current character|r";
	["UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Unknown on current character|r";
	["COST_ICON"] = "|T" .. app.asset("Currency") .. ":0|t";
	["COST_TEXT"] = "|T" .. app.asset("Currency") .. ":0|t |cffdedade"..CURRENCY.."|r";
	-- TODO @DeadSerious: NEED GOOD UPGRADE ICON
	["UPGRADE_ICON"] = "|T" .. app.asset("Interface_Upgrade") .. ":0|t";
	["UPGRADE_TEXT"] = "|T" .. app.asset("Interface_Upgrade") .. ":0|t |cff62e37e"..UPGRADE.."|r";
	["REAGENT_ICON"] = "|T" .. app.asset("Category_Crafting") .. ":0|t";
	["REAGENT_TEXT"] = "|T" .. app.asset("Category_Crafting") .. ":0|t |cffdedade"..GetItemClassInfo(5).."|r";

	-- These are solely used to condense the length of Source strings within Tooltips
	["ABBREVIATIONS"] = {
		["ALL THE THINGS"] = "ATT",
		["Antorus, the Burning Throne"] = "Antorus",
		["Expansion Pre"] = "Pre",
		["Expansion Features"] = "EF",
		[GROUP_FINDER] = "D&R",
		["Classic %> "] = "",
		["The Burning Crusade"] = "BC",
		["Burning Crusade"] = "BC",
		["The BC"] = "BC",										-- Fix for BC PvP season
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm %>"] = "Cata >",
		-- ["Cataic"] = "Cataclysmic",								-- Fix for Cata last PvP Season
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Dragonflight"] = "DF",
		["Player vs Player"] = "PvP",
		["Raid Finder"] = "LFR",
		["Looking For Raid"] = "LFR",
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["Ny'alotha, the Waking City"] = "Ny'alotha",
		["Tazavesh, the Veiled Market"] = "Tazavesh",
		["10 Player"] = "10M",
		["10 Player (Heroic)"] = "10M (H)",
		["25 Player"] = "25M",
		["25 Player (Heroic)"] = "25M (H)",		
		[BATTLEGROUNDS] = "BGs",
		[BLACK_MARKET_AUCTION_HOUSE] = "BMAH",
		["Emissary Quests"] = "Emissary",
		["Item Sets"] = WARDROBE_SETS,
		["Outdoor Zones"] = LFG_TYPE_ZONE,
		["Pet Journal"] = PETS,
		--["Pet Battles"] = PETS,
		["Player vs. Player"] = STAT_CATEGORY_PVP,
		["Toy Box"] = TOY,
		--["Zone Drop"] = LFG_TYPE_ZONE,
		["Zone Wide"] = LFG_TYPE_ZONE,
		["Mini World Events"] = GetSpellInfo(57055),
		["Monthly World Events"] = CALENDAR_REPEAT_MONTHLY,
		[TRACKER_HEADER_WORLD_QUESTS] = "WQ",
		["Weekly World Events"] = CALENDAR_REPEAT_WEEKLY,
		
		["Covenant:"] = "Cov:",
		[CLASS.." %> "] = "",
		["Quartermaster Miranda Breechlock"] = "Quartermaster Miranda",
		["Season "] = "S",
		["Sanctum Upgrades %> "] = "",
		["The Azure Span"] = "Azure Span",
		["The Forbidden Reach"] = "Forbidden Reach",
		["The Waking Shores"] = "Waking Shores",
		["The Primalist Future"] = "Primalist Future",
		["The Storm's Fury"] = "Storm's Fury",
		["WoW Anniversary"] = "Anniversary",
		["Zaralek Cavern Racing Completionist: Gold"] = "Racing: Gold",
	};

	["CUSTOM_DIFFICULTIES"] = {
		[-1] = "Raid Finder (5.4)",
		[-2] = "Flexible (5.4)",
		[-3] = "Normal (5.4)",
		[-4] = "Heroic (5.4)",
	};

	-- Custom Icons for Factions (seems to be no automatic Faction-Icon associations in-game)
	["FACTION_ID_ICONS"] = {
		-- Examples --
		-- [FACTION_ID] = "PATH//TO//ICON",	-- Faction Name
		-- [FACTION_ID] = ICON_ID			-- Faction Name

		[1168] = 461821,	-- Guild
	};
	
	-- These need to be localized manually.
	-- Can also use the direct IconID, i.e. wowhead.com/icon=###
	-- https://www.wowhead.com/icons
	["HEADER_ICONS"] = {
	-- Class Trial
		[-137] = "Interface\\Icons\\achievement_level_90",									-- Level 90
		[-138] = "Interface\\Icons\\achievement_level_100",									-- Level 100
	-- WoD Dungeons(Fake npcid)
		[-140] = select(6, EJ_GetInstanceInfo(547)),										-- Auchindoun
		[-141] = select(6, EJ_GetInstanceInfo(385)),										-- Bloodmaul Slag Mines
		[-142] = select(6, EJ_GetInstanceInfo(536)),										-- Grimrail Depot
		[-143] = select(6, EJ_GetInstanceInfo(558)),										-- Iron Docks
		[-144] = select(6, EJ_GetInstanceInfo(537)),										-- Shadowmoon Burial Grounds
		[-145] = select(6, EJ_GetInstanceInfo(476)),										-- Skyreach
		[-146] = select(6, EJ_GetInstanceInfo(556)),										-- The Everbloom
		[-147] = select(6, EJ_GetInstanceInfo(559)),										-- Upper Blackrock Spire
	-- Class Trial
		[-148] = 236566,																	-- Level 50 Class Trial
		[-149] = 1408997,																	-- Level 110
		[-150] = 2065613,																	-- Level 120
	-- Garrison
		[-152] = "Interface\\Icons\\achievement_zone_draenor_01",							-- Garrison Campaign
		[-153] = 1103070,																	-- Work Orders
	-- Class Trial
		[-154] = "Interface\\Icons\\ability_bossmagistrix_timewarp1",						-- Level 48
		[-155] = 236566,																	-- Level 50 Character Boost
		[-156] = 236567,																	-- Level 60 Character Boost
	-- Class Trial
		[-160] = 236567,																	-- Level 60 Class Trial
	-- New Characters
		[-211] = 1530081,																	-- New Character
	-- Dalaran Sub-Zone
		[-213] = "Interface\\LFGFRAME\\LFGICON-DALARANSEWERS",								-- The Underbelly
	-- PvP
		[-216] = "Interface\\Icons\\ability_rogue_combatreadiness",							-- Prestige
	-- Fishing
		[-217] = "Interface\\Icons\\INV_Fishing_Lure_Worm",									-- Lures (for Fishing)
	-- War Campaign
		[-236] = "Interface\\Icons\\ui_alliance_7legionmedal",								-- Alliance War Campaign
	-- PvP
		[-240] = "Interface\\Icons\\Achievement_rankedpvp_06",								-- Rated
		[-242] = "Interface\\Icons\\Achievement_BG_KillXEnemies_GeneralsRoom",				-- Unrated
		[-243] = "Interface\\Icons\\ability_hunter_markedfordeath",							-- Bounty
	-- War Campaign
		[-253] = "Interface\\Icons\\ui_horde_honorboundmedal",								-- Horde War Campaign
	-- Allied Races
		[-254] = "Interface\\Icons\\FactionChange",											-- Allied Races
		[-255] = "Interface\\Icons\\vas_guildfactionchange",								-- Heritage
	-- Garrison Missons
		[-299] = "Interface\\Icons\\achievement_garrisonquests_1000",						-- Missions
	-- PvP
		[-302] = "Interface\\Icons\\expansionicon_cataclysm",								-- Level Range 80-84
		[-303] = "Interface\\Icons\\expansionicon_mistsofpandaria",							-- Level Range 85-89
	-- Outposts in Draenor
		[-357] = "Interface\\Icons\\garrison_building_sparringarena",						-- Sparring Arena Outpost (Gorgond)
		[-358] = "Interface\\Icons\\garrison_building_lumbermill",							-- Lumber Mill Outpost (Gorgrond)
		[-360] = "Interface\\Icons\\inv_misc_runedorb_01",									-- Arcane Sanctum
		[-361] = "Interface\\Icons\\ability_vehicle_siegeenginecannon",						-- Artillery Tower
	-- Pre Class Hall Monk
		[-362] = "Interface\\Icons\\ability_monk_legacyoftheemperor",						-- Peak of Serenity
	-- Draenor Outposts
		[-390] = "Interface\\Icons\\inv_misc_coinbag_special",								-- Smuggler's Den
		[-391] = "Interface\\Icons\\achievement_guildperk_hastyhearth",						-- Stoktron Brewery (alliance)
		[-392] = "Interface\\Icons\\achievement_guildperk_hastyhearth",						-- Hearthfire Tavern (horde)
	-- BFA Outposts
		[-397] = "Interface\\Icons\\inv_icon_daily_mission_scroll",							-- Outposts
	-- 5.3
		[-398] = "Interface\\Icons\\ability_vehicle_oiljets",								-- Battlefield: Barrens
	-- BFA War Chest
		[-488] = "Interface\\Icons\\inv_misc_treasurechest04b",								-- Daily War Chest
	-- Misc
		[-493] = "Interface\\Icons\\Inv_icon_mission_complete_order",						-- Temporary Header WoD Mission Loot
	-- Mole Machine
		[-517] = "Interface\\Icons\\ability_racial_molemachine",							-- Mole Machine
	-- Blizzard Events and Anniversaries
		[-520] = "Interface\\Icons\\inv_misc_missilesmallcluster_green",					-- Expansion Pre-Launch
		[-543] = app.asset("Interface_Linvas"),												-- Legion Invasions
	-- PvP Headers
		[-650] = 1455894,																	-- Rated Battlegrounds
		--[-651] = "Interface\\Worldmap\\GlowSkull_64Grey",									-- Not used yet. Future PvP Icons if needed
		--[-652] = "Interface\\Worldmap\\GlowSkull_64",										-- Not used yet. Future PvP Icons if needed
		[-651] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Honor Gear Prideful (S15)
		[-652] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Honor Gear Grievous (S14)
		[-653] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Honor Gear Tyrannical (S13)
		[-654] = "Interface\\Icons\\ability_mount_drake_twilight",							-- Honor Gear Cataclysmic (S11)
		[-656] = "Interface\\Icons\\ability_mount_drake_twilight",							-- Honor Gear Ruthless (S10)
	-- Cataclysm PvP Seasons
		[-672] = "Interface\\Icons\\ability_mount_drake_twilight",							-- Vicious Gladiator: Season 9
		[-673] = "Interface\\Icons\\ability_mount_drake_twilight",							-- Ruthless Gladiator: Season 10
		[-674] = 236235,																	-- Cataclysmic Gladiator: Season 11
	-- Mists of Pandaria PvP Seasons
		[-675] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Malevolent Gladiator: Season 12
		[-676] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Tyrannical Gladiator: Season 13
		[-677] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Grievous Gladiator: Season 14
		[-678] = "Interface\\Icons\\inv_pandarenserpentmount_white",						-- Prideful Gladiator: Season 15
	-- Warlords of Dreanor PvP Seasons
		[-679] = "Interface\\Icons\\inv_fellessergronnmount",								-- Primal Gladiator: Warlords Season 1
		[-680] = "Interface\\Icons\\inv_fellessergronnmount_pale",							-- Wild Gladiator: Warlords Season 2
		[-681] = "Interface\\Icons\\inv_fellessergronnmount_dark",							-- Warmongering Gladiator: Warlords Season 3
	-- Legion PvP Seasons
		[-682] = "Interface\\Icons\\inv_stormdragonmount2",									-- Vindictive Gladiator: Legion Season 1
		[-683] = "Interface\\Icons\\inv_stormdragonmount2blue",								-- Fearless Gladiator: Legion Season 2
		[-684] = "Interface\\Icons\\inv_stormdragonmount2dark",								-- Cruel Gladiator: Legion Season 3
		[-685] = "Interface\\Icons\\inv_stormdragonmount2green",							-- Ferocious Gladiator: Legion Season 4
		[-686] = "Interface\\Icons\\inv_stormdragonmount2light",							-- Fierce Gladiator: Legion Season 5
		[-687] = "Interface\\Icons\\inv_stormdragonmount2yellow",							-- Dominant Gladiator: Legion Season 6
		[-688] = "Interface\\Icons\\inv_stormdragonmount2_fel",								-- Demonic Gladiator: Legion Season 7
	-- Battle for Azeroth PvP Seasons
		[-689] = "Interface\\Icons\\inv_protodrakegladiatormount_gold",						-- Dread Gladiator: Battle for Azeroth Season 1
		[-690] = "Interface\\Icons\\inv_protodrakegladiatormount_blue",						-- Sinister Gladiator: Battle for Azeroth Season 2
		[-691] = "Interface\\Icons\\inv_protodrakegladiatormount_purple",					-- Notorious Gladiator: Battle for Azeroth Season 3
		[-692] = "Interface\\Icons\\inv_protodrakegladiatormount_black",					-- Corrupted Gladiator: Battle for Azeroth Season 4
	-- Pets
		[-795] = app.asset("Pet_Dungeon"),													-- Pet Battle Dungeons
	-- Toys
		[-798] = app.asset("Category_SelfieFilters"),										-- Selfie Filter
	-- Secret Header
		[-807] = "Interface\\Icons\\inv_hivemind",											-- Hivemind
	-- Chests
		[-851] = "Interface\\Icons\\INV_Eng_Crate2",										-- Black Empire Cache (Is a placeholder since no ObjectID are assigned to chests!)
	-- SL Headers
		[-901] = 3726261,																	-- Covenant Callings
		[-902] = 3726261,																	-- Renown
		[-905] = "Interface\\Icons\\Sanctum_features_missiontable",							-- Command Table
		--[-916] = Uses Different Icons														-- Tier 1
		--[-917] = Uses Different Icons														-- Tier 2
		--[-918] = Uses Different Icons														-- Tier 3
		[-920] = "Interface\\Icons\\ui_sigil_necrolord",									-- Covenant: Necrolord
		[-923] = "Interface\\Icons\\sanctum_features_buildabom",							-- Abomination Factory (Necrolord)
		--[-924] = Uses Different Icons														-- Transport Network
		--[-925] = Uses Different Icons														-- Tier 4
		--[-926] = Uses Different Icons														-- Tier 5
		[-929] = "Interface\\Icons\\ui_sigil_nightfae",										-- Covenant: Night Fae
		[-930] = "Interface\\Icons\\Sanctum_features_gardenweald",							-- Queen's Conservatory
		[-939] = "Interface\\Icons\\ui_sigil_kyrian",										-- Covenant: Kyrian
		[-942] = 3675496,																	-- Path of Ascension
		[-949] = "Interface\\Icons\\ui_sigil_venthyr",										-- Covenant: Venthyr
		[-954] = "Interface\\Icons\\spell_animarevendreth_buff",							-- Inquisitors
		[-955] = "Interface\\Icons\\spell_animarevendreth_buff",							-- High Inquisitors
		[-956] = "Interface\\Icons\\spell_animarevendreth_buff",							-- Grand Inquisitors
		[-960] = 3675493,																	-- The Ember Court
		[-967] = 3854020,																	-- Mirror Restoration
		[-968] = 3854020,																	-- Set A
		[-969] = 3854020,																	-- Set B
		[-970] = 3854020,																	-- Set C
		[-971] = 3854020,																	-- Set D
		[-972] = 3536185,																	-- Courage
		[-973] = 3536186,																	-- Loyalty
		[-974] = 3536184,																	-- Wisdom
		[-975] = 3536187,																	-- Humility
		[-981] = 3601566,																	-- Conduits
		[-982] = 2178518,																	-- Skoldus Hall
		[-983] = 1392920,																	-- Fracture Chambers
		[-984] = 1392929,																	-- The Soulforges
		[-985] = 1392911,																	-- Coldheart Interstitia
		[-986] = 2178500,																	-- Mort'regar
		[-987] = 2178509,																	-- The Upper Reaches
	-- Dragonflight
		[-1100] = "Interface\\Icons\\ability_dragonriding_glyph01",									-- Drakewatcher Manuscripts
		[-1101] = "Interface\\Icons\\inv_10_dungeonjewelry_primalist_trinket_1ragingelement_air",	-- Primal Storms
		[-1102] = "Interface\\Icons\\ability_evoker_dragonrage2",									-- Wrathion & Sabellian
		[-1111] = "Interface\\Icons\\inv_cape_special_climbingpack_b_01",							-- Climbing
		[-1112] = 1109168,																			-- Cataloging
		[-1113] = "Interface\\Icons\\inv_misc_ancient_mana",										-- Ancient Waygates
		[-1114] = "Interface\\Icons\\ability_racial_mountaineer",									-- Cartographer's Flag
		[-1120] = "Interface\\Icons\\ui_majorfaction_centaur",										-- Maruuk Centaur
		[-1130] = "Interface\\Icons\\ui_majorfaction_tuskarr",										-- Iskaara Tuskarr
		[-1142] = "Interface\\Icons\\inv_checkered_flag",											-- Dragonriding Racing
		[-1143] = 237274,																			-- Every 30 min Rare
		[-1150] = "Interface\\Icons\\ui_majorfaction_niffen",										-- Loamm Niffen
		[-1151] = "Interface\\Icons\\achievement_guildperk_bartering",								-- Bartering
		[-1200] = "Interface\\Icons\\inv_10_dungeonjewelry_primalist_ring_4_omni",					-- Zskera Vaults
		[-1202] = "Interface\\Icons\\inv_fyrakk_dragonbreath",										-- Fyrakk Assaults
		[-1203] = "Interface\\Icons\\inv_pet_mole",													-- Sniffenseeking
		[-1204] = 133642,																			-- Available (Inv_misc_bag_10_green)
		[-1205] = 133643,																			-- Unavailable (Inv_misc_bag_10_red)
	-- Island Expeditions
		[-3338] = "Interface\\Icons\\achievement_zone_darkshore_01",						-- Island Expeditions
	-- Tournament
		[-4191] = "Interface\\Icons\\Achievement_PVP_Legion08",								-- Tournament
	--
		[-6014] = "Interface\\Icons\\Spell_Arcane_PortalUnderCity",							-- Cities
	------ ACHIEVEMENT HEADERS SECTION ------
	-- Is Used Somewhere
		[-10048] = "Interface\\Icons\\buff_feltreasures",							-- Mage Tower
		[-10050] = "Interface\\Icons\\buff_epichunter",								-- Nether Disruptor
		[-10058] = app.asset("Category_Zones"),										-- World
	-- 8.3
		[-10071] = "Interface\\Icons\\Paladin_Protection",							-- Vision of N'zotth
		[-10072] = "Interface\\Icons\\ability_deathwing_assualtaspects",			-- N'Zoth Assault
		[-10073] = "Interface\\Icons\\spell_arcane_teleportorgrimmar",				-- Horrific Vision of Orgrimmar
		[-10074] = "Interface\\Icons\\spell_arcane_teleportstormwind",				-- Horrific Vision of Stomrwind
		[-10080] = "Interface\\Icons\\trade_alchemy_potiond2",						-- Horrific Visions
		[-10081] = "Interface\\Icons\\spell_shadow_shadowmend",						-- Corrupted Area (Vision Scenario)
		[-10082] = "Interface\\Icons\\spell_priest_psyfiend",						-- Lost Area (Vision Scenario)
	};
	["HEADER_NAMES"] = {
	-- Class Trial
		[-137] = string.format(SPELLBOOK_AVAILABLE_AT, 90),						-- Level 90
		[-138] = string.format(SPELLBOOK_AVAILABLE_AT, 100),					-- Level 100
	-- WoD Dungeons(Fake npcid)
		[-140] = select(2, GetAchievementInfo(9039)),							-- Auchindoun
		[-141] = select(2, GetAchievementInfo(9037)),							-- Bloodmaul Slag Mines
		[-142] = select(2, GetAchievementInfo(9043)),							-- Grimrail Depot
		[-143] = select(2, GetAchievementInfo(9038)),							-- Iron Docks
		[-144] = select(2, GetAchievementInfo(9041)),							-- Shadowmoon Burial Grounds
		[-145] = select(2, GetAchievementInfo(8843)),							-- Skyreach
		[-146] = select(2, GetAchievementInfo(9044)),							-- The Everbloom
		[-147] = select(2, GetAchievementInfo(9042)),							-- Upper Blackrock Spire
	-- Class Trial
		[-148] = string.format(SPELLBOOK_AVAILABLE_AT, 50).." "..CHARACTER_TYPE_FRAME_TRIAL_BOOST_CHARACTER,	-- Level 50 Class Trial
		[-149] = string.format(SPELLBOOK_AVAILABLE_AT, 110),					-- Level 110
		[-150] = string.format(SPELLBOOK_AVAILABLE_AT, 120),					-- Level 120
	-- Garrison
		[-152] = "Garrison Campaign",											-- Garrison Campaign
		[-153] = CAPACITANCE_WORK_ORDERS,										-- Work Orders
	-- Class Trial
		[-154] = string.format(SPELLBOOK_AVAILABLE_AT, 48),						-- Level 48
		[-155] = string.format(SPELLBOOK_AVAILABLE_AT, 50).." "..CHARACTER_UPGRADE_CHARACTER_LIST_LABEL,	-- Level 50 Character Boost
		[-156] = string.format(SPELLBOOK_AVAILABLE_AT, 60).." "..CHARACTER_UPGRADE_CHARACTER_LIST_LABEL,	-- Level 60 Character Boost
	-- Class Trial
		[-160] = string.format(SPELLBOOK_AVAILABLE_AT, 60).." "..CHARACTER_TYPE_FRAME_TRIAL_BOOST_CHARACTER,	-- Level 60 Class Trial
	-- Item Sets
		[-211] = NEW.." "..CHARACTER,											-- New Character
	-- Dalaran Sub-Zone
		[-213] = DUNGEON_FLOOR_DALARAN2,										-- The Underbelly
	-- PvP
		[-216] = PVP_PRESTIGE_RANK_UP_TITLE,									-- Prestige
	-- Fishing
		[-217] = "Lures",														-- Lures (for Fishing)
	-- War Campaign
		[-236] = C_Map.GetAreaInfo(9663),										-- War Campaign - Alliance
	-- PvP
		[-240] = PVP_TAB_CONQUEST,												-- Rated
		[-242] = "Unrated",														-- Unrated
		[-243] = "Bounty",														-- Bounty
	-- War Campaign
		[-253] = C_Map.GetAreaInfo(9664),										-- War Campaign - Horde
	-- Allied Races
		[-254] = "Allied Races",												-- Allied Races, do not replace with CHARACTER_CREATE_MORE_RACES, it's nil
		[-255] = "Heritage",													-- Heritage
	-- Garrison Missions
		[-299] = GARRISON_MISSIONS,												-- Missions
	-- PvP
		[-302] = BATTLEFIELD_LEVEL.." 80-84",									-- Level Range 80-84
		[-303] = BATTLEFIELD_LEVEL.." 85-89",									-- Level Range 85-89
	-- Outposts in Draenor
		[-357] = GetSpellInfo(171866),											-- Sparring Arena Outpost
		[-358] = GetSpellInfo(164028),											-- Lumber Mill Outpost
		[-360] = select(2,GetAchievementInfo(8987)),							-- Arcane Sanctum
		[-361] = GetSpellInfo(182108).." Tower",								-- Artillery Tower
	-- Pre Class Hall Monk
		[-362] = DUNGEON_FLOOR_KUNLAISUMMITSCENARIO0,							-- Peak of Serenity
	-- Draenor Outposts
		[-390] = C_Map.GetAreaInfo(7288),										-- Smuggler's Den (Spires of Arak)
		[-391] = C_Map.GetAreaInfo(7291),										-- Stoktron Brewery (Spires of Arak)
		[-392] = C_Map.GetAreaInfo(7290),										-- Hearthfire Tavern
	-- BFA Outposts
		[-397] = "Outposts",													-- Outposts
	-- 5.3
		[-398] = "Battlefield: Barrens",										-- Battlefield: Barrens
	-- BFA War Chest
		[-488] = "War Chest",													-- Daily War Chest
	-- Misc
		[-493] = "Garrison Mission Loot",										-- Header for WoD Mission Loot
	-- Mole Machine
		[-517] = GetSpellInfo(265225),											-- Mole Machine
	-- Blizzard Events and Anniversaries
		[-520] = "Expansion Pre-Launch",										-- Expansion Pre-Launch
		[-543] = "Legion Invasions",											-- Legion Invasions
	-- PvP Header
		-- Special Season Tags
		--[-650] = "Rated Battleground",										-- Listed under Cata PvP Seasons
		--[-651] = "Honor Gear Prideful Season",								-- Listed under MoP PvP Seasons
		--[-652] = "Honor Gear Grievous Season",								-- Listed under MoP PvP Seasons
		--[-653] = "Honor Gear Tyrannical Season",								-- Listed under MoP PvP Seasons
		--[-654] = "Honor Gear Cataclysmic Season",								-- Listed under Cata PvP Seasons
		--[-656] = "Honor Gear Ruthless Season",								-- Listed under Cata PvP Seasons
	-- Cataclysm PvP Seasons
		[-650] = PVP_RATED_BATTLEGROUND,										-- Rated Battleground
		[-672] = select(2, GetAchievementInfo(6002))..": Season 9",				-- Vicious Gladiator: Season 9
		[-656] = "Honor Gear Ruthless Season",									-- Honor Gear Ruthless (S10)
		[-673] = select(2, GetAchievementInfo(6124))..": Season 10",			-- Ruthless Gladiator: Season 10
		[-654] = "Honor Gear Cataclysmic Season",								-- Honor Gear Cataclysmic (S11)
		[-674] = select(2, GetAchievementInfo(6938))..": Season 11",			-- Cataclysmic Gladiator: Season 11
	-- Mists of Pandaria PvP Seasons
		[-675] = select(2, GetAchievementInfo(8214))..": Season 12",			-- Malevolent Gladiator: Season 12
		[-653] = "Honor Gear Tyrannical Season",								-- Honor Gear Tyrannical (S13)
		[-676] = select(2, GetAchievementInfo(8791))..": Season 13",			-- Tyrannical Gladiator: Season 13
		[-652] = "Honor Gear Grievous Season",									-- Honor Gear Grievous (S14)
		[-677] = select(2, GetAchievementInfo(8643)),							-- Grievous Gladiator: Season 14
		[-651] = "Honor Gear Prideful Season",									-- Honor Gear Prideful (S15)
		[-678] = select(2, GetAchievementInfo(8666)),							-- Prideful Gladiator: Season 15
	-- Warlords of Dreanor PvP Seasons
		[-679] = select(2, GetAchievementInfo(9232)),							-- Primal Gladiator: Warlords Season 1
		[-680] = select(2, GetAchievementInfo(10096)),							-- Wild Gladiator: Warlords Season 2
		[-681] = select(2, GetAchievementInfo(10097)),							-- Warmongering Gladiator: Warlords Season 3
	-- Legion PvP Seasons
		[-682] = select(2, GetAchievementInfo(11012)),							-- Vindictive Gladiator: Legion Season 1
		[-683] = select(2, GetAchievementInfo(11014)),							-- Fearless Gladiator: Legion Season 2
		[-684] = select(2, GetAchievementInfo(11037)),							-- Cruel Gladiator: Legion Season 3
		[-685] = select(2, GetAchievementInfo(11062)),							-- Ferocious Gladiator: Legion Season 4
		[-686] = select(2, GetAchievementInfo(12010)),							-- Fierce Gladiator: Legion Season 5
		[-687] = select(2, GetAchievementInfo(12134)),							-- Dominant Gladiator: Legion Season 6
		[-688] = select(2, GetAchievementInfo(12185)),							-- Demonic Gladiator: Legion Season 7
	-- Battle for Azeroth PvP Seasons
		[-689] = select(2, GetAchievementInfo(12945)),							-- Dread Gladiator: Battle for Azeroth Season 1
		[-690] = select(2, GetAchievementInfo(13200)),							-- Sinister Gladiator: Battle for Azeroth Season 2
		[-691] = select(2, GetAchievementInfo(13630)),							-- Notorious Gladiator: Battle for Azeroth Season 3
		[-692] = select(2, GetAchievementInfo(13957)),							-- Corrupted Gladiator: Battle for Azeroth Season 4
	-- Pets
		[-795] = "Pet Battle Dungeons",											-- Pet Battle Dungeons
	-- Toys
		[-798] = GetSpellInfo(181765),											-- S.E.L.F.I.E. Camera
	-- Secret Header
		[-807] = GetSpellInfo(261395),											-- The Hivemind
	-- Chests
		[-851] = "Black Empire Cache",											-- Black Empire Cache (Is a placeholder since no ObjectID are assigned to chests!)
	-- Shadowlands Header
		[-901] = GetSpellInfo(339041),											-- Covenant Callings
		[-902] = COVENANT_SANCTUM_TAB_RENOWN,									-- Renown
		[-905] = GetSpellInfo(280630),											-- Command Table
		[-916] = string.format(COVENANT_SANCTUM_TIER, 1),						-- Tier 1
		[-917] = string.format(COVENANT_SANCTUM_TIER, 2),						-- Tier 2
		[-918] = string.format(COVENANT_SANCTUM_TIER, 3),						-- Tier 3
		[-979] = "Broker Ve'ken & Broker Ve'nott",								-- Broker Ve'ken & Broker Ve'nott
		[-981] = GetSpellInfo(348869),											-- Conduits
		-- SL Maldraxxus/Necrolord
		[-920] = GetSpellInfo(321078),											-- Necrolord
		[-923] = COVENANT_SANCTUM_FEATURE_NECROLORDS,							-- Abomination Factory
		[-924] = "Transport Network",											-- Transport Network
		[-925] = string.format(COVENANT_SANCTUM_TIER, 4),						-- Tier 4
		[-926] = string.format(COVENANT_SANCTUM_TIER, 5),						-- Tier 5
		-- SL Ardenweald/Night Fae
		[-929] = GetSpellInfo(321077),											-- Night Fae
		[-930] = COVENANT_SANCTUM_FEATURE_NIGHT_FAE,							-- Queen's Conservatory
		[-934] = C_Map.GetAreaInfo(12840),										-- Star Lake Amphitheater
		-- SL Bastion/Kyrian
		[-939] = GetSpellInfo(321076),											-- Kyrian
		[-942] = COVENANT_SANCTUM_FEATURE_KYRIAN,								-- Path of Ascension
		[-972] = C_PetJournal.GetPetInfoBySpeciesID(3065),						-- Courage
		[-973] = "Loyalty",														-- Loyalty
		[-974] = GetSpellInfo(3166),											-- Wisdom
		[-975] = "Humility",													-- Humility
		-- SL Revendreth/Venthyr
		[-949] = GetSpellInfo(321079),											-- Venthyr
		[-954] = "Inquisitors",													-- Inquisitors
		[-955] = "High Inquisitors",											-- High Inquisitors
		[-956] = "Grand Inquisitors",											-- Grand Inquisitors
		[-960] = COVENANT_SANCTUM_FEATURE_VENTHYR,								-- The Ember Court
		[-967] = "Mirror Restoration",											-- Mirror Restoration
		[-968] = "Set A",														-- Set A
		[-969] = "Set B",														-- Set B
		[-970] = "Set C",														-- Set C
		[-971] = "Set D",														-- Set D
		-- SL Torghast
		[-982] = select(2, GetAchievementInfo(14463)),							-- Skoldus Hall
		[-983] = select(2, GetAchievementInfo(14473)),							-- Fracture Chambers
		[-984] = select(2, GetAchievementInfo(14478)),							-- The Soulforges
		[-985] = select(2, GetAchievementInfo(14483)),							-- Coldheart Interstitia
		[-986] = select(2, GetAchievementInfo(14488)),							-- Mort'regar
		[-987] = select(2, GetAchievementInfo(14493)),							-- The Upper Reaches
	-- Dragonflight
		[-1100] = DRAKE_MANUSCRIPTS,												-- Drakewatcher Manuscripts
		[-1101] = "Primal Storms",													-- Primal Storms
		[-1102] = "Wrathion & Sabellian",											-- Wrathion & Sabellian
		[-1111] = GetSpellInfo(365311),												-- Rock Climbing
		[-1112] = GetSpellInfo(381284),												-- Cataloging
		[-1113] = GetSpellInfo(386485),												-- Ancient Waygates
		[-1114] = GetSpellInfo(382288),												-- Cartographer's Flag
		[-1120] = "Maruuk Centaur",													-- Maruuk Centaur
		[-1130] = "Iskaara Tuskarr",												-- Iskaara Tuskarr
		[-1142] = GetSpellInfo(400433),												-- Dragonriding Racing
		[-1143] = "DF Rare Rotation",												-- DF Rare Rotation (Every 30 min Rare)
		[-1150] = "Loamm Niffen",													-- Loamm Niffen
		[-1151] = "Bartering",														-- Bartering
		[-1200] = "Zskera Vaults",													-- Zskera Vaults
		[-1202] = "Fyrakk Assaults",												-- Fyrakk Assaults
		[-1203] = "Sniffenseeking",													-- Sniffenseeking
		[-1204] = AVAILABLE,														-- Available
		[-1205] = UNAVAILABLE,														-- Unavailable
	-- Island Expeditions
		[-3338] = ISLANDS_HEADER,												-- Island Expeditions
	-- Tournament
		[-4191] = ITEM_TOURNAMENT_GEAR,											-- Tournament Gear
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings
		[-5200] = "Base Appearance",											-- Base Appearance
		[-5201] = "Class Hall Campaign",										-- Class Hall Campaign
		[-5202] = "Balance of Power",											-- Balance of Power
		[-5203] = "Prestige Rewards",											-- Prestige Rewards
		[-5204] = "Challenge Appearance",										-- Challenge Appearance
		[-5205] = "Hidden Appearance",											-- Hidden Appearance

		[-6014] = BUG_CATEGORY4,												-- Cities

	------ ACHIEVEMENT HEADERS SECTION ------
		[-10048] = BROKENSHORE_BUILDING_MAGETOWER,								-- Mage Tower
		[-10050] = BROKENSHORE_BUILDING_NETHERDISRUPTOR,						-- Nether Disruptor
		[-10058] = WORLD,														-- World
	-- 8.3
		[-10071] = "Visions of N'Zoth",
		[-10072] = "N'Zoth Assault",
		[-10073] = select(2, GetAchievementInfo(14063)),						-- Horrific Vision of Orgrimmar
		[-10074] = select(2, GetAchievementInfo(14062)),						-- Horrific Vision of Stormwind
		[-10080] = SPLASH_BATTLEFORAZEROTH_8_3_0_FEATURE1_TITLE,				-- Horrific Visions
		[-10081] = "Corrupted Area",
		[-10082] = "Lost Area",
	};
	
	-- Deprecated! (move these eventually)
	["HEADER_DESCRIPTIONS"] = {};
	["HEADER_EVENTS"] = {};
	["HEADER_LORE"] = {};
	["EVENT_REMAPPING"] = {};
	["EVENT_TOOLTIPS"] = {};
	
	-- These are alternative map names that we don't want to display, but used for mapID calculations.
	-- If there is a name provided in the table above, it will prefer that name association.
	["ZONE_TEXT_TO_MAP_ID"] = {};
	["ALT_ZONE_TEXT_TO_MAP_ID"] = {
		["Gates of Ahn'Qiraj"] = 1451,
		["The Temple of Atal'Hakkar"] = 220,
		["The Battle for Mount Hyjal"] = 329,
		["The Eye"] = 334,
	};
	
	-- Module Localizations
	["PVP_RANK_DESCRIPTION"] = "There are a total of 14 ranks for both factions. Each rank requires a minimum amount of Rating Points to be calculated every week, then calculated in comparison to other players on your server.\n\nEach rank grants access to different rewards, from PvP consumables to Epic Mounts that do not require Epic Riding Skill and Epic pieces of gear at the highest ranks. Each rank is also applied to your character as a Title.";

	-- Unobtainable Listing (for fellow 100%s out there)
	["UNOBTAINABLE_ITEM_TEXTURES"] = {
		"Interface\\AddOns\\AllTheThings\\assets\\status-unobtainable.blp",			-- 1
		"Interface\\AddOns\\AllTheThings\\assets\\status-prerequisites.blp",		-- 2
		"",																			-- 3, we want no icon for these
		"Interface\\AddOns\\AllTheThings\\assets\\status-seasonal-unavailable.blp",	-- Seasonal unavailable
		"Interface\\AddOns\\AllTheThings\\assets\\status-seasonal-available.blp",	-- Seasonal available
	};
	["UNOBTAINABLE_ITEM_REASONS"] = {
		-- [id] = {header, description, name}, header: header id, 1-3 as above, 4 is legacy.
		[1] = {1, "|CFFFF0000This was never available to players.|r", "Never Implemented"}, -- No Hope
		[2] = {1, "|CFFFF0000This has been removed from the game.|r", "Removed From Game"}, -- No Hope
		[4] = {2, "|CFFFF0000This can no longer be purchased or unlocked as Transmog unless you have the required PvP Title, required PvP Rating or were in the Top % of that season.|r", "PvP Elite/Gladiator"},

		-- Arbitrary Filters
		[9] = {3, "|CFFFF0000The original source of obtaining this has been removed and is now only available via the Black Market Auction House.|r", "Black Market AH [BMAH]"},
		[10] = {3, "|CFFFF0000Originally obtained via a TCG card that is no longer in print, but may still be available via the Black Market, In-Game, or Real Life Auction House.|r", "Trading Card Game [TCG]"},
		[11] = {2, "|CFFFF0000This is no longer available unless you know someone that has access to the items used to summon the boss.|r", "Requires Summoning Items"},
		-- [13] = {1, "|CFFFF0000Your followers are too high and the mission for the cache will no longer spawn.|r", "Legacy Cache"}, Comment: Didnt find this filter used anywhere.
		[15] = {1, "|CFFFF0000This cannot be permanently learned or used for transmog.|r", "Unlearnable"},
		[35] = {3, "|CFFFF0000This is locked behind a paywall such as the in-game shop, another Blizzard product, or the Recruit-A-Friend service.|r", "Blizzard Balance"},
		--[36] = {1, "|CFFFF0000This was only obtainable during the WoW Anniversary when it was active and is no longer available.|r", "WoW Anniversary [Removed]"}, -- not used in Retail... I was confused with seasonal filter.
		[38] = {2, "|CFFFF0000This is only available to players that completed the Legendary Cloak quest chain during Mists of Pandaria or via the BMAH.|r", "Ordos - Legendary Cloak"},
		-- #if BEFORE BFA
		--[41] = {1, "|CFFFF0000This is only available to players that completed the associated Mage Tower Artifact Challenges and earned the base appearance.|r", "Mage Tower Appearances"},
		-- #endif
		[45] = {1, "|CFFFF0000Blizzard's Loot changes broke several Items and made them Unobtainable.\nHouse of Nobles Cape/Gurubashi Empire Greatcloak (both BFA Emissary Rewards), Ogom the Mangler, WoD Mission Loot & some Ulduar HM items are currently broken and need to be fixed.|r", "Broken Loot"},
	};

	["CUSTOM_COLLECTS_REASONS"] = {
		["NPE"] = { icon = "|T"..("Interface\\Icons\\achievement_newplayerexperience")..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
		["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
		["HOA"] = { icon = "|T"..("Interface\\Icons\\inv_heartofazeroth")..":0|t", color = "ffe6cc80", text = GetSpellInfo(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
		["!HOA"] = { icon = "|T"..("Interface\\Icons\\mystery_azerite_chest_normal")..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellInfo(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellInfo(275825).."|r can collect this." },
		["SL_COV_KYR"] = { icon = "|T"..("Interface\\Icons\\ui_sigil_kyrian")..":0|t", color = "ff516bfe", text = GetSpellInfo(321076) },
		["SL_COV_NEC"] = { icon = "|T"..("Interface\\Icons\\ui_sigil_necrolord")..":0|t", color = "ff40bf40", text = GetSpellInfo(321078) },
		["SL_COV_NFA"] = { icon = "|T"..("Interface\\Icons\\ui_sigil_nightfae")..":0|t", color = "ffA330C9", text = GetSpellInfo(321077) },
		["SL_COV_VEN"] = { icon = "|T"..("Interface\\Icons\\ui_sigil_venthyr")..":0|t", color = "fffe040f", text = GetSpellInfo(321079) },
	};
};
app.L = L;

-- Crieve tested all professions in non-english locales and the following skills were not detected without these.
L["SPELL_NAME_TO_SPELL_ID"] = {
	-- Riding
	["Riding"] = 33388,
	["Equitación"] = 33388,
	["Reiten"] = 33388,
	["Monte"] = 33388,
	["Montaria"] = 33388,
	["Верховая езда"] = 33388,
	["탈것 타기"] = 33388,
	["骑术"] = 33388,
	
	-- Herb Gathering
	-- The skill name is "Herbalism", not "Herb Gathering"
	["Herbalism"] = 2366,
	["Herboristería"] = 2366,
	["Kräuterkunde"] = 2366,
	["Herboristerie"] = 2366,
	["Herborismo"] = 2366,
	["Травничество"] = 2366,
	["약초채집"] = 2366,
	["草药学"] = 2366,
	["草藥學"] = 2366,
	
	["Ganzúa"] = 1809,		-- Lock Pick	-- Required for ES (EU)
	["Desollar"] = 8613,	-- Skinning		-- Required for ES (EU)
	["Cнятие шкур"] = 8613,	-- Skinning		-- Required for RU
};