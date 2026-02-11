-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_3_2_0 } }, {
	inst(757, {	-- Trial of the Crusader
		["mapID"] = TRIAL_OF_THE_CRUSADER,
		["coord"] = { 75.0, 21.8, ICECROWN },	-- Trial of the Crusader (Argent Tournament Grounds)
		["maps"] = { 173 },
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(3917, {	-- Call of the Crusade (10 player)
					crit(13326, {	-- Northrend Beasts
						["_encounter"] = { 1618, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(13327, {	-- Lord Jaraxxus
						["_encounter"] = { 1619, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					-- #if ANYCLASSIC
					-- Blizzaaaaard why do you waste my time like this?
					crit(13328, {	-- Champions of the Alliance
						["_encounter"] = { 1620, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(13328, {	-- Champions of the Horde
						["_encounter"] = { 1621, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(13329, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(13308, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					-- #else
					crit(12236, {	-- Champions of the Alliance
						["_encounter"] = { 1620, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(12236, {	-- Champions of the Horde
						["_encounter"] = { 1621, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(12240, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					crit(12244, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
					}),
					-- #endif
				}),
				ach(3918, {	-- Call of the Grand Crusade (10 player)
					crit(12229, {	-- Northrend Beasts
						["_encounter"] = { 1618, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
					crit(12233, {	-- Lord Jaraxxus
						["_encounter"] = { 1619, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
					crit(12237, {	-- Champions of the Alliance
						["_encounter"] = { 1620, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
					crit(12237, {	-- Champions of the Horde
						["_encounter"] = { 1621, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
					crit(12241, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
					crit(12245, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
					}),
				}),
				ach(3916, {	-- Call of the Crusade (25 player)
					-- #if ANYCLASSIC
					crit(13346, {	-- Northrend Beasts
						["_encounter"] = { 1618, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					-- #else
					crit(12230, {	-- Northrend Beasts
						["_encounter"] = { 1618, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					-- #endif
					crit(13347, {	-- Lord Jaraxxus
						["_encounter"] = { 1619, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					crit(13348, {	-- Champions of the Alliance
						["_encounter"] = { 1620, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					crit(13348, {	-- Champions of the Horde
						["_encounter"] = { 1621, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					-- #if ANYCLASSIC
					crit(13349, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					crit(13346, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					-- #else
					crit(12242, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					crit(12246, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
					}),
					-- #endif
				}),
				ach(3812, {	-- Call of the Grand Crusade (25 player)
					crit(12231, {	-- Northrend Beasts
						["_encounter"] = { 1618, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
					crit(12235, {	-- Lord Jaraxxus
						["_encounter"] = { 1619, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
					crit(12239, {	-- Champions of the Alliance
						["_encounter"] = { 1620, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
					crit(12239, {	-- Champions of the Horde
						["_encounter"] = { 1621, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
					crit(12243, {	-- Twin Val'kyr
						["_encounter"] = { 1622, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
					crit(12247, {	-- Anub'arak
						["_encounter"] = { 1623, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
					}),
				}),
				ach(11752, {["timeline"] = {ADDED_7_2_0}}),	-- Style of the Crusader (Trial of the Crusader)
				ach(4078, {	-- Realm First! Grand Crusader
					["timeline"] = { ADDED_3_2_0, REMOVED_3_2_2 },
					["groups"] = {
						title(135, {	-- Grand Crusader <Name>
							["timeline"] = { ADDED_3_2_0, REMOVED_3_2_2 },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(35579, {	-- Aspirant Forudir <Triumphant Armor Vendor>
					["coord"] = { 75.4, 21.6, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Horde equivalent.|r",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Wrynn's Battlegear (658)
							-- DPS


							-- Tank


							i(48372),	-- Wrynn's Battleplate of Conquest
							i(48436),	-- Wrynn's Breastplate of Conquest
							i(48375),	-- Wrynn's Gauntlets of Conquest
							i(48429),	-- Wrynn's Greathelm of Conquest
							i(48449),	-- Wrynn's Handguards of Conquest
							i(48371),	-- Wrynn's Helmet of Conquest
							i(48445),	-- Wrynn's Legguards of Conquest
							i(48373),	-- Wrynn's Legplates of Conquest
							i(48448),	-- Wrynn's Pauldrons of Conquest
							i(48374),	-- Wrynn's Shoulderplates of Conquest
						}),
						cl(PALADIN, {	-- Turalyon's Garb (706)
							-- DPS


							-- Tank


							-- Healer


							i(48602),	-- Turalyon's Battleplate of Conquest
							i(48632),	-- Turalyon's Breastplate of Conquest
							i(48634),	-- Turalyon's Faceguard of Conquest
							i(48603),	-- Turalyon's Gauntlets of Conquest
							i(48574),	-- Turalyon's Gloves of Conquest
							i(48568),	-- Turalyon's Greaves of Conquest
							i(48633),	-- Turalyon's Handguards of Conquest
							i(48564),	-- Turalyon's Headpiece of Conquest
							i(48604),	-- Turalyon's Helm of Conquest
							i(48635),	-- Turalyon's Legguards of Conquest
							i(48605),	-- Turalyon's Legplates of Conquest
							i(48636),	-- Turalyon's Shoulderguards of Conquest
							i(48606),	-- Turalyon's Shoulderplates of Conquest
							i(48572),	-- Turalyon's Spaulders of Conquest
							i(48566),	-- Turalyon's Tunic of Conquest
						}),
						cl(HUNTER, {	-- Windrunner's Battlegear (739)
							i(48250),	-- Windrunner's Headpiece of Conquest
							i(48253),	-- Windrunner's Spaulders of Conquest
							i(48251),	-- Windrunner's Tunic of Conquest
							i(48254),	-- Windrunner's Handguards of Conquest
							i(48252),	-- Windrunner's Legguards of Conquest
						}),
						cl(ROGUE, {		-- VanCleef's Battlegear (690)
							i(48218),	-- VanCleef's Helmet of Conquest
							i(48221),	-- VanCleef's Pauldrons of Conquest
							i(48219),	-- VanCleef's Breastplate of Conquest
							i(48222),	-- VanCleef's Gauntlets of Conquest
							i(48220),	-- VanCleef's Legplates of Conquest
						}),
						cl(PRIEST, {	-- Velen's Regalia (349)
							-- DPS


							-- Healer


							i(48073),	-- Velen's Circlet of Conquest
							i(47914),	-- Velen's Cowl of Conquest
							i(47982),	-- Velen's Gloves of Conquest
							i(48072),	-- Velen's Handwraps of Conquest
							i(47980),	-- Velen's Leggings of Conquest
							i(48076),	-- Velen's Mantle of Conquest
							i(48074),	-- Velen's Pants of Conquest
							i(48075),	-- Velen's Raiments of Conquest
							i(47936),	-- Velen's Robe of Conquest
							i(47981),	-- Velen's Shoulderpads of Conquest
						}),
						cl(SHAMAN, {	-- Nobundo's Plate (640)
							-- Elemental


							-- Enhancement


							-- Restoration

							i(48341),	-- Nobundo's Chestguard of Conquest
							i(48343),	-- Nobundo's Faceguard of Conquest
							i(48312),	-- Nobundo's Gloves of Conquest
							i(48342),	-- Nobundo's Grips of Conquest
							i(48284),	-- Nobundo's Handguards of Conquest
							i(48310),	-- Nobundo's Hauberk of Conquest
							i(48280),	-- Nobundo's Headpiece of Conquest
							i(48313),	-- Nobundo's Helm of Conquest
							i(48314),	-- Nobundo's Kilt of Conquest
							i(48282),	-- Nobundo's Legguards of Conquest
							i(48345),	-- Nobundo's Shoulderguards of Conquest
							i(48315),	-- Nobundo's Shoulderpads of Conquest
							i(48283),	-- Nobundo's Spaulders of Conquest
							i(48281),	-- Nobundo's Tunic of Conquest
							i(48344),	-- Nobundo's War-Kilt of Conquest
						}),
						cl(MAGE, {		-- Khadgar's Regalia (722)
							i(47748),	-- Khadgar's Hood of Conquest
							i(47751),	-- Khadgar's Shoulderpads of Conquest
							i(47749),	-- Khadgar's Robe of Conquest
							i(47752),	-- Khadgar's Gauntlets of Conquest
							i(47750),	-- Khadgar's Leggings of Conquest
						}),
						cl(WARLOCK, {	-- Kel'Thuzad's Regalia (674)
							i(47784),	-- Kel'Thuzad's Hood of Conquest
							i(47787),	-- Kel'Thuzad's Shoulderpads of Conquest
							i(47786),	-- Kel'Thuzad's Robe of Conquest
							i(47783),	-- Kel'Thuzad's Gloves of Conquest
							i(47785),	-- Kel'Thuzad's Leggings of Conquest
						}),
						cl(DRUID, {		-- Malfurion's Battlegear (825)
							-- Boomkin


							-- Feral


							-- Restoration

							i(48158),	-- Malfurion's Cover of Conquest
							i(48162),	-- Malfurion's Gloves of Conquest
							i(48213),	-- Malfurion's Handgrips of Conquest
							i(48132),	-- Malfurion's Handguards of Conquest
							i(48214),	-- Malfurion's Headguard of Conquest
							i(48102),	-- Malfurion's Headpiece of Conquest
							i(48130),	-- Malfurion's Leggings of Conquest
							i(48215),	-- Malfurion's Legguards of Conquest
							i(48161),	-- Malfurion's Mantle of Conquest
							i(48216),	-- Malfurion's Raiments of Conquest
							i(48129),	-- Malfurion's Robe of Conquest
							i(48217),	-- Malfurion's Shoulderpads of Conquest
							i(48131),	-- Malfurion's Spaulders of Conquest
							i(48160),	-- Malfurion's Trousers of Conquest
							i(48159),	-- Malfurion's Vestments of Conquest
						}),
						cl(DEATHKNIGHT, {	-- Thassarian's Battlegear (842)
							-- DPS

							-- Tank


							i(48474),	-- Thassarian's Battleplate of Conquest
							i(48531),	-- Thassarian's Chestguard of Conquest
							i(48529),	-- Thassarian's Faceguard of Conquest
							i(48480),	-- Thassarian's Gauntlets of Conquest
							i(48537),	-- Thassarian's Handguards of Conquest
							i(48472),	-- Thassarian's Helmet of Conquest
							i(48533),	-- Thassarian's Legguards of Conquest
							i(48476),	-- Thassarian's Legplates of Conquest
							i(48535),	-- Thassarian's Pauldrons of Conquest
							i(48478),	-- Thassarian's Shoulderplates of Conquest
						}),
					},
				}),
				n(35580, {	-- Aspirant Naradiel <Triumphant Armor Vendor>
					["coord"] = { 75.4, 22.0, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Alliance equivalent.|r",
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Hellscream's Battlegear (657)
							-- DPS


							-- Tank
							i(48458),	-- Hellscream's Greathelm of Conquest
							i(48388),	-- Hellscream's Helmet of Conquest
							i(48460),	-- Hellscream's Pauldrons of Conquest
							i(48390),	-- Hellscream's Shoulderplates of Conquest
							i(48386),	-- Hellscream's Battleplate of Conquest
							i(48456),	-- Hellscream's Breastplate of Conquest
							i(48387),	-- Hellscream's Gauntlets of Conquest
							i(48457),	-- Hellscream's Handguards of Conquest
							i(48459),	-- Hellscream's Legguards of Conquest
							i(48389),	-- Hellscream's Legplates of Conquest
						}),
						cl(PALADIN, {	-- Liadrin's Plate (707)
							-- DPS


							-- Tank


							-- Healer


							i(48631),	-- Liadrin's Battleplate of Conquest
							i(48652),	-- Liadrin's Breastplate of Conquest
							i(48654),	-- Liadrin's Faceguard of Conquest
							i(48630),	-- Liadrin's Gauntlets of Conquest
							i(48598),	-- Liadrin's Gloves of Conquest
							i(48596),	-- Liadrin's Greaves of Conquest
							i(48653),	-- Liadrin's Handguards of Conquest
							i(48597),	-- Liadrin's Headpiece of Conquest
							i(48629),	-- Liadrin's Helm of Conquest
							i(48655),	-- Liadrin's Legguards of Conquest
							i(48628),	-- Liadrin's Legplates of Conquest
							i(48656),	-- Liadrin's Shoulderguards of Conquest
							i(48627),	-- Liadrin's Shoulderplates of Conquest
							i(48595),	-- Liadrin's Spaulders of Conquest
							i(48599),	-- Liadrin's Tunic of Conquest
						}),
						cl(HUNTER, {	-- Windrunner's Pursuit (738)
							i(48277),	-- Windrunner's Headpiece of Conquest
							i(48279),	-- Windrunner's Spaulders of Conquest
							i(48275),	-- Windrunner's Tunic of Conquest
							i(48276),	-- Windrunner's Handguards of Conquest
							i(48278),	-- Windrunner's Legguards of Conquest
						}),
						cl(ROGUE, {		-- Garona's Battlegear (691)
							i(48245),	-- Garona's Helmet of Conquest
							i(48247),	-- Garona's Pauldrons of Conquest
							i(48243),	-- Garona's Breastplate of Conquest
							i(48244),	-- Garona's Gauntlets of Conquest
							i(48246),	-- Garona's Legplates of Conquest
						}),
						cl(PRIEST, {	-- Zabra's Regalia (350)
							-- DPS


							-- Healer


							i(48098),	-- Zabra's Circlet of Conquest
							i(48068),	-- Zabra's Cowl of Conquest
							i(48067),	-- Zabra's Gloves of Conquest
							i(48097),	-- Zabra's Handwraps of Conquest
							i(48069),	-- Zabra's Leggings of Conquest
							i(48101),	-- Zabra's Mantle of Conquest
							i(48099),	-- Zabra's Pants of Conquest
							i(48100),	-- Zabra's Raiments of Conquest
							i(48070),	-- Zabra's Robe of Conquest
							i(48071),	-- Zabra's Shoulderpads of Conquest
						}),
						cl(SHAMAN, {	-- Thrall's Garb (641)
							-- Elemental


							-- Enhancement


							-- Restoration

							i(48366),	-- Thrall's Chestguard of Conquest
							i(48368),	-- Thrall's Faceguard of Conquest
							i(48337),	-- Thrall's Gloves of Conquest
							i(48367),	-- Thrall's Grips of Conquest
							i(48296),	-- Thrall's Handguards of Conquest
							i(48336),	-- Thrall's Hauberk of Conquest
							i(48297),	-- Thrall's Headpiece of Conquest
							i(48338),	-- Thrall's Helm of Conquest
							i(48339),	-- Thrall's Kilt of Conquest
							i(48298),	-- Thrall's Legguards of Conquest
							i(48370),	-- Thrall's Shoulderguards of Conquest
							i(48340),	-- Thrall's Shoulderpads of Conquest
							i(48299),	-- Thrall's Spaulders of Conquest
							i(48295),	-- Thrall's Tunic of Conquest
							i(48369),	-- Thrall's War-Kilt of Conquest
						}),
						cl(MAGE, {		-- Sunstrider's Regalia (723)
							i(47774),	-- Sunstrider's Hood of Conquest
							i(47777),	-- Sunstrider's Shoulderpads of Conquest
							i(47776),	-- Sunstrider's Robe of Conquest
							i(47773),	-- Sunstrider's Gauntlets of Conquest
							i(47775),	-- Sunstrider's Leggings of Conquest
						}),
						cl(WARLOCK, {	-- Gul'dan's Regalia (675)
							i(47801),	-- Gul'dan's Hood of Conquest
							i(47798),	-- Gul'dan's Shoulderpads of Conquest
							i(47799),	-- Gul'dan's Robe of Conquest
							i(47802),	-- Gul'dan's Gloves of Conquest
							i(47800),	-- Gul'dan's Leggings of Conquest
						}),
						cl(DRUID, {		-- Runetotem's Battlegear (826)
							-- Boomkin


							-- Feral


							-- Restoration


							i(48184),	-- Runetotem's Cover of Conquest
							i(48183),	-- Runetotem's Gloves of Conquest
							i(48192),	-- Runetotem's Handgrips of Conquest
							i(48153),	-- Runetotem's Handguards of Conquest
							i(48188),	-- Runetotem's Headguard of Conquest
							i(48154),	-- Runetotem's Headpiece of Conquest
							i(48155),	-- Runetotem's Leggings of Conquest
							i(48190),	-- Runetotem's Legguards of Conquest
							i(48187),	-- Runetotem's Mantle of Conquest
							i(48189),	-- Runetotem's Raiments of Conquest
							i(48156),	-- Runetotem's Robe of Conquest
							i(48191),	-- Runetotem's Shoulderpads of Conquest
							i(48157),	-- Runetotem's Spaulders of Conquest
							i(48185),	-- Runetotem's Trousers of Conquest
							i(48186),	-- Runetotem's Vestments of Conquest
						}),
						cl(DEATHKNIGHT, {	-- Koltira's Battlegear (841)
							-- DPS

							-- Tank


							i(48501),	-- Koltira's Battleplate of Conquest
							i(48558),	-- Koltira's Chestguard of Conquest
							i(48560),	-- Koltira's Faceguard of Conquest
							i(48502),	-- Koltira's Gauntlets of Conquest
							i(48559),	-- Koltira's Handguards of Conquest
							i(48503),	-- Koltira's Helmet of Conquest
							i(48561),	-- Koltira's Legguards of Conquest
							i(48504),	-- Koltira's Legplates of Conquest
							i(48562),	-- Koltira's Pauldrons of Conquest
							i(48505),	-- Koltira's Shoulderpads of Conquest
						}),
					},
				}),
				n(35576, {	-- Champion Faesrol <Triumphant Armor Vendor>
					["coord"] = { 75.2, 22.0, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Alliance equivalent.|r",
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDown({ ["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 } }, {
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Hellscream's Battlegear (657)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								-- DPS


								-- Tank


								i(48398),	-- Hellscream's Helmet of Triumph
								i(48400),	-- Hellscream's Battleplate of Triumph
								i(48396),	-- Hellscream's Shoulderplates of Triumph
								i(48397),	-- Hellscream's Gauntlets of Triumph
								i(48399),	-- Hellscream's Legplates of Triumph
								i(48468),	-- Hellscream's Greathelm of Triumph
								i(48470),	-- Hellscream's Pauldrons of Triumph
								i(48466),	-- Hellscream's Breastplate of Triumph
								i(48467),	-- Hellscream's Handguards of Triumph
								i(48469),	-- Hellscream's Legguards of Triumph
							},
						}),
						cl(PALADIN, {	-- Liadrin's Plate (707)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								-- DPS


								-- Tank


								-- Healer

								i(48587),	-- Liadrin's Headpiece of Triumph
								i(48585),	-- Liadrin's Spaulders of Triumph
								i(48589),	-- Liadrin's Tunic of Triumph
								i(48588),	-- Liadrin's Gloves of Triumph
								i(48586),	-- Liadrin's Greaves of Triumph
								i(48649),	-- Liadrin's Faceguard of Triumph
								i(48647),	-- Liadrin's Shoulderguards of Triumph
								i(48651),	-- Liadrin's Breastplate of Triumph
								i(48650),	-- Liadrin's Handguards of Triumph
								i(48648),	-- Liadrin's Legguards of Triumph
								i(48619),	-- Liadrin's Helm of Triumph
								i(48621),	-- Liadrin's Shoulderplates of Triumph
								i(48617),	-- Liadrin's Battleplate of Triumph
								i(48618),	-- Liadrin's Gauntlets of Triumph
								i(48620),	-- Liadrin's Legplates of Triumph
							},
						}),
						cl(HUNTER, {	-- Windrunner's Pursuit (738)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								i(48267),	-- Windrunner's Headpiece of Triumph
								i(48269),	-- Windrunner's Spaulders of Triumph
								i(48265),	-- Windrunner's Tunic of Triumph
								i(48266),	-- Windrunner's Handguards of Triumph
								i(48268),	-- Windrunner's Legguards of Triumph
							},
						}),
						cl(ROGUE, {		-- Garona's Battlegear (691)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								i(48235),	-- Garona's Helmet of Triumph
								i(48237),	-- Garona's Pauldrons of Triumph
								i(48233),	-- Garona's Breastplate of Triumph
								i(48234),	-- Garona's Gauntlets of Triumph
								i(48236),	-- Garona's Legplates of Triumph
							},
						}),
						cl(PRIEST, {	-- Zabra's Regalia (350)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								-- DPS


								-- Healer

								i(48058),	-- Zabra's Cowl of Triumph
								i(48061),	-- Zabra's Shoulderpads of Triumph
								i(48060),	-- Zabra's Robe of Triumph
								i(48057),	-- Zabra's Gloves of Triumph
								i(48059),	-- Zabra's Leggings of Triumph
								i(48088),	-- Zabra's Circlet of Triumph
								i(48091),	-- Zabra's Mantle of Triumph
								i(48090),	-- Zabra's Raiments of Triumph
								i(48087),	-- Zabra's Handwraps of Triumph
								i(48089),	-- Zabra's Pants of Triumph
							},
						}),
						cl(SHAMAN, {	-- Thrall's Garb (641)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								-- Elemental


								-- Enhancement


								-- Restoration

								i(48328),	-- Thrall's Helm of Triumph
								i(48330),	-- Thrall's Shoulderpads of Triumph
								i(48326),	-- Thrall's Hauberk of Triumph
								i(48327),	-- Thrall's Gloves of Triumph
								i(48329),	-- Thrall's Kilt of Triumph
								i(48358),	-- Thrall's Faceguard of Triumph
								i(48360),	-- Thrall's Shoulderguards of Triumph
								i(48356),	-- Thrall's Chestguard of Triumph
								i(48357),	-- Thrall's Grips of Triumph
								i(48359),	-- Thrall's War-Kilt of Triumph
								i(48307),	-- Thrall's Headpiece of Triumph
								i(48309),	-- Thrall's Spaulders of Triumph
								i(48305),	-- Thrall's Tunic of Triumph
								i(48306),	-- Thrall's Handguards of Triumph
								i(48308),	-- Thrall's Legguards of Triumph
							},
						}),
						cl(MAGE, {		-- Sunstrider's Regalia (723)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								i(47764),	-- Sunstrider's Hood of Triumph
								i(47767),	-- Sunstrider's Shoulderpads of Triumph
								i(47766),	-- Sunstrider's Robe of Triumph
								i(47763),	-- Sunstrider's Gauntlets of Triumph
								i(47765),	-- Sunstrider's Leggings of Triumph
							},
						}),
						cl(WARLOCK, {	-- Gul'dan's Regalia (675)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								i(47796),	-- Gul'dan's Hood of Triumph
								i(47793),	-- Gul'dan's Shoulderpads of Triumph
								i(47794),	-- Gul'dan's Robe of Triumph
								i(47797),	-- Gul'dan's Gloves of Triumph
								i(47795),	-- Gul'dan's Leggings of Triumph
							},
						}),
						cl(DRUID, {		-- Runetotem's Battlegear (826)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								-- Boomkin


								-- Feral


								-- Restoration

								i(48201),	-- Runetotem's Headguard of Triumph
								i(48198),	-- Runetotem's Shoulderpads of Triumph
								i(48199),	-- Runetotem's Raiments of Triumph
								i(48202),	-- Runetotem's Handgrips of Triumph
								i(48200),	-- Runetotem's Legguards of Triumph
								i(48174),	-- Runetotem's Cover of Triumph
								i(48177),	-- Runetotem's Mantle of Triumph
								i(48176),	-- Runetotem's Vestments of Triumph
								i(48173),	-- Runetotem's Gloves of Triumph
								i(48175),	-- Runetotem's Trousers of Triumph
								i(48144),	-- Runetotem's Headpiece of Triumph
								i(48147),	-- Runetotem's Spaulders of Triumph
								i(48146),	-- Runetotem's Robe of Triumph
								i(48143),	-- Runetotem's Handguards of Triumph
								i(48145),	-- Runetotem's Leggings of Triumph
							},
						}),
						cl(DEATHKNIGHT, {	-- Koltira's Battlegear (841)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								-- DPS

								-- Tank

								i(48550),	-- Koltira's Faceguard of Triumph
								i(48552),	-- Koltira's Pauldrons of Triumph
								i(48548),	-- Koltira's Chestguard of Triumph
								i(48549),	-- Koltira's Handguards of Triumph
								i(48551),	-- Koltira's Legguards of Triumph
								i(48493),	-- Koltira's Helmet of Triumph
								i(48495),	-- Koltira's Shoulderpads of Triumph
								i(48491),	-- Koltira's Battleplate of Triumph
								i(48492),	-- Koltira's Gauntlets of Triumph
								i(48494),	-- Koltira's Legplates of Triumph
							},
						}),
					}),
				}),
				n(35575, {	-- Champion Isimode <Triumphant Armor Vendor>
					["coord"] = { 75.2, 21.6, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Horde equivalent.|r",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDown({ ["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 } }, {
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Wrynn's Battlegear (658)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								-- DPS


								-- Tank


								i(48385),	-- Wrynn's Battleplate of Triumph
								i(48451),	-- Wrynn's Breastplate of Triumph
								i(48384),	-- Wrynn's Gauntlets of Triumph
								i(48433),	-- Wrynn's Greathelm of Triumph
								i(48453),	-- Wrynn's Handguards of Triumph
								i(48383),	-- Wrynn's Helmet of Triumph
								i(48447),	-- Wrynn's Legguards of Triumph
								i(48382),	-- Wrynn's Legplates of Triumph
								i(48455),	-- Wrynn's Pauldrons of Triumph
								i(48381),	-- Wrynn's Shoulderplates of Triumph
							},
						}),
						cl(PALADIN, {	-- Turalyon's Garb (706)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								-- DPS


								-- Tank


								-- Healer

								i(48616),	-- Turalyon's Battleplate of Triumph
								i(48642),	-- Turalyon's Breastplate of Triumph
								i(48644),	-- Turalyon's Faceguard of Triumph
								i(48615),	-- Turalyon's Gauntlets of Triumph
								i(48583),	-- Turalyon's Gloves of Triumph
								i(48581),	-- Turalyon's Greaves of Triumph
								i(48643),	-- Turalyon's Handguards of Triumph
								i(48582),	-- Turalyon's Headpiece of Triumph
								i(48614),	-- Turalyon's Helm of Triumph
								i(48645),	-- Turalyon's Legguards of Triumph
								i(48613),	-- Turalyon's Legplates of Triumph
								i(48646),	-- Turalyon's Shoulderguards of Triumph
								i(48612),	-- Turalyon's Shoulderplates of Triumph
								i(48580),	-- Turalyon's Spaulders of Triumph
								i(48584),	-- Turalyon's Tunic of Triumph
							},
						}),
						cl(HUNTER, {	-- Windrunner's Battlegear (739)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								i(48262),	-- Windrunner's Headpiece of Triumph
								i(48260),	-- Windrunner's Spaulders of Triumph
								i(48264),	-- Windrunner's Tunic of Triumph
								i(48263),	-- Windrunner's Handguards of Triumph
								i(48261),	-- Windrunner's Legguards of Triumph
							},
						}),
						cl(ROGUE, {		-- VanCleef's Battlegear (690)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								i(48230),	-- VanCleef's Helmet of Triumph
								i(48228),	-- VanCleef's Pauldrons of Triumph
								i(48232),	-- VanCleef's Breastplate of Triumph
								i(48231),	-- VanCleef's Gauntlets of Triumph
								i(48229),	-- VanCleef's Legplates of Triumph
							},
						}),
						cl(PRIEST, {	-- Velen's Regalia (349)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								-- DPS


								-- Healer

								i(48085),	-- Velen's Circlet of Triumph
								i(48035),	-- Velen's Cowl of Triumph
								i(48037),	-- Velen's Gloves of Triumph
								i(48086),	-- Velen's Handwraps of Triumph
								i(48033),	-- Velen's Leggings of Triumph
								i(48082),	-- Velen's Mantle of Triumph
								i(48084),	-- Velen's Pants of Triumph
								i(48083),	-- Velen's Raiments of Triumph
								i(48031),	-- Velen's Robe of Triumph
								i(48029),	-- Velen's Shoulderpads of Triumph
							},
						}),
						cl(SHAMAN, {	-- Nobundo's Plate (640)
							["cost"] = { { "i", 47558, 1 } },	-- Regalia of the Grand Protector
							["groups"] = {
								-- Elemental


								-- Enhancement


								-- Restoration


								i(48355),	-- Nobundo's Chestguard of Triumph
								i(48353),	-- Nobundo's Faceguard of Triumph
								i(48324),	-- Nobundo's Gloves of Triumph
								i(48354),	-- Nobundo's Grips of Triumph
								i(48293),	-- Nobundo's Handguards of Triumph
								i(48325),	-- Nobundo's Hauberk of Triumph
								i(48292),	-- Nobundo's Headpiece of Triumph
								i(48323),	-- Nobundo's Helm of Triumph
								i(48322),	-- Nobundo's Kilt of Triumph
								i(48291),	-- Nobundo's Legguards of Triumph
								i(48351),	-- Nobundo's Shoulderguards of Triumph
								i(48321),	-- Nobundo's Shoulderpads of Triumph
								i(48290),	-- Nobundo's Spaulders of Triumph
								i(48294),	-- Nobundo's Tunic of Triumph
								i(48352),	-- Nobundo's War-Kilt of Triumph
							},
						}),
						cl(MAGE, {		-- Khadgar's Regalia (722)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								i(47761),	-- Khadgar's Hood of Triumph
								i(47758),	-- Khadgar's Shoulderpads of Triumph
								i(47759),	-- Khadgar's Robe of Triumph
								i(47762),	-- Khadgar's Gauntlets of Triumph
								i(47760),	-- Khadgar's Leggings of Triumph
							},
						}),
						cl(WARLOCK, {	-- Kel'Thuzad's Regalia (674)
							["cost"] = { { "i", 47557, 1 } },	-- Regalia of the Grand Conqueror
							["groups"] = {
								i(47788),	-- Kel'Thuzad's Gloves of Triumph
								i(47789),	-- Kel'Thuzad's Hood of Triumph
								i(47790),	-- Kel'Thuzad's Leggings of Triumph
								i(47791),	-- Kel'Thuzad's Robe of Triumph
								i(47792),	-- Kel'Thuzad's Shoulderpads of Triumph
							},
						}),
						cl(DRUID, {		-- Malfurion's Battlegear (825)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								-- Boomkin


								-- Feral


								-- Restoration

								i(48171),	-- Malfurion's Cover of Triumph
								i(48172),	-- Malfurion's Gloves of Triumph
								i(48203),	-- Malfurion's Handgrips of Triumph
								i(48142),	-- Malfurion's Handguards of Triumph
								i(48204),	-- Malfurion's Headguard of Triumph
								i(48141),	-- Malfurion's Headpiece of Triumph
								i(48140),	-- Malfurion's Leggings of Triumph
								i(48205),	-- Malfurion's Legguards of Triumph
								i(48168),	-- Malfurion's Mantle of Triumph
								i(48206),	-- Malfurion's Raiments of Triumph
								i(48139),	-- Malfurion's Robe of Triumph
								i(48207),	-- Malfurion's Shoulderpads of Triumph
								i(48138),	-- Malfurion's Spaulders of Triumph
								i(48170),	-- Malfurion's Trousers of Triumph
								i(48169),	-- Malfurion's Vestments of Triumph
							},
						}),
						cl(DEATHKNIGHT, {	-- Thassarian's Battlegear (842)
							["cost"] = { { "i", 47559, 1 } },	-- Regalia of the Grand Vanquisher
							["groups"] = {
								-- DPS

								-- Tank
								i(48490),	-- Thassarian's Battleplate of Triumph
								i(48547),	-- Thassarian's Chestguard of Triumph
								i(48545),	-- Thassarian's Faceguard of Triumph
								i(48489),	-- Thassarian's Gauntlets of Triumph
								i(48546),	-- Thassarian's Handguards of Triumph
								i(48488),	-- Thassarian's Helmet of Triumph
								i(48544),	-- Thassarian's Legguards of Triumph
								i(48487),	-- Thassarian's Legplates of Triumph
								i(48543),	-- Thassarian's Pauldrons of Triumph
								i(48486),	-- Thassarian's Shoulderplates of Triumph
							},
						}),
					}),
				}),
				n(35578, {	-- Valiant Bressia <Triumphant Armor Vendor>
					["coord"] = { 75.4, 22.0, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Alliance equivalent.|r",
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDownFiltered(
						{
							["cost"] = { { "i", 47242, 1 } },	-- Trophy of the Crusade
						},FILTERFUNC_itemID,{
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Hellscream's Battlegear (657)
							-- DPS


							-- Tank


							i(48391),	-- Hellscream's Battleplate of Triumph
							i(48461),	-- Hellscream's Breastplate of Triumph
							i(48392),	-- Hellscream's Gauntlets of Triumph
							i(48463),	-- Hellscream's Greathelm of Triumph
							i(48462),	-- Hellscream's Handguards of Triumph
							i(48393),	-- Hellscream's Helmet of Triumph
							i(48464),	-- Hellscream's Legguards of Triumph
							i(48394),	-- Hellscream's Legplates of Triumph
							i(48465),	-- Hellscream's Pauldrons of Triumph
							i(48395),	-- Hellscream's Shoulderplates of Triumph
						}),
						cl(PALADIN, {	-- Liadrin's Plate (707)
							-- DPS


							-- Tank


							-- Healer


							i(48626),	-- Liadrin's Battleplate of Triumph
							i(48657),	-- Liadrin's Breastplate of Triumph
							i(48659),	-- Liadrin's Faceguard of Triumph
							i(48625),	-- Liadrin's Gauntlets of Triumph
							i(48593),	-- Liadrin's Gloves of Triumph
							i(48591),	-- Liadrin's Greaves of Triumph
							i(48658),	-- Liadrin's Handguards of Triumph
							i(48592),	-- Liadrin's Headpiece of Triumph
							i(48624),	-- Liadrin's Helm of Triumph
							i(48660),	-- Liadrin's Legguards of Triumph
							i(48623),	-- Liadrin's Legplates of Triumph
							i(48661),	-- Liadrin's Shoulderguards of Triumph
							i(48622),	-- Liadrin's Shoulderplates of Triumph
							i(48590),	-- Liadrin's Spaulders of Triumph
							i(48594),	-- Liadrin's Tunic of Triumph
						}),
						cl(HUNTER, {	-- Windrunner's Pursuit (738)
							i(48272),	-- Windrunner's Headpiece of Triumph
							i(48270),	-- Windrunner's Spaulders of Triumph
							i(48274),	-- Windrunner's Tunic of Triumph
							i(48273),	-- Windrunner's Handguards of Triumph
							i(48271),	-- Windrunner's Legguards of Triumph
						}),
						cl(ROGUE, {		-- Garona's Battlegear (691)
							i(48240),	-- Garona's Helmet of Triumph
							i(48238),	-- Garona's Pauldrons of Triumph
							i(48242),	-- Garona's Breastplate of Triumph
							i(48241),	-- Garona's Gauntlets of Triumph
							i(48239),	-- Garona's Legplates of Triumph
						}),
						cl(PRIEST, {	-- Zabra's Regalia (350)
							-- DPS


							-- Healer

							i(48095),	-- Zabra's Circlet of Triumph
							i(48065),	-- Zabra's Cowl of Triumph
							i(48066),	-- Zabra's Gloves of Triumph
							i(48096),	-- Zabra's Handwraps of Triumph
							i(48064),	-- Zabra's Leggings of Triumph
							i(48092),	-- Zabra's Mantle of Triumph
							i(48094),	-- Zabra's Pants of Triumph
							i(48093),	-- Zabra's Raiments of Triumph
							i(48063),	-- Zabra's Robe of Triumph
							i(48062),	-- Zabra's Shoulderpads of Triumph
						}),
						cl(SHAMAN, {	-- Thrall's Garb (641)
							-- Elemental


							-- Enhancement


							-- Restoration


							i(48365),	-- Thrall's Chestguard of Triumph
							i(48363),	-- Thrall's Faceguard of Triumph
							i(48334),	-- Thrall's Gloves of Triumph
							i(48364),	-- Thrall's Grips of Triumph
							i(48301),	-- Thrall's Handguards of Triumph
							i(48335),	-- Thrall's Hauberk of Triumph
							i(48302),	-- Thrall's Headpiece of Triumph
							i(48333),	-- Thrall's Helm of Triumph
							i(48332),	-- Thrall's Kilt of Triumph
							i(48303),	-- Thrall's Legguards of Triumph
							i(48361),	-- Thrall's Shoulderguards of Triumph
							i(48331),	-- Thrall's Shoulderpads of Triumph
							i(48304),	-- Thrall's Spaulders of Triumph
							i(48300),	-- Thrall's Tunic of Triumph
							i(48362),	-- Thrall's War-Kilt of Triumph
						}),
						cl(MAGE, {		-- Sunstrider's Regalia (723)
							i(47771),	-- Sunstrider's Hood of Triumph
							i(47768),	-- Sunstrider's Shoulderpads of Triumph
							i(47769),	-- Sunstrider's Robe of Triumph
							i(47772),	-- Sunstrider's Gauntlets of Triumph
							i(47770),	-- Sunstrider's Leggings of Triumph
						}),
						cl(WARLOCK, {	-- Gul'dan's Regalia (675)
							i(47804),	-- Gul'dan's Hood of Triumph
							i(47807),	-- Gul'dan's Shoulderpads of Triumph
							i(47806),	-- Gul'dan's Robe of Triumph
							i(47803),	-- Gul'dan's Gloves of Triumph
							i(47805),	-- Gul'dan's Leggings of Triumph
						}),
						cl(DRUID, {		-- Runetotem's Battlegear (826)
							-- Boomkin


							-- Feral


							-- Restoration

							i(48181),	-- Runetotem's Cover of Triumph
							i(48182),	-- Runetotem's Gloves of Triumph
							i(48193),	-- Runetotem's Handgrips of Triumph
							i(48152),	-- Runetotem's Handguards of Triumph
							i(48194),	-- Runetotem's Headguard of Triumph
							i(48151),	-- Runetotem's Headpiece of Triumph
							i(48150),	-- Runetotem's Leggings of Triumph
							i(48195),	-- Runetotem's Legguards of Triumph
							i(48178),	-- Runetotem's Mantle of Triumph
							i(48196),	-- Runetotem's Raiments of Triumph
							i(48149),	-- Runetotem's Robe of Triumph
							i(48197),	-- Runetotem's Shoulderpads of Triumph
							i(48148),	-- Runetotem's Spaulders of Triumph
							i(48180),	-- Runetotem's Trousers of Triumph
							i(48179),	-- Runetotem's Vestments of Triumph
						}),
						cl(DEATHKNIGHT, {	-- Koltira's Battlegear (841)
							-- DPS

							-- Tank

							i(48500),	-- Koltira's Battleplate of Triumph
							i(48557),	-- Koltira's Chestguard of Triumph
							i(48555),	-- Koltira's Faceguard of Triumph
							i(48499),	-- Koltira's Gauntlets of Triumph
							i(48556),	-- Koltira's Handguards of Triumph
							i(48498),	-- Koltira's Helmet of Triumph
							i(48554),	-- Koltira's Legguards of Triumph
							i(48497),	-- Koltira's Legplates of Triumph
							i(48553),	-- Koltira's Pauldrons of Triumph
							i(48496),	-- Koltira's Shoulderpads of Triumph
						}),
					}),
				}),
				n(35577, {	-- Valiant Laradia <Triumphant Armor Vendor>
					["coord"] = { 75.4, 21.6, ICECROWN },
					-- #if AFTER LEGION
					["description"] = "|CFFFF0000Purchasing this exact piece (shared appearances don't work) and letting the 2 hour timer disappear unlocks the Horde equivalent.|r",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownFiltered(
						{
							["cost"] = { { "i", 47242, 1 } },	-- Trophy of the Crusade
						},FILTERFUNC_itemID,{
						-- TODO: Finish sorting this.
						cl(WARRIOR, {	-- Wrynn's Battlegear (658)
							-- DPS


							-- Tank

							i(48376),	-- Wrynn's Battleplate of Triumph
							i(48450),	-- Wrynn's Breastplate of Triumph
							i(48377),	-- Wrynn's Gauntlets of Triumph
							i(48430),	-- Wrynn's Greathelm of Triumph
							i(48452),	-- Wrynn's Handguards of Triumph
							i(48378),	-- Wrynn's Helmet of Triumph
							i(48446),	-- Wrynn's Legguards of Triumph
							i(48379),	-- Wrynn's Legplates of Triumph
							i(48454),	-- Wrynn's Pauldrons of Triumph
							i(48380),	-- Wrynn's Shoulderplates of Triumph
						}),
						cl(PALADIN, {	-- Turalyon's Garb (706)
							-- DPS


							-- Tank


							-- Healer


							i(48607),	-- Turalyon's Battleplate of Triumph
							i(48641),	-- Turalyon's Breastplate of Triumph
							i(48639),	-- Turalyon's Faceguard of Triumph
							i(48608),	-- Turalyon's Gauntlets of Triumph
							i(48576),	-- Turalyon's Gloves of Triumph
							i(48578),	-- Turalyon's Greaves of Triumph
							i(48640),	-- Turalyon's Handguards of Triumph
							i(48577),	-- Turalyon's Headpiece of Triumph
							i(48609),	-- Turalyon's Helm of Triumph
							i(48638),	-- Turalyon's Legguards of Triumph
							i(48610),	-- Turalyon's Legplates of Triumph
							i(48637),	-- Turalyon's Shoulderguards of Triumph
							i(48611),	-- Turalyon's Shoulderplates of Triumph
							i(48579),	-- Turalyon's Spaulders of Triumph
							i(48575),	-- Turalyon's Tunic of Triumph
						}),
						cl(HUNTER, {	-- Windrunner's Battlegear (739)
							i(48257),	-- Windrunner's Headpiece of Triumph
							i(48259),	-- Windrunner's Spaulders of Triumph
							i(48255),	-- Windrunner's Tunic of Triumph
							i(48256),	-- Windrunner's Handguards of Triumph
							i(48258),	-- Windrunner's Legguards of Triumph
						}),
						cl(ROGUE, {		-- VanCleef's Battlegear (690)
							i(48225),	-- VanCleef's Helmet of Triumph
							i(48227),	-- VanCleef's Pauldrons of Triumph
							i(48223),	-- VanCleef's Breastplate of Triumph
							i(48224),	-- VanCleef's Gauntlets of Triumph
							i(48226),	-- VanCleef's Legplates of Triumph
						}),
						cl(PRIEST, {	-- Velen's Regalia (349)
							-- DPS


							-- Healer

							i(48078),	-- Velen's Circlet of Triumph
							i(47984),	-- Velen's Cowl of Triumph
							i(47983),	-- Velen's Gloves of Triumph
							i(48077),	-- Velen's Handwraps of Triumph
							i(47985),	-- Velen's Leggings of Triumph
							i(48081),	-- Velen's Mantle of Triumph
							i(48079),	-- Velen's Pants of Triumph
							i(48080),	-- Velen's Raiments of Triumph
							i(47986),	-- Velen's Robe of Triumph
							i(47987),	-- Velen's Shoulderpads of Triumph
						}),
						cl(SHAMAN, {	-- Nobundo's Plate (640)
							-- Elemental


							-- Enhancement


							-- Restoration

							i(48346),	-- Nobundo's Chestguard of Triumph
							i(48348),	-- Nobundo's Faceguard of Triumph
							i(48317),	-- Nobundo's Gloves of Triumph
							i(48347),	-- Nobundo's Grips of Triumph
							i(48286),	-- Nobundo's Handguards of Triumph
							i(48316),	-- Nobundo's Hauberk of Triumph
							i(48287),	-- Nobundo's Headpiece of Triumph
							i(48318),	-- Nobundo's Helm of Triumph
							i(48319),	-- Nobundo's Kilt of Triumph
							i(48288),	-- Nobundo's Legguards of Triumph
							i(48350),	-- Nobundo's Shoulderguards of Triumph
							i(48320),	-- Nobundo's Shoulderpads of Triumph
							i(48289),	-- Nobundo's Spaulders of Triumph
							i(48285),	-- Nobundo's Tunic of Triumph
							i(48349),	-- Nobundo's War-Kilt of Triumph
						}),
						cl(MAGE, {		-- Khadgar's Regalia (722)
							i(47754),	-- Khadgar's Hood of Triumph
							i(47757),	-- Khadgar's Shoulderpads of Triumph
							i(47756),	-- Khadgar's Robe of Triumph
							i(47753),	-- Khadgar's Gauntlets of Triumph
							i(47755),	-- Khadgar's Leggings of Triumph
						}),
						cl(WARLOCK, {	-- Kel'Thuzad's Regalia (674)
							i(47778),	-- Kel'Thuzad's Hood of Triumph
							i(47781),	-- Kel'Thuzad's Shoulderpads of Triumph
							i(47779),	-- Kel'Thuzad's Robe of Triumph
							i(47782),	-- Kel'Thuzad's Gloves of Triumph
							i(47780),	-- Kel'Thuzad's Leggings of Triumph
						}),
						cl(DRUID, {		-- Malfurion's Battlegear (825)
							-- Boomkin


							-- Feral


							-- Restoration


							i(48164),	-- Malfurion's Cover of Triumph
							i(48163),	-- Malfurion's Gloves of Triumph
							i(48212),	-- Malfurion's Handgrips of Triumph
							i(48133),	-- Malfurion's Handguards of Triumph
							i(48211),	-- Malfurion's Headguard of Triumph
							i(48134),	-- Malfurion's Headpiece of Triumph
							i(48135),	-- Malfurion's Leggings of Triumph
							i(48210),	-- Malfurion's Legguards of Triumph
							i(48167),	-- Malfurion's Mantle of Triumph
							i(48209),	-- Malfurion's Raiments of Triumph
							i(48136),	-- Malfurion's Robe of Triumph
							i(48208),	-- Malfurion's Shoulderpads of Triumph
							i(48137),	-- Malfurion's Spaulders of Triumph
							i(48165),	-- Malfurion's Trousers of Triumph
							i(48166),	-- Malfurion's Vestments of Triumph
						}),
						cl(DEATHKNIGHT, {	-- Thassarian's Battlegear (842)
							-- DPS

							-- Tank


							i(48481),	-- Thassarian's Battleplate of Triumph
							i(48538),	-- Thassarian's Chestguard of Triumph
							i(48540),	-- Thassarian's Faceguard of Triumph
							i(48482),	-- Thassarian's Gauntlets of Triumph
							i(48539),	-- Thassarian's Handguards of Triumph
							i(48483),	-- Thassarian's Helmet of Triumph
							i(48541),	-- Thassarian's Legguards of Triumph
							i(48484),	-- Thassarian's Legplates of Triumph
							i(48542),	-- Thassarian's Pauldrons of Triumph
							i(48485),	-- Thassarian's Shoulderplates of Triumph
						}),
					}),
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					34796,	-- Gormok
					35144,	-- Acidmaw
					34799,	-- Dreadscale
					34797,	-- Icehowl
					34780,	-- Lord Jaraxxus
					34461,	-- Tyrius Duskblade
					34460,	-- Kavina Grovesong
					34469,	-- Melador Valestrider
					34467,	-- Alyssia Moonstalker
					34468,	-- Noozle Whizzlestick
					34465,	-- Velanaa
					34471,	-- Baelnor Lightbearer
					34466,	-- Anthar Forgemender
					34473,	-- Brienna Nightfell
					34472,	-- Irieth Shadowstep
					34463,	-- Shaabad
					34470,	-- Saamul
					34474,	-- Serissa Grimdabbler
					34475,	-- Shocuul
					34458,	-- Gorgrim Shadowcleave
					34451,	-- Birana Stormhoof
					34459,	-- Erin Misthoof
					34448,	-- Ruj'kah
					34449,	-- Ginselle Blightslinger
					34445,	-- Liandra Suncaller
					34456,	-- Malithas Brightblade
					34447,	-- Caiphus the Stern
					34441,	-- Vivienne Blackwhisper
					34454,	-- Maz'dinah
					34455,	-- Broln Stouthorn
					34444,	-- Thrakgar
					34450,	-- Harkzog
					34453,	-- Narrhok Steelbreaker
					34497,	-- Fjola Lightbane
					34496,	-- Eydis Darkbane
					34564,	-- Anub'arak
				},
				["description"] = "These drop on all difficulties other than 10 Man Normal.",
				["groups"] = {
					-- #if BEFORE 4.0.1
					currency(301),	-- Emblem of Triumph
					-- #endif
					i(47654, {	-- Pattern: Bejeweled Wizard's Bracers [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47639, {	-- Pattern: Bejeweled Wizard's Bracers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47629, {	-- Pattern: Black Chitin Bracers [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47646, {	-- Pattern: Black Chitin Bracers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47635, {	-- Pattern: Bracers of Swift Death [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47647, {	-- Pattern: Bracers of Swift Death [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47631, {	-- Pattern: Crusader's Dragonscale Bracers [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47648, {	-- Pattern: Crusader's Dragonscale Bracers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47630, {	-- Pattern: Crusader's Dragonscale Breastplate [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47649, {	-- Pattern: Crusader's Dragonscale Breastplate [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47628, {	-- Pattern: Ensorcelled Nerubian Breastplate [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47650, {	-- Pattern: Ensorcelled Nerubian Breastplate [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47634, {	-- Pattern: Knightbane Carapace [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47651, {	-- Pattern: Knightbane Carapace [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47632, {	-- Pattern: Lunar Eclipse Robes [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47652, {	-- Pattern: Lunar Eclipse Robes [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47655, {	-- Pattern: Merlin's Robe [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47638, {	-- Pattern: Merlin's Robe [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47633, {	-- Pattern: Moonshadow Armguards [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47653, {	-- Pattern: Moonshadow Armguards [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47656, {	-- Pattern: Royal Moonshroud Bracers [H] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47637, {	-- Pattern: Royal Moonshroud Bracers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47657, {	-- Pattern: Royal Moonshroud Robe [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47636, {	-- Pattern: Royal Moonshroud Robe [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47622, {	-- Plans: Breastplate of the White Knight [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47640, {	-- Plans: Breastplate of the White Knight [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47623, {	-- Plans: Saronite Swordbreakers [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47641, {	-- Plans: Saronite Swordbreakers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47627, {	-- Plans: Sunforged Bracers [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47642, {	-- Plans: Sunforged Bracers [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47626, {	-- Plans: Sunforged Breastplate [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47643, {	-- Plans: Sunforged Breastplate [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47624, {	-- Plans: Titanium Razorplate [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47644, {	-- Plans: Titanium Razorplate [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47625, {	-- Plans: Titanium Spikeguards [A] (RECIPE!)
						["races"] = ALLIANCE_ONLY,
					}),
					i(47645, {	-- Plans: Titanium Spikeguards [H] (RECIPE!)
						["races"] = HORDE_ONLY,
					}),
					i(47556),	-- Crusader Orb
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				e(1618, {	-- Northrend Beasts
					["crs"] = {
						34797,	-- Icehowl
						34796,	-- Gormok
						35144,	-- Acidmaw
						34799,	-- Dreadscale
					},
					["groups"] = {
						ach(3936),	-- Not One, But Two Jormungars (10 player)
						ach(3797),	-- Upper Back Pain (10 player)
						i(142083, {	-- Dreadmaw (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(142084, {	-- Snobold Runt (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						a(i(47612)),	-- Rod of Imprisoned Souls
						h(i(47856)),	-- Scepter of Imprisoned Souls
						a(i(47607)),	-- Collar of Ceaseless Torment
						h(i(47849)),	-- Collar of Unending Torment
						h(i(47857)),	-- Pauldrons of the Glacial Winds
						a(i(47613)),	-- Shoulderpads of the Glacial Winds
						h(i(47860)),	-- Pauldrons of the Spirit Walker
						a(i(47616)),	-- Shoulderguards of the Spirit Walker
						a(i(47610)),	-- Armbands of the Northern Stalker
						h(i(47850)),	-- Bracers of the Northern Stalker
						a(i(47611)),	-- Dreadscale Armguards
						h(i(47852)),	-- Dreadscale Bracers
						h(i(47851)),	-- Gauntlets of Mounting Anger
						a(i(47609)),	-- Gauntlets of Rising Anger
						h(i(47859)),	-- Belt of the Impaler
						a(i(47614)),	-- Girdle of the Impaler
						a(i(47615)),	-- Belt of the Frozen Reach
						h(i(47858)),	-- Girdle of the Frozen Reach
						h(i(47855)),	-- Icehowl Binding
						a(i(47617)),	-- Icehowl Cinch
						a(i(47608)),	-- Acidmaw Boots
						h(i(47853)),	-- Acidmaw Treads
						a(i(47578)),	-- Carnivorous Band
						h(i(47854)),	-- Gormok's Band
					},
				}),
				e(1619, {	-- Lord Jaraxxus
					["crs"] = { 34780 },	-- Lord Jaraxxus
					["groups"] = {
						ach(3996),		-- Three Sixty Pain Spike (10 player)
						a(i(47676)),	-- Dirk of the Night Watch
						h(i(47871)),	-- Orcish Deathblade
						h(i(47619)),	-- Amulet of Binding Elements
						a(i(47679)),	-- Endurance of the Infernal
						h(i(47872)),	-- Fortitude of the Infernal
						h(i(47864)),	-- Pendant of Binding Elements
						a(i(47680)),	-- Armguards of the Nether Lord
						h(i(47869)),	-- Armplates of the Nether Lord
						a(i(47663)),	-- Felspark Bindings
						h(i(47861)),	-- Felspark Bracers
						h(i(47863)),	-- Belt of the Bloodhoof Emissary
						a(i(47669)),	-- Belt of the Winter Solstice
						h(i(47870)),	-- Belt of the Nether Champion
						a(i(47711)),	-- Girdle of the Nether Champion
						h(i(47866)),	-- Darkspear Ritual Binding
						a(i(47621)),	-- Girdle of the Farseer
						a(i(47620)),	-- Leggings of the Demonic Messenger
						h(i(47865)),	-- Legwraps of the Demonic Messenger
						a(i(49235)),	-- Boots of Tortured Space
						h(i(49236)),	-- Sabatons of Tortured Space
						a(i(47683)),	-- Sentinel Scouting Greaves
						h(i(47867)),	-- Warsong Poacher's Greaves
						h(i(47862)),	-- Firestorm Band
						a(i(47618)),	-- Firestorm Ring
						h(i(47868)),	-- Planestalker Band
						a(i(47703)),	-- Planestalker Signet
					},
				}),
				e(1620, {	-- Champions of the Alliance
					["races"] = HORDE_ONLY,
					["crs"] = {
						34467,	-- Alyssia Moonstalker
						34466,	-- Anthar Forgemender
						34471,	-- Baelnor Lightbearer
						34473,	-- Brienna Nightfell
						34472,	-- Irieth Shadowstep
						34460,	-- Kavina Grovesong
						34469,	-- Melador Valestrider
						34468,	-- Noozle Whizzlestick
						34470,	-- Saamul
						34474,	-- Serissa Grimdabbler
						34463,	-- Shaabad
						34475,	-- Shocuul
						34461,	-- Tyrius Duskblade
						34465,	-- Velanaa
					},
					["groups"] = {
						ach(3798),	-- Resilience Will Fix It (10 player)
						i(47874),	-- Sunreaver Disciple's Blade
						i(47876),	-- Sunreaver Champion's Faceplate
						i(47875),	-- Sunreaver Ranger's Helm
						i(47877),	-- Sunreaver Defender's Pauldrons
						i(47878),	-- Sunreaver Assassin's Gloves
						i(47873),	-- Sunreaver Magus' Sandals
						i(47880),	-- Binding Stone
						i(47882),	-- Eitrigg's Oath
						i(47879),	-- Fetish of Volatile Power
						i(47881),	-- Vengeance of the Forsaken
					},
				}),
				e(1621, {	-- Champions of the Horde
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						34451,	-- Birana Stormhoof
						34455,	-- Broln Stouthorn
						34447,	-- Caiphus the Stern
						34459,	-- Erin Misthoof
						34449,	-- Ginselle Blightslinger
						34458,	-- Gorgrim Shadowcleave
						34450,	-- Harkzog
						34445,	-- Liandra Suncaller
						34456,	-- Malithas Brightblade
						34454,	-- Maz'dinah
						34453,	-- Narrhok Steelbreaker
						34448,	-- Ruj'kah
						34444,	-- Thrakgar
						34441,	-- Vivienne Blackwhisper
					},
					["groups"] = {
						ach(3798),	-- Resilience Will Fix It (10 player)
						i(47724),	-- Blade of the Silver Disciple
						i(47717),	-- Faceplate of the Silver Champion
						i(47718),	-- Helm of the Silver Ranger
						i(47720),	-- Pauldrons of the Silver Defender
						i(47719),	-- Gloves of the Silver Assassin
						i(47721),	-- Sandals of the Silver Magus
						i(47728),	-- Binding Light
						i(47727),	-- Fervor of the Frostborn
						i(47726),	-- Talisman of Volatile Power
						i(47725),	-- Victor's Call
					},
				}),
				e(1622, {	-- Twin Val'kyr
					["crs"] = {
						34496,	-- Eydis Darkbane
						34497,	-- Fjola Lightbane
					},
					["groups"] = {
						ach(3799),		-- Salt and Pepper (10 player)
						h(i(47884)),	-- Edge of Agony
						a(i(47743)),	-- Enlightenment
						h(i(47892)),	-- Illumination
						a(i(47737)),	-- Reckoning
						a(i(47736)),	-- Icefall Blade
						h(i(47886)),	-- Nemesis Blade
						a(i(47740)),	-- The Diplomat
						h(i(47883)),	-- Widebarrel Flintlock
						a(i(47742)),	-- Chalice of Benedictus
						h(i(47913)),	-- Lightbane Focus
						h(i(47891)),	-- Helm of the High Mesa
						a(i(47746)),	-- Helm of the Snowy Grotto
						h(i(47890)),	-- Darkbane Amulet
						a(i(47747)),	-- Darkbane Pendant
						a(i(47739)),	-- Armor of Shifting Shadows
						h(i(47887)),	-- Vest of Shifting Shadows
						a(i(47745)),	-- Gloves of Looming Shadow
						h(i(47889)),	-- Looming Shadow Wraps
						a(i(47744)),	-- Gloves of the Azure Prophet
						h(i(47893)),	-- Sen'jin Ritualist Gloves
						h(i(47885)),	-- Greaves of the Lingering Vortex
						a(i(47738)),	-- Sabatons of the Lingering Vortex
						a(i(49231)),	-- Boots of the Grieving Soul
						h(i(49232)),	-- Sandals of the Grieving Soul
						h(i(47888)),	-- Band of the Twin Val'kyr
						a(i(47700)),	-- Loop of the Twin Val'kyr
					},
				}),
				e(1623, {	-- Anub'arak
					["crs"] = { 34564 },	-- Anub'arak
					["groups"] = {
						ach(3800),	-- The Traitor King (10 player)
						i(142085, {	-- Nerubian Swarmer (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						h(i(47911)),	-- Anguish
						a(i(47815)),	-- Cold Convergence
						a(i(47834)),	-- Fordragon Blades
						h(i(47900)),	-- Perdition
						h(i(47899)),	-- Ardent Guard
						a(i(47809)),	-- Argent Resolve
						h(i(47905)),	-- Blackhorn Bludgeon
						a(i(47810)),	-- Crusader's Glory
						h(i(47903)),	-- Forsaken Bonecarver
						h(i(47898)),	-- Frostblade Hatchet
						h(i(47894)),	-- Mace of the Earthborn Chieftain
						a(i(47816)),	-- The Grinder
						a(i(47814)),	-- Westfall Saber
						a(i(47808)),	-- The Lion's Maw
						a(i(47741)),	-- Baelgun's Heavy Crossbow
						h(i(47907)),	-- Darkmaw Crossbow
						h(i(47910)),	-- Aegis of the Coliseum
						a(i(47835)),	-- Bulwark of the Royal Guard
						h(i(47895)),	-- Pride of the Kor'kron
						a(i(47812)),	-- Vigilant Ward
						a(i(47813)),	-- Helmet of the Crypt Lord
						h(i(47897)),	-- Helm of the Crypt Lord
						h(i(47901)),	-- Pauldrons of the Shadow Hunter
						a(i(47829)),	-- Pauldrons of the Timeless Hunter
						h(i(47904)),	-- Shoulderpads of the Snow Bandit
						a(i(47832)),	-- Spaulders of the Snow Bandit
						a(i(47811)),	-- Chestguard of the Warden
						h(i(47906)),	-- Robes of the Sleepless
						h(i(47896)),	-- Stoneskin Chestplate
						a(i(47838)),	-- Vestments of the Sleepless
						h(i(47909)),	-- Belt of the Eternal
						a(i(47837)),	-- Cinch of the Undying
						h(i(47902)),	-- Legplates of Redeemed Blood
						a(i(47836)),	-- Legplates of the Immortal Spider
						a(i(47830)),	-- Legplates of the Silver Hand
						h(i(47908)),	-- Sunwalker Legguards
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
				e(1618, {	-- Northrend Beasts
					["crs"] = {
						34797,	-- Icehowl
						34796,	-- Gormok
						35144,	-- Acidmaw
						34799,	-- Dreadscale
					},
					["groups"] = {
						ach(3936),	-- Not One, But Two Jormungars (10 player)
						ach(3797),	-- Upper Back Pain (10 player)
						i(142083, {	-- Dreadmaw (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(142084, {	-- Snobold Runt (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						a(i(47922)),	-- Rod of Imprisoned Souls
						h(i(47995)),	-- Scepter of Imprisoned Souls
						a(i(47915)),	-- Collar of Ceaseless Torment
						h(i(47988)),	-- Collar of Unending Torment
						h(i(47996)),	-- Pauldrons of the Glacial Winds
						a(i(47923)),	-- Shoulderpads of the Glacial Winds
						h(i(47999)),	-- Pauldrons of the Spirit Walker
						a(i(47926)),	-- Shoulderguards of the Spirit Walker
						a(i(47916)),	-- Armbands of the Northern Stalker
						h(i(47989)),	-- Bracers of the Northern Stalker
						a(i(47918)),	-- Dreadscale Armguards
						h(i(47991)),	-- Dreadscale Bracers
						h(i(47990)),	-- Gauntlets of Mounting Anger
						a(i(47917)),	-- Gauntlets of Rising Anger
						h(i(47998)),	-- Belt of the Impaler
						a(i(47925)),	-- Girdle of the Impaler
						a(i(47924)),	-- Belt of the Frozen Reach
						h(i(47997)),	-- Girdle of the Frozen Reach
						h(i(47994)),	-- Icehowl Binding
						a(i(47921)),	-- Icehowl Cinch
						a(i(47919)),	-- Acidmaw Boots
						h(i(47992)),	-- Acidmaw Treads
						a(i(47920)),	-- Carnivorous Band
						h(i(47993)),	-- Gormok's Band
					},
				}),
				e(1619, {	-- Lord Jaraxxus
					["crs"] = { 34780 },	-- Lord Jaraxxus
					["groups"] = {
						ach(3996),		-- Three Sixty Pain Spike (10 player)
						a(i(47938)),	-- Dirk of the Night Watch
						h(i(48010)),	-- Orcish Deathblade
						a(i(47930)),	-- Amulet of Binding Elements
						a(i(47939)),	-- Endurance of the Infernal
						h(i(48011)),	-- Fortitude of the Infernal
						h(i(48003)),	-- Pendant of Binding Elements
						a(i(47935)),	-- Armguards of the Nether Lord
						h(i(48008)),	-- Armplates of the Nether Lord
						a(i(47927)),	-- Felspark Bindings
						h(i(48000)),	-- Felspark Bracers
						h(i(48002)),	-- Belt of the Bloodhoof Emissary
						h(i(48009)),	-- Belt of the Nether Champion
						a(i(47929)),	-- Belt of the Winter Solstice
						h(i(48005)),	-- Darkspear Ritual Binding
						a(i(47932)),	-- Girdle of the Farseer
						a(i(47937)),	-- Girdle of the Nether Champion
						a(i(47931)),	-- Leggings of the Demonic Messenger
						h(i(48004)),	-- Legwraps of the Demonic Messenger
						a(i(49238)),	-- Boots of Tortured Space
						h(i(49237)),	-- Sabatons of Tortured Space
						a(i(47933)),	-- Sentinel Scouting Greaves
						h(i(48006)),	-- Warsong Poacher's Greaves
						h(i(48001)),	-- Firestorm Band
						a(i(47928)),	-- Firestorm Ring
						h(i(48007)),	-- Planestalker Band
						a(i(47934)),	-- Planestalker Signet
					},
				}),
				e(1620, {	-- Champions of the Alliance
					["races"] = HORDE_ONLY,
					["crs"] = {
						34467,	-- Alyssia Moonstalker
						34466,	-- Anthar Forgemender
						34471,	-- Baelnor Lightbearer
						34473,	-- Brienna Nightfell
						34472,	-- Irieth Shadowstep
						34460,	-- Kavina Grovesong
						34469,	-- Melador Valestrider
						34468,	-- Noozle Whizzlestick
						34470,	-- Saamul
						34474,	-- Serissa Grimdabbler
						34463,	-- Shaabad
						34475,	-- Shocuul
						34461,	-- Tyrius Duskblade
						34465,	-- Velanaa
					},
					["groups"] = {
						ach(3798),	-- Resilience Will Fix It (10 player)
						i(48013),	-- Sunreaver Disciple's Blade
						i(48015),	-- Sunreaver Champion's Faceplate
						i(48014),	-- Sunreaver Ranger's Helm
						i(48016),	-- Sunreaver Defender's Pauldrons
						i(48017),	-- Sunreaver Assassin's Gloves
						i(48012),	-- Sunreaver Magus' Sandals
						i(48019),	-- Binding Stone
						i(48021),	-- Eitrigg's Oath
						i(48018),	-- Fetish of Volatile Power
						i(48020),	-- Vengeance of the Forsaken
					},
				}),
				e(1621, {	-- Champions of the Horde
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						34451,	-- Birana Stormhoof
						34455,	-- Broln Stouthorn
						34447,	-- Caiphus the Stern
						34459,	-- Erin Misthoof
						34449,	-- Ginselle Blightslinger
						34458,	-- Gorgrim Shadowcleave
						34450,	-- Harkzog
						34445,	-- Liandra Suncaller
						34456,	-- Malithas Brightblade
						34454,	-- Maz'dinah
						34453,	-- Narrhok Steelbreaker
						34448,	-- Ruj'kah
						34444,	-- Thrakgar
						34441,	-- Vivienne Blackwhisper
					},
					["groups"] = {
						ach(3798),	-- Resilience Will Fix It (10 player)
						i(47941),	-- Blade of the Silver Disciple
						i(47943),	-- Faceplate of the Silver Champion
						i(47942),	-- Helm of the Silver Ranger
						i(47944),	-- Pauldrons of the Silver Defender
						i(47945),	-- Gloves of the Silver Assassin
						i(47940),	-- Sandals of the Silver Magus
						i(47947),	-- Binding Light
						i(47949),	-- Fervor of the Frostborn
						i(47946),	-- Talisman of Volatile Power
						i(47948),	-- Victor's Call
					},
				}),
				e(1622, {	-- Twin Val'kyr
					["crs"] = {
						34496,	-- Eydis Darkbane
						34497,	-- Fjola Lightbane
					},
					["groups"] = {
						ach(3799),		-- Salt and Pepper (10 player)
						h(i(48023)),	-- Edge of Agony
						a(i(47960)),	-- Enlightenment
						h(i(48036)),	-- Illumination
						a(i(47951)),	-- Reckoning
						a(i(47953)),	-- Icefall Blade
						h(i(48025)),	-- Nemesis Blade
						a(i(47950)),	-- The Diplomat
						h(i(48022)),	-- Widebarrel Flintlock
						a(i(47958)),	-- Chalice of Benedictus
						h(i(48032)),	-- Lightbane Focus
						h(i(48034)),	-- Helm of the High Mesa
						a(i(47959)),	-- Helm of the Snowy Grotto
						h(i(48030)),	-- Darkbane Amulet
						a(i(47957)),	-- Darkbane Pendant
						a(i(47954)),	-- Armor of Shifting Shadows
						h(i(48026)),	-- Vest of Shifting Shadows
						a(i(47956)),	-- Gloves of Looming Shadow
						a(i(47961)),	-- Gloves of the Azure Prophet
						h(i(48028)),	-- Looming Shadow Wraps
						h(i(48038)),	-- Sen'jin Ritualist Gloves
						a(i(49234)),	-- Boots of the Grieving Soul
						h(i(48024)),	-- Greaves of the Lingering Vortex
						a(i(47952)),	-- Sabatons of the Lingering Vortex
						h(i(49233)),	-- Sandals of the Grieving Soul
						h(i(48027)),	-- Band of the Twin Val'kyr
						a(i(47955)),	-- Loop of the Twin Val'kyr
					},
				}),
				e(1623, {	-- Anub'arak
					["crs"] = { 34564 },	-- Anub'arak
					["groups"] = {
						ach(5021, {	-- Call of the Crusade - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						ach(3800),	-- The Traitor King (10 player)
						i(142085, {	-- Nerubian Swarmer (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						h(i(48056)),	-- Anguish
						a(i(47968)),	-- Cold Convergence
						a(i(47979)),	-- Fordragon Blades
						h(i(48045)),	-- Perdition
						h(i(48044)),	-- Ardent Guard
						a(i(47962)),	-- Argent Resolve
						h(i(48050)),	-- Blackhorn Bludgeon
						a(i(47967)),	-- Crusader's Glory
						h(i(48048)),	-- Forsaken Bonecarver
						h(i(48043)),	-- Frostblade Hatchet
						h(i(48039)),	-- Mace of the Earthborn Chieftain
						a(i(47973)),	-- The Grinder
						a(i(47966)),	-- The Lion's Maw
						a(i(47971)),	-- Westfall Saber
						h(i(48052)),	-- Darkmaw Crossbow
						a(i(47975)),	-- Baelgun's Heavy Crossbow
						h(i(48055)),	-- Aegis of the Coliseum
						a(i(47978)),	-- Bulwark of the Royal Guard
						h(i(48040)),	-- Pride of the Kor'kron
						a(i(47963)),	-- Vigilant Ward
						a(i(47965)),	-- Helmet of the Crypt Lord
						h(i(48042)),	-- Helm of the Crypt Lord
						h(i(48046)),	-- Pauldrons of the Shadow Hunter
						a(i(47969)),	-- Pauldrons of the Timeless Hunter
						h(i(48049)),	-- Shoulderpads of the Snow Bandit
						a(i(47972)),	-- Spaulders of the Snow Bandit
						a(i(47964)),	-- Chestguard of the Warden
						h(i(48051)),	-- Robes of the Sleepless
						h(i(48041)),	-- Stoneskin Chestplate
						a(i(47974)),	-- Vestments of the Sleepless
						h(i(48054)),	-- Belt of the Eternal
						a(i(47977)),	-- Cinch of the Undying
						a(i(47976)),	-- Legplates of the Immortal Spider
						h(i(48047)),	-- Legplates of the Redeemed Blood Knight
						a(i(47970)),	-- Legplates of the Silver Hand
						h(i(48053)),	-- Sunwalker Legguards
					},
				}),
				o(195665, bubbleDown({ ["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 } }, {	-- Argent Crusade Tribute Chest
					["description"] = "This chest appears after the defeat of Anub'arak in successful Tribute runs in the Trial of the Crusader.",
					--[[
						Alliance	Description	Horde
					1-24 Attempts
						2x Trophy of the Crusade
						Crusader Orb
					25-44 Attempts
						Lothar's Edge	Two-Hand, Axe	Mor'kosh, the Bloodreaver
						Rhok'shalla, the Shadow's Bane	Ranged, Bow	Frenzystrike Longbow
						The Spinebreaker	Main Hand, Fist Weapon	The Facebreaker
						Honor of the Fallen	One-Hand, Mace	Blood and Glory
						Heartcrusher	Main Hand, Mace	Heartsmasher
						Paragon's Breadth	Two-Hand, Staff	Attrition
						Spellstorm Blade	Main Hand, Sword	Spellharvest
					45-49 Attempts
						2x Trophy of the Crusade
					50 Attempts
						Swift Alliance Steed (100% Drop)	Mount	Swift Horde Wolf (100% Drop)
						Cloak of the Silver Covenant	Back, DPS	Cloak of Serrated Blades
						Cloak of the Unmoving Guardian	Back, Tank	Cloak of the Unflinching Guardian
						Cloak of the Victorious Combatant	Back, DPS	Cloak of the Triumphant Combatant
						Drape of Bitter Incantation	Back, Caster	Drape of the Sunreavers
						Shawl of Fervent Crusader	Back, Caster	Shawl of the Devout Crusader
					]]--
					["groups"] = {
						ach(4080, {	-- A Tribute to Dedicated Insanity
							title(136),	-- the Argent Defender
						}),
						ach(3810, {	-- A Tribute to Insanity (10 Player)
							a(i(49044)),		-- Swift Alliance Steed (MOUNT!)
							h(i(49046)),		-- Swift Horde Wolf (MOUNT!)
							h(ig(48668)),		-- Cloak of Serrated Blades
							a(ig(48673)),		-- Cloak of the Silver Covenant
							h(ig(48669)),		-- Cloak of the Triumphant Combatant
							h(ig(48670)),		-- Cloak of the Unflinching Guardian
							a(ig(48675)),		-- Cloak of the Unmoving Guardian
							a(ig(48674)),		-- Cloak of the Victorous Combatant
							a(ig(48671)),		-- Drape of Bitter Incantation
							h(ig(48666)),		-- Drape of the Sunreavers
							a(ig(48672)),		-- Shawl of Fervent Crusader
							h(ig(48667)),		-- Shawl of the Devout Crusader
						}),
						ach(3809),	-- A Tribute to Mad Skill (10 Player)
						ach(3808, {	-- A Tribute to Skill (10 Player)
							h(ig(48705)),		-- Attrition
							h(ig(48699)),		-- Blood and Glory
							h(ig(48697)),		-- Frenzystrike Longbow
							a(ig(48709)),		-- Heartcrusher
							h(ig(48693)),		-- Heartsmasher
							a(ig(48714)),		-- Honor of the Fallen
							a(ig(48713)),		-- Lothar's Edge
							h(ig(48695)),		-- Mor'kosh, the Bloodreaver
							a(ig(48710)),		-- Paragon's Breadth
							a(ig(48711)),		-- Rhok'shalla, the Shadow's Bane
							h(ig(48701)),		-- Spellharvest
							a(ig(48708)),		-- Spellstorm Blade
							h(ig(48703)),		-- The Facebreaker
							a(ig(48712)),		-- The Spinebreaker

						}),
						i(47242),	-- Trophy of the Crusade
					},
				})),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				n(COMMON_BOSS_DROPS, {
					i(47242),	-- Trophy of the Crusade
				}),
				e(1618, {	-- Northrend Beasts
					["crs"] = {
						34797,	-- Icehowl
						34796,	-- Gormok
						35144,	-- Acidmaw
						34799,	-- Dreadscale
					},
					["groups"] = {
						ach(3937),		-- Not One, But Two Jormungars (25 player)
						ach(3813),		-- Upper Back Pain (25 player)
						i(142083, {	-- Dreadmaw (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(142084, {	-- Snobold Runt (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						h(i(47261)),	-- Barb of Tarasque
						a(i(46979)),	-- Blade of Tarasque
						a(i(46958)),	-- Steel Bladebreaker
						h(i(47255)),	-- Stygian Bladebreaker
						a(i(46963)),	-- Crystal Plated Vanguard
						h(i(47260)),	-- Forlorn Barrier
						h(i(47257)),	-- Cloak of the Untamed Predator
						h(i(47256)),	-- Drape of the Refreshing Winds
						a(i(46970)),	-- Drape of the Untamed Predator
						a(i(46976)),	-- Shawl of the Refreshing Winds
						a(i(46960)),	-- Breastplate of Cruel Intent
						a(i(46962)),	-- Chestplate of the Towering Monstrosity
						h(i(47251)),	-- Cuirass of Cruel Intent
						h(i(47264)),	-- Flowing Robes of Ascent
						a(i(46992)),	-- Flowing Vestments of Ascent
						h(i(47254)),	-- Hauberk of the Towering Monstrosity
						a(i(46961)),	-- Boneshatter Armplates
						h(i(47253)),	-- Boneshatter Vambraces
						a(i(46990)),	-- Belt of the Ice Burrower
						h(i(47258)),	-- Belt of the Tenebrous Mist
						h(i(47265)),	-- Binding of the Ice Burrower
						a(i(46972)),	-- Cord of the Tenebrous Mist
						a(i(46974)),	-- Leggings of the Broken Beast
						h(i(47259)),	-- Legwraps of the Broken Beast
						a(i(46985)),	-- Boots of the Courageous
						h(i(47262)),	-- Boots of the Harsh Winter
						a(i(46988)),	-- Boots of the Unrelenting Storm
						h(i(47263)),	-- Sabatons of the Courageous
						a(i(46959)),	-- Band of the Violent Temperament
						h(i(47252)),	-- Ring of the Violent Temperament
					},
				}),
				e(1619, {	-- Lord Jaraxxus
					["crs"] = { 34780 },	-- Lord Jaraxxus
					["groups"] = {
						ach(3997),		-- Three Sixty Pain Spike (25 player)
						h(i(47266)),	-- Blood Fury
						a(i(46996)),	-- Lionhead Slasher
						h(i(47267)),	-- Death's Head Crossbow
						a(i(46994)),	-- Talonstrike
						a(i(47053)),	-- Symbol of Transgression
						h(i(47276)),	-- Talisman of Heedless Sins
						a(i(47043)),	-- Charge of the Demon Lord
						h(i(47272)),	-- Charge of the Eredar
						h(i(47275)),	-- Pride of the Demon Lord
						a(i(47042)),	-- Pride of the Eredar
						a(i(47000)),	-- Cuirass of Calamitous Fate
						h(i(47270)),	-- Vest of Calamitous Fate
						h(i(47277)),	-- Bindings of the Autumn Willow
						a(i(47055)),	-- Bracers of the Autumn Willow
						a(i(47056)),	-- Bracers of Cloudy Omen
						h(i(47280)),	-- Wristwraps of Cloudy Omen
						a(i(46999)),	-- Bloodbath Belt
						h(i(47268)),	-- Bloodbath Girdle
						h(i(47279)),	-- Leggings of Failing Light
						a(i(47051)),	-- Leggings of the Soothing Touch
						a(i(47052)),	-- Legguards of Feverish Dedication
						a(i(47057)),	-- Legplates of Failing Light
						h(i(47273)),	-- Legplates of Feverish Dedication
						h(i(47274)),	-- Pants of the Soothing Touch
						a(i(46997)),	-- Dawnbreaker Greaves
						h(i(47269)),	-- Dawnbreaker Sabatons
						h(i(47278)),	-- Circle of the Darkmender
						a(i(47223)),	-- Ring of the Darkmender
						a(i(47041)),	-- Solace of the Defeated
						h(i(47271)),	-- Solace of the Fallen
					},
				}),
				e(1620, {	-- Champions of the Alliance
					["races"] = HORDE_ONLY,
					["crs"] = {
						34467,	-- Alyssia Moonstalker
						34466,	-- Anthar Forgemender
						34471,	-- Baelnor Lightbearer
						34473,	-- Brienna Nightfell
						34472,	-- Irieth Shadowstep
						34460,	-- Kavina Grovesong
						34469,	-- Melador Valestrider
						34468,	-- Noozle Whizzlestick
						34470,	-- Saamul
						34474,	-- Serissa Grimdabbler
						34463,	-- Shaabad
						34475,	-- Shocuul
						34461,	-- Tyrius Duskblade
						34465,	-- Velanaa
					},
					["groups"] = {
						ach(3814, {	-- Resilience Will Fix It (25 player)
							["timeline"] = { DELETED_4_0_3 },
						}),
						i(47285),	-- Dual-Blade Butcher
						i(47287),	-- Bastion of Resolve
						i(47291),	-- Shroud of Displacement
						i(47288),	-- Chestplate of the Frostwolf Hero
						i(47292),	-- Robes of the Shattered Fellowship
						i(47294),	-- Bracers of the Broken Bond
						i(47281),	-- Bracers of the Silent Massacre
						i(47286),	-- Belt of Biting Cold
						i(47283),	-- Belt of Bloodied Scars
						i(47289),	-- Leggings of Concealed Hatred
						i(47284),	-- Icewalker Treads
						i(47295),	-- Sabatons of Tremoring Earth
						i(47293),	-- Sandals of the Mourning Widow
						i(47282),	-- Band of Callous Aggression
						i(47290),	-- Juggernaut's Vitality
					},
				}),
				e(1621, {	-- Champions of the Horde
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						34451,	-- Birana Stormhoof
						34455,	-- Broln Stouthorn
						34447,	-- Caiphus the Stern
						34459,	-- Erin Misthoof
						34449,	-- Ginselle Blightslinger
						34458,	-- Gorgrim Shadowcleave
						34450,	-- Harkzog
						34445,	-- Liandra Suncaller
						34456,	-- Malithas Brightblade
						34454,	-- Maz'dinah
						34453,	-- Narrhok Steelbreaker
						34448,	-- Ruj'kah
						34444,	-- Thrakgar
						34441,	-- Vivienne Blackwhisper
					},
					["groups"] = {
						ach(3814, {	-- Resilience Will Fix It (25 player)
							["timeline"] = { DELETED_4_0_3 },
						}),
						i(47069),	-- Justicebringer
						i(47079),	-- Bastion of Purity
						i(47089),	-- Cloak of Displacement
						i(47082),	-- Chestplate of the Frostborn Hero
						i(47094),	-- Vestments of the Shattered Fellowship
						i(47073),	-- Bracers of the Untold Massacre
						i(47093),	-- Vambraces of the Broken Bond
						i(47081),	-- Cord of Biting Cold
						i(47072),	-- Girdle of Bloodied Scars
						i(47083),	-- Legguards of Concealed Hatred
						i(47092),	-- Boots of the Mourning Widow
						i(47090),	-- Boots of Tremoring Earth
						i(47071),	-- Treads of the Icewalker
						i(47070),	-- Ring of Callous Aggression
						i(47080),	-- Satrina's Impeding Scarab
					},
				}),
				e(1622, {	-- Twin Val'kyr
					["crs"] = {
						34496,	-- Eydis Darkbane
						34497,	-- Fjola Lightbane
					},
					["groups"] = {
						ach(3815),		-- Salt and Pepper (25 player)
						a(i(47114)),	-- Lupine Longstaff
						h(i(47302)),	-- Twin's Pact
						h(i(47300)),	-- Gouge of the Frigid Heart
						a(i(47104)),	-- Twin Spike
						a(i(47138)),	-- Chalice of Searing Light
						h(i(47309)),	-- Mystifying Charm
						h(i(47307)),	-- Cry of the Val'kyr
						h(i(47305)),	-- Legionnaire's Gorget
						a(i(47116)),	-- The Arbiter's Muse
						a(i(47105)),	-- The Executioner's Malice
						h(i(47297)),	-- The Executioner's Vice
						a(i(47139)),	-- Wail of the Val'kyr
						a(i(47142)),	-- Breastplate of the Frozen Lake
						h(i(47310)),	-- Chestplate of the Frozen Lake
						a(i(47126)),	-- Skyweaver Robes
						h(i(47301)),	-- Skyweaver Vestments
						h(i(47298)),	-- Armguards of the Shieldmaiden
						a(i(47141)),	-- Bindings of Dark Essence
						a(i(47108)),	-- Bracers of the Shieldmaiden
						h(i(47306)),	-- Dark Essence Bindings
						h(i(47308)),	-- Belt of Pale Thorns
						a(i(47107)),	-- Belt of the Merciless Killer
						h(i(47299)),	-- Belt of the Pitiless Killer
						a(i(47140)),	-- Cord of Pale Thorns
						a(i(47121)),	-- Legguards of Ascension
						h(i(47304)),	-- Legplates of Ascension
						h(i(47296)),	-- Greaves of Ruthless Judgment
						a(i(47106)),	-- Sabatons of Ruthless Judgment
						h(i(47303)),	-- Death's Choice
						a(i(47115)),	-- Death's Verdict
					},
				}),
				e(1623, {	-- Anub'arak
					["crs"] = { 34564 },	-- Anub'arak
					["groups"] = {
						ach(3816),	-- The Traitor King (25 player)
						i(142085, {	-- Nerubian Swarmer (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						a(i(47233)),	-- Archon Glaive
						h(i(47329)),	-- Hellion Glaive
						h(i(47314)),	-- Hellscream Slicer
						a(i(47193)),	-- Misery's End
						a(i(47148)),	-- Stormpike Cleaver
						h(i(47322)),	-- Suffering's End
						h(i(47328)),	-- Maiden's Adoration
						a(i(47225)),	-- Maiden's Favor
						h(i(47320)),	-- Might of the Nerub
						a(i(47183)),	-- Strength of the Nerub
						a(i(47204)),	-- Chestguard of Flowing Elements
						h(i(47325)),	-- Cuirass of Flowing Elements
						h(i(47313)),	-- Armbands of Dark Determination
						a(i(47203)),	-- Armbands of the Ashen Saint
						h(i(47324)),	-- Bindings of the Ashen Saint
						a(i(47151)),	-- Bracers of Dark Determination
						h(i(47330)),	-- Gauntlets of Bitter Reprisal
						a(i(47234)),	-- Gloves of Bitter Reprisal
						a(i(47235)),	-- Gloves of the Lifeless Touch
						h(i(47326)),	-- Handwraps of the Lifeless Touch
						a(i(47152)),	-- Belt of Deathly Dominion
						a(i(47195)),	-- Belt of the Forgotten Martyr
						h(i(47323)),	-- Girdle of the Forgotten Martyr
						h(i(47311)),	-- Waistguard of Deathly Dominion
						h(i(47317)),	-- Breeches of the Deepening Void
						h(i(47318)),	-- Leggings of the Awakening
						a(i(47187)),	-- Leggings of the Deepening Void
						h(i(47319)),	-- Leggings of the Lurking Threat
						a(i(47184)),	-- Legguards of the Lurking Threat
						a(i(47186)),	-- Legwraps of the Awakening
						h(i(47321)),	-- Boots of the Icy Floe
						a(i(47194)),	-- Footpads of the Icy Floe
						a(i(47150)),	-- Greaves of the 7th Legion
						h(i(47312)),	-- Greaves of the Saronite Citadel
						a(i(47054)),	-- Band of Deplorable Violence
						h(i(47315)),	-- Band of the Traitor King
						h(i(47327)),	-- Lurid Manifestation
						a(i(47149)),	-- Signet of the Traitor King
						h(i(47316)),	-- Reign of the Dead
						a(i(47182)),	-- Reign of the Unliving
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC, {
				n(COMMON_BOSS_DROPS, {
					i(47242),	-- Trophy of the Crusade
				}),
				e(1618, {	-- Northrend Beasts
					["crs"] = {
						34797,	-- Icehowl
						34796,	-- Gormok
						35144,	-- Acidmaw
						34799,	-- Dreadscale
					},
					["groups"] = {
						ach(3937),		-- Not One, But Two Jormungars (25 player)
						ach(3813),		-- Upper Back Pain (25 player)
						i(142083, {	-- Dreadmaw (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(142084, {	-- Snobold Runt (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						h(i(47422)),	-- Barb of Tarasque
						a(i(46980)),	-- Blade of Tarasque
						a(i(46969)),	-- Steel Bladebreaker
						h(i(47416)),	-- Stygian Bladebreaker
						a(i(46964)),	-- Crystal Plated Vanguard
						h(i(47421)),	-- Forlorn Barrier
						h(i(47418)),	-- Cloak of the Untamed Predator
						h(i(47417)),	-- Drape of the Refreshing Winds
						a(i(46971)),	-- Drape of the Untamed Predator
						a(i(46977)),	-- Shawl of the Refreshing Winds
						a(i(46965)),	-- Breastplate of Cruel Intent
						a(i(46968)),	-- Chestplate of the Towering Monstrosity
						h(i(47412)),	-- Cuirass of Cruel Intent
						h(i(47425)),	-- Flowing Robes of Ascent
						a(i(46993)),	-- Flowing Vestments of Ascent
						h(i(47415)),	-- Hauberk of the Towering Monstrosity
						a(i(46967)),	-- Boneshatter Armplates
						h(i(47414)),	-- Boneshatter Vambraces
						a(i(46991)),	-- Belt of the Ice Burrower
						h(i(47419)),	-- Belt of the Tenebrous Mist
						h(i(47426)),	-- Binding of the Ice Burrower
						a(i(46973)),	-- Cord of the Tenebrous Mist
						a(i(46975)),	-- Leggings of the Broken Beast
						h(i(47420)),	-- Legwraps of the Broken Beast
						a(i(46986)),	-- Boots of the Courageous
						h(i(47423)),	-- Boots of the Harsh Winter
						a(i(46989)),	-- Boots of the Unrelenting Storm
						h(i(47424)),	-- Sabatons of the Courageous
						h(i(47413)),	-- Ring of the Violent Temperament
						a(i(46966)),	-- Band of the Violent Temperament
					},
				}),
				e(1619, {	-- Lord Jaraxxus
					["crs"] = { 34780 },	-- Lord Jaraxxus
					["groups"] = {
						ach(3997),		-- Three Sixty Pain Spike (25 player)
						h(i(47427)),	-- Blood Fury
						a(i(47001)),	-- Lionhead Slasher
						h(i(47428)),	-- Death's Head Crossbow
						a(i(46995)),	-- Talonstrike
						a(i(47064)),	-- Symbol of Transgression
						h(i(47437)),	-- Talisman of Heedless Sins
						a(i(47060)),	-- Charge of the Demon Lord
						h(i(47433)),	-- Charge of the Eredar
						h(i(47436)),	-- Pride of the Demon Lord
						a(i(47063)),	-- Pride of the Eredar
						a(i(47004)),	-- Cuirass of Calamitous Fate
						h(i(47431)),	-- Vest of Calamitous Fate
						h(i(47438)),	-- Bindings of the Autumn Willow
						a(i(47068)),	-- Bracers of Cloudy Omen
						a(i(47066)),	-- Bracers of the Autumn Willow
						h(i(47441)),	-- Wristwraps of Cloudy Omen
						a(i(47002)),	-- Bloodbath Belt
						h(i(47429)),	-- Bloodbath Girdle
						h(i(47440)),	-- Leggings of Failing Light
						a(i(47062)),	-- Leggings of the Soothing Touch
						a(i(47061)),	-- Legguards of Feverish Dedication
						a(i(47067)),	-- Legplates of Failing Light
						h(i(47434)),	-- Legplates of Feverish Dedication
						h(i(47435)),	-- Pants of the Soothing Touch
						a(i(47003)),	-- Dawnbreaker Greaves
						h(i(47430)),	-- Dawnbreaker Sabatons
						h(i(47439)),	-- Circle of the Darkmender
						a(i(47224)),	-- Ring of the Darkmender
						a(i(47059)),	-- Solace of the Defeated
						h(i(47432)),	-- Solace of the Fallen
					},
				}),
				e(1620, {	-- Champions of the Alliance
					["races"] = HORDE_ONLY,
					["crs"] = {
						34467,	-- Alyssia Moonstalker
						34466,	-- Anthar Forgemender
						34471,	-- Baelnor Lightbearer
						34473,	-- Brienna Nightfell
						34472,	-- Irieth Shadowstep
						34460,	-- Kavina Grovesong
						34469,	-- Melador Valestrider
						34468,	-- Noozle Whizzlestick
						34470,	-- Saamul
						34474,	-- Serissa Grimdabbler
						34463,	-- Shaabad
						34475,	-- Shocuul
						34461,	-- Tyrius Duskblade
						34465,	-- Velanaa
					},
					["groups"] = {
						i(47446),	-- Dual-Blade Butcher
						i(47448),	-- Bastion of Resolve
						i(47452),	-- Shroud of Displacement
						i(47449),	-- Chestplate of the Frostwolf Hero
						i(47453),	-- Robes of the Shattered Fellowship
						i(47455),	-- Bracers of the Broken Bond
						i(47442),	-- Bracers of the Silent Massacre
						i(47447),	-- Belt of Biting Cold
						i(47444),	-- Belt of Bloodied Scars
						i(47450),	-- Leggings of Concealed Hatred
						i(47445),	-- Icewalker Treads
						i(47456),	-- Sabatons of Tremoring Earth
						i(47454),	-- Sandals of the Mourning Widow
						i(47443),	-- Band of Callous Aggression
						i(47451),	-- Juggernaut's Vitality
					},
				}),
				e(1621, {	-- Champions of the Horde
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						34451,	-- Birana Stormhoof
						34455,	-- Broln Stouthorn
						34447,	-- Caiphus the Stern
						34459,	-- Erin Misthoof
						34449,	-- Ginselle Blightslinger
						34458,	-- Gorgrim Shadowcleave
						34450,	-- Harkzog
						34445,	-- Liandra Suncaller
						34456,	-- Malithas Brightblade
						34454,	-- Maz'dinah
						34453,	-- Narrhok Steelbreaker
						34448,	-- Ruj'kah
						34444,	-- Thrakgar
						34441,	-- Vivienne Blackwhisper
					},
					["groups"] = {
						i(47078),	-- Justicebringer
						i(47085),	-- Bastion of Purity
						i(47095),	-- Cloak of Displacement
						i(47086),	-- Chestplate of the Frostborn Hero
						i(47096),	-- Vestments of the Shattered Fellowship
						i(47074),	-- Bracers of the Untold Massacer
						i(47098),	-- Vambraces of the Broken Bond
						i(47084),	-- Cord of Biting Cold
						i(47076),	-- Girdle of Bloodied Scars
						i(47087),	-- Legguards of Concealed Hatred
						i(47097),	-- Boots of the Mourning Widow
						i(47099),	-- Boots of Tremoring Earth
						i(47077),	-- Treads of the Icewalker
						i(47075),	-- Ring of Callous Aggression
						i(47088),	-- Satrina's Impeding Scarab
					},
				}),
				e(1622, {	-- Twin Val'kyr
					["crs"] = {
						34496,	-- Eydis Darkbane
						34497,	-- Fjola Lightbane
					},
					["groups"] = {
						ach(3815),		-- Salt and Pepper (25 player)
						h(i(47463)),	-- Twin's Pact
						a(i(47130)),	-- Lupine Longstaff
						h(i(47461)),	-- Gouge of the Frigid Heart
						a(i(47113)),	-- Twin Spike
						a(i(47146)),	-- Chalice of Searing Light
						h(i(47470)),	-- Mystifying Charm
						h(i(47468)),	-- Cry of the Val'kyr
						h(i(47466)),	-- Legionnaire's Gorget
						a(i(47133)),	-- The Arbiter's Muse
						a(i(47110)),	-- The Executioner's Malice
						h(i(47458)),	-- The Executioner's Vice
						a(i(47144)),	-- Wail of the Val'kyr
						a(i(47147)),	-- Breastplate of the Frozen Lake
						h(i(47471)),	-- Chestplate of the Frozen Lake
						a(i(47129)),	-- Skyweaver Robes
						h(i(47462)),	-- Skyweaver Vestments
						h(i(47459)),	-- Armguards of the Shieldmaiden
						a(i(47143)),	-- Bindings of Dark Essence
						a(i(47111)),	-- Bracers of the Shieldmaiden
						h(i(47467)),	-- Dark Essence Bindings
						h(i(47469)),	-- Belt of Pale Thorns
						a(i(47112)),	-- Belt of the Merciless Killer
						h(i(47460)),	-- Belt of the Pitiless Killer
						a(i(47145)),	-- Cord of Pale Thorns
						a(i(47132)),	-- Legguards of Ascension
						h(i(47465)),	-- Legplates of Ascension
						h(i(47457)),	-- Greaves of Ruthless Judgment
						a(i(47109)),	-- Sabatons of Ruthless Judgment
						h(i(47464)),	-- Death's Choice
						a(i(47131)),	-- Death's Verdict
					},
				}),
				e(1623, {	-- Anub'arak
					["crs"] = { 34564 },	-- Anub'arak
					["groups"] = {
						ach(5021, {	-- Call of the Crusade - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						ach(3816),	-- The Traitor King (25 player)
						i(142085, {	-- Nerubian Swarmer (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						a(i(47239)),	-- Archon Glaive
						h(i(47491)),	-- Hellion Glaive
						h(i(47475)),	-- Hellscream Slicer
						a(i(47206)),	-- Misery's End
						a(i(47156)),	-- Stormpike Cleaver
						h(i(47483)),	-- Suffering's End
						h(i(47490)),	-- Maiden's Adoration
						a(i(47238)),	-- Maiden's Favor
						h(i(47481)),	-- Might of the Nerub
						a(i(47192)),	-- Strength of the Nerub
						a(i(47209)),	-- Chestguard of Flowing Elements
						h(i(47486)),	-- Cuirass of Flowing Elements
						h(i(47474)),	-- Armbands of Dark Determination
						a(i(47208)),	-- Armbands of the Ashen Saint
						h(i(47485)),	-- Bindings of the Ashen Saint
						a(i(47155)),	-- Bracers of Dark Determination
						h(i(47492)),	-- Gauntlets of Bitter Reprisal
						a(i(47240)),	-- Gloves of Bitter Reprisal
						a(i(47236)),	-- Gloves of the Lifeless Touch
						h(i(47487)),	-- Handwraps of the Lifeless Touch
						a(i(47153)),	-- Belt of Deathly Dominion
						a(i(47207)),	-- Belt of the Forgotten Martyr
						h(i(47484)),	-- Girdle of the Forgotten Martyr
						h(i(47472)),	-- Waistguard of Deathly Dominion
						h(i(47478)),	-- Breeches of the Deepening Void
						h(i(47479)),	-- Leggings of the Awakening
						a(i(47189)),	-- Leggings of the Deepening Void
						h(i(47480)),	-- Leggings of the Lurking Threat
						a(i(47191)),	-- Legguards of the Lurking Threat
						a(i(47190)),	-- Legwraps of the Awakening
						h(i(47482)),	-- Boots of the Icy Floe
						a(i(47205)),	-- Footpads of the Icy Floe
						a(i(47154)),	-- Greaves of the 7th Legion
						h(i(47473)),	-- Greaves of the Saronite Citadel
						a(i(47237)),	-- Band of Deplorable Violence
						h(i(47476)),	-- Band of the Traitor King
						h(i(47489)),	-- Lurid Manifestation
						a(i(47157)),	-- Signet of the Traitor King
						h(i(47477)),	-- Reign of the Dead
						a(i(47188)),	-- Reign of the Unliving
					},
				}),
				o(195665, bubbleDown({ ["timeline"] = { ADDED_3_2_0, REMOVED_4_0_3 } }, {	-- Argent Crusade Tribute Chest
					["description"] = "This chest appears after the defeat of Anub'arak in successful Tribute runs in the Trial of the Crusader.",
					--[[
						Alliance	Description	Horde
					1-24 Attempts
						2x Regalia of the Grand Conqueror // Protector // Vanquisher
					25-44 Attempts
						BRK-1000	Ranged, Gun	Fezzik's Autocannon
						Remorseless	One-Hand, Mace	Cudgel of the Damned
						Catastrophe	Two-Hand, Mace	Grievance
						Clemency	Two-Hand, Staff	Sufferance
						Blade of the Unbroken Covenant	Main Hand, Sword	Mortalis
						Silverwing Defender	One-Hand, Sword	Orgrim's Deflector
						Decimation	Two-Hand, Sword	Fleshrender
					45-49 Attempts
						2x Regalia of the Grand Conqueror // Protector // Vanquisher
					50 Attempts
						Bolvar's Devotion	Back, Caster	Lady Liadrin's Conviction
						Jaina's Radiance	Back, Caster	Aethas' Intensity
						Magni's Resolution	Back, Tank	Cairne's Endurance
						Varian's Furor	Back, DPS	Garrosh's Rage
						Vereesa's Dexterity	Back, DPS	Sylvanas' Cunning
					]]--
					["groups"] = {
						i(47557),	-- Regalia of the Grand Conqueror
						i(47558),	-- Regalia of the Grand Protector
						i(47559),	-- Regalia of the Grand Vanquisher
						a(ach(4156, {	-- A Tribute to Immortality
							a(i(49096)),	-- Crusader's White Warhorse (MOUNT!)
						})),
						h(ach(4079, {	-- A Tribute to Immortality
							h(i(49098)),	-- Crusader's Black Warhorse (MOUNT!)
						})),
						ach(3819, {	-- A Tribute to Insanity (25 Player)
							h(ig(47551)),		-- Aethas' Intensity
							a(ig(47553)),		-- Bolvar's Devotion
							h(ig(47550)),		-- Cairne's Endurance
							h(ig(47548)),		-- Garrosh's Rage
							a(ig(47552)),		-- Jaina's Radiance
							h(ig(47554)),		-- Lady Liadrin's Conviction
							a(ig(47549)),		-- Magni's Resolution
							h(ig(47546)),		-- Sylvanas' Cunning
							a(ig(47547)),		-- Varian's Furor
							a(ig(47545)),		-- Vereesa's Dexterity
						}),
						ach(3818),	-- A Tribute to Mad Skill (25 Player)
						ach(3817, {	-- A Tribute to Skill (25 Player)
							a(ig(47517)),		-- Blade of the Unbroken Covenant
							a(ig(47521)),		-- BRK-1000
							a(ig(47519)),		-- Catastrophe
							a(ig(47524)),		-- Clemency
							h(ig(47528)),		-- Cudgel of the Damned
							a(ig(47515)),		-- Decimation
							h(ig(47523)),		-- Fezzik's Autocannon
							h(ig(47516)),		-- Fleshrender
							h(ig(47520)),		-- Grievance
							h(ig(47518)),		-- Mortalis
							h(ig(47513)),		-- Orgrim's Deflector
							a(ig(47526)),		-- Remorseless
							a(ig(47506)),		-- Silverwing Defender
							h(ig(47525)),		-- Sufferance
						}),
					},
				})),
			}),
		},
	}),
}))));
