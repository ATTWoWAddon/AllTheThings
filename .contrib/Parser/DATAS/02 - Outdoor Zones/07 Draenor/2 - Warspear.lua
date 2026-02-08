---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(WARSPEAR, {
			["icon"] = 374221,
			["isRaid"] = true,
			["races"] = HORDE_ONLY,
			["groups"] = {
				n(FLIGHT_PATHS, {
					fp(1408, {	-- Warspear, Ashran
						["coord"] = { 44.2, 33.9, WARSPEAR },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(FOLLOWERS, {
					follower(467, {	-- Fen Tao
						["description"] = "In order to obtain this follower you need to talk to him and let him finish his dialogue.",
						["creatureID"] = 91483,	-- Fen Tao
						["coord"] = { 46.9, 45.2, WARSPEAR },
					}),
				}),
				n(PROFESSIONS, {
					prof(ALCHEMY, {
						n(87542, {	-- Joshua Alvarez <Alchemy Recipes>
							["coord"] = { 61.0, 27.4, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_ALCHEMY_RECIPES, {DRAENOR_ALCHEMY}),
						}),
					}),
					prof(BLACKSMITHING, {
						n(87550, {	-- Nonn Threeratchet <Blacksmithing Plans>
							["coord"] = { 75.0, 37.9, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_BLACKSMITHING_RECIPES, {DRAENOR_BLACKSMITHING}),
						}),
					}),
					prof(ENCHANTING, {
						n(86045, {	-- Ged'kah <Enchanting Recipes>
							["coord"] = { 78.0, 53.7, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_ENCHANTING_RECIPES, {DRAENOR_ENCHANTING}),
						}),
					}),
					prof(ENGINEERING, {
						n(87552, {	-- Nik Steelrings <Engineering Plans>
							["coord"] = { 70.5, 38.9, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_ENGINEERING_RECIPES, {DRAENOR_ENGINEERING}),
						}),
					}),
					prof(JEWELCRAFTING, {
						n(87548, {	-- Kaevan Highwit <Jewelcrafting Designs>
							["coord"] = { 60.4, 40.7, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_JEWELCRAFTING_RECIPES, {DRAENOR_JEWELCRAFTING}),
						}),
					}),
					prof(LEATHERWORKING, {
						n(87549, {	-- Garm Gladestride <Leatherworking Patterns>
							["coord"] = { 50.4, 27.4, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_LEATHERWORKING_RECIPES, {DRAENOR_LEATHERWORKING}),
						}),
					}),
					prof(TAILORING, {
						n(87543, {	-- Petir Starocean <Tailoring Patterns>
							["coord"] = { 59.0, 42.8, WARSPEAR },
							["groups"] = appendGroups(COMMON_DRAENOR_TAILORING_RECIPES, {DRAENOR_TAILORING}),
						}),
					}),
				}),
				n(QUESTS, {
					q(37260, {	-- A Worthy Challenge: Gug'rokk
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37264, {	-- A Worthy Challenge: High Sage Viryx
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37263, {	-- A Worthy Challenge: Ner'zhul
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37262, {	-- A Worthy Challenge: Skullok, Son of Gruul
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37261, {	-- A Worthy Challenge: Skylord Tovra
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37266, {	-- A Worthy Challenge: Warlord Zaela
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(37265, {	-- A Worthy Challenge: Yalnu
						["qg"] = 88161,	-- Challenger Sunforge
						["coord"] = { 65.3, 59.3, WARSPEAR },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = { i(127831) },	-- Challenger's Strongbox
					}),
					q(36709, {	-- Burning Beauty
						["sourceQuest"] = 36708,	-- Inspiring Ashran
						["qg"] = 86312,	-- Lieutenant Kragil
						["coord"] = { 44.1, 45.4, WARSPEAR },
					}),
					q(36708, {	-- Inspiring Ashran
						["sourceQuest"] = 36707,	-- Warspear Welcome
						["qg"] = 86312,	-- Lieutenant Kragil
						["coord"] = { 44.1, 45.4, WARSPEAR },
					}),
					q(36055, {	-- Sealing Fate: Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", APEXIS_CRYSTAL, 500 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37458, {	-- Sealing Fate: Extended Honor
						["sourceQuest"] = 36057,	-- Sealing Fate: Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", HONOR, 1000 } },
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(36056, {	-- Sealing Fate: Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", GARRISON_RESOURCES, 1000 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(36054, {	-- Sealing Fate: Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 5000000,	-- 500g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37452, {	-- Sealing Fate: Heap of Apexis Crystals
						["sourceQuest"] = 36055,	-- Sealing Fate: Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", APEXIS_CRYSTAL, 1000 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(36057, {	-- Sealing Fate: Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", HONOR, 500 } },
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(37455, {	-- Sealing Fate: Immense Fortune of Gold
						["sourceQuest"] = 37454,	-- Sealing Fate: Piles of Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 20000000,	-- 2,000g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37459, {	-- Sealing Fate: Monumental Honor
						["sourceQuest"] = 37458,	-- Sealing Fate: Extended Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", HONOR, 2000 } },
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(37453, {	-- Sealing Fate: Mountain of Apexis Crystals
						["sourceQuest"] = 37452,	-- Sealing Fate: Heap of Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", APEXIS_CRYSTAL, 2000 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37454, {	-- Sealing Fate: Piles of Gold
						["sourceQuest"] = 36054,	-- Sealing Fate: Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 10000000,	-- 1,000g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37456, {	-- Sealing Fate: Stockpiled Garrison Resources
						["sourceQuest"] = 36056,	-- Sealing Fate: Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", GARRISON_RESOURCES, 2000 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37457, {	-- Sealing Fate: Tremendous Garrison Resources
						["sourceQuest"] = 37456,	-- Sealing Fate: Stockpiled Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", GARRISON_RESOURCES, 4000 } },
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(35243, {	-- The Dark Lady's Gift
						["sourceQuest"] = 36709,	-- Burning Beauty
						["qg"] = 81765,	-- Vivianne
						["coord"] = { 62.1, 23.0, WARSPEAR },
						["groups"] = { follower(216) },	-- Vivianne
					}),
					q(36707, {	-- Warspear Welcome
						["sourceQuest"] = 36706,	-- Ashran Appearance
						["qg"] = 86315,	-- Stomphoof
						["coord"] = { 45.5, 34.6, WARSPEAR },
					}),
				}),
				n(VENDORS, {
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(86036, {	-- Beska Redtusk <Frostwolf Orcs Quartermaster>
							["coord"] = { 53.9, 62.6, WARSPEAR },
							["groups"] = bubbleDownClassicRep(FACTION_FROSTWOLF_ORCS, {
								{		-- Neutral
								}, {	-- Friendly
									i(118664, {	-- Frostwolf Elixir
										["cost"] = { { "c", APEXIS_CRYSTAL, 1 } },
									}),
								}, {	-- Honored
									i(118677, {	-- Howl of the Frostwolf
										["cost"] = 5000000,	-- 500g
									}),
									i(115468, {	-- Permanent Frost Essence (TOY!)
										["cost"] = 10000000,	-- 1,000g
									}),
								}, {	-- Revered
									i(118662, {	-- Bladespire Relic
										["cost"] = 25000000,	-- 2,500g
									}),
									i(119161, {	-- Contract: Karg Bloodfury
										["cost"] = 50000000,	-- 5,000g
										["groups"] = { follower(459) },	-- Karg Bloodfury
									}),
									i(119141, {	-- Frostwolf Pup (PET!)
										["cost"] = {
											{ "c", APEXIS_CRYSTAL, 2000 },
											{ "g", 10000000 },	-- 1,000g
										},
									}),
								}, {	-- Exalted
									i(119133),	-- Frostwolf Tabard
									i(116785, {	-- Swift Frostwolf (MOUNT!)
										["cost"] = {
											{ "c", APEXIS_CRYSTAL, 5000 },
											{ "g", 50000000 },	-- 5,000g
										},
									}),
								},
							}),
						}),
						n(88569, {	-- Blood Guard Axelash <Primal Gladiator>
							["coord"] = { 48.5, 57.6, WARSPEAR },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138632, {	-- Arsenal: Primal Gladiator's Weapons
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(5, i(111067)),	-- Primal Gladiator's Cleaver
									moh(5, i(111068)),	-- Primal Gladiator's Shanker
									moh(5, i(111069)),	-- Primal Gladiator's Ripper
									moh(5, i(111070)),	-- Primal Gladiator's Pummeler
									moh(5, i(111071)),	-- Primal Gladiator's Quickblade
									moh(5, i(111072)),	-- Primal Gladiator's Longbow
									moh(5, i(111074)),	-- Primal Gladiator's Rifle
									moh(5, i(111075)),	-- Primal Gladiator's Pike
									moh(5, i(111117)),	-- Primal Gladiator's Spellblade
									moh(5, i(111118)),	-- Primal Gladiator's Gavel
									moh(5, i(111119)),	-- Primal Gladiator's Mageblade
									moh(5, i(111120)),	-- Primal Gladiator's Baton of Light
									moh(5, i(111121)),	-- Primal Gladiator's Touch of Defeat
									moh(5, i(111122)),	-- Primal Gladiator's Battle Staff
									moh(5, i(111123)),	-- Primal Gladiator's Energy Staff
									moh(2, i(111132)),	-- Primal Gladiator's Endgame
									moh(2, i(111133)),	-- Primal Gladiator's Reprieve
									moh(2, i(111139)),	-- Primal Gladiator's Redoubt
									moh(2, i(111140)),	-- Primal Gladiator's Barrier
									moh(5, i(111198)),	-- Primal Gladiator's Hacker
									moh(5, i(111199)),	-- Primal Gladiator's Render
									moh(5, i(111200)),	-- Primal Gladiator's Bonecracker
									moh(5, i(111201)),	-- Primal Gladiator's Slicer
									moh(5, i(111202)),	-- Primal Gladiator's Decapitator
									moh(5, i(111203)),	-- Primal Gladiator's Bonegrinder
									moh(5, i(111204)),	-- Primal Gladiator's Greatsword
									moh(2, i(111221)),	-- Primal Gladiator's Shield Wall
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138558, {	-- Ensemble: Primal Gladiator's Dreadplate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111102)),	-- Primal Gladiator's Dreadplate Chestpiece
									moh(2, i(111103)),	-- Primal Gladiator's Dreadplate Gauntlets
									moh(3, i(111104)),	-- Primal Gladiator's Dreadplate Helm
									moh(3, i(111105)),	-- Primal Gladiator's Dreadplate Legguards
									moh(2, i(111106)),	-- Primal Gladiator's Dreadplate Shoulders
								}),
								cl(DRUID, {
									moh(12, iensemble(138566, {	-- Ensemble: Primal Gladiator's Dragonhide Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(111107)),	-- Primal Gladiator's Dragonhide Gloves
									moh(3, i(111108)),	-- Primal Gladiator's Dragonhide Helm
									moh(3, i(111109)),	-- Primal Gladiator's Dragonhide Legguards
									moh(3, i(111110)),	-- Primal Gladiator's Dragonhide Robes
									moh(2, i(111111)),	-- Primal Gladiator's Dragonhide Spaulders
								}),
								cl(HUNTER, {
									moh(12, iensemble(138564, {	-- Ensemble: Primal Gladiator's Chain Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111112)),	-- Primal Gladiator's Chain Armor
									moh(2, i(111113)),	-- Primal Gladiator's Chain Gauntlets
									moh(3, i(111114)),	-- Primal Gladiator's Chain Helm
									moh(3, i(111115)),	-- Primal Gladiator's Chain Leggings
									moh(2, i(111116)),	-- Primal Gladiator's Chain Spaulders
								}),
								cl(MAGE, {
									moh(12, iensemble(138572, {	-- Ensemble: Primal Gladiator's Silk Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(111150)),	-- Primal Gladiator's Silk Handguards
									moh(3, i(111151)),	-- Primal Gladiator's Silk Cowl
									moh(3, i(111152)),	-- Primal Gladiator's Silk Trousers
									moh(3, i(111153)),	-- Primal Gladiator's Silk Robe
									moh(2, i(111154)),	-- Primal Gladiator's Silk Amice
								}),
								cl(MONK, {
									moh(12, iensemble(138568, {	-- Ensemble: Primal Gladiator's Ironskin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(111164)),	-- Primal Gladiator's Ironskin Gloves
									moh(3, i(111165)),	-- Primal Gladiator's Ironskin Helm
									moh(3, i(111166)),	-- Primal Gladiator's Ironskin Legguards
									moh(2, i(111167)),	-- Primal Gladiator's Ironskin Spaulders
									moh(3, i(111168)),	-- Primal Gladiator's Ironskin Tunic
								}),
								cl(PALADIN, {
									moh(12, iensemble(138560, {	-- Ensemble: Primal Gladiator's Scaled Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111169)),	-- Primal Gladiator's Scaled Chestpiece
									moh(2, i(111170)),	-- Primal Gladiator's Scaled Gauntlets
									moh(3, i(111171)),	-- Primal Gladiator's Scaled Helm
									moh(3, i(111172)),	-- Primal Gladiator's Scaled Legguards
									moh(2, i(111173)),	-- Primal Gladiator's Scaled Shoulders
								}),
								cl(PRIEST, {
									moh(12, iensemble(138574, {	-- Ensemble: Primal Gladiator's Satin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(111183)),	-- Primal Gladiator's Satin Gloves
									moh(3, i(111184)),	-- Primal Gladiator's Satin Hood
									moh(3, i(111185)),	-- Primal Gladiator's Satin Leggings
									moh(3, i(111186)),	-- Primal Gladiator's Satin Robe
									moh(2, i(111187)),	-- Primal Gladiator's Satin Mantle
								}),
								cl(ROGUE, {
									moh(12, iensemble(138570, {	-- Ensemble: Primal Gladiator's Leather Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111188)),	-- Primal Gladiator's Leather Tunic
									moh(2, i(111189)),	-- Primal Gladiator's Leather Gloves
									moh(3, i(111190)),	-- Primal Gladiator's Leather Helm
									moh(3, i(111191)),	-- Primal Gladiator's Leather Legguards
									moh(2, i(111192)),	-- Primal Gladiator's Leather Spaulders
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138562, {	-- Ensemble: Primal Gladiator's Ringmail Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111193)),	-- Primal Gladiator's Ringmail Armor
									moh(2, i(111194)),	-- Primal Gladiator's Ringmail Gauntlets
									moh(3, i(111195)),	-- Primal Gladiator's Ringmail Helm
									moh(3, i(111196)),	-- Primal Gladiator's Ringmail Leggings
									moh(2, i(111197)),	-- Primal Gladiator's Ringmail Spaulders
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138576, {	-- Ensemble: Primal Gladiator's Felweave Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(111234)),	-- Primal Gladiator's Felweave Handguards
									moh(3, i(111235)),	-- Primal Gladiator's Felweave Cowl
									moh(3, i(111236)),	-- Primal Gladiator's Felweave Trousers
									moh(3, i(111237)),	-- Primal Gladiator's Felweave Raiment
									moh(2, i(111238)),	-- Primal Gladiator's Felweave Amice
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138556, {	-- Ensemble: Primal Gladiator's Plate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(111239)),	-- Primal Gladiator's Plate Chestpiece
									moh(2, i(111240)),	-- Primal Gladiator's Plate Gauntlets
									moh(3, i(111241)),	-- Primal Gladiator's Plate Helm
									moh(3, i(111242)),	-- Primal Gladiator's Plate Legguards
									moh(2, i(111243)),	-- Primal Gladiator's Plate Shoulders
								}),
								n(BACK, {
									moh(1, i(111205)),	-- Primal Gladiator's Cloak of Cruelty
									moh(1, i(111206)),	-- Primal Gladiator's Cloak of Prowess
									moh(1, i(120099)),	-- Primal Gladiator's Cloak of Endurance
									moh(1, i(111077)),	-- Primal Gladiator's Cape of Cruelty
									moh(1, i(111078)),	-- Primal Gladiator's Cape of Prowess
									moh(1, i(111124)),	-- Primal Gladiator's Drape of Cruelty
									moh(1, i(111125)),	-- Primal Gladiator's Drape of Prowess
									moh(1, i(111126)),	-- Primal Gladiator's Drape of Meditation
									moh(1, i(111127)),	-- Primal Gladiator's Drape of Contemplation
								}),
								n(HEAD, {
									moh(3, i(111216)),	-- Primal Gladiator's Plate Visor
									moh(3, i(111211)),	-- Primal Gladiator's Plate Helmet
									moh(3, i(111290)),	-- Primal Gladiator's Coif
									moh(3, i(111280)),	-- Primal Gladiator's Helm
									moh(3, i(111285)),	-- Primal Gladiator's Headcover
									moh(3, i(111275)),	-- Primal Gladiator's Helm
									moh(3, i(111089)),	-- Primal Gladiator's Cowl of Cruelty
									moh(3, i(111084)),	-- Primal Gladiator's Hood of Prowess
								}),
								n(SHOULDER, {
									moh(2, i(111218)),	-- Primal Gladiator's Plate Pauldrons
									moh(2, i(111213)),	-- Primal Gladiator's Shoulderplates
									moh(2, i(111292)),	-- Primal Gladiator's Pauldrons
									moh(2, i(111282)),	-- Primal Gladiator's Spaulders
									moh(2, i(111287)),	-- Primal Gladiator's Pauldrons
									moh(2, i(111277)),	-- Primal Gladiator's Spaulders
									moh(2, i(111092)),	-- Primal Gladiator's Mantle of Cruelty
									moh(2, i(111087)),	-- Primal Gladiator's Amice of Prowess
								}),
								n(CHEST, {
									moh(3, i(111214)),	-- Primal Gladiator's Plate Chestguard
									moh(3, i(111209)),	-- Primal Gladiator's Plate Breastplate
									moh(3, i(111288)),	-- Primal Gladiator's Chestguard
									moh(3, i(111278)),	-- Primal Gladiator's Armor
									moh(3, i(111283)),	-- Primal Gladiator's Chestguard
									moh(3, i(111273)),	-- Primal Gladiator's Tunic
									moh(3, i(111091)),	-- Primal Gladiator's Raiment of Cruelty
									moh(3, i(111086)),	-- Primal Gladiator's Robes of Prowess
								}),
								n(HANDS, {
									moh(2, i(111083)),	-- Primal Gladiator's Gloves of Prowess
									moh(2, i(111088)),	-- Primal Gladiator's Handguards of Cruelty
									moh(2, i(111274)),	-- Primal Gladiator's Gloves
									moh(2, i(111284)),	-- Primal Gladiator's Grips
									moh(2, i(111279)),	-- Primal Gladiator's Gauntlets
									moh(2, i(111289)),	-- Primal Gladiator's Gloves
									moh(2, i(111210)),	-- Primal Gladiator's Plate Gloves
									moh(2, i(111215)),	-- Primal Gladiator's Plate Grips
								}),
								n(WRIST, {
									moh(1, i(111180)),	-- Primal Gladiator's Armplates of Cruelty
									moh(1, i(111181)),	-- Primal Gladiator's Armplates of Prowess
									moh(1, i(111182)),	-- Primal Gladiator's Armplates of Victory
									moh(1, i(111161)),	-- Primal Gladiator's Armbands of Prowess
									moh(1, i(111162)),	-- Primal Gladiator's Armbands of Cruelty
									moh(1, i(111163)),	-- Primal Gladiator's Armbands of Victory
									moh(1, i(111147)),	-- Primal Gladiator's Bindings of Cruelty
									moh(1, i(111148)),	-- Primal Gladiator's Bindings of Prowess
									moh(1, i(111149)),	-- Primal Gladiator's Bindings of Victory
									moh(1, i(111099)),	-- Primal Gladiator's Cuffs of Prowess
									moh(1, i(111100)),	-- Primal Gladiator's Cuffs of Cruelty
									moh(1, i(111101)),	-- Primal Gladiator's Cuffs of Victory
								}),
								n(WAIST, {
									moh(1, i(111141)),	-- Primal Gladiator's Belt of Prowess
									moh(1, i(111142)),	-- Primal Gladiator's Belt of Cruelty
									moh(1, i(111143)),	-- Primal Gladiator's Belt of Victory
									moh(1, i(111093)),	-- Primal Gladiator's Cord of Cruelty
									moh(1, i(111094)),	-- Primal Gladiator's Cord of Prowess
									moh(1, i(111095)),	-- Primal Gladiator's Cord of Victory
									moh(1, i(111155)),	-- Primal Gladiator's Waistguard of Cruelty
									moh(1, i(111156)),	-- Primal Gladiator's Waistguard of Prowess
									moh(1, i(111157)),	-- Primal Gladiator's Waistguard of Victory
									moh(1, i(111174)),	-- Primal Gladiator's Girdle of Cruelty
									moh(1, i(111175)),	-- Primal Gladiator's Girdle of Prowess
									moh(1, i(111176)),	-- Primal Gladiator's Girdle of Victory
								}),
								n(LEGS, {
									moh(3, i(111276)),	-- Primal Gladiator's Legguards
									moh(3, i(111085)),	-- Primal Gladiator's Leggings of Prowess
									moh(3, i(111090)),	-- Primal Gladiator's Trousers of Cruelty
									moh(3, i(111286)),	-- Primal Gladiator's Leggings
									moh(3, i(111281)),	-- Primal Gladiator's Leggings
									moh(3, i(111291)),	-- Primal Gladiator's Leggings
									moh(3, i(111212)),	-- Primal Gladiator's Legplates
									moh(3, i(111217)),	-- Primal Gladiator's Plate Leggings
								}),
								n(FEET, {
									moh(2, i(111144)),	-- Primal Gladiator's Boots of Cruelty
									moh(2, i(111145)),	-- Primal Gladiator's Boots of Prowess
									moh(2, i(111146)),	-- Primal Gladiator's Boots of Victory
									moh(2, i(111096)),	-- Primal Gladiator's Treads of Cruelty
									moh(2, i(111097)),	-- Primal Gladiator's Treads of Prowess
									moh(2, i(111098)),	-- Primal Gladiator's Treads of Victory
									moh(2, i(111158)),	-- Primal Gladiator's Footguards of Cruelty
									moh(2, i(111159)),	-- Primal Gladiator's Footguards of Prowess
									moh(2, i(111160)),	-- Primal Gladiator's Footguards of Victory
									moh(2, i(111177)),	-- Primal Gladiator's Warboots of Cruelty
									moh(2, i(111178)),	-- Primal Gladiator's Warboots of Prowess
									moh(2, i(111179)),	-- Primal Gladiator's Warboots of Victory
								}),
							},
						}),
						n(88161, {	-- Challenger Sunforge
							["description"] = "Can only buy items from this vendor if you have Challenge Warlord: Gold Feat of Strength on your character.",
							["coord"] = { 65.3, 59.3, WARSPEAR },
							["groups"] = bubbleDown({ ["u"] = REMOVED_FROM_GAME, }, {
								i(118401, {	-- Arcana Shard Spire
									["cost"] = 10000000,	-- 1,000g
								}),
								iensemble(136854, {	-- Arsenal: Draenor Challenger's Armaments
									["cost"] = 100000000,	-- 10,000g
								}),
								i(118396, {	-- Bloodmaw Gargoyle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118395, {	-- Claws of Creation
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118409, {	-- Cloudsong Glaive
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118411, {	-- Crystal-Shot Longrifle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118403, {	-- Dimension-Ripper's Staff
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118408, {	-- Elemental Crescent
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118397, {	-- Equus
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118407, {	-- Face of the Guardian
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118413, {	-- Flamegrinder
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118406, {	-- Furnace of the Great Machine
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118402, {	-- Greatstaff of Infinite Knowledge
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118412, {	-- Greatsword of the Inferno
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118404, {	-- Living Longbow
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118405, {	-- Shifting Felblade
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118398, {	-- Soul Eater
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118399, {	-- Sunblade
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118410, {	-- Tesseract Timepiece
									["cost"] = 10000000,	-- 1,000g
								}),
								un(REMOVED_FROM_GAME, i(119032, {	-- Rusted Challenger's Strongbox
									["description"] = "This box was from the WoD Challenge Mode Dailies.",
									["groups"] = {
										un(REMOVED_FROM_GAME, i(118996)),	-- Blackfire Amulet
										un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
										un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
										un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
										un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
										un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
										un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
										un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
										un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
										un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
										un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
										un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
										un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
										un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
										un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
										un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
										un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
										un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
										un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
										un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
										un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
										un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
										un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
										un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
										un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
										un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
										un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
										un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
										un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
										un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
										un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
										un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
										un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
										un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
										un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
										un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
										un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
										un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
										un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
										un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
										un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
										un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
										un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
										un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
										un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
										un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
										un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
										un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
										un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
										un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
										un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
										un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
										un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
										un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
										un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
										un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
										un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
										un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
										un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
										un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
										un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
									},
								})),
								un(REMOVED_FROM_GAME, i(127831, {	-- Challenger's Strongbox
									["description"] = "This box was from the WoD Challenge Mode Dailies.",
									["groups"] = {
										un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
										un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
										un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
										un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
										un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
										un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
										un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
										un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
										un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
										un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
										un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
										un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
										un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
										un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
										un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
										un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
										un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
										un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
										un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
										un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
										un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
										un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
										un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
										un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
										un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
										un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
										un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
										un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
										un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
										un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
										un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
										un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
										un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
										un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
										un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
										un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
										un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
										un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
										un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
										un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
										un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
										un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
										un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
										un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
										un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
										un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
										un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
										un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
										un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
										un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
										un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
										un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
										un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
										un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
										un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
										un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
										un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
										un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
										un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
										un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
									},
								})),
							}),
						}),
						n(93909, {	-- Cladd Dawnstrider <Wild Gladiator>
							["coord"] = { 49.3, 56.7, WARSPEAR },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138634, {	-- Arsenal: Wild Gladiator's Weapons (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125228)),	-- Wild Gladiator's Barrier (H)
									moh(5, i(125208)),	-- Wild Gladiator's Baton of Light (H)
									moh(5, i(125210)),	-- Wild Gladiator's Battle Staff (H)
									moh(5, i(125318)),	-- Wild Gladiator's Bonecracker (H)
									moh(5, i(125321)),	-- Wild Gladiator's Bonegrinder (H)
									moh(5, i(125154)),	-- Wild Gladiator's Cleaver (H)
									moh(5, i(125320)),	-- Wild Gladiator's Decapitator (H)
									moh(2, i(125220)),	-- Wild Gladiator's Endgame (H)
									moh(5, i(125211)),	-- Wild Gladiator's Energy Staff (H)
									moh(5, i(125206)),	-- Wild Gladiator's Gavel (H)
									moh(5, i(125322)),	-- Wild Gladiator's Greatsword (H)
									moh(5, i(125316)),	-- Wild Gladiator's Hacker (H)
									moh(5, i(125160)),	-- Wild Gladiator's Heavy Crossbow(H)
									moh(5, i(125159)),	-- Wild Gladiator's Longbow (H)
									moh(5, i(125207)),	-- Wild Gladiator's Mageblade (H)
									moh(5, i(125162)),	-- Wild Gladiator's Pike (H)
									moh(5, i(125157)),	-- Wild Gladiator's Pummeler (H)
									moh(5, i(125158)),	-- Wild Gladiator's Quickblade (H)
									moh(2, i(125227)),	-- Wild Gladiator's Redoubt (H)
									moh(5, i(125317)),	-- Wild Gladiator's Render (H)
									moh(2, i(125221)),	-- Wild Gladiator's Reprieve (H)
									moh(5, i(125161)),	-- Wild Gladiator's Rifle (H)
									moh(5, i(125156)),	-- Wild Gladiator's Ripper (H)
									moh(5, i(129935)),	-- Wild Gladiator's Runeaxe (H)
									moh(5, i(125155)),	-- Wild Gladiator's Shanker (H)
									moh(2, i(125330)),	-- Wild Gladiator's Shield Wall (H)
									moh(5, i(125319)),	-- Wild Gladiator's Slicer (H)
									moh(5, i(125205)),	-- Wild Gladiator's Spellblade (H)
									moh(5, i(125163)),	-- Wild Gladiator's Staff (H)
									moh(5, i(125209)),	-- Wild Gladiator's Touch of Defeat (H)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138516, {	-- Ensemble: Wild Gladiator's Dreadplate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125190)),	-- Wild Gladiator's Dreadplate Chestpiece (H)
									moh(2, i(125191)),	-- Wild Gladiator's Dreadplate Gauntlets (H)
									moh(3, i(125192)),	-- Wild Gladiator's Dreadplate Helm (H)
									moh(3, i(125193)),	-- Wild Gladiator's Dreadplate Legguards (H)
									moh(2, i(125194)),	-- Wild Gladiator's Dreadplate Shoulders (H)
								}),
								cl(DRUID, {
									moh(12, iensemble(138524, {	-- Ensemble: Wild Gladiator's Dragonhide Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125195)),	-- Wild Gladiator's Dragonhide Gloves (H)
									moh(3, i(125196)),	-- Wild Gladiator's Dragonhide Helm (H)
									moh(3, i(125197)),	-- Wild Gladiator's Dragonhide Legguards (H)
									moh(3, i(125198)),	-- Wild Gladiator's Dragonhide Robes (H)
									moh(2, i(125199)),	-- Wild Gladiator's Dragonhide Spaulders (H)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138522, {	-- Ensemble: Wild Gladiator's Chain Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125200)),	-- Wild Gladiator's Chain Armor (H)
									moh(2, i(125201)),	-- Wild Gladiator's Chain Gauntlets (H)
									moh(3, i(125202)),	-- Wild Gladiator's Chain Helm (H)
									moh(3, i(125203)),	-- Wild Gladiator's Chain Leggings (H)
									moh(2, i(125204)),	-- Wild Gladiator's Chain Spaulders (H)
								}),
								cl(MAGE, {
									moh(12, iensemble(138530, {	-- Ensemble: Wild Gladiator's Silk Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125252)),	-- Wild Gladiator's Silk Amice (H)
									moh(3, i(125249)),	-- Wild Gladiator's Silk Cowl (H)
									moh(2, i(125248)),	-- Wild Gladiator's Silk Handguards (H)
									moh(3, i(125251)),	-- Wild Gladiator's Silk Robe (H)
									moh(3, i(125250)),	-- Wild Gladiator's Silk Trousers (H)
								}),
								cl(MONK, {
									moh(12, iensemble(138526, {	-- Ensemble: Wild Gladiator's Ironskin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125272)),	-- Wild Gladiator's Ironskin Gloves (H)
									moh(3, i(125273)),	-- Wild Gladiator's Ironskin Helm (H)
									moh(3, i(125274)),	-- Wild Gladiator's Ironskin Legguards (H)
									moh(2, i(125275)),	-- Wild Gladiator's Ironskin Spaulders (H)
									moh(3, i(125276)),	-- Wild Gladiator's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138518, {	-- Ensemble: Wild Gladiator's Scaled Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125277)),	-- Wild Gladiator's Scaled Chestpiece (H)
									moh(2, i(125278)),	-- Wild Gladiator's Scaled Gauntlets (H)
									moh(3, i(125279)),	-- Wild Gladiator's Scaled Helm (H)
									moh(3, i(125280)),	-- Wild Gladiator's Scaled Legguards (H)
									moh(2, i(125281)),	-- Wild Gladiator's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138532, {	-- Ensemble: Wild Gladiator's Satin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125301)),	-- Wild Gladiator's Satin Gloves (H)
									moh(3, i(125302)),	-- Wild Gladiator's Satin Hood (H)
									moh(3, i(125303)),	-- Wild Gladiator's Satin Leggings (H)
									moh(2, i(125305)),	-- Wild Gladiator's Satin Mantle (H)
									moh(3, i(125304)),	-- Wild Gladiator's Satin Robe (H)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138528, {	-- Ensemble: Wild Gladiator's Leather Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125307)),	-- Wild Gladiator's Leather Gloves (H)
									moh(3, i(125308)),	-- Wild Gladiator's Leather Helm (H)
									moh(3, i(125309)),	-- Wild Gladiator's Leather Legguards (H)
									moh(2, i(125310)),	-- Wild Gladiator's Leather Spaulders (H)
									moh(3, i(125306)),	-- Wild Gladiator's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138520, {	-- Ensemble: Wild Gladiator's Ringmail Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125311)),	-- Wild Gladiator's Ringmail Armor (H)
									moh(2, i(125312)),	-- Wild Gladiator's Ringmail Gauntlets (H)
									moh(3, i(125313)),	-- Wild Gladiator's Ringmail Helm (H)
									moh(3, i(125314)),	-- Wild Gladiator's Ringmail Leggings (H)
									moh(2, i(125315)),	-- Wild Gladiator's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138534, {	-- Ensemble: Wild Gladiator's Felweave Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125356)),	-- Wild Gladiator's Felweave Amice (H)
									moh(3, i(125353)),	-- Wild Gladiator's Felweave Cowl (H)
									moh(2, i(125352)),	-- Wild Gladiator's Felweave Handguards (H)
									moh(3, i(125355)),	-- Wild Gladiator's Felweave Raiment (H)
									moh(3, i(125354)),	-- Wild Gladiator's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138514, {	-- Ensemble: Wild Gladiator's Plate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125357)),	-- Wild Gladiator's Plate Chestpiece (H)
									moh(2, i(125358)),	-- Wild Gladiator's Plate Gauntlets (H)
									moh(3, i(125359)),	-- Wild Gladiator's Plate Helm (H)
									moh(3, i(125360)),	-- Wild Gladiator's Plate Legguards (H)
									moh(2, i(125361)),	-- Wild Gladiator's Plate Shoulders (H)
								}),
								n(HEAD, {
									moh(3, i(125181)),	-- Wild Gladiator's Hood of Prowess (H)
									moh(3, i(125240)),	-- Wild Gladiator's Helm (H)
									moh(3, i(125264)),	-- Wild Gladiator's Helm (H)
									moh(3, i(125293)),	-- Wild Gladiator's Plate Helmet (H)
									moh(3, i(125186)),	-- Wild Gladiator's Hood of Crruelty (H)
									moh(3, i(125245)),	-- Wild Gladiator's Headdcover (H)
									moh(3, i(125298)),	-- Wild Gladiator's Plate Visor (H)
									moh(3, i(125269)),	-- Wild Gladiator's Coif (H)
								}),
								n(SHOULDER, {
									moh(2, i(125184)),	-- Wild Gladiator's Amice of Prowess (H)
									moh(2, i(125242)),	-- Wild Gladiator's Spaulders (Leather) (H)
									moh(2, i(125266)),	-- Wild Gladiator's Spaulders (Mail) (H)
									moh(2, i(125295)),	-- Wild Gladiator's Shoulderplates (H)
									moh(2, i(125189)),	-- Wild Gladiator's Mantle of Cruelty (H)
									moh(2, i(125247)),	-- Wild Gladiator's Pauldrons (H)
									moh(2, i(125271)),	-- Wild Gladiator's Pauldrons (Mail) (H)
									moh(2, i(125300)),	-- Wild Gladiator's Plate Pauldrons (H)
								}),
								n(BACK, {
									moh(1, i(125164)),	-- Wild Gladiator's Cape of Cruelty (H)
									moh(1, i(125165)),	-- Wild Gladiator's Cape of Prowess (H)
									moh(1, i(125323)),	-- Wild Gladiator's Cloak of Cruelty (H)
									moh(1, i(125331)),	-- Wild Gladiator's Cloak of Endurance (H)
									moh(1, i(125324)),	-- Wild Gladiator's Cloak of Prowess (H)
									moh(1, i(125215)),	-- Wild Gladiator's Drape of Contemplation (H)
									moh(1, i(125212)),	-- Wild Gladiator's Drape of Cruelty (H)
									moh(1, i(125214)),	-- Wild Gladiator's Drape of Meditation (H)
									moh(1, i(125213)),	-- Wild Gladiator's Drape of Prowess (H)
								}),
								n(CHEST, {
									moh(3, i(125183)),	-- Wild Gladiator's Robes of Prowess (H)
									moh(3, i(125238)),	-- Wild Gladiator's Tunic (Leahter) (H)
									moh(3, i(125262)),	-- Wild Gladiator's Armor (H)
									moh(3, i(125291)),	-- Wild Gladiator's Plate Breastplate (H)
									moh(3, i(125188)),	-- Wild Gladiator's Rainment of Cruelty(H)
									moh(3, i(125243)),	-- Wild Gladiator's Chestguard (Leather) (H)
									moh(3, i(125267)),	-- Wild Gladiator's Chestguard (Mail) (H)
									moh(3, i(125296)),	-- Wild Gladiator's Plate Chestguard (H)
								}),
								n(WRIST, {
									moh(1, i(125178)),	-- Wild Gladiator's Cuffs of Cruelty (H)
									moh(1, i(125177)),	-- Wild Gladiator's Cuffs of Prowess (H)
									moh(1, i(125235)),	-- Wild Gladiator's Bindings of Cruelty (H)
									moh(1, i(125236)),	-- Wild Gladiator's Bindings of Prowess (H)
									moh(1, i(125260)),	-- Wild Gladiator's Armbands of Cruelty (H)
									moh(1, i(125259)),	-- Wild Gladiator's Armbands of Prowess (H)
									moh(1, i(125288)),	-- Wild Gladiator's Armplates of Cruelty (H)
									moh(1, i(125289)),	-- Wild Gladiator's Armplates of Prowess (H)
									moh(1, i(125290)),	-- Wild Gladiator's Armplates of Victory (H)
									moh(1, i(125261)),	-- Wild Gladiator's Armbands of Victory (H)
									moh(1, i(139016)),	-- Wild Gladiator's Armbands of Alacrity (H)
									moh(1, i(125237)),	-- Wild Gladiator's Bindings of Victory (H)
									moh(1, i(125179)),	-- Wild Gladiator's Cuffs of Victory (H)
								}),
								n(HANDS, {
									moh(2, i(125180)),	-- Wild Gladiator's Gloves of Prowess (H)
									moh(2, i(125239)),	-- Wild Gladiator's Gloves (H)
									moh(2, i(125263)),	-- Wild Gladiator's Gauntlets (H)
									moh(2, i(125292)),	-- Wild Gladiator's Plate Gloves (H)
									moh(2, i(125185)),	-- Wild Gladiator's Handguards of Cruelty (H)
									moh(2, i(125244)),	-- Wild Gladiator's Grips (H)
									moh(2, i(125297)),	-- Wild Gladiator's Plate Grips (H)
									moh(2, i(125268)),	-- Wild Gladiator's Gloves (Mail) (H)
								}),
								n(WAIST, {
									moh(1, i(125171)),	-- Wild Gladiator's Cord of Cruelty (H)
									moh(1, i(125172)),	-- Wild Gladiator's Cord of Prowess (H)
									moh(1, i(125230)),	-- Wild Gladiator's Belt of Cruelty (H)
									moh(1, i(125229)),	-- Wild Gladiator's Belt of Prowess (H)
									moh(1, i(125253)),	-- Wild Gladiator's Waistguard of Cruelty (H)
									moh(1, i(125254)),	-- Wild Gladiator's Waistguard of Prowess (H)
									moh(1, i(125282)),	-- Wild Gladiator's Girdle of Cruelty (H)
									moh(1, i(125283)),	-- Wild Gladiator's Girdle of Prowess (H)
									moh(1, i(125284)),	-- Wild Gladiator's Girdle of Victory (H)
									moh(1, i(125255)),	-- Wild Gladiator's Waistguard of Victory (H)
									moh(1, i(125231)),	-- Wild Gladiator's Belt of Victory (H)
									moh(1, i(125173)),	-- Wild Gladiator's Cord of Victory (H)
								}),
								n(LEGS, {
									moh(3, i(125182)),	-- Wild Gladiator's Leggings of Prowess (H)
									moh(3, i(125241)),	-- Wild Gladiator's Legguards (H)
									moh(3, i(125246)),	-- Wild Gladiator's Leggings (H)
									moh(3, i(125299)),	-- Wild Gladiator's Plate Leggings (H)
									moh(3, i(125187)),	-- Wild Gladiator's Trousers of Cruelty (H)
									moh(3, i(125265)),	-- Wild Gladiator's Leggings (Mail) (H)
									moh(3, i(125270)),	-- Wild Gladiator's Leggings (H)
									moh(3, i(125294)),	-- Wild Gladiator's Legplates (H)
								}),
								n(FEET, {
									moh(2, i(125232)),	-- Wild Gladiator's Boots of Cruelty (H)
									moh(2, i(125234)),	-- Wild Gladiator's Boots of Victory(H)
									moh(2, i(125233)),	-- Wild Gladiator's Boots of Prowess (H)
									moh(2, i(125256)),	-- Wild Gladiator's Footguards of Cruelty (H)
									moh(2, i(125257)),	-- Wild Gladiator's Footguards of Prowess (H)
									moh(2, i(125258)),	-- Wild Gladiator's Footguards of Victory (H)
									moh(2, i(125285)),	-- Wild Gladiator's Warboots of Cruelty (H)
									moh(2, i(125286)),	-- Wild Gladiator's Warboots of Prowess (H)
									moh(2, i(125287)),	-- Wild Gladiator's Warboots of Victory (H)
									moh(2, i(125174)),	-- Wild Gladiator's Treads of Cruelty (H)
									moh(2, i(125175)),	-- Wild Gladiator's Treads of Prowess (H)
									moh(2, i(125176)),	-- Wild Gladiator's Treads of Victory (H)
								}),
							},
						}),
						n(86382, {	-- Dawn-Seeker Alkset <Apexis Leggings Trader>
							["coord"] = { 65.2, 64.2, WARSPEAR },
							["groups"] = {
								i(119821, {	-- Contact: Dawnseeker Rukaryx
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 5000 },
										{ "g", 50000000 },	-- 5,000g
									},
									["groups"] = { follower(462) },	-- Dawnseeker Rukaryx
								}),
								i(115376, {	-- Crystal-Leaf Legguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115377, {	-- Crystal-Plated Legplates
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115375, {	-- Crystalhide Legguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122318, {	-- Ethereal Crystal-Leaf Legguards
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122319, {	-- Ethereal Crystal-Plated Legplates
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122317, {	-- Ethereal Crystalhide Legguards
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122316, {	-- Ethereal Windcrystal Leggings
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116929, {	-- Exceptional Crystal-Leaf Legguards
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116930, {	-- Exceptional Crystal-Plated Legplates
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116928, {	-- Exceptional Crystalhide Legguards
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116927, {	-- Exceptional Windcrystal Leggings
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116933, {	-- Flawless Crystal-Leaf Legguards
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116934, {	-- Flawless Crystal-Plated Legplates
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116932, {	-- Flawless Crystalhide Legguards
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116931, {	-- Flawless Windcrystal Leggings
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116768, {	-- Mosshide Riverwallow (MOUNT!)
									["cost"] = {
										{ "c", APEXIS_CRYSTAL, 5000 },
										{ "g", 500000000 },	-- 50,000g
									},
								}),
								i(115374, {	-- Windcrystal Leggings
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86378, {	-- Dawn-Seeker Jiklar <Apexis Cloak Trader>
							["coord"] = { 66.6, 63.6, WARSPEAR },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116976, {	-- Crystal Reinforced Doomcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116973, {	-- Crystal-Edged Bladecloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116974, {	-- Crystalclasp Stormcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122332, {	-- Ethereal Crystal Reinforced Doomcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122329, {	-- Ethereal Crystal-Edged Bladecloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122330, {	-- Ethereal Crystalclasp Stormcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122331, {	-- Ethereal Refractory Heartcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122328, {	-- Ethereal Shard-Covered Dreadcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(115394, {	-- Exceptional Crystal Reinforced Doomcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115391, {	-- Exceptional Crystal-Edged Bladecloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115392, {	-- Exceptional Crystalclasp Stormcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115393, {	-- Exceptional Refractory Heartcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115395, {	-- Exceptional Shard-Covered Dreadcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116972, {	-- Flawless Crystal Reinforced Doomcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116969, {	-- Flawless Crystal-Edged Bladecloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116970, {	-- Flawless Crystalclasp Stormcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116971, {	-- Flawless Refractory Heartcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116951, {	-- Flawless Shard-Covered Dreadcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116975, {	-- Refractory Heartcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116952, {	-- Shard-Covered Dreadcloak
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(91322, {	-- Dawn-Seeker Kayrek <Apexis Bracer Trader>
							["coord"] = { 65.6, 64.7, WARSPEAR },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116967, {	-- Crystal-Leaf Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116968, {	-- Crystal-Plated Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116966, {	-- Crystalhide Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122314, {	-- Ethereal Crystal-Leaf Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122315, {	-- Ethereal Crystal-Plated Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122313, {	-- Ethereal Crystalhide Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122312, {	-- Ethereal Windcrystal Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116963, {	-- Exceptional Crystal-Leaf Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116964, {	-- Exceptional Crystal-Plated Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116962, {	-- Exceptional Crystalhide Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116961, {	-- Exceptional Windcrystal Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115401, {	-- Flawless Crystalhide Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115402, {	-- Flawless Crystal-Leaf Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115403, {	-- Flawless Crystal-Plated Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115400, {	-- Flawless Windcrystal Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116965, {	-- Windcrystal Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86376, {	-- Dawn-Seeker Kirrik <Apexis Helm Trader>
							["coord"] = { 66.7, 64.3, WARSPEAR },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116955, {	-- Crystal-Leaf Helm
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116956, {	-- Crystal-Plated Greathelm
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116954, {	-- Crystalhide Cowl
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122310, {	-- Ethereal Crystal-Leaf Helm
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122311, {	-- Ethereal Crystal-Plated Greathelm
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122309, {	-- Ethereal Crystalhide Cowl
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122308, {	-- Ethereal Windcrystal Hood
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116959, {	-- Exceptional Crystal-Leaf Helm
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116960, {	-- Exceptional Crystal-Plated Greathelm
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116958, {	-- Exceptional Crystalhide Cowl
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116957, {	-- Exceptional Windcrystal Hood
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115398, {	-- Flawless Crystal-Leaf Helm
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115399, {	-- Flawless Crystal-Plated Greathelm
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115397, {	-- Flawless Crystalhide Cowl
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115396, {	-- Flawless Windcrystal Hood
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116953, {	-- Windcrystal Hood
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86379, {	-- Dawn-Seeker Rikks <Apexis Glove Trader>
							["coord"] = { 66.0, 64.5, WARSPEAR },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116945, {	-- Crystal-Leaf Gloves
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116946, {	-- Crystal-Plated Gauntlets
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116944, {	-- Crystalhide Grips
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122326, {	-- Ethereal Crystal-Leaf Gloves
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122327, {	-- Ethereal Crystal-Plated Gauntlets
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122325, {	-- Ethereal Crystalhide Grips
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122324, {	-- Ethereal Windcrystal Wraps
									["cost"] = 200000000,	-- 20,000g
								}),
								i(115389, {	-- Exceptional Crystal-Leaf Gloves
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115390, {	-- Exceptional Crystal-Plated Gauntlets
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115388, {	-- Exceptional Crystalhide Grips
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115387, {	-- Exceptional Windcrystal Wraps
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116949, {	-- Flawless Crystal-Leaf Gloves
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116950, {	-- Flawless Crystal-Plated Gauntlets
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116948, {	-- Flawless Crystalhide Grips
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116947, {	-- Flawless Windcrystal Wraps
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116943, {	-- Windcrystal Wraps
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(92503, {	-- Dawn-Seeker Skariss <Apexis Belt Trader>
							["coord"] = { 66.4, 62.3, WARSPEAR },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(115380, {	-- Crystal-Leaf Chain
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115381, {	-- Crystal-Plated Greatbelt
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115379, {	-- Crystalhide Belt
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122322, {	-- Ethereal Crystal-Leaf Chain
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122323, {	-- Ethereal Crystal-Plated Greatbelt
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116936, {	-- Exceptional Crystalhide Belt
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122320, {	-- Ethereal Windcrystal Cord
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116937, {	-- Exceptional Crystal-Leaf Chain
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116938, {	-- Exceptional Crystal-Plated Greatbelt
									["cost"] = 50000000,	-- 5,000g
								}),
								i(122321, {	-- Ethereal Crystalhide Belt
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116935, {	-- Exceptional Windcrystal Cord
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116941, {	-- Flawless Crystal-Leaf Chain
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116942, {	-- Flawless Crystal-Plated Greatbelt
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116940, {	-- Flawless Crystalhide Belt
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116939, {	-- Flawless Windcrystal Cord
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115378, {	-- Windcrystal Cord
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(128759, {	-- Dazzerian <Warspear Quartermaster>
							["coord"] = { 49.2, 55.0, WARSPEAR },
							["groups"] = bubbleDownClassicRep(FACTION_VOLJINS_SPEAR, {
								{		-- Neutral
								}, {	-- Friendly
									i(115500),	-- Disposable Pocket Flying Machine
								}, {	-- Honored
								}, {	-- Revered
								}, {	-- Exalted
									moh(100, i(116775, {	-- Breezestrider Stallion (MOUNT!)
										["cost"] = { { "g", 50000000 } },		-- 5,000g
									})),
									i(115518),	-- Vol'jin's Spear Tabard
								},
							}),
						}),
						n(93908, {	-- Fobbly Kickfix <Wild Combatant>
							["coord"] = { 49.1, 56.4, WARSPEAR },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138629, {	-- Arsenal: Wild Combatant's Weapons (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125428)),	-- Wild Combatant's Barrier (H)
									moh(5, i(125408)),	-- Wild Combatant's Baton of Light (H)
									moh(5, i(125410)),	-- Wild Combatant's Battle Staff (H)
									moh(5, i(125494)),	-- Wild Combatant's Bonecracker (H)
									moh(5, i(125497)),	-- Wild Combatant's Bonegrinder (H)
									moh(5, i(127380)),	-- Wild Combatant's Chopper (H)
									moh(5, i(125362)),	-- Wild Combatant's Cleaver (H)
									moh(5, i(125496)),	-- Wild Combatant's Decapitator (H)
									moh(2, i(125420)),	-- Wild Combatant's Endgame (H)
									moh(5, i(125411)),	-- Wild Combatant's Energy Staff (H)
									moh(5, i(125406)),	-- Wild Combatant's Gavel (H)
									moh(5, i(125498)),	-- Wild Combatant's Greatsword (H)
									moh(5, i(125492)),	-- Wild Combatant's Hacker (H)
									moh(5, i(125368)),	-- Wild Combatant's Heavy Crossbow (H)
									moh(5, i(125367)),	-- Wild Combatant's Longbow (H)
									moh(5, i(125407)),	-- Wild Combatant's Mageblade (H)
									moh(5, i(125370)),	-- Wild Combatant's Pike (H)
									moh(5, i(125365)),	-- Wild Combatant's Pummeler (H)
									moh(5, i(125366)),	-- Wild Combatant's Quickblade (H)
									moh(2, i(125427)),	-- Wild Combatant's Redoubt (H)
									moh(5, i(125493)),	-- Wild Combatant's Render (H)
									moh(2, i(125421)),	-- Wild Combatant's Reprieve (H)
									moh(5, i(125369)),	-- Wild Combatant's Rifle (H)
									moh(5, i(125364)),	-- Wild Combatant's Ripper (H)
									moh(5, i(125363)),	-- Wild Combatant's Shanker (H)
									moh(2, i(125506)),	-- Wild Combatant's Shield Wall (H)
									moh(5, i(125495)),	-- Wild Combatant's Slicer (H)
									moh(5, i(125405)),	-- Wild Combatant's Spellblade (H)
									moh(5, i(125371)),	-- Wild Combatant's Staff (H)
									moh(5, i(125409)),	-- Wild Combatant's Touch of Defeat (H)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138602, {	-- Ensemble: Wild Combatant's Dreadplate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125390)),	-- Wild Combatant's Dreadplate Chestpiece (H)
									moh(2, i(125391)),	-- Wild Combatant's Dreadplate Gauntlets (H)
									moh(3, i(125392)),	-- Wild Combatant's Dreadplate Helm (H)
									moh(3, i(125393)),	-- Wild Combatant's Dreadplate Legguards (H)
									moh(2, i(125394)),	-- Wild Combatant's Dreadplate Shoulders (H)
								}),
								cl(DRUID, {
									moh(12, iensemble(138606, {	-- Ensemble: Wild Combatant's Dragonhide Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125395)),	-- Wild Combatant's Dragonhide Gloves (H)
									moh(3, i(125396)),	-- Wild Combatant's Dragonhide Helm (H)
									moh(3, i(125397)),	-- Wild Combatant's Dragonhide Legguards (H)
									moh(3, i(125398)),	-- Wild Combatant's Dragonhide Robes (H)
									moh(2, i(125399)),	-- Wild Combatant's Dragonhide Spaulders (H)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138548, {	-- Ensemble: Wild Combatant's Chain Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125400)),	-- Wild Combatant's Chain Armor (H)
									moh(2, i(125401)),	-- Wild Combatant's Chain Gauntlets (H)
									moh(3, i(125402)),	-- Wild Combatant's Chain Helm (H)
									moh(3, i(125403)),	-- Wild Combatant's Chain Leggings (H)
									moh(2, i(125404)),	-- Wild Combatant's Chain Spaulders (H)
								}),
								cl(MAGE, {
									moh(12, iensemble(138550, {	-- Ensemble: Wild Combatant's Silk Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125444)),	-- Wild Combatant's Silk Amice (H)
									moh(3, i(125441)),	-- Wild Combatant's Silk Cowl (H)
									moh(2, i(125440)),	-- Wild Combatant's Silk Handguards (H)
									moh(3, i(125443)),	-- Wild Combatant's Silk Robe (H)
									moh(3, i(125442)),	-- Wild Combatant's Silk Trousers (H)
								}),
								cl(MONK, {
									moh(12, iensemble(138608, {	-- Ensemble: Wild Combatant's Ironskin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125456)),	-- Wild Combatant's Ironskin Gloves (H)
									moh(3, i(125457)),	-- Wild Combatant's Ironskin Helm (H)
									moh(3, i(125458)),	-- Wild Combatant's Ironskin Legguards (H)
									moh(2, i(125459)),	-- Wild Combatant's Ironskin Spaulders (H)
									moh(3, i(125460)),	-- Wild Combatant's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138604, {	-- Ensemble: Wild Combatant's Scaled Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125461)),	-- Wild Combatant's Scaled Chestpiece (H)
									moh(2, i(125462)),	-- Wild Combatant's Scaled Gauntlets (H)
									moh(3, i(125463)),	-- Wild Combatant's Scaled Helm (H)
									moh(3, i(125464)),	-- Wild Combatant's Scaled Legguards (H)
									moh(2, i(125465)),	-- Wild Combatant's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138552, {	-- Ensemble: Wild Combatant's Satin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125477)),	-- Wild Combatant's Satin Gloves (H)
									moh(3, i(125478)),	-- Wild Combatant's Satin Hood (H)
									moh(3, i(125479)),	-- Wild Combatant's Satin Leggings (H)
									moh(2, i(125481)),	-- Wild Combatant's Satin Mantle (H)
									moh(3, i(125480)),	-- Wild Combatant's Satin Robe (H)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138610, {	-- Ensemble: Wild Combatant's Leather Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125483)),	-- Wild Combatant's Leather Gloves (H)
									moh(3, i(125484)),	-- Wild Combatant's Leather Helm (H)
									moh(3, i(125485)),	-- Wild Combatant's Leather Legguards (H)
									moh(2, i(125486)),	-- Wild Combatant's Leather Spaulders (H)
									moh(3, i(125482)),	-- Wild Combatant's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138546, {	-- Ensemble: Wild Combatant's Ringmail Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125487)),	-- Wild Combatant's Ringmail Armor (H)
									moh(2, i(125488)),	-- Wild Combatant's Ringmail Gauntlets (H)
									moh(3, i(125489)),	-- Wild Combatant's Ringmail Helm (H)
									moh(3, i(125490)),	-- Wild Combatant's Ringmail Leggings (H)
									moh(2, i(125491)),	-- Wild Combatant's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138554, {	-- Ensemble: Wild Combatant's Felweave Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125534)),	-- Wild Combatant's Felweave Amice (H)
									moh(3, i(125531)),	-- Wild Combatant's Felweave Cowl (H)
									moh(2, i(125530)),	-- Wild Combatant's Felweave Handguards (H)
									moh(3, i(125533)),	-- Wild Combatant's Felweave Raiment (H)
									moh(3, i(125532)),	-- Wild Combatant's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138600, {	-- Ensemble: Wild Combatant's Plate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125535)),	-- Wild Combatant's Plate Chestpiece (H)
									moh(2, i(125536)),	-- Wild Combatant's Plate Gauntlets (H)
									moh(3, i(125537)),	-- Wild Combatant's Plate Helm (H)
									moh(3, i(125538)),	-- Wild Combatant's Plate Legguards (H)
									moh(2, i(125539)),	-- Wild Combatant's Plate Shoulders (H)
								}),
								n(BACK, {
									moh(1, i(125372)),	-- Wild Combatant's Cape of Cruelty (H)
									moh(1, i(125373)),	-- Wild Combatant's Cape of Prowess (H)
									moh(1, i(125499)),	-- Wild Combatant's Cloak of Cruelty (H)
									moh(1, i(125526)),	-- Wild Combatant's Cloak of Endurance (H)
									moh(1, i(125500)),	-- Wild Combatant's Cloak of Prowess (H)
									moh(1, i(125415)),	-- Wild Combatant's Drape of Contemplation (H)
									moh(1, i(125412)),	-- Wild Combatant's Drape of Cruelty (H)
									moh(1, i(125414)),	-- Wild Combatant's Drape of Meditation (H)
									moh(1, i(125413)),	-- Wild Combatant's Drape of Prowess (H)
								}),
								n(WRIST, {
									moh(1, i(125384)),	-- Wild Combatant's Cuffs of Cruelty (H)
									moh(1, i(125383)),	-- Wild Combatant's Cuffs of Prowess (H)
									moh(1, i(125433)),	-- Wild Combatant's Bindings of Cruelty (H)
									moh(1, i(125434)),	-- Wild Combatant's Bindings of Prowess (H)
									moh(1, i(125450)),	-- Wild Combatant's Armbands of Cruelty (H)
									moh(1, i(125449)),	-- Wild Combatant's Armbands of Prowess (H)
									moh(1, i(125470)),	-- Wild Combatant's Armplates of Cruelty (H)
									moh(1, i(125471)),	-- Wild Combatant's Armplates of Prowess (H)
								}),
								n(WAIST, {
									moh(1, i(125379)),	-- Wild Combatant's Cord of Cruelty (H)
									moh(1, i(125380)),	-- Wild Combatant's Cord of Prowess (H)
									moh(1, i(125430)),	-- Wild Combatant's Belt of Cruelty (H)
									moh(1, i(125429)),	-- Wild Combatant's Belt of Prowess (H)
									moh(1, i(125445)),	-- Wild Combatant's Waistguard of Cruelty (H)
									moh(1, i(125446)),	-- Wild Combatant's Waistguard of Prowess (H)
									moh(1, i(125466)),	-- Wild Combatant's Girdle of Cruelty (H)
									moh(1, i(125467)),	-- Wild Combatant's Girdle of Prowess (H)
								}),
								n(FEET, {
									moh(2, i(125381)),	-- Wild Combatant's Treads of Cruelty (H)
									moh(2, i(125382)),	-- Wild Combatant's Treads of Prowess (H)
									moh(2, i(125431)),	-- Wild Combatant's Boots of Cruelty (H)
									moh(2, i(125432)),	-- Wild Combatant's Boots of Prowess (H)
									moh(2, i(125447)),	-- Wild Combatant's Footguards of Cruelty (H)
									moh(2, i(125448)),	-- Wild Combatant's Footguards of Prowess (H)
									moh(2, i(125468)),	-- Wild Combatant's Warboots of Cruelty (H)
									moh(2, i(125469)),	-- Wild Combatant's Warboots of Prowess (H)
								}),
							},
						}),
						n(93917, {	-- Malukah Lightsong <Warmongering Gladiator>
							["coord"] = { 48.9, 57.3, WARSPEAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138636, {	-- Arsenal: Warmongering Gladiator's Weapons (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126342)),	-- Warmongering Gladiator's Barrier (H)
									moh(5, i(126322)),	-- Warmongering Gladiator's Baton of Light (H)
									moh(5, i(126324)),	-- Warmongering Gladiator's Battle Staff (H)
									moh(5, i(126432)),	-- Warmongering Gladiator's Bonecracker (H)
									moh(5, i(126435)),	-- Warmongering Gladiator's Bonegrinder (H)
									moh(5, i(126268)),	-- Warmongering Gladiator's Cleaver (H)
									moh(5, i(126434)),	-- Warmongering Gladiator's Decapitator (H)
									moh(2, i(126334)),	-- Warmongering Gladiator's Endgame (H)
									moh(5, i(126325)),	-- Warmongering Gladiator's Energy Staff (H)
									moh(5, i(126320)),	-- Warmongering Gladiator's Gavel (H)
									moh(5, i(126436)),	-- Warmongering Gladiator's Greatsword (H)
									moh(5, i(126430)),	-- Warmongering Gladiator's Hacker (H)
									moh(5, i(126274)),	-- Warmongering Gladiator's Heavy Crossbow (H)
									moh(5, i(126273)),	-- Warmongering Gladiator's Longbow (H)
									moh(5, i(126321)),	-- Warmongering Gladiator's Mageblade (H)
									moh(5, i(126276)),	-- Warmongering Gladiator's Pike (H)
									moh(5, i(126271)),	-- Warmongering Gladiator's Pummeler (H)
									moh(5, i(126272)),	-- Warmongering Gladiator's Quickblade (H)
									moh(2, i(126341)),	-- Warmongering Gladiator's Redoubt (H)
									moh(5, i(126431)),	-- Warmongering Gladiator's Render (H)
									moh(2, i(126335)),	-- Warmongering Gladiator's Reprieve (H)
									moh(5, i(126275)),	-- Warmongering Gladiator's Rifle (H)
									moh(5, i(126270)),	-- Warmongering Gladiator's Ripper (H)
									moh(5, i(126269)),	-- Warmongering Gladiator's Shanker (H)
									moh(2, i(126444)),	-- Warmongering Gladiator's Shield Wall (H)
									moh(5, i(126433)),	-- Warmongering Gladiator's Slicer (H)
									moh(5, i(126319)),	-- Warmongering Gladiator's Spellblade (H)
									moh(5, i(126277)),	-- Warmongering Gladiator's Staff (H)
									moh(5, i(126323)),	-- Warmongering Gladiator's Touch of Defeat (H)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138494, {	-- Ensemble: Warmongering Gladiator's Dreadplate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126306)),	-- Warmongering Gladiator's Dreadplate Helm (H)
									moh(2, i(126308)),	-- Warmongering Gladiator's Dreadplate Shoulders (H)
									moh(3, i(126304)),	-- Warmongering Gladiator's Dreadplate Chestpiece (H)
									moh(2, i(126305)),	-- Warmongering Gladiator's Dreadplate Gauntlets (H)
									moh(3, i(126307)),	-- Warmongering Gladiator's Dreadplate Legguards (H)
								}),
								cl(DRUID, {
									moh(12, iensemble(138502, {	-- Ensemble: Warmongering Gladiator's Dragonhide Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126309)),	-- Warmongering Gladiator's Dragonhide Gloves (H)
									moh(3, i(126310)),	-- Warmongering Gladiator's Dragonhide Helm (H)
									moh(3, i(126311)),	-- Warmongering Gladiator's Dragonhide Legguards (H)
									moh(3, i(126312)),	-- Warmongering Gladiator's Dragonhide Robes (H)
									moh(2, i(126313)),	-- Warmongering Gladiator's Dragonhide Spaulders (H)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138500, {	-- Ensemble: Warmongering Gladiator's Chain Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126314)),	-- Warmongering Gladiator's Chain Armor (H)
									moh(2, i(126315)),	-- Warmongering Gladiator's Chain Gauntlets (H)
									moh(3, i(126316)),	-- Warmongering Gladiator's Chain Helm (H)
									moh(3, i(126317)),	-- Warmongering Gladiator's Chain Leggings (H)
									moh(2, i(126318)),	-- Warmongering Gladiator's Chain Spaulders (H)
								}),
								cl(MAGE, {
									moh(12, iensemble(138508, {	-- Ensemble: Warmongering Gladiator's Silk Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126366)),	-- Warmongering Gladiator's Silk Amice (H)
									moh(3, i(126363)),	-- Warmongering Gladiator's Silk Cowl (H)
									moh(2, i(126362)),	-- Warmongering Gladiator's Silk Handguards (H)
									moh(3, i(126365)),	-- Warmongering Gladiator's Silk Robe (H)
									moh(3, i(126364)),	-- Warmongering Gladiator's Silk Trousers (H)
								}),
								cl(MONK, {
									moh(12, iensemble(138504, {	-- Ensemble: Warmongering Gladiator's Ironskin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126386)),	-- Warmongering Gladiator's Ironskin Gloves (H)
									moh(3, i(126387)),	-- Warmongering Gladiator's Ironskin Helm (H)
									moh(3, i(126388)),	-- Warmongering Gladiator's Ironskin Legguards (H)
									moh(2, i(126389)),	-- Warmongering Gladiator's Ironskin Spaulders (H)
									moh(3, i(126390)),	-- Warmongering Gladiator's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138496, {	-- Ensemble: Warmongering Gladiator's Scaled Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126391)),	-- Warmongering Gladiator's Scaled Chestpiece (H)
									moh(2, i(126392)),	-- Warmongering Gladiator's Scaled Gauntlets (H)
									moh(3, i(126393)),	-- Warmongering Gladiator's Scaled Helm (H)
									moh(3, i(126394)),	-- Warmongering Gladiator's Scaled Legguards (H)
									moh(2, i(126395)),	-- Warmongering Gladiator's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138510, {	-- Ensemble: Warmongering Gladiator's Satin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126415)),	-- Warmongering Gladiator's Satin Gloves (H)
									moh(3, i(126416)),	-- Warmongering Gladiator's Satin Hood (H)
									moh(3, i(126417)),	-- Warmongering Gladiator's Satin Leggings (H)
									moh(2, i(126419)),	-- Warmongering Gladiator's Satin Mantle (H)
									moh(3, i(126418)),	-- Warmongering Gladiator's Satin Robe (H)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138506, {	-- Ensemble: Warmongering Gladiator's Leather Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126421)),	-- Warmongering Gladiator's Leather Gloves (H)
									moh(3, i(126422)),	-- Warmongering Gladiator's Leather Helm (H)
									moh(3, i(126423)),	-- Warmongering Gladiator's Leather Legguards (H)
									moh(2, i(126424)),	-- Warmongering Gladiator's Leather Spaulders (H)
									moh(3, i(126420)),	-- Warmongering Gladiator's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138498, {	-- Ensemble: Warmongering Gladiator's Ringmail Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126425)),	-- Warmongering Gladiator's Ringmail Armor (H)
									moh(2, i(126426)),	-- Warmongering Gladiator's Ringmail Gauntlets (H)
									moh(3, i(126427)),	-- Warmongering Gladiator's Ringmail Helm (H)
									moh(3, i(126428)),	-- Warmongering Gladiator's Ringmail Kilt (H)
									moh(2, i(126429)),	-- Warmongering Gladiator's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138512, {	-- Ensemble: Warmongering Gladiator's Felweave Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126470)),	-- Warmongering Gladiator's Felweave Amice (H)
									moh(2, i(126467)),	-- Warmongering Gladiator's Felweave Cowl (H)
									moh(2, i(126466)),	-- Warmongering Gladiator's Felweave Handguards (H)
									moh(3, i(126469)),	-- Warmongering Gladiator's Felweave Raiment (H)
									moh(3, i(126468)),	-- Warmongering Gladiator's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138492, {	-- Ensemble: Warmongering Gladiator's Plate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126471)),	-- Warmongering Gladiator's Plate Chestpiece (H)
									moh(2, i(126472)),	-- Warmongering Gladiator's Plate Gauntlets (H)
									moh(3, i(126407)),	-- Warmongering Gladiator's Plate Helmet (H)
									moh(3, i(126474)),	-- Warmongering Gladiator's Plate Legguards (H)
									moh(2, i(126475)),	-- Warmongering Gladiator's Plate Shoulders (H)
								}),
								n(HEAD, {
									moh(3, i(126300)),	-- Warmongering Gladiator's Cowl of Cruelty (H)
									moh(3, i(126300)),	-- Warmongering Gladiator's Cowl of Cruelty (H)
									moh(3, i(126295)),	-- Warmongering Gladiator's Hood of Prowess (H)
									moh(3, i(126359)),	-- Warmongering Gladiator's Headcover (H)
									moh(3, i(126354)),	-- Warmongering Gladiator's Helm (H)
									moh(3, i(126383)),	-- Warmongering Gladiator's Coif (H)
									moh(3, i(126378)),	-- Warmongering Gladiator's Helm (H)
									moh(3, i(126473)),	-- Warmongering Gladiator's Plate Helmet (H)
									moh(3, i(126412)),	-- Warmongering Gladiator's Plate Visor (H)
								}),
								n(SHOULDER, {
									moh(2, i(126298)),	-- Warmongering Gladiator's Amice of Prowess (H)
									moh(2, i(126303)),	-- Warmongering Gladiator's Mantle of Cruelty (H)
									moh(2, i(126361)),	-- Warmongering Gladiator's Pauldrons (H)
									moh(2, i(126356)),	-- Warmongering Gladiator's Spaulders (H)
									moh(2, i(126385)),	-- Warmongering Gladiator's Pauldrons (H)
									moh(2, i(126380)),	-- Warmongering Gladiator's Spaulders (H)
									moh(2, i(126414)),	-- Warmongering Gladiator's Plate Pauldrons (H)
									moh(2, i(126409)),	-- Warmongering Gladiator's Shoulderplates (H)
								}),
								n(BACK, {
									moh(1, i(126278)),	-- Warmongering Gladiator's Cape of Cruelty (H)
									moh(1, i(126279)),	-- Warmongering Gladiator's Cape of Prowess (H)
									moh(1, i(126437)),	-- Warmongering Gladiator's Cloak of Cruelty (H)
									moh(1, i(126445)),	-- Warmongering Gladiator's Cloak of Endurance (H)
									moh(1, i(126438)),	-- Warmongering Gladiator's Cloak of Prowess (H)
									moh(1, i(126329)),	-- Warmongering Gladiator's Drape of Contemplation (H)
									moh(1, i(126326)),	-- Warmongering Gladiator's Drape of Cruelty (H)
									moh(1, i(126328)),	-- Warmongering Gladiator's Drape of Meditation (H)
									moh(1, i(126327)),	-- Warmongering Gladiator's Drape of Prowess (H)
								}),
								n(CHEST, {
									moh(3, i(126302)),	-- Warmongering Gladiator's Raiment of Cruelty (H)
									moh(3, i(126297)),	-- Warmongering Gladiator's Robes of Prowess (H)
									moh(3, i(126357)),	-- Warmongering Gladiator's Chestguard (H)
									moh(3, i(126352)),	-- Warmongering Gladiator's Tunic (H)
									moh(3, i(126376)),	-- Warmongering Gladiator's Armor (H)
									moh(3, i(126381)),	-- Warmongering Gladiator's Chestguard (H)
									moh(3, i(126405)),	-- Warmongering Gladiator's Plate Breastplate (H)
									moh(3, i(126410)),	-- Warmongering Gladiator's Plate Chestguard (H)
								}),
								n(WRIST, {
									moh(1, i(126292)),	-- Warmongering Gladiator's Cuffs of Cruelty (H)
									moh(1, i(126291)),	-- Warmongering Gladiator's Cuffs of Prowess (H)
									moh(1, i(126293)),	-- Warmongering Gladiator's Cuffs of Victory (H)
									moh(1, i(126349)),	-- Warmongering Gladiator's Bindings of Cruelty (H)
									moh(1, i(126350)),	-- Warmongering Gladiator's Bindings of Prowess (H)
									moh(1, i(126351)),	-- Warmongering Gladiator's Bindings of Victory (H)
									moh(1, i(139030)),	-- Warmongering Gladiator's Armbands of Alacrity (H)
									moh(1, i(126374)),	-- Warmongering Gladiator's Armbands of Cruelty (H)
									moh(1, i(126373)),	-- Warmongering Gladiator's Armbands of Prowess (H)
									moh(1, i(126375)),	-- Warmongering Gladiator's Armbands of Victory (H)
									moh(1, i(126402)),	-- Warmongering Gladiator's Armplates of Cruelty (H)
									moh(1, i(126403)),	-- Warmongering Gladiator's Armplates of Prowess (H)
									moh(1, i(126404)),	-- Warmongering Gladiator's Armplates of Victory (H)
								}),
								n(HANDS, {
									moh(2, i(126294)),	-- Warmongering Gladiator's Gloves of Prowess (H)
									moh(2, i(126299)),	-- Warmongering Gladiator's Handguards of Cruelty (H)
									moh(2, i(126353)),	-- Warmongering Gladiator's Gloves (H)
									moh(2, i(126358)),	-- Warmongering Gladiator's Grips (H)
									moh(2, i(126377)),	-- Warmongering Gladiator's Gauntlets (H)
									moh(2, i(126382)),	-- Warmongering Gladiator's Gloves (H)
									moh(2, i(126406)),	-- Warmongering Gladiator's Plate Gloves (H)
									moh(2, i(126411)),	-- Warmongering Gladiator's Plate Grips (H)
								}),
								n(WAIST, {
									moh(1, i(126285)),	-- Warmongering Gladiator's Cord of Cruelty (H)
									moh(1, i(126286)),	-- Warmongering Gladiator's Cord of Prowess (H)
									moh(1, i(126287)),	-- Warmongering Gladiator's Cord of Victory (H)
									moh(1, i(126344)),	-- Warmongering Gladiator's Belt of Cruelty (H)
									moh(1, i(126343)),	-- Warmongering Gladiator's Belt of Prowess (H)
									moh(1, i(126345)),	-- Warmongering Gladiator's Belt of Victory (H)
									moh(1, i(126367)),	-- Warmongering Gladiator's Waistguard of Cruelty (H)
									moh(1, i(126368)),	-- Warmongering Gladiator's Waistguard of Prowess (H)
									moh(1, i(126369)),	-- Warmongering Gladiator's Waistguard of Victory (H)
									moh(1, i(126396)),	-- Warmongering Gladiator's Girdle of Cruelty (H)
									moh(1, i(126397)),	-- Warmongering Gladiator's Girdle of Prowess (H)
									moh(1, i(126398)),	-- Warmongering Gladiator's Girdle of Victory (H)
								}),
								n(LEGS, {
									moh(3, i(126296)),	-- Warmongering Gladiator's Leggings of Prowess (H)
									moh(3, i(126301)),	-- Warmongering Gladiator's Trousers of Cruelty (H)
									moh(3, i(126360)),	-- Warmongering Gladiator's Leggings (H)
									moh(3, i(126355)),	-- Warmongering Gladiator's Legguards (H)
									moh(3, i(126379)),	-- Warmongering Gladiator's Leggings (H)
									moh(3, i(126384)),	-- Warmongering Gladiator's Leggings (H)
									moh(3, i(126408)),	-- Warmongering Gladiator's Legplates (H)
									moh(3, i(126413)),	-- Warmongering Gladiator's Plate Leggings (H)
								}),
								n(FEET, {
									moh(2, i(126288)),	-- Warmongering Gladiator's Treads of Cruelty (H)
									moh(2, i(126289)),	-- Warmongering Gladiator's Treads of Prowess (H)
									moh(2, i(126290)),	-- Warmongering Gladiator's Treads of Victory (H)
									moh(2, i(126346)),	-- Warmongering Gladiator's Boots of Cruelty (H)
									moh(2, i(126347)),	-- Warmongering Gladiator's Boots of Prowess (H)
									moh(2, i(126348)),	-- Warmongering Gladiator's Boots of Victory (H)
									moh(2, i(126370)),	-- Warmongering Gladiator's Footguards of Cruelty (H)
									moh(2, i(126371)),	-- Warmongering Gladiator's Footguards of Prowess (H)
									moh(2, i(126372)),	-- Warmongering Gladiator's Footguards of Victory (H)
									moh(2, i(126399)),	-- Warmongering Gladiator's Warboots of Cruelty (H)
									moh(2, i(126400)),	-- Warmongering Gladiator's Warboots of Prowess (H)
									moh(2, i(126401)),	-- Warmongering Gladiator's Warboots of Victory (H)
								}),
								moh(100, i(116775, {	-- Breezestrider Stallion (MOUNT!)
									["cost"] = { { "g", 50000000 } },	-- 5,000g
								})),
								elitepvp(moh(10, i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
									["timeline"] = { ADDED_6_0_2 },
								}))),
							},
						}),
						n(87551, {	-- Maru'sa <Inscription Recipes>
							["coord"] = { 75.3, 47.6, WARSPEAR },
							["groups"] = {
								i(111923, {	-- Secret of Draenor Inscription **Teaches laughing tarot, ocean tarot, savage tarot, war paints, card of omens, research warbinders ink, secrets of draenor inscription, Warbinder's ink
									recipe(169081),	-- War Paints
									recipe(167950),	-- Research: Warbinder's Ink
									recipe(175390),	-- Laughing Tarot
									recipe(175389),	-- Ocean Tarot
									recipe(175392),	-- Savage Tarot
									recipe(166669),	-- Card of Omens
									recipe(178497),	-- Warbinder's Ink
									i(120136),		-- Recipe: Secrets of Draenor Inscription
								}),
								i(118605, {	-- Technique: Crystalfire Spellstaff (RECIPE!)
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(118606, {	-- Technique: Darkmoon Card of Draenor (RECIPE!)
									["cost"] = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
								}),
								i(120265, {	-- Technique: Ensorcelled Tarot (RECIPE!)
									["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
									["cost"] = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
									["collectible"] = false,
								}),
								i(118607, {	-- Technique: Etched-Blade Warstaff (RECIPE!)
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(257025, {	-- Technique: Frostwall Elevated Brazier (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(202236, {	-- Technique: Impressive Weapon Crystal (RECIPE!)
									["timeline"] = { ADDED_10_0_5 },
									["cost"] = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
								}),
								i(257028, {	-- Technique: Orcish Banded Barrel (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(262809, {	-- Technique: Orcish Fence (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(262810, {	-- Technique: Orcish Fencepost (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(202237, {	-- Technique: Remarkable Weapon Crystal (RECIPE!)
									["timeline"] = { ADDED_10_0_5 },
									["cost"] = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
								}),
								i(118613, {	-- Technique: Shadowtome (RECIPE!)
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(118614, {	-- Technique: Volatile Crystal (RECIPE!)
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(118615, {	-- Technique: Warmaster's Firestick (RECIPE!)
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(118610, {	-- Technique: Weapon Crystal (RECIPE!)
									["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
									["timeline"] = { ADDED_6_0_2, REMOVED_10_0_5 },
									["cost"] = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
									["collectible"] = false,
								}),
								i(257027, {	-- Technique: Wooden Shipping Crate (RECIPE!)
									["timeline"] = { ADDED_11_2_7 },
									["cost"] = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
								}),
								i(118608, { ["timeline"] = { CREATED_6_0_2 }}),	-- Technique: Greater Weapon Crystal (RECIPE!)
								i(120266, { ["timeline"] = { CREATED_6_0_2 }}),	-- Technique: Greater Ensorcelled Tarot (RECIPE!)
								i(122548, { ["timeline"] = { CREATED_6_1_0 }}),	-- Technique: Powerful Ensorcelled Tarot (RECIPE!)
								i(122553, { ["timeline"] = { CREATED_6_1_0 }}),	-- Technique: Powerful Weapon Crystal (RECIPE!)
							},
						}),
						n(88493, {	-- Mimi Wizzlebub <Steamwheedle Quartermaster>
							["coord"] = { 54.2, 60.7, WARSPEAR },
							["sym"] = {{"sub","common_vendor",87394}},	-- Kwilax Fuseshiv <Reputation Vendor>
						}),
						n(86037, {	-- Ravenspeaker Skeega <Arakkoa Outcasts Quartermaster>
							["coord"] = { 53.4, 59.8, WARSPEAR },
							["groups"] = bubbleDownClassicRep(FACTION_ARAKKOA_OUTCASTS, {
								{		-- Neutral
								}, {	-- Friendly
									i(118666, {	-- Arakkoa Elixir
										["cost"] = { { "c", APEXIS_CRYSTAL, 1 } },
									}),
								}, {	-- Honored
									i(118682, {	-- Saberon Protector
										["cost"] = 5000000,	-- 500g
									}),
								}, {	-- Revered
									i(119143, {	-- Son of Sethe (PET!)
										["cost"] = {
											{ "c", APEXIS_CRYSTAL, 2000 },
											{ "g", 10000000 },	-- 1,000g
										},
									}),
								}, {	-- Exalted
									i(119136),	-- Arakkoa Outcasts Tabard
									i(116772, {	-- Shadowmane Charger (MOUNT!)
										["cost"] = {
											{ "c", APEXIS_CRYSTAL, 5000 },
											{ "g", 50000000 },	-- 5,000g
										},
									}),
								},
							}),
						}),
						n(88253, {	-- Srikka <Archaeology Fragments>
							["coord"] = { 74.4, 31.6, WARSPEAR },
							["groups"] = {
								i(122606, {	-- Explorer's Notebook
									["cost"] = { { "i", 87399, 5 } },	-- 5x  Restored Artifact
								}),
								i(117389, {	-- Draenor Archaeologist's Lodestone
									["cost"] = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
								}),
								i(117390, {	-- Draenor Archaeologist's Map
									["cost"] = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
								}),
								i(118727, {	-- Frostfire Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
								i(118729, {	-- Gorgrond Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
								i(118732, {	-- Nagrand Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
								i(118731, {	-- Spires of Arak Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
								i(118730, {	-- Talador Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
							},
						}),
						n(87774, {	-- Stone Guard Brokefist <Primal Combatant>
							["coord"] = { 48.3, 57.5, WARSPEAR },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138626, {	-- Arsenal: Primal Combatant's Weapons (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(119866)),	-- Primal Combatant's Barrier (H)
									moh(5, i(115067)),	-- Primal Combatant's Baton of Light (H)
									moh(5, i(115069)),	-- Primal Combatant's Battle Staff (H)
									moh(5, i(115134)),	-- Primal Combatant's Bonecracker (H)
									moh(5, i(115137)),	-- Primal Combatant's Bonegrinder (H)
									moh(5, i(115024)),	-- Primal Combatant's Cleaver (H)
									moh(5, i(115136)),	-- Primal Combatant's Decapitator (H)
									moh(2, i(119858)),	-- Primal Combatant's Endgame (H)
									moh(5, i(115070)),	-- Primal Combatant's Energy Staff (H)
									moh(5, i(115065)),	-- Primal Combatant's Gavel (H)
									moh(5, i(115138)),	-- Primal Combatant's Greatsword (H)
									moh(5, i(115132)),	-- Primal Combatant's Hacker (H)
									moh(5, i(115029)),	-- Primal Combatant's Longbow (H)
									moh(5, i(115032)),	-- Primal Combatant's Pike (H)
									moh(5, i(115027)),	-- Primal Combatant's Pummeler (H)
									moh(5, i(115028)),	-- Primal Combatant's Quickblade (H)
									moh(2, i(119865)),	-- Primal Combatant's Redoubt (H)
									moh(5, i(115133)),	-- Primal Combatant's Render (H)
									moh(2, i(119859)),	-- Primal Combatant's Reprieve (H)
									moh(5, i(115031)),	-- Primal Combatant's Rifle (H)
									moh(5, i(115026)),	-- Primal Combatant's Ripper (H)
									moh(5, i(115025)),	-- Primal Combatant's Shanker (H)
									moh(2, i(119925)),	-- Primal Combatant's Shield Wall (H)
									moh(5, i(115135)),	-- Primal Combatant's Slicer (H)
									moh(5, i(115064)),	-- Primal Combatant's Spellblade (H)
									moh(5, i(115033)),	-- Primal Combatant's Staff (H)
									moh(5, i(115068)),	-- Primal Combatant's Touch of Defeat (H)
								}),
								cl(DEATHKNIGHT, {
									moh(12, i(138614)),	-- Ensemble: Primal Combatant's Dreadplate Armor (H)
									moh(3, i(119839)),	-- Primal Combatant's Dreadplate Chestpiece (H)
									moh(2, i(119840)),	-- Primal Combatant's Dreadplate Gauntlets (H)
									moh(3, i(119841)),	-- Primal Combatant's Dreadplate Helm (H)
									moh(3, i(119842)),	-- Primal Combatant's Dreadplate Legguards (H)
									moh(2, i(119843)),	-- Primal Combatant's Dreadplate Shoulders (H)
								}),
								cl(DRUID, {
									moh(12, i(138618)),	-- Ensemble: Primal Combatant's Dragonhide Armor (H)
									moh(2, i(119844)),	-- Primal Combatant's Dragonhide Gloves (H)
									moh(3, i(119845)),	-- Primal Combatant's Dragonhide Helm (H)
									moh(3, i(119846)),	-- Primal Combatant's Dragonhide Legguards (H)
									moh(3, i(119847)),	-- Primal Combatant's Dragonhide Robes (H)
									moh(2, i(119848)),	-- Primal Combatant's Dragonhide Spaulders (H)
								}),
								cl(HUNTER, {
									moh(12, i(138580)),	-- Ensemble: Primal Combatant's Chain Armor (H)
									moh(3, i(119849)),	-- Primal Combatant's Chain Armor (H)
									moh(2, i(119850)),	-- Primal Combatant's Chain Gauntlets (H)
									moh(3, i(119851)),	-- Primal Combatant's Chain Helm (H)
									moh(3, i(119852)),	-- Primal Combatant's Chain Leggings (H)
									moh(2, i(119853)),	-- Primal Combatant's Chain Spaulders (H)
								}),
								cl(MAGE, {
									moh(12, i(138582)),	-- Ensemble: Primal Combatant's Silk Armor (H)
									moh(2, i(119877)),	-- Primal Combatant's Silk Amice (H)
									moh(3, i(119874)),	-- Primal Combatant's Silk Cowl (H)
									moh(2, i(119873)),	-- Primal Combatant's Silk Handguards (H)
									moh(3, i(119876)),	-- Primal Combatant's Silk Robe (H)
									moh(3, i(119875)),	-- Primal Combatant's Silk Trousers (H)
								}),
								cl(MONK, {
									moh(12, i(138620)),	-- Ensemble: Primal Combatant's Ironskin Armor (H)
									moh(2, i(119884)),	-- Primal Combatant's Ironskin Gloves (H)
									moh(3, i(119885)),	-- Primal Combatant's Ironskin Helm (H)
									moh(3, i(119886)),	-- Primal Combatant's Ironskin Legguards (H)
									moh(2, i(119887)),	-- Primal Combatant's Ironskin Spaulders (H)
									moh(3, i(119888)),	-- Primal Combatant's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									moh(12, i(138616)),	-- Ensemble: Primal Combatant's Scaled Armor (H)
									moh(3, i(119889)),	-- Primal Combatant's Scaled Chestpiece (H)
									moh(2, i(119890)),	-- Primal Combatant's Scaled Gauntlets (H)
									moh(3, i(119891)),	-- Primal Combatant's Scaled Helm (H)
									moh(3, i(119892)),	-- Primal Combatant's Scaled Legguards (H)
									moh(2, i(119893)),	-- Primal Combatant's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									moh(12, i(138584)),	-- Ensemble: Primal Combatant's Satin Armor (H)
									moh(2, i(119900)),	-- Primal Combatant's Satin Gloves (H)
									moh(3, i(119901)),	-- Primal Combatant's Satin Hood (H)
									moh(3, i(119902)),	-- Primal Combatant's Satin Leggings (H)
									moh(2, i(119904)),	-- Primal Combatant's Satin Mantle (H)
									moh(3, i(119903)),	-- Primal Combatant's Satin Robe (H)
								}),
								cl(ROGUE, {
									moh(12, i(138622)),	-- Ensemble: Primal Combatant's Leather Armor (H)
									moh(2, i(119906)),	-- Primal Combatant's Leather Gloves (H)
									moh(3, i(119907)),	-- Primal Combatant's Leather Helm (H)
									moh(3, i(119908)),	-- Primal Combatant's Leather Legguards (H)
									moh(2, i(119909)),	-- Primal Combatant's Leather Spaulders (H)
									moh(3, i(119905)),	-- Primal Combatant's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									moh(12, i(138578)),	-- Ensemble: Primal Combatant's Ringmail Armor (H)
									moh(3, i(119910)),	-- Primal Combatant's Ringmail Armor (H)
									moh(2, i(119911)),	-- Primal Combatant's Ringmail Gauntlets (H)
									moh(3, i(119912)),	-- Primal Combatant's Ringmail Helm (H)
									moh(3, i(119913)),	-- Primal Combatant's Ringmail Leggings (H)
									moh(2, i(119915)),	-- Primal Combatant's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									moh(12, i(138586)),	-- Ensemble: Primal Combatant's Felweave Armor (H)
									moh(2, i(119942)),	-- Primal Combatant's Felweave Amice (H)
									moh(3, i(119939)),	-- Primal Combatant's Felweave Cowl (H)
									moh(2, i(119938)),	-- Primal Combatant's Felweave Handguards (H)
									moh(3, i(119941)),	-- Primal Combatant's Felweave Raiment (H)
									moh(3, i(119940)),	-- Primal Combatant's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									moh(12, i(138612)),	-- Ensemble: Primal Combatant's Plate Armor (H)
									moh(3, i(119943)),	-- Primal Combatant's Plate Chestpiece (H)
									moh(2, i(119944)),	-- Primal Combatant's Plate Gauntlets (H)
									moh(3, i(119945)),	-- Primal Combatant's Plate Helm (H)
									moh(3, i(119946)),	-- Primal Combatant's Plate Legguards (H)
									moh(2, i(119947)),	-- Primal Combatant's Plate Shoulders (H)
								}),
								n(HEAD, {
									moh(3, i(119829)),	-- Primal Combatant's Hood of Prowess (H)
									moh(3, i(119952)),	-- Primal Combatant's Helm (H)
									moh(3, i(119957)),	-- Primal Combatant's Helm (H)
									moh(3, i(119920)),	-- Primal Combatant's Plate Helmet (H)
								}),
								n(SHOULDER, {
									moh(2, i(119832)),	-- Primal Combatant's Amice of Prowess (H)
									moh(2, i(119954)),	-- Primal Combatant's Spaulders (H)
									moh(2, i(119959)),	-- Primal Combatant's Spaulders (H)
									moh(2, i(119922)),	-- Primal Combatant's Shoulderplates (H)
								}),
								n(BACK, {
									moh(1, i(119960)),	-- Primal Combatant's Cape of Cruelty (H)
									moh(1, i(119961)),	-- Primal Combatant's Cape of Prowess (H)
									moh(1, i(119966)),	-- Primal Combatant's Cloak of Cruelty (H)
									moh(1, i(119967)),	-- Primal Combatant's Cloak of Prowess (H)
									moh(1, i(119965)),	-- Primal Combatant's Drape of Contemplation (H)
									moh(1, i(119962)),	-- Primal Combatant's Drape of Cruelty (H)
									moh(1, i(119964)),	-- Primal Combatant's Drape of Meditation (H)
									moh(1, i(119963)),	-- Primal Combatant's Drape of Prowess (H)
								}),
								n(CHEST, {
									moh(3, i(119831)),	-- Primal Combatant's Robes of Prowess (H)
									moh(3, i(119950)),	-- Primal Combatant's Tunic (H)
									moh(3, i(119955)),	-- Primal Combatant's Armor (H)
									moh(3, i(119918)),	-- Primal Combatant's Plate Breastplate (H)
								}),
								n(WRIST, {
									moh(1, i(119838)),	-- Primal Combatant's Cuffs of Cruelty (H)
									moh(1, i(119837)),	-- Primal Combatant's Cuffs of Prowess (H)
									moh(1, i(119871)),	-- Primal Combatant's Bindings of Cruelty (H)
									moh(1, i(119872)),	-- Primal Combatant's Bindings of Prowess (H)
									moh(1, i(119883)),	-- Primal Combatant's Armbands of Cruelty (H)
									moh(1, i(119882)),	-- Primal Combatant's Armbands of Prowess (H)
									moh(1, i(119898)),	-- Primal Combatant's Armplates of Cruelty (H)
									moh(1, i(119899)),	-- Primal Combatant's Armplates of Prowess (H)
								}),
								n(HANDS, {
									moh(2, i(119828)),	-- Primal Combatant's Gloves of Prowess (H)
									moh(2, i(119951)),	-- Primal Combatant's Gloves (H)
									moh(2, i(119956)),	-- Primal Combatant's Gauntlets (H)
									moh(2, i(119919)),	-- Primal Combatant's Plate Gloves (H)
								}),
								n(WAIST, {
									moh(1, i(119833)),	-- Primal Combatant's Cord of Cruelty (H)
									moh(1, i(119834)),	-- Primal Combatant's Cord of Prowess (H)
									moh(1, i(119868)),	-- Primal Combatant's Belt of Cruelty (H)
									moh(1, i(119867)),	-- Primal Combatant's Belt of Prowess (H)
									moh(1, i(119878)),	-- Primal Combatant's Waistguard of Cruelty (H)
									moh(1, i(119879)),	-- Primal Combatant's Waistguard of Prowess (H)
									moh(1, i(119894)),	-- Primal Combatant's Girdle of Cruelty (H)
									moh(1, i(119895)),	-- Primal Combatant's Girdle of Prowess (H)
								}),
								n(LEGS, {
									moh(3, i(119830)),	-- Primal Combatant's Leggings of Prowess (H)
									moh(3, i(119953)),	-- Primal Combatant's Legguards (H)
									moh(3, i(119958)),	-- Primal Combatant's Leggings (H)
									moh(3, i(119921)),	-- Primal Combatant's Legplates (H)
								}),
								n(FEET, {
									moh(2, i(119835)),	-- Primal Combatant's Treads of Cruelty (H)
									moh(2, i(119836)),	-- Primal Combatant's Treads of Prowess (H)
									moh(2, i(119869)),	-- Primal Combatant's Boots of Cruelty (H)
									moh(2, i(119870)),	-- Primal Combatant's Boots of Prowess (H)
									moh(2, i(119880)),	-- Primal Combatant's Footguards of Cruelty (H)
									moh(2, i(119881)),	-- Primal Combatant's Footguards of Prowess (H)
									moh(2, i(119896)),	-- Primal Combatant's Warboots of Cruelty (H)
									moh(2, i(119897)),	-- Primal Combatant's Warboots of Prowess (H)
								}),
							},
						}),
						n(93916, {	-- Tae'loxe Soulshrivel <Warmongering Combatant>
							["coord"] = { 49.2, 57.1, WARSPEAR },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138627, {	-- Arsenal: Warmongering Combatant's Weapons (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126542)),	-- Warmongering Combatant's Barrier (H)
									moh(5, i(126522)),	-- Warmongering Combatant's Baton of Light (H)
									moh(5, i(126524)),	-- Warmongering Combatant's Battle Staff (H)
									moh(5, i(126608)),	-- Warmongering Combatant's Bonecracker (H)
									moh(5, i(126611)),	-- Warmongering Combatant's Bonegrinder (H)
									moh(5, i(127378)),	-- Warmongering Combatant's Chopper (H)
									moh(5, i(126476)),	-- Warmongering Combatant's Cleaver (H)
									moh(5, i(126610)),	-- Warmongering Combatant's Decapitator (H)
									moh(2, i(126534)),	-- Warmongering Combatant's Endgame (H)
									moh(5, i(126525)),	-- Warmongering Combatant's Energy Staff (H)
									moh(5, i(126520)),	-- Warmongering Combatant's Gavel (H)
									moh(5, i(126612)),	-- Warmongering Combatant's Greatsword (H)
									moh(5, i(126606)),	-- Warmongering Combatant's Hacker (H)
									moh(5, i(126482)),	-- Warmongering Combatant's Heavy Crossbow (H)
									moh(5, i(126481)),	-- Warmongering Combatant's Longbow (H)
									moh(5, i(126521)),	-- Warmongering Combatant's Mageblade (H)
									moh(5, i(126484)),	-- Warmongering Combatant's Pike (H)
									moh(5, i(126479)),	-- Warmongering Combatant's Pummeler (H)
									moh(5, i(126480)),	-- Warmongering Combatant's Quickblade (H)
									moh(2, i(126541)),	-- Warmongering Combatant's Redoubt (H)
									moh(5, i(126607)),	-- Warmongering Combatant's Render (H)
									moh(2, i(126535)),	-- Warmongering Combatant's Reprieve (H)
									moh(5, i(126483)),	-- Warmongering Combatant's Rifle (H)
									moh(5, i(126478)),	-- Warmongering Combatant's Ripper (H)
									moh(5, i(126477)),	-- Warmongering Combatant's Shanker (H)
									moh(2, i(126620)),	-- Warmongering Combatant's Shield Wall (H)
									moh(5, i(126609)),	-- Warmongering Combatant's Slicer (H)
									moh(5, i(126519)),	-- Warmongering Combatant's Spellblade (H)
									moh(5, i(126485)),	-- Warmongering Combatant's Staff (H)
									moh(5, i(126523)),	-- Warmongering Combatant's Touch of Defeat (H)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138590, {	-- Ensemble: Warmongering Combatant's Dreadplate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126504)),	-- Warmongering Combatant's Dreadplate Chestpiece (H)
									moh(2, i(126505)),	-- Warmongering Combatant's Dreadplate Gauntlets (H)
									moh(3, i(126506)),	-- Warmongering Combatant's Dreadplate Helm (H)
									moh(3, i(126507)),	-- Warmongering Combatant's Dreadplate Legguards (H)
									moh(2, i(126508)),	-- Warmongering Combatant's Dreadplate Shoulders (H)
								}),
								cl(DRUID, {
									moh(12, iensemble(138594, {	-- Ensemble: Warmongering Combatant's Dragonhide Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126509)),	-- Warmongering Combatant's Dragonhide Gloves (H)
									moh(3, i(126510)),	-- Warmongering Combatant's Dragonhide Helm (H)
									moh(3, i(126511)),	-- Warmongering Combatant's Dragonhide Legguards (H)
									moh(2, i(126513)),	-- Warmongering Combatant's Dragonhide Spaulders (H)
									moh(3, i(126512)),	-- Warmongering Combatant's Dragonhide Tunic (H)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138538, {	-- Ensemble: Warmongering Combatant's Chain Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126514)),	-- Warmongering Combatant's Chain Armor (H)
									moh(2, i(126515)),	-- Warmongering Combatant's Chain Gauntlets (H)
									moh(3, i(126516)),	-- Warmongering Combatant's Chain Helm (H)
									moh(3, i(126517)),	-- Warmongering Combatant's Chain Leggings (H)
									moh(2, i(126518)),	-- Warmongering Combatant's Chain Spaulders (H)
								}),
								cl(MAGE, {
									moh(12, iensemble(138540, {	-- Ensemble: Warmongering Combatant's Silk Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126558)),	-- Warmongering Combatant's Silk Amice (H)
									moh(3, i(126555)),	-- Warmongering Combatant's Silk Cowl (H)
									moh(2, i(126554)),	-- Warmongering Combatant's Silk Handguards (H)
									moh(3, i(126557)),	-- Warmongering Combatant's Silk Robe (H)
									moh(3, i(126556)),	-- Warmongering Combatant's Silk Trousers (H)
								}),
								cl(MONK, {
									moh(12, iensemble(138596, {	-- Ensemble: Warmongering Combatant's Ironskin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126570)),	-- Warmongering Combatant's Ironskin Gloves (H)
									moh(3, i(126571)),	-- Warmongering Combatant's Ironskin Helm (H)
									moh(3, i(126572)),	-- Warmongering Combatant's Ironskin Legguards (H)
									moh(2, i(126573)),	-- Warmongering Combatant's Ironskin Spaulders (H)
									moh(3, i(126574)),	-- Warmongering Combatant's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138592, {	-- Ensemble: Warmongering Combatant's Scaled Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126575)),	-- Warmongering Combatant's Scaled Chestpiece (H)
									moh(2, i(126576)),	-- Warmongering Combatant's Scaled Gauntlets (H)
									moh(3, i(126577)),	-- Warmongering Combatant's Scaled Helm (H)
									moh(3, i(126578)),	-- Warmongering Combatant's Scaled Legguards (H)
									moh(2, i(126579)),	-- Warmongering Combatant's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138542, {	-- Ensemble: Warmongering Combatant's Satin Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126591)),	-- Warmongering Combatant's Satin Gloves (H)
									moh(3, i(126592)),	-- Warmongering Combatant's Satin Hood (H)
									moh(3, i(126593)),	-- Warmongering Combatant's Satin Leggings (H)
									moh(2, i(126595)),	-- Warmongering Combatant's Satin Mantle (H)
									moh(3, i(126594)),	-- Warmongering Combatant's Satin Robe (H)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138598, {	-- Ensemble: Warmongering Combatant's Leather Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126597)),	-- Warmongering Combatant's Leather Gloves (H)
									moh(3, i(126598)),	-- Warmongering Combatant's Leather Helm (H)
									moh(3, i(126599)),	-- Warmongering Combatant's Leather Legguards (H)
									moh(2, i(126600)),	-- Warmongering Combatant's Leather Spaulders (H)
									moh(3, i(126596)),	-- Warmongering Combatant's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138536, {	-- Ensemble: Warmongering Combatant's Ringmail Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126601)),	-- Warmongering Combatant's Ringmail Armor (H)
									moh(2, i(126602)),	-- Warmongering Combatant's Ringmail Gauntlets (H)
									moh(3, i(126603)),	-- Warmongering Combatant's Ringmail Helm (H)
									moh(3, i(126604)),	-- Warmongering Combatant's Ringmail Leggings (H)
									moh(2, i(126605)),	-- Warmongering Combatant's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138544, {	-- Ensemble: Warmongering Combatant's Felweave Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126648)),	-- Warmongering Combatant's Felweave Amice (H)
									moh(3, i(126645)),	-- Warmongering Combatant's Felweave Cowl (H)
									moh(2, i(126644)),	-- Warmongering Combatant's Felweave Handguards (H)
									moh(3, i(126647)),	-- Warmongering Combatant's Felweave Raiment (H)
									moh(3, i(126646)),	-- Warmongering Combatant's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138588, {	-- Ensemble: Warmongering Combatant's Plate Armor (H)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126649)),	-- Warmongering Combatant's Plate Chestpiece (H)
									moh(2, i(126650)),	-- Warmongering Combatant's Plate Gauntlets (H)
									moh(3, i(126651)),	-- Warmongering Combatant's Plate Helm (H)
									moh(3, i(126652)),	-- Warmongering Combatant's Plate Legguards (H)
									moh(2, i(126653)),	-- Warmongering Combatant's Plate Shoulders (H)
								}),
								n(BACK, {
									moh(1, i(126486)),	-- Warmongering Combatant's Cape of Cruelty (H)
									moh(1, i(126487)),	-- Warmongering Combatant's Cape of Prowess (H)
									moh(1, i(126613)),	-- Warmongering Combatant's Cloak of Cruelty (H)
									moh(1, i(126640)),	-- Warmongering Combatant's Cloak of Endurance (H)
									moh(1, i(126614)),	-- Warmongering Combatant's Cloak of Prowess (H)
									moh(1, i(126529)),	-- Warmongering Combatant's Drape of Contemplation (H)
									moh(1, i(126526)),	-- Warmongering Combatant's Drape of Cruelty (H)
									moh(1, i(126528)),	-- Warmongering Combatant's Drape of Meditation (H)
									moh(1, i(126527)),	-- Warmongering Combatant's Drape of Prowess (H)
								}),
								n(WRIST, {
									moh(1, i(126498)),	-- Warmongering Combatant's Cuffs of Cruelty (H)
									moh(1, i(126497)),	-- Warmongering Combatant's Cuffs of Prowess (H)
									moh(1, i(126547)),	-- Warmongering Combatant's Bindings of Cruelty (H)
									moh(1, i(126548)),	-- Warmongering Combatant's Bindings of Prowess (H)
									moh(1, i(126564)),	-- Warmongering Combatant's Armbands of Cruelty (H)
									moh(1, i(126563)),	-- Warmongering Combatant's Armbands of Prowess (H)
									moh(1, i(126584)),	-- Warmongering Combatant's Armplates of Cruelty (H)
									moh(1, i(126585)),	-- Warmongering Combatant's Armplates of Prowess (H)
								}),
								n(WAIST, {
									moh(1, i(126493)),	-- Warmongering Combatant's Cord of Cruelty (H)
									moh(1, i(126494)),	-- Warmongering Combatant's Cord of Prowess (H)
									moh(1, i(126544)),	-- Warmongering Combatant's Belt of Cruelty (H)
									moh(1, i(126543)),	-- Warmongering Combatant's Belt of Prowess (H)
									moh(1, i(126559)),	-- Warmongering Combatant's Waistguard of Cruelty (H)
									moh(1, i(126560)),	-- Warmongering Combatant's Waistguard of Prowess (H)
									moh(1, i(126580)),	-- Warmongering Combatant's Girdle of Cruelty (H)
									moh(1, i(126581)),	-- Warmongering Combatant's Girdle of Prowess (H)
								}),
								n(FEET, {
									moh(2, i(126495)),	-- Warmongering Combatant's Treads of Cruelty (H)
									moh(2, i(126496)),	-- Warmongering Combatant's Treads of Prowess (H)
									moh(2, i(126545)),	-- Warmongering Combatant's Boots of Cruelty (H)
									moh(2, i(126546)),	-- Warmongering Combatant's Boots of Prowess (H)
									moh(2, i(126561)),	-- Warmongering Combatant's Footguards of Cruelty (H)
									moh(2, i(126562)),	-- Warmongering Combatant's Footguards of Prowess (H)
									moh(2, i(126582)),	-- Warmongering Combatant's Warboots of Cruelty (H)
									moh(2, i(126583)),	-- Warmongering Combatant's Warboots of Prowess (H)
								}),
							},
						}),
						n(85840, {	-- Torgg Flexington <Blueprints Trader>
							["coord"] = { 42.6, 36.4, WARSPEAR },
							["groups"] = {
								i(111929, {	-- Alchemy Lab, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111968, {	-- Barn, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111970, {	-- Barracks, Level 2
									["cost"] = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
								}),
								i(111972, {	-- Enchanter's Study, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(109256, {	-- Engineering Works, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(116431, {	-- Frostwall Tavern, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111974, {	-- Gem Boutique, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111980, {	-- Gladiator's Sanctum, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(116200, {	-- Goblin Workshop, Level 2
									["cost"] = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
								}),
								i(109254, {	-- Lumber Mill, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111976, {	-- Salvage Yard, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111978, {	-- Scribe's Quarters, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(116196, {	-- Spirit Lodge, Level 2
									["cost"] = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
								}),
								i(112002, {	-- Stables, Level 2
									["cost"] = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
								}),
								i(111982, {	-- Storehouse, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111992, {	-- Tailoring Emporium, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111990, {	-- The Forge, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111988, {	-- The Tannery, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(111986, {	-- Trading Post, Level 2
									["cost"] = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
								}),
								i(116185, {	-- War Mill, Level 2
									["cost"] = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
								}),
							},
						}),
					},
				}),
			},
		}),
	}),
});
