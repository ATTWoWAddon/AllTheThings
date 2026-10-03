-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(227, {	-- Blackfathom Deeps
		["lore"] = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence.",
		["icon"] = 136325,
		["zone-text-areaID"] = 719,	-- Blackfathom Deeps
		["coord"] = { 14.0, 11.1, MAP.ASHENVALE },
		["mapID"] = MAP.BLACKFATHOM_DEEPS,
		["lvl"] = 19,
		["groups"] = {
			n(ZONE_DROPS, {
				i(1454),	-- Axe of the Enforcer
				i(3414),	-- Crested Scepter
				i(3413),	-- Doomspike
				i(2567),	-- Evocator's Blade
				i(1481),	-- Grimclaw
				i(3416),	-- Martyr's Chain
				i(3417),	-- Onyx Claymore
				i(1491),	-- Ring of Precision
				i(2034),	-- Scholarly Robes
				i(2271),	-- Staff of the Blessed Seer
				i(3415),	-- Staff of the Friar
				i(1486),	-- Tree Bark Jacket
			}),
			n(QUESTS, {
				q(6564, {	-- Allegiance to the Old Gods (1/2)
					["description"] = "For this to drop, you need to be on the Essence of Aku'Mai quest.",
					["sourceQuest"] = 6563,	-- The Essence of Aku'Mai [Pre-CATA]
					["provider"] = { "i", 16790 },	-- Damp Note
					["races"] = HORDE_ONLY,
					["cr"] = 4802,	-- Blackfathom Tide Priestess
					["lvl"] = 17,
				}),
				q(6565, {	-- Allegiance to the Old Gods (2/2)
					["sourceQuest"] = 6564,	-- Allegiance to the Old Gods (1/2)
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Lorgus Jett slain
							["provider"] = { "n", 12902 },	-- Lorgus Jett
						}),
						i(17695),	-- Chestnut Mantle
						i(17694),	-- Band of the Fist
					},
				}),
				q(908, {	-- Amongst the Ruins -- Might not exist //Braghe
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/1 Fathom Core
							["provider"] = { "i", 16762 },	-- Fathom Core
						}),
					},
				}),
				q(6921, {	-- Amongst the Ruins
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/1 Fathom Core
							["provider"] = { "i", 16762 },	-- Fathom Core
						}),
					},
				}),
				q(6922, {	-- Baron Aquanis
					["provider"] = { "i", 16782 },	-- Strange Water Globe
					["maps"] = { MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						i(16886),	-- Outlaw Sabre
						i(16887),	-- Witch's Finger
					},
				}),
				q(1200, {	-- Blackfathom Villainy (A)
					["sourceQuest"] = 1198,	-- In Search of Thaelrid
					["qg"] = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kelris
							["provider"] = { "i", 5881 },	-- Head of Kelris
							["cr"] = 4832,	-- Twilight Lord Kelris
						}),
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
						i(270031, {	-- Dark Ritual Leggings
							["timeline"] = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(6561, {	-- Blackfathom Villainy (H)
					["qg"] = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					["maps"] = { MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kelris
							["provider"] = { "i", 5881 },	-- Head of Kelris
							["cr"] = 4832,	-- Twilight Lord Kelris
						}),
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
						i(270031, {	-- Dark Ritual Leggings
							["timeline"] = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(1198, {	-- In Search of Thaelrid
					["description"] = "This quest is also available to Horde, though the questgiver is a bit out of the way. (And, of course, it doesn't grant the Darnassus rep.)",
					["qg"] = 4786,	-- Dawnwatcher Shaedlass <The Argent Dawn>
					["coord"] = { 28.7, 52.1, MAP.DARNASSUS },
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(971, {	-- Knowledge in the Deeps
					["sourceQuest"] = 968,	-- The Powers Below
					["qg"] = 2786,	-- Gerrig Bonegrip
					["coord"] = { 50.8, 5.6, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Lorgalis Manuscript
							["providers"] = {
								{ "i", 5359 },	-- Lorgalis Manuscript
								{ "o", 13949 },	-- Pitted Iron Chest
							},
							["description"] = "Guarded by a few Naga in the underwater room directly to the right of Ghamoo-ra.",
						}),
						i(6743),	-- Sustaining Ring
					},
				}),
				q(1275, {	-- Researching the Corruption
					["sourceQuest"] = 3765,	-- The Corruption Abroad
					["qg"] = 8997,	-- Gershala Nightwhisper
					["coord"] = { 38.3, 43.0, MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/8 Corrupted Brain Stem
							["provider"] = { "i", 5952 },	-- Corrupted Brain Stem
							["crs"] = {
								4807,	-- Blackfathom Myrmidon
								4803,	-- Blackfathom Oracle
								4805,	-- Blackfathom Sea Witch
								4802,	-- Blackfathom Tide Priestess
								4799,	-- Fallenroot Hellcaller
								4789,	-- Fallenroot Rogue
								4788,	-- Fallenroot Satyr
								4798,	-- Fallenroot Shadowstalker
								4831,	-- Lady Sarevess
							},
						}),
						i(7003),	-- Beetle Clasps
						i(7004),	-- Prelacy Cape
						i(270021, {	-- Staghide Armguards
							["timeline"] = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(3765, {	-- The Corruption Abroad
					["qg"] = 4984,	-- Argos Nightwhisper
					["coord"] = { 36.2, 67.6, MAP.STORMWIND_CITY },
					["maps"] = { MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6563, {	-- The Essence of Aku'Mai
					["sourceQuest"] = 6562,	-- Trouble in the Deeps
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/20 Sapphire of Aku'Mai
							["providers"] = {
								{ "i",  16784 },	-- Sapphire of Aku'Mai
								{ "o", 178184 },	-- Sapphire of Aku'Mai
								{ "o", 178185 },	-- Sapphire of Aku'Mai
								{ "o", 178186 },	-- Sapphire of Aku'Mai
							},
						}),
					},
				}),
				q(6562, {	-- Trouble in the Deeps
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.3, 64.4, MAP.STONETALON_MOUNTAINS },
					["maps"] = { MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(1199, {	-- Twilight Falls
					["qg"] = 4784,	-- Argent Guard Manados <The Argent Dawn>
					["coord"] = { 38.3, 43.0, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Pendant
							["provider"] = { "i", 5879 },	-- Twilight Pendant
							["crs"] = {
								4809,	-- Twilight Acolyte
								4811,	-- Twilight Aquamancer
								4814,	-- Twilight Elementalist
								4812,	-- Twilight Loreseeker
								4810,	-- Twilight Reaver
								4813,	-- Twilight Shadowmage
							},
						}),
						i(7000),	-- Heartwood Girdle
						i(6998),	-- Nimbus Boots
						i(270025, {	-- Silvered Gauntlets
							["timeline"] = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
			}),
			n(TREASURES, {
				o(19018, {	-- Giant Clam
					i(2143),	-- Cuirboulli Boots (confirmed - Danny Donkey)
					i(5500),	-- Iridescent Pearl
					i(5504),	-- Tangy Clam Meat
				}),
			}),
			n(4887, {	-- Ghamoo-ra
				i(6908),	-- Ghamoo-ra's Bind
				i(273839, {	-- Spiked Shell Band
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(6907),	-- Tortoise Armor
			}),
			n(4831, {	-- Lady Sarevess
				i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(11121),	-- Darkwater Talwar
				i(888),		-- Naga Battle Gloves
				i(3078),	-- Naga Heartpiercer
			}),
			o(177964, {	-- Fathom Stone
				["description"] = "In the water below the Twilight bridge.\n\nWARNING: Spawns Baron Aquanis.",
				["sourceQuest"] = 6921,	-- Amongst the Ruins
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(16762),	-- Fathom Core
					n(12876, {	-- Baron Aquanis
						["description"] = "This boss can only be summoned by Horde players on the Amongst the Ruins quest.",
						["groups"] = {
							i(16782),	-- Strange Water Globe
						},
					}),
				},
			}),
			n(6243, {	-- Gelihast
				i(6906),	-- Algae Fists
				i(1470),	-- Murloc Skin Bag
				i(6905),	-- Reef Axe
				i(273840, {	-- Cursed Murloc Eye
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(12902, {	-- Lorgus Jett
				i(273843, {	-- Fallenroot Longbow
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273841, {	-- Twilight Maul
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273842, {	-- Treacherous Treads
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(4830, {	-- Old Serra'kis
				i(6902),	-- Bands of Serra'kis
				i(6904),	-- Bite of Serra'kis
				i(6901),	-- Glowing Thresher Cape
			}),
			n(4832, {	-- Twilight Lord Kelris
				i(6903),	-- Gaze Dreamer Pants
				i(1155),	-- Rod of the Sleepwalker
				i(273846, {	-- Twilight Lord Girdle
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(4829, {	-- Aku'mai
				i(6910),	-- Leech Pants
				i(6911),	-- Moss Cinch
				i(6909),	-- Strike of the Hydra
			}),
		},
	}),
});
