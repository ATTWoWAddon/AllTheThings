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
		cn = "宾客关系",
	},
});

root(ROOTS.Secrets, n(GUEST_RELATIONS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	["description"] = "***Using Debug Mode is recommended.***\n",
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(40871, {	-- Assistant to the Assistant Guest Relations Manager (automated)
				i(231907),	-- Tricked-Out Thinking Cap
			}),
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
			ach(40872, {	-- I Saved the Party and All I Got Was This Lousy Hat (automated)
				i(231906),	-- High-Alert Thinking Cap
			}),
			ach(40967),		-- Ratts' Revenge
		}),
		n(QUESTS, {
			-- Week 1: Tutorial Questline --
			q(84143, {	-- Lost and Busy
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84144, {	-- Tat Big Meanie
				["description"] = "Requires Idol of Ohn'ahra. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84143 },	-- Lost and Busy
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					o(456767, {	-- Red Hair
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.1, 51.7, TANARIS },
						["groups"] = { i(227364), },	-- Red Hair (QI!)
					}),
					o(455310, {	-- Hear Historic Tales at the Storyteller Stage!
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.0, 51.5, TANARIS },
						["groups"] = { i(227363), },	-- Hear Historic Tales at the Storyteller Stage! (QI!)
					}),
					n(226775, {	-- Ratts <Former Event Coordinator>
						["coord"] = { 64.0, 51.7, TANARIS },
					}),
					o(456820, {	-- Strange Torch
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 63.7, 47.8, TANARIS },
						["groups"] = { i(227443), },	-- Strange Torch (QI!)
					}),
				},
			}),
			q(84419, {	-- To da Ruins!
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84144 },	-- Tat Big Meanie
				["coord"] = { 63.2, 52.4, TANARIS },
			}),
			q(84393, {	-- Da Stick of Revealing
				["description"] = "Requires Torch of Pyrreth. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84419 },	-- To da Ruins!
				["coord"] = { 35.1, 78.2, TANARIS },
			}),
			q(84363, {	-- Tweasure Hunt
				["description"] = "Activate Torch of Pyrreth at each of the Dig Sites.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84393 },	-- Da Stick of Revealing
				["coord"] = { 37.2, 78.9, TANARIS },
				["g"] = {
					o(459333, {	-- Jeweled Eye
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 40.8, 70.5, TANARIS },
						["groups"] = { i(227785), },	-- Jeweled Eye (QI!)
					}),
					n(228810, {	-- Tanaris Sandworm
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 42.2, 72.0, TANARIS },
						["groups"] = { i(227790), },	-- Cool Guts (QI!)
					}),
					o(459368, {	-- Half-Burried Chest
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 45.0, 64.6, TANARIS },
						["groups"] = { i(227775), },	-- Golden Chalice (QI!)
					}),
					n(228791, {	-- Ancient Statue
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 52.3, 45.3, TANARIS },
						["groups"] = { i(227777), },	-- Fragment of an Ancient Statue (QI!)
					}),
				},
			}),
			q(84521, {	-- Thoughtful Pursuits
				["description"] = "Requires Tricked-Out Thinking Cap. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuests"] = { 84363 },	-- Tweasure Hunt
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					i(228617),	-- Benatauk's Clue Book (QI)
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
				},
			}),
			q(84868, {	-- A Whiff of Help
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuests"] = { 84521 },	-- Thoughtful Pursuits
				["coord"] = { 63.3, 52.4, TANARIS },
				["crs"] = 230711,	-- Maru (Spirit)
			}),
			q(84236, {	-- The Great Detective
				["provider"] = { "n", 226766 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84237, {	-- The "Great" Detective
				["description"] = "Exhaust dialogue with all Team Solid npcs at 63.8, 51.0 until the quest shows 48% clue progress. Interact with the Abandoned Beach Chair at 66.0, 59.5. Use your Torch of Pyrreth at 66.23, 40.64 to reveal Herrkrop then exhaust dialogue again with nearby npcs. Finally, talk to Athelton Jones to complete the quest requirements.",
				["provider"] = { "n", 226796 },	-- Athektin Jones
				["sourceQuests"] = { 84236 },	-- The Great Detective
				["coord"] = { 63.9, 51.7, TANARIS },
				["crs"] = {
					226804,	-- Duryllin
					226805,	-- Ellanoir
					226803,	-- Juddson Rakes
					226810,	-- Herrkrop
					226812,	-- Scrapes
					226810,	-- Nat Pagle
					226814,	-- Julia Henning
					226796,	-- Athelton Jones
				},
			}),
			q(84278, {	-- Tracking Quest
				["description"] = "Use the Goblin Transport at 68.0, 40.8 to travel to Borean Tundra, then find Rexxar at 77.3, 46.1.",
				["provider"] = { "n", 226766 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["sourceQuests"] = { 84237 },	-- The 'Great' Detective
				["coord"] = { 63.0, 50.2, TANARIS },
				["g"] = {
					i(227551),	-- Note from Rexxar (QI!)
					o(457025, { ["coord"] = { 68.0, 40.8, TANARIS } }),	-- Pre-Calibrated Goblin Transport Vessel
				},
			}),
			q(84296, {	-- The Trail's Gone Cold
				["description"] = "Locate 3 diary pages around the marked shed, (85.9, 34.0), (88.1, 34.6) - Use Torch, (88.1, 34.6). Interact with the spyglass atop the Glimmering Pillar in Sholazar Basin at 49.7, 36.0. Use your Torch of Pyreth at 16.0, 58.8 in Icecrown. Finally, Talk to Rexxar with your Spirit's Whistle.",
				["sourceQuests"] = { 84278 },	-- Tracking Quest
				["provider"] = { "n", 226952  },	-- Rexxar
				["coord"] = { 77.3, 46.1, BOREAN_TUNDRA },
				["crs"] = {
					228550,	-- Rexxar
					228634,	-- Scrapes
				},
				["g"] = {
					i(227664),	-- Spirit's Whistle (QI!)
					o(457156, {	-- Torn Note
						["coord"] = { 85.9, 34.0, BOREAN_TUNDRA },
						["g"] = {
							i(227665),	-- Torn Diary, Page 4 (QI!)
						}
					}),
					o(457161, {	-- Torn Note
						["description"] = "Use Torch of Pyrreth to reveal the page.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 85.9, 33.9, BOREAN_TUNDRA },
						["g"] = {
							i(227672),	-- Torn Diary, Page 7 (QI!)
						}
					}),
					o(457160, {	-- Torn Note
						["coord"] = { 88.1, 34.6, BOREAN_TUNDRA },
						["g"] = {
							i(227671),	-- Torn Diary, Page 6 (QI!)
						}
					}),
					--[[ Need objectid
					o(999, {	-- Mounted Spyglass
						["coord"] = { 49.7, 36.0, SHOLAZAR_BASIN },
					}),
					]]--
				},
			}),
			q(84334, {	-- Warn the Detective
				["provider"] = { "n", 226766 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["sourceQuests"] = { 84296 },	-- The Trail's Gone Cold
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84336, {	-- Spot The Difference
				["description"] = "Speak to Hemet, Leeroy, and Addie to suss out the detectives' stories, then accuse one. Chase them to 59.66, 62.18 and kill them.",
				["qgs"] = {
					226796,	-- Athelton Jones
					228661,	-- Athelton Jones (!)
				},
				["sourceQuests"] = { 84334 },	-- Warn the Detective
				["coord"] = { 61.0, 50.6, TANARIS },
				["crs"] = {
					228250,	-- Hemet Nesingwary Sr.
					158192,	-- Leeroy Jenkins
					227731,	-- Addie Fizzlebog
					228553,	-- Y'illiya Xennin
				},
			}),
			-- End of Chapter 1 --
		}),
		-- Week 2: November 4th --
		n(VENDORS, {
			n(226766, {	-- Benatauk <Unco Benny>
				["description"] = "You need to get up to the quest 'A Whiff of Help' in the chain and accept it in order to buy the items.",
				["sourceQuests"] = { 84868 },	-- A Whiff of Help (Quest Accepted)
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					i(229351),	-- Spiritual Incense
					i(229375),	-- Neural Enlarger
				},
			}),
		}),
		header(HEADERS.Achievement, 40979,{
			ach(40873),		-- Crate Insurance Agent
			ach(40979),		-- No Crate Left Behind
			header(HEADERS.Quest, 83794, {
				i(228694),	-- Damp Ransom Note
				n(143029, {	-- Nikto <Master Talekeep>
					["coord"] = { 54.3, 54.5, ZULDAZAR },
					["groups"] = { i(225996), },	-- Clam Digger
				}),
				o(455761, {	-- Gerald
					["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interract with Gerald and give him the drink.",
					["provider"] = { "i", 225996 },	-- Clam Digger
					["coord"] = { 54.2, 54.2, ZULDAZAR },
					["g"] = {
						o(455768, {	-- Soggy Celebration Crate
							["coord"] = { 54.2, 54.2, ZULDAZAR },
							["questID"] = 83790,
							["g"] = {
								i(226200),	-- Soggy Celebration Crate (QS!)
							},
						}),
					},
				}),
				q(83794, {	-- Soggy Celebration Crate
					["provider"] = { "i", 226200 },	-- Soggy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 85574, {
				n(233090, {	-- Hazy Celebration Crate
					["description"] = "Only visible while dead.",
					["coord"] = { 54.0, 58.1, DESOLACE },
					["g"] = {
						i(232263),	-- Hazy Celebration Crate (QS!)
					},
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
					["g"] = {
						i(228768),	-- Water-Resistant Receipt
					},
				}),
				n(91079, {	-- Vashti the Wandering Merchant <General Goods>
					["description"] = "Can be found pathing up and down the road between Felblaze Ingress and The Ruined Sanctum in Azuna.",
					["coord"] = { 65.2, 36.4, AZSUNA },
					["g"] = {
						i(228986, {	-- Aesthetician's Coupon Book
							["cost"] = 5000000,	-- 500g
						}),
						i(229413), 	-- Bottle of Steam
						i(229413, {	-- "Dogg-Saron" Costume
							["cost"] = 250000000,	-- 25,000g
						}),
						i(228989, {	-- Exotic Critter Taming License
							["cost"] = 5000000,	-- 500g
						}),
						i(228767, {	-- Sandy Celebration Crate (QS!)
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
				q(84624, {	-- Sandy Celebration Crate
					["provider"] = { "i", 228767 },	-- Sandy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84470, {
				i(228321),	-- Dirt-Caked Ransom Note
				o(463653, {	-- Dirt-Caked Celebration Crate
					["description"] = "Enter the Karazhan Crypt at 39.83, 73.11 in Deadwind Pass. Follow the spiraling corridor down until you find the pool of Upside Down Sinners. Cross the pool and the crate will be in the back left of the next room.",
					["coord"] = { 22.43, 83.74, DEADWIND_PASS },
					["g"] = {
						i(228322),	-- Dirt-Caked Celebration Crate (QS!)
					},
				}),
				q(84470, {	-- Dirt-Caked Celebration Crate
					["provider"] = { "i", 228322 },	-- Dirt-Caked Celebration Crate
				}),
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(GUEST_RELATIONS, {
		q(84617),	-- Accepting Harder Puzzles from Alyx. This unlocks notes on the bulletin board next to Alyx.
	}),
})));