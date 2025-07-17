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

SKIP_AUTO_REFRESH_TOOLTIP = "By default (unchecked), any Settings change which may affect visible data will cause an automatic refresh.\n\nBy enabling this option, Settings changes won't take effect until the User performs a Full Refresh by "..SHIFT_KEY_TEXT.." clicking on an ATT window.";

ABOUT_TOP = " |CFFFFFFFFis a collection tracking addon that shows you where and how to get everything in the game! We have a large community of users on our Discord (link at the bottom) where you can ask questions, submit suggestions as well as report bugs or missing items. If you find something collectible or a quest that isn't documented, you can tell us on the Discord, or for the more technical savvy, we have a Git that you may contribute directly to.\n\nWhile we do strive for completion, there's a lot of stuff getting added into the game each patch, so if we're missing something, please understand that we're a small team trying to keep up with changes as well as collect things ourselves. :D\n\nFeel free to ask me questions when I'm streaming and I'll try my best to answer it, even if it's not directly related to ATT (general WoW addon programming as well).\n\n- |r|Cffff8000Crieve|r";

DEBUG_MODE = app.ccColors.Red.."Debug Mode|r (Show Everything)";
ACCOUNT_MODE = app.ccColors.Account.."Account Mode";
MODE_EXPLAIN_LABEL = "|cffFFFFFFWhat you collect is summarized as a specific Mode. Enable all " .. app.ccColors.Insane .. "colored options|cffFFFFFF to unlock ".. app.ccColors.Insane .. "Insane Mode|cffFFFFFF.";

SHOW_SKYRIDING_CHECKBOX = DYNAMIC_FLIGHT or "Skyriding";

ACC_WIDE_DEFAULT = "Tracked ".. app.ccColors.Account .. "Account-Wide|R by default.";
TRACK_ACC_WIDE = app.ccColors.Account .. "Track Account-Wide|R";

AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t Azerite Essences";
MOUNTMODS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t Mount Modifications";
FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t Followers & Companions";
RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Runecarving Powers";
SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t Conduits";




ITEM_FILTER_LABEL = ARMOR .." & ".. AUCTION_CATEGORY_WEAPONS;
ITEM_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";
STORE_IN_PROFILE_BUTTON = "Store in Profile";
STORE_IN_PROFILE_BUTTON_TOOLTIP = "By default, ATT stores these Filters on a per-character basis.\n\nCheck this option to store these Filter selections in the current Profile rather than per-character.";


CUSTOM_FILTERS_EXPLAIN_LABEL = "|cffFFFFFFThis content is always shown if it is available to your current character or if you are in "..app.ccColors.Account.."Account Mode|cffFFFFFF.|r";

CONTAINS_SLIDER_TOOLTIP = 'Use this to customize the number of Summarized Things to show in the tooltip.\n\nDefault: 25';
LOCATIONS_SLIDER_TOOLTIP = 'Use this to customize the number of source locations to show in the tooltip.\n\nNOTE: This will also show "X" number of other sources based on how many, if that total is equivalent to the total number of displayed elements, then that will simply display the last source.\n\nDefault: 5';

MAIN_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of the Main List.\n\nDefault: 1';
MINI_LIST_SCALE_TOOLTIP = 'Use this to customize the scale of all Mini and Bitty Lists.\n\nDefault: 1';
SORT_BY_PROGRESS_CHECKBOX_TOOLTIP = "Enable this option if you want the 'Sort' operation ("..SHIFT_KEY_TEXT.." Right Click) to sort by the total progress of each group (instead of by Name)";
PRECISION_SLIDER_TOOLTIP = 'Use this to customize your desired level of precision in percentage calculations.\n\nDefault: 2';


FILLERS_EXPLANATION = "|cffFFFFFFFillers are mechanisms by which extra Data is 'filled' into/beneath other ATT content within various UI elements to show further use or purpose of a given Thing. For example, showing the resulting Purchases of an Item would be provided by a 'Filler'.\nThis tab allows you to modify your preferences of which Fillers will be active throughout ATT.|r";
TOOLTIP = "Tooltip";
LIST = "Mini List";
POPOUT = "Popout List";
UPGRADE = "Upgrade";
CATALYST = "Catalyst";
SYMLINK = "Sym-Link";
NPC = "NPC";
REAGENT = "Reagent";







PROFILE_INITIALIZE_TOOLTIP = "This will enable your Saved Variables for ATT to support and contain Profile data. Your current Settings and Window information will be copied into the '"..DEFAULT.."' Profile, which cannot be deleted, but may be modified and will be used as the initial Profile for all characters.\n\nPlease be sure to report any unusual behavior or bugs with Profiles to the ATT Discord!";
PROFILE_SWITCH_TOOLTIP = "Set the Selected Profile as the Current Profile\n\nA Profile can also be "..SHIFT_KEY_TEXT.." clicked to Switch to it";

L.TOOLTIP_MODULE = {
	RANKS = {
		AUTHOR = " |T"..app.asset("logo_32x32")..":0|t" .. " Author";
		CONTRIBUTOR = " |T"..app.asset("logo_32x32")..":0|t" .. " Contributor";
		COLLECTOR = "Collector";
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
