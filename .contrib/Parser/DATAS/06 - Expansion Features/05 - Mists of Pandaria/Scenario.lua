-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
SCENARIOS = createHeader({
	readable = "Scenarios",
	constant = "SCENARIOS",
	minilist_ignore = true,
	icon = 647976,
	text = {
		en = [[~SCENARIOS]],
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_LANDFALL, n(SCENARIOS, {
		["crs"] = { 78709 },	-- Lorewalker Fu <Scenario Storyteller>
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(6943),	-- Queuing Spree
				a(ach(6874, {	-- Scenaturday (A)
					title(206),	-- <Name> the Scenaturdist
					crit(21499, {	-- A Brewing Storm
						["maps"] = { 447 },
					}),
					crit(21500, {	-- Greenstone Village
						["maps"] = { 448 },
					}),
					crit(21501, {	-- Unga Ingoo
						["maps"] = { 450 },
					}),
					crit(21502, {	-- Brewmoon Festival
						["maps"] = { 452 },
					}),
					crit(21503, {	-- Crypt of Forgotten Kings
						["maps"] = { 481 },
					}),
					crit(21504, {	-- Arena of Annihilation
						["maps"] = { 480 },
					}),
					crit(21023, {	-- Theramore's Fall
						["maps"] = { 483 },
					}),
				})),
				h(ach(7509, {	-- Scenaturday (H)
					title(206),	-- <Name> the Scenaturdist
					crit(21499, {	-- A Brewing Storm
						["maps"] = { 447 },
					}),
					crit(21500, {	-- Greenstone Village
						["maps"] = { 448 },
					}),
					crit(21501, {	-- Unga Ingoo
						["maps"] = { 450 },
					}),
					crit(21502, {	-- Brewmoon Festival
						["maps"] = { 452 },
					}),
					crit(21503, {	-- Crypt of Forgotten Kings
						["maps"] = { 481 },
					}),
					crit(21504, {	-- Arena of Annihilation
						["maps"] = { 480 },
					}),
					crit(21506, {	-- Theramore's Fall
						["maps"] = { 483 },
					}),
				})),
			}),
			-- Scenario Maps
			m(447, {	-- A Brewing Storm
				["crs"] = {
					78777,	-- Lorewalker Shin <Heroic Scenario Storyteller>
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(7252),	-- A Brewing Storm
						ach(7257),	-- Don't Shake the Keg
						ach(8310),	-- Heroic: A Brewing Storm
						ach(7261),	-- The Perfect Pour
						ach(7258),	-- Party of Six
					}),
				},
			}),
			m(487, {	-- A Little Patience
				n(ACHIEVEMENTS, {
					ach(7988),	-- A Little Patience
					ach(7989),	-- Bubbletrapped!
					ach(7990),	-- Cannonballer
					ach(7992),	-- I Used To Love Them
					ach(7993),	-- We've Been Dancin'
					ach(7991),	-- Which Came First?
				}),
			}),
			m(480, {	-- Arena of Annihilation
				n(ACHIEVEMENTS, {
					ach(7271),	-- Arena of Annihilation
					ach(7273),	-- Beat the Heat
					ach(7272, {	-- In the Eye of the Tiger
						crit(19342),	-- Kill Cloudbender Kobo
						crit(20432),	-- Kill Maki Waterblade
						crit(20433),	-- Kill Satay Byu
					}),
				}),
			}),
			m(451, {	-- Assault on Zan'vess
				n(ACHIEVEMENTS, {
					ach(8016),	-- Assault on Zan'vess
					ach(8017),	-- For the Swarm
				}),
			}),
			m(524, {	-- Battle on the High Seas
				["crs"] = { 78777 },	-- Lorewalker Shin <Heroic Scenario Storyteller>
				["g"] = {
					n(ACHIEVEMENTS, {
						a(ach(8314)),	-- Battle on the High Seas (A)
						h(ach(8315)),	-- Battle on the High Seas (H)
						a(ach(8364)),	-- Heroic: Battle on the High Seas (A)
						h(ach(8366)),	-- Heroic: Battle on the High Seas (H)
						ach(8347),	-- Keep those Bombs Away! (From Me)
					}),
				},
			}),
			m(452, {	-- Brewmoon Festival
				n(ACHIEVEMENTS, {
					ach(6931, {	-- Binan Village All-Star
						crit(21330),	-- Briaw Shan
						crit(21331),	-- Barrel of Fireworks
						crit(21335),	-- Vale Marksman
						crit(21332),	-- Karasang Wild Brew
						crit(21334),	-- Tian Disciple
						crit(21333),	-- Derpa Derpa
					}),
					ach(6923),	-- Brewmoon Festival
					ach(7385, {	-- Pub Crawl
						["sym"] = {{"meta_achievement",
							7231,	-- Spill No Evil
							6930,	-- Yaungolian Barbecue
							6931,	-- Binan Village All-Star
							7232,	-- The Keg Runner
							7239,	-- Monkey in the Middle
							7248,	-- Monkey See, Monkey Kill
							7257,	-- Don't Shake the Keg
							7258,	-- Party of Six
							7261,	-- The Perfect Pour
							7266,	-- Save it for Later
							7267,	-- Perfect Delivery
						}},
						["groups"] = {
							i(87528),	-- Honorary Brewmaster Keg (TOY!)
						},
					}),
					ach(6930),	-- Yaungolian Barbecue
				}),
			}),
			m(523, {	-- Blood in the Snow
				["crs"] = {
					78777,	-- Lorewalker Shin <Heroic Scenario Storyteller>
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(8316),	-- Blood in the Snow
						ach(8329),	-- Heed the Weed
						ach(8330),	-- Hekima's Heal-Halter
						ach(8312),	-- Heroic: Blood in the Snow
					}),
				},
			}),
			m(481, {	-- Crypt of Forgotten Kings
				["maps"] = { 482 },	-- Crypt of Forgotten Kings
				["crs"] = {
					78777,	-- Lorewalker Shin <Heroic Scenario Storyteller>
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(7522),	-- Crypt of Forgotten Kings
						ach(7276),	-- Fancy Footwork
						ach(8368),	-- Fight Anger with Anger
						ach(8311),	-- Heroic: Crypt of Forgotten Kings
						ach(7275),	-- It's a Trap!
					}),
				},
			}),
			m(488, {	-- Dagger in the Dark
				["maps"] = { 489 },	-- Dagger in the Dark
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(8009),	-- Dagger in the Dark
						ach(7987),	-- No Egg Left Behind
						ach(7986),	-- You Mean That Wasn't a Void Zone?
						ach(7984),	-- Watery Grave
					}),
				},
			}),
			m(498, {	-- Domination Point / Lion's Landing
				["maps"] = { 486 },	-- Lion's Landing
				["g"] = {
					n(ACHIEVEMENTS, {
						h(ach(8013)),	-- Domination Point
						a(ach(8010)),	-- Lion's Landing
						a(ach(8011)),	-- Number Five is Alive (A)
						h(ach(8014)),	-- Number Five is Alive (H)
						a(ach(8012, {	-- Waste Not, Want Not (A)
							crit(22520),	-- Lever-Acton Boomstick
							crit(22521),	-- Reaver Bomb
							crit(22522),	-- Rocket Launcher
							crit(22523),	-- Armor Power-Up
							crit(22524),	-- Berserk Power-Up
							crit(22526),	-- Restoration Power-Up
							crit(22527),	-- Speed Power-Up
						})),
						h(ach(8015, {	-- Waste Not, Want Not (H)
							crit(22520),	-- Lever-Acton Boomstick
							crit(22521),	-- Reaver Bomb
							crit(22522),	-- Rocket Launcher
							crit(22523),	-- Armor Power-Up
							crit(22524),	-- Berserk Power-Up
							crit(22526),	-- Restoration Power-Up
							crit(22527),	-- Speed Power-Up
						})),
					}),
				},
			}),
			m(520, {	-- Dark Heart of Pandaria
				["maps"] = { 521 },	-- Dark Heart of Pandaria
				["crs"] = {
					78777,	-- Lorewalker Shin <Heroic Scenario Storyteller>
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(8319),	-- Accelerated Archaeology
						ach(8317),	-- Dark Heart of Pandaria
						ach(8318),	-- Heroic: Dark Heart of Pandaria
					}),
				},
			}),
			m(448, {	-- Greenstone Village
				n(ACHIEVEMENTS, {
					ach(7265),	-- Greenstone Village
					ach(7267),	-- Perfect Delivery
					ach(7266),	-- Save it for Later
				}),
			}),
			m(522, {	-- The Secrets of Ragefire
				["crs"] = {
					78777,	-- Lorewalker Shin <Heroic Scenario Storyteller>
				},
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(8327),	-- Heroic: The Secrets of Ragefire
						ach(8295),	-- The Few, the Proud, the Gob Squad
						ach(8294),	-- The Secrets of Ragefire
					}),
				},
			}),
			m(483, {	-- Theramore's Fall
				n(ACHIEVEMENTS, {
					a(ach(7526)),	-- Kite Flight (A)
					h(ach(7529)),	-- Kite Fight (H)
					a(ach(7527)),	-- No Tank You (A)
					h(ach(7530)),	-- No Tank You (H)
					a(ach(7523)),	-- Theramore's Fall (A)
					h(ach(7524)),	-- Theramore's Fall (H)
				}),
			}),
			m(450, {	-- Unga Ingoo
				n(ACHIEVEMENTS, {
					ach(7239),	-- Monkey in the Middle
					ach(7248),	-- Monkey See, Monkey Kill (automated)
					ach(7231),	-- Spill No Evil
					ach(7232),	-- The Keg Runner
					ach(7249),	-- Unga Ingoo
				}),
				n(TREASURES, {
					o(212278),	-- Protected Unga Keg
				}),
			}),
			n(SCENARIO_COMPLETION, {
				["description"] = "Mini Guide to farm both boxes:\nStep 1: Create a class-trial character.\nStep 2: Enter the portal room to travel to Jade Forest & fly to the Vale of Eternal Blossoms capital.\nStep 3: Pick up the Quest 'Heroic Deeds' in the middle of the capital.\nStep 4: Fly to the Seat of Knowledge and pick up the quest 'The King and the Council'.\nStep 5: Complete the 'Blood in the Snow' scenario on heroic.\nStep 6: Turn in the quest 'The King and the Council' and pick up the follow-up quest 'The Warchief and the Darkness'.\nStep 7: Complete the \"Dark heart of Pandaria\" scenario on either normal or heroic.\nStep 8: Turn in all quests, open all the boxes, logout & delete the trial character. Repeat Step 1-8.\nYou can create 4 trial characters per hour and 12 per week (based on realtime).\nBonus: The Trial Char can also be used to kill the World Boss on the Timless Isle. Talk to Chromie at the Seat Entrance for a free teleport.",
				["maps"] = {
					VALE_OF_ETERNAL_BLOSSOMS,
				},
				["g"] = {
					i(98133, {	-- Greater Cache of Treasures
						["description"] = "Rewarded for completing |cFFFFD700The King and the Council|r and |cFFFFD700The Warchief and the Darkness|r quests.\nSee Rewards Tab description for a detailed farming guide.",
						["g"] = {
							n(BACK, {
								i(92881),	-- Bladesnap Drape
								i(89503),	-- Greenstone Drape
								i(93048),	-- Brewcarrier Cloak
								i(93102),	-- Brewfather Cloak
								i(89501),	-- Brewmoon Cloak
								i(92879),	-- Bubblebrew Cloak
								i(93067, {	-- Firebinder Cloak						— 2019-03-05//
									["timeline"] = { REMOVED_6_0_2 },				-- While it maybe was obtainable during MoP, I would like proof of somebody obtaining it since 11.0 -- Gold 8th May 2025
								--	["description"] = "Extremely Rare",
								}),
								i(89500),	-- Fireheart Cloak
								i(92878),	-- Lavasoul Cloak
								i(93113, {	-- Lightning Rod Drape					— 2022-03-24
									["timeline"] = { REMOVED_6_0_2 },				-- While it maybe was obtainable during MoP, I would like proof of somebody obtaining it since 11.0 -- Gold 8th May 2025
								--	["description"] = "Extremely Rare",
								}),
								i(89502),	-- Stormbound Cloak
								i(92880),	-- Stormcrier Cloak
							}),
							filter(CLOTH, {
								------ Brewfather ------
								i(93109),	-- Brewfather Cord
								i(93106),	-- Brewfather Cowl
								i(93105),	-- Brewfather Handwraps
								i(93107),	-- Brewfather Leggings
								i(93103),	-- Brewfather Robe
								i(93104),	-- Brewfather Sandals
								i(93108),	-- Brewfather Shoulderpads
								i(93110),	-- Brewfather Wristwraps
								------ Brewmoon ------
								i(89492),	-- Brewmoon Cord
								i(89493),	-- Brewmoon Cowl
								i(89494),	-- Brewmoon Handwraps
								i(89495),	-- Brewmoon Leggings
								i(89496),	-- Brewmoon Robe
								i(89497),	-- Brewmoon Sandals
								i(89498),	-- Brewmoon Shoulderpads
								i(89499),	-- Brewmoon Wristwraps
								------ Bubblebrew ------
								i(92870),	-- Bubblebrew Cord
								i(92871),	-- Bubblebrew Cowl
								i(92872),	-- Bubblebrew Handwraps
								i(92873),	-- Bubblebrew Leggings
								i(92874),	-- Bubblebrew Robe
								i(92875),	-- Bubblebrew Sandals
								i(92876),	-- Bubblebrew Shoulderpads
								i(92877),	-- Bubblebrew Wristwraps
								------ Cordwoven ------
								i(92869),	-- Cordwoven Cord
								i(92868),	-- Cordwoven Cowl
								i(92867),	-- Cordwoven Handwraps
								i(92866),	-- Cordwoven Leggings
								i(92865),	-- Cordwoven Robe
								i(92864),	-- Cordwoven Sandals
								i(92863),	-- Cordwoven Shoulderpads
								i(92862),	-- Cordwoven Wristwraps
								------ Firewool ------
								i(89491),	-- Firewool Cord
								i(89490),	-- Firewool Cowl
								i(89489),	-- Firewool Handwraps
								i(89488),	-- Firewool Leggings
								i(89487),	-- Firewool Robe
								i(89486),	-- Firewool Sandals
								i(89485),	-- Firewool Shoulderpads
								i(89484),	-- Firewool Wristwraps
								------ Yak Wool ------
								i(93074),	-- Yak Wool Cord
								i(93071),	-- Yak Wool Cowl
								i(93070),	-- Yak Wool Handwraps
								i(93072),	-- Yak Wool Leggings
								i(93068),	-- Yak Wool Robe
								i(93069),	-- Yak Wool Sandals
								i(93073),	-- Yak Wool Shoulderpads
								i(93075),	-- Yak Wool Wristwraps
							}),
							filter(FINGER_F, {
								i(92883),	-- Bladesnap Seal
								i(89505),	-- Greenstone Seal
								i(93066),	-- Brewcarrier Ring
								i(89507),	-- Brewmoon Signet
								i(93112),	-- Brewfather Signet
								i(92885),	-- Bubblebrew Signet
								i(93077),	-- Firebinder Ring
								i(89506),	-- Fireheart Ring
								i(92884),	-- Lavasoul Ring
								i(89504),	-- Stormbound Ring
								i(92882),	-- Stormcrier Ring
							}),
							filter(LEATHER, {
								------ Forgotten ------
								i(89475),	-- Forgotten Bindings
								i(89474),	-- Forgotten Boots
								i(89473),	-- Forgotten Britches
								i(89472),	-- Forgotten Gloves
								i(89471),	-- Forgotten Hood
								i(89470),	-- Forgotten Jerkin
								i(89469),	-- Forgotten Shoulders
								i(89468),	-- Forgotten Waistband
								------ Hozen-Crafted ------
								i(89476),	-- Hozen-Crafted Bindings
								i(89477),	-- Hozen-Crafted Boots
								i(89478),	-- Hozen-Crafted Britches
								i(89480),	-- Hozen-Crafted Hood
								i(89479),	-- Hozen-Crafted Gloves
								i(89481),	-- Hozen-Crafted Jerkin
								i(89482),	-- Hozen-Crafted Shoulders
								i(89483),	-- Hozen-Crafted Waistband
								------ Hozen-Speed ------
								i(92853),	-- Hozen-Speed Bindings
								i(92852),	-- Hozen-Speed Boots
								i(92851),	-- Hozen-Speed Britches
								i(92850),	-- Hozen-Speed Gloves
								i(92849),	-- Hozen-Speed Hood
								i(92848),	-- Hozen-Speed Jerkin
								i(92847),	-- Hozen-Speed Shoulders
								i(92846),	-- Hozen-Speed Waistband
								------  Hozen-Stitched ------
								i(93085),	-- Hozen-Stitched Bindings			— 2019-10-25
								i(93079),	-- Hozen-Stitched Boots
								i(93082),	-- Hozen-Stitched Britches
								i(93080),	-- Hozen-Stitched Gloves
								i(93081),	-- Hozen-Stitched Hood
								i(93078),	-- Hozen-Stitched Jerkin
								i(93083),	-- Hozen-Stitched Shoulders
								i(93084),	-- Hozen-Stitched Waistband
								------ Jinyu-Polished ------
								i(92854),	-- Jinyu-Polished Bindings
								i(92855),	-- Jinyu-Polished Boots
								i(92856),	-- Jinyu-Polished Britches
								i(92857),	-- Jinyu-Polished Gloves
								i(92858),	-- Jinyu-Polished Hood
								i(92859),	-- Jinyu-Polished Jerkin
								i(92860),	-- Jinyu-Polished Shoulders
								i(92861),	-- Jinyu-Polished Waistband
								------ Mogubreaker ------
								i(93056),	-- Mogubreaker Bindings
								i(93050),	-- Mogubreaker Boots
								i(93053),	-- Mogubreaker Britches				— 2021-12-12
								i(93051),	-- Mogubreaker Gloves
								i(93052),	-- Mogubreaker Hood					— 2019-05-16
								i(93049),	-- Mogubreaker Jerkin
								i(93054),	-- Mogubreaker Shoulders
								i(93055),	-- Mogubreaker Waistband
							}),
							filter(MAIL, {
								------ Danio-Scale ------
								i(92838),	-- Danio-Scale Belt
								i(92839),	-- Danio-Scale Bracers
								i(92840),	-- Danio-Scale Gauntlets			— 2021-10-22
								i(92841),	-- Danio-Scale Greaves
								i(92842),	-- Danio-Scale Helm
								i(92843),	-- Danio-Scale Legguards
								i(92844),	-- Danio-Scale Spaulders			— 2021-11-13
								i(92845),	-- Danio-Scale Vest
								------ Earthstriker ------
								i(92837),	-- Earthstriker Belt
								i(92836),	-- Earthstriker Bracers
								i(92835),	-- Earthstriker Gauntlets
								i(92834),	-- Earthstriker Greaves
								i(92833),	-- Earthstriker Helm
								i(92832),	-- Earthstriker Legguards
								i(92831),	-- Earthstriker Spaulders
								i(92830),	-- Earthstriker Vest
								------ Scarshell ------
								i(89460),	-- Scarshell Belt					— 2023-08-10 Gold
								i(89461),	-- Scarshell Bracers				— 2023-08-10 Gold
								i(89462),	-- Scarshell Gauntlets				— 2023-08-10 Gold
								i(89463),	-- Scarshell Greaves
								i(89464),	-- Scarshell Helm					— 2023-08-10 Gold
								i(89465),	-- Scarshell Legguards
								i(89466),	-- Scarshell Spaulders				— 2021-11-13
								i(89467),	-- Scarshell Vest					— 2023-08-10 Gold
								------ Stormbrew ------
								i(89459),	-- Stormbrew Belt
								i(89458),	-- Stormbrew Bracers
								i(89457),	-- Stormbrew Gauntlets
								i(89456),	-- Stormbrew Greaves
								i(89455),	-- Stormbrew Helm
								i(89454),	-- Stormbrew Legguards
								i(89453),	-- Stormbrew Spaulders
								i(89452),	-- Stormbrew Vest
								------ Stormshaper ------
								i(93063),	-- Stormshaper Belt
								i(93064),	-- Stormshaper Bracers				— 2022-01-25
								i(93059),	-- Stormshaper Gauntlets
								i(93058),	-- Stormshaper Greaves
								i(93060),	-- Stormshaper Helm					— 2019-10-25
								i(93061),	-- Stormshaper Legguards			— 2022-09-11
								i(93062),	-- Stormshaper Spaulders
								i(93057),	-- Stormshaper Vest
								------ Swashbuckling ------
								i(93092),	-- Swashbuckling Belt
								i(93093),	-- Swashbuckling Bracers
								i(93088),	-- Swashbuckling Gauntlets
								i(93087),	-- Swashbuckling Greaves
								i(93089),	-- Swashbuckling Helm
								i(93090),	-- Swashbuckling Legguards
								i(93091),	-- Swashbuckling Spaulders
								i(93086),	-- Swashbuckling Vest
							}),
							filter(NECK_F, {
								i(92889),	-- Bladesnap Neck
								i(89511),	-- Greenstone Neck
								i(93065),	-- Brewcarrier Choker
								i(93111),	-- Brewfather Necklace
								i(89509),	-- Brewmoon Necklace
								i(92887),	-- Bubblebrew Necklace					— 2019-11-15
								i(93076),	-- Firebinder Collar
								i(89508),	-- Fireheart Collar
								i(92886),	-- Lavasoul Collar
								i(89510),	-- Stormbound Choker
								i(92888),	-- Stormcrier Choker
							}),
							filter(PLATE, {
								------ Bladesnap ------
								i(92821),	-- Bladesnap Breastplate
								i(92820),	-- Bladesnap Gauntlets
								i(92819),	-- Bladesnap Girdle
								i(92818),	-- Bladesnap Helm					— 2019-03-05
								i(92817),	-- Bladesnap Legplates
								i(92816),	-- Bladesnap Pauldrons
								i(92815),	-- Bladesnap Sabatons
								i(92814),	-- Bladesnap Vambraces
								------ Greenstone ------
								i(89443),	-- Greenstone Breastplate
								i(89442),	-- Greenstone Gauntlets
								i(89441),	-- Greenstone Girdle
								i(89440),	-- Greenstone Helm
								i(89439),	-- Greenstone Legplates
								i(89438),	-- Greenstone Pauldrons
								i(89437),	-- Greenstone Sabatons
								i(89435),	-- Greenstone Vambraces
								------ Jinyu-Forged ------
								i(92822),	-- Jinyu-Forged Breastplate
								i(92823),	-- Jinyu-Forged Gauntlets
								i(92824),	-- Jinyu-Forged Girdle
								i(92825),	-- Jinyu-Forged Helm
								i(92826),	-- Jinyu-Forged Legplates			— 2022-03-08
								i(92827),	-- Jinyu-Forged Pauldrons
								i(92828),	-- Jinyu-Forged Sabatons
								i(92829),	-- Jinyu-Forged Vambraces
								------ Lightning Rod ------
								i(93115),	-- Lightning Rod Breastplate		— 2021-12-10
								i(93117),	-- Lightning Rod Gauntlets
								i(93121),	-- Lightning Rod Girdle
								i(93118),	-- Lightning Rod Helm
								i(93119),	-- Lightning Rod Legplates
								i(93120),	-- Lightning Rod Pauldrons			— 2022-01-18
								i(93116),	-- Lightning Rod Sabatons
								i(93122),	-- Lightning Rod Vambraces
								------ Mogu-Wrought ------
								i(89444),	-- Mogu-Wrought Breastplate			— 2021-12-19
								i(89445),	-- Mogu-Wrought Gauntlets
								i(89446),	-- Mogu-Wrought Girdle				— 2021-11-12
								i(89447),	-- Mogu-Wrought Helm
								i(89448),	-- Mogu-Wrought Legplates
								i(89449),	-- Mogu-Wrought Pauldrons
								i(89450),	-- Mogu-Wrought Sabatons
								i(89451),	-- Mogu-Wrought Vambraces
								------ Yaungolian ------
								i(93094),	-- Yaungolian Breastplate
								i(93096),	-- Yaungolian Gauntlets
								i(93100),	-- Yaungolian Girdle
								i(93097),	-- Yaungolian Helm
								i(93098),	-- Yaungolian Legplates
								i(93099),	-- Yaungolian Pauldrons
								i(93095),	-- Yaungolian Sabatons
								i(93101),	-- Yaungolian Vambraces
							}),
							n(WEAPONS, {
								i(93140),	-- Scavenged Pandaren Axe
								i(93142),	-- Scavenged Pandaren Axe
								i(93130),	-- Scavenged Pandaren Broadaxe
								i(93135),	-- Scavenged Pandaren Crossbow
								i(93138),	-- Scavenged Pandaren Dagger
								i(93127),	-- Scavenged Pandaren Greatsword
								i(93134),	-- Scavenged Pandaren Gun
								i(93128),	-- Scavenged Pandaren Hammer
								i(93139),	-- Scavenged Pandaren Knuckles
								i(93143),	-- Scavenged Pandaren Knuckles
								i(93137),	-- Scavenged Pandaren Mace
								i(93144),	-- Scavenged Pandaren Mace
								i(93132),	-- Scavenged Pandaren Scepter
								i(93125),	-- Scavenged Pandaren Spear
								i(93141),	-- Scavenged Pandaren Spear
								i(93131),	-- Scavenged Pandaren Spellblade
								i(93126),	-- Scavenged Pandaren Staff
								i(93129),	-- Scavenged Pandaren Staff
								i(93136),	-- Scavenged Pandaren Sword
							--	i(93145),	-- Scavenged Pandaren Sword (Nobody has it, not even with Quantum -- Gold 8th May 2025)
								i(93133),	-- Scavenged Pandaren Wand
							}),
						},
					}),
					i(98546, {	-- Bulging Heroic Cache of Treasures
						["description"] = "Rewarded for completing |cFFFFD700Heroic Deeds|r quest.\nMouseover the Rewards Tab located ATT > Expansion Features > MoP > Scenarios > Rewards for a detailed farming guide.",
						["g"] = {
							n(BACK, {
								i(98237),	-- Doubtcrusher Drape
								i(98226),	-- Heartlander's Cloak
								i(98172),	-- Mist Splitter's Cloak
								i(98191),	-- Sha-Seeker Cloak
								i(98248),	-- Thunder Bastion Drape
							}),
							filter(CLOTH, {
								------ Heartlander's ------
								i(98233),	-- Heartlander's Cord
								i(98230),	-- Heartlander's Cowl
								i(98229),	-- Heartlander's Handwraps
								i(98231),	-- Heartlander's Leggings
								i(98227),	-- Heartlander's Robe
								i(98228),	-- Heartlander's Sandals
								i(98232),	-- Heartlander's Shoulderpads
								i(98234),	-- Heartlander's Wristwraps
								------ Jinyu Seer's ------
								i(98198),	-- Jinyu Seer's Cord
								i(98195),	-- Jinyu Seer's Cowl
								i(98194),	-- Jinyu Seer's Handwraps
								i(98196),	-- Jinyu Seer's Leggings
								i(98192),	-- Jinyu Seer's Robe
								i(98193),	-- Jinyu Seer's Sandals
								i(98197),	-- Jinyu Seer's Shoulderpads
								i(98199),	-- Jinyu Seer's Wristwraps
							}),
							filter(FINGER_F, {
								i(98247),	-- Doubtcrusher Seal
								i(98236),	-- Heartlander's Signet
								i(98190),	-- Mist Splitter's Ring
								i(98201),	-- Sha-Seeker Ring
								i(98258),	-- Thunder Bastion Seal
							}),
							filter(LEATHER, {
								------ Ale-Boiled ------
								i(98209),	-- Ale-Boiled Bindings
								i(98203),	-- Ale-Boiled Boots
								i(98206),	-- Ale-Boiled Britches
								i(98204),	-- Ale-Boiled Gloves
								i(98205),	-- Ale-Boiled Hood
								i(98202),	-- Ale-Boiled Jerkin
								i(98207),	-- Ale-Boiled Shoulders
								i(98208),	-- Ale-Boiled Waistband
								------ Tidesplitter ------
								i(98180),	-- Tidesplitter Bindings
								i(98174),	-- Tidesplitter Boots
								i(98177),	-- Tidesplitter Britches
								i(98175),	-- Tidesplitter Gloves
								i(98176),	-- Tidesplitter Hood
								i(98173),	-- Tidesplitter Jerkin
								i(98178),	-- Tidesplitter Shoulders
								i(98179),	-- Tidesplitter Waistband
							}),
							filter(MAIL, {
								------ Mountaineer's ------
								i(98216),	-- Mountaineer's Belt
								i(98217),	-- Mountaineer's Bracers
								i(98212),	-- Mountaineer's Gauntlets
								i(98211),	-- Mountaineer's Greaves
								i(98213),	-- Mountaineer's Helm
								i(98214),	-- Mountaineer's Legguards
								i(98215),	-- Mountaineer's Spaulders
								i(98210),	-- Mountaineer's Vest
								------ Perpetual Static ------
								i(98187),	-- Perpetual Static Belt
								i(98188),	-- Perpetual Static Bracers
								i(98183),	-- Perpetual Static Gauntlets
								i(98182),	-- Perpetual Static Greaves
								i(98184),	-- Perpetual Static Helm
								i(98185),	-- Perpetual Static Legguards
								i(98186),	-- Perpetual Static Spaulders
								i(98181),	-- Perpetual Static Vest
							}),
							filter(NECK_F, {
								i(98238),	-- Doubtcrusher Neck
								i(98235),	-- Heartlander's Necklace
								i(98189),	-- Mist Splitter's Choker
								i(98200),	-- Sha-Seeker Collar
								i(98249),	-- Thunder Bastion Neck
							}),
							filter(PLATE, {
								------ Doubtcrusher ------
								i(98239),	-- Doubtcrusher Breastplate
								i(98241),	-- Doubtcrusher Gauntlets
								i(98245),	-- Doubtcrusher Girdle
								i(98242),	-- Doubtcrusher Helm
								i(98243),	-- Doubtcrusher Legplates
								i(98244),	-- Doubtcrusher Pauldrons
								i(98240),	-- Doubtcrusher Sabatons			— 2019-05-03
								i(98246),	-- Doubtcrusher Vambraces
								------ Lightning Pillar ------
								i(98218),	-- Lightning Pillar Breastplate
								i(98220),	-- Lightning Pillar Gauntlets
								i(98224),	-- Lightning Pillar Girdle
								i(98221),	-- Lightning Pillar Helm
								i(98222),	-- Lightning Pillar Legplates
								i(98223),	-- Lightning Pillar Pauldrons
								i(98219),	-- Lightning Pillar Sabatons
								i(98225),	-- Lightning Pillar Vambraces
								------ Thunder Bastion ------
								i(98250),	-- Thunder Bastion Breastplate
								i(98252),	-- Thunder Bastion Gauntlets
								i(98256),	-- Thunder Bastion Girdle
								i(98253),	-- Thunder Bastion Helm
								i(98254),	-- Thunder Bastion Legplates
								i(98255),	-- Thunder Bastion Pauldrons
								i(98251),	-- Thunder Bastion Sabatons
								i(98257),	-- Thunder Bastion Vambraces
							}),
							n(WEAPONS, {
								i(98278),	-- Immaculate Pandaren Axe
								i(98279),	-- Immaculate Pandaren Axe
								i(98318),	-- Immaculate Pandaren Axe
								i(98265),	-- Immaculate Pandaren Broadaxe
								i(98314),	-- Immaculate Pandaren Broadaxe
								i(98324),	-- Immaculate Pandaren Cane
								i(98267),	-- Immaculate Pandaren Crossbow
								i(98275),	-- Immaculate Pandaren Dagger
								i(98262),	-- Immaculate Pandaren Greatsword
								i(98312),	-- Immaculate Pandaren Greatsword
								i(98269),	-- Immaculate Pandaren Gun
								i(98263),	-- Immaculate Pandaren Hammer
								i(98313),	-- Immaculate Pandaren Hammer
								i(98277),	-- Immaculate Pandaren Knuckles
								i(98280),	-- Immaculate Pandaren Knuckles
								i(98317),	-- Immaculate Pandaren Knuckles
								i(98271),	-- Immaculate Pandaren Mace
								i(98274),	-- Immaculate Pandaren Mace
								i(98323),	-- Immaculate Pandaren Protector
								i(98325),	-- Immaculate Pandaren Rod
								i(98276),	-- Immaculate Pandaren Scepter
								i(98322),	-- Immaculate Pandaren Shield
								i(98260),	-- Immaculate Pandaren Spear
								i(98266),	-- Immaculate Pandaren Spear
								i(98315),	-- Immaculate Pandaren Spear
								i(98270),	-- Immaculate Pandaren Spellblade
								i(98321),	-- Immaculate Pandaren Spellblade
								i(98261),	-- Immaculate Pandaren Staff
								i(98264),	-- Immaculate Pandaren Staff
								i(98319),	-- Immaculate Pandaren Staff
								i(98272),	-- Immaculate Pandaren Sword
								i(98273),	-- Immaculate Pandaren Sword
								i(98316),	-- Immaculate Pandaren Sword
								i(98268),	-- Immaculate Pandaren Wand
								i(98320),	-- Immaculate Pandaren Wand
							}),
						},
					}),
				},
			}),
			n(QUESTS, {
				["description"] = "Quests may only be completed ONCE per character. Items you receive from the Cache of Treasures are class and spec specific. Not all items are available to all classes able to equip them.|r",
				["g"] = {
					q(32806, {	-- The King and the Council
						["sourceQuests"] = { 32892 },	-- War is Coming
						["providers"] = {
							{ "n", 61962 },	-- Lorewalker Cho
							{ "n", 63577 },	-- Lorewalker Cho
						},
						["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
						["maps"] = { 523 },	-- Dun Morogh (Blood in the Snow scenario)
						["g"] = {
							i(98133, {	-- Greater Cache of Treasures
								["sym"] = { {"fill"} },
							}),
						},
					}),
					q(32807, {	-- The Warchief and the Darkness
						["sourceQuests"] = { 32806 },	-- The King and the Council
						["provider"] = { "n", 61962 },	-- Lorewalker Cho
						["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
						["maps"] = { 520, 521 },	-- Vale of Eternal Blossoms (Dark Heart of Pandaria scenario)
						["g"] = {
							i(98133, {	-- Greater Cache of Treasures
								["sym"] = { {"fill"} },
							}),
						},
					}),
					q(32901, {	-- Heroic Deeds
						["provider"] = { "n", 66998 },	-- Jinho the Wind Breaker
						["coord"] = { 46.6, 56.5, 392 },
						["races"] = HORDE_ONLY,
						["g"] = {
							i(98546, {  -- Bulging Heroic Cache of Treasures
								["sym"] = { {"fill"} },
							}),
						},
					}),
					q(32900, {	-- Heroic Deeds
						["provider"] = { "n", 64101 },	-- Taijin the Cyclone
						["coord"] = { 47.23, 49.71, 393 },
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							i(98546, {  -- Bulging Heroic Cache of Treasures
								["sym"] = { {"fill"} },
							}),
						},
					}),
				},
			}),
			filter(TITLES, sharedData({ ["collectible"] = false }, {
				title(224),	-- Gob Squad Recruit <Name>
				title(226),	-- Gob Squad Commando <Name>
			})),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {
	n(SCENARIOS, {
		q(31987, { ["timeline"] = { ADDED_5_0_4 } }),	-- LFGDungeons - Theramore Launch Event
		q(32817),	-- Complete "Loyalty" Scenario - triggeres when turning in "The King and the Council"
		q(32818),	-- Complete "The Dark Heart of Pandaria" Scenario - triggeres when turning in "The Warchief and the Darkness"
		q(32898),	-- Daily Scenario Random (1st) (Mists)
		q(32899),	-- Daily Scenario Random (Nth) (Mists)
		q(32897),	-- LFGDungeons - Mists - Scenario - Heroic Daily - 1st/Nth
		q(32873),	-- LFGDungeons - Mists - Scenario - Heroic Random - 1st
		q(32874),	-- LFGDungeons - Mists - Scenario - Heroic Random - Nth
		q(32893),	-- LFGDungeons - Mists - Scenario - Heroic Random - 1st Bonus
		q(32894),	-- LFGDungeons - Mists - Scenario - Heroic Random - Nth Bonus
		q(31616),	-- LFGDungeons - Mists - Scenario - Normal Random - 1st
		q(31617),	-- LFGDungeons - Mists - Scenario - Normal Random - Nth
	}),
})));