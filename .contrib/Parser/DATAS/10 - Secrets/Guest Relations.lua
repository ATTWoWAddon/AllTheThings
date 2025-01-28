--------------------------------------------
--     S E C R E T S  M O D U L E       --
--------------------------------------------
GUEST_RELATIONS = createHeader({
	readable = "Guest Relations",
	constant = "GUEST_RELATIONS",
	icon = [[~_.asset("Holiday_SecretsAz")]],
--	eventID = EVENTS.TODO,
	text = {
		en = "Guest Relations",
		de = "Gästebetreuungen",
		es = "Recepción de invitados”",
		mx = "Atención a invitados",
		fr = "Relations clientèle",
		it = "Relazioni con gli Ospiti",
		pt = "Relacionamento com os Convidados",
		ru = "Работа с посетителями",
		ko = "손님 대응",
		cn = "宾客关系",
		tw = "公關",
	},
});
root(ROOTS.Secrets, n(GUEST_RELATIONS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	["description"] = "***Using Debug Mode is recommended.***\n",
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(40870, {	-- Azeroth's Greatest Detective
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40871,	-- Assistant to the Assistant Guest Relations Manager
					40873,	-- Crate Insurance Agent
					40872,	-- I Saved the Party and All I Got Was This Lousy Hat
					40979,	-- No Crate Left Behind
				}},
				["g"] = {
					title(571),	-- Detective <Name> (TITLE!)
				},
			}),
		}),
		n(QUESTS, bubbleDownSelf({ ["timeline"] = { "removed 11.0.7.58238" } }, {
			-- Tutorial Questline
			q(84143, {	-- Lost and Busy
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84144, {	-- Tat Big Meanie
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuest"] = 84143,	-- Lost and Busy
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					o(456767, {	-- Red Hair
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.1, 51.7, TANARIS },
						["g"] = { i(227364) },	-- Red Hair (QI!)
					}),
					o(455310, {	-- Hear Historic Tales at the Storyteller Stage!
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.0, 51.5, TANARIS },
						["g"] = { i(227363) },	-- Hear Historic Tales at the Storyteller Stage! (QI!)
					}),
					n(226775, {	-- Ratts <Former Event Coordinator>
						["coord"] = { 64.0, 51.7, TANARIS },
					}),
					o(456820, {	-- Strange Torch
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 63.7, 47.8, TANARIS },
						["g"] = { i(227443) },	-- Strange Torch (QI!)
					}),
					i(207730),	-- Idol of Ohn'ahra
				},
			}),
			q(84419, {	-- To da Ruins!
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuest"] = 84144,	-- Tat Big Meanie
				["coord"] = { 63.2, 52.4, TANARIS },
			}),
			q(84393, {	-- Da Stick of Revealing
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuest"] = 84419,	-- To da Ruins!
				["coord"] = { 35.1, 78.2, TANARIS },
				["g"] = { i(208092) },	-- Torch of Pyrreth
			}),
			q(84363, {	-- Tweasure Hunt
				["description"] = "Activate Torch of Pyrreth at each of the Dig Sites.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuest"] = 84393,	-- Da Stick of Revealing
				["coord"] = { 37.2, 78.9, TANARIS },
				["g"] = {
					o(459333, {	-- Jeweled Eye
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 40.8, 70.5, TANARIS },
						["g"] = { i(227785) },	-- Jeweled Eye (QI!)
					}),
					n(228810, {	-- Tanaris Sandworm
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 42.2, 72.0, TANARIS },
						["g"] = { i(227790) },	-- Cool Guts (QI!)
					}),
					o(459368, {	-- Half-Burried Chest
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 45.0, 64.6, TANARIS },
						["g"] = { i(227775) },	-- Golden Chalice (QI!)
					}),
					n(228791, {	-- Ancient Statue
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 52.3, 45.3, TANARIS },
						["g"] = { i(227777) },	-- Fragment of an Ancient Statue (QI!)
					}),
				},
			}),
			q(84521, {	-- Thoughtful Pursuits
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuest"] = 84363,	-- Tweasure Hunt
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					i(228617),	-- Benatauk's Clue Book (QI!)
					i(228618, {	-- Benatauk's Crystal Ocular Lenses (QI!)
						["coord"] = { 64.2, 50.0, TANARIS },
						["description"] = "Go to Isaandrae <Skyway Balloonist>. Maru will find and give you [Benatauk's Crystal Ocular Lenses].",
					}),
					i(228619, {	-- Benatauk's Thought Calculating Apparatus (QI!)
						["coord"] = { 63.6, 48.5, TANARIS },
						["description"] = "Go behind the Fashion Show platform. Maru will find and give you [Benatauk's Thought Calculating Apparatus].",
					}),
					i(228620, {	-- Benatauk's Downy Helmet Liner (QI!)
						["coord"] = { 61.4, 49.9, TANARIS },
						["description"] = "Go near Taivan. Maru will find and give you [Benatauk's Downy Helmet Liner].",
					}),
					i(206696),	-- Tricked-Out Thinking Cap
				},
			}),
			q(84868, {	-- A Whiff of Help
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuest"] = 84521,	-- Thoughtful Pursuits
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					hqt(83831, {	-- Triggered on turn in of (84868) A Whiff of Help. Unlocks secret quests accountwide.
						["name"] = "Complete the Guest Relations tutorial quest chain."
					}),
				},
			}),
		})),
		n(VENDORS, {
			n(226766, {	-- Benatauk <Unco Benny>
				["description"] = "You need to get up to the quest 'A Whiff of Help' in the chain and accept it in order to buy the items.",
				["sourceQuest"] = 84868,	-- A Whiff of Help (Quest Accepted)
				["coord"] = { 63.3, 52.4, TANARIS },
				["timeline"] = { "removed 11.0.7.58238" },
				["g"] = {
					i(229351),	-- Spiritual Incense
					i(229375),	-- Neural Enlarger
				},
			}),
			n(230310, {	-- Pointless Treasure Salesman
				["description"] = "Inside the Booty Bay goblin statue behind chests in the back.",
				["coord"] = { 33.6, 63.5, THE_CAPE_OF_STRANGLETHORN },
				["g"] = {
					i(228996, {	-- Relic of Crystal Connections
						["cost"] = {
							{ "i", 228995, 1 },	-- Golden Muffin
							{ "i", 228967, 9 },	-- Piece of Hate
						},
					}),
				},
			}),
			n(91079, {	-- Vashti the Wandering Merchant <General Goods>
				["description"] = "Can be found pathing up and down the road between Felblaze Ingress and The Ruined Sanctum in Azsuna, Broken Isles.",
				["coords"] = {
					-- North stop
					{ 66.0, 22.2, AZSUNA },
					-- Middle
					{ 65.2, 36.4, AZSUNA },
					-- South stop
					{ 65.8, 48.2, AZSUNA },
				},
				["g"] = {
					i(228986, {	-- Aesthetician's Coupon Book
						["cost"] = 5000000,	-- 500g
					}),
					i(228990),	-- Bottle of Steam
					i(229413, {	-- "Dogg-Saron" Costume
						["cost"] = 250000000,	-- 25,000g
					}),
					i(228989, {	-- Exotic Critter Taming License
						["cost"] = 5000000,	-- 500g
					}),
					i(228767, {	-- Sandy Celebration Crate (QS!)
						["provider"] = { "i", 228768 },	-- Water-Resistant Receipt
						["cost"] = 5000000,	-- 500g
					}),
					i(228987, {	-- Scroll of Fel Binding
						["cost"] = 5000000,	-- 500g
					}),
					i(228991, {	-- Stone of Prophecy
						["cost"] = 50000000,	-- 5,000g
					}),
				},
			}),
		}),
		header(HEADERS.Achievement, 40872, bubbleDownSelf({ ["timeline"] = { "removed 11.0.7.58238" } }, {	-- I Saved the Party and All I Got Was This Lousy Hat
			ach(40872, {	-- I Saved the Party and All I Got Was This Lousy Hat (automated)
				i(234448),	-- Bright Ideas Thinking Cap
				i(231906),	-- High-Alert Thinking Cap
			}),
			-- Chapter 1
			q(84236, {	-- The Great Detective
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84237, {	-- The "Great" Detective
				["description"] = "1. Talk to the members of Team Solid in following order until the quest shows 48% progress.\n- Ellanoir\n- Duryllin\n- Juddson Rakes\n- Ellanoir\n2. Use your Torch of Pyrreth at Wavestrider Beach to reveal Herrkrop's body.\n3. Talk to all nearby NPCs.\n4. Talk to Athelton Jones to complete the quest requirements.",
				["provider"] = { "n", 226796 },	-- Athektin Jones
				["sourceQuest"] = 84236,	-- The Great Detective
				["coord"] = { 63.9, 51.7, TANARIS },
				["g"] = {
					n(226805, {	-- Ellanoir
						["coord"] = { 63.8, 51.0, TANARIS },
					}),
					n(226804, {	-- Duryllin
						["coord"] = { 63.8, 51.1, TANARIS },
					}),
					n(226803, {	-- Juddson Rakes
						["coord"] = { 63.8, 51.1, TANARIS },
					}),
					n(226810, {	-- Herrkrop
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 66.2, 40.6, TANARIS },
					}),
					n(226812, {	-- Scrapes
						["coord"] = { 66.2, 40.7, TANARIS },
					}),
					n(228477, {	-- Nat Pagle
						["coord"] = { 66.2, 40.7, TANARIS },
					}),
					n(226814, {	-- Julia Henning
						["coord"] = { 65.7, 41.3, TANARIS },
					}),
					n(226796, {	-- Athelton Jones
						["coord"] = { 66.3, 40.6, TANARIS },
					}),
				},
			}),
			q(84278, {	-- Tracking Quest
				["description"] = "Use the Goblin Transport at 68.0, 40.8 to travel to Borean Tundra, then find Rexxar.",
				["sourceQuest"] = 84237,	-- The 'Great' Detective
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
				["g"] = {
					i(227551),	-- Note from Rexxar (QI!)
					o(457025, {	-- Pre-Calibrated Goblin Transport Vessel
						["coord"] = { 68.0, 40.8, TANARIS },
					}),
					n(226952, {	-- Rexxar
						["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
					}),
				},
			}),
			q(84296, {	-- The Trail's Gone Cold
				["description"] = "1. Locate 3 diary pages around the marked shed and then go to Sholazar Basin.\n2. Interact with the Mounted Spyglass atop the Glimmering Pillar and then head to Icecrown.\n3. Summon Rexxar with your Spirit's Whistle and tell him about a shapeshifter.",
				["sourceQuest"] = 84278,	-- Tracking Quest
				["provider"] = { "n", 226952 },	-- Rexxar
				["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
				["crs"] = { 228550 },	-- Rexxar
				["g"] = {
					i(227664),	-- Spirit's Whistle (QI!)
					o(457156, {	-- Torn Note
						["coord"] = { 85.9, 34.0, BOREAN_TUNDRA },
						["g"] = { i(227665) },	-- Torn Diary, Page 4 (QI!)
					}),
					o(457161, {	-- Torn Note
						["description"] = "Use Torch of Pyrreth to reveal the page.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 85.9, 33.9, BOREAN_TUNDRA },
						["g"] = { i(227672) },	-- Torn Diary, Page 7 (QI!)
					}),
					o(457160, {	-- Torn Note
						["coord"] = { 88.1, 34.6, BOREAN_TUNDRA },
						["g"] = { i(227671) },	-- Torn Diary, Page 6 (QI!)
					}),
					o(457197, {	-- Mounted Spyglass
						["coord"] = { 49.7, 36.0, SHOLAZAR_BASIN },
					}),
					n(228634, {	-- Scrapes
						["coord"] = { 16.0, 58.8, ICECROWN },
					}),
				},
			}),
			q(84334, {	-- Warn the Detective
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
				},
				["sourceQuest"] = 84296,	-- The Trail's Gone Cold
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84336, {	-- Spot The Difference
				["description"] = "Speak to Hemet, Leeroy, and Addie to suss out the detectives' stories, then accuse one. Chase the intruder east of Bootlegger Outpost and kill him.",
				["qgs"] = {
					226796,	-- Athelton Jones
					228661,	-- Athelton Jones (!)
				},
				["sourceQuest"] = 84334,	-- Warn the Detective
				["coord"] = { 61.0, 50.6, TANARIS },
				["g"] = {
					n(227731, {	-- Addie Fizzlebog
						["coord"] = { 63.5, 51.7, TANARIS },
					}),
					n(228250, {	-- Hemet Nesingwary Sr.
						["coord"] = { 62.5, 51.9, TANARIS },
					}),
					n(158192, {	-- Leeroy Jenkins
						["coord"] = { 63.3, 52.3, TANARIS },
					}),
					n(228661, {	-- Athelton Jones (!)
						["coord"] = { 63.3, 52.3, TANARIS },
					}),
					n(228663, {	-- Y'illiya Xennin
						["coord"] = { 60.0, 62.5, TANARIS },
					}),
				},
			}),
			-- Chapter 2
			-- Quests in this chapter are faction locked, but both cross complete.
			{	-- Toy Trouble
					["allianceQuestData"] = q(84563, {	-- Toy Trouble [A]
				}),
					["hordeQuestData"] = q(85024, {	-- Toy Trouble [H]
				}),
				["provider"] = { "n", 232404 },	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
				["sourceQuest"] = 84336,	-- Spot The Difference
				["coord"] = { 63.0, 50.2, TANARIS },
			},
			{	-- Operation Toy Rescue
					["allianceQuestData"] = q(84588, {	-- Operation Toy Rescue [A]
					["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Kenshi in Boralus, find the Ball of Yarn in the park, and talk to Kenshi again.",
					["sourceQuest"] = 84563,	-- Toy Trouble [A]
					["g"] = {
						i(229990),	-- My Journal: Operation Toy Rescue (QI!)
						n(142044, {	-- Kenshi
							["coord"] = { 54.0, 72.8, BORALUS },
							["g"] = {
								i(232363, {	-- Half-Eaten Mouse
									["cost"] = {{ "i", 232362, 1 }}, -- Deluxe Tuna
								}),
							},
						}),
						o(467060, {	-- Ball of Yarn
							["description"] = "Near a fence and tree in Boralus Park.",
							["coord"] = { 42.1, 75.1, BORALUS },
							["g"] = { i(229164)	},	-- Ball of Yarn (QI!)
						}),
					},
				}),
					["hordeQuestData"] = q(85025, {	-- Operation Toy Rescue [H]
					["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Nuts in Dazar'Alor, follow the fur sheddings to a Plush Toy, and give it to him.",
					["sourceQuest"] = 85024,	-- Toy Trouble [H]
					["g"] = {
						i(229991),	-- My Journal: Operation Toy Rescue (QI!)
						n(54227, {	-- Nuts
							["coord"] = { 56.3, 31.7, DAZARALOR },
						}),
						o(470229, {	-- Plush Toy
							["coord"] = { 56.4, 21.3, DAZARALOR },
							["g"] = { i(229908) },	-- Plush Toy (QI!)
						}),
					},
				}),
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					n(229847, {	-- Yennu
						["coord"] = { 13.4, 48.9, THE_AZURE_SPAN },
					}),
					o(465234, {	-- Missing Page from Yennu's Snackbook
						["description"] = "Inside a cart in Dragonscale Basecamp.",
						["coord"] = { 47.0, 83.5, THE_WAKING_SHORES },
						["g"] = { i(228791) },	-- Missing Page from Yennu's Snackbook (QI!)
					}),
					o(465277, {	-- Mound of Dirt
						["description"] = "By a river by the eastern side of Maruukai.",
						["coord"] = { 62.0, 37.5, OHNAHRAN_PLAINS },
						["g"] = { i(228795) },	-- Yennu's Toy Ball (QI!)
					}),
				},
			},
			{	-- The Final Toy
					["allianceQuestData"] = q(84755, {	-- The Final Toy [A]
					["sourceQuest"] = 84588,	-- Operation Toy Rescue [A]
				}),
					["hordeQuestData"] = q(85042, {	-- The Final Toy [H]
					["sourceQuest"] = 85025,	-- Operation Toy Rescue [H]
				}),
				["qgs"] = {
					232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
					232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
					232407,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			},
			{	-- The Toy Thief
					["allianceQuestData"] = q(84756, {	-- The Toy Thief [A]
					["sourceQuest"] = 84755,	-- The Final Toy [A]
					["description"] = "Talk to Maru, suspect a dog, then visit Urban Planner Volrath in Boralus.\nCollect a chew toy from the mountaintop behind Maruukai in the Ohn'ahran plains.\nPlace the Chew Toy in a Toy Box  in Teerakai and follow the Bakar Pup to collect Maru's toy from a nearby cave.",
						["g"] = {
							i(229992),	-- My Journal: Operation Toy Rescue (QI!)
							n(142178, {	-- Urban Planner Volrath
								["coord"] = { 43.2, 73.7, BORALUS },
								["g"] = { i(232364) },	-- Bakar Sketch (QI!)
							}),
						},
				}),
					["hordeQuestData"] = q(85043, {	-- The Toy Thief [H]
					["sourceQuest"] = 85042,	-- The Final Toy [H]
					["description"] = "Talk to Maru, suspect a dog, then visit Matan in Dazar'alor.\nCollect a chew toy from the mountaintop behind Maruukai in the Ohn'ahran plains.\nPlace the Chew Toy in a Toy Box  in Teerakai and follow the Bakar Pup to collect Maru's toy from a nearby cave.",
						["g"] = {
							i(229997),	-- My Journal: Operation Toy Rescue (QI!)
							o(472068, {	-- Bakar Sketch
								["coord"] = { 57.0, 22.2, DAZARALOR },
								["g"] = { i(229196) },	-- Bakar Sketch (QI!)
							}),
						},
				}),
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					o(467293, {	-- Chew Toy
						["description"] = "Atop the high mountain peak behind Maruukai.",
						["coord"] = { 57.9, 31.7, OHNAHRAN_PLAINS },
						["g"] = { i(229350) },	-- Chew Toy (QI!)
					}),
					o(467305, {	-- Toy Box
						["description"] = "Place the Chew Toy inside the Toy Box and then hide in the nearby bush.\nAfter Bakar Pup takes the toy, follow him to the cave.",
						["coord"] = { 39.6, 58.3, OHNAHRAN_PLAINS },
					}),
					o(467329, {	-- Maru's Toy
						["description"] = "Inside a cave near Teerakai",
						["coord"] = { 38.8, 56.0, OHNAHRAN_PLAINS },
						["g"] = { i(229358)	},	-- Miniature Tuskarr Boat (QI!)
					}),
				},
			},
			-- Chapter 3
			q(85047, {	-- A Pirate Predicament
				["qgs"] = {
					232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["sourceQuests"] = {
					84756,	-- The Toy Thief [A]
					85043,	-- The Toy Thief [H]
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(85060, {	-- Pirate Foods and Superstitions
				["description"] = "Talk to Kelsey Yance in the Old Port Authority building or Mrs. Gant in a room on the lowest level of Booty Bay. Collect the Boonful Banquet from a barrel in the same room as Mrs. Gant then show it to Scowling Rosa who paths around the wharf.",
				["sourceQuest"] = 85047,	-- A Pirate Predicament
				["provider"] = { "n", 231413 },	-- Bonenose
				["coord"] = { 60.9, 44.7, TANARIS },
				["g"] = {
					i(231263),	-- My Journal: The Case of the Superstitious and Hungry Pirates (QI!)
					n(2664, {	-- Kelsey Yance <Cook>
						["coord"] = { 42.8, 69.0, THE_CAPE_OF_STRANGLETHORN },
					}),
					n(54232, {	-- Mrs. Gant <Cooking Trainer & Supplies>
						["coord"] = { 42.7, 72.7, THE_CAPE_OF_STRANGLETHORN },
					}),
					o(473934, {	-- Property of Cooktholomew
						["description"] = "On the bottom floor of a building in Booty Bay by some bunks.",
						["coord"] = { 42.9, 72.9, THE_CAPE_OF_STRANGLETHORN },
						["g"] = { i(229968) },	-- Boonful Banquet (QI!)
					}),
				},
			}),
			q(85208, {	-- A Pirate Missive
				["sourceQuest"] = 85060,	-- Pirate Foods and Superstitions
				["qgs"] = {
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
				["isBreadcrumb"] = true,
			}),
			q(85195, {	-- Pirate Gastronomy
				["description"] = "Acquire the required ingredients then talk to Bottlenose in Tanaris. Visit Hrothgar's Landing to grab the last ingredient.",
				["sourceQuest"] = 85208,	-- A Pirate Missive
				["provider"] = { "n", 105637 },	-- Scowling Rosa <Texts and Specialty Goods>
				["cost"] = {
					{ "i", 160711, 2 },	-- Aromatic Fish Oil
					{ "i", 33823, 5 },	-- Bloodfin Catfish
					{ "i", 41800, 1 },	-- Deep Sea Monsterbelly
					{ "i", 6522, 4 },	-- Deviate Fish
					{ "i", 27439, 3 },	-- Furious Crawdad
					{ "i", 41813, 2 },	-- Nettlefish
					{ "i", 4402, 1 },	-- Small Flame Sac
					{ "i", 2452, 2 },	-- Swiftthistle
					{ "i", 74846, 2 },	-- Witchberries
				},
				["g"] = {
					i(229968),	-- Boonful Banquet (QI!)
					i(230235),	-- Rosa's Notes on Boonful Banquet (QI!)
					i(231263),	-- The Case of the Superstitious and Hungry Pirates (QI!)
					n(231413, {	-- Bottlenose
						["coord"] = { 60.9, 44.7, TANARIS },
					}),
					o(469985, {	-- Ice Block
						["description"] = "In the mountains of Hrothgar's Landing in Icecrown, contains the secret ingredient fish and must be visited for quest completion, even if you grab the fish elsewhere.",
						["coord"] = { 55.4, 10.7, 170 },	-- Hrothgar's Landing
					}),
				},
			}),
			-- Chapter 4
			q(85475, {	-- Secret in the Sands
				["sourceQuest"] = 85195,	-- Pirate Gastronomy
				["qgs"] = {
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
					232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(85476, {	-- Buried Tweasure
				["description"] = "Find clues in the Ruins of Uldum, by a rock to the east of Dunemaul Compound, to the left of Zul'Farakk's entrance, then talk to Yennu in the Gadgetzan inn.",
				["sourceQuest"] = 85475,	-- Secret in the Sands
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					i(231808),	-- Ancient Treasure Notes (QI!)
					o(476815, {	-- Ancient Treasure Note
						["description"] = "In the back right of the Ruins of Uldum in the Valley of the Watchers.",
						["coord"] = { 37.6, 84.1, TANARIS },
					}),
					o(477605, {	-- Ancient Treasure Note
						["description"] = "By a rock to the south-east of Dunemaul Compound's adjacent mountain.",
						["coord"] = { 47.5, 56.5, TANARIS },
					}),
					o(477609, {	-- Ancient Treasure Note
						["description"] = "Around the wall to the left of Zul'Farakk's entrance. Use your Torch of Pyrreth.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 38.8, 22.1, TANARIS },
					}),
					n(232863, {	-- Yennu
						["description"] = "Inside Gadgetzan's Inn.",
						["coord"] = {  52.7, 26.9, TANARIS },
					}),
					i(231819),	-- Celebratory Fireworks (QI!)
					i(231820),	-- Festive Balloons (QI!)
				},
			}),
			q(85502, {	-- Festive Reflections
				["sourceQuest"] = 85476,	-- Buried Tweasure
				["qgs"] = {
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(85503, {	--  A Surprising Investigation
				["description"] = "Speak to the time-displaced visitors, toss letters to eventgoers, speak to Bonenose at the north camp again, then head a bit northeast up the beach to celebrate with Alyx.",
				["sourceQuest"] = 85502,	-- Festive Reflections
				["provider"] = { "n", 226796 },	-- Athelton Jones
				["coord"] = { 61.0, 50.7, TANARIS },
				["g"] = {
					n(233000, {	-- Big Kinook
						["description"] = "By the mole machine.",
						["coord"] = { 63.0, 49.9, TANARIS },
					}),
					n(233008, {	-- Jepetto Joybuzz
						["description"] = "By the Story Time seating.",
						["coord"] = { 63.8, 51.8, TANARIS },
					}),
					n(233002, {	--  Lorewalker Cho
						["description"] = "By the ice rink.",
						["coord"] = { 61.6, 51.0, TANARIS },
					}),
					n(233006, {	-- Maru <Junior Secret Sleuf>
						["description"] = "By the pet kennels.",
						["coord"] = { 61.9, 49.9, TANARIS },
					}),
					n(233007, {	-- Reshad
						["description"] = "On the fashion frenzy stage.",
						["coord"] = { 63.0, 49.2, TANARIS },
					}),
					i(231905),	-- Letters (QI!)
					n(231413, {	-- Bottlenose
						["coord"] = { 60.9, 44.7, TANARIS },
					}),
				},
			}),
		})),
		header(HEADERS.Achievement, 40871, bubbleDownSelf({ ["timeline"] = { "removed 11.0.7.58238" } }, {	-- Assistant to the Assistant Guest Relations Manager
			ach(40871, {	-- Assistant to the Assistant Guest Relations Manager (automated)
				i(231907),	-- Tricked-Out Thinking Cap
			}),
			-- The Case of Misfortune
			o(467403, {	-- Darkmoon Fortune Card
				["description"] = "Behind the crate next to Alyx. After looting this, talk with her, she will tell you to Speak to Alphonse.\n\nYou need to obtain 1 card, it does not matter which one, in order to see gossip options and start the quest.\nThis one is just an example as it is located near Alyx, the main quest giver of the event.",
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["coord"] = { 63.0, 50.2, TANARIS },
				["crs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					230838,	-- Alphonse Constant <Apprentice Cartomancer>
				},
				["g"] = {
					i(229219),	-- Six of Frost
				},
			}),
			q(84882, {	-- Deck Dismay
				["description"] = "Speak to Alphonse after having looted the Six of Frost to unlock this quest. Use the Idol of Ohn'ahra to find more cards scattered around the grounds.",
				["providers"] = {
					{ "n", 230838 },	-- Alphonse Constant <Apprentice Cartomancer>
					-- Need this here so you can link the source item / object to this quest without using debug mode
					{ "i", 229219 },	-- Six of Frost
				},
				["coord"] = { 63.9, 52.4, TANARIS },
				["g"] = {
					o(467083, {	-- Darkmoon Fortune Card
						["description"] = "Under a bench near the Story Time stage.",
						["coord"] = { 63.97, 51.51, TANARIS },
						["g"] = { i(229207) },	-- Two of Fire (QI!)
					}),
					o(467336, {	-- Darkmoon Fortune Card
						["description"] = "By two barrels near the Story Time seating.",
						["coord"] = { 63.77, 51.91, TANARIS },
						["g"] = { i(229210) },	-- Five of Fire (QI!)
					}),
					o(467337, {	-- Darkmoon Fortune Card
						["description"] = "To the right of Leeroy's food stall.",
						["coord"] = { 63.27, 52.26, TANARIS },
						["g"] = { i(229211) },	-- Six of Fire (QI!)
					}),
					o(467339, {	-- Darkmoon Fortune Card
						["description"] = "Behind Brivelthwerp near the ice rink.",
						["coord"] = { 61.91, 51.61, TANARIS },
						["g"] = { i(229213) },	-- Eight of Fire (QI!)
					}),
					o(467351, {	-- Darkmoon Fortune Card
						["description"] = "Between two caravan carts by the front of the grounds.",
						["coord"] = { 61.19, 50.88, TANARIS },
						["g"] = { i(229225) },	-- Four of Earth (QI!)
					}),
					o(467334, {	-- Darkmoon Fortune Card
						["description"] = "By the outhose near the photo-op portals.",
						["coord"] = { 62.14, 49.34, TANARIS },
						["g"] = { i(229208) },	-- Three of Fire (QI!)
					}),
					o(467338, {	-- Darkmoon Fortune Card
						["description"] = "Near the black market walls under the Fashion Frenzy stage.",
						["coord"] = { 63.41, 48.98, TANARIS },
						["g"] = { i(229212) },	-- Seven of Fire (QI!)
					}),
					o(467342, {	-- Darkmoon Fortune Card
						["description"] = "On one of the steps leading down to the Story Time area.",
						["coord"] = { 63.58, 51.00, TANARIS },
						["g"] = { i(229216) },	-- Three of Frost (QI!)
					}),
					o(467075, {	-- Darkmoon Fortune Card
						["description"] = "On the Fashion Frenzy stage to the left.",
						["coord"] = { 63.18, 49.35, TANARIS },
						["g"] = { i(229199) },	-- Two of Air (QI!)
					}),
				},
			}),
			-- The Case of a Good Book
			q(83832, {	-- Torn Dreams
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(83825, {	-- Restoring A Grand Tale
				["sourceQuest"] = 83832,	-- Torn Dreams
				["provider"] = { "n", 231433 },	-- Raenie Fizzlebog
				["coord"] = { 63.1, 52.0, TANARIS },
				["g"] = {
					i(226241),	-- Shredded Green Hills of Stranglethorn (QI!)
					i(226362),	-- Torn Note (Black Market)
					i(226364),	-- Torn Note (Fiona Caravan)
					o(456039, {	-- Crumpled Letter
						["description"] = "Next to the boxes behind Leeroy's tent.",
						["coord"] = { 63.4, 52.4, TANARIS },
						["questID"] = 83837,
						["g"] = { i(226365) },	-- Crumpled Letter
					}),
					o(456032, {	-- Ruffled Paper
						["description"] = "Right by Farmer Yoon, near the Mount Mania.",
						["coord"] = { 63.2, 52.0, TANARIS },
						["questID"] = 83833,
						["g"] = { i(226361) },	-- Next Week's Mount Competition Listing
					}),
					o(456041, {	-- Folded Paper
						["description"] = "Next to the outhouse behind the Fashion Show platform.",
						["coord"] = { 63.6, 47.8, TANARIS },
						["g"] = { i(226236) },	-- Green Hills of Stranglethorn - Page 21 (QI!)
					}),
					i(226232, {	-- Green Hills of Stranglethorn - Page 6 (QI!)
						["description"] = "Drops from any of the Anniversary World Bosses.",
					}),
					i(226233, {	-- Green Hills of Stranglethorn - Page 11 (QI!)
						["description"] = "Drops from any of the Anniversary World Bosses.",
					}),
					o(456036, {	-- Loose Paper
						["description"] = "In a Dog Bowl, in front of the Doghouse.",
						["coord"] = { 61.9, 49.8, TANARIS },
						["g"] = { i(226234) },	-- Green Hills of Stranglethorn - Page 16 (QI!)
					}),
					i(226237, {	-- Green Hills of Stranglethorn - Page 25 (QI!)
						["description"] = "Drops from Sand Devils In the Timeless Tunnel.",
						["crs"] = { 227795 },	-- Sand Devil
					}),
					i(226238, {	-- Green Hills of Stranglethorn - Page 27 (QI!)
						["description"] = "Drops from Sand Devils In the Timeless Tunnel.",
						["crs"] = { 227795 },	-- Sand Devil
					}),
					o(456038, {	-- Wet Paper
						["description"] = "Behind the Story Time Stage, next to the Hearthstone Table.",
						["coord"] = { 64.5, 51.8, TANARIS },
						["g"] = { i(226235) },	-- Green Hills of Stranglethorn - Page 18 (QI!)
					}),
					n(227816, {	-- Cravitz Lorent <Shady Book Dealer>
						["description"] = "Below the Fashion Frenzy platform.",
						["coord"] = { 63.6, 48.8, TANARIS },
						["g"] = {
							i(226242, {	-- Green Hills of Stranglethorn (QI!)
								["description"] = "Ultimately, if you could not be bothered to search for the scattered pages,\nyou can buy this item from a vendor... |CFFFF0000Cheater...|r",
							}),
						},
					}),
				},
			}),
			-- The Loud and Smelly Case
			q(84583, {	-- A Hozen On My Back
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
					232405,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84595, {	-- The Case of the Fur-Getting Wikket
				["description"] = "Talk to Riko, Shademaster Kiryn, then Sully. Visit Gizmo's grave in the Jade Forest, then chase him down to return to Riko. Wait 5 minutes for Riko to send you mail.",
				["sourceQuest"] = 84583,	-- A Hozen On My Back
				["provider"] = { "n", 229749 },	-- Riko
				["coord"] = { 61.9, 50.5, TANARIS },
				["g"] = {
					i(228750),	-- My Journal: The Case of the Fur-Getting Wikket (QI!)
					n(229775, {	-- Sully "The Pickle" McLeary
						["coord"] = { 63.1, 49.4, TANARIS },
					}),
					n(229776, {
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 43.4, 68.8, THE_JADE_FOREST },
						["g"] = { i(228755) },	-- Gizmo (QI!)
					}),
					i(228740),	-- Gizmo the Pure (PET!)
				},
			}),
			-- The Case of an Old Soul
			q(84435, {	-- Nola's Last Wish
				["description"] = "Speak to Lashk by the story time stage, locate Nola's Last Wish south of Tortaka Refuge in Vol'Dun, then used it to summon and speak to Scrollsage Nola's spirit at the underwater Tortollan wedding west of Atal'Dazar.",
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
				["g"] = {
					i(228302),	-- My Journal: Nola's Last Wish (QI!)
					n(229102, {	-- Lashk
						["description"] = "Near the story time stage.",
						["coord"] = { 63.9, 53.5, TANARIS },
					}),
					o(463104, {	-- Nola's Last Wish
						["description"] = "In a pile of scrolls south of Tortaka Refuge in Vol'Dun.",
						["coord"] = { 64.0, 26.0, VOLDUN },
						["g"] = { i(228223)	},	-- Nola's Last Wish (QI!)
					}),
					n(229103, {	-- Scrollsage Nola
						["description"] = "Use Nola's Last Wish to summon and speak to at the underwater Tortollan wedding west of Atal'Dazar.",
						["coord"] = { 24.4, 44.4, ZULDAZAR },
					})
				},
			}),
			-- The Case of Great Aspirations
			q(84932, {	-- A Legacy of Destruction
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232406,	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84933, {	-- From Ashes to Wisdom
				["description"] = "Summon Voidfire with the provided whistle then talk to him in the following locations:\nNear the Ruins of Thaurissan in the Burning Steppes (61.4, 28.7)\nNear the Scar of the Worldbreaker in the Badlands (33.1, 53.0)\nNear the Twilight Breach north of Victor's Point in the Twilight Highlands (38.3, 49.1)\nIn the Quel'Dormir Gardens by the Ruins of Vash'jir in the Shimmering Expanse (38.8, 66.9)",
				["sourceQuest"] = 84932,	-- A Legacy of Destruction
				["provider"] = { "n", 231029 },	-- Voidfire
				["coords"] = {
					{ 61.7, 49.8, TANARIS },
					{ 61.4, 28.7, BURNING_STEPPES },
					{ 33.1, 53.0, BADLANDS },
					{ 38.3, 49.1, TWILIGHT_HIGHLANDS },
					{ 38.8, 66.9, VASHJIR_SHIMMERING_EXPANSE },
				},
				["g"] = { i(231292) },	-- Whelpling Whistle (QI!)
			}),
			-- The Case of a Feathered Friend
			q(84923, {	-- A Bird's Tale
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84924, {	-- A Bird's Tail
				["description"] = "Interact with four feathers hidden around Spires of Arak, Shattrath, Nagrand and Frostfire Ridge in Draenor.",
				["sourceQuest"] = 84923,	-- A Bird's Tale
				["provider"] = { "n", 228273 },	-- Reshad
				["coord"] = { 64.2, 51.3, TANARIS },
				["g"] = {
					i(229958),	-- Decorated Feather (QI!)
					o(469568, {	-- Burnt Feather
						["description"] = "On the alignment controls device atop the Windswept Terrace spire in Spires of Arak directly south of Veil Terokk.",
						["coord"] = { 45.8, 53.6, SPIRES_OF_ARAK },
						["g"] = { i(229408) },	-- Burnt Feather (QI!)
					}),
					o(469569, {	-- Plucked Feather
						["description"] = "On a rock in Shattrath Overlook on the north-west side of Shattrath (Talador).",
						["coord"] = { 29.6, 29.6, TALADOR },
						["g"] = { i(229409) },	-- Plucked Feather (QI!)
					}),
					o(469573, {	-- Frozen Feather
						["description"] = "Atop a seaside mountain in the Elemental Plateau in Nagrand (Draenor).",
						["coord"] = { 83.8, 19.4, DRAENOR_NAGRAND },
						["g"] = { i(229410) },	-- Frozen Feather (QI!)
					}),
					o(469574, {	-- Normal Feather
						["description"] = "On a ridge slightly north of the Horde shipyard in Frostfire Ridge.",
						["coord"] = { 42.1, 67.5, FROSTFIRE_RIDGE },
						["g"] = { i(229411) },	-- Normal Feather (QI!)
					}),
				},
			}),
			-- The Case of Pet Games
			q(84506, {	-- Pet Pursuit
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232407,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84469, {	-- Battle Pet Bingo
				["description"] = "Interact with the Jumping Spider in the Bamboo Wilds in Jade Forest and the Summit Kid atop Neverest Pinnacl in Kun'Lai Summit.",
				["sourceQuest"] = 84506,	-- Pet Pursuit
				["provider"] = { "n", 228276 },	-- Jepetto Joybuzz
				["coord"] = { 62.2, 49.7, TANARIS },
				["g"] = {
					i(228328),	-- Bingo Card (QI!)
					o(464213, {	-- Jumping Spider
						["description"] = "In the Bamboo Wilds, northeast of Pearlfin Village in the Jade Forest.",
						["coord"] = { 64.0, 80.8, THE_JADE_FOREST },
					}),
					o(464218, {	-- Summit Kid
						["description"] = "Atop Neverest Pinnacle in Kun'Lai Summit.",
						["coord"] = { 44.4, 52.5, KUN_LAI_SUMMIT },
					}),
				},
			}),
			-- The Case of Missing Mementos
			q(85477, {	--  Lost and... Found?
				["description"] = "Open the Lost & Found box nest to Alyx then return the items to visitors around the anniversary grounds.",
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
				["g"] = {
					i(231810),	-- Alyx's Lost & Found Notes (QI!)
					o(477139, {	-- Lost & Found
						["coord"] = { 63.0, 50.2, TANARIS },
						["g"] = {
							i(231761, {	-- Crude Ivory Locket (QI!)
								["description"] = "Return this to Mankrik, found by Bartender Bob's stall to the right of the Story Time stage.",
							}),
							i(231764, {	-- Jade Amulet (QI!)
								["description"] = "Return this to John J. Keeshan, found south-east of the Mount Mania stage next to Ariok.",
							}),
							i(231763, {	-- Potion Bottle (QI!)
								["description"] = "Return this to Marin Noggenfogger, who paths around the grounds.",
							}),
							i(231762, {	-- Tiny Mechanical Mouse (QI!)
								["description"] = "Return this to Oglethorpe Obnoticus who paths around the grounds but frequently stops by Moira Thaurissan and the Dark Iron mole machine.",
							}),
							i(231765, {	-- Well-Worn Almanac (QI!)
								["description"] = "Return this to Farmer Yoon, found south of the Mount Mania stage.",
							}),
						},
					}),
					n(228249, {	-- Mankrik
						["coord"] = { 63.5, 52.2, TANARIS },
						["provider"] = { "i", 231761 },	-- Crude Ivory Locket
					}),
					n(228251, {	-- John J. Keeshan
						["coord"] = { 63.4, 51.8, TANARIS },
						["provider"] = { "i", 231764 },	-- Jade Amulet
					}),
					n(228248, {	-- Marin Noggenfogger
						["coord"] = { 63.6, 50.9, TANARIS },
						["provider"] = { "i", 231763 },	-- Potion Bottle
					}),
					n(228247, {	-- Oglethorpe Obnoticus
						["coord"] = { 62.9, 49.7, TANARIS },
						["provider"] = { "i", 231762 },	-- Tiny Mechanical Mouse
					}),
					n(228262, {	-- Farmer Yoon
						["coord"] = { 63.1, 52.0, TANARIS },
						["provider"] = { "i", 231765 },	-- Well-Worn Almanac
					}),
				},
			}),
			-- The Case of Staged Disaster
			q(84985, {	-- Not Ready on Set
				["sourceQuest"] = 83831,	-- Guest Relations Intro HQT
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232408,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Temporary Service Agent>
					232410,	-- Alyx <Volunteer Senior Assistant Lead Guest Relations Manager, Executive Associate Event Coordinator, and Chief Temporary Agent of Timelines and Services>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84912, {	-- The Show Must Go On
				["description"] = "Collect the Mask of the Trickster and the Play Script from on and behind the stage, and the Prop Sword and Conductor's Baton from near the venue entrance.",
				["sourceQuest"] = 84985,	-- Not Ready on Set
				["provider"] = { "n", 171743 },	-- Dapperdew
				["coord"] = { 41.5, 44.8, ARDENWEALD },
				["g"] = {
					i(229387),	-- Trickster's Riddles (QI!)
					o(469334, {	-- Mask of the Trickster
						["description"] = "Behind a wooden wall onstage near the back.",
						["coord"] = { 41.3, 43.8, ARDENWEALD },
						["g"] = { i(229385) },	-- Mask of the Trickster (QI!)
					}),
					o(469327, {	-- Play Script
						["description"] = "On a table to the right in the back of the stage's balcony area.",
						["coord"] = { 41.3, 42.8, ARDENWEALD },
						["g"] = { i(229383) },	-- Play Script (QI!)
					}),
					o(469332, {	-- Prop Sword
						["description"] = "Under the Winter Queen's throne platform.",
						["coord"] = { 42.3, 46.8, ARDENWEALD },
						["g"] = { i(229384) },	-- Prop Sword (QI!)
					}),
					o(469335, {	-- Conductor's Baton
						["description"] = "Next to some drums to the right of the south venue entrance.",
						["coord"] = { 43.3, 46.4, ARDENWEALD },
						["g"] = { i(229386) },	-- Conductor's Baton (QI!)
					}),
				},
			}),
		})),
		header(HEADERS.Achievement, 40979, {	-- No Crate Left Behind
			ach(40979, {	-- No Crate Left Behind
				["sourceQuests"] = {
					83794,	-- Soggy Celebration Crate
					85574,	-- Hazy Celebration Crate
					84624,	-- Sandy Celebration Crate
					84470,	-- Dirt-Caked Celebration Crate
					83931,	-- Battered Celebration Crate
					84426,	-- Waterlogged Celebration Crate
					84767,	-- Charred Celebration Crate
					85523,	-- Mildewed Celebration Crate
					84773,	-- Crystalized Celebration Crate
					84625,	-- Surprisingly Pristine Celebration Crate
					84909,	-- Ghostly Celebration Crate
				},
				["g"] = {
					ach(40873),	-- Crate Insurance Agent
				},
			}),
			header(HEADERS.Quest, 83794, {
				i(228694),	-- Damp Ransom Note
				n(143029, {	-- Nikto <Master Talekeep>
					["coord"] = { 54.3, 54.5, ZULDAZAR },
					["g"] = { i(225996) },	-- Clam Digger
				}),
				o(455761, {	-- Gerald
					["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interract with Gerald and give him the drink.",
					["provider"] = { "i", 225996 },	-- Clam Digger
					["coord"] = { 54.2, 54.2, ZULDAZAR },
					["g"] = {
						o(455768, {	-- Soggy Celebration Crate
							["coord"] = { 54.2, 54.2, ZULDAZAR },
							["questID"] = 83790,
							["g"] = { i(226200) },	-- Soggy Celebration Crate (QS!)
						}),
					},
				}),
				q(83794, {	-- Soggy Celebration Crate
					["provider"] = { "i", 226200 },	-- Soggy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 85574, {
				n(233545, {	-- Curious Haze
					["description"] = "Interact with while dead to bounce up the mountain towards the crate and make it appear.",
					["coord"] = { 21.1, 57.2, NAGRAND },
				}),
				n(233090, {	-- Hazy Celebration Crate
					["description"] = "Only visible while dead.",
					["coords"] = {
						{ 54.0, 58.1, DESOLACE },
						{ 21.0, 60.0, NAGRAND },
					},
					["g"] = { i(232263) },	-- Hazy Celebration Crate (QS!)
				}),
				q(85574, {	-- Hazy Celebration Crate
					["provider"] = { "i", 232263 },	-- Hazy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84624, {
				i(228766),	-- Sandy Ransom Note
				o(465161, {	-- Water-Resistant Receipt of Sale
					["description"] = "Enter the underwater tunnel at 66.3, 86.2 in the Thousand Needles, find the receipt behind some pipes inside.",
					["coord"] = { 64.9, 84.4, THOUSAND_NEEDLES },
					["g"] = { i(228768) },	-- Water-Resistant Receipt
				}),
				q(84624, {	-- Sandy Celebration Crate
					["provider"] = { "i", 228767 },	-- Sandy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84470, {
				i(228321),	-- Dirt-Caked Ransom Note
				o(463653, {	-- Dirt-Caked Celebration Crate
					["description"] = "Enter the Karazhan Crypt at 39.83, 73.11 in Deadwind Pass. Follow the spiraling corridor down until you find the pool of Upside Down Sinners. Cross the pool and the crate will be in the back left of the next room.",
					["coord"] = { 22.4, 83.7, DEADWIND_PASS },
					["g"] = { i(228322) },	-- Dirt-Caked Celebration Crate (QS!)
				}),
				q(84470, {	-- Dirt-Caked Celebration Crate
					["provider"] = { "i", 228322 },	-- Dirt-Caked Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 83931, {
				o(456061, {	-- Battered Celebration Crate
					["description"] = "Outside a worg den near Gjalerbron in Howling Fjord.",
					["coord"] = { 29.4, 6.4, HOWLING_FJORD },
					["g"] = { i(226375) },	-- Battered Celebration Crate (QS!)
				}),
				q(83931, {	-- Battered Celebration Crate
					["provider"] = { "i", 226375 },	-- Battered Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84426, {
				i(228300),	-- Sun-Baked Ransom Note
				o(462417, {	-- Waterlogged Celebration Crate
					["description"] = "Behind a bed on the second floor of an underwater gnomish building off the south-eastern coast of Tanaris.",
					["coord"] = { 69.2, 68.6, TANARIS },
					["g"] = { i(228212) },	-- Waterlogged Celebration Crate (QS!)
				}),
				q(84426, {	-- Waterlogged Celebration Crate
					["provider"] = { "i", 228212 },	-- Waterlogged Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84767, {
				i(228977),	-- Burnt Ransom Note
				o(466438, {	-- Charred Celebration Crate
					["description"] = "On the ground by the bear trampoline in the north-western corner of Mount Hyjal.",
					["coord"] = { 13.6, 33.5, MOUNT_HYJAL },
					["g"] = { i(228976) },	-- Charred Celebration Crate (QS!)
				}),
				q(84767, {	-- Charred Celebration Crate
					["provider"] = { "i", 228976 },	-- Charred Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 85523, {
				i(231888),	-- Mildewed Ransom Note
				o(505260, {	-- Potion of Truth
					["description"] = "Found at the top of Thunder Peak behind Lord Magmathar in Ashenvale. The buff will be lost if you encounter any load screens or try to leave Kalimdor.",
					["coord"] = { 47.9, 38.3, ASHENVALE },
				}),
				o(478090, {	-- Mildewed Celebration Crate
					["description"] = "In a corner within Eldreth Row by the exterior of Dire Maul.\nVisible only with a buff, obtained from the Potion of Truth.",
					["provider"] = { "o", 505260 },	-- Potion of Truth
					["coord"] = {60.4, 35.4, FERALAS },
					["g"] = { i(231886) },	-- Mildewed Celebration Crate (QS!)
				}),
				q(85523, {	-- Mildewed Celebration Crate
					["provider"] = { "i", 231886 },	-- Mildewed Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84773, {
				i(228985),	-- Shiny Ransom Note
				o(466512, {	-- Crystalized Celebration Crate
					["description"] = "Inside Oshu'gun's central chamber in Nagrand (Outland).",
					["coord"] = {35.3, 74.7, NAGRAND },
					["g"] = { i(228983) },	-- Crystalized Celebration Crate (QS!)
				}),
				q(84773, {	-- Crystalized Celebration Crate
					["provider"] = { "i", 228983 },	-- Crystalized Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84625, {
				i(228769),	-- Surprisingly Pristine Ransom Note
				o(465183, {	-- Mysterious Bones
					["description"] = "Behind Andrestrasz's cave in his cave in Silithus, use Perky Pug or other dog battle pets at the coordinates to dig up the bones.",
					["provider"] = { "n", 37865 },	-- Perky Pug
					["coords"] = {
						{ 42.1, 93.4, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Cave Entrance
						{ 44.6, 90.1, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Mysterious Bones
					},
					["g"] = { i(228772) },	-- Mysterious Bones
				}),
				o(465186, {	-- Unmarked Grave
					["description"] = "Use the bones at the Unmarked Grave to receive the crate.",
					["coord"] = { 37.3, 47.7, STORMHEIM },
					["cost"] = { { "i", 228772, 1 } },	-- Mysterious Bones
					["g"] = { i(228770) },	-- Surprisingly Pristine Celebration Crate (QS!)
				}),
				q(84625, {	-- Surprisingly Pristine Celebration Crate
					["provider"] = { "i", 228770 },	-- Surprisingly Pristine Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84909, {
				i(229369),	-- Ghostly Ransom Note
				o(467489, {	-- Ghostly Celebration Crate
					["description"] = "Atop the Seat of the Primus in Maldraxxus, in the back to the right of the portal.",
					["coord"] = { 50.0, 73.8, MALDRAXXUS },
					["g"] = { i(229367) },	-- Ghostly Celebration Crate (QS!)
				}),
				q(84909, {	-- Ghostly Celebration Crate
					["provider"] = { "i", 229367 },	-- Ghostly Celebration Crate
				}),
			}),
		}),
		header(HEADERS.Achievement, 40967, {	-- Ratts' Revenge
			o(182030, {	-- Inert Peculiar Key
				["description"] = "Inside a rotten tree trunk in the far north of Un'Goro Crater. Use your Torch of Pyrreth to reveal it.",
				["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				["coord"] = { 44.5, 8.0, UNGORO_CRATER },
				["g"] = { i(228941) },	-- Inert Peculiar Key
			}),
			hqt(84685, {	-- Talk to the Dalaran Survivor while using the Detective title
				["name"] = "Talk to the Dalaran Survivor while using the Detective title",
				["sourceAchievement"] = 40870,	-- Azeroth's Greatest Detective
				["coord"] = { 54.9, 28.9, DORNOGAL },
			}),
			q(84684, {	-- Ratts' Race
				["description"] = "Find 3 notes scattered around Azj-Kahet then confront Ratts in Pillar-nest Vosh.",
				["sourceQuest"]	= 84685,	-- Talk to the Dalaran Survivor with the Detective title
				["provider"] = { "n", 230042 },	-- Dalaran Survivor
				["coord"] = { 54.9, 28.9, DORNOGAL },
				["g"] = {
					i(228934),	-- Carefully Penned Note (QI!)
					o(466118, {	-- Unfinished Note
						["description"] = "#1. In a cave in Azj'Kahet in the center of 5 Rotglow Settlers.",
						["coord"] = { 69.3, 93.3, AZJ_KAHET },
						["g"] = { i(228935) },	-- Unfinished Note (QI!)
					}),
					o(466119, {	-- Hastily Scrawled Note
						["description"] = "#2. High up on a ridge overlooking the City of Threads.",
						["coord"] = { 31.5, 20.8, NERUBAR },
						["g"] = { i(228936) },	-- Hastily Scrawled Note (QI!)
					}),
					o(466120, {	-- Water-Resistant Note
						["description"] = "#3. Underwater in the center of a lake on the right side of the Azj-Kahet-Hallowfall transition.",
						["coord"] = { 50.7, 86.6, HALLOWFALL },
						["g"] = { i(228937) },	-- Water-Resistant Note (QI!)
					}),
					o(466128, {	-- Peculiar Gem
						["description"] = "#4. To turn in the quest, enter Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall.",
						["coords"] = {
							{ 55.1, 19.0, AZJ_KAHET },	-- Cave Entrance
							{ 56.4, 17.5, AZJ_KAHET },	-- Wall Tunnel
						},
					}),
					i(228938),	-- Peculiar Gem
				},
			}),
			i(44124, {	-- Peculiar Key
				["description"] = "Once reformed, go to the entrance of the Karazhan Catacombs in Deadwind Pass and use your Torch of Pyrreth by the gate to teleport into a secret scenario.",
				["cost"] = {
					{ "i", 228941, 1 }, -- Inert Peculiar Key
					{ "i", 228938, 1 },	-- Peculiar Gem
				},
			}),
			m(46, {	-- Karazhan Catacombs (this makes sense to have as a root map when it's the minilist)
				["description"] = "Deep into the catacombs the bike is just sitting there out of reach, but is surrounded by 12 basins which can light up with orbs if enough actions are performed.",
				["coord"] = { 46.3, 69.1, DEADWIND_PASS },
				["providers"] = {
					{ "i",  44124 },	-- Peculiar Key
					{ "i", 208092 },	-- Torch of Pyrreth
				},
				["g"] = {
					--1 O'clock Basin
					hqt(84676, {	-- The Light of Their Love
						["name"] = "Acquire The Light of Their Love buff stacked 3 times",
						["description"] = "Acquire The Light of Their Love buff (spellID 153715) 3 times from visiting areas relevant to Olgra, Mankrik's wife. Stand at these areas with your Torch of Pyrreth until a stack is gained.\n1. The Humble Monument in Northern Barrens.\n2. Young Olgra in Draenor.\n3. Decimator Olgra in Maldraxxus.\n\nFully lights up the 1 O'clock basin.",
						["sourceQuest"] = 84684,	-- Ratts' Race
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coords"] = {
							{ 55.0, 40.2, NORTHERN_BARRENS },
							{ 74.2, 37.5, DRAENOR_NAGRAND },	-- Before (35170) Consumed by Vengence is completed
							{ 49.2, 48.0, DRAENOR_NAGRAND },	-- After (35170) Consumed by Vengence is completed
							{ 27.3, 61.3, MALDRAXXUS },
						},
						["crs"] = {
							82688,	-- Olgra
							175815,	-- Decimator Olgra
						},
					}),
					--2 O'clock Basin
					hqt(84677, {	-- Acquire the Key of Shadows
						["name"] = "Acquire the Key of Shadows from the Ny'Alotha Obelisk",
						["description"] = "Requires the 1 O'clock basin to have been completed to see the obelisk personally.\n1. Acquire the Twitching Eyaball or All-Seeing Eyes toys\n2. Acquire a Perky Pug with either the Dogg-Saron costume from Vashti the Wandering Merchant in Aszuna or the Yipp-Saron costume from Hallow's End (or the AH.)\n3. Bring these items OR find a friend who has them and visit the Ny'Alotha Obelisk above the Seat of Knowledge in the Vale of Eternal Blossoms (BFA).\n4. Have someone summon a perky pug and use the toys, then /pray in front of the obelisk to be granted the Key of Shadows.\n\nThere is a 5-15 minute delay even if you do everything right. Everyone within 10 yards should get the key if anyone in range does it correctly.\n\nFully lights up the 2 O'clock basin",
						["providers"] = {
							{ "n", 153297 },	-- Ny'Alotha Obelisk
							{ "n", 37865 },	-- Perky Pug
						},
						["g"] = {
							n(153297, {	-- Ny'Alotha Obelisk
								["coord"] = { 83.7, 27.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
								["providers"] = {
									{ "i", 175140 },	-- All Seeing Eyes
									{ "i", 168123 },	-- Twitching Eyeball
								},
								["cost"] = {
									{ "i", 229413, 1 },	-- "Dogg-Saron" Costume
									{ "i", 116812, 1 },	-- "Yipp-Saron" Costume
								},
								["g"] = {
									i(53156, {	-- Key of Shadows
										["description"] = "Opens both doors in the room with the Red Button.",
									}),
								},
							}),
						},
					}),
					--3 O'clock Basin
					header(HEADERS.Item, 228967, bubbleDownSelf( {["sourceQuest"] = 84677 }, {	-- Acquire the Key of Shadows
						["description"] = "1. Use the Key of Shadows to enter the room to the left of the Red Button. Fish up an Astral key from the bowl on the left bookshelf. Open the Astral chest in the same room, use the goggles.\n2. Interact with any of the consoles around the catacombs until you get a new actionbar. Can't see it? Look in your spellbook for a Number Sequence spell. Click the console again to submit your code.\n3. Enter the codes on adjacent consoles to open each of the chests, each Piece of Hate will give you an orb at the 3 O'clock basin, fully lighting with 9 orbs.",
						["provider"] = { "i", 53156 },	-- Key of Shadows
						["g"] = {
							i(228965),	-- Astral Key
							o(466393, {	-- Astral Chest
								["provider"] = { "i", 228965 },	-- Astral Key
								["coord"] = { 48.4, 79.5, 46 },	-- Karazhan Catacombs
								["g"] = { i(228966) },	-- Starry-Eyed Goggles
							}),
							o(466400, {	-- Property of Elder Ko'nani
								["description"] = "Code to open at the adjacent decryption console: 88224646",
								["coord"] = { 48.9, 80.3, 46 },	-- Karazhan Catacombs
								["questID"] = 84757,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466413, {	-- Encrypted Puzzle Box
								["description"] = "Code to open at the adjacent decryption console: 17112317",
								["coord"] = { 42.9, 70.6, 46 },	-- Karazhan Catacombs
								["questID"] = 84758,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466479, {	-- Encrypted Chest
								["description"] = "Code to open at the adjacent decryption console: 10638",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 49.5, 65.1, 46 },	-- Karazhan Catacombs
								["questID"] = 84768,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466495, {	-- Encrypted Chest
								["description"] = "Code to open at the adjacent decryption console: 19019",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 67.4, 84.3, 46 },	-- Karazhan Catacombs
								["questID"] = 84771,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466484, {	-- Encrypted Chest
								["description"] = "Code to open at the adjacent decryption console: 5661",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 56.3, 62.6, 46 },	-- Karazhan Catacombs
								["questID"] = 84769,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466420, {	-- Rubenstein's Safe
								["description"] = "Code to open at the adjacent decryption console: 52233",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 64.9, 48.3, 46 },	-- Karazhan Catacombs
								["questID"] = 84766,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466497, {	-- Encrypted Chest
								["description"] = "Code to open at the adjacent decryption console: 51567",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 70.3, 55.4, 46 },	-- Karazhan Catacombs
								["questID"] = 84772,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							o(466489, {	-- Encrypted Chest
								["description"] = "Code to open at the adjacent decryption console: 115",
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 66.3, 15.2, 46 },	-- Karazhan Catacombs
								["questID"] = 84770,	-- Orb
								["g"] = { i(228967) },	-- Piece of Hate
							}),
							header(HEADERS.Quest, 84786, {	-- Acquire the Piece of Hate from the Lucky slot machine consoles
								["description"] = "In the felcycle room is over a dozen slot machine consoles around the walls, any of them work for this coin. Variations of 777, 77777, 777777 etc are correct answers but the machines seem to only randomly pay out a coin.\nYour luck can allegedly be increased by obtaining various lucky items, how many items you need is unknown but if you see a 'You feel lucky' emote in chat, you should be good.\nNo chest will spawn, you will be given the Piece of Hate directly.",
								["providers"] = {
									{ "i", 5373 },		-- Lucky Charm
									{ "i", 200265 },	-- Lucky Dragon's Claw
									{ "i", 198857 },	-- Lucky Duck
									{ "i", 198400 },	-- Lucky Horseshoe
									{ "i", 138382 },	-- Lucky Rat's Tooth
									{ "i", 138385 },	-- Lucky Shirt
									{ "i", 202046 },	-- Lucky Tortollan Charm
								},
								["g"] = {
									i(228967),	-- Piece of Hate
									hqt(84786, {	-- Orb
										["name"] = "Acquire the Piece of Hate from the Lucky slot machine consoles",
									}),
								},
							}),
						},
					})),
					--4 O'clock Basin
					hqt(84780, {	-- Use the Scroll of Fel Binding at Uther's Tomb
						["name"] = "Use the Scroll of Fel Binding at Uther's Tomb",
						["description"] = "1. Use the Scroll of Fel Binding sold by Vashti the Wandering Merchant in Aszuna (Broken Isles) right outside Uther's Tomb in the Western Plaugelands.\n2. You will die, return to your corpse and fight the Doomguard while inspecting the four writings on the floor of the tomb. Anyone can summon the demon and writings will stay visible as long as it lives.\n\nFully lights up the 4 O'clock basin.",
						["cost"] = { { "i", 228987, 1 }	},	-- Scroll of Fel Binding
						["coord"] = { 52.1, 85.1, WESTERN_PLAGUELANDS },
					}),
					--5 O'clock Basin
					q(84781, {	-- Master of Secrets
						["description"] = "1. Visit the Timeless isle and find Zarhym in the Cavern of Lost Spirits. Talk to Zarhym, a rare ghostly skull inside the entrance to enter the spirit realm.\n2. Within 5 minutes, Navigate to the back of the cave while avoiding ghosts to find Jeremy Feasel. Stay nearby to him, and you will not exit the spirit realm even if your 5 minutes buff expires.\n3. Defeat Jeremy in a pet battle using only 'secret' pets from the list. If someone in your group beats him in a battle, that also counts and he will grant you the quest too on talking to him. The pets MUST be level 25.\n\nFully lights up the 5 O'clock basin.\n\nValid pets:\nBaa'l, Bumbles, Filthy Slime, Francois, Gizmo the Pure, Glimr, Hungering Claw, Jenafur, Lil' Abom, Nelthara, Phoenix Wishwing, Renny, Snowclaw Cub, Spyragos, Sun Darter Hatchling, Taptaf, Terky, Tobias, Wicker Pup",
						["sourceQuest"] = 84780,	-- Use the Scroll of Fel Binding at Uther's Tomb
						["providers"] = {
							{ "n", 232048 },	-- Jeremy Feasel
							{ "n", 141941 },	-- Baa'l
							{ "n", 143730 },	-- Bumbles
							{ "n", 160704 },	-- Filthy Slime
							{ "n", 134406 },	-- Francois
							{ "n", 229779 },	-- Gizmo the Pure
							{ "n", 169514 },	-- Glimr
							{ "n", 111984 },	-- Hungering Claw
							{ "n", 159783 },	-- Jenafur
							{ "n", 179008 },	-- Lil' Abom
							{ "n", 204367 },	-- Nelthara
							{ "n", 189117 },	-- Phoenix Wishwing
							{ "n", 163897 },	-- Renny
							{ "n", 192343 },	-- Snowclaw Cub
							{ "n", 191381 },	-- Spyragos
							{ "n", 61087 },		-- Sun Darter Hatchling
							{ "n", 139770 },	-- Taptaf
							{ "n", 16445 },		-- Terky
							{ "n", 208643 },	-- Tobias
							{ "n", 143189 },	-- Wicker Pup
						},
						["coords"] = {
							{ 43.1, 41.4, TIMELESS_ISLE },
							{ 53.3, 56.8, 555 },	-- Cavern of Lost Spirits
							{ 39.6, 38.4, 555 },	-- Cavern of Lost Spirits
						},
						["crs"] = 71876,
						["g"] = { i(228995) },	-- Golden Muffin
					}),
					--6 O'clock Basin
					hqt(84811, {	-- Acquire the Ancient Shaman Blood
						["name"] = "Acquire the Ancient Shaman Blood",
						["description"] = "Use your Torch of Pyrreth at various alters to summon a Spirit of Collections. Perform several actions to appease the spirits on each alter of acquisition, an action may require summoning a mount, pet, or toy associated with each spirit, emoting in some way, or changing your transmog.\n\nSomeone in your phase can appease a spirit for you if nearby, but they must fulfill each part of a spirit's appeasement themselves. If one person covers mount, and another covers pet for example, it will not work.\n\nEach appeased spirit will add an orb to the 6 O'clock basin, and looting the final chest will light it fully.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["g"] = {
							hqt(84809, {	-- Appease the Spirit of Collections (Blood)
								["description"] = "Confirmed actions to appease:\nMounts: Any with 'blood' in their name\n\nPets: Any with 'blood' in their name\n\nToys: Throbbing Blood Orb",
								["name"] = "Appease the Spirit of Collections (Blood)",
								["coord"] = { 77.1, 46.3, NORTHERN_STRANGLETHORN },
								["crs"] = 230430,
							}),
							hqt(84807, {	-- Appease the Spirit of Collections (Corruption)
								["description"] = "Confirmed actions to appease:\nOutfit: Cloak of Overwhelming Corruption (or a cloak with the same appearance)\n\nEmotes: /cower with the spirit targeted\n\nMounts: Any with 'corrupted' in their name\n\nPets: Any with 'corrupted' in their name\n\nToys: Ring of Broken Promises, Accursed Tome of the Sargerei",
								["name"] = "Appease the Spirit of Collections (Corruption)",
								["coord"] = { 77.5, 43.9, NORTHERN_STRANGLETHORN },
								["crs"] = 230424,
							}),
							hqt(84810, {	-- Appease the Spirit of Collections (Shadow)
								["description"] = "Confirmed actions to appease:\nOutfit: Cloak of the Black Void (or a cloak with the same appearance)\n\nEmotes: /smirk with the spirit targeted\n\nPets: Lesser Voidcaller, Sir Shady Mrrgglton Junior, Voidwiggler\n\nToys: Shadowy Disguise, Void Totem",
								["name"] = "Appease the Spirit of Collections (Shadow)",
								["coord"] = { 78.1, 46.3, NORTHERN_STRANGLETHORN },
								["crs"] = 230440,
							}),
							hqt(84806, {	-- Appease the Spirit of Collections (Sin)
								["description"] = "Confirmed actions to appease:\nOutfit: Any sinstone back cosmetic\n\nPets: Sinheart\n\nToys: Bondable Sinstone",
								["name"] = "Appease the Spirit of Collections (Sin)",
								["coord"] = { 78.3, 44.0, NORTHERN_STRANGLETHORN },
								["crs"] = 230423,
							}),
							hqt(84808, {	-- Appease the Spirit of Collections (Temptation)
								["description"] = "Confirmed actions to appease:\nOutfit: Be naked\n\nEmotes: /flirt with the spirit targeted\n\nPets: Sister of Temptation\n\nToys: Moroes' Famous Polish, Steamy Romance Novel Kit",
								["name"] = "Appease the Spirit of Collections (Temptation)",
								["coord"] = { 77.1, 44.9, NORTHERN_STRANGLETHORN },
								["crs"] = 230425,
							}),
							o(466808, {	-- Chest of Acquisitions
								["description"] ="Appears by the wall nearby the Shadow alter once each spirit has been appeased. Use your goggles to see it.",
								["sourceQuests"] = {
									84809,	-- Appease the Spirit of Collections (Blood)
									84807,	-- Appease the Spirit of Collections (Corruption)
									84810,	-- Appease the Spirit of Collections (Shadow)
									84806,	-- Appease the Spirit of Collections (Sin)
									84808,	-- Appease the Spirit of Collections (Temptation)
									84781,	-- Master of Secrets
								},
								["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
								["coord"] = { 78.2, 47.7, NORTHERN_STRANGLETHORN },
								["g"] = { i(229007)	},	-- Ancient Shaman Blood
							}),
						},
					}),
					--7 O'clock Basin
					hqt(84823, {	-- Acquire the Warden's Mirror
						["name"] = "Acquire the Warden's Mirror",
						["description"] = "Empower your owl pet with the Owl statues in Aszuna then enter the Vault of the Wardens to find a Sentry Statue. Use it to solve a puzzle to receive the mirror.\n\nEmpowering your owl will add 4 orbs to the 7 O'clock basin, and solving the sentry puzzle will light it fully.",
						["maps"] = { AZSUNA, 710, 711, 712 },	-- Vault of the Wardens
						["g"] = {
							header(HEADERS.Object, 254262, {	-- Owl of the Watchers
								["description"] = "On the Isle of the Watchers in Aszuna are 9 Owl of the Watchers statues, on any shard, only 4 of them will be interactable at any given time.\n\nYou need an owl pet, the Fledgling Warden Owl sold by the Wardens quartermaster on the same island is confirmed to work, but other owls may work too.\n\nSummon your owl and don't let it disappear by flying too far away. Find an interactable statue and sit in the aura it creates with your pet until an audible sound cue plays and a secret magnifying glass icon appears over your head. Do that again for 4 different statue auras, Red, Green, Blue and Purple.\nYou'll know you're done when your owl has a distinct white orb above their head. Unlocks 4 orbs at Basin 7.",
								["provider"] = { "n", 97128 },	-- Fledgling Warden Owl
								["coords"] = {	-- Likely objectids are 254261 - 254269
									{ 44.18, 72.41, AZSUNA },
									{ 40.54, 73.15, AZSUNA },
									{ 40.52, 75.19, AZSUNA },
									{ 37.10, 82.16, AZSUNA },
									{ 43.24, 85.30, AZSUNA },
									{ 43.66, 87.51, AZSUNA },
									{ 50.45, 91.67, AZSUNA },
									{ 47.48, 84.74, AZSUNA },
									{ 45.97, 84.06, AZSUNA },
								}, -- TODO: if we REALLY want to, we could source objectids for each statue but it'd be trial and error with coordinates since wowhead is missing data and debugger doesn't report.
								["g"] = {
									hqt(39353, {	-- Empower your owl with the red statue aura
										["name"] = "Empower your owl with the red statue aura",
										["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
									}),
									hqt(26741, {	-- Empower your owl with the green statue aura
										["name"] = "Empower your owl with the green statue aura",
										["description"] = "Unlocks an orb at the 7 O'clock basin.",	-- Orb
										["_drop"] = { "r" } -- drop Alliance tag from API
									}),
									hqt(40721, {	-- Empower your owl with the blue statue aura
										["name"] = "Empower your owl with the blue statue aura",
										["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
									}),
									hqt(26704, {	-- Empower your owl with the purple statue aura
										["name"] = "Empower your owl with the purple statue aura",
										["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
									}),
								},
							}),
							o(466943, {	-- Sentry Statue
								["description"] = "You must first have completed the previous steps with the watcher statues and empowering your owl.\n1. Clear Vault of the Wardens (any difficulty) with your owl pet summoned through to last boss.\n2. Pick up Elune's light from a statue in the corner of Cordana's arena and QUICKLY get back up to the first boss's room.\n3. Backtrack from the first boss room towards the dungeon entrance, enter the newly opened door on your right, the statue will sit in the center.",
								["provider"] = { "n", 97128 },	-- Fledgling Warden Owl
								["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
								["g"] = {
									i(229046, {	-- Sentry Statue
										["description"] = "Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors."
									}),
								},
							}),
							hqt(84916, {	-- Place the Sentry Statue in the Vault of Mirrors
								["name"] = "Place the Sentry Statue in the Vault of Mirrors",
								["description"] = "Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors.",
								["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
							}),
							o(466960, {	-- Treasure of the Wardens
								["description"] = "Once you place the Sentry Statue in the Vault of Mirrors, a 5x5 grid of watcher statues will appear. You need to make each statue descend into the floor, but each statue you click will toggle the state of 4 other statues.\n\nThere are addons and website tools to solve this, for your sanity, use one. You may solve this secret in a group.\n\nFully lights up the 7 O'clock basin.",
								["providers"] = {
									{ "n", 97128 },	-- Fledgling Warden Owl
									{ "i", 208092 },	-- Torch of Pyrreth
								},
								["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
								["crs"] = 109300,	-- Sentry
								["g"] = { i(229054) },	-- Warden's Mirror
							}),
						},
					}),
					--8 O'clock Basin
					o(466975, {	-- Enigma Machine
						["description"] = "On the left side of the hallway after the second stairwell.",
						["coord"] = { 59.9, 42.6, 46 },	-- Karazhan Catacombs
						["g"] = {
							hqt(84829, {	-- Insert the Ancient Shaman Blood into the Enigma Machine
								["name"] = "Insert the Ancient Shaman Blood into the Enigma Machine",
								["sourceQuest"] = 84811,	-- Acquire the Ancient Shaman Blood
								["cost"] = { { "i", 229007, 1 } },	-- Ancient Shaman Blood
							}),
							hqt(84830, {	-- Insert the Warden's Mirror into the Enigma Machine
								["name"] = "Insert the Warden's Mirror into the Enigma Machine",
								["sourceQuest"] = 84823,	-- Acquire the Warden's Mirror
								["cost"] = { { "i", 229054, 1 } },	-- Warden's Mirror
							}),
							hqt(84837, {	-- Decipher the Enigma Machine
								["name"] = "Decipher the Enigma Machine",
								["description"] ="1. Hit begin on the console, then hit submit. A randomized number of rats will spawn in the catacombs.\n2. Count the number of Rats in the whole catacombs, use a targeting macro to make sure you don't miss one. There will also be Catacombs Rats, those DO NOT COUNT. Kill both types of rats once you are sure of your count so they cannot interfere with pressure plates.\n3. Depending on the number of rats, you need to drag a certain number of statues to a specific pressure plate and stack them, the beacon color will shift from Blue->Green->Yellow->Orange->Purple as a plate has 1->2->3->4->5 entities stack on it.\n4. Head back to the Enigma Machine and submit, you will be electrocuted if you get it wrong, leave and reset the instance if you do, restarting at lock 1. Otherwise, continue counting the next set of rats and submitting results using info from the next column until you've completed all 7 locks.\n\nPlate 1 is at 71.6, 20.1 at the top of the map in the felcycle room\nPlate 2 is at 68.5, 34.2 right at the entrance to the felcycle room\nPlate 3 is at 73.6, 43.0 behind the locked gate on the right of the map, use your Relic of Crystal Connections to teleport to the humming crystal in the room by targeting it\nPlate 4 is at 68.8, 50.9 in the center of the hallway opposite the felcycle room\nPlate 5 is at 73.6, 65.3 in the flooded dead end hallway right as you enter the catacombs\nPlate 6 is at 60.2, 71.6 on the left side of the hallway before the cat room\nPlate 7 is at 47.8, 78.9 in the corner of the room with the Astral chest\n\n[# Rats | Lock 1| Lock 2| Lock 3|\n[1 Rats | 1 > P1 | 1 > P2 | 1 > P3 |\n[2 Rats | 1 > P2 | 1 > P4 | 1 > P6 |\n[3 Rats | 1 > P3 | 1 > P6 | 2 > P2 |\n[4 Rats | 1 > P4 | 2 > P1 | 2 > P5 |\n[5 Rats | 1 > P5 | 2 > P3 | 3 > P1 |\n[6 Rats | 1 > P6 | 2 > P3 | 3 > P4 |\n[7 Rats | 1 > P7 | 2 > P7 | 1 > P1 |\n[8 Rats | 2 > P1 | 3 > P2 | 1 > P4 |\n[9 Rats | 2 > P2 | 3 > P4 | 1 > P7 |\n[10Rats| 2 > P3 | 3 > P6 | 2 > P3 |\nExample: Counting 2 rats during Lock 2, stack 1 statue on pressure plate 4.\n\nFully lights up the 8 O'clock basin.",
								["sourceQuests"] = {
									84829,	-- Insert the Ancient Shaman Blood into the Enigma Machine
									84830,	-- Insert the Warden's Mirror into the Enigma Machine
								},
								["provider"] = { "i", 228996 },	-- Relic of Crystal Connections
								["g"] = {
									n(230653, {	-- Greed Statue
										["description"] = "Right of the entrance of the felcycle room.",
										["coord"] = { 70.6, 34.5, 46 },	-- Karazhan Catacombs
									}),
									n(230654, {	-- Guardian Statue
										["description"] = "Opposite the Enigma Machine.",
										["coord"] = { 61.2, 47.9, 46 },	-- Karazhan Catacombs
									}),
									n(230655, {	-- Watcher  Statue
										["description"] = "On the right inside the room ahead of the Red Button.",
										["coord"] = { 43.4, 64.9, 46 },	-- Karazhan Catacombs
									}),
									n(230652, {	-- Nature Statue
										["description"] = "In the room with the Astral Chest, left of the Red Button.",
										["coord"] = { 49.3, 75.9, 46 },	-- Karazhan Catacombs
									}),
									n(230657, {	-- Rage Statue
										["description"] = "At the bottom of the entrance stairwell.",
										["coord"] = { 70.3, 79.1, 46 },	-- Karazhan Catacombs
									}),
									n(230596, {	-- Rat
										["description"] = "This is a |cff4caf50VALID|r rat, it counts!",
									}),
									n(230599, {	-- Catacombs Rat
										["description"] = "This is an |cffff0000INVALID|r rat, it DOESN'T count!",
									}),
								},
							}),
						},
					}),
					--9 O'clock Basin
					o(467191, {	-- Encrypted Chest
						["description"] = "Return to Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall.\n\nUse your Starry-Eyed goggles to reveal a translucent platform, use your Relic of Crystal Connections on the humming crystal to get up to it.\n\nCode to open at the adjacent decryption console: 84847078.\n\nFully lights the 9 O'clock Basin.",
						["sourceQuest"] = 84837,	-- Decipher the Enigma Machine
						["providers"] = {
							{ "i", 228966 },	-- Relic of Crystal Connections
							{ "i", 228996 },	-- Starry-Eyed Goggles
						},
						["coords"] = {
							{ 55.1, 19.0, AZJ_KAHET },	-- Cave Entrance
							{ 56.4, 17.5, AZJ_KAHET },	-- Wall Tunnel
							{ 56.1, 17.9, AZJ_KAHET },	-- Encrypted Chest
						},
						["questID"] = 84854, -- Fully lights the 9 O'clock basin
						["g"] = {
							i(229348),	-- Incognitro, the Indecipherable Felcycle (MOUNT!)
							ach(40967),		-- Ratts' Revenge
						},
					}),
					--10 O'clock Basin
					n(230070, {	-- Red Button
						["description"] = "Interacting with the button starts a 20 second timer, refreshing on clicking again. The orb to the left of the button reports how many times the button has been clicked within that window.",
						["coord"] = { 47.4, 68.3, 46 },	-- Karazhan Catacombs
						["g"] = {
							hqt(84702, {	-- Red Button x100
								["name"] = "Press the Red Button 100 times",
								["description"] = "Unlocks an orb at the 10 O'clock basin."	-- Orb
							}),
							hqt(84703, {	-- Red Button x1000
								["name"] = "Press the Red Button 1000 times",
								["description"] = "Unlocks an orb at the 10 O'clock basin."	-- Orb
							}),
						},
					}),
					--11 O'clock Basin
					--12 O'clock Basin
					o(475116, {	-- Ordinary Pebble
						["description"] = "These pebbles can be found throughout the catacombs.\n1. Halfway down the entrance stairwell, behind a candelabra sitting on the bannister.\n2. Behind the frame of the archway halfway down the entrance stairwell, opposite the skeleton sitting on the other side of the arch.\n3. To the left of the tilted Replica Owl of the Watchers in the first room after the entrance stairs.\n4. On the inside corner of the doorway to the cat room, interactable through the gate.\n5. In the hand of a skeleton in the corner of the hallway leading to the Felcycle.\n6. On a shelf in the back in the Nature statue room.",
						["coords"] = {
							{ 70.1, 90.3, 46 },	-- Stair Pebble
							{ 70.3, 81.0, 46 },	-- Arch Pebble
							{ 70.5, 61.7, 46 },	-- Statue Pebble
							{ 56.3, 73.3, 46 },	-- Catgate Pebble
							{ 70.9, 53.9, 46 },	-- Skelly Pebble
							{ 47.0, 78.1, 46 },	-- Shelf Pebble
						},
					}),
					i(228953),	-- Rosy Spat
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(GUEST_RELATIONS, {
		q(85564),	-- Talking to Kelsey during (85060) Pirate Foods and Superstitions.
		q(85565),	-- Talking to Mrs. Gant during (85060) Pirate Foods and Superstitions.
		q(85411),	-- Speaking to Bottlenose second option during (85195) Pirate Gastronomy.
		q(85412),	-- Speaking to Bottlenose third option during (85195) Pirate Gastronomy.
		q(85414),	-- Acquire 2 Swiftthistle for (85195) Pirate Gastronomy.
		q(85415),	-- Acquire 2 Witchberries for (85195) Pirate Gastronomy.
		q(85416),	-- Acquire 1 Small Flame Sac for (85195) Pirate Gastronomy.
		q(85417),	-- Acquire 2 Aromatic Fish Oil for (85195) Pirate Gastronomy.
		q(85418),	-- Acquire 5 Bloodfin Catfish for (85195) Pirate Gastronomy.
		q(85419),	-- Acquire 4 Deviate Fish for (85195) Pirate Gastronomy.
		q(85420),	-- Acquire 2 Nettlefish for (85195) Pirate Gastronomy.
		q(85421),	-- Acquire 3 Furious Crawdads for (85195) Pirate Gastronomy.
		q(84617, name(HEADERS.Achievement, 40873)),	-- Accepting Harder Puzzles from Alyx. This unlocks notes on the bulletin board next to Alyx.
		-- q(83824, name(HEADERS.Item, 226242)),	-- Triggered when restoring the 'Green Hills of Stranglethorn' by gathering all the missing pages. (automated)
		-- Felcycle HQTs
		q(84718),	-- Flags and unflags CONSTANTLY all over the catacombs.
		q(85169),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
		q(85170),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
		q(85171),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
		q(85172),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
	}),
})));
