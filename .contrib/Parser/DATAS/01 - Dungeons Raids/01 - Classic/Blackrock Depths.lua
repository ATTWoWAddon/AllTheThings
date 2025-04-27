-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});
local REPUTATION_FROM_CORES, REPUTATION_FROM_LEATHER, REPUTATION_FROM_DARKIRON = 500, 350, 75;	-- These are the reputation values after TBC, other than for Classic.
-- #if BEFORE TBC
-- Reputation in Classic
REPUTATION_FROM_CORES = 200;
REPUTATION_FROM_LEATHER = 150;
REPUTATION_FROM_DARKIRON = 50;
-- #else
-- #if ANYCLASSIC
-- #if AFTER CATA
-- Reputation in Cata Classic
-- CRIEVE NOTE: Not sure if it is indended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
REPUTATION_FROM_CORES = 2200;
REPUTATION_FROM_LEATHER = 1540;
REPUTATION_FROM_DARKIRON = 300;
-- #endif
-- #endif
-- #endif
ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)",]] .. REPUTATION_FROM_CORES .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)",]] .. REPUTATION_FROM_LEATHER .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)",]] .. REPUTATION_FROM_DARKIRON .. [[, 42000);
	end
end]];
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(228, {	-- Blackrock Depths
		-- #if BEFORE MOP
		["lore"] = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		["zone-text-areaID"] = 1584,	-- Blackrock Depths
		-- #endif
		["description"] = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
		["coord"] = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
		["mapID"] = BLACKROCK_DEPTHS,
		["maps"] = { BLACKROCK_DEPTHS_LEVEL2 },
		["lvl"] = 42,
		["groups"] = {
			n(FACTIONS, {
				faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
					["maps"] = { SEARING_GORGE },
					["OnTooltip"] = [[_.OnTooltipDB.ThoriumBrotherhood]],
				}),
			}),
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84338, {	-- A Binding Contract
					["providers"] = {
						{ "n",  12944 },	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
						{ "i", 227730 },	-- Thorium Brotherhood Contract
					},
					["description"] = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
					["requireSkill"] = BLACKSMITHING,
					["cost"] = { { "i", 17203, 1 } },	-- Sulfuron Ingot
					["timeline"] = { ADDED_1_15_3 },
					["lvl"] = 60,
					["groups"] = {
						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
					},
				})),
				-- #endif
				q(7604, {	-- A Binding Contract
					["providers"] = {
						{ "n", 12944 },	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
						{ "i", 18628 },	-- Thorium Brotherhood Contract
					},
					["description"] = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
					["requireSkill"] = BLACKSMITHING,
					["cost"] = { { "i", 17203, 1 } },	-- Sulfuron Ingot
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["lvl"] = lvlsquish(60, 60, 20),
					["groups"] = {
						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				q(4264, {	-- A Crumpled Up Note
					["provider"] = { "i", 11446 },	-- A Crumpled Up Note
					["sourceQuest"] = 4242,	-- Abandoned Hope
					-- #if BEFORE 3.0.2
					["description"] = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					-- #endif
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(4282, {	-- A Shred of Hope
					["qg"] = 9023,	-- Marshal Windsor
					["sourceQuest"] = 4264,	-- A Crumpled Up Note
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Marshal Windsor's Lost Information
							["provider"] = { "i", 11464 },	-- Marshal Windsor's Lost Information
						}),
						objective(2, {	-- 0/1 Marshal Windsor's Lost Information
							["provider"] = { "i", 11465 },	-- Marshal Windsor's Lost Information
						}),
					},
				}),
				q(4022, {	-- A Taste of Flame (1/2) (A)
					["qg"] = 9459,	-- Cyrus Therepentous
					["sourceQuest"] = 3481,	-- Trinkets...
					["altQuests"] = { 4023 },	-- A Taste of Flame
					-- #if BEFORE 4.0.3
					["description"] = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					-- #endif
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 10575, 1 } },	-- Black Dragonflight Molt
					["lvl"] = 52,
				}),
				q(4023, {	-- A Taste of Flame (1/2) (B)
					["qg"] = 9459,	-- Cyrus Therepentous
					["altQuests"] = { 4022 },	-- A Taste of Flame (1/2) (A)
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Black Dragonflight Molt
							["provider"] = { "i", 10575 },	-- Black Dragonflight Molt
							["coord"] = { 93.2, 32.6, BURNING_STEPPES },
							["cr"] = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
						}),
					},
				}),
				q(4024, {	-- A Taste of Flame (2/2)
					["qg"] = 9459,	-- Cyrus Therepentous
					["sourceQuests"] = {
						4022,	-- A Taste of Flame (1/2) (A)
						4023,	-- A Taste of Flame (1/2) (B)
					},
					["coord"] = { 95.09, 31.56, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Encased Fiery Essence
							["provider"] = { "i", 11230 },	-- Encased Fiery Essence
							["cost"] = { { "i", 11231, 1 } },	-- Altered Black Dragonflight Molt
							["cr"] = 9016,	-- Bael'Gar
						}),
						i(12066, {	-- Shaleskin Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12082, {	-- Wyrmhide Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12083, {	-- Valconian Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4242, {	-- Abandoned Hope
					["qg"] = 9023,	-- Marshal Windsor
					["sourceQuest"] = 4241,	-- Marshal Windsor
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12018, {	-- Conservator Helm
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(12021, {	-- Shieldplate Sabatons
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(12041, {	-- Windshear Leggings
							["timeline"] = { REMOVED_3_0_2 },
						}),
					},
				}),
				q(3981, {	-- Commander Gor'shak
					["qg"] = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					["sourceQuest"] = 3906,	-- Disharmony of Flame
					["coord"] = { 5.8, 47.6, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(3801, {	-- Dark Iron Legacy (1/2)
					["qg"] = 8888,	-- Franclorn Forgewright
					-- #if BEFORE 4.0.3
					["description"] = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKROCK_MOUNTAIN },
					["lvl"] = 48,
				}),
				q(3802, {	-- Dark Iron Legacy (2/2)
					["providers"] = {
						{ "n",   8888 },	-- Franclorn Forgewright
						{ "o", 164689 },	-- Monument of Franclorn Forgewright
					},
					["sourceQuest"] = 3801,	-- Dark Iron Legacy (1/2)
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKROCK_MOUNTAIN },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Ironfel
							["provider"] = { "i", 10999 },	-- Ironfel
							["cr"] = 9056,	-- Fineous Darkvire <Chief Architect>
						}),
						i(11000, {	-- Shadowforge Key
							["timeline"] = { DELETED_4_0_3 },
						}),
					},
				}),
				q(3906, {	-- Disharmony of Flame
					["qg"] = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					["coord"] = { 3.3, 48.3, BADLANDS },
					["maps"] = { BLACKROCK_MOUNTAIN },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							["provider"] = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(3907, {	-- Disharmony of Fire
					["qg"] = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					["sourceQuest"] = 3906,	-- Disharmony of Flame
					["coord"] = { 3.3, 48.3, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Incendius slain
							["provider"] = { "n", 9017 },	-- Lord Incendius
						}),
						objective(2, {	-- 0/1 Tablet of Kurniya
							["provider"] = { "i", 11126 },	-- Tablet of Kurniya
						}),
						i(12112, {	-- Crypt Demon Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12114, {	-- Nightfall Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12115, {	-- Stalwart Clutch
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12113, {	-- Sunborne Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4182, {	-- Dragonkin Menace
					["qg"] = 9562,	-- Helendis Riverhorn
					-- #if BEFORE 3.0.2
					["description"] = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					-- #endif
					["coord"] = { 85.8, 69.0, BURNING_STEPPES },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/15 Black Broodling slain
							["provider"] = { "n", 7047 },	-- Black Broodling
						}),
						objective(2, {	-- 0/10 Black Dragonspawn slain
							["provider"] = { "n", 7040 },	-- Black Dragonspawn
						}),
						objective(3, {	-- 0/1 Black Drake slain
							["provider"] = { "n", 7044 },	-- Black Drake
						}),
						objective(4, {	-- 0/4 Black Wyrmkin slain
							["provider"] = { "n", 7041 },	-- Black Wyrmkin
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(82062, {	-- Ever After
					["qg"] = 222530,	-- Rugged Traveler
					["description"] = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
					["timeline"] = { REMOVED_2_0_1 },
					["lvl"] = 48,
					["groups"] = {
						i(221316, {	-- Premo's Poise-Demanding Uniform
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(221315, {	-- Rainbow Generator
							["timeline"] = { REMOVED_2_0_1 },
						}),
					},
				})),
				-- #endif
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- The Thorium Brotherhood, Exalted.
					["cost"] = { { "i", 11382, 1 } },	-- Blood of the Mountain
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- The Thorium Brotherhood, Exalted.
					["cost"] = { { "i", 17012, 2 } },	-- Core Leather
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- The Thorium Brotherhood, Exalted.
					["cost"] = { { "i", 11370, 10 } },	-- Dark Iron Ore
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- The Thorium Brotherhood, Exalted.
					["cost"] = { { "i", 17010, 1 } },	-- Fiery Core
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					["qg"] = 12944,	-- Lokhtos Darkbargainer
					["maxReputation"] = { FACTION_THORIUM_BROTHERHOOD, EXALTED },	-- The Thorium Brotherhood, Exalted.
					["cost"] = { { "i", 17011, 1 } },	-- Lava Core
					["repeatable"] = true,
					["lvl"] = 60,
				}),
				q(4122, {	-- Grark Lorkrub
					["providers"] = {
						{ "n", 9080 },	-- Lexlort <Kargath Expeditionary Force>
						{ "i", 11286 },	-- Thorium Shackles
					},
					["sourceQuests"] = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					["coord"] = { 5.9, 47.6, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4126, {	-- Hurley Blackbreath
					["qg"] = 1267,	-- Ragnar Thunderbrew
					["sourceQuest"] = 4128,	-- Ragnar Thunderbrew
					["coord"] = { 46.8, 52.4, DUN_MOROGH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							["provider"] = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000, {	-- Limb Cleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11964, {	-- Swiftstrike Cudgel
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12003),	-- Dark Dwarven Lager
					},
				}),
				q(4263, {	-- Incendius!
					["qg"] = 9561,	-- Jalinda Sprig
					["sourceQuest"] = 4262,	-- Overmaster Pyron
					["coord"] = { 85.4, 70.1, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Incendius slain
							["provider"] = { "n", 9017 },	-- Lord Incendius
						}),
						i(12112, {	-- Crypt Demon Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12114, {	-- Nightfall Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12115, {	-- Stalwart Clutch
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12113, {	-- Sunborne Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4322, {	-- Jail Break!
					["qg"] = 9023,	-- Marshal Windsor
					["sourceQuest"] = 4282,	-- A Shred of Hope
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(12061, {	-- Blade of Reckoning
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(12062, {	-- Skilled Fighting Blade
							["timeline"] = { REMOVED_3_0_2 },
						}),
						i(12065, {	-- Ward of the Elements
							["timeline"] = { REMOVED_3_0_2 },
						}),
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					["qg"] = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					["sourceQuest"] = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					["coord"] = { 39.09, 56.19, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(4342, {	-- Kharan's Tale
					["qg"] = 9021,	-- Kharan Mighthammer
					["sourceQuest"] = 4341,	-- Kharan Mighthammer
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
					["provider"] = { "o", 164867 },	-- WANTED
					["coord"] = { 3.9, 47.4, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/10 Anvilrage Guardsman slain
							["provider"] = { "n", 8891 },	-- Anvilrage Guardsman
						}),
						objective(2, {	-- 0/10 Anvilrage Warden slain
							["provider"] = { "n", 8890 },	-- Anvilrage Warden
						}),
						objective(3, {	-- 0/10 Anvilrage Footman slain
							["provider"] = { "n", 8892 },	-- Anvilrage Footman
						}),
					},
				}),
				q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					["provider"] = { "o", 164868 },	-- KILL ON SIGHT
					["sourceQuest"] = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					["coord"] = { 3.9, 47.4, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/10 Anvilrage Medic slain
							["provider"] = { "n", 8894 },	-- Anvilrage Medic
						}),
						objective(2, {	-- 0/10 Anvilrage Soldier slain
							["provider"] = { "n", 8893 },	-- Anvilrage Soldier
						}),
						objective(3, {	-- 0/10 Anvilrage Officer slain
							["provider"] = { "n", 8895 },	-- Anvilrage Officer
						}),
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					["sourceQuest"] = 4133,	-- Vivian Lagrave
					["coord"] = { 2.9, 47.8, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							["provider"] = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000, {	-- Limb Cleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11964, {	-- Swiftstrike Cudgel
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4241, {	-- Marshal Windsor
					["qg"] = 9560,	-- Marshal Maxwell
					["sourceQuest"] = 4224,	-- The True Masters (6/6)
					["coord"] = { 84.74, 69.02, BURNING_STEPPES },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				-- Crieve NOTE: If a Blizzard Dev ever reads this, please know that this is why I have trust issues.
				-- #if BEFORE SHADOWLANDS
				q(28258, {	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					["qgs"] = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					["coords"] = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28302, {	-- Meet with Avaros Dawnglaive [SL+] / Meet with Sunwalker Atohmo
					["qgs"] = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
				}),
				q(28303, {	-- Meet With Avaros Dawnglaive [SL+] / Meet with Master Pyreanor
					["qgs"] = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28260, {	-- Meet with Dalgrun Steelpine [SL+] / Meet with Wulf Hansreim
					["qgs"] = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					["coords"] = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				q(28259, {	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					["qg"] = 5173,	-- Alexander Calder
					["coord"] = { 50.2, 6.8, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #if AFTER SHADOWLANDS
				q(28268, {	-- Meet with Ezul'aan [SL+] / Meet with Lord Grayson Shadowbreaker
					["qgs"] = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					["coords"] = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28287, {	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					["qgs"] = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					["coords"] = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28300, {	-- Meet with Feenix Arcshine [SL+] / Meet with Ureda
					["qgs"] = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					["coords"] = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28263, {	-- Meet with Frazzle Frostfingers [SL+] / Meet with Maginor Dumas
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28285, {	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					["qgs"] = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					["coords"] = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28301, {	-- Meet with Hretar Riverspeaker [SL+] / Meet with Terga Earthbreaker
					["qgs"] = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					["coords"] = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER WOD
				q(28299, {	-- Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+] / Meet with Zevrost
					["qgs"] = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					["coords"] = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28268, {	-- Meet with Lord Grayson Shadowbreaker / Meet with Ezul'aan [SL+]
					["qgs"] = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					["coords"] = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28262, {	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					["qgs"] = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					["coords"] = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28263, {	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28303, {	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					["qgs"] = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28287, {	-- Meet with Mulric Boldrock [SL+] / Meet with Farseer Umbrua
					["qgs"] = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					["coords"] = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28297, {	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					["qgs"] = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					["coords"] = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28285, {	-- Meet with Patrice Lancaster [SL+] / Meet with High Priestess Laurena
					["qgs"] = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					["coords"] = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28258, {	-- Meet with Signilda Hardforge [SL+] / Meet with Ander Germaine
					["qgs"] = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					["coords"] = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28302, {	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					["qgs"] = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					["coords"] = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28297, {	-- Meet with Tamanji [SL+] / Meet with Ormak Grimshot
					["qgs"] = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					["coords"] = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28301, {	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					["qgs"] = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					["coords"] = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28300, {	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					["qgs"] = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					["coords"] = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28262, {	-- Meet with Veruca Darkstream [SL+] / Meet with Lord Tony Romano
					["qgs"] = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					["coords"] = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28260, {	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					["qgs"] = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					["coords"] = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(28299, {	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					["qgs"] = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					["coords"] = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #endif






				q(4132, {	-- Operation: Death to Angerforge
					["qg"] = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					["sourceQuest"] = 4121,	-- Precarious Predicament
					["coord"] = { 5.8, 47.5, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 General Angerforge slain
							["provider"] = { "n", 9033 },	-- General Angerforge
						}),
						i(12059, {	-- Conqueror's Medallion
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4262, {	-- Overmaster Pyron
					["qg"] = 9561,	-- Jalinda Sprig
					["coord"] = { 85.4, 70.1, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKROCK_MOUNTAIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							["provider"] = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(4121, {	-- Precarious Predicament
					["qg"] = 9520,	-- Grark Lorkrub
					["sourceQuest"] = 4122,	-- Grark Lorkrub
					["coord"] = { 40.2, 34.2, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Thorium Shackles
							["provider"] = { "i", 11286 },	-- Thorium Shackles
						}),
						objective(2, {	-- Prisoner Transport
							["provider"] = { "i", 11286 },	-- Thorium Shackles
						}),
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					["qg"] = 9540,	-- Enohar Thunderbrew
					["coord"] = { 63.6, 20.6, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(4136, {	-- Ribbly Screwspigot
					["qg"] = 9544,	-- Yuka Screwspigot
					["sourceQuest"] = 4324,	-- Yuka Screwspigot
					["coord"] = { 66.1, 21.9, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Ribbly's Head
							["provider"] = { "i", 11313 },	-- Ribbly's Head
						}),
						i(11963, {	-- Penance Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12049, {	-- Splintsteel Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11865, {	-- Rancor Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4295, {	-- Rocknot's Ale
					["qg"] = 9503,	-- Private Rocknot
					["cost"] = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
					["repeatable"] = true,
				}),
				q(28401, {	-- Slaves of the Firelord (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					["sourceQuest"] = 28287,	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65640, {	-- Mask of the Farseer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65622, {	-- Headcover of the Farseer
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28465, {	-- Slaves of the Firelord (H)
					["qg"] = 72939,	-- Terga Earthbreaker
					["sourceQuest"] = 28301,	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 73.6, 43.3, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65643, {	-- Mask of the Speaker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65630, {	-- Headcover of the Speaker
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28399, {	-- Stones of Binding (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					["sourceQuest"] = 28259,	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["groups"] = {
						i(65621, {	-- Horns of Justified Sins
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28459, {	-- Stones of Binding (H)
					["qgs"] = {
						-- #IF AFTER SHADOWLANDS
						168623,	-- Kazak Darkscream
						-- #ELSE
						88705,	-- Kranosh
						-- #ENDIF
					},
					["sourceQuest"] = 28299,	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					["coords"] = {
						-- #IF AFTER SHADOWLANDS
						{ 74.6, 47.4, ORGRIMMAR },
						-- #ELSE
						{ 49.0, 55.2, ORGRIMMAR },
						-- #ENDIF
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65627, {	-- Horns of the Left Hand Path
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6402, {	-- Stormwind Rendezvous
					["qg"] = 9560,	-- Marshal Maxwell
					["sourceQuest"] = 4322,	-- Jail Break!
					["coord"] = { 84.7, 69.0, BURNING_STEPPES },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(4361, {	-- The Bearer of Bad News
					["qg"] = 9021,	-- Kharan Mighthammer
					["sourceQuest"] = 4342,	-- Kharan's Tale
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(28406, {	-- The Dark Iron Army (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164946,	-- Veruca Darkstream
						-- #else
						13283,	-- Lord Tony Romano
						-- #endif
					},
					["sourceQuest"] = 28262,	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 78.7, 70.6, STORMWIND_CITY },
						-- #else
						{ 79.6, 60.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["groups"] = {
						i(65624, {	-- SI:7 Special Issue Facemask
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28463, {	-- The Dark Iron Army (H)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						168598,	-- Thega Graveblade
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					["sourceQuest"] = 28298,	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 44.6, 61.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65629, {	-- Facemask of the Shattered Hand
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6501, {	-- The Dragon's Eye
					["providers"] = {
						{ "n", 1748 },	-- Highlord Bolvar Fordragon
						{ "i", 16662 },	-- Fragment of the Dragon's Eye
					},
					["sourceQuest"] = 6403,	-- The Great Masquerade
					-- #if BEFORE 3.0.2
					["description"] = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
					-- #endif
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(4002, {	-- The Eastern Kingdoms
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 4001,	-- What Is Going On? (2/2)
					["coord"] = { 31.61, 37.83, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(4362, {	-- The Fate of the Kingdom
					["qg"] = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					["sourceQuest"] = 4361,	-- The Bearer of Bad News
					["coord"] = { 39.09, 56.19, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							["provider"] = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(6403, {	-- The Great Masquerade
					["qg"] = 12580,	-- Reginald Windsor
					["sourceQuest"] = 6402,	-- Stormwind Rendezvous
					-- #if BEFORE 3.0.2
					["description"] = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					-- #endif
					["coord"] = { 64.7, 76.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(28394, {	-- The Golem Lord's Creations (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					["sourceQuest"] = 28260,	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65619, {	-- Helm of the Crown
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28461, {	-- The Golem Lord's Creations (H)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						168551,	-- Tamanji
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					["sourceQuest"] = 28297,	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65628, {	-- Helm of the Great Hunter
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4286, {	-- The Good Stuff
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.7, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/20 Dark Iron Fanny Pack
							["provider"] = { "i", 11468 },	-- Dark Iron Fanny Pack
						}),
						i(11883, {	-- A Dingy Fanny Pack
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4123, {	-- The Heart of the Mountain
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.9, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 The Heart of the Mountain
							["provider"] = { "i", 11309 },	-- The Heart of the Mountain
						}),
					},
				}),
				q(7201, {	-- The Last Element
					["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					["sourceQuest"] = 3906,	-- Disharmony of Flame
					["coord"] = { 2.9, 47.76, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Essence of the Elements
							["provider"] = { "i", 11129 },	-- Essence of the Elements
						}),
						i(12038, {	-- Lagrave's Seal
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4201, {	-- The Love Potion
					["qg"] = 9500,	-- Mistress Nagmara
					["maps"] = { AZSHARA, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/4 Gromsblood
							["provider"] = { "i", 8846 },	-- Gromsblood
						}),
						objective(2, {	-- 0/10 Giant Silver Vein
							["provider"] = { "i", 11405 },	-- Giant Silver Vein
							["coord"] = { 68, 17, AZSHARA },
							["crs"] = {
								6146,	-- Cliff Breaker
								6147,	-- Cliff Thunderer
								6148,	-- Cliff Walker
							},
						}),
						objective(3, {	-- 0/1 Nagmara's Filled Vial
							["provider"] = { "i", 11413 },	-- Nagmara's Filled Vial
							["cost"] = { { "i", 11412, 1 } },	-- Nagmara's Vial
							["coord"] = { 31, 49, UNGORO_CRATER },
						}),
						i(11962, {	-- Manacle Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11866, {	-- Nagmara's Whipping Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4004, {	-- The Princess Saved?
					["qg"] = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					["sourceQuest"] = 4003,	-- The Royal Rescue
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(12545, {	-- Eye of Orgrimmar
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12544, {	-- Thrall's Resolve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4363, {	-- The Princess's Surprise
					["qg"] = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					["sourceQuest"] = 4362,	-- The Fate of the Kingdom
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(12548, {	-- Magni's Will
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12543, {	-- Songstone of Ironforge
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28398, {	-- The Pyromancer's Grimoire (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164955,	-- Frazzle Frostfingers
						-- #else
						331,	-- Maginor Dumas
						-- #endif
					},
					["sourceQuest"] = 28263,	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					["coord"] = { 49.2, 87.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["groups"] = {
						i(65620, {	-- Hood of the Royal Wizard
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28458, {	-- The Pyromancer's Grimoire (H)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					["sourceQuest"] = 28300,	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 74.6, 43.5, ORGRIMMAR },
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65626, {	-- Hood of the Arcane Path
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4061, {	-- The Rise of the Machines (1/3)
					["qg"] = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					["coord"] = { 3.02, 47.81, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BURNING_STEPPES },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/10 Fractured Elemental Shard
							["provider"] = { "i", 11266 },	-- Fractured Elemental Shard
							["crs"] = {
								7032,	-- Greater Obsidian Elemental
								8981,	-- Malfunctioning Reaver
								7039,	-- War Reaver
							},
						}),
					},
				}),
				q(4062, {	-- The Rise of the Machines (2/3)
					["providers"] = {
						{ "n", 9079 },	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
						{ "i", 11267 },	-- Elemental Shard Sample
					},
					["sourceQuest"] = 4061,	-- The Rise of the Machines (1/3)
					["coord"] = { 3.02, 47.81, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4063, {	-- The Rise of the Machines (3/3)
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 4062,	-- The Rise of the Machines (2/3)
					["coord"] = { 25.95, 44.87, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Argelmach
							["provider"] = { "i", 11268 },	-- Head of Argelmach
						}),
						objective(2, {	-- 0/10 Intact Elemental Core
							["provider"] = { "i", 11269 },	-- Intact Elemental Core
						}),
						i(12110, {	-- Raincaster Drape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12109, {	-- Azure Moon Amice
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12111, {	-- Lavaplate Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(12108, {	-- Basaltscale Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4003, {	-- The Royal Rescue
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 4002,	-- The Eastern Kingdoms
					["coord"] = { 31.61, 37.83, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							["provider"] = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
					["qg"] = 8879,	-- Royal Historian Archesonus
					["coord"] = { 38.37, 55.31, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
					["qg"] = 8879,	-- Royal Historian Archesonus
					["sourceQuest"] = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					["coord"] = { 38.37, 55.31, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/12 Information Recovered
							["provider"] = { "o", 153556 },	-- Thaurissan Relic
						}),
						i(12102, {	-- Ring of the Aristocrat
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4083, {	-- The Spectral Chalice
					["provider"] = { "o", 164869 },	-- Spectral Chalice
					["description"] = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
					["requireSkill"] = MINING,
					["cost"] = {
						{ "i", 3577, 20 },	-- 20x Gold Bar
						{ "i", 7910, 2 },	-- 2x Star Ruby
						{ "i", 6037, 10 },	-- 10x Truesilver Bar
					},
					["cr"] = 9037,	-- Gloom'rel
					["lvl"] = 40,
					["groups"] = {
						r(14891),	-- Smelt Dark Iron
					},
				}),
				q(4183, {	-- The True Masters (1/6)
					["providers"] = {
						{ "n", 9562 },	-- Helendis Riverhorn
						{ "i", 11366 },	-- Helendis Riverhorn's Letter
					},
					["sourceQuest"] = 4182,	-- Dragonkin Menace
					["coord"] = { 85.8, 69.0, BURNING_STEPPES },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4184, {	-- The True Masters (2/6)
					["providers"] = {
						{ "n", 344 },	-- Magistrate Solomon
						{ "i", 11367 },	-- Solomon's Plea to Bolvar
					},
					["sourceQuest"] = 4183,	-- The True Masters (1/6)
					["coord"] = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4185, {	-- The True Masters (3/6)
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 4184,	-- The True Masters (2/6)
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Advice from Lady Prestor
							["provider"] = { "n", 1749 },	-- Lady Katrana Prestor
						}),
					},
				}),
				q(4186, {	-- The True Masters (4/6)
					["providers"] = {
						{ "n", 1748 },	-- Highlord Bolvar Fordragon
						{ "i", 11368 },	-- Bolvar's Decree
					},
					["sourceQuest"] = 4185,	-- The True Masters (3/6)
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4223, {	-- The True Masters (5/6)
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 4186,	-- The True Masters (4/6)
					["coord"] = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4224, {	-- The True Masters (6/6)
					["qg"] = 9560,	-- Marshal Maxwell
					["sourceQuest"] = 4223,	-- The True Masters (5/6)
					["coord"] = { 84.74, 69.02, BURNING_STEPPES },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Ragged John's Story
							["provider"] = { "n", 9563 },	-- Ragged John
							["coord"] = { 65.0, 23.8, BURNING_STEPPES },
						}),
					},
				}),
				q(4133, {	-- Vivian Lagrave
					["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					["coord"] = { 50.1, 68.0, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(28405, {	-- Weapons of Darkness (A)
					["qgs"] = {
						-- #if AFTER SHADOWLANDS
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					["sourceQuest"] = 28268,	-- Meet with Lord Grayson Shadowbreaker
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65623, {	-- Helm of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65641, {	-- Faceguard of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65646, {	-- Headguard of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- You get these when completing the quest (Only when completing Horde version specifically and relogging, gg Blizz)
						-- i(141976, {	-- Headguard of the Order
						-- 	["timeline"] = { ADDED_7_0_3 },
						-- }),
						-- i(141977, {	-- Faceguard of the Order
						-- 	["timeline"] = { ADDED_7_0_3 },
						-- }),
						-- i(141978, {	-- Helm of the Order
						-- 	["timeline"] = { ADDED_7_0_3 },
						-- }),
					},
				}),
				q(28466, {	-- Weapons of Darkness (Tauren)
					["qg"] = 44725,	-- Sunwalker Atohmo
					["sourceQuest"] = 28302,	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					["coord"] = { 45.2, 53.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { TAUREN },
					["groups"] = {
						i(65631, {	-- Helm of the Sunwalker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65644, {	-- Faceguard of the Sunwalker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65647, {	-- Headguard of the Sunwalker
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- You get these when completing the quest
						i(141976, {	-- Headguard of the Order
							["timeline"] = { ADDED_7_0_3 },
							["description"] = "May need to re-login to the game to properly trigger this collected from Blizzard.",
						}),
						i(141977, {	-- Faceguard of the Order
							["timeline"] = { ADDED_7_0_3 },
							["description"] = "May need to re-login to the game to properly trigger this collected from Blizzard.",
						}),
						i(141978, {	-- Helm of the Order
							["timeline"] = { ADDED_7_0_3 },
							["description"] = "May need to re-login to the game to properly trigger this collected from Blizzard.",
						}),
					},
				}),
				q(28473, {	-- Weapons of Darkness (Blood Elf)
					["qg"] = 23128,	-- Master Pyreanor
					["sourceQuest"] = 28303,	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					["coord"] = { 49.2, 71.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["groups"] = {
						i(65632, {	-- Helm of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65645, {	-- Faceguard of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65648, {	-- Headguard of the Order
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(25549),	-- Blood Knight Tabard
					},
				}),
				q(3982, {	-- What Is Going On? (1/2)
					["qg"] = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					["sourceQuest"] = 3981,	-- Commander Gor'shak
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(4001, {	-- What Is Going On? (2/2)
					["qg"] = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					["sourceQuest"] = 3982,	-- What Is Going On? (1/2)
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Information Gathered from Kharan
							["provider"] = { "n", 9021 },	-- Kharan Mighthammer
						}),
					},
				}),
				q(4324, {	-- Yuka Screwspigot
					["qg"] = 9706,	-- Yorba Screwspigot
					["coord"] = { 67.0, 24.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 48,
				}),
				q(28393, {	-- A Dangerous Alliance [A]
					["qgs"] = {
						-- #if BEFORE SHADOWLANDS
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					["sourceQuest"] = 28258,	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					["coords"] = {
						-- #if AFTER SHADOWLANDS
						{ 80.2, 70.2, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65618, {	-- Faceguard of the Crown
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65639, {	-- Headguard of the Crown
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28457, {	-- A Dangerous Alliance [H]
					["qg"] = 168596,	-- Gormok Ogrefist
					["sourceQuest"] = 28290,	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					["coord"] = { 73.6, 45.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65625, {	-- Faceguard of the Horde
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65642, {	-- Headguard of the Horde
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				-- #if AFTER SHADOWLANDS
				q(28304, {	-- Journey to Orgrimmar [Undead] (SL+) / Meet with Dark Cleric Cecille (Cata+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28307, {	-- Journey to Orgrimmar [Blood Elf] (SL+) / Meet with Tyelis (Cata+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Journey to Orgrimmar [Tauren] (SL+) / Meet with Seer Liwatha (Cata+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Journey to Orgrimmar [Troll] (SL+) / Meet with Shadow-Walker Zuru (Cata+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28323, {	-- Journey to Orgrimmar [Goblin] (SL+) / Meet with Brother Silverhallow (Cata+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28323, {	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28304, {	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28298, {	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					["qgs"] = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					["coords"] = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28290, {	-- Meet with Gormok Ogrefist (SL+) / Meet with Grezz Ragefist (Cata+)
					["qgs"] = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					["coords"] = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28290, {	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					["qgs"] = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					["coords"] = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SHADOWLANDS
				q(28298, {	-- Meet with Thega Graveblade (SL+) / Meet with Gordul (Cata+)
					["qgs"] = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					["coords"] = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SHADOWLANDS
				q(28307, {	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					["qgs"] = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { BLOODELF },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 20),
				}),
				-- #endif

				q(28475, {	-- Twilight Scheming [Blood Elf]
					["qg"] = 45337,	-- Tyelis
					["sourceQuest"] = 28307,	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					["coord"] = { 49.0, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65634),	-- Crown of the Sunchaser
					},
				}),
				q(28478, {	-- Twilight Scheming [Goblin]
					["qg"] = 45347,	-- Brother Silverhallow
					["sourceQuest"] = 28323,	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					["coord"] = { 37.8, 87.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { GOBLIN },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65637),	-- Crown of Golden Worship
					},
				}),
				q(28474, {	-- Twilight Scheming [Undead]
					["qg"] = 45339,	-- Dark Cleric Cecille
					["sourceQuest"] = 28304,	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					["coord"] = { 48.2, 72.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65633),	-- Crown of Forsaken Faith
					},
				}),
				q(28476, {	-- Twilight Scheming [Tauren]
					["qg"] = 44735,	-- Seer Liwatha
					["sourceQuest"] = 28308,	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					["coord"] = { 45.4, 53.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65635),	-- Crown of the Earthmother
						-- You get these when completing the quest
						i(141979),	-- Crown of the Hallowed
						i(141980),	-- Crown of the Hallowed
						i(141981),	-- Crown of the Hallowed
						i(141982),	-- Crown of the Hallowed
					},
				}),
				q(28477, {	-- Twilight Scheming [Troll]
					["qg"] = 45137,	-- Shadow-Walker Zuru
					["sourceQuest"] = 28309,	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					["coord"] = { 35.4, 69.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						i(65636),	-- Crown of the Shadow-Walker
					},
				}),
				q(28328, {	-- Twilight Scheming [Alliance]
					["providers"] = {
						-- #if ANYCLASSIC
						{ "n", 376 },	-- High Priestess Laurena
						-- #else
						{"n", 164949 },	-- Patrice Lancaster
						-- #endif
					},
					["coords"] = {
						-- #if ANYCLASSIC
						{ 49.6, 44.8, STORMWIND_CITY },
						-- #else
						{ 78.9, 69.8, STORMWIND_CITY },
						-- #endif
					},
					["sourceQuest"] = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { PRIEST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65616, {	-- Crown of the Hallowed
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- you are supposed to get these when doing the quest, but i completed it on 2 characters and haven't received them :) possible unknown race requirement?
						-- Crieve note: The following items are still sourceless on WoWHead, so it's quite possible the intent was to make versions for Allied Races, but Blizzard realized that'd be dumb and smacked the intern that was doing the dumb.
					--	i(141979),	-- Crown of the Hallowed
					--	i(141980),	-- Crown of the Hallowed
					--	i(141981),	-- Crown of the Hallowed
					--	i(141982),	-- Crown of the Hallowed
					},
				}),

				q(27569, {	-- Dark Iron Tacticians
					["qg"] = 45894,	-- Prospector Seymour
					["sourceQuest"] = 27568,	-- Infilitrating Shadowforge City [Alliance]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27568, {	-- Infiltrating Shadowforge City [Alliance]
					["qg"] = 45891,	-- Oralius
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27582, {	-- Infiltrating Shadowforge City [Horde]
					["qg"] = 45839,	-- Galamav the Marksman
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27565, {	-- Into the Prison [Alliance]
					["qg"] = 45892,	-- Jalinda Sprig
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27579, {	-- Into the Prison [Horde]
					["qg"] = 45821,	-- Tha'trak Proudtusk
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27585, {	-- The 109th Division
					["qg"] = 45820,	-- Razal'blade
					["sourceQuest"] = 27582,	-- Infiltrating Shadowforge City [Horde]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27596, {	-- The Heart of the Mountain
					["qg"] = 45850,	-- Maxwort Uberglint
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27603, {	-- The Sealed Gate
					["qg"] = 45849,	-- Tinkee Steamboil
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27567, {	-- Twilight?! No! [Alliance]
					["qg"] = 45898,	-- Kevin Dawson
					["sourceQuest"] = 27565,	-- Into the Prison [Alliance]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27581, {	-- Twilight?! No! [Horde]
					["qg"] = 45818,	-- Lexlort
					["sourceQuest"] = 27579,	-- Into the Prison [Horde]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27578, {	-- Morgan's Fruition
					["qg"] = 45890,   -- Marshal Maxwell
					["sourceQuest"] = 27573,	-- The Dark Iron Pact [Alliance]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65956),	-- Maxwell's Cloak
						i(65932),	-- Thaurissan's Breastplate
						i(65980),	-- Dark Iron Band
					},
				}),
				q(27593, {	-- Rebirth of the K.E.F
					["qg"] = 45840,	-- Warlord Goretooth
					["sourceQuest"] = 27591,	-- The Dark Iron Pact [Horde]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(68054),	-- Dark Iron Band
						i(68052),	-- Kargath Cloak
						i(68053),	-- Thaurissan's Breastplate
					},
				}),
				q(27573, {	-- The Dark Iron Pact [Alliance]
					["qg"] = 45899,	-- Mountaineer Orfus
					["sourceQuest"] = 27571,	-- The Grim Guzzler [Alliance]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27591, {	-- The Dark Iron Pact [Horde]
					["qg"] = 45824,	--  Thunderheart
					["sourceQuest"] = 27589,	-- The Grim Guzzler [Horde]
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(27571, {	-- The Grim Guzzler [Alliance]
					["qg"] = 45888,	-- Mayara Brightwing
					["sourceQuest"] = 27569,	-- Dark Iron Tacticians
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27589, {	-- The Grim Guzzler [Horde]
					["qg"] = 45817,	-- Hierophant Theodora Mulvadania
					["sourceQuest"] = 27585,	-- The 109th Division
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(VENDORS, {
				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					{	-- Neutral
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(20754, {	-- Lesser Mana Oil
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(20755, {	-- Formula: Wizard Oil
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
					},
					{	-- Friendly
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19444)),	-- Formula: Enchant Weapon - Strength (RECIPE!)
						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
						i(17018),	-- Pattern: Flarecore Gloves
						i(17023),	-- Pattern: Molten Helm (RECIPE!)
						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
						applyclassicphase(PHASE_FIVE, i(20761)),	-- Recipe: Transmute Elemental Fire (RECIPE!)
					},
					{	-- Honored
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19448)),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
						i(17017),	-- Pattern: Flarecore Mantle
						applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe
						applyclassicphase(PHASE_THREE_RECIPES, i(19330)),	-- Pattern: Lava Belt (RECIPE!)
						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19206)),	-- Plans: Dark Iron Helm (RECIPE!)
						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)

						-- #if SEASON_OF_DISCOVERY
						-- EPIC ITEM UPGRADES
						applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   17015, 1 },	-- Dark Iron Reaver
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227842, {	-- Ebon Fist
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19170, 1 },	-- Ebon Hand
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227823, {	-- Fine Flarecore Gloves
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16979, 1 },	-- Flarecore Gloves
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227839, {	-- Fine Flarecore Leggings
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19165, 1 },	-- Flarecore Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227830, {	-- Fine Flarecore Mantle
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16980, 1 },	-- Flarecore Mantle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227831, {	-- Fine Flarecore Robe
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19156, 1 },	-- Flarecore Robe
								{ "i", 227801, 20 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227821, {	-- Flamekissed Molten Helm
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16983, 1 },	-- Molten Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227833, {	-- Glaive of Obsidian Fury
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19167, 1 },	-- Blackfury
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227829, {	-- Hardened Black Dragonscale Boots
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16984, 1 },	-- Black Dragonscale Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227840, {	-- Implacable Blackguard
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19168, 1 },	-- Blackguard
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227828, {	-- Lavawalker Belt
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19149, 1 },	-- Lava Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227827, {	-- Molten Chain Girdle
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16989, 1 },	-- Fiery Chain Girdle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227834, {	-- Molten Chain Shoulders
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227825, {	-- Molten Dark Iron Destroyer
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   17016, 1 },	-- Dark Iron Destroyer
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227838, {	-- Shining Chromatic Gauntlets
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19157, 1 },	-- Chromatic Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227832, {	-- Tempered Black Amnesty
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19166, 1 },	-- Black Amnesty
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227820, {	-- Tempered Dark Iron Bracers
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   17014, 1 },	-- Dark Iron Bracers
								{ "i", 227801, 10 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227835, {	-- Tempered Dark Iron Gauntlets
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227824, {	-- Tempered Dark Iron Helm
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19148, 1 },	-- Dark Iron Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227836, {	-- Tempered Dark Iron Leggings
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   17013, 1 },	-- Dark Iron Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227837, {	-- Thick Corehound Belt
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   19162, 1 },	-- Corehound Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227822, {	-- Thick Corehound Boots
							["timeline"] = { ADDED_1_15_3 },
							["cost"] = {
								{ "i",   16982, 1 },	-- Corehound Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						-- #endif
					},
					{	-- Revered
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19449)),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings
						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19207)),	-- Plans: Dark Iron Gauntlets (RECIPE!)
						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
					},
					{	-- Exalted
						applyclassicphase(PHASE_THREE_RECIPES, i(19211)),	-- Plans: Blackguard (RECIPE!)
						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  i(20040)),	-- Plans: Dark Iron Boots (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_0 },
							-- #endif
						})),
					},
				})),
				n(9499, {	-- Plugger Spazzring
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
					i(11325),	-- Dark Iron Ale Mug
				}),
				n(45843, {	-- Yuka Screwspigot <Engineering Supplies>
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						i(10602),   -- Schematic: Deadly Scope (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11468),	-- Dark Iron Fanny Pack
				i(18945),	-- Dark Iron Residue
				applyclassicphase(PHASE_FIVE, i(22528)),	-- Dark Iron Scraps
				i(11129),	-- Essence of the Elements
				i(11269, {	-- Intact Elemental Core
					["crs"] = {
						8908,	-- Molten War Golem
						8906,	-- Ragereaver Golem
						8905,	-- Warbringer Construct
						8907,	-- Wrath Hammer Construct
					},
				}),
				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["cr"] = 8903,	-- Anvilrage Captain
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
					["cr"] = 8898,	-- Anvilrage Marshal
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
					["timeline"] = { ADDED_1_15_3 },
					["cr"] = 8903,	-- Anvilrage Captain
				})),
				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
					["timeline"] = { ADDED_1_15_3 },
					["cr"] = 8898,	-- Anvilrage Marshal
				})),
				-- #endif
				i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
					["description"] = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables.  It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it.  This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room.  When you walk into the room it will be in the back left corner where in between barrels.  There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r.  Once you enter the room you will continue straight until you see the ramp.  Instead of going down the ramp you will jump off the ledge to the right of the ramp.  After landing on the ground you will see the plans located here.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
					["description"] = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room.  They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room.  When you come across the first split into two rooms you will enter the room on the left.  They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					["provider"] = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
					["crs"] = {
						9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
					["cr"] = 8920,   -- Weapon Technician
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
					["cr"] = 8897,	-- Doomforge Craftsman
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
					["provider"] = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
					["description"] = "On the floor next to Golem Lord Argelmach.",
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot (RECIPE!)
					["cr"] = 8920,	-- Weapon Technician
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					-- #if AFTER 2.0.1
					["description"] = "This is now learned from the trainer.",
					-- #endif
					["timeline"] = { REMOVED_2_0_1 },
					["cr"] = 8900,	-- Doomforge Arcanasmith
				}),
				i(18661, {	-- Schematic: World Enlarger (RECIPE!)
					["cr"] = 8920,	-- Weapon Technician
				}),
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(DETENTION_BLOCK, {
				e(369, {	-- High Interrogator Gerstahn
					["creatureID"] = 9018,
					["groups"] = {
						i(11140),	-- Prison Cell Key
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223539, {	-- Enthralled Sphere
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11625, {	-- Enthralled Sphere
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11626),	-- Blackveil Cape
						i(11624),	-- Kentic Amice
						applyclassicphase(PHASE_FIVE, i(22240)),	-- Greaves of Withering Despaire
					},
				}),
				e(370, {	-- Lord Roccor
					["creatureID"] = 9025,
					["groups"] = {
						i(45050, {	-- Formula: Smoking Heart of the Mountain [BOP] (RECIPE!)
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(11813, {	-- Formula: Smoking Heart of the Mountain [BOE] (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(11631),	-- Stoneshell Guard
						i(11632),	-- Earthslag Shoulders
						applyclassicphase(PHASE_FIVE, i(22234)),	-- Mantle of Lost Hope
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
						i(11679),	-- Rubicund Armguards
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22397, {	-- Idol of Ferocity
							["timeline"] = { REMOVED_5_0_4 },
						})),
						i(11630, {	-- Rockshard Pellets
							["timeline"] = { DELETED_4_0_1 },
						}),
					},
				}),
				e(371, {	-- Houndmaster Grebmar
					["creatureID"] = 9319,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223540, {	-- Houndmaster's Bow
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11628, {	-- Houndmaster's Bow
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223982, {	-- Houndmaster's Rifle
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11629, {	-- Houndmaster's Rifle
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11627),	-- Fleetfoot Greaves
						i(11623),	-- Spritecaster Cape
					},
				}),
				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n(16059, {	-- Theldren
					["provider"] = { "o", 181074 },	-- Arena Spoils
					["description"] = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.",
					["cost"] = { { "i", 21986, 1 } },	-- Banner of Provocation
					["timeline"] = { REMOVED_4_0_3 },
					-- #if NOT ANYCLASSIC
					["u"] = CONDITIONALLY_AVAILABLE,
					-- #endif
					-- #if AFTER 4.0.3
					-- This init function unmarks the removed from game flag for folks with the brazier.
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
					-- #endif
					["groups"] = bubbleDown({
						["timeline"] = { REMOVED_4_0_3 },
						-- #if NOT ANYCLASSIC
						["u"] = CONDITIONALLY_AVAILABLE,
						-- #endif
					}, {
						i(22047),	-- Top Piece of Lord Valthalak's Amulet
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228700, {	-- Ironweave Mantle
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(22305, {	-- Ironweave Mantle
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_1,
								-- #endif
							},
						}),
						i(22317),	-- Lefty's Brass Knuckle
						i(22318),	-- Malgen's Long Bow
						i(22330),	-- Shroud of Arcane Mastery
					}),
				})),
				e(372, {	-- Ring of Law
					["description"] = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
					["creatureID"] = 10096,	-- High Justice Grimstone
					["groups"] = {
						n(9031, {	-- Anub'shiah
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223986, {	-- Graverot Cape
								["timeline"] = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11677, {	-- Graverot Cape
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_2 },
								-- #endif
							}),
							i(11678),	-- Carapace of Anub'shiah
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227957, {	-- Savage Gladiator Greaves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11731, {	-- Savage Gladiator Greaves
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11675),	-- Shadefiend Boots
						}),
						n(9029, {	-- Eviscerator
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223987, {	-- Splinthide Shoulders
								["timeline"] = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11685, {	-- Splinthide Shoulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_2 },
								-- #endif
							}),
							-- #if BEFORE 7.3.2
							i(11679),	-- Rubicund Armguards
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227961, {	-- Savage Gladiator Grips
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11730, {	-- Savage Gladiator Grips
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11686),	-- Girdle of Beastial Fury
						}),
						n(9027, {	-- Gorosh the Dervish
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227962, {	-- Flarethorn
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22266, {	-- Flarethorn
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							})),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227952, {	-- Savage Gladiator Chain
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11726, {	-- Savage Gladiator Chain
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if AFTER 7.3.2
							i(11662),	-- Ban'thok Sash
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
							applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
						}),
						n(9028, {	-- Grizzle
							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
							i(11702),	-- Grizzle's Skinner
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223544, {	-- Dregmetal Spaulders
								["timeline"] = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11722, {	-- Dregmetal Spaulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_2 },
								-- #endif
							}),
							i(11703),	-- Stonewall Girdle
							applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
						}),
						n(9032, {	-- Hedrum the Creeper
							i(11635),	-- Hookfang Shanker
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227955, {	-- Savage Gladiator Helm
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11729, {	-- Savage Gladiator Helm
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11633),	-- Spiderfang Carapace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223984, {	-- Silkweb Gloves
								["timeline"] = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11634, {	-- Silkweb Gloves
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_2 },
								-- #endif
							}),
						}),
						n(9030, {	-- Ok'thor the Breaker
							i(11665),	-- Ogreseer Fists
							i(11662),	-- Ban'thok Sash
							i(11728),	-- Savage Gladiator Leggings
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223985, {	-- Cyclopean Band
								["timeline"] = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11824, {	-- Cyclopean Band
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_2 },
								-- #endif
							}),
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(223265, {	-- Delirious Ancient
					["description"] = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
					["cost"] = {{ "i", 221418, 1 }},	-- Agamaggan's Roar
					["groups"] = {
						i(221271),	-- Ace of Wilds
						i(221262),	-- Wild Offering
					},
				})),
				-- #endif
				e(377, {	-- Bael'gar
					["creatureID"] = 9016,
					["groups"] = {
						i(11803),	-- Force of Magma
						i(11805),	-- Rubidium Hammer
						i(11807),	-- Sash of the Burning Heart
						i(11802),	-- Lavacrest Leggings
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
						-- #endif
					},
				}),
				e(374, {	-- Lord Incendius
					["creatureID"] = 9017,
					["groups"] = {
						applyclassicphase(PHASE_FIVE, i(21987)),	-- Incendicite of Incendius
						i(11126),	-- Tablet of Kurniya
						i(11766),	-- Flameweave Cuffs
						i(11764),	-- Cinderhide Armsplints
						i(11765),	-- Pyremail Wristguards
						i(11767),	-- Emberplate Armguards
						i(11768, {	-- Incendic Bracers
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							["description"] = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							["isBounty"] = true,
							-- #endif
							-- #endif
							["timeline"] = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						}),
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
					},
				}),
				e(376, {	-- Fineous Darkvire <Chief Architect>
					["creatureID"] = 9056,
					["groups"] = {
						i(11840),	-- Master Builder's Shirt
						i(11839),	-- Chief Architect's Monocle
						applyclassicphase(PHASE_FIVE, i(22223)),	-- Foreman's Head Protector
						i(151406, {	-- Belt of the Eminent Mason
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(11842),	-- Land Surveyor's Mantle
						i(11841),	-- Senior Designer's Pantaloons
					},
				}),
			}),
			n(SHADOWFORGE_CITY, {
				e(373, {	-- Pyromancer Loregrain
					["creatureID"] = 9024,
					["groups"] = {
						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223538, {	-- Kindling Stave
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11750, {	-- Kindling Stave
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11748),	-- Pyric Caduceus
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
							["timeline"] = { ADDED_1_15_2 },
						})),
						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11747, {	-- Flamestrider Robes
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11749, {	-- Searingscale Leggings
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
						-- #endif
					},
				}),
				e(375, {	-- Warder Stilgiss
					["creatureID"] = 9041,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223983, {	-- Arbiter's Blade
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11784, {	-- Arbiter's Blade
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11782),	-- Boreal Mantle
						applyclassicphase(PHASE_FIVE, i(22241)),	-- Dark Warder's Pauldrons
						i(11783),	-- Chillsteel Girdle
						i(151405, {	-- Cold-Forged Chestplate
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				n(9042, {	-- Verek
					i(11755),	-- Verek's Collar
					applyclassicphase(PHASE_FIVE, i(22242)),	-- Verek's Leash
				}),
				n(9476, {	-- Watchman Doomgrip
					["description"] = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
					["cost"] = { { "i", 11078, 12 } },	-- Relic Coffer Key
					["groups"] = {
						o(160836, {	-- Relic Coffer
							["description"] = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
							["groups"] = {
								i(11946),	-- Fire Opal Necklace
								i(11945),	-- Dark Iron Ring
								i(11938),	-- Sack of Gems
								i(11966),	-- Small Sack of Coins
								i(11937),	-- Fat Sack of Coins
								i(11944),	-- Dark Iron Baby Booties
							},
						}),
						o(165554, {	-- Heart of the Mountain
							["description"] = "This spawns after defeating Watchman Doomgrip.",
							["groups"] = {
								i(11309),	-- The Heart of the Mountain
							},
						}),
						o(161495, {	-- Secret Safe
							["description"] = "This spawns after defeating Watchman Doomgrip.",
							["groups"] = {
								-- #if BEFORE 1.13.5
								i(11923),	-- The Hammer of Grace
								i(11920),	-- Wraith Scythe
								i(11926),	-- Deathdealer Breastplate
								i(11929),	-- Haunting Specter Leggings
								-- #endif
								applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
								applyclassicphase(PHASE_FIVE, i(22255)),	-- Magma Forged Band
							},
						}),
					},
				}),
				o(164820, {	-- Dark Keeper Nameplate
					["description"] = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room.  When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r.  For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r.  When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r.  When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
					["crs"] = {
						9438,	-- Dark Keeper Bethek
						9442,	-- Dark Keeper Ofgut
						9443,	-- Dark Keeper Pelver
						9439,	-- Dark Keeper Uggel
						9437,	-- Dark Keeper Vorfalk
						9441,	-- Dark Keeper Zimrel
					},
					["groups"] = {
						o(160845, {	-- Dark Coffer
							["sharedDescription"] =
								-- #if BEFORE 4.0.3
								"Is used to turn in Librams.",
								-- #else
								"Was used to turn in Librams prior to Cataclysm, is now without any purpose.",
								-- #endif
							["cost"] = {{ "i", 11197, 1 }},	-- Dark Keeper Key
							["groups"] = {
								i(11752),	-- Black Blood of the Tormented
								i(11751),	-- Burning Essence
								i(11753),	-- Eye of Kajal
							},
						}),
						i(11197),	-- Dark Keeper Key
					},
				}),
				e(378, {	-- General Angerforge
					["creatureID"] = 9033,
					["groups"] = {
						i(11464),	-- Marshal Windsor's Lost Information
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227948, {	-- Angerforge's Battle Axe
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11816, {	-- Angerforge's Battle Axe
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						i(11932),	-- Guiding Stave of Wisdom
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227940, {	-- Lord General's Sword
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11817, {	-- Lord General's Sword
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						i(12557, {	-- Ebonsteel Spaulders
							["timeline"] = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						-- #endif
						i(11820),	-- Royal Decorated Armor
						i(11821),	-- Warstrife Leggings
						i(11810),	-- Force of Will
						-- #if BEFORE 1.13.5
						i(11815),	-- Hand of Justice
						-- #endif
					},
				}),
				e(379, {	-- Golem Lord Argelmach
					["creatureID"] = 8983,
					["groups"] = {
						i(11268),	-- Head of Argelmach
						i(11465),	-- Marshal Windsor's Lost Information
						applyclassicphase(TBC_PHASE_ONE, i(21956)),	-- Design: Dark Iron Scorpid
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227964, {	-- Luminary Kilt
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11823, {	-- Luminary Kilt
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227965, {	-- Omnicast Boots
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11822, {	-- Omnicast Boots
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11669),	-- Naglering
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227967, {	-- Second Wind
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11819, {	-- Second Wind
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				e(380, {	-- Hurley Blackbreath
					["creatureID"] = 9537,
					["provider"] = { "o", 164911 },	-- Thunderbrew Lager Keg
					["description"] = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
					["groups"] = {
						i(11312),	-- Lost Thunderbrew Recipe
						-- #if AFTER 7.3.2
						i(11922),	-- Blood-Etched Blade
						-- #endif
						i(18044),	-- Hurley's Tankard
						i(11735),	-- Ragefury Eyepatch
						i(151408, {	-- Dark Iron Dredger's Pauldrons
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(151407, {	-- Blackened Pit Trousers
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(18043),	-- Coal Miner Boots
						applyclassicphase(PHASE_FIVE, i(22275)),	-- Firemoss Boots
					},
				}),
				e(9543, {	-- Ribbly Screwspigot
					["creatureID"] = 9543,
					["description"] = "Speak to him to start the encounter.",
					["groups"] = {
						i(11313),	-- Ribbly's Head
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(2663, {	-- Ribbly's Bandolier
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(2662, {	-- Ribbly's Quiver
							["timeline"] = { REMOVED_4_0_1 },
						}),
						i(11742),	-- Wayfarer's Knapsack
					},
				}),
				e(383, {	-- Plugger Spazzring
					["creatureID"] = 9499,
					["groups"] = {
						i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
						i(12791),	-- Barman Shanker
						i(12793),	-- Mixologist's Tunic
						i(151410, {	-- Bottle-Popper Ring
							["timeline"] = { ADDED_7_3_0 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(220168, {	-- Triple-Brewed Molten Lager
							["timeline"] = { ADDED_1_15_2 },
						})),
						-- #endif
					},
				}),
				applyclassicphase(TBC_PHASE_FOUR, n(28067, {	-- Dark Iron Brewer
					["description"] = "Speak to him until he passes out, a Mug will appear on the ground",
					["timeline"] = { ADDED_2_4_3 },
					["groups"] = {
						i(38320),	-- Dire Brew
					},
				})),
				e(381, {	-- Phalanx
					["creatureID"] = 9502,
					["description"] = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
					["groups"] = {
						i(11744),	-- Bloodfist
						i(11743, {	-- Rockfist
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							["description"] = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							["isBounty"] = true,
							-- #endif
							-- #endif
							["timeline"] = { REMOVED_2_0_1, ADDED_10_1_7 },
						}),
						-- #if BEFORE 7.3.2
						i(11746),	-- Golem Skull Helm
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
						applyclassicphase(PHASE_FIVE, i(22204)),	-- Wristguards of Renown
						i(11745),	-- Fists of Phalanx
						i(151409, {	-- Ferrous Cord
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				e(384, {	-- Ambassador Flamelash
					["creatureID"] = 9156,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227970, {	-- Cape of the Fire Salamander
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227971, {	-- Molten Fists
							["timeline"] = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11809, {	-- Flame Wrath
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11808, {	-- Circle of Flame
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11812, {	-- Cape of the Fire Salamander
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11814, {	-- Molten Fists
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11832, {	-- Burst of Knowledge
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				n(8923, {	-- Panzor the Invincible
					["description"] = "This is a Rare Creature and, as such, is not always present.",
					["groups"] = {
						i(11786),	-- Stone of the Earth
						i(11785),	-- Rock Golem Bulwark
						i(11787),	-- Shalehusk Boots
						applyclassicphase(PHASE_FIVE, i(22245)),	-- Soot Encrusted Footwear
					},
				}),
				e(385, {	-- The Seven
					["creatureID"] = 9039,	-- Doom'rel
					["provider"] = { "o", 169243 },	-- Chest of The Seven
					["modelScale"] = 3,
					["groups"] = {
						-- #if BEFORE 7.3.2
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227963, {	-- Blood-Etched Blade
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11922, {	-- Blood-Etched Blade
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227960, {	-- Impervious Giant
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11921, {	-- Impervious Giant
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11923),	-- The Hammer of Grace
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227941, {	-- Wraith Scythe
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11920, {	-- Wraith Scythe
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227958, {	-- Ghostshroud
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11925, {	-- Ghostshroud
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227956, {	-- Deathdealer Breastplate
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11926, {	-- Deathdealer Breastplate
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11929),	-- Haunting Specter Leggings
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227959, {	-- Legplates of the Eternal Guardian
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11927, {	-- Legplates of the Eternal Guardian
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				e(386, {	-- Magmus
					["creatureID"] = 9938,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227974, {	-- Lavastone Hammer
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22208, {	-- Lavastone Hammer
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227978, {	-- Magmus Stone
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11935, {	-- Magmus Stone
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11746),	-- Golem Skull Helm
						i(151411, {	-- Molten-Warden Leggings
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(22275),	-- Firemoss Boots
						applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
							["timeline"] = { DELETED_5_0_4 },
						})),
						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
							["timeline"] = { DELETED_5_0_4 },
						})),
					},
				}),
				-- #if BEFORE 7.3.2
				n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
					["description"] = "In order to be eligible for this loot, you need to have completed The Fate of the Kingdom or The Royal Rescue. (Removed in 4.0.3)",
					["sourceQuests"] = {
						4362,	-- The Fate of the Kingdom
						4003,	-- The Royal Rescue
					},
					["groups"] = {
						i(12557, {	-- Ebonsteel Spaulders
							["timeline"] = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						i(12554, {	-- Hands of the Exalted Herald
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12556, {	-- High Priestess Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
					},
				}),
				-- #endif
				e(387, {	-- Emperor Dagran Thaurissan
					["creatureID"] = 9019,
					["groups"] = {
						ach(642, {	-- Blackrock Depths
							-- #if BEFORE WRATH
							["sourceQuests"] = {
								4362,	-- The Fate of the Kingdom
								4003,	-- The Royal Rescue
							},
							-- #endif
						}),
						ach(5051, {	-- Blackrock Depths Guild Run
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227981, {	-- Dreadforge Retaliatior
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11931, {	-- Dreadforge Retaliatior
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if BEFORE 7.3.2
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227982, {	-- Guiding Stave of Wisdom
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11932, {	-- Guiding Stave of Wisdom
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227991, {	-- Ironfoe
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11684, {	-- Ironfoe
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227984, {	-- Thaurissan's Royal Scepter
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11928, {	-- Thaurissan's Royal Scepter
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227988, {	-- Imperial Jewel
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11933, {	-- Imperial Jewel
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227985, {	-- The Emperor's New Cape
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11930, {	-- The Emperor's New Cape
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227980, {	-- Robes of the Royal Crown
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11924, {	-- Robes of the Royal Crown
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227986, {	-- Wristguards of Renown
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22204, {	-- Wristguards of Renown
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if AFTER 7.3.2
						i(12554, {	-- Hands of the Exalted Herald
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if BEFORE 1.13.5
						i(16724, {	-- Lightforge Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227987, {	-- Sash of the Grand Hunt
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22207, {	-- Sash of the Grand Hunt
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if AFTER 7.3.2
						i(12556, {	-- High Priestess Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227983, {	-- Dark Iron Seal
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11934),	-- Emperor's Seal
						-- #if AFTER 1.13.5
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228722, {	-- Hand of Justice
							["timeline"] = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11815, {	-- Hand of Justice
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						i(12033),	-- Thaurissan Family Jewels
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(228, {
			q(35899),	-- Blackrock Depths (Detention Block) Reward Quest - Normal completion
			q(35901),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35902),	-- Blackrock Depths (Upper City) Reward Quest - Normal completion
			q(35903),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35904),	-- Blackrock Depths (Everything) Reward Quest
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
		inst(228, {
			-- Both of these keep getting reported completed on turnin of seemingly any BRD class quest regardless of race or faction
			q(82739),	-- ???
			q(82740),	-- Twilight Scheming (New 11.0 ID)
		}),
	})),
});