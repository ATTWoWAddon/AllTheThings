---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.ASHENVALE, {
		["lore"] = "Ashenvale is a beautiful forest and ancestral home of the Night Elves that has recently come under attack by the Horde. The capital city of Astranaar is under attack, as well as the forest from the Warsong Lumber Camp.",
		["icon"] = 236713,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(845),	-- Explore Ashenvale
			}),
			explorationHeader({
				exploration(415),	-- Astranaar
				exploration(438),	-- Bough Shadow
				exploration(422),	-- Fallen Sky Lake
				exploration(434),	-- Felfire Hill
				exploration(417),	-- Fire Scar Shrine
				exploration(2359),	-- Greenpaw Village
				exploration(424),	-- Iris Lake
				exploration(441),	-- Lake Falathim
				exploration(413),	-- Maestra's Post
				exploration(421),	-- Mystral Lake
				exploration(428),	-- Night Run
				exploration(426),	-- Raynewood Retreat
				exploration(430),	-- Satyrnaar
				exploration(420),	-- Silverwind Refuge
				exploration(431),	-- Splintertree Post
				exploration(432),	-- The Dor'Danil Barrow Den
				exploration(419),	-- The Howling Vale
				exploration(418),	-- The Ruins of Stardust
				exploration(416),	-- The Shrine of Aessina
				exploration(414),	-- The Zoram Strand
				exploration(2301),	-- Thistlefur Village
				exploration(437),	-- Warsong Lumber Camp
			}),
			n(FLIGHT_PATHS, {
				fp(28, {	-- Astranaar, Ashenvale
					["cr"] = 4267,	-- Daelyshia <Hippogryph Master>
					["coord"] = { 34.4, 48.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(61, {	-- Splintertree Post, Ashenvale
					["cr"] = 12616,	-- Vhulgra <Wind Rider Master>
					["coord"] = { 73.2, 61.6, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
				}),
				fp(58, {	-- Zoram'gar Outpost, Ashenvale
					["cr"] = 11901,	-- Andruk <Wind Rider Master>
					["coords"] = {
						{ 12.2, 33.8, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179487, {	-- Waterlogged Footlocker
					["coord"] = { 13.8, 24.7, MAP.ASHENVALE },
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 70,
				}),
			}),
			n(QUESTS, {
				q(9533, {	-- A Helping Hand
					["qg"] = 17106,	-- Vindicator Palanaar
					["coord"] = { 34.8, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(9517, {	-- A Shameful Waste
					["qg"] = 17291,	-- Architect Nemos
					["coord"] = { 86.8, 44.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/15 Warsong Lumber
							["providers"] = {
								{ "i",  23776 },	-- Warsong Lumber
								{ "o", 181687 },	-- Lumber Pile
							},
						}),
						objective(2, {	-- 0/5 Satyrnaar Fel Wood
							["providers"] = {
								{ "i",  24081 },	-- Satyrnaar Fel Wood
								{ "o", 181916 },	-- Tainted Wood
							},
						}),
					},
				}),
				q(9518, {	-- Agents of Destruction
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
					["coord"] = { 86.0, 44.4, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Overseer Gorthak slain
							["provider"] = { "n", 17304 },	-- Overseer Gorthak
							["coord"] = { 88.8, 59.5, MAP.ASHENVALE },
						}),
						objective(2, {	-- 0/2 Warsong Shredder slain
							["provider"] = { "n", 11684 },	-- Warsong Shredder
						}),
						objective(3, {	-- 0/5 Horde Deforester slain
							["provider"] = { "n", 11681 },	-- Horde Deforester
						}),
						objective(4, {	-- 0/10 Horde Scout slain
							["provider"] = { "n", 11680 },	-- Horde Scout
						}),
					},
				}),
				q(1025, {	-- An Aggressive Defense
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2/11)
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Foulweald Den Watcher slain
							["provider"] = { "n", 3746 },	-- Foulweald Den Watcher
						}),
						objective(2, {	-- 0/2 Foulweald Ursa slain
							["provider"] = { "n", 3749 },	-- Foulweald Ursa
						}),
						objective(3, {	-- 0/10 Foulweald Totemic slain
							["provider"] = { "n", 3750 },	-- Foulweald Totemic
						}),
						objective(4, {	-- 0/12 Foulweald Warrior slain
							["provider"] = { "n", 3743 },	-- Foulweald Warrior
						}),
					},
				}),
				q(6503, {	-- Ashenvale Outrunners
					["qg"] = 12867,	-- Kuray'bin
					["coords"] = {
						{ 71.0, 68.2, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/9 Ashenvale Outrunner slain
							["provider"] = { "n", 12856 },	-- Ashenvale Outrunner
						}),
					},
				}),
				q(1010, {	-- Bathran's Hair
					["qg"] = 3847,	-- Orendil Broadleaf
					["coord"] = { 26.4, 38.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Bathran's Hair
							["providers"] = {
								{ "i", 5437 },	-- Bathran's Hair
								{ "o", 17282 },	-- Plant Bundle
							},
							["coord"] = { 31.8, 22.9, MAP.ASHENVALE },
						}),
					},
				}),
				q(216, {	-- Between a Rock and a Thistlefur
					["qg"] = 12757,	-- Karang Amakkar
					["coords"] = {
						{ 11.8, 34.4, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/12 Thistlefur Avenger slain
							["provider"] = { "n", 3925 },	-- Thistlefur Avenger
						}),
						objective(2, {	-- 0/12 Thistlefur Shaman slain
							["provider"] = { "n", 3924 },	-- Thistlefur Shaman
						}),
					},
				}),
				q(1054, {	-- Culling the Threat
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Dal Bloodclaw's Skull
							["provider"] = { "i", 5544 },	-- Dal Bloodclaw's Skull
							["coord"] = { 37.6, 35.4, MAP.ASHENVALE },
							["cr"] = 3987,	-- Dal Bloodclaw
						}),
						i(1970),	-- Restoring Balm
					},
				}),
				q(9516, {	-- Destroy the Legion [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["coord"] = { 86.5, 44.2, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/6 Mannoroc Lasher slain
							["provider"] = { "n", 11697 },	-- Mannoroc Lasher
						}),
						objective(2, {	-- 0/6 Roaming Felguard slain
							["provider"] = { "n", 6115 },	-- Roaming Felguard
						}),
						objective(3, {	-- 0/6 Searing Infernal slain
							["provider"] = { "n", 6073 },	-- Searing Infernal
						}),
					},
				}),
				q(9534, {	-- Destroy the Legion [Horde]
					["qg"] = 17355,	-- Valusha
					["coord"] = { 73.2, 60.4, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/6 Mannoroc Lasher slain
							["provider"] = { "n", 11697 },	-- Mannoroc Lasher
						}),
						objective(2, {	-- 0/6 Roaming Felguard slain
							["provider"] = { "n", 6115 },	-- Roaming Felguard
						}),
						objective(3, {	-- 0/6 Searing Infernal slain
							["provider"] = { "n", 6073 },	-- Searing Infernal
						}),
					},
				}),
				q(9520, {	-- Diabolical Plans [Alliance]
					["providers"] = {
						{ "i", 23777 },	-- Diabolical Plans
						{ "i", 23780 },	-- Diabolical Plans
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 27,
				}),
				q(9535, {	-- Diabolical Plans [Horde]
					["providers"] = {
						{ "i", 23797 },	-- Diabolical Plans
						{ "i", 23798 },	-- Diabolical Plans
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
				}),
				q(1016, {	-- Elemental Bracers [Vanilla] / Retaking Mystral Lake [CATA+]
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Divined Scroll
							["provider"] = { "i", 5455 },	-- Divined Scroll
							["cost"] = {
								{ "i", 5456, 1 },	-- Divining Scroll
								{ "i", 12220, 5 },	-- Intact Elemental Bracer
							},
						}),
						i(5456),	-- Divining Scroll
						i(12220, {	-- Intact Elemental Bracer
							["crs"] = {
								3917,	-- Befouled Water Elemental
								12759,	-- Tideress
							},
						}),
					},
				}),
				q(1033, {	-- Elune's Tear
					["sourceQuest"] = 1020,	-- Orendil's Cure
					["qg"] = 3894,	-- Pelturas Whitemoon
					["coord"] = { 37.3, 51.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Elune's Tear
							["providers"] = {
								{ "i", 5493 },	-- Elune's Tear
								{ "o", 19015 },	-- Elune's Tear
							},
							["coord"] = { 46.0, 46.5, MAP.ASHENVALE },
						}),
					},
				}),
				q(1035, {	-- Fallen Sky Lake
					["sourceQuest"] = 1034,	-- The Ruins of Stardust
					["qg"] = 3894,	-- Pelturas Whitemoon
					["coord"] = { 37.3, 51.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Fallen Moonstone
							["provider"] = { "i", 5508 },	-- Fallen Moonstone
							["coord"] = { 66.6, 82.0, MAP.ASHENVALE },
							["cr"] = 3931,	-- Shadethicket Oracle
						}),
						i(5814),	-- Snapbrook Armor
						i(6722),	-- Beastial Manacles
						i(17047),	-- Luminescent Amice
					},
				}),
				q(1011, {	-- Forsaken Diseases
					["sourceQuest"] = 4581,	-- Kayneth Stillwind
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Bottle of Disease
							["providers"] = {
								{ "i", 5440 },	-- Bottle of Disease
								{ "i", 18036 },	-- Bottle of Disease
							},
							["coord"] = { 75.3, 72.3, MAP.ASHENVALE },
						}),
					},
				}),
				q(6482, {	-- Freedom to Ruul
					["qg"] = 12818,	-- Ruul Snowhoof
					["coords"] = {
						{ 41.4, 34.4, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1012, {	-- Insane Druids
					["sourceQuest"] = 1011,	-- Forsaken Diseases
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Taneel Darkwood slain
							["provider"] = { "n", 3940 },	-- Taneel Darkwood
							["coord"] = { 77.0, 74.0, MAP.ASHENVALE },
						}),
						objective(2, {	-- 0/1 Uthil Mooncall slain
							["provider"] = { "n", 3941 },	-- Uthil Mooncall
							["coord"] = { 78.0, 72.8, MAP.ASHENVALE },
						}),
						objective(3, {	-- 0/1 Mavoris Cloudsbreak slain
							["provider"] = { "n", 3942 },	-- Mavoris Cloudsbreak
							["coord"] = { 74.8, 74.2, MAP.ASHENVALE },
						}),
						i(5813),	-- Emil's Brand
					},
				}),
				q(824, {	-- Je'neu of the Earthen Ring
					["sourceQuest"] = 1918,	-- The Befouled Element
					["providers"] = {
						{ "n", 12737 },	-- Mastok Wrilehiss
						{ "i", 16408 },	-- Befouled Water Globe
					},
					["coords"] = {
						{ 73.6, 60.0, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(16659),	-- Deftkin Belt
						i(16660),	-- Driftmire Shield
						i(16661),	-- Soft Willow Cape
					},
				}),
				q(1056, {	-- Journey to Stonetalon Peak
					["qg"] = 3996,	-- Faldreas Goeth'Shael
					["coord"] = { 35.6, 49.2, MAP.ASHENVALE },
					["maps"] = { MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(4581, {	-- Kayneth Stillwind
					["providers"] = {
						{ "n", 3845 },	-- Shindrell Swiftfire
						{ "i", 12060 },	-- Shindrell's Note
					},
					["coord"] = { 34.7, 48.9, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
				}),
				q(6621, {	-- King of the Foulweald
					["sourceQuests"] = {
						216,	-- Between a Rock and a Thistlefur
					},
					["qgs"] = {
						12757,	-- Karang Amakkar
					},
					["coords"] = {
						{ 11.8, 34.4, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/1 Murgut's Totem
							["providers"] = {
								{ "i",  16976 },	-- Murgut's Totem
								{ "o", 178227 },	-- Murgut's Totem Basket
							},
							["coord"] = { 56.5, 63.5, MAP.ASHENVALE },
							["cost"] = { { "i", 16972, 1 } },	-- Karang's Banner
							["cr"] = 12918,	-- Chief Murgut
						}),
						i(17005),	-- Boorguard Tunic
						i(17006),	-- Cobalt Legguards
					},
				}),
				q(1017, {	-- Mage Summoner
					["sourceQuest"] = 1016,	-- Elemental Bracers
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, MAP.ASHENVALE },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Sarilus Foulborne's Head
							["provider"] = { "i", 5537 },	-- Sarilus Foulborne's Head
							["coord"] = { 48.2, 19.0, MAP.THE_BARRENS },
							["cr"] = 3986,	-- Sarilus Foulborne
						}),
						i(5816, {	-- Light of Elune
							["description"] = "Single use. Save this for AQ40 or Naxx.",
						}),
					},
				}),
				q(6442, {	-- Naga at the Zoram Strand
					["qg"] = 12719,	-- Marukai
					["coords"] = {
						{ 11.6, 34.8, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/20 Wrathtail Head
							["provider"] = { "i", 5490 },	-- Wrathtail Head
							["crs"] = {
								3711,	-- Wrathtail Myrmidon
								3944,	-- Wrathtail Priestess
								3712,	-- Wrathtail Razortail
								3715,	-- Wrathtail Sea Witch
								3717,	-- Wrathtail Sorceress
								3713,	-- Wrathtail Wave Rider
							},
						}),
					},
				}),
				q(9522, {	-- Never Again! [Alliance]
					["sourceQuest"] = 9520,	-- Diabolical Plans [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["coord"] = { 86.5, 44.2, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon slain
							["provider"] = { "n", 17300 },	-- Gorgannon
							["coord"] = { 89.6, 76.8, MAP.ASHENVALE },
						}),
						objective(2, {	-- 0/1 Diathorus the Seeker slain
							["provider"] = { "n", 6072 },	-- Diathorus the Seeker
							["coord"] = { 77.8, 83.6, MAP.ASHENVALE },
						}),
						i(24119),	-- Band of Argas
						i(24120),	-- Seal of Argas
						i(24118),	-- Signet of Argas
					},
				}),
				q(9536, {	-- Never Again! [Horde]
					["sourceQuest"] = 9535,	-- Diabolical Plans [Horde]
					["qg"] = 17355,	-- Valusha
					["coord"] = { 73.2, 60.4, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon slain
							["provider"] = { "n", 17300 },	-- Gorgannon
							["coord"] = { 89.6, 76.8, MAP.ASHENVALE },
						}),
						objective(2, {	-- 0/1 Diathorus the Seeker slain
							["provider"] = { "n", 6072 },	-- Diathorus the Seeker
							["coord"] = { 77.8, 83.6, MAP.ASHENVALE },
						}),
						i(24119),	-- Band of Argas
						i(24120),	-- Seal of Argas
						i(24118),	-- Signet of Argas
					},
				}),
				q(1020, {	-- Orendil's Cure
					["sourceQuest"] = 1010,	-- Bathran's Hair
					["providers"] = {
						{ "n", 3847 },	-- Orendil Broadleaf
						{ "i", 5460 },	-- Orendil's Cure
					},
					["coord"] = { 26.4, 38.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1134, {	-- Pridewings of Stonetalon
					["sourceQuest"] = 1008,	-- The Zoram Strand
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, MAP.ASHENVALE },
					["maps"] = { MAP.STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/12 Pridewing Venom Sac
							["provider"] = { "i", 5808 },	-- Pridewing Venom Sac
							["crs"] = {
								4014,	-- Pridewing Consort
								4015,	-- Pridewing Patriarch
								4013,	-- Pridewing Skyhunter
								4012,	-- Pridewing Wyvern
								5928,	-- Sorrow Wing
								4011,	-- Young Pridewing
							},
						}),
					},
				}),
				q(991, {	-- Raene's Cleansing (1/11) [Vanilla] / Finding Teronis [CATA]
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1023, {	-- Raene's Cleansing (2/11) [Vanilla] / The Lost Gem [CATA]
					["sourceQuest"] = 991,	-- Raene's Cleansing (1/11)
					["providers"] = {
						{ "n", 3891 },	-- Teronis' Corpse
						{ "i", 5505 },	-- Teronis' Journal
					},
					["coord"] = { 20.2, 42.2, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Glowing Gem
							["provider"] = { "i", 5463 },	-- Glowing Gem
							["crs"] = {
								3740,	-- Saltspittle Muckdweller
								3742,	-- Saltspittle Oracle
								3737,	-- Saltspittle Puddlejumper
								3739,	-- Saltspittle Warrior
							},
						}),
					},
				}),
				q(1024, {	-- Raene's Cleansing (3/11) [Vanilla] / Dryad Delivery [CATA]
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2/11)
					["providers"] = {
						{ "n", 3691 },	-- Raene Wolfrunner
						{ "i", 5463 },	-- Glowing Gem
					},
					["coord"] = { 36.6, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1026, {	-- Raene's Cleansing (4/11) [Vanilla] / Search the Bole [CATA]
					["sourceQuest"] = 1024,	-- Raene's Cleansing (3/11)
					["qg"] = 3916,	-- Shael'dryn
					["coord"] = { 53.5, 46.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Shaft
							["providers"] = {
								{ "i", 5464 },	-- Iron Shaft
								{ "o", 19022 },	-- Worn Chest
							},
							["coord"] = { 54.4, 35.3, MAP.ASHENVALE },
							["cost"] = { { "i", 5475, 1 } },	-- Wooden Key
							["crs"] = {
								3834,	-- Crazed Ancient
								3919,	-- Withered Ancient
							},
						}),
					},
				}),
				q(1027, {	-- Raene's Cleansing (5/11) [Vanilla] / Playing Possum [CATA]
					["sourceQuest"] = 1026,	-- Raene's Cleansing (4/11)
					["qg"] = 3916,	-- Shael'dryn
					["coord"] = { 53.5, 46.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Pommel
							["providers"] = {
								{ "i", 5519 },	-- Iron Pommel
								{ "o", 19021 },	-- Rusty Chest
							},
							["description"] = "When you kill a slime, it can drop a Rusty Chest which can contain this item.",
							["cr"] = 3928,	-- Rotting Slime
						}),
					},
				}),
				q(1028, {	-- Raene's Cleansing (6/11)
					["sourceQuest"] = 1027,	-- Raene's Cleansing (5/11)
					["providers"] = {
						{ "n", 3916 },	-- Shael'dryn
						{ "i", 5547 },	-- Reconstructed Rod
					},
					["coord"] = { 53.5, 46.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(5462),	-- Dartol's Rod of Transformation
					},
				}),
				q(1055, {	-- Raene's Cleansing (7/11)
					["sourceQuest"] = 1028,	-- Raene's Cleansing (6/11)
					["provider"] = { "o", 19024 },	-- Hidden Shrine
					["coord"] = { 56.38, 49.24, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1029, {	-- Raene's Cleansing (8/11) [Vanilla] / Return to Raene [CATA]
					["sourceQuest"] = 1055,	-- Raene's Cleansing (7/11)
					["providers"] = {
						{ "n", 3916 },	-- Shael'dryn
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["coord"] = { 53.5, 46.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1030, {	-- Raene's Cleansing (9/11) [Vanilla] / Dartol's Rod [CATA]
					["sourceQuest"] = 1029,	-- Raene's Cleansing (8/11)
					["providers"] = {
						{ "n", 3691 },	-- Raene Wolfrunner
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["coord"] = { 36.6, 49.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1045, {	-- Raene's Cleansing (10/11) [Vanilla] / A New Adornment [CATA]
					["sourceQuest"] = 1030,	-- Raene's Cleansing (9/11)
					["providers"] = {
						{ "n", 3897 },	-- Krolg
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["coord"] = { 50.8, 75.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Ran Bloodtooth
							["provider"] = { "i", 5388 },	-- Ran Bloodtooth's Skull
							["coord"] = { 54.6, 79.4, MAP.ASHENVALE },
							["cr"] = 3696,	-- Ran Bloodtooth
						}),
						objective(2, {	-- 0/4 Bloodtooth Guard
							["provider"] = { "n", 3932 },	-- Bloodtooth Guard
						}),
					},
				}),
				q(1046, {	-- Raene's Cleansing (11/11) [Vanilla] / True Power of the Rod [CATA]
					["sourceQuest"] = 1045,	-- Raene's Cleansing (10/11)
					["qg"] = 3897,	-- Krolg
					["coord"] = { 50.8, 75.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Ran Bloodtooth's Skull
							["provider"] = { "i", 5388 },	-- Ran Bloodtooth's Skull
						}),
						objective(2, {	-- 0/1 Dartol's Rod of Transformation
							["provider"] = { "i", 5462 },	-- Dartol's Rod of Transformation
							["description"] = "There's a trick to keep this item forever:\nBefore turning in the quest to Raene, destroy the item. Ask Raene for it back. Then turn in the quest. The item will be removed from your inventory. However, since you destroyed the first one, you can then use the Blizzard Item Restoration tool to get your destroyed rod back.",
						}),
						i(5815),	-- Glacial Stone
						i(17046),	-- Gutterblade
						i(1116),	-- Ring of Pure Silver
					},
				}),
				q(9526, {	-- Reclaiming Felfire Hill
					["qg"] = 17310,	-- Gnarl <Ancient of War>
					["coord"] = { 84.2, 45.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/8 Tree Seedling Planted
							["providers"] = {
								{ "i",  23788 },	-- Tree Seedlings
								{ "o", 181690 },	-- Fertile Dirt Mound
							},
						}),
					},
				}),
				q(9521, {	-- Report from the Northern Front
					["providers"] = {
						{ "n", 17287 },	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
						{ "i", 23778 },	-- Sentinel Luciel's Report
					},
					["coord"] = { 86.0, 44.4, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(1009, {	-- Ruuzel
					["sourceQuest"] = 1007,	-- The Ancient Statuette
					["qg"] = 3846,	-- Talen
					["coord"] = { 14.8, 31.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ring of Zoram
							["provider"] = { "i", 5445 },	-- Ring of Zoram
							["coords"] = {
								{ 7.2, 13.0, MAP.ASHENVALE },
								{ 9.4, 15.2, MAP.ASHENVALE },
								{ 12.4, 19.6, MAP.ASHENVALE },
								{ 11.0, 29.6, MAP.ASHENVALE },
							},
							["crs"] = {
								3943,	-- Ruuzel
								10559,	-- Lady Vespia
							},
						}),
						i(5812),	-- Robes of Antiquity
					},
				}),
				q(6441, {	-- Satyr Horns
					["qg"] = 12724,	-- Pixel
					["coords"] = {
						{ 73.0, 61.4, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						objective(1, {	-- 0/16 Satyr Horns
							["provider"] = { "i", 5481 },	-- Satyr Horns
							["crs"] = {
								3898,	-- Aligar the Tormentor
								3899,	-- Balizar the Umbrage
								3771,	-- Bleakheart Hellcaller
								3765,	-- Bleakheart Satyr
								3770,	-- Bleakheart Shadowstalker
								3767,	-- Bleakheart Trickster
								3900,	-- Caedakar the Vicious
								3762,	-- Felmusk Felsworn
								3759,	-- Felmusk Rogue
								3758,	-- Felmusk Satyr
								3763,	-- Felmusk Shadowstalker
								4619,	-- Geltharis
								10647,	-- Prince Raze
								3754,	-- Xavian Betrayer
								3755,	-- Xavian Felsworn
								3757,	-- Xavian Hellcaller
								3752,	-- Xavian Rogue
							},
						}),
					},
				}),
				q(1032, {	-- Satyr Slaying!
					["sourceQuest"] = 1031,	-- The Branch of Cenarius
					["qg"] = 3901,	-- Illiyana
					["coord"] = { 21.8, 53.2, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/16 Satyr Horns
							["provider"] = { "i", 5481 },	-- Satyr Horns
							["crs"] = {
								3898,	-- Aligar the Tormentor
								3899,	-- Balizar the Umbrage
								3771,	-- Bleakheart Hellcaller
								3765,	-- Bleakheart Satyr
								3770,	-- Bleakheart Shadowstalker
								3767,	-- Bleakheart Trickster
								3900,	-- Caedakar the Vicious
								3762,	-- Felmusk Felsworn
								3759,	-- Felmusk Rogue
								3758,	-- Felmusk Satyr
								3763,	-- Felmusk Shadowstalker
								4619,	-- Geltharis
								10647,	-- Prince Raze
								3754,	-- Xavian Betrayer
								3755,	-- Xavian Felsworn
								3757,	-- Xavian Hellcaller
								3752,	-- Xavian Rogue
							},
						}),
					},
				}),
				q(24, {		-- Shadumbra's Head
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					["provider"] = { "i", 16304 },	-- Shadumbra's Head
					["coords"] = {
						{ 59.8, 54.6, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["cr"] = 12677,	-- Shadumbra
					["lvl"] = 20,
				}),
				q(2, {		-- Sharptalon's Claw
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					["provider"] = { "i", 16305 },	-- Sharptalon's Claw
					["coords"] = {
						{ 75.8, 69.6, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["cr"] = 12676,	-- Sharptalon
					["lvl"] = 20,
				}),
				q(25, {		-- Stonetalon Standstill / Simmer Down Now [CATA+]
					["qg"] = 12737,	-- Mastok Wrilehiss
					["coord"] = { 73.66, 60.01, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/12 Befouled Water Elemental slain
							["provider"] = { "n", 3917 },	-- Befouled Water Elemental
						}),
					},
				}),
				q(976, {	-- Supplies to Auberdine
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["qg"] = 4484,	-- Feero Ironhand
					["coord"] = { 26.2, 38.9, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(5323),	-- Everglow Lantern
						i(6721),	-- Chestplate of Kor
					},
				}),
				q(1007, {	-- The Ancient Statuette
					["qg"] = 3846,	-- Talen
					["coord"] = { 14.8, 31.3, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Statuette
							["providers"] = {
								{ "i", 5424 },	-- Ancient Statuette
								{ "o", 17783 },	-- Ancient Statuette
							},
							["coord"] = { 14.2, 20.6, MAP.ASHENVALE },
						}),
					},
				}),
				q(235, {	-- The Ashenvale Hunt (1/2) [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(742, {	-- The Ashenvale Hunt (1/2) [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6382, {	-- The Ashenvale Hunt (1/2) [The Barrens]
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6383, {	-- The Ashenvale Hunt (2/2)
					["sourceQuests"] = {
						235,	-- The Ashenvale Hunt (1/2) [Orgrimmar]
						742,	-- The Ashenvale Hunt (1/2) [Thunder Bluff]
						6382,	-- The Ashenvale Hunt (1/2) [The Barrens]
					},
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 73.6, 61.4, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1918, {	-- The Befouled Element
					["sourceQuest"] = 25,	-- Stonetalon Standstill / Simmer Down Now [CATA]
					["provider"] = { "i", 16408 },	-- Befouled Water Globe
					["coord"] = { 50.8, 71.6, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["cr"] = 12759,	-- Tideress
					["lvl"] = 23,
				}),
				q(1031, {	-- The Branch of Cenarius
					["sourceQuest"] = 1021,	-- Vile Satyr! Dryads in Danger!
					["qg"] = 3920,	-- Anilia
					["coord"] = { 78.3, 44.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Branch of Cenarius
							["provider"] = { "i", 5461 },	-- Branch of Cenarius
							["coord"] = { 78.6, 42.8, MAP.ASHENVALE },
							["cr"] = 4619,	-- Geltharis
						}),
						i(5820),	-- Faerie Mantle
						i(11229),	-- Brightscale Girdle
					},
				}),
				q(1022, {	-- The Howling Vale
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 22.2, 53.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- View the Tome of Mel'Thandris
							["provider"] = { "o", 19027 },	-- Tome of Mel'Thandris
							["coord"] = { 50.5, 39.1, MAP.ASHENVALE },
						}),
					},
				}),
				q(247, {	-- The Hunt Completed
					["sourceQuests"] = {
						24,	-- Shadumbra's Head
						2,	-- Sharptalon's Claw
						23,	-- Ursangous's Paw
					},
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 73.6, 61.4, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(16658),	-- Wildhunter Cloak
					},
				}),
				q(9519, {	-- The Lost Chalice
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/1 Chalice of Elune
							["providers"] = {
								{ "i",  23760 },	-- Chalice of Elune
								{ "o", 181681 },	-- Chalice of Elune
							},
							["coord"] = { 81.4, 48.9, MAP.ASHENVALE },
						}),
					},
				}),
				q(6504, {	-- The Lost Pages
					["qg"] = 12718,	-- Gurda Ragescar
					["coord"] = { 70.0, 71.0, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- Shredder Operating Manual - Chapter 1
							["provider"] = { "i", 16642 },	-- Shredder Operating Manual - Chapter 1
							["cost"] = {
								{ "i", 16645, 1 },	-- Shredder Operating Manual - Page 1
								{ "i", 16646, 1 },	-- Shredder Operating Manual - Page 2
								{ "i", 16647, 1 },	-- Shredder Operating Manual - Page 3
								{ "i", 16648, 1 },	-- Shredder Operating Manual - Page 4
							},
						}),
						objective(2, {	-- Shredder Operating Manual - Chapter 2
							["provider"] = { "i", 16643 },	-- Shredder Operating Manual - Chapter 2
							["cost"] = {
								{ "i", 16649, 1 },	-- Shredder Operating Manual - Page 5
								{ "i", 16650, 1 },	-- Shredder Operating Manual - Page 6
								{ "i", 16651, 1 },	-- Shredder Operating Manual - Page 7
								{ "i", 16652, 1 },	-- Shredder Operating Manual - Page 8
							},
						}),
						objective(3, {	-- Shredder Operating Manual - Chapter 3
							["provider"] = { "i", 16644 },	-- Shredder Operating Manual - Chapter 3
							["cost"] = {
								{ "i", 16653, 1 },	-- Shredder Operating Manual - Page 9
								{ "i", 16654, 1 },	-- Shredder Operating Manual - Page 10
								{ "i", 16655, 1 },	-- Shredder Operating Manual - Page 11
								{ "i", 16656, 1 },	-- Shredder Operating Manual - Page 12
							},
						}),
						i(16740),	-- Shredder Operating Gloves
						i(16741),	-- Oilrag Handwraps
					},
				}),
				q(1034, {	-- The Ruins of Stardust
					["sourceQuest"] = 1033,	-- Elune's Tear
					["qg"] = 3894,	-- Pelturas Whitemoon
					["coord"] = { 37.3, 51.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Handful of Stardust
							["providers"] = {
								{ "i", 5494 },	-- Handful of Stardust
								{ "o", 19016 },	-- Stardust Covered Bush
							},
							["coord"] = { 33.9, 68.2, MAP.ASHENVALE },
						}),
					},
				}),
				q(970, {	-- The Tower of Althalaxx (4/9)
					["sourceQuest"] = 967,	-- The Tower of Althalaxx (3/9) (Darkshore)
					["qg"] = 3663,	-- Delgren the Purifier
					["coord"] = { 26.2, 38.7, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Glowing Soul Gem
							["provider"] = { "i", 5366 },	-- Glowing Soul Gem
							["crs"] = {
								3728,	-- Dark Strand Adept
								3879,	-- Dark Strand Assassin
								3725,	-- Dark Strand Cultist
								3727,	-- Dark Strand Enforcer
								3730,	-- Dark Strand Excavator
							},
						}),
					},
				}),
				q(973, {	-- The Tower of Althalaxx (5/9)
					["sourceQuest"] = 970,	-- The Tower of Althalaxx (4/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["coord"] = { 26.2, 38.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Ilkrud Magthrull's Tome
							["provider"] = { "i", 5533 },	-- Ilkrud Magthrull's Tome
							["coord"] = { 25.2, 60.6, MAP.ASHENVALE },
							["cr"] = 3664,	-- Ilkrud Magthrull
						}),
						i(5622),	-- Clergy Ring
						i(5613),	-- Staff of the Purifier
					},
				}),
				q(1140, {	-- The Tower of Althalaxx (6/9)
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["coord"] = { 26.2, 38.6, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Free the Highborne soul in Night Run
							["provider"] = { "o", 19901 },	-- Circle of Imprisonment
							["coord"] = { 66.7, 57.0, MAP.ASHENVALE },
						}),
						objective(2, {	-- Free the Highborne soul in Satyrnaar
							["provider"] = { "o", 20352 },	-- Circle of Imprisonment
							["coord"] = { 81.6, 48.5, MAP.ASHENVALE },
						}),
					},
				}),
				q(1167, {	-- The Tower of Althalaxx (7/9)
					["sourceQuest"] = 1140,	-- The Tower of Althalaxx (6/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["coord"] = { 26.2, 38.6, MAP.ASHENVALE },
					["maps"] = { MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(6543, {	-- The Warsong Reports
					["sourceQuests"] = {
						6541,	-- Report to Kadrak (Barrens)
						6542,	-- Report to Kadrak (Stonetalon)
					},
					["providers"] = {
						{ "n", 8582 },	-- Kadrak
						{ "i", 16783 },	-- Bundle of Reports
					},
					["coord"] = { 48.12, 5.42, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						q(6546, {	-- Warsong Outrider Update
							["providers"] = {
								{ "n", 12864 },	-- Warsong Outrider
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 83.6, 51.4, MAP.ASHENVALE },
							["repeatable"] = true,
							["groups"] = {
								objective(3, {	-- 0/1 Warsong Outrider Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16765 },	-- Warsong Outrider Update
								}),
							},
						}),
						q(6545, {	-- Warsong Runner Update
							["providers"] = {
								{ "n", 12863 },	-- Warsong Runner
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 12.2, 34.2, MAP.ASHENVALE },
							["repeatable"] = true,
							["groups"] = {
								objective(2, {	-- 0/1 Warsong Runner Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16763 },	-- Warsong Runner Update
								}),
							},
						}),
						q(6547, {	-- Warsong Scout Update
							["providers"] = {
								{ "n", 12862 },	-- Warsong Scout
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 71.04, 68.22, MAP.ASHENVALE },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Warsong Scout Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16764 },	-- Warsong Scout Update
								}),
							},
						}),
					},
				}),
				q(1008, {	-- The Zoram Strand
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/20 Wrathtail Head
							["provider"] = { "i", 5490 },	-- Wrathtail Head
							["crs"] = {
								3711,	-- Wrathtail Myrmidon
								3944,	-- Wrathtail Priestess
								3712,	-- Wrathtail Razortail
								3715,	-- Wrathtail Sea Witch
								3717,	-- Wrathtail Sorceress
								3713,	-- Wrathtail Wave Rider
							},
						}),
					},
				}),
				q(6544, {	-- Torek's Assault
					["qg"] = 12858,	-- Torek
					["coords"] = {
						{ 68.2, 75.2, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(16889),	-- Polished Walking Staff
						i(16890),	-- Slatemetal Cutlass
					},
				}),
				q(6462, {	-- Troll Charm
					["qg"] = 12721,	-- Mitsuwa
					["coords"] = {
						{ 11.6, 34.8, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/8 Troll Charm
							["providers"] = {
								{ "i",  16602 },	-- Troll Charm
								{ "o", 178144 },	-- Troll Chest
							},
							["coord"] = { 40.8, 32.9, MAP.ASHENVALE },
						}),
					},
				}),
				q(23, {		-- Ursangous's Paw
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					["provider"] = { "i", 16303 },	-- Ursangous's Paw
					["coords"] = {
						{ 41.6, 66.6, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["cr"] = 12678,	-- Ursangous
					["lvl"] = 20,
				}),
				q(1037, {	-- Velinde Starsong
					["sourceQuest"] = 1022,	-- The Howling Vale
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 22.2, 53.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1021, {	-- Vile Satyr! Dryads in Danger!
					["qg"] = 3901,	-- Illiyana
					["coord"] = { 21.7, 53.4, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(6641, {	-- Vorsha the Lasher
					["qg"] = 12717,	-- Muglash
					["coord"] = { 12.0, 34.6, MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Vorsha the Lasher slain
							["providers"] = {
								{ "n",  12940 },	-- Vorsha the Lasher
								{ "o", 178247 },	-- Naga Brazier
							},
							["coord"] = { 9.6, 27.6, MAP.ASHENVALE },
						}),
						i(17692),	-- Horn Ring
					},
				}),
				q(6571, {	-- Warsong Supplies
					["qg"] = 11820,	-- Locke Okarr
					["coord"] = { 71.40, 67.64, MAP.ASHENVALE },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						q(6581, {	-- Warsong Saw Blades
							["qg"] = 12724,	-- Pixel
							["coord"] = { 73.0, 61.4, MAP.ASHENVALE },
							["cost"] = { { "i", 4369, 1 } },	-- Deadly Blunderbuss
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 22,
							["groups"] = {
								objective(1, {	-- 0/1 Warsong Saw Blades
									["questID"] = 6571,	-- Warsong Supplies
									["provider"] = { "i", 16742 },	-- Warsong Saw Blades
								}),
							},
						}),
						objective(2, {	-- 0/1 Warsong Axe Shipment
							["providers"] = {
								{ "i",  16745 },	-- Warsong Axe Shipment
								{ "o", 178204 },	-- Warsong Axe Shipment
							},
							["coord"] = { 25.6, 73.4, MAP.STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Warsong Oil
							["providers"] = {
								{ "i",  16744 },	-- Warsong Oil
								{ "o", 178195 },	-- Warsong Oil
							},
							["coords"] = {
								{ 66.5, 56.9, MAP.ASHENVALE },
								{ 79.1, 45.5, MAP.ASHENVALE },
								{ 80.7, 49.7, MAP.ASHENVALE },
							},
						}),
						objective(4, {	-- 0/1 Logging Rope
							["provider"] = { "i", 16743 },	-- Logging Rope
							["crs"] = {
								3746,	-- Foulweald Den Watcher
								3745,	-- Foulweald Pathfinder
								3748,	-- Foulweald Shaman
								3750,	-- Foulweald Totemic
								3749,	-- Foulweald Ursa
								3743,	-- Foulweald Warrior
								3925,	-- Thistlefur Avenger
								3923,	-- Thistlefur Den Watcher
								3926,	-- Thistlefur Pathfinder
								3924,	-- Thistlefur Shaman
								3922,	-- Thistlefur Totemic
								3921,	-- Thistlefur Ursa
							},
						}),
						i(16975),	-- Warsong Sash
						i(16977),	-- Warsong Boots
						i(16978),	-- Warsong Gauntlets
					},
				}),
			}),
			n(RARES, {
				n(3773, {	-- Akkrilus
					["coords"] = {
						{ 25.4, 60.8, MAP.ASHENVALE },
						{ 28.6, 61.4, MAP.ASHENVALE },
						{ 27.6, 64.0, MAP.ASHENVALE },
					},
				}),
				n(3735, {	-- Apothecary Falthis
					["coords"] = {
						{ 33.2, 21.0, MAP.ASHENVALE },
						{ 33.2, 21.8, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(10641, {	-- Branch Snapper
					["coords"] = {
						{ 47.6, 46.6, MAP.ASHENVALE },
					},
				}),
				n(3736, {	-- Darkslayer Mordenthal
					["coords"] = {
						{ 75.0, 69.8, MAP.ASHENVALE },
						{ 74.4, 73.4, MAP.ASHENVALE },
						{ 78.0, 73.8, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(10642, {	-- Eck'alom
					["coords"] = {
						{ 45.6, 71.2, MAP.ASHENVALE },
						{ 48.6, 69.8, MAP.ASHENVALE },
						{ 54.2, 69.4, MAP.ASHENVALE },
					},
				}),
				n(10559, {	-- Lady Vespia
					["coords"] = {
						{ 9.6, 15.6, MAP.ASHENVALE },
						{ 13.6, 19.6, MAP.ASHENVALE },
						{ 11.2, 29.4, MAP.ASHENVALE },
					},
				}),
				n(10644, {	-- Mist Howler
					["coords"] = {
						{ 18.2, 30.2, MAP.ASHENVALE },
						{ 22.6, 29.6, MAP.ASHENVALE },
						{ 23.0, 35.6, MAP.ASHENVALE },
						{ 26.6, 18.6, MAP.ASHENVALE },
						{ 29.2, 16.8, MAP.ASHENVALE },
						{ 26.6, 15.0, MAP.ASHENVALE },
					},
				}),
				n(10643, {	-- Mugglefin
					["coords"] = {
						{ 21.6, 41.8, MAP.ASHENVALE },
						{ 20.6, 45.0, MAP.ASHENVALE },
						{ 19.2, 44.2, MAP.ASHENVALE },
					},
				}),
				n(10640, {	-- Oakpaw
					["coords"] = {
						{ 50.0, 60.2, MAP.ASHENVALE },
						{ 54.2, 62.4, MAP.ASHENVALE },
						{ 56.6, 62.8, MAP.ASHENVALE },
					},
				}),
				n(10647, {	-- Prince Raze
					["coords"] = {
						{ 78.4, 42.6, MAP.ASHENVALE },
						{ 79.0, 45.6, MAP.ASHENVALE },
						{ 77.2, 46.2, MAP.ASHENVALE },
					},
				}),
				n(10639, {	-- Rorgish Jowl
					["coords"] = {
						{ 36.6, 35.4, MAP.ASHENVALE },
					},
				}),
				n(3792, {	-- Terrowulf Packlord
					["coords"] = {
						{ 50.6, 39.0, MAP.ASHENVALE },
					},
					["groups"] = {
						i(5753),	-- Ruffled Chaplet
						i(5754),	-- Wolfpack Medallion
					},
				}),
				n(12037, {	-- Ursol'lok
					["coords"] = {
						{ 83.0, 49.0, MAP.ASHENVALE },
						{ 83.4, 60.4, MAP.ASHENVALE },
						{ 88.6, 68.4, MAP.ASHENVALE },
					},
				}),
			}),
			n(VENDORS, {
				n(3951, {	-- Bhaldaran Ravenshade <Bowyer>
					["coords"] = {
						{ 50.3, 67.2, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(3954, {	-- Dalria <Trade Goods>
					["coord"] = { 35.1, 52.1, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11101, {	-- Formula: Enchant Bracer - Lesser Strength (RECIPE!)
							["isLimited"] = true,
						}),
						i(11039, {	-- Formula: Enchant Cloak - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3956, {	-- Harklan Moongrove <Alchemy Supplies>
					["coords"] = {
						{ 50.8, 67.0, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6054, {	-- Recipe: Shadow Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6731, {	-- Harlown Darkweave <Leatherworking Supplies>
					["coord"] = { 18.2, 60.0, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7361, {	-- Pattern: Herbalist's Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3958, {	-- Lardan <Leatherworking Supplies>
					["coord"] = { 34.8, 49.8, MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3955, {	-- Shandrina <Trade Goods>
					["coords"] = {
						{ 49.5, 67.1, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16072, {	-- Expert Cookbook
							["rank"] = 3,
						}),
					},
				}),
				n(3960, {	-- Ulthaan <Butcher>
					["coords"] = {
						{ 50.0, 66.6, MAP.ASHENVALE },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3734),	-- Recipe: Big Bear Steak (RECIPE!)
						i(5489),	-- Recipe: Lean Venison (RECIPE!)
					},
				}),
				n(12962, {	-- Wik'Tar <Fish Merchant & Supplies>
					["coords"] = {
						{ 11.8, 34.0, MAP.ASHENVALE },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(23777, {	-- Diabolical Plans [Alliance]
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(23797, {	-- Diabolical Plans [Horde]
					["races"] = HORDE_ONLY,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(1351, {	-- Fingerbone Bracers
					["description"] = "This item is only naturally accessible to Alliance players due to the allegiance of the creatures that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
					["coords"] = {
						{ 75.8, 73.6, MAP.ASHENVALE },
						{ 77.4, 75.4, MAP.ASHENVALE },
					},
					["crs"] = {
						3808,	-- Forsaken Dark Stalker
					},
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism (RECIPE!)
					["crs"] = {
						3834,	-- Crazed Ancient
						3919,	-- Withered Ancient
					},
				}),
			}),
		},
	}),
}));
