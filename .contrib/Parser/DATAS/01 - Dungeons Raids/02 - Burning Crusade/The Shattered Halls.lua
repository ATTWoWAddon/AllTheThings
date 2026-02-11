-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(259, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Shattered Halls
		["lore"] = "For years, this gargantuan fortress was thought to be abandoned, but it's now inhabited by marauding bands of red, furious fel orcs. The presence of this new, savage breed presents something of a mystery, though what is far more disconcerting is that the numbers of these fel orcs seem to be... growing.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3714,	-- The Shattered Halls
		-- #endif
		["mapID"] = HELLFIRE_CITADEL_SHATTERED_HALLS,
		["coord"] = { 47.66, 51.98, HELLFIRE_PENINSULA },	-- The Shattered Halls, Hellfire Peninsula
		-- #if BEFORE CATA
		["cost"] = { { "i", 28395, 1 } },	-- Shattered Halls Key
		-- #endif
		["lvl"] = lvlsquish(65, 65, 20),
		["groups"] = {
			n(QUESTS, {
				q(29655, {	-- A Very Special Cloth
					["qg"] = 54931,	-- Stone Guard Stok'ton
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- O'mrogg's Warcloth
							["provider"] = { "i", 72597 },	-- O'mrogg's Warcloth
						}),
					},
				}),
				q(29689, {	-- Advancing the Campaign [Alliance]
					["qg"] = 16819,	-- Force Commander Danath Trollbane
					["coord"] = { 56.6, 66.6, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
				}),
				q(29688, {	-- Advancing the Campaign [Horde]
					["qg"] = 16575,	-- Shadow Hunter Ty'jin
					["coord"] = { 55.0, 36.3, HELLFIRE_PENINSULA },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
				}),
				q(10763, {	-- Dumphry's Request
					["sourceQuest"] = 10762,	-- Grand Master Dumphry
					["qg"] = 21209,	-- Dumphry <Master Blacksmithing Trainer>
					["coord"] = { 51.1, 60.3, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- Fel Iron Bar
							["provider"] = { "i", 23445 },	-- Fel Iron Bar
						}),
						objective(2, {	-- Arcane Dust
							["provider"] = { "i", 22445 },	-- Arcane Dust
						}),
						objective(3, {	-- Mote of Fire
							["provider"] = { "i", 22574 },	-- Mote of Fire
						}),
					},
				}),
				q(10754, {	-- Entry Into the Citadel [Alliance]
					["provider"] = { "i", 31239 },	-- Primed Key Mold
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SHADOWMOON_VALLEY },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 22037,	-- Smith Gorlunk
					["lvl"] = lvlsquish(68, 68, 10),
				}),
				q(10755, {	-- Entry Into the Citadel [Horde]
					["provider"] = { "i", 31241 },	-- Primed Key Mold
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SHADOWMOON_VALLEY },
					["races"] = HORDE_ONLY,
					["cr"] = 22037,	-- Smith Gorlunk
					["lvl"] = lvlsquish(68, 68, 10),
				}),
				q(29650, {	-- Fel Ember
					["qg"] = 54931,	-- Stone Guard Stok'ton
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- Fel Ember
							["provider"] = { "i", 23726 },	-- Fel Ember
						}),
						i(25790),	-- Expedition Scout's Epaulets
						i(25788),	-- Dauntless Handguards
						i(25791),	-- Gloves of Preservation
						i(25789),	-- Rune-Engraved Belt
						i(25792),	-- Curate's Boots
					},
				}),
				q(9494, {	-- Fel Embers
					["qg"] = 16829,	-- Magus Zabraxis <Reagents>
					["coord"] = { 53.9, 65.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(67, 67, 20),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						objective(1, {	-- Fel Ember
							["provider"] = { "i", 23726 },	-- Fel Ember
						}),
						i(25790),	-- Expedition Scout's Epaulets
						i(25788),	-- Dauntless Handguards
						i(25791),	-- Gloves of Preservation
						i(25789),	-- Rune-Engraved Belt
						i(25792),	-- Curate's Boots
					},
					-- #endif
				}),
				q(10762, {	-- Grand Master Dumphry
					["sourceQuest"] = 10754,	-- Entry Into the Citadel [Alliance]
					["qg"] = 16819,	-- Force Commander Danath Trollbane
					["coord"] = { 56.6, 66.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- Primed Key Mold
							["provider"] = { "i", 31245 },	-- Primed Key Mold
						}),
					},
				}),
				q(10756, {	-- Grand Master Rohok
					["sourceQuest"] = 10755,	-- Entry Into the Citadel [Horde]
					["qg"] = 3230,	-- Nazgrel
					["coord"] = { 55.0, 36.0, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- Primed Key Mold
							["provider"] = { "i", 31245 },	-- Primed Key Mold
						}),
					},
				}),
				q(29651, {	-- Honor the Dying
					["qg"] = 54932,	-- Caza'rez
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- 0/2 Shattered Hand Legionnaire slain
							["provider"] = { "n", 16700 },	-- Shattered Hand Legionnaire
						}),
						objective(2, {	-- 0/2 Shattered Hand Centurion slain
							["provider"] = { "n", 17465 },	-- Shattered Hand Centurion
						}),
						objective(3, {	-- 0/4 Shattered Hand Champion slain
							["provider"] = { "n", 17671 },	-- Shattered Hand Champion
						}),
					},
				}),
				q(10764, bubbleDown({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Hotter than Hell [Alliance]
					["sourceQuest"] = 10763,	-- Dumphry's Request
					["qg"] = 21209,	-- Dumphry <Master Blacksmithing Trainer>
					["coord"] = { 51.1, 60.3, HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Charred Key Mold
							["provider"] = { "i", 31251 },	-- Unfired Key Mold
							["cr"] = 18733,	-- Fel Reaver
						}),
						i(28395),	-- Shattered Halls Key
					},
				})),
				q(10758, bubbleDown({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Hotter than Hell [Horde]
					["sourceQuest"] = 10757,	-- Rohok's Request
					["qg"] = 16583,	-- Rohok
					["coord"] = { 53.1, 38.2, HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Charred Key Mold
							["provider"] = { "i", 31251 },	-- Unfired Key Mold
							["cr"] = 18733,	-- Fel Reaver
						}),
						i(28395),	-- Shattered Halls Key
					},
				})),
				q(29649, {	-- How to Save a Life
					["qg"] = 54933,	-- Advance Scout Chadwick
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- Fel Ember
							["provider"] = { "i", 23726 },	-- Fel Ember
						}),
						i(25790),	-- Expedition Scout's Epaulets
						i(25788),	-- Dauntless Handguards
						i(25791),	-- Gloves of Preservation
						i(25789),	-- Rune-Engraved Belt
						i(25792),	-- Curate's Boots
					},
				}),
				applyclassicphase(TBC_PHASE_FOUR, q(9524, {	-- Imprisoned in the Citadel [Alliance]
					["description"] = "This quest can only be completed on Heroic Difficulty.",
					["qg"] = 17288,	-- Randy Whizzlesprocket
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 70,
				})),
				applyclassicphase(TBC_PHASE_FOUR, q(9525, {	-- Imprisoned in the Citadel [Horde]
					["description"] = "This quest can only be completed on Heroic Difficulty.",
					["qg"] = 17294,	-- Drisella
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = 70,
				})),
				q(29656, {	-- O'mrogg's Warcloth
					["qg"] = 54933,	-- Advance Scout Chadwick
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- O'mrogg's Warcloth
							["provider"] = { "i", 72597 },	-- O'mrogg's Warcloth
						}),
					},
				}),
				q(29652, {	-- One Last Favor
					["qg"] = 54934,	-- Gunny
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- 0/2 Shattered Hand Legionnaire slain
							["provider"] = { "n", 16700 },	-- Shattered Hand Legionnaire
						}),
						objective(2, {	-- 0/2 Shattered Hand Centurion slain
							["provider"] = { "n", 17465 },	-- Shattered Hand Centurion
						}),
						objective(3, {	-- 0/4 Shattered Hand Champion slain
							["provider"] = { "n", 17671 },	-- Shattered Hand Champion
						}),
					},
				}),
				q(9493, {	-- Pride of the Fel Horde [Alliance]
					["qg"] = 16830,	-- Field Commander Romus
					["coord"] = { 56.8, 62.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- 0/8 Shattered Hand Legionnaire slain
							["provider"] = { "n", 16700 },	-- Shattered Hand Legionnaire
						}),
						objective(2, {	-- 0/4 Shattered Hand Centurion slain
							["provider"] = { "n", 17465 },	-- Shattered Hand Centurion
						}),
						objective(3, {	-- 0/4 Shattered Hand Champion slain
							["provider"] = { "n", 17671 },	-- Shattered Hand Champion
						}),
					},
				}),
				q(9496, {	-- Pride of the Fel Horde [Horde]
					["qg"] = 16575,	-- Shadow Hunter Ty'jin <Ears of the Warchief>
					["coord"] = { 55.0, 36.3, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- 0/8 Shattered Hand Legionnaire slain
							["provider"] = { "n", 16700 },	-- Shattered Hand Legionnaire
						}),
						objective(2, {	-- 0/4 Shattered Hand Centurion slain
							["provider"] = { "n", 17465 },	-- Shattered Hand Centurion
						}),
						objective(3, {	-- 0/4 Shattered Hand Champion slain
							["provider"] = { "n", 17671 },	-- Shattered Hand Champion
						}),
					},
				}),
				q(10757, {	-- Rohok's Request
					["sourceQuest"] = 10756,	-- Grand Master Rohok
					["qg"] = 16583,	-- Rohok
					["coord"] = { 53.1, 38.2, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(68, 68, 10),
					["groups"] = {
						objective(1, {	-- Fel Iron Bar
							["provider"] = { "i", 23445 },	-- Fel Iron Bar
						}),
						objective(2, {	-- Arcane Dust
							["provider"] = { "i", 22445 },	-- Arcane Dust
						}),
						objective(3, {	-- Mote of Fire
							["provider"] = { "i", 22574 },	-- Mote of Fire
						}),
					},
				}),
				q(10670, {	-- Tear of the Earthmother
					["sourceQuests"] = {
						10665,	-- Fresh From the Mechanar
						10666,	-- The Lexicon Demonica
					},
					["qg"] = 21465,	-- David Wayne
					["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- Tear of the Earthmother
							["provider"] = { "i", 30829 },	-- Tear of the Earthmother
						}),
					},
				}),
				q(9495, {	-- The Will of the Warchief
					["qg"] = 3230,	-- Nazgrel <Advisor to Thrall>
					["coord"] = { 55.0, 36.0, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(67, 67, 20),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						objective(1, {	-- Warchief Kargath's Fist
							["provider"] = { "i", 23723 },	-- Warchief Kargath's Fist
						}),
						i(25808),	-- Rod of Dire Shadows
						i(25809),	-- Maimfist's Choker
						i(25810),	-- Vicar's Cloak
						i(25811),	-- Conqueror's Band
					},
					-- #endif
				}),
				q(29653, {	-- The Will of the Warchief
					["qg"] = 54931,	-- Stone Guard Stok'ton
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- Warchief Kargath's Fist
							["provider"] = { "i", 23723 },	-- Warchief Kargath's Fist
						}),
						i(25808),	-- Rod of Dire Shadows
						i(25809),	-- Maimfist's Choker
						i(25810),	-- Vicar's Cloak
						i(25811),	-- Conqueror's Band
					},
				}),
				q(10884, {	-- Trial of the Naaru: Mercy
					["sourceQuest"] = 10883,	-- The Tempest Key
					["qg"] = 18481,	-- A'dal
					["coord"] = { 54.0, 44.8, SHATTRATH_CITY },
					["lvl"] = lvlsquish(70, 70, 20),
					["groups"] = {
						objective(1, {	-- Unused Axe of the Executioner
							["provider"] = { "i", 31716 },	-- Unused Axe of the Executioner
						}),
					},
				}),
				q(9492, {	-- Turning the Tide
					["qg"] = 16819,	-- Force Commander Danath Trollbane <Sons of Lothar>
					["coord"] = { 56.6, 66.7, HELLFIRE_PENINSULA },
					["timeline"] = { REMOVED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(67, 67, 20),
					-- #if BEFORE 4.3.0.14732
					["groups"] = {
						objective(1, {	-- Warchief Kargath's Fist
							["provider"] = { "i", 23723 },	-- Warchief Kargath's Fist
						}),
						i(25806),	-- Nethekurse's Rod of Torment
						i(25803),	-- Medallion of the Valiant Guardian
						i(25805),	-- Mantle of Vivification
						i(25804),	-- Naliko's Revenge
					},
					-- #endif
				}),
				q(29654, {	-- Turning the Tide
					["qg"] = 54933,	-- Advance Scout Chadwick
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(66, 66, 20),
					["groups"] = {
						objective(1, {	-- Warchief Kargath's Fist
							["provider"] = { "i", 23723 },	-- Warchief Kargath's Fist
						}),
						i(25806),	-- Nethekurse's Rod of Torment
						i(25803),	-- Medallion of the Valiant Guardian
						i(25805),	-- Mantle of Vivification
						i(25804),	-- Naliko's Revenge
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(22554, {	-- Formula: Enchant 2H Weapon - Savagery (RECIPE!)
					["cr"] = 17465,	-- Shattered Hand Centurion
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(566, {	-- Grand Warlock Nethekurse
					["creatureID"] = 16807,
					["groups"] = {
						i(27517),	-- Bands of Nethekurse
						i(27519),	-- Cloak of Malice
						i(23726, {	-- Fel Ember
							["description"] = "Use the Amulet that he drops on the brazier near his throne to gather the ember.",
							["cost"] = { { "i", 23735, 1 } },	-- Grand Warlock's Amulet
						}),
						i(23735),	-- Grand Warlock's Amulet
						i(27520),	-- Greathelm of the Unbreakable
						i(24312),	-- Pattern: Spellstrike Hood (RECIPE!)
						i(27521),	-- Telaari Hunting Girdle
						-- #if BEFORE MOP
						i(27518, {	-- Ivory Idol of the Moongoddess
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
						-- #if AFTER 7.3.5
						i(27529),	-- Figurine of the Colossus
						i(27534),	-- Hortus' Seal of Brilliance (7.3.5 - Moved from Warchief Kargath Bladefist)
						-- #endif
					},
				}),
				e(568, {	-- Warbringer O'mrogg
					["creatureID"] = 16809,
					["groups"] = {
						i(27524),	-- Firemaul of Destruction
						i(27868),	-- Runesong Dagger
						i(27526),	-- Skyfire Hawk-Bow
						-- #if AFTER 7.3.5
						i(29263),	-- Forestheart Bracers (7.3.5 - Moved from Warchief Kargath Bladefist)
						i(27522),	-- World's End Bracers (7.3.5 - Moved from Keli'dan the Breaker in The Blood Furnace!)
						i(29254),	-- Boots of the Righteous Path (7.3.5 - Moved from Warchief Kargath Bladefist)
						-- #endif
						i(27525),	-- Jeweled Boots of Sanctification
						-- #if BEFORE 7.3.5
						i(27802),	-- Tidefury Shoulderguards  (7.3.5 - Moved to Warchief Kargath Bladefist)
						-- #endif
						i(72597, {	-- O'mrogg's Warcloth
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(30829),	-- Tear of the Earthmother
					},
				}),
				e(569, {	-- Warchief Kargath Bladefist
					["creatureID"] = 16808,
					["groups"] = {
						ach(657),	-- The Shattered Halls
						i(27533),	-- Demonblood Eviscerator
						i(27538),	-- Lightsworn Hammer
						i(27540),	-- Nexus Torch
						i(27528),	-- Gauntlets of Desolation
						i(27535),	-- Gauntlets of the Righteous
						i(27537),	-- Gloves of Oblivion
						i(27531),	-- Wastewalker Gloves
						i(27527),	-- Greaves of the Shatterer
						i(23723),	-- Warchief Kargath's Fist
						-- #if BEFORE 7.3.5
						i(27474),	-- Beast Lord Handguards  (7.3.5 - Moved to Blood Guard Porung)
						i(27529),	-- Figurine of the Colossus
						i(27536),	-- Hallowed Handwraps  (7.3.5 - Moved to Blood Guard Porung)
						i(27534),	-- Hortus' Seal of Brilliance (7.3.5 - Moved to Grand Warlock Nethekurse)
						-- #endif
						-- #if AFTER 7.3.5
						i(29255),	-- Bands of Rarefied Magic
						i(29348),	-- The Bladefist
						i(27802),	-- Tidefury Shoulderguards  (7.3.5 - Moved from Warbringer O'mrogg)
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30622, 1 },	-- Flamewrought Key [A]
					{ "i", 30637, 1 },	-- Flamewrought Key [H]
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							16807,	-- Grand Warlock Nethekurse
							20923,	-- Blood Guard Porung
							16809,	-- Warbringer O'mrogg
							16808,	-- Warchief Kargath Bladefist
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30547),	-- Luminous Fire Opal
							i(30548),	-- Polished Chrysoprase
							i(30546),	-- Sovereign Tanzanite
						},
					}),
					e(566, {	-- Grand Warlock Nethekurse
						["creatureID"] = 16807,
						["groups"] = {
							i(27517),	-- Bands of Nethekurse
							i(27519),	-- Cloak of Malice
							i(23726, {	-- Fel Ember
								["description"] = "Use the Amulet that he drops on the brazier near his throne to gather the ember.",
								["cost"] = { { "i", 23735, 1 } },	-- Grand Warlock's Amulet
							}),
							i(23735),	-- Grand Warlock's Amulet
							i(27520),	-- Greathelm of the Unbreakable
							i(24312),	-- Pattern: Spellstrike Hood (RECIPE!)
							i(27521),	-- Telaari Hunting Girdle
							i(25462, {	-- Tome of Dusk
								["timeline"] = { REMOVED_7_1_0 },
							}),
							-- #if BEFORE MOP
							i(27518, {	-- Ivory Idol of the Moongoddess
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
							-- #if AFTER 7.3.5
							i(27529),	-- Figurine of the Colossus
							i(27534),	-- Hortus' Seal of Brilliance (7.3.5 - Moved from Warchief Kargath Bladefist)
							-- #endif
						},
					}),
					e(728, {	-- Blood Guard Porung
						["creatureID"] = 20923,
						["groups"] = {
							i(30710),	-- Blood Guard's Necklace of Ferocity
							i(30705),	-- Spaulders of Slaughter
							-- #if AFTER 7.3.5
							i(27474),	-- Beast Lord Handguards  (7.3.5 - Moved from Warchief Kargath Bladefist)
							i(27536),	-- Hallowed Handwraps  (7.3.5 - Moved from Warchief Kargath Bladefist)
							-- #endif
							i(30708),	-- Belt of Flowing Thought
							i(30709),	-- Pantaloons of Flaming Wrath
							i(30707),	-- Nimble-Foot Treads
						},
					}),
					e(568, {	-- Warbringer O'mrogg
						["creatureID"] = 16809,
						["groups"] = {
							i(27524),	-- Firemaul of Destruction
							i(27868),	-- Runesong Dagger
							i(27526),	-- Skyfire Hawk-Bow
							-- #if AFTER 7.3.5
							i(29263),	-- Forestheart Bracers (7.3.5 - Moved from Warchief Kargath Bladefist)
							i(27522),	-- World's End Bracers (7.3.5 - Moved from Keli'dan the Breaker in The Blood Furnace!)
							i(29254),	-- Boots of the Righteous Path (7.3.5 - Moved from Warchief Kargath Bladefist)
							-- #endif
							i(27525),	-- Jeweled Boots of Sanctification
							-- #if BEFORE 7.3.5
							i(27802),	-- Tidefury Shoulderguards  (7.3.5 - Moved to Warchief Kargath Bladefist)
							-- #endif
							i(72597, {	-- O'mrogg's Warcloth
								["timeline"] = { ADDED_4_3_0 },
							}),
							i(30829),	-- Tear of the Earthmother
						},
					}),
					e(569, {	-- Warchief Kargath Bladefist
						["creatureID"] = 16808,
						["groups"] = {
							ach(678),	-- Heroic: The Shattered Halls
							ach(5078, {	-- Heroic: The Shattered Halls Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(27533),	-- Demonblood Eviscerator
							i(27538),	-- Lightsworn Hammer
							i(29348),	-- The Bladefist
							i(27540),	-- Nexus Torch
							i(29255),	-- Bands of Rarefied Magic
							i(27528),	-- Gauntlets of Desolation
							i(27535),	-- Gauntlets of the Righteous
							i(27537),	-- Gloves of Oblivion
							i(27531),	-- Wastewalker Gloves
							i(27527),	-- Greaves of the Shatterer
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33815),	-- Bladefist's Seal
							i(23723),	-- Warchief Kargath's Fist
							-- #if BEFORE 7.3.5
							i(27474),	-- Beast Lord Handguards  (7.3.5 - Moved to Blood Guard Porung)
							i(29254),	-- Boots of the Righteous Path (7.3.5 - Moved to Warbringer O'mrogg)
							i(27529),	-- Figurine of the Colossus
							i(29263),	-- Forestheart Bracers (7.3.5 - Moved to Warbringer O'mrogg)
							i(27536),	-- Hallowed Handwraps  (7.3.5 - Moved to Blood Guard Porung)
							i(27534),	-- Hortus' Seal of Brilliance (7.3.5 - Moved to Grand Warlock Nethekurse)
							-- #endif
							-- #if AFTER 7.3.5
							i(27802),	-- Tidefury Shoulderguards  (7.3.5 - Moved from Warbringer O'mrogg)
							-- #endif
						},
					}),
					n(17301, {	-- Shattered Hand Executioner
						i(31716),	-- Unused Axe of the Executioner
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(259, {
		q(35517),	-- Shattered Halls Reward Quest - Normal completion
		q(35518),	-- Shattered Halls Reward Quest - Heroic completion
	}),
})));
