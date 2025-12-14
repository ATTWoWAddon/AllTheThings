-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
MAIN_GATE = createHeader({
	readable = "Main Gate",
	icon = 134503,
	text = {
		-- #if ANYCLASSIC
		en = "Main Gate",
		de = "Haupttor",
		es = "Puerta principal",
		mx = "Puerta principal",
		fr = "Grande porte",
		-- it = "Main Gate",
		ko = "정문",
		pt = "Portão Principal",
		ru = "Главные врата",
		cn = "正门",
		tw = "主門",
		-- #else
		en = [[~C_Map.GetAreaInfo(5916)]],	-- Stratholme - Main Gate
		-- #endif
	},
	description = {
		en = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Live\" or \"Scarlet\" side, which the Scarlet Crusade has taken over.",
	},
});
SERVICE_ENTRANCE = createHeader({
	readable = "Service Entrance",
	icon = 134247,
	text = {
		-- #if ANYCLASSIC
		en = "Service Entrance",
		de = "Dienstboteneingang",
		es = "Entrada del servicio",
		mx = "Entrada del servicio",
		fr = "Entrée de service",
		-- it = "Service Entrance",
		ko = "공무용 입구",
		pt = "Entrada de Serviço",
		ru = "Черный ход",
		cn = "后门",
		tw = "僕從入口",
		-- #else
		en = [[~C_Map.GetAreaInfo(5917)]],	-- Stratholme - Service Entrance
		-- #endif
	},
	description = {
		en = "Stratholme is divided into two sides.\n\nThis side is commonly referred to as the \"Dead\" or \"Scourge\" side, which the Scourge has taken over.",
	},
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(236, {	-- Stratholme
		-- #if BEFORE MOP
		["lore"] = "Once the jewel of northern Lordaeron, the city of Stratholme is where Prince Arthas turned against his mentor, Uther Lightbringer, and slaughtered hundreds of his own subjects who were believed to have contracted the dreaded plague of undeath. Arthas' downward spiral and ultimate surrender to the Lich King soon followed. The broken city is now inhabited by the undead Scourge -- led by the powerful lich, Kel'Thuzad. A contingent of Scarlet Crusaders, led by Grand Crusader Dathrohan, also holds a portion of the ravaged city. The two sides are locked in constant, violent combat. Those adventurers brave (or foolish) enough to enter Stratholme will be forced to contend with both factions before long. It is said that the city is guarded by three massive watchtowers, as well as powerful necromancers, banshees and abominations. There have also been reports of a malefic Death Knight riding atop an unholy steed, dispensing indiscriminate wrath on all those who venture within the realm of the Scourge.",
		-- #endif
		["zone-text-areaID"] = 2017,	-- Stratholme
		-- #if BEFORE 4.0.3
		["mapID"] = STRATHOLME,
		["maps"] = { 318 },	-- Stratholme (OLD)
		-- #endif
		["lvl"] =
			-- #if AFTER 4.0.3
			37,
			-- #else
			48,
			-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(646),	-- Stratholme
				ach(5055, {	-- Stratholme Guild Run
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(QUESTS, {
				q(27422, {	-- A City Under Siege
					["qg"] = 45482,	-- Argent Officer Irizarry
					["coord"] = { 51.6, 21.4, EASTERN_PLAGUELANDS },
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(44, 44, 15),
				}),
				q(5263, {	-- Above and Beyond
					["sourceQuest"] = 5262,	-- The Truth Comes Crashing Down
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Baron Rivendare
							["provider"] = { "i", 13251 },	-- Head of Baron Rivendare
						}),
					},
				}),
				q(28755, {	-- Annals of the Silver Hand
					["sourceQuest"] = 27464,	-- Argent Call: The Trial of the Crypt
					["qg"] = 49856,	-- Lord Raymond George
					["coord"] = { 76.2, 50.9, EASTERN_PLAGUELANDS },
					["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STRATHOLME },
					["repeatable"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Annals of the Silver Hand
							["providers"] = {
								{ "i",  65615 },	-- Annals of the Silver Hand
								{ "o", 207389 },	-- Annals of the Silver Hand
							},
						}),
					},
				}),
				q(27359, {	-- Argent Reinforcements
					["qg"] = 45330,	-- Archmage Angela Dosantos
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(46, 46, 15),
					["groups"] = {
						objective(1, {	-- 0/4 Banshee Essence
							["provider"] = { "i", 60975 },	-- Banshee Essence
							["crs"] = {
								10464,	-- Wailing Banshee
								10463,	-- Shrieking Banshee
							},
						}),
					},
				}),
				q(5125, {	-- Aurius' Reckoning
					["sourceQuest"] = 5122,	-- The Medallion of Faith
					["qg"] = 10917,	-- Aurius
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 12845, 1 } },	-- Medallion of Faith
					["groups"] = {
						i(17044, {	-- Will of the Martyr
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17045, {	-- Blood of the Martyr
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27185, {	-- Cutting the Competition
					["qg"] = 45201,	-- Master Craftsman Wilhelm <Brotherhood of the Light>
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Risen Hammersmith slain
							["provider"] = { "n", 11120 },	-- Risen Hammersmith
						}),
					},
				}),
				q(5861, {	-- Find Myranda
					["sourceQuest"] = 5848,	-- Of Love and Family (2/2)
					["providers"] = {
						{ "n", 1855 },	-- Tirion Fordring
						{ "i", 14872 },	-- Tirion's Gift
					},
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
				}),
				q(5243, {	-- Houses of the Holy
					-- #if BEFORE 4.0.3
					["description"] = "When mousing over the crates, look for 'Requires: Disarm Trap'. If you see this, it's a trap and shouldn't be touched.\n\nIf you are a dwarf, use find treasure and on the mini map it will show a dot for the holy water in the crate. It will only show crates with items in it on the mini map and not bad crates.",
					-- #endif
					["qg"] = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
					["coord"] = { 81.6, 57.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 13180, 5 } },	-- Stratholme Holy Water
					["lvl"] = 55,
					["groups"] = {
						i(13216, {	-- Crown of the Penitent
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(13217, {	-- Band of the Penitent
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(6149),	-- Greater Mana Potion
						i(3928),	-- Superior Healing Potion
						-- #endif
					},
				}),
				q(5944, {	-- In Dreams
					["sourceQuest"] = 5862,	-- Scarlet Subterfuge
					["qg"] = 1842,	-- Highlord Taelan Fordring <Highlord of the Scarlet Crusade>
					["coord"] = { 42, 14.8, WESTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						i(15418, {	-- Shimmering Platinum Warhammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15411, {	-- Mark of Fordring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15421, {	-- Shroud of the Exile
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15413, {	-- Ornate Adamantium Breastplate
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16058, {	-- Fordring's Seal
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27352, {	-- Liquid Gold
					["qg"] = 45328,	-- Packmaster Stonebruiser
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(46, 46, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Stratholme Holy Water
							["provider"] = { "i", 13180 },	-- Stratholme Holy Water
						}),
					},
				}),
				q(27227, {	-- Lord Aurius Rivendare
					["qg"] = 45329,	-- Crusade Commander Eligor Dawnbringer
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(46, 46, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Lord Aurius Rivendare slain
							["provider"] = { "n", 45412 },	-- Lord Aurius Rivendare
						}),
					},
				}),
				q(5264, {	-- Lord Maxwell Tyrosus
					["sourceQuest"] = 5263,	-- Above and Beyond
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
				}),
				q(27228, {	-- Man Against Abomination
					["qg"] = 45206,	-- Crusade Commander Korfax
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(46, 46, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Ramstein the Gorger slain
							["provider"] = { "n", 10439 },	-- Ramstein the Gorger
						}),
					},
				}),
				q(5781, {	-- Of Forgotten Memories
					["sourceQuest"] = 5742,	-- Redemption
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Taelan's Hammer
							["providers"] = {
								{ "i",  14613 },	-- Taelan's Hammer
								{ "o", 177240 },	-- Loose Dirt Mound
							},
							["coord"] = { 29.8, 85.6, EASTERN_PLAGUELANDS },
							["cr"] = 11886,	-- Mercutio Filthgorger
						}),
					},
				}),
				q(5845, {	-- Of Lost Honor
					["sourceQuest"] = 5781,	-- Of Forgotten Memories
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Symbol of Lost Honor
							["providers"] = {
								{ "i",  14625 },	-- Symbol of Lost Honor
								{ "o", 177264 },	-- Symbol of Lost Honor
							},
							["coord"] = { 71.3, 33.9, EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(27305, {	-- Of Love and Family
					["qg"] = 45200,	-- Crusade Commander Eligor Dawnbringer
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Of Love and Family
							["providers"] = {
								{ "i",  14679 },	-- Of Love and Family
								{ "o", 177287 },	-- Unfinished Painting
							},
						}),
					},
				}),
				q(5846, {	-- Of Love and Family (1/2)
					["sourceQuest"] = 5845,	-- Of Lost Honor
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
				}),
				q(5848, {	-- Of Love and Family (2/2)
					["sourceQuest"] = 5846,	-- Of Love and Family (1/2)
					["qg"] = 11936,	-- Artist Renfray
					["coord"] = { 65.6, 75.4, WESTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Of Love and Family
							["providers"] = {
								{ "i",  14679 },	-- Of Love and Family
								{ "o", 177287 },	-- Unfinished Painting
							},
						}),
					},
				}),
				q(6163, {	-- Ramstein
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Ramstein the Gorger
							["provider"] = { "i", 15880 },	-- Head of Ramstein the Gorger
							["cr"] = 10439,	-- Ramstein the Gorger
						}),
						i(18022, {	-- Royal Seal of Alexis
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17001, {	-- Elemental Circle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5742, {	-- Redemption
					["sourceQuests"] = {
						5543,	-- Blood Tinged Skies
						5544,	-- Carrion Grubbage
						5542,	-- Demon Dogs
					},
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.4, 43.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
				}),
				q(27223, {	-- Retribution
					["qg"] = 45200,	-- Crusade Commander Eligor Dawnbringer
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 The Unforgiven slain
							["provider"] = { "n", 10516 },	-- The Unforgiven
						}),
						objective(2, {	-- 0/1 Timmy the Cruel slain
							["provider"] = { "n", 10808 },	-- Timmy the Cruel
						}),
					},
				}),
				q(5862, {	-- Scarlet Subterfuge
					["sourceQuest"] = 5861,	-- Find Myranda
					["providers"] = {
						{ "n", 11872 },	-- Myranda the Hag
						{ "i", 14872 },	-- Tirion's Gift
					},
					["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
				}),
				q(5213, {	-- The Active Agent
					["sourceQuest"] = 5212,	-- The Flesh Does Not Lie
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["coord"] = { 81.4, 59.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Scourge Data
							["providers"] = {
								{ "i",  13176 },	-- Scourge Data
								{ "o", 176249 },	-- Scourge Data
							},
						}),
						i(19812, {	-- Rune of the Dawn
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(13209, {	-- Seal of the Dawn
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5251, {	-- The Archivist
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Archivist Galford slain
							["provider"] = { "n", 10811 },	-- Archivist Galford
						}),
						objective(2, {	-- 0/1 Archive Burning
							["provider"] = { "o", 176245 },	-- Scarlet Archive
						}),
					},
				}),
				q(5265, {	-- The Argent Hold
					["sourceQuest"] = 5264,	-- Lord Maxwell Tyrosus
					["providers"] = {
						{ "n",  11034 },	-- Lord Maxwell Tyrosus <The Argent Dawn>
						{ "o", 176317 },	-- The Argent Hold
					},
					["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						i(13246, {	-- Argent Avenger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(13249, {	-- Argent Crusader
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(13243, {	-- Argent Defender
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27208, {	-- The Dreadlord Balnazzar
					["qg"] = 45200,	-- Crusade Commander Eligor Dawnbringer
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Balnazzar slain
							["provider"] = { "n", 10813 },	-- Balnazzar
						}),
						i(65998, {	-- Balnazzar's Hide
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65977, {	-- Balnazzar's Horn
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65953, {	-- Dathrohan's Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65928, {	-- Leggings of Stratholme
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5212, {	-- The Flesh Does Not Lie
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["coord"] = { 81.4, 59.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/10 Plagued Flesh Sample (20 in Classic)
							["provider"] = { "i", 13174 },	-- Plagued Flesh Sample
						}),
					},
				}),
				q(27192, {	-- The Great Ezra Grimm
					["qg"] = 45323,	-- Packmaster Stonebruiser
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Grimm's Premium Tobacco
						["providers"] = {
							{ "i", 13172 },	-- Grimm's Premium Tobacco
							{ "o", 176248 },	-- Premium Grimm Tobacco
						},
							["cr"] = 11058,	-- Ezra Grimm
						}),
					},
				}),
				q(5214, {	-- The Great Ezra Grimm
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Grimm's Premium Tobacco
							["provider"] = { "i", 13172 },	-- Grimm's Premium Tobacco
							["cr"] = 11058,	-- Ezra Grimm
						}),
						i(13171, {	-- Smokey's Lighter
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5122, {	-- The Medallion of Faith
					["qg"] = 10917,	-- Aurius
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 12845, 1 } },	-- Medallion of Faith
					["repeatable"] = true,
				}),
				q(5281, {	-- The Restless Souls (1/2)
					["qg"] = 11038,	-- Caretaker Alen <The Argent Dawn>
					["coord"] = { 79.6, 63.8, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
				}),
				q(5282, {	-- The Restless Souls (2/2)
					["sourceQuest"] = 5281,	-- The Restless Souls (1/2)
					["qg"] = 11140,	-- Egan
					["coord"] = { 14.4, 33.6, EASTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/15 Souls Freed
							["provider"] = { "i", 13289 },	-- Egan's Blaster
							["crs"] = {
								10385,	-- Ghostly Citizen
								10384,	-- Spectral Citizen
								11122,	-- Restless Soul
							},
						}),
						i(13315, {	-- Testament of Hope
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5262, {	-- The Truth Comes Crashing Down
					["sourceQuest"] = 5251,	-- The Archivist
					["provider"] = { "i", 13250 },	-- Head of Balnazzar
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
				}),
				q(27230, {	-- Weapons for War
					["qg"] = 45331,	-- Master Craftsman Wilhelm
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(46, 46, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Black Guard Swordsmith slain
							["provider"] = { "n", 11121 },	-- Black Guard Swordsmith
						}),
					},
				}),
			}),
			n(TREASURES, {
				o(181085, {	-- Stratholme Supply Crate
					i(13180),	-- Stratholme Holy Water
				}),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
					-- #if BEFORE 4.0.3
					["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
					-- #if BEFORE 4.0.3
					["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
					-- #if BEFORE 4.0.3
					["description"] = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(13174, {	-- Plagued Flesh Sample
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(12735, {	-- Frayed Abomination Stitching
					-- NOTE: Not removed from game, but no longer useful for anything.
					-- #if BEFORE 4.0.3
					["crs"] = {
						10439,	-- Ramstein the Gorger
						10414,	-- Patchwork Horror
						10416,	-- Bile Spewer
						10417,	-- Venom Belcher
					},
					-- #endif
				}),
				i(142337, {	-- Plans: Blight (RECIPE!)
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(18743),	-- Gracious Cape
				i(17061),	-- Juno's Shadow
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(228532, {	-- Morlune's Bracer
					["timeline"] = { ADDED_1_15_3 },
				})),
				-- #endif
				i(18741, {	-- Morlune's Bracer
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				}),
				i(18744),	-- Plaguebat Fur Gloves
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(228534, {	-- Plaguehound Leggings
					["timeline"] = { ADDED_1_15_3 },
				})),
				-- #endif
				i(18736, {	-- Plaguehound Leggings
					-- #if SEASON_OF_DISCOVERY
					["timeline"] = { REMOVED_1_15_3 },
					-- #endif
				}),
				i(18745),	-- Sacred Cloth Leggings
				i(18742),	-- Stratholme Militia Shoulderguard

				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226717, {	-- Beaststalker's Bindings
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10421,	-- Crimson Defender
						10407,	-- Fleshflayer Ghoul
						10406,	-- Ghoul Ravener
					},
				})),
				-- #endif
				i(16681, {	-- Beaststalker's Bindings
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10421,	-- Crimson Defender
						10407,	-- Fleshflayer Ghoul
						10406,	-- Ghoul Ravener
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226765, {	-- Belt of Valor
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10416,	-- Bile Spewer
						10414,	-- Patchwork Horror
						10417,	-- Venom Belcher
					},
				})),
				-- #endif
				i(16736, {	-- Belt of Valor
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10416,	-- Bile Spewer
						10414,	-- Patchwork Horror
						10417,	-- Venom Belcher
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226751, {	-- Bindings of Elements
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						11043,	-- Crimson Monk
						10413,	-- Crypt Beast
						10412,	-- Crypt Crawler
					},
				})),
				-- #endif
				i(16671, {	-- Bindings of Elements
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						11043,	-- Crimson Monk
						10413,	-- Crypt Beast
						10412,	-- Crypt Crawler
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226742, {	-- Devout Bracers
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10419,	-- Crimson Conjuror
						10420,	-- Crimson Initiate
						10423,	-- Crimson Priest
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				})),
				-- #endif
				i(16697, {	-- Devout Bracers
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10419,	-- Crimson Conjuror
						10420,	-- Crimson Initiate
						10423,	-- Crimson Priest
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226761, {	-- Dreadmist Belt
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10419,	-- Crimson Conjuror
						10422,	-- Crimson Sorcerer
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				})),
				-- #endif
				i(16702, {	-- Dreadmist Belt
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10419,	-- Crimson Conjuror
						10422,	-- Crimson Sorcerer
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226732, {	-- Lightforge Belt
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10424,	-- Crimson Gallant
						10418,	-- Crimson Guardsman
						10408,	-- Rockwing Gargoyle
						10409,	-- Rockwing Screecher
					},
				})),
				-- #endif
				i(16723, {	-- Lightforge Belt
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10424,	-- Crimson Gallant
						10418,	-- Crimson Guardsman
						10408,	-- Rockwing Gargoyle
						10409,	-- Rockwing Screecher
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226724, {	-- Magister's Belt
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10425,	-- Crimson Battle Mage
						10419,	-- Crimson Conjuror
						10422,	-- Crimson Sorcerer
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				})),
				-- #endif
				i(16685, {	-- Magister's Belt
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10425,	-- Crimson Battle Mage
						10419,	-- Crimson Conjuror
						10422,	-- Crimson Sorcerer
						10400,	-- Thuzadin Necromancer
						10398,	-- Thuzadin Shadowcaster
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(226714, {	-- Wildheart Bracers
					["timeline"] = { ADDED_1_15_3 },
					["crs"] = {
						10426,	-- Crimson Inquisitor
						10463,	-- Shrieking Banshee
						10464,	-- Wailing Banshee
					},
				})),
				-- #endif
				i(16714, {	-- Wildheart Bracers
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["crs"] = {
						10426,	-- Crimson Inquisitor
						10463,	-- Shrieking Banshee
						10464,	-- Wailing Banshee
					},
				}),
			}),
			n(MAIN_GATE, {
				-- #if AFTER 4.0.3
				["mapID"] = STRATHOLME,	-- Main Gate
				["sym"] = {
					{"select","instanceID",236},{"pop"},	-- Select the overall Stratholme instance
					{"contains","headerID",ACHIEVEMENTS,QUESTS,ZONE_DROPS},	-- Select the common Achievements/Quests/Zone Drops
				},
				-- #endif
				["coords"] = {
					-- #if AFTER 4.0.3
					{ 27.66, 11.64, EASTERN_PLAGUELANDS },	-- Stratholme [Main Gate]
					-- #else
					{ 30.9, 16.6, EASTERN_PLAGUELANDS },	-- Stratholme [Main Gate]
					-- #endif
				},
				["groups"] = {
					n(ZONE_DROPS, {
						i(12811, {	-- Righteous Orb
							-- #if BEFORE 4.0.3
							["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
							-- #endif
						}),
						i(12734, {	-- Enchanted Scarlet Thread
							["provider"] = { "o", 175966 },	-- Enchanted Scarlet Thread
							-- #if BEFORE 4.0.3
							["description"] = "These can be found in 4 places in the Scarlet Enclave.\n\n1&2: Malor's Room on the Table\n3: In the next room before you split to Cannon Master or Archivist.\n4: In Archivist's room on a box in the back.",
							-- #endif
						}),
						i(16249, {	-- Formula: Enchant 2H Weapon - Major Intellect (RECIPE!)
							["cr"] = 10422,	-- Crimson Sorcerer / Risen Sorcerer [CATA+]
						}),
						i(14495, {	-- Pattern: Ghostweave Pants (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Moved to Trainer
							["cr"] = 10384,	-- Spectral Citizen
						}),
						i(15777, {	-- Pattern: Runic Leather Shoulders (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Moved to Trainer
							["cr"] = 10425,	-- Crimson Battle Mage
						}),
						i(18658, {	-- Schematic: Ultra-Flash Shadow Reflector (RECIPE!)
							["cr"] = 10426,	-- Crimson Inquisitor / Risen Inquisitor [CATA+]
						}),
						i(16052, {	-- Schematic: Voice Amplification Modulator (RECIPE!)
							["cr"] = 10426,	-- Crimson Inquisitor / Risen Inquisitor [CATA+]
						}),
					}),
					n(10393, {	-- Skul
						["description"] = "This is a Rare Creature and, as such, is not always present.",
						["groups"] = {
							i(13396),	-- Skul's Ghastly Touch
							i(13394),	-- Skul's Cold Embrace
							i(13395),	-- Skul's Fingerbone Claws
						},
					}),
					n(11058, {	-- Fras Siabi / Ezra Grimm
						-- #if BEFORE 4.0.3
						["description"] = "In order to summon this boss, one of your party members must be on the quest.",
						-- #endif
						["groups"] = {
							i(13172),	-- Siabi's Premium Tobacco / Grimm's Premium Tobacco
						},
					}),
					-- #if BEFORE 4.0.3
					n(11082, {	-- Stratholme Courier
						["timeline"] = { REMOVED_4_0_3 },
						["description"] = "Drops 3 random keys used to open postboxes found throughout Stratholme. All 3 of the postboxes must be opened to spawn the Postmaster.",
						["groups"] = {
							i(13303, {	-- Crusaders' Square Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
							i(13305, {	-- Elders' Square Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
							i(13304, {	-- Festival Lane Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
							i(13307, {	-- Fras Siabi's Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
							i(13306, {	-- King's Square Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
							i(13302, {	-- Market Row Postbox Key
								["timeline"] = { DELETED_4_0_3 },
							}),
						},
					}),
					-- #endif
					n(11143, {	-- Postmaster Malown
						["description"] =
							-- #if AFTER 4.0.3
							"Click any 3 mailboxes in the instance to get Postmaster Malown to spawn.",
							-- #else
							"Use the keys dropped by the Courier to open 3 mailboxes in the instance to get Postmaster Malown to spawn.",
							-- #endif
						-- #if BEFORE 4.0.3
						["cost"] = {
							{ "i", 13303, 1 },	-- Crusaders' Square Postbox Key
							{ "i", 13305, 1 },	-- Elders' Square Postbox Key
							{ "i", 13304, 1 },	-- Festival Lane Postbox Key
							{ "i", 13307, 1 },	-- Fras Siabi's Postbox Key
							{ "i", 13306, 1 },	-- King's Square Postbox Key
							{ "i", 13302, 1 },	-- Market Row Postbox Key
						},
						-- #endif
						["groups"] = {
							i(13393),	-- Malown's Slam
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228528, {	-- The Postmaster's Band
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13390, {	-- The Postmaster's Band
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228525, {	-- The Postmaster's Tunic
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13388, {	-- The Postmaster's Tunic
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228527, {	-- The Postmaster's Trousers
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13389, {	-- The Postmaster's Trousers
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228529, {	-- The Postmaster's Treads
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13391, {	-- The Postmaster's Treads
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228524, {	-- The Postmaster's Seal
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13392, {	-- The Postmaster's Seal
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
						},
					}),
					e(443, {	-- Hearthsinger Forresten
						["creatureID"] = 10558,	-- Hearthsinger Forresten
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228502, {	-- Piccolo of the Flaming Fire
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13379, {	-- Piccolo of the Flaming Fire
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if AFTER 6.0.1
							-- NOTE: We're not sure which patch this was added to Hearthsinger Forresten.
							i(12103),	-- Star of Mystaria
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228501, {	-- Songbird Blouse
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13378, {	-- Songbird Blouse
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228504, {	-- Rainbow Girdle
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13384, {	-- Rainbow Girdle
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228503, {	-- Woollies of the Prancing Minstrel
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13383, {	-- Woollies of the Prancing Minstrel
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226730, {	-- Magister's Boots
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16682, {	-- Magister's Boots
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
						},
					}),
					e(450, {	-- The Unforgiven
						["creatureID"] = 10516,	-- The Unforgiven
						["groups"] = {
							-- #if AFTER 6.0.1
							-- NOTE: We're not sure which patch this was added to the Unforgiven.
							applyclassicphase(PHASE_FIVE, i(22406)),	-- Redemption
							-- #endif
							i(13408),	-- Soul Breaker
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228500, {	-- Mask of the Unforgiven
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13404, {	-- Mask of the Unforgiven
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13405),	-- Wailing Nightbane Pauldrons
							i(13409),	-- Tearfall Bracers
							i(151404, {	-- Gauntlets of Purged Sanity
								["timeline"] = { ADDED_7_3_0 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226711, {	-- Wildheart Gloves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16717, {	-- Wildheart Gloves
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
						},
					}),
					e(445, {	-- Timmy the Cruel
						["creatureID"] = 10808,	-- Timmy the Cruel
						["groups"] = {
							i(13401),	-- The Cruel Hand of Timmy
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228513, {	-- Vambraces of the Sadist
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13400, {	-- Vambraces of the Sadist
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(151403, {	-- Fetid Stranglers
								["timeline"] = { ADDED_7_3_0 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226737, {	-- Lightforge Gauntlets
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16724, {	-- Lightforge Gauntlets
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228515, {	-- Grimgore Noose
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13403, {	-- Grimgore Noose
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228514, {	-- Timmy's Galoshes
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13402, {	-- Timmy's Galoshes
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
						},
					}),
					n(11032, {	-- Malor the Zealous [Classic] / Commander Malor [CATA+]
						i(12845, {	-- Medallion of Faith
							["provider"] = { "o", 176112 },	-- Malor's Strongbox
							-- #if BEFORE 4.0.3
							["description"] = "Located in Malor's Strongbox. Can be turned in to Aurius on the Dead side of Stratholme to have him aide you during the Baron Rivendare encounter.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if AFTER 8.0.1
						i(22403),	-- Nacreous Shell Necklace
						-- #endif
					}),
					n(11120, {	-- Crimson Hammersmith [Classic] / Risen Hammersmith [CATA+]
						["provider"] = { "o", 176325 },	-- Blacksmithing Plans
						["description"] = "Found in the Hoard on the way to Cannon Master Willey.",
						["groups"] = {
							i(18781, {	-- Bottom Half of Advanced Armorsmithing: Volume II
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(13351, {	-- Crimson Hammersmith's Apron
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(12827, {	-- Plans: Serenity (RECIPE!)
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor.",
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_2_0_1, ADDED_3_0_2,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228308, {	-- Plans: Tranquility (RECIPE!)
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor.",
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
						},
					}),
					e(446, {	-- Cannon Master Willey [Classic] / Willey Hopebreaker [CATA+]
						["creatureID"] = 10997,	-- Cannon Master Willey [Classic] / Willey Hopebreaker [CATA+]
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228307, {	-- Plans: Deadly Heartseeker (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(12839, {	-- Plans: Heartseeker (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							applyclassicphase(PHASE_FIVE, i(22406)),	-- Redemption
							applyclassicphase(PHASE_FIVE, i(22404)),	-- Willey's Back Scratcher
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228522, {	-- Willey's Portable Howitzer
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13380, {	-- Willey's Portable Howitzer
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							applyclassicphase(PHASE_FIVE, i(22407)),	-- Helm of the New Moon
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228533, {	-- Nacreous Shell Necklace
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22403, {	-- Nacreous Shell Necklace
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							})),
							applyclassicphase(PHASE_FIVE, i(22405)),	-- Mantle of the Scarlet Crusade
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226706, {	-- Shadowcraft Spaulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16708, {	-- Shadowcraft Spaulders
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							i(18721),	-- Barrage Girdle
							i(13381),	-- Master Cannoneer Boots
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228523, {	-- Cannonball Runner
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13382, {	-- Cannonball Runner
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13377, {	-- Miniature Cannon Balls
								["timeline"] = { DELETED_4_0_1 },
							}),
						},
					}),
					e(448, {	-- Archivist Galford [Classic] / Instructor Galford [CATA+]
						["creatureID"] = 10811,	-- Archivist Galford [Classic] / Instructor Galford [CATA+]
						["groups"] = {
							i(65615, {	-- Annals of the Silver Hand
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(14679, {	-- Of Love and Family
								-- #if BEFORE 4.0.3
								["description"] = "Found on the wall near Archivist Galford.",
								-- #endif
							}),
							applyclassicphase(PHASE_SIX_CLASS_BOOKS, {
								["itemID"] = 22897,	-- Tome of Conjure Food VII
								["timeline"] = { REMOVED_4_0_1 },
								["classes"] = { MAGE },
								["spellID"] = 28612,	-- Conjure Food VII
								["rank"] = 7,
							}),
							i(13385),	-- Tome of Knowledge
							i(13386),	-- Archivist Cape
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226740, {	-- Devout Gloves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16692, {	-- Devout Gloves
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							i(13387),	-- Foresight Girdle
							i(18716),	-- Ash Covered Boots
						},
					}),
					e(449, {	-- Balnazzar
						["creatureID"] = 10813,	-- Balnazzar
						["crs"] = { 10812 },	-- Grand Crusader Dathrohan
						["groups"] = {
							i(13250),	-- Head of Balnazzar
							i(14512, {	-- Pattern: Truefaith Vestments (RECIPE!)
								-- #if TBC
								-- During TBC this was made exclusively usable by Priests, then that change was reverted with Wrath.
								["classes"] = { PRIEST },
								-- #endif
							}),
							i(13520),	-- Recipe: Flask of Distilled Wisdom (RECIPE!)
							i(13348),	-- Demonshear
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228544, {	-- Hammer of the Grand Crusader
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18717, {	-- Hammer of the Grand Crusader
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228541, {	-- Gift of the Elven Magi
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13360, {	-- Gift of the Elven Magi
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228539, {	-- Book of the Dead
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13353, {	-- Book of the Dead
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228540, {	-- Crown of Tyranny
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13359, {	-- Crown of Tyranny
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228545, {	-- Grand Crusader's Helm
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18718, {	-- Grand Crusader's Helm
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228536, {	-- Star of Mystaria
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(12103, {	-- Star of Mystaria
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228546, {	-- Shroud of the Nathrezim
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18720, {	-- Shroud of the Nathrezim
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13358),	-- Wyrmtongue Shoulders
							i(13369),	-- Fire Striders
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226738, {	-- Lightforge Boots
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16725, {	-- Lightforge Boots
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
						},
					}),
					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, o(181083, {	-- Sothos and Jarien's Heirlooms
						["crs"] = {
							16101,	-- Jarien
							16102,	-- Sothos
						},
						["description"] =
							-- #if BEFORE 10.1.5
							"This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits. Unfortunately, after the modifications made to the instance with 4.0.3, these drops become truly unobtainable even with the brazier.",
							-- #else
							"This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
							-- #endif
						["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
						["cost"] = {
							{ "i", 22051, 1 },	-- Brazier of Beckoning [Jarien & Sothos]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						-- #if AFTER 10.1.5
						-- This init function unmarks the removed from game flag for folks with the brazier.
						["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
						-- #endif
						["groups"] = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								["questID"] = 8968,	-- The Left Piece of Lord Valthalak's Amulet [HUNTER, ROGUE]
								["provider"] = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								["questID"] = 8991,	-- The Right Piece of Lord Valthalak's Amulet [PRIEST, MAGE]
								["provider"] = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228548, {	-- Scepter of Interminable Focus
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(22329, {	-- Scepter of Interminable Focus
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3, ADDED_10_1_5,
									-- #endif
								},
							}),
							i(22327, {	-- Amulet of the Redeemed
								["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228547, {	-- Ironweave Robe
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(22301, {	-- Ironweave Robe
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_1, ADDED_10_1_5,
									-- #endif
								},
							}),
							i(22328, {	-- Legplates of Vigilance
								["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
							}),
							i(22334, {	-- Band of Mending
								["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
							}),
						},
					})),
					applyclassicphase(PHASE_SIX, n(16387, {	-- Atiesh <Hand of Sargeras>
						["description"] = "Summoned and defeated as part of the Atiesh quest chain to get the Greatstaff of the Guardian.",
						["timeline"] = { REMOVED_3_0_2 },
						["groups"] = {
							i(22736, {	-- Andonisus, Reaper of Souls
								-- #if BEFORE 3.0.2
								["description"] = "He drops this midway through the encounter and one lucky DPS can wield this. However, it is a conjured item and will disappear after a few minutes.",
								-- #endif
								["timeline"] = { REMOVED_3_0_2 },
								["collectible"] = false,
							}),
						},
					})),
				},
			}),
			n(SERVICE_ENTRANCE, {
				["provider"] = { "o", 175369 },	-- Elders' Square Service Entrance
				-- #if AFTER 4.0.3
				["mapID"] = 318,	-- Service Entrance
				["sym"] = {
					{ "select", "instanceID", 236 }, { "pop" },						-- Select the overall Stratholme instance
					{ "contains", "headerID", ACHIEVEMENTS, QUESTS, ZONE_DROPS },	-- Select the common Achievements/Quests/Zone Drops
				},
				-- #endif
				["coords"] = {
					-- #if AFTER 4.0.3
					{ 43.76, 17.52, EASTERN_PLAGUELANDS },	-- Stratholme [Undead Side]
					-- #else
					{ 48.18, 21.90, EASTERN_PLAGUELANDS },	-- Stratholme [Undead Side]
					-- #endif
				},
				-- #if BEFORE 4.0.3
				["cost"] = { { "i", 12382, 1 } },	-- Key to the City
				-- #endif
				["groups"] = {
					n(ZONE_DROPS, {
						i(16248, {	-- Formula: Enchant Weapon - Unholy (RECIPE!)
							["cr"] = 10398,	-- Thuzadin Shadowcaster
						}),
						i(15768, {	-- Pattern: Wicked Leather Belt (RECIPE!)
							["timeline"] = { REMOVED_2_0_5 },	-- Added to Leatherworking Trainers
							["cr"] = 10406,	-- Ghoul Ravener
						}),
						i(74274, {	-- Plans: Phantom Blade (RECIPE!)
							["timeline"] = { ADDED_4_3_0 },
							["crs"] = {
								10463,	-- Shrieking Banshee
								10464,	-- Wailing Banshee
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(226704, {	-- Shadowcraft Bracers
							["timeline"] = { ADDED_1_15_3 },
							["cr"] = 10405,	-- Plague Ghoul
						})),
						-- #endif
						i(16710, {	-- Shadowcraft Bracers
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
							["cr"] = 10405,	-- Plague Ghoul
						}),
					}),
					n(10809, {	-- Stonespine
						["description"] = "This is a Rare Creature and, as such, is not always present.",
						["groups"] = {
							i(13399),	-- Gargoyle Shredder Talons
							i(13397),	-- Stoneskin Gargoyle Cape
							i(13954),	-- Verdant Footpads
						},
					}),
					e(452, {	-- Nerub'enkan
						["creatureID"] = 10437,	-- Nerub'enkan
						["groups"] = {
							i(13176, {	-- Scourge Data
								["provider"] = { "o", 176249 },	-- Scourge Data
								-- #if BEFORE 4.0.3
								["description"] = "Located in the Ziggurat behind the boss.",
								-- #endif
							}),
							i(18738),	-- Carapace Spine Crossbow
							i(13529),	-- Husk of Nerub'enkan
							i(13533),	-- Acid-Etched Pauldrons
							i(13532),	-- Darkspinner Claws
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228531, {	-- Thuzadin Sash
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18740, {	-- Thuzadin Sash
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228530, {	-- Chitinous Plate Legguards
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18739, {	-- Chitinous Plate Legguards
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13531),	-- Crypt Stalker Leggings
							i(16675, {	-- Beaststalker's Boots
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(13530),	-- Fangdrip Runners
							i(13508),	-- Eye of Arachnida
						},
					}),
					n(11121, {	-- Black Guard Swordsmith
						["providers"] = {
							{ "o", 176325 },	-- Blacksmithing Plans
							-- This is what it should be, but since tooltips for objects with EXACTLY THE SAME NAME are wonky in the same instance (due to a lack of coordinates....), this is necessary to make the tooltips make more sense.
							-- { "o", 176327 },	-- Blacksmithing Plans
						},
						["description"] = "Found outside of Baroness Anastari's ziggurat.",
						["groups"] = {
							i(18783, {	-- Bottom Half of Advanced Armorsmithing: Volume III
								["timeline"] = { REMOVED_4_0_1 },
							}),
							i(13350, {	-- Insignia of the Black Guard
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(12830, {	-- Plans: Corruption (RECIPE!)
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor. This will despawn once a player interacts with it.",
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_2_0_1, ADDED_3_0_2,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228306, {	-- Plans: Desecration (RECIPE!)
								["description"] = "You must be a Blacksmith in order to loot this from the Plans on the floor. This will despawn once a player interacts with it.",
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
						},
					}),
					e(451, {	-- Baroness Anastari
						["creatureID"] = 10436,	-- Baroness Anastari
						["groups"] = {
							i(13534),	-- Banshee Finger
							i(18729),	-- Screeching Bow
							i(18728),	-- Anastari Heirloom
							i(13538),	-- Windshrieker Pauldrons
							i(13535),	-- Coldtouch Phantom Wraps
							i(13537),	-- Chillhide Bracers
							i(13539),	-- Banshee's Touch
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228521, {	-- Shadowy Laced Handwraps
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18730, {	-- Shadowy Laced Handwraps
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(16704, {	-- Dreadmist Sandals
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(13514, {	-- Wail of the Banshee
								-- #if BEFORE 4.0.3
								["description"] = "This can be used on raid bosses and in PVP... Probably not a bad idea to keep on you.",
								-- #endif
							}),
						},
					}),
					e(453, {	-- Maleki the Pallid
						["creatureID"] = 10438,	-- Maleki the Pallid
						["groups"] = {
							i(12833),	-- Plans: Hammer of the Titans (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228535, {	-- Bone Slicing Hatchet
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18737, {	-- Bone Slicing Hatchet
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13524),	-- Skull of Burning Shadows
							i(18734),	-- Pale Moon Cloak
							i(13528),	-- Twilight Void Bracers
							i(13525),	-- Darkbind Fingers
							i(13526),	-- Flamescarred Girdle
							i(16691, {	-- Devout Sandals
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(13527),	-- Lavawalker Greaves
							i(18735),	-- Maleki's Footwraps
							i(13509),	-- Clutch of Foresight
						},
					}),
					e(454, {	-- Magistrate Barthilas
						["creatureID"] = 10435,	-- Magistrate Barthilas
						["description"] = "If you enter from the Main Gate side, you can fight this boss first, otherwise he runs to the Slaughter House.",
						["groups"] = {
							i(12382),	-- Key to the City
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228516, {	-- Peacemaker
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18725, {	-- Peacemaker
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18727),	-- Crimson Felt Hat
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228505, {	-- Royal Tribunal Cloak
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13376, {	-- Royal Tribunal Cloak
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228518, {	-- Magistrate's Cuffs
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18726, {	-- Magistrate's Cuffs
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18722),	-- Death Grips
							applyclassicphase(PHASE_FIVE, i(23198, {	-- Idol of Brutality
								["timeline"] = { REMOVED_5_0_4 },
							})),
						},
					}),
					e(455, {	-- Ramstein the Gorger
						["creatureID"] = 10439,	-- Ramstein the Gorger
						["groups"] = {
							i(15880),	-- Head of Ramstein the Gorger
							i(13372),	-- Slavedriver's Cane
							i(13375),	-- Crest of Retribution
							i(18723),	-- Animated Chain Necklace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228520, {	-- Soulstealer Mantle
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13374, {	-- Soulstealer Mantle
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226771, {	-- Gauntlets of Valor
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16737, {	-- Gauntlets of Valor
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							i(13373),	-- Band of Flesh
							i(13515),	-- Ramstein's Lightning Bolts
						},
					}),
					e(456, {	-- Baron Rivendare [Classic] / Lord Aurius Rivendare [CATA+]
						-- #if AFTER 4.0.3
						["creatureID"] = 45412,	-- Lord Aurius Rivendare
						-- #else
						["creatureID"] = 10440,	-- Baron Rivendare
						-- #endif
						["groups"] = {
							i(13251),	-- Head of Baron Rivendare
							ach(729, {	-- Deathcharger's Reins
								["provider"] = { "i", 13335 },	-- Rivendare's Deathcharger (MOUNT!)
								["f"] = MOUNTS,
							}),
							i(13335),	-- Rivendare's Deathcharger (MOUNT!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228543, {	-- Runeblade of Baron Rivendare
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13505, {	-- Runeblade of Baron Rivendare
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(13368),	-- Bonescraper
							applyclassicphase(PHASE_FIVE, i(22408)),	-- Ritssyn's Wand of Bad Mojo
							i(13349),	-- Scepter of the Unholy
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228542, {	-- Skullforge Reaver
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13361, {	-- Skullforge Reaver
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228553, {	-- Helm of the Executioner
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22411, {	-- Helm of the Executioner
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							})),
							applyclassicphase(PHASE_FIVE, i(22412)),	-- Thuzadin Mantle
							i(13340),	-- Cape of the Black Baron
							i(13346),	-- Robes of the Exalted
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228551, {	-- Tunic of the Crescent Moon
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22409, {	-- Tunic of the Crescent Moon
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							})),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228537, {	-- Dracorian Gauntlets
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13344, {	-- Dracorian Gauntlets
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228552, {	-- Gauntlets of Deftness
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22410, {	-- Gauntlets of Deftness
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							})),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228538, {	-- Seal of Rivendare
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(13345, {	-- Seal of Rivendare
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if BEFORE MOP
							i(66049, {	-- Book of the Paragon
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
							}),
							i(66050, {	-- Idol of the Paragon
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
							}),
							i(66051, {	-- Relic of the Paragon
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
							}),
							i(66048, {	-- Statue of the Paragon
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					n(10440, {	-- Baron Rivendare
						-- #if BEFORE 4.0.3
						-- #if AFTER WRATH
						-- NOTE: This will merge the data with the encounter object and push the removed T0 pieces to the bottom of the list.
						["encounterID"] = 456,	-- Baron Rivendare
						-- #endif
						-- #endif
						["timeline"] = { REMOVED_4_0_3 },
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226719, {	-- Beaststalker's Pants
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16678, {	-- Beaststalker's Pants
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226747, {	-- Devout Skirt
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16694, {	-- Devout Skirt
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226760, {	-- Dreadmist Leggings
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16699, {	-- Dreadmist Leggings
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226750, {	-- Kilt of Elements
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16668, {	-- Kilt of Elements
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226767, {	-- Legplates of Valor
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16732, {	-- Legplates of Valor
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226736, {	-- Lightforge Legplates
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16728, {	-- Lightforge Legplates
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226727, {	-- Magister's Leggings
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16687, {	-- Magister's Leggings
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226705, {	-- Shadowcraft Pants
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16709, {	-- Shadowcraft Pants
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(226709, {	-- Wildheart Kilt
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(16719, {	-- Wildheart Kilt
								["timeline"] = {
									-- #if SEASON_OF_DISCOVERY
									REMOVED_1_15_3,
									-- #else
									REMOVED_4_0_3,
									-- #endif
								},
							}),
						},
					}),
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(236, {
		q(35563),	-- Stratholme - Main Gate - Reward Quest - Normal completion
		q(35564),	-- Stratholme - Main Gate - Bonus Objective Reward Quest
		q(35574),	-- Stratholme - Service Entrance Reward Quest - Normal completion
		q(35575),	-- Stratholme - Service Entrance Bonus Objective Reward Quest
	}),
})));
