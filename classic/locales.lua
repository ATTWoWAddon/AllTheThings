--------------------------------------------------------------------------------
--						L O C A L I Z A T I O N  F I L E					  --
--------------------------------------------------------------------------------
local name, app = ...;
local L = {
	-- General Text
	["TITLE"] = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	["SHORTTITLE"] = "|c" .. app.Colors.ATT .. "ATT|r";
	["DESCRIPTION"] = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";

	-- Instructional Text
	["MINIMAP_MOUSEOVER_TEXT"] = "Right click to change settings.\nLeft click to open the Main List.\nCtrl + Left click to open the Mini List.\nShift + Left click to Refresh Collections.";
	["TOP_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click and Drag to Move|r\n|cff3399ffRight Click to Open the Settings Menu|r\n|cff3399ffShift + Click to Refresh Collections|r";
	["OTHER_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click to Expand/Collapse|r\n|cff3399ffRight Click to Pop Out to Mini List|r\n|cff3399ffShift + Click to Refresh Collections|r\n|cff3399ffAlt + Right Click to Plot Waypoints|r";
	["TOP_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click and Drag to Move|r\n|cff3399ffRight Click to Open the Settings Menu|r\n|cff3399ffShift + Click to Search the Auction House|r";
	["OTHER_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click to Expand/Collapse|r\n|cff3399ffRight Click to Pop Out to Mini List|r\n|cff3399ffShift + Click to Search the Auction House|r";
	["RECENTLY_MADE_OBTAINABLE"] = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	["RECENTLY_MADE_OBTAINABLE_PT2"] = "|CFFFF0000The more information, the better.  Thanks!|r";
	["I_ONLY_CARE_ABOUT_MY_MAIN"] = "|cff3399ffI only care about my main.|r";
	["MAIN_LIST_REQUIRES_REFRESH"] = "[Click to Update Progress]";
	["VISIT_FLIGHT_MASTER"] = "Visit the Flight Master to cache.";

	["FACTION_MODE_TOOLTIP"] = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";
	["REQUIRES_PVP"] = "|CFF00FFDEThis may require participation in PvP.|r";
	["PLEASE_REPORT_MESSAGE"] = "Please report this to the ATT Discord in #retail-errors! Thanks!";
	["REPORT_TIP"] = "\n("..CTRL_KEY_TEXT.."+C to copy multiline report to your clipboard)";

	-- Binding Localizations
	["TOGGLE_ACCOUNT_MODE"] = "Toggle Account Mode";
	["TOGGLE_DEBUG_MODE"] = "Toggle Debug Mode";
	["TOGGLE_FACTION_MODE"] = "Toggle Faction Mode";
	["PREFERENCES"] = "Preferences";
	["TOGGLE_COMPLETEDTHINGS"] = "Toggle Completed Things (Both)";
	["TOGGLE_COMPLETEDGROUPS"] = "Toggle Completed Groups";
	["TOGGLE_COLLECTEDTHINGS"] = "Toggle Collected Things";
	["TOGGLE_BOEITEMS"] = "Toggle BoE/BoA Items";
	["TOGGLE_LOOTDROPS"] = "Toggle Loot/Drops/Items";
	["TOGGLE_SOURCETEXT"] = "Toggle Source Locations";
	["MODULES"] = "Modules";
	["TOGGLE_MAINLIST"] = "Toggle ATT Main List";
	["TOGGLE_MINILIST"] = "Toggle ATT Mini List";
	["TOGGLE_PROFESSION_LIST"] = "Toggle ATT Profession List";
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
	["REQUIRES"] = "Requires";
	["REQUIRES_LEVEL"] = "Requires Level";
	["LIMITED_QUANTITY"] = "This has a limited quantity and may not always be present on the vendor.";

	-- Filter Text
	["ACHIEVEMENT_ID"] = "Achievement ID";
	["ARTIFACT_ID"] = "Artifact ID";
	["AZERITE_ESSENCE_ID"] = "Azerite Essence ID";
	["ART_ID"] = "Art ID";
	["CREATURE_ID"] = "Creature ID";
	["CURRENCY_ID"] = "Currency ID";
	["DIFFICULTY_ID"] = "Difficulty ID";
	["ENCOUNTER_ID"] = "Encounter ID";
	["EXPANSION_ID"] = "Expansion ID";
	["EXPLORATION_ID"] = "Exploration ID";
	["FILTER_ID"] = "Filter ID";
	["FOLLOWER_ID"] = "Follower ID";
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
	["SPELL_ID"] = "Spell ID";
	["SPECIES_ID"] = "Species ID";
	["TITLE_ID"] = "Title ID";
	["TOY_ID"] = "Toy ID";
	["VISUAL_ID"] = "Visual ID";
	
	
	["CRITERIA_FOR"] = "Criteria for";
	["CURRENCY_FOR"] = "Currency for";

	-- Icons and Collection Text
	["COLLECTED_ICON"] = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE_ICON"] = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_ICON"] = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED_ICON"] = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED"] = "|T" .. app.asset("known") .. ":0|t |c" .. app.Colors.Completed .. "Collected|r";		-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE"] = "|T" .. app.asset("known_circle") .. ":0|t |c" .. app.Colors.Completed .. "Collected*|r";	-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Not Collected|r";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete|r";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_OTHER"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47Complete*|r";		-- Acquired the colors and icon from CanIMogIt.
	["INCOMPLETE"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Incomplete|r";		-- Acquired the colors and icon from CanIMogIt.
	["KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |c" .. app.Colors.Completed .. "Known on current character|r";
	["UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333Unknown on current character|r";

	["ABBREVIATIONS"] = {
		["ALL THE THINGS"] = "ATT",
		["Expansion Pre"] = "Pre",
		["Dungeons & Raids"] = "D&R",
		["Player vs Player"] = STAT_CATEGORY_PVP,
		["Player vs. Player"] = STAT_CATEGORY_PVP,
		["Outdoor Zones"] = LFG_TYPE_ZONE,
		["Classic %> "] = "",
		["Burning Crusade"] = "BC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm"] = "Cata",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["Raid Finder"] = "LFR",
		["Looking For Raid"] = "LFR",
		["10 Player"] = "10M",
		["10 Player (Heroic)"] = "10M (H)",
		["25 Player"] = "25M",
		["25 Player (Heroic)"] = "25M (H)",
		["Pet Journal"] = PETS,
		["Toy Box"] = TOY,
	};
	["ABBREVIATIONS_POST"] = {
		--[" %-%> " .. LFG_TYPE_ZONE] = "",
		[TRACKER_HEADER_QUESTS] = BATTLE_PET_SOURCE_2,
	};
	["CUSTOM_DIFFICULTIES"] = {
		[-1] = "Raid Finder (5.4)",
		[-2] = "Flexible (5.4)",
		[-3] = "Normal (5.4)",
		[-4] = "Heroic (5.4)",
	};
	
	-- These need to be localized manually.
	["ACHIEVEMENT_DATA"] = {
		[6] = { 92, "Level 10", app.asset("Achievement_Level_10") },
		[7] = { 92, "Level 20", app.asset("Achievement_Level_20") },
		[8] = { 92, "Level 30", app.asset("Achievement_Level_30") },
		[9] = { 92, "Level 40", app.asset("Achievement_Level_40") },
		[10] = { 92, "Level 50", app.asset("Achievement_Level_50") },
		[11] = { 92, "Level 60", app.asset("Achievement_Level_60") },
		[12] = { 92, "Level 70", app.asset("Achievement_Level_70") },
		[13] = { 92, "Level 80", app.asset("Achievement_Level_80") },
		[546] = { 92, "Safe Deposit", "Interface\\Icons\\inv_box_01" },
		[621] = { 92, "Represent", "Interface\\Icons\\inv_shirt_guildtabard_01" },
		[1020] = { 92, "Ten Tabards", "Interface\\Icons\\inv_shirt_guildtabard_01" },
		[891] = { 92, "Giddy Up!", "Interface\\Icons\\ability_mount_ridinghorse" },
		[889] = { 92, "Fast and Furious", "Interface\\Icons\\ability_mount_blackpanther" },
		[890] = { 92, "Into the Wild Blue Yonder", "Interface\\Icons\\ability_mount_gryphon_01" },
		[892] = { 92, "The Right Stuff", "Interface\\Icons\\ability_mount_wyvern_01" },
		[5180] = { 92, "Breaking the Sound Barrier", "Interface\\Icons\\ability_mount_rocketmount" },
		[1017] = { 92, "Can I Keep Him?", "Interface\\Icons\\inv_box_petcarrier_01" },
		[15] = { 92, "Plenty of Pets", "Interface\\Icons\\inv_box_petcarrier_01" },
		[1248] = { 92, "Plethora of Pets", "Interface\\Icons\\inv_box_petcarrier_01" },
		[1250] = { 92, "Shop Smart, Shop Pet...Smart", "Interface\\Icons\\inv_box_petcarrier_01" },
		[2516] = { 92, "Lil' Game Hunter", "Interface\\Icons\\inv_box_petcarrier_01" },
		
		[2141] = { 92, "Stable Keeper", "Interface\\Icons\\Ability_mount_ridinghorse" },
		[2142] = { 92, "Filling Up The Barn", "Interface\\Icons\\Ability_mount_nightmarehorse" },
		[2143] = { 92, "Leading the Cavalry", "Interface\\Icons\\Ability_mount_wyvern_01" },
		[2536] = { 92, "Mountain o' Mounts", "Interface\\Icons\\ability_hunter_pet_dragonhawk" },
		[2537] = { 92, "Mountain o' Mounts", "Interface\\Icons\\ability_hunter_pet_dragonhawk" },
		
		[1165] = { 92, "My Sack is \"Gigantique\"" },
		
		[628] = { 14808, "Deadmines", app.asset("achievement_boss_edwinvancleef") },
		[629] = { 14808, "Ragefire Chasm", app.asset("spell_shadow_summonfelguard") },
		[630] = { 14808, "Wailing Caverns", app.asset("achievement_boss_mutanus_the_devourer") },
		[631] = { 14808, "Shadowfang Keep", app.asset("achievement_boss_archmagearugal") },
		[633] = { 14808, "Stormwind Stockade", app.asset("achievement_boss_bazil_thredd") },
		[634] = { 14808, "Gnomeregan", app.asset("achievement_boss_mekgineer_thermaplugg") },
		[635] = { 14808, "Razorfen Kraul", app.asset("achievement_boss_charlgarazorflank") },
		[636] = { 14808, "Razorfen Downs", app.asset("achievement_boss_amnennar_the_coldbringer") },
		[638] = { 14808, "Uldaman", app.asset("achievement_boss_archaedas") },
		[640] = { 14808, "Maraudon", app.asset("achievement_boss_princesstheradras") },
		[641] = { 14808, "Sunken Temple", app.asset("achievement_boss_shadeoferanikus") },
		[642] = { 14808, "Blackrock Depths", app.asset("achievement_boss_emperordagranthaurissan") },
		[643] = { 14808, "Lower Blackrock Spire", app.asset("achievement_boss_overlord_wyrmthalak") },
		[646] = { 14808, "Stratholme", app.asset("spell_deathknight_armyofthedead") },
		[647] = { 14805, "Hellfire Ramparts", app.asset("achievement_boss_omartheunscarred_01") },
		[650] = { 14805, "Underbog", app.asset("achievement_boss_theblackstalker") },
		[651] = { 14805, "Mana-Tombs", app.asset("achievement_boss_nexus_prince_shaffar") },
		[652] = { 14805, "The Escape From Durnholde", app.asset("achievement_boss_epochhunter") },
		[653] = { 14805, "Sethekk Halls", app.asset("achievement_boss_talonkingikiss") },
		[654] = { 14805, "Shadow Labyrinth", app.asset("achievement_boss_murmur") },
		[655] = { 14805, "Opening of the Dark Portal", app.asset("achievement_boss_aeonus_01") },
		[656] = { 14805, "The Steamvault", app.asset("achievement_boss_warlord_kalithresh") },
		[657] = { 14805, "The Shattered Halls", app.asset("achievement_boss_kargathbladefist_01") },
		[658] = { 14805, "The Mechanar", app.asset("achievement_boss_pathaleonthecalculator") },
		[659] = { 14805, "The Botanica", app.asset("achievement_boss_warpsplinter") },
		[660] = { 14805, "The Arcatraz", app.asset("achievement_boss_harbinger_skyriss") },
		[661] = { 14805, "Magister's Terrace", app.asset("achievement_boss_kael'thassunstrider_01") },
		[666] = { 14805, "Auchenai Crypts", app.asset("achievement_boss_exarch_maladaar") },
		[675] = { 14805, "Heroic: Shadow Labyrinth", app.asset("achievement_boss_murmur") },
		[677] = { 14805, "Heroic: The Steamvault", app.asset("achievement_boss_warlord_kalithresh") },
		[678] = { 14805, "Heroic: The Shattered Halls", app.asset("achievement_boss_kargathbladefist_01") },
		[681] = { 14805, "Heroic: The Arcatraz", app.asset("achievement_boss_harbinger_skyriss") },
		[684] = { 14808, "Onyxia's Lair", app.asset("achievement_boss_onyxia") },
		[685] = { 14808, "Blackwing Lair", app.asset("achievement_boss_nefarion") },
		[686] = { 14808, "Molten Core", app.asset("achievement_boss_ragnaros") },
		[687] = { 14808, "Temple of Ahn'Qiraj", app.asset("achievement_boss_cthun") },
		[688] = { 14808, "Zul'Gurub", app.asset("achievement_boss_hakkar") },
		[689] = { 14808, "Ruins of Ahn'Qiraj", app.asset("achievement_boss_ossiriantheunscarred") },
		[690] = { 14805, "Karazhan", app.asset("achievement_boss_princemalchezaar_02") },
		[691] = { 14805, "Zul'Aman", app.asset("achievement_boss_zuljin") },
		[692] = { 14805, "Gruul's Lair", app.asset("achievement_boss_gruulthedragonkiller") },
		[693] = { 14805, "Magtheridon's Lair", app.asset("achievement_boss_magtheridon") },
		[694] = { 14805, "Serpentshrine Cavern", app.asset("achievement_boss_ladyvashj") },
		[696] = { 14805, "Tempest Keep", app.asset("achievement_character_bloodelf_male") },
		[697] = { 14805, "The Black Temple", app.asset("achievement_boss_illidan") },
		[1307] = { 14808, "Upper Blackrock Spire", app.asset("achievement_boss_generaldrakkisath") },
		
		[121] = { 170, "Journeyman Cook", "Interface\\Icons\\inv_misc_food_15" },
		[122] = { 170, "Expert Cook", "Interface\\Icons\\inv_misc_food_15" },
		[123] = { 170, "Artisan Cook", "Interface\\Icons\\inv_misc_food_15" },
		[124] = { 170, "Master Cook", "Interface\\Icons\\inv_misc_food_15" },
		[125] = { 170, "Grand Master Cook", "Interface\\Icons\\inv_misc_food_15" },
		
		[126] = { 171, "Journeyman Fisherman", "Interface\\Icons\\trade_fishing" },
		[127] = { 171, "Expert Fisherman", "Interface\\Icons\\trade_fishing" },
		[128] = { 171, "Artisan Fisherman", "Interface\\Icons\\trade_fishing" },
		[129] = { 171, "Master Fisherman", "Interface\\Icons\\trade_fishing" },
		[130] = { 171, "Grand Master Fisherman", "Interface\\Icons\\trade_fishing" },
		[306] = { 171, "Master Angler of Azeroth", "Interface\\Icons\\inv_misc_fish_06" },
		[560] = { 171, "Deadliest Catch", "Interface\\Icons\\inv_misc_head_murloc_01" },
		[726] = { 171, "Mr. Pinchy's Magical Crawdad Box", "Interface\\Icons\\inv_misc_fish_14" },
		[878] = { 171, "One That Didn't Get Away", "Interface\\Icons\\inv_misc_fish_35" },
		[1243] = { 171, "Fish Don't Leave Footprints" },
		[1836] = { 171 },	-- Old Crafty, name and icon from providers
		[1837] = { 171 },	-- Old Ironjaw, name and icon from providers
		
		[131] = { 172, "Journeyman in First Aid", "Interface\\Icons\\spell_holy_sealofsacrifice" },
		[132] = { 172, "Expert in First Aid", "Interface\\Icons\\spell_holy_sealofsacrifice" },
		[133] = { 172, "Artisan in First Aid", "Interface\\Icons\\spell_holy_sealofsacrifice" },
		[134] = { 172, "Master in First Aid", "Interface\\Icons\\spell_holy_sealofsacrifice" },
		[135] = { 172, "Grand Master in First Aid", "Interface\\Icons\\spell_holy_sealofsacrifice" },
		
		[238] = { 95, "An Honorable Kill", app.asset("achievement_pvp_p_01") },
		[513] = { 95, "100 Honorable Kills", app.asset("achievement_pvp_p_02") },
		[515] = { 95, "500 Honorable Kills", app.asset("achievement_pvp_p_03") },
		[516] = { 95, "1000 Honorable Kills", app.asset("achievement_pvp_p_04") },
		[512] = { 95, "5000 Honorable Kills", app.asset("achievement_pvp_p_06") },
		[509] = { 95, "10000 Honorable Kills", app.asset("achievement_pvp_p_09") },
		[239] = { 95, "25000 Honorable Kills", app.asset("achievement_pvp_p_11") },
		[869] = { 95, "50000 Honorable Kills", app.asset("achievement_pvp_p_14") },
		[870] = { 95, "100000 Honorable Kills", app.asset("achievement_pvp_p_15") },
		
		[389] = { 95, "Gurubashi Arena Master" },	-- Arena Master, icon from providers
		[396] = { 95, "Gurubashi Arena Grand Master" },	-- Arena Grand Master, icon from providers
		[727] = { 95, "Call in the Cavalry" },	-- Call in the Cavalry, icon from providers
		[714] = { 95, "The Conqueror", "Interface\\Icons\\inv_misc_tabardpvp_04" },
		[907] = { 95, "The Justicar", "Interface\\Icons\\inv_misc_tabardpvp_03" },
		
		-- Quests
		[940] = { 14861, "The Green Hills of Stranglethorn", "Interface\\Icons\\ability_mount_whitetiger" },
		[939] = { 14862, "Hills Like White Elekk", "Interface\\Icons\\ability_mount_ridingelekk" },
		[1189] = { 14862, "To Hellfire and Back", app.asset("achievement_zone_hellfirepeninsula_01") },
		[1190] = { 14862, "Mysteries of the Marsh", app.asset("achievement_zone_zangarmarsh") },
		[1191] = { 14862, "Terror of Terokkar", app.asset("achievement_zone_terrokar") },
		[1192] = { 14862, "Nagrand Slam", app.asset("achievement_zone_nagrand_01") },
		[1193] = { 14862, "On the Blade's Edge", app.asset("achievement_zone_bladesedgemtns_01") },
		[1194] = { 14862, "Into the Nether", app.asset("achievement_zone_netherstorm_01") },
		[1195] = { 14862, "Shadow of the Betrayer", app.asset("achievement_zone_shadowmoon") },
		[1262] = { 14862, "Loremaster of Outland", app.asset("achievement_zone_outland_01") },
		[1271] = { 14862, "To Hellfire and Back", app.asset("achievement_zone_hellfirepeninsula_01") },
		[1272] = { 14862, "Terror of Terokkar", app.asset("achievement_zone_terrokar") },
		[1273] = { 14862, "Nagrand Slam", app.asset("achievement_zone_nagrand_01") },
		[1274] = { 14862, "Loremaster of Outland", app.asset("achievement_zone_outland_01") },
		[1676] = { 14861, "Loremaster of Eastern Kindoms", app.asset("achievement_zone_easternkingdoms_01") },
		[1677] = { 14861, "Loremaster of Eastern Kindoms", app.asset("achievement_zone_easternkingdoms_01") },
		[1678] = { 14861, "Loremaster of Kalimdor", app.asset("achievement_zone_kalimdor_01") },
		[1680] = { 14861, "Loremaster of Kalimdor", app.asset("achievement_zone_kalimdor_01") },
		
		-- Exploration
		[42] = { 97, "Explore Eastern Kingdoms", app.asset("achievement_zone_easternkingdoms_01") },
		[43] = { 97, "Explore Kalimdor", app.asset("achievement_zone_kalimdor_01") },
		[44] = { 97, "Explore Outland", app.asset("achievement_zone_outland_01") },
		
		-- Eastern Kingdoms
		[627] = { 14777, "Explore Dun Morogh", app.asset("achievement_zone_dunmorogh") },
		[760] = { 14777, "Explore Alterac Mountains", app.asset("achievement_zone_alteracmountains_01") },
		[761] = { 14777, "Explore Arathi Highlands", app.asset("achievement_zone_arathihighlands_01") },
		[765] = { 14777, "Explore Badlands", app.asset("achievement_zone_badlands_01") },
		[766] = { 14777, "Explore Blasted Lands", app.asset("achievement_zone_blastedlands_01") },
		[768] = { 14777, "Explore Tirisfal Glades", app.asset("achievement_zone_tirisfalglades_01") },
		[769] = { 14777, "Explore Silverpine Forest", app.asset("achievement_zone_silverpine_01") },
		[770] = { 14777, "Explore Western Plaguelands", app.asset("achievement_zone_westernplaguelands_01") },
		[771] = { 14777, "Explore Eastern Plaguelands", app.asset("achievement_zone_easternplaguelands") },
		[772] = { 14777, "Explore Hillsbrad Foothills", app.asset("achievement_zone_hillsbradfoothills") },
		[773] = { 14777, "Explore The Hinterlands", app.asset("achievement_zone_hinterlands_01") },
		[774] = { 14777, "Explore Searing Gorge", app.asset("achievement_zone_searinggorge_01") },
		[775] = { 14777, "Explore Burning Steppes", app.asset("achievement_zone_burningsteppes_01") },
		[776] = { 14777, "Explore Elwynn Forest", app.asset("achievement_zone_elwynnforest") },
		[777] = { 14777, "Explore Deadwind Pass", app.asset("achievement_zone_deadwindpass") },
		[778] = { 14777, "Explore Duskwood", app.asset("achievement_zone_duskwood") },
		[779] = { 14777, "Explore Loch Modan", app.asset("achievement_zone_lochmodan") },
		[780] = { 14777, "Explore Redridge Mountains", app.asset("achievement_zone_redridgemountains") },
		[781] = { 14777, "Explore Stranglethorn Vale", app.asset("achievement_zone_stranglethorn_01") },
		[782] = { 14777, "Explore Swamp of Sorrows", app.asset("achievement_zone_swampsorrows_01") },
		[802] = { 14777, "Explore Westfall", app.asset("achievement_zone_westfall_01") },
		[841] = { 14777, "Explore Wetlands", app.asset("achievement_zone_wetlands_01") },
		[868] = { 14777, "Explore Isle of Quel'Danas", app.asset("achievement_zone_isleofqueldanas") },
		[858] = { 14777, "Explore Ghostlands", app.asset("achievement_zone_ghostlands") },
		[859] = { 14777, "Explore Eversong Woods", app.asset("achievement_zone_eversongwoods") },
		
		-- Kalimdor
		[728] = { 14778, "Explore Durotar", app.asset("achievement_zone_durotar") },
		[736] = { 14778, "Explore Mulgore", app.asset("achievement_zone_mulgore_01") },
		[750] = { 14778, "Explore The Barrens", app.asset("achievement_zone_barrens_01") },
		[842] = { 14778, "Explore Teldrassil", app.asset("achievement_zone_darnassus") },
		[844] = { 14778, "Explore Darkshore", app.asset("achievement_zone_darkshore_01") },
		[845] = { 14778, "Explore Ashenvale", app.asset("achievement_zone_ashenvale_01") },
		[846] = { 14778, "Explore Thousand Needles", app.asset("achievement_zone_thousandneedles_01") },
		[847] = { 14778, "Explore Stonetalon Mountains", app.asset("achievement_zone_stonetalon_01") },
		[848] = { 14778, "Explore Desolace", app.asset("achievement_zone_desolace") },
		[849] = { 14778, "Explore Feralas", app.asset("achievement_zone_feralas") },
		[850] = { 14778, "Explore Dustwallow Marsh", app.asset("achievement_zone_dustwallowmarsh") },
		[851] = { 14778, "Explore Tanaris", app.asset("achievement_zone_tanaris_01") },
		[852] = { 14778, "Explore Azshara", app.asset("achievement_zone_azshara_01") },
		[853] = { 14778, "Explore Felwood", app.asset("achievement_zone_felwood") },
		[854] = { 14778, "Explore Un'Goro Crater", app.asset("achievement_zone_ungorocrater_01") },
		[855] = { 14778, "Explore Moonglade", "Interface\\Icons\\spell_arcane_teleportmoonglade" },
		[856] = { 14778, "Explore Silithus", app.asset("achievement_zone_silithus_01") },
		[857] = { 14778, "Explore Winterspring", app.asset("achievement_zone_winterspring") },
		[860] = { 14778, "Explore Azuremyst Isle", app.asset("achievement_zone_azuremystisle_01") },
		[861] = { 14778, "Explore Bloodmyst Isle", app.asset("achievement_zone_bloodmystisle_01") },
		
		-- Outland
		[843] = { 14779, "Explore Netherstorm", app.asset("achievement_zone_netherstorm_01") },
		[862] = { 14779, "Explore Hellfire Peninsula", app.asset("achievement_zone_hellfirepeninsula_01") },
		[863] = { 14779, "Explore Zangarmarsh", app.asset("achievement_zone_zangarmarsh") },
		[864] = { 14779, "Explore Shadowmoon Valley", app.asset("achievement_zone_shadowmoon") },
		[865] = { 14779, "Explore Blade's Edge Mountains", app.asset("achievement_zone_bladesedgemtns_01") },
		[866] = { 14779, "Explore Nagrand", app.asset("achievement_zone_nagrand_01") },
		[867] = { 14779, "Explore Terokkar Forest", app.asset("achievement_zone_terrokar") },
		
		-- Alterac Valley Achievements
		[706] = { 14801 },	-- Frostwolf Howler, name and icon from providers
		[707] = { 14801 },	-- Stormpike Battle Charger, name and icon from providers
		[708] = { 14801, "Hero of the Frostwolf Clan", "Interface\\Icons\\inv_jewelry_frostwolftrinket_05" },
		[709] = { 14801, "Hero of the Stormpike Guard", "Interface\\Icons\\inv_jewelry_stormpiketrinket_05" },
		
		-- Arathi Basin Achievements
		[711] = { 14802, "Knight of Arathor", "Interface\\Icons\\Ability_warrior_battleshout" },
		[710] = { 14802, "The Defiler", "Interface\\Icons\\Ability_Sap" },
		
		-- Warsong Gulch Achievements
		[712] = { 14804, "Warsong Outrider", "Interface\\Icons\\ability_warrior_warcry" },
		[713] = { 14804, "Silverwing Sentinel", "Interface\\Icons\\ability_racial_shadowmeld" },
		
		[522] = { 201, "Somebody Likes Me", app.asset("achievement_reputation_01") },
		[523] = { 201, "5 Exalted Reputations", app.asset("achievement_reputation_01") },
		[524] = { 201, "10 Exalted Reputations", app.asset("achievement_reputation_02") },
		[521] = { 201, "15 Exalted Reputations", app.asset("achievement_reputation_03") },
		[520] = { 201, "20 Exalted Reputations", app.asset("achievement_reputation_04") },
		[519] = { 201, "25 Exalted Reputations", app.asset("achievement_reputation_05") },
		[518] = { 201, "30 Exalted Reputations", app.asset("achievement_reputation_06") },
		[1014] = { 201, "35 Exalted Reputations", app.asset("achievement_reputation_07") },
		[1015] = { 201, "40 Exalted Reputations", app.asset("achievement_reputation_08") },
		[893] = { 14865 },	-- Cenarion War Hippogryph, name and icon from providers
		[894] = { 14865, "Flying High Over Skettis", "Interface\\Icons\\ability_hunter_pet_netherray" },
		[896] = { 14865, "A Quest a Day Keeps the Ogres at Bay", "Interface\\Icons\\inv_misc_apexis_crystal" },
		[897] = { 14865, "You're So Offensive", "Interface\\Icons\\inv_shield_48" },
		[898] = { 14865, "On Wings of Nether", "Interface\\Icons\\ability_mount_netherdrakepurple" },
		[899] = { 14865, "Oh My, Kurenai", "Interface\\Icons\\inv_misc_foot_centaur" },
		[900] = { 14865, "The Czar of Sporeggar", "Interface\\Icons\\inv_mushroom_11" },
		[901] = { 14865, "Mag'har of Draenor", "Interface\\Icons\\inv_misc_foot_centaur" },
		[902] = { 14865, "Chief Exalted Officer", "Interface\\Icons\\inv_enchant_shardprismaticlarge" },
		[903] = { 14865, "Shattrath Divided", "Interface\\Icons\\spell_arcane_portalshattrath" },
		[948] = { 201, "Ambassador of the Alliance", app.asset("achievement_pvp_a_16") },
		[762] = { 201, "Ambassador of the Horde", app.asset("achievement_pvp_h_16") },
		[763] = { 14865, "The Burning Crusader", "Interface\\Icons\\spell_fire_felfireward" },
		[764] = { 14865, "The Burning Crusader", "Interface\\Icons\\spell_fire_felfireward" },
		[942] = { 201, "The Diplomat", "Interface\\Icons\\inv_helmet_44" },
		[943] = { 201, "The Diplomat", "Interface\\Icons\\inv_helmet_44" },
		[944] = { 14864, "They Love Me In That Tunnel", app.asset("achievement_reputation_timbermaw") },
		[946] = { 14864, "The Argent Dawn", "Interface\\Icons\\inv_jewelry_talisman_07" },
		[953] = { 201, "Guardian of Cenarius", "Interface\\Icons\\ability_racial_ultravision" },
		[955] = { 14864, "Hydraxian Waterlords", "Interface\\Icons\\Spell_frost_summonwaterelemental" },
		[956] = { 14864, "Brood of Nozdormu", "Interface\\Icons\\inv_misc_head_dragon_bronze" },
		[957] = { 14864, "Hero of the Zandalar Tribe", "Interface\\Icons\\inv_bijou_green" },
		[958] = { 14865, "Sworn to the Deathsworn", app.asset("achievement_reputation_ashtonguedeathsworn") },
		[959] = { 14865, "The Scale of the Sands", "Interface\\Icons\\inv_enchant_dustillusion" },
		[960] = { 14865, "The Violet Eye", "Interface\\Icons\\spell_holy_mindsooth" },
		[1638] = { 14865, "Skyshattered", "Interface\\Icons\\ability_mount_netherdrakepurple" },
		
		[292] = { 158, "Sinister Calling" },	-- Sinister Squashling, icon from providers
		[303] = { 162, "Have Keg, Will Travel", "Interface\\Icons\\inv_cask_01" },
		[1936] = { 162, "Does Your Wolpertinger Linger?" },	-- Wolpertinger Tankard, icon from providers
		
		[416] = { 81, "Scarab Lord", app.asset("achievement_zone_silithus_01") },
		[424] = { 81, "Why? Because It's Red" },	-- Why? Because It's Red, icon from providers
		[425] = { 81 },	-- Atiesh, Greatstaff of the Guardian, name and icon from providers
		[426] = { 81, "Warglaives of Azzinoth" },	-- Warglaives of Azzinoth, icon from providers
		[428] = { 81 },	-- Thunderfury, Blessed Blade of the Windseeker, name and icon from providers
		[429] = { 81 },	-- Sulfuras, Hand of Ragnaros, name and icon from providers
		[430] = { 81 },	-- Amani War Bear, name and icon from providers
		[431] = { 81, "Hand of A'dal", "Interface\\Icons\\inv_mace_25" },
		[432] = { 81, "Champion of the Naaru", "Interface\\Icons\\inv_mace_51" },
		[725] = { 81 },	-- Thori'dal, the Stars' Fury, name and icon from providers
		[729] = { 81 },	-- Deathcharger's Reins, name and icon from providers
		[871] = { 81, "Avast Ye, Admiral!", "Interface\\Icons\\inv_helmet_66" },
		[879] = { 81, "Old School Ride" },	-- Old School Ride, icon from providers
		[880] = { 81 },	-- Swift Zulian Tiger, name and icon from providers
		[881] = { 81 },	-- Swift Razzashi Raptor, name and icon from providers
		[882] = { 81 },	-- Fiery Warhorse's Reins, name and icon from providers
		[883] = { 81 },	-- Reins of the Raven Lord, name and icon from providers
		[884] = { 81 },	-- Swift White Hawkstrider, name and icon from providers
		[885] = { 81 },	-- Ashes of Al'ar, name and icon from providers
		[980] = { 81 },	-- The Horseman's Reins, name and icon from providers
		[1205] = { 81, "Hero of Shattrath", "Interface\\Icons\\spell_arcane_teleportshattrath" },
		[1292] = { 81 },	-- Yellow Brewfest Stein, name and icon from providers
		[1293] = { 81 },	-- Blue Brewfest Stein, name and icon from providers
		[1636] = { 81 },	-- Competitor's Tabard, name and icon from providers
		[1637] = { 81, "Spirit of Competition" },	-- Spirit of Competition, icon from providers
		[1705] = { 81 },	-- Clockwork Rocket Bot, name and icon from providers
		[1706] = { 81 },	-- Crashin' Thrashin' Racer Controller, name and icon from providers
		[2079] = { 81 },	-- Tabard of the Protector, name and icon from providers
		[2116] = { 81 },	-- Tabard of the Argent Dawn, name and icon from providers
		[2358] = { 81, "Charger", "Interface\\Icons\\ability_mount_charger" },
		[2336] = { 81, "Insane in the Membrane", "Interface\\Icons\\inv_misc_organ_03" },
		[2357] = { 81, "Dreadsteed of Xoroth", "Interface\\Icons\\ability_mount_dreadsteed" },
		[2359] = { 81, "Swift Flight Form", "Interface\\Icons\\ability_druid_flightform" },
		[2456] = { 81, "Vampire Hunter" },	-- Vampire Hunter, icon from providers
		[2496] = { 81, "The Fifth Element", "Interface\\Icons\\Spell_frost_summonwaterelemental" },
		[3356] = { 81, "Winterspring Frostsaber" },	-- Winterspring Frostsaber, icon from providers
		[3357] = { 81, "Venomhide Ravasaur", "Interface\\Icons\\ability_hunter_pet_raptor" },
		[3496] = { 81, "A Brew-FAST Mount", "Interface\\Icons\\inv_cask_01" },
		[4782] = { 81 },	-- Green Brewfest Stein, name and icon from providers
		
		-- Does not get added until 4.1.0, btw. So just keep that in mind for wrath.
		[5788] = { 81, "Agent of the Shen'dralar", "Interface\\Icons\\inv_misc_book_04" },
	},
	["ACHIEVEMENT_CRITERIA_DATA"] = {
		[92] = { -1, "Character" },
		[95] = { -1, BUG_CATEGORY14 },	-- Player vs. Player
		[14801] = { 95, "Alterac Valley" },
		[14802] = { 95, "Arathi Basin" },
		[14804] = { 95, "Warsong Gulch" },
		[96] = { -1, "Quests" },
		[14861] = { 96, "Classic" },
		[14862] = { 96, "The Burning Crusade" },
		[97] = { -1, "Exploration" },
		[14777] = { 97, "Eastern Kingdoms" },
		[14778] = { 97, "Kalimdor" },
		[14779] = { 97, "Outland" },
		[155] = { -1, "World Events" },
		[158] = { 155, "Hallow's End" },
		[162] = { 155, "Brewfest" },
		[168] = { -1, "Dungeons & Raids" },
		[14805] = { 168, "The Burning Crusade" },
		[14808] = { 168, "Classic" },
		[169] = { -1, "Professions" },
		[170] = { 169, "Cooking" },
		[171] = { 169, "Fishing" },
		[172] = { 169, "First Aid" },
		[201] = { -1, "Reputation" },
		[14864] = { 201, "Classic" },
		[14865] = { 201, "The Burning Crusade" },
		[15088] = { -1, "General" },
		[15117] = { -1, "Pet Battles" },
		[15246] = { -1, "Collections" },
		[15234] = { -1, "Legacy" },
		[81] = { -1, "Feats of Strength" },
		[15301] = { -1, "Expansion Features" },
	},
	
	-- Deprecated! (move these eventually)
	["HEADER_ICONS"] = {};
	["HEADER_NAMES"] = {},
	["HEADER_DESCRIPTIONS"] = {};
	["HEADER_EVENTS"] = {};
	["HEADER_LORE"] = {};
	["EVENT_REMAPPING"] = {};
	["EVENT_TOOLTIPS"] = {};
	
	-- Module Localizations
	["PVP_RANK_DESCRIPTION"] = "There are a total of 14 ranks for both factions. Each rank requires a minimum amount of Rating Points to be calculated every week, then calculated in comparison to other players on your server.\n\nEach rank grants access to different rewards, from PvP consumables to Epic Mounts that do not require Epic Riding Skill and Epic pieces of gear at the highest ranks. Each rank is also applied to your character as a Title.";
	
	["TIER_DATA"] = {
		{	-- Classic
			["text"] = "Classic",
			["icon"] = app.asset("Expansion_CLASSIC"),
			["lore"] = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.",
		},
		{	-- Burning Crusade
			["text"] = "Burning Crusade",
			["icon"] = app.asset("Expansion_TBC"),
			["lore"] = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.",
			["lvl"] = 55,
		},
		{	-- Wrath of the Lich King
			["text"] = "Wrath of the Lich King",
			["icon"] = app.asset("Expansion_WOTLK"),
			["lore"] = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.",
			["lvl"] = 65,
		},
		{	-- Cataclysm
			["text"] = "Cataclysm",
			["icon"] = app.asset("Expansion_CATA"),
			["lore"] = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.",
			["lvl"] = 75,
		},
		{	-- Mists of Pandaria
			["text"] = "Mists of Pandaria",
			["icon"] = app.asset("Expansion_MOP"),
			["lore"] = "Mists of Pandaria is the fourth expansion pack. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.",
			["lvl"] = 82,
		},
		{	-- Warlords of Draenor
			["text"] = "Warlords of Draenor",
			["icon"] = app.asset("Expansion_WOD"),
			["lore"] = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner'zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde's formidable engine of conquest, or else watch their own world's bloody, war-torn history repeat itself.",
			["lvl"] = 88,
		},
		{	-- Legion
			["text"] = "Legion",
			["icon"] = app.asset("Expansion_LEGION"),
			["lore"] = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.",
			["lvl"] = 98,
		},
		{	-- Battle for Azeroth
			["text"] = "Battle for Azeroth",
			["icon"] = app.asset("Expansion_BFA"),
			["lore"] = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.",
			["lvl"] = 108,
		},
		{	-- Shadowlands
			["text"] = "Shadowlands",
			["icon"] = app.asset("Expansion_SL"),
			["lore"] = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.",
			["lvl"] = 50,
		},
		{	-- Dragonflight
			["text"] = "Dragonflight",
			["icon"] = app.asset("Expansion_DF"),
			["lore"] = "Dragonflight is the ninth expansion. The dragonflights of Azeroth have returned, called upon to defend their ancestral home, the Dragon Isles. Surging with elemental magic and the life energies of Azeroth, the Isles are awakening once more, and it's up to you to explore their primordial wonder and discover long-forgotten secrets.",
			["lvl"] = 58,
		},
	};
	
	-- These are alternative map names that we don't want to display, but used for mapID calculations.
	-- If there is a name provided in the table above, it will prefer that name association.
	["ZONE_TEXT_TO_MAP_ID"] = {};
	["ALT_ZONE_TEXT_TO_MAP_ID"] = {
		["Gates of Ahn'Qiraj"] = 1451,
		["The Temple of Atal'Hakkar"] = 220,
		["The Battle for Mount Hyjal"] = 329,
		["The Eye"] = 334,
	};
	
	-- Unobtainable Listing
	["UNOBTAINABLE_ITEM_TEXTURES"] = {
		"Interface\\FriendsFrame\\StatusIcon-DnD", 		-- No Hope
		"Interface\\FriendsFrame\\StatusIcon-Away", 	-- Little Hope
		"Interface\\FriendsFrame\\StatusIcon-Online",	-- There is Hope
		"Interface\\FriendsFrame\\StatusIcon-Offline",	-- Seasonal
	};
	["UNOBTAINABLE_ITEM_REASONS"] = {
		[1] = {1, "|CFFFF0000This was never available to players.|r", "Never Implemented"},
		[2] = {1, "|CFFFF0000This has been removed from the game.|r", "Removed From Game"},
		[3] = {2, "|CFFFF0000This is locked behind a paywall such as the in-game shop, another Blizzard product, or the Recruit-A-Friend service.|r", "Blizzard Balance", nil, nil, "\n \n|CFFFFAAAAThe act of encouraging the use of real money in the Classic version of the game is widely frowned upon. Participate in this content at your own risk.|r" },
		[4] = {3, "|CFFFF0000This can no longer be purchased or unlocked as Transmog unless you have the required PvP Title, required PvP Rating or were in the Top % of that season.|r", "PvP Elite/Gladiator"},
		
		-- Future Content Releases
		[11] = {2, "|CFFAAFFAAThis was not available until Phase 1 of WoW Classic.|r", "Phase 1", 1130100, 11301, "\n \n|CFFFFAAAAIncluded Molten Core and Onyxia's Lair.|r" },
		[1101] = {2, "|CFFAAFFAAThis became available with the Dire Maul Phase Release of WoW Classic.|r", "Dire Maul", 11301, 11301 },
		[12] = {2, "|CFFAAFFAAThis was not available until Phase 2 of WoW Classic.|r", "Phase 2", 11301, 11302, "\n \n|CFFFFAAAAIncluded World PvP and PvP Honor Titles.|r" },
		[13] = {2, "|CFFAAFFAAThis was not available until Phase 3 of WoW Classic.|r", "Phase 3", 11301, 11303, "\n \n|CFFFFAAAAIncluded Blackwing Lair and the completion for Thunderfury.|r" },
		[14] = {2, "|CFFAAFFAAThis was not available until Phase 4 of WoW Classic.|r", "Phase 4", 11301, 11304, "\n \n|CFFFFAAAAIncluded Zul'Gurub and the World Dragons.|r" },
		[15] = {2, "|CFFAAFFAAThis was not available until Phase 5 of WoW Classic.|r", "Phase 5", 11301, 11305, "\n \n|CFFFFAAAAIncluded Ahn'Qiraj, which was pre-faced by a unique opening event.|r" },
		[1501] = {2, "|CFFAAFFAAThis was only available during the Ahn'Qiraj War Effort.|r", "AQ War Effort", 11301, nil, "\n \n|CFFFFAAAAIf the War Effort has been completed on your server, simply turn this off.|r" },
		[1502] = {2, "|CFFAAFFAAThis was only available up until the Scarab Lords on your server have rung the gong.|r", "Gates Unopened", 11301, nil, "\n \n|CFFFFAAAAIf the Gates of Anh'Qiraj have been opened on your server, simply turn this off.|r" },
		[1503] = {2, "|CFFAAFFAAThis was only available during the 10 Hour War after the Scarab Lord(s) bang the gong.|r", "10-Hour War", 11301, nil, "\n \n|CFFFFAAAAIf the Gates of Anh'Qiraj have been opened on your server, simply turn this off.|r" },
		[1504] = {2, "|CFFAAFFAAThis became available near the end of Phase 5 in order to provide Catch-Up Nature Resist gear for those still working on AQ40.|r", "Catch-Up", 11301, 11306, "\n \n|CFFFFAAAAIf the Catch-Up Gear is available, simply turn this on.|r" },
		[16] = {2, "|CFFAAFFAAThis was not available until Phase 6 of WoW Classic.|r", "Phase 6", 11301, 11306, "\n \n|CFFFFAAAAIncluded Naxxramas, which was heralded by the Scourge Invasion.|r" },
		[1601] = {2, "|CFFAAFFAAThis was only available during the Scourge Invasions.|r", "Scourge Invasion", 11301, nil, "\n \n|CFFFFAAAAIf both Scourge Invasions have been completed on your server, simply turn this off.|r" },
		[1602] = {2, "|CFFAAFFAAThis was only available during the Silithyst Must Flow World PVP Event.|r", "Silithyst", 11301, 11306, "\n \n|CFFFFAAAAIf the World PVP Event is available, simply turn this on.|r" },
		[1603] = {2, "|CFFAAFFAAThis was only available after the start of Classic Era.|r", "Classic Era", 11301, 11307, "\n \n|CFFFFAAAAIf the Classic Era has begun, simply turn this on.|r" },

		[17] = {2, "|CFFAAFFAAThis was not available until Phase 1 of TBC Classic.|r", "Phase 1", 20501, 20501, "\n \n|CFFFFAAAAIncluded Karazhan, Magtheridon's Lair, and Gruul's Lair.|r" },
		[1701] = {2, "|CFFAAFFAAThis was only available during the Opening of the Dark Portal event before the launch of TBC.|r", "Dark Portal Opens", 20501, nil, "\n \n|CFFFFAAAAIf the Dark Portal has been opened on your server, simply turn this off.|r" },
		[18] = {2, "|CFFAAFFAAThis was not available until Phase 2 of TBC Classic.|r", "Phase 2", 20501, 20502, "\n \n|CFFFFAAAAIncluded Serpentshrine Cavern, Tempest Keep: The Eye, and Swift Druid Flight Forms.\n\nThe Great Herb/Mining Node War had officially begun.|r" },
		[1801] = {2, "|CFFAAFFAAThis became available with the Ogri'la Faction during TBC Classic.|r", "Ogri'la", 20501, 20502, "\n \n|CFFFFAAAAIf the Ogri'la Faction is available on your server, simply turn this on.|r" },
		[1802] = {2, "|CFFAAFFAAThis became available with the Skyguard Faction during TBC Classic.|r", "Skyguard", 20501, 20502, "\n \n|CFFFFAAAAIf the Skyguard Faction is available on your server, simply turn this on.|r" },
		[19] = {2, "|CFFAAFFAAThis was not available until Phase 3 of TBC Classic.|r", "Phase 3", 20501, 20503, "\n \n|CFFFFAAAAIncluded Hyjal Summit and the Black Temple in addition to the vast majority of end game daily / faction content.|r" },
		[1901] = {2, "|CFFAAFFAAThis became available with the Netherwing Faction during TBC Classic.|r", "Netherwing", 20501, 20503, "\n \n|CFFFFAAAAIf the Netherwing Faction is available on your server, simply turn this on.|r" },
		[1902] = {2, "|CFFAAFFAAThe wielder of this Glaive was prepared!|r", "Glaive Prio", 20501, 30400, "\n \n|CFFFFAAAADue to the exclusivity of the Warglaives and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after wrath prepatch.\n\nIf you do actually have Glaive prio, simply turn this on.|r" },
		[20] = {2, "|CFFAAFFAAThis was not available until Phase 4 of TBC Classic.|r", "Phase 4", 20501, 20504, "\n \n|CFFFFAAAAIncluded Zul'Aman.|r" },
		[21] = {2, "|CFFAAFFAAThis was not available until Phase 5 of TBC Classic.|r", "Phase 5", 20501, 20504, "\n \n|CFFFFAAAAIncluded Sunwell Plateau and the Isle of Quel'Danas daily content.|r" },
		[2101] = {2, "|CFFAAFFAAThis was not available until the Sanctum on the Isle of Quel'Danas was completed.|r", "Sanctum", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Sanctum and has begun working on the Amory and Portal on your server, simply turn this on.|r" },
		[2102] = {2, "|CFFAAFFAAThis was not available until the Portal on the Isle of Quel'Danas was completed.|r", "Portal", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Portal on your server, simply turn this on.|r" },
		[2103] = {2, "|CFFAAFFAAThis was not available until the Armory on the Isle of Quel'Danas was completed.|r", "Armory", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Armory and has begun working on the Harbor and Anvil on your server, simply turn this on.|r" },
		[2104] = {2, "|CFFAAFFAAThis was not available until the Anvil on the Isle of Quel'Danas was completed.|r", "Anvil", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Anvil on your server, simply turn this on.|r" },
		[2105] = {2, "|CFFAAFFAAThis was not available until the Harbor on the Isle of Quel'Danas was completed.|r", "Harbor", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Harbor and has begun working on the Alch Lab and Monument on your server, simply turn this on.|r" },
		[2106] = {2, "|CFFAAFFAAThis was not available until the Monument on the Isle of Quel'Danas was completed.|r", "Monument", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Monument on your server, simply turn this on.|r" },
		[2107] = {2, "|CFFAAFFAAThis was not available until the Alch Lab on the Isle of Quel'Danas was completed.|r", "Alch Lab", 20501, 30400, "\n \n|CFFFFAAAAIf the Shattered Sun Offensive has already unlocked the Alch Lab on your server, simply turn this on.|r" },
		
		[30] = {2, "|CFFAAFFAAThis was not available until Phase 1 of Wrath Classic.|r", "Phase 1", 30400, 30400, "\n \n|CFFFFAAAAIncluded Naxxramas, Obsidian Sanctum, and Eye of Eternity.|r" },
		[3001] = {2, "|CFFAAFFAAThis was only available for the first player to do the thing on your realm!|r", "Realm First", 30400, nil, "\n \n|CFFFFAAAABut if you were realm first, good for you.|r" },
		[31] = {2, "|CFFAAFFAAThis was not available until Phase 2 of Wrath Classic.|r", "Phase 2", 30400, 30401, "\n \n|CFFFFAAAAIncluded Ulduar.|r" },
		[3101] = {2, "|CFFAAFFAAThe wielder of this Hammer was on time!|r", "Hammer Prio", 20501, nil, "\n \n|CFFFFAAAADue to the exclusivity of the Hammer and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after cata prepatch.\n\nIf you do actually have Hammer prio, simply turn this on.|r" },
		[32] = {2, "|CFFAAFFAAThis was not available until Phase 3 of Wrath Classic.|r", "Phase 3", 30400, 30402, "\n \n|CFFFFAAAAIncluded Trial of the Crusader.|r" },
		[33] = {2, "|CFFAAFFAAThis was not available until Phase 4 of Wrath Classic.|r", "Phase 4", 30400, 30403, "\n \n|CFFFFAAAAIncluded Icecrown Citadel.|r" },
		[3301] = {2, "|CFFAAFFAAThe wielder of this Axe silently mourns for all the people that don't have it.|r", "Shadowmourne Prio", 30400, 30403, "\n \n|CFFFFAAAADue to the exclusivity of Shadowmourne and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after cata prepatch.\n\nIf you do actually have Shadowmourne prio, simply turn this on.|r" },
		[34] = {2, "|CFFAAFFAAThis was not available until Phase 5 of Wrath Classic.|r", "Phase 5", 30400, 30404, "\n \n|CFFFFAAAAIncluded The Ruby Sanctum...?|r" },
		[35] = {2, "|CFFAAFFAAThis was not available until Phase 6 of Wrath Classic.|r", "Phase 6", 30400, 30404, "\n \n|CFFFFAAAAThe Elemental Unrest Pre-Expansion Event?|r" },
	};
};
app.L = L;

-- Crieve tested all professions in non-english locales and the skill was not detected without these.
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



if GetLocale() == "zhCN" or GetLocale() == "zhTW" then

-- General Text
L["TITLE"] = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r"
L["DESCRIPTION"] = '"你愚蠢地寻求自己的终结，厚颜无耻地无视了你无法理解的力量。你入侵了收集者的领域并为此努力。现在只有一条路可走了——这条孤独的路……该死的路。"'

-- Instructional Text 指引
L["MINIMAP_MOUSEOVER_TEXT"] = "右键：改变设置\n左键：打开主列表\nCtrl + 左键：打开迷你列表\nShift + 左键：刷新收藏"
L["TOP_ROW_INSTRUCTIONS"] = "|cff3399ff按住并拖拽左键：移动|r\n|cff3399ff右键：打开设置|r\n|cff3399ffShift + 左键：刷新收藏|r"
L["OTHER_ROW_INSTRUCTIONS"] = "|cff3399ff左键：展开／折叠|r\n|cff3399ff右键：弹出迷你列表|r\n|cff3399ffShift + 左键：刷新收藏|r\n|cff3399ffAlt + 右键：设置路径点|r"
L["TOP_ROW_INSTRUCTIONS_AH"] = "|cff3399ff按住并拖拽左键：移动|r\n|cff3399ff右键：打开设置|r\n|cff3399ffShift + 左键：Search the Auction House|r"
L["OTHER_ROW_INSTRUCTIONS_AH"] = "|cff3399ff左键：展开／折叠|r\n|cff3399ff右键：弹出迷你列表|r\n|cff3399ffShift + 左键：Search the Auction House|r"

-- Binding Localizations 按键设置
L["TOGGLE_ACCOUNT_MODE"] = "切换账号模式"
L["TOGGLE_DEBUG_MODE"] = "切换调试模式"
L["PREFERENCES"] = "偏好"
L["TOGGLE_COMPLETEDTHINGS"] = "Toggle Completed Things (Both)"
L["TOGGLE_COMPLETEDGROUPS"] = "Toggle Completed Groups"
L["TOGGLE_COLLECTEDTHINGS"] = "Toggle Collected Things"
L["TOGGLE_BOEITEMS"] = "切换装绑/账号绑定物品"
L["TOGGLE_SOURCETEXT"] = "Toggle Source Locations"
L["MODULES"] = "模块"
L["TOGGLE_MAINLIST"] = "打开关闭主列表"
L["TOGGLE_MINILIST"] = "打开关闭迷你列表"
L["TOGGLE_PROFESSION_LIST"] = "Toggle ATT Profession List"
L["TOGGLE_RAID_ASSISTANT"] = "Toggle ATT Raid Assistant"
L["TOGGLE_RANDOM"] = "Toggle ATT Random"
L["REROLL_RANDOM"] = "Reroll the Random Selection"

-- Event Text 事件
L["ITEM_ID_ADDED"] = "%s (%d) 已加入收藏。"
L["ITEM_ID_ADDED_RANK"] = "%s (%d) [等级%d] 已加入收藏。"
L["ITEM_ID_ADDED_MISSING"] = "%s (%d) 已加入收藏。在数据库中未找到，请向作者提交报告！"
L["ITEM_ID_ADDED_SHARED"] = "%s (%d) [+%d] 已加入收藏。"
L["ITEM_ID_ADDED_SHARED_MISSING"] = "%s (%d) [+%d] 已加入收藏。在数据库中未找到，请向作者提交报告！"
L["ITEM_ID_REMOVED"] = "%s (%d) 已从收藏中移除。"
L["ITEM_ID_REMOVED_SHARED"] = "%s (%d) [+%d] 已从收藏中移除。"

-- Tooltip Text 鼠标提示
L["DROP_RATE"] = "掉率"
L["QUEST_GIVER"] = "任务发放者"
L["LOCKOUT"] = "Lockout"
L["REQUIRES"] = "要求"
L["REQUIRES_LEVEL"] = "要求等级"

-- Filter Text
L["CREATURE_ID"] = "生物ID"
L["CURRENCY_ID"] = "货币ID"
L["FILTER_ID"] = "过滤器ID"
L["ITEM_ID"] = "物品ID"
L["FACTION_ID"] = "阵营ID"
L["MAP_ID"] = "地图ID"
L["NPC_ID"] = "NPC ID"
L["OBJECT_ID"] = "Object ID"
L["QUEST_ID"] = "任务ID"
L["SPELL_ID"] = "法术ID"
L["iLvl"] = "物品等级"

-- Icons and Collection Text
L["COLLECTED"] = "|T" .. app.asset("known") .. ":0|t |c" .. app.Colors.Completed .. "已收集|r" -- Acquired the colors and icon from CanIMogIt.
L["COLLECTED_APPEARANCE"] = "|T" .. app.asset("known_circle") .. ":0|t |c" .. app.Colors.Completed .. "已收集*|r" -- Acquired the colors and icon from CanIMogIt.
L["NOT_COLLECTED"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未收集|r" -- Acquired the colors and icon from CanIMogIt.
L["COMPLETE"] = "|T" .. app.asset("known_green") .. ":0|t |cff6dce47已完成|r" -- Acquired the colors and icon from CanIMogIt.
L["INCOMPLETE"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333未完成|r" -- Acquired the colors and icon from CanIMogIt.
L["KNOWN_ON_CHARACTER"] = "|T" .. app.asset("known") .. ":0|t |c" .. app.Colors.Completed .. "当前角色已知|r"
L["UNKNOWN_ON_CHARACTER"] = "|T" .. app.asset("unknown") .. ":0|t |cffff9333当前角色未知|r"
end