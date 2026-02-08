---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if BEFORE WOD
local SEASON_MALEVOLENT_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
	end
end]];
-- #endif

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(VALLEY_OF_THE_FOUR_WINDS, {
			["lore"] = "Valley of the Four Winds is a tranquil plain of lush farmland, bordered by dense mysterious jungles along the south and impassible mountains to the north. The valley is considered the breadbasket of Pandaria, but the year's harvest is in jeopardy and a terrible malaise has overcome the pandaren that live along the coast. The valley is also the home of the legendary Stormstout Brewery, where Chen Stormstout and his niece Li Li hope to journey to discover the whereabouts of their long-lost ancestors.",
			["icon"] = 618317,
			["maps"] = { VALLEY_OF_THE_FOUR_WINDS_CAVERN_OF_ENDLESS_ECHOES },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6969),	-- Explore Valley of the Four Winds
					ach(6301),	-- Rally the Valley
				}),
				battlepets({
					pet(706),	-- Bandicoon (PET!)
					pet(707),	-- Bandicoon Kit (PET!)
					pet(708),	-- Malayan Quillrat (PET!)
					pet(709),	-- Malayan Quillrat Pup (PET!)
					pet(710, {	-- Marsh Fiddler (PET!)
						["coord"] = { 41.6, 45.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					pet(677, {	-- Shy Bandicoon (PET!)
						["coord"] = { 17.8, 42.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
					pet(711),	-- Sifang Otter (PET!)
					pet(713),	-- Softshell Snapling (PET!)
				}),
				explorationHeader({
					visit_exploration(6096,{coord={45.4,26.8,VALLEY_OF_THE_FOUR_WINDS}}),	-- Cattail Lake
					visit_exploration(6466,{coord={36.7,25.0,VALLEY_OF_THE_FOUR_WINDS}}),	-- Cavern of Endless Echoes
					exploration(6028),	-- Dustback Gorge
					exploration(5984),	-- Gilded Fan
					visit_exploration(5948,{coord={73.3,23.6,VALLEY_OF_THE_FOUR_WINDS}}),	-- Grassy Cline
					visit_exploration(5980,{coord={58.2,45.0,VALLEY_OF_THE_FOUR_WINDS}}),	-- Halfhill
					exploration(6097),	-- Kunzen Cave
					exploration(6065),	-- Kunzen Village
					exploration(5957),	-- Mudmug's Place
					exploration(6025),	-- Nesingwary's Safari
					visit_exploration(5973,{coord={60.0,33.8,VALLEY_OF_THE_FOUR_WINDS}}),	-- New Cifera
					visit_exploration(5936,{coord={83.6,19.4,VALLEY_OF_THE_FOUR_WINDS}}),	-- Pang's Stead
					exploration(5967),	-- Paoquan Hollow
					exploration(5972),	-- Pools of Purity
					exploration(6387),	-- Rumbling Terrace
					visit_exploration(5949,{coord={75.2,36.2,VALLEY_OF_THE_FOUR_WINDS}}),	-- Shang's Stead
					exploration(5986),	-- Silken Fields
					exploration(5970),	-- Singing Marshes
					exploration(6064),	-- Skyrange
					exploration(5968),	-- Stoneplow
					exploration(5969),	-- Stoneplow Fields
					exploration(6001),	-- Stormstout Brewery
					exploration(5958),	-- Sunsoaked Meadow
					visit_exploration(6039,{coord={52.0,46.1,VALLEY_OF_THE_FOUR_WINDS}}),	-- Sunsong Ranch
					visit_exploration(5987,{coord={57.7,54.8,VALLEY_OF_THE_FOUR_WINDS}}),	-- The Gilding Stream
					visit_exploration(6862,{coord={54.1,53.2,VALLEY_OF_THE_FOUR_WINDS}}),	-- The Halfhill Market
					exploration(5992),	-- The Heartland
					exploration(5982),	-- The Imperial Granary
					exploration(6029),	-- The Torjari Pit
					visit_exploration(5959,{coord={65.8,38.4,VALLEY_OF_THE_FOUR_WINDS}}),	-- The Twisted Warren
					exploration(6030),	-- The Wild Plains
					visit_exploration(6002,{coord={37.1,65.2,VALLEY_OF_THE_FOUR_WINDS}}),	-- Thirsty Alley
					exploration(5939),	-- Thunderfoot Farm
					exploration(5937),	-- Thunderfoot Fields
					exploration(5938),	-- Thunderfoot Ranch
					visit_exploration(6107,{coord={49.5,33.5,VALLEY_OF_THE_FOUR_WINDS}}),	-- Verdant Belt
					exploration(5985),	-- Winds' Edge
					visit_exploration(6417,{coord={42.0,71.2,VALLEY_OF_THE_FOUR_WINDS}}),	-- Yan-Zhe River
					exploration(6388),	-- Zhu's Descent
				}),
				n(FLIGHT_PATHS, {
					fp(1052, {	-- Grassy Cline, Valley of the Four Winds
						["cr"] = 62658,	-- Kim of the Mountain Winds <Flight Master>
						["coord"] = { 70.8, 24.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					fp(985, {	-- Halfhill, Valley of the Four Winds
						["cr"] = 60231,	-- Wing Nga <Flight Master>
						["coord"] = { 56.4, 50.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					fp(984, {	-- Pang's Stead, Valley of the Four Winds
						["cr"] = 60230,	-- Princeton <Balloon Boy>
						["coord"] = { 84.6, 21.0, VALLEY_OF_THE_FOUR_WINDS },
					}),
					fp(989, {	-- Stoneplow, Valley of the Four Winds
						["cr"] = 58843,	-- "Dragonwing" Dan <Flight Master>
						["coord"] = { 20.2, 58.6, VALLEY_OF_THE_FOUR_WINDS },
					}),
					fp(1115, {	-- The Lion's Redoubt, Dread Wastes
						["cr"] = 65865,	-- Tiper Windman <Flight Master>
						["coord"] = { 12.0, 32.8, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({
					n(66734, {	-- Farmer Nishi <Grand Master Pet Tamer>
						["coord"] = { 46.0, 43.6, VALLEY_OF_THE_FOUR_WINDS },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31955, {	-- Grand Master Nishi
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(COOKING, {
						n(58713, {	-- Anthea Ironpaw <Master of the Wok>
							["coord"] = { 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_WOK,
						}),
						n(58717, {	-- Bobo Ironpaw <Master of the Brew>
							["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_BREW,
						}),
						n(58716, {	-- Jian Ironpaw <Master of the Oven>
							["coord"] = { 53.2, 51.6, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_OVEN,
						}),
						n(58712, {	-- Kol Ironpaw <Master of the Grill>
							["coord"] = { 53.0, 51.4, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_GRILL,
						}),
						n(58714, {	-- Mei Mei Ironpaw <Master of the Pot>
							["coord"] = { 52.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_POT,
						}),
						n(64231, {	-- Sungshin Ironpaw <Guide to the Ways>
							["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = MOP_COOKING,
						}),
						n(58715, {	-- Yan Ironpaw <Master of the Steamer>
							["coord"] = { 52.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = WAY_OF_THE_STEAMER,
						}),
					}),
					prof(ENGINEERING, {
						n(55143, {	-- Sally Fizzlefury <Engineering Trainer>
							["coord"] = { 16.0, 83.0, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = MOP_ENGINEERING
						}),
					}),
					prof(FISHING, {
						n(70398, {	-- Ben of the Booming Voice <Fishing Trainer>
							["description"] = "Ben of the Booming Voice is a pandaren fishing trainer located on the bank of the Gilding Stream in the Valley of the Four Winds. When asked, he tells where fish are swarming in Pandaria that day. Wherever fish are swarming, there are a large number of fishing pools containing the type of fish Ben specifies.",
							["coord"] = { 58.8, 47.0, VALLEY_OF_THE_FOUR_WINDS },
							["timeline"] = { ADDED_5_2_0 },
						}),
					}),
					prof(HERBALISM, {
						n(65877, {	-- Han Flowerbloom <Herbalism Trainer>
							["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = MOP_HERBALISM,
						}),
					}),
					prof(TAILORING, {
						n(57405, {	-- Silkmaster Tsai <"The Tailor of Pandaria">
							["coord"] = { 62.6, 59.6, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = MOP_TAILORING,
						}),
					}),
				}),
				n(QUESTS, {
					prof(COOKING, {
						["requireSkill"] = COOKING,
						["groups"] = {
							q(30329, {	-- Cindergut Peppers
								["qg"] = 58713,	-- Anthea Ironpaw
								["coord"] = { 52.7, 52.0, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
								["groups"] = {
									i(79864),	-- Cindergut Pepper (QI!)
								},
							}),
							q(31486, {	-- Everything I Know About Cooking (A)
								["qgs"] = {
									56707,	-- Chin
									62872,	-- Cranfur the Noodler
								},
								["coords"] = {
									{ 46.2, 45.4, THE_JADE_FOREST },	-- Chin
									{ 53.5, 76.4, KRASARANG_WILDS },	-- Cranfur the Noodler
								},
								-- this had SQs listed, but it was available to me on an alliance character that had done 0 quests in jade forest, not even the intro, so i think it was an oversight.
								["groups"] = {
									i(86392),	-- Letter to Sungshin Ironpaw (QI!)
								},
							}),
							q(31279, {	-- Everything I Know About Cooking (H)
								["qgs"] = {
									62322,	-- Graceful Swan
									59405,	-- Li Goldendraft
									65528,	-- Nan Thunderfoot
								},
								["coords"] = {
									{ 48.1, 34.5, THE_JADE_FOREST },	-- Graceful Swan
									{ 83.6, 20.2, VALLEY_OF_THE_FOUR_WINDS },	-- Nan Thunderfoot
									{ 64.2, 61.3, KUN_LAI_SUMMIT },	-- Li Goldendraft
								},
								["groups"] = {
									i(86392),	-- Letter to Sungshin Ironpaw (QI!)
								},
							}),
							q(30332, {	-- Fatty Goatsteak
								["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
								["qg"] = 58712,	-- Kol Ironpaw
								["coord"] = { 53.0, 51.3, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
								["groups"] = {
									i(79867),	-- Fatty Goatsteak (QI!)
								},
							}),
							q(33146, {	-- Noodle Time
								["qg"] = 64231,	-- Sungshin Ironpaw
								["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
							}),
							q(33358, {	-- Noodle Time: Bonus
								["qg"] = 64231,	-- Sungshin Ironpaw
								["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
							}),
							q(31535, {	-- Replenishing the Pantry
								["sourceQuest"] = 31536,	-- Preserving Freshness
								["qg"] = 64395,	-- Nam Ironpaw
								["coord"] = { 53.5, 51.2, VALLEY_OF_THE_FOUR_WINDS },
								["repeatable"] = true,
								["groups"] = {
									i(87557),	-- Bundle of Groceries (QI!)
								},
							}),
							q(30331, {	-- The Mile-High Grub
								["qg"] = 58714,	-- Mei Mei Ironpaw
								["coord"] = { 52.5, 51.6, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
								["groups"] = {
									i(79895),	-- Master's Pot (QI!)
									i(79894),	-- Mushan Tail Stew (QI!)
								},
							}),
							q(30328, {	-- The Thousand-Year Dumpling
								["qg"] = 58715,	-- Yan Ironpaw
								["coord"] = { 52.6, 51.7, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
								["groups"] = {
									i(80133),	-- Preserved Vegetables (QI!)
								},
							}),
							q(30330, {	-- The Truffle Shuffle
								["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
								["qg"] = 58716,	-- Jian Ironpaw
								["coord"] = { 53.4, 51.6, VALLEY_OF_THE_FOUR_WINDS },
								["isDaily"] = true,
								["groups"] = {
									i(79833),	-- Shadelight Truffle (QI!)
									i(80127),	-- Shadelight Truffle Spores (QI!)
								},
							}),
							q(31521, {	-- To Be a Master
								["description"] = "Becomes available on reaching max Pandaria cooking, but you must master all 6 Pandaren cooking ways for this quest to be completed.",
								["sourceAchievement"] = 7306,	-- Master of Pandaren Cooking
								["qg"] = 64231,	-- Sungshin Ironpaw
								["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
							}),
						},
					}),
					q(30275, {	-- A Crocolisk Tale
						["description"] = "Kill Manglemaw at the Pools of Purity to spawn Manglemaw's Mother.",
						["provider"] = { "i", 79238 },	-- Enormous Crocolisk Tail
						["coord"] = { 57.7, 25.9, VALLEY_OF_THE_FOUR_WINDS },
						["crs"] = {
							58754,	-- Manglemaw
							58755,	-- Manglemaw's Mother
						},
						["groups"] = {
							i(79237),	-- Enormous Crocolisk Tail (QI!)
						},
					}),
					q(29918, {	-- A Lesson in Bravery
						["sourceQuests"] = {
							29917,	-- Lupello
							29916,	-- Piercing Talons and Slavering Jaws
						},
						["qg"] = 56312,	-- Shang Thunderfoot
						["coord"] = { 78.2, 32.8, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(75208),	-- Rancher's Lariat (QI!)
							i(81824),	-- Hawk Feather Band
							i(81825),	-- Lariat Loop
							i(81826),	-- Shepherd's Loop
							i(81827),	-- Band of Bravery
							i(81828),	-- Ring of Courage
						},
					}),
					q(29915, {	-- A Neighbor's Duty
						["sourceQuests"] = {
							29914,	-- Back to the Sty
							29913,	-- The Meat They'll Eat
						},
						["qg"] = 56205,	-- Liang Thunderfoot
						["coord"] = { 75.2, 24.1, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76100),	-- Wayward Lamb (QI!)
						},
					}),
					q(29877, {	-- A Poor Grasp of the Basics
						["sourceQuest"] = 29907,	-- Chen and Li Li
						["qg"] = 56440,	-- Muno the Farmhand
						["coord"] = { 82.7, 21.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88371),	-- Watermelon Bomb
						},
					}),
					q(29908, {	-- A Seemingly Endless Nuisance
						["sourceQuest"] = 29907,	-- Chen and Li Li
						["qg"] = 56204,	-- Pang Thunderfoot
						["coord"] = { 83.7, 21.1, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81769),	-- Silkmaster's Satin Leggings
							i(81770),	-- Sunsoaked Legguards
							i(81771),	-- Huangtze Scale Leggings
							i(81772),	-- Paoquan Burnished Legplates
							i(81773),	-- Gilded Fan Silk Trousers
							i(81774),	-- Plainshawk Legguards
							i(81775),	-- Wild Plains Legguards
							i(81776),	-- Thunderfoot Heavy Legguards
							i(81777),	-- Sunsong Armored Legguards
						},
					}),
					q(29988, {	-- A Taste For Eggs
						["sourceQuest"] = 29987,	-- Unyielding Fists: Trial of Wood
						["qg"] = 56714,	-- Master Bruised Paw
						["coord"] = { 18.3, 31.3, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(209953, {	-- Emperor Tern Egg
								i(76501),	-- Emperor Tern Egg (QI!)
							}),
							o(209954, {	-- Whitefisher Crane Egg
								i(76503),	-- Whitefisher Crane Egg (QI!)
							}),
							o(209955, {	-- Hornbill Strider Egg
								i(76516),	-- Hornbill Strider Egg (QI!)
							}),
						},
					}),
					q(29577, {	-- Ashyo's Vision
						["sourceQuest"] = 29871,	-- Clever Ashyo
						["qg"] = 56113,	-- Clever Ashyo
						["coord"] = { 61.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29914, {	-- Back to the Sty
						["sourceQuest"] = 29912,	-- The Fabular Miss Fanny
						["qg"] = 56205,	-- Liang Thunderfoot
						["coord"] = { 75.2, 24.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(75271),	-- Jian (QI!)
							i(75272),	-- Ling (QI!)
							i(75273),	-- Smelly (QI!)
						},
					}),
					q(30172, {	-- Barreling Along
						["sourceQuest"] = 30051,	-- The Great Water Hunt
						["qgs"] = {
							56474,	-- Mudmug
							58785,
						},
					}),
					q(30077, {	-- Barrels, Man
						["sourceQuest"] = 30074,	-- Knocking on the Door
						["qg"] = 56138,	-- Li Li
						["coord"] = { 32.3, 68.5, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29757, {	-- Bottletoads
						["qg"] = 56773,	-- Yan
						["coord"] = { 60.6, 33.7, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76727),	-- Slimy Bottle (QI!)
						},
					}),
					q(29952, {	-- Broken Dreams
						["sourceQuest"] = 29950,	-- Li Li's Day Off
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 68.8, 43.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29907, {	-- Chen and Li Li
						["sourceQuests"] = {
							32018,	-- His Name Was... Stormstout
							32019,	-- They Call Him... Stormstout
							-- #if AFTER 6.2.0
							38935,	-- His Name Was... Stormstout
							-- #endif
							-- #if AFTER 7.3.5
							49539,	-- Warchief's Command: Valley of the Four Winds!
							49557,	-- Hero's Call: Valley of the Four Winds!
							-- #endif
						},
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 86.0, 22.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30046, {	-- Chen's Resolution
						["sourceQuests"] = {
							-- TODO: may also require #29910, Rampaging Rodents (not required for 2 criteria prior to this, but i did it prior to Muddy Water when Broken Dreams alone didn't trigger the availability of Chen's Resolution)
							29952,	-- Broken Dreams
							29951,	-- Muddy Water
						},
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 68.9, 43.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(32045, {	-- Children of the Water
						["qg"] = 64315,	-- Stonecarver Mac
						["coord"] = { 55.1, 47.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30078, {	-- Cleaning House
						["sourceQuests"] = {
							30077,	-- Barrels, Man
							30075,	-- Clear the Way
							30076,	-- The Fanciest Water
						},
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 83.6, 21.5, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81742),	-- Silkmaster's Satin Hood
							i(81743),	-- Sunsoaked Helm
							i(81744),	-- Huangtze Scale Helm
							i(81745),	-- Paoquan Burnished Headcover
							i(81746),	-- Gilded Fan Silk Cowl
							i(81747),	-- Plainshawk Helm
							i(81748),	-- Wild Plains Helm
							i(81749),	-- Thunderfoot Heavy Helm
							i(81750),	-- Sunsong Armored Helm
						},
					}),
					q(30075, {	-- Clear the Way
						["sourceQuest"] = 30074,	-- Knocking on the Door
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 32.1, 68.3, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81834),	-- Silkspawn Wing
							i(81835),	-- Plainshawk Feather
							i(81836),	-- Lucky "Rabbit's" Foot
							i(81837),	-- Viseclaw Carapace
							i(81838),	-- Tawnyhide Antler
						},
					}),
					q(29871, {	-- Clever Ashyo
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.1, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29947, {	-- Crouching Carrot, Hidden Turnip
						["sourceQuest"] = 29945,	-- Yellow and Red Make Orange
						["qg"] = 56138,	-- Li Li
						["coord"] = { 68.9, 43.3, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76370),	-- Orange-Painted Turnip (QI!)
							i(88376),	-- Orange Painted Turnip (TOY!)
						},
					}),
					q(30049, {	-- Doesn't Hold Water
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 55.9, 49.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30054, {	-- Enough is Ookin' Enough
						["description"] = "Only available as part of the \"Hop Hunting\" quest.",
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 57401,	-- Mung-Mung
						["coord"] = { 44.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(77379),	-- Virmen Tooth (QI!)
						},
					}),
					q(29982, {	-- Evacuation Orders
						["qg"] = 56720,	-- Loon Mai
						["coord"] = { 19.5, 56.9, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88027),	-- Silkmaster's Satin Pauldrons
							i(88026),	-- Sunsoaked Pauldron
							i(88025),	-- Huangtze Scale Pauldrons
							i(88024),	-- Paoquan Burnished Pauldrons
							i(88023),	-- Gilded Fan Silk Pauldrons
							i(88022),	-- Plainshawk Pauldron
							i(88021),	-- Wild Plains Pauldrons
							i(88020),	-- Thunderfoot Heavy Pauldrons
							i(88019),	-- Sunsong Armored Pauldrons
						},
					}),
					q(29986, {	-- Fog Wards
						["sourceQuest"] = 29984,	-- Unyielding Fists: Trial of Bamboo
						["qg"] = 56714,	-- Master Bruised Paw
						["coord"] = { 18.3, 31.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81814),	-- Necklace of Three Sins
							i(81815),	-- Jhuuroon's Collar
							i(81816),	-- Necklace of Relative Peace
							i(81817),	-- Amulet of the Singing Marshes
							i(81818),	-- Otouxian Amulet
						},
					}),
					q(30182, {	-- Fox Mastery
						["sourceQuest"] = 30183,	-- Stalker Mastery
						["qg"] = 63822,	-- Tani
						["coord"] = { 16.2, 82.5, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(32035, {	-- Got Silk?
						["qg"] = 59585,	-- Lolo Lio
						["coord"] = { 55.6, 52.1, VALLEY_OF_THE_FOUR_WINDS },
						["isBreadcrumb"] = true,
					}),
					q(30050, {	-- Gardener Fran and the Watering Can
						["description"] = "Only available as part of the \"Hop Hunting\" quest.",
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 62377,	-- Gardener Fran
						["coord"] = { 48.3, 33.4, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(77281),	-- Fran's Watering Can (QI!)
							i(81844),	-- Gardener's Sickle
							i(81845),	-- Gardener's Wand
							i(81846),	-- Fran's Spear
							i(81847),	-- Gardener's Axe
							i(81848),	-- Fran's Handaxe
							i(81849),	-- Fran's Crossbow
							i(81850),	-- Gardener's Mace
							i(81851),	-- Fran's Golden Mace
							i(81852),	-- Fran's Dagger
							i(81853),	-- Fran's Bronze Mace
						},
					}),
					q(30028, {	-- Grain Recovery
						["sourceQuests"] = {
							30030,	-- Out of Sprite
							30031,	-- Taste Test
							30029,	-- Wee Little Shenanigans
						},
						["qg"] = 57211,	-- Grainlord Kai
						["coord"] = { 52.7, 62.9, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o_repeated({
								i(77033),	-- Sack of Grain (QI!)
								o(210001),	-- Stolen Malt Sack
								o(210002),	-- Stolen Barley Sack
							}),
						},
					}),
					q(29919, {	-- Great Minds Drink Alike
						["sourceQuest"] = 29918,	-- A Lesson in Bravery
						["qg"] = 56133,	-- Chen Stormsout
						["coord"] = { 75.3, 35.5, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29758, {	-- Guess Whose Back
						["provider"] = { "i", 83767 },	-- Krosh's Back
						["coord"] = { 64.5, 25.7, VALLEY_OF_THE_FOUR_WINDS },
						["crs"] = { 56833 },	-- Krosh
					}),
					heroscall(q(49557, {	-- Hero's Call: Valley of the Four Winds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 81,
					})),
					q(32018, {	-- His Name Was... Stormstout
						["qg"] = 56774,	-- Bolo
						["coord"] = { 45.7, 43.9, THE_JADE_FOREST },
						["isBreadcrumb"] = true,
					}),
					q(38935, {	-- His Name Was... Stormstout - appears to be an unused version of this quest added in Warlords of Draenor?
						["description"] = "This breadcrumb can only be picked up from the Adventure Guide (shift+J).",
						["timeline"] = { ADDED_6_2_0 },
						["isBreadcrumb"] = true,
						["lvl"] = 15,
					}),
					q(30053, {	-- Hop Hunting
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 55.9, 49.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30653, {	-- It Does You No Good In The Keg
						["sourceQuest"] = 29990,	-- Training and Discipline
						["qg"] = 56474,	-- Mudmug
						["coord"] = { 18.1, 55.7, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = HORDE_ONLY,
					}),
					q(30624, {	-- It Does You No Good In The Keg
						["sourceQuest"] = 29990,	-- Training and Discipline
						["qg"] = 56474,	-- Mudmug
						["coord"] = { 18.1, 55.7, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(29874, {	-- Kang Bramblestaff (A)
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.1, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(29875, {	-- Kang Bramblestaff (H)
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.1, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(29873, {	-- Ken-Ken
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.1, VALLEY_OF_THE_FOUR_WINDS },
						["isBreadcrumb"] = true,
					}),
					q(30074, {	-- Knocking on the Door
						["sourceQuest"] = 30073,	-- The Emperor
						["qg"] = 56133,	-- Chen Stormstout
					}),
					q(29944, {  -- Leaders Among Breeders
						["sourceQuest"] = 29919,	-- Great Minds Drink Alike
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 68.9, 43.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88375),	-- Turnip Punching Bag (TOY!)
						},
					}),
					q(29949, {	-- Legacy
						["sourceQuests"] = {
							29947,	-- Crouching Carrot, Hidden Turnip
							29946,	-- The Warren-Mother
							29948,	-- Thieves to the Core
						},
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 68.9, 43.1, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30048, {	-- Li Li and the Grain
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 55.9, 49.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29950, {	-- Li Li's Day Off
						["sourceQuest"] = 29949,	-- Legacy
						["qg"] = 56138,	-- Li Li
						["coord"] = { 68.8, 43.4, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76350),	-- Li Li's Wishing-Stone (QI!)
						},
					}),
					q(29872, {	-- Lin Tenderpaw
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.1, VALLEY_OF_THE_FOUR_WINDS },
						["isBreadcrumb"] = true,
					}),
					q(29909, {	-- Low Turnip Turnout
						["sourceQuests"] = {
							29877,	-- A Poor Grasp of the Basics
							29908,	-- A Seemingly Endless Nuisance
						},
						["qg"] = 56204,	-- Pang Thunderfoot
						["coord"] = { 83.7, 21.0, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29917, {	-- Lupello
						["sourceQuest"] = 29915,	-- A Neighbor's Duty
						["qg"] = 56208,	-- Francis the Shepherd Boy
						["coord"] = { 78.2, 32.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30058, {	-- Mothallus!
						["sourceQuests"] = {
							30059,	-- The Moth Rebellion
							30072,	-- Where Silk Comes From
						},
						["qg"] = 57407,	-- Master Goh
						["coord"] = { 63.6, 58.5, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88034),	-- Sunsoaked Vest
							i(88033),	-- Huangtze Scale Vest
							i(88032),	-- Paoquan Vest
							i(88031),	-- Plainshawk Vest
							i(88030),	-- Wild Plains Breastplate
							i(88029),	-- Thunderfoot Vest
							i(88028),	-- Sunsong Vest
						},
					}),
					q(29951, {	-- Muddy Water
						["sourceQuest"] = 29949,	-- Legacy
						["qg"] = 56474,	-- Mudmug
						["coord"] = { 68.7, 43.1, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76362),	-- Mudmug's Vial (QI!)
							o(209921, {	-- Muddy Water
								i(76356),	-- Stoppered Vial of Muddy Water (QI!)
							}),
							i(81778),	-- Silkmaster's Satin Treads
							i(81779),	-- Sunsoaked Footguards
							i(81780),	-- Huangtze Scale Sabatons
							i(81781),	-- Paoquan Burnished Greaves
							i(81782),	-- Gilded Fan Silk Treads
							i(81783),	-- Plainshawk Boots
							i(81784),	-- Wild Plains Sabatons
							i(81785),	-- Thunderfoot Heavy Warboots
							i(81786),	-- Sunsong Armored Warboots
						},
					}),
					q(30181, {	-- Mushan Mastery
						["qg"] = 58422,	-- Hemet Nesingwary Jr.
						["coord"] = { 16.1, 82.6, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30184, {	-- Mushan Mastery: Darkhide
						["sourceQuest"] = 30181,	-- Mushan Mastery
						["qg"] = 58421,	-- Hemet Nesingwary
						["coord"] = { 16.0, 82.5, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(79058),	-- Darkhide's Head (QI!)
							i(81854),	-- Mushan Chopper
							i(81855),	-- Darkhide Blade
							i(81856),	-- Safari Defender
							i(81857),	-- Darkhide Barrier
							i(81858),	-- Mushan Sticker
							i(81859),	-- 'Nessy's Trophy Pincers
							i(90542),	-- Safari Journal
							i(90545),	-- Safari Lantern
						},
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32685, {	-- No Fishing Pole Necessary!
						["qg"] = 70398,	-- Ben of the Booming Voice
						["coord"] = { 58.9, 46.9, VALLEY_OF_THE_FOUR_WINDS },
						["timeline"] = { ADDED_5_2_0 },
						["requireSkill"] = FISHING,
						["groups"] = {
							i(74866),	-- Golden Carp
						},
					})),
					q(30030, {	-- Out of Sprite
						["sourceQuest"] = 30048,	-- Li Li and the Grain
						["qg"] = 57209,	-- Grainer Pan
					}),
					q(30186, {	-- Parental Mastery
						["sourceQuest"] = 30185,	-- Tortoise Mastery
						["qg"] = 58422,	-- Hemet Nesingwary Jr.
						["coord"] = { 19.9, 75.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81819),	-- Band of the Big Thing o' the Deep
							i(81820),	-- Band of the Dance Ritual
							i(81821),	-- Nesingwary's Signet
							i(81822),	-- Band of Parental Mastery
							i(81823),	-- Ring of Torjar's Bane
						},
					}),
					q(29916, {	-- Piercing Talons and Slavering Jaws
						["sourceQuest"] = 29915,	-- A Neighbor's Duty
						["qg"] = 56208,	-- Francis the Shepherd Boy
						["coord"] = { 78.2, 32.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29911, {	-- Practically Perfect Produce
						["sourceQuest"] = 29940,	-- Taking a Crop
						["qg"] = 56207,	-- Ang Thunderfoot
						["coord"] = { 81.4, 24.9, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(76110),	-- Crate of Fresh Produce (QI!)
						},
					}),
					q(29910, {	-- Rampaging Rodents
						["sourceQuest"] = 29909,	-- Low Turnip Turnout
						["qg"] = 56465,	-- Ana Thunderfoot
						["coord"] = { 82.6, 26.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88370),	-- Puntable Marmot (TOY!)
						},
					}),
					q(30626, {	-- Retreat!
						["sourceQuest"] = 30625,	-- Students No More
						["qg"] = 57198,	-- Guard Captain Oakenshield
						["coord"] = { 11.6, 49.5, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30057, {	-- Seeing Orange
						["sourceQuest"] = 30056,	-- The Farmer's Daughter
						["qg"] = 57408,	-- Mina Mudclaw
						["coord"] = { 41.3, 38.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81751),	-- Silkmaster's Satin Mantle
							i(81752),	-- Sunsoaked Spaulder
							i(81753),	-- Huangtze Scale Spaulders
							i(81754),	-- Paoquan Burnished Spaulders
							i(81755),	-- Gilded Fan Silk Amice
							i(81756),	-- Plainshawk Spaulder
							i(81757),	-- Wild Plains Spaulders
							i(81758),	-- Thunderfoot Heavy Shoulders
							i(81759),	-- Sunsong Armored Shoulders
						},
					}),
					q(29600, {	-- Snap Judgment
						["qg"] = 56802,	-- Zhang Yue
						["coord"] = { 59.8, 27.8, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81805),	-- Silkmaster's Satin Cuffs
							i(81806),	-- Sunsoaked Bindings
							i(81807),	-- Huangtze Scale Armbands
							i(81808),	-- Paoquan Burnished Bracers
							i(81809),	-- Gilded Fan Silk Cuffs
							i(81810),	-- Plainshawk Armwraps
							i(81811),	-- Wild Plains Wristguards
							i(81812),	-- Thunderfoot Heavy Armplates
							i(81813),	-- Sunsong Armored Bracers
						},
					}),
					q(30183, {	-- Stalker Mastery
						["qg"] = 63822,	-- Tani
						["coord"] = { 16.2, 82.5, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(84320),	-- Hemet's Satin Leggings
							i(84321),	-- Hemet's Hide Legguards
							i(84322),	-- Hemet's Ringmail Leggings
							i(84323),	-- Hemet's Burnished Legplates
							i(84324),	-- Hemet's Silk Trousers
							i(84325),	-- Hemet's Leather Legguards
							i(84326),	-- Wild Plains Leggings
							i(84327),	-- Hemet's Heavy Legguards
							i(84328),	-- Hemet's Armored Legguards
						},
					}),
					q(32038, {	-- Stag Mastery
						["sourceQuests"] = {
							30181,	-- Mushan Mastery
							30183,	-- Stalker Mastery
						},
						["qg"] = 58434,	-- Matt "Lucky" Gotcher
						["coord"] = { 15.9, 82.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29981, {	-- Stemming the Swarm
						["sourceQuest"] = 29872,	-- Lin Tenderpaw
						["qg"] = 56111,	-- Lin Tenderpaw
						["coord"] = { 19.9, 56.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30117, {	-- Stoneplow Thirsts
						["sourceQuest"] = 30078,	-- Cleaning House
						["qg"] = 61026,	-- Emmi
						["coord"] = { 36.2, 68.4, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81393),	-- Chen's Full Keg (QI!)
						},
					}),
					q(30055, {	-- Stormstout's Hops
						["sourceQuests"] = {
							30054,	-- Enough is Ookin' Enough
							30050,	-- Gardener Fran and the Watering Can
							30052,	-- Weed War
							30057,	-- Seeing Orange
						},
					}),
					q(30625, {	-- Students No More
						["sourceQuests"] = {
							30624,	-- It Does You No Good In The Keg (A)
							30653,	-- It Does You No Good In The Keg (H)
							30623,	-- The Mantidote
							30622,	-- The Swarm Begins
						},
						["qg"] = 57198,	-- Guard Captain Oakenshield
						["coord"] = { 11.6, 49.5, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29940, {	-- Taking a Crop
						["sourceQuest"] = 29909,	-- Low Turnip Turnout
						["qg"] = 56207,	-- Ang Thunderfoot
						["coord"] = { 81.4, 24.9, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(209891, {	-- Stolen Turnip
								i(76297),	-- Stolen Turnip (QI!)
							}),
							o(209892, {	-- Stolen Watermelon
								i(76298),	-- Stolen Watermelon (QI!)
							}),
							i(81796),	-- Silkmaster's Satin Gloves
							i(81797),	-- Sunsoaked Gloves
							i(81798),	-- Huangtze Scale Gauntlets
							i(81799),	-- Paoquan Burnished Gloves
							i(81800),	-- Gilded Fan Silk Handguards
							i(81801),	-- Plainshawk Gloves
							i(81802),	-- Wild Plains Gauntlets
							i(81803),	-- Thunderfoot Heavy Gauntlets
							i(81804),	-- Sunsong Armored Gauntlets
						},
					}),
					q(30031, {	-- Taste Test
						["sourceQuest"] = 30048,	-- Li Li and the Grain
						["qg"] = 56138,	-- Li Li
						["coord"] = { 52.7, 62.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29992, {	-- Tenderpaw By Name, Tender Paw By Reputation
						["sourceQuest"] = 29984,	-- Unyielding Fists: Trial of Bamboo
						["qg"] = 56111,	-- Lin Tenderpaw
						["coord"] = { 18.1, 31.1, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(209952, {	-- Jademoon
								i(76499),	-- Jademoon Leaf (QI!)
							}),
						},
					}),
					q(30047, {	-- The Chen Taste Test
						["sourceQuest"] = 30032,	-- The Quest for Better Barley
						["qg"] = 56138,	-- Li Li
						["coord"] = { 52.7, 62.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30073, {	-- The Emperor
						["sourceQuests"] = {
							30172,	-- Barreling Along
							30055,	-- Stormstout's Hops
							30047,	-- The Chen Taste Test
						},
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 55.9, 49.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29912, {	-- The Fabulous Miss Fanny
						["sourceQuest"] = 29911,	-- Practically Perfect Produce
						["qg"] = 56204,	-- Pang Thunderfoot
						["coord"] = { 83.7, 21.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(209844, {	-- Ang's Giant Pink Turnip
								i(75259),	-- Ang's Giant Pink Turnip (QI!)
							}),
							o(209843, {	-- Ang's Summer Watermelon
								i(75258),	-- Ang's Summer Watermelon (QI!)
							}),
							o(209842, {	-- Pang's Extra-Spicy Tofu
								i(75256),	-- Pang's Extra-Spicy Tofu (QI!)
							}),
						},
					}),
					q(30076, {	-- The Fanciest Water
						["sourceQuest"] = 30074,	-- Knocking on the Door
						["qg"] = 56474,	-- Mudmug
						["coord"] = { 32.3, 68.3, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(77471),	-- Spritewater Essence (QI!)
						},
					}),
					q(30056, {	-- The Farmer's Daughter
						["description"] = "Only available as part of the \"Hop Hunting\" quest.",
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 62385,	-- Den Mudclaw
						["coord"] = { 44.3, 34.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29581, {	-- The Golden Dream
						["sourceQuest"] = 29577,	-- Ashyo's Vision
						["qg"] = 56802,	-- Zhang Yue
						["groups"] = {
							i(76973),	-- Sprig of Dreamleaf (QI!)
						},
					}),
					q(30628, {	-- The Gratitude of Stoneplow
						["sourceQuest"] = 30627,	-- The Gratitude of Stoneplow
						["qg"] = 56720,	-- Loon Mai
						["groups"] = {
							i(81476),	-- Nayeli Treads
							i(81477),	-- Mortbreath Footguards
							i(81478),	-- Deepwild Sabatons
							i(81479),	-- Narsong Greaves
							i(81480),	-- Angkhal Treads
							i(81481),	-- Riverblade Boots
							i(81482),	-- Sarjun Sabatons
							i(81483),	-- Korjan Warboots
							i(81484),	-- Dojani Warboots
						},
					}),
					q(30051, {	-- The Great Water Hunt
						["sourceQuest"] = 30049,	-- Doesn't Hold Water
						["qg"] = 56474,	-- Mudmug
						["groups"] = {
							i(81839),	-- Embrace of Trees
							i(81840),	-- Dustback Cloak
							i(81841),	-- Tawnyhide Cape
							i(81842),	-- Mudmug's Cloak
							i(81843),	-- Cloak of the Grassy Cline
						},
					}),
					q(29983, {	-- The Hidden Master
						["sourceQuests"] = {
							29981,	-- Stemming the Swarm
							29982,	-- Evacuation Orders
						},
						["qg"] = 56720,	-- Loon Mai
						["coord"] = { 19.6, 56.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30623, {	-- The Mantidote
						["sourceQuests"] = {
							29990,	-- Training and Discipline
							30360,	-- Warn Stoneplow (A)
							30241,	-- Warn Stoneplow (H)
						},
						["qg"] = 59855,	-- Mei Barrelbottom
						["coord"] = { 18.0, 56.5, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(80337),	-- Ken-Ken's Mask (QI!)
						},
					}),
					q(29913, {	-- The Meat They'll Eat
						["sourceQuest"] = 29912,	-- The Fabular Miss Fanny
						["qg"] = 56205,	-- Liang Thunderfoot
						["coord"] = { 75.2, 24.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(75275),	-- Mushan Shoulder Steak (QI!)
							i(75276),	-- Turtle Meat Scrap (QI!)
							i(88018),	-- Thunderfoot Heavy Cap
							i(88017),	-- Sunsong Armored Cap
							i(88016),	-- Paoquan Burnished Cap
							i(88015),	-- Huangtze Scale Headguard
							i(88014),	-- Sunsoaked Cap
							i(88013),	-- Silkmaster's Satin Cap
							i(88012),	-- Gilded Fan Silk Cap
							i(88011),	-- Wild Plains Headguard
							i(88010),	-- Plainshawk Cap
						},
					}),
					q(30059, {	-- The Moth Rebellion
						["qg"] = 57424,	-- Journeyman Chu
						["coord"] = { 63.5, 58.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(30032, {	-- The Quest for Better Barley
						["sourceQuests"] = {
							30029,	-- Wee Little Shenanigans
							30030,	-- Out of Sprite
							30031,	-- Taste Test
						},
						["qg"] = 57211,	-- Grainlord Kai
						["coord"] = { 52.7, 63.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(77034),	-- Malted Cave Barley (QI!)
							i(81787),	-- Silkmaster's Satin Cord
							i(81788),	-- Sunsoaked Belt
							i(81789),	-- Huangtze Scale Waistguard
							i(81790),	-- Paoquan Burnished Clasp
							i(81791),	-- Gilded Fan Silk Cord
							i(81792),	-- Plainshawk Belt
							i(81793),	-- Wild Plains Belt
							i(81794),	-- Thunderfoot Heavy Girdle
							i(81795),	-- Sunsong Armored Girdle
						},
					}),
					q(30627, {	-- The Savior of Stoneplow
						["sourceQuest"] = 30626,	-- Retreat!
						["qg"] = 59856,	-- Master Bruised Paw
						["coord"] = { 17.9, 55.7, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							ach(7502),	-- Savior of Stoneplow
						},
					}),
					q(30086, {	-- The Search for the Hidden Master
						["qg"] = 56110,	-- Xiao
						["coord"] = { 84.0, 21.2, VALLEY_OF_THE_FOUR_WINDS },
						["isBreadcrumb"] = true,
					}),
					q(30622, {	-- The Swarm Begins
						["sourceQuests"] = {
							30376,	-- Hope Springs Eternal (breadcrumb, neutral)
							30360,	-- Warn Stoneplow (breadcrumb, A)
							30241,	-- Warn Stoneplow (breadcrumb, H)
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							29990,	-- Training and Discipline
						},
						["qg"] = 56720,	-- Loon Mai
						["coord"] = { 19.5, 56.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29946, {	-- The Warren-Mother
						["sourceQuest"] = 29944,	-- Leaders Among Breeders
						["qg"] = 56133,	-- Chen Stormstout
						["coord"] = { 68.9, 43.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(32019, {	-- They Call Him... Stormstout
						["description"] = "Only available before completion of |cFFFFD700The Jade Serpent|r.",
						["qg"] = 56782,	-- Elder Sage Rain-Zhu
						["coord"] = { 58.1, 58.6, THE_JADE_FOREST },
						["isBreadcrumb"] = true,
					}),
					q(29985, {	-- They Will Be Mist
						["sourceQuest"] = 29984,	-- Unyielding Fists: Trial of Bamboo
						["qg"] = 56714,	-- Master Bruised Paw
						["coord"] = { 18.3, 31.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29948, {	-- Thieves to the Core
						["sourceQuests"] = {
							29944,	-- Leaders Among Breeders
							29945,	-- Yellow and Red Make Orange
						},
						["qg"] = 56474,	-- Mudmug
						["coord"] = { 68.7, 43.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(211696, {	-- Stolen Sack of Hops
								i(76337),	-- Stolen Sack of Hops (QI!)
							}),
						},
					}),
					q(30185, {	-- Tortoise Mastery
						["sourceQuests"] = {
							30182,	-- Fox Mastery
							30184,	-- Mushan Mastery: Darkhide
							32038,	-- Stag Mastery
						},
						["qg"] = 58422,	-- Hemet Nesingwary Jr.
						["coord"] = { 16.1, 82.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(79059),	-- Intact Tortoise Shell (QI!)
						},
					}),
					q(29990, {	-- Training and Discipline
						["sourceQuest"] = 29989,	-- Unyielding Fists: Trial of Stone
						["qg"] = 56111,	-- Lin Tenderpaw
						["coord"] = { 18.1, 31.0, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29984, {	-- Unyielding Fists: Trial of Bamboo
						["sourceQuest"] = 29983,	-- The Hidden Master
						["qg"] = 56714,	-- Master Bruised Paw
						["coord"] = { 18.3, 31.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					q(29989, {	-- Unyielding Fists: Trial of Stone
						["sourceQuest"] = 29988,	-- A Taste For Eggs
						["qg"] = 56714,	-- Master Bruised Paw (18.3,31.2)
						["coord"] = { 18.3, 31.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(81760),	-- Silkmaster's Satin Robe
							i(81761),	-- Sunsoaked Breastplate
							i(81762),	-- Huangtze Scale Armor
							i(81763),	-- Paoquan Burnished Chestguard
							i(81764),	-- Gilded Fan Silk Robe
							i(81765),	-- Plainshawk Tunic
							i(81766),	-- Wild Plains Chestguard
							i(81767),	-- Thunderfoot Heavy Chestpiece
							i(81768),	-- Sunsong Armored Chestpiece
						},
					}),
					q(29987, {	-- Unyielding Fists: Trial of Wood
						["sourceQuests"] = {
							29986,	-- Fog Wards
							29992,	-- Tenderpaw By Name, Tender Paw By Reputation
							29985,	-- They Will Be Mist
						},
						["qg"] = 56714,	-- Master Bruised Paw
						["coord"] = { 18.3, 31.2, VALLEY_OF_THE_FOUR_WINDS },
					}),
					warchiefscommand(q(49539, {	-- Warchief's Command: Valley of the Four Winds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 81,
					})),
					q(30267, {	-- Watery Woes
						["qg"] = 58736,	-- Gladecaster Lang
						["coord"] = { 61.0, 32.9, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(79197),	-- Glade Glimmer (QI!)
							i(79198),	-- Spindly Bloodfeather (QI!)
						},
					}),
					q(30029, {	-- Wee Little Shenanigans
						["sourceQuest"] = 30048,	-- Li Li and the Grain
						["qg"] = 57211,	-- Grainlord Kai
						["coord"] = { 52.7, 63.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(84333),	-- Grainlord's Amulet
							i(84332),	-- Grainlord's Pendant
							i(84331),	-- Grainlord's Necklace
							i(84330),	-- Grainlord's Choker
							i(84329),	-- Grainlord's Locket
						},
					}),
					q(30052, {	-- Weed War
						["description"] = "Only available as part of the \"Hop Hunting\" quest.",
						["sourceQuest"] = 30046,	-- Chen's Resolution
						["qg"] = 57385,	-- Gai Lan
						["coord"] = { 38.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							objective(1, {	-- 0/100 Weeds pulled
								["providers"] = {
									{ "n", 57308 },	-- Nasty Weed
									{ "n", 57306 },	-- Ugly Weed
								},
								["coord"] = { 38.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
							}),
						},
					}),
					q(30072, {	-- Where Silk Comes From
						["sourceQuest"] = 32035,	-- Got Silk?
						["qg"] = 57405,	-- Silkmaster Tsai
						["coord"] = { 62.7, 59.7, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(77455),	-- Mulberry Leaves (QI!)
							i(77456),	-- Raw Silk (QI!)
							i(84343),	-- Silkmaster's Cloak
							i(84342),	-- Silkmaster's Manteau
							i(84341),	-- Silkmaster's Cape
							i(84340),	-- Silkmaster's Drape
							i(84339),	-- Silkmaster's Shawl
						},
					}),
					q(29945, {	-- Yellow and Red Make Orange
						["sourceQuest"] = 29919,	-- Great Minds Drink Alike
						["qg"] = 56138,	-- Li Li
						["coord"] = { 68.9, 43.3, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							o(209907, {	-- Meadow Marigold
								i(76334),	-- Meadow Marigold (QI!)
							}),
							i(76335),	-- Vial of Animal Blood (QI!)
							i(88377),	-- Turnip Paint "Gun" (TOY!)
						},
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32684, {	-- You Want Fish?
						["sourceQuest"] = 31281,	-- So You Want to be a Chef...
						["qg"] = 64231,	-- Sungshin Ironpaw
						["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
						["timeline"] = { ADDED_5_2_0 },
						["requireSkill"] = FISHING,
						["groups"] = {
							i(74866),	-- Golden Carp
						},
					})),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							51059,	-- Blackhoof
							50828,	-- Bonobos
							50351,	-- Jonn-Dar
							50364,	-- Nal'lak the Ripper
							50811,	-- Nasra Spothide
							50783,	-- Salyin Warscout
							50766,	-- Sele'na
							50339,	-- Sulik'shor
						},
						["groups"] = {
							i(87595),	-- Gloves of Burrow Spelunking
							i(87597),	-- Gloves of Congealed Mist
							i(87602),	-- Grain Warden's Gauntlets
							i(87599),	-- Grower's Gloves
							i(87600),	-- Marshsong Gloves
							i(87598),	-- Monstrous Silk Gloves
							i(87596),	-- Mudmug's Mitts
							i(87601),	-- Plough Driving Grips
							i(87603),	-- Thunderfall Gauntlets
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(51059, {	-- Blackhoof
						["coords"] = {
							{ 39.6, 57.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 32.8, 62.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["groups"] = {
							i(86565),	-- Battle Horn (TOY!)
						},
					}),
					n(50828, {	-- Bonobos
						["coords"] = {
							{ 15.6, 32.2, VALLEY_OF_THE_FOUR_WINDS },
							{ 19.0, 35.8, VALLEY_OF_THE_FOUR_WINDS },
							{ 14.0, 38.2, VALLEY_OF_THE_FOUR_WINDS },
							{ 16.6, 41.0, VALLEY_OF_THE_FOUR_WINDS },
						},
						["groups"] = {
							i(86591),	-- Magic Banana (TOY!)
						},
					}),
					n(50351, {	-- Jonn-Dar
						["coord"] = { 18.6, 77.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(86572),	-- Terracotta Fragment
						},
					}),
					n(50364, {	-- Nal'lak the Ripper
						["coords"] = {
							{ 10.8, 49.0, VALLEY_OF_THE_FOUR_WINDS },
							{ 9.20, 59.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["groups"] = {
							i(86576),	-- Dynasty of Steel
						},
					}),
					n(50811, {	-- Nasra Spothide
						["coord"] = { 88.6, 18.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(86587),	-- Seed of Tranquil Growth
						},
					}),
					n(50783, {	-- Salyin Warscout
						["coords"] = {
							{ 67.6, 59.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 75.8, 46.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["groups"] = {
							i(86583),	-- Salyin Battle Banner (TOY!)
						},
					}),
					n(50766, {	-- Sele'na
						["coords"] = {
							{ 52.8, 28.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 60.2, 39.2, VALLEY_OF_THE_FOUR_WINDS },
						},
						["groups"] = {
							i(86580),	-- Wilted Lilypad
						},
					}),
					n(50339, {	-- Sulik'shor
						["coord"] = { 37.0, 25.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(86569),	-- Crystal of Insanity
						},
					}),
				}),
				n(TREASURES, {
					o(213460, { -- A Most Famous Bill of Sale
						["coord"] = { 55.0, 47.3, VALLEY_OF_THE_FOUR_WINDS },
					}),
					o(214340, {	-- Boat-Building Instructions
						["questID"] = 31869,
						["coord"] = { 92.2, 39.2, VALLEY_OF_THE_FOUR_WINDS },
						-- #if ANYCLASSIC
						["description"] = "While it exists in the game, it currently cannot be looted as of the Landfall patch (5.5.1). Please fix! :(",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_5_1 },
						["isBounty"] = true,
						-- #endif
						["groups"] = {
							i(87524),	-- Boat-Building Instructions
						},
					}),
					o(213649, {	-- Cache of Pilfered Goods
						["coord"] = { 43.61, 37.48, VALLEY_OF_THE_FOUR_WINDS },
						["questID"] = 31406,
						["groups"] = {
							i(86110),	-- Stolen Necklace of Precision
							i(86111),	-- Stolen Necklace of Accuracy
							i(86112),	-- Stolen Amulet of Wisdom
							i(86113),	-- Stolen Amulet of Might
							i(86114),	-- Stolen Necklace of Fortitude
						},
					}),
					o(215785, {	-- Embracing the Passions
						["coord"] = { 83.22, 21.16, VALLEY_OF_THE_FOUR_WINDS },
					}),
					n(64191, {	-- Ghostly Pandaren Craftsman
						["coord"] = { 45.4, 38.2, VALLEY_OF_THE_FOUR_WINDS },
						["questID"] = 31292,
						["groups"] = {
							i(86079),	-- Ancient Pandaren Woodcutter
						},
					}),
					n(64004, {	-- Ghostly Pandaren Fisherman
						["coord"] = { 46.8, 24.6, VALLEY_OF_THE_FOUR_WINDS },
						["description"] = "Speak with the Ghostly Pandaren Fisherman to get the toy.",
						["questID"] = 31284,
						["groups"] = {
							i(85973),	-- Ancient Pandaren Fishing Charm (TOY!)
						},
					}),
					o(226956, {	-- Mysterious Fruit Pile
						["coord"] = { 52.1, 64.0, VALLEY_OF_THE_FOUR_WINDS },
						["timeline"] = { ADDED_6_2_3 },
						["questID"] = 37246,
						["groups"] = {
							i(110505, {	-- Mesmerizing Fruit Hat [Not a toy, but should be.]
								["timeline"] = { ADDED_6_2_3 },
							}),
						},
					}),
					o(213413, {	-- Pandaren Fighting Tactics
						["coord"] = { 18.8, 31.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
					o(213749, {	-- Staff of the Hidden Master
						["coords"] = {
							{ 15.4, 29.1, VALLEY_OF_THE_FOUR_WINDS },
							{ 17.5, 35.7, VALLEY_OF_THE_FOUR_WINDS },
							{ 19.1, 37.9, VALLEY_OF_THE_FOUR_WINDS },
							{ 15.0, 33.7, VALLEY_OF_THE_FOUR_WINDS },
							{ 19.0, 42.5, VALLEY_OF_THE_FOUR_WINDS },
						},
						["questID"] = 31407,
						["groups"] = {
							i(86218),	-- Staff of the Hidden Master
						},
					}),
					o(213459, {	-- The Birthplace of Liu Lang
						["coord"] = { 20.3, 55.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					o(213461, {	-- The Wandering Widow
						["coord"] = { 34.6, 64.0, VALLEY_OF_THE_FOUR_WINDS },
					}),
					o(213650, {	-- Virmen Treasure Cache
						["description"] = "Has a respawn timer of approx 7 minutes.",
						["questID"] = 31405,
						["coords"] = {
							{ 23.2, 30.8, VALLEY_OF_THE_FOUR_WINDS },
							{ 23.8, 28.4, VALLEY_OF_THE_FOUR_WINDS },
						},
					}),
					o(215780, {	-- Waterspeakers
						["coord"] = { 61.52, 34.88, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				n(VENDORS, {
					n(70101, {	-- Armsmaster Holinka >S13</Tyrannical Elite
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(75694, {	-- Armsmaster Holinka <Tyrannical Gladiator>
						["coord"] = { 12.0, 34.0, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144246, {	-- Arsenal: Tyrannical Gladiator's Weapons (A)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99794)),	-- Tyrannical Gladiator's Barrier
								moh(5, i(99796)),	-- Tyrannical Gladiator's Battle Staff
								moh(5, i(99941)),	-- Tyrannical Gladiator's Bonecracker
								moh(5, i(99769)),	-- Tyrannical Gladiator's Cleaver
								moh(5, i(99766)),	-- Tyrannical Gladiator's Decapitator
								moh(2, i(99793)),	-- Tyrannical Gladiator's Endgame
								moh(5, i(99837)),	-- Tyrannical Gladiator's Energy Staff
								moh(5, i(99835)),	-- Tyrannical Gladiator's Gavel
								moh(5, i(99768)),	-- Tyrannical Gladiator's Greatsword
								moh(5, i(99940)),	-- Tyrannical Gladiator's Hacker
								moh(5, i(99805)),	-- Tyrannical Gladiator's Heavy Crossbow
								moh(5, i(99936)),	-- Tyrannical Gladiator's Mageblade
								moh(5, i(99770)),	-- Tyrannical Gladiator's Pummeler
								moh(5, i(99771)),	-- Tyrannical Gladiator's Quickblade
								moh(2, i(99836)),	-- Tyrannical Gladiator's Redoubt
								moh(5, i(99935)),	-- Tyrannical Gladiator's Render
								moh(2, i(99803)),	-- Tyrannical Gladiator's Reprieve
								moh(5, i(99933)),	-- Tyrannical Gladiator's Ripper
								moh(5, i(99932)),	-- Tyrannical Gladiator's Shanker
								moh(2, i(99951)),	-- Tyrannical Gladiator's Shield Wall
								moh(5, i(99942)),	-- Tyrannical Gladiator's Slicer
								moh(5, i(99795)),	-- Tyrannical Gladiator's Spellblade
								moh(5, i(99824)),	-- Tyrannical Gladiator's Staff
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138683, {	-- Ensemble: Tyrannical Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(99806)),	-- Tyrannical Gladiator's Dreadplate Chestpiece
								moh(2, i(99807)),	-- Tyrannical Gladiator's Dreadplate Gauntlets
								moh(3, i(99808)),	-- Tyrannical Gladiator's Dreadplate Helm
								moh(3, i(99809)),	-- Tyrannical Gladiator's Dreadplate Legguards
								moh(2, i(99810)),	-- Tyrannical Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138691, {	-- Ensemble: Tyrannical Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99811)),	-- Tyrannical Gladiator's Dragonhide Gloves
								moh(3, i(99812)),	-- Tyrannical Gladiator's Dragonhide Helm
								moh(3, i(99813)),	-- Tyrannical Gladiator's Dragonhide Legguards
								moh(3, i(99814)),	-- Tyrannical Gladiator's Dragonhide Robes
								moh(2, i(99815)),	-- Tyrannical Gladiator's Dragonhide Spaulders
								moh(2, i(99819)),	-- Tyrannical Gladiator's Kodohide Gloves
								moh(3, i(99820)),	-- Tyrannical Gladiator's Kodohide Helm
								moh(3, i(99821)),	-- Tyrannical Gladiator's Kodohide Legguards
								moh(3, i(99822)),	-- Tyrannical Gladiator's Kodohide Robes
								moh(2, i(99823)),	-- Tyrannical Gladiator's Kodohide Spaulders
								moh(2, i(99828)),	-- Tyrannical Gladiator's Wyrmhide Gloves
								moh(3, i(99829)),	-- Tyrannical Gladiator's Wyrmhide Helm
								moh(3, i(99830)),	-- Tyrannical Gladiator's Wyrmhide Legguards
								moh(3, i(99831)),	-- Tyrannical Gladiator's Wyrmhide Robes
								moh(2, i(99832)),	-- Tyrannical Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138689, {	-- Ensemble: Tyrannical Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(99847)),	-- Tyrannical Gladiator's Chain Armor
								moh(2, i(99848)),	-- Tyrannical Gladiator's Chain Gauntlets
								moh(3, i(99849)),	-- Tyrannical Gladiator's Chain Helm
								moh(3, i(99850)),	-- Tyrannical Gladiator's Chain Leggings
								moh(2, i(99851)),	-- Tyrannical Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138697, {	-- Ensemble: Tyrannical Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99856)),	-- Tyrannical Gladiator's Silk Amice
								moh(3, i(99853)),	-- Tyrannical Gladiator's Silk Cowl
								moh(2, i(99852)),	-- Tyrannical Gladiator's Silk Handguards
								moh(3, i(99855)),	-- Tyrannical Gladiator's Silk Robe
								moh(3, i(99854)),	-- Tyrannical Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138693, {	-- Ensemble: Tyrannical Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99865)),	-- Tyrannical Gladiator's Copperskin Gloves
								moh(3, i(99866)),	-- Tyrannical Gladiator's Copperskin Helm
								moh(3, i(99867)),	-- Tyrannical Gladiator's Copperskin Legguards
								moh(2, i(99868)),	-- Tyrannical Gladiator's Copperskin Spaulders
								moh(3, i(99869)),	-- Tyrannical Gladiator's Copperskin Tunic
								moh(2, i(99860)),	-- Tyrannical Gladiator's Ironskin Gloves
								moh(3, i(99861)),	-- Tyrannical Gladiator's Ironskin Helm
								moh(3, i(99862)),	-- Tyrannical Gladiator's Ironskin Legguards
								moh(2, i(99863)),	-- Tyrannical Gladiator's Ironskin Spaulders
								moh(3, i(99864)),	-- Tyrannical Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138685, {	-- Ensemble: Tyrannical Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(99881)),	-- Tyrannical Gladiator's Ornamented Chestguard
								moh(2, i(99882)),	-- Tyrannical Gladiator's Ornamented Gloves
								moh(3, i(99883)),	-- Tyrannical Gladiator's Ornamented Headcover
								moh(3, i(99884)),	-- Tyrannical Gladiator's Ornamented Legplates
								moh(2, i(99885)),	-- Tyrannical Gladiator's Ornamented Spaulders
								moh(3, i(99870)),	-- Tyrannical Gladiator's Scaled Chestpiece
								moh(2, i(99871)),	-- Tyrannical Gladiator's Scaled Gauntlets
								moh(3, i(99872)),	-- Tyrannical Gladiator's Scaled Helm
								moh(3, i(99873)),	-- Tyrannical Gladiator's Scaled Legguards
								moh(2, i(99874)),	-- Tyrannical Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138699, {	-- Ensemble: Tyrannical Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99893)),	-- Tyrannical Gladiator's Mooncloth Gloves
								moh(3, i(99894)),	-- Tyrannical Gladiator's Mooncloth Helm
								moh(3, i(99895)),	-- Tyrannical Gladiator's Mooncloth Leggings
								moh(2, i(99897)),	-- Tyrannical Gladiator's Mooncloth Mantle
								moh(3, i(99896)),	-- Tyrannical Gladiator's Mooncloth Robe
								moh(2, i(99898)),	-- Tyrannical Gladiator's Satin Gloves
								moh(3, i(99899)),	-- Tyrannical Gladiator's Satin Hood
								moh(3, i(99900)),	-- Tyrannical Gladiator's Satin Leggings
								moh(2, i(99902)),	-- Tyrannical Gladiator's Satin Mantle
								moh(3, i(99901)),	-- Tyrannical Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138695, {	-- Ensemble: Tyrannical Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99907)),	-- Tyrannical Gladiator's Leather Gloves
								moh(3, i(99908)),	-- Tyrannical Gladiator's Leather Helm
								moh(3, i(99909)),	-- Tyrannical Gladiator's Leather Legguards
								moh(2, i(99910)),	-- Tyrannical Gladiator's Leather Spaulders
								moh(3, i(99906)),	-- Tyrannical Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138687, {	-- Ensemble: Tyrannical Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(99921)),	-- Tyrannical Gladiator's Linked Armor
								moh(2, i(99922)),	-- Tyrannical Gladiator's Linked Gauntlets
								moh(3, i(99923)),	-- Tyrannical Gladiator's Linked Helm
								moh(3, i(99924)),	-- Tyrannical Gladiator's Linked Leggings
								moh(2, i(99925)),	-- Tyrannical Gladiator's Linked Spaulders
								moh(3, i(99927)),	-- Tyrannical Gladiator's Mail Armor
								moh(2, i(99928)),	-- Tyrannical Gladiator's Mail Gauntlets
								moh(3, i(99929)),	-- Tyrannical Gladiator's Mail Helm
								moh(3, i(99930)),	-- Tyrannical Gladiator's Mail Leggings
								moh(2, i(99931)),	-- Tyrannical Gladiator's Mail Spaulders
								moh(3, i(99916)),	-- Tyrannical Gladiator's Ringmail Armor
								moh(2, i(99917)),	-- Tyrannical Gladiator's Ringmail Gauntlets
								moh(3, i(99918)),	-- Tyrannical Gladiator's Ringmail Helm
								moh(3, i(99919)),	-- Tyrannical Gladiator's Ringmail Leggings
								moh(2, i(99920)),	-- Tyrannical Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138701, {	-- Ensemble: Tyrannical Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99956)),	-- Tyrannical Gladiator's Felweave Amice
								moh(3, i(99953)),	-- Tyrannical Gladiator's Felweave Cowl
								moh(2, i(99952)),	-- Tyrannical Gladiator's Felweave Handguards
								moh(3, i(99955)),	-- Tyrannical Gladiator's Felweave Raiment
								moh(3, i(99954)),	-- Tyrannical Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138681, {	-- Ensemble: Tyrannical Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(99957)),	-- Tyrannical Gladiator's Plate Chestpiece
								moh(2, i(99958)),	-- Tyrannical Gladiator's Plate Gauntlets
								moh(3, i(99959)),	-- Tyrannical Gladiator's Plate Helm
								moh(3, i(99960)),	-- Tyrannical Gladiator's Plate Legguards
								moh(2, i(99961)),	-- Tyrannical Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(99773)),	-- Tyrannical Gladiator's Cape of Cruelty
								moh(1, i(99774)),	-- Tyrannical Gladiator's Cape of Prowess
								moh(1, i(99944)),	-- Tyrannical Gladiator's Cloak of Alacrity
								moh(1, i(99945)),	-- Tyrannical Gladiator's Cloak of Prowess
								moh(1, i(99790)),	-- Tyrannical Gladiator's Drape of Cruelty
								moh(1, i(99792)),	-- Tyrannical Gladiator's Drape of Meditation
								moh(1, i(99791)),	-- Tyrannical Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(99915)),	-- Tyrannical Gladiator's Armbands of Meditation
								moh(1, i(99914)),	-- Tyrannical Gladiator's Armbands of Prowess
								moh(1, i(99891)),	-- Tyrannical Gladiator's Armplates of Alacrity
								moh(1, i(99890)),	-- Tyrannical Gladiator's Armplates of Proficiency
								moh(1, i(99859)),	-- Tyrannical Gladiator's Armwraps of Accuracy
								moh(1, i(99905)),	-- Tyrannical Gladiator's Armwraps of Alacrity
								moh(1, i(99818)),	-- Tyrannical Gladiator's Bindings of Meditation
								moh(1, i(99827)),	-- Tyrannical Gladiator's Bindings of Prowess
								moh(1, i(99880)),	-- Tyrannical Gladiator's Bracers of Meditation
								moh(1, i(99879)),	-- Tyrannical Gladiator's Bracers of Prowess
								moh(1, i(99787)),	-- Tyrannical Gladiator's Cuffs of Accuracy
								moh(1, i(99789)),	-- Tyrannical Gladiator's Cuffs of Meditation
								moh(1, i(99788)),	-- Tyrannical Gladiator's Cuffs of Prowess
								moh(1, i(99846)),	-- Tyrannical Gladiator's Wristguards of Accuracy
								moh(1, i(99845)),	-- Tyrannical Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(99825)),	-- Tyrannical Gladiator's Belt of Cruelty
								moh(1, i(99816)),	-- Tyrannical Gladiator's Belt of Meditation
								moh(1, i(99875)),	-- Tyrannical Gladiator's Clasp of Cruelty
								moh(1, i(99876)),	-- Tyrannical Gladiator's Clasp of Meditation
								moh(1, i(99782)),	-- Tyrannical Gladiator's Cord of Accuracy
								moh(1, i(99781)),	-- Tyrannical Gladiator's Cord of Cruelty
								moh(1, i(99783)),	-- Tyrannical Gladiator's Cord of Meditation
								moh(1, i(99886)),	-- Tyrannical Gladiator's Girdle of Accuracy
								moh(1, i(99887)),	-- Tyrannical Gladiator's Girdle of Prowess
								moh(1, i(99842)),	-- Tyrannical Gladiator's Links of Accuracy
								moh(1, i(99841)),	-- Tyrannical Gladiator's Links of Cruelty
								moh(1, i(99903)),	-- Tyrannical Gladiator's Waistband of Accuracy
								moh(1, i(99857)),	-- Tyrannical Gladiator's Waistband of Cruelty
								moh(1, i(99926)),	-- Tyrannical Gladiator's Waistguard of Cruelty
								moh(1, i(99911)),	-- Tyrannical Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(99858)),	-- Tyrannical Gladiator's Boots of Alacrity
								moh(2, i(99904)),	-- Tyrannical Gladiator's Boots of Cruelty
								moh(2, i(99826)),	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(99912)),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(99817)),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
								moh(2, i(99913)),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
								moh(2, i(99877)),	-- Tyrannical Gladiator's Greaves of Alacrity
								moh(2, i(99878)),	-- Tyrannical Gladiator's Greaves of Meditation
								moh(2, i(99844)),	-- Tyrannical Gladiator's Sabatons of Alacrity
								moh(2, i(99843)),	-- Tyrannical Gladiator's Sabatons of Cruelty
								moh(2, i(99785)),	-- Tyrannical Gladiator's Treads of Alacrity
								moh(2, i(99784)),	-- Tyrannical Gladiator's Treads of Cruelty
								moh(2, i(99786)),	-- Tyrannical Gladiator's Treads of Meditation
								moh(2, i(99889)),	-- Tyrannical Gladiator's Warboots of Alacrity
								moh(2, i(99888)),	-- Tyrannical Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(61215, {	-- Claretta <Adventuring Supplies>
						["coord"] = { 84.8, 21.6, VALLEY_OF_THE_FOUR_WINDS },
						["sym"] = {{"select","npcID",56705},{"pop"}},	-- Singegruff <Adventuring Supplies>
					}),
					n(65514, {	-- Ethan Natice <Glorious Conquest Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.3, 65.0, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_ELITE },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						-- #endif
					}),
					n(69968, {	-- Ethan Natice (Removed Season 14 Conquest Gear Vendor)
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(75692, {	-- Ethan Natice <Grievous Gladiator>
						["coord"] = { 12.0, 34.2, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144252, {	-- Arsenal: Grievous Gladiator's Weapons (A)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103167)),	-- Grievous Gladiator's Barrier
								moh(5, i(103310)),	-- Grievous Gladiator's Baton of Light
								moh(5, i(103169)),	-- Grievous Gladiator's Battle Staff
								moh(5, i(103312)),	-- Grievous Gladiator's Bonecracker
								moh(5, i(103142)),	-- Grievous Gladiator's Cleaver
								moh(5, i(103139)),	-- Grievous Gladiator's Decapitator
								moh(2, i(103166)),	-- Grievous Gladiator's Endgame
								moh(5, i(103209)),	-- Grievous Gladiator's Energy Staff
								moh(5, i(103207)),	-- Grievous Gladiator's Gavel
								moh(5, i(103141)),	-- Grievous Gladiator's Greatsword
								moh(5, i(103311)),	-- Grievous Gladiator's Hacker
								moh(5, i(103153)),	-- Grievous Gladiator's Longbow
								moh(5, i(103307)),	-- Grievous Gladiator's Mageblade
								moh(5, i(103264)),	-- Grievous Gladiator's Pike
								moh(5, i(103143)),	-- Grievous Gladiator's Pummeler
								moh(5, i(103144)),	-- Grievous Gladiator's Quickblade
								moh(2, i(103208)),	-- Grievous Gladiator's Redoubt
								moh(5, i(103306)),	-- Grievous Gladiator's Render
								moh(2, i(103176)),	-- Grievous Gladiator's Reprieve
								moh(2, i(103206)),	-- Grievous Gladiator's Rifle
								moh(5, i(103305)),	-- Grievous Gladiator's Ripper
								moh(5, i(103304)),	-- Grievous Gladiator's Shanker
								moh(2, i(103322)),	-- Grievous Gladiator's Shield Wall
								moh(5, i(103313)),	-- Grievous Gladiator's Slicer
								moh(5, i(103168)),	-- Grievous Gladiator's Spellblade
								moh(5, i(103177)),	-- Grievous Gladiator's Touch of Defeat
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138661, {	-- Ensemble: Grievous Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103179)),	-- Grievous Gladiator's Dreadplate Chestpiece
								moh(2, i(103180)),	-- Grievous Gladiator's Dreadplate Gauntlets
								moh(3, i(103181)),	-- Grievous Gladiator's Dreadplate Helm
								moh(3, i(103182)),	-- Grievous Gladiator's Dreadplate Legguards
								moh(2, i(103183)),	-- Grievous Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138669, {	-- Ensemble: Grievous Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103184)),	-- Grievous Gladiator's Dragonhide Gloves
								moh(3, i(103185)),	-- Grievous Gladiator's Dragonhide Helm
								moh(3, i(103186)),	-- Grievous Gladiator's Dragonhide Legguards
								moh(3, i(103187)),	-- Grievous Gladiator's Dragonhide Robes
								moh(2, i(103188)),	-- Grievous Gladiator's Dragonhide Spaulders
								moh(2, i(103192)),	-- Grievous Gladiator's Kodohide Gloves
								moh(3, i(103193)),	-- Grievous Gladiator's Kodohide Helm
								moh(3, i(103194)),	-- Grievous Gladiator's Kodohide Legguards
								moh(3, i(103195)),	-- Grievous Gladiator's Kodohide Robes
								moh(2, i(103196)),	-- Grievous Gladiator's Kodohide Spaulders
								moh(2, i(103201)),	-- Grievous Gladiator's Wyrmhide Gloves
								moh(3, i(103202)),	-- Grievous Gladiator's Wyrmhide Helm
								moh(3, i(103203)),	-- Grievous Gladiator's Wyrmhide Legguards
								moh(3, i(103204)),	-- Grievous Gladiator's Wyrmhide Robes
								moh(2, i(103205)),	-- Grievous Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138667, {	-- Ensemble: Grievous Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103219)),	-- Grievous Gladiator's Chain Armor
								moh(2, i(103220)),	-- Grievous Gladiator's Chain Gauntlets
								moh(3, i(103221)),	-- Grievous Gladiator's Chain Helm
								moh(3, i(103222)),	-- Grievous Gladiator's Chain Leggings
								moh(2, i(103223)),	-- Grievous Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138675, {	-- Ensemble: Grievous Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103228)),	-- Grievous Gladiator's Silk Amice
								moh(3, i(103225)),	-- Grievous Gladiator's Silk Cowl
								moh(2, i(103224)),	-- Grievous Gladiator's Silk Handguards
								moh(3, i(103227)),	-- Grievous Gladiator's Silk Robe
								moh(3, i(103226)),	-- Grievous Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138671, {	-- Ensemble: Grievous Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103237)),	-- Grievous Gladiator's Copperskin Gloves
								moh(3, i(103238)),	-- Grievous Gladiator's Copperskin Helm
								moh(3, i(103239)),	-- Grievous Gladiator's Copperskin Legguards
								moh(2, i(103240)),	-- Grievous Gladiator's Copperskin Spaulders
								moh(3, i(103241)),	-- Grievous Gladiator's Copperskin Tunic
								moh(2, i(103232)),	-- Grievous Gladiator's Ironskin Gloves
								moh(3, i(103233)),	-- Grievous Gladiator's Ironskin Helm
								moh(3, i(103234)),	-- Grievous Gladiator's Ironskin Legguards
								moh(2, i(103235)),	-- Grievous Gladiator's Ironskin Spaulders
								moh(3, i(103236)),	-- Grievous Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138663, {	-- Ensemble: Grievous Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103253)),	-- Grievous Gladiator's Ornamented Chestguard
								moh(2, i(103254)),	-- Grievous Gladiator's Ornamented Gloves
								moh(3, i(103255)),	-- Grievous Gladiator's Ornamented Headcover
								moh(3, i(103256)),	-- Grievous Gladiator's Ornamented Legplates
								moh(2, i(103257)),	-- Grievous Gladiator's Ornamented Spaulders
								moh(3, i(103242)),	-- Grievous Gladiator's Scaled Chestpiece
								moh(2, i(103243)),	-- Grievous Gladiator's Scaled Gauntlets
								moh(3, i(103244)),	-- Grievous Gladiator's Scaled Helm
								moh(3, i(103245)),	-- Grievous Gladiator's Scaled Legguards
								moh(2, i(103246)),	-- Grievous Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138677, {	-- Ensemble: Grievous Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103265)),	-- Grievous Gladiator's Mooncloth Gloves
								moh(3, i(103266)),	-- Grievous Gladiator's Mooncloth Helm
								moh(3, i(103267)),	-- Grievous Gladiator's Mooncloth Leggings
								moh(2, i(103269)),	-- Grievous Gladiator's Mooncloth Mantle
								moh(3, i(103268)),	-- Grievous Gladiator's Mooncloth Robe
								moh(2, i(103270)),	-- Grievous Gladiator's Satin Gloves
								moh(3, i(103271)),	-- Grievous Gladiator's Satin Hood
								moh(3, i(103272)),	-- Grievous Gladiator's Satin Leggings
								moh(2, i(103274)),	-- Grievous Gladiator's Satin Mantle
								moh(3, i(103273)),	-- Grievous Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138673, {	-- Ensemble: Grievous Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103279)),	-- Grievous Gladiator's Leather Gloves
								moh(3, i(103280)),	-- Grievous Gladiator's Leather Helm
								moh(3, i(103281)),	-- Grievous Gladiator's Leather Legguards
								moh(2, i(103282)),	-- Grievous Gladiator's Leather Spaulders
								moh(3, i(103278)),	-- Grievous Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138665, {	-- Ensemble: Grievous Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103293)),	-- Grievous Gladiator's Linked Armor
								moh(2, i(103294)),	-- Grievous Gladiator's Linked Gauntlets
								moh(3, i(103295)),	-- Grievous Gladiator's Linked Helm
								moh(3, i(103296)),	-- Grievous Gladiator's Linked Leggings
								moh(2, i(103297)),	-- Grievous Gladiator's Linked Spaulders
								moh(3, i(103299)),	-- Grievous Gladiator's Mail Armor
								moh(2, i(103300)),	-- Grievous Gladiator's Mail Gauntlets
								moh(3, i(103301)),	-- Grievous Gladiator's Mail Helm
								moh(3, i(103302)),	-- Grievous Gladiator's Mail Leggings
								moh(2, i(103303)),	-- Grievous Gladiator's Mail Spaulders
								moh(3, i(103288)),	-- Grievous Gladiator's Ringmail Armor
								moh(2, i(103289)),	-- Grievous Gladiator's Ringmail Gauntlets
								moh(3, i(103290)),	-- Grievous Gladiator's Ringmail Helm
								moh(3, i(103291)),	-- Grievous Gladiator's Ringmail Leggings
								moh(2, i(103292)),	-- Grievous Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138679, {	-- Ensemble: Grievous Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103327)),	-- Grievous Gladiator's Felweave Amice
								moh(3, i(103324)),	-- Grievous Gladiator's Felweave Cowl
								moh(2, i(103323)),	-- Grievous Gladiator's Felweave Handguards
								moh(3, i(103326)),	-- Grievous Gladiator's Felweave Raiment
								moh(3, i(103325)),	-- Grievous Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138659, {	-- Ensemble: Grievous Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103328)),	-- Grievous Gladiator's Plate Chestpiece
								moh(2, i(103329)),	-- Grievous Gladiator's Plate Gauntlets
								moh(3, i(103330)),	-- Grievous Gladiator's Plate Helm
								moh(3, i(103331)),	-- Grievous Gladiator's Plate Legguards
								moh(2, i(103332)),	-- Grievous Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(103146)),	-- Grievous Gladiator's Cape of Cruelty
								moh(1, i(103147)),	-- Grievous Gladiator's Cape of Prowess
								moh(1, i(103315)),	-- Grievous Gladiator's Cloak of Alacrity
								moh(1, i(103316)),	-- Grievous Gladiator's Cloak of Prowess
								moh(1, i(103163)),	-- Grievous Gladiator's Drape of Cruelty
								moh(1, i(103165)),	-- Grievous Gladiator's Drape of Meditation
								moh(1, i(103164)),	-- Grievous Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(103287)),	-- Grievous Gladiator's Armbands of Meditation
								moh(1, i(103286)),	-- Grievous Gladiator's Armbands of Prowess
								moh(1, i(103263)),	-- Grievous Gladiator's Armplates of Alacrity
								moh(1, i(103262)),	-- Grievous Gladiator's Armplates of Proficiency
								moh(1, i(103231)),	-- Grievous Gladiator's Armwraps of Accuracy
								moh(1, i(103277)),	-- Grievous Gladiator's Armwraps of Alacrity
								moh(1, i(103191)),	-- Grievous Gladiator's Bindings of Meditation
								moh(1, i(103200)),	-- Grievous Gladiator's Bindings of Prowess
								moh(1, i(103252)),	-- Grievous Gladiator's Bracers of Meditation
								moh(1, i(103251)),	-- Grievous Gladiator's Bracers of Prowess
								moh(1, i(103160)),	-- Grievous Gladiator's Cuffs of Accuracy
								moh(1, i(103162)),	-- Grievous Gladiator's Cuffs of Meditation
								moh(1, i(103161)),	-- Grievous Gladiator's Cuffs of Prowess
								moh(1, i(100316)),	-- Grievous Gladiator's Wristguards of Accuracy
								moh(1, i(103218)),	-- Grievous Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(103198)),	-- Grievous Gladiator's Belt of Cruelty
								moh(1, i(103189)),	-- Grievous Gladiator's Belt of Meditation
								moh(1, i(103247)),	-- Grievous Gladiator's Clasp of Cruelty
								moh(1, i(103248)),	-- Grievous Gladiator's Clasp of Meditation
								moh(1, i(103155)),	-- Grievous Gladiator's Cord of Accuracy
								moh(1, i(103154)),	-- Grievous Gladiator's Cord of Cruelty
								moh(1, i(103156)),	-- Grievous Gladiator's Cord of Meditation
								moh(1, i(103258)),	-- Grievous Gladiator's Girdle of Accuracy
								moh(1, i(103259)),	-- Grievous Gladiator's Girdle of Prowess
								moh(1, i(103214)),	-- Grievous Gladiator's Links of Accuracy
								moh(1, i(103213)),	-- Grievous Gladiator's Links of Cruelty
								moh(1, i(103275)),	-- Grievous Gladiator's Waistband of Accuracy
								moh(1, i(103229)),	-- Grievous Gladiator's Waistband of Cruelty
								moh(1, i(103298)),	-- Grievous Gladiator's Waistguard of Cruelty
								moh(1, i(103283)),	-- Grievous Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(103230)),	-- Grievous Gladiator's Boots of Alacrity
								moh(2, i(103276)),	-- Grievous Gladiator's Boots of Cruelty
								moh(2, i(103199)),	-- Grievous Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(103284)),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(103190)),	-- Grievous Gladiator's Footguards of Meditation (Leather)
								moh(2, i(103285)),	-- Grievous Gladiator's Footguards of Meditation (Mail)
								moh(2, i(103249)),	-- Grievous Gladiator's Greaves of Alacrity
								moh(2, i(103250)),	-- Grievous Gladiator's Greaves of Meditation
								moh(2, i(103216)),	-- Grievous Gladiator's Sabatons of Alacrity
								moh(2, i(103215)),	-- Grievous Gladiator's Sabatons of Cruelty
								moh(2, i(103158)),	-- Grievous Gladiator's Treads of Alacrity
								moh(2, i(103157)),	-- Grievous Gladiator's Treads of Cruelty
								moh(2, i(103159)),	-- Grievous Gladiator's Treads of Meditation
								moh(2, i(103261)),	-- Grievous Gladiator's Warboots of Alacrity
								moh(2, i(103260)),	-- Grievous Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(73147, {	-- Ethan Natice Season 15 Elite (5.4.7 Elite and removed Version)
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(65166, {	-- Hayden Christophen <Honor Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.1, 65.0, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						["groups"] = {
							-- #if ANYCLASSIC
							i(254315),	-- Formula: Enchant Weapon - Tyranny
							-- #endif
						},
						-- #endif
					}),
					n(73143, {	-- Hayden Christophen <Honor Quartermaster> Old Grievous Vendor (neck, etc)
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					n(75691, {	-- Hayden Christophen <Dreadful Gladiator>
						["coord"] = { 12.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138715, {	-- Ensemble: Dreadful Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84372)),	-- Dreadful Gladiator's Dreadplate Chestpiece
								moh(2, i(84373)),	-- Dreadful Gladiator's Dreadplate Gauntlets
								moh(3, i(84374)),	-- Dreadful Gladiator's Dreadplate Helm
								moh(3, i(84375)),	-- Dreadful Gladiator's Dreadplate Legguards
								moh(2, i(84376)),	-- Dreadful Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138719, {	-- Ensemble: Dreadful Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84377)),	-- Dreadful Gladiator's Dragonhide Gloves
								moh(3, i(84378)),	-- Dreadful Gladiator's Dragonhide Helm
								moh(3, i(84379)),	-- Dreadful Gladiator's Dragonhide Legguards
								moh(3, i(84380)),	-- Dreadful Gladiator's Dragonhide Robes
								moh(2, i(84381)),	-- Dreadful Gladiator's Dragonhide Spaulders
								moh(2, i(84385)),	-- Dreadful Gladiator's Kodohide Gloves
								moh(3, i(84386)),	-- Dreadful Gladiator's Kodohide Helm
								moh(3, i(84387)),	-- Dreadful Gladiator's Kodohide Legguards
								moh(3, i(84388)),	-- Dreadful Gladiator's Kodohide Robes
								moh(2, i(84389)),	-- Dreadful Gladiator's Kodohide Spaulders
								moh(2, i(84393)),	-- Dreadful Gladiator's Wyrmhide Gloves
								moh(3, i(84394)),	-- Dreadful Gladiator's Wyrmhide Helm
								moh(3, i(84395)),	-- Dreadful Gladiator's Wyrmhide Legguards
								moh(3, i(84396)),	-- Dreadful Gladiator's Wyrmhide Robes
								moh(2, i(84397)),	-- Dreadful Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138718, {	-- Ensemble: Dreadful Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84408)),	-- Dreadful Gladiator's Chain Armor
								moh(2, i(84409)),	-- Dreadful Gladiator's Chain Gauntlets
								moh(3, i(84410)),	-- Dreadful Gladiator's Chain Helm
								moh(3, i(84411)),	-- Dreadful Gladiator's Chain Leggings
								moh(2, i(84412)),	-- Dreadful Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138722, {	-- Ensemble: Dreadful Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84417)),	-- Dreadful Gladiator's Silk Amice
								moh(3, i(84414)),	-- Dreadful Gladiator's Silk Cowl
								moh(2, i(84413)),	-- Dreadful Gladiator's Silk Handguards
								moh(3, i(84416)),	-- Dreadful Gladiator's Silk Robe
								moh(3, i(84415)),	-- Dreadful Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138720, {	-- Ensemble: Dreadful Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84548)),	-- Dreadful Gladiator's Copperskin Gloves
								moh(3, i(84549)),	-- Dreadful Gladiator's Copperskin Helm
								moh(3, i(84550)),	-- Dreadful Gladiator's Copperskin Legguards
								moh(2, i(84552)),	-- Dreadful Gladiator's Copperskin Spaulders
								moh(3, i(84551)),	-- Dreadful Gladiator's Copperskin Tunic
								moh(2, i(84543)),	-- Dreadful Gladiator's Ironskin Gloves
								moh(3, i(84544)),	-- Dreadful Gladiator's Ironskin Helm
								moh(3, i(84545)),	-- Dreadful Gladiator's Ironskin Legguards
								moh(2, i(84547)),	-- Dreadful Gladiator's Ironskin Spaulders
								moh(3, i(84546)),	-- Dreadful Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138716, {	-- Ensemble: Dreadful Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84429)),	-- Dreadful Gladiator's Ornamented Chestguard
								moh(2, i(84430)),	-- Dreadful Gladiator's Ornamented Gloves
								moh(3, i(84431)),	-- Dreadful Gladiator's Ornamented Headcover
								moh(3, i(84432)),	-- Dreadful Gladiator's Ornamented Legplates
								moh(2, i(84433)),	-- Dreadful Gladiator's Ornamented Spaulders
								moh(3, i(84418)),	-- Dreadful Gladiator's Scaled Chestpiece
								moh(2, i(84419)),	-- Dreadful Gladiator's Scaled Gauntlets
								moh(3, i(84420)),	-- Dreadful Gladiator's Scaled Helm
								moh(3, i(84421)),	-- Dreadful Gladiator's Scaled Legguards
								moh(2, i(84422)),	-- Dreadful Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138723, {	-- Ensemble: Dreadful Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84440)),	-- Dreadful Gladiator's Mooncloth Gloves
								moh(3, i(84441)),	-- Dreadful Gladiator's Mooncloth Helm
								moh(3, i(84442)),	-- Dreadful Gladiator's Mooncloth Leggings
								moh(2, i(84444)),	-- Dreadful Gladiator's Mooncloth Mantle
								moh(3, i(84443)),	-- Dreadful Gladiator's Mooncloth Robe
								moh(2, i(84445)),	-- Dreadful Gladiator's Satin Gloves
								moh(3, i(84446)),	-- Dreadful Gladiator's Satin Hood
								moh(3, i(84447)),	-- Dreadful Gladiator's Satin Leggings
								moh(2, i(84449)),	-- Dreadful Gladiator's Satin Mantle
								moh(3, i(84448)),	-- Dreadful Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138721, {	-- Ensemble: Dreadful Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84463)),	-- Dreadful Gladiator's Leather Gloves
								moh(3, i(84464)),	-- Dreadful Gladiator's Leather Helm
								moh(3, i(84465)),	-- Dreadful Gladiator's Leather Legguards
								moh(2, i(84466)),	-- Dreadful Gladiator's Leather Spaulders
								moh(3, i(84462)),	-- Dreadful Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138717, {	-- Ensemble: Dreadful Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84477)),	-- Dreadful Gladiator's Linked Armor
								moh(2, i(84478)),	-- Dreadful Gladiator's Linked Gauntlets
								moh(3, i(84479)),	-- Dreadful Gladiator's Linked Helm
								moh(3, i(84480)),	-- Dreadful Gladiator's Linked Leggings
								moh(2, i(84481)),	-- Dreadful Gladiator's Linked Spaulders
								moh(3, i(84483)),	-- Dreadful Gladiator's Mail Armor
								moh(2, i(84484)),	-- Dreadful Gladiator's Mail Gauntlets
								moh(3, i(84485)),	-- Dreadful Gladiator's Mail Helm
								moh(3, i(84486)),	-- Dreadful Gladiator's Mail Leggings
								moh(2, i(84487)),	-- Dreadful Gladiator's Mail Spaulders
								moh(3, i(84472)),	-- Dreadful Gladiator's Ringmail Armor
								moh(2, i(84473)),	-- Dreadful Gladiator's Ringmail Gauntlets
								moh(3, i(84474)),	-- Dreadful Gladiator's Ringmail Helm
								moh(3, i(84475)),	-- Dreadful Gladiator's Ringmail Leggings
								moh(2, i(84476)),	-- Dreadful Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138724, {	-- Ensemble: Dreadful Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84503)),	-- Dreadful Gladiator's Felweave Amice
								moh(3, i(84500)),	-- Dreadful Gladiator's Felweave Cowl
								moh(2, i(84499)),	-- Dreadful Gladiator's Felweave Handguards
								moh(3, i(84502)),	-- Dreadful Gladiator's Felweave Raiment
								moh(3, i(84501)),	-- Dreadful Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138714, {	-- Ensemble: Dreadful Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84504)),	-- Dreadful Gladiator's Plate Chestpiece
								moh(2, i(84505)),	-- Dreadful Gladiator's Plate Gauntlets
								moh(3, i(84506)),	-- Dreadful Gladiator's Plate Helm
								moh(3, i(84507)),	-- Dreadful Gladiator's Plate Legguards
								moh(2, i(84508)),	-- Dreadful Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(84345)),	-- Dreadful Gladiator's Cape of Cruelty
								moh(1, i(84346)),	-- Dreadful Gladiator's Cape of Prowess
								moh(1, i(84491)),	-- Dreadful Gladiator's Cloak of Alacrity
								moh(1, i(84492)),	-- Dreadful Gladiator's Cloak of Prowess
								moh(1, i(84363)),	-- Dreadful Gladiator's Drape of Cruelty
								moh(1, i(84364)),	-- Dreadful Gladiator's Drape of Meditation
								moh(1, i(84362)),	-- Dreadful Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(84471)),	-- Dreadful  Gladiator's Armbands of Meditation
								moh(1, i(84470)),	-- Dreadful  Gladiator's Armbands of Prowess
								moh(1, i(84439)),	-- Dreadful Gladiator's Armplates of Alacrity
								moh(1, i(84438)),	-- Dreadful Gladiator's Armplates of Proficiency
								moh(1, i(84461)),	-- Dreadful Gladiator's Armwraps of Accuracy
								moh(1, i(84460)),	-- Dreadful Gladiator's Armwraps of Alacrity
								moh(1, i(84384)),	-- Dreadful Gladiator's Bindings of Meditation
								moh(1, i(84392)),	-- Dreadful Gladiator's Bindings of Prowess
								moh(1, i(84428)),	-- Dreadful Gladiator's Bracers of Meditation
								moh(1, i(84427)),	-- Dreadful Gladiator's Bracers of Prowess
								moh(1, i(84359)),	-- Dreadful Gladiator's Cuffs of Accuracy
								moh(1, i(84361)),	-- Dreadful Gladiator's Cuffs of Meditation
								moh(1, i(84360)),	-- Dreadful Gladiator's Cuffs of Prowess
								moh(1, i(84407)),	-- Dreadful Gladiator's Wristguards of Accuracy
								moh(1, i(84406)),	-- Dreadful Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(84390)),	-- Dreadful Gladiator's Belt of Cruelty
								moh(1, i(84382)),	-- Dreadful Gladiator's Belt of Meditation
								moh(1, i(84423)),	-- Dreadful Gladiator's Clasp of Cruelty
								moh(1, i(84424)),	-- Dreadful Gladiator's Clasp of Meditation
								moh(1, i(84354)),	-- Dreadful Gladiator's Cord of Accuracy
								moh(1, i(84353)),	-- Dreadful Gladiator's Cord of Cruelty
								moh(1, i(84355)),	-- Dreadful Gladiator's Cord of Meditation
								moh(1, i(84434)),	-- Dreadful Gladiator's Girdle of Accuracy
								moh(1, i(84435)),	-- Dreadful Gladiator's Girdle of Prowess
								moh(1, i(84403)),	-- Dreadful Gladiator's Links of Accuracy
								moh(1, i(84402)),	-- Dreadful Gladiator's Links of Cruelty
								moh(1, i(84457)),	-- Dreadful Gladiator's Waistband of Accuracy
								moh(1, i(84456)),	-- Dreadful Gladiator's Waistband of Cruelty
								moh(1, i(84482)),	-- Dreadful Gladiator's Waistguard of Cruelty
								moh(1, i(84467)),	-- Dreadful Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(84459)),	-- Dreadful Gladiator's Boots of Alacrity
								moh(2, i(84458)),	-- Dreadful Gladiator's Boots of Cruelty
								moh(2, i(84391)),	-- Dreadful Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(84383)),	-- Dreadful Gladiator's Footguards of Meditation (Leather)
								moh(2, i(84468)),	-- Dreadful Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(84469)),	-- Dreadful Gladiator's Footguards of Meditation (Mail)
								moh(2, i(84425)),	-- Dreadful Gladiator's Greaves of Alacrity
								moh(2, i(84426)),	-- Dreadful Gladiator's Greaves of Meditation
								moh(2, i(84405)),	-- Dreadful Gladiator's Sabatons of Alacrity
								moh(2, i(84404)),	-- Dreadful Gladiator's Sabatons of Cruelty
								moh(2, i(84357)),	-- Dreadful Gladiator's Treads of Alacrity
								moh(2, i(84356)),	-- Dreadful Gladiator's Treads of Cruelty
								moh(2, i(84358)),	-- Dreadful Gladiator's Treads of Meditation
								moh(2, i(84437)),	-- Dreadful Gladiator's Warboots of Alacrity
								moh(2, i(84436)),	-- Dreadful Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(65167, {	-- Lucan Malory <Conquest Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.6, 64.8, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						-- #endif
					}),
					n(75689, {	-- Lucan Malory Season 12: Malevolent Gladiator Vendor. Items are tagged as Season 13
						["coord"] = { 12.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144243, {	-- Arsenal: Malevolent Gladiator's Weapons
									["timeline"] = { ADDED_7_1_5 },
								})),
								-- S12 Tag
								un(REMOVED_FROM_GAME, i(84911)),	-- Malevolent Gladiator's Barrier
								un(REMOVED_FROM_GAME, i(84787)),	-- Malevolent Gladiator's Battle Staff
								un(REMOVED_FROM_GAME, i(84970)),	-- Malevolent Gladiator's Bonecracker
								un(REMOVED_FROM_GAME, i(84785)),	-- Malevolent Gladiator's Bonegrinder
								un(REMOVED_FROM_GAME, i(84965)),	-- Malevolent Gladiator's Cleaver
								un(REMOVED_FROM_GAME, i(84791)),	-- Malevolent Gladiator's Decapitator
								un(REMOVED_FROM_GAME, i(84866)),	-- Malevolent Gladiator's Endgame
								un(REMOVED_FROM_GAME, i(84788)),	-- Malevolent Gladiator's Energy Staff
								un(REMOVED_FROM_GAME, i(84971)),	-- Malevolent Gladiator's Gavel
								un(REMOVED_FROM_GAME, i(84790)),	-- Malevolent Gladiator's Greatsword
								un(REMOVED_FROM_GAME, i(84966)),	-- Malevolent Gladiator's Hacker
								un(REMOVED_FROM_GAME, i(84896)),	-- Malevolent Gladiator's Longbow
								un(REMOVED_FROM_GAME, i(84786)),	-- Malevolent Gladiator's Pike
								un(REMOVED_FROM_GAME, i(84964)),	-- Malevolent Gladiator's Pummeler
								un(REMOVED_FROM_GAME, i(84969)),	-- Malevolent Gladiator's Quickblade
								un(REMOVED_FROM_GAME, i(84912)),	-- Malevolent Gladiator's Redoubt
								un(REMOVED_FROM_GAME, i(84963)),	-- Malevolent Gladiator's Render
								un(REMOVED_FROM_GAME, i(84867)),	-- Malevolent Gladiator's Reprieve
								un(REMOVED_FROM_GAME, i(84900)),	-- Malevolent Gladiator's Rifle
								un(REMOVED_FROM_GAME, i(84962)),	-- Malevolent Gladiator's Ripper
								un(REMOVED_FROM_GAME, i(84967)),	-- Malevolent Gladiator's Shanker
								un(REMOVED_FROM_GAME, i(84910)),	-- Malevolent Gladiator's Shield Wall
								un(REMOVED_FROM_GAME, i(84894)),	-- Malevolent Gladiator's Slasher
								un(REMOVED_FROM_GAME, i(84968)),	-- Malevolent Gladiator's Slicer
								un(REMOVED_FROM_GAME, i(84961)),	-- Malevolent Gladiator's Spellblade
								un(REMOVED_FROM_GAME, i(84789)),	-- Malevolent Gladiator's Staff
								-- S13 Tag
								moh(2, i(91482)),	-- Malevolent Gladiator's Barrier
								moh(5, i(91486)),	-- Malevolent Gladiator's Battle Staff
								moh(5, i(91759)),	-- Malevolent Gladiator's Bonecracker
								moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
								moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
								moh(5, i(91446)),	-- Malevolent Gladiator's Cleaver
								moh(5, i(91440)),	-- Malevolent Gladiator's Decapitator
								moh(2, i(91480)),	-- Malevolent Gladiator's Endgame
								moh(5, i(91560)),	-- Malevolent Gladiator's Energy Staff
								moh(5, i(91556)),	-- Malevolent Gladiator's Gavel
								moh(5, i(91444)),	-- Malevolent Gladiator's Greatsword
								moh(5, i(91757)),	-- Malevolent Gladiator's Hacker
								moh(5, i(91460)),	-- Malevolent Gladiator's Longbow
								moh(5, i(91660)),	-- Malevolent Gladiator's Pike
								moh(5, i(91448)),	-- Malevolent Gladiator's Pummeler
								moh(5, i(91450)),	-- Malevolent Gladiator's Quickblade
								moh(2, i(91558)),	-- Malevolent Gladiator's Redoubt
								moh(5, i(91749)),	-- Malevolent Gladiator's Render
								moh(2, i(91494)),	-- Malevolent Gladiator's Reprieve
								moh(5, i(91554)),	-- Malevolent Gladiator's Rifle
								moh(5, i(91745)),	-- Malevolent Gladiator's Ripper
								moh(5, i(91743)),	-- Malevolent Gladiator's Shanker
								moh(2, i(91771)),	-- Malevolent Gladiator's Shield Wall
								moh(5, i(91761)),	-- Malevolent Gladiator's Slicer
								moh(5, i(91484)),	-- Malevolent Gladiator's Spellblade
								moh(5, i(91535)),	-- Malevolent Gladiator's Staff
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138704, {	-- Ensemble: Malevolent Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84795),	-- Malevolent Gladiator's Dreadplate Chestpiece
								i(84835),	-- Malevolent Gladiator's Dreadplate Gauntlets
								i(84853),	-- Malevolent Gladiator's Dreadplate Helm
								i(84872),	-- Malevolent Gladiator's Dreadplate Legguards
								i(84918),	-- Malevolent Gladiator's Dreadplate Shoulders
								moh(3, i(91500)),	-- Malevolent Gladiator's Dreadplate Chestpiece
								moh(2, i(91502)),	-- Malevolent Gladiator's Dreadplate Gauntlets
								moh(3, i(91504)),	-- Malevolent Gladiator's Dreadplate Helm
								moh(3, i(91506)),	-- Malevolent Gladiator's Dreadplate Legguards
								moh(2, i(91508)),	-- Malevolent Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138708, {	-- Ensemble: Malevolent Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84832),	-- Malevolent Gladiator's Dragonhide Gloves
								i(84852),	-- Malevolent Gladiator's Dragonhide Helm
								i(84871),	-- Malevolent Gladiator's Dragonhide Legguards
								i(84901),	-- Malevolent Gladiator's Dragonhide Robes
								i(84916),	-- Malevolent Gladiator's Dragonhide Spaulders
								i(84833),	-- Malevolent Gladiator's Kodohide Gloves
								i(84850),	-- Malevolent Gladiator's Kodohide Helm
								i(84882),	-- Malevolent Gladiator's Kodohide Legguards
								i(84907),	-- Malevolent Gladiator's Kodohide Robes
								i(84927),	-- Malevolent Gladiator's Kodohide Spaulders
								i(84843),	-- Malevolent Gladiator's Wyrmhide Gloves
								i(84861),	-- Malevolent Gladiator's Wyrmhide Helm
								i(84880),	-- Malevolent Gladiator's Wyrmhide Legguards
								i(84906),	-- Malevolent Gladiator's Wyrmhide Robes
								i(84925),	-- Malevolent Gladiator's Wyrmhide Spaulders
								moh(2, i(91510)),	-- Malevolent Gladiator's Dragonhide Gloves
								moh(3, i(91512)),	-- Malevolent Gladiator's Dragonhide Helm
								moh(3, i(91514)),	-- Malevolent Gladiator's Dragonhide Legguards
								moh(3, i(91516)),	-- Malevolent Gladiator's Dragonhide Robes
								moh(2, i(91518)),	-- Malevolent Gladiator's Dragonhide Spaulders
								moh(2, i(91525)),	-- Malevolent Gladiator's Kodohide Gloves
								moh(3, i(91527)),	-- Malevolent Gladiator's Kodohide Helm
								moh(3, i(91529)),	-- Malevolent Gladiator's Kodohide Legguards
								moh(3, i(91531)),	-- Malevolent Gladiator's Kodohide Robes
								moh(2, i(91533)),	-- Malevolent Gladiator's Kodohide Spaulders
								moh(2, i(91542)),	-- Malevolent Gladiator's Wyrmhide Gloves
								moh(3, i(91544)),	-- Malevolent Gladiator's Wyrmhide Helm
								moh(3, i(91546)),	-- Malevolent Gladiator's Wyrmhide Legguards
								moh(3, i(91548)),	-- Malevolent Gladiator's Wyrmhide Robes
								moh(2, i(91550)),	-- Malevolent Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138707, {	-- Ensemble: Malevolent Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84796),	-- Malevolent Gladiator's Chain Armor
								i(84841),	-- Malevolent Gladiator's Chain Gauntlets
								i(84858),	-- Malevolent Gladiator's Chain Helm
								i(84874),	-- Malevolent Gladiator's Chain Leggings
								i(84921),	-- Malevolent Gladiator's Chain Spaulders
								moh(3, i(91575)),	-- Malevolent Gladiator's Chain Armor
								moh(2, i(91577)),	-- Malevolent Gladiator's Chain Gauntlets
								moh(3, i(91579)),	-- Malevolent Gladiator's Chain Helm
								moh(3, i(91581)),	-- Malevolent Gladiator's Chain Leggings
								moh(2, i(91583)),	-- Malevolent Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138711, {	-- Ensemble: Malevolent Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84917),	-- Malevolent Gladiator's Silk Amice
								i(84855),	-- Malevolent Gladiator's Silk Cowl
								i(84837),	-- Malevolent Gladiator's Silk Handguards
								i(84904),	-- Malevolent Gladiator's Silk Robe
								i(84875),	-- Malevolent Gladiator's Silk Trousers
								moh(2, i(91593)),	-- Malevolent Gladiator's Silk Amice
								moh(3, i(91587)),	-- Malevolent Gladiator's Silk Cowl
								moh(2, i(91585)),	-- Malevolent Gladiator's Silk Handguards
								moh(3, i(91591)),	-- Malevolent Gladiator's Silk Robe
								moh(3, i(91589)),	-- Malevolent Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138709, {	-- Ensemble: Malevolent Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84836),	-- Malevolent Gladiator's Copperskin Gloves
								i(84854),	-- Malevolent Gladiator's Copperskin Helm
								i(84873),	-- Malevolent Gladiator's Copperskin Legguards
								i(84920),	-- Malevolent Gladiator's Copperskin Spaulders
								i(84903),	-- Malevolent Gladiator's Copperskin Tunic
								i(84839),	-- Malevolent Gladiator's Ironskin Gloves
								i(84857),	-- Malevolent Gladiator's Ironskin Helm
								i(84877),	-- Malevolent Gladiator's Ironskin Legguards
								i(84919),	-- Malevolent Gladiator's Ironskin Spaulders
								i(84902),	-- Malevolent Gladiator's Ironskin Tunic
								moh(2, i(91610)),	-- Malevolent Gladiator's Copperskin Gloves
								moh(3, i(91612)),	-- Malevolent Gladiator's Copperskin Helm
								moh(3, i(91614)),	-- Malevolent Gladiator's Copperskin Legguards
								moh(2, i(91616)),	-- Malevolent Gladiator's Copperskin Spaulders
								moh(3, i(91618)),	-- Malevolent Gladiator's Copperskin Tunic
								moh(2, i(91600)),	-- Malevolent Gladiator's Ironskin Gloves
								moh(3, i(91602)),	-- Malevolent Gladiator's Ironskin Helm
								moh(3, i(91604)),	-- Malevolent Gladiator's Ironskin Legguards
								moh(2, i(91606)),	-- Malevolent Gladiator's Ironskin Spaulders
								moh(3, i(91608)),	-- Malevolent Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138705, {	-- Ensemble: Malevolent Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84793),	-- Malevolent Gladiator's Ornamented Chestguard
								i(84831),	-- Malevolent Gladiator's Ornamented Gloves
								i(84849),	-- Malevolent Gladiator's Ornamented Headcover
								i(84869),	-- Malevolent Gladiator's Ornamented Legplates
								i(84914),	-- Malevolent Gladiator's Ornamented Spaulders
								i(84794),	-- Malevolent Gladiator's Scaled Chestpiece
								i(84834),	-- Malevolent Gladiator's Scaled Gauntlets
								i(84851),	-- Malevolent Gladiator's Scaled Helm
								i(84870),	-- Malevolent Gladiator's Scaled Legguards
								i(84915),	-- Malevolent Gladiator's Scaled Shoulders
								moh(3, i(91640)),	-- Malevolent Gladiator's Ornamented Chestguard
								moh(2, i(91642)),	-- Malevolent Gladiator's Ornamented Gloves
								moh(3, i(91644)),	-- Malevolent Gladiator's Ornamented Headcover
								moh(3, i(91646)),	-- Malevolent Gladiator's Ornamented Legplates
								moh(2, i(91648)),	-- Malevolent Gladiator's Ornamented Spaulders
								moh(3, i(91620)),	-- Malevolent Gladiator's Scaled Chestpiece
								moh(2, i(91622)),	-- Malevolent Gladiator's Scaled Gauntlets
								moh(3, i(91624)),	-- Malevolent Gladiator's Scaled Helm
								moh(3, i(91626)),	-- Malevolent Gladiator's Scaled Legguards
								moh(2, i(91628)),	-- Malevolent Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138712, {	-- Ensemble: Malevolent Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84846),	-- Malevolent Gladiator's Mooncloth Gloves
								i(84863),	-- Malevolent Gladiator's Mooncloth Helm
								i(84883),	-- Malevolent Gladiator's Mooncloth Leggings
								i(84928),	-- Malevolent Gladiator's Mooncloth Mantle
								i(84908),	-- Malevolent Gladiator's Mooncloth Robe
								i(84838),	-- Malevolent Gladiator's Satin Gloves
								i(84864),	-- Malevolent Gladiator's Satin Hood
								i(84884),	-- Malevolent Gladiator's Satin Leggings
								i(84929),	-- Malevolent Gladiator's Satin Mantle
								i(84909),	-- Malevolent Gladiator's Satin Robe
								moh(2, i(91662)),	-- Malevolent Gladiator's Mooncloth Gloves
								moh(3, i(91664)),	-- Malevolent Gladiator's Mooncloth Helm
								moh(3, i(91666)),	-- Malevolent Gladiator's Mooncloth Leggings
								moh(2, i(91670)),	-- Malevolent Gladiator's Mooncloth Mantle
								moh(3, i(91668)),	-- Malevolent Gladiator's Mooncloth Robe
								moh(2, i(91672)),	-- Malevolent Gladiator's Satin Gloves
								moh(3, i(91674)),	-- Malevolent Gladiator's Satin Hood
								moh(3, i(91676)),	-- Malevolent Gladiator's Satin Leggings
								moh(2, i(91680)),	-- Malevolent Gladiator's Satin Mantle
								moh(3, i(91678)),	-- Malevolent Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138710, {	-- Ensemble: Malevolent Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84830),	-- Malevolent Gladiator's Leather Gloves
								i(84848),	-- Malevolent Gladiator's Leather Helm
								i(84868),	-- Malevolent Gladiator's Leather Legguards
								i(84913),	-- Malevolent Gladiator's Leather Spaulders
								i(84792),	-- Malevolent Gladiator's Leather Tunic
								moh(2, i(91695)),	-- Malevolent Gladiator's Leather Gloves
								moh(3, i(91697)),	-- Malevolent Gladiator's Leather Helm
								moh(3, i(91699)),	-- Malevolent Gladiator's Leather Legguards
								moh(2, i(91701)),	-- Malevolent Gladiator's Leather Spaulders
								moh(3, i(91693)),	-- Malevolent Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138706, {	-- Ensemble: Malevolent Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84799),	-- Malevolent Gladiator's Linked Armor
								i(84844),	-- Malevolent Gladiator's Linked Gauntlets
								i(84862),	-- Malevolent Gladiator's Linked Helm
								i(84881),	-- Malevolent Gladiator's Linked Leggings
								i(84926),	-- Malevolent Gladiator's Linked Spaulders
								i(84798),	-- Malevolent Gladiator's Mail Armor
								i(84845),	-- Malevolent Gladiator's Mail Gauntlets
								i(84860),	-- Malevolent Gladiator's Mail Helm
								i(84879),	-- Malevolent Gladiator's Mail Leggings
								i(84924),	-- Malevolent Gladiator's Mail Spaulders
								i(84800),	-- Malevolent Gladiator's Ringmail Armor
								i(84847),	-- Malevolent Gladiator's Ringmail Gauntlets
								i(84865),	-- Malevolent Gladiator's Ringmail Helm
								i(84885),	-- Malevolent Gladiator's Ringmail Leggings
								i(84930),	-- Malevolent Gladiator's Ringmail Spaulders
								moh(3, i(91721)),	-- Malevolent Gladiator's Linked Armor
								moh(2, i(91723)),	-- Malevolent Gladiator's Linked Gauntlets
								moh(3, i(91725)),	-- Malevolent Gladiator's Linked Helm
								moh(3, i(91727)),	-- Malevolent Gladiator's Linked Leggings
								moh(2, i(91729)),	-- Malevolent Gladiator's Linked Spaulders
								moh(3, i(91733)),	-- Malevolent Gladiator's Mail Armor
								moh(2, i(91735)),	-- Malevolent Gladiator's Mail Gauntlets
								moh(3, i(91737)),	-- Malevolent Gladiator's Mail Helm
								moh(3, i(91739)),	-- Malevolent Gladiator's Mail Leggings
								moh(2, i(91741)),	-- Malevolent Gladiator's Mail Spaulders
								moh(3, i(91711)),	-- Malevolent Gladiator's Ringmail Armor
								moh(2, i(91713)),	-- Malevolent Gladiator's Ringmail Gauntlets
								moh(3, i(91715)),	-- Malevolent Gladiator's Ringmail Helm
								moh(3, i(91717)),	-- Malevolent Gladiator's Ringmail Leggings
								moh(2, i(91719)),	-- Malevolent Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138713, {	-- Ensemble: Malevolent Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84923),	-- Malevolent Gladiator's Felweave Amice
								i(84859),	-- Malevolent Gladiator's Felweave Cowl
								i(84842),	-- Malevolent Gladiator's Felweave Handguards
								i(84905),	-- Malevolent Gladiator's Felweave Raiment
								i(84878),	-- Malevolent Gladiator's Felweave Trousers
								moh(2, i(91781)),	-- Malevolent Gladiator's Felweave Amice
								moh(3, i(91775)),	-- Malevolent Gladiator's Felweave Cowl
								moh(2, i(91773)),	-- Malevolent Gladiator's Felweave Handguards
								moh(3, i(91779)),	-- Malevolent Gladiator's Felweave Raiment
								moh(3, i(91777)),	-- Malevolent Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138703, {	-- Ensemble: Malevolent Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84797),	-- Malevolent Gladiator's Plate Chestpiece
								i(84840),	-- Malevolent Gladiator's Plate Gauntlets
								i(84856),	-- Malevolent Gladiator's Plate Helm
								i(84876),	-- Malevolent Gladiator's Plate Legguards
								i(84922),	-- Malevolent Gladiator's Plate Shoulders
								moh(3, i(91783)),	-- Malevolent Gladiator's Plate Chestpiece
								moh(2, i(91785)),	-- Malevolent Gladiator's Plate Gauntlets
								moh(3, i(91787)),	-- Malevolent Gladiator's Plate Helm
								moh(3, i(91789)),	-- Malevolent Gladiator's Plate Legguards
								moh(2, i(91791)),	-- Malevolent Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(91453)),	-- Malevolent Gladiator's Cape of Cruelty
								moh(1, i(91454)),	-- Malevolent Gladiator's Cape of Prowess
								moh(1, i(91764)),	-- Malevolent Gladiator's Cloak of Alacrity
								moh(1, i(91765)),	-- Malevolent Gladiator's Cloak of Prowess
								moh(1, i(91477)),	-- Malevolent Gladiator's Drape of Cruelty
								moh(1, i(91479)),	-- Malevolent Gladiator's Drape of Meditation
								moh(1, i(91478)),	-- Malevolent Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(91710)),	-- Malevolent Gladiator's Armbands of Meditation
								moh(1, i(91709)),	-- Malevolent Gladiator's Armbands of Prowess
								moh(1, i(91659)),	-- Malevolent Gladiator's Armplates of Alacrity
								moh(1, i(91658)),	-- Malevolent Gladiator's Armplates of Proficiency
								moh(1, i(91599)),	-- Malevolent Gladiator's Armwraps of Accuracy
								moh(1, i(91692)),	-- Malevolent Gladiator's Armwraps of Alacrity
								moh(1, i(91524)),	-- Malevolent Gladiator's Bindings of Meditation
								moh(1, i(91541)),	-- Malevolent Gladiator's Bindings of Prowess
								moh(1, i(91639)),	-- Malevolent Gladiator's Bracers of Meditation
								moh(1, i(91638)),	-- Malevolent Gladiator's Bracers of Prowess
								moh(1, i(91474)),	-- Malevolent Gladiator's Cuffs of Accuracy
								moh(1, i(91476)),	-- Malevolent Gladiator's Cuffs of Meditation
								moh(1, i(91475)),	-- Malevolent Gladiator's Cuffs of Prowess
								moh(1, i(91574)),	-- Malevolent Gladiator's Wristguards of Accuracy
								moh(1, i(91573)),	-- Malevolent Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(91537)),	-- Malevolent Gladiator's Belt of Cruelty
								moh(1, i(91520)),	-- Malevolent Gladiator's Belt of Meditation
								moh(1, i(91630)),	-- Malevolent Gladiator's Clasp of Cruelty
								moh(1, i(91632)),	-- Malevolent Gladiator's Clasp of Meditation
								moh(1, i(91464)),	-- Malevolent Gladiator's Cord of Accuracy
								moh(1, i(91462)),	-- Malevolent Gladiator's Cord of Cruelty
								moh(1, i(91466)),	-- Malevolent Gladiator's Cord of Meditation
								moh(1, i(91650)),	-- Malevolent Gladiator's Girdle of Accuracy
								moh(1, i(91652)),	-- Malevolent Gladiator's Girdle of Prowess
								moh(1, i(91567)),	-- Malevolent Gladiator's Links of Accuracy
								moh(1, i(91565)),	-- Malevolent Gladiator's Links of Cruelty
								moh(1, i(91688)),	-- Malevolent Gladiator's Waistband of Accuracy
								moh(1, i(91595)),	-- Malevolent Gladiator's Waistband of Cruelty
								moh(1, i(91731)),	-- Malevolent Gladiator's Waistguard of Cruelty
								moh(1, i(91703)),	-- Malevolent Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(91597)),	-- Malevolent Gladiator's Boots of Alacrity
								moh(2, i(91690)),	-- Malevolent Gladiator's Boots of Cruelty
								moh(2, i(91539)),	-- Malevolent Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(91705)),	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(91522)),	-- Malevolent Gladiator's Footguards of Meditation (Leather)
								moh(2, i(91707)),	-- Malevolent Gladiator's Footguards of Meditation (Mail)
								moh(2, i(91634)),	-- Malevolent Gladiator's Greaves of Alacrity
								moh(2, i(91636)),	-- Malevolent Gladiator's Greaves of Meditation
								moh(2, i(91571)),	-- Malevolent Gladiator's Sabatons of Alacrity
								moh(2, i(91569)),	-- Malevolent Gladiator's Sabatons of Cruelty
								moh(2, i(91470)),	-- Malevolent Gladiator's Treads of Alacrity
								moh(2, i(91468)),	-- Malevolent Gladiator's Treads of Cruelty
								moh(2, i(91472)),	-- Malevolent Gladiator's Treads of Meditation
								moh(2, i(91656)),	-- Malevolent Gladiator's Warboots of Alacrity
								moh(2, i(91654)),	-- Malevolent Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(64395, {	-- Nam Ironpaw <Stockmaster>
						["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(74853, {	-- 100 Year Soy Sauce
								["cost"] = { { "c", 402, 1 } },	-- 1x Ironpaw Token
							}),
							i(86468, {	-- Apron
								["sourceQuest"] = 31820,	-- A Present for Teacher (Nomi)
								["cost"] = { { "c", 402, 50 } },	-- 50x Ironpaw Token
							}),
							i(86425, {	-- Cooking School Bell
								["sourceQuest"] = 31521,	-- To Be a Master
								["cost"] = { { "c", 402, 50 } },	-- 50x Ironpaw Token
							}),
							i(88801, {	-- Flippable Table (TOY!)
								["cost"] = { { "c", 402, 40 } },	-- 40x Ironpaw Token
							}),
							i(86559, {	-- Frying Pan
								["cost"] = { { "c", 402, 50 } },	-- 50x Ironpaw Token
							}),
							i(92748, {	-- Portable Refrigerator
								["cost"] = { { "c", 402, 10 } },	-- 10x Ironpaw Token
							}),
							i(75017, {	-- Recipe: Great Pandaren Banquet (RECIPE!)
								["sourceAchievement"] = 7306,	-- Master of Pandaren Cooking
								["cost"] = { { "c", 402, 10 } },	-- 10x Ironpaw Token
							}),
							i(75013, {	-- Recipe: Pandaren Banquet (RECIPE!)
								["sourceAchievement"] = 7306,	-- Master of Pandaren Cooking
								["cost"] = { { "c", 402, 10 } },	-- 10x Ironpaw Token
							}),
							i(86558, {	-- Rolling Pin
								["cost"] = { { "c", 402, 50 } },	-- 50x Ironpaw Token
							}),
						},
					}),
					n(64465, {	-- Noodles <Cooking Supplies>
						["coord"] = { 52.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
							i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						},
					}),
					n(55143, {	-- Sally Fizzlefury <Engineering Trainer>
						["coord"] = { 16.0, 83.0, VALLEY_OF_THE_FOUR_WINDS },
						["groups"] = {
							i(88802, {	-- Foxicopter Controller (TOY!)
								["cost"] = 10000000,	-- 1,000g
							}),
							i(91904, {	-- Stackable Stag (TOY!)
								["cost"] = 10000000,	-- 1,000g
							}),
						},
					}),
					n(78456, {	-- Starlight Sinclair <Prideful Gladiator>
						["coord"] = { 12.0, 34.0, VALLEY_OF_THE_FOUR_WINDS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144248, {	-- Arsenal: Prideful Gladiator's Weapons (A)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102785)),	-- Prideful Gladiator's Barrier
								moh(5, i(102596)),	-- Prideful Gladiator's Baton of Light
								moh(5, i(102601)),	-- Prideful Gladiator's Battle Staff
								moh(5, i(102609)),	-- Prideful Gladiator's Bonecracker
								moh(5, i(102600)),	-- Prideful Gladiator's Cleaver
								moh(5, i(102610)),	-- Prideful Gladiator's Decapitator
								moh(2, i(102786)),	-- Prideful Gladiator's Endgame
								moh(5, i(102607)),	-- Prideful Gladiator's Energy Staff
								moh(5, i(102590)),	-- Prideful Gladiator's Gavel
								moh(5, i(102599)),	-- Prideful Gladiator's Greatsword
								moh(5, i(102604)),	-- Prideful Gladiator's Hacker
								moh(5, i(102591)),	-- Prideful Gladiator's Longbow
								moh(5, i(102598)),	-- Prideful Gladiator's Mageblade
								moh(5, i(102606)),	-- Prideful Gladiator's Pike
								moh(5, i(102592)),	-- Prideful Gladiator's Pummeler
								moh(5, i(102612)),	-- Prideful Gladiator's Quickblade
								moh(2, i(102782)),	-- Prideful Gladiator's Redoubt
								moh(5, i(102608)),	-- Prideful Gladiator's Render
								moh(2, i(102783)),	-- Prideful Gladiator's Reprieve
								moh(2, i(102597)),	-- Prideful Gladiator's Rifle
								moh(5, i(102603)),	-- Prideful Gladiator's Ripper
								moh(5, i(102602)),	-- Prideful Gladiator's Shanker
								moh(2, i(102784)),	-- Prideful Gladiator's Shield Wall
								moh(5, i(102605)),	-- Prideful Gladiator's Slicer
								moh(5, i(102594)),	-- Prideful Gladiator's Spellblade
								moh(5, i(102593)),	-- Prideful Gladiator's Touch of Defeat
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138639, {	-- Ensemble: Prideful Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102676)),	-- Prideful Gladiator's Dreadplate Chestpiece
								moh(2, i(102650)),	-- Prideful Gladiator's Dreadplate Gauntlets
								moh(3, i(102713)),	-- Prideful Gladiator's Dreadplate Helm
								moh(3, i(102651)),	-- Prideful Gladiator's Dreadplate Legguards
								moh(2, i(102652)),	-- Prideful Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138647, {	-- Ensemble: Prideful Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102739)),	-- Prideful Gladiator's Dragonhide Gloves
								moh(3, i(102653)),	-- Prideful Gladiator's Dragonhide Helm
								moh(3, i(102654)),	-- Prideful Gladiator's Dragonhide Legguards
								moh(3, i(102740)),	-- Prideful Gladiator's Dragonhide Robes
								moh(2, i(102741)),	-- Prideful Gladiator's Dragonhide Spaulders
								moh(2, i(102657)),	-- Prideful Gladiator's Kodohide Gloves
								moh(3, i(102776)),	-- Prideful Gladiator's Kodohide Helm
								moh(3, i(102761)),	-- Prideful Gladiator's Kodohide Legguards
								moh(3, i(102721)),	-- Prideful Gladiator's Kodohide Robes
								moh(2, i(102658)),	-- Prideful Gladiator's Kodohide Spaulders
								moh(2, i(102696)),	-- Prideful Gladiator's Wyrmhide Gloves
								moh(3, i(102634)),	-- Prideful Gladiator's Wyrmhide Helm
								moh(3, i(102767)),	-- Prideful Gladiator's Wyrmhide Legguards
								moh(3, i(102614)),	-- Prideful Gladiator's Wyrmhide Robes
								moh(2, i(102700)),	-- Prideful Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138645, {	-- Ensemble: Prideful Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102689)),	-- Prideful Gladiator's Chain Armor
								moh(2, i(102737)),	-- Prideful Gladiator's Chain Gauntlets
								moh(3, i(102690)),	-- Prideful Gladiator's Chain Helm
								moh(3, i(102670)),	-- Prideful Gladiator's Chain Leggings
								moh(2, i(102734)),	-- Prideful Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138653, {	-- Ensemble: Prideful Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102673)),	-- Prideful Gladiator's Silk Amice
								moh(3, i(102667)),	-- Prideful Gladiator's Silk Cowl
								moh(2, i(102735)),	-- Prideful Gladiator's Silk Handguards
								moh(3, i(102715)),	-- Prideful Gladiator's Silk Robe
								moh(3, i(102648)),	-- Prideful Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138649, {	-- Ensemble: Prideful Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102627)),	-- Prideful Gladiator's Copperskin Gloves
								moh(3, i(102628)),	-- Prideful Gladiator's Copperskin Helm
								moh(3, i(102762)),	-- Prideful Gladiator's Copperskin Legguards
								moh(2, i(102777)),	-- Prideful Gladiator's Copperskin Spaulders
								moh(3, i(102763)),	-- Prideful Gladiator's Copperskin Tunic
								moh(2, i(102675)),	-- Prideful Gladiator's Ironskin Gloves
								moh(3, i(102712)),	-- Prideful Gladiator's Ironskin Helm
								moh(3, i(102656)),	-- Prideful Gladiator's Ironskin Legguards
								moh(2, i(102626)),	-- Prideful Gladiator's Ironskin Spaulders
								moh(3, i(102720)),	-- Prideful Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138641, {	-- Ensemble: Prideful Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102632)),	-- Prideful Gladiator's Ornamented Chestguard
								moh(2, i(102722)),	-- Prideful Gladiator's Ornamented Gloves
								moh(3, i(102635)),	-- Prideful Gladiator's Ornamented Headcover
								moh(3, i(102768)),	-- Prideful Gladiator's Ornamented Legplates
								moh(2, i(102697)),	-- Prideful Gladiator's Ornamented Spaulders
								moh(3, i(102747)),	-- Prideful Gladiator's Scaled Chestpiece
								moh(2, i(102630)),	-- Prideful Gladiator's Scaled Gauntlets
								moh(3, i(102779)),	-- Prideful Gladiator's Scaled Helm
								moh(3, i(102780)),	-- Prideful Gladiator's Scaled Legguards
								moh(2, i(102744)),	-- Prideful Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138655, {	-- Ensemble: Prideful Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102615)),	-- Prideful Gladiator's Mooncloth Gloves
								moh(3, i(102703)),	-- Prideful Gladiator's Mooncloth Helm
								moh(3, i(102704)),	-- Prideful Gladiator's Mooncloth Leggings
								moh(2, i(102750)),	-- Prideful Gladiator's Mooncloth Mantle
								moh(3, i(102681)),	-- Prideful Gladiator's Mooncloth Robe
								moh(2, i(102707)),	-- Prideful Gladiator's Satin Gloves
								moh(3, i(102751)),	-- Prideful Gladiator's Satin Hood
								moh(3, i(102621)),	-- Prideful Gladiator's Satin Leggings
								moh(2, i(102671)),	-- Prideful Gladiator's Satin Mantle
								moh(3, i(102622)),	-- Prideful Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138651, {	-- Ensemble: Prideful Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102727)),	-- Prideful Gladiator's Leather Gloves
								moh(3, i(102731)),	-- Prideful Gladiator's Leather Helm
								moh(3, i(102730)),	-- Prideful Gladiator's Leather Legguards
								moh(2, i(102710)),	-- Prideful Gladiator's Leather Spaulders
								moh(3, i(102663)),	-- Prideful Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138643, {	-- Ensemble: Prideful Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102759)),	-- Prideful Gladiator's Linked Armor
								moh(2, i(102742)),	-- Prideful Gladiator's Linked Gauntlets
								moh(3, i(102714)),	-- Prideful Gladiator's Linked Helm
								moh(3, i(102778)),	-- Prideful Gladiator's Linked Leggings
								moh(2, i(102629)),	-- Prideful Gladiator's Linked Spaulders
								moh(3, i(102743)),	-- Prideful Gladiator's Mail Armor
								moh(2, i(102692)),	-- Prideful Gladiator's Mail Gauntlets
								moh(3, i(102693)),	-- Prideful Gladiator's Mail Helm
								moh(3, i(102781)),	-- Prideful Gladiator's Mail Leggings
								moh(2, i(102637)),	-- Prideful Gladiator's Mail Spaulders
								moh(3, i(102717)),	-- Prideful Gladiator's Ringmail Armor
								moh(2, i(102774)),	-- Prideful Gladiator's Ringmail Gauntlets
								moh(3, i(102718)),	-- Prideful Gladiator's Ringmail Helm
								moh(3, i(102719)),	-- Prideful Gladiator's Ringmail Leggings
								moh(2, i(102655)),	-- Prideful Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138657, {	-- Ensemble: Prideful Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102682)),	-- Prideful Gladiator's Felweave Amice
								moh(3, i(102726)),	-- Prideful Gladiator's Felweave Cowl
								moh(2, i(102725)),	-- Prideful Gladiator's Felweave Handguards
								moh(3, i(102661)),	-- Prideful Gladiator's Felweave Raiment
								moh(3, i(102755)),	-- Prideful Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138637, {	-- Ensemble: Prideful Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102728)),	-- Prideful Gladiator's Plate Chestpiece
								moh(2, i(102618)),	-- Prideful Gladiator's Plate Gauntlets
								moh(3, i(102619)),	-- Prideful Gladiator's Plate Helm
								moh(3, i(102732)),	-- Prideful Gladiator's Plate Legguards
								moh(2, i(102685)),	-- Prideful Gladiator's Plate Shoulders
							}),
							n(BACK, {
								-- From Celestials/Vendor
								moh(1, i(102705)),	-- Prideful Gladiator's Cape of Cruelty
								moh(1, i(102642)),	-- Prideful Gladiator's Cape of Prowess
								moh(1, i(102769)),	-- Prideful Gladiator's Cloak of Alacrity
								moh(1, i(102770)),	-- Prideful Gladiator's Cloak of Prowess
								moh(1, i(102669)),	-- Prideful Gladiator's Drape of Cruelty
								moh(1, i(102756)),	-- Prideful Gladiator's Drape of Meditation
								moh(1, i(102772)),	-- Prideful Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								-- From Celestials/Vendor
								moh(1, i(102624)),	-- Prideful Gladiator's Armbands of Meditation
								moh(1, i(102665)),	-- Prideful Gladiator's Armbands of Prowess
								moh(1, i(102771)),	-- Prideful Gladiator's Armplates of Alacrity
								moh(1, i(102702)),	-- Prideful Gladiator's Armplates of Proficiency
								moh(1, i(102711)),	-- Prideful Gladiator's Armwraps of Accuracy
								moh(1, i(102754)),	-- Prideful Gladiator's Armwraps of Alacrity
								moh(1, i(102691)),	-- Prideful Gladiator's Bindings of Meditation
								moh(1, i(102723)),	-- Prideful Gladiator's Bindings of Prowess
								moh(1, i(102765)),	-- Prideful Gladiator's Bracers of Meditation
								moh(1, i(102695)),	-- Prideful Gladiator's Bracers of Prowess
								moh(1, i(102687)),	-- Prideful Gladiator's Cuffs of Accuracy
								moh(1, i(102666)),	-- Prideful Gladiator's Cuffs of Meditation
								moh(1, i(102733)),	-- Prideful Gladiator's Cuffs of Prowess
								moh(1, i(102753)),	-- Prideful Gladiator's Wristguards of Accuracy
								moh(1, i(102688)),	-- Prideful Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								-- From Celestials/Vendor
								moh(1, i(102694)),	-- Prideful Gladiator's Belt of Cruelty
								moh(1, i(102775)),	-- Prideful Gladiator's Belt of Meditation
								moh(1, i(102764)),	-- Prideful Gladiator's Clasp of Cruelty
								moh(1, i(102748)),	-- Prideful Gladiator's Clasp of Meditation
								moh(1, i(102662)),	-- Prideful Gladiator's Cord of Accuracy
								moh(1, i(102684)),	-- Prideful Gladiator's Cord of Cruelty
								moh(1, i(102709)),	-- Prideful Gladiator's Cord of Meditation
								moh(1, i(102640)),	-- Prideful Gladiator's Girdle of Accuracy
								moh(1, i(102724)),	-- Prideful Gladiator's Girdle of Prowess
								moh(1, i(102645)),	-- Prideful Gladiator's Links of Accuracy
								moh(1, i(102617)),	-- Prideful Gladiator's Links of Cruelty
								moh(1, i(102708)),	-- Prideful Gladiator's Waistband of Accuracy
								moh(1, i(102647)),	-- Prideful Gladiator's Waistband of Cruelty
								moh(1, i(102677)),	-- Prideful Gladiator's Waistguard of Cruelty
								moh(1, i(102668)),	-- Prideful Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								-- From Celestials/Vendor
								moh(2, i(102716)),	-- Prideful Gladiator's Boots of Alacrity
								moh(2, i(102660)),	-- Prideful Gladiator's Boots of Cruelty
								moh(2, i(102631)),	-- Prideful Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(102664)),	-- Prideful Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(102760)),	-- Prideful Gladiator's Footguards of Meditation (Leather)
								moh(2, i(102623)),	-- Prideful Gladiator's Footguards of Meditation (Mail)
								moh(2, i(102638)),	-- Prideful Gladiator's Greaves of Alacrity
								moh(2, i(102639)),	-- Prideful Gladiator's Greaves of Meditation
								moh(2, i(102646)),	-- Prideful Gladiator's Sabatons of Alacrity
								moh(2, i(102729)),	-- Prideful Gladiator's Sabatons of Cruelty
								moh(2, i(102620)),	-- Prideful Gladiator's Treads of Alacrity
								moh(2, i(102686)),	-- Prideful Gladiator's Treads of Cruelty
								moh(2, i(102752)),	-- Prideful Gladiator's Treads of Meditation
								moh(2, i(102745)),	-- Prideful Gladiator's Warboots of Alacrity
								moh(2, i(102698)),	-- Prideful Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(59583, {	-- Trader Jambeezi <Adventuring Supplies>
						["coords"] = {
							{ 56.2, 47.0, VALLEY_OF_THE_FOUR_WINDS },
							{ 55.6, 49.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["sym"] = {{"select","npcID",56705},{"pop"}},	-- Singegruff <Adventuring Supplies>
					}),
				}),
				n(ZONE_DROPS, {
					i(74842, {	-- Mogu Pumpkin
						["description"] = "Drops from Virmen.",
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(VALLEY_OF_THE_FOUR_WINDS, {
			n(QUESTS, {
				q(30629),	-- FLAG - Player Began Finale - triggered after cutscene prompted by turning in "Stoneplow Thirsts" (questID 30117)
			}),
		}),
	}),
})));
