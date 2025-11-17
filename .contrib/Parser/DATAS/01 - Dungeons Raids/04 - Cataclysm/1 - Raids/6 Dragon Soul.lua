-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, inst(187, bubbleDownSelf({ ["timeline"] = { ADDED_4_3_0 }, }, {	-- Dragon Soul
		["mapID"] = 409,	-- Wyrmrest Temple [Starting Area]
		["coords"] = {
			{ 64.7, 49.9, TANARIS },	-- entrance to CoT
			{ 61.9, 27.2, CAVERNS_OF_TIME },	-- actual raid entrance
		},
		["maps"] = {
			412,	-- Dragon Soul: Eye of Eternity
			415,	-- Dragon Soul: The Maelstrom
			410,
			411,
			413,
			414,
		},
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = 85,
		["groups"] = {
			header(HEADERS.Achievement, 6181,	-- Fangs of the Father
			bubbleDownSelf({ ["classes"] = { ROGUE } }, {
				["isRaid"] = true,
				["lvl"] = 85,
				["groups"] = {
					q(29802, {	-- A Hidden Message
						["description"] = "Yes, you actually have to pay the 10 000 gold to progress on this questline.",
						["sourceQuest"] = 29801,	-- Proving Your Worth
						["qg"] = 55476,	-- Lord Afrasastrasz
						["coord"] = { 50.2, 59.6, 409 },	-- Dragon Soul
						["cost"] = {
							{ "i", 74752, 1 },	-- Solved Cipher
						},
						["groups"] = {
							i(74749, {	-- Charging Decoder Ring
								["description"] = "Just log out for 12 hours. Read a book or something!",
								["qgs"] = {
									57801,	-- Thaumaturge Altha
									57800,	-- Thaumaturge Rafir
								},
								["coords"] = {
									{ 57.6, 65.6, ORGRIMMAR },	-- Thaumaturge Altha
									{ 50.6, 61.0, STORMWIND_CITY },	-- Thaumaturge Rafir
								},
								["cost"] = {
									{ "g", 100000000 },	-- 10k gold
									{ "i", 74246, 1 },	-- Cryptomancer's Decoder Ring
								},
								["groups"] = {
									i(74748),	-- Charged Decoder Ring
								},
							}),
							i(74750, {	-- Singed Cipher
								["qg"] = 55488,	-- Corastrasza
								["coord"] = { 29.0, 25.0, TWILIGHT_HIGHLANDS },
								["cost"] = {
									{ "i", 74748, 1 },	-- Charged Decoder Ring
								},
								["groups"] = {
									i(74752),	-- Solved Cipher
								},
							}),
						},
					}),
					q(30093, {	-- Assassinate Creed
						["sourceQuest"] = 30092,	-- Our Man in Gilneas
						["qg"] = 57770,	-- Zazzo Twinklefingers
						["coord"] = { 70.0, 40.8, RUINS_OF_GILNEAS },
						["cr"] = 57802,	-- Lord Hiram Creed <Warlord of the Blackhowl>
					}),
					q(30109, {	-- Blood of the Betrayer
						["sourceQuest"] = 30108,	-- Our Man in Karazhan
						["qg"] = 57770,	-- Zazzo Twinklefingers
						["coord"] = { 52.6, 77.6, DEADWIND_PASS },
						["groups"] = {
							objective(1, {	-- 0/1 Vial of Black Dragonsblood
								["provider"] = { "i", 77954 },	-- Vial of Black Dragonsblood
								["coord"] = { 54.0, 91.4, DEADWIND_PASS },
								["cr"] = 57910,	-- Nalice <Leader of the Blackwyrm Cult>
							}),
						},
					}),
					q(30107, {	-- Cluster Clutch
						["sourceQuest"] = 30106,	-- The Deed is Done
						["qg"] = 57777,	-- Wrathion <The Black Prince>
						["coord"] = { 71.4, 45.6, HILLSBRAD_FOOTHILLS },
						["cost"] = {
							{ "i", 77951, 333 },	-- Shadowy Gem
						},
					}),
					q(30092, {	-- Our Man in Gilneas
						["sourceQuest"] = 29847,	-- To Catch a Thief
						["qg"] = 57777,	-- Wrathion <The Black Prince>
						["coord"] = { 71.4, 45.6, HILLSBRAD_FOOTHILLS },
					}),
					q(30108, {	-- Our Man in Karazhan
						["sourceQuest"] = 30107,	-- Cluster Clutch
						["qg"] = 57777,	-- Wrathion <The Black Prince>
						["coord"] = { 71.4, 45.6, HILLSBRAD_FOOTHILLS },
					}),
					q(30118, {	-- Patricide
						["sourceQuest"] = 30116,	-- Sharpening Your Fangs
						["qg"] = 57777,	-- Wrathion <The Black Prince>
						["coord"] = { 71.4, 45.6, HILLSBRAD_FOOTHILLS },
						["groups"] = {
							ach(6181),	-- Fangs of the Father
							i(77949),	-- Golad, Twilight of Aspects
							i(77950),	-- Tiriosh, Nightmare of Ages
						},
					}),
					q(29801, {	-- Proving Your Worth
						["qg"] = 55476,	-- Lord Afrasastrasz
						["coord"] = { 50.2, 59.6, 409 },	-- Dragon Soul
					}),
					q(30116, {	-- Sharpening Your Fangs
						["description"] = "This quest requires you to turn in 60 unopened Elementium Gem Clusters.",
						["sourceQuest"] = 30113,	-- Victory in the Depths
						["qg"] = 57777,	-- Wrathion <The Black Prince>
						["coord"] = { 71.4, 45.6, HILLSBRAD_FOOTHILLS },
						["cost"] = {
							{ "i", 77952, 60 },	-- Elementium Gem Cluster
						},
					}),
					q(30106, {	-- The Deed is Done
						["sourceQuest"] = 30093,	-- Assassinate Creed
						["qg"] = 57770,	-- Zazzo Twinklefingers
						["coord"] = { 70.0, 40.8, RUINS_OF_GILNEAS },
						["groups"] = {
							i(77945),	-- Fear
							i(77946),	-- Vengeance
						},
					}),
					q(29847, {	-- To Catch a Thief
						["sourceQuest"] = 29934,	-- To Ravenholdt
						["qg"] = 56375,	-- Mostrasz
						["coord"] = { 67.8, 45.2, HILLSBRAD_FOOTHILLS },
					}),
					q(29934, {	-- To Ravenholdt
						["sourceQuest"] = 29802,	-- A Hidden Message
						["qg"] = 55488,	-- Corastrasza
						["coord"] = { 29.0, 25.0, TWILIGHT_HIGHLANDS },
					}),
					q(30113, {	-- Victory in the Depths
						["sourceQuest"] = 30109,	-- Blood of the Betrayer
						["qg"] = 57770,	-- Zazzo Twinklefingers
						["coord"] = { 52.6, 77.6, DEADWIND_PASS },
						["groups"] = {
							i(77947),	-- The Sleeper
							i(77948),	-- The Dreamer
						},
					}),
				},
			})),
			n(ACHIEVEMENTS, {
				ach(6106, {	-- Siege of Wyrmrest Temple
					crit(18445, {	-- Morchok
						["_encounter"] = { 311, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18446, {	-- Warlord Zon'ozz
						["_encounter"] = { 324, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18447, {	-- Yor'sahj the Unsleeping
						["_encounter"] = { 325, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18448, {	-- Hagara the Stormbinder
						["_encounter"] = { 317, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6107, {	-- Fall of Deathwing
					crit(18449, {	-- Ultraxion
						["_encounter"] = { 331, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18450, {	-- Warmaster Blackthorn
						["_encounter"] = { 332, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18451, {	-- Spine of Deathwing
						["_encounter"] = { 318, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(18452, {	-- Madness of Deathwing
						["_encounter"] = { 333, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6169, {	-- Glory of the Dragon Soul Raider
					["sym"] = {{"meta_achievement",
						6109,	-- Heroic: Morchok
						6110,	-- Heroic: Warlord Zon'ozz
						6111,	-- Heroic: Yor'sahj the Unsleeping
						6112,	-- Heroic: Hagara the Stormbinder
						6113,	-- Heroic: Ultraxion
						6114,	-- Heroic: Warmaster Blackhorn
						6174,	-- Don't Stand So Close to Me
						6129,	-- Taste the Rainbow!
						6128,	-- Ping Pong Champion
						6084,	-- Minutes to Midnight
						6105,	-- Deck Defender
						6133,	-- Maybe He'll Get Dizzy...
						6180,	-- Chromatic Champion
					}},
					["groups"] = {
						i(77068),	-- Twilight Harbinger (MOUNT!)
					},
				}),
				ach(11756, {["timeline"] = {ADDED_7_2_0}}),	-- Wardrobe of the Old Gods (Dragon Soul)
				ach(6123),	-- Dragon Soul Guild Run
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					55265,	-- Morchok
					55308,	-- Warlord Zon'ozz
					55312,	-- Yor'sahj the Unsleeping
					55689,	-- Hagara the Stormbinder
					55294,	-- Ultraxion
					56427,	-- Warmaster Blackhorn
				},
				["groups"] = {
					currency(614, {	-- Mote of Darkness
						["description"] = "Used to buy uncut gems contained in Crystalline Geode from vendor Dasnurimi in Wyrmrest Temple.",
					}),
				},
			}),
			n(VENDORS, {
				n(58153, {	-- Dasnurimi <Geologist & Conservator>
					i(78890, {	-- Crystalline Geode
						["description"] = "Contains random uncut Cataclysm gems.",
						["cost"] = {{ "c", 614, 1 }},	-- Mote of Darkness
					}),
					i(78891, {	-- Elementium-coated Geode
						["cost"] = {{ "c", 615, 1 }},	-- Essence of Corrupted Deathwing
					}),
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.ALL, {
				cr(55265, e(311, {	-- Morchok
					-- Placeholder for criteria
				})),
				cr(55308, e(324, {	-- Warlord Zon'ozz
					-- Placeholder for criteria
				})),
				cr(55312, e(325, {	-- Yor'sahj the Unsleeping
				--	i(152979, {	-- Faceless Mindlasher (PET!)
				--		["timeline"] = { ADDED_7_3_0 },
				--	}),
				})),
				cr(55689, e(317, {	-- Hagara the Stormbinder
					-- Placeholder for criteria
				})),
				cr(55294, e(331, {	-- Ultraxion
					-- Placeholder for criteria
				})),
				cr(56427, e(332, {	-- Warmaster Blackthorn
					-- Placeholder for criteria
				})),
				cr(53879, e(318, {	-- Spine of Deathwing
				--	i(152980, {	-- Corrupted Blood (PET!)
				--		["timeline"] = { ADDED_7_3_0 },
				--	}),
				--	i(122198, {	-- Music Roll: The Shattering [Note: Crieve got on stream]
				--		["timeline"] = { ADDED_6_1_0 },
				--	}),
				})),
				cr(56173, e(333, {	-- Madness of Deathwing
				--	i(152981, {	-- Unstable Tendril (PET!)
				--		["timeline"] = { ADDED_7_3_0 },
				--	}),
				--	i(122198, {	-- Music Roll: The Shattering [Confirmed in #errors]
				--		["timeline"] = { ADDED_6_1_0 },
				--	}),
					-- #if AFTER 9.1.5
					currency(615, {	-- Essence of Corrupted Deathwing
						["description"] = "Used to buy random epic uncut gems contained in Elementium-Coated Geode from vendor Dasnurimi in Wyrmrest Temple.",
					}),
					-- #endif
				})),
			}),
			-- #if NOT ANYCLASSIC
			d(DIFFICULTY.LEGACY_RAID.FINDER, {
				-- #if AFTER 6.0.1.18322
				["crs"] = { 80675 },	-- Auridormi <Raid Finder Guardian>
				["coord"] = { 63.0, 27.6, CAVERNS_OF_TIME },
				-- #endif
				["ignoreBonus"] = true,
				["groups"] =
				{
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							55265,	-- Morchok
							55308,	-- Warlord Zon'ozz
							55312,	-- Yor'sahj the Unsleeping
							55689,	-- Hagara the Stormbinder
							55294,	-- Ultraxion
							56427,	-- Warmaster Blackhorn
						},
						["groups"] = {
							i(78869),	-- Crown of the Corrupted Conqueror
							i(78870),	-- Crown of the Corrupted Protector
							i(78868),	-- Crown of the Corrupted Vanquisher
							i(78875),	-- Shoulders of the Corrupted Conqueror
							i(78876),	-- Shoulders of the Corrupted Protector
							i(78874),	-- Shoulders of the Corrupted Vanquisher
							i(78863, {	-- Chest of the Corrupted Conqueror
								-- #if AFTER LEGION
								["description"] = "Paladin Completionists will want to take this item to the vendor to get the specific item they want. Right-clicking can award the Holy piece regardless of your spec.",
								-- #endif
							}),
							i(78864),	-- Chest of the Corrupted Protector
							i(78862),	-- Chest of the Corrupted Vanquisher
							i(78866),	-- Gauntlets of the Corrupted Conqueror
							i(78867),	-- Gauntlets of the Corrupted Protector
							i(78865),	-- Gauntlets of the Corrupted Vanquisher
							i(78872),	-- Leggings of the Corrupted Conqueror
							i(78873),	-- Leggings of the Corrupted Protector
							i(78871),	-- Leggings of the Corrupted Vanquisher
							i(78497),	-- Breathstealer Band
							i(78498),	-- Hardheart Ring
							i(78495),	-- Infinite Loop
							i(78494),	-- Seal of Primordial Shadow
							i(78496),	-- Signet of Suturing
							i(77982),	-- Bone-Link Fetish
							i(77980),	-- Cunning of the Cruel
							i(77983),	-- Indomitable Pride
							i(77979),	-- Vial of Shadows
							i(77981),	-- Windward Heart
						},
					}),
					header(HEADERS.Achievement, 6106, {	-- Siege of Wyrmrest Temple
						cr(55265, e(311, {	-- Morchok
							i(78379),	-- Hand of Morchok
							i(78383),	-- Vagaries of Time
							i(78382),	-- Petrified Fungal Heart
							i(78378),	-- Brackenshell Shoulderplates
							i(78381),	-- Mosswrought Shoulderguards
							i(78375),	-- Underdweller's Spaulders
							i(78380),	-- Robe of Glowing Stone
							i(78384),	-- Mycosynth Wristguards
							i(78377),	-- Rockhide Bracers
							i(78376),	-- Sporebeard Gauntlets
							i(78385),	-- Girdle of Shattered Stone
							i(78386),	-- Pillarfoot Greaves
							-- #if BEFORE MOP
							i(78374, {	-- Razor Saronite Chip
								["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
							}),
							-- #endif
						})),
						cr(55308, e(324, {	-- Warlord Zon'ozz
							i(78399),	-- Finger of Zon'ozz
							i(78394),	-- Horrifying Horn Arbalest (not listed on drop table on wowhead)
							i(78397),	-- Graveheart Bracers
							i(78400),	-- Grotesquely Writhing Bracers
							i(78395),	-- Belt of Flayed Skin
							i(78398),	-- Cord of the Slain Champion
							i(78396),	-- Treads of Crushed Flesh
							i(77969),	-- Seal of the Seven Signs [Dropped for Lucetia]
						})),
						cr(55312, e(325, {	-- Yor'sahj the Unsleeping
							i(78409),	-- Experimental Specimen Slicer
							i(78407),	-- Spire of Coagulated Globules
							i(78410),	-- Scalpel of Unrelenting Agony (not listed on drop table on wowhead)
							i(78412),	-- Heartblood Wristplates
							i(78408),	-- Interrogator's Bloody Footpads
							i(78411),	-- Mindstrainer Treads
							i(77971),	-- Insignia of the Corrupted Mind
							i(77970),	-- Soulshifter Vortex
							i(152979, {	-- Faceless Mindlasher (PET!)
								["timeline"] = { ADDED_7_3_0 },
							}),
						})),
						cr(55689, e(317, {	-- Hagara the Stormbinder
							i(78426),	-- Lightning Rod
							i(78422),	-- Electrowing Dagger
							i(78425),	-- Bracers of the Banished
							i(78428),	-- Girdle of the Grotesque
							i(78424),	-- Runescriven Demon Collar
							i(78423),	-- Treads of Dormant Dreams
							i(78427),	-- Ring of the Raven
							i(78421),	-- Signet of Grasping Mouths
						})),
					}),
					header(HEADERS.Achievement, 6107, {	-- Fall of Deathwing
						cr(55294, e(331, {	-- Ultraxion
							i(78437),	-- Morningstar of Heroic Will
							i(78441),	-- Ledger of Revolting Rituals
							i(78443),	-- Imperfect Specimens 27 and 28
							i(78438),	-- Bracers of Looming Darkness
							i(78444),	-- Dragonfracture Belt
							i(78439),	-- Stillheart Warboots
							i(78442),	-- Treads of Sordid Screams
							i(77972),	-- Creche of the Final Dragon
							i(78440),	-- Curled Twilight Claw
						})),
						cr(56427, e(332, {	-- Warmaster Blackthorn
							i(78453),	-- Ataraxis, Cudgel of the Warmaster
							i(78459),	-- Visage of the Destroyer
							i(78456),	-- Blackhorn's Mighty Bulwark
							i(78458),	-- Timepiece of the Bronze Flight
							i(78454),	-- Shadow Wing Armbands
							i(78455),	-- Belt of the Beloved Companion
							i(78460),	-- Goriona's Collar
							i(78457),	-- Janglespur Jackboots
							i(77973),	-- Starcatcher Compass
						})),
						cr(53879, e(318, {	-- Spine of Deathwing
							i(78470),	-- Backbreaker Spaulders
							i(78466),	-- Gloves of Liquid Smoke
							i(78469),	-- Gauntlets of the Golden Thorn
							i(78467),	-- Molten Blood Footpads
							i(78468),	-- Belt of Shattered Elementium
							i(77977),	-- Eye of Unmaking
							i(77976),	-- Heart of Unliving
							i(77978),	-- Resolve of Undying
							i(77975),	-- Will of Unbinding
							i(77974),	-- Wrath of Unchaining
							i(152980, {	-- Corrupted Blood (PET!)
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(122198, {	-- Music Roll: The Shattering [Note: Crieve got on stream]
								["timeline"] = { ADDED_6_1_0 },
							}),
						})),
						cr(56173, e(333, {	-- Madness of Deathwing
							i(78482),	-- Kiril, Fury of Beasts
							i(78487),	-- Gurthalak, Voice of the Deeps
							i(78483),	-- Blade of the Unmaker
							i(78485),	-- Maw of the Dragonlord
							i(78481),	-- No'Kaled, the Elements of Death
							i(78484),	-- Rathrak, the Poisonous Mind
							i(78488),	-- Souldrinker
							i(78486),	-- Ti'tahk, the Steps of Time
							i(78480),	-- Vishanka, Jaws of the Earth
							i(89810, {	-- Bounty of a Sundered Land
								["timeline"] = { ADDED_5_0_4 },
							}),
							i(152981, {	-- Unstable Tendril (PET!)
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(122198, {	-- Music Roll: The Shattering [Confirmed in #errors]
								["timeline"] = { ADDED_6_1_0 },
							}),
						})),
					}),
				}
				,
			}),
			-- #endif
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				["ignoreBonus"] = true,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							55265,	-- Morchok
							55308,	-- Warlord Zon'ozz
							55312,	-- Yor'sahj the Unsleeping
							55689,	-- Hagara the Stormbinder
							55294,	-- Ultraxion
							56427,	-- Warmaster Blackthorn
						},
						["groups"] = {
							i(71998, {	-- Essence of Destruction
								["description"] = "Drops commonly from Dragon Soul bosses.",
							}),
							i(77952, {	-- Elementium Gem Cluster
								i(77951),	-- Shadowy Gem
							}),
						},
					}),
					n(ZONE_DROPS, {
						i(72006),	-- Pattern: Bladeshadow Leggings (RECIPE!)
						i(72010),	-- Pattern: Bladeshadow Wristguards (RECIPE!)
						i(72008),	-- Pattern: Bracers of Flowing Serenity (RECIPE!)
						i(72011),	-- Pattern: Bracers of the Hunter-Killer (RECIPE!)
						i(72004),	-- Pattern: Bracers of Unconquered Power (RECIPE!)
						i(72005),	-- Pattern: Deathscale Leggings (RECIPE!)
						i(72003),	-- Pattern: Dreamwraps of the Light (RECIPE!)
						i(72002),	-- Pattern: Lavaquake Legwraps (RECIPE!)
						i(71999),	-- Pattern: Leggings of Nature's Champion (RECIPE!)
						i(72007),	-- Pattern: Rended Earth Leggings (RECIPE!)
						i(72009),	-- Pattern: Thundering Deathscale Wristguards (RECIPE!)
						i(72000),	-- Pattern: World Mender's Pants (RECIPE!)
						i(72015),	-- Plans: Bracers of Destructive Strength (RECIPE!)
						i(72013),	-- Plans: Foundations of Courage (RECIPE!)
						i(72001),	-- Plans: Pyrium Legplates of Purified Evil (RECIPE!)
						i(72014),	-- Plans: Soul Redeemer Bracers (RECIPE!)
						i(72016),	-- Plans: Titanguard Wristplates (RECIPE!)
						i(72012),	-- Plans: Unstoppable Destroyer's Legplates (RECIPE!)
					}),
					cr(55265, e(311, {	-- Morchok
						ach(6174),	-- Don't Stand So Close to Me
					})),
					cr(55308, e(324, {	-- Warlord Zon'ozz
						ach(6128, {	-- Ping Pong Champion
							-- #if AFTER 6.0.3
							["description"] = "Can be soloed without a pet to hold the boss, the ball occationaly have an immune phase where it can pass through the boss without losing the strike.",
							-- #endif
						}),
					})),
					cr(55312, e(325, {	-- Yor'sahj the Unsleeping
						ach(6129, {	-- Taste the Rainbow!
							["description"] = "The oozes you need for the achievement spawns through the boss fight. Four colours will spawn each time, and the remaining oozes becomes immune when the first is killed. This is fine, just make sure two of the remaining oozes matches a criteria.",
							["groups"] = {
								crit(18495, {	-- Black and Yellow
									["crs"] = {
										55867,	-- Dark Globule <Blood of Shu'ma>
										55864,	-- Glowing Globule <Blood of Shu'ma>
									},
								}),
								crit(18496, {	-- Red and Green
									["crs"] = {
										55865,	-- Crimson Globule <Blood of Shu'ma>
										55862,	-- Acidic Globule <Blood of Shu'ma>
									},
								}),
								crit(18497, {	-- Black and Blue
									["crs"] = {
										55867,	-- Dark Globule <Blood of Shu'ma>
										55866,	-- Cobalt Globule <Blood of Shu'ma>
									},
								}),
								crit(18498, {	-- Purple and Yellow
									["crs"] = {
										55863,	-- Shadowed Globule <Blood of Shu'ma>
										55864,	-- Glowing Globule <Blood of Shu'ma>
									},
								}),
							},
						}),
						i(152979, {	-- Faceless Mindlasher (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
					})),
					cr(55689, e(317, {	-- Hagara the Stormbinder
						ach(6175, {	-- Holding Hands
							-- #if AFTER 6.0.3
							["description"] = "Can be soloed with a pet or with help from another player. Requires 10 player mode. Get Hagara down to past 85% health, and kill the elemental spawn near a totem to charge it.\n\n|CFFFF0000Do not try to this in 25 player mode, you will get stuck unless you have a handful of other players with you!|r",
							-- #endif
						}),
						i(74246, {	-- Cryptomancer's Decoder Ring
							["description"] = "You need to pickpocket this from the boss.",
							["b"] = 1,	-- BoP
						}),
					})),
					cr(55294, e(331, {	-- Ultraxion
						ach(6084),	-- Minutes to Midnight
						i(78919),	-- Experiment 12-B (MOUNT!)
					})),
					cr(56427, e(332, {	-- Warmaster Blackthorn
						ach(6105, {	-- Deck Defender
						-- #if AFTER 6.0.3
						["description"] = "Kill the Twilight Assault Drakes fast and soak any Twilight Barrage.\nUse a macro like:\n/tar Twilight Assault Drake\n/cast (whatever instant ranged ability you have)",
						-- #endif
						}),
					})),
					cr(53879, e(318, {	-- Spine of Deathwing
						ach(6133),	-- Maybe He'll Get Dizzy...
						i(152980, {	-- Corrupted Blood (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(122198, {	-- Music Roll: The Shattering [Note: Crieve got on stream]
							["timeline"] = { ADDED_6_1_0 },
						}),
					})),
					cr(56173, e(333, {	-- Madness of Deathwing
						ach(6180, {	-- Chromatic Champion
							["description"] = "Facing inwards towards the Maelstrom, The aspects will be positioned on the following platforms when the event starts:\nYsera on the start platform.\nKalecgos on the right.\nNozdormu on the left.\nAlextraxa on the far left.\nYou can get a movement buff prior to event start by moving between the platforms, which helps to reach Alextraza in time. Make sure the aspect is properly assaulted to get credit.",
							["groups"] = {
								crit(18658, {	-- Alexstrasza Assaulted First
									["provider"] = { "n", 56099 },	-- Alexstrasza
								}),
								crit(18659, {	-- Kalecgos Assaulted First
									["provider"] = { "n", 56101 },	-- Kalecgos
								}),
								crit(18660, {	-- Nozdormu Assaulted First
									["provider"] = { "n", 56102 },	-- Nozdormu
								}),
								crit(18661, {	-- Ysera Assaulted First
									["provider"] = { "n", 56100 },	-- Ysera
								}),
							},
						}),
						ach(6177, {	-- Destroyer's End
							title(196),	-- , Destroyer's End
						}),
						i(77067),	-- Blazing Drake (MOUNT!)
						i(78352),	-- Fragment of Deathwing's Jaw
						i(152981, {	-- Unstable Tendril (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(122198, {	-- Music Roll: The Shattering [Confirmed in #errors]
							["timeline"] = { ADDED_6_1_0 },
						}),
						-- #if BEFORE 9.1.5
						currency(615, {	-- Essence of Corrupted Deathwing
							["description"] = "Used to buy random epic uncut gems contained in Elementium-Coated Geode from vendor Dasnurimi in Wyrmrest Temple.",
						}),
						-- #endif
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				["ignoreBonus"] = true,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							55265,	-- Morchok
							55308,	-- Warlord Zon'ozz
							55312,	-- Yor'sahj the Unsleeping
							55689,	-- Hagara the Stormbinder
							55294,	-- Ultraxion
							56427,	-- Warmaster Blackthorn
						},
						["groups"] = {
							i(77230),	-- Breathstealer Band
							i(77232),	-- Hardheart Ring
							i(77228),	-- Infinite Loop
							i(77231),	-- Seal of Primordial Shadow
							i(77229),	-- Signet of Suturing
							i(77210),	-- Bone-Link Fetish
							i(77208),	-- Cunning of the Cruel
							i(77211),	-- Indomitable Pride
							i(77207),	-- Vial of Shadows
							i(77209),	-- Windward Heart
						},
					}),
					n(ZONE_DROPS, {
						i(78886),	-- Belt of Ghostly Graces
						i(78885),	-- Dragoncarver Belt
						i(77938),	-- Dragonfire Orb
						i(78884),	-- Girdle of Fungal Dreams
						i(78887),	-- Girdle of Soulful Mending
						i(78882),	-- Nightblind Cinch
						i(72004),	-- Pattern: Bracers of Unconquered Power (RECIPE!)
						i(72003),	-- Pattern: Dreamwraps of the Light (RECIPE!)
						i(72002),	-- Pattern: Lavaquake Legwraps (RECIPE!)
						i(72000),	-- Pattern: World Mender's Pants (RECIPE!)
						i(77192),	-- Ruinblaster Shotgun
						i(78879),	-- Sash of Relentless Truth
						i(78878),	-- Spine of the Thousand Cuts
						i(78888),	-- Waistguard of Bleeding Bone
						i(78889),	-- Waistplate of the Desecrated Future
					}),
					cr(55265, e(311, {	-- Morchok
						i(77212),	-- Hand of Morchok
						i(77214),	-- Vagaries of Time
						i(77262),	-- Petrified Fungal Heart
						i(77268),	-- Brackenshell Shoulderplates
						i(77267),	-- Mosswrought Shoulderguards
						i(77271),	-- Underdweller's Spaulders
						i(77263),	-- Robe of Glowing Stone
						i(77261),	-- Mycosynth Wristguards
						i(77270),	-- Rockhide Bracers
						i(77269),	-- Sporebeard Gauntlets
						i(77266),	-- Girdle of Shattered Stone
						i(77265),	-- Pillarfoot Greaves
						-- #if BEFORE MOP
						i(77213, {	-- Razor Saronite Chip
							["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
						}),
						-- #endif
					})),
					cr(55308, e(324, {	-- Warlord Zon'ozz
						i(78183),	-- Gauntlets of the Corrupted Conqueror
						i(78178),	-- Gauntlets of the Corrupted Protector
						i(78173),	-- Gauntlets of the Corrupted Vanquisher
						i(77216),	-- Finger of Zon'ozz
						i(77215),	-- Horrifying Horn Arbalest
						i(77258),	-- Graveheart Bracers
						i(77257),	-- Grotesquely Writhing Bracers
						i(77260),	-- Belt of Flayed Skin
						i(77255),	-- Cord of the Slain Champion
						i(77259),	-- Treads of Crushed Flesh
						i(77204),	-- Seal of the Seven Signs
					})),
					cr(55312, e(325, {	-- Yor'sahj the Unsleeping
						i(78181),	-- Leggings of the Corrupted Conqueror
						i(78176),	-- Leggings of the Corrupted Protector
						i(78171),	-- Leggings of the Corrupted Vanquisher
						i(77217),	-- Experimental Specimen Slicer
						i(77218),	-- Spire of Coagulated Globules
						i(77219),	-- Scalpel of Unrelenting Agony
						i(77253),	-- Heartblood Wristplates
						i(77254),	-- Interrogator's Bloody Footpads
						i(77252),	-- Mindstrainer Treads
						i(77203),	-- Insignia of the Corrupted Mind
						i(77206),	-- Soulshifter Vortex
					})),
					cr(55689, e(317, {	-- Hagara the Stormbinder
						i(78180),	-- Shoulders of the Corrupted Conqueror
						i(78175),	-- Shoulders of the Corrupted Protector
						i(78170),	-- Shoulders of the Corrupted Vanquisher
						i(77221),	-- Lightning Rod
						i(77220),	-- Electrowing Dagger
						i(77249),	-- Bracers of the Banished
						i(77248),	-- Girdle of the Grotesque
						i(77250),	-- Runescriven Demon Collar
						i(77251),	-- Treads of Dormant Dreams
						i(78012),	-- Ring of the Riven
						i(78011),	-- Signet of Grasping Mouths
					})),
					cr(55294, e(331, {	-- Ultraxion
						i(78184),	-- Chest of the Corrupted Conqueror
						i(78179),	-- Chest of the Corrupted Protector
						i(78174),	-- Chest of the Corrupted Vanquisher
						i(77223),	-- Morningstar of Heroic Will
						i(77245),	-- Ledger of Revolting Rituals
						i(77242),	-- Imperfect Specimens 27 and 28
						i(77247),	-- Bracers of Looming Darkness
						i(77244),	-- Dragonfracture Belt
						i(77246),	-- Stillheart Warboots
						i(77243),	-- Treads of Sordid Screams
						i(78013),	-- Curled Twilight Claw
						i(77205),	-- Creche of the Final Dragon
					})),
					cr(56427, e(332, {	-- Warmaster Blackthorn
						i(78182),	-- Crown of the Corrupted Conqueror
						i(78177),	-- Crown of the Corrupted Protector
						i(78172),	-- Crown of the Corrupted Vanquisher
						i(77224),	-- Ataraxis, Cudgel of the Warmaster
						i(77225),	-- Visage of the Destroyer
						i(77226),	-- Blackhorn's Mighty Bulwark
						i(77227),	-- Timepiece of the Bronze Flight
						i(77240),	-- Shadow Wing Armbands
						i(77241),	-- Belt of the Beloved Companion
						i(77239),	-- Goriona's Collar
						i(77234),	-- Janglespur Jackboots
						i(77202),	-- Starcatcher Compass
					})),
					cr(53879, e(318, {	-- Spine of Deathwing
						i(77236),	-- Backbreaker Spaulders
						i(77235),	-- Gauntlets of the Golden Thorn
						i(78357),	-- Gloves of Liquid Smoke
						i(77237),	-- Belt of Shattered Elementium
						i(77238),	-- Molten Blood Footpads
						i(77200),	-- Eye of Unmaking
						i(77199),	-- Heart of Unliving
						i(77201),	-- Resolve of Undying
						i(77198),	-- Will of Unbinding
						i(77197),	-- Wrath of Unchaining
					})),
					cr(56173, e(333, {	-- Madness of Deathwing
						i(77191),	-- Gurthalak, Voice of the Deeps
						i(77194),	-- Kiril, Fury of Beasts
						i(77190),	-- Ti'tahk, the Steps of Time
						i(77189),	-- Blade of the Unmaker
						i(77196),	-- Maw of the Dragonlord
						i(77188),	-- No'Kaled, the Elements of Death
						i(77195),	-- Rathrak, the Poisonous Mind
						i(77193),	-- Souldrinker
						i(78359),	-- Vishanka, Jaws of the Earth
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							55265,	-- Morchok
							55308,	-- Warlord Zon'ozz
							55312,	-- Yor'sahj the Unsleeping
							55689,	-- Hagara the Stormbinder
							55294,	-- Ultraxion
							56427,	-- Warmaster Blackthorn
						},
						["groups"] = {
							i(78492),	-- Breathstealer Band
							i(78493),	-- Hardheart Ring
							i(78490),	-- Infinite Loop
							i(78489),	-- Seal of Primordial Shadow
							i(78491),	-- Signet of Suturing
							i(78002),	-- Bone-Link Fetish
							i(78000),	-- Cunning of the Cruel
							i(78003),	-- Indomitable Pride
							i(77999),	-- Vial of Shadows
							i(78001),	-- Windward Heart
						},
					}),
					n(ZONE_DROPS, {
						["groups"] = {
							i(78886),	-- Belt of Ghostly Graces
							i(78885),	-- Dragoncarver Belt
							i(77938),	-- Dragonfire Orb
							i(78884),	-- Girdle of Fungal Dreams
							i(78887),	-- Girdle of Soulful Mending
							i(78882),	-- Nightblind Cinch
							i(77192),	-- Ruinblaster Shotgun
							i(78879),	-- Sash of Relentless Truth
							i(78878),	-- Spine of the Thousand Cuts
							i(78888),	-- Waistguard of Bleeding Bone
							i(78889),	-- Waistplate of the Desecrated Future
						},
					}),
					cr(55265, e(311, {	-- Morchok
						ach(6109),	-- Heroic: Morchok
						i(78371),	-- Hand of Morchok
						i(78363),	-- Vagaries of Time
						i(78364),	-- Petrified Fungal Heart
						i(78367),	-- Brackenshell Shoulderplates
						i(78366),	-- Mosswrought Shoulderguards
						i(78368),	-- Underdweller's Spaulders
						i(78365),	-- Robe of Glowing Stone
						i(78372),	-- Mycosynth Wristguards
						i(78373),	-- Rockhide Bracers
						i(78362),	-- Sporebeard Gauntlets
						i(78370),	-- Girdle of Shattered Stone
						i(78361),	-- Pillarfoot Greaves
						-- #if BEFORE MOP
						i(78369, {	-- Razor Saronite Chip
							["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
						}),
						-- #endif
					})),
					cr(55308, e(324, {	-- Warlord Zon'ozz
						ach(6110),	-- Heroic: Warlord Zon'ozz
						i(78853),	-- Gauntlets of the Corrupted Conqueror
						i(78854),	-- Gauntlets of the Corrupted Protector
						i(78855),	-- Gauntlets of the Corrupted Vanquisher
						i(78392),	-- Finger of Zon'ozz
						i(78387),	-- Horrifying Horn Arbalest
						i(78390),	-- Graveheart Bracers
						i(78393),	-- Grotesquely Writhing Bracers
						i(78388),	-- Belt of Flayed Skin
						i(78391),	-- Cord of the Slain Champion
						i(78389),	-- Treads of Crushed Flesh
						i(77989),	-- Seal of the Seven Signs
					})),
					cr(55312, e(325, {	-- Yor'sahj the Unsleeping
						ach(6111),	-- Heroic: Yor'sahj the Unsleeping
						i(78856),	-- Leggings of the Corrupted Conqueror
						i(78857),	-- Leggings of the Corrupted Protector
						i(78858),	-- Leggings of the Corrupted Vanquisher
						i(78403),	-- Experimental Specimen Slicer
						i(78401),	-- Spire of Coagulated Globules
						i(78404),	-- Scalpel of Unrelenting Agony
						i(78406),	-- Heartblood Wristplates
						i(78402),	-- Interrogator's Bloody Footpads
						i(78405),	-- Mindstrainer Treads
						i(77991),	-- Insignia of the Corrupted Mind
						i(77990),	-- Soulshifter Vortex
					})),
					cr(55689, e(317, {	-- Hagara the Stormbinder
						ach(6112),	-- Heroic: Hagara the Stormbinder
						i(78859),	-- Shoulders of the Corrupted Conqueror
						i(78860),	-- Shoulders of the Corrupted Protector
						i(78861),	-- Shoulders of the Corrupted Vanquisher
						i(78418),	-- Lightning Rod
						i(78414),	-- Electrowing Dagger
						i(78417),	-- Bracers of the Banished
						i(78420),	-- Girdle of the Grotesque
						i(78416),	-- Runescriven Demon Collar
						i(78415),	-- Treads of Dormant Dreams
						i(78419),	-- Ring of the Riven
						i(78413),	-- Signet of Grasping Mouths
					})),
					cr(55294, e(331, {	-- Ultraxion
						ach(6113),	-- Heroic: Ultraxion
						i(78847),	-- Chest of the Corrupted Conqueror
						i(78848),	-- Chest of the Corrupted Protector
						i(78849),	-- Chest of the Corrupted Vanquisher
						i(78429),	-- Morningstar of Heroic Will
						i(78433),	-- Ledger of Revolting Rituals
						i(78435),	-- Imperfect Specimens 27 and 28
						i(78430),	-- Bracers of Looming Darkness
						i(78436),	-- Dragonfracture Belt
						i(78431),	-- Stillheart Warboots
						i(78434),	-- Treads of Sordid Screams
						i(78432),	-- Curled Twilight Claw
						i(77992),	-- Creche of the Final Dragon
					})),
					cr(56427, e(332, {	-- Warmaster Blackthorn
						ach(6114),	-- Heroic: Warmaster Blackhorn
						i(78850),	-- Crown of the Corrupted Conqueror
						i(78851),	-- Crown of the Corrupted Protector
						i(78852),	-- Crown of the Corrupted Vanquisher
						i(78445),	-- Ataraxis, Cudgel of the Warmaster
						i(78451),	-- Visage of the Destroyer
						i(78448),	-- Blackhorn's Mighty Bulwark
						i(78450),	-- Timepiece of the Bronze Flight
						i(78446),	-- Shadow Wing Armbands
						i(78447),	-- Belt of the Beloved Companion
						i(78452),	-- Goriona's Collar
						i(78449),	-- Janglespur Jackboots
						i(77993),	-- Starcatcher Compass
					})),
					cr(53879, e(318, {	-- Spine of Deathwing
						ach(6115),	-- Heroic: Spine of Deathwing
						i(78465),	-- Backbreaker Spaulders
						i(78464),	-- Gauntlets of the Golden Thorn
						i(78461),	-- Gloves of Liquid Smoke
						i(78463),	-- Belt of Shattered Elementium
						i(78462),	-- Molten Blood Footpads
						i(77997),	-- Eye of Unmaking
						i(77996),	-- Heart of Unliving
						i(77998),	-- Resolve of Undying
						i(77995),	-- Will of Unbinding
						i(77994),	-- Wrath of Unchaining
					})),
					cr(56173, e(333, {	-- Madness of Deathwing
						un(REMOVED_FROM_GAME, ach(6126)),	-- Realm First! Deathwing
						ach(6116, {	-- Heroic: Madness of Deathwing
							title(194),	-- , Savior of Azeroth
						}),
						ach(6125),	-- Heroic: Deathwing Guild Run
						i(77069),	-- Life-Binder's Handmaiden (MOUNT!)
						i(78478),	-- Gurthalak, Voice of the Deeps
						i(78473),	-- Kiril, Fury of Beasts
						i(78477),	-- Ti'tahk, the Steps of Time
						i(78474),	-- Blade of the Unmaker
						i(78476),	-- Maw of the Dragonlord
						i(78472),	-- No'Kaled, the Elements of Death
						i(78475),	-- Rathrak, the Poisonous Mind
						i(78479),	-- Souldrinker
						i(78471),	-- Vishanka, Jaws of the Earth
					})),
				},
			}),
			n(VENDORS, {
				n(188112,  bubbleDownSelf({["timeline"] = { ADDED_9_2_5 }}, {	-- Motion Sick Peon <Junior Accessibility Advocate>
					i(191734),	-- Motion Sick Peon's Magical Elixir
				})),
			}),
			--	Misc descriptions
			n(53879, { -- Spine of Deathwing
				["sharedDescription"] = "For the encounter Spine of Deathwing:\n\nKill the Corruption tentacles on Deathwing's back and stay in it's place to be secured by Grasping Tendrils during Deathwing's rolls. The objective is to allow Hideous Amangamations to consume Corrupted Blood, and kill them when facing the forward armour plating on Deathwing's back. Then kill the revealed Burning Tendon, move forward and repeat the process.",
				["groups"] = {
					n(55891),	-- Ka'anu Reevs
					n(55870),	-- Sky Captain Swayze
				},
			})
		},
	}))),
}));
