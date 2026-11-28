-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local KELESETH = 638;
local SKARVALD_AND_DALRONN = 639;
local INGVAR = 640;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KELESETH] = { 23953 },	-- Prince Keleseth
	[SKARVALD_AND_DALRONN] = {
		24200,	-- Skarvald the Constructor
		24201,	-- Dalronn the Controller
	},
	[INGVAR] = { 23954 },	-- Ingvar the Plunderer
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, {
	inst(285, {	-- Utgarde Keep
		mapID = UTGARDE_KEEP,
		coord = { 58.2, 48.9, HOWLING_FJORD },
		timeline = { ADDED_3_0_2 },
		maps = { UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3 },
		lvl = lvlsquish(67, 67, 10),
		groups = {
			n(ACHIEVEMENTS, {
				ach(477, {	-- Utgarde Keep
					-- #if AFTER 7.3.5
					crit(5377, {	-- Prince Keleseth
						_encounter = { KELESETH, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5378, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5379, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5380, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5377, {	-- Prince Keleseth
						_encounter = { KELESETH, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5378, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5379, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5621, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5380, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17213, {	-- Defense Protocol Alpha: Utgarde Keep
					crit(57666, {	-- Prince Keleseth
						_encounter = { KELESETH, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57665, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57667, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57668, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18590, {	-- Defense Protocol Beta: Utgarde Keep
					crit(60571, {	-- Prince Keleseth
						_encounter = { KELESETH, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60570, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60572, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60573, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19427, {	-- Defense Protocol Gamma: Utgarde Keep
					crit(63319, {	-- Prince Keleseth
						_encounter = { KELESETH, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63318, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63321, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63320, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(489, {	-- Heroic: Utgarde Keep
					crit(3701, {	-- Prince Keleseth
						_encounter = { KELESETH, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(3702, {	-- Skarvald the Constructor
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(3703, {	-- Dalronn the Controller
						_encounter = { SKARVALD_AND_DALRONN, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5608, {	-- Ingvar the Plunderer
						_encounter = { INGVAR, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(11272, {	-- A Score to Settle
					sourceQuest = 11234,	-- Report to Anselm
					qg = 23780,	-- High Executor Anselm
					coord = { 78.6, 31.2, HOWLING_FJORD },
					races = HORDE_ONLY,
					lvl = lvlsquish(67, 67, 10),
					groups = {
						objective(1, {	-- 0/1 Prince Keleseth slain
							provider = { "n", 23953 },	-- Prince Keleseth <The San'layn>
						}),
						i(39679),	-- Runecaster's Bracers
						i(39680),	-- Vambraces of the Vengeance Bringer
						i(39678),	-- Vendetta Bindings
						i(39676),	-- Wraps of the San'layn
					},
				}),
				q(30112,{	-- A Score to Settle
					qg = 24137,	-- Dark Ranger Marrah
					timeline = { ADDED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(67, 67, 10),
					groups = {
						objective(1, {	-- 0/1 Prince Keleseth slain
							provider = { "n", 23953 },	-- Prince Keleseth <The San'layn>
						}),
						i(39679),	-- Runecaster's Bracers
						i(39680),	-- Vambraces of the Vengeance Bringer
						i(39678),	-- Vendetta Bindings
						i(39676),	-- Wraps of the San'layn
					},
				}),
				q(13205, {	-- Disarmament
					qg = 24111,	-- Defender Mordun
					coord = { 59.4, 48.8, HOWLING_FJORD },
					timeline = { REMOVED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(68, 68, 10),
					groups = {
						objective(1, {	-- 0/5 Vrykul Weapon
							provider = { "i", 43513 },	-- Vrykul Weapon
						}),
						i(44374),	-- Amulet of the Tranquil Mind
						i(44375),	-- Razor-Blade Pendant
						i(44376),	-- Necklace of Fragmented Light
						i(44377),	-- Woven Steel Necklace
					},
				}),
				q(29764, {	-- Disarmament
					qg = 24111,	-- Defender Mordun
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(67, 67, 10),
					groups = {
						objective(1, {	-- 0/5 Vrykul Weapon
							providers = {
								{ "i",  43513 },	-- Vrykul Weapon
								{ "o", 193059 },	-- Vrykul Weapons
							},
						}),
						i(44374),	-- Amulet of the Tranquil Mind
						i(44375),	-- Razor-Blade Pendant
						i(44376),	-- Necklace of Fragmented Light
						i(44377),	-- Woven Steel Necklace
					},
				}),
				q(13206, {	-- Disarmament
					qg = 24137,	-- Dark Ranger Marrah
					races = HORDE_ONLY,
					lvl = lvlsquish(67, 67, 10),
					groups = {
						objective(1, {	-- 0/5 Vrykul Weapon
							providers = {
								{ "i",  43513 },	-- Vrykul Weapon
								{ "o", 193059 },	-- Vrykul Weapons
							},
						}),
						i(44400),	-- Necklace of Calm Skies
						i(44401),	-- Hundred Tooth Necklace
						i(44402),	-- Tiled-Stone Pendant
						i(44403),	-- Amulet of Constrained Power
					},
				}),
				q(29803, {	-- Ears of the Lich King
					qg = 24111,	-- Defender Mordun
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(68, 68, 10),
					groups = {
						objective(1, {	-- 0/1 Prince Keleseth slain
							provider = { "n", 23953 },	-- Prince Keleseth <The San'layn>
						}),
						i(39679),	-- Runecaster's Bracers
						i(39680),	-- Vambraces of the Vengeance Bringer
						i(39678),	-- Vendetta Bindings
						i(39676),	-- Wraps of the San'layn
					},
				}),
				q(11251, {	-- Fresh Legs
					sourceQuest = 11244,	-- Rescuing the Rescuers
					qg = 24106,	-- Scout Valory
					coord = { 55.9, 55.7, HOWLING_FJORD },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(11262, {	-- Ingvar Must Die!
					qg = 24137,	-- Dark Ranger Marrah
					races = HORDE_ONLY,
					groups = {
						objective(1, {	-- 0/1 Ingvar's Head
							provider = { "i", 33330 },	-- Ingvar's Head
							cr = 23954,	-- Ingvar the Plunderer
						}),
						i(38218),	-- Executioner's Band
						i(38219),	-- Ring of Decimation
						i(38220),	-- Signet of Swift Judgment
					},
				}),
				q(11252, {	-- Into Utgarde!
					sourceQuest = 11251,	-- Fresh Legs
					qg = 24111,	-- Defender Mordun
					timeline = { REMOVED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(68, 68, 10),
					groups = {
						objective(1, {	-- 0/1 Ingvar's Head
							provider = { "i", 33330 },	-- Ingvar's Head
							cr = 23954,	-- Ingvar the Plunderer
						}),
						i(38218),	-- Executioner's Band
						i(38219),	-- Ring of Decimation
						i(38220),	-- Signet of Swift Judgment
					},
				}),
				q(29763, {	-- Stealing Their Thunder
					sourceQuest = 11251,	-- Fresh Legs
					qg = 24111,	-- Defender Mordun
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(68, 68, 10),
					groups = {
						objective(1, {	-- 0/1 Ingvar's Head
							provider = { "i", 33330 },	-- Ingvar's Head
							cr = 23954,	-- Ingvar the Plunderer
						}),
						i(38218),	-- Executioner's Band
						i(38219),	-- Ring of Decimation
						i(38220),	-- Signet of Swift Judgment
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37290),	-- Dragon Prow Amulet
					i(37196),	-- Runecaster's Mantle
					i(35580),	-- Skein Woven Mantle
					i(37197),	-- Tattered Castle Drape
					i(35579),	-- Vrykul Shackles
				}),
				BossOnly(KELESETH, {
					i(37180),	-- Battlemap Hide Helm
					i(35571),	-- Dragon Stabler's Gauntlets
					i(37179),	-- Infantry Assault Blade
					i(35570),	-- Keleseth's Blade of Evocation
					i(35572),	-- Reinforced Velvet Helm
					i(37178),	-- Strategist's Belt
					i(37177),	-- Wand of the San'layn
				}),
				BossOnly(SKARVALD_AND_DALRONN, {
					i(35573),	-- Arm Blade of Augelmir
					i(37183),	-- Bindings of the Tunneler
					i(35574),	-- Chestplate of the Northern Lights
					i(157555, { timeline = { ADDED_7_3_5 } }),	-- Constructor's Worklight
					i(37181),	-- Dagger of Betrayal
					i(37184),	-- Dalronn's Jerkin
					i(37182),	-- Helmet of the Constructor
					i(35575),	-- Skarvald's Dragonskin Habergeon
				}),
				BossOnly(INGVAR, {
					i(37192),	-- Annhylde's Ring
					i(37189),	-- Breeches of the Caller
					i(37191),	-- Drake-Mounted Crossbow
					i(37190),	-- Enraged Feral Staff
					i(35577),	-- Holistic Patchwork Breeches
					i(35576),	-- Ingvar's Monolithic Cleaver
					i(35578),	-- Overlaid Chain Spaulders
					i(37188),	-- Plunderer's Helmet
					i(37194),	-- Sharp-Barbed Leather Belt
					i(37193),	-- Staggering Legplates
					i(37186),	-- Unsmashable Heavy Band
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { timeline = { REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(KELESETH, {
					ach(1919),	-- On The Rocks
				}),
				BossOnly(SKARVALD_AND_DALRONN),
				BossOnly(INGVAR, {
					i(43662, { timeline = { REMOVED_4_0_1 } }),	-- Axe of the Plunderer (QI!)
					--
					ach(5095, { timeline = { ADDED_4_0_3 } }),	-- Heroic: Utgarde Keep Guild Run
					i(41793),	-- Design: Fierce Monarch Topaz (RECIPE!)
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35580),	-- Skein Woven Mantle
					i(35579),	-- Vrykul Shackles
				}),
				BossOnly(KELESETH, {
					i(35571),	-- Dragon Stabler's Gauntlets
					i(35570),	-- Keleseth's Blade of Evocation
					i(35572),	-- Reinforced Velvet Helm
				}),
				BossOnly(SKARVALD_AND_DALRONN, {
					i(35573),	-- Arm Blade of Augelmir
					i(35574),	-- Chestplate of the Northern Lights
					i(35575),	-- Skarvald's Dragonskin Habergeon
				}),
				BossOnly(INGVAR, {
					i(35577),	-- Holistic Patchwork Breeches
					i(35576),	-- Ingvar's Monolithic Cleaver
					i(35578),	-- Overlaid Chain Spaulders
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37290),	-- Dragon Prow Amulet
					i(37196),	-- Runecaster's Mantle
					i(37197),	-- Tattered Castle Drape
				}),
				CommonBossDrops({
					currency(101, { timeline = { REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(KELESETH, {
					ach(1919),	-- On The Rocks
					i(37180),	-- Battlemap Hide Helm
					i(37179),	-- Infantry Assault Blade
					i(37178),	-- Strategist's Belt
					i(37177),	-- Wand of the San'layn
				}),
				BossOnly(SKARVALD_AND_DALRONN, {
					i(37183),	-- Bindings of the Tunneler
					i(37181),	-- Dagger of Betrayal
					i(37184),	-- Dalronn's Jerkin
					i(37182),	-- Helmet of the Constructor
				}),
				BossOnly(INGVAR, {
					i(43662, { timeline = { REMOVED_4_0_1 } }),	-- Axe of the Plunderer (QI!)
					--
					ach(5095, { timeline = { ADDED_4_0_3 } }),	-- Heroic: Utgarde Keep Guild Run
					i(37192),	-- Annhylde's Ring
					i(37189),	-- Breeches of the Caller
					i(41793),	-- Design: Fierce Monarch Topaz (RECIPE!)
					i(37191),	-- Drake-Mounted Crossbow
					i(37190),	-- Enraged Feral Staff
					i(37188),	-- Plunderer's Helmet
					i(37194),	-- Sharp-Barbed Leather Belt
					i(37193),	-- Staggering Legplates
					i(37186),	-- Unsmashable Heavy Band
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(392430, 412770, 424194),
				lvl = lvlsquish(80, 80, 30),
				groups = {
					BossOnly(KELESETH, {
						i(39345),	-- Girdle of the Ascended Phantom
						i(39379),	-- Spectral Rider's Girdle
						i(39392),	-- Veiled Amulet of Life
					}),
					BossOnly(SKARVALD_AND_DALRONN, {
						i(39309),	-- Leggings of the Instructor
						i(39369),	-- Sabatons of Deathlike Gloom
						i(39344),	-- Slayer of the Lifeless
					}),
					BossOnly(INGVAR, {
						i(40519),	-- Footsteps of Malygos
						i(40474),	-- Surge Needle Ring
						i(39424),	-- The Soulblade
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412770, 424194),
				lvl = lvlsquish(80, 80, 30),
				groups = {
					BossOnly(KELESETH, {
						i(45333),	-- Belt of the Iron Servant
						i(45378),	-- Boots of the Petrified Forest
					}),
					BossOnly(SKARVALD_AND_DALRONN, {
						i(45329),	-- Circlet of True Sight
						i(45322),	-- Cloak of the Iron Council
					}),
					BossOnly(INGVAR, {
						i(45330),	-- Greaves of Iron Intensity
						i(45418),	-- Lady Maye's Sapphire Ring
						i(45324),	-- Leggings of Swift Reflexes
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424194),
				lvl = lvlsquish(80, 80, 30),
				groups = {
					BossOnly(KELESETH),
					BossOnly(SKARVALD_AND_DALRONN),
					BossOnly(INGVAR),
				},
			})),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(285, {
		q(35502),	-- Utgarde Keep Reward Quest - Normal completion
		q(35512),	-- Utgarde Keep Reward Quest - Heroic completion
	}),
}));
