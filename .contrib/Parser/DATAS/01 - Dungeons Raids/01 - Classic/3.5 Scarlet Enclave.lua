-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_EIGHT, inst(2856, bubbleDownSelf({["timeline"] = { ADDED_1_15_7 }}, {	-- Scarlet Enclave
		-- ["description"] = "[TBC] \nThis is a new raid added in SoD Phase 8.\nThe current loot table is not accurate. If you get items not in the boss drop, please report it in Discord #classic-errors.",
		["zone-text-areaID"] = 16236,	-- Scarlet Enclave
		-- ["sourceQuest"] = 86970,
		-- ["coord"] = { 39.8, 73.6, DEADWIND_PASS },
		["isRaid"] = true,
		["lvl"] = 60,
		["groups"] = {
			n(QUESTS),
			d(DIFFICULTY.SOD.PLAYER20, {
				["groups"] = {
					header(HEADERS.Item, 239301, {	-- Corrupted Ashbringer
						["classes"] = { HUNTER, PALADIN, WARRIOR },
						["isRaid"] = true,
						["groups"] = {	
							-- ToDO: Add Coords
							-- https://www.wowhead.com/classic/guide/season-of-discovery/ashbringer-unlock-questline
							header(HEADERS.Item, 239196, {	-- Ruined Lightforged Blade
								q(89445, {	-- Blades of Light
									["cost"] = { { "i", 239196, 1 } },	-- Ruined Lightforged Blade
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(89446, {	-- The Lost Craftsman
									["sourceQuest"] = 89445,	-- Blades of Light
									["qg"] = 16376,	-- Craftsman Wilhelm
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
								q(89447, {	-- Extravagant Tastes
									["sourceQuest"] = 89446,	-- The Lost Craftsman
									["qg"] = 16365,	-- Master Craftsman Omarion
									["cost"] = { { "i", 21023, 10 } },	-- Dirge's Kickin' Chimaerok Chops
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
								q(89448, {	-- Gathering Light
									["sourceQuest"] = 89447,	-- Extravagant Tastes
									["qg"] = 16365,	-- Master Craftsman Omarion
									["cost"] = { { "i", 239216, 12 } },	-- Lightforged Iron
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
								q(89449, {	-- The Radiant Forge
									["sourceQuest"] = 89448,	-- Gathering Light
									["qg"] = 16365,	-- Master Craftsman Omarion
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
								q(89237, {	-- This Could Get Expensive...
									["sourceQuest"] = 89449,	-- The Radiant Forge
									["qg"] = 16365,	-- Master Craftsman Omarion
									["cost"] = {
										{ "i", 12360, 20 },	-- Arcanite Bar
										{ "i", 234003, 20 },	-- Obsidian-Infused Thorium Bar
										{ "i", 6037, 120 },	-- Truesilver Bar
										{ "i", 12364, 10 },	-- Huge Emerald
										{ "i", 12811, 20 },	-- Righteous Orb
									},
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
								q(89304, {	-- The Perfect Metal
									["sourceQuest"] = 89237,	-- This Could Get Expensive...
									["qg"] = 16365,	-- Master Craftsman Omarion
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["maps"] = { NAXXRAMAS },
								}),
							}),
							header(HEADERS.Item, 239696, {	-- Hilt of the Ashbringer
								q(89300, {	-- The Ashbringer
									["sourceQuest"] = 89304,	-- The Perfect Metal
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										i(239010, {	-- Hilt of the Ashbringer
											["description"] = "Equip the Hilt to summon The Will of the Ashbringer!",
										}),
									},
								}),
								q(89232, {	-- The First Step
									["sourceQuest"] = 89300,	-- The Ashbringer
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(89303, {	-- On Fate's Path
									["sourceQuest"] = 89232,	-- The First Step
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(89442, {	-- Emblem of Darkness
									["sourceQuest"] = 89303,	-- On Fate's Path
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										i(239197),	-- Reforged Blade of the Ashbringer
									},
								}),
								q(89443, {	-- Falling Into Place
									["sourceQuest"] = 89442,	-- Emblem of Darkness
									["qg"] = 11034,	-- Lord Maxwell Tyrosus <The Argent Dawn>
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										i(239219),	-- Emblem of the Ashbringer
										i(240936, {	-- Inert Ashbringer
											["description"] = "Be aware, when you equip it all Argent Dawn NPCs turn hostile. Make sure you are a good distance outside of Light's Hope Chapel before equipping it. Use it to summon the Will of the Ashbringer once again.",
											["cost"] = {
												{ "i", 239197, 1 },	-- Reforged Blade of the Ashbringer
												{ "i", 239010, 1 },	-- Hilt of the Ashbringer
											},
										}),
									},
								}),
								q(89301, {	-- A Difficult Path
									["sourceQuest"] = 89443,	-- Falling Into Place
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(89451, {	-- Journey To Moonglade
									["sourceQuest"] = 89301,	-- A Difficult Path
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(89462, {	-- The Druid of the Talon
									["sourceQuest"] = 89451,	-- Journey To Moonglade
									["qg"] = 241834,	-- Istaria
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(90507, {	-- Logistics Challenges
									["sourceQuest"] = 89462,	-- The Druid of the Talon
									["qg"] = 242174,	-- Thisalee Crow
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(90506, {	-- Take Their Breath Away
									["sourceQuest"] = 89462,	-- The Druid of the Talon
									["qg"] = 242174,	-- Thisalee Crow
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
								}),
								q(90508, {	-- As The Crow Flies
									["sourceQuests"] = {
										90506,	-- Take Their Breath Away
										90507,	-- Logistics Challenges
									},
									["qg"] = 242174,	-- Thisalee Crow
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["description"] = "Use the Inert Ashbringer Inert Ashbringer to summon the Will of the Ashbringer again & to start the next quest.",
								}),
								q(89473, {	-- The Well of Eternity
									["sourceQuest"] = 90508,	-- As The Crow Flies
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										objective(1, {	-- 0/12 Nordrassil Detritus
											["provider"] = { "i", 240848 },	-- Nordrassil Detritus
										}),
									},
								}),
								q(90559, {	-- The Tempering
									["sourceQuest"] = 89473,	-- The Well of Eternity
									["qg"] = 242863,	-- Hyjal Bonfire
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										i(241653),	-- Heated Blade
										i(241657, {	-- Tempered Blade
											["cost"] = { { "i", 241653, 1 } },	-- Heated Blade
										}),
										i(241081),	-- Corrupted Ashbringer
									},
								}),
								q(89474, {	-- Forgiveness
									["sourceQuest"] = 90559,	-- The Tempering
									["qg"] = 241334,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["maps"] = { SCARLET_MONASTERY },
								}),
								q(89475, {	-- The Lonely Path of the Damned
									["sourceQuest"] = 89474,	-- Forgiveness
									["qg"] = 242499,	-- Highlord Mograine
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["maps"] = { SCARLET_MONASTERY },
								}),
								q(89488, {	-- A Kind of Peace
									["sourceQuest"] = 89475,	-- The Lonely Path of the Damned
									["qg"] = 242501,	-- The Will of the Ashbringer
									["classes"] = { HUNTER, PALADIN, WARRIOR },
									["lvl"] = 60,
									["groups"] = {
										i(239301),	-- Corrupted Ashbringer (Cleansed)
									},
								}),
							}),
						},
					}),
					n(11036, {	-- Leonid Barthalomew the Revered <The Argent Dawn>
						["coords"] = {
							{ 81.6, 57.8, EASTERN_PLAGUELANDS },	-- Leonid Barthalomew the Revered <The Argent Dawn>
							{ 98.6, 84.0, EASTERN_PLAGUELANDS },	-- Bryon Steelblade, but he sells the exact same items
						},
						["groups"] = {
							cl(DRUID, {
								-- DPS (AGILITY)
								i(240060),	-- Waywatcher Wraps
								i(240061),	-- Waywatcher Sash
								i(240062),	-- Waywatcher Shoulderpads
								i(240063),	-- Waywatcher Trousers
								i(240064),	-- Waywatcher Cowl
								i(240065),	-- Waywatcher Grips
								i(240066),	-- Waywatcher Stompers
								i(240067),	-- Waywatcher Vest
								-- DPS (Intellect)
								i(240068),	-- Waywatcher Bindings
								i(240069),	-- Waywatcher Cord
								i(240070),	-- Waywatcher Mantle
								i(240071),	-- Waywatcher Kilt
								i(240072),	-- Waywatcher Hood
								i(240073),	-- Waywatcher Mitts
								i(240074),	-- Waywatcher Sandals
								i(240075),	-- Waywatcher Leathers
								-- Healer
								i(240084),	-- Waywatcher Wristguards
								i(240085),	-- Waywatcher Girdle
								i(240086),	-- Waywatcher Spaulders
								i(240087),	-- Waywatcher Legguards
								i(240088),	-- Waywatcher Headpiece
								i(240089),	-- Waywatcher Handguards
								i(240090),	-- Waywatcher Boots
								i(240091),	-- Waywatcher Tunic
								-- Tank
								i(240076),	-- Waywatcher Bracers
								i(240077),	-- Waywatcher Waistguard
								i(240078),	-- Waywatcher Pauldrons
								i(240079),	-- Waywatcher Leggings
								i(240080),	-- Waywatcher Headdress
								i(240081),	-- Waywatcher Gauntlets
								i(240082),	-- Waywatcher Sabatons
								i(240083),	-- Waywatcher Armor
							}),
							cl(HUNTER, {
								-- Melee
								i(239533),	-- Dawnstalker Leggings
								i(239534),	-- Dawnstalker Pauldrons
								i(239535),	-- Dawnstalker Belt
								i(239536),	-- Dawnstalker Vambraces
								i(239529),	-- Dawnstalker Breastplate
								i(239530),	-- Dawnstalker Greaves
								i(239531),	-- Dawnstalker Gauntlets
								i(239532),	-- Dawnstalker Viso
								-- Ranged
								i(239537),	-- Dawnstalker Boots
								i(239538),	-- Dawnstalker Girdle
								i(239539),	-- Dawnstalker Handguards
								i(239541),	-- Dawnstalker Legguards
								i(239542),	-- Dawnstalker Spaulders
								i(239543),	-- Dawnstalker Tunic
								i(239544),	-- Dawnstalker Wristguards
							}),
							cl(MAGE, {
								-- DPS
								i(240052),	-- Fireleaf Bindings
								i(240053),	-- Fireleaf Belt
								i(240054),	-- Fireleaf Shoulderpads
								i(240055),	-- Fireleaf Leggings
								i(240056),	-- Fireleaf Circlet
								i(240057),	-- Fireleaf Gloves
								i(240058),	-- Fireleaf Sandals
								i(240059),	-- Fireleaf Robe
								-- Healer
								i(240044),	-- Fireleaf Wristwraps
								i(240045),	-- Fireleaf Waistguard
								i(240046),	-- Fireleaf Mantle
								i(240047),	-- Fireleaf Pants
								i(240048),	-- Fireleaf Hood
								i(240049),	-- Fireleaf Mitts
								i(240050),	-- Fireleaf Boots
								i(240051),	-- Fireleaf Garb
							}),
							cl(PALADIN, {
								-- DPS
								i(240023),	-- Inquisition Vambraces
								i(240024),	-- Inquisition Belt
								i(240025),	-- Inquisition Shoulderplates
								i(240026),	-- Inquisition Leggings
								i(240027),	-- Inquisition Helmet
								i(240028),	-- Inquisition Gloves
								i(240029),	-- Inquisition Greaves
								i(240030),	-- Inquisition Breastplate
								-- Healer
								i(240020),	-- Inquisition Legguards
								i(240021),	-- Inquisition Spaulders
								i(240022),	-- Inquisition Boots
								i(240039),	-- Inquisition Tunic
								i(240040),	-- Inquisition Headpiece
								i(240041),	-- Inquisition Handguards
								i(240042),	-- Inquisition Wristguards
								i(240043),	-- Inquisition Girdle
								-- Healer Set but for DPSING
								i(246055),	-- Inquisition Grips
								i(246056),	-- Inquisition Armbraces
								i(246057),	-- Inquisition Stompers
								i(246058),	-- Inquisition Plate Pants
								i(246059),	-- Inquisition Cord
								i(246060),	-- Inquisition Cuirass
								i(246061),	-- Inquisition Epaulets
								i(246062),	-- Inquisition Faceguard
								-- Tank
								i(240031),	-- Inquisition Bracers
								i(240032),	-- Inquisition Waistguard
								i(240033),	-- Inquisition Pauldrons
								i(240034),	-- Inquisition Legplates
								i(240035),	-- Inquisition Crown
								i(240036),	-- Inquisition Gauntlets
								i(240037),	-- Inquisition Sabatons
								i(240038),	-- Inquisition Chestguard
							}),
							cl(PRIEST, {
								i(239565),	-- Garb of Revelation
								i(239572),	-- Boots of Revelation
								i(239574),	-- Hands of Revelation
								i(239575),	-- Crown of Revelation
								i(239577),	-- Pants of Revelation
								i(239581),	-- Mantle of Revelation
								i(239582),	-- Girdle of Revelation
								i(239583),	-- Wrists of Revelation
								-- Healer
								i(239584),	-- Gloves of Revelation
								i(239585),	-- Circlet of Revelation
								i(239586),	-- Shoulderpads of Revelation
								i(239587),	-- Leggings of Revelation
								i(239588),	-- Bindings of Revelation
								i(239589),	-- Sandals of Revelation
								i(239590),	-- Belt of Revelation
								i(239591),	-- Robe of Revelation
							}),
							cl(ROGUE, {
								i(239555),	-- Duskwraith Bracers
								i(239556),	-- Duskwraith Waistguard
								i(239557),	-- Duskwraith Gauntlets
								i(239558),	-- Duskwraith Sabatons
								i(239559),	-- Duskwraith Pauldrons
								i(239560),	-- Duskwraith Helmet
								i(239561),	-- Duskwraith Legplates
								i(239562),	-- Duskwraith Breastplate
								-- Tank
								i(239547),	-- Duskwraith Wristguards
								i(239548),	-- Duskwraith Chestguard
								i(239549),	-- Duskwraith Grips
								i(239550),	-- Duskwraith Mask
								i(239551),	-- Duskwraith Leggings
								i(239552),	-- Duskwraith Mantle
								i(239553),	-- Duskwraith Treads
								i(239554),	-- Duskwraith Belt
							}),
							cl(SHAMAN, {
								i(240128),	-- Soulcrusher Armor
								i(240129),	-- Soulcrusher Treads
								i(240130),	-- Soulcrusher Grips
								i(240131),	-- Soulcrusher Helmet
								i(240132),	-- Test Staff
								i(240134),	-- Soulcrusher Leggings
								i(240135),	-- Soulcrusher Epaulets
								i(240136),	-- Soulcrusher Belt
								i(240137),	-- Soulcrusher Vambraces
								-- DPS (Intellect)
								i(240109),	-- Soulcrusher Embrace
								i(240110),	-- Soulcrusher Greaves
								i(240122),	-- Soulcrusher Mitts
								i(240123),	-- Soulcrusher Crown
								i(240124),	-- Soulcrusher Kilt
								i(240125),	-- Soulcrusher Mantle
								i(240126),	-- Soulcrusher Cord
								i(240127),	-- Soulcrusher Bindings
								-- Healer
								i(240092),	-- Soulcrusher Tunic
								i(240093),	-- Soulcrusher Boots
								i(240095),	-- Soulcrusher Handguards
								i(240096),	-- Soulcrusher Headpiece
								i(240097),	-- Soulcrusher Legguards
								i(240098),	-- Soulcrusher Spaulders
								i(240099),	-- Soulcrusher Girdle
								i(240100),	-- Soulcrusher Wristguards
								-- Tank
								i(240101),	-- Soulcrusher Chestguard
								i(240102),	-- Soulcrusher Sabatons
								i(240103),	-- Soulcrusher Gloves
								i(240104),	-- Soulcrusher Faceguard
								i(240105),	-- Soulcrusher Legplates
								i(240106),	-- Soulcrusher Pauldrons
								i(240107),	-- Soulcrusher Waistguard
								i(240108),	-- Soulcrusher Bracers
							}),
							cl(WARLOCK, {
								-- DPS
								i(240138),	-- Heretic Robe
								i(240139),	-- Heretic Sandals
								i(240140),	-- Heretic Gloves
								i(240141),	-- Heretic Cowl
								i(240142),	-- Heretic Leggings
								i(240143),	-- Heretic Shoulderpads
								i(240144),	-- Heretic Belt
								i(240145),	-- Heretic Bindings
								-- Tank
								i(240146),	-- Heretic Garb
								i(240147),	-- Heretic Handguards
								i(240148),	-- Heretic Hood
								i(240149),	-- Heretic Pants
								i(240150),	-- Heretic Mantle
								i(240151),	-- Heretic Waistguard
								i(240152),	-- Heretic Wristguards
								i(240153),	-- Heretic Boots
							}),
							cl(WARRIOR, {
								-- DPS
								i(239512),	-- Lightbreaker Wrists
								i(239513),	-- Lightbreaker Belt
								i(239514),	-- Lightbreaker Grips
								i(239515),	-- Lightbreaker Greaves
								i(239516),	-- Lightbreaker Shoulders
								i(239517),	-- Lightbreaker Greathelm
								i(239518),	-- Lightbreaker Tassets
								i(239519),	-- Lightbreaker Cuirass
								-- Tank
								i(239520),	-- Lightbreaker Bracers
								i(239521),	-- Lightbreaker Waistguard
								i(239522),	-- Lightbreaker Gauntlets
								i(239523),	-- Lightbreaker Sabatons
								i(239524),	-- Lightbreaker Pauldrons
								i(239525),	-- Lightbreaker Helmet
								i(239526),	-- Lightbreaker Legplates
								i(239527),	-- Lightbreaker Breastplate
							}),
						},
					}),
					n(ZONE_DROPS, {
						i(238301),	-- Pattern: Scarlet Augur's Cuffs (RECIPE!)
						i(238304),	-- Pattern: Scarlet Augur's Leggings (RECIPE!)
						i(238302),	-- Pattern: Scarlet Augur's Mitts (RECIPE!)
						i(238305),	-- Pattern: Scarlet Augur's Soles (RECIPE!)
						i(238303),	-- Pattern: Scarlet Augur's Strap (RECIPE!)
					}),
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							240811,	-- Balnazzar
							240812,	-- High Commander Beatrix
							238954,	-- Solidstraza
							240794,	-- Alexei the Beastlord
							241021,	-- Mason the Echo <Grand Admiral>
							240810,	-- Doan
							240795,	-- Herod <The Scarlet Champion>
							240809,	-- Vishas
							243021,	-- Lilian Voss
							241006,	-- Grand Crusader Caldoran
						},
						["groups"] = {
							i(239216),	-- Lightforged Iron
						},
					}),
					e(3185, {	-- Balnazzar
						["creatureID"] = 240811,
						["groups"] = {
							i(239719),	-- Consecrated Bindings
							i(239722),	-- Consecrated Wristguards
							i(239759),	-- Consecrated Bracers
							i(241152),	-- Dawnwrought Shoulders
							i(240922),	-- Deception
							i(241017),	-- Demon's Folly
							i(241176),	-- Diesalven's Demise
							i(241171),	-- Gloves of Departed Souls
							i(241179),	-- Leggings of Catastrophe
							i(239216),	-- Lightforged Iron
							i(241018),	-- Nathrezim Heart
							i(241028),	-- Nathrezim Loop
							i(241184),	-- Savior's Sandals
							i(241157),	-- Scarlet Chestplate
							i(241178),	-- Stalwart Pain Plate
							i(240839),	-- Thalkituun, the Unseen Guest
							i(242365),	-- Wing of Balnazzar (QUEST!)
						},
					}),
					e(3187, {	-- High Commander Beatrix
						["creatureID"] = 240812,
						["groups"] = {
							i(241026),	-- Cardinal's Shawl
							i(241077),	-- Cardinal's Chapeau
							i(239718),	-- Consecrated Belt
							i(239756),	-- Consecrated Girdle
							i(239760),	-- Consecrated Waistguard
							i(239694),	-- Covenant of Light (MOUNT!)
							i(241076),	-- Cowl of the Covenant
							i(241170),	-- Enclave Protectors
							i(240997),	-- Fratley's Spur
							i(241074),	-- Helm of the Red Crusade
							i(241173),	-- High Wizard Wrap
							i(242465),	-- Jostled Chalice Fragment
							i(241177),	-- Kilt of the Scarlet Arcanist
							i(239216),	-- Lightforged Iron
							i(241159),	-- Monastery Garb
							i(238300),	-- Pattern: Scarlet Augur's Vestaments (RECIPE!)
							i(238308),	-- Pattern: Scarlet Infiltrator's Vest
							i(238316),	-- Pattern: Scarlet Huntsman's Chain
							i(238324),	-- Plans: Scarlet Soldier's Chestplate
							i(239196, {	-- Ruined Lightforged Blade (QUEST!)
								["classes"] = { HUNTER, PALADIN, WARRIOR },
							}),
							i(241027),	-- Shield Warden's Guard
							i(241068),	-- Stiltz's Standard
							-- 2x crafting pattern
						},
					}),
					e(3186, {	-- Solidstraza
						["creatureID"] = 238954,
						["groups"] = {
							i(239707),	-- Consecrated Helmet
							i(239714),	-- Consecrated Circlet
							i(239729),	-- Consecrated Headpiece
							i(241022),	-- Dawnbringer's Cloak
							i(241166),	-- Dawnstripped Bands
							i(241034),	-- Heart of Light
							i(240850),	-- Lightfist Hammer
							i(239216),	-- Lightforged Iron
							i(241180),	-- Lightscale Leggings
							i(242364),	-- Mature Light Dragon Sinew (QUEST!)
							i(241186),	-- Polished Scarlet Mail Boots
							i(241002),	-- Remnants of the Red
							i(240174),	-- Solistra, Fang of the First Light
							i(241163),	-- Sunblaze Bracers
							i(241168),	-- Sunblaze Grips
							i(241073),	-- Touch of Light
							i(236317),	-- Visera, the Gutrender
						},
					}),
					e(3196, {	-- Alexei the Beastlord
						["creatureID"] = 240794,
						["groups"] = {
							i(241185),	-- Bear Training Boots
							i(241154),	-- Bearskin Mantle
							i(241158),	-- Chains of the Abandoned
							i(241069),	-- Choke Chain
							i(239706),	-- Consecrated Sabatons
							i(239710),	-- Consecrated Sandals
							i(239726),	-- Consecrated Boots
							i(239216),	-- Lightforged Iron
							i(238299),	-- Pattern: Scarlet Augur's Mantle (RECIPE!)
							i(238307),	-- Pattern: Scarlet Infiltrator's Shoulderpads
							i(238315),	-- Pattern: Scarlet Huntsman's Pauldrons
							i(241165),	-- Penitent Wraps
							i(238323),	-- Plans: Scarlet Soldier's Spaulders
							i(240924),	-- Poleaxe of the Beast
							i(241167),	-- Prisoner Shackles
							i(241164),	-- Scrapped Argent Leathers
							i(241038),	-- Sir Dornel's Didgeridoo
							i(240849),	-- Staff of the Glade
							i(241162),	-- Sunblessed Leathers
							i(241079),	-- Weight of the World
						},
					}),
					e(3197, {	-- Mason the Echo <Grand Admiral>
						["creatureID"] = 241021,
						["groups"] = {
							i(241183),	-- Ashwalkers
							i(239716),	-- Consecrated Gloves
							i(239730),	-- Consecrated Handguards
							i(239762),	-- Consecrated Gauntlets
							i(241187),	-- Crimson Wartreads
							i(241181),	-- Dawnworn Chain Leggings
							i(241023),	-- Drape of the Dastardly
							i(240925),	-- Experiment 800M
							i(241025),	-- Flag of the Broken Admiral
							i(241011),	-- Greatstaff of Fealty
							i(239216),	-- Lightforged Iron
							i(241030),	-- Mason's Fraternity Ring
							i(242793),	-- Portable Cannon
							i(240843),	-- Starter's Pistol
							i(241071),	-- Talisman of the Scarlet Scoundrel
							i(241182),	-- Templar Plate Legguards
							i(239060),	-- Will of the Mountain
						},
					}),
					e(3188, {	-- Reborn Council
						["crs"] = {
							240810,	-- Doan
							240795,	-- Herod <The Scarlet Champion>
							240809,	-- Vishas
						},
						["groups"] = {
							i(241015),	-- Aegis of the Scarlet Bastion
							i(241008),	-- Condemnation
							i(239708),	-- Consecrated Pauldrons
							i(239712),	-- Consecrated Shoulderpads
							i(239758),	-- Consecrated Spaulders
							i(239117),	-- Crusader's Chalice
							i(241153),	-- Doan's Mantle
							i(241174),	-- Girdle of the Reborn Champion
							i(241080),	-- Herod's Pauldron
							i(241070),	-- Hope of Herod
							i(239216),	-- Lightforged Iron
							i(240854),	-- Mercy
							i(241003),	-- Mirage Rod of Illusion
							i(240853),	-- Queensfall
							i(241075),	-- Raging Destroyer's Helm
							i(240919),	-- Ravagane
							i(240998),	-- Soporific Blade
							i(237302),	-- Tabard of the Scarlet Enclave
							i(241175),	-- Torturer's Toolbelt
						},
					}),
					e(3190, {	-- Lilian Voss
						["creatureID"] = 243021,
						["groups"] = {
							i(241037),	-- Abandoned Experiment
							i(241031),	-- Barthalomew's Promise
							i(241156),	-- Blighted Robes
							i(239709),	-- Consecrated Legplates
							i(239721),	-- Consecrated Leggings
							i(239757),	-- Consecrated Legguards
							i(241004),	-- Conundrum
							i(239117),	-- Crusader’s Chalice
							i(241160),	-- Dawnworn Chainmail
							i(240923),	-- Duplicity
							i(240844),	-- Putress' Poker
							i(241020),	-- Putress' Completed Diary
							i(240842),	-- Scarlet Rotbringer
							i(241078),	-- Shroud of the Embalmed
							i(241161),	-- Templar Breastplate
							i(241072),	-- Vial of Pus
							i(241012),	-- Wand of Reanimation
						},
					}),
					e(3189, {	-- Grand Crusader Caldoran
						["creatureID"] = 241006,
						["groups"] = {
							i(241029),	-- Baelin's Band
							i(241172),	-- Caldoran's Locked Gauntlets
							i(239215),	-- Charred Emblem (QUEST!)
							i(239715),	-- Consecrated Robe
							i(239731),	-- Consecrated Tunic
							i(239761),	-- Consecrated Breastplate
							i(240852),	-- Crimson Cleaver
							i(239117),	-- Crusader's Chalice
							i(240841),	-- High Commander's Guard
							i(239696, {	-- Hilt of the Ashbringer (QUEST!)
								["sourceQuest"] = 89304,	-- -- The Perfect Metal
								["description"] = "Only drops once you have completed the 'Ruined Lightforged Blade' Questchain.",
							}),
							i(242366),	-- Inescapable Fate (QUEST!)
							i(241039),	-- Infusion of Souls
							i(240920),	-- Leogan
							i(239216),	-- Lightforged Iron
							i(238298),	-- Pattern: Scarlet Augur's Hood (RECIPE!)
							i(238299),	-- Pattern: Scarlet Augur's Mantle (RECIPE!)
							i(238300),	-- Pattern: Scarlet Augur's Vestaments (RECIPE!)
							i(238306),	-- Pattern: Scarlet Infiltrator's Bandana (RECIPE!)
							i(238307),	-- Pattern: Scarlet Infiltrator's Shoulderpads (RECIPE!)
							i(238308),	-- Pattern: Scarlet Infiltrator's Vest (RECIPE!)
							i(238314),	-- Pattern: Scarlet Huntsman's Coif (RECIPE!)
							i(238315),	-- Pattern: Scarlet Huntsman's Pauldrons (RECIPE!)
							i(238316),	-- Pattern: Scarlet Huntsman's Chain (RECIPE!)
							i(238322),	-- Plans: Scarlet Soldier's Helmet (RECIPE!)
							i(238323),	-- Plans: Scarlet Soldier's Spaulders (RECIPE!)
							i(238324),	-- Plans: Scarlet Soldier's Chestplate (RECIPE!)
							i(240851),	-- Regicide
							i(241032),	-- Ring of Resurrection
							i(239695),	-- Scarlet Steed (MOUNT!)
							i(240921),	-- Scarlet Smashbringer
							i(241024),	-- Scarlet Commander's Cape
							i(241006),	-- Spire of Sacrifice
							i(241021),	-- The Light
							i(241001),	-- Tyr's Fall
						},
					}),
				},
			}),
		},
	}))),
}));
-- #endif
