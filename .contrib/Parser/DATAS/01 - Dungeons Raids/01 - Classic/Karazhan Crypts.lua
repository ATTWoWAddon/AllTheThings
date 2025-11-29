-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
APPRENTICE = createHeader({
	readable = "Apprentice",
	text = {
		en = "Apprentice",
		de = "Lehrling",
		es = "Aprendiz",
		mx = "Aprendiz",
		fr = "Apprenti",
		-- TODO: it = "",
		ko = "수습생",
		pt = "Aprendiz",
		ru = "Ученик",
		cn = "学徒",
		tw = "(初級)學徒",
	},
	description = {
		en = "Only 1 of 3 Apprentices can be chosen to challenge.",
	},
});

OPERA_OF_MALEDICTION = createHeader({
	readable = "Opera of Malediction",
	text = {
		en = "Opera of Malediction",
		de = "Oper der Verwünschung",
		es = "Ópera de la maldición",
		mx = "Ópera de imprecación",
		fr = "Opéra de malédiction",
		-- TODO: it = "",
		ko = "악심의 오페라",
		pt = "Ópera da Maldição",
		ru = "Проклятая опера",
		cn = "邪咒歌剧",
		tw = "詛咒歌劇",
	},
	description = {
		en = "1 of 3 Operas will be randomly selected every day.",
	},
});

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_SEVEN, inst(2875, bubbleDownSelf({["timeline"] = { ADDED_1_15_6 }}, {	-- Karazhan Crypts
		["description"] = "[TBC] \nThis is a new dungeon added in SoD Phase 7.\nThe current loot table is not accurate. If you get items not in the boss drop, please report it in Discord #classic-errors.\n\nNOTE: Kharon drop all rewards, please do not report any that are known to be dropped by other bosses but not by Kharon.",
		["zone-text-areaID"] = 16074,	-- Karazhan Crypts
		["sourceQuest"] = 86970,
		["coord"] = { 39.8, 73.6, DEADWIND_PASS },
		["lvl"] = 58,
		["groups"] = {
			n(QUESTS, {
				q(86964, {	-- For Gold and Glory!
					["provider"] = { "o", 509510 },	-- the Bulletin Board
					["coord"] = { 81.3, 58.8, EASTERN_PLAGUELANDS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {
							["provider"] = { "n", 237820 },	-- Deceased Adventurer
							["coord"] = { 40.0, 74.2, DEADWIND_PASS },
						}),
					},
				}),	
				q(86965, {	-- No Ordinary Shadows
					["sourceQuest"] = 86964,	-- For Gold and Glory!
					["qg"] = 237820,	-- Deceased Adventurer
					["coord"] = { 40.0, 74.2, DEADWIND_PASS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {
							["provider"] = { "n", 218920 },	-- Agent Keanna <Violet Eye>
							["coord"] = { 52.0, 34.0, DEADWIND_PASS },
						}),
					},
				}),
				q(86966, {	-- Seeking Survivors
					["sourceQuest"] = 86965,	-- No Ordinary Shadows
					["qg"] = 218920,	-- Dalaran Agent <Violet Eye>
					["coord"] = { 52.0, 34.0, DEADWIND_PASS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {
							["provider"] = { "n", 237819 },	
							["coords"] = {
								{ 59.2, 73.4, DEADWIND_PASS },	-- Entrance of the Ogre Cave
								{ 65.2, 78.6, DEADWIND_PASS },	-- Injured Adventurer
							},
						}),
					},
				}),
				q(86967, {	-- To the Rescue
					["sourceQuest"] = 86966,	-- Seeking Survivors
					["qg"] = 237819,	-- Injured Adventurer
					["coord"] = { 65.2, 78.6, DEADWIND_PASS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 235785 },	-- Deadwind Cage "Key"
							["crs"] = {
								7372,	-- Deadwind Warlock
								7379,	-- Deadwind Ogre Mage
								7371,	-- Deadwind Mauler
								7369,	-- Deadwind Brute
							},
						}),
						objective(2, {
							["provider"] = { "n", 237818 },	-- Harrison Jones
							["coord"] = { 52.2, 34.2, DEADWIND_PASS },
						}),
					},
				}),
				q(86968, {	-- Are You Afraid of the Dark?
					["sourceQuest"] = 86967,	-- To the Rescue
					["qg"] = 237818,	-- Harrison Jones
					["coord"] = { 52.2, 34.2, DEADWIND_PASS },
					["lvl"] = 60,
				}),
				q(86969, {	-- The Hypothesis
					["sourceQuest"] = 86968,	-- Are You Afraid of the Dark?
					["qg"] = 218920,	-- Dalaran Agent <Violet Eye>
					["coord"] = { 52.0, 34.6, DEADWIND_PASS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Flame of Life
							["description"] = "loot from lvl 60 Elite Red Dragon, in the right side of Wetland.",
							["provider"] = { "i", 235789 },	-- Flame of Life (QI!)
							["crs"] = {
								1045,	-- Red Dragonspawn
								1047,	-- Red Scalebane
								1048,	-- Scalebane Lieutenant
								1049,	-- Wyrmkin Firebrand
								1050,	-- Scalebane Royal Guard
							},
						}),
						objective(2, {	-- 0/1 Ancient Ironwood Branch
							["provider"] = { "i", 235787 },	-- Ancient Ironwood Branch (QI!)
							["crs"] = {
								11489, 	-- Tendris Warpwood
								226923,	-- Grimroot <The Mourning Guardian>
							},
						}),
						objective(3, {	-- 0/1 Enthusiastic Wisp
							["provider"] = { "i", 235788 },	-- Enthusiastic Wisp (QI!)
							["cr"] = 238431,	-- Enthusiastic Wisp
						}),
					},
				}),
				q(86970, {	-- Testing Our Hypothesis
					["sourceQuest"] = 86969,	-- The Hypothesis
					["qg"] = 218920,	-- Dalaran Agent <Violet Eye>
					["coord"] = { 52.0, 34.6, DEADWIND_PASS },
					["lvl"] = 60,
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				["sharedDescription"] = "[TBC]\nIf the boss loot that is not in the boss's loot table, @NORPG on Discord.",
				["groups"] = {
					n(COMMON_BOSS_DROPS, {	-- Common Boss Drops
						i(226404),	-- Tarnished Undermine Real
						i(238681, {	-- Dusty Bag
							i(22484),	-- Necrotic Rune
						}),
					}),
					n(ZONE_DROPS, {
						i(236708),	-- Breastplate of Undead Slaying
						i(236709),	-- Chestguard of Undead Slaying
						i(236718),	-- Robe of Undead Cleansing
						i(236736),	-- Chestguard of Undead Cleansing
						i(236707),	-- Tunic of Undead Slaying
						i(236727),	-- Tunic of Undead Cleansing
						i(236721),	-- Robe of Undead Purification
						i(236730),	-- Tunic of Undead Purification
						i(236742),	-- Chestguard of Undead Purification
						i(236745),	-- Breastplate of Undead Purification
						i(236724),	-- Robe of Undead Warding
						i(236733),	-- Tunic of Undead Warding
						i(236739),	-- Chestguard of Undead Warding
						i(236748),	-- Breastplate of Undead Warding
						i(236716),	-- Bracers of Undead Cleansing
						i(236725),	-- Wristwraps of Undead Slaying
						i(236710),	-- Wristguards of Undead Slaying
						i(236712),	-- Bracers of Undead Slaying				
						i(236740),	-- Wristguards of Undead Purification
						i(236737),	-- Wristguards of Undead Warding
						i(236743),	-- Bracers of Undead Purification
						i(236746),	-- Bracers of Undead Warding
						i(236734),	-- Wristguards of Undead Cleansing
						i(236731),	-- Wristwraps of Undead Warding
						i(236728),	-- Wristwraps of Undead Purification
						i(236722),	-- Bracers of Undead Warding
						i(236711),	-- Wristwraps of Undead Slaying
						i(236719),	-- Bracers of Undead Purification
						i(236710),	-- Wristguards of Undead Slaying
						i(236712),	-- Bracers of Undead Slaying
					}),
					n(APPRENTICE , {	-- Apprentice
						n(COMMON_BOSS_DROPS, {	-- Common Boss Drops
							i(235894),	-- Doomsayer's Demise
							i(235880),	-- Pauper Soles
							i(235879),	-- Nimble Links
							i(235873),	-- Crypt's Keepers
						}),
						n(238233, {	-- Kaigy Maryla <The Failed Apprentice>
							i(235886),	-- Kaigy's Clasp
						}),
						n(238213, {	-- Sairuh Maryla <The Failed Apprentice>
							i(236782),	-- Sairuh's Collar
						}),
						n(238234, {	-- Barian Maryla <The Failed Apprentice>
							i(235887),	-- Barian's Choker
						}),
					}),
					n(OPERA_OF_MALEDICTION, {	-- Opera of Malediction
						i(235889),	-- Servant's Quarterstaff
						i(235883),	-- Well Diver's Stumble
						i(235878),	-- Malefic Belt
						i(235893),	-- Shadowbound Grimoire
						i(235870),	-- Rattlechain Helm
					}),
					n(238024, {	-- Creeping Malison	(5)
						i(235888),	-- Clobberclub
						i(235881),	-- Dreaded Treaders
						i(235885),	-- Ghastly Ring
						i(235884),	-- Spectral Signet
					}),
					n(237964, {	-- Harbinger of Sin	(0)
						i(235891),	-- Ol' Reliable
						i(235890),	-- Shadow Weaver's Needle
						i(235869),	-- The Master's Cowl
						i(235882),	-- Clattering Steps
					}),
					n(237439, {	-- Kharon			(2)
						["description"] = "Kharon's loots are special, as it will loot an item from the loot table of all dungeon bosses, including the Opera, plus Kharon's own loots.\nKharon's exclusive loot is ilv86, which has an additional random 1 of 6 Enchantments",
						["groups"] = {
							i(235874),	-- Cultist's Handwraps
							i(236642),	-- Mender's Handwraps
							i(235875),	-- Gravedigger's Gloves
							i(235876),	-- Sinner's Handguards
							i(235877),	-- Fanatic's Gauntlets
							i(236645),	-- Lightwielder's Gauntlets
							i(236643),	-- Nightwatcher's Gloves
							i(236644),	-- Mourner's Handguards
						},
					}),
					n(238365, {	-- Dark Rider		(4)
						i(235892),	-- Darkrider's Spine
						i(235868),	-- Bulwark of Ire
						i(235872),	-- Stalker's Bands
						i(235871),	-- Clutching Death Helm
					}),
					n(238678),	-- Unk'omon <The Winged Sorrow>	(6)
				},
			}),
		},
	}))),
}));
-- #endif
