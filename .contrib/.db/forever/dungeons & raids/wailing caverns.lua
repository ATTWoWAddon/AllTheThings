-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(240, {	-- Wailing Caverns
		["lore"] = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream.\n\nOnce connected to the Dream, however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang.",
		["icon"] = 136364,
		["zone-text-areaID"] = 718,	-- Wailing Caverns
		["zone-text-names"] = {
			"The Wailing Caverns",	-- To fix Us client
			"Las Cuevas de los Lamentos",	-- To fix Es and Mx clients
		},
		["mapID"] = MAP.WAILING_CAVERNS,
		["coords"] = {
			{ 52.0, 55.2, MAP.KALIMDOR },
			{ 45.9, 35.7, MAP.THE_BARRENS },
		},
		["lvl"] = 10,
		["groups"] = {
			n(QUESTS, {
				["description"] = "To get to the quest giver hub outside the instance:\n\nWhen facing the mouth of the cave, you should see that the entrance looks like a skull. The questgivers are in the left eye. To get there, climb up the mountain, drop onto the head, drop onto the brow, drop onto the nose, face the instance, and go into the eye on the left",
				["groups"] = {
					q(1487, {	-- Deviate Eradication
						["qg"] = 5768,	-- Ebru <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, MAP.THE_BARRENS },
						["lvl"] = 15,
						["groups"] = {
							objective(1, {	-- 0/7 Deviate Ravager slain
								["provider"] = { "n", 3636 },	-- Deviate Ravager
							}),
							objective(2, {	-- 0/7 Deviate Viper slain
								["provider"] = { "n", 5755 },	-- Deviate Viper
							}),
							objective(3, {	-- 0/7 Deviate Shambler slain
								["provider"] = { "n", 5761 },	-- Deviate Shambler
							}),
							objective(4, {	-- 0/7 Deviate Dreadfang slain
								["provider"] = { "n", 5056 },	-- Deviate Dreadfang
							}),
							i(6476),	-- Pattern: Deviate Scale Belt (RECIPE!)
							i(8071),	-- Sizzle Stick
							i(6481),	-- Dagmire Gauntlets
						},
					}),
					q(1486, {	-- Deviate Hides
						["qg"] = 5767,	-- Nalpak <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, MAP.THE_BARRENS },
						["lvl"] = 13,
						["groups"] = {
							objective(1, {	-- 0/20 Deviate Hide
								["provider"] = { "i", 6443 },	-- Deviate Hide
							}),
							i(6480),	-- Slick Deviate Leggings
							i(918),	-- Deviate Hide Pack
						},
					}),
					q(1489, {	-- Hamuul Runetotem
						["sourceQuest"] = 880,	-- Altered Beings
						["providers"] = {
							{ "n", 3448 },	-- Tonga Runetotem
							{ "i", 10414 },	-- Sample Snapjaw Shell
						},
						["coord"] = { 52.3, 31.9, MAP.THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(3370, {	-- In Nightmares [A]
						["description"] = "She lives in a house on top of the mountain.",
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["qg"] = 8418,	-- Falla Sagewind
						["coord"] = { 48.2, 32.8, MAP.THE_BARRENS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 15,
						["groups"] = {
							objective(1, {
								["provider"] = { "i", 10649 },	-- Nightmare Shard
							}),
							i(10657),	-- Talbar Mantle
							i(10658),	-- Quagmire Galoshes
						},
					}),
					q(3369, {	-- In Nightmares [H]
						["description"] = "She lives in a house on top of the mountain.",
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["qg"] = 8418,	-- Falla Sagewind
						["coord"] = { 48.2, 32.8, MAP.THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = 15,
						["groups"] = {
							objective(1, {
								["provider"] = { "i", 10649 },	-- Nightmare Shard
							}),
							i(10657),	-- Talbar Mantle
							i(10658),	-- Quagmire Galoshes
						},
					}),
					q(914, {	-- Leaders of the Fang
						["sourceQuest"] = 1490,	-- Nara Wildmane
						["qg"] = 5770,	-- Nara Wildmane
						["coord"] = { 75.6, 31.2, MAP.THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
						["groups"] = {
							objective(1, {	-- 0/1 Gem of Cobrahn
								["provider"] = { "i", 9738 },	-- Gem of Cobrahn
							}),
							objective(2, {	-- 0/1 Gem of Anacondra
								["provider"] = { "i", 9739 },	-- Gem of Anacondra
							}),
							objective(3, {	-- 0/1 Gem of Pythas
								["provider"] = { "i", 9740 },	-- Gem of Pythas
							}),
							objective(4, {	-- 0/1 Gem of Serpentis
								["provider"] = { "i", 9741 },	-- Gem of Serpentis
							}),
							i(6505),	-- Crescent Staff
							i(6504),	-- Wingblade
							i(270018, {	-- Hammerbone
								timeline = { TIMELINE.ADDED_1_60_1 },
							}),
						},
					}),
					q(1490, {	-- Nara Wildmane
						["sourceQuest"] = 1489,	-- Hamuul Runetotem
						["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
						["coord"] = { 74.7, 30.2, MAP.THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					}),
					q(962, {	-- Serpentbloom
						["qg"] = 3419,	-- Apothecary Zamah <Royal Apothecary Society>
						["coord"] = { 23.6, 21.4, MAP.THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 14,
						["groups"] = {
							objective(1, {	-- 0/10 Serpentbloom
								["providers"] = {
									{ "i", 5339 },	-- Serpentbloom
									{ "o", 13891 },	-- Serpentbloom
								},
							}),
							i(10919),	-- Apothecary Gloves
							i(270008, {	-- Heat Resistant Mitts
								timeline = { TIMELINE.ADDED_1_60_1 },
							}),
							i(270009, {	-- Safety Boots
								timeline = { TIMELINE.ADDED_1_60_1 },
							}),
						},
					}),
					q(1491, {	-- Smart Drinks
						["sourceQuest"] = 865,	-- Raptor Horns
						["qg"] = 3446,	-- Mebok Mizzyrix
						["coord"] = { 62.4, 37.6, MAP.THE_BARRENS },
						["lvl"] = 13,
						["groups"] = {
							objective(1, {	-- 0/6 Wailing Essence
								["provider"] = { "i", 6464 },	-- Wailing Essence
								["crs"] = {
									3638,	-- Devouring Ectoplasm
									3640,	-- Evolving Ectoplasm
									5763,	-- Nightmare Ectoplasm
								},
							}),
						},
					}),
					q(6981, {	-- The Glowing Shard
						["provider"] = { "i", 10441 },	-- Glowing Shard
						["qg"] = 3442,	-- Sputtervalve <Tinkers' Union>
						["coord"] = { 63.0, 37.2, MAP.THE_BARRENS },
					}),
				},
			}),
			n(TREASURES, {
				o(409692, {	-- Scrolls
					["coord"] = { 52.83, 54.70, MAP.THE_BARRENS },
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
					["groups"] = {
						i(209846),	-- Secrets of the Dreamers
					},
				}),
			}),
			n(VENDORS, {
				n(5783, {	-- Kalldan Felmoon <Specialist Leatherworking Supplies>
					["coord"] = { 45.9, 35.7, MAP.THE_BARRENS },
					["groups"] = {
						i(6474),	-- Pattern: Deviate Scale Cloak (RECIPE!)
						i(6475),	-- Pattern: Deviate Scale Gloves (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(6443, {	-- Deviate Hide
					["description"] = "Drops from Deviate creatures in the Wailing Caverns.",
				}),
				i(10413, {	-- Gloves of the Fang
					cr = 3840,	-- Druid of the Fang
				}),
			}),
			prof(SKINNING, {
				i(6470, {	-- Deviate Scale
					["description"] = "Can drop-, as well as be skinned from all deviates within the Wailing Caverns.",
				}),
				i(6471, {	-- Perfect Deviate Scale
					["description"] = "Can drop-, as well as be skinned from all deviates within the Wailing Caverns, although the droprate is low.",
				}),
			}),
			e(474, {	-- Lady Anacondra <Fanglord>
				["creatureID"] = 3671,
				["groups"] = {
					i(9739),	-- Gem of Anacondra
					i(5404),	-- Serpent's Shoulders
					i(10412),	-- Belt of the Fang
					i(273088, {	-- Snake Eye Kaleidoscope
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(6446),	-- Snakeskin Bag
				},
			}),
			e(477, {	-- Kresh
				["creatureID"] = 3653,
				["groups"] = {
					i(13245),	-- Kresh's Back
					i(6447),	-- Worn Turtle Shell Shield
					i(273084, {	-- Cloak of Hermitic Bliss
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			e(476, {	-- Lord Pythas <Fanglord>
				["creatureID"] = 3670,
				["groups"] = {
					i(9740),	-- Gem of Pythas
					i(6472),	-- Stinging Viper
					i(6473),	-- Armor of the Fang
					i(273089, {	-- Slither Cord
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			e(475, {	-- Lord Cobrahn <Fanglord>
				["creatureID"] = 3669,
				["groups"] = {
					i(9738),	-- Gem of Cobrahn
					i(6465),	-- Robe of the Moccasin
					i(6460),	-- Cobrahn's Grasp
					i(10410),	-- Leggings of the Fang
				},
			}),
			e(478, {	-- Skum
				["creatureID"] = 3674,
				["groups"] = {
					i(6448),	-- Tail Spike
					i(6449),	-- Glowing Lizardscale Cloak
					i(273137, {	-- Skum's Bucket
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(5912, {	-- Deviate Faerie Dragon
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(5243),	-- Firebelcher
					i(6632),	-- Feyscale Cloak
				},
			}),
			e(479, {	-- Lord Serpentis <Fanglord>
				["creatureID"] = 3673,
				["groups"] = {
					i(9741),	-- Gem of Serpentis
					i(6469),	-- Venomstrike
					i(5970),	-- Serpent Gloves
					i(10411),	-- Footpads of the Fang
					i(6459),	-- Savage Trodders
				},
			}),
			e(480, {	-- Verdan the Everliving
				["creatureID"] = 5775,
				["groups"] = {
					i(6631),	-- Living Root
					i(6630),	-- Seedcloud Buckler
					i(6629),	-- Sporid Cape
				},
			}),
			e(481, {	-- Mutanus the Devourer
				["creatureID"] = 3654,
				["groups"] = {
					i(10441),	-- Glowing Shard
					i(6461),	-- Slime-Encrusted Pads
					i(6627),	-- Mutant Breastplate
					i(6463),	-- Deep Fathom Ring
				},
			}),
		},
	}),
});
