-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
SCARLET_MONASTERY_GRAVEYARD_HEADER = createHeader({
	readable = "Graveyard",
	icon = 133730,
	text = {
		en = "Graveyard",
		de = "Friedhof",
		fr = "Cimetière",
		ru = "Кладбище",
		cn = "墓地",
	},
});
SCARLET_MONASTERY_LIBRARY_HEADER = createHeader({
	readable = "Library",
	icon = 133745,
	text = {
		en = "Library",
		de = "Bibliothek",
		fr = "Librairie",
		ru = "Библиотека",
		cn = "图书馆",
	},
});
SCARLET_MONASTERY_ARMORY_HEADER = createHeader({
	readable = "Armory",
	icon = 133127,
	text = {
		en = "Armory",
		de = "Waffenkammer",
		fr = "Armurerie",
		ru = "Оружейная",
		cn = "武器库",
	},
});
SCARLET_MONASTERY_CATHEDRAL_HEADER = createHeader({
	readable = "Cathedral",
	icon = 133101,
	text = {
		en = "Cathedral",
		de = "Kathedrale",
		fr = "Cathédrale",
		ru = "Собор",
		cn = "修道院",
	},
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(316, {	-- Scarlet Monastery
		-- #if BEFORE MOP
		["lore"] = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name.",
		-- #endif
		-- #if BEFORE MOP
		["zone-text-areaID"] = 796,	-- Scarlet Monastery, not sure when a mapID becomes available. Check Cata PTR?
		-- #endif
		["coords"] = {
			-- #if AFTER CATA
			{ 69.2, 24.9, SCARLET_MONASTERY_ENTRANCE },
			-- #else
			{ 82.6, 32.4, TIRISFAL_GLADES },
			-- #endif
		},
		["maps"] = {
			SCARLET_MONASTERY,	-- Scarlet Monastery: Forlorn Cloister (First Boss)
			SCARLET_MONASTERY_CRUSADERS_CHAPEL,	-- Scarlet Monasatery: Crusader's Chapel (Last two bosses)
			SCARLET_MONASTERY_GRAVEYARD,	-- Scarlet Monastery: Graveyard
			SCARLET_MONASTERY_LIBRARY,	-- Scarlet Monastery: Library
			SCARLET_MONASTERY_ARMORY,	-- Scarlet Monastery: Armory
			SCARLET_MONASTERY_CATHEDRAL,	-- Scarlet Monastery: Cathedral
		},
		["lvl"] =
			-- #if AFTER 5.0.1
			lvlsquish(28, 28, 10),
			-- #else
			lvlsquish(25, 23, 10),
			-- #endif
		["groups"] = {
			-- #if AFTER MOP
			d(DIFFICULTY.DUNGEON.NORMAL, {
			-- #endif
				-- #if BEFORE 5.0.4
				-- #if AFTER 3.0.1
				n(ACHIEVEMENTS, {
					ach(637, {	-- Scarlet Monastery
						crit(533, {	-- High Inquisitor Whitemane
							["_npcs"] = { 3977 },	-- High Inquisitor Whitemane
						}),
						crit(3264, {	-- Scarlet Commander Mograine
							["_npcs"] = { 3976 },	-- Scarlet Commander Mograine
						}),
						crit(536, {	-- Herod
							["_npcs"] = { 3975 },	-- Herod
						}),
						crit(535, {	-- Arcanist Doan
							["_npcs"] = { 6487 },	-- Arcanist Doan
						}),
						crit(537, {	-- Bloodmage Thalnos
							["_npcs"] = { 4543 },	-- Bloodmage Thalnos
						}),
					}),
					ach(5046, {	-- Scarlet Monastery Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
				}),
				-- #endif
				-- #endif
				n(QUESTS, {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, q(79946, {	-- A Brother In Need
						["qg"] = 5492,	-- Katherine the Pure <Paladin Trainer>
						["sourceQuest"] = 79945,	-- Orders from the Grand Crusader
						["coord"] = { 37.8, 31.6, STORMWIND_CITY },
						["classes"] = { PALADIN },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 26,
						["groups"] = {
							objective(1, {	-- Learn more about Aeonas from Katherine
								["provider"] = { "n", 5492 },	-- Katherine the Pure <Paladin Trainer>
							}),
							objective(2, {	-- Find Aeonas in the Scarlet Monastery
								["provider"] = { "n", 217996 },	-- Aeonas <Former Paladin of the Silver Hand>
							}),
						},
					})),
					applyclassicphase(SOD_PHASE_TWO, q(79970, {	-- Aeonas the Vindicated
						["qg"] = 217996,	-- Aeonas <Former Paladin of the Silver Hand>
						["sourceQuest"] = 79963,	-- By The Light's Grace
						["maps"] = { STORMWIND_CITY },
						["classes"] = { PALADIN },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 26,
						["groups"] = {
							objective(1, {	-- Meet Aeonas at the Cathedral of Light in Stormwind
								["provider"] = { "n", 218160 },	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
								["coord"] = { 37.6, 31.6, STORMWIND_CITY },
							}),
							recipe(426178),	-- Engrave Belt - Sheath of Light
						},
					})),
					-- #endif
					q(31513, {	-- Blades of the Anointed
						["qg"] = 64827,	-- Hooded Crusader
						["timeline"] = { ADDED_5_0_4 },
						["lvl"] = lvlsquish(28, 28, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Blade of the Anointed
								["provider"] = { "i", 87282 },	-- Blade of the Anointed
							}),
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, q(79963, {	-- By The Light's Grace
						["qg"] = 217996,	-- Aeonas <Former Paladin of the Silver Hand>
						["sourceQuest"] = 79946,	-- A Brother In Need
						["classes"] = { PALADIN },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 26,
						["groups"] = {
							objective(1, {	-- Heal Aeonas
								["provider"] = { "n", 217996 },	-- Aeonas <Former Paladin of the Silver Hand>
							}),
						},
					})),
					-- #endif
					q(1113, {	-- Hearts of Zeal
						["qg"] = 2055,	-- Master Apothecary Faranell <Royal Apothecary Society>
						["sourceQuest"] = 1109,	-- Going, Going, Guano!
						["coord"] = { 48.82, 69.28, UNDERCITY },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] = 30,
						["groups"] = {
							objective(1, {	-- 0/20 Heart of Zeal
								["provider"] = { "i", 5805 },	-- Heart of Zeal
							}),
						},
					}),
					q(1053, {	-- In the Name of the Light
						["qg"] = 3980,	-- Raleigh the Devout
						["sourceQuest"] = 1052,	-- Down the Scarlet Path (2/2)
						["coord"] = { 51.5, 58.4, HILLSBRAD_FOOTHILLS },
						["timeline"] = { REMOVED_4_0_3 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 34,
						["groups"] = {
							objective(1, {	-- 0/1 High Inquisitor Whitemane slain
								["provider"] = { "n", 3977 },	-- High Inquisitor Whitemane
							}),
							objective(2, {	-- 0/1 Scarlet Commander Mograine slain
								["provider"] = { "n", 3976 },	-- Scarlet Commander Mograine
							}),
							objective(3, {	-- 0/1 Herod slain
								["provider"] = { "n", 3975 },	-- Herod <The Scarlet Champion>
							}),
							objective(4, {	-- 0/1 Houndmaster Loksey slain
								["provider"] = { "n", 3974 },	-- Houndmaster Loksey
							}),
							i(6830, {	-- Bonebiter
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6831, {	-- Black Menace
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6829, {	-- Sword of Serenity
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(11262, {	-- Orb of Lorica
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(14355, {	-- Into The Scarlet Monastery
						["qg"] = 36273,	-- Bragor Bloodfist <Hand of the Warchief>
						["coord"] = { 56.1, 92.1, UNDERCITY },
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
						["races"] = HORDE_ONLY,
						["lvl"] =
							-- #if AFTER TBC
							30,
							-- #else
							33,
							-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 High Inquisitor Whitemane slain
								["provider"] = { "n", 3977 },	-- High Inquisitor Whitemane
							}),
							objective(2, {	-- 0/1 Scarlet Commander Mograine slain
								["provider"] = { "n", 3976 },	-- Scarlet Commander Mograine
							}),
							objective(3, {	-- 0/1 Herod slain
								["provider"] = { "n", 3975 },	-- Herod <The Scarlet Champion>
							}),
							objective(4, {	-- 0/1 Houndmaster Loksey slain
								["provider"] = { "n", 3974 },	-- Houndmaster Loksey
							}),
							i(6802, {	-- Sword of Omen
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6803, {	-- Prophetic Cane
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10711, {	-- Dragon's Blood Necklace
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(1048, {	-- Into The Scarlet Monastery
						["qg"] = 2425,	-- Varimathras
						["coord"] = { 56.3, 92.2, UNDERCITY },
						["timeline"] = { REMOVED_3_3_0 },
						["races"] = HORDE_ONLY,
						["lvl"] = 33,
						["groups"] = {
							objective(1, {	-- 0/1 High Inquisitor Whitemane slain
								["provider"] = { "n", 3977 },	-- High Inquisitor Whitemane
							}),
							objective(2, {	-- 0/1 Scarlet Commander Mograine slain
								["provider"] = { "n", 3976 },	-- Scarlet Commander Mograine
							}),
							objective(3, {	-- 0/1 Herod slain
								["provider"] = { "n", 3975 },	-- Herod <The Scarlet Champion>
							}),
							objective(4, {	-- 0/1 Houndmaster Loksey slain
								["provider"] = { "n", 3974 },	-- Houndmaster Loksey
							}),
							i(6802, {	-- Sword of Omen
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(6803, {	-- Prophetic Cane
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10711, {	-- Dragon's Blood Necklace
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
					q(31514, {	-- Unto Dust Thou Shalt Return
						["qg"] = 64854,	-- Blade of the Anointed
						["sourceQuest"] = 31513,	-- Blades of the Anointed
						["timeline"] = { ADDED_5_0_4 },
						["lvl"] = lvlsquish(28, 28, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Blades of the Anointed thrust into Whitemane's corpse
								["provider"] = { "i", 87388 },	-- Blades of the Anointed
								["cr"] = 3977,	-- High Inquisitor Whitemane
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(215374, {	-- Ancestral Sword
						["timeline"] = { ADDED_1_15_1 },
					})),
					-- #endif
					i(7759),	-- Archon Chestpiece
					i(7728),	-- Beguiler Robes
					i(7753),	-- Bloodspiller
					i(7729),	-- Chesterfall Musket
					i(7730),	-- Cobalt Crusher
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(215376, {	-- Crusader's Mace
						["timeline"] = { ADDED_1_15_1 },
					})),
					-- #endif
					i(7752),	-- Dreamslayer
					i(7736),	-- Fight Club
					i(7755),	-- Flintrock Shoulders
					i(7754),	-- Harbinger Boots
					i(7786),	-- Headsplitter
					i(5805),	-- Heart of Zeal
					i(2262),	-- Mark of Kern
					i(7787),	-- Resplendent Guardian
					i(7758),	-- Ruthless Shiv
					i(10329),	-- Scarlet Belt
					i(10332),	-- Scarlet Boots
					i(10328),	-- Scarlet Chestpiece
					i(10331),	-- Scarlet Gauntlets
					i(10333),	-- Scarlet Wristguards
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(215373, {	-- Silver Hand Training Hammer
						["timeline"] = { ADDED_1_15_1 },
					})),
					-- #endif
					i(5756),	-- Sliverblade
					i(7761),	-- Steelclaw Reaver
					i(5819),	-- Sunblaze Coif
					i(1992),	-- Swampchill Fetish
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(215375, {	-- Tactician's Staff
						["timeline"] = { ADDED_1_15_1 },
					})),
					-- #endif
					i(8225),	-- Tainted Pierce
					i(8226),	-- The Butcher
					i(7760),	-- Warchief Kilt
					i(7727),	-- Watchman Pauldrons
					i(7757),	-- Windweaver Staff
				}),
				n(SCARLET_MONASTERY_GRAVEYARD_HEADER, {
					["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
					-- #if AFTER 10.1.7
					["description"] = "Unlocked via 'The Scarlet Key' from the Loot-Filled Pumpkin during Hallow's End or bought from the Auction House.\n\n\nObtain the Key & head to the Scarlet Monastery. After entering the building, you will find on the left side a keychain with quest mark above it. Complete this quest.\nAfterwards, when you interact with the keychain, you will get The Scarlet Key buff after which you can interact with previously locked door to 2 old dungeons and enter them.\nCurrent portals to Scarlet Monastery also function as portals to the old dungeons they used to lead to.\nInteracting with the keychain repeatedly removes/reapplies the buff.\n\nUnlock is account-wide.",
					-- #endif
					["groups"] = {
						n(QUESTS, {
							q(26972, {	-- The Dark Side of the Light (A)
								["qg"] = 44728,	-- Joseph the Awakened
								["sourceQuest"] = 26982,	-- The Scarlet Monastery (A)
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 26,
								["groups"] = {
									objective(1, {	-- 0/1 Interrogator Vishas slain
										["provider"] = { "n", 3983 },	-- Interrogator Vishas
									}),
									objective(2, {	-- 0/1 Bloodmage Thalnos slain
										["provider"] = { "n", 4543 },	-- Bloodmage Thalnos
									}),
									i(65964, {	-- Gloves of the "Pure"
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65988, {	-- Helm of the Awakened
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66005, {	-- Interrogator's Shackles
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65940, {	-- Strapping Belt
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65914, {	-- Vishas' Hood
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26950, {	-- The Dark Side of the Light (H)
								["qg"] = 44637,	-- Dark Ranger Velonara
								["sourceQuest"] = 26986,	-- The Scarlet Monastery (H)
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = HORDE_ONLY,
								["lvl"] = 26,
								["groups"] = {
									objective(1, {	-- 0/1 Interrogator Vishas slain
										["provider"] = { "n", 3983 },	-- Interrogator Vishas
									}),
									objective(2, {	-- 0/1 Bloodmage Thalnos slain
										["provider"] = { "n", 4543 },	-- Bloodmage Thalnos
									}),
									i(66032, {	-- Gloves of the "Pure"
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66046, {	-- Interrogator's Shackles
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66041, {	-- Scarlet Zealot's Helm
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66023, {	-- Strapping Belt
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66014, {	-- Vishas' Hood
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26982, {	-- The Scarlet Monastery (A)
								["qg"] = 2700,	-- Captain Nials
								["coord"] = { 40.0, 48.8, ARATHI_HIGHLANDS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 28,
							}),
							q(26986, {	-- The Scarlet Monastery (H)
								["qg"] = 12920,	-- Doctor Gregory Victor <Trauma Surgeon>
								["coord"] = { 68.4, 37.8, ARATHI_HIGHLANDS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = HORDE_ONLY,
								["lvl"] = 28,
							}),
							q(1051, {	-- Vorrel's Revenge
								["qg"] = 3981,	-- Vorrel Sengutz
								["timeline"] = { REMOVED_4_0_3 },
								["maps"] = { ALTERAC_MOUNTAINS, HILLSBRAD_FOOTHILLS },
								["races"] = HORDE_ONLY,
								["lvl"] = 25,
								["groups"] = {
									objective(1, {	-- 0/1 Vorrel's Wedding Ring
										["provider"] = { "i", 5538 },	-- Vorrel's Wedding Ring
										["coord"] = { 32.3, 32.8, ALTERAC_MOUNTAINS },
										["cr"] = 3984,	-- Nancy Vishas
									}),
									i(4643, {	-- Grimsteel Cape
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(7750, {	-- Mantle of Woe
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(7751, {	-- Vorrel's Boots
										["timeline"] = { REMOVED_4_0_3 },
									}),
								},
							}),
						}),
						n(RARES, {
							n(6488, {	-- Fallen Champion
								["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								["groups"] = {
									i(7690, {	-- Ebon Vise
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									-- #if SEASON_OF_DISCOVERY
									applyclassicphase(SOD_PHASE_TWO, i(217294)),	-- Embalmed Shroud
									i(7691, {	-- Embalmed Shroud
										["timeline"] = { REMOVED_1_15_1 },
									}),
									-- #else
									i(7691, {	-- Embalmed Shroud
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									-- #endif
									i(7689, {	-- Morbid Dawn
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
								},
							}),
							n(6490, {	-- Azshir the Sleepless
								["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								["groups"] = {
									i(7709, {	-- Blighted Leggings
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									-- #if SEASON_OF_DISCOVERY
									applyclassicphase(SOD_PHASE_TWO, i(217296)),	-- Ghostshard Talisman
									applyclassicphase(SOD_PHASE_TWO, i(217295)),	-- Necrotic Wand
									i(7731, {	-- Ghostshard Talisman
										["timeline"] = { REMOVED_1_15_1 },
									}),
									i(7708, {	-- Necrotic Wand
										["timeline"] = { REMOVED_1_15_1 },
									}),
									-- #else
									i(7731, {	-- Ghostshard Talisman
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									i(7708, {	-- Necrotic Wand
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									-- #endif
								},
							}),
							n(6489, {	-- Ironspine
								["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								["groups"] = {
									i(7687, {	-- Ironspine's Fist
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									i(7688, {	-- Ironspine's Ribcage
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
									i(7686, {	-- Ironspine's Eye
										["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
									}),
								},
							}),
						}),
						n(3983, {	-- Interrogator Vishas
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7683, {	-- Bloody Brass Knuckles
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7682, {	-- Torturing Poker
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							},
						}),
						n(4543, {	-- Bloodmage Thalnos
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7685, {	-- Orb of the Forgotten Seer
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7684, {	-- Bloodmage Mantle
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							},
						}),
					},
				}),
				n(SCARLET_MONASTERY_LIBRARY_HEADER, {
					["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
					-- #if AFTER 10.1.7
					["description"] = "Unlocked via 'The Scarlet Key' from the Loot-Filled Pumpkin during Hallow's End or bought from the Auction House.\n\n\nObtain the Key & head to the Scarlet Monastery. After entering the building, you will find on the left side a keychain with quest mark above it. Complete this quest.\nAfterwards, when you interact with the keychain, you will get The Scarlet Key buff after which you can interact with previously locked door to 2 old dungeons and enter them.\nCurrent portals to Scarlet Monastery also function as portals to the old dungeons they used to lead to.\nInteracting with the keychain repeatedly removes/reapplies the buff.\n\nUnlock is account-wide.",
					-- #endif
					["lvl"] = 28,
					["groups"] = {
						n(QUESTS, {
							q(26993, {	-- Compendium of the Fallen
								["qg"] = 44800,	-- Dominic
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["lvl"] = 29,
								["groups"] = {
									objective(1, {	-- 0/1 Compendium of the Fallen
										["providers"] = {
											{ "i", 5535 },	-- Compendium of the Fallen
											{ "o", 19283 },	-- Compendium of the Fallen
										},
										["description"] = "On one of the shelves on the left as you enter the final hallway leading to Doan.",
									}),
								},
							}),
							q(1049, {	-- Compendium of the Fallen
								["qg"] = 3978,	-- Sage Truthseeker
								["coord"] = { 34.6, 47.2, THUNDER_BLUFF },
								["timeline"] = { REMOVED_4_0_3 },
								["races"] = exclude(UNDEAD, HORDE_ONLY),
								["lvl"] = 28,
								["groups"] = {
									objective(1, {	-- 0/1 Compendium of the Fallen
										["providers"] = {
											{ "i", 5535 },	-- Compendium of the Fallen
											{ "o", 19283 },	-- Compendium of the Fallen
										},
										["description"] = "On one of the shelves on the left as you enter the final hallway leading to Doan.",
									}),
									i(17508, {	-- Forcestone Buckler
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(7749, {	-- Omega Orb
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(7747, {	-- Vile Protector
										["timeline"] = { REMOVED_4_0_3 },
									}),
								},
							}),
							q(26983, {	-- Just Close Enough
								["qg"] = 39084,	-- Mizzy Pistonhammer
								["coord"] = { 49.4, 67.6, SOUTHERN_BARRENS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 31,
							}),
							q(1050, {	-- Mythology of the Titans
								["qg"] = 3979,	-- Librarian Mae Paledust <Explorers' League>
								["coord"] = { 75.0, 12.5, IRONFORGE },
								["timeline"] = { REMOVED_4_0_3 },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 28,
								["groups"] = {
									objective(1, {	-- 0/1 Mythology of the Titans
										["providers"] = {
											{ "i", 5536 },	-- Mythology of the Titans
											{ "o", 19284 },	-- Mythology of the Titans
										},
										["description"] = "In the hallway with the benches immediately to your left upon entering it.",
									}),
									i(7746, {	-- Explorers' League Commendation
										["timeline"] = { REMOVED_4_0_3 },
									}),
								},
							}),
							q(1951, {	-- Rituals of Power
								["qg"] = 6548,	-- Magus Tirth
								["sourceQuest"] = 1950,	-- Get the Scoop
								["coord"] = { 478.2, 75.8, THOUSAND_NEEDLES },
								["timeline"] = { REMOVED_4_0_3 },
								["maps"] = { DUSTWALLOW_MARSH },
								["classes"] = { MAGE },
								["lvl"] = 30,
								["groups"] = {
									objective(1, {	-- 0/1 Rituals of Power
										["provider"] = { "i", 7274 },	-- Rituals of Power
									}),
								},
							}),
							q(26959, {	-- Stripping Their Defenses
								["qg"] = 44660,	-- Dark Ranger Velonara
								["sourceQuest"] = 26987,	-- The Right Way
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = HORDE_ONLY,
								["lvl"] = 31,
								["groups"] = {
									objective(1, {	-- 0/1 Houndmaster Loksey slain
										["provider"] = { "n", 3974 },	-- Houndmaster Loksey
									}),
									objective(2, {	-- 0/1 Arcanist Doan slain
										["provider"] = { "n", 6487 },	-- Arcanist Doan
									}),
									i(66033, {	-- Band of the Arcanist
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66015, {	-- Houndmaster's Belt
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66024, {	-- Shield of Comrades
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(1160, {	-- Test of Lore (5/6)
								["qg"] = 4488,	-- Parqual Fintallas
								["sourceQuest"] = 1159,	-- Test of Lore (4/6)
								["coord"] = { 57.8, 65.4, UNDERCITY },
								["timeline"] = { REMOVED_4_0_3 },
								["races"] = HORDE_ONLY,
								["lvl"] = 28,
								["groups"] = {
									objective(1, {	-- 0/1 Beginnings of the Undead Threat
										["providers"] = {
											{ "i", 5861 },	-- Beginnings of the Undead Threat
											{ "o", 20726 },	-- Beginnings of the Undead Threat
										},
										["description"] = "In the first cooridor with books, there are 2 pocket rooms, the first pocket room has a table with 2 clickable books on it.\n\nOne of them is a container.",
									}),
								},
							}),
							q(26973, {	-- The Only True Path
								["qg"] = 44738,	-- Joseph the Awakened
								["sourceQuest"] = 26983,	-- Just Close Enough
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 31,
								["groups"] = {
									objective(1, {	-- 0/1 Houndmaster Loksey slain
										["provider"] = { "n", 3974 },	-- Houndmaster Loksey
									}),
									objective(2, {	-- 0/1 Arcanist Doan slain
										["provider"] = { "n", 6487 },	-- Arcanist Doan
									}),
									i(65966, {	-- Band of the Arcanist
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65916, {	-- Houndmaster's Belt
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65942, {	-- Shield of the Righteous Cause
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26987, {	-- The Right Way
								["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
								["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = HORDE_ONLY,
								["lvl"] = 31,
							}),
						}),
						n(3974, {	-- Houndmaster Loksey
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7710, {	-- Loksey's Training Stick
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7756, {	-- Dog Training Gloves
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(3456, {	-- Dog Whistle
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						n(6487, {	-- Arcanist Doan
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7714, {	-- Hypnotic Blade
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								-- #if SEASON_OF_DISCOVERY
								applyclassicphase(SOD_PHASE_TWO, i(217299)),	-- Illusionary Rod
								applyclassicphase(SOD_PHASE_TWO, i(217298)),	-- Mantle of Doan
								applyclassicphase(SOD_PHASE_TWO, i(217297)),	-- Robe of Doan
								i(7713, {	-- Illusionary Rod
									["timeline"] = { REMOVED_1_15_1 },
								}),
								i(7712, {	-- Mantle of Doan
									["timeline"] = { REMOVED_1_15_1 },
								}),
								i(7711, {	-- Robe of Doan
									["timeline"] = { REMOVED_1_15_1 },
								}),
								-- #else
								i(7713, {	-- Illusionary Rod
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7712, {	-- Mantle of Doan
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7711, {	-- Robe of Doan
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								-- #endif
								i(34227, {	-- Deadman's Hand
									["timeline"] = { ADDED_2_3_0, REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								o(103821, {	-- Doan's Strongbox
									["groups"] = {
										i(7146, {	-- The Scarlet Key
											["description"] = "Found in the chest after killing Arcanist Doan.",
											["timeline"] = { REMOVED_4_0_3 },
										}),
										i(208485, {	-- The Scarlet Key
											["description"] = "Found in the chest after killing Arcanist Doan. Can be looted once per week per account.",
											["timeline"] = { ADDED_10_1_7 },
										}),
									},
									["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
									-- #if AFTER 10.1.7
									["questID"] = 77213,
									["isWeekly"] = true,
									-- #endif
								}),
							},
						}),
					},
				}),
				n(SCARLET_MONASTERY_ARMORY_HEADER, {
					["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
					-- #if BEFORE 4.0.3
					["cost"] = { { "i", 7146, 1 } },	-- The Scarlet Key
					-- #endif
					-- #if AFTER 10.1.7
					["description"] = "Unlocked via 'The Scarlet Key' from the Loot-Filled Pumpkin during Hallow's End or bought from the Auction House.\n\n\nObtain the Key & head to the Scarlet Monastery. After entering the building, you will find on the left side a keychain with quest mark above it. Complete this quest.\nAfterwards, when you interact with the keychain, you will get The Scarlet Key buff after which you can interact with previously locked door to 2 old dungeons and enter them.\nCurrent portals to Scarlet Monastery also function as portals to the old dungeons they used to lead to.\nInteracting with the keychain repeatedly removes/reapplies the buff.\n\nUnlock is account-wide.",
					-- #endif
					["lvl"] = 35,
					["groups"] = {
						-- #if AFTER 4.0.3
						n(QUESTS, {
							q(26984, {	-- An Old, Crazed Friend
								["qg"] = 44019,	-- Livingston Marshal <Innkeeper>
								["coord"] = { 53.2, 66.8, NORTHERN_STRANGLETHORN },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 34,
							}),
							q(26988, {	-- Moving Things Along
								["qg"] = 14739,	-- Mystic Yayo'jin <Reagents>
								["coord"] = { 78.8, 78.4, THE_HINTERLANDS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = HORDE_ONLY,
								["lvl"] = 34,
							}),
							q(26962, {	-- Stripping Their Offense
								["qg"] = 44690,	-- Dark Ranger Velonara
								["sourceQuest"] = 26988,	-- Moving Things Along
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = HORDE_ONLY,
								["lvl"] = 32,
								["groups"] = {
									objective(1, {	-- 0/1 Herod slain
										["provider"] = { "n", 3975 },	-- Herod <The Scarlet Champion>
									}),
									i(66034, {	-- Breastplate of the Scarlet Monastery
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66047, {	-- Herod's Medallion
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66016, {	-- Monk's Leggings
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66025, {	-- Spaulder of the Untrained
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66042, {	-- Velonara's Cloak
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26974, {	-- The False Champion
								["qg"] = 44741,	-- Joseph the Crazed
								["sourceQuest"] = 26984,	-- An Old, Crazed Friend
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 32,
								["groups"] = {
									objective(1, {	-- 0/1 Herod slain
										["provider"] = { "n", 3975 },	-- Herod <The Scarlet Champion>
									}),
									i(65967, {	-- Breastplate of the Scarlet Monastery
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65990, {	-- Cloak of the False Champion
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66006, {	-- Herod's Medallion
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65917, {	-- Monk's Leggings
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65943, {	-- Shrug of the Crazed
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26994, {	-- Without Rhyme or Reason
								["qg"] = 44804,	-- Dominic
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["lvl"] = 32,
								["groups"] = {
									objective(1, {	-- 0/3 Scarlet Myrmidon slain
										["provider"] = { "n", 4295 },	-- Scarlet Myrmidon
									}),
									objective(2, {	-- 0/3 Scarlet Evoker slain
										["provider"] = { "n", 4289 },	-- Scarlet Evoker
									}),
									objective(3, {	-- 0/3 Scarlet Guardsman slain
										["provider"] = { "n", 4290 },	-- Scarlet Guardsman
									}),
									objective(4, {	-- 0/3 Scarlet Protector slain
										["provider"] = { "n", 4292 },	-- Scarlet Protector
									}),
								},
							}),
						}),
						-- #endif
						n(3975, {	-- Herod
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7717, {	-- Ravager
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7719, {	-- Raging Berserker's Helm
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7718, {	-- Herod's Shoulder
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(10330, {	-- Scarlet Leggings
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							},
						}),
						n(6575, {	-- Scarlet Trainee
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(23192, {	-- Tabard of the Scarlet Crusade
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							},
						}),
					},
				}),
				n(SCARLET_MONASTERY_CATHEDRAL_HEADER, {
					["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
					-- #if BEFORE 4.0.3
					["cost"] = { { "i", 7146, 1 } },	-- The Scarlet Key
					-- #endif
					-- #if AFTER 10.1.7
					["description"] = "Unlocked via 'The Scarlet Key' from the Loot-Filled Pumpkin during Hallow's End or bought from the Auction House.\n\n\nObtain the Key & head to the Scarlet Monastery. After entering the building, you will find on the left side a keychain with quest mark above it. Complete this quest.\nAfterwards, when you interact with the keychain, you will get The Scarlet Key buff after which you can interact with previously locked door to 2 old dungeons and enter them.\nCurrent portals to Scarlet Monastery also function as portals to the old dungeons they used to lead to.\nInteracting with the keychain repeatedly removes/reapplies the buff.\n\nUnlock is account-wide.",
					-- #endif
					["lvl"] = 37,
					["groups"] = {
						-- #if AFTER 4.0.3
						n(QUESTS, {
							q(26976, {	-- Battle for the Scarlet Monastery (A)
								["qg"] = 44746,	-- Joseph the Insane <Scarlet Champion>
								["sourceQuest"] = 26985,	-- Pitting Madness Against Madness
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 37,
								["groups"] = {
									objective(1, {	-- 0/1 Scarlet Commander Mograine slain
										["provider"] = { "n", 3976 },	-- Scarlet Commander Mograine
									}),
									objective(2, {	-- 0/1 High Inquisitor Whitemane slain
										["provider"] = { "n", 3977 },	-- High Inquisitor Whitemane
									}),
									i(65946, {	-- Scarlet Necklace of Paradise
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65920, {	-- Grasps of the Insane
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(65970, {	-- Band of Grandiose Delusions
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26967, {	-- Battle for the Scarlet Monastery (B)
								["qg"] = 44706,	-- Dark Ranger Velonara
								["sourceQuest"] = 26991,	-- Enemies Abroad
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["races"] = HORDE_ONLY,
								["lvl"] = 37,
								["groups"] = {
									objective(1, {	-- 0/1 Scarlet Commander Mograine slain
										["provider"] = { "n", 3976 },	-- Scarlet Commander Mograine
									}),
									objective(2, {	-- 0/1 High Inquisitor Whitemane slain
										["provider"] = { "n", 3977 },	-- High Inquisitor Whitemane
									}),
									i(66026, {	-- Gift of the Banshee Queen
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66017, {	-- Grasps of the Forsaken
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
									i(66035, {	-- Band of Wrath
										["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
									}),
								},
							}),
							q(26991, {	-- Enemies Abroad
								["qg"] = 4791,	-- Nazeer Bloodpike
								["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = HORDE_ONLY,
								["lvl"] = 37,
							}),
							q(26985, {	-- Pitting Madness Against Madness
								["qg"] = 3936,	-- Shandris Feathermoon <General of the Sentinel Army>
								["coord"] = { 46.0, 49.0, FERALAS },
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["isBreadcrumb"] = true,
								["races"] = ALLIANCE_ONLY,
								["lvl"] = 37,
							}),
							q(26996, {	-- Right Under Their Noses
								["qg"] = 44805,	-- Dominic
								["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								["lvl"] = 35,
								["groups"] = {
									objective(1, {	-- 0/1 High Inquisitor Fairbanks slain
										["provider"] = { "n", 4542 },	-- High Inquisitor Fairbanks
									}),
								},
							}),
						}),
						-- #endif
						n(4542, {	-- High Inquisitor Fairbanks
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(19507, {	-- Inquisitor's Shawl
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(19508, {	-- Branded Leather Bracers
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(19509, {	-- Dusty Mail Boots
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							},
						}),
						n(3976, {	-- Scarlet Commander Mograine
							["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
							["groups"] = {
								i(7726, {	-- Aegis of the Scarlet Commander
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								i(7724, {	-- Gauntlets of Divinity
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								-- #if SEASON_OF_DISCOVERY
								applyclassicphase(SOD_PHASE_TWO, i(217302)),	-- Mograine's Might
								i(7723, {	-- Mograine's Might
									["timeline"] = { REMOVED_1_15_1 },
								}),
								-- #else
								i(7723, {	-- Mograine's Might
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
								-- #endif
								i(10330, {	-- Scarlet Leggings
									["timeline"] = { REMOVED_5_0_4, ADDED_10_1_7 },
								}),
							}
						}),
						n(3977, {	-- High Inquisitor Whitemane
							-- NOTE: The boss herself was not removed, only redesigned with a new loot table.
							i(7721, {	-- Hand of Righteousness
								["timeline"] = { REMOVED_5_0_4, ADDED_11_0_2 },
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_TWO, i(217301)),	-- Triune Amulet
							applyclassicphase(SOD_PHASE_TWO, i(217300)),	-- Whitemane's Chapeau
							i(7722, {	-- Triune Amulet
								["timeline"] = { REMOVED_1_15_1 },
							}),
							i(7720, {	-- Whitemane's Chapeau
								["timeline"] = { REMOVED_1_15_1 },
							}),
							-- #else
							i(7722, {	-- Triune Amulet
								["timeline"] = { REMOVED_5_0_4, ADDED_11_0_2 },
							}),
							i(7720, {	-- Whitemane's Chapeau
								["timeline"] = { REMOVED_5_0_4, ADDED_11_0_2 },
							}),
							-- #endif
						}),
					},
				}),
				e(688, {	-- Thalnos the Soulrender
					["creatureID"] = 59789,	-- Thalnos the Soulrender
					["timeline"] = { ADDED_5_0_4 },
					["groups"] = {
						i(88284),	-- Forgotten Bloodmage Mantle
						i(88288),	-- Soulrender Greatcloak
						i(88287),	-- Bracers of the Fallen Crusader
						i(88286),	-- Legguards of the Crimson Magus
						i(88285),	-- Signet of the Hidden Door
					},
				}),
				e(671, {	-- Brother Korloff
					["creatureID"] = 59223,	-- Brother Korloff
					["timeline"] = { ADDED_5_0_4 },
					["groups"] = {
						i(88289),	-- Firestorm Greatstaff
						i(88292),	-- Helm of Rising Flame
						i(88290),	-- Scorched Earth Cloak
						i(88291),	-- Korloff's Raiment
						i(88293),	-- Firefinger Ring
					},
				}),
				e(674, {	-- High Inquisitor Whitemane
					["crs"] = {
						3977,	-- High Inquisitor Whitemane
						60040,	-- Commander Durand
					},
					["timeline"] = { ADDED_5_0_4 },
					["groups"] = {
						ach(637),	-- Scarlet Monastery
						ach(5046, {	-- Scarlet Monastery Guild Run
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(88301),	-- Greatstaff of Righteousness
						i(88297),	-- Lightbreaker Greatsword
						i(88299),	-- Whitemane's Embroidered Chapeau
						i(88303),	-- Crown of Holy Flame
						i(88302),	-- Incarnadine Scarlet Spaulders
						i(88296),	-- Waistplate of Imminent Resurrection
						i(88298),	-- Leggings of Hallowed Fire
						i(88295),	-- Dashing Strike Treads
						i(132549, {	-- Deft Strike Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(88300),	-- Triune Signet
						i(88294),	-- Flashing Steel Talisman
					},
				}),
			-- #if AFTER MOP
			}),
			-- #endif
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["timeline"] = { ADDED_5_0_4 },
				["lvl"] = lvlsquish(90, 90, 35),
				["groups"] = {
					n(QUESTS, {
						q(31515, {	-- Blades of the Anointed
							["qg"] = 64838,	-- Hooded Crusader
							["timeline"] = { ADDED_5_0_4 },
							["lvl"] = lvlsquish(90, 90, 35),
							["groups"] = {
								objective(1, {	-- 0/1 Blade of the Anointed
									["provider"] = { "i", 87389 },	-- Blade of the Anointed
								}),
							},
						}),
						q(31516, {	-- Unto Dust Thou Shalt Return
							["qg"] = 64855,	-- Blade of the Anointed
							["sourceQuest"] = 31515,	-- Blades of the Anointed
							["timeline"] = { ADDED_5_0_4 },
							["lvl"] = lvlsquish(90, 90, 35),
							["groups"] = {
								objective(1, {	-- 0/1 Blades of the Anointed thrust into Whitemane's corpse
									["provider"] = { "i", 87390 },	-- Blades of the Anointed
									["cr"] = 3977,	-- High Inquisitor Whitemane
								}),
								i(87361),	-- Martial Purification Gloves
								i(87362),	-- Gauntlets of Righteous Conviction
								i(87363),	-- Zealous Fervor Handguards
								i(87364),	-- Gloves of Sanctity
								i(87365),	-- Beneficent Gloves
								i(87366),	-- Scarlet Visionary Gloves
								i(87367),	-- Gloves of Fiery Purification
								i(87368),	-- Gauntlets of Bloody Judgment
								i(87369),	-- Crimson Monk Handwraps
							},
						}),
					}),
					e(688, {	-- Thalnos the Soulrender
						["creatureID"] = 59789,	-- Thalnos the Soulrender
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							ach(6946),	-- Empowered Spiritualist
							i(144001, {	-- Forgotten Bloodmage Mantle
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144183, {	-- Soulrender Greatcloak
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144184, {	-- Bracers of the Fallen Crusader
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144002, {	-- Legguards of the Crimson Magus
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144174, {	-- Signet of the Hidden Door
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(81569, {	-- Forgotten Bloodmage Mantle
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81571, {	-- Soulrender Greatcloak
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81572, {	-- Bracers of the Fallen Crusader
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81570, {	-- Legguards of the Crimson Magus
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81560, {	-- Signet of the Hidden Door
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
					e(671, {	-- Brother Korloff
						["creatureID"] = 59223,	-- Brother Korloff
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							ach(6928),	-- Burning Man
							i(144186, {	-- Firestorm Greatstaff
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144026, {	-- Helm of Rising Flame
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144185, {	-- Scorched Earth Cloak
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(143965, {	-- Korloff's Raiment
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144175, {	-- Firefinger Ring
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(81576, {	-- Firestorm Greatstaff
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81574, {	-- Helm of Rising Flame
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81575, {	-- Scorched Earth Cloak
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81573, {	-- Korloff's Raiment
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81561, {	-- Firefinger Ring
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
					e(674, {	-- High Inquisitor Whitemane
						["crs"] = {
							3977,	-- High Inquisitor Whitemane
							60040,	-- Commander Durand
						},
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							ach(6929, {	-- And Stay Dead!
								["provider"] = { "n", 58605 },	-- Scarlet Judicator
							}),
							ach(6761),	-- Heroic: Scarlet Monastery
							ach(6770),	-- Heroic: Scarlet Monastery Guild Run
							ach(637),	-- Scarlet Monastery
							i(144189, {	-- Greatstaff of Righteousness
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144187, {	-- Lightbreaker Greatsword
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144027, {	-- Crown of Holy Flame
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144028, {	-- Whitemane's Embroidered Chapeau
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144221, {	-- Helios, Durand's Soul of Purity
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144005, {	-- Incarnadine Scarlet Spaulders
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144188, {	-- Waistplate of Imminent Resurrection
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144004, {	-- Leggings of Hallowed Fire
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144003, {	-- Dashing Strike Treads
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144176, {	-- Triune Signet
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144158, {	-- Flashing Steel Talisman
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(81691, {	-- Greatstaff of Righteousness
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81577, {	-- Lightbreaker Greatsword
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81578, {	-- Crown of Holy Flame
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81692, {	-- Whitemane's Embroidered Chapeau
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(87551, {	-- Helios, Durand's Soul of Purity
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81690, {	-- Incarnadine Scarlet Spaulders
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81687, {	-- Waistplate of Imminent Resurrection
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81689, {	-- Leggings of Hallowed Fire
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81688, {	-- Dashing Strike Treads
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81562, {	-- Triune Signet
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81265, {	-- Flashing Steel Talisman
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(316, {
			q(31637),	-- Scarlet Monastery Challenge Mode - Bronze Addition (Nth)
			q(31629),	-- Scarlet Monastery Challenge Mode - Consolation (Nth)
			q(31651),	-- Scarlet Monastery Challenge Mode - Gold Addition (Nth)
			q(31644),	-- Scarlet Monastery Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(316, {
			q(35612),	-- Scarlet Monastery Reward Quest - Normal completion
			q(35613),	-- Scarlet Monastery Reward Quest - Heroic completion
		}),
	})),
});