---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, {
		applyclassicphase(MOP_PHASE_ONE, m(THE_JADE_FOREST, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
			["lore"] = "The Jade Forest is a zone located in eastern Pandaria, bordering the Valley of the Four Winds at the southwest and Kun-Lai Summit at the northwest. The heart of the Pandaren Empire, it is a lush rainforest with statuesque stone spires, prominent with the pandaren architecture.",
			["icon"] = 617824,
			["maps"] = {
				THE_JADE_FOREST_GREENSTONE_QUARRY,
				THE_JADE_FOREST_GREENSTONE_QUARRY_2,
				THE_JADE_FOREST_THE_WIDOWS_WAIL,
				THE_JADE_FOREST_OONA_KAGU,
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6351),	-- Explore Jade Forest
					ach(6300, {	-- Upjade Complete (A)
						["races"] = ALLIANCE_ONLY,
					}),
					ach(6534, {	-- Upjade Complete (H)
						["races"] = HORDE_ONLY,
					}),
				}),
				battlepets({
					pet(380, {	-- Bucktooth Flapper (PET!)
						["coord"] = { 34.4, 47.6, THE_JADE_FOREST },
					}),
					pet(562, {	-- Coral Adder (PET!)
						["coord"] = { 66.2, 86.4, THE_JADE_FOREST },
					}),
					pet(564),	-- Emerald Turtle (PET!)
					pet(569, {	-- Garden Frog (PET!)
						["coord"] = { 56.6, 45.2, THE_JADE_FOREST },
					}),
					pet(753, {	-- Garden Moth (PET!)
						["coord"] = { 53.6, 45.2, THE_JADE_FOREST },
					}),
					pet(571),	-- Grove Viper (PET!)
					pet(699),	-- Jumping Spider (PET!)
					pet(565, {	-- Jungle Darter (PET!)
						["coord"] = { 54.2, 71.0, THE_JADE_FOREST },
					}),
					pet(702),	-- Leopard Tree Frog (PET!)
					pet(570),	-- Masked Tanuki (PET!)
					pet(703),	-- Masked Tanuki Pup (PET!)
					pet(566, {	-- Mirror Strider (PET!)
						["coords"] = {
							{ 32.6, 45.4, THE_JADE_FOREST },
							{ 40.6, 53.4, THE_JADE_FOREST },
						},
					}),
					pet(573, {	-- Sandy Petrel (PET!)
						["coord"] = { 66.8, 28.0, THE_JADE_FOREST },
					}),
					pet(754, {	-- Shrine Fly (PET!)
						["coords"] = {
							{ 33.4, 50.6, THE_JADE_FOREST },
							{ 36.6, 58.6, THE_JADE_FOREST },
						},
					}),
					pet(711, {	-- Sifang Otter (PET!)
						["coord"] = { 40.6, 93.8, THE_JADE_FOREST },
					}),
					pet(712, {	-- Sifang Otter Pup (PET!)
						["coord"] = { 38.2, 92.6, THE_JADE_FOREST },
					}),
					pet(568, {	-- Silkbead Snail (PET!)
						["coord"] = { 48.8, 94.2, THE_JADE_FOREST },
					}),
					pet(572, {	-- Spirebound Crab (PET!)
						["coord"] = { 69.2, 30.0, THE_JADE_FOREST },
					}),
					pet(567, {	-- Temple Snake (PET!)
						["coord"] = { 55.0, 56.6, THE_JADE_FOREST },
					}),
				}),
				explorationHeader({
					exploration(5943),	-- Amberfly Bog
					visit_exploration(5866,{coord={31.2,17.2,THE_JADE_FOREST}}),	-- Ascent of Swirling Winds
					visit_exploration(5863,{coord={43.2,23.6,THE_JADE_FOREST}}),	-- Banquet Grounds
					visit_exploration(5857,{coord={40.0,75.3,THE_JADE_FOREST}}),	-- Camp Gormal
					exploration(5905),	-- Camp Nooka Nooka
					visit_exploration(5901,{coord={27.3,32.0,THE_JADE_FOREST}}),	-- Cave of Words
					visit_exploration(6867,{coord={30.9,37.0,THE_JADE_FOREST}}),	-- Circle of Blood
					visit_exploration(5910,{coord={30.7,33.9,THE_JADE_FOREST}}),	-- Circle of Bone
					visit_exploration(5911,{coord={28.9,32.4,THE_JADE_FOREST}}),	-- Circle of Stone
					exploration(5930),	-- Dawn's Blossom
					exploration(5951),	-- Dookin' Grounds
					exploration(5940),	-- Dreamer's Pavilion
					exploration(5962),	-- Emperor's Omen
					visit_exploration(5836,{coord={42.7,36.8,THE_JADE_FOREST}}),	-- Forest Heart
					exploration(5890),	-- Fox Grove
					exploration(5853),	-- Garrosh'ar Point
					exploration(5955),	-- Greenstone Quarry
					exploration(6204),	-- Greenstone Village
					exploration(5950),	-- Grookin Hill
					visit_exploration(6523,{coord={29.2,8.90,THE_JADE_FOREST}}),	-- Honeydew Farm
					exploration(6522),	-- Honeydew Glade
					exploration(6521),	-- Honeydew Village
					exploration(5974),	-- Jade Temple Grounds
					visit_exploration(5875,{coord={39.4,45.1,THE_JADE_FOREST}}),	-- Lair of the Jade Witch
					visit_exploration(5907,{coord={22.5,35.0,THE_JADE_FOREST}}),	-- Lake Kittitata
					visit_exploration(6022,{coord={71.2,88.6,THE_JADE_FOREST}}),	-- Mistveil Sea
					exploration(6063),	-- Moonwater Retreat
					visit_exploration(5953,{coord={26.7,56.0,THE_JADE_FOREST}}),	-- Murky Bank
					exploration(5854),	-- Nectarbreeze Orchard
					exploration(5878),	-- Orchid Hollow
					exploration(5899),	-- Path of Enlightenment
					exploration(5851),	-- Paw'don Glade
					exploration(5934),	-- Pearl Lake
					visit_exploration(5935,{coord={57.7,81.7,THE_JADE_FOREST}}),	-- Pearlfin Village
					visit_exploration(6078,{coord={42.6,10.3,THE_JADE_FOREST}}),	-- Seat of the Spirit Waker
					visit_exploration(5898,{coord={25.1,25.2,THE_JADE_FOREST}}),	-- Serenity Falls
					exploration(5876),	-- Serpent's Heart
					visit_exploration(6080,{coord={45.2,67.0,THE_JADE_FOREST}}),	-- Serpent's Overlook
					visit_exploration(5891,{coord={56.7,73.1,THE_JADE_FOREST}}),	-- Shang's Valley
					exploration(5932),	-- Shrine of the Dawn
					visit_exploration(5961,{coord={35.6,47.7,THE_JADE_FOREST}}),	-- Slicky Stream
					exploration(5872),	-- Slingtail Pits
					exploration(6077),	-- Sri-La Village
					exploration(5867),	-- Strongarm Airstrip
					exploration(5975),	-- Temple of the Jade Serpent
					exploration(5879),	-- Terrace of Ten Thunders
					exploration(5931),	-- The Arboretum
					exploration(5964),	-- The Bamboo Wilds
					exploration(5897),	-- The Fertile Copse
					visit_exploration(5933,{coord={39.9,40.7,THE_JADE_FOREST}}),	-- The Gong of Hope
					visit_exploration(5871,{coord={41.3,27.2,THE_JADE_FOREST}}),	-- The Ring of Balance
					visit_exploration(5868,{coord={39.8,22.2,THE_JADE_FOREST}}),	-- The Ring of Inner Focus
					exploration(5929),	-- The Silkwood
					visit_exploration(6653,{coord={42.0,93.4,THE_JADE_FOREST}}),	-- The Skyfire
					visit_exploration(6082,{coord={41.4,72.0,THE_JADE_FOREST}}),	-- The Splintered Path
					exploration(6110),	-- The Thunderwood
					visit_exploration(6024,{coord={65.3,51.3,THE_JADE_FOREST}}),	-- The Windspire
					exploration(6524),	-- Thunder Hold
					visit_exploration(6104,{coord={34.8,32.5,THE_JADE_FOREST}}),	-- Thunderpaw Refuge
					exploration(5855),	-- Tian Monastery
					exploration(5912),	-- Tideview Thicket
					exploration(5942),	-- Tigers' Wood
					visit_exploration(6517,{coord={40.7,81.5,THE_JADE_FOREST}}),	-- Twinspire Keep
					visit_exploration(5919,{coord={51.4,98.5,THE_JADE_FOREST}}),	-- Uncharted Sea
					exploration(5874),	-- Waxwood
					visit_exploration(6023,{coord={61.8,54.5,THE_JADE_FOREST}}),	-- Windspire Bridge
					exploration(6012),	-- Windward Isle
					exploration(5966),	-- Woods of the Lost
					visit_exploration(5865,{coord={27.4,17.7,THE_JADE_FOREST}}),	-- Wreck of Hellscream's Fist
				}),
				n(FACTIONS, {
					faction(FACTION_FOREST_HOZEN, {	-- Forest Hozen
						["races"] = HORDE_ONLY,
					}),
					faction(FACTION_PEARLFIN_JINYU, {	-- Pearlfin Jinyu
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(895, {	-- Dawn's Blossom, Jade Forest
						["cr"] = 59186,	-- Keg Runner Lee <Flight Master>
						["coord"] = { 47.0, 46.2, THE_JADE_FOREST },
					}),
					fp(970, {	-- Emperor's Omen, Jade Forest
						["cr"] = 59735,	-- Supplier Towsa <Flight Master>
						["coord"] = { 50.8, 26.8, THE_JADE_FOREST },
					}),
					fp(894, {	-- Grookin Hill, Jade Forest
						["cr"] = 60952,	-- Grookin Flapmaster
						["sourceQuest"] = 29935,	-- Orders are Orders
						["coord"] = { 27.8, 47.8, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					fp(973, {	-- Honeydew Village, Jade Forest
						["cr"] = 66227,	-- Wing Hya <Flight Master>
						["coord"] = { 28.0, 15.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					fp(968, {	-- Jade Temple Grounds, Jade Forest
						["cr"] = 59727,	-- Ginsa Arroweye <Flight Master>
						["coord"] = { 54.6, 61.6, THE_JADE_FOREST },
					}),
					fp(966, {	-- Paw'Don Village, Jade Forest
						["cr"] = 66023,	-- Wing Kyo <Flight Master>
						["coord"] = { 46.0, 85.0, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(972, {	-- Pearlfin Village, Jade Forest
						["cr"] = 56737,	-- Ut-Nam <Kite Master>
						["coord"] = { 58.0, 82.4, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1080, {	-- Serpent's Overlook, Jade Forest
						["cr"] = 64310,	-- Sky Dancer Ji <Flight Master>
						["coord"] = { 43.0, 68.4, THE_JADE_FOREST },
					}),
					fp(969, {	-- Sri-La Village, Jade Forest
						["cr"] = 59733,	-- Gingo Alebottom <Flight Master>
						["coord"] = { 55.4, 23.6, THE_JADE_FOREST },
					}),
					fp(967, {	-- The Arboretum, Jade Forest
						["cr"] = 59732,	-- Injar'i Lakebloom <Flight Master>
						["coord"] = { 57.0, 44.0, THE_JADE_FOREST },
					}),
					fp(971, {	-- Tian Monastery, Jade Forest
						["cr"] = 59736,	-- Studious Chu <Flight Master>
						["coord"] = { 43.6, 24.6, THE_JADE_FOREST },
					}),
				}),
				petbattles({
					n(66730, {	-- Hyuna of the Shrines <Grand Master Pet Tamer>
						["coord"] = { 48.0, 54.0, THE_JADE_FOREST },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31953, {	-- Grand Master Hyuna
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
					n(68464, {	-- Whispering Pandaren Spirit <Grand Master Pet Tamer>
						["coord"] = { 28.8, 36.0, THE_JADE_FOREST },
						["timeline"] = { ADDED_5_1_0 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(32440, {	-- Whispering Pandaren Spirit
								["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
								["timeline"] = { ADDED_5_1_0 },
								["isDaily"] = true,
								["groups"] = {
									i(93148, {	-- Pandaren Spirit Pet Supplies
										["sym"] = {{"select","itemID",
											89139,	-- Chain Pet Leash
											44820,	-- Red Ribbon Pet Leash
											37460,	-- Rope Pet Leash
										}},
										["groups"] = {
											i(92799),	-- Pandaren Air Spirit (PET!)
										},
									})
								},
							}),
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(ALCHEMY, {
						o(211424, {	-- Alchemy Scroll
							["description"] = "It will only appear to alchemists who don't yet know the recipe. May require Pandaria Alchemy 50.",
							["coord"] = { 49.7, 54.4, THE_JADE_FOREST },
							["groups"] = {
								recipe(114769),	-- Flask of Spring Blossoms
							},
						}),
					}),
					prof(BLACKSMITHING, {
						n(65114, {	-- Len the Hammer <Blacksmithing Trainer>
							["coord"] = { 48.4, 36.8, THE_JADE_FOREST },
							["groups"] = MOP_BLACKSMITHING,
						}),
					}),
					prof(ENCHANTING, {
						n(65127, {	-- Lai the Spellpaw <Enchanting Trainer>
							["coord"] = { 46.8, 42.8, THE_JADE_FOREST },
							["groups"] = MOP_ENCHANTING,
						}),
					}),
					prof(FIRST_AID, {
						["aqd"] = {
							["cr"] = 65983,	-- Soraka <Bandage Trainer> (A)
							["coord"] = { 45.6, 85.8, THE_JADE_FOREST },
						},
						["hqd"] = {
							["cr"] = 66222,	-- Elder Muur <Bandage Trainer> (H)
							["coord"] = { 28.2, 15.2, THE_JADE_FOREST },
						},
						["groups"] = MOP_FIRST_AID,
					}),
					prof(INSCRIPTION, {
						n(56065, {	-- Inkmaster Wei <Inscription Trainer>
							["coord"] = { 54.8, 45.0, THE_JADE_FOREST },
							["groups"] = MOP_INSCRIPTION,
						}),
						q(31539, {	-- A Thing of Beauty
							["qg"] = 56065,	-- Inkmaster Wei
							["coord"] = { 54.6, 44.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Commissioned Painting
									["providers"] = {
										{ "i", 87811 },	-- Commissioned Painting (QI!)
										{ "i", 87812 },	-- Jade Serpent Commission (QI!)
									},
								}),
								recipe(127378),	-- Commissioned Painting
								i(79731),	-- Scroll of Wisdom
							},
						}),
						q(31544, {	-- A Tribute to the Dead
							["qg"] = 56063,	-- Inkmaster Jo Po
							["coord"] = { 55.2, 45.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Inscribed Monument
									["providers"] = {
										{ "i", 87831 },	-- Inscribed Monument (QI!)
										{ "i", 88807 },	-- Uninscribed Monument (QI!)
									},
								}),
								recipe(127481),	-- Inscribed Monument
								i(79731),	-- Scroll of Wisdom
							},
						}),
						q(31542, {	-- Incarnadine Ink
							["qg"] = 56064,	-- Inkmaster Glenzu
							["coord"] = { 54.8, 45.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/5 Incarnadine Ink
									["provider"] = { "i", 87817 },	-- Incarnadine Ink (QI!)
								}),
								recipe(127475),	-- Incarnadine Ink
								i(79731),	-- Scroll of Wisdom
							},
						}),
						q(31691, {	-- Inscribed Crane Staff
							["qg"] = 56064,	-- Inkmaster Glenzu
							["coord"] = { 54.8, 45.2, THE_JADE_FOREST },
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							["requireSkill"] = INSCRIPTION,
							-- #if BEFORE 5.2.0
							["groups"] = {
								i(79731),	-- Scroll of Wisdom
							},
							-- #endif
						}),
						q(31692, {	-- Inscribed Serpent Staff
							["qg"] = 56064,	-- Inkmaster Glenzu
							["coord"] = { 54.8, 45.2, THE_JADE_FOREST },
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							["requireSkill"] = INSCRIPTION,
							-- #if BEFORE 5.2.0
							["groups"] = {
								i(79731),	-- Scroll of Wisdom
							},
							-- #endif
						}),
						q(31690, {	-- Inscribed Tiger Staff
							["qg"] = 56064,	-- Inkmaster Glenzu
							["coord"] = { 54.8, 45.2, THE_JADE_FOREST },
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							["requireSkill"] = INSCRIPTION,
							-- #if BEFORE 5.2.0
							["groups"] = {
								i(79731),	-- Scroll of Wisdom
							},
							-- #endif
						}),
						q(31543, {	-- Portrait of a Lady
							["qg"] = 56064,	-- Inkmaster Glenzu
							["coord"] = { 54.8, 45.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Portrait of Madam Goya
									["providers"] = {
										{ "i", 88806 },	-- Portrait of Madam Goya (QI!)
										{ "i", 88808 },	-- Fine Canvas (QI!)
									},
								}),
								recipe(128922),	-- Portrait of Madam Goya
								i(79731),	-- Scroll of Wisdom
							},
						}),
						q(31541, {	-- Set in Jade
							["qg"] = 56063,	-- Inkmaster Jo Po
							["coord"] = { 55.2, 45.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Engraved Jade Disk
									["providers"] = {
										{ "i", 87814 },	-- Engraved Jade Disk (QI!)
										{ "i", 87815 },	-- Jade Disk (QI!)
									},
								}),
								recipe(127391),	-- Engraved Jade Disk
								i(79731),	-- Scroll of Wisdom
							},
						}),
						q(31540, {	-- Staves for Tian Monastery
							["qg"] = 56065,	-- Inkmaster Wei
							["coord"] = { 54.6, 44.2, THE_JADE_FOREST },
							["requireSkill"] = INSCRIPTION,
							["isWeekly"] = true,
							["groups"] = {
								objective(1, {	-- 0/3 Ghost Iron Staff
									["provider"] = { "i", 79342 },	-- Ghost Iron Staff
								}),
								objective(2, {	-- 0/2 Rain Poppy Staff
									["provider"] = { "i", 79339 },	-- Rain Poppy Staff
								}),
								i(79731),	-- Scroll of Wisdom
							},
						}),
					}),
					prof(JEWELCRAFTING, {
						n(65098, {	-- Mai the Jade Shaper <Jewelcrafting Trainer>
							["coord"] = { 48.1, 35.0, THE_JADE_FOREST },
							["groups"] = MOP_JEWELCRAFTING,
						}),
					}),
					prof(MINING, {
						n(65092, {	-- Smeltmaster Ashpaw <Mining Trainer>
							["coord"] = { 46.0, 29.4, THE_JADE_FOREST },
							["groups"] = MOP_MINING,
						}),
					}),
					prof(SKINNING, {
						["aqd"] = {
							["cr"] = 67026,	-- Hao of the Stag's Horns <Skinning Trainer> (A)
							["coord"] = { 44.8, 85.6, THE_JADE_FOREST },
						},
						["hqd"] = {
							["cr"] = 66981,	-- Trapper Ri <Skinning Trainer> (H)
							["coord"] = { 27.8, 15.4, THE_JADE_FOREST },
						},
						["groups"] = MOP_SKINNING,
					}),
				}),
				n(QUESTS, {
					q(29619, {	-- A Courteous Guest
						["sourceQuest"] = 29618,	-- The High Elder
						["qg"] = 54913,	-- Lin Tenderpaw
						["coord"] = { 44.9, 24.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Ripe Orange
								["providers"] = {
									{ "i",  72589 },	-- Ripe Orange (QI!)
									{ "o", 209436 },	-- Ripe Orange
								},
								["coord"] = { 45.2, 28.5, THE_JADE_FOREST },
								["cr"] = 54930,	-- Greenwood Thief
							}),
						},
					}),
					q(29756, {	-- A Humble Offering
						["sourceQuests"] = {
							29751,	-- Ritual Artifacts
							29752,	-- The Wayward Dead
							29750,	-- Vessels of the Spirit
						},
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Tidemist Cap
								["providers"] = {
									{ "i",  75214 },	-- Tidemist Cap (QI!)
									{ "o", 209825 },	-- Tidemist Cap
								},
								["coord"] = { 40.0, 12.1, THE_JADE_FOREST },
							}),
						},
					}),
					q(31132, {	-- A Mile in My Shoes
						["sourceQuest"] = 31121,	-- Stay a While, and Listen
						["qg"] = 55768,	-- Lorewalker Cho
						["coord"] = { 27.5, 32.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(30011, {	-- A New Vision
						["sourceQuest"] = 29997,	-- The Scryer's Dilemma
						["qg"] = 56787,	-- Wise mari
						["coord"] = { 57.5, 56.0, THE_JADE_FOREST },
					}),
					q(29903, {	-- A Perfect Match
						["sourceQuest"] = 29727,	-- SI:7 Report: Take No Prisoners
						["qg"] = 60970,	-- Admiral Taylor
						["coord"] = { 58.9, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/9 Pearlfin Aqualytes equipped
								["providers"] = {
									{ "n", 56591 },	-- Pearlfin Aqualyte (Staff)
									{ "n", 54959 },	-- Pearlfin Aqualyte (Shield)
									{ "n", 56592 },	-- Pearlfin Aqualyte (Daggers)
									{ "n", 56585 },	-- Pearlfin Aqualyte (Book)
								},
								["coord"] = { 59.2, 83.4, THE_JADE_FOREST },
							}),
							n(56591, {	-- Pearlfin Aqualyte (Staff)
								["description"] = "CASTER: Give this one a staff.",
							}),
							n(54959, {	-- Pearlfin Aqualyte (Shield)
								["description"] = "TANK: Give this one a shield.",
							}),
							n(56592, {	-- Pearlfin Aqualyte (Daggers)
								["description"] = "DPS: Give this one a dagger.",
							}),
							n(56585, {	-- Pearlfin Aqualyte (Book)
								["description"] = "HEALER: Give this one a book.",
							}),
						},
					}),
					q(29627, {	-- A Proper Weapon
						["sourceQuest"] = 29626,	-- Groundskeeper Wu
						["qg"] = 54915,	-- Groundskeeper Wu
						["coord"] = { 41.6, 23.6, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Rattan Switch
								["providers"] = {
									{ "i",  72926 },	-- Rattan Switch (QI!)
									{ "o", 209462 },	-- Rattan Switch
								},
								["coord"] = { 41.8, 24.5, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Black Walnut Extract
								["provider"] = { "i",  72954 },	-- Black Walnut Extract (QI!)
								["coord"] = { 41.4, 24.2, THE_JADE_FOREST },
								["cr"] = 54981,	-- June Whiteblossom
							}),
							objective(3, {	-- 0/3 Triple-Bittered Ale
								["provider"] = { "i",  72979 },	-- Triple-Bittered Ale (QI!)
								["coord"] = { 41.8, 24.6, THE_JADE_FOREST },
								["cr"] = 54982,	-- Brewmaster Lei Kanglei
							}),
						},
					}),
					q(29629, {	-- A Steady Hand
						["sourceQuest"] = 29627,	-- A Proper Weapon
						["qg"] = 54915,	-- Groundskeeper Wu
						["coord"] = { 41.6, 23.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/80 Blushleaf Cluster
								["providers"] = {
									{ "i",  73193 },	-- Blushleaf Cluster (QI!)
									{ "o", 209550 },	-- Blushleaf Cluster
								},
								["coord"] = { 35.9, 20.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29628, {	-- A Strong Back
						["sourceQuest"] = 29627,	-- A Proper Weapon
						["qg"] = 54915,	-- Groundskeeper Wu
						["coord"] = { 41.6, 23.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Boiling Cauldron obtained
								["provider"] = { "o", 209551 },	-- Boiling Cauldron
								["coord"] = { 37.8, 17.6, THE_JADE_FOREST },
							}),
							objective(2, {	-- Boiling Cauldron returned
								["provider"] = { "n", 55086 },	-- Boiling Cauldron
								["coord"] = { 41.6, 23.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29636, {	-- A Test of Endurance
						["sourceQuest"] = 29635,	-- Xiao, the Eater
						["qg"] = 54922,	-- Master Stone Fist
						["coord"] = { 43.2, 24.7, THE_JADE_FOREST },
					}),
					q(31130, {	-- A Visit with Lorewalker Cho
						["sourceQuest"] = 29889,	-- Borrowed Brew
						["qg"] = 54961,	-- Lorewalker Cho
						["coord"] = { 53.7, 91.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Trim the Tree
								["provider"] = { "o", 211659 },	-- Shapeless Tree
								["coord"] = { 53.8, 91.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Paint the Wall
								["provider"] = { "o", 211661 },	-- Cho's "Art"
								["coord"] = { 54.0, 90.7, THE_JADE_FOREST },
							}),
							objective(3, {	-- Feed the Birds
								["provider"] = { "o", 213191 },	-- Bird Feed
								["coord"] = { 54.0, 91.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(29827, {	-- Acid Rain
						["sourceQuest"] = 29815,	-- Forensic Science
						["qg"] = 55180,	-- Shademaster Kiryn
						["coord"] = { 28.1, 24.8, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/25 Hozen Gutripper slain
								["provider"] = { "n", 55707 },	-- Hozen Gutripper
								["coord"] = { 28.8, 26.4, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/25 Hozen Nibstabber slain
								["provider"] = { "n", 55701 },	-- Hozen Nibstabber
								["coord"] = { 28.6, 26.4, THE_JADE_FOREST },
							}),
							i(90310),	-- Honorary Combat Engineer's Burnished Legplates
							i(90362, {	-- Honorary Combat Engineer's Burnished Legplates
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90305),	-- Honorary Combat Engineer's Chain Leggings
							i(90357, {	-- Honorary Combat Engineer's Chain Leggings
								["races"] = ALLIANCE_ONLY,
							}),
							i(90312),	-- Honorary Combat Engineer's Heavy Legplates
							i(90364, {	-- Honorary Combat Engineer's Heavy Legguards
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90308),	-- Honorary Combat Engineer's Hide Leggings
							i(90360, {	-- Honorary Combat Engineer's Hide Leggings
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90304),	-- Honorary Combat Engineer's Leather Trousers
							i(90356, {	-- Honorary Combat Engineer's Leather Trousers
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90311),	-- Honorary Combat Engineer's Legguards
							i(90363, {	-- Honorary Combat Engineer's Legplates
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90309),	-- Honorary Combat Engineer's Ringmail Leggings
							i(90361, {	-- Honorary Combat Engineer's Ringmail Kilt
								["races"] = ALLIANCE_ONLY,
							}),
							i(90307),	-- Honorary Combat Engineer's Satin Leggings
							i(90359, {	-- Honorary Combat Engineer's Satin Leggings
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
							i(90306),	-- Honorary Combat Engineer's Silk Trousers
							i(90358, {	-- Honorary Combat Engineer's Silk Trousers
								["races"] = ALLIANCE_ONLY,	-- shared appearance only available from this quest
							}),
						},
					}),
					q(31853, {	-- All Aboard!
						["sourceQuests"] = {
							29611,	-- The Art of War (Nobody)
							29612,	-- The Art of War (Veteran)
							-- #if AFTER 7.3.5
							49852,	-- To Pandaria!
							49538,	-- Warchief's Command: Jade Forest!
							-- #endif
						},
						["qg"] = 54870,	-- General Nazgrim
						["coord"] = { 48.6, 70.8, ORGRIMMAR },
						["timeline"] = { ADDED_5_0_4 },
						["maps"] = { DUROTAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(2, {	-- Speak to General Nazgrim aboard Hellscream's Fist
								["provider"] = { "n", 55054 },	-- General Nazgrim
								["coord"] = { 66.0, 0.0, DUROTAR },
							}),
						},
					}),
					q(29925, {	-- All We Can Spare
						["sourceQuest"] = 29723,	-- The Jade Witch
						["providers"] = {
							{ "n", 56348 },	-- Toya
							{ "i", 76483 },	-- Scavenged Jade (QI!)
						},
						["coord"] = { 47.1, 46.1, THE_JADE_FOREST },
					}),
					q(29576, {	-- An Air of Worry
						["qg"] = 59383,	-- Old Man Misteye
						["coord"] = { 48.3, 46.0, THE_JADE_FOREST },
						["isBreadcrumb"] = true,
					}),
					q(29900, {	-- An Ancient Legend
						["sourceQuest"] = 29890,	-- Finding Your Center
						["qg"] = 56433,	-- Lina Whitepaw
						["coord"] = { 65.9, 79.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Shade of Ling Heartfist slain
								["provider"] = { "n", 56441 },	-- Shade of Ling Heartfist
								["coord"] = { 66.8, 80.6, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Song of the Vale
								["providers"] = {
									{ "i",  79875 },	-- Song of the Vale (QI!)
									{ "o", 209582 },	-- Scroll of Sorrow
								},
								["coord"] = { 66.5, 80.5, THE_JADE_FOREST },
							}),
							i(80749),	-- Ambermist Cuffs
							i(80750),	-- Blackthicket Bindings
							i(80751),	-- Jade Witch Wristguards
							i(80752),	-- Glass Lake Bracers
							i(80753),	-- Silkwood Cuffs
							i(80754),	-- Deepwoods Armwraps
							i(80755),	-- Fox Grove Wristguards
							i(80756),	-- Thunderwood Armplates
							i(80757),	-- Jade Tiger Armplates
						},
					}),
					q(30565, {	-- An Unexpected Advantage
						["sourceQuest"] = 30498,	-- Get Back Here
						["qg"] = 59550,	-- Sully "The Pickle" McLeary
						["coord"] = { 58.5, 82.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/4 Water-Damaged Gear
								["provider"] = { "i", 80176 },	-- Water-Damaged Gear (QI!)
								["coord"] = { 64.2, 79.4, THE_JADE_FOREST },
								["cr"] = 59554,	-- Slingtail Ambusher
							}),
							objective(2, {	-- 0/4 Rusty Locking Bolt
								["provider"] = { "i", 80177 },	-- Rusty Locking Bolt (QI!)
								["coord"] = { 64.2, 79.4, THE_JADE_FOREST },
								["cr"] = 59554,	-- Slingtail Ambusher
							}),
						},
					}),
					q(29749, {	-- An Urgent Plea
						["sourceQuests"] = {
							29747,	-- Break the Cycle
							29748,	-- Simulacrumble
						},
						["qg"] = 55480,	-- Pei-Zhi
						["coord"] = { 44.2, 14.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Staff of Pei-Zhi
								["providers"] = {
									{ "i",  74258 },	-- Staff of Pei-Zhi (QI!)
									{ "o", 209629 },	-- Staff of Pei-Zhi
								},
								["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Interrupt the Ritual of Spiritbinding
								["provider"] = { "n", 55489 },	-- Ancient Spirit
								["coord"] = { 44.6, 15.8, THE_JADE_FOREST },
							}),
							i(84261),	-- Axe of Sacrifice
							i(84262),	-- Spirit Crusher
							i(84263),	-- Spiritsage's Protector
							i(84264),	-- Spiritsage's Shield
							i(84265),	-- Spiritbound Crescent
							i(84266),	-- Spiritbound Axe
						},
					}),
					q(29560, {	-- Ancient Power
						["sourceQuest"] = 29553,	-- The Missing Admiral
						["qg"] = 55196,	-- Bold Karasshi
						["coord"] = { 54.1, 82.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Ancient Hozen Skull
								["providers"] = {
									{ "i",  74033 },	-- Ancient Hozen Skull (QI!)
									{ "o", 209595 },	-- Hozen Skull
								},
								["coord"] = { 54.1, 82.9, THE_JADE_FOREST },
							}),
						},
					}),
					q(29630, {	-- And a Heavy Fist
						["sourceQuest"] = 29627,	-- A Proper Weapon
						["qg"] = 54915,	-- Groundskeeper Wu
						["coord"] = { 41.6, 23.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Greenwood Trickster slain
								["provider"] = { "n", 54987 },	-- Greenwood Trickster
								["coord"] = { 37.8, 19.6, THE_JADE_FOREST },
							}),
							i(80740),	-- Ambermist Gloves
							i(80741),	-- Blackthicket Gloves
							i(80742),	-- Jade Witch Guantlets
							i(80743),	-- Glass Lake Gloves
							i(80744),	-- Silkwood Handguards
							i(80745),	-- Deepwoods Gloves
							i(80746),	-- Fox Grove Gauntlets
							i(80747),	-- Thunderwood Gauntlets
							i(80748),	-- Jade Tiger Gauntlets
						},
					}),
					q(29901, {	-- Anduin's Decision
						["description"] = "Automatically given when prerequisites have been fulfilled.",
						["sourceQuests"] = {
							29900,	-- An Ancient Legend
							29899,	-- Rest in Peace
							29898,	-- Sacred Waters
						},
						["qg"] = 56485,	-- Anduin Wrynn <Prince of Stormwind>
						["coord"] = { 65.8, 79.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31775, {	-- Assault on the Airstrip
						["sourceQuest"] = 29804,	-- Seein' Red
						["qg"] = 65999,	-- General Nazgrim
						["coord"] = { 31.6, 21.9, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Strongarm troop slain
								["providers"] = {
									{ "n", 65840 },	-- Strongarm Airman
									{ "n", 65841 },	-- Strongarm Private
									{ "n", 65842 },	-- Strongarm Medic
									{ "n", 65905 },	-- Strongarm Lieutenant
									{ "n", 66000 },	-- Strongarm Ace
								},
								["coord"] = { 27.8, 23.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29624, {	-- Attention
						["sourceQuest"] = 29623,	-- Perfection
						["qg"] = 54917,	-- Instructor Xann
						["coord"] = { 41.6, 28.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/2 Training Bag slain
								["providers"] = {
									{ "n", 55183 },	-- Training Bag
									{ "n", 55184 },	-- Training Bag
								},
								["coord"] = { 41.6, 27.0, THE_JADE_FOREST },
							}),
							i(80731),	-- Ambermist Cord
							i(80732),	-- Blackthicket Belt
							i(80733),	-- Jade Witch Waistguard
							i(80734),	-- Glass Lake Clasp
							i(80735),	-- Silkwood Cord
							i(80736),	-- Deepwoods Belt
							i(80737),	-- Fox Grove Belt
							i(80738),	-- Thunderwood Girdle
							i(80739),	-- Jade Tiger Girdle
						},
					}),
					q(29753, {	-- Back to Nature
						["sourceQuest"] = 29750,	-- Vessels of the Spirit
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Beast Spirits Returned to Nature
								["providers"] = {
									{ "i", 74808 },	-- Spirit Bottles (QI!)
									{ "n", 55787 },	-- Peaceful Beast Spirit
									{ "n", 55790 },	-- Raging Beast Spirit
								},
								["coord"] = { 20.2, 11.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29632, {	-- Becoming Battle-Ready
						["sourceQuest"] = 29620,	-- The Great Banquet
						["qg"] = 54922,	-- Master Stone Fist
						["coord"] = { 43.2, 24.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Tian Pupil defeated
								["provider"] = { "n", 54944 },	-- Tian Pupil
								["coord"] = { 43.6, 24.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29941, {	-- Beyond the Horizon
						["sourceQuest"] = 29936,	-- Instant Messaging
						["qg"] = 56339,	-- General Nazgrim
						["coord"] = { 28.2, 47.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Shokia Dispatched
								["provider"] = { "n", 56340 },	-- Shokia
								["coord"] = { 28.2, 47.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Sergeant Gorrok Dispatched
								["provider"] = { "n", 56477 },	-- Sergeant Gorrok
								["coord"] = { 27.8, 50.4, THE_JADE_FOREST },
							}),
							objective(3, {	-- Shademaster Kiryn Dispatched
								["provider"] = { "n", 56478 },	-- Shademaster Kiryn
								["coord"] = { 27.0, 49.0, THE_JADE_FOREST },
							}),
							objective(4, {	-- Parlayed with Kah Kah
								["provider"] = { "n", 56336 },	-- Chief Kah Kah
								["coord"] = { 28.0, 47.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29904, {	-- Bigger Fish to Fry
						["sourceQuest"] = 29903,	-- A Perfect Match
						["qg"] = 60970,	-- Admiral Taylor
						["coord"] = { 58.8, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/24 Bamboo Wilds wildlife
								["providers"] = {
									{ "n", 56650 },	-- Stoneskin Basilisk
									{ "n", 56653 },	-- Wild Prowler
									{ "n", 56654 },	-- Wild Stalker
									{ "n", 56655 },	-- Wild Huntress
									{ "n", 56683 },	-- Wild Stalker
									{ "n", 61747 },	-- Jeweled Macaw
									{ "n", 61748 },	-- Jeweled Macaw
								},
								["coord"] = { 62.4, 78.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29892, {	-- Body
						["sourceQuest"] = 31130,	-- A Visit with Lorewalker Cho
						["qgs"] = {
							56287,	-- Lorewalker Cho
							61218,	-- Lorewalker Cho
						},
						["coord"] = { 54.0, 91.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Pristine Crocolisk Eye
								["provider"] = { "i", 76107 },	-- Pristine Crocolisk Eye (QI!)
								["coord"] = { 58.6, 91.0, THE_JADE_FOREST },
								["cr"] = 54558,	-- Bog Crocolisk
							}),
						},
					}),
					q(29939, {	-- Boom Bait
						["sourceQuest"] = 29937,	-- Furious Fowl
						["qg"] = 56406,	-- Rivett Clutchpop
						["coord"] = { 27.2, 50.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Exploded Slicky
								["providers"] = {
									{ "i",  76260 },	-- Exploded Slicky (QI!)
									{ "i",  76262 },	-- Gut Bomb (QI!)
									{ "o", 209877 },	-- Dead Deepriver Slicky
								},
								["coord"] = { 26.5, 55.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29967, {	-- Boom Goes the Doonamite!
						["sourceQuest"] = 29968,	-- Green-ish Energy
						["qg"] = 56406,	-- Rivett Clutchpop
						["coord"] = { 27.2, 50.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Speak to Rivett Clutchpop
								["provider"] = { "n", 56525 },	-- Rivett Clutchpop
								["coord"] = { 29.0, 49.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/10 Jinyu Attackers Slain
								["providers"] = {
									{ "n", 56603 },	-- Jinyu Tactician
									{ "n", 56624 },	-- Jinyu Tactician
									{ "n", 56639 },	-- Jinyu Tactician
									{ "n", 56643 },	-- Jinyu Tactician
									{ "n", 56644 },	-- Jinyu Tactician
									{ "n", 56645 },	-- Jinyu Tactician
								},
								["coord"] = { 29.0, 49.0, THE_JADE_FOREST },
							}),
							i(80788),	-- Jinyu Meditation Staff
							i(80789),	-- Jinyu Divining Rod
							i(80790),	-- Jinyu Combat Staff
							i(80791),	-- Jinyu Greatsword
							i(80792),	-- Jinyu Handaxe
							i(80793),	-- Jinyu Crossbow
							i(80794),	-- Jinyu Battleaxe
							i(80795),	-- Jinyu Ritual Scepter
							i(80796),	-- Jinyu Dagger
							i(80797),	-- Jinyu Combat Mace
						},
					}),
					q(29889, {	-- Borrowed Brew
						["sourceQuest"] = 29888,	-- Seek Out the Lorewalker
						["provider"] = { "o", 209845 },	-- Mouthwatering Brew
						["coord"] = { 53.7, 91.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29747, {	-- Break the Cycle
						["sourceQuest"] = 29745,	-- The Sprites' Plight
						["provider"] = { "o", 214871 },	-- Shattered Destroyer
						["coord"] = { 48.5, 20.6, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Shan'ze Spiritbinder slain
								["provider"] = { "n", 55279 },	-- Shan'ze Spiritbinder
								["coord"] = { 48.6, 18.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29631, {	-- Burning Bright
						["sourceQuest"] = 29627,	-- A Proper Weapon
						["qg"] = 55094,	-- Guard Shan Long
						["coord"] = { 38.0, 23.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Waxwood Hunter slain
								["providers"] = {
									{ "n", 54988 },	-- Waxwood Hunter
									{ "n", 55238 },	-- Waxwood Matriarch
								},
								["coord"] = { 35.0, 21.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29966, {	-- Burning Down the House
						["sourceQuest"] = 29943,	-- Guerrillas in our Midst
						["qg"] = 56339,	-- General Nazgrim
						["coord"] = { 30.2, 53.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Alliance Camp Destroyed
								["provider"] = { "i", 76336 },	-- Nazgrim's Grog (QI!)
								["coord"] = { 28.6, 47.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29926, {	-- Calamity Jade
						["sourceQuest"] = 29928,	-- I Have No Jade and I Must Scream
						["qg"] = 56346,	-- Foreman Mann
						["coord"] = { 50.9, 27.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Greenstone Nibbler slain
								["provider"] = { "n", 56401 },	-- Greenstone Nibbler
								["coord"] = { 44.0, 29.2, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							}),
							objective(2, {	-- 0/6 Greenstone Gorger slain
								["provider"] = { "n", 56404 },	-- Greenstone Gorger
								["coord"] = { 34.4, 74.6, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							}),
						},
					}),
					q(31261, {	-- Captain Jack's Dead
						["provider"] = { "i", 85783 },	-- Captain Jack's Head
						["coord"] = { 30.8, 41.3, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["cr"] = 63809,	-- Jack Arrow
					}),
					q(29906, {	-- Carp Diem
						["sourceQuest"] = 29904,	-- Bigger Fish to Fry
						["qg"] = 60970,	-- Admiral Taylor
						["coord"] = { 58.8, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Chief Gukgut slain
								["provider"] = { "n", 54868 },	-- Chief Gukgut
								["coord"] = { 54.6, 80.2, THE_JADE_FOREST },
							}),
							i(80788),	-- Jinyu Meditation Staff
							i(80789),	-- Jinyu Divining Rod
							i(80790),	-- Jinyu Combat Staff
							i(80791),	-- Jinyu Greatsword
							i(80792),	-- Jinyu Handaxe
							i(80793),	-- Jinyu Crossbow
							i(80794),	-- Jinyu Battleaxe
							i(80795),	-- Jinyu Ritual Sceptar
							i(80796),	-- Jinyu Dagger
							i(80797),	-- Jinyu Combat Mace
						},
					}),
					q(31777, {	-- Choppertunity
						["sourceQuest"] = 29804,	-- Seein' Red
						["qg"] = 55521,	-- Rivett Clutchpop
						["coord"] = { 31.1, 21.5, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Strongarm Gyrocopter shot down
								["providers"] = {
									{ "n",  65843 },	-- Strongarm Gyrocopter
									{ "i",  89163 },	-- Requisitioned Firework Launcher (QI!)
									{ "o", 214962 },	-- Requisitioned Firework Launcher
								},
								["coord"] = { 27.8, 24.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29552, {	-- Critical Condition
						["sourceQuests"] = {
							31736,	-- Envoy of the Alliance
							31737,	-- The Cost of War
						},
						["qg"] = 54614,	-- Mishka
						["coord"] = { 46.0, 84.6, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Wounded Pilots revived
								["provider"] = { "n", 61492 },	-- Wounded Pilot
								["coord"] = { 43.6, 88.4, THE_JADE_FOREST },
							}),
							i(90387),	-- Crashed Gyrocopter Rotor
							i(90388),	-- Grewatsword of Kofinna Kottr
							i(90385),	-- Mishka's Bandage Cutter
							i(90384),	-- Peon-Chopping Axe
							i(90386),	-- Recovery Team Shield
							i(90389),	-- Skyguardian's Shield
						},
					}),
					q(29765, {	-- Cryin' My Eyes Out
						["sourceQuest"] = 31774,	-- Seeking Zin'jun
						["qg"] = 55403,	-- Zin'Jun
						["coord"] = { 31.1, 17.5, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Zin'Jun's Rifle
								["provider"] = { "i", 74160 },	-- Zin'Jun's Rifle (QI!)
								["coord"] = { 29.8, 22.2, THE_JADE_FOREST },
								["crs"] = {
									55470,	-- Hozen Groundpounder
									66917,	-- Hozen Groundpounder
								},
							}),
							objective(2, {	-- 0/1 Zin'Jun's Left Eye
								["provider"] = { "i", 74161 },	-- Zin'Jun's Left Eye (QI!)
								["coord"] = { 29.8, 22.2, THE_JADE_FOREST },
								["crs"] = {
									55470,	-- Hozen Groundpounder
									66917,	-- Hozen Groundpounder
								},
							}),
							objective(3, {	-- 0/1 Zin'Jun's Right Eye
								["provider"] = { "i", 74162 },	-- Zin'Jun's Right Eye (QI!)
								["coord"] = { 29.8, 22.2, THE_JADE_FOREST },
								["crs"] = {
									55470,	-- Hozen Groundpounder
									66917,	-- Hozen Groundpounder
								},
							}),
							objective(4, {	-- 0/1 Snuff's Corpse
								["provider"] = { "i", 74163 },	-- Snuff's Corpse (QI!)
								["coord"] = { 29.8, 22.2, THE_JADE_FOREST },
								["crs"] = {
									55470,	-- Hozen Groundpounder
									66917,	-- Hozen Groundpounder
								},
							}),
						},
					}),
					q(30015, {	-- Dawn's Blossom
						["sourceQuest"] = 29967,	-- Boom Goes the Doonamite!
						["providers"] = {
							{ "n", 56339 },	-- General Nazgrim
							{ "i", 76761 },	-- Pandaren Scroll (QI!)
						},
						["coord"] = { 28.6, 47.5, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(29578, {	-- Defiance
						["sourceQuest"] = 29576,	-- An Air of Worry
						["qg"] = 54697,	-- Shao the Defiant
						["coord"] = { 43.4, 75.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Gormali Raider slain
								["providers"] = {
									{ "n", 54702 },	-- Gormali Raider
									{ "n", 54936 },	-- Gormali Raider
								},
								["coord"] = { 44.0, 76.6, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/8 Gormali Incinerator slain
								["provider"] = { "n", 54703 },	-- Gormali Incinerator
								["coord"] = { 44.0, 71.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29717, {	-- Down Kitty!
						["description"] = "Must be on or have completed |cFFFFD700The Double Hozen Dare|r to see this quest. If you completed it without picking up this quest, you can find An Windfur running around Dawn's Blossom, rather than in the forest near the Lair of the Jade Witch.",
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 55274,	-- An Windfur
						["coord"] = { 38.4, 46.2, THE_JADE_FOREST },	-- coordinates for the middle of the area where the quest is picked up. not adding secondary Dawn's Blossom coordinates because i don't want it to look like you pick up both quests in town initially (description should suffice, since you only pick it up in town under specific circumstances)
						["groups"] = {
							objective(1, {	-- 0/8 Jade Guardian slain
								["provider"] = { "n", 55236 },	-- Jade Guardian
								["coord"] = { 39.2, 47.4, THE_JADE_FOREST },
							}),
							i(88708),	-- An's Ring
							i(88705),	-- Jade Smasher Band
							i(88704),	-- Meow Meow Band
							i(88706),	-- Windfur Band
							i(88707),	-- Windfur Ring
						},
					}),
					q(31319, {	-- Emergency Response (A)
						["sourceQuest"] = 31303,	-- The Seal is Broken
						["qg"] = 59418,	-- Lorewalker Cho
						["coord"] = { 49.2, 61.4, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Admiral Taylor Recovered
								["providers"] = {
									{ "n", 64491 },	-- Admiral Taylor
									{ "i", 86511 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 47.6, 62.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Mishka Recovered
								["providers"] = {
									{ "n", 64493 },	-- Mishka
									{ "i", 86511 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 46.4, 61.6, THE_JADE_FOREST },
							}),
							objective(3, {	-- Sully Recovered
								["providers"] = {
									{ "n", 64494 },	-- Sully
									{ "i", 86511 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 47.6, 59.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(30504, {	-- Emergency Response (H)
						["sourceQuest"] = 31303,	-- The Seal is Broken
						["qg"] = 59418,	-- Lorewalker Cho
						["coord"] = { 49.2, 61.4, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- General Nazgrim Rescued
								["providers"] = {
									{ "n", 64360 },	-- General Nazgrim
									{ "i", 86467 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 48.0, 61.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- Shademaster Kiryn Rescued
								["providers"] = {
									{ "n", 64362 },	-- Shademaster Kiryn
									{ "i", 86467 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 47.2, 62.6, THE_JADE_FOREST },
							}),
							objective(3, {	-- Shokia Rescued
								["providers"] = {
									{ "n", 64363 },	-- Shokia
									{ "i", 86467 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 46.8, 60.6, THE_JADE_FOREST },
							}),
							objective(4, {	-- Rivett Clutchpop Rescued
								["providers"] = {
									{ "n", 64364 },	-- Rivett Clutchpop
									{ "i", 86467 },	-- Cho's Fireworks (QI!)
								},
								["coord"] = { 48.0, 59.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(31736, {	-- Envoy of the Alliance
						["sourceQuest"] = 31735,	-- The Right Tool For The Job
						["qg"] = 54617,	-- Rell Nightwind
						["coord"] = { 46.4, 96.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Leader of Paw'don Village found
								["provider"] = { "n", 65910 },	-- Sunke Khang <Mayor>
								["coord"] = { 46.2, 84.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(30004, {	-- Everything In Its Place
						["sourceQuests"] = {
							30001,	-- Moth-Ridden
							30002,	-- Pages of History
						},
						["qg"] = 56786,	-- Lorewalker Stonestep
						["coord"] = { 56.2, 60.4, THE_JADE_FOREST },
					}),
					q(31771, {	-- Face to Face With Consequence
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qg"] = 66657,	-- Taran Zhu
						["coord"] = { 33.7, 10.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/20 Sha Haunt slain
								["provider"] = { "n", 66425 },	-- Sha Haunt
								["coord"] = { 34.2, 10.4, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/7 Sha Harbinger slain
								["provider"] = { "n", 66426 },	-- Sha Harbinger
								["coord"] = { 34.2, 12.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29762, {	-- Family Heirlooms
						["sourceQuests"] = {
							29883,	-- The Pearlfin Situation
							29885,	-- Road Rations
						},
						["qg"] = 56222,	-- Bold Karasshi
						["coord"] = { 58.9, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Glassfin Heirloom
								["provider"] = { "i", 79811 },	-- Glassfin Heirloom (QI!)
								["coord"] = { 67.0, 87.6, THE_JADE_FOREST },
								["cr"] = 56233,	-- Pearlfin Villager
							}),
						},
					}),
					q(31167, {	-- Family Tree
						["sourceQuest"] = 31152,	-- Peering Into the Past
						["qg"] = 63307,	-- Lorewalker Cho
						["coord"] = { 28.8, 32.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Light the Incense
								["provider"] = { "o", 212969 },	-- Incense Bundle
								["coord"] = { 28.8, 32.5, THE_JADE_FOREST },
							}),
						},
					}),
					q(29993, {	-- Find the Boy
						["sourceQuest"] = 29866,	-- The Threads that Stick
						["qg"] = 59173,	-- Kai Wanderbrew
						["coord"] = { 47.1, 46.0, THE_JADE_FOREST },
					}),
					q(29890, {	-- Finding Your Center
						["sourceQuests"] = {
							29892,	-- Body
							29893,	-- Hue
							29891,	-- Potency
						},
						["qg"] = 56287,	-- Lorewalker Cho
						["coord"] = { 53.8, 90.6, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Meditated at the pagoda
								["provider"] = { "o", 213754 },	-- Potent Dream Brew
								["coord"] = { 54.6, 91.9, THE_JADE_FOREST },
							}),
							i(80763),	-- Friendship Ring
							i(80764),	-- Band of Acceptance
							i(80765),	-- Friendly Gift Band
							i(80766),	-- Band of Flair
							i(80767),	-- Band of Finding
						},
					}),
					q(31767, {	-- Finish Them!
						["sourceQuest"] = 31766,	-- Touching Ground
						["qg"] = 66190,	-- General Nazgrim
						["coord"] = { 31.6, 11.3, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Thunder Hold troops slain
								["providers"] = {
									{ "n", 66285 },	-- Thunder Hold Infantryman
									{ "n", 66286 },	-- Thunder Hold Mender
									{ "n", 66287 },	-- Thunder Hold Lieutenant
									{ "n", 66288 },	-- Thunder Hold Sharp-Shooter
									{ "n", 66348 },	-- Thunder Hold Armsman
									{ "n", 66395 },	-- Thunder Hold Cannoneer
									{ "n", 66446 },	-- Thunder Hold Mender
									{ "n", 66503 },	-- Thunder Hold Infantryman
									{ "n", 66505 },	-- Thunder Hold Armsman
									{ "n", 66506 },	-- Thunder Hold Cannoneer
									{ "n", 66507 },	-- Thunder Hold Sharp-Shooter
								},
								["coord"] = { 34.0, 10.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(31768, {	-- Fire Is Always the Answer
						["sourceQuest"] = 31766,	-- Touching Ground
						["qg"] = 66190,	-- General Nazgrim
						["coord"] = { 31.6, 11.3, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Thunder Hold Munitions destroyed
								["providers"] = {
									{ "i",  89605 },	-- Nazgrim's Flare Gun (QI!)
									{ "n",  66308 },	-- Thunder Hold Munitions
									{ "o", 215649 },	-- Thunder Hold Munitions
								},
								["coord"] = { 33.6, 13.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29639, {	-- Flying Colors (Instructor Xann)
						["sourceQuests"] = {
							29628,	-- A Strong Back
							29629,	-- A Steady Hand
							29630,	-- And a Heavy Fist
							29624,	-- Attention
							29637,	-- The Rumpus
						},
						["qg"] = 54917,	-- Instructor Xann
						["coord"] = { 41.6, 28.3, THE_JADE_FOREST },
						["groups"] = {
							i(80798),	-- Greataxe of Honor
							i(80799),	-- Sword of Honor
							i(80800),	-- Tian Defender
							i(80801),	-- Tian Protector
							i(80802),	-- Blade of Honor
							i(80803),	-- Mace of Honor
						},
					}),
					q(29647, {	-- Flying Colors (Instructor Myang)
						["sourceQuests"] = {
							29628,	-- A Strong Back
							29629,	-- A Steady Hand
							29630,	-- And a Heavy Fist
							29624,	-- Attention
							29637,	-- The Rumpus
						},
						["qg"] = 54918,	-- Instructor Myang
						["coord"] = { 38.9, 24.0, THE_JADE_FOREST },
						["groups"] = {
							i(80798),	-- Greataxe of Honor
							i(80799),	-- Sword of Honor
							i(80800),	-- Tian Defender
							i(80801),	-- Tian Protector
							i(80802),	-- Blade of Honor
							i(80803),	-- Mace of Honor
						},
					}),
					q(29646, {	-- Flying Colors (Groundskeeper Wu)
						["sourceQuests"] = {
							29628,	-- A Strong Back
							29629,	-- A Steady Hand
							29630,	-- And a Heavy Fist
							29624,	-- Attention
							29637,	-- The Rumpus
						},
						["qg"] = 54915,	-- Groundskeeper Wu
						["coord"] = { 41.6, 23.6, THE_JADE_FOREST },
						["groups"] = {
							i(80798),	-- Greataxe of Honor
							i(80799),	-- Sword of Honor
							i(80800),	-- Tian Defender
							i(80801),	-- Tian Protector
							i(80802),	-- Blade of Honor
							i(80803),	-- Mace of Honor
						},
					}),
					q(29815, {	-- Forensic Science
						["sourceQuest"] = 31999,	-- Nazgrim's Command
						["qg"] = 55180,	-- Shademaster Kiryn
						["coord"] = { 28.1, 24.8, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Viscous Chlorophyll
								["provider"] = { "i", 74621 },	-- Viscous Chlorophyll (QI!)
								["coord"] = { 25.3, 26.2, THE_JADE_FOREST },
								["cr"] = 55610,	-- Lurching Blossom
							}),
						},
					}),
					q(31742, {	-- Fractured Forces
						["sourceQuests"] = {
							31738,	-- Pillaging Peons
							29552,	-- Critical Condition
							31740,	-- Koukou's Rampage
						},
						["qg"] = 54617,	-- Rell Nightwind
						["coord"] = { 46.1, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Dalgan slain
								["provider"] = { "n", 66274 },	-- Dalgan
								["coord"] = { 41.6, 80.4, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Bellandra Felstorm slain
								["provider"] = { "n", 66275 },	-- Bellandra Felstorm
								["coord"] = { 41.8, 80.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29559, {	-- Freeing Our Brothers
						["sourceQuest"] = 29553,	-- The Missing Admiral
						["qg"] = 55196,	-- Bold Karasshi
						["coord"] = { 54.1, 82.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Prisoners freed
								["providers"] = {
									{ "n",  55201 },	-- Jinyu Prisoner
									{ "n",  55490 },	-- Alliance Prisoner
									{ "o", 209586 },	-- Hozen Cage
								},
								["coord"] = { 54.2, 82.6, THE_JADE_FOREST },
								["cost"] = {{ "i", 74260, 6 }},	-- Bamboo Key (QI!)
							}),
							i(74260, {	-- Bamboo Key (QI!)
								["coord"] = { 54.6, 81.4, THE_JADE_FOREST },
								["crs"] = {
									55193,	-- Slingtail Mudseer
									61562,	-- Slingtail Treeleaper
									61557,	-- Slingtail Treeleaper
								},
							}),
							i(81022),	-- Cagebreaker's Leather Belt
							i(81023),	-- Cagebreaker's Chain Links
							i(81024),	-- Cagebreaker's Silk Cord
							i(81025),	-- Cagebreaker's Satin Cord
							i(81026),	-- Cagebreaker's Hide Belt
							i(81027),	-- Cagebreaker's Ringmail Waistguard
							i(81028),	-- Cagebreaker's Burnished Clasp
							i(81029),	-- Cagebreaker's Armored Girdle
							i(81030),	-- Cagebreaker's Heavy Girdle
						},
					}),
					q(29937, {	-- Furious Fowl
						["sourceQuest"] = 29941,	-- Beyond the Horizon
						["qg"] = 56406,	-- Rivett Clutchpop
						["coord"] = { 28.2, 47.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Fistful of Bird Guts
								["provider"] = { "i", 76225 },	-- Fistful of Bird Guts (QI!)
								["coord"] = { 30.0, 48.6, THE_JADE_FOREST },
								["cr"] = 56396,	-- Hungry Bloodtalon
							}),
						},
					}),
					q(30484, {	-- Gauging Our Progress
						["sourceQuests"] = {
							30499,	-- Get Back Here!
							30000,	-- The Jade Serpent
						},
						["qg"] = 57108,	-- General Nazgrim
						["coord"] = { 28.0, 47.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Shademaster Kiryn's Report
								["provider"] = { "i", 80013 },	-- Shademaster Kiryn's Report (QI!)
								["coord"] = { 29.0, 50.8, THE_JADE_FOREST },
								["cr"] = 56841,	-- Shademaster Kiryn
							}),
							objective(2, {	-- 0/1 Rivett Clutchpop's Report
								["provider"] = { "i", 80014 },	-- Rivett Clutchpop's Report (QI!)
								["coord"] = { 28.4, 47.8, THE_JADE_FOREST },
								["cr"] = 59305,	-- Rivett Clutchpop
							}),
							objective(3, {	-- 0/1 Shokia's Report
								["provider"] = { "i", 80015 },	-- Shokia's Report (QI!)
								["coord"] = { 28.6, 51.8, THE_JADE_FOREST },
								["cr"] = 56838,	-- Shokia
							}),
							objective(4, {	-- 0/1 Riko's Report
								["provider"] = { "i", 80061 },	-- Riko's Report (QI!)
								["coord"] = { 27.0, 54.8, THE_JADE_FOREST },
								["cr"] = 56840,	-- Riko
							}),
						},
					}),
					q(30498, {	-- Get Back Here! (A)
						["sourceQuest"] = 30000,	-- The Jade Serpent
						["providers"] = {
							{ "n", 57242 },	-- Elder Sage Wind-Yi
							{ "i", 86068 },	-- Alliance Missive
						},
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30499, {	-- Get Back Here! (H)
						["sourceQuest"] = 30000,	-- The Jade Serpent
						["qg"] = 57242,	-- Elder Sage Wind-Yi
						["providers"] = {
							{ "n", 57242 },	-- Elder Sage Wind-Yi
							{ "i", 86067 },	-- Horde Missive
						},
						["coord"] = { 55.8, 57.0, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(29920, {	-- Getting Permission
						["sourceQuest"] = 29995,	-- Shrine of the Dawn
						["qg"] = 56708,	-- Syra Goldendraft
						["coord"] = { 52.5, 38.1, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Pandriarch Windfur defeated
								["provider"] = { "n", 56206 },	-- Pandriarch Windfur
								["coord"] = { 52.6, 35.6, THE_JADE_FOREST },
							}),
							objective(2, {	-- Pandriarch Bramblestaff defeated
								["provider"] = { "n", 56209 },	-- Pandriarch Bramblestaff
								["coord"] = { 54.0, 38.4, THE_JADE_FOREST },
							}),
							objective(3, {	-- Pandriarch Goldendraft defeated
								["provider"] = { "n", 56210 },	-- Pandriarch Goldendraft
								["coord"] = { 53.6, 36.8, THE_JADE_FOREST },
							}),
							i(80758),	-- Zen Lotus Pendant
							i(80759),	-- Dawnblossom Necklace
							i(80760),	-- Vale Song Pendant
							i(80761),	-- Greenstone Pendant
							i(80762),	-- Jade Eye Pendant
						},
					}),
					q(29943, {	-- Guerrillas in our Midst
						["sourceQuest"] = 29824,	-- Scouting Report: Like Jinyu in a Barrel
						["qg"] = 56339,	-- General Nazgrim
						["coord"] = { 28.6, 47.5, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Alliance Infiltrator slain
								["provider"] = { "n", 56303 },	-- Alliance Infiltrator
								["coord"] = { 30.6, 52.2, THE_JADE_FOREST },
							}),
							i(80749),	-- Ambermist Cuffs
							i(80750),	-- Blackthicket Bindings
							i(80751),	-- Jade Witch Wristguards
							i(80752),	-- Glass Lake Bracers
							i(80753),	-- Silkwood Cuffs
							i(80754),	-- Deepwoods Armwraps
							i(80755),	-- Fox Grove Wristguards
							i(80756),	-- Thunderwood Armplates
							i(80757),	-- Jade Tiger Armplates
						},
					}),
					q(29968, {	-- Green-ish Energy
						["sourceQuest"] = 29824,	-- Scouting Report: Like Jinyu in a Barrel
						["qg"] = 56406,	-- Rivett Clutchpop
						["coord"] = { 30.7, 52.2, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/7 Greeen Branch
								["providers"] = {
									{ "i",  76333 },	-- Greeen Branch (QI!)
									{ "o", 209903 },	-- Greeen Branch
								},
								["coord"] = { 30.0, 52.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(29626, {	-- Groundskeeper Wu
						["sourceQuest"] = 29620,	-- The Great Banquet
						["qg"] = 54926,	-- Xiao
						["coord"] = { 43.1, 23.6, THE_JADE_FOREST },
					}),
					q(30568, {	-- Helping the Cause
						["sourceQuest"] = 30000,	-- The Jade Serpent
						["qg"] = 55122,	-- Admiral Taylor
						["coord"] = { 58.1, 80.6, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Challenge a Pearlfin Recruit
								["provider"] = { "n", 59572 },	-- Pearlfin Recruit
								["coord"] = { 58.8, 81.6, THE_JADE_FOREST },
								["cr"] = 56222,	-- Bold Karasshi
							}),
							objective(2, {	-- 0/1 Defeat the Captive Hozen
								["provider"] = { "n", 59562 },	-- Hozen Brawler
								["coord"] = { 54.8, 79.8, THE_JADE_FOREST },
								["cr"] = 59563,	-- Amber Kearnen <SI:7>
							}),
							objective(3, {	-- 0/3 Assist the Wounded Pearlfin
								["provider"] = { "n", 59609 },	-- Wounded Pearlfin
								["coord"] = { 59.8, 86.2, THE_JADE_FOREST },
								["cr"] = 59619,	-- Mishka <SI:7>
							}),
						},
					}),
					heroscall(q(49556, {	-- Hero's Call: Jade Forest!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 80,
						["groups"] = {
							objective(1, {	-- Stormwind Keep visited
								["provider"] = { "n", 1750 },	-- Grand Admiral Jes-Tereth
								["coord"] = { 85.6, 32.8, STORMWIND_CITY },
							}),
						},
					})),
					q(29556, {	-- Hozen Aren't Your Friends, Hozen Are Your Enemies
						["sourceQuest"] = 31745,	-- Onward and Inward
						["qg"] = 66292,	-- Sky Admiral Rogers
						["coord"] = { 48.0, 88.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Hozen slain
								["providers"] = {
									{ "n", 57119 },	-- Hozen Ravager
									{ "n", 66106 },	-- Hozen Scavenger
									{ "n", 66148 },	-- Hozen Diver
									{ "n", 66153 },	-- Hozen Scavenger
								},
								["coord"] = { 49.8, 90.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29893, {	-- Hue
						["sourceQuest"] = 31130,	-- A Visit with Lorewalker Cho
						["qgs"] = {
							56287,	-- Lorewalker Cho
							61218,	-- Lorewalker Cho
						},
						["coord"] = { 54.0, 91.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Amberfly Wing
								["providers"] = {
									{ "i", 76115 },	-- Amberfly Wing (QI!)
									{ "i", 76128 },	-- Delicate Shearing Knife (QI!)
								},
								["coord"] = { 57.4, 91.6, THE_JADE_FOREST },
								["cr"] = 54559,	-- Glittering Amberfly
							}),
						},
					}),
					q(29634, {	-- Husshun, the Wizened
						["sourceQuest"] = 29632,	-- Becoming Battle-Ready
						["qg"] = 54922,	-- Master Stone Fist
						["coord"] = { 43.2, 24.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Husshun defeated
								["provider"] = { "n", 54925 },	-- Husshun
								["coord"] = { 44.6, 24.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29928, {	-- I Have No Jade And I Must Scream
						["sourceQuest"] = 29925,	-- All We Can Spare
						["qg"] = 56346,	-- Foreman Mann
						["coord"] = { 50.9, 27.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/15 Chunk of Jade
								["providers"] = {
									{ "i",  76209 },	-- Chunk of Jade (QI!)
									{ "o", 209863 },	-- Chunk of Jade
								},
								["coord"] = { 48.4, 30.2, THE_JADE_FOREST },
								["cr"] = 56349,	-- Puckish Sprite
							}),
						},
					}),
					q(31134, {	-- If These Stones Could Speak
						["sourceQuest"] = 31132,	-- A Mile in my Shoes
						["qg"] = 63217,	-- Lorewalker Cho
						["coord"] = { 30.8, 34.0, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- First Stone Monolith Translated
								["provider"] = { "o", 212924 },	-- Stone Monolith
								["coord"] = { 30.6, 34.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Second Stone Monolith Translated
								["provider"] = { "o", 212925 },	-- Stone Monolith
								["coord"] = { 30.7, 33.8, THE_JADE_FOREST },
							}),
							objective(3, {	-- Third Stone Monolith Translated
								["provider"] = { "o", 212926 },	-- Stone Monolith
								["coord"] = { 30.9, 33.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(29922, {	-- In Search of Wisdom
						["sourceQuests"] = {
							29905,	-- Let Them Burn
							29906,	-- Carp Diem
							29901,	-- Anduin's Decision
						},
						["qg"] = 54960,	-- Elder Lusshan
						["coord"] = { 58.9, 81.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Speak to Kitemaster Ut-Nam
								["provider"] = { "n", 56737 },	-- Ut-Nam <Kite Master>
								["coord"] = { 58.0, 82.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29936, {	-- Instant Messaging
						["sourceQuest"] = 29935,	-- Orders are Orders
						["qg"] = 56336,	-- Chief Kah Kah
						["coord"] = { 27.9, 47.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Signaled Survivors
								["provider"] = { "i", 76305 },	-- Hellscream's Fist Signal Flare (QI!)
								["coord"] = { 28.0, 47.0, THE_JADE_FOREST },
							}),
							i(80763),	-- Friendship Ring
							i(80764),	-- Band of Acceptance
							i(80765),	-- Friendly Gift Band
							i(80766),	-- Band of Flair
							i(80767),	-- Band of Finding
						},
					}),
					q(30502, {	-- Jaded Heart
						["sourceQuest"] = 31303,	-- The Seal is Broken
						["qg"] = 59418,	-- Lorewalker Cho
						["coord"] = { 49.2, 61.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Sha Remnant slain
								["providers"] = {
									{ "n", 59434 },	-- Sha Remnant
									{ "n", 59454 },	-- Sha Remnant
								},
								["coord"] = { 48.8, 61.8, THE_JADE_FOREST },
								["cost"] = {{ "i", 80074, 6 }},	-- Celestial Jade (QI!)
							}),
							o(210921, {	-- Celestial Jade
								["coord"] = { 48.4, 60.6, THE_JADE_FOREST },
								["groups"] = { i(80074) }	-- Celestial Jade (QI!)
							}),
						},
					}),
					q(29562, {	-- Jailbreak
						["sourceQuest"] = 29759,	-- Kung Din
						["qg"] = 55196,	-- Bold Karasshi
						["coord"] = { 54.1, 82.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Slingtail Fishripper slain
								["provider"] = { "n", 55195 },	-- Slingtail Fishripper
								["coord"] = { 56.2, 79.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29924, {	-- Kill Kher Shan
						["sourceQuest"] = 29879,	-- Swallowed Whole
						["qg"] = 56327,	-- Nibi Nibi
						["coord"] = { 25.9, 38.7, THE_JADE_FOREST },
						["minReputation"] = { FACTION_FOREST_HOZEN, FRIENDLY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Kher Shan slain
								["provider"] = { "n", 56329 },	-- Kher Shan <The Hozen Bane>
								["coord"] = { 33.2, 41.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(31740, {	-- Koukou's Rampage
						["sourceQuest"] = 31739,	-- Priorities!
						["qg"] = 66199,	-- Lin Applebloom
						["coord"] = { 39.6, 90.0, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Koukou slain
								["provider"] = { "n", 66213 },	-- Koukou
								["coord"] = { 39.6, 90.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29759, {	-- Kung Din
						["sourceQuests"] = {
							29558,	-- The Path of War
							29559,	-- Freeing Our Brothers
							29560,	-- Ancient Power
						},
						["qg"] = 55196,	-- Bold Karasshi
						["coord"] = { 54.1, 82.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Slingtail Key
								["provider"] = { "i", 79753 },	-- Slingtail Key (QI!)
								["coord"] = { 54.6, 80.2, THE_JADE_FOREST },
								["cr"] = 59037,	-- Kung Din
							}),
							i(90371),	-- Landfall Burnished Greaves
							i(90366),	-- Landfall Chain Boots
							i(90365),	-- Landfall Leather Boots
							i(90369),	-- Landfall Moccasins
							i(90373),	-- Landfall Plate Boots
							i(90370),	-- Landfall Sabatons
							i(90368),	-- Landfall Satin Treads
							i(90367),	-- Landfall Silk Treads
							i(90372),	-- Landfall Warboots
						},
					}),
					q(31362, {	-- Last Piece of the Puzzle (A)
						["sourceQuests"] = {
							30565,	-- An Unexpected Advantage
							30568,	-- Helping the Cause
						},
						["qg"] = 59620,	-- Lorewalker Cho
						["coord"] = { 58.8, 81.1, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Heirloom placed at Cho Family Shrine
								["providers"] = {
									{ "i",  80071 },	-- Cho Family Heirloom
									{ "o", 213652 },	-- Cho Family Shrine
								},
								["coord"] = { 44.5, 66.9, THE_JADE_FOREST },
							}),
						},
					}),
					q(30485, {	-- Last Piece of the Puzzle (H)
						["sourceQuests"] = {
							30484,	-- Gauging Our Progress
							30466,	-- Sufficient Motivation
						},
						["qg"] = 59377,	-- Lorewalker Cho
						["coord"] = { 28.2, 46.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Heirloom placed at Cho Family Shrine
								["providers"] = {
									{ "i",  80071 },	-- Cho Family Heirloom
									{ "o", 213652 },	-- Cho Family Shrine
								},
								["coord"] = { 44.5, 66.9, THE_JADE_FOREST },
								["cr"] = 64475,	-- Mishi
							}),
						},
					}),
					q(29822, {	-- Lay of the Land
						["sourceQuests"] = {
							29827,	-- Acid Rain
							29821,	-- Missed Me By... That Much!
						},
						["qg"] = 55172,	-- General Nazgrim
						["coord"] = { 28.4, 24.9, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Shrine of the Sun Visited
								["coord"] = { 26.22, 32.36, THE_JADE_FOREST },
							}),
							objective(2, {	-- Shrine of the Moon Visited
								["coord"] = { 31.95, 27.77, THE_JADE_FOREST },
							}),
							objective(3, {	-- 0/1 Dook Ookem slain
								["provider"] = { "n", 55622 },	-- Dook Ookem
								["coord"] = { 27.8, 30.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29905, {	-- Let Them Burn
						["sourceQuest"] = 29904,	-- Bigger Fish to Fry
						["qg"] = 60970,	-- Admiral Taylor
						["coord"] = { 58.8, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Grookin Reinforcement or Slingtail Recruit slain
								["providers"] = {
									{ "n", 55461 },	-- Grookin Reinforcement
									{ "n", 61760 },	-- Slingtail Recruit
								},
								["coord"] = { 55.4, 82.0, THE_JADE_FOREST },
							}),
							i(84105),	-- Fishy (PET!)
						},
					}),
					q(30005, {	-- Lighting Up the Sky
						["sourceQuest"] = 29932,	-- The Temple of the Jade Serpent
						["qg"] = 56784,	-- Fei
						["coord"] = { 58.0, 59.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Fireworks launched
								["provider"] = { "o", 209672 },	-- Firework Launcher
								["coord"] = { 58.0, 59.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(30495, {	-- Love's Labor
						["sourceQuest"] = 29931,	-- The Serpent's Heart
						["qg"] = 59391,	-- Foreman Raike
						["coord"] = { 48.3, 61.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Delivery to Historian Dinh
								["provider"] = { "n", 59395 },	-- Historian Dinh
								["coord"] = { 46.4, 61.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- Delivery to Surveyor Sawa
								["provider"] = { "n", 59401 },	-- Surveyor Sawa
								["coord"] = { 46.8, 60.4, THE_JADE_FOREST },
							}),
							objective(3, {	-- Delivery to Kitemaster Shoku
								["provider"] = { "n", 59392 },	-- Kitemaster Shoku
								["coord"] = { 48.2, 60.0, THE_JADE_FOREST },
							}),
							objective(4, {	-- Delivery to Taskmaster Emi
								["provider"] = { "n", 59397 },	-- Taskmaster Emi
								["coord"] = { 47.6, 60.6, THE_JADE_FOREST },
							}),
							i(80773),	-- Singing Cricket Medallion
							i(80774),	-- Grove Viper Medallion
							i(80775),	-- Coral Adder Medallion
							i(80776),	-- Flamelager Medallion
							i(80777),	-- Amberfly Idol
						},
					}),
					q(29927, {	-- Mann's Man
						["sourceQuest"] = 29928,	-- I have No Jade and I must Scream
						["qg"] = 56346,	-- Foreman Mann
						["coord"] = { 50.9, 27.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Locate Hao Mann
								["provider"] = { "n", 56347 },	-- Hao Mann
								["coord"] = { 45.4, 29.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29670, {	-- Maul Gormal
						["sourceQuest"] = 29586,	-- The Splintered Path
						["qg"] = 55009,	-- Shao the Defiant
						["coord"] = { 41.0, 73.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Subjugator Gormal slain
								["provider"] = { "n", 55016 },	-- Subjugator Gormal
								["coord"] = { 37.8, 76.6, THE_JADE_FOREST },
							}),
							i(80778),	-- Silkbead Idol
							i(80779),	-- Mirror Strider Emblem
							i(80780),	-- Greenpaw Idol
							i(80781),	-- Shoots of Life
							i(80782),	-- Misty Jade Idol
						},
					}),
					q(29821, {	-- Missed Me By... That Much!
						["sourceQuest"] = 31999,	-- Nazgrim's Command
						["providers"] = {
							{ "n", 55521 },	-- Rivett Clutchpop
							{ "i", 84157 },	-- Rivett's Rocket Jumpers (QI!)
						},
						["coord"] = { 28.1, 24.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(29743, {	-- Monstrosity
						["sourceQuest"] = 31774,	-- Seeking Zin'jun
						["provider"] = { "o", 212181 },	-- Ancient Statue
						["coord"] = { 30.8, 17.4, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Statue Torso Sketched
								["provider"] = { "o", 212182 },	-- Ancient Statue Torso
								["coord"] = { 29.2, 18.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- Statue Arm Sketched
								["provider"] = { "o", 212183 },	-- Ancient Statue Arm
								["coord"] = { 30.1, 21.6, THE_JADE_FOREST },
							}),
							objective(3, {	-- Statue Shoulder Sketched
								["provider"] = { "o", 212184 },	-- Ancient Statue Shoulder
								["coord"] = { 28.7, 22.2, THE_JADE_FOREST },
							}),
							objective(4, {	-- Statue Head Sketched
								["provider"] = { "o", 212186 },	-- Ancient Statue Head
								["coord"] = { 29.9, 22.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(30001, {	-- Moth-Ridden
						["sourceQuest"] = 29998,	-- The Librarian's Quandary
						["qg"] = 56786,	-- Lorewalker Stonestep
						["coord"] = { 56.2, 60.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Dappled Moth slain
								["provider"] = { "n", 57232 },	-- Dappled Moth
								["coord"] = { 56.6, 60.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(30648, {	-- Moving On
						["sourceQuests"] = {
							31319,	-- Emergency Response (A)
							30504,	-- Emergency Response (H)
							30502,	-- Jaded Heart
							30500,	-- Residual Fallout
						},
						["qg"] = 59899,	-- Fei
						["coord"] = { 49.3, 61.4, THE_JADE_FOREST },
						["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
						-- possibly a breadcrumb?
					}),
					q(31999, {	-- Nazgrim's Command
						["sourceQuest"] = 31779,	-- The Darkness Within
						["provider"] = { "o", 215844 },	-- Flagpole
						["coord"] = { 27.5, 24.2, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(90293),	-- Peacebreaker's Armored Helm
							i(90292),	-- Peacebreaker's Burnished Headcover
							i(90290),	-- Peacebreaker's Chain Helm
							i(90294),	-- Peacebreaker's Heavy Helm
							i(90287),	-- Peacebreaker's Hide Helm
							i(90285),	-- Peacebreaker's Leather Helm
							i(90286),	-- Peacebreaker's Ringmail Helm
							i(90288),	-- Peacebreaker's Satin Cowl
							i(90289),	-- Peacebreaker's Silk Cowl
						},
					}),
					q(30069, {	-- No Plan Survives Contact with the Enemy
						["sourceQuest"] = 31733,	-- Touching Ground
						["qg"] = 54616,	-- Sully "The Pickle" McLeary
						["coord"] = { 43.6, 90.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Garrosh'ar Grunt slain
								["provider"] = { "n", 66282 },	-- Garrosh'ar Grunt
								["coord"] = { 45.0, 93.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/4 Garrosh'ar Gear-Greaser slain
								["provider"] = { "n", 66290 },	-- Garrosh'ar Gear-Greaser
								["coord"] = { 44.8, 90.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(31745, {	-- Onward and Inward
						["sourceQuest"] = 30070,	-- The Fall of Ga'trul
						["qgs"] = {
							54617,	-- Rell Nightwind
							66581,	-- Rell Nightwind
						},
						["coord"] = { 41.4, 79.0, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29580, {	-- Orchard-Supplied Hardware
						["qg"] = 54854,	-- Gentle Mother Hanae
						["coord"] = { 43.2, 76.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Orchard Tool
								["providers"] = {
									{ "i",  72133 },	-- Orchard Tool (QI!)
									{ "o", 209344 },	-- Orchard Tool
									{ "o", 209345 },	-- Orchard Tool
								},
								["coord"] = { 44.5, 75.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29935, {	-- Orders are Orders
						["sourceQuest"] = 29879,	-- Swallowed Whole
						["providers"] = {
							{ "n", 56313 },	-- Tooki Tooki
							{ "i", 85507 },	-- Alliance Orders (QI!)
						},
						["coord"] = { 26.2, 37.3, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(30002, {	-- Pages of History
						["sourceQuest"] = 29998,	-- The Librarian's Quandry
						["qg"] = 56786,	-- Lorewalker Stonestep
						["coord"] = { 56.2, 60.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Bookworms squashed
								["providers"] = {
									{ "n",  57237 },	-- Bookworm
									{ "o", 209594 },	-- Infested Book
								},
								["coord"] = { 55.6, 60.6, THE_JADE_FOREST },
							}),
							i(80722),	-- Ambermist Treads
							i(80723),	-- Blackthicket Footguards
							i(80724),	-- Jade Witch Sabatons
							i(80725),	-- Glass Lake Greaves
							i(80726),	-- Silkwood Treads
							i(80727),	-- Deepwoods Boots
							i(80728),	-- Fox Grove Sabatons
							i(80729),	-- Thunderwood Warboots
							i(80730),	-- Jade Tiger Warboots
						},
					}),
					q(31765, {	-- Paint it Red!
						["sourceQuest"] = 29690,	-- Into the Mists
						["qg"] = 55135,	-- General Nazgrim
						["coord"] = { 30.7, 10.2, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/80 Thunder Hold troops slain
								["providers"] = {
									{ "n", 66200 },	-- Thunder Hold Soldier
									{ "n", 66202 },	-- Thunder Hold Laborer
									{ "n", 66291 },	-- Thunder Hold Soldier
								},
								["coord"] = { 33.4, 8.4, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/3 Thunder Hold Cannons destroyed
								["provider"] = { "n", 66203 },	-- Thunder Hold Cannon
								["coord"] = { 32.4, 7.5, THE_JADE_FOREST },
							}),
							i(90329),	-- Garrosh's Vanguard Battleaxe
							i(90336),	-- Gunship Armory Greataxe
							i(90324),	-- Land Claimer's Cudgel
							i(90322),	-- Parachute Cord Slicer
							i(90323),	-- Spare Gunship Cannon
							i(90326),	-- Sataff of Rolling Thunder
							i(90325),	-- Staff of the Mist Navigator
							i(90327),	-- Stormcaller's Warclub
							i(90328),	-- Trench Medic's Staff
						},
					}),
					q(31152, {	-- Peering Into the Past
						["sourceQuest"] = 31134,	-- If These Stones Could Speak
						["qg"] = 63217,	-- Lorewalker Cho
						["coord"] = { 30.8, 34.0, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(29755, {	-- Pei-Back
						["sourceQuest"] = 29754,	-- To Bridge Earth and Sky
						["provider"] = { "o", 214903 },	-- The Tan-Chao
						["coord"] = { 43.8, 12.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Shan Jitong slain
								["provider"] = { "n", 56596 },	-- Shan Jitong <Waker of Spirits>
								["coord"] = { 42.8, 11.4, THE_JADE_FOREST },
							}),
							i(80695),	-- Ambermist Mantle
							i(80696),	-- Blackthicket Spaulders
							i(80697),	-- Jade Witch Spaulders
							i(80698),	-- Glass Lake Spaulders
							i(80699),	-- Silkwood Amice
							i(80700),	-- Deepwoods Spaulders
							i(80701),	-- Fox Grove Spaulders
							i(80702),	-- Thunderwood Shoulders
							i(80703),	-- Jade Tiger Shoulders
						},
					}),
					q(29623, {	-- Perfection
						["sourceQuest"] = 29622,	-- Your Training Starts Now
						["qg"] = 54917,	-- Instructor Xann
						["coord"] = { 41.6, 28.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Practice Strikes completed
								["description"] = "Do NOT react immediately to the visual cue. Wait for the pupils to react and then do the move. If you go too quickly, you won't get credit.",
								["provider"] = { "n", 55199 },	-- Tian Instructor
								["coord"] = { 41.4, 27.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(31738, {	-- Pillaging Peons
						["sourceQuests"] = {
							31736,	-- Envoy of the Alliance
							31737,	-- The Cost of War
						},
						["qg"] = 65910,	-- Sunke Khang
						["coord"] = { 46.2, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Twinspire Peon slain
								["provider"] = { "n", 59979 },	-- Twinspire Peon
								["coord"] = { 43.4, 87.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29891, {	-- Potency
						["sourceQuest"] = 31130,	-- A Visit with Lorewalker Cho
						["qgs"] = {
							56287,	-- Lorewalker Cho
							61218,	-- Lorewalker Cho
						},
						["coord"] = { 54.0, 91.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Mist Creeper slain
								["provider"] = { "n", 56304 },	-- Mist Creeper
								["coord"] = { 58.0, 89.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Mist Horror Heart
								["provider"] = { "i", 76129 },	-- Mist Horror Heart (QI!)
								["coord"] = { 59.2, 91.6, THE_JADE_FOREST },
								["cr"] = 56310,	-- Mist Horror
							}),
						},
					}),
					q(31739, {	-- Priorities! (A)
						["sourceQuests"] = {
							31736,	-- Envoy of the Alliance
							31737,	-- The Cost of War
						},
						["qg"] = 64596,	-- Teng Applebloom
						["coord"] = { 46.1, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Applebloom Cider
								["providers"] = {
									{ "o", 215134 },	-- Applebloom Cider
									{ "o", 215133 },	-- Applebloom Cider
								},
								["coord"] = { 43.5, 87.5, THE_JADE_FOREST },
							}),
						},
					}),
					q(31978, {	-- Priorities! (H1)
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qg"] = 66662,	-- Gi-Oh
						["coord"] = { 31.9, 13.2, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Barrel of Honeybrew
								["provider"] = { "o", 215695 },	-- Barrel of Honeybrew
								["coord"] = { 32.2, 13.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(31772, {	-- Priorities! (H2)
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qgs"] = {
							66660,	-- Ellie Honeypaw
							66825,	-- Ellie Honeypaw
						},
						["coord"] = { 30.5, 7.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Barrel of Honeybrew
								["provider"] = { "o", 215695 },	-- Barrel of Honeybrew
								["coord"] = { 32.2, 13.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(31773, {	-- Prowler Problems
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qgs"] = {
							66659,	-- Sue-Ji the Tender
							66838,	-- Kai-Lin Honeydew
							66841,	-- Kai-Lin Honeydew
							66853,	-- Kai-Lin Honeydew
						},
						["coords"] = {
							{ 32.0, 13.3, THE_JADE_FOREST },
							{ 30.5, 7.4, THE_JADE_FOREST },
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Sha-Infested Prowler slain
								["provider"] = { "n", 66668 },	-- Sha-Infested Prowler
								["coord"] = { 31.2, 10.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29882, {	-- Quill of Stingers
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 56063,	-- Inkmaster Jo Po
						["coord"] = { 55.3, 45.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Wasp Stinger
								["provider"] = { "i", 75221 },	-- Wasp Stinger (QI!)
								["coord"] = { 54.2, 46.6, THE_JADE_FOREST },
								["cr"] = 56201,	-- Orchard Wasp
							}),
							i(80713),	-- Ambermist Leggings
							i(80714),	-- Blackthicket Legguards
							i(80715),	-- Jade Witch Legguards
							i(80716),	-- Glass Lake Legplates
							i(80717),	-- Silkwood Trousers
							i(80718),	-- Deepwoods Legguards
							i(80719),	-- Fox Grove Legguards
							i(80720),	-- Thunderwood Legguards
							i(80721),	-- Jade Tiger Legguards
						},
					}),
					q(29579, {	-- Rally the Survivors
						["qg"] = 54697,	-- Shao the Defiant
						["coord"] = { 43.4, 75.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/5 Survivors Rescued
								["provider"] = { "n", 54763 },	-- Nectarbreeze Farmer
								["coord"] = { 44.6, 75.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29694, {	-- Regroup!
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qg"] = 66656,	-- General Nazgrim
						["coord"] = { 33.6, 10.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Shademaster Kiryn Rescued
								["provider"] = { "n", 55141 },	-- Shademaster Kiryn
								["coord"] = { 32.0, 13.2, THE_JADE_FOREST },
							}),
							objective(2, {	-- Rivett Clutchpop Rescued
								["provider"] = { "n", 55146 },	-- Rivett Clutchpop
								["coord"] = { 30.6, 7.2, THE_JADE_FOREST },
							}),
							objective(3, {	-- Sergeant Gorrok Rescued
								["provider"] = { "n", 55162 },	-- Sergeant Gorrok
								["coord"] = { 30.6, 11.6, THE_JADE_FOREST },
							}),
							objective(4, {	-- Shokia Rescued
								["provider"] = { "n", 55170 },	-- Shokia
								["coord"] = { 29.4, 8.4, THE_JADE_FOREST },
							}),
							i(90334),	-- Cannonball-Dented Shield
							i(90335),	-- Hozen-Thunking Mace
							i(90337),	-- Marine's Boarding Plank
							i(90333),	-- Scavenged Rotor Blade
							i(90330),	-- Smoldering Gunship Strut
							i(90332),	-- Zin'jun's Dwarf-Cleaver
						},
					}),
					q(30500, {	-- Residual Fallout
						["sourceQuest"] = 31303,	-- The Seal is Broken
						["qg"] = 59418,	-- Lorewalker Cho
						["coord"] = { 49.2, 61.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Sha Echo slain
								["provider"] = { "n", 59417 },	-- Sha Echo
								["coord"] = { 48.8, 61.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29899, {	-- Rest in Peace
						["sourceQuest"] = 29890,	-- Finding Your Center
						["qg"] = 56432,	-- Ren Whitepaw
						["coord"] = { 65.9, 79.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Tortured Spirit slain
								["provider"] = { "n", 56444 },	-- Tortured Spirit
								["coord"] = { 67.2, 81.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29751, {	-- Ritual Artifacts
						["sourceQuest"] = 29749,	-- An Urgent Plea
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Jade Cong
								["providers"] = {
									{ "i",  74762 },	-- Jade Cong (QI!)
									{ "o", 209699 },	-- Jade Cong
								},
								["coord"] = { 42.7, 15.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Chipped Ritual Bowl
								["providers"] = {
									{ "i",  74760 },	-- Chipped Ritual Bowl (QI!)
									{ "o", 209700 },	-- Chipped Ritual Bowl
								},
								["coord"] = { 41.6, 14.3, THE_JADE_FOREST },
							}),
							objective(3, {	-- 0/1 Pungent Ritual Candle
								["providers"] = {
									{ "i",  74761 },	-- Pungent Ritual Candle (QI!)
									{ "o", 209701 },	-- Pungent Ritual Candle
								},
								["coord"] = { 42.2, 17.1, THE_JADE_FOREST },
							}),
						},
					}),
					q(29885, {	-- Road Rations
						["sourceQuest"] = 29562,	-- Jailbreak
						["qg"] = 66949,	-- Rell Nightwind
						["coord"] = { 58.8, 81.9, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Tortoise Flank
								["provider"] = { "i", 73368 },	-- Tortoise Flank (QI!)
								["coord"] = { 59.6, 81.6, THE_JADE_FOREST },
								["cr"] = 59084,	-- Pearly Tortoise
							}),
							i(83097),	-- Tortoise Jerky
						},
					}),
					q(29898, {	-- Sacred Waters
						["sourceQuest"] = 29890,	-- Finding Your Center
						["qg"] = 56434,	-- Anduin Wrynn
						["coord"] = { 65.9, 79.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Waters of Restorative Body
								["provider"] = { "o", 209885 },	-- Restorative Body
								["coord"] = { 66.8, 82.1, THE_JADE_FOREST },
							}),
							objective(2, {	-- Waters of Restorative Mind
								["provider"] = { "o", 209888 },	-- Restorative Mind
								["coord"] = { 67.3, 81.7, THE_JADE_FOREST },
							}),
							objective(3, {	-- Waters of Restorative Spirit
								["provider"] = { "o", 209889 },	-- Restorative Spirit
								["coord"] = { 68.0, 81.8, THE_JADE_FOREST },
							}),
							objective(4, {	-- Waters of Restorative Heart
								["provider"] = { "o", 209890 },	-- Restorative Heart
								["coord"] = { 66.5, 80.1, THE_JADE_FOREST },
							}),
						},
					}),
					q(29730, {	-- Scouting Report: Hostile Natives
						["sourceQuests"] = {
							29971,	-- The Scouts Return (breadcrumb)
							29939,	-- Boom Bait
							29942,	-- Silly Wikket, Slickies are for Hozen
							31239,	-- What's in a Name Name?
						},
						["qg"] = 55648,	-- Riko
						["coord"] = { 28.6, 47.4, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Inspect the warning sign
								["provider"] = { "o", 209615 },	-- STAY OUT - NO VISITORS
								["coord"] = { 38.3, 45.5, THE_JADE_FOREST },
							}),
							objective(2, {	-- Inspect a Lifelike Jade Statue
								["provider"] = { "n", 55378 },	-- Lifelike Jade Statue
								["coord"] = { 39.2, 45.8, THE_JADE_FOREST },
							}),
							objective(3, {	-- Speak with Widow Greenpaw
								["provider"] = { "n", 55381 },	-- Widow Greenpaw <"The Jade Witch">
								["coord"] = { 39.6, 46.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29824, {	-- Scouting Report: Like Jinyu in a Barrel
						["sourceQuest"] = 29823,	-- Scouting Report: The Friend of My Enemy
						["qg"] = 55647,	-- Shokia
						["coord"] = { 28.6, 47.3, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Escort Shademaster Kiryn through the camp
								["provider"] = { "n", 55667 },	-- Shademaster Kiryn
							}),
							i(80768),	-- Moonwater Ring
							i(80769),	-- Serpentspine Band
							i(80770),	-- Lurking Tiger Band
							i(80771),	-- Ring of Restoration
							i(80772),	-- Blossoming Ring
						},
					}),
					q(29731, {	-- Scouting Report: On the Right Track
						["sourceQuest"] = 29730,	-- Scouting Report: Hostile Natives
						["qg"] = 55646,	-- Shademaster Kiryn
						["coord"] = { 28.6, 47.4, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Search the Serpent's Heart for signs of life
								["provider"] = { "n", 55770 },	-- Young Alliance Soldier
								["coord"] = { 48.6, 60.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29823, {	-- Scouting Report: The Friend of My Enemy
						["sourceQuest"] = 29731,	-- Scouting Report: On the Right Track
						["qg"] = 55648,	-- Riko
						["coord"] = { 28.6, 47.4, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(29804, {	-- Seein' Red
						["sourceQuest"] = 29765,	-- Cryin' My Eyes Out
						["qgs"] = {
							55403,	-- Zin'Jun
							55497,	-- Zin'Jun
							67153,	-- Zin'Jun
						},
						["coord"] = { 31.1, 17.5, THE_JADE_FOREST },	-- Zin'jun follows you around, but if you abandon the quest then you can find him here
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Konk slain
								["provider"] = { "n", 55509 },	-- Konk
								["coord"] = { 31.8, 22.0, THE_JADE_FOREST },
							}),
							i(90302),	-- Armored Chestpiece of Eminent Domain
							i(90301),	-- Burnished Chestguard of Eminent Domain
							i(90296),	-- Chain Armor of Eminent Domain
							i(90303),	-- Heavy Chestpiece of Eminent Domain
							i(90299),	-- Hide Tunic of Eminent Domain
							i(90295),	-- Leather Tunic of Eminent Domain
							i(90300),	-- Ringmail Armor of Eminent Domain
							i(90298),	-- Stain Robe of Eminent Domain
							i(90297),	-- Silk Robe of Eminent Domain
						},
					}),
					q(29888, {	-- Seek Out the Lorewalker
						["sourceQuest"] = 29727,	-- SI:7 Report: Take No Prisoners
						["qg"] = 56222,	-- Bold Karasshi
						["coord"] = { 58.9, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31774, {	-- Seeking Zin'jun
						["sourceQuests"] = {
							31771,	-- Face to Face With Consequence,
							31773,	-- Prowler Problems
							29694,	-- Regroup!
							31770,	-- You're Either With Us Or...
						},
						["qg"] = 66845,	-- Sergeant Gorrok
						["coord"] = { 29.1, 13.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(90319),	-- Landfall Burnished Greaves
							i(90314),	-- Landfall Chain Boots
							i(90313),	-- Landfall Leather Boots
							i(90317),	-- Landfall Moccasins
							i(90321),	-- Landfall Plate Boots
							i(90318),	-- Landfall Sabatons
							i(90316),	-- Landfall Satin Treads
							i(90315),	-- Landfall Silk Treads
							i(90320),	-- Landfall Warboots
						},
					}),
					q(29995, {	-- Shrine of the Dawn
						["sourceQuest"] = 29993,	-- Find the Boy
						["qg"] = 56065,	-- Inkmaster Wei
						["coord"] = { 54.6, 44.1, THE_JADE_FOREST },
					}),
					q(29725, {	-- SI:7 Report: Fire From the Sky
						["sourceQuest"] = 29733,	-- SI:7 Report: Lost in the Woods
						["qg"] = 55282,	-- Sully "The Pickle" McLeary
						["coord"] = { 58.8, 81.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29726, {	-- SI:7 Report: Hostile Natives
						["sourceQuest"] = 29725,	-- SI:7 Report: Fire From the Sky
						["qg"] = 55284,	-- Little Lu
						["coord"] = { 59.0, 81.9, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Inspect the warning sign
								["provider"] = { "o", 209615 },	-- STAY OUT - NO VISITORS
								["coord"] = { 38.3, 45.5, THE_JADE_FOREST },
							}),
							objective(2, {	-- Inspect a Lifelike Jade Statue
								["provider"] = { "n", 55378 },	-- Lifelike Jade Statue
								["coord"] = { 39.2, 45.8, THE_JADE_FOREST },
							}),
							objective(3, {	-- Inspect Suspicious Jade Statue
								["provider"] = { "n", 55380 },	-- Suspicious Jade Statue
								["coord"] = { 38.9, 46.4, THE_JADE_FOREST },
							}),
							objective(4, {	-- Speak with Widow Greenpaw
								["provider"] = { "n", 55381 },	-- Widow Greenpaw <"The Jade Witch">
								["coord"] = { 39.6, 46.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29733, {	-- SI:7 Report: Lost in the Woods
						["sourceQuest"] = 29894,	-- Spirits of the Water
						["qg"] = 55333,	-- Rell Nightwind
						["coord"] = { 58.9, 81.8, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29727, {	-- SI:7 Report: Take No Prisoners
						["sourceQuest"] = 29726,	-- SI:7 Report: Take No Prisoners
						["qg"] = 55283,	-- Amber Kearnen
						["coord"] = { 58.8, 81.9, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Guide Sully through the hozen camp
								["providers"] = {
									{ "n",  55408 },	-- Sully "The Pickle" McLeary <SI:7>
									{ "o", 209691 },	-- Sniper Rifle
								},
								["coord"] = { 28.2, 51.0, THE_JADE_FOREST },
							}),
							i(80768),	-- Moonwater Ring
							i(80769),	-- Serpentspine Band
							i(80770),	-- Lurking Tiger Band
							i(80771),	-- Ring of Restoration
							i(80772),	-- Blossoming Ring
						},
					}),
					q(29942, {	-- Silly Wikket, Slickies are for Hozen
						["sourceQuest"] = 29937,	-- Furious Fowl
						["qg"] = 56358,	-- Eekle Eekle
						["coord"] = { 27.0, 50.8, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/4 Snapper Steak
								["provider"] = { "i", 76420 },	-- Snapper Steak (QI!)
								["coord"] = { 27.2, 57.0, THE_JADE_FOREST },
								["cr"] = 56447,	-- Muck Snapper
							}),
						},
					}),
					q(29748, {	-- Simulacrumble
						["sourceQuest"] = 29745,	-- The Sprites' Plight
						["provider"] = { "o", 214871 },	-- Shattered Destroyer
						["coord"] = { 48.5, 20.6, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Vacant Destroyer Kicked
								["provider"] = { "o", 214873 },	-- Vacant Destroyer
								["coord"] = { 48.0, 16.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(31743, {	-- Smoke Before Fire
						["sourceQuests"] = {
							31738,	-- Pillaging Peons
							29552,	-- Critical Condition
							31740,	-- Koukou's Rampage
						},
						["qg"] = 54617,	-- Rell Nightwind
						["coord"] = { 46.1, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Twinspire munitions stockpile bombed
								["providers"] = {
									{ "o", 215195 },	-- Twinspire munitions
									{ "i",  89602 },	-- Alliance Flare
								},
								["coord"] = { 40.9, 82.5, THE_JADE_FOREST },
							}),
							objective(2, {	-- Twinspire Demolishers bombed
								["providers"] = {
									{ "n", 66279 },	-- Twinspire Demolisher
									{ "i", 89602 },	-- Alliance Flare
								},
								["coord"] = { 41.6, 81.6, THE_JADE_FOREST },
							}),
							objective(3, {	-- Xhu'daggab bombed
								["providers"] = {
									{ "n", 66277 },	-- Xhu'daggab
									{ "i", 89602 },	-- Alliance Flare
								},
								["coord"] = { 41.1, 81.6, THE_JADE_FOREST },
							}),
							objective(4, {	-- Wild Imps bombed
								["providers"] = {
									{ "n", 66278 },	-- Wild Imp
									{ "i", 89602 },	-- Alliance Flare
								},
								["coord"] = { 43.2, 81.3, THE_JADE_FOREST },
							}),
						},
					}),
					q(29894, {	-- Spirits of the Water
						["sourceQuests"] = {
							29762,	-- Family Heirlooms
							29887,	-- The Elder's Instruments
						},
						["qg"] = 59058,	-- Pearlkeeper Fujin
						["coord"] = { 58.7, 81.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Speak to Elder Lusshan
								["provider"] = { "n", 56398 },	-- Elder Lusshan <Waterspeaker>
							}),
							objective(2, {	-- Witness the waterspeaking ceremony
								["provider"] = { "n", 54894 },	-- Rassharom <Ancient Emperor of Pandaria>
							}),
						},
					}),
					q(29585, {	-- Spitfire
						["qg"] = 54854,	-- Gentle Mother Hanae
						["coord"] = { 43.2, 76.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Orchard Fires Put Out
								["provider"] = { "i", 72578 },	-- Nectarbreeze Cider (QI!)
							}),
							i(84243),	-- Bamboo Fiber Gloves
							i(84244),	-- Bamboo Leaf Gloves
							i(84245),	-- Jade Witch Handguards
							i(84246),	-- Bamboo Strip Gloves
							i(84247),	-- Bamboo Strip Handguards
							i(84248),	-- Bamboo Plate Gloves
							i(84249),	-- Fox Grove Handguards
							i(84250),	-- Bamboo Leaf Gauntlets
							i(88709),	-- Bamboo Plate Gauntlets
						},
					}),
					q(31121, {	-- Stay a While, and Listen
						["sourceQuest"] = 29822,	-- Lay of the Land
						["qg"] = 55768,	-- Lorewalker Cho
						["coord"] = { 27.5, 32.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(31776, {	-- Strongarm Tactics
						["sourceQuest"] = 29804,	-- Seein' Red
						["qg"] = 65999,	-- General Nazgrim
						["coord"] = { 31.6, 21.9, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Master Engineer Cogswing slain
								["provider"] = { "n", 65882 },	-- Master Engineer Cogswing
								["coord"] = { 30.2, 24.2, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/1 Gyro-Mechanic Lavenderp slain
								["provider"] = { "n", 65883 },	-- Gyro-Mechanic Lavenderp
								["coord"] = { 30.2, 24.2, THE_JADE_FOREST },
							}),
							objective(3, {	-- 0/1 Morgus Grimhatchet slain
								["provider"] = { "n", 65880 },	-- Morgus Grimhatchet
								["coord"] = { 29.6, 23.2, THE_JADE_FOREST },
							}),
							objective(4, {	-- 0/1 Corporal Jackson Silver slain
								["provider"] = { "n", 65881 },	-- Corporal Jackson Silver
								["coord"] = { 27.8, 23.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(30466, {	-- Sufficient Motivation
						["sourceQuest"] = 30000,	-- The Jade Serpent
						["qg"] = 57108,	-- General Nazgrim
						["coord"] = { 28.0, 47.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Hozen Motivated
								["providers"] = {
									{ "n", 59296 },	-- Lazy Hozen
									{ "n", 59740 },	-- Lazy Hozen
									{ "i", 79884 },	-- Bucket of Slicky Water (QI!)
								},
								["coord"] = { 28.0, 50.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29879, {	-- Swallowed Whole
						["sourceQuest"] = 31167,	-- Family Tree
						["qg"] = 63307,	-- Lorewalker Cho
						["coord"] = { 28.8, 32.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Engorged Crocolisk slain
								["provider"] = { "n", 56183 },	-- Engorged Crocolisk
								["coord"] = { 24.6, 36.6, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/8 Speckled Trout
								["provider"] = { "i", 75202 },	-- Speckled Trout (QI!)
								["coord"] = { 24.2, 34.8, THE_JADE_FOREST },
								["cr"] = 56180,	-- Speckled Trout
							}),
						},
					}),
					warchiefscommand(q(29611, {	-- The Art of War (Nobody)
						["description"] = "Players who have not completed Vashj'ir will receive this version of The Art of War.",
						["timeline"] = { ADDED_5_0_4 },
						["races"] = HORDE_ONLY,
					})),
					warchiefscommand(q(29612, {	-- The Art of War (Veteran)
						["description"] = "Players who have completed Vashj'ir will receive this version of The Art of War.",
						["timeline"] = { ADDED_5_0_4 },
						["races"] = HORDE_ONLY,
					})),
					q(29933, {	-- The Bees' Knees
						["sourceQuest"] = 29879,	-- Swallowed Whole
						["qg"] = 56351,	-- Bo Bo
						["coord"] = { 25.8, 37.9, THE_JADE_FOREST },
						["minReputation"] = { FACTION_FOREST_HOZEN, FRIENDLY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/30 Bug Leg
								["provider"] = { "i", 76173 },	-- Bug Leg (QI!)
								["coord"] = { 30.8, 44.6, THE_JADE_FOREST },
								["cr"] = 56283,	-- Tigerfly
							}),
						},
					}),
					q(31737, {	-- The Cost of War
						["sourceQuest"] = 31735,	-- The Right Tool For The Job
						["qg"] = 54617,	-- Rell Nightwind
						["coord"] = { 46.4, 96.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Sha Haunt slain
								["provider"] = { "n", 66423 },	-- Sha Haunt
								["coord"] = { 45.0, 93.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/5 Sha Harbinger slain
								["provider"] = { "n", 66424 },	-- Sha Harbinger
								["coord"] = { 45.2, 95.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(31779, {	-- The Darkness Within
						["sourceQuests"] = {
							31775,	-- Assault on the Airstrip
							31777,	-- Choppertunity
							31776,	-- Strongarm Tactics
							31778,	-- Unreliable Allies
						},
						["qg"] = 65999,	-- General Nazgrim
						["coord"] = { 31.6, 21.9, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Captain Doren slain
								["provider"] = { "n", 66052 },	-- Captain Doren
								["coord"] = { 25.8, 23.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(29716, {	-- The Double Hozen Dare
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 55234,	-- An Windfur
						["coord"] = { 46.6, 46.1, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/6 Rescue Cubs
								["provider"] = { "n", 55267 },	-- Scared Pandaren Cub
								["coord"] = { 39.0, 47.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(29887, {	-- The Elder's Instruments
						["sourceQuests"] = {
							29883,	-- The Pearlfin Situation
							29885,	-- Road Rations
						},
						["qg"] = 59058,	-- Pearlkeeper Fujin
						["coord"] = { 58.7, 81.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Waterspeaker's Staff
								["provider"] = { "i", 79807 },	-- Waterspeaker's Staff (QI!)
								["coord"] = { 66.0, 87.4, THE_JADE_FOREST },
								["cr"] = 55110,	-- Slingtail Stickypaw
							}),
							objective(2, {	-- 0/1 Ceremonial Robes
								["provider"] = { "i", 79808 },	-- Ceremonial Robes (QI!)
								["coord"] = { 66.0, 87.4, THE_JADE_FOREST },
								["cr"] = 55110,	-- Slingtail Stickypaw
							}),
							objective(3, {	-- 0/1 Jade Crown
								["provider"] = { "i", 79809 },	-- Jade Crown (QI!)
								["coord"] = { 66.0, 87.4, THE_JADE_FOREST },
								["cr"] = 55110,	-- Slingtail Stickypaw
							}),
							objective(4, {	-- 0/1 Rosewood Beads
								["provider"] = { "i", 79810 },	-- Rosewood Beads (QI!)
								["coord"] = { 66.0, 87.4, THE_JADE_FOREST },
								["cr"] = 55110,	-- Slingtail Stickypaw
							}),
						},
					}),
					q(30070, {	-- The Fall of Ga'trul
						["sourceQuests"] = {
							31741,	-- Twinspire Keep
							31744,	-- Unfair Trade
							31742,	-- Fractured Forces
							31743,	-- Smoke Before Fire
						},
						["qg"] = 54616,	-- Sully "The Pickle" McLeary
						["coord"] = { 41.4, 79.6, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ga'trul slain
								["provider"] = { "n", 66276 },	-- Ga'trul
								["coord"] = { 41.6, 78.6, THE_JADE_FOREST },
							}),
							i(90345),	-- Peacebreaker's Armored Helm
							i(90344),	-- Peacebreaker's Burnished Headcover
							i(90339),	-- Peacebreaker's Chain Helm
							i(90346),	-- Peacebreaker's Heavy Helm
							i(90342),	-- Peacebreaker's Hide Helm
							i(90338),	-- Peacebreaker's Leather Helm
							i(90343),	-- Peacebreaker's Ringmail Helm
							i(90341),	-- Peacebreaker's Satin Hood
							i(90340),	-- Peacebreaker's Silk Cowl
						},
					}),
					q(31769, {	-- The Final Blow!
						["sourceQuests"] = {
							31767,	-- Finish Them!
							31768,	-- Fire is Always the Answer
						},
						["qg"] = 66646,	-- General Nazgrim
						["coord"] = { 34.7, 10.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Destroy the first barricade
								["provider"] = { "i", 89769 },	-- Nazgrim's Flare Gun (QI!)
							}),
							objective(2, {	-- Destroy the second barricade
								["provider"] = { "i", 89769 },	-- Nazgrim's Flare Gun (QI!)
							}),
							objective(3, {	-- Destroy the third barricade
								["provider"] = { "i", 89769 },	-- Nazgrim's Flare Gun (QI!)
							}),
							objective(4, {	-- Find Captain Doren
								["provider"] = { "n", 66283 },	-- Captain Doren
								["coord"] = { 33.6, 10.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29620, {	-- The Great Banquet
						["sourceQuest"] = 29619,	-- A Courteous Guest
						["qg"] = 54913,	-- Lin Tenderpaw
						["coord"] = { 44.9, 24.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Speak with High Elder Cloudfall
								["provider"] = { "n", 54914 },	-- High Elder Cloudfall
								["coord"] = { 42.8, 23.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29618, {	-- The High Elder
						["sourceQuest"] = 29617,	-- Tian Monastery
						["qg"] = 54913,	-- Lin Tenderpaw
						["coord"] = { 44.9, 24.9, THE_JADE_FOREST },
					}),
					q(30000, {	-- The Jade Serpent
						["sourceQuests"] = {
							30011,	-- A New Vision
							30004,	-- Everything In Its Place
							30005,	-- Lighting Up The Sky
							29999,	-- The Rider's Bind
						},
						["qg"] = 56784,	-- Fei
						["coord"] = { 58.0, 59.0, THE_JADE_FOREST },
						["groups"] = {
							i(80686),	-- Ambermist Hood
							i(80687),	-- Blackthicket Helm
							i(80691),	-- Deepwoods Helm
							i(80692),	-- Fox Grove Helm
							i(80689),	-- Glass Lake Headcover
							i(264362, { ["timeline"] = { ADDED_11_2_7 } }),	-- Golden Pandaren Privacy Screen (DECOR!)
							i(80694),	-- Jade Tiger Helm
							i(80688),	-- Jade Witch Helm
							i(80690),	-- Silkwood Cowl
							i(80693),	-- Thunderwood Helm
						},
					}),
					q(29723, {	-- The Jade Witch
						["sourceQuest"] = 29716,	-- The Double Hozen Dare
						["qgs"] = {
							55234,	-- An Windfur
							55274,	-- An Windfur
						},
						["coord"] = { 38.4, 46.2, THE_JADE_FOREST },	-- coordinates for the middle of the area where the quest is picked up
						["groups"] = {
							objective(1, {	-- Confront the Jade Witch
								["provider"] = { "n", 55368 },	-- Widow Greenpaw <"The Jade Witch">
								["coord"] = { 39.6, 46.2, THE_JADE_FOREST },
							}),
							i(82984),	-- Jade Raccoon
						},
					}),
					q(29547, {	-- The King's Command
						["qg"] = 1750,	-- Grand Admiral Jes-Tereth
						["coord"] = { 85.6, 32.8, STORMWIND_CITY },
						["timeline"] = { ADDED_5_0_4 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(29998, {	-- The Librarian's Quandary
						["sourceQuest"] = 29932,	-- The Temple of the Jade Serpent
						["qg"] = 56782,	-- Elder Sage Rain-Zhu
						["coord"] = { 58.1, 58.6, THE_JADE_FOREST },
					}),
					q(29553, {	-- The Missing Admiral
						["sourceQuests"] = {
							29555,	-- The White Pawn
							29556,	-- Hozen Aren't Your Friends, Hozen Are Your Enemies
						},
						["qg"] = 54615,	-- Nodd Codejack
						["coord"] = { 50.4, 88.2, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29548, {	-- The Mission
						["sourceQuests"] = {
							29547,	-- The King's Command
							-- #if AFTER 7.3.5
							49556,	-- Hero's Call: Jade Forest!
							49866,	-- To Pandaria!
							-- #endif
						},
						["qg"] = 55789,	-- Rell Nightwind
						["coord"] = { 78.9, 39.7, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(2, {	-- Speak to Admiral Rogers on The Skyfire gunship
								["provider"] = { "n", 66292 },	-- Sky Admiral Rogers
								["coord"] = { 26.5, 0.1, STORMWIND_CITY },
							}),
						},
					}),
					q(29558, {	-- The Path of War
						["sourceQuest"] = 29553,	-- The Missing Admiral
						["qg"] = 55196,	-- Bold Karasshi
						["coord"] = { 54.1, 82.5, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Slingtail hozen slain
								["providers"] = {
									{ "n", 55193 },	-- Slingtail Mudseer
									{ "n", 61557 },	-- Slingtail Treeleaper
									{ "n", 61562 },	-- Slingtail Treeleaper
								},
								["coord"] = { 54.6, 81.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29883, {	-- The Pearlfin Situation
						["sourceQuest"] = 29562,	-- Jailbreak
						["qg"] = 66949,	-- Rell Nightwind
						["coord"] = { 58.8, 81.9, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Speak to Pearlkeeper Fujin
								["provider"] = { "n", 59058 },	-- Pearlkeeper Fujin
								["coord"] = { 58.8, 81.2, THE_JADE_FOREST },
							}),
							objective(2, {	-- Speak to Watersmith Ot-Temmdo
								["provider"] = { "n", 56693 },	-- Ot-Temmdo <Watersmith>
								["coord"] = { 59.8, 83.8, THE_JADE_FOREST },
							}),
							objective(3, {	-- Speak to Instructor Sharpfin
								["provider"] = { "n", 56690 },	-- Instructor Sharpfin
								["coord"] = { 58.8, 84.6, THE_JADE_FOREST },
							}),
							objective(4, {	-- Speak to Elder Lusshan
								["provider"] = { "n", 54960 },	-- Elder Lusshan <Waterspeaker>
								["coord"] = { 58.8, 81.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29881, {	-- The Perfect Color
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 56064,	-- Inkmaster Glenzu
						["coord"] = { 54.8, 45.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Freshly Fallen Petal
								["providers"] = {
									{ "i",  75219 },	-- Freshly Fallen Petal (QI!)
									{ "o", 209836 },	-- Freshly Fallen Petal
								},
								["coord"] = { 54.0, 46.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(29999, {	-- The Rider's Bind
						["sourceQuest"] = 29932,	-- The Temple of the Jade Serpent
						["qg"] = 56784,	-- Fei
						["coord"] = { 58.0, 59.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Playful Azure Serpent found
								["provider"] = { "n", 56853 },	-- Playful Azure Serpent
								["coord"] = { 59.2, 56.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- Playful Crimson Serpent found
								["provider"] = { "n", 56852 },	-- Playful Crimson Serpent
								["coord"] = { 58.2, 61.2, THE_JADE_FOREST },
							}),
							objective(3, {	-- Playful Emerald Serpent found
								["provider"] = { "n", 56851 },	-- Playful Emerald Serpent
								["coord"] = { 56.6, 58.4, THE_JADE_FOREST },
							}),
							objective(4, {	-- Playful Gold Serpent found
								["provider"] = { "n", 56850 },	-- Playful Gold Serpent
								["coord"] = { 56.0, 60.2, THE_JADE_FOREST },
							}),
						},
					}),
					q(31735, {	-- The Right Tool For The Job
						["sourceQuests"] = {
							30069,	-- No Plan Survives Contact with the Enemy
							31734,	-- Welcome Wagons
						},
						["qg"] = 54617,	-- Rell Nightwind
						["coord"] = { 45.2, 95.0, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- First Barricade Destroyed
								["provider"] = { "i", 89624 },	-- Sully's Flaregun (QI!)
							}),
							objective(2, {	-- Second Barricade Destroyed
								["provider"] = { "i", 89624 },	-- Sully's Flaregun (QI!)
							}),
							objective(3, {	-- Ga'trul Confronted
								["provider"] = { "n", 66396 },	-- Ga'trul
								["coord"] = { 46.4, 96.4, THE_JADE_FOREST },
							}),
							i(90354),	-- Armored Chestpiece of Eminent Domain
							i(90353),	-- Burnished Chestguard of Eminent Domain
							i(90348),	-- Chain Armor of Eminent Domain
							i(90355),	-- Heavy Chestpiece of Eminent Domain
							i(90351),	-- Hide Robe of Eminent Domain
							i(90347),	-- Leather Tunic of Eminent Domain
							i(90352),	-- Ringmail Armor of Eminent Domain
							i(90350),	-- Satin Robe of Eminent Domain
							i(90349),	-- Silk Robe of Eminent Domain
						},
					}),
					q(29637, {	-- The Rumpus
						["sourceQuest"] = 29636,	-- A Test of Endurance
						["qg"] = 54918,	-- Instructor Myang
						["coord"] = { 38.9, 24.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Survive the Melee
								["providers"] = {
									{ "n", 55139 },	-- Rumpus Combatant
									{ "n", 55151 },	-- Rumpus Brute
									{ "i", 73369 },	-- Monastery Fireworks (QI!)
								},
								["coord"] = { 39.0, 23.2, THE_JADE_FOREST },
							}),
							i(84251),	-- Staff of Inner Focus
							i(84252),	-- Instructor's Staff
							i(84253),	-- Tian Monastic Staff
							i(84254),	-- Sword of the Lone Victor
							i(84255),	-- Axe of the Lone Champion
							i(84256),	-- Jade Rifle
							i(84257),	-- Trophy of the Last Man Standing
							i(84258),	-- Mace of Inner Peace
							i(84259),	-- Regal Shortblade
							i(84260),	-- Mace of Serenity
						},
					}),
					q(29971, {	-- The Scouts Return
						["sourceQuests"] = {
							29939,	-- Boom Bait
							29942,	-- Silly Wikket, Slickies are for Hozen
							31239,	-- What's in a Name Name?
						},
						["qg"] = 56406,	-- Rivett Clutchpop
						["coord"] = { 27.2, 50.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(29997, {	-- The Scryer's Dilemma
						["sourceQuest"] = 29932,	-- The Temple of the Jade Serpent
						["qg"] = 56782,	-- Elder Sage Rain-Zhu
						["coord"] = { 58.1, 58.6, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Scryer's Staff
								["provider"] = { "i", 76725 },	-- Scryer's Staff (QI!)
								["coord"] = { 56.8, 55.6, THE_JADE_FOREST },
								["cr"] = 56820,	-- Water Fiend
							}),
						},
					}),
					q(31303, {	-- The Seal is Broken
						["sourceQuests"] = {
							31362,	-- Last Piece of the Puzzle (A)
							30485,	-- Last Piece of the Puzzle (H)
						},
						["qg"] = 59411,	-- Lorewalker Cho
						["coord"] = { 44.7, 67.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/12 Sha Fissures Sealed
								["provider"] = { "n", 64244 },	-- Mishi <Lorewalker Cho's Companion>
								["coord"] = { 44.6, 67.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(29931, {	-- The Serpent's Heart
						["sourceQuest"] = 29930,	-- What's Mined is Yours
						["qg"] = 56346,	-- Foreman Mann
						["coord"] = { 50.9, 27.0, THE_JADE_FOREST },
					}),
					q(29865, {	-- The Silkwood Road
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 56062,	-- Tzu the Ironbelly
						["coord"] = { 46.4, 45.8, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Silkwood Stalker slain
								["provider"] = { "n", 56070 },	-- Silkwood Stalker
								["coord"] = { 44.2, 50.4, THE_JADE_FOREST },
							}),
							i(80704),	-- Ambermist Robe
							i(80705),	-- Blackthicket Robes
							i(80706),	-- Jade Witch Armor
							i(80707),	-- Glass Lake Chestguard
							i(80708),	-- Silkwood Robe
							i(80709),	-- Deepwoods Tunic
							i(80710),	-- Fox Grove Armor
							i(80711),	-- Thunderwood Chestpiece
							i(80712),	-- Jade Tiger Chestpiece
						},
					}),
					q(29586, {	-- The Splintered Path
						["sourceQuests"] = {
							29578,	-- Defiance
							29580,	-- Orchard-Supplied Hardware
							29579,	-- Rally the Survivors
							29585,	-- Spitfire
						},
						["qg"] = 55209,	-- Traumatized Nectarbreeze Farmer
						["coord"] = { 43.2, 75.9, THE_JADE_FOREST },
					}),
					q(29745, {	-- The Sprites' Plight
						["sourceQuest"] = 29925,	-- All We Can Spare
						["qg"] = 55438,	-- Outcast Sprite
						["coord"] = { 48.6, 24.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Stonebound Destroyer slain
								["provider"] = { "n", 55288 },	-- Stonebound Destroyer
								["coord"] = { 49.2, 23.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Source of the destroyers found
								["coord"] = { 48.30, 21.11, THE_JADE_FOREST },
							}),
						},
					}),
					q(29932, {	-- The Temple of the Jade Serpent
						["sourceQuest"] = 30495,	-- Love's Labor
						["providers"] = {
							{ "n", 59391 },	-- Foreman Raike
							{ "i", 74030 },	-- Scroll of Introduction (QI!)
						},
						["coord"] = { 48.3, 61.3, THE_JADE_FOREST },
					}),
					q(29866, {	-- The Threads that Stick
						["sourceQuest"] = 31230,	-- Welcome to Dawn's Blossom
						["qg"] = 59178,	-- Lo Wanderbrew
						["coord"] = { 46.6, 45.3, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/7 Pristine Silk Strand
								["providers"] = {
									{ "i",  75023 },	-- Pristine Silk Strand (QI!)
									{ "o", 209826 },	-- Silk Patch
									{ "o", 209951 },	-- Silk Patch
								},
								["coord"] = { 44.2, 50.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(29752, {	-- The Wayward Dead
						["sourceQuest"] = 29749,	-- An Urgent Plea
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Wayward Ancestors Recovered
								["provider"] = { "i", 74771 },	-- Staff of Pei-Zhi (QI!)
								["coord"] = { 41.8, 15.0, THE_JADE_FOREST },
								["cr"] = 55290,	-- Wayward Ancestor
							}),
						},
					}),
					q(29555, {	-- The White Pawn
						["sourceQuest"] = 31745,	-- Onward and Inward
						["qg"] = 66292,	-- Sky Admiral Rogers
						["coord"] = { 48.0, 88.3, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Clues found
								["providers"] = {
									{ "n", 55168 },	-- Alliance Bodyguard
									{ "n", 55167 },	-- Alliance Banner
									{ "n", 55155 },	-- Fine Leather Journal
								},
								["coords"] = {
									{ 50.12, 90.70, THE_JADE_FOREST },
									{ 49.84, 90.04, THE_JADE_FOREST },
									{ 49.97, 90.21, THE_JADE_FOREST },
								},
							}),
							objective(2, {	-- 0/1 Encoded Captain's Log
								["provider"] = { "i", 89603 },	-- (QI!)
								["coord"] = { 50.2, 90.8, THE_JADE_FOREST },
								["cr"] = 66148,	-- Hozen Diver
							}),
							i(73410),	-- Partially Soaked Pages (QI!)
						},
					}),
					q(31112, {	-- They're So Thorny!
						["sourceQuest"] = 29821,	-- Missed Me By... That Much!
						["providers"] = {
							{ "n", 62923 },	-- Empty Package
							{ "i", 84157 },	-- Rivett's Rocket Jumpers (QI!)
						},
						["coord"] = { 22.8, 30.5, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Emergency Supplies
								["provider"] = { "i", 74623 },	-- Emergency Supplies (QI!)
								["coord"] = { 25.6, 29.0, THE_JADE_FOREST },
								["cr"] = 62930,	-- Water Sprite
							}),
						},
					}),
					q(29617, {	-- Tian Monastery
						["qg"] = 54998,	-- Apprentice Yufi
						["coord"] = { 49.6, 45.8, THE_JADE_FOREST },
						["isBreadcrumb"] = true,
					}),
					q(29754, {	-- To Bridge Earth and Sky
						["sourceQuests"] = {
							29756,	-- A Humble Offering
							29753,	-- Back to Nature
						},
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
					}),
					q(31733, {	-- Touching Ground (A)
						["sourceQuest"] = 31732,	-- Unleash Hell
						["qg"] = 66292,	-- Sky Admiral Rogers
						["coord"] = { 42.0, 92.8, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- Equip a Skyfire Parachute
								["provider"] = { "o", 215682 },	-- Skyfire Parachute
								["coord"] = { 42.3, 92.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(31766, {	-- Touching Ground (H)
						["sourceQuest"] = 31765,	-- Paint it Red!
						["qg"] = 66667,	-- Rivett Clutchpop
						["coord"] = { 31.0, 11.0, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Rappel into Honeydew Glade
								["provider"] = { "o", 215689 },	-- Rappelling Rope
								["coord"] = { 31.4, 10.4, THE_JADE_FOREST },
							}),
						},
					}),
					q(29929, {	-- Trapped!
						["sourceQuest"] = 29927,	-- Mann's Man
						["qg"] = 56347,	-- Hao Mann
						["coord"] = { 61.1, 36.3, THE_JADE_FOREST_GREENSTONE_QUARRY },
						["groups"] = {
							objective(1, {	-- 0/8 Greenstone Miners Freed
								["provider"] = { "n", 56464 },	-- Greenstone Miner
								["coord"] = { 54.8, 44.4, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							}),
						},
					}),
					q(31741, {	-- Twinspire Keep
						["sourceQuests"] = {
							31738,	-- Pillaging Peons
							29552,	-- Critical Condition
							31740,	-- Koukou's Rampage
						},
						["qg"] = 65910,	-- Sunke Khang
						["coord"] = { 46.1, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Twinspire Horde slain
								["providers"] = {
									{ "n", 66267 },	-- Gatrul'lon Curseweaver
									{ "n", 66268 },	-- Gatrul'lon Flamecaller
									{ "n", 66269 },	-- Twinspire Grunt
									{ "n", 66270 },	-- Felstorm Warlock
									{ "n", 66271 },	-- Felstorm Summoner
									{ "n", 66272 },	-- Twinspire Deathguard
									{ "n", 66273 },	-- Twinspire Demolitionist
									{ "n", 66281 },	-- Fixxul Lonelyheart
								},
								["coord"] = { 40.8, 80.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29587, {	-- Unbound
						["sourceQuest"] = 29586,	-- The Splintered Path
						["qg"] = 55009,	-- Shao the Defiant
						["coord"] = { 41.0, 73.9, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/10 Farmers Set Free
								["providers"] = {
									{ "n", 61472 },	-- Captured Nectarbreeze Farmer
									{ "n", 54990 },	-- Captured Nectarbreeze Farmer
								},
								["coord"] = { 40.0, 75.0, THE_JADE_FOREST },
							}),
						},
					}),
					q(31744, {	-- Unfair Trade
						["sourceQuests"] = {
							31738,	-- Pillaging Peons
							29552,	-- Critical Condition
							31740,	-- Koukou's Rampage
						},
						["qg"] = 65910,	-- Sunke Khang
						["coord"] = { 46.1, 84.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Captive Pandaren Cub freed
								["provider"] = { "n", 66366 },	-- Captive Pandaren Cub
								["coord"] = { 42.2, 82.4, THE_JADE_FOREST },
								["cr"] = 66367,	-- Eye of Ga'trul
							}),
						},
					}),
					q(31732, {	-- Unleash Hell
						["sourceQuest"] = 29548,	-- The Mission
						["qg"] = 66292,	-- Sky Admiral Rogers
						["coord"] = { 42.0, 92.8, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							--[[
							-- CRIEVE NOTE: These objectives are broken.
							objective(1, {	-- 0/60 Garrosh'ar Grunt slain
								["provider"] = { "n", 66398 },	-- Garrosh'ar Grunt
								["coord"] = { 44.2, 93.8, THE_JADE_FOREST },
							}),
							objective(2, {	-- 0/8 Garrosh'ar Shredder slain
								["provider"] = { "n", 66397 },	-- Garrosh'ar Shredder
								["coord"] = { 44.4, 90.0, THE_JADE_FOREST },
							}),
							objective(3, {	-- Bladefist Reaper sunk
								["provider"] = { "o",  },	-- Bladefist Reaper
								["coord"] = { , THE_JADE_FOREST },
							}),
							objective(4, {	-- Stygian Scar sunk
								["provider"] = { "o",  },	-- Stygian Scar
								["coord"] = { , THE_JADE_FOREST },
							}),
							]]--
							i(90375),	-- Airship Marine's Sharpshooter
							i(90376),	-- Barricade-Breaker Cidgel
							i(90382),	-- Captain Roger's Polite Knocking Stick
							i(90331, {	-- Face Smaher Warhammer
								["description"] = "Unlocks for Horde after completing this alliance quest.",
							}),
							i(90377),	-- Fogcutter Staff
							i(90379),	-- Mystic Perpetual Motion Mace
							i(90381),	-- Shock Trooper Battleaxe
							i(90380),	-- Skyfire Medic's Staff
							i(90383),	-- Skyfire Trooper's Mace
							i(90378),	-- Staff of the Skymagi
							i(90374),	-- Sully's Hotwiring Knife
						},
					}),
					q(31778, {	-- Unreliable Allies
						["sourceQuest"] = 29804,	-- Seein' Red
						["qg"] = 65998,	-- Merchant Zin
						["coord"] = { 31.4, 21.7, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Indentured Pandaren freed
								["providers"] = {
									{ "n", 65974 },	-- Pandaren Volunteer
									{ "n", 67090 },	-- Pandaren Volunteer
								},
								["coord"] = { 28.4, 23.8, THE_JADE_FOREST },
							}),
						},
					}),
					q(29750, {	-- Vessels of the Spirit
						["sourceQuest"] = 29749,	-- An Urgent Plea
						["qg"] = 55614,	-- Pei-Zhi
						["coord"] = { 44.2, 15.0, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Spirit Bottle
								["provider"] = { "i", 74763 },	-- Spirit Bottle (QI!)
								["coord"] = { 42.0, 17.0, THE_JADE_FOREST },
								["cr"] = 55291,	-- Shan'ze Spiritclaw
							}),
						},
					}),
					warchiefscommand(q(49538, {	-- Warchief's Command: Jade Forest!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(31230, {	-- Welcome to Dawn's Blossom
						["sourceQuests"] = {
							30015,	-- Dawn's Blossom (Horde)
							29922,	-- In Search of Wisdom (Alliance)
						},
						["qg"] = 56348,	-- Toya
						["coord"] = { 47.1, 46.1, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Speak with Master Windfur
								["provider"] = { "n", 59160 },	-- Master Windfur <Mayor of Dawn's Blossom>
								["coord"] = { 48.4, 44.4, THE_JADE_FOREST },
							}),
							objective(2, {	-- Speak with Peiji Goldendraft
								["provider"] = { "n", 55809 },	-- Peiji Goldendraft <Brewmaster>
								["coord"] = { 45.8, 43.6, THE_JADE_FOREST },
							}),
							objective(3, {	-- Speak with Kai Wanderbrew
								["provider"] = { "n", 59173 },	-- Kai Wanderbrew <Brewmaster>
								["coord"] = { 47.0, 46.0, THE_JADE_FOREST },
							}),
							--
							i(247729, { ["timeline"] = { ADDED_11_2_7 } }),	-- Pandaren Stone Lamppost (DECOR!)
						},
					}),
					q(31734, {	-- Welcome Wagons
						["sourceQuest"] = 31733,	-- Touching Ground
						["qg"] = 54616,	-- Sully "The Pickle" McLeary
						["coord"] = { 43.6, 90.7, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Horde War Wagon destroyed
								["providers"] = {
									{ "n", 66339 },	-- Horde War Wagon
									{ "i", 89612 },	-- Sully's Flaregun (QI!)
								},
								["coord"] = { 45.1, 92.7, THE_JADE_FOREST },
							}),
						},
					}),
					q(31239, {	-- What's in a Name Name?
						["sourceQuest"] = 29941,	-- Beyond the Horizon
						["qg"] = 56336,	-- Chief Kah Kah
						["coord"] = { 27.9, 47.1, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/7 Riverstride Jinyu slain
								["provider"] = { "n", 56289 },	-- Riverstride Jinyu
								["coord"] = { 31.4, 45.6, THE_JADE_FOREST },
							}),
							i(84105),	-- Fishy (PET!)
						},
					}),
					q(29930, {	-- What's Mined Is Yours
						["sourceQuest"] = 29929,	-- Trapped!
						["qg"] = 56467,	-- Hao Mann
						["coord"] = { 46.3, 29.4, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Jade Delivered
								["provider"] = { "n", 56508 },	-- Jade Cart
								["coord"] = { 46.2, 29.4, THE_JADE_FOREST },
							}),
							i(80783),	-- Veridian Cloak
							i(80784),	-- NectarBreeze Cloak
							i(80785),	-- Mann's Cloak
							i(80786),	-- Honey-Bear's Cape
							i(80787),	-- Cloudfall Cloak
						},
					}),
					q(31241, {	-- Wicked Wikkets
						["qg"] = 63748,	-- Jeek Jeek
						["coord"] = { 28.1, 38.9, THE_JADE_FOREST },
						["minReputation"] = { FACTION_FOREST_HOZEN, FRIENDLY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Alliance Service Medallion
								["provider"] = { "i", 85784 },	-- Alliance Service Medallion (QI!)
								["coord"] = { 32.0, 40.8, THE_JADE_FOREST },
								["crs"] = {
									63782,	-- Battleworn Paratrooper
									63764,	-- Battleworn Paratrooper
								},
							}),
							i(88701),	-- Wikket Cape
							i(88702),	-- Wikket Cloak
							i(88703),	-- Wikket Wrap
							i(88699),	-- Wikket Surcoat
							i(88700),	-- Wikket Drape
						},
					}),
					q(29635, {	-- Xiao, the Eater
						["sourceQuests"] = {
							29633,	-- Zhi-Zhi the Dextrous
							29634,	-- Hasshun the Wizened
						},
						["qg"] = 54922,	-- Master Stone Fist
						["coord"] = { 43.2, 24.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- Xiao defeated
								["provider"] = { "n", 54926 },	-- Xiao
								["coord"] = { 43.0, 23.6, THE_JADE_FOREST },
							}),
							i(88693),	-- Bamboo Plate Armwraps
							i(88692),	-- Fox Grove Bracers
							i(88694),	-- Bamboo Strip Cuffs
							i(88698),	-- Bamboo Fiber Cuffs
							i(88697),	-- Bamboo Leaf Bindings
							i(88696),	-- Jade Witch Armguards
							i(88695),	-- Bamboo Strip Bracers
							i(88690),	-- Bamboo Leaf Armplates
							i(88691),	-- Bamboo Plate Armplates
						},
					}),
					q(31770, {	-- You're Either With Us Or...
						["sourceQuest"] = 31769,	-- The Final Blow!
						["qg"] = 66656,	-- General Nazgrim
						["coord"] = { 33.6, 10.6, THE_JADE_FOREST },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- Speak with Mayor Honeydew
								["provider"] = { "n", 66220 },	-- Mayor Honeydew
								["coord"] = { 29.2, 13.6, THE_JADE_FOREST },
							}),
						},
					}),
					q(29622, {	-- Your Training Starts Now
						["sourceQuest"] = 29620,	-- The Great Banquet
						["qg"] = 54926,	-- Xiao
						["coord"] = { 43.1, 23.6, THE_JADE_FOREST },
					}),
					q(29633, {	-- Zhi-Zhi, the Dextrous
						["sourceQuest"] = 29632,	-- Becoming Battle-Ready
						["qg"] = 54922,	-- Master Stone Fist
						["coord"] = { 43.2, 24.7, THE_JADE_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Zhi-Zhi defeated
								["provider"] = { "n", 54924 },	-- Zhi-Zhi
								["coord"] = { 43.0, 26.0, THE_JADE_FOREST },
							}),
						},
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50750,	-- Aethis
							51078,	-- Ferdinand
							50338,	-- Kor'nas Nightsavage
							50363,	-- Krax'ik
							50823,	-- Mister Ferocious
							50350,	-- Morgrinn Crackfang
							50782,	-- Sarnak
							50808,	-- Urobi the Walker
						},
						["groups"] = {
							i(87586),	-- Forest Trickster's Leggings
							i(87593),	-- Gan Shi Warlord Legguards
							i(87592),	-- Grookin' Grookin' Trousers
							i(87590),	-- Jade Heart Leggings
							i(87594),	-- Leggings of Forgotten War
							i(87589),	-- Leggings of Fractured Reflection
							i(87588),	-- Leggings of Spiritsong Melody
							i(87587),	-- Orchard Tender's Leggings
							i(87591),	-- Tian Trainee Leggings
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50750, {	-- Aethis
						["coord"] = { 33.5, 50.7, THE_JADE_FOREST },
						["groups"] = {
							i(87649),	-- Pool-Stirrer
						},
					}),
					n(66937, {	-- Akkalar <Shield of Kril'mandar>
						["coord"] = { 59.6, 96.0, THE_JADE_FOREST },
						["groups"] = {
							i(90167), 	-- Akkalar's Clamshell
						},
					}),
					n(66932, {	-- Akkalou <Spawn of Kril'mandar>
						["coord"] = { 59.3, 36.4, THE_JADE_FOREST },
						["groups"] = {
							i(90166),	-- Akkalou's Clamshell
						},
					}),
					n(51078, {	-- Ferdinand
						["coords"] = {
							{ 52.2, 44.4, THE_JADE_FOREST },
							{ 54.2, 42.4, THE_JADE_FOREST },
							{ 53.8, 45.6, THE_JADE_FOREST },
							{ 53.6, 49.6, THE_JADE_FOREST },
							{ 56.4, 48.0, THE_JADE_FOREST },
						},
						["groups"] = {
							i(87652),	-- Ook-Breaker Mace
						},
					}),
					n(50338, {	-- Kor'nas Nightsavage
						["coords"] = {
							{ 43.4, 76.4, THE_JADE_FOREST },
							{ 43.6, 72.2, THE_JADE_FOREST },
							{ 44.0, 74.0, THE_JADE_FOREST },
							{ 44.0, 75.8, THE_JADE_FOREST },
						},
						["groups"] = {
							i(87642),	-- Darkstaff of Annihilation
						},
					}),
					n(50363, {	-- Krax'ik
						["coord"] = { 39.5, 62.7, THE_JADE_FOREST },
						["groups"] = {
							i(87646),	-- Needlefang Throatripper
						},
					}),
					n(65003, {	-- Martar the Not-So-Smart
						["coords"] = {
							{ 54.4, 32.6, THE_JADE_FOREST },
							{ 55.2, 30.6, THE_JADE_FOREST },
							{ 56.2, 32.4, THE_JADE_FOREST },
							{ 55.6, 33.2, THE_JADE_FOREST },
						},
						["groups"] = {
							i(87780),	-- Martar's Magnifying Glass
						},
					}),
					n(50823, {	-- Mister Ferocious
						["coord"] = { 42.5, 38.8, THE_JADE_FOREST },
						["groups"] = {
							i(87652),	-- Ook-Breaker Mace
						},
					}),
					n(50350, {	-- Morgrinn Crackfang
						["coords"] = {
							{ 40.8, 15.2, THE_JADE_FOREST },
							{ 42.6, 16.2, THE_JADE_FOREST },
							{ 42.2, 17.6, THE_JADE_FOREST },
							{ 46.6, 16.8, THE_JADE_FOREST },
							{ 48.0, 18.4, THE_JADE_FOREST },
							{ 48.2, 20.6, THE_JADE_FOREST },
						},
						["groups"] = {
							i(87643),	-- Fangcracker Battlemace
						},
					}),
					n(50782, {	-- Sarnak
						["coord"] = { 64.9, 74.3, THE_JADE_FOREST },
						["groups"] = {
							i(87650),	-- Fishsticker Crossbow
						},
					}),
					n(50808, {	-- Urobi the Walker
						["coord"] = { 57.3, 71.6, THE_JADE_FOREST },
						["groups"] = {
							i(87651),	-- Pathwalker Greatstaff
						},
					}),
				}),
				n(TREASURES, {
					o(213741, {	-- Ancient Jinyu Staff
						["questID"] = 31402,
						["coords"] = {
							{ 44.9, 64.6, THE_JADE_FOREST },
							{ 47.1, 67.5, THE_JADE_FOREST },
							{ 46.2, 71.2, THE_JADE_FOREST },
							{ 44.5, 64.4, THE_JADE_FOREST },
						},
						["groups"] = {
							i(86196),	-- Ancient Jinyu Staff
						},
					}),
					o(213364, {	-- Ancient Pandaren Mining Pick
						["questID"] = 31399,
						["description"] = "Inside Greenstone Quarry at the lower level. Entrance at (46.1, 29.1).",
						["coords"] = {
							{ 33.52, 78.04, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							{ 37.95, 13.75, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							{ 40.08, 41.82, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
							{ 64.33, 55.75, THE_JADE_FOREST_GREENSTONE_QUARRY_2 },
						},
						["groups"] = {
							i(85777),	-- Ancient Pandaren Mining Pick
						},
					}),
					o(213366, {	-- Ancient Pandaren Tea Pot
						["questID"] = 31400,
						["coord"] = { 26.22, 32.35, THE_JADE_FOREST },
						["groups"] = {
							i(85780),	-- Ancient Pandaren Tea Pot
						},
					}),
					o(214379, {	-- Broken Incense Burner
						["coord"] = { 34.0, 33.5, THE_JADE_FOREST },
						["groups"] = {
							ach(7381),	-- Restore Balance
						},
					}),
					o(214339, {	-- Chest of Supplies
						["questID"] = 31864,
						["coord"] = { 24.6, 53.2, THE_JADE_FOREST },
					}),
					o(587264, {	-- Golden Cloud Serpent Treasure Chest
						["description"] = "Found underwater in a ship, click the chest floating inside the slime.",
						["sourceQuest"] = 92581,	-- Last Light
						["questID"] = 93042,
						["coord"] = { 57.6, 15.7, THE_JADE_FOREST },
						["timeline"] = { ADDED_11_2_7 },
						["cr"] = 253602,	-- Frederick the Fabulous
					}),
					o(213742, {	-- Hammer of Ten Thunders
						["questID"] = 31403,
						["coords"] = {
							{ 40.24, 13.67, THE_JADE_FOREST },
							{ 41.21, 13.84, THE_JADE_FOREST },
							{ 41.76, 17.66, THE_JADE_FOREST },
							{ 42.01, 17.56, THE_JADE_FOREST },
							{ 42.97, 11.63, THE_JADE_FOREST },
						},
						["description"] = "Leaning upright against the wall.",
						["groups"] = {
							i(86198),	-- Hammer of Ten Thunders
						},
					}),
					o(211990, {	-- Hozen Speech
						["coord"] = { 26.5, 28.3, THE_JADE_FOREST },
					}),
					n(64272, {	-- Jade Warrior Statue
						["questID"] = 31307,
						["coord"] = { 39.26, 46.65, THE_JADE_FOREST },
						["description"] = "Up against the wooden fence post on the rocky terrain with its back to the wall.",
						["groups"] = {
							i(86199),	-- Jade-Infused Blade
						},
					}),
					o(213368, {	-- Lucky Pandaren Coin
						["questID"] = 31401,
						["description"] = "Located in the wishing fountain.",
						["coord"] = { 31.96, 27.76, THE_JADE_FOREST },
						["groups"] = {
							i(85781),	-- Lucky Pandaren Coin
						},
					}),
					o(213363, {	-- Wodin's Mantid Shanker
						["questID"] = 31397,
						["coord"] = { 39.41, 7.23, THE_JADE_FOREST },
						["description"] = "Glimmering in the east side of the pond underwater between the lantern and the stone wall.",
						["groups"] = {
							i(85776),	-- Wodin's Mantid Shanker
						},
					}),
					o(214338, {	-- Offering of Remembrance
						["questID"] = 31865,
						["coord"] = { 46.3, 80.6, THE_JADE_FOREST },
					}),
					o(213748, {	-- Pandaren Ritual Stone
						["questID"] = 31404,
						["coord"] = { 23.49, 35.05, THE_JADE_FOREST },
						["groups"] = {
							i(86216),	-- Pandaren Ritual Stone
						},
					}),
					o(213362, {	-- Ship's Locker
						["questID"] = 31396,	-- Ship's Locker
						["description"] = "Located underwater in a boat.",
						["coord"] = { 50.88, 99.74, THE_JADE_FOREST },	-- Can't use Uncharted Sea MapID, plots the point incorrectly.
					}),
					o(213333, {	-- Spirit Binders
						["coord"] = { 42.2, 17.4, THE_JADE_FOREST },
					}),
					o(214337, {	-- Stash of Gems
						["questID"] = 31866,
						["coord"] = { 62.4, 27.5, THE_JADE_FOREST },
						["description"] = "Located in a cave.",
					}),
					o(215799, {	-- The Emperor's Burden - Part 1
						["coord"] = { 47.0, 45.1, THE_JADE_FOREST },
					}),
					o(213421, {	-- The Emperor's Burden - Part 3
						["coord"] = { 55.8, 56.8, THE_JADE_FOREST },
					}),
					o(213415, {	-- The First Monks
						["coord"] = { 35.7, 30.5, THE_JADE_FOREST },
					}),
					o(213327, {	-- The Saurok
						["coord"] = { 67.7, 29.3, THE_JADE_FOREST },
					}),
					o(215779, {	-- Watersmithing
						["coord"] = { 66.0, 87.5, THE_JADE_FOREST },
					}),
					o(213512, {	-- Xin Wo Yin the Broken Hearted
						["coord"] = { 37.5, 30.1, THE_JADE_FOREST },
					}),
				}),
				n(VENDORS, {
					n(56687, {	-- Metalworker Sashi <Trade Goods>
						["coord"] = { 58.1, 83.6, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
							i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						},
					}),
					n(56406, {	-- Rivett Clutchpop
						["coords"] = {	-- apparently this NPC can be found in different places throughout the horde jade forest questline.
							{ 28.2, 47.8, THE_JADE_FOREST },
							{ 27.2, 50.6, THE_JADE_FOREST },
							{ 30.8, 52.2, THE_JADE_FOREST },
						},
						["races"] = HORDE_ONLY,
						["sym"] = {{"select","npcID",56705},{"pop"}},	-- Singegruff <Adventuring Supplies>
					}),
					n(61598, {	-- Silkweaver Rui <Adventuring Supplies>
						["coord"] = { 58.1, 84.1, THE_JADE_FOREST },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","npcID",56705},{"pop"}},	-- Singegruff <Adventuring Supplies>
					}),
					n(56705, {	-- Singegruff <Adventuring Supplies>
						["coord"] = { 46.6, 45.6, THE_JADE_FOREST },
						["groups"] = {
							i(81655),	-- Faded Forest Amulet
							i(81650),	-- Faded Forest Armored Bracers
							i(81605),	-- Faded Forest Armored Chestpiece
							i(81641),	-- Faded Forest Armored Gauntlets
							i(81632),	-- Faded Forest Armored Girdle
							i(81587),	-- Faded Forest Armored Helm
							i(81614),	-- Faded Forest Armored Legguards
							i(81596),	-- Faded Forest Armored Shoulders
							i(81623),	-- Faded Forest Armored Warboots
							i(81686),	-- Faded Forest Axe
							i(81665),	-- Faded Forest Badge
							i(81656),	-- Faded Forest Band
							i(81683),	-- Faded Forest Barrier
							i(81674),	-- Faded Forest Battlemace
							i(81685),	-- Faded Forest Blade
							i(81645),	-- Faded Forest Burnished Bracers
							i(81600),	-- Faded Forest Burnished Chestguard
							i(81627),	-- Faded Forest Burnished Clasp
							i(81636),	-- Faded Forest Burnished Gloves
							i(81618),	-- Faded Forest Burnished Greaves
							i(81582),	-- Faded Forest Burnished Headcover
							i(81609),	-- Faded Forest Burnished Legplates
							i(81591),	-- Faded Forest Burnished Spaulders
							i(81668),	-- Faded Forest Cape
							i(81603),	-- Faded Forest Chain Armor
							i(81639),	-- Faded Forest Chain Gauntlets
							i(81585),	-- Faded Forest Chain Helm
							i(81612),	-- Faded Forest Chain Leggings
							i(81630),	-- Faded Forest Chain Links
							i(81621),	-- Faded Forest Chain Sabatons
							i(81594),	-- Faded Forest Chain Spaulders
							i(81648),	-- Faded Forest Chain Wristguards
							i(81652),	-- Faded Forest Choker
							i(81670),	-- Faded Forest Cloak
							i(81673),	-- Faded Forest Combat Staff
							i(81676),	-- Faded Forest Crossbow
							i(81679),	-- Faded Forest Dagger
							i(81672),	-- Faded Forest Diviner's Rod
							i(81667),	-- Faded Forest Drape
							i(81662),	-- Faded Forest Emblem
							i(81681),	-- Faded Forest Greatsword
							i(81675),	-- Faded Forest Handaxe
							i(81649),	-- Faded Forest Heavy Armplates
							i(81604),	-- Faded Forest Heavy Chestpiece
							i(81640),	-- Faded Forest Heavy Gauntlets
							i(81631),	-- Faded Forest Heavy Girdle
							i(81586),	-- Faded Forest Heavy Helm
							i(81613),	-- Faded Forest Heavy Legguards
							i(81595),	-- Faded Forest Heavy Shoulders
							i(81622),	-- Faded Forest Heavy Warboots
							i(81625),	-- Faded Forest Hide Belt
							i(81643),	-- Faded Forest Hide Bindings
							i(81616),	-- Faded Forest Hide Footguards
							i(81634),	-- Faded Forest Hide Gloves
							i(81580),	-- Faded Forest Hide Helm
							i(81607),	-- Faded Forest Hide Legguards
							i(81598),	-- Faded Forest Hide Robes
							i(81589),	-- Faded Forest Hide Spaulders
							i(81664),	-- Faded Forest Insignia
							i(81647),	-- Faded Forest Leather Armwraps
							i(81629),	-- Faded Forest Leather Belt
							i(81620),	-- Faded Forest Leather Boots
							i(81638),	-- Faded Forest Leather Gloves
							i(81584),	-- Faded Forest Leather Helm
							i(81611),	-- Faded Forest Leather Legguards
							i(81593),	-- Faded Forest Leather Spaulders
							i(81602),	-- Faded Forest Leather Tunic
							i(81651),	-- Faded Forest Locket
							i(81658),	-- Faded Forest Loop
							i(81682),	-- Faded Forest Mace
							i(81669),	-- Faded Forest Manteau
							i(81663),	-- Faded Forest Medal
							i(81661),	-- Faded Forest Medallion
							i(81671),	-- Faded Forest Meditation Staff
							i(81653),	-- Faded Forest Necklace
							i(81654),	-- Faded Forest Pendant
							i(81657),	-- Faded Forest Ring
							i(81644),	-- Faded Forest Ringmail Armbands
							i(81599),	-- Faded Forest Ringmail Armor
							i(81635),	-- Faded Forest Ringmail Gauntlets
							i(81581),	-- Faded Forest Ringmail Helm
							i(81608),	-- Faded Forest Ringmail Leggings
							i(81617),	-- Faded Forest Ringmail Sabatons
							i(81590),	-- Faded Forest Ringmail Spaulders
							i(81626),	-- Faded Forest Ringmail Waistguard
							i(81677),	-- Faded Forest Saber
							i(81624),	-- Faded Forest Satin Cord
							i(81642),	-- Faded Forest Satin Cuffs
							i(81633),	-- Faded Forest Satin Gloves
							i(81579),	-- Faded Forest Satin Hood
							i(81606),	-- Faded Forest Satin Leggings
							i(81588),	-- Faded Forest Satin Mantle
							i(81597),	-- Faded Forest Satin Robe
							i(81615),	-- Faded Forest Satin Treads
							i(81678),	-- Faded Forest Scepter
							i(81660),	-- Faded Forest Seal
							i(81666),	-- Faded Forest Shawl
							i(81684),	-- Faded Forest Shield
							i(81659),	-- Faded Forest Signet
							i(81592),	-- Faded Forest Silk Amice
							i(81628),	-- Faded Forest Silk Cord
							i(81583),	-- Faded Forest Silk Cowl
							i(81646),	-- Faded Forest Silk Cuffs
							i(81637),	-- Faded Forest Silk Handguards
							i(81601),	-- Faded Forest Silk Robe
							i(81619),	-- Faded Forest Silk Treads
							i(81610),	-- Faded Forest Silk Trousers
							i(81680),	-- Faded Forest Smasher
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(89682, {	-- Oddly-Shaped Horn
						["coord"] = { 27.6, 59.6, THE_JADE_FOREST },
						["cr"] = 58895,	-- Sungraze Behemoth
					}),
					i(87522),	-- Star-Carrier Bracers
					i(120138, {	-- Tome of Polymorph: Monkey (CI!)
						["timeline"] = { ADDED_6_0_2 },
						["crs"] = {
							55470,	-- Hozen Groundpounder
							57119,	-- Hozen Ravager
							66153,	-- Hozen Scavenger
							66106,	-- Hozen Scavenger
							65623,	-- Oona Tuna-Catcher
							55195,	-- Slingtail Fishripper
							55193,	-- Slingtail Mudseer
							55110,	-- Slingtail Stickypaw
							61562,	-- Slingtail Treeleaper
						},
					}),
					i(120140, {	-- Tome of Polymorph: Porcupine (CI!)
						["timeline"] = { ADDED_6_0_2 },
						["crs"] = {
							54896,	-- Glade Porcupine
							59772,	-- Smoky Porcupine
						},
					}),
				}),
			},
		}))),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(THE_JADE_FOREST, {
			n(QUESTS, {
				q(29702),	-- Gorrok TRACKING
				q(30486),	-- Jade Dragon Phased Terrain Tracking - triggers after placing the Cho family heirloom during "Last Piece of the Puzzle" (questID 30485 & 31362)
				q(29695),	-- Kiryn TRACKING
				q(31195),	-- Ooked the Dooker - triggers after killing Dook Ookem during "Lay of the Land" (questID 29822)
				q(31969),	-- Priorities Tracking - triggers during "Priorities" (questID 31772)
				q(29697),	-- Rivett TRACKING
				q(29704),	-- Shokia TRACKING
				q(29368),	-- Tracking - triggeres after completing the criteria for "Acid Rain" (questID 29827)
				q(31829),	-- Tracking Event: Alliance Gunship Leaves — triggers after turning in "The Pearlfin Situation" and "Road Rations" (questID 29883 & 29885)
				q(29604),	-- Tracking Event: Saw East Temple Arrival Cinematic
				q(29884),	-- Tracking Event: Spies Leave — triggers after turning in "The Pearlfin Situation" and "Road Rations" (questID 29883 & 29885)
			}),
		}),
	}),
})));
