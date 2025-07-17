local appName, app = ...;

local GetSpellName = app.WOWAPI.GetSpellName;
local GetItemClassInfo = app.WOWAPI.GetItemClassInfo;


	TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";
	DESCRIPTION = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";

	NEW_VERSION_FLAVORS = {
		"AllTheThings hungers.",
		"or Sylvanas might get another lighter.",
		"as Alexstrasza is worried about you.",
		"and Invincible will drop |cffffaaaafor sure|r next time.",
		"this was merely a setback.",
		", Yes Chef!",
		"and Crieve will help a turtle to make it to the water.",
		"CHAMPYUUN, DE AZURIITE.",
	};


	MINIMAP_MOUSEOVER_TEXT = "Right Click to change settings.\nLeft Click to open the Main List.\n"..CTRL_KEY_TEXT.." Click to open the Mini List.\n"..SHIFT_KEY_TEXT.." Click to Refresh Collections.";
	TOP_ROW_INSTRUCTIONS = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..CTRL_KEY_TEXT.." Click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." Click to Refresh Collections\n"..SHIFT_KEY_TEXT.." Right Click to Sort Groups/Popout Lists|r";
	OTHER_ROW_INSTRUCTIONS = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..CTRL_KEY_TEXT.." Click to Expand/Collapse Recursively\n"..SHIFT_KEY_TEXT.." Click to Refresh Collections\n"..SHIFT_KEY_TEXT.." Right Click to Sort Groups/Popout Lists\n"..ALT_KEY_TEXT.." Right Click to Plot Waypoints|r";
	TOP_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click and Drag to Move\nRight Click to Open the Settings Menu\n"..SHIFT_KEY_TEXT.." Click to Search the Auction House|r";
	OTHER_ROW_INSTRUCTIONS_AH = "|cff3399ffLeft Click to Expand/Collapse\nRight Click to Pop Out to Mini List\n"..SHIFT_KEY_TEXT.." Click to Search the Auction House|r";
	RECENTLY_MADE_OBTAINABLE = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	RECENTLY_MADE_OBTAINABLE_PT2 = "|CFFFF0000The more information, the better. Thanks!|r";
	REQUIRES_PVP = "|CFF00FFDERequires PvP Activities or Currencies|r";
	REQUIRES_PETBATTLES = "|CFF00FFDERequires Pet Battling|r";
	REQUIRES_SKYRIDING = "|CFF00FFDE"..(SPELL_FAILED_CUSTOM_ERROR_1029 or "Requires Skyriding").."|r";
	REPORT_TIP = "\n("..CTRL_KEY_TEXT.."+C to copy multiline report to your clipboard)";


	CRITERIA_FORMAT = "|cffffff00[Criteria: %s]|r";






	ICON_LEGEND_STATUS_TEXT = app.ccColors.White ..
			"|T" .. app.asset("status-unobtainable") .. ":0|t " .. "Unobtainable" ..
			"\n|T" .. app.asset("status-prerequisites") .. ":0|t " .. "Obtainable only with prerequisites" ..
			"\n|T" .. app.asset("status-seasonal-available") .. ":0|t " .. "Available seasonal content" ..
			"\n|T" .. app.asset("status-seasonal-unavailable") .. ":0|t " .. "Unavailable seasonal content" ..
			"\n|T374225:0|t " .. "Unavailable on current character" ..
			"\n|T" .. app.asset("status-unsorted") .. ":0|t " .. "Unsorted in ATT";
	ICON_LEGEND_MISC_TEXT = app.ccColors.White ..
			"|T" .. app.asset("Currency") .. ":0|t " .. "Used as a currency" ..
			"\n|T" .. app.asset("Interface_Reagent") .. ":0|t " .. "Used as a crafting reagent" ..
			"\n|T" .. app.asset("Interface_Catalyst") .. ":0|t " .. "Convertible at the Catalyst for a new appearance" ..
			"\n|T" .. app.asset("Interface_Upgrade") .. ":0|t " .. "Can be upgraded for a new appearance";
	MINIMAP_SLIDER_TOOLTIP = 'Use this to customize the size of the Minimap Button.\n\nDefault: 36';

	COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	COLLECTED = "|T" .. app.asset("known") .. ":0|t |c" .. app.Colors.Completed .. "Collected|r";		-- Acquired the colors and icon from CanIMogIt.
	COLLECTED_APPEARANCE = "|T" .. app.asset("known_circle") .. ":0|t |c" .. app.Colors.Completed .. "Collected*|r";	-- Acquired the colors and icon from CanIMogIt.
	NOT_COLLECTED = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";		-- Acquired the colors and icon from CanIMogIt.
	COMPLETE = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";		-- Acquired the colors and icon from CanIMogIt.
	COMPLETE_OTHER = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";		-- Acquired the colors and icon from CanIMogIt.
	INCOMPLETE = "|T" .. app.asset("incomplete") .. ":0|t |c" .. app.Colors.Completed .. "Incomplete|r";		-- Acquired the colors and icon from CanIMogIt.
	INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.


	BOUND_ON = "Bound on %s |T" .. app.asset("known_circle_yellow") .. ":0|t";

	MARKS_OF_HONOR_DESC = "Marks of Honor must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the item)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	MOP_REMIX_BRONZE_DESC = "Bronze must be viewed in a Popout window to see all of the normal 'Contains' content.\n(Type '/att ' in chat then "..SHIFT_KEY_TEXT.." click to link the currency)\n\n|cFFfe040fAfter purchasing and using an ensemble, relogging & a forced ATT refresh (in this order)\nmay be required to register all the items correctly.|r";
	REQUIRED_ACHIEVEMENTS = ITEM_REQ_SKILL:format(ACHIEVEMENTS),
	REQUIRED_ACHIEVEMENTS_DESC = "Shows any Achievements which must be obtained before this Thing is available",
	FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";
	MUSIC_ROLLS_DESC = "These are unlocked per-character and are not currently shared across your account. If someone at Blizzard is reading this, it would be really swell if you made these account wide.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";


	RESET_INSTANCES_DESC = "Click here to reset your instances.\n\n"..ALT_KEY_TEXT.." click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!";
	TITLES = PAPERDOLL_SIDEBAR_TITLES;
	UPDATE_WORLD_QUESTS_DESC = "Sometimes the World Quest API is slow or fails to return new data. If you wish to forcibly refresh the data without changing zones, click this button now!\n\n"..ALT_KEY_TEXT.." click to include currently-available Things which may not be time-limited";
	DOES_NOT_CONTRIBUTE_TO_PROGRESS = "|cffe08207This group and its content do not contribute to the progress of this window since it is Sourced in another Location!|r";


	TOP_ROW_TO_LOCK = "|cff3399ff"..ALT_KEY_TEXT.." click to Lock this Window";
	TOP_ROW_TO_UNLOCK = "|cffcf0000"..ALT_KEY_TEXT.." click to Unlock this Window";


	ABBREVIATIONS = {
		["ALL THE THINGS"] = "ATT",
		["Expansion Pre"] = "Pre",
		["Expansion Features"] = "EF",
		[GROUP_FINDER] = "D&R",
		["Dungeons & Raids"] = "D&R",
		["Player vs Player"] = STAT_CATEGORY_PVP,
		["Player vs. Player"] = STAT_CATEGORY_PVP,
		["Outdoor Zones"] = LFG_TYPE_ZONE,
		-- Expansion sorted
		["Classic %> "] = "",
		["The Burning Crusade"] = "BC",
		["Burning Crusade"] = "BC",
		["The BC"] = "BC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm %>"] = "Cata >",
		["Cataclysm "] = "Cata ",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Dragonflight"] = "DF",
		["The War Within"] = "TWW",
		-- Dungeon & Raid
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["M Keystone"] = "M+",
		["Raid Finder"] = "LFR",
		["Looking For Raid"] = "LFR",
		["10 Player"] = "10M",
		["10 Player (Heroic)"] = "10M (H)",
		["25 Player"] = "25M",
		["25 Player (Heroic)"] = "25M (H)",
		[BATTLEGROUNDS] = "BGs",
		-- Dungeon & Raid Names
		-- Classic
		["Scarlet Monastery of Old"] = "SM: Old",
		-- Cata
		["Baleroc, the Gatekeeper"] = "Baleroc",
		["The Conclave of Wind"] = "Conclave",
		["Hagara the Stormbinder"] = "Hagara",
		["Majordomo Staghelm"] = "Majordomo",
		["Omnotron Defense System"] = "Omnotron",
		["Theralion and Valiona"] = "Theralion&Valiona",
		["Yor'sahj the Unsleeping"] = "Yor'sahj",
		-- DF
		["Aberrus, the Shadowed Crucible"] = "Aberrus",
		["Antorus, the Burning Throne"] = "Antorus",
		["Amirdrassil, the Dream's Hope"] = "Amirdrassil",
		["Kazzara, the Hellforged"] = "Kazzara",
		["Larodar, Keeper of the Flame"] = "Larodar",
		["Nymue, Weaver of the Cycle"] = "Nymue",
		["Tindral Sageswift, Seer of the Flame"] = "Tindral Sageswift",
		-- Legion
		["Il'gynoth, The Heart of Corruption"] = "Il'gynoth",
		-- BFA
		["Ny'alotha, the Waking City"] = "Ny'alotha",
		-- SL
		["Tazavesh, the Veiled Market"] = "Tazavesh",
		-- TWW
		["Ara-Kara, City of Echoes"] = "Ara-Kara",
		["Enterprising Hero: The War Within Season Two"] = "Enterprising Hero: TWW S2",
		["The War Within Keystone Legend: SeasonTwo"] = "TWW Keystone Legend: S2",
		["Mug'Zee, Heads of Security"] = "Mug'Zee",
		["Sikran, Captain of the Sureki"] = "Sikran",
		["Vexie and the Geargrinders"] = "Vexie & the Geargrinders",
		-- Outdoor Zones
		["Quartermaster Miranda Breechlock"] = "Quartermaster Miranda",
		["Season "] = "S",
		["Sanctum Upgrades %> "] = "",
		["The Azure Span"] = "Azure Span",
		["The Forbidden Reach"] = "Forbidden Reach",
		["The Superbloom"] = "Superbloom",
		["The Waking Shores"] = "Waking Shores",
		["The Primalist Future"] = "Primalist Future",
		["The Storm's Fury"] = "Storm's Fury",
		["WoW Anniversary"] = "Anniversary",
		["Dragonriding Challenge: Dragon Isles: Gold > "] = "",
		["Dragon Racing Completionist: Gold > "] = "",
		["Emerald Dream Challenge Racing Completionist: Gold > "] = "",
		["Emerald Dream Racing Completionist: Gold > "] = "",
		["Forbidden Reach Challenge Racing Completionist: Gold > "] = "",
		["Forbidden Reach Racing Completionist: Gold > "] = "",
		["Zaralek Cavern Racing Completionist: Gold > "] = "",

		["WoW's Anniversary %> "] = "",
		[BLACK_MARKET_AUCTION_HOUSE] = "BMAH",
		["Emissary Quests"] = "Emissary",
		["Item Sets"] = WARDROBE_SETS,
		["Zone Wide"] = LFG_TYPE_ZONE,
		["Mini World Events"] = GetSpellName(57055),
		["Monthly World Events"] = CALENDAR_REPEAT_MONTHLY,
		[TRACKER_HEADER_WORLD_QUESTS] = "WQ",
		["Weekly World Events"] = CALENDAR_REPEAT_WEEKLY,
		["Covenant:"] = "Cov:",
		[CLASS.." %> "] = "",

		["Pet Journal"] = PETS,
		["Toy Box"] = TOY,
	};

	EVENT_REMAPPING = {};
	EVENT_TIMERUNNING_SEASONS = {};
	HEADER_DESCRIPTIONS = {};
	HEADER_EVENTS = {};
	HEADER_ICONS = {};
	HEADER_LORE = {};
	HEADER_NAMES = {};
	QUEST_NAMES = {};

	MAP_ID_TO_ZONE_TEXT = {};

	-- Binding Localizations
	TOGGLE_ACCOUNT_MODE = "Toggle Account Mode";
	TOGGLE_COMPLETIONIST_MODE = "Toggle Completionist Mode";
	TOGGLE_DEBUG_MODE = "Toggle Debug Mode";
	TOGGLE_FACTION_MODE = "Toggle Faction Mode";
	TOGGLE_LOOT_MODE = "Toggle Loot Mode";
	TOGGLE_COMPLETEDTHINGS = "Toggle Completed Things (Both)";
	TOGGLE_COMPLETEDGROUPS = "Toggle Completed Groups";
	TOGGLE_COLLECTEDTHINGS = "Toggle Collected Things";
	TOGGLE_BOEITEMS = "Toggle BoE/BoA Items";
	TOGGLE_SOURCETEXT = "Toggle Source Locations";
	TOGGLE_MAINLIST = "Toggle ATT Main List";
	TOGGLE_MINILIST = "Toggle ATT Mini List";
	TOGGLE_PROFESSION_LIST = "Toggle ATT Profession List";
	TOGGLE_WORLD_QUESTS_LIST = "Toggle ATT World Quests";
	TOGGLE_RAID_ASSISTANT = "Toggle ATT Raid Assistant";
	TOGGLE_RANDOM = "Toggle ATT Random";
	REROLL_RANDOM = "Reroll the Random Selection";
	MODULES = "Modules";

	-- Features
	NEARBY = "Nearby:";

	-- Tooltips
	AND_OTHER_SOURCES = "And %s other sources...";
	FORCE_REFRESH_REQUIRED = "This may require a Force Refresh ("..SHIFT_KEY_TEXT.." click) to properly be collected.";
	RELOG_REQUIRED = "After using this, it is typically required to logout & login to collect all the items correctly on the game servers.";
	RACE_LOCKED = "Race Locked";
	ENSEMBLE_LEARNED = "This Ensemble has already been used by one of your characters.\n\n|cFFA0A0A0Unfortunately, Blizzard’s system can sometimes fail to grant every item.|r";
	HOLIDAY_DROP = "Only your first daily attempt per Battle.net account has a chance to drop the unique rewards, such as mounts, pets, toys, and manuscripts. The drop chance increases with every failed attempt.\nBlizzard have not specified which items are subject to this system.";
	ADHOC_UNIQUE_COLLECTED_INFO = "This Item is Unique-Collected but failed to be detected due to missing Blizzard API information.\n\nIt will be fixed after the next Force-Refresh.";

	-- Windows
	HIDDEN_ACHIEVEMENT_TRIGGERS = "Hidden Achievement Triggers";
	HIDDEN_ACHIEVEMENT_TRIGGERS_DESC = "These are Achievements which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	HIDDEN_CURRENCY_TRIGGERS = "Hidden Currency Triggers";
	HIDDEN_CURRENCY_TRIGGERS_DESC = "These are Currencies which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	HIDDEN_QUEST_TRIGGERS = "Hidden Quest Triggers";
	HIDDEN_QUEST_TRIGGERS_DESC = "These are Quests which have been manually determined to trigger based on specific criteria and are mainly used internally by the game for tracking purposes";
	NEVER_IMPLEMENTED = "Never Implemented";
	NEVER_IMPLEMENTED_DESC = "Items here technically exist within the game but have never been made available to players";
	SOURCELESS = "Sourceless";
	SOURCELESS_DESC = "These things are confirmed to be obtainable, but there is currently no known source of where it comes from or if it is even still obtainable";
	UNSORTED = "Unsorted";
	UNSORTED_DESC = "This thing hasn't been Sourced yet within ATT " .. app.Version .. ".";
	UNSORTED_DESC_2 = "Items here exist within the game and may be available to players, but have not yet been sourced into the accurate location in ATT";

	-- Module Localizations
	PVP_RANK_DESCRIPTION = "There are a total of 14 ranks for both factions. Each rank requires a minimum amount of Rating Points to be calculated every week, then calculated in comparison to other players on your server.\n\nEach rank grants access to different rewards, from PvP consumables to Epic Mounts that do not require Epic Riding Skill and Epic pieces of gear at the highest ranks. Each rank is also applied to your character as a Title.";

	EXPANSION_DATA = {
		{	-- Classic
			["icon"] = app.asset("Expansion_CLASSIC"),
			["lore"] = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.",
		},
		{	-- The Burning Crusade
			["icon"] = app.asset("Expansion_TBC"),
			["lore"] = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.",
		},
		{	-- Wrath of the Lich King
			["icon"] = app.asset("Expansion_WOTLK"),
			["lore"] = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.",
		},
		{	-- Cataclysm
			["icon"] = app.asset("Expansion_CATA"),
			["lore"] = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.",
		},
		{	-- Mists of Pandaria
			["icon"] = app.asset("Expansion_MOP"),
			["lore"] = "Mists of Pandaria is the fourth expansion. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.",
		},
		{	-- Warlords of Draenor
			["icon"] = app.asset("Expansion_WOD"),
			["lore"] = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.",
		},
		{	-- Legion
			["icon"] = app.asset("Expansion_LEGION"),
			["lore"] = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.",
		},
		{	-- Battle for Azeroth
			["icon"] = app.asset("Expansion_BFA"),
			["lore"] = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.",
		},
		{	-- Shadowlands
			["icon"] = app.asset("Expansion_SL"),
			["lore"] = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.",
		},
		{	-- Dragonflight
			["icon"] = app.asset("Expansion_DF"),
			["lore"] = "Dragonflight is the ninth expansion. The dragonflights of Azeroth have returned, called upon to defend their ancestral home, the Dragon Isles. Surging with elemental magic and the life energies of Azeroth, the Isles are awakening once more, and it's up to you to explore their primordial wonder and discover long-forgotten secrets.",
		},
		{	-- The War Within
			["icon"] = app.asset("Expansion_TWW"),
			["lore"] = "The War Within is the tenth expansion for World of Warcraft and the beginning of the Worldsoul Saga. Journey through never-before-seen subterranean worlds filled with hidden wonders and lurking perils, down to the dark depths of the nerubian empire, where the malicious Harbinger of the Void is gathering arachnid forces to bring Azeroth to its knees.",
		},
		{	-- Midnight
			["icon"] = app.asset("Expansion_MD"),
			["lore"] = "Midnight is the eleventh expansion for World of Warcraft and the second installment of the Worldsoul Saga.",
		},
		{	-- The Last Titan
			["icon"] = app.asset("Expansion_TLT"),
			["lore"] = "The Last Titan is the twelfth expansion for World of Warcraft and the final installment of the Worldsoul Saga.",
		},
	};


	TITLE_DEBUG = app.ccColors.Red .. "Debug|R ";
	TITLE_ACCOUNT = app.ccColors.Account .. "Account|R ";
	TITLE_ALLIANCE = app.ccColors.Alliance .. FACTION_ALLIANCE .. "|R";
	TITLE_HORDE = app.ccColors.Horde .. FACTION_HORDE .. "|R";
	TITLE_INSANE = app.ccColors.Insane .. "Insane|R ";
	_BETA_LABEL = " |cff4AA7FF[Beta]|R";	-- unused

	PRESET_INSANE = app.ccColors.Insane .. "Insane Mode|R enables all " .. app.ccColors.Insane .. "colored options|R and gives you a real challenge!";
	PRESET_ACCOUNT = app.ccColors.Account .. "Account Mode|R enables all account-wide tracking, and will show progress from all of your characters.";


	LOADING_FORMAT = "%s "..LFG_LIST_LOADING;	-- %s Loading...	-- unused
	READY_FORMAT = "%s "..READY;	-- %s Ready	-- unused






	SAVED = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Saved|r";	-- Acquired the colors and icon from CanIMogIt.
	COST_ICON = "|T" .. app.asset("Currency") .. ":0|t";
	COST_TEXT = "|T" .. app.asset("Currency") .. ":0|t |cffdedade"..CURRENCY.."|r";
	COLLECTED_WARBAND_ICON = "|T" .. app.asset("known_circle_yellow") .. ":0|t";
	COLLECTED_WARBAND = "|T" .. app.asset("known_circle_yellow") .. ":0|t |cfff0e341Future Warband Collected|r";
	UPGRADE_ICON = "|T" .. app.asset("Interface_Upgrade") .. ":0|t";
	UPGRADE_TEXT = "|T" .. app.asset("Interface_Upgrade") .. ":0|t |cff62e37e"..UPGRADE.."|r";
	REAGENT_ICON = "|T" .. app.asset("Interface_Reagent") .. ":0|t";
	REAGENT_TEXT = "|T" .. app.asset("Interface_Reagent") .. ":0|t |cffdedade"..GetItemClassInfo(5).."|r";
	CATALYST_ICON = "|T" .. app.asset("Interface_Catalyst") .. ":0|t";
	CATALYST_TEXT = "|T" .. app.asset("Interface_Catalyst") .. ":0|t |cffffd900Catalyst|r";

	UNOBTAINABLE_ITEM_TEXTURES = {
		[0] = 374225,	-- 0 Available, but not due to Current Character filters
		app.asset("status-unobtainable"),	-- 1
		app.asset("status-prerequisites"),	-- 2
		"",									-- 3, we want no icon for these
		app.asset("status-seasonal-unavailable"),	-- 4 Seasonal unavailable
		app.asset("status-seasonal-available"),	-- 5 Seasonal available
		app.asset("status-unsorted"), -- 6 Unsorted
	};

	SPELL_NAME_TO_SPELL_ID = {
		-- Riding
		["Riding"] = 33388,
		["Equitación"] = 33388,
		["Reiten"] = 33388,
		["Monte"] = 33388,
		["Montaria"] = 33388,
		["Верховая езда"] = 33388,
		["탈것 타기"] = 33388,
		["骑术"] = 33388,
		["騎術"] = 33388,

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

		-- French (Classic Era)
		["Ingénierie"] = 4036,    -- Engineering
		["Secourisme"] = 3273,    -- First Aid

		-- Spanish (Classic Era)
		["Costura"] = 3908,	-- Tailoring
		["Marroquinería"] = 2108,    -- Leatherworking

		["Ganzúa"] = 1809,		-- Lock Pick	-- Required for ES (EU)
		["Desollar"] = 8613,	-- Skinning		-- Required for ES (EU)
		["Cнятие шкур"] = 8613,	-- Skinning		-- Required for RU
	};

		SKIP_AUTO_REFRESH = "Skip Settings-Toggle Data Refreshes!";
		SKIP_AUTO_REFRESH_TOOLTIP = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";

		ABOUT_TOP = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|r";
		ABOUT_BOTTOM = "Active Contributors: |CFFFFFFFF(Alphabetical Order)\n%s\n\n|rHall of Fame: |CFFFFFFFF(Alphabetical Order)\n%s\n\nSpecial Shoutout to AmiYuy (CanIMogIt) and Caerdon (Caerdon Wardrobe). You should absolutely download their addons to get the collection icons on items in your bags! %s %s %s\n\nFor online collection comparing check out DataForAzeroth.com from Shoogen and WoWthing.org from Freddie!|r";
		CLIPBOARDCOPYPASTE = "Ctrl+A, Ctrl+C to Copy to your Clipboard.";
		CURSEFORGE_BUTTON_LABEL = "Curse";
		CURSEFORGE_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Curse.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";
		DISCORD_BUTTON_LABEL = "Discord";
		DISCORD_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Discord server.\n\nYou can share your progress/frustrations with other collectors!";
		GITHUB_BUTTON_LABEL = "GitHub";
		GITHUB_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things GitHub.\n\nYou can clone the repository directly without needing to use a third party addon manager!";
		MERCH_BUTTON_LABEL = "Merch";
		MERCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things merchandise store.\n\nHere you can support the AddOn financially and get some cool merch in return!";
		PATREON_BUTTON_LABEL = "Patreon";
		PATREON_BUTTON_TOOLTIP = "Click this button to copy the URL to get to the All The Things Patreon page.\n\nHere you can see how you can support the AddOn financially!";
		TWITCH_BUTTON_LABEL = "Twitch";
		TWITCH_BUTTON_TOOLTIP = "Click this button to copy the URL to get to my Twitch Channel.\n\nYou can ask questions while I'm streaming and I will try my best to answer them!";
		WAGO_BUTTON_LABEL = "Wago.io";
		WAGO_BUTTON_TOOLTIP = "Click this button to copy the url to get the ALL THE THINGS addon from Wago.io.\n\nYou can give this link to your friends to ruin their lives too! They'll eventually forgive you... maybe.";

		DEBUG_MODE = app.ccColors.Red.."Debug Mode|r (Show Everything)";
		DEBUG_MODE_TOOLTIP = "Quite literally... ALL THE THINGS IN THE GAME. PERIOD. DOT. YEAH, ALL OF IT. Even Uncollectible things like bags, consumables, reagents, etc will appear in the lists. (Even yourself! No, really. Look.)\n\nThis is for Debugging purposes only. Not intended to be used for completion tracking.\n\nThis mode bypasses all filters, including Unobtainables.";
		ACCOUNT_MODE = app.ccColors.Account.."Account Mode";
		ACCOUNT_MODE_TOOLTIP = "Turn this setting on if you want to track all of the Things for all of your characters regardless of class and race filters.\n\nUnobtainable filters still apply.";
		FACTION_MODE = "Faction Only";
		FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
		LOOT_MODE = "Loot Mode";
		LOOT_MODE_TOOLTIP = "Enable this option to show loot from all sources. This can include items such as Rings, Trinkets, Necklaces and the like. Whether or not something is collectible is irrelevant when using this mode. Not recommended all the time, but if you want to see items that can come from a source like they do in AtlasLoot, you can enable this to see that information.\n\nYou can change which sort of loot displays for you based on the Filters tab.\n\nDefault: Class Defaults, Disabled.";
		MODE_EXPLAIN_LABEL = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";
		COMPLETIONIST_MODE = "+Sources";
		COMPLETIONIST_MODE_TOOLTIP = "Enable this Mode to consider Items as Collected only when the specific Item has been unlocked for the given Appearance.\n\nThis means you will need to collect every shared Appearance of an Item.\n\nNote: By default, the game stops telling you about Items you have not collected once you have collected a shared Source, so this will ensure that uncollected Items are tracked.";
		MAIN_ONLY = "Main Only";
		MAIN_ONLY_TOOLTIP = "Turn this setting on if you additionally want ATT to *pretend* that you've earned all shared appearances not locked by a different race or class.\n\nAs an example, if you have collected a Hunter-Only Tier Piece from ICC and there is a shared appearance from the raid without class/race restrictions, ATT will *pretend* that you've earned that source of the appearance as well.\n\nNOTE: Switching to a different race/class will incorrectly report that you've earned appearance sources that you haven't collected for that new chararacter when unlocked in this way.";
		ONLY_RWP = "Only RWP";
		ONLY_RWP_TOOLTIP = "Enable this option to only track transmog that get removed from the game in the future. Only Items tagged with 'removed with patch' data count toward this. If you find an item not tagged that should be tagged, please let me know!\n\nYou can change which sort of loot displays for you based on the Filters tab.";
		ONLY_NOT_TRASH = "Filter Trash Items";
		ONLY_NOT_TRASH_TOOLTIP = "Enable this option to ignore white/grey items. Blizzard does not yet provide API for it in Classic.";
		UNOFFICIAL_SUPPORT_TOOLTIP = "NOTE: At this time, official support is not provided by WoW's API, but ATT can track items or quest completion to make it functional in the addon.";

		GENERAL_CONTENT = "General Content";
		SHOW_INCOMPLETE_THINGS_CHECKBOX = "Show Repeatable/Trackable Things";
		SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see incomplete repeatable content without forcing it to be considered 'collectible'.\n\nNOTE: Non-saved Rare Spawns, Treasures, and Vignettes also appear in the listing with this setting turned on.";
		SHOW_COMPLETED_GROUPS_CHECKBOX = "Show Completed Groups";
		SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed groups as a header with a completion percentage. If a group has nothing relevant for your class, this setting will also make those groups appear in the listing.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		SHOW_COLLECTED_THINGS_CHECKBOX = "Show Collected Things";
		SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option to see Things which have already been Collected.\n\nWe recommend you turn this setting off as it will conserve the space in the mini list and allow you to quickly see what you are missing from the zone.";
		FILTER_THINGS_BY_LEVEL_CHECKBOX = "No Level Restrictions";
		FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP = "Enable this setting if you want to see content available regardless of player level.\n\nNOTE: Disabling this is especially useful on Starter Accounts.";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX = "No Skill Level Restrictions";
		FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP = "Disable this setting if you only want to see content available to the maximum possible skill level available to the game environment.";
		SHOW_BOE_CHECKBOX = "BoE/Warbound Items";
		SHOW_BOE_CHECKBOX_TOOLTIP = "Enable this setting if you want to show Bind-on-Equip/Account items.\n\nDisabling this setting is useful for when you are trying to finish a Classic Dungeon for a character and don't want to farm specifically for items that can be farmed on alts or on the Auction House.\n\nIE: Don't lose your mind grinding for Pendulum of Doom.";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX = "Ignore BoE/Warbound Item Filters";
		IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP = "Enable this setting if you want to ignore armor, weapon, race, class, or profession requirements for BoE/BoA items.\n\nIf you are trying to collect things for your alts via Auction House scanning, this mode may be useful to you.";
		SHOW_ALL_SEASONAL = "All Seasonal Events";
		SHOW_ALL_SEASONAL_TOOLTIP = "Enable this setting to show all seasonal events, instead of only currently active seasonal events.\n\nNOTE: Seasonal Events will automatically be visible as active 7 days in advance.";
		SHOW_PET_BATTLES_CHECKBOX = SHOW_PET_BATTLES_ON_MAP_TEXT;
		SHOW_PET_BATTLES_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which requires Pet Battles within the game.";
		SHOW_PVP_CHECKBOX = PVP_OPTIONS;
		SHOW_PVP_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which 'may' require Player vs. Player interactions within the game.";
		SHOW_SKYRIDING_CHECKBOX = DYNAMIC_FLIGHT or "Skyriding";
		SHOW_SKYRIDING_CHECKBOX_TOOLTIP = "Enable this setting if you want to show content which requires Skyriding within the game.";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX = "All Learnable Quest Rewards";
		SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP = "Disable this option to hide items that are listed as \"Not Available in Personal Loot\" for quests.\n\nThis is useful for tracking items that your class can't use in World Drops, but still marking quests as completed.\n\nSome items can be marked incorrectly: this setting WILL hide items that you can obtain!";

		ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. "Account-Wide|R by default.";
		TRACK_ACC_WIDE = app.ccColors.Account .. "Track Account-Wide|R";
		ACCOUNT_THINGS_LABEL = "Account-Wide Things";
		GENERAL_THINGS_LABEL = "General Things";
		STRANGER_THINGS_LABEL = "Stranger Things";
		ACHIEVEMENTS_CHECKBOX = ACHIEVEMENTS;
		ACHIEVEMENTS_CHECKBOX_TOOLTIP = "Enable this option to track achievements.";
		APPEARANCES_CHECKBOX = "Appearances";
		APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to track appearance acquisition.\n\nNOTE: Disabling this option also disables all fanfares and acquisition logic.  You can use this toggle as a way to prevent lag spikes while doing important group content, but bear in mind the computation will need to occur once re-enabled.";
		BATTLE_PETS_CHECKBOX = "Battle Pets";
		BATTLE_PETS_CHECKBOX_TOOLTIP = "Enable this option to track battle pets and companions. These can be found in the open world or via boss drops in various Dungeons and Raids as well as from Vendors and Reputation.";
		CAMPSITES_CHECKBOX = "Campsites";
		CAMPSITES_CHECKBOX_TOOLTIP = "Enable this option to track warband campsite completion.";
		DEATHS_CHECKBOX = "Deaths";
		DEATHS_CHECKBOX_TOOLTIP = "Enable this option to track each time one of your characters die and show it as a Collectible section within the addon.\n\nNOTE: If you turn this off, we'll still track it, but we simply will not show the statistic unless you're in Debug Mode.";
		EXPLORATION_CHECKBOX = "Exploration (inaccurate)";
		EXPLORATION_CHECKBOX_TOOLTIP = "Enable this option to track exploration completion for outdoor maps.\n\nThe information provided by this option is currently inaccurate and needs to be strengthened, so please use it with caution.";
		FLIGHT_PATHS_CHECKBOX = "Flight Paths";
		FLIGHT_PATHS_CHECKBOX_TOOLTIP = "Enable this option to track flight paths and ferry stations.\n\nTo collect these, open the dialog with the flight / ferry master in each continent.\n\nNOTE: Due to phasing technology, you may have to phase to the other versions of a zone to get credit for those points of interest.";
		HEIRLOOMS_CHECKBOX = HEIRLOOMS;
		HEIRLOOMS_CHECKBOX_TOOLTIP = "Enable this option to track whether you have unlocked an Heirloom and its respective Upgrade Levels.\n\nHeirlooms that have an associated Appearance are filtered via the Appearances filter. (turning off appearances will still show the Heirloom itself)\n\nSome items that appear with heirloom quality also help boost reputations and can be filtered via the Reputations filter.";
		HEIRLOOMS_UPGRADES_CHECKBOX = "+Upgrades";
		HEIRLOOMS_UPGRADES_CHECKBOX_TOOLTIP = "Enable this option to specifically track collection of individual Heirloom Upgrades.\n\nWe all know Blizzard just loves to drain your gold and your soul, so keep track of that with this toggle.";
		ILLUSIONS_CHECKBOX = "Illusions";
		ILLUSIONS_CHECKBOX_TOOLTIP = "Enable this option to track illusions.\n\nThese are really cool-looking transmog effects you can apply to your weapons!\n\nNOTE: You are not an illusion, despite what all the Nightborne think.";
		MOUNTS_CHECKBOX = MOUNTS;
		MOUNTS_CHECKBOX_TOOLTIP = "Enable this option to track mounts.\n\nYou can ride these to go places faster than when running. Who knew!";
		QUESTS_CHECKBOX = QUESTS_LABEL;
		QUESTS_CHECKBOX_TOOLTIP = "Enable this option to track normal Quests.\n\nYou can right click any Quest in the lists to pop out their full quest chain to show your progress and any prerequisite Quests.\n\nNOTE: Tracking of Daily, Weekly, Yearly, and World Quests is not included in this option due to their periodic resets within the Blizzard Database.";
		QUESTS_LOCKED_CHECKBOX = "+Locked";
		QUESTS_LOCKED_CHECKBOX_TOOLTIP = "Enable this option to specifically include tracking of Locked Quest completion.\n\nLocked Quests are those which the player is no longer able to complete (according to known ATT data) through normal gameplay.\n\nObtaining these Quests is very reliant on the Party Sync feature or using Account-Wide Quests to incorporate progress from other characters.";
		QUESTS_HIDDEN_TRACKER_CHECKBOX = "+HQT";
		QUESTS_HIDDEN_TRACKER_CHECKBOX_TOOLTIP = "Enable this option to specifically include Hidden Quest Tracking (HQT) completion.\n\nHQT are those QuestID's which are invisible to Players and used behind-the-scenes to monitor character/account progress or status in various situations.\n\nYou probably don't care to track these. Right? I mean you're not crazy, I'm sure...";
		RECIPES_CHECKBOX = "Recipes";
		RECIPES_CHECKBOX_TOOLTIP = "Enable this option to track recipes for your professions.\n\nNOTE: You must open your professions list in order to cache these.";
		REPUTATIONS_CHECKBOX = "Reputations";
		REPUTATIONS_CHECKBOX_TOOLTIP = "Enable this option to track reputations.\n\nOnce you reach Exalted or Best Friend with a reputation, it will be marked Collected.\n\nYou may have to do a manual refresh for this to update correctly.";
		TITLES_CHECKBOX = "Titles";
		TITLES_CHECKBOX_TOOLTIP = "Enable this option to track titles.\n\nThese can make your character stand out and look like you've played for awhile. Typically only new players do not have a title active.";
		TOYS_CHECKBOX = TOY_BOX;
		TOYS_CHECKBOX_TOOLTIP = "Enable this option to track Toys.\n\nMost of these toys have a fun thing that they do. Others, like the Hearthstone Toys, can be used in place of your actual Hearthstone and can save you a bag slot! They also have interesting effects... Nice!";

		EXPANSION_THINGS_LABEL = "Expansion Things";
		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Azerite Essences";
		AZERITE_ESSENCES_CHECKBOX_TOOLTIP = "Enable this option to track Azerite Essences.\n\nTracked per character by default.";
		MOUNTMODS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Mount Modifications";
		MOUNTMODS_CHECKBOX_TOOLTIP = "Enable this option to track Mount Modifications";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Followers & Companions";
		FOLLOWERS_CHECKBOX_TOOLTIP = "Enable this option to track followers and champions.\n\nIE: Garrison Followers, Legion Class Hall Champions, BFA Campaign Minions and SL Adventurers.";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Runecarving Powers";
		RUNEFORGELEGENDARIES_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Runecarving Powers.";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conduits";
		SOULBINDCONDUITS_CHECKBOX_TOOLTIP = "Enable this option to track Shadowlands Conduits.";

		CHARACTERUNLOCKS_CHECKBOX = "Character Unlocks";
		CHARACTERUNLOCKS_CHECKBOX_TOOLTIP = "Enable this option to track Character Unlocks. These are various character-based unlocks which aren't clearly able to be categorized as another type (e.g. Hex variants, Polymorph variants, Hunter species taming unlocks, Pocopoc customizations, etc.)\n\nTracked per character by default.";

		ACCOUNT_WIDE_ACHIEVEMENTS_TOOLTIP = "Achievement tracking is usually Account-Wide, but there are a number of achievements exclusive to specific classes and races that you can't get on your main.";
		ACCOUNT_WIDE_APPEARANCES_TOOLTIP = "Transmog should be collected account wide. Certain items cannot be learned by every class, so ATT will do its best to only show you things that you can collect on your current character.";
		ACCOUNT_WIDE_AZERITE_ESSENCES_TOOLTIP = "Azerite Essences cannot technically be collected and used Account-Wide, but if you only care about collecting them on your main character then you may prefer tracking them Account-Wide.";
		ACCOUNT_WIDE_BATTLE_PETS_TOOLTIP = "Companion pets can be collected on multiple characters and realistically would require that you have an insane amount of bag space in order to collect them all on one character.\n\nWe recommend you keep this turned on, but you do you fam.";
		ACCOUNT_WIDE_CHARACTERUNLOCKS_TOOLTIP = "Consider any Character Unlock collected if any character has collected it.";
		ACCOUNT_WIDE_DEATHS_TOOLTIP = "Death tracking really only exists for pre-Wrath Classic where a statistic wasn't available to know this information. Once achievements were implemented, this feature instead acquires data directly from the statistics API. You can use the tooltip on the Death Tracker to se";
		ACCOUNT_WIDE_EXPLORATION_TOOLTIP = "Exploration tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";
		ACCOUNT_WIDE_FLIGHT_PATHS_TOOLTIP = "Flight Paths tracking is only really useful per character, but do you really want to collect them all on all 50 of your characters?";
		ACCOUNT_WIDE_FOLLOWERS_TOOLTIP = "Followers are typically per character, but do you really want to have to collect 243 Garrison Inn Followers on one character at a rate of 1 per week?\n\nI think not, good sir.";
		ACCOUNT_WIDE_QUESTS_TOOLTIP = "Quest completion is typically per Character, but this will consider a Quest as completed if ANY Character has completed that specific Quest.";
		ACCOUNT_WIDE_RECIPES_TOOLTIP = "Recipes are not normally tracked Account-Wide in Blizzard's database, but we can do that.\n\nIt is impossible to collect them all on one character, so with this, you can give your alts and their professions meaning.";
		ACCOUNT_WIDE_REPUTATIONS_TOOLTIP = "Reputations are now tracked Account-Wide in Blizzard's database for achievements, so turning this on may be a good idea.";
		ACCOUNT_WIDE_SOULBINDCONDUITS_TOOLTIP = "Enable this to consider a Soulbind Conduit as collected for all characters if at least one character has learned it.";
		ACCOUNT_WIDE_TITLES_TOOLTIP = "Most titles are tracked Account-Wide, but some prestigious titles in WoW are locked to the character that earned them.\n\nToggle this if you don't care about that and want to see those titles marked Collected for your alts.";


		ITEM_FILTER_LABEL = ARMOR .." & ".. AUCTION_CATEGORY_WEAPONS;
		ITEM_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		CLASS_DEFAULTS_BUTTON = "Class Defaults";
		CLASS_DEFAULTS_BUTTON_TOOLTIP = "Click this button to reset all of the filters to your class defaults.\n\nNOTE: Only filters that are collectible for your class can be turned on.";
		ALL_BUTTON = ALL;
		ALL_BUTTON_TOOLTIP = "Click this button to enable all options at once.";
		UNCHECK_ALL_BUTTON = NONE;
		UNCHECK_ALL_BUTTON_TOOLTIP = "Click this button to disable all options at once.";
		STORE_IN_PROFILE_BUTTON = "Store in Profile",
		STORE_IN_PROFILE_BUTTON_TOOLTIP = "By default, ATT stores these Filters on a per-character basis.\n\nCheck this option to store these Filter selections in the current Profile rather than per-character.",


		UNOBTAINABLES_PAGE = "Unobtainables";
		UNOBTAINABLE_LABEL = "Unobtainable Content";
		CUSTOM_FILTERS_LABEL = "Automated Content";
		CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if it is available to your current character or if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
		CUSTOM_FILTERS_GENERIC_TOOLTIP_FORMAT = "Enable this setting to forcibly show %s content even if it is not available to the current character.";

		INTERFACE_PAGE = UIOPTIONS_MENU;
		TOOLTIP_LABEL = "Tooltips";
		TOOLTIP_HELP_CHECKBOX = "Show Tooltip Help";
		TOOLTIP_HELP_CHECKBOX_TOOLTIP = "Enable this option if you want to see the help info in ATT window tooltips which indicates various key/click combinations for ATT window functionality.\nIf you already know all of the key/click combinations, you may want to save tooltip space and disable this option.";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX = "Tooltip Integrations";
		ENABLE_TOOLTIP_INFORMATION_CHECKBOX_TOOLTIP = "Enable this option if you want to see the information provided by ATT in external tooltips. This includes item links sent by other players, in the auction house, in the dungeon journal, in your bags, in the world, on NPCs, etc.\n\nIf you turn this feature off, you are seriously reducing your ability to quickly determine if you need to kill a mob or learn an appearance.\n\nWe recommend you keep this setting on.";
		DISPLAY_IN_COMBAT_CHECKBOX = "In Combat";
		DISPLAY_IN_COMBAT_CHECKBOX_TOOLTIP = "Enable this option if you want to render tooltip information while you are in combat.\n\nIf you are raiding with your Mythic/Mythic+ Guild, you should probably turn this setting off to save as much performance as you can.\n\nIt can be useful while you are soloing old content to immediately know what you need from a boss.";
		NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX = "Except NPCs";
		NOT_DISPLAY_IN_COMBAT_NPCS_CHECKBOX_TOOLTIP = "Enable this option to ignore rendering NPC tooltips while in combat.";
		PET_CAGE_TOOLTIPS_CHECKBOX = "Pet Cages";
		PET_CAGE_TOOLTIPS_CHECKBOX_TOOLTIP = "Enable this option to allow Pet Cage tooltip Integration. (This renders on TSM's Extra Tooltip or in a Compare Item Tooltip when enabled.)";
		TOOLTIP_MOD_LABEL = "Modifier";
		TOOLTIP_MOD_NONE = NONE_KEY;
		TOOLTIP_MOD_SHIFT = SHIFT_KEY_TEXT;
		TOOLTIP_MOD_CTRL = CTRL_KEY_TEXT;
		TOOLTIP_MOD_ALT = ALT_KEY_TEXT;
		TOOLTIP_MOD_CMD = CMD_KEY_TEXT;
		TOOLTIP_SHOW_LABEL = "Shown Information";
		SHOW_COLLECTION_PROGRESS_CHECKBOX = "Collection Progress";
		SHOW_COLLECTION_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want to see your progress towards collecting a Thing or completing a group of Things at the Top Right of its tooltip.\n\nWe recommend that you keep this setting turned on.";
		ICON_ONLY_CHECKBOX = "Icon Only";
		ICON_ONLY_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the icon in the topright corner instead of the icon and the collected/not collected text.\n\nSome people like smaller tooltips...";
		KNOWN_BY_CHECKBOX = "Known By";
		KNOWN_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that know the Recipe in the tooltip.";
		COMPLETED_BY_CHECKBOX = "Completed By";
		COMPLETED_BY_CHECKBOX_TOOLTIP = "Enable this option if you want to see the full list of characters on all servers that have completed the Quest in the tooltip.";
		SHOW_CRAFTED_ITEMS_CHECKBOX = "Show Crafted Items";
		SHOW_CRAFTED_ITEMS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the items that can be crafted by any of your characters for a reagent in its tooltip.";
		SHOW_RECIPES_CHECKBOX = "Show Recipes";
		SHOW_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you want to see a list of all of the recipes that can be crafted by any of your characters for a reagent in its tooltip.";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX = "Only Non-Trivial";
		SHOW_ONLY_NON_TRIVIAL_RECIPES_CHECKBOX_TOOLTIP = "Enable this option if you only want to see non-trivial recipes in the recipe list.";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX = "Currency calculation";
		SHOW_CURRENCY_CALCULATIONS_CHECKBOX_TOOLTIP = "Enable this option to show the estimated amount of Items/Currency required to collect Things.\n\nFor Containers which do not reward all of their available content at once, the estimate will thus be lower than actually required.";
		SHARED_APPEARANCES_CHECKBOX = "Shared Appearances";
		SHARED_APPEARANCES_CHECKBOX_TOOLTIP = "Enable this option to see items that share a similar appearance in the tooltip.\n\nNOTE: Items that do not match the armor type are displayed in the list. This is to help you diagnose the Collection progress.\n\nIf you are ever confused by this, as of ATT v1.5.0, you can Right Click the item to open the item and its Shared Appearances into their own standalone Mini List.";
		INCLUDE_ORIGINAL_CHECKBOX = "Original Source";
		INCLUDE_ORIGINAL_CHECKBOX_TOOLTIP = "Enable this option if you actually liked seeing the original source info within the Shared Appearances list in the tooltip.";
		ONLY_RELEVANT_CHECKBOX = "Only Relevant";
		ONLY_RELEVANT_CHECKBOX_TOOLTIP = "Enable this option if you only want to see shared appearances that your character can unlock.\n\nNOTE: We recommend you keep this off as knowing the unlock requirements for an item can be helpful in identifying why an item is Not Collected.";
		SPEC_CHECKBOX = "Specializations";
		SPEC_CHECKBOX_TOOLTIP = "Enable this option to show the loot specialization information of items in the item's tooltip as provided by the Game Client.\n\nNOTE: These icons will still appear within the ATT mini lists regardless of this setting.";
		SUMMARIZE_CHECKBOX = "Summarize Things";
		SUMMARIZE_CHECKBOX_TOOLTIP = "Enable this option to summarize Things in the tooltip. For example, if a Thing can be turned into a Vendor for another Thing, then show that other thing in the tooltip to provide visibility for its multiple uses. If a Thing acts as a Container for a number of other Things, this option will show all of the other Things that the container Contains.\n\nWe recommend that you keep this setting turned on.";
		CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
		SOURCE_LOCATIONS_CHECKBOX = "Source Locations";
		SOURCE_LOCATIONS_CHECKBOX_TOOLTIP = "Enable this option if you want to see full Source Location Paths for objects within the ATT database in the tooltip.";
		LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';
		COMPLETED_SOURCES_CHECKBOX = "For Completed";
		COMPLETED_SOURCES_CHECKBOX_TOOLTIP = "Enable this option if you want to see completed source locations in the tooltip.\n\nAs an example, if you complete the quest \"Bathran's Hair\" in Ashenvale, the tooltip for Evenar Stillwhisper will no longer show that quest when hovering over him.";
		DROP_CHANCES_CHECKBOX = "Drop Chances";
		DROP_CHANCES_CHECKBOX_TOOLTIP = "Enable this option to calculate various drop chance information in the tooltip for an item in an ATT window.\nThis can be helpful for knowing which Loot Spec should be used when Bonus Rolling for an item.";
		FOR_CREATURES_CHECKBOX = "For Creatures";
		FOR_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Creatures.";
		FOR_THINGS_CHECKBOX = "For Things";
		FOR_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations for Things.";
		FOR_UNSORTED_CHECKBOX = "For Unsorted";
		FOR_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you want to see Source Locations which have not been fully sourced into the database.";
		WITH_WRAPPING_CHECKBOX = "Allow Wrapping";
		WITH_WRAPPING_CHECKBOX_TOOLTIP = "Enable this option to allow the Source lines to wrap within the tooltip.\nThis will ensure that the tooltips do not grow wider than necessary, but will unfortunately make the Source information harder to read in many situations.";

		BEHAVIOR_LABEL = "List Behavior";
		MAIN_LIST_SLIDER_LABEL = "Main List Scale";
		MAIN_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
		MINI_LIST_SLIDER_LABEL = "Mini Lists Scale";
		MINI_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
		ADHOC_UPDATES_CHECKBOX = "Ad-Hoc Window Updates";
		ADHOC_UPDATES_CHECKBOX_TOOLTIP = "Enable this option if you want only visible ATT windows to be updated.\n\nThis can greatly reduce loading times and prevent large framerate spikes in some situations.";
		EXPAND_DIFFICULTY_CHECKBOX = "Expand Current Difficulty";
		EXPAND_DIFFICULTY_CHECKBOX_TOOLTIP = "Enable this option if you want to automatically minimize difficulty headers in the mini list that are not active when you enter a dungeon or raid.\n\nExample: Minimize the Heroic header when in a Normal difficulty dungeon.";
		SHOW_ICON_PORTRAIT_CHECKBOX = "Icon Portraits";
		SHOW_ICON_PORTRAIT_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for non-quest object types.\n\nIE: When looking at bosses, this option will show the face of the boss instead of the difficulty icon.\n\nDefault: On";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX = "For Quests";
		SHOW_ICON_PORTRAIT_FOR_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see creature icon portraits instead of the default icons for quest object types.\n\nIE: When looking at quests, this option will show the face of the quest giver instead of the quest type icon.\n\nDefault: On";
		SHOW_MODELS_CHECKBOX = "Model Preview";
		SHOW_MODELS_CHECKBOX_TOOLTIP = "Enable this option to show models within a preview instead of the icon on the tooltip.\n\nThis option may assist you in identifying what a Rare Spawn or Vendor looks like. It might be a good idea to keep this turned on for that reason.";
		FILL_DYNAMIC_QUESTS_CHECKBOX = "Fill Dynamic Quests";
		FILL_DYNAMIC_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to allow Items/Currencies which are used to purchase collectible Things to be filled with those purchases when under automatically-populated Quests.\n\nFor example, this will cause the [World Quests] window to behave like the minilist rather than the Main list regarding Cost display.\nNote that in most cases, this will drastically increase the apparent content within the window.";
		FILL_NPC_DATA_CHECKBOX = "Fill NPC Data";
		FILL_NPC_DATA_CHECKBOX_TOOLTIP = "Enable this option if you want to fill all relevant data for a given NPC (Common Boss Drops, Drops, etc). This option may cause a significant amount of duplication, but the idea is that the NPC will remain visible if you need something available from that NPC.\n\nNote: A lot of Dragonflight outdoors content relies on this setting being enabled for accuracy due to how many Rares share common drops.\n\nDefault: Off";
		NESTED_QUEST_CHAIN_CHECKBOX = "Show Nested Quest Chains";
		NESTED_QUEST_CHAIN_CHECKBOX_TOOLTIP = "Enable this option if you want the Quest Chain Requirements (Right-Click on Quest) window to show required Quests as sub-groups of their following Quests, i.e. they must be completed from the inside out.\n\nThis is useful to not miss Breadcrumb Quests and should be used primarily for Quest completion in mind.\n\nOtherwise, Quest Chain Requirements will be displayed in a top-down list, with the earliest available Quest at the very top.";
		SORT_BY_PROGRESS_CHECKBOX = "Sort By Progress";
		SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." Right Click) to sort by the total progress of each group (instead of by Name)";
		SHOW_REMAINING_CHECKBOX = "Show Remaining Things";
		SHOW_REMAINING_CHECKBOX_TOOLTIP = "Enable this option if you want to see the number of items remaining instead of the progress over total.";
		PERCENTAGES_CHECKBOX = "Show Percentage Completion";
		PERCENTAGES_CHECKBOX_TOOLTIP = "Enable this option if you want to see the percent completion of each row.\n\nColoring of groups by completion is unaffected.";
		PRECISION_SLIDER = "Precision Level";
		PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';
		DYNAMIC_CATEGORY_LABEL = "Dynamic Categories";
		DYNAMIC_CATEGORY_SIMPLE = "Simple";
		DYNAMIC_CATEGORY_SIMPLE_TOOLTIP = "Generate Dynamic Categories based only on the very highest Category.";
		DYNAMIC_CATEGORY_NESTED = "Nested";
		DYNAMIC_CATEGORY_NESTED_TOOLTIP = "Generate Dynamic Categories based on their exact Source. This will lead to duplicates of Things that are also Sourced in multiple places.";
		DYNAMIC_CATEGORY_TOOLTIP_NOTE = "\n\n|cffff0000Applied when Generated|r";
		MAX_TOOLTIP_TOP_LINE_LENGTH_LABEL = "Maximum Top Line Length";

		ACCESSIBILITY_PAGE = ACCESSIBILITY_LABEL;
		ACCESSIBILITY_EXPLAIN = COLORBLIND_MODE_SUBTEXT;
		COLORS_ICONS = "Colors and Icons";
		LOCKED_QUESTS = "Locked quests";
		MORE_COLORS_CHECKBOX = "Show Colors";
		MORE_COLORS_CHECKBOX_TOOLTIP = "Enable this option if you want to see more colors utilized to help distinguish additional conditions for Things in lists (i.e. class colors, faction colors, etc.)";
		WINDOW_COLORS = "Window Colors";
		BACKGROUND = EMBLEM_BACKGROUND;
		BACKGROUND_TOOLTIP = "Set the background color of all ATT windows.";
		BORDER = EMBLEM_BORDER;
		BORDER_TOOLTIP = "Set the border color of all ATT windows.";
		RESET_TOOLTIP = "Revert to default settings.";
		CLASS_BORDER = "Use Class Color For Border";
		CLASS_BORDER_TOOLTIP = "Use your class color for the borders. This updates when you log onto another class.";

		FILLERS_LABEL = "Fillers";
		FILLERS_EXPLANATION = "|cffFFFFFFFillers are mechanisms by which extra Data is 'filled' into/beneath other ATT content within various UI elements to show further use or purpose of a given Thing. For example, showing the resulting Purchases of an Item would be provided by a 'Filler'.\nThis tab allows you to modify your preferences of which Fillers will be active throughout ATT.|r",
		TOOLTIP = "Tooltip",
		LIST = "Mini List",
		POPOUT = "Popout List",
		UPGRADE = "Upgrade",
		CATALYST = "Catalyst",
		SYMLINK = "Sym-Link",
		NPC = "NPC",
		REAGENT = "Reagent",

		ACHIEVEMENT_ID = "Achievement ID";
		ACHIEVEMENT_CATEGORY_ID = "Achievement Category ID";
		READDED_WITH_PATCH_CLASSIC_FORMAT = "This gets readded with patch %s";
		REMOVED_WITH_PATCH_CLASSIC_FORMAT = "This gets removed with patch %s";

		FEATURES_PAGE = FEATURES_LABEL;

		CELEBRATIONS_LABEL = "Celebrations & Sound Effects";
		AUDIO_CHANNEL = "Audio Channel";
		CHANNEL_MASTER = MASTER;
		CHANNEL_MUSIC = MUSIC_VOLUME;
		CHANNEL_SFX = FX_VOLUME;
		CHANNEL_AMBIENCE = AMBIENCE_VOLUME;
		CHANNEL_DIALOG = DIALOG_VOLUME;
		CELEBRATE_COLLECTED_CHECKBOX = "Collected Things Trigger a Celebration";
		CELEBRATE_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a celebratory 'fanfare' sound effect when you obtain a new Thing.\n\nThis feature can greatly help keep you motivated.";
		SOUNDPACK = "Soundpack";
		PLAY_DEATH_SOUND_CHECKBOX = "Play a Sound Effect when you Die";
		PLAY_DEATH_SOUND_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a sound effect when you die.";
		WARN_REMOVED_CHECKBOX = "Removed Things Trigger a Warning";
		WARN_REMOVED_CHECKBOX_TOOLTIP = "Enable this option if you want to hear a warning sound effect when you accidentally sell back or trade an item that granted you an appearance that would cause you to lose that appearance from your collection.\n\nThis can be extremely helpful if you vendor an item with a purchase timer. The addon will tell you that you've made a mistake.";
		SCREENSHOT_COLLECTED_CHECKBOX = "Collected Things Trigger a Screenshot";
		SCREENSHOT_COLLECTED_CHECKBOX_TOOLTIP = "Enable this option if you want to take a screenshot for every Thing you collect.";

		REPORTING_LABEL = "Reporting";
		REPORT_COLLECTED_THINGS_CHECKBOX = "Report Collected Things";
		REPORT_COLLECTED_THINGS_CHECKBOX_TOOLTIP = "Enable this option if you want to see a message in chat detailing which items you have collected or removed from your collection.\n\nNOTE: This is present because Blizzard silently adds appearances and other collectible items and neglects to notify you of the additional items available to you.\n\nWe recommend you keep this setting on. You will still hear the fanfare with it off assuming you have that option turned on.";
		REPORT_COMPLETED_QUESTS_CHECKBOX = "Report Quests";
		REPORT_COMPLETED_QUESTS_CHECKBOX_TOOLTIP = "Enable this option if you want to see the QuestID for any quest you Accept or Complete immediately after it happens. (For reporting bugs, trackings purposes, etc)";
		REPORT_UNSORTED_CHECKBOX = "Only 'Unsourced'";
		REPORT_UNSORTED_CHECKBOX_TOOLTIP = "Enable this option if you only want to see the QuestID if it isn't already Sourced.";
		REPORT_NEARBY_CONTENT_CHECKBOX = "Report Nearby Content";
		REPORT_NEARBY_CONTENT_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content such as vignettes to the chat. This feature provides popouts and waypoints when used.";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX = "Automatically Plot Waypoints";
		REPORT_NEARBY_CONTENT_AUTOMATICALLY_PLOT_WAYPOINTS_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically plot waypoints for nearby content.";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX = "Automatically Clear";
		REPORT_NEARBY_CONTENT_CLEAR_WAYPOINTS_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to automatically clear the waypoint plotted by the nearby content feature when the content itself becomes unavailable or you go out of range.";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX = "Include Creatures";
		REPORT_NEARBY_CONTENT_INCLUDE_CREATURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications for things that are considered creatures. (Rares, World Bosses, NPCs)";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX = "Include Treasures";
		REPORT_NEARBY_CONTENT_INCLUDE_TREASURES_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications for things that are considered treasures. (Chests, Statues, Satchels in the world)";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX = "Include Completed";
		REPORT_NEARBY_CONTENT_INCLUDE_COMPLETED_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications from things that are completed based on your filters in ATT.";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX = "Include Unknown/Unsourced";
		REPORT_NEARBY_CONTENT_INCLUDE_UNKNOWN_CHECKBOX_TOOLTIP = "Enable this option if you want to see nearby content notifications from things that are not sourced in ATT.";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX = "Flash the Taskbar";
		REPORT_NEARBY_CONTENT_FLASH_THE_TASKBAR_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to flash the taskbar when nearby content is detected.";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX = "Play a Sound Effect";
		REPORT_NEARBY_CONTENT_PLAY_SOUND_EFFECT_CHECKBOX_TOOLTIP = "Enable this option if you want ATT to also play a notification sound effect when nearby content is detected.";

		SYNC_PAGE = "Sync";
		ACCOUNT_SYNCHRONIZATION = "Account Synchronization";
		AUTO_SYNC_ACC_DATA_CHECKBOX = "Automatically Sync Account Data";
		AUTO_SYNC_ACC_DATA_TOOLTIP = "Enable this option if you want ATT to attempt to automatically synchronize account data between accounts when logging in or reloading the UI.";

		WINDOWS_PAGE = "Windows";

		PROFILES_PAGE = "Profiles";
		PROFILE = "Profile";
		PROFILE_INITIALIZE = "Initialize Profiles";
		PROFILE_INITIALIZE_TOOLTIP = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
		PROFILE_INITIALIZE_CONFIRM = "Are you sure you want to enable Profile support?";
		PROFILE_NEW_TOOLTIP = "Create a blank Profile to be used by the current Character";
		PROFILE_COPY_TOOLTIP = "Copy the Selected Profile into the Current Profile";
		PROFILE_DELETE_TOOLTIP = "Delete the Selected Profile";
		PROFILE_SWITCH_TOOLTIP = "Set the Selected Profile as the Current Profile\n\nA Profile can also be "..SHIFT_KEY_TEXT.." clicked to Switch to it";
		SHOW_PROFILE_LOADED = "Show which profile loads during login or when switching between profiles";

L.TOOLTIP_MODULE = {
	RANKS = {
		AUTHOR = " |T"..app.asset("logo_32x32")..":0|t" .. " Author";
		CONTRIBUTOR = " |T"..app.asset("logo_32x32")..":0|t" .. " Contributor";
		COLLECTOR = "Collector";
	},
	TITLES = {
		XX_BRINGER_OF_FLAMES = "%s, Bringer of Flames";
		XX_OF_THE_ASYLUM = "%s, King of the Asylum";
		XX_THE_COMPLETIONIST = "%s the Completionist";
		XX_THE_CONTRIBUTOR = "%s";	-- NOTE: Contributors didn't want a different title.
		XX_THE_EXTERMINATOR = "%s the Exterminator";
		XX_THE_GOLD_TYCOON = "Gold Tycoon %s";
		XX_THE_LORD_KING = "Lord King %s";
		XX_THE_LORD_QUEEN = "Lord Queen %s";
		XX_THE_SCARAB_LORD = "Scarab Lord %s";
		XX_THE_HUGGLER = "%s the Huggler";
	},
};

app.GetCollectionIcon = function(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE_ICON" or "COLLECTED_ICON")) or "NOT_COLLECTED_ICON"];
end
app.GetCollectionText = function(state)
	return L[(state and (state == 2 and "COLLECTED_APPEARANCE" or "COLLECTED")) or "NOT_COLLECTED"];
end
app.GetCompletionIcon = function(state)
	return L[state and "COMPLETE_ICON" or "INCOMPLETE_ICON"];
end
app.GetCompletionText = function(state)
	return L[(state == 2 and "COMPLETE_OTHER") or (state and "COMPLETE") or "INCOMPLETE"];
end
app.GetSavedText = function(state)
	return L[state and "SAVED" or "INCOMPLETE"];
end
