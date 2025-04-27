---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if AFTER CATA
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(NORTHERN_STRANGLETHORN, {
		["lore"] = "Northern Stranglethorn is a new zone in Cataclysm--the old Stranglethorn Vale was split in half after the Sundering. At the bottom of this zone, the remaining whirlpool can be seen. Players learn about the political changes Zul'Gurub, rescue an adorable raptor, and partake in Nesingwary's expanded hunting operations.",
		["icon"] = 236844,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(781),	-- Explore Northern Stranglethorn
				ach(4906, {	-- Northern Stranglethorn Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26775,	-- Be Raptor (A)
						26362,	-- Be Raptor (H)
						26765,	-- Return to Corporal Kaleb
						26737,	-- Stopping Kurzen's Legacy
						26731,	-- The Altar of Naias
						26734,	-- The Source of the Madness
						26305,	-- Saving Yenniku
						208,	-- Big Game Hunter
						26345,	-- Excelsior
						26269,	-- The Green Hills of Stranglethorn
					},
					-- #endif
				}),
				ach(940, {	-- The Green Hills of Stranglethorn
					-- #if AFTER CATA
					["sourceQuest"] = 208,	-- Big Game Hunter
					-- #else
					["sourceQuests"] = {
						208,	-- Big Game Hunter
						338,	-- The Green Hills of Stranglethorn
					},
					-- #endif
					-- #if BEFORE WRATH
					["AllSourceQuestsRequiredForAchievement"] = true,
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					407,	-- Forest Spiderling (PET!)
					404,	-- Long-tailed Mole (PET!)
					424,	-- Roach (PET!)
					401,	-- Strand Crab (PET!)
				}},
				["groups"] = {
					pet(406),	-- Beetle (PET!)
					pet(421, {	-- Crimson Moth (PET!)
						["coord"] = { 41.8, 41.6, NORTHERN_STRANGLETHORN },
					}),
					pet(408),	-- Lizard Hatchling (PET!)
					pet(409),	-- Polly (PET!)
					pet(405),	-- Tree Python (PET!)
				},
			}),
			explorationHeader({
				exploration(123),	-- Bal'lal Ruins
				exploration(127),	-- Balia'mah Ruins
				visit_exploration(5317,{coord={65.1,39.9,NORTHERN_STRANGLETHORN}}),	-- Bambala
				exploration(5320),	-- Fort Livingston
				exploration(117),	-- Grom'gol Base Camp
				exploration(125),	-- Kal'ai Ruins
				exploration(101),	-- Kurzen's Compound
				exploration(37),	-- Lake Nazferiti
				exploration(129),	-- Mizjah Ruins
				exploration(105),	-- Mosh'Ogg Ogre Mound
				exploration(100),	-- Nesingwary's Expedition
				exploration(99),	-- Rebel Camp
				exploration(102),	-- Ruins of Zul'Kunda
				exploration(103),	-- Ruins of Zul'Mamwe
				visit_exploration(301,{coord={43.8,57.4,NORTHERN_STRANGLETHORN}}),	-- The Savage Coast
				visit_exploration(106,{coord={60.0,18.3,NORTHERN_STRANGLETHORN}}),	-- The Stockpile
				exploration(104),	-- The Vile Reef
				exploration(126),	-- Tkashi Ruins
				exploration(1740),	-- Venture Co. Base Camp
				exploration(3357),	-- Yojamba Isle
				exploration(19),	-- Zul'Gurub
				exploration(122),	-- Zuuldaia Ruins
			}),
			n(FLIGHT_PATHS, {
				fp(593, {	-- Bambala, Stranglethorn
					["cr"] = 43052,	-- Raskha <Flight Master>
					["coord"] = { 62.4, 39.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(590, {	-- Fort Livingston, Stranglethorn
					["cr"] = 43042,	-- Robert Rhodes <Gryphon Master>
					["coord"] = { 52.6, 66.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(20, {	-- Grom'gol, Stranglethorn
					["cr"] = 1387,	-- Thysta <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.0, 51.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.6, 29.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(195, {	-- Rebel Camp, Stranglethorn
					["crs"] = {
						-- #if AFTER CATA
						43045,	-- James Stillair <Gryphon Master>
						-- #else
						24366,	-- Nizzle <Gryphon Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 47.8, 11.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.2, 4.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180901),	-- Bloodsail Wreckage
				}),
				prof(LEATHERWORKING, {
					n(7871, {	-- Se'Jib <Master Tribal Leatherworker>
						["coord"] = { 45.2, 58.6, NORTHERN_STRANGLETHORN },
						["races"] = HORDE_ONLY,
						["g"] = CLASSIC_TBC_TRIBAL,
					}),
				}),
			}),
			n(QUESTS, {
				q(26317, {	-- A Lashtail Hatchling
					["providers"] = {
						{ "n", 2465 },	-- Far Seer Mok'thardin
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["description"] = "Automatically granted after killing 12 eggs during the quest |cFFFFD700The Defense of Grom'gol: Raptor Risk|r.",
					["coord"] = { 38.3, 51.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26746, {	-- A Nose for This Sort of Thing (A)
					["providers"] = {
						{ "n", 43884 },	-- Osborn Obnoticus
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26745,	-- Favored Skull
					["coord"] = { 47.13, 10.56, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Tkashi Fetish
							["provider"] = { "i", 60291 },	-- Tkashi Fetish
						}),
					},
				}),
				q(26325, {	-- A Nose for This Sort of Thing (H)
					["providers"] = {
						{ "o", 2076 },	-- Bubbling Cauldron
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26323,	-- Favored Skull
					["coord"] = { 38.5, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Zuuldaian Fetish
							["provider"] = { "i", 58171 },	-- Zuuldaian Fetish
						}),
					},
				}),
				q(26747, {	-- A Physical Specimen
					["providers"] = {
						{ "n", 43884 },	-- Osborn Obnoticus
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26746,	-- A Nose for This Sort of Thing
					["coord"] = { 47.1, 10.5, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gan'zulah's Body
							["provider"] = { "i", 58179 },	-- Gan'zulah's Body
							["coord"] = { 25.0, 18.4, NORTHERN_STRANGLETHORN },
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
						}),
						i(61064, {	-- Electrostatic Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61063, {	-- Discarded Troll Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61062, {	-- Juju Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131595, {	-- Discarded Troll Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156989, {	-- Gan'zulah's Headchopper
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26404, {	-- Above My Pay Grade
					["qg"] = 42814,	-- Skeezy Whillzap
					["coord"] = { 62.7, 40.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(9457, {	-- An Unusual Patron
					["qg"] = 17094,	-- Nemeth Hawkeye
					["sourceQuest"] = 9436,	-- Bloodscalp Insight
					["coords"] = {
						-- #if AFTER CATA
						{ 38.1, 50.0, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32, 28.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Heart of Naias
							["providers"] = {
								{ "i",  23681 },	-- Heart of Naias
								{ "i",  23680 },	-- Gift of Naias
								{ "o", 181636 },	-- Altar of Naias
							},
							["coord"] = { 19.8, 22.6, STRANGLETHORN_VALE },
							["cr"] = 17207,	-- Naias
						}),
						i(61093, {	-- Junglewalker Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61092, {	-- Monnions of Raw Power
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61091, {	-- Blade of Exotic Magic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131255, {	-- Shouldersguards of Raw Power
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(204, {	-- Bad Medicine
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["cost"] = { { "i", 2633, 7 } },	-- Jungle Remedy
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/1 Venom Fern Extract
							["providers"] = {
								{ "i", 2634 },	-- Venom Fern Extract
								{ "o", 263 },	-- Kurzen Supplies
								{ "o", 264 },	-- Kurzen Supplies
							},
							["coord"] = { 44.5, 9.8, STRANGLETHORN_VALE },
						}),
						i(4126, {	-- Guerrilla Cleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4140, {	-- Palm Frond Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26732, {	-- Bad Medicine
					["qg"] = 739,	-- Brother Nimetz
					["coord"] = { 47.3, 11.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Jungle Remedy
							["provider"] = { "i", 2633 },	-- Jungle Remedy
							["crs"] = {
								941,	-- Kurzen Headshrinker
								942,	-- Kurzen Witch Doctor
								940,	-- Kurzen Medicine Man
								937,	-- Kurzen Jungle Fighter
							},
						}),
						i(61054, {	-- Nimetz's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61053, {	-- Cord of the Ascetic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61052, {	-- Missionary's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131591, {	-- Cinch of the Ascetic
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26775, {	-- Be Raptor (A)
					["qg"] = 44017,	-- Priestess Thaalia
					["sourceQuest"] = 26774,	-- Mind Control
					["coord"] = { 53.4, 66.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Speak with Tan'shang
							["provider"] = { "n", 42881 },	-- Tan'shang
							["coord"] = { 89.0, 46.2, NORTHERN_STRANGLETHORN },
						}),
						objective(2, {	-- Help Tenjiyu
							["provider"] = { "n", 42882 },	-- Tenjiyu
							["coord"] = { 86.8, 44.4, NORTHERN_STRANGLETHORN },
						}),
						objective(3, {	-- Speak with Chiyu
							["provider"] = { "n", 42883 },	-- Chiyu
							["coord"] = { 82.8, 37.4, NORTHERN_STRANGLETHORN },
						}),
						objective(4, {	-- Escape from Zul'Gurub
							["provider"] = { "n", 42884 },	-- Shade of the Hexxer
							["coord"] = { 73.4, 32.8, NORTHERN_STRANGLETHORN },
						}),
						i(61080, {	-- Band of Raptor Teeth
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61079, {	-- Belt of the High Shaman
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61078, {	-- Thaalia's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61077, {	-- Jingle Spirits' Embrace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131599, {	-- Waistguard of the High Shaman
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26362, {	-- Be Raptor (H)
					["qg"] = 42812,	-- Priestess Hu'rala
					["sourceQuest"] = 26360,	-- Mind Control
					["coord"] = { 63.4, 39.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Speak with Tan'shang
							["provider"] = { "n", 42881 },	-- Tan'shang
							["coord"] = { 89.0, 46.2, NORTHERN_STRANGLETHORN },
						}),
						objective(2, {	-- Help Tenjiyu
							["provider"] = { "n", 42882 },	-- Tenjiyu
							["coord"] = { 86.8, 44.4, NORTHERN_STRANGLETHORN },
						}),
						objective(3, {	-- Speak with Chiyu
							["provider"] = { "n", 42883 },	-- Chiyu
							["coord"] = { 82.8, 37.4, NORTHERN_STRANGLETHORN },
						}),
						objective(4, {	-- Escape from Zul'Gurub
							["provider"] = { "n", 42884 },	-- Shade of the Hexxer
							["coord"] = { 73.4, 32.8, NORTHERN_STRANGLETHORN },
						}),
						i(61123, {	-- Band of Raptor Teeth
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61122, {	-- Belt of the High Shaman
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61121, {	-- Hu'rula's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61120, {	-- Jungle Spirits' Embrace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131515, {	-- Waistguard of the High Shaman
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(208, {	-- Big Game Hunter
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["sourceQuests"] = {
						193,	-- Panther Mastery
						197,	-- Raptor Mastery
						188,	-- Tiger Mastery
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Bangalash
							["provider"] = { "i", 3880 },	-- Head of Bangalash
							["coord"] = { 38.6, 35.6, STRANGLETHORN_VALE },
							["cr"] = 731,	-- King Bangalash
						}),
						i(61127, {	-- Gloves of the Jungle King
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61126, {	-- Mantle of the White Tiger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61125, {	-- Nesingwary's Sash
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61124, {	-- Bangalash's Claw
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131202, {	-- Monnion of the White Tiger
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(17686, {	-- Master Hunter's Bow
							["timeline"] = { ADDED_1_2_0, REMOVED_4_0_3 },
						}),
						i(17687, {	-- Master Hunter's Rifle
							["timeline"] = { ADDED_1_2_0, REMOVED_4_0_3 },
						}),
						i(4110, {	-- Master Hunter's Bow
							["timeline"] = { REMOVED_1_2_0 },
							["collectible"] = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
							-- If anything, it should match the sourceID of the other item by that name. (7170)
							-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
						}),
						i(4111, {	-- Master Hunter's Rifle
							["timeline"] = { REMOVED_1_2_0 },
							["collectible"] = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
							-- If anything, it should match the sourceID of the other item by that name. (7171)
							-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
						}),
					},
				}),
				q(26748, {	-- Bloodlord Mandokir (A)
					["providers"] = {
						{ "n", 42790 },	-- Bloodlord Mandokir
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26747,	-- A Physical Specimen
					["coord"] = { 47.1, 10.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26334, {	-- Bloodlord Mandokir (H)
					["providers"] = {
						{ "n", 42790 },	-- Bloodlord Mandokir
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26332,	-- Skullsplitter Mojo
					["coord"] = { 38.4, 48.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(584, {	-- Bloodscalp Clan Heads
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 582,	-- Headhunting
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Gan'zulah's Head
							["provider"] = { "i", 3904 },	-- Gan'zulah's Head
							["coord"] = { 23.8, 8.6, STRANGLETHORN_VALE },
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
						}),
						objective(2, {	-- 0/1 Nezzliok's Head
							["provider"] = { "i", 3905 },	-- Nezzliok's Head
							["coord"] = { 23.6, 9.6, STRANGLETHORN_VALE },
							["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
						}),
					},
				}),
				q(189, {	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Bloodscalp Ear
							["provider"] = { "i", 1519 },	-- Bloodscalp Ear
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						i(4598, {	-- Goblin Fishing Pole
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26742, {	-- Bloodscalp Insight (A)
					["qg"] = 43886,	-- Berrin Burnquill
					["sourceQuests"] = {
						26736,	-- Spared from Madness
						26737,	-- Stopping Kurzen's Legacy
					},
					["coord"] = { 47.9, 12.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodscalp Totem
							["provider"] = { "i", 23679 },	-- Bloodscalp Totem
							["coord"] = { 34.8, 36.6, NORTHERN_STRANGLETHORN },
							["cr"] = 697,	-- Bloodscalp Shaman
						}),
					},
				}),
				q(9436, {	-- Bloodscalp Insight (H)
					["qg"] = 17094,	-- Nemeth Hawkeye
					-- #if AFTER CATA
					["sourceQuests"] = {
						26321,	-- I Think She's Hungry
						26279,	-- The Defense of Grom'gol: Ogre Oppression
						26280,	-- The Defense of Grom'gol: Murloc Menace
					},
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 38.1, 50.0, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32, 28.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodscalp Totem
							["provider"] = { "i", 23679 },	-- Bloodscalp Totem
							["coord"] = { 34.8, 36.6, NORTHERN_STRANGLETHORN },
							["cr"] = 697,	-- Bloodscalp Shaman
						}),
					},
				}),
				q(596, {	-- Bloody Bone Necklaces
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/25 Bloody Bone Necklace
							["provider"] = { "i", 3915 },	-- Bloody Bone Necklace
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						i(4135, {	-- Bloodbone Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(200, {	-- Bookie Herod
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 215,	-- Jungle Secrets
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(339, {	-- Chapter I
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2725, 1 },	-- Green Hills of Stranglethorn - Page 1
						{ "i", 2728, 1 },	-- Green Hills of Stranglethorn - Page 4
						{ "i", 2730, 1 },	-- Green Hills of Stranglethorn - Page 6
						{ "i", 2732, 1 },	-- Green Hills of Stranglethorn - Page 8
					},
					["lvl"] = 30,
					["groups"] = {
						i(2756, {	-- Green Hills of Stranglethorn - Chapter I
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(340, {	-- Chapter II
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2734, 1 },	-- Green Hills of Stranglethorn - Page 10
						{ "i", 2735, 1 },	-- Green Hills of Stranglethorn - Page 11
						{ "i", 2738, 1 },	-- Green Hills of Stranglethorn - Page 14
						{ "i", 2740, 1 },	-- Green Hills of Stranglethorn - Page 16
					},
					["lvl"] = 30,
					["groups"] = {
						i(2757, {	-- Green Hills of Stranglethorn - Chapter II
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(341, {	-- Chapter III
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2742, 1 },	-- Green Hills of Stranglethorn - Page 18
						{ "i", 2744, 1 },	-- Green Hills of Stranglethorn - Page 20
						{ "i", 2745, 1 },	-- Green Hills of Stranglethorn - Page 21
						{ "i", 2748, 1 },	-- Green Hills of Stranglethorn - Page 24
					},
					["lvl"] = 30,
					["groups"] = {
						i(2758, {	-- Green Hills of Stranglethorn - Chapter III
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(342, {	-- Chapter IV
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2749, 1 },	-- Green Hills of Stranglethorn - Page 25
						{ "i", 2750, 1 },	-- Green Hills of Stranglethorn - Page 26
						{ "i", 2751, 1 },	-- Green Hills of Stranglethorn - Page 27
					},
					["lvl"] = 30,
					["groups"] = {
						i(2759, {	-- Green Hills of Stranglethorn - Chapter IV
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26302, {	-- Chasing Yenniku's Fate
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 26301,	-- Speaking with Nezzliok
					["coord"] = { 38.5, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(202, {	-- Colonel Kurzen
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 574,	-- Special Forces
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Kurzen Elite slain
							["provider"] = { "n", 939 },	-- Kurzen Elite
						}),
						objective(2, {	-- 0/4 Kurzen Subchief slain
							["provider"] = { "n", 978 },	-- Kurzen Subchief
						}),
						objective(3, {	-- 0/1 Kurzen's Head
							["provider"] = { "n", 3615 },	-- Kurzen's Head
							["coord"] = { 49.6, 4.0, STRANGLETHORN_VALE },
							["cr"] = 813,	-- Colonel Kurzen
						}),
						i(4127, {	-- Shrapnel Blaster
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26733, {	-- Control Sample
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 26732,	-- Bad Medicine
					["coord"] = { 47.2, 11.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Crystal Spine Basilisk Blood
							["provider"] = { "i", 60213 },	-- Crystal Spine Basilisk Blood
							["coords"] = {
								{ 27.4, 33.2, NORTHERN_STRANGLETHORN },
								{ 62.0, 22.4, NORTHERN_STRANGLETHORN },
							},
							["cr"] = 689,	-- Crystal Spine Basilisk
						}),
					},
				}),
				q(26352, {	-- Cozzle's Plan
					["qg"] = 42813,	-- Kil'karil
					["sourceQuest"] = 26399,	-- The Mosh'Ogg Bounty
					["coord"] = { 63.2, 39.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fuel Regulator Blueprints
							["providers"] = {
								{ "i", 5852 },	-- Fuel Regulator Blueprints
								{ "o", 20691 },	-- Cozzle's Footlocker
							},
							["coord"] = { 55.8, 37.3, NORTHERN_STRANGLETHORN },
							["cost"] = {{ "i", 5851, 1 }},	-- Cozzle's Key
						}),
						objective(2, {	-- 0/1 Cozzle's Key
							["provider"] = { "i", 5851 },	-- Cozzle's Key
							["coord"] = { 54.6, 34.2, NORTHERN_STRANGLETHORN },
							["cr"] = 4723,	-- Foreman Cozzle
						}),
					},
				}),
				q(26744, {	-- Deep Roots
					["qg"] = 1422,	-- Corporal Sethman
					["sourceQuest"] = 26739,	-- I Think She's Hungry
					["coord"] = { 46.9, 10.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodscalp Lore Tablet
							["providers"] = {
								{ "i", 60295 },	-- Bloodscalp Lore Tablet
								{ "o", 57 },	-- Bloodscalp Lore Tablet
							},
							["coord"] = { 33.7, 36.8, NORTHERN_STRANGLETHORN },
						}),
						i(61066, {	-- Well Crafted Leather Britches
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61065, {	-- Soft Cotton Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61067, {	-- Rebel Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131594, {	-- Well Crafted Chain Britches
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(3625, {	-- Enchanted Azsharite Fel Weaponry
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3621,	-- The Formation of Felbane
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(10697, {	-- Enchanted Azsharite Felbane Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10698, {	-- Enchanted Azsharite Felbane Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10696, {	-- Enchanted Azsharite Felbane Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2765, {	-- Expert Blacksmith!
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuests"] = {
						2761,	-- Smelt On, Smelt Off
						2762,	-- The Great Silver Deceiver
						2763,	-- The Art of the Imbue
					},
					["requireSkill"] = BLACKSMITHING,
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						i(8703,	{	-- Signet of Expertise
							["timeline"] = { REMOVED_4_0_3 },
							["groups"] = {
								i(8708, {	-- Hammer of Expertise
									["timeline"] = { REMOVED_4_0_3 },
									["collectible"] = false,
								}),
							},
						}),
					},
				}),
				q(26345, {	-- Excelsior
					["qg"] = 2495,	-- Drizzlik
					["sourceQuest"] = 26344,	-- Some Assembly Required
					["coord"] = { 43.6, 23.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Elder Crocolisk Skin
							["provider"] = { "i", 4105 },	-- Elder Crocolisk Skin
							["cr"] = 2635,	-- Elder Saltwater Crocolisk
						}),
						i(131892, {	-- Excelsior Footwear
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61106, {	-- Excelsior Waders
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26745, {	-- Favored Skull (A)
					["providers"] = {
						{ "n", 42736 },	-- Lashtail Hatchling
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["description"] = "Available on arrival to the |cFFFFD700Bal'lal Ruins|r.",
					["sourceQuest"] = 26739,	-- I Think She's Hungry
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26323, {	-- Favored Skull (H)
					["providers"] = {
						{ "n", 42736 },	-- Lashtail Hatchling
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["description"] = "Available on arrival to the |cFFFFD700Bal'lal Ruins|r.",
					["sourceQuest"] = 26321,	-- I Think She's Hungry
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2764, {	-- Galvan's Finest Pupil
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuests"] = {
						2761,	-- Smelt On, Smelt Off
						2762,	-- The Great Silver Deceiver
						2763,	-- The Art of the Imbue
					},
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
				}),
				q(26776, {	-- Ghaliri
					["qg"] = 44017,	-- Priestess Thaalia
					["sourceQuest"] = 26775,	-- Be Raptor
					["coord"] = { 53.4, 66.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2932, {	-- Grim Message
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Place the grim message.
							["provider"] = { "i", 9319 },	-- Nimboya's Laden Pike
							["coord"] = { 32, 58, THE_HINTERLANDS },
							["cost"] = {
								{ "i", 15002, 1 },	-- Nimboya's Pike
								{ "i", 9320, 20 },	-- Witherbark Skull x20
							},
						}),
						i(9320, {	-- Witherbark Skull
							["crs"] = {
								2654,	-- Witherbark Caller
								2651,	-- Witherbark Hideskinner
								2653,	-- Witherbark Sadist
								2649,	-- Witherbark Scalper
								2652,	-- Witherbark Venomblood
								2650,	-- Witherbark Zealot
							},
						}),
					},
				}),
				q(582, {	-- Headhunting
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 581,	-- Hunt for Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/20 Shrunken Head
							["provider"] = { "i", 1532 },	-- Shrunken Head
							["cr"] = 671,	-- Bloodscalp Headhunter
						}),
						i(4133, {	-- Darkspear Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4132, {	-- Darkspear Armsplints
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26299, {	-- Headhunting
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 26298,	-- Hunt for Yenniku
					["coord"] = { 38.4, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Shrunken Head
							["provider"] = { "i", 1532 },	-- Shrunken Head
							["crs"] = {
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						i(61090, {	-- Head Inspector's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61089, {	-- Palm Frond Shoulderpads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61088, {	-- Junglestrider Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131506, {	-- Palm Frond Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61087, {	-- Ring of Six Hundred Years
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				heroscall(q(28699, {	-- Hero's Call: Northern Stranglethorn!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },	-- Only found in Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28. (TODO: Test max level between 28 and 35)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				q(581, {	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Bloodscalp Tusk
							["provider"] = { "i", 3901 },	-- Bloodscalp Tusk
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
					},
				}),
				q(26298, {	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["sourceQuests"] = {
						26280,	-- The Defense of Grom'gol: Murloc Menace
						26279,	-- The Defense of Grom'gol: Ogre Oppression
					},
					["coord"] = { 38.4, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Bloodscalp Tusk
							["provider"] = { "i", 3901 },	-- Bloodscalp Tusk
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
					},
				}),
				q(26739, {	-- I Think She's Hungry (A)
					["providers"] = {
						{ "n", 1422 },	-- Corporal Sethman
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26738,	-- Just Hatched
					["coord"] = { 46.9, 10.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/40 Bites of basilisk meat
							["provider"] = { "n", 689 },	-- Crystal Spine Basilisk
						}),
					},
				}),
				q(26321, {	-- I Think She's Hungry (H)
					["providers"] = {
						{ "n", 2465 },	-- Far Seer Mok'thardin
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26317,	-- A Lashtail Hatchling
					["coord"] = { 38.4, 51.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/40 Bites of Murkgill meat
							["providers"] = {
								{ "n", 4460 },	-- Murkgill Coldbringer
								{ "n", 4457 },	-- Murkgill Forager
								{ "n", 4458 },	-- Murkgill Hunter
								{ "n", 4459 },	-- Murkgill Oracle
								{ "n", 4461 },	-- Murkgill Warrior
							},
						}),
					},
				}),
				q(215, {	-- Jungle Secrets
					["qg"] = 738,	-- Private Thorsen
					-- #if BEFORE 4.0.3
					["description"] = "Every so often, Thorsen will go on patrol. If you follow him, he will be ambushed by two of Kurzen's lackeys - if he survives, he will offer you this quest.",
					-- #endif
					["coord"] = { 40, 8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(26738, {	-- Just Hatched
					["providers"] = {
						{ "n", 1422 },	-- Corporal Sethman
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["description"] = "Automatically granted after obtaining 7 'Jungle Remedies' during the quest |cFFFFD700Bad Medicine|r.",
					["sourceQuest"] = 26732,	-- Bad Medicine
					["coord"] = { 46.9, 10.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(210, {	-- Krazek's Cookery
					["providers"] = {
						{ "n", 770 },	-- Corporal Kaleb
						{ "i", 4085 },	-- Krazek's Crock Pot
					},
					["coord"] = { 37.7, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(26740, {	-- Krazek's Cookery
					["providers"] = {
						{ "n", 770 },	-- Corporal Kaleb
						{ "i", 4085 },	-- Krazek's Crock Pot
					},
					["coord"] = { 47.1, 10.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(207, {	-- Kurzen's Mystery
					["qg"] = 739,	-- Brother Nimetz
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 The First Troll Legend
							["providers"] = {
								{ "i", 2005 },	-- The First Troll Legend
								{ "o", 57 },	-- Moon Over the Vale
							},
							["coord"] = { 29.5, 19.2, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 The Second Troll Legend
							["providers"] = {
								{ "i", 2006 },	-- The Second Troll Legend
								{ "o", 58 },	-- Gri'lek the Wanderer
							},
							["coords"] = {
								{ 24.8, 22.8, STRANGLETHORN_VALE },
								{ 24.8, 23.1, STRANGLETHORN_VALE },
							},
						}),
						objective(3, {	-- 0/1 The Third Troll Legend
							["providers"] = {
								{ "i", 2007 },	-- The Third Troll Legend
								{ "o", 52 },	-- Fall of Gurubashi
							},
							["coord"] = { 23.0, 12.0, STRANGLETHORN_VALE },
						}),
						objective(4, {	-- 0/1 The Fourth Troll Legend
							["providers"] = {
								{ "i", 2008 },	-- The Fourth Troll Legend
								{ "o", 54 },	-- The Emperor's Tomb
							},
							["coord"] = { 23.7, 9.0, STRANGLETHORN_VALE },
						}),
					},
				}),
				q(206, {	-- Mai'Zoth
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuests"] = {
						202,	-- Colonel Kurzen
						205,	-- Troll Witchery
					},
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["cr"] = 818,	-- Mai'Zoth
						}),
						i(4125, {	-- Tranquil Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26774, {	-- Mind Control (A)
					["qg"] = 44017,	-- Priestess Thaalia
					["sourceQuest"] = 26773,	-- See Raptor
					["coord"] = { 53.4, 66.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Braddok's Big Brain
							["provider"] = { "i", 58225 },	-- Braddok's Big Brain
							["coord"] = { 63.0, 74.6, NORTHERN_STRANGLETHORN },
							["cr"] = 42858,	-- Braddok <Big Kahuna>
						}),
					},
				}),
				q(26360, {	-- Mind Control (H)
					["qg"] = 42812,	-- Priestess Hu'rala
					["sourceQuest"] = 26359,	-- See Raptor
					["coord"] = { 63.4, 39.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Braddok's Big Brain
							["provider"] = { "i", 58225 },	-- Braddok's Big Brain
							["coord"] = { 63.0, 74.6, NORTHERN_STRANGLETHORN },
							["cr"] = 42858,	-- Braddok <Big Kahuna>
						}),
					},
				}),
				q(26772, {	-- Mind Vision (A)
					["qg"] = 44017,	-- Priestess Thaalia
					["sourceQuest"] = 26749,	-- Priestess Thaalia
					["coord"] = { 53.4, 66.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Jungle Stalker Feather
							["provider"] = { "i", 3863 },	-- Jungle Stalker Feather
							["coord"] = { 54.0, 50.0, NORTHERN_STRANGLETHORN },
							["cr"] = 687,	-- Jungle Stalker
						}),
					},
				}),
				q(26351, {	-- Mind Vision (H)
					["qg"] = 42812,	-- Priestess Hu'rala
					["sourceQuest"] = 26350,	-- Priestess Hu'rala
					["coord"] = { 63.4, 39.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Jungle Stalker Feather
							["provider"] = { "i", 3863 },	-- Jungle Stalker Feather
							["coord"] = { 54.0, 50.0, NORTHERN_STRANGLETHORN },
							["cr"] = 687,	-- Jungle Stalker
						}),
					},
				}),
				q(570, {	-- Mok'thardin's Enchantment (1/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/8 Shadowmaw Claw
							["provider"] = { "i", 3838 },	-- Shadowmaw Claw
							["crs"] = {
								1713,	-- Elder Shadowmaw Panther
								684,	-- Shadowmaw Panther
							},
						}),
						objective(2, {	-- 0/1 Pristine Tigress Fang
							["provider"] = { "i", 3839 },	-- Pristine Tigress Fang
							["cr"] = 772,	-- Stranglethorn Tigress
						}),
					},
				}),
				q(572, {	-- Mok'thardin's Enchantment (2/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 570,	-- Mok'thardin's Enchantment (1/4)
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Stalker Feather
							["provider"] = { "i", 3863 },	-- Jungle Stalker Feather
							["cr"] = 687,	-- Jungle Stalker
						}),
					},
				}),
				q(571, {	-- Mok'thardin's Enchantment (3/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 572,	-- Mok'thardin's Enchantment (2/4)
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/1 Aged Gorilla Sinew
							["provider"] = { "i", 3862 },	-- Aged Gorilla Sinew
							["cr"] = 1557,	-- Elder Mistvale Gorilla
						}),
					},
				}),
				q(573, {	-- Mok'thardin's Enchantment (4/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 571,	-- Mok'thardin's Enchantment (3/4)
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Naga Explorer slain
							["provider"] = { "n", 1907 },	-- Naga Explorer
						}),
						objective(2, {	-- 0/1 Holy Spring Water
							["providers"] = {
								{ "i", 737 },	-- Holy Spring Water
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						}),
						i(4112, {	-- Choker of the High Shaman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26407, {	-- Mosh'Ogg Handiwork
					["provider"] = { "i", 58491 },	-- Disfigured Mosh'Ogg Hand
					["description"] = "Typically drops during |cFFFFD700The Defense of Grom'gol: Ogre Oppression|r.",
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = {
						1142,	-- Mosh'Ogg Brute
						1144,	-- Mosh'Ogg Witch Doctor
					},
					["races"] = HORDE_ONLY,
				}),
				q(26300, {	-- Nezzliok Will Know
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 26299,	-- Headhunting
					["coord"] = { 38.4, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Nezzliok's Head
							["provider"] = { "i", 3905 },	-- Nezzliok's Head
							["coord"] = { 26.6, 19.8, NORTHERN_STRANGLETHORN },
							["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
						}),
					},
				}),
				q(26780, {	-- Nighttime in the Jungle (A)
					["qg"] = 44043,	-- Kinnel
					["sourceQuest"] = 26773,	-- See Raptor
					["coord"] = { 53.2, 66.5, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Zul'Mamwe Brazier
							["provider"] = { "o", 204247 },	-- Zul'Mamwe Brazier
							["coord"] = { 53.2, 66.5, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(26304, {	-- Nighttime in the Jungle (H)
					["qg"] = 42813,	-- Kil'karil
					["sourceQuest"] = 26359,	-- See Raptor
					["coord"] = { 63.2, 39.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Zul'Mamwe Brazier
							["provider"] = { "o", 204247 },	-- Zul'Mamwe Brazier
							["coord"] = { 53.2, 66.5, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(26417, {	-- Northern Stranglethorn: The Fallen Empire
					["qg"] = 43062,	-- Bort
					["sourceQuest"] = 26416,	-- Well, Come to the Jungle
					["coord"] = { 51.2, 56.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(190, {	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Young Panther slain
							["provider"] = { "n", 683 },	-- Young Panther
						}),
					},
				}),
				q(193, {	-- Panther Mastery (4/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 192,	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Fang of Bhag'thera
							["provider"] = { "i", 3876 },	-- Fang of Bhag'thera
							["coords"] = {
								{ 49.0, 20.6, STRANGLETHORN_VALE },
								{ 49.8, 24.6, STRANGLETHORN_VALE },
								{ 47.8, 28.0, STRANGLETHORN_VALE },
							},
							["cr"] = 728,	-- Bhag'thera
						}),
						i(61109, {	-- Bhag'thera's Roar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61108, {	-- Shield of the Panther
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61107, {	-- Mantle of the Panther
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(4108, {	-- Panther Hunter Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(192, {	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 191,	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Shadowmaw Panther slain
							["provider"] = { "n", 684 },	-- Shadowmaw Panther
						}),
					},
				}),
				q(191, {	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 190,	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Panther slain
							["provider"] = { "n", 736 },	-- Panther
						}),
					},
				}),
				q(330, {	-- Patrol Schedules
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 329,	-- The Spy Revealed!
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(26751, {	-- Population Con-Troll (A)
					["qg"] = 733,	-- Sergeant Yohwa
					["sourceQuest"] = 26746,	-- A Nose for This Sort of Thing
					["coord"] = { 47.5, 10.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodscalp Mystic slain
							["provider"] = { "n", 701 },	-- Bloodscalp Mystic
						}),
						objective(2, {	-- 0/7 Bloodscalp Scout slain
							["provider"] = { "n", 588 },	-- Bloodscalp Scout
						}),
						objective(3, {	-- 0/7 Bloodscalp Hunter slain
							["provider"] = { "n", 595 },	-- Bloodscalp Hunter
						}),
						objective(4, {	-- 0/1 Bloodscalp Beastmaster slain
							["provider"] = { "n", 699 },	-- Bloodscalp Beastmaster
						}),
					},
				}),
				q(26338, {	-- Population Con-Troll (H)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 26330,	-- Who's a Big Troll?
					["coord"] = { 38.3, 51.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Bloodscalp Mystic slain
							["provider"] = { "n", 701 },	-- Bloodscalp Mystic
						}),
						objective(2, {	-- 0/7 Bloodscalp Scout slain
							["provider"] = { "n", 588 },	-- Bloodscalp Scout
						}),
						objective(3, {	-- 0/7 Bloodscalp Hunter slain
							["provider"] = { "n", 595 },	-- Bloodscalp Hunter
						}),
						objective(4, {	-- 0/1 Bloodscalp Beastmaster slain
							["provider"] = { "n", 699 },	-- Bloodscalp Beastmaster
						}),
					},
				}),
				q(26350, {	-- Priestess Hu'rala
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 26334,	-- Bloodlord Mandokir
					["coord"] = { 38.4, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26749, {	-- Priestess Thaalia
					["qg"] = 43884,	-- Osborn Obnoticus
					["sourceQuest"] = 26748,	-- Bloodlord Mandokir
					["coord"] = { 47.1, 10.5, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(194, {	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Stranglethorn Raptor slain
							["provider"] = { "n", 685 },	-- Stranglethorn Raptor
						}),
					},
				}),
				q(197, {	-- Raptor Mastery (4/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["sourceQuest"] = 196,	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Talon of Tethis
							["provider"] = { "i", 3877 },	-- Talon of Tethis
							["coords"] = {
								-- #if AFTER CATA
								{ 61.6, 60.2, NORTHERN_STRANGLETHORN },
								-- #else
								{ 29.6, 44.8, STRANGLETHORN_VALE },
								-- #endif
							},
							["cr"] = 730,	-- Tethis
						}),
						i(61111, {	-- Belt of the Raptor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61112, {	-- Raptor Slayer's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61110, {	-- Tethis' Skull
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131201, {	-- Scale-Cord of the Raptor
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(4119, {	-- Raptor Hunter Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(196, {	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["sourceQuest"] = 195,	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Stalker slain
							["provider"] = { "n", 687 },	-- Jungle Stalker
						}),
					},
				}),
				q(195, {	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["sourceQuest"] = 194,	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Lashtail Raptor slain
							["provider"] = { "n", 686 },	-- Lashtail Raptor
						}),
					},
				}),
				q(26838, {	-- Rebels Without a Clue
					["qgs"] = {
						3885,	-- Sentinel Velene Starstrike
						43731,	-- Sister Elsington
					},
					["coords"] = {
						{ 35.6, 71.5, ASHENVALE },
						{ 20.0, 57.8, DUSKWOOD },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(331, {	-- Report to Doren
					["qg"] = 1422,	-- Corporal Sethman
					["sourceQuest"] = 330,	-- Patrol Schedules
					["coord"] = { 37.7, 3.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4123, {	-- Frost Metal Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4139, {	-- Junglewalker Sandals
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(622, {	-- Return to Corporal Kaleb
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 1987 },	-- Krazek's Fixed Pot
					},
					["sourceQuest"] = 627,	-- Favor for Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(4124),	-- Cap of Harmony
					},
					-- #endif
				}),
				q(26765, {	-- Return to Corporal Kaleb
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 1987 },	-- Krazek's Fixed Pot
					},
					["sourceQuest"] = 26763,	-- Venture Company Mining
					["coord"] = { 43.6, 23.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4124),	-- Cap of Harmony
					},
				}),
				q(3626, {	-- Return to the Blasted Lands
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(26743, {	-- Sacred to the Bloodscalp
					["qg"] = 43886,	-- Berrin Burnquill
					["sourceQuest"] = 26742,	-- Bloodscalp Insight
					["coord"] = { 47.9, 12.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Icon of Tsul'Kalu
							["provider"] = { "i", 60270 },	-- Icon of Tsul'Kalu
							["cr"] = 702,	-- Bloodscalp Scavenger
						}),
						objective(2, {	-- 0/1 Icon of Mahamba
							["provider"] = { "i", 60271 },	-- Icon of Mahamba
							["cr"] = 702,	-- Bloodscalp Scavenger
						}),
						objective(3, {	-- 0/1 Icon of Pogeyan
							["provider"] = { "i", 60272 },	-- Icon of Pogeyan
							["cr"] = 702,	-- Bloodscalp Scavenger
						}),
						i(61058, {	-- Tsul'kalu's Strikers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61057, {	-- Mahamba's Caress
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61056, {	-- Bloodscalp Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131593, {	-- Mahamba's Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61055, {	-- Wildhammer Scribe's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(592, {	-- Saving Yenniku
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 591,	-- The Mind's Eye
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						q(593, {	-- Filling the Soul Gem
							["qg"] = 2530,	-- Yenniku <Darkspear Hostage>
							["coord"] = { 39, 58.2, STRANGLETHORN_VALE },
							["cost"] = { { "i", 3912, 1 } },	-- Soul Gem
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Filled Soul Gem
									["questID"] = 592,	-- Saving Yenniku
									["provider"] = { "i", 3913 },	-- Filled Soul Gem
								}),
							},
						}),
						i(4134, {	-- Nimboya's Mystical Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6723, {	-- Medal of Courage
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26305, {	-- Saving Yenniku
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 26303,	-- The Mind's Eye
					["coord"] = { 63.0, 41.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Soul Gem
							["providers"] = {
								{ "i", 3913 },	-- Filled Soul Gem
								{ "i", 3912 },	-- Soul Gem
							},
							["coord"] = { 57.4, 75.2, NORTHERN_STRANGLETHORN },
							["cr"] = 2530,	-- Yenniku <Darkspear Hostage>
						}),
						i(61102, {	-- Nimboya's Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61101, {	-- Weavers of the Unending Tale
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61100, {	-- Stone Etcher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131508, {	-- Linkers of the Unending Tale
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26773, {	-- See Raptor (A)
					["qg"] = 44017,	-- Priestess Thaalia
					["sourceQuest"] = 26772,	-- Mind Vision
					["coord"] = { 53.4, 66.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26359, {	-- See Raptor (H)
					["qg"] = 42812,	-- Priestess Hu'rala
					["sourceQuest"] = 26351,	-- Mind Vision
					["coord"] = { 63.4, 39.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26332, {	-- Skullsplitter Mojo
					["providers"] = {
						{ "o", 2076 },	-- Bubbling Cauldron
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26330,	-- Who's a Big Troll?
					["coord"] = { 38.5, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Skullsplitter Mojo
							["provider"] = { "i", 58201 },	-- Skullsplitter Mojo
							["crs"] = {
								667,	-- Skullsplitter Warrior
								696,	-- Skullsplitter Axe Thrower
								780,	-- Skullsplitter Mystic
							},
						}),
					},
				}),
				q(2761, {	-- Smelt On, Smelt Off
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 2760,	-- The Mithril Order
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["cost"] = {
						{ "i", 3575, 40 },	-- Iron Bar
						{ "i", 3860, 40 },	-- Mithril Bar
					},
					["lvl"] = 40,
					["groups"] = {
						i(7983, {	-- Plans: Ornate Mithril Pants (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26344, {	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["sourceQuest"] = 26343,	-- Supply and Demand
					["coord"] = { 43.6, 23.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Snapjaw Crocolisk Skin
							["provider"] = { "i", 4104 },	-- Snapjaw Crocolisk Skin
							["cr"] = 1152,	-- Snapjaw Crocolisk
						}),
					},
				}),
				q(26736, {	-- Spared from Madness
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 26735,	-- The Fate of Kurzen
					["coord"] = { 47.5, 10.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Rescue Berrin Burnquill
							["provider"] = { "n", 43921 },	-- Berrin Burnquill
						}),
						objective(2, {	-- Rescue Emerine Junis
							["provider"] = { "n", 43920 },	-- Emerine Junis
						}),
						objective(3, {	-- Rescue Osborn Obnoticus
							["provider"] = { "n", 43919 },	-- Osborn Obnoticus
						}),
					},
				}),
				q(586, {	-- Speaking with Gan'zulah
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 584,	-- Bloodscalp Clan Heads
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Skullsplitter Hunter slain
							["provider"] = { "n", 669 },	-- Skullsplitter Hunter
						}),
						objective(2, {	-- 0/8 Skullsplitter Headhunter slain
							["provider"] = { "n", 781 },	-- Skullsplitter Headhunter
						}),
						objective(3, {	-- 0/8 Skullsplitter Berserker slain
							["provider"] = { "n", 783 },	-- Skullsplitter Berserker
						}),
						objective(4, {	-- 0/1 Broken Armor of Ana'thek
							["provider"] = { "i", 3909 },	-- Broken Armor of Ana'thek
							["coord"] = { 44.6, 44.2, STRANGLETHORN_VALE },
							["cr"] = 1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
						}),
					},
				}),
				q(585, {	-- Speaking with Nezzliok
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 584,	-- Bloodscalp Clan Heads
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Balia'mah Trophy
							["providers"] = {
								{ "i", 3906 },	-- Balia'mah Trophy
								{ "o", 2891 },	-- Balia'mah Trophy Skulls
							},
							["coord"] = { 46.1, 32.4, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 Ziata'jai Trophy
							["providers"] = {
								{ "i", 3907 },	-- Ziata'jai Trophy
								{ "o", 2892 },	-- Ziata'jai Trophy Skulls
							},
							["coord"] = { 42.2, 36.1, STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Zul'Mamwe Trophy
							["providers"] = {
								{ "i", 3908 },	-- Zul'Mamwe Trophy
								{ "o", 2893 },	-- Zul'Mamwe Trophy Skulls
							},
							["coord"] = { 47.6, 39.5, STRANGLETHORN_VALE },
						}),
					},
				}),
				q(26301, {	-- Speaking with Nezzliok
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 26300,	-- Nezzliok Will Know
					["coord"] = { 38.5, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Balia'mah Trophy
							["providers"] = {
								{ "i", 3906 },	-- Balia'mah Trophy
								{ "o", 2891 },	-- Balia'mah Trophy Skulls
							},
							["coord"] = { 60.2, 55.8, NORTHERN_STRANGLETHORN },
						}),
						objective(2, {	-- 0/1 Ziata'jai Trophy
							["providers"] = {
								{ "i", 3907 },	-- Ziata'jai Trophy
								{ "o", 2892 },	-- Ziata'jai Trophy Skulls
							},
							["coord"] = { 54.0, 61.7, NORTHERN_STRANGLETHORN },
						}),
						i(61099, {	-- Slaver's Plate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61098, {	-- Balia'mah Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61097, {	-- Ziata'jai Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131507, {	-- Balia'mah Chain Pants
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(574, {	-- Special Forces
					["qg"] = 733,	-- Sergeant Yohwa
					["sourceQuests"] = {
						204,	-- Bad Medicine
						203,	-- The Second Rebellion
					},
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Kurzen Commando slain
							["provider"] = { "n", 938 },	-- Kurzen Commando
						}),
						objective(2, {	-- 0/6 Kurzen Headshrinker slain
							["provider"] = { "n", 941 },	-- Kurzen Headshrinker
						}),
					},
				}),
				q(598, {	-- Split Bone Necklace
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuests"] = {
						596,	-- Bloody Bone Necklaces
						629,	-- The Vile Reef
					},
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/25 Split Bone Necklace
							["provider"] = { "i", 3916 },	-- Split Bone Necklace
							["crs"] = {
								1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
								696,	-- Skullsplitter Axe Thrower
								784,	-- Skullsplitter Beastmaster
								783,	-- Skullsplitter Berserker
								781,	-- Skullsplitter Headhunter
								669,	-- Skullsplitter Hunter
								780,	-- Skullsplitter Mystic
								782,	-- Skullsplitter Scout
								672,	-- Skullsplitter Spiritchaser
								667,	-- Skullsplitter Warrior
								670,	-- Skullsplitter Witch Doctor
							},
						}),
						i(4137, {	-- Darkspear Shoes
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4136, {	-- Darkspear Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26737, {	-- Stopping Kurzen's Legacy
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 26736,	-- Spared from Madness
					["coord"] = { 47.5, 10.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Chief Anders slain
							["provider"] = { "n", 43910 },	-- Chief Anders <Kurzen Special Forces>
							["coord"] = { 63.6, 16.8, NORTHERN_STRANGLETHORN },
						}),
						objective(2, {	-- 0/1 Chief Gaulus slain
							["provider"] = { "n", 43911 },	-- Chief Gaulus <Kurzen Special Forces>
							["coord"] = { 62.2, 14.2, NORTHERN_STRANGLETHORN },
						}),
						objective(3, {	-- 0/1 Chief Miranda slain
							["provider"] = { "n", 43913 },	-- Chief Miranda <Kurzen Special Forces>
							["coord"] = { 65.6, 17.8, NORTHERN_STRANGLETHORN },
						}),
						objective(4, {	-- 0/1 Chief Esquivel slain
							["provider"] = { "n", 43912 },	-- Chief Esquivel <Kurzen Special Forces>
							["coord"] = { 65.8, 11.8, NORTHERN_STRANGLETHORN },
						}),
						i(61049, {	-- Ring of Forgotten Causes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61051, {	-- Guerilla Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61050, {	-- Expedition Scouting Gear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131592, {	-- Expedition Scout's Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26343, {	-- Supply and Demand
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 43.5, 23.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/2 Large River Crocolisk Skin
							["provider"] = { "i", 4053 },	-- Large River Crocolisk Skin
							["cr"] = 1150,	-- River Crocolisk
						}),
					},
				}),
				q(26386, {	-- Surkhan
					["qg"] = 42812,	-- Priestess Hu'rala
					["sourceQuest"] = 26362,	-- Be Raptor
					["coord"] = { 63.4, 39.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26731, {	-- The Altar of Naias
					["providers"] = {
						{ "n", 43885 },	-- Emerine Junis
						{ "i", 60273 },	-- Emerine's Telling-Sphere
					},
					["sourceQuest"] = 26730,	-- You Can Take the Murloc Out of the Ocean...
					["coord"] = { 47.6, 10.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Heart of Naias
							["providers"] = {
								{ "i",  23681 },	-- Heart of Naias
								{ "i",  23680 },	-- Gift of Naias
								{ "o", 181636 },	-- Altar of Naias
							},
							["coord"] = { 19.2, 40.6, NORTHERN_STRANGLETHORN },
							["cr"] = 17207,	-- Naias
						}),
						i(61061, {	-- Junglewalker Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61060, {	-- Salt-Cured Monnions
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61059, {	-- Emerine's Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131590, {	-- Salt-Cured Mantle
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2763, {	-- The Art of the Imbue
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 2760,	-- The Mithril Order
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["cost"] = {
						{ "i", 3860, 40 },	-- Iron Bar
						{ "i", 3864, 4 },	-- Citrine
					},
					["lvl"] = 40,
					["groups"] = {
						i(7985, {	-- Plans: Ornate Mithril Shoulder (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(568, {	-- The Defense of Grom'gol (1/2)
					["qg"] = 2464,	-- Commander Aggro'gosh
					["coord"] = { 32.2, 28.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/15 Lashtail Raptor slain
							["provider"] = { "n", 686 },	-- Lashtail Raptor
						}),
					},
				}),
				q(569, {	-- The Defense of Grom'gol (2/2)
					["qg"] = 2464,	-- Commander Aggro'gosh
					["sourceQuest"] = 568,	-- The Defense of Grom'gol (1/2)
					["coord"] = { 32.2, 28.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Mosh'Ogg Brute slain
							["provider"] = { "n", 1142 },	-- Mosh'Ogg Brute
						}),
						objective(2, {	-- 0/5 Mosh'Ogg Witch Doctor slain
							["provider"] = { "n", 1144 },	-- Mosh'Ogg Witch Doctor
						}),
						i(4115, {	-- Grom'gol Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26280, {	-- The Defense of Grom'gol: Murloc Menace
					["qg"] = 2464,	-- Commander Aggro'gosh
					["sourceQuest"] = 26278,	-- The Defense of Grom'gol: Raptor Risk
					["coord"] = { 38.4, 50.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Murkgill Murloc slain
							["providers"] = {
								{ "n", 4460 },	-- Murkgill Coldbringer
								{ "n", 4457 },	-- Murkgill Forager
								{ "n", 4458 },	-- Murkgill Hunter
								{ "n", 4459 },	-- Murkgill Oracle
								{ "n", 4461 },	-- Murkgill Warrior
							},
						}),
					},
				}),
				q(26279, {	-- The Defense of Grom'gol: Ogre Oppression
					["qg"] = 2464,	-- Commander Aggro'gosh
					["sourceQuest"] = 26278,	-- The Defense of Grom'gol: Raptor Risk
					["coord"] = { 38.4, 50.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Mosh'Ogg Brute slain
							["provider"] = { "n", 1142 },	-- Mosh'Ogg Brute
						}),
						objective(2, {	-- 0/4 Mosh'Ogg Witch Doctor slain
							["provider"] = { "n", 1144 },	-- Mosh'Ogg Witch Doctor
						}),
						i(61083, {	-- Smashing Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61082, {	-- Mizjah Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131499, {	-- Mizjah Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(61081, {	-- Ring of Cooperation
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26278, {	-- The Defense of Grom'gol: Raptor Risk
					["qg"] = 2464,	-- Commander Aggro'gosh
					["sourceQuests"] = {
						26417,	-- Northern Stranglethorn: The Fallen Empire
						28688,	-- Warchief's Command: Northern Stranglethorn!
					},
					["coord"] = { 38.4, 50.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Lashtail Egg slain
							["provider"] = { "n", 42620 },	-- Lashtail Egg
							["coord"] = { 36.8, 44.2, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(26281, {	-- The Defense of Grom'gol: Trollish Thievery
					["qg"] = 2464,	-- Commander Aggro'gosh
					["sourceQuests"] = {
						26280,	-- The Defense of Grom'gol: Murloc Menace
						26279,	-- The Defense of Grom'gol: Ogre Oppression
					},
					["coord"] = { 38.4, 50.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grom'gol Rations
							["providers"] = {
								{ "i",  58083 },	-- Grom'gol Rations
								{ "o", 204000 },	-- Grom'gol Rations Crate
							},
							["coord"] = { 34.5, 35.2, NORTHERN_STRANGLETHORN },
						}),
						i(61086, {	-- Pitiless Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61085, {	-- Bal'lal Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61084, {	-- Unforgiving Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131500, {	-- Bal'lal Waistguard
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26735, {	-- The Fate of Kurzen
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuests"] = {
						26838,	-- Rebels Without a Clue
						28699,	-- Hero's Call: Northern Stranglethorn!
					},
					["coord"] = { 47.6, 10.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kurzen Compound Prison Records
							["providers"] = {
								{ "i",  60214 },	-- Kurzen Compound Prison Records
								{ "o", 204826 },	-- Kurzen Compound Prison Records
							},
							["coord"] = { 57.7, 21.2, NORTHERN_STRANGLETHORN },
						}),
						objective(2, {	-- 0/1 Kurzen Compound Officers' Dossier
							["providers"] = {
								{ "i",  60215 },	-- Kurzen Compound Officers' Dossier
								{ "o", 204827 },	-- Kurzen Compound Officers' Dossier
							},
							["coord"] = { 57.7, 21.5, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(588, {	-- The Fate of Yenniku
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuests"] = {
						586,	-- Speaking with Gan'zulah
						585,	-- Speaking with Nezzliok
					},
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(2762, {	-- The Great Silver Deceiver
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 2760,	-- The Mithril Order
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["cost"] = {
						{ "i", 3860, 40 },	-- Iron Bar
						{ "i", 6037, 5 },	-- Truesilver Bar
					},
					["lvl"] = 40,
					["groups"] = {
						i(7984, {	-- Plans: Ornate Mithril Gloves (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(338, {	-- The Green Hills of Stranglethorn
					["qg"] = 716,	-- Barnil Stonepot
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2756, 1 },	-- Green Hills of Stranglethorn - Chapter I
						{ "i", 2757, 1 },	-- Green Hills of Stranglethorn - Chapter II
						{ "i", 2758, 1 },	-- Green Hills of Stranglethorn - Chapter III
						{ "i", 2759, 1 },	-- Green Hills of Stranglethorn - Chapter IV
					},
					["lvl"] = 30,
					["groups"] = {
						i(4116, {	-- Olmann Sewar
							["timeline"] = { REMOVED_1_2_0 },
						}),
						i(17688, {	-- Jungle Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(3928),	-- Superior Healing Potion
						i(8173),	-- Thick Armor Kit
						-- #endif
					},
				}),
				q(26269, {	-- The Green Hills of Stranglethorn
					["qg"] = 716,	-- Barnil Stonepot
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["coord"] = { 44.2, 22.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Green Hills of Stranglethorn - Page 14
							["provider"] = { "i", 57990 },	-- Green Hills of Stranglethorn - Page 14
							["crs"] = {
								587,	-- Bloodscalp Warrior
								588,	-- Bloodscalp Scout
								595,	-- Bloodscalp Hunter
								597,	-- Bloodscalp Berserker
								660,	-- Bloodscalp Witch Doctor
								667,	-- Skullsplitter Warrior
								669,	-- Skullsplitter Hunter
								670,	-- Skullsplitter Witch Doctor
								671,	-- Bloodscalp Headhunter
								672,	-- Skullsplitter Spiritchaser
								674,	-- Venture Co. Strip Miner
								675,	-- Venture Co. Foreman
								676,	-- Venture Co. Surveyor
								677,	-- Venture Co. Tinkerer
								678,	-- Mosh'Ogg Mauler
								679,	-- Mosh'Ogg Shaman
								680,	-- Mosh'Ogg Lord
								681,	-- Young Stranglethorn Tiger
								682,	-- Stranglethorn Tiger
								683,	-- Young Panther
								684,	-- Shadowmaw Panther
								685,	-- Stranglethorn Raptor
								686,	-- Lashtail Raptor
								687,	-- Jungle Stalker
								688,	-- Stone Maw Basilisk
								689,	-- Crystal Spine Basilisk
								690,	-- Cold Eye Basilisk
								691,	-- Lesser Water Elemental
								694,	-- Bloodscalp Axe Thrower
								696,	-- Skullsplitter Axe Thrower
								697,	-- Bloodscalp Shaman
								698,	-- Bloodscalp Tiger
								699,	-- Bloodscalp Beastmaster
								700,	-- Bloodscalp Panther
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								709,	-- Mosh'Ogg Warmonger
								710,	-- Mosh'Ogg Spellcrafter
								723,	-- Mosh'Ogg Butcher
								728,	-- Bhag'thera
								729,	-- Sin'Dall
								730,	-- Tethis
								731,	-- King Bangalash
								736,	-- Panther
								756,	-- Skullsplitter Panther
								758,	-- Skullsplitter Tiger
								772,	-- Stranglethorn Tigress
								775,	-- Kurzen's Agent
								780,	-- Skullsplitter Mystic
								781,	-- Skullsplitter Headhunter
								782,	-- Skullsplitter Scout
								783,	-- Skullsplitter Berserker
								784,	-- Skullsplitter Beastmaster
								813,	-- Colonel Kurzen
								814,	-- Sergeant Malthus
								815,	-- Bookie Herod
								818,	-- Mai'Zoth
								854,	-- Young Jungle Stalker
								855,	-- Young Stranglethorn Raptor
								856,	-- Young Lashtail Raptor
								871,	-- Saltscale Warrior
								873,	-- Saltscale Oracle
								875,	-- Saltscale Tide Lord
								877,	-- Saltscale Forager
								879,	-- Saltscale Hunter
								905,	-- Sharptooth Frenzy
								921,	-- Venture Co. Lumberjack
								937,	-- Kurzen Jungle Fighter
								938,	-- Kurzen Commando
								939,	-- Kurzen Elite
								940,	-- Kurzen Medicine Man
								941,	-- Kurzen Headshrinker
								942,	-- Kurzen Witch Doctor
								943,	-- Kurzen Wrangler
								976,	-- Kurzen War Tiger
								977,	-- Kurzen War Panther
								978,	-- Kurzen Subchief
								979,	-- Kurzen Shadow Hunter
								1059,	-- Ana'thek the Cruel
								1060,	-- Mogh the Undying
								1061,	-- Gan'zulah
								1062,	-- Nezzliok the Dire
								1085,	-- Elder Stranglethorn Tiger
								1094,	-- Venture Co. Miner
								1095,	-- Venture Co. Workboss
								1096,	-- Venture Co. Geologist
								1097,	-- Venture Co. Mechanic
								1108,	-- Mistvale Gorilla
								1114,	-- Jungle Thunderer
								1142,	-- Mosh'Ogg Brute
								1144,	-- Mosh'Ogg Witch Doctor
								1150,	-- River Crocolisk
								1151,	-- Saltwater Crocolisk
								1152,	-- Snapjaw Crocolisk
								1421,	-- Private Merle
								1488,	-- Zanzil Zombie
								1489,	-- Zanzil Hunter
								1490,	-- Zanzil Witch Doctor
								1491,	-- Zanzil Naga
								1492,	-- Gorlash
								1493,	-- Mok'rash the Cleaver
								1550,	-- Thrashtail Basilisk
								1551,	-- Ironjaw Basilisk
								1552,	-- Scale Belly
								1557,	-- Elder Mistvale Gorilla
								1558,	-- Silverback Patriarch
								1559,	-- King Mukla
								1561,	-- Bloodsail Raider
								1562,	-- Bloodsail Mage
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								1565,	-- Bloodsail Sea Dog
								1653,	-- Bloodsail Elder Magus
								1713,	-- Elder Shadowmaw Panther
								1907,	-- Naga Explorer
								2521,	-- Skymane Gorilla
								2522,	-- Jaguero Stalker
								2530,	-- Yenniku
								2534,	-- Zanzil the Outcast
								2535,	-- Maury "Club Foot" Wilkins
								2536,	-- Jon-Jon the Crow
								2537,	-- Chucky "Ten Thumbs"
								2541,	-- Lord Sakrasis
								2544,	-- Southern Sand Crawler
								2545,	-- "Pretty Boy" Duncan
								2546,	-- Fleet Master Firallon
								2547,	-- Ironpatch
								2548,	-- Captain Keelhaul
								2549,	-- Garr Salthoof
								2550,	-- Captain Stillwater
								2551,	-- Brutus
								2624,	-- Gazban
								2635,	-- Elder Snapjaw Crocolisk
								4260,	-- Venture Co. Shredder
								4457,	-- Murkgill Forager
								4458,	-- Murkgill Hunter
								4459,	-- Murkgill Oracle
								4460,	-- Murkgill Coldbringer
								4461,	-- Murkgill Warrior
								4505,	-- Bloodsail Deckhand
								4506,	-- Bloodsail Swabby
								4723,	-- Foreman Cozzle
								11346,	-- Hakkari Oracle
								11355,	-- Gurubashi Warrior
								11383,	-- High Priestess Hai'watna
								14487,	-- Gluggl
								14488,	-- Roloch
								14490,	-- Rippa
								14491,	-- Kurmokk
								14492,	-- Verifonix
								17411,	-- Shadowmaw Alpha Transform
								31636,	-- Jungle Panther
								42858,	-- Braddok
								43050,	-- Vale Howler
								43223,	-- Zanzil Mindslave
								43245,	-- Zanzil the Outcast
								43255,	-- Zanzil the Outcast
								43322,	-- Zanzil the Outcast
								43364,	-- Bloodsail Hooch-Hound
								43376,	-- Freewheelin' Juntz Fitztittle
								43377,	-- Ephram "Midriff" Moonfall
								43417,	-- Skymane Bonobo
								43454,	-- "Good-Boy" Bruce
								43536,	-- Southsea Mako
								43542,	-- Lime Thief
								43553,	-- Ninja
								43556,	-- "Dead-Eye" Drederick McGumm
								43605,	-- Bloodsail Oarsman
								43636,	-- Bloodsail Corsair
								43659,	-- Long John Copper
								43660,	-- Enormous Shawn Stooker
								43661,	-- Wailing Mary Smitts
								43663,	-- Long John Copper (Worgen Form)
								43664,	-- Enormous Shawn Stooker (Worgen Form)
								43665,	-- Wailing Mary Smitts (Worgen Form)
								43716,	-- Brashtide Raider
								43726,	-- Bloodsail Corsair
								43849,	-- Garley Lightrider
								43910,	-- Chief Anders
								43911,	-- Chief Gaulus
								43912,	-- Chief Esquivel
								43913,	-- Chief Miranda
								44112,	-- Airwyn Bantamflax
								44113,	-- Ironjaw Behemoth
								44178,	-- Sweet Gary Guns
								44179,	-- Harry No-Hooks
								44182,	-- Gurlgrl
								51658,	-- Mogh the Dead
								51661,	-- Tsul'Kalu
								51662,	-- Mahamba
								51663,	-- Pogeyan
								52173,	-- Razzashi Serpent
								52224,	-- Jungle Serpent
							},
						}),
					},
				}),
				q(328, {	-- The Hidden Key
					["providers"] = {
						{ "o", 287 },	-- Bookie Herod's Records
						{ "i", 2719 },	-- Small Brass Key
					},
					["sourceQuest"] = 200,	-- Bookie Herod
					["coord"] = { 43.7, 9.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4122, {	-- Bookmaker's Scepter
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26340, {	-- The Hunt
					["qg"] = 17094,	-- Nemeth Hawkeye
					["sourceQuest"] = 9457,	-- An Unusual Patron
					["coord"] = { 38.1, 50.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(591, {	-- The Mind's Eye
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 589,	-- The Singing Crystals
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["cr"] = 818,	-- Mai'Zoth
						}),
					},
				}),
				q(26781, {	-- The Mind's Eye (A)
					["qg"] = 44019,	-- Livingston Marshal
					["coord"] = { 53.2, 66.9, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["coord"] = { 70.6, 48.6, NORTHERN_STRANGLETHORN },
							["cr"] = 818,	-- Mai'Zoth
						}),
						i(61070, {	-- Fort Livingston Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61069, {	-- Eye-Plucker Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61068, {	-- Wand of Imagination
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131603, {	-- Eye-Plucker Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26303, {	-- The Mind's Eye (H)
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 26302,	-- Chasing Yenniku's Fate
					["coord"] = { 63.0, 41.4, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["coord"] = { 70.6, 48.6, NORTHERN_STRANGLETHORN },
							["cr"] = 818,	-- Mai'Zoth
						}),
					},
				}),
				q(26782, {	-- The Mosh'Ogg Bounty (A)
					["qg"] = 44018,	-- Wulfred Harrys
					["description"] = "This quest is offered to players that HAVE completed '|cff4a54e8The Source of the Madness|r' (26734) at Rebel Camp.",
					["coord"] = { 53.4, 66.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mosh'Ogg Bounty
							["providers"] = {
								{ "i", 58205 },	-- Mosh'Ogg Bounty
								{ "o", 204087 },	-- Mosh'Ogg Bounty
							},
							["coord"] = { 67.2, 54.1, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(26783, {	-- The Mosh'Ogg Bounty (A)
					["qg"] = 44018,	-- Wulfred Harrys
					["description"] = "This quest is offered to players that HAVE NOT completed '|cff4a54e8The Source of the Madness|r' (26734) at Rebel Camp.",
					["coord"] = { 53.4, 66.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mosh'Ogg Bounty
							["providers"] = {
								{ "i", 58205 },	-- Mosh'Ogg Bounty
								{ "o", 204087 },	-- Mosh'Ogg Bounty
							},
							["coord"] = { 67.2, 54.1, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(26399, {	-- The Mosh'Ogg Bounty (H)
					["qg"] = 42814,	-- Skeezy Whillzap
					["sourceQuest"] = 26407,	-- Mosh'Ogg Handiwork
					["coord"] = { 63.4, 41.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Mosh'Ogg Bounty
							["providers"] = {
								{ "i", 58205 },	-- Mosh'Ogg Bounty
								{ "o", 204087 },	-- Mosh'Ogg Bounty
							},
							["coord"] = { 67.2, 54.1, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(203, {	-- The Second Rebellion
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Kurzen Jungle Fighter slain
							["provider"] = { "n", 937 },	-- Kurzen Jungle Fighter
						}),
					},
				}),
				q(589, {	-- The Singing Crystals
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 588,	-- The Fate of Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Pulsing Blue Shard
							["provider"] = { "i", 3911 },	-- Pulsing Blue Shard
							["cr"] = 1551,	-- Ironjaw Basilisk
						}),
					},
				}),
				q(26734, {	-- The Source of the Madness
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 26733,	-- Control Sample
					["coord"] = { 47.2, 11.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Whispering Blue Stone
							["provider"] = { "i", 60263 },	-- Whispering Blue Stone
							["crs"] = {
								43910,	-- Chief Anders <Kurzen Special Forces>
								43913,	-- Chief Miranda <Kurzen Special Forces>
								43911,	-- Chief Gaulus <Kurzen Special Forces>
								43912,	-- Chief Esquivel <Kurzen Special Forces>
								939,	-- Kurzen Elite
								941,	-- Kurzen Headshrinker
								942,	-- Kurzen Witch Doctor
								978,	-- Kurzen Subchief
								979,	-- Kurzen Shadow Hunter
							},
						}),
					},
				}),
				q(329, {	-- The Spy Revealed!
					["providers"] = {
						{ "o", 288 },	-- Bookie Herod's Strongbox
						{ "i", 2720 },	-- Muddy Note
					},
					["sourceQuest"] = 328,	-- The Hidden Key
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(26400, {	-- The Universal Key
					["qg"] = 42814,	-- Skeezy Whillzap
					["sourceQuest"] = 26399,	-- The Mosh'Ogg Bounty
					["coord"] = { 63.7, 39.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Opened Mosh'Ogg Bounty
							["providers"] = {
								{ "i", 58490 },	-- Opened Mosh'Ogg Bounty
								{ "i", 58205 },	-- Mosh'Ogg Bounty
								{ "n", 43003 },	-- Venture Co. Sawblade
							},
							["coord"] = { 55.86, 35.56, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(629, {	-- The Vile Reef
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet Shard
							["providers"] = {
								{ "i", 4094 },	-- Tablet Shard
								{ "o", 58 },	-- Gri'lek the Wanderer
							},
							["coords"] = {
								{ 24.8, 22.8, STRANGLETHORN_VALE },
								{ 24.8, 23.1, STRANGLETHORN_VALE },
							},
						}),
					},
				}),
				q(185, {	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Young Stranglethorn Tiger slain
							["provider"] = { "n", 681 },	-- Young Stranglethorn Tiger
						}),
					},
				}),
				q(188, {	-- Tiger Mastery (4/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 187,	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Paw of Sin'Dall
							["provider"] = { "i", 3879 },	-- Paw of Sin'Dall
							["coord"] = { 32.6, 17.2, STRANGLETHORN_VALE },
							["cr"] = 729,	-- Sin'Dall
						}),
						i(61116, {	-- Tiger Strangler's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61115, {	-- Paws of Sin'Dall
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61114, {	-- Cat Lover's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61113, {	-- Sin'Dall's Femur
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131200, {	-- Footpads of Sin'Dall
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(4107, {	-- Tiger Hunter Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(187, {	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 186,	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Elder Stranglethorn Tiger slain
							["provider"] = { "n", 1085 },	-- Elder Stranglethorn Tiger
						}),
					},
				}),
				q(186, {	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 185,	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Stranglethorn Tiger slain
							["provider"] = { "n", 682 },	-- Stranglethorn Tiger
						}),
					},
				}),
				q(26805, {	-- To the Cape!
					["qg"] = 44018,	-- Wulfred Harrys
					["coord"] = { 53.3, 66.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(205, {	-- Troll Witchery
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 207,	-- Kurzen's Mystery
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Skullsplitter Fetish
							["provider"] = { "i", 2466 },	-- Skullsplitter Fetish
							["crs"] = {
								780,	-- Skullsplitter Mystic
								670,	-- Skullsplitter Witch Doctor
							},
						}),
					},
				}),
				q(26763, {	-- Venture Company Mining (A)
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 26740,	-- Krazek's Cookery
					["coord"] = { 43.5, 23.1, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Tumbled Crystal
							["provider"] = { "i", 4106 },	-- Tumbled Crystal
							["crs"] = {
								1096,	-- Venture Co. Geologist
								4260,	-- Venture Co. Shredder
							},
						}),
						i(61073, {	-- Spare Metal Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61072, {	-- Bartered Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61071, {	-- Krazek's Oven Mitts
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131598, {	-- Bartered Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156990, {	-- Crystal-Chipping Mallet
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156991, {	-- Shredder Arm Extension
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26403, {	-- Venture Company Mining (H)
					["qg"] = 42814,	-- Skeezy Whillzap
					["sourceQuest"] = 26399,	-- The Mosh'Ogg Bounty
					["coord"] = { 63.7, 39.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Tumbled Crystal
							["provider"] = { "i", 4106 },	-- Tumbled Crystal
							["crs"] = {
								1096,	-- Venture Co. Geologist
								4260,	-- Venture Co. Shredder
							},
						}),
						i(61105, {	-- Scrap Metal Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61104, {	-- Skeezy Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61103, {	-- Junglepicker Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131521, {	-- Skeezy Wraps
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156990, {	-- Crystal-Chipping Mallet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				warchiefscommand(q(28688, {	-- Warchief's Command: Northern Stranglethorn!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28. (TODO: Test max level)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				q(26729, {	-- Water Elementals
					["providers"] = {
						{ "n", 43885 },	-- Emerine Junis
						{ "i", 60273 },	-- Emerine's Telling-Sphere
					},
					["sourceQuest"] = 26736,	-- Spared from Madness
					["coord"] = { 47.6, 10.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Water Elemental Bracers
							["provider"] = { "i", 3923 },	-- Water Elemental Bracers
							["coord"] = { 21.2, 40.2, NORTHERN_STRANGLETHORN },
							["cr"] = 691,	-- Lesser Water Elemental
						}),
					},
				}),
				q(583, {	-- Welcome to the Jungle
					["qg"] = 716,	-- Barnil Stonepot
					-- #if AFTER CATA
					["sourceQuest"] = 26340,	-- The Hunt
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 44.2, 22.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
				}),
				q(26416, {	-- Well, Come to the Jungle
					["qg"] = 43063,	-- Cromula
					["coord"] = { 49.4, 67.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				q(26330, {	-- Who's a Big Troll
					["providers"] = {
						{ "o", 2076 },	-- Bubbling Cauldron
						{ "i", 58165 },	-- Lashtail Raptor Egg Fragment
					},
					["sourceQuest"] = 26325,	-- A Nose for This Sort of Thing
					["coord"] = { 38.5, 48.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gan'zulah's Body
							["provider"] = { "i", 58179 },	-- Gan'zulah's Body
							["coord"] = { 25.0, 18.4, NORTHERN_STRANGLETHORN },
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
						}),
						i(61096, {	-- Electrostatic Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61095, {	-- Discarded Troll Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61094, {	-- Juju Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131513, {	-- Discarded Troll Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156989, {	-- Gan'zulah's Headchopper
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26730, {	-- You Can Take the Murloc Out of the Ocean...
					["providers"] = {
						{ "n", 43885 },	-- Emerine Junis
						{ "i", 60273 },	-- Emerine's Telling-Sphere
					},
					["sourceQuest"] = 26729,	-- Water Elementals
					["coord"] = { 47.6, 10.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Sea Salt
							["provider"] = { "i", 60274 },	-- Sea Salt
							["crs"] = {
								4460,	-- Murkgill Coldbringer
								4457,	-- Murkgill Forager
								4458,	-- Murkgill Hunter
								4459,	-- Murkgill Oracle
								4461,	-- Murkgill Warrior
							},
						}),
					},
				}),
				q(26779, {	-- Zul'Mamwe Mambo (A)
					["qg"] = 44021,	-- Ghaliri
					["sourceQuest"] = 26773,	-- See Raptor
					["coord"] = { 52.6, 66.8, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Skullsplitter slain
							["providers"] = {
								{ "n", 1059 },	-- Ana'thek the Cruel <Skullsplitter Chief>
								{ "n", 784 },	-- Skullsplitter Beastmaster
								{ "n", 783 },	-- Skullsplitter Berserker
								{ "n", 781 },	-- Skullsplitter Headhunter
								{ "n", 669 },	-- Skullsplitter Hunter
								{ "n", 782 },	-- Skullsplitter Scout
								{ "n", 672 },	-- Skullsplitter Spiritchaser
								{ "n", 670 },	-- Skullsplitter Witch Doctor
								{ "n", 43024},	-- Skullsplitter Troll
								{ "n", 42858},	-- Braddok
							},
						}),
						i(61076, {	-- Pauldrons of the Wayward Tribe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61075, {	-- Breastplate of Zul'Mamwe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61074, {	-- Irradiated Faux Croc' Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131601, {	-- Hauberk of Zul'Mamwe
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131602, {	-- Irradiated Faux Croc' Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26405, {	-- Zul'Mamwe Mambo (H)
					["qg"] = 42811,	-- Surkhan
					["sourceQuest"] = 26359,	-- See Raptor
					["coord"] = { 63.2, 38.7, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Skullsplitter slain
							["providers"] = {
								{ "n", 1059 },	-- Ana'thek the Cruel <Skullsplitter Chief>
								{ "n", 784 },	-- Skullsplitter Beastmaster
								{ "n", 783 },	-- Skullsplitter Berserker
								{ "n", 781 },	-- Skullsplitter Headhunter
								{ "n", 669 },	-- Skullsplitter Hunter
								{ "n", 782 },	-- Skullsplitter Scout
								{ "n", 672 },	-- Skullsplitter Spiritchaser
								{ "n", 670 },	-- Skullsplitter Witch Doctor
								{ "n", 43024},	-- Skullsplitter Troll
								{ "n", 42858},	-- Braddok
							},
						}),
						i(61119, {	-- Pauldrons of the Wayward Tribe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61118, {	-- Breastplate of Zul'Mamwe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61117, {	-- Irradiated Faux Croc' Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131522, {	-- Hauberk of Zul'Mamwe
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131523, {	-- Irradiated Faux Croc' Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(14487, {	-- Gluggl [CATA+] / Gluggle
					["coords"] = {
						-- #if AFTER CATA
						{ 43.6, 43.4, NORTHERN_STRANGLETHORN },
						{ 43.1, 41.7, NORTHERN_STRANGLETHORN },
						{ 42.0, 41.2, NORTHERN_STRANGLETHORN },
						{ 40.0, 38.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 34.4, 22.4, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(11383, {	-- High Priestess Hai'watna
					["coords"] = {
						-- #if AFTER CATA
						{ 67.0, 34.0, NORTHERN_STRANGLETHORN },
						{ 67.0, 31.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.4, 16.6, STRANGLETHORN_VALE },
						{ 51.6, 18.6, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(51662, {	-- Mahamba
					["coords"] = {
						{ 54.2, 31.6, NORTHERN_STRANGLETHORN },
						{ 54.6, 29.0, NORTHERN_STRANGLETHORN },
					},
					["timeline"] = { ADDED_4_0_6 },
				}),
				n(723, {	-- Mosh'Ogg Butcher
					["coords"] = {
						-- #if AFTER CATA
						{ 67.0, 54.0, NORTHERN_STRANGLETHORN },
						{ 66.6, 53.4, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 31.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(1680, {	-- Headchopper
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
					},
				}),
				n(51658, {	-- Mogh the Dead
					["coord"] = { 62.8, 74.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_6 },
				}),
				n(51663, {	-- Pogeyan
					["coord"] = { 36.6, 29.2, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_6 },
				}),
				n(14488, {	-- Roloch
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 45.4, NORTHERN_STRANGLETHORN },
						{ 45.8, 51.0, NORTHERN_STRANGLETHORN },
						{ 45.2, 54.4, NORTHERN_STRANGLETHORN },
						{ 46.8, 55.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.0, 24.8, STRANGLETHORN_VALE },
						{ 27.0, 31.8, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(51661, {	-- Tsul'Kalu
					["coord"] = { 47.0, 32.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_6 },
				}),
			}),
			n(VENDORS, {
				n(734, {	-- Corporal Bluth <Camp Trader>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.4, 10.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.0, 3.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12231),	-- Recipe: Jungle Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(2687, {	-- Gnaz Blunderflame <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.5, 61.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 35.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(13311, {	-- Schematic: Mechanical Dragonling (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2483, {	-- Jaquilina Dramet <Superior Axecrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.7, 23.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.8, 10.7, STRANGLETHORN_VALE },
						-- #endif
					},
					["sym"] = {{"select","itemID",
						2523,	-- Bullova
						2522,	-- Crescent Axe
						2530,	-- Francisca
						2531,	-- Great Axe
					}},
					["groups"] = {
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
						i(12164, {	-- Plans: Massive Iron Axe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8679, {	-- Knaz Blunderflame <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 61.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 35.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(1148, {	-- Nerrist <Trade Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.3, 51.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.6, 29.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21943, {	-- Design: Truesilver Crab (RECIPE!)
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
						i(12231),	-- Recipe: Jungle Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(1149, {	-- Uthok <General Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 37.5, 49.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 31.6, 28.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
					},
				}),
				n(1146, {	-- Vharr <Superior Weaponsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 38.7, 49.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.2, 28.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12164, {	-- Plans: Massive Iron Axe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1998, {	-- Bloodscalp Channeling Staff
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 697,	-- Bloodscalp Shaman
					["coords"] = {
						-- #if AFTER 7.3.5
						{ 35.8, 33.4, NORTHERN_STRANGLETHORN },
						{ 34.0, 37.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 33.8, 15.6, STRANGLETHORN_VALE },
						{ 30.8, 19.0, STRANGLETHORN_VALE },
						{ 28.8, 19.2, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				i(4611, {	-- Blue Pearl
					["provider"] = { "o", 2744 },	-- Giant Clam
					-- #if BEFORE CATA
					["crs"] = {
						877,	-- Saltscale Forager
						879,	-- Saltscale Hunter
						871,	-- Saltscale Warrior
					},
					-- #endif
				}),
				i(1703, {	-- Crystal Basilisk Spine
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 689,	-- Crystal Spine Basilisk
				}),
				i(1677, {	-- Drake-scale Vest
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 680,	-- Mosh'Ogg Lord
					-- #if AFTER 7.3.5
					["description"] = "Drops from Mosh'Ogg Lords, which have three known spawns. Mosh'Ogg Butcher can spawn in its place.",
					["coords"] = {
						{ 69.2, 47.0, NORTHERN_STRANGLETHORN },
						{ 67.0, 54.0, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1659, {	-- Engineering Gloves
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 677,	-- Venture Co. Tinkerer
					-- #if AFTER 7.3.5
					["description"] = "Drops from Venture Co. Tinkerer. Venture Co. Foremans, Venture Co. Surveyors, and Venture Co. Strip Miners very often spawns in its place.",
					["coords"] = {
						{ 53.8, 75.8, NORTHERN_STRANGLETHORN },
						{ 53.6, 70.0, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(2955, {	-- First Mate Hat
					-- #if BEFORE CATA
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
				}),
				i(11203, {	-- Formula: Enchant Gloves - Advanced Mining (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 674,	-- Venture Co. Strip Miner
				}),
				i(1991, {	-- Goblin Power Shovel
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["crs"] = {
						1094,	-- Venture Co. Miner
						-- #if AFTER 7.3.5
						674,	-- Venture Co. Strip Miner
						-- #endif
					},
				}),
				i(1986, {	-- Gutrender
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 709,	-- Mosh'Ogg Warmonger
					-- #if AFTER 7.3.5
					["coords"] = {
						{ 65.4, 52.0, NORTHERN_STRANGLETHORN },
						{ 64.2, 45.0, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1522, {	-- Headhunting Spear
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 671,	-- Bloodscalp Headhunter
					-- #if AFTER 7.3.5
					["description"] = "Drops from Bloodscalp Headhunters, which shares its spawn with other Bloodscalp trolls in the Zuuldaia Ruins.",
					["coords"] = {
						{ 21.6, 24.6, NORTHERN_STRANGLETHORN },
						{ 19.8, 24.8, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1523, {	-- Huge Stone Club
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 597,	-- Bloodscalp Berserker
					-- #if AFTER 7.3.5
					["description"] = "Drops from Bloodscalp Berserkers, which shares its spawn with other Bloodscalp trolls in the Zuuldaia Ruins.",
					["coords"] = {
						{ 21.6, 24.6, NORTHERN_STRANGLETHORN },
						{ 19.8, 24.8, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				-- #if BEFORE CATA
				i(2633, {	-- Jungle Remedy
					["crs"] = {
						941,	-- Kurzen Headshrinker
						942,	-- Kurzen Witch Doctor
						940,	-- Kurzen Medicine Man
					},
				}),
				-- #endif
				i(1679, {	-- Korg Bat
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 1142,	-- Mosh'Ogg Brute
					-- #if AFTER 7.3.5
					["coords"] = {
						{ 48.0, 51.6, NORTHERN_STRANGLETHORN },
						{ 44.6, 55.6, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(5755, {	-- Onyx Shredder Plate
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 4260,	-- Venture Co. Shredder
					-- #if AFTER 7.3.5
					["coords"] = {
						{ 58.8, 40.4, NORTHERN_STRANGLETHORN },
						{ 58.8, 32.6, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(8494, {	-- Hyacinth Macaw (PET!)
					["timeline"] = { ADDED_1_11_1 },
					-- #if BEFORE CATA
					["crs"] = {
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2546,	-- Fleet Master Firallon
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
				}),
				-- #if BEFORE CATA
				i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
					["cr"] = 938,	-- Kurzen Commando
				}),
				-- #endif
				i(1997, {	-- Pressed Felt Robe
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 701,	-- Bloodscalp Mystic
					-- #if AFTER 7.3.5
					["description"] = "Drops from Bloodscalp Mystics, which shares its spawn with other Bloodscalp trolls in the Ruins of Zul'Kunda.",
					["coords"] = {
						{ 29.2, 24.4, NORTHERN_STRANGLETHORN },
						{ 25.8, 22.8, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(48126, {	-- Razzashi Hatchling (PET!)
					["timeline"] = { ADDED_3_2_0 },
				}),
				i(1624, {	-- Skullsplitter Helm
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["crs"] = {
						783,	-- Skullsplitter Berserker
						781,	-- Skullsplitter Headhunter
					},
					-- #if AFTER 7.3.5
					["description"] = "Drops from Skullsplitter Berserkers and Skullsplitter Headhunters. Skullsplitter Spiritchasers very often spawns in its place.",
					["coords"] = {
						{ 63.0, 72.8, NORTHERN_STRANGLETHORN },
						{ 61.2, 75.6, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1664, {	-- Spellforce Rod
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 676,	-- Venture Co. Surveyor
					-- #if AFTER 7.3.5
					["description"] = "Drops from Venture Co. Surveyors. Venture Co. Foremans, Venture Co. Tinkerers, and Venture Co. Strip Miners very often spawns in its place.",
					["coords"] = {
						{ 53.8, 77.2, NORTHERN_STRANGLETHORN },
						{ 53.4, 70.4, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1652, {	-- Sturdy Lunchbox
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						921,	-- Venture Co. Lumberjack
						-- #else
						675,	-- Venture Co. Foreman
						14492,	-- Verifonix <The Surveyor>
						-- #endif
					},
					-- #if AFTER 10.1.7
					["coords"] = {
						{ 55.6, 35.6, NORTHERN_STRANGLETHORN },
						{ 55.4, 34.4, NORTHERN_STRANGLETHORN },
					},
					-- #endif
				}),
				i(1996, {	-- Voodoo Band
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 660,	-- Bloodscalp Witch Doctor
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
	m(EASTERN_KINGDOMS, {
		m(NORTHERN_STRANGLETHORN, {
			n(QUESTS, {
				q(26412),	-- The Mosh'Ogg Bounty triggers with 'The Mosh'Ogg Bounty' (q:26782, 26783, 26399)
				q(28855),	-- Triggers when you collect the 7th "Jungle Remedy" during the Bad Medicine (q:26732). A Lashtail Hatchling will start following you
			}),
		}),
	}),
})));
-- #endif
