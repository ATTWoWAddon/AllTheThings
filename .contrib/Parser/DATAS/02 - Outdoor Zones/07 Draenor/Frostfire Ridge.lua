---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(FROSTFIRE_RIDGE, {
			["lore"] = "Frostfire Ridge is a zone in north-western Draenor. It is home to the Frostwolf clan and the Thunderlord clan. The ogre stronghold-turned Horde capital, Bladespire Citadel is located here. When Draenor shattered and became Outland, Frostfire Ridge and Gorgrond were pressed together to become the Blade's Edge Mountains. Several recognizable landmarks in Blade's Edge Mountains can be found in Frostfire, such as the Circle of Blood and the rock spires jutting from the earth.",
			["icon"] = 1031536,
			["maps"] = {
				526,	-- Turgall's Den (1st floor)
				527,	-- Turgall's Den (2nd floor)
				528,	-- Turgall's Den (3rd floor)
				529,	-- Turgall's Den (Sootstained Mines)
				530,	-- Grom'gar
				531,	-- Grulloc's Grotto
				532,	-- Grulloc's Grotto (bottom floor)
				533,	-- Snowfall Alcove
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9533),	-- Breaker of Chains (Bloodmaul Stronghold)
					ach(9537, {	-- By Fire Be... Merged? (Magnarok)
						["sourceQuest"] = 37204,	-- Rekindling an Old Flame
					}),
					ach(9534),	-- Delectable Ogre Delicacies (Bloodmaul Stronghold)
					ach(8937),	-- Explore Frostfire Ridge
					ach(9606, {	-- Frostfire Fridge
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9471, {		-- Frostwolf Orcs
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(282, {	-- <Name> of the Frostwolves
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					ach(9529, {	-- On the Shadow's Trail [H]
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34295,	-- To Capture Gul'Dan
					}),
					ach(9711),	-- Planned to Fail (Iron Siegeworks)
					ach(9710),	-- Poisoning the Well (Iron Siegeworks)
					ach(9536),	-- Slagnarok (Magnarok)
					ach(9535),	-- That Was Entirely Unnecessary (Magnarok)
					ach(9530, {	-- Writing in the Snow (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35737,	-- Writing in the Snow
					}),
					ach(9531, {	-- Writing in the Snow (H)
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35736,	-- Writing in the Snow
					}),
					ach(8671, {	-- You'll Get Caught Up In The... Frostfire!
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						417,	-- Rat (PET!)
						560,	-- Sea Gull (PET!)
					}},
					["groups"] = {
						pet(1427, {	-- Frostfur Rat (PET!)
							["description"] = "Found all over Frostwall and in small groups around the zone. ",
						}),
						pet(1578, {	-- Frostshell Pincher (PET!)
							["coord"] = { 23.6, 64.4, FROSTFIRE_RIDGE },
							["description"] = "Found in a small area around this coord.",
						}),
						pet(1457, {	-- Icespine Hatchling (PET!)
							["coord"] = { 49.2,  58.0, FROSTFIRE_RIDGE },
							["description"] = "Found large area around this coord, north of the Horde Garrison.",
						}),
						pet(1579, {	-- Ironclaw Scuttler (PET!)
							["coord"] = { 33.8, 41.6, FROSTFIRE_RIDGE },
							["description"] = "Found in a line along the right side of Bladespire Citadel.",
						}),
						pet(1464, {	-- Twilight Wasp (PET!)
							["description"] = "Found in Frostwall and the north coast of Frostfire.",
						}),
					},
				})),
				explorationHeader({
					visit_exploration(6995,{coord={82.9,75.1,FROSTFIRE_RIDGE}}),	-- Agurak's Fall
					visit_exploration(6781,{coord={70.4,38.2,FROSTFIRE_RIDGE}}),	-- Altar of Kron
					visit_exploration(6782,{coord={72.9,35.4,FROSTFIRE_RIDGE}}),	-- Ascent of Frostfire
					visit_exploration(7323,{coord={52.1,31.8,FROSTFIRE_RIDGE}}),	-- Ashen Crater
					visit_exploration(7054,{coord={45.1,40.0,FROSTFIRE_RIDGE}}),	-- Blade's Edge Mountain
					exploration(6864),	-- Bladespire Citadel
					exploration(6962),	-- Bladespire Ravine
					exploration(6875),	-- Bladespire Throne
					visit_exploration(7237,{coord={46.9,9.50,FROSTFIRE_RIDGE}}),	-- Bloodmaul Landing
					exploration(7013),	-- Bloodmaul Stronghold
					exploration(6994),	-- Bones of Agurak
					visit_exploration(7006,{coord={54.8,16.0,FROSTFIRE_RIDGE}}),	-- Coldsnap Bluffs
					visit_exploration(7447,{coord={55.3,8.30,FROSTFIRE_RIDGE}}),	-- Colossal Depths
					exploration(6775),	-- Colossal's Fall
					exploration(6744),	-- Daggermaw Ravine
					visit_exploration(7047,{coord={30.8,54.2,FROSTFIRE_RIDGE}}),	-- Forbidden Glacier
					visit_exploration(6929,{coord={14.1,55.4,FROSTFIRE_RIDGE}}),	-- Frostboar Drifts
					exploration(6742),	-- Frostwind Crag
					visit_exploration(6805,{coord={66.8,33.8,FROSTFIRE_RIDGE}}),	-- Gate of the Breakers
					visit_exploration(7257,{coord={41.0,64.6,FROSTFIRE_RIDGE}}),	-- Glacier Bay
					visit_exploration(6905,{coord={18.9,44.1,FROSTFIRE_RIDGE}}),	-- Gormaul Tower
					exploration(6817),	-- Grimfrost Hill
					exploration(6779),	-- Grom'gar
					visit_exploration(6758,{coord={23.3,11.9,FROSTFIRE_RIDGE}}),	-- Icescar Boneyard
					visit_exploration(6778,{coord={64.8,45.7,FROSTFIRE_RIDGE}}),	-- Icewind Drifts
					exploration(6983),	-- Iron Siegeworks
					exploration(7076, {	-- Iron Waystation
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Bones of Agurak, it gets masked behind it.
						["collectible"] = false,
					}),
					visit_exploration(6759,{coord={26.1,19.9,FROSTFIRE_RIDGE}}),	-- Lashwind Cleft
					exploration(6784),	-- Magnarok
					visit_exploration(6907,{coord={30.9,50.6,FROSTFIRE_RIDGE}}),	-- Mor'dul Tower
					visit_exploration(6911,{coord={62.4,42.8,FROSTFIRE_RIDGE}}),	-- Pit of the Devourer
					visit_exploration(7018,{coord={22.2,18.8,FROSTFIRE_RIDGE}}),	-- Ruins of Ata'gar
					visit_exploration(6966,{coord={55.0,61.4,FROSTFIRE_RIDGE}}),	-- Shivering Trench
					visit_exploration(7005,{coord={65.6,15.2,FROSTFIRE_RIDGE}}),	-- Snowfall Alcove
					visit_exploration(6850,{coord={26.9,42.1,FROSTFIRE_RIDGE}}),	-- Sootstained Mining Camp
					visit_exploration(7055,{coord={72.9,71.1,FROSTFIRE_RIDGE}}),	-- Southwind Cliffs
					visit_exploration(7765,{coord={43.9,70.7,FROSTFIRE_RIDGE}}),	-- Southwind Shore
					exploration(6777),	-- Stonefang Outpost
					exploration(6964),	-- Stonefang Ridge
					exploration(6968),	-- Stonefury Cliffs
					visit_exploration(7058,{coord={71.6,51.7,FROSTFIRE_RIDGE}}),	-- The Bleeding Mountain
					exploration(6776),	-- The Boneslag
					visit_exploration(7062,{coord={42.6,63.2,FROSTFIRE_RIDGE}}),	-- The Burning Glacier
					exploration(6774),	-- The Cracking Plains
					visit_exploration(7450,{coord={49.5,38.5,FROSTFIRE_RIDGE}}),	-- The Savage Crag
					visit_exploration(6743,{coord={31.5,12.4,FROSTFIRE_RIDGE}}),	-- Throm'var
					visit_exploration(7014,{coord={79.3,56.3,FROSTFIRE_RIDGE}}),	-- Thunder Pass
					visit_exploration(7236,{coord={41.5,10.3,FROSTFIRE_RIDGE}}),	-- Tor'goroth's Tooth
					visit_exploration(7113,{coord={74.4,59.7,FROSTFIRE_RIDGE}}),	-- Wolf's Stand
					exploration(6869),	-- Wor'gol
					visit_exploration(7255,{coord={15.2,66.9,FROSTFIRE_RIDGE}}),	-- Zangar Sea
				}),
				n(FACTIONS, {
					faction(FACTION_FROSTWOLF_ORCS, {["races"] = HORDE_ONLY}),	-- Frostwolf Orcs
				}),
				n(FLIGHT_PATHS, {
					fp(1387, {	-- Bladespire Citadel, Frostfire Ridge
						["sourceQuest"] = 33527,	-- Last Steps
						["cr"] = 76781,	-- Roark the Airwolf
						["coord"] = { 19.9, 51.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1389, {	-- Bloodmaul Slag Mines, Frostfire Ridge
						["cr"] = 76787,	-- Brenna Skymoon
						["coord"] = { 51.4, 21.4, FROSTFIRE_RIDGE },
					}),
					fp(1396, {	-- Darkspear's Edge, Frostfire Ridge
						["cr"] = 78699,	-- Ja'kana
						["coord"] = { 51.7, 41.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1528, {	-- Iron Siegeworks, Frostfire Ridge
						["cr"] = 84993,	-- Rangari Veera
						["coord"] = { 87.4, 62.6, FROSTFIRE_RIDGE },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1390, {	-- Stonefang Outpost, Frostfire Ridge
						["cr"] = 76879,	-- Skyhunter Donomor'gan
						["coord"] = { 40.1, 51.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1388, {	-- Throm'Var, Frostfire Ridge
						["cr"] = 76783,	-- Jonnock Hewndawn
						["coord"] = { 31.8, 9.60, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1395, {	-- Thunder Pass, Frostfire Ridge
						["cr"] = 76784,	-- Bile Warneck
						["coord"] = { 83.6, 60.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1559, {	-- Wolf's Stand, Frostfire Ridge
						["cr"] = 87707,	-- Windhunter
						["coord"] = { 73.6, 60.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					fp(1386, {	-- Wor'gol, Frostfire Ridge
						["cr"] = 76782,	-- Pul Windcarver
						["coord"] = { 21.6, 56.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
				}),
				petbattles({
					n(87122, {	-- Gargra <Grand Master Pet Tamer>
						["coord"] = { 68.6, 64.8, FROSTFIRE_RIDGE },
						["timeline"] = { ADDED_6_0_2 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(37205, {	-- Gargra
								["timeline"] = { ADDED_6_0_2 },
								["isDaily"] = true,
								["_drop"] = { "g" },	-- Drops Polished Pet Charm
								["groups"] = {
									-- #if BEFORE 10.2.5
									i(116415, {	-- Shiny Pet Charm
										["timeline"] = { REMOVED_10_2_5 },
									}),
									-- #endif
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(34228, {	-- A Clew of Worms
						["sourceQuest"] = 34216,	-- Safe Passage
						["qg"] = 72836,	-- Cordana Felsong
						["coord"] = { 31.8, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34264, {	-- A Collection of Coils
						["altQuests"] = { 34067 },	-- A Collection of Coils
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { i(109055) },	-- Coil of Sturdy Rope (QI!)
					}),
					q(34067, {	-- A Collection of Coils
						["altQuests"] = { 34264 },	-- A Collection of Coils
						["provider"] = { "i", 109121 },	-- Coil of Sturdy Rope (QS!)
						["coord"] = { 85.2, 66.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["cr"] = 77106,	-- Thunderlord Wrangler
						["groups"] = { i(109055) },	-- Coil of Sturdy Rope (QI!)
					}),
					q(34592, {	-- A Gronnling Problem
						["sourceQuest"] = 34364,	-- For the Horde!
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 51.2, 39.6, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(33125, {	-- A Proper Parting
						["qg"] = 72976,	-- Outrider Urakag
						["coord"] = { 66.0, 49.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33815, {	-- A Song of Frost and Fire
						["sourceQuests"] = {
							-- #if AFTER 7.3.5
							49545,	-- Warchief's Command: Frostfire Ridge!
							-- #endif
							33868,	-- The Home of the Frostwolves
						},
						["qg"] = 76411,	-- Farseer Drek'Thar
						["coord"] = { 40.7, 67.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34280, {	-- All is Revealed
						["sourceQuest"] = 34230,	-- Eye Need That
						["qg"] = 72874,	-- Archmage Khadgar
						["coord"] = { 31.7, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36132, {	-- Anglin' In Our Garrison
						["sourceQuest"] = 36131,	-- Proving Your Worth
						["qg"] = 79896,	-- Mokugg Lagerpounder
						["coord"] = { 55.7, 75.3, FROSTFIRE_RIDGE },
						["requireSkill"] = FISHING,
						["races"] = HORDE_ONLY,
						["groups"] = { garrisonBuilding(64) },	-- Fishing Shack
					}),
					q(33344, {	-- Armed and Dangerous
						["sourceQuest"] = 33410,	-- The Butcher of Bladespire
						["qg"] = 75186,	-- Thrall
						["coord"] = { 70.7, 78.5, 527 },
						["races"] = HORDE_ONLY,
					}),
					q(32804, {	-- Articles of the Fallen
						["sourceQuest"] = 32791,	-- Let the Hunt Begin!
						["qg"] = 74223,	-- Kal'gor the Honorable
						["coord"] = { 46.3, 32.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34321, {	-- Ashes of the Past
						["qg"] = 77998,	-- Molthron
						["coord"] = { 43.5, 15.5, FROSTFIRE_RIDGE },
					}),
					q(34070, {	-- At the End of Your Rope
						["sourceQuests"] = {
							34067,	-- A Collection of Coils
							34264,	-- A Collection of Coils
							34069,	-- Getting the Points
							34093,	-- Getting the Points
						},
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(35106, {	-- Avenge and Reclaim
						["sourceQuest"] = 35104,	-- The Apprentice
						["qg"] = 81210,	-- Ang'kra
						["coord"] = { 37.8, 47.4, FROSTFIRE_RIDGE },
						["requireSkill"] = ALCHEMY,
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(DRAENOR_ALCHEMY, {
							i(111812),	-- Alchemy Lab, lvl 1
						}),
					}),
					q(33473, {	-- Back to Bladespire Citadel
						["sourceQuest"] = 33470,	-- Pool of Visions
						["qg"] = 74272,	-- Farseer Drek'Thar
						["coord"] = { 16.7, 57.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34375, {	-- Back to Work
						["sourceQuest"] = 34364,	-- For the Horde!
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 51.2, 39.6, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(34729, {	-- Blood Oath of Na'Shra
						["sourceQuest"] = 33838,	-- Smeltcraft
						["qg"] = 76452,	-- Weaponsmith Na'Shra
						["coord"] = { 64.7, 39.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(179) },	-- Weaponsmith Na'Shra
					}),
					q(34073, {	-- Burn Them Down
						["sourceQuest"] = 34072,	-- Tar Get of Opportunity
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36457, {	-- Bypassing Security
						["sourceQuest"] = 36435,	-- Unintelligible Intelligence
						["qg"] = 85439,	-- Raleigh Puule
						["coord"] = { 21.0, 56.0, FROSTFIRE_RIDGE },
						["requireSkill"] = INSCRIPTION,
						["races"] = HORDE_ONLY,
					}),
					q(36516, {	-- Cut 'Em Out!
						["sourceQuest"] = 36505,	-- A Warrior's Shroud
						["qg"] = 85751,	-- Gaoda Hidecleaver
						["coord"] = { 20.6, 60.2, FROSTFIRE_RIDGE },
						["requireSkill"] = LEATHERWORKING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							DRAENOR_LEATHERWORKING,
							i(117566),	-- Heavy Frostwolf Shroud
							i(111818),	-- The Tannery, lvl 1
						},
					}),
					q(33546, {	-- Deeds Left Undone
						["sourceQuest"] = 33526,	-- These Colors Don't Run
						["qg"] = 74273,	-- Durotan
						["coord"] = { 43.5, 23.2, 526 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(225681, {	-- Barrel of Frostwolf Oil
								i(107361),	-- Frostwolf Oil (QI!)
							}),
						},
					}),
					q(35341, {	-- Defection of Gronnstalker Rokash
						["sourceQuest"] = 32981,	-- Only the Winner
						["qg"] = 79229,	-- Gronnstalker Rokash
						["coord"] = { 59.5, 31.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(183) },	-- Gronnstalker Rokash
					}),
					q(34278, {	-- Desecration of the Dead
						["sourceQuest"] = 34227,	-- What Must Be Done
						["qg"] = 72837,	-- Farseer Urquan
						["coord"] = { 31.7, 11.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(108972),	-- Blind Fel-Eye Ring
							i(108975),	-- Fel-Blackened Ring
							i(108976),	-- Sanctified Fel-Wrap Ring
						},
					}),
					q(36380, {	-- Diamonds Are Forever
						["sourceQuest"] = 36378,	-- Locating the Lapidarist
						["qg"] = 85106,	-- Gem Grinder Orolak
						["coord"] = { 20.0, 56.3, FROSTFIRE_RIDGE },
						["requireSkill"] = JEWELCRAFTING,
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(DRAENOR_JEWELCRAFTING, {
							i(115503),	-- Blazing Diamond Pendant (TOY!)
							i(111814),	-- Gem Boutique, Level 1
						}),
					}),
					q(36419, {	-- Dyed in the Fur
						["sourceQuest"] = 36417,	-- From Their Cold Dead Hands
						["qg"] = 84689,	-- Trega
						["coord"] = { 20.4, 60.6, FROSTFIRE_RIDGE },
						["requireSkill"] = TAILORING,
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(DRAENOR_TAILORING, {
							i(111816),	-- Tailoring Emporium, Level 1
						}),
					}),
					q(34292, {	-- Eliminate the Shadow Council
						["sourceQuest"] = 34280,	-- All is Revealed
						["qg"] = 72836,	-- Cordana Felsong
						["coord"] = { 31.8, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["lockCriteria"] = {1,"questID", 34293},	-- Eliminate the Shadow Council
					}),
					q(34293, {	-- Eliminate the Shadow Council
						["sourceQuest"] = 34280,	-- All is Revealed
						["qg"] = 73480,	-- Image of Archmage Khadgar
						["coord"] = { 21.9, 14.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["lockCriteria"] = {1,"questID", 34292},	-- Eliminate the Shadow Council
					}),
					q(32994, {	-- Enfilade
						["sourceQuest"] = 33826,	-- Where's My Wolf?!
						["qg"] = 73097,	-- Frostwolf Champion
						["coord"] = { 60.9, 65.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(230262, {	-- Blackrock Blasting Powder
								["coords"] = {
									{ 60.8, 73.0, FROSTFIRE_RIDGE },
									{ 62.4, 75.2, FROSTFIRE_RIDGE },
									{ 63.1, 75.7, FROSTFIRE_RIDGE },
									{ 64.2, 73.4, FROSTFIRE_RIDGE },
								},
								["groups"] = { i(104039) },	-- Blackrock Blasting Powder (QI!)
							}),
						},
					}),
					q(34230, {	-- Eye Need That
						["sourceQuest"] = 34227,	-- What Must Be Done
						["qg"] = 72874,	-- Archmage Khadgar
						["coord"] = { 31.7, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36257, {	-- Failed Apprentice
						["sourceQuest"] = 36256,	-- The Arakkoan Enchanter
						["qg"] = 84739,	-- Arcanist Delath
						["coord"] = { 54.4, 51.8, FROSTFIRE_RIDGE },
						["requireSkill"] = ENCHANTING,
						["races"] = HORDE_ONLY,
					}),
					q(34325, {	-- Flames of the Earth
						["sourceQuest"] = 34321,	-- Ashes of the Past
						["qg"] = 77998,	-- Molthron
						["coord"] = { 43.5, 15.5, FROSTFIRE_RIDGE },
					}),
					q(33807, {	-- Free Our Brothers and Sisters
						["description"] = "Must be on |cFFFFD700Save Wolf Home|r to pick up this quest.",
						["sourceQuest"] = 33527,	-- Last Steps
						["qgs"] = {
							74507,	-- Wor'gol Defender
							79415,	-- Durotan
						},
						["coord"] = { 21.7, 56.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36417, {	-- From Their Cold Dead Hands
						["sourceQuests"] = { 36301 },	-- Trega's Tailoring Kit
						["qg"] = 84689,	-- Trega
						["coord"] = { 20.4, 60.6, FROSTFIRE_RIDGE },
						["requireSkill"] = TAILORING,
						["races"] = HORDE_ONLY,
					}),
					q(34346, {	-- Frosted Fury
						["qg"] = 78209,	-- Shadow Hunter Mala
						["coord"] = { 52.5, 40.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(32783, {	-- Ga'nar's Vengeance
						["sourceQuest"] = 33473,	-- Back to Bladespire Citadel
						["qg"] = 70860,	-- Durotan
						["coord"] = { 43.1, 41.3, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(34069, {	-- Getting the Points
						["altQuests"] = { 34093 },	-- Getting the Points
						["provider"] = { "o", 227504 },	-- Barbed Thunderlord Spear
						["coord"] = { 84.1, 65.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34093, {	-- Getting the Points
						["altQuests"] = { 34069 },	-- Getting the Points
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33784, {	-- Gormaul Tower
						["sourceQuest"] = 34380,	-- Rally the Frostwolves
						["qg"] = 76557,	-- Durotar
						["coord"] = { 20.9, 57.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106168),	-- Frostwolf Ringmail Boots
							i(106136),	-- Frostwolf Scout's Boots
							i(106154),	-- Frostwolf Stalwart Warboots
							i(106164),	-- Frostwolf Wind-Talker Treads
						},
					}),
					q(33408, {	-- Great Balls of Fire!
						["sourceQuest"] = 33546,	-- Deeds Left Undone
						["qg"] = 75177,	-- Durotan
						["coord"] = { 34.2, 72.9, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(33132, {	-- Gut Guttra
						["qg"] = 72976,	-- Outrider Urukag
						["coord"] = { 66.0, 49.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34291, {	-- Have a Heart
						["sourceQuest"] = 34280,	-- All is Revealed
						["qg"] = 72874,	-- Archmage Khadgar
						["coord"] = { 31.7, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33816, {	-- Honor Has Its Rewards
						["qg"] = 80456,	-- Farseer Drek'Thar
						["coord"] = { 21.0, 57.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36141, {	-- Icespine Stingers
						["sourceQuest"] = 34758,	-- Looking For Help
						["qg"] = 79896,	-- Mokugg Lagerpounder
						["coord"] = { 55.7, 75.3, FROSTFIRE_RIDGE },
						["requireSkill"] = FISHING,
						["races"] = HORDE_ONLY,
					}),
					q(32991, {	-- Into the Boneslag
						["sourceQuest"] = 32990,	-- They Who Held Fast
						["qg"] = 72274,	-- Lokra
						["coord"] = { 38.5, 52.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33785, {	-- Karg Unchained
						["sourceQuest"] = 32993,	-- The Strength of Our Bonds
						["qg"] = 73097,	-- Frostwolf Champion
						["coord"] = { 63.1, 60.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33527, {	-- Last Steps
						["sourceQuests"] = {
							33344,	-- Armed and Dangerous
							33622,	-- To the Slaughter
						},
						["qg"] = 75177,	-- Durotar
						["coord"] = { 50.4, 32.6, 527 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(245438, {	-- Frostwolf Bookcase (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(107302),	-- Frostwolf Ringmail Belt
							i(106135),	-- Frostwolf Scout's Belt
							i(106149),	-- Frostwolf Stalwart Girdle
							i(106157),	-- Frostwolf Wind-Talker Cord
						},
					}),
					q(32792, {	-- Leave Nothing Behind!
						["sourceQuest"] = 32791,	-- Let the Hunt Begin!
						["qg"] = 74000,	-- Ga'nar
						["coord"] = { 35.9, 25.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(111917),	-- Frostwolf Arrow-Swallower
							i(117507),	-- Frostwolf Hatchet
							i(117508),	-- Frostwolf Logsplitter
							i(117506),	-- Frostwolf Shank
							i(111918),	-- Frostwolf Spiritguard Shield
							i(117505),	-- Frostwolf Wind-Talker Rod
						},
					}),
					q(32791, {	-- Let the Hunt Begin!
						["sourceQuest"] = 32783,	-- Ga'nar's Vengeance
						["qg"] = 70909,	-- Ga'nar
						["coord"] = { 30.8, 25.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34344, {	-- Lurkers
						["sourceQuest"] = 34736,	-- We Be Needin' Supplies
						["qg"] = 78208,	-- Shadow Hunter Rala
						["coord"] = { 52.6, 40.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106172),	-- Frostwolf Ringmail Leggings
							i(106140),	-- Frostwolf Scout's Legguards
							i(107311),	-- Frostwolf Stalwart Legguards
							i(106161),	-- Frostwolf Wind-Talker Leggings
						},
					}),
					q(36238, {	-- Mending A Broken Heart
						["sourceQuest"] = 36230,	-- The Restless Spirit
						["qg"] = 84494,	-- Waruk the Frostforger
						["coord"] = { 46.0, 48.6, FROSTFIRE_RIDGE },
						["requireSkill"] = BLACKSMITHING,
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(DRAENOR_BLACKSMITHING, {
							i(111813),	-- The Forge, Level 1
						}),
					}),
					q(33955, {	-- Missing Pack
						["sourceQuest"] = 33468,	-- Save Wolf Home
						["qg"] = 76941,	-- Kar'lak
						["coord"] = { 21.6, 55.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(34775, {	-- Mission Probable
						["sourceQuest"] = 34462,	-- Winds of Change
						["qg"] = 79740,	-- Warmaster Zog
						["coord"] = { 53.9, 54.9, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(33412, {	-- Mopping Up
						["sourceQuest"] = 33527,	-- Last Steps
						["qg"] = 81678,	-- Snowrunner Rolga
						["coord"] = { 28.2, 45.7, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(33657, {	-- Moving In
						["sourceQuest"] = 33527,	-- Last Steps
						["qg"] = 75188,	-- Durotan
						["coord"] = { 66.3, 56.5, 528 },
						["races"] = HORDE_ONLY,
					}),
					q(32992, {	-- Moving Target
						["sourceQuest"] = 32991,	-- Into the Boneslag
						["qg"] = 72274,	-- Lokra
						["coord"] = { 47.5, 45.5, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34732, {	-- Mulverick's Offer of Service
						["sourceQuest"] = 33483,	-- Mulverick's Plight
						["qg"] = 79047,	-- Mulverick
						["coord"] = { 30.7, 41.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(182) },	-- Mulverick
					}),
					q(33483, {	-- Mulverick's Plight
						["sourceQuest"] = 33119,	-- Slavery and Strife
						["qg"] = 72890,	-- Mulverick
						["coord"] = { 30.7, 41.5, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(108955),	-- Wolfsfur Cloak
							i(108953),	-- Wolfsfur Drape
							i(108954),	-- Wolfsfur Greatcloak
						},
					}),
					q(34464, {	-- Mysterious Boots
						["provider"] = { "o", 229333 },	-- Mysterious Boots
						["coord"] = { 67.9, 18.9, FROSTFIRE_RIDGE },
					}),
					q(36378, {	-- No Pressure, No Diamonds
						["sourceQuest"] = 36352,	-- Locating the Lapidarist
						["qg"] = 85106,	-- Gem Grinder Orolak
						["coord"] = { 20.0, 56.3, FROSTFIRE_RIDGE },
						["requireSkill"] = JEWELCRAFTING,
						["races"] = HORDE_ONLY,
					}),
					q(34731, {	-- Oath of Shadow Hunter Rala
						["sourceQuest"] = 34348,	-- The Real Prey
						["qg"] = 78208,	-- Shadow Hunter Rala
						["coord"] = { 52.6, 40.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(180) },	-- Shadow Hunter Rala
					}),
					q(33013, {	-- Of Fire and Thunder
						["qg"] = 74358,	-- Wounded Frostwolf Shaman
						["coord"] = { 41.6, 52.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34402, {	-- Of Wolves and  Warriors
						["sourceQuest"] = 33815,	-- A Song of Frost and Fire
						["qg"] = 78272,	-- Durotan
						["coord"] = { 41.8, 69.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(32981, {	-- Only the Winner
						["qg"] = 79229,	-- Gronnstalker Rokash
						["coord"] = { 59.4, 31.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(112687),	-- Chain of Biting Winds
							i(112688),	-- Choker of Scalding Fire
							i(112689),	-- Gorget of Flowing Earth
						},
					}),
					q(36260, {	-- Oru'kai's Scepter
						["sourceQuest"] = 36257,	-- Failed Apprentice
						["qg"] = 84747,	-- Torag Stonefury
						["coord"] = { 55.8, 48.6, FROSTFIRE_RIDGE },
						["requireSkill"] = ENCHANTING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							DRAENOR_ENCHANTING,
							i(111817),	-- Enchanter's Study, Level 1
						},
					}),
					q(33470, {	-- Pool of Visions
						["sourceQuest"] = 33469,	-- The Farseer
						["qg"] = 74272,	-- Farseer Drek'Thar
						["coord"] = { 16.7, 57.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106173),	-- Frostwolf Ringmail Pauldrons
							i(106141),	-- Frostwolf Scout's Spaulders
							i(106152),	-- Frostwolf Stalwart Shoulders
							i(106162),	-- Frostwolf Wind-Talker Mantle
							i(244320, {	-- Youngling's Courser Toys (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
						},
					}),
					q(34345, {	-- Poulticide
						["qg"] = 78208,	-- Shadow Hunter Rala
						["coord"] = { 52.6, 40.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36131, {	-- Proving Your Worth
						["sourceQuest"] = 36141,	-- Icespine Stingers
						["qg"] = 79896,	-- Mokugg Lagerpounder
						["coord"] = { 55.7, 75.3, FROSTFIRE_RIDGE },
						["requireSkill"] = FISHING,
						["races"] = HORDE_ONLY,
					}),
					q(34380, {	-- Rally the Frostwolves
						["sourceQuest"] = 34379,	-- Den of Wolves
						["qg"] = 70860,	-- Durotan
						["coord"] = { 20.7, 57.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(37204, {	-- Rekindling an Old Flame
						["qg"] = 87971,	-- Firaga
						["coord"] = { 74.8, 30.0, FROSTFIRE_RIDGE },
						["isDaily"] = true,
					}),
					q(33493, {	-- Return to the Pack
						["sourceQuests"] = {
							32994,	-- Enfilade
							33828,	-- The Master Siegesmith
						},
						["qg"] = 72940,	-- Frostwolf Champion
						["races"] = HORDE_ONLY,
					}),
					q(34216, {	-- Safe Passage
						["sourceQuest"] = 34209,	-- Vouchsafe Our Arrival
						["qg"] = 72814,	-- Cordana Felsong
						["coord"] = { 31.4, 16.2, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34066, {	-- Savage Vengeance
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coords"] = {
							{ 82.6, 69.8, FROSTFIRE_RIDGE },
							{ 83.2, 62.7, FROSTFIRE_RIDGE },
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(117509),	-- Agurak Chain Bracers
							i(117512),	-- Agurak Leather Bracers
							i(117511),	-- Agurak Wristplates
							i(117510),	-- Agurak Wristwraps
						},
					}),
					q(33468, {	-- Save Wolf Home
						["sourceQuest"] = 33527,	-- Last Steps
						["qg"] = 70860,	-- Durotan
						["coord"] = { 43.1, 41.3, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(32989, {	-- Securing the South
						["sourceQuest"] = 33473,	-- Back to Bladespire Citadel
						["qg"] = 70860,	-- Durotan
						["coord"] = { 43.1, 41.2, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(33929, {	-- Shivertail's Den
						["sourceQuest"] = 33955,	-- Missing Pack
						["qg"] = 76889,	-- Shivertail
						["coord"] = { 19.5, 50.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33119, {	-- Slavery and Strife
						["sourceQuest"] = 33527,	-- Last Steps
						["qg"] = 78222,	-- Guse
						["coord"] = { 20.0, 52.8, 526 },
						["races"] = HORDE_ONLY,
					}),
					q(33898, {	-- Slaying Slavers
						["sourceQuest"] = 33527,	-- Last Steps
						["qg"] = 76662,	-- Gol'kosh the Axe
						["coord"] = { 24.1, 39.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33838, {	-- Smeltcraft
						["qg"] = 74977,	-- Initiate Na'Shra
						["coord"] = { 65.0, 39.5, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36475, {	-- Stealing the Declaration
						["sourceQuest"] = 36457,	-- Bypassing Security
						["qg"] = 85440,	-- Nicholaus Page
						["coord"] = { 61.2, 71.2, FROSTFIRE_RIDGE },
						["requireSkill"] = INSCRIPTION,
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(116114),	-- Prestige Card: The Turn
							i(111815),	-- Scribe's Quarters, Level 1
							i(111923, {	-- Secret of Draenor Inscription
								i(120136),		-- Recipe: Secrets of Draenor Inscription
								recipe(169081),	-- War Paints
								recipe(167950),	-- Research: Warbinder's Ink
								recipe(175390),	-- Laughing Tarot
								recipe(175389),	-- Ocean Tarot
								recipe(175392),	-- Savage Tarot
								recipe(166669),	-- Card of Omens
								recipe(178497),	-- Warbinder's Ink
							}),
						},
					}),
					q(34277, {	-- Stop the Flow
						["sourceQuest"] = 34227,	-- What Must Be Done
						["qg"] = 72836,	-- Cordana Felsong
						["coord"] = { 31.8, 11.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34072, {	-- Tar Get of Opportunity
						["sourceQuests"] = {
							34067,	-- A Collection of Coils
							34264,	-- A Collection of Coils
							34069,	-- Getting the Points
							34093,	-- Getting the Points
						},
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(35104, {	-- The Apprentice
						["sourceQuest"] = 35103,	-- The Alchemist
						["qg"] = 81209,	-- Kadar
						["coord"] = { 38.0, 47.4, FROSTFIRE_RIDGE },
						["requireSkill"] = ALCHEMY,
						["races"] = HORDE_ONLY,
					}),
					q(34124, {	-- The Battle of Thunder Pass
						["sourceQuest"] = 34123,	-- To Thunder Pass
						["qg"] = 76487,	-- Lokra
						["coord"] = { 73.4, 58.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106169),	-- Frostwolf Ringmail Cap
							i(106137),	-- Frostwolf Scout's Cap
							i(106146),	-- Frostwolf Stalwart Cap
							i(107397),	-- Frostwolf Wind-Talker Cowl
						},
					}),
					q(34123, {	-- To Thunder Pass
						["sourceQuest"] = 33010,	-- The Iron Wolf
						["qg"] = 76720,	-- Thrall
						["coord"] = { 53.3, 56.7, 530 },
						["races"] = HORDE_ONLY,
					}),
					q(33410, {	-- The Butcher of Bladespire
						["sourceQuest"] = 33408,	-- Great Balls of Fire!
						["qg"] = 75186,	-- Thrall
						["coord"] = { 70.7, 78.5, 527 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106170),	-- Frostwolf Ringmail Gauntlet
							i(106138),	-- Frostwolf Scout's Gloves
							i(106148),	-- Frostwolf Stalwart Gauntlets
							i(106159),	-- Frostwolf Wind-Talker Gloves
						},
					}),
					q(33454, {	-- The Cure
						["sourceQuest"] = 33412,	-- Mopping Up
						["qg"] = 74635,	-- Igrimar the Resolute
						["coord"] = { 24.4, 28.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34765, {	-- The Den of Skog
						["sourceQuests"] = {
							34592,	-- A Gronnling Problem
							34375,	-- Back to Work
						},
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 51.2, 39.6, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(32795, {	-- The Eldest
						["sourceQuest"] = 32794,	-- Wrath of Gronn
						["qg"] = 70941,	-- Ga'nar
						["coord"] = { 50.5, 54.3, 532 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(117504),	-- Grimfrost Arcanist Robe
							i(117502),	-- Grimfrost Frostmail
							i(117503),	-- Grimfrost Leather Tunic
							i(117501),	-- Grimfrost Plate Chestguard
						},
					}),
					q(33467, {	-- The Fall of the Warlord
						["sourceQuests"] = {
							33454,	-- The Cure
							33450,	-- The Warlord's Guard
						},
						["qg"] = 74635,	-- Igrimar the Resolute
						["coord"] = { 24.4, 29.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(117983),	-- Pit Boss Signet
							i(117982),	-- Pit Fighter's Seal
							i(117984),	-- Pit Skulker's Ring
						},
					}),
					q(33469, {	-- The Farseer
						["sourceQuests"] = {
							33807,	-- Free Our Brothers and Sisters
							33468,	-- Save Wolf Home
						},
						["qg"] = 74651,	-- Draka
						["coord"] = { 20.7, 57.9, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34294, {	-- The Fel Crystals
						["sourceQuest"] = 34291,	-- Have a Heart
						["qg"] = 73480,	-- Image of Archmage Khadgar
						["coords"] = {
							{ 22.0, 14.7, FROSTFIRE_RIDGE },
							{ 31.7, 11.8, FROSTFIRE_RIDGE },
						},
						["races"] = HORDE_ONLY,
					}),
					q(36205, {	-- The Fractured Hammer
						["description"] = "Item that starts the Quest can be looted from almost any creature in Frostfire Ridge; however, Dorogg has a guaranteed drop chance.",
						["provider"] = { "i", 114965 },	-- Fractured Forge Hammer (QS!)
						["requireSkill"] = BLACKSMITHING,
						["races"] = HORDE_ONLY,
						["cr"] = 74254,	-- Dorogg the Ruthless
					}),
					q(37563, {	-- The Frostwolves Stand Ready
						["description"] = "You can only pick one of the three available followers. The other two can be purchased from Nalya Battlehorn in the Level 3 Garrison.",
						["sourceQuest"] = 34124,	-- The Battle of Thunder Pass
						["qgs"] = {
							76730,	-- Makara Stonebinder
							88147,	-- Makara Stonebinder
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							follower(186),	-- Greatmother Geyah
							follower(184),	-- Kal'gor the Honorable
							follower(185),	-- Lokra
						},
					}),
					q(33868, {	-- The Home of the Frostwolves
						["sourceQuest"] = 34446,	-- The Home Stretch
						["sourceQuestNumRequired"] = 0,	-- Want to show the typical sequence of when one would obtain this quest, but it can be shared with out pre-reqs
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						-- Maybe not actually a breadcrumb... but you can abandon it and skip it
						-- Unsure if a character which does this can go find it again somehow
					}),
					q(33010, {	-- The Iron Wolf
						["sourceQuest"] = 37291,	-- Thunderlord Invasion
						["qg"] = 74163,	-- Durotar
						["coord"] = { 50.1, 37.9, FROSTWALL },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(111909),	-- Bow of the Iron Wolf
							i(111916),	-- Thunderlord Herding Cudgel
							i(111911),	-- Thunderlord Hunting Spear
							i(111912),	-- Thunderlord Riding Crop
							i(111914),	-- Thunderlord Skinning Knife
							i(111915),	-- Thunderlord Skull Crusher
							i(111913),	-- Thunderlord War Spear
						},
					}),
					q(34960, {	-- The Land Provides
						["provider"] = { "o", 231100 },	-- Icevine
						["coord"] = { 54.2, 67.5, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34102, {	-- The Mark of Defiance
						["sourceQuests"] = {
							34073,	-- Burn Them Down
							34072,	-- Tar Get of Opportunity
						},
						["provider"] = { "o", 227806 },	-- Battle-Worn Frostwolf Banner
						["coord"] = { 82.6, 69.8, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33828, {	-- The Master Siegesmith
						["sourceQuest"] = 33826,	-- Where's My Wolf?!
						["qg"] = 72940,	-- Frostwolf Champion
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(113249),	-- Grom'gar Chain Boots
							i(113251),	-- Grom'gar Plate Stompers
							i(113252),	-- Grom'gar Wolfpelt Boots
							i(113250),	-- Grom'gar Wolfskin Slippers
						},
					}),
					q(34823, {	-- The Ogron Live?
						["sourceQuest"] = 34378,	-- Establish Your Garrison
						["qg"] = 78487,	-- Rokhan
						["coord"] = { 51.2, 51.4, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(34348, {	-- The Real Prey
						["sourceQuests"] = {
							34346,	-- Frosted Fury
							34344,	-- Lurkers
							34345,	-- Poulticide
						},
						["qg"] = 78208,	-- Shadow Hunter Rala
						["coord"] = { 52.6, 40.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(36230, {	-- The Restless Spirit
						["sourceQuest"] = 36207,	-- Waruk the Frostforger
						["qg"] = 84494,	-- Waruk the Frostforger
						["coord"] = { 46.0, 48.6, FROSTFIRE_RIDGE },
						["requireSkill"] = BLACKSMITHING,
						["races"] = HORDE_ONLY,
					}),
					q(34867, {	-- The Secrets of Gorgrond
						["sourceQuest"] = 34124,	-- The Battle of Thunder Pass
						["qg"] = 76484,	-- Durotan
						["coord"] = { 76.1, 55.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(33484, {	-- The Slavemaster's Demise
						["sourceQuest"] = 33483,	-- Mulverick's Plight
						["qg"] = 79047,	-- Mulverick
						["coord"] = { 30.7, 41.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34229, {	-- The Sleeper Has Awakened
						["sourceQuest"] = 34228,	-- A Clew of Worms
						["qg"] = 72837,	-- Farseer Urquan
						["coord"] = { 31.7, 11.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(32993, {	-- The Strength of Our Bonds
						["sourceQuest"] = 32992,	-- Moving Target
						["qg"] = 72274,	-- Lokra
						["coord"] = { 55.4, 56.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(113255),	-- Asha's Fang
							i(113253),	-- Karg's Hunting Horn
							i(113254),	-- Lokra's Fury
						},
					}),
					q(33450, {	-- The Warlord's Guard
						["sourceQuest"] = 33412,	-- Mopping Up
						["qg"] = 74635,	-- Igrimar the Resolute
						["coord"] = { 24.4, 28.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(106177),	-- Frostwolf Ringmail Wristguards
							i(106134),	-- Frostwolf Scout's Armwraps
							i(106145),	-- Frostwolf Stalwart Bracers
							i(106158),	-- Frostwolf Wind-Talker Cuffs
							--
							a(i(106155)),	-- Karabor Honor Guard Wristwraps
							a(i(106165)),	-- Karabor Sage Wristwraps
							a(i(106144)),	-- Karabor Skirmisher Wristwraps
							a(i(106178)),	-- Rangari Initiate Wristwraps
						},
					}),
					q(33526, {	-- These Colors Don't Run
						["sourceQuest"] = 33784,	-- Gormaul Tower
						["qgs"] = {
							70860,	-- Durotan
							76240,	-- Durotan
						},
						["coord"] = { 19.7, 44.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(32929, {	-- They Rely on Numbers
						["sourceQuest"] = 32791,	-- Let the Hunt Begin!
						["qg"] = 74222,	-- Ligra the Unyielding
						["coord"] = { 35.9, 25.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(32990, {	-- They Who Held Fast
						["sourceQuest"] = 32989,	-- Securing the South
						["qg"] = 72274,	-- Lokra
						["coord"] = { 38.5, 52.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(33462, {	-- Thunderlord for a Day
						["provider"] = { "o", 224306 },	-- Broken Chains
						["coord"] = { 58.3, 31.0, FROSTFIRE_RIDGE },
						-- ["races"] = HORDE_ONLY,	-- via #errors 20201104-19:22
					}),
					q(37291, {	-- Thunderlord Invasion
						["description"] = "This cannot be acquired with a Level 3 Garrison.",
						["sourceQuests"] = {
							36567,	-- Bigger is Better
							32796,	-- To the Garrison
							33493,	-- Return to the Pack
						},
						["qgs"] = {
							74163,	-- Durotan
							88228,	-- Sergeant Grimjaw
						},
						["coords"] = {
							{ 50.1, 37.9, FROSTWALL },	-- LVL 2 Garrison, Durotan
							{ 43.6, 47.8, FROSTWALL },	-- LVL 2 Garrison, Sergeant Grimjaw
						},
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1, "questID", 36614 },	-- My Very Own Fortress
						["isBreadcrumb"] = true,
					}),
					q(34295, {	-- To Capture Gul'dan
						["sourceQuest"] = 34294,	-- The Fel Crystals
						["qg"] = 73480,	-- Image of Archmage Khadgar
						["coord"] = { 19.8, 14.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(113150),	-- Felblood-Starched Cloak
							i(113149),	-- Flayed Flesh Cloak
							i(113148),	-- Foulspawn Drape
						},
					}),
					q(32796, {	-- To the Garrison
						["sourceQuest"] = 32795,	-- The Eldest
						["qg"] = 70941,	-- Ga'nar
						["coord"] = { 49.7, 51.5, 532 },	-- Grulloc's Grotto
						["races"] = HORDE_ONLY,
					}),
					q(33622, {	-- To the Slaughter
						["sourceQuest"] = 33410,	-- The Butcher of Bladespire
						["qg"] = 75186,	-- Thrall
						["coord"] = { 70.7, 78.5, 527 },
						["races"] = HORDE_ONLY,
					}),
					q(34075, {	-- Vul'gath's End
						["sourceQuests"] = {
							34073,	-- Burn Them Down
							34102,	-- The Mark of Defiance
						},
						["qg"] = 77210,	-- Scout Ruk'Gan
						["coord"] = { 82.8, 76.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(117515),	-- Frostwolf Chain Leggings
							i(117514),	-- Frostwolf Scout's Leggings
							i(117516),	-- Frostwolf Stalwart Legplates
							i(117513),	-- Frostwolf Wind-Talker Pantaloons
						},
					}),
					q(33918, {	-- WANTED: Grondo's Bounty
						["description"] = "Granted automatically when you are near Grondo in The Cracking Plains.",
						["coord"] = { 54.4, 42.4, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(111546),	-- Grondo's Eyepatch
							i(111547),	-- Grondo's Spare Eye
							i(111548),	-- Grondo's To-Do List
						},
					}),
					q(33919, {	-- WANTED: Gutsmash the Destroyer
						["sourceQuest"] = 33527,	-- Last Steps
						["provider"] = { "o", 226961 },	-- Bounty Board
						["coord"] = { 28.8, 44.7, 526 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(110688),	-- Frostfire Augur Signet
							i(110686),	-- Howling Snowdrift Loop
							i(110687),	-- Ogre Belly Chain Link
						},
					}),
					warchiefscommand(q(49545, {	-- Warchief's Command: Frostfire Ridge!
						["description"] = "Currently no verified way to actually obtain this quest on a character which has established their Garrison.\n\nOther characters will be able to obtain this Quest from the Warboard after completion of 'The Home of the Frostwolves' (33868) if completing the Tanaan intro quests, or possibly from the Warboard during WoD Chromie Time.",
						["sourceQuest"]	= 33868,	-- The Home of the Frostwolves
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
						-- Share Quest = 'You have completed that quest'
						-- Party Sync + Share Quest = 'You have completed that quest'
						-- Party Sync + WoD Chromie Time + Share Quest = 'You have completed that quest'
						-- If anyone actually has a verifed way of obtaining this quest on a character which has already established their Garrison, please update this
						-- It's reported you can somehow find this quest on the Warboard simply by being in WoD Chromie Time, but this was not the case for a new lvl 10
						-- Taking the initial quest to the Dark Portal, then returning to Orgrimmar to access the Warboard also did not help
						-- Additionally, it can be shared to a character who has not established their Garrison without any known pre-requisites being completed
					})),
					q(36207, {	-- Waruk the Frostforger
						["sourceQuest"] = 36205,	-- The Fractured Hammer
						["qg"] = 78989,	-- Axe-Shaper Kugra
						["requireSkill"] = BLACKSMITHING,
						["races"] = HORDE_ONLY,
					}),
					q(34861, {	-- We Need An Army
						["sourceQuest"] = 34461,	-- Build Your Barracks
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 57.4, 48.3, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(34227, {	-- What Must Be Done
						["sourceQuest"] = 34216,	-- Safe Passage
						["qg"] = 72837,	-- Fareseer Urquan
						["coord"] = { 31.7, 11.7, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34824, {	-- What We Got
						["sourceQuest"] = 34378,	-- Establish Your Garrison
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 52.4, 53.3, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(34822, {	-- What We Need
						["sourceQuest"] = 34378,	-- Establish Your Garrison
						["qg"] = 78466,	-- Gazlowe
						["coord"] = { 52.4, 53.3, FROSTWALL },
						["races"] = HORDE_ONLY,
					}),
					q(33826, {	-- Where's My Wolf?!
						["sourceQuest"] = 32993,	-- The Strength of Our Bonds
						["qg"] = 73097,	-- Frostwolf Champion
						["coord"] = { 63.1, 60.0, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(34462, {	-- Winds of Change
						["sourceQuest"] = 34461,	-- Build Your Barracks
						["qg"] = 79740,	-- Warmaster Zog
						["coord"] = { 53.9, 54.9, FROSTWALL },
						["races"] = HORDE_ONLY,
						["groups"] = { follower(34) },	-- Olin Umberhide
					}),
					q(32794, {	-- Wrath of Gronn
						["sourceQuests"] = {
							32929,	-- They Rely on Numbers
							32792,	-- Leave Nothing Behind!
						},
						["qg"] = 70910,	-- Ga'nar
						["coord"] = { 46.3, 32.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					q(35737, {	-- Writing in the Snow (A)
						["qg"] = 82833,	-- Tattered Journal Page
						["coords"] = {
							{ 47.9, 19.0, FROSTFIRE_RIDGE },
							{ 44.9, 14.0, FROSTFIRE_RIDGE },
							{ 40.0, 11.7, FROSTFIRE_RIDGE },
							{ 44.3, 14.7, FROSTFIRE_RIDGE },
							{ 46.4, 15.9, FROSTFIRE_RIDGE },
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(35736, {	-- Writing in the Snow (H)
						["qg"] = 82833,	-- Tattered Journal Page
						["coords"] = {
							{ 47.9, 19.0, FROSTFIRE_RIDGE },
							{ 44.9, 14.0, FROSTFIRE_RIDGE },
							{ 40.0, 11.7, FROSTFIRE_RIDGE },
							{ 44.3, 14.7, FROSTFIRE_RIDGE },
							{ 46.4, 15.9, FROSTFIRE_RIDGE },
						},
						["races"] = HORDE_ONLY,
					}),
					q(33915, {	-- Young Hearts
						["sourceQuest"] = 33468,	-- Save Wolf Home
						["qg"] = 76862,	-- Gog'rak
						["coord"] = { 19.2, 59.1, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(37626, {	-- Assault on Magnarok (H)
							["coord"] = { 70.0, 30.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
							-- Alliance version of 37626 is in NYI
						}),
						q(36826, {	-- Assault on Magnarok (A)
							["coord"] = { 70.0, 30.0, FROSTFIRE_RIDGE },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36827, {	-- Assault on Magnarok (H)
							["coord"] = { 70.0, 30.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(37623, {	-- Assault on Stonefury Cliffs (A)
							["coord"] = { 44.0, 18.0, FROSTFIRE_RIDGE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37624, {	-- Assault on Stonefury Cliffs (H)
							["coord"] = { 44.0, 18.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
						}),
						q(35637, {	-- Assault on Stonefury Cliffs (A)
							["coord"] = { 44.0, 18.0, FROSTFIRE_RIDGE },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(35641, {	-- Assault on Stonefury Cliffs (H)
							["coord"] = { 44.0, 18.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(37585, {	-- Assault on the Iron Siegeworks (A)
							["coord"] = { 85.0, 52.0, FROSTFIRE_RIDGE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(37622, {	-- Assault on the Iron Siegeworks (H)
							["coord"] = { 85.0, 52.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
						}),
						q(36822, {	-- Assault on the Iron Siegeworks (A)
							["coord"] = { 85.0, 52.0, FROSTFIRE_RIDGE },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36823, {	-- Assault on the Iron Siegeworks (H)
							["coord"] = { 85.0, 52.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(34505, {	-- Forbidden Glacier
							["coord"] = { 25.5, 55.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
						}),
						q(33145, {	-- Grimfrost Hill
							["coord"] = { 65.1, 47.7, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
						}),
						q(34501, {	-- Frostbite Hollow
							["coord"] = { 66.1, 18.0, FROSTFIRE_RIDGE },
							["races"] = HORDE_ONLY,
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for Edge of Reality, Iron Siegeworks rares (looks like the daily needs to be active), and some noted rares on longer spawn timers.
					n(84378, {	-- Ak'ox the Slaughterer
						["questID"] = 37525,
						["isDaily"] = true,
						["coord"] = { 88.6, 57.2, FROSTFIRE_RIDGE },
						["groups"] = { i(119365) },	-- Bloodied Tourniquet Belt
					}),
					n(72156, {	-- Borrok the Devourer
						["description"] = "Feed 10 ogres to him — defeat an ogre, it will kneel, click on it to throw it over your back (Druids must be in human form), and then walk into the feeding area. Repeat. Loot the Devourer's Gutstone afterwards.",
						["questID"] = 33511,
						["coord"] = { 62.6, 42.4, FROSTFIRE_RIDGE },
						["groups"] = {
							o(224686, {	-- Devourer's Gutstone
								["icon"] = 132847,
								["groups"] = { i(112110) },	-- Carapace Shield of the Devourer
							}),
						},
					}),
					n(78867, {	-- Breathless
						["questID"] = 34497,
						["coord"] = { 27.7, 50.2, FROSTFIRE_RIDGE },
						["groups"] = { i(111476) },	-- Stolen Breath (TOY!)
					}),
					n(74613, {	-- Broodmother Reeg'ak
						["questID"] = 33843,
						["coord"] = { 66.6, 31.5, FROSTFIRE_RIDGE },
						["groups"] = { i(111533) },	-- Corrosive Tongue of Reeg'ak
					}),
					n(71721, {	-- Canyon Icemother
						["questID"] = 32941,
						["coord"] = { 33.8, 22.9, FROSTFIRE_RIDGE },
					}),
					n(80242, {	-- Chillfang
						["questID"] = 34843,
						["coord"] = { 41.3, 68.3, FROSTFIRE_RIDGE },
						["groups"] = { i(111953) },	-- Bat-Leather Breeches
					}),
					n(72294, {	-- Cindermaw
						["questID"] = 33014,
						["coord"] = { 40.5, 47.0, FROSTFIRE_RIDGE },
						["groups"] = { i(111490) },	-- Cindermaw's Blazing Talon
					}),
					n(75120, {	-- Clumsy Cragmaul Brute
						["questID"] = 33531,
						["coord"] = { 50.1, 18.6, FROSTFIRE_RIDGE },
						["groups"] = { i(112096) },	-- Dented Ogre Skullcap
					}),
					n(77513, {	-- Coldstomp the Griever
						["questID"] = 34129,
						["coord"] = { 26.6, 55.6, FROSTFIRE_RIDGE },
						["groups"] = { i(112066) },	-- Coldstomp's Sorrow
					}),
					n(76914, {	-- Coldtusk
						["questID"] = 34131,
						["coords"] = {
							{ 54.2, 67.6, FROSTFIRE_RIDGE },
							{ 55.0, 71.2, FROSTFIRE_RIDGE },
						},
						["groups"] = { i(111484) },	-- Cold Tusk
					}),
					n(78621, {	-- Cyclonic Fury
						["questID"] = 34477,
						["coord"] = { 67.2, 78.8, FROSTFIRE_RIDGE },
						["groups"] = { i(112086) },	-- Windburnt Pauldrons
					}),
					n(84376, {	-- Earthshaker Holar
						["questID"] = 37403,
						["isDaily"] = true,
						["coord"] = { 84.2, 46.6, FROSTFIRE_RIDGE },
						["groups"] = { i(119374) },	-- Gold Ogron Earring
					}),
					n(74971, {	-- Firefury Giant
						["questID"] = 33504,
						["coord"] = { 71.5, 46.8, FROSTFIRE_RIDGE },
						["groups"] = { i(107661) },	-- Smoldering Lavacore Orb
					}),
					n(71665, {	-- Giant-Slayer Kul
						["questID"] = 32918,
						["coord"] = { 54.7, 22.3, FROSTFIRE_RIDGE },
						["groups"] = { i(111530) },	-- Giantstalker's Guile
					}),
					n(87352, {	-- Gibblette the Cowardly
						["questID"] = 37380,
						["isDaily"] = true,
						["coord"] = { 66.5, 25.5, FROSTFIRE_RIDGE },
						["groups"] = {
							i(119349),	-- Craven Coward's Cloak
							i(119180),	-- Goren "Log" Roller (TOY!)
						},
					}),
					n(72364, {	-- Gorg'ak the Lava Guzzler
						["questID"] = 33512,
						["isDaily"] = true,
						["coord"] = { 71.0, 27.4, FROSTFIRE_RIDGE },
						["groups"] = { i(111545) },	-- Smoldering Fist of Gorg'ak
					}),
					n(82536, {	-- Gorivax <Spawn of the Soulgrinder>
						["description"] = "You need to be on the quest \"Assault on Stonefury Cliffs\".",
						["questID"] = 37388,
						["isDaily"] = true,
						["coord"] = { 38.0, 14.0, FROSTFIRE_RIDGE },
						["groups"] = { i(119358) },	-- Voidmesh Cloth Wristwraps
					}),
					n(50992, {	-- Gorok
						["description"] = "Gorok has a respawn timer between 5-16 hours. Mount drop rate is 100% for all participants.",
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 64.6, 52.0, FROSTFIRE_RIDGE },
							{ 63.4, 79.6, FROSTFIRE_RIDGE },
							{ 58.4, 19.2, FROSTFIRE_RIDGE },
							{ 52.2, 50.4, FROSTFIRE_RIDGE },
							{ 23.1, 65.6, FROSTFIRE_RIDGE },
						},
						["groups"] = { i(116674) },	-- Great Greytusk (MOUNT!)
					}),
					n(74585, {	-- Grizzled Frostwolf Veteran
						["questID"] = 33011,
						["coord"] = { 45.4, 50.3, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["groups"] = { i(106899) },	-- Frostwolf Veteran's Keepsake
					}),
					n(80312, {	-- Grutush the Pillager
						["questID"] = 34865,
						["coord"] = { 38.7, 62.8, FROSTFIRE_RIDGE },
						["groups"] = { i(112077) },	-- Grutush's Fur-Padded Pantaloons
					}),
					n(80190, {	-- Gruuk
						["questID"] = 34825,
						["coord"] = { 50.4, 52.8, FROSTFIRE_RIDGE },
						["groups"] = { i(111948) },	-- Gruuk's Evil Eye
					}),
					n(80235, {	-- Gurun
						["questID"] = 34839,
						["coord"] = { 47.1, 55.3, FROSTFIRE_RIDGE },
						["groups"] = { i(111955) },	-- Skog's Drape
					}),
					n(87348, {	-- Hoarfrost <Tempest of Ice>
						["questID"] = 37382,
						["isDaily"] = true,
						["coord"] = { 68.10, 19.88, FROSTFIRE_RIDGE },
						["groups"] = { i(119415) },	-- Frosted Icequartz Ring
					}),
					n(78151, {	-- Huntmaster Kuang (Giantstalker Hunting Party)
						["questID"] = 34130,
						["coords"] = {
							{ 58.6, 32.2, FROSTFIRE_RIDGE },
							{ 56.4, 38.2, FROSTFIRE_RIDGE },
						},
						["crs"] = {
							78150,	-- Beastcarver Saramor
							78169,	-- Cloudspeaker Daber
							77519,	-- Giantbane
							78144,	-- Giantslayer Kimla
							78128,	-- Gronnstalker Dawarn
							78134,	-- Pathfinder Jalog
						},
					}),
					n(82616, {	-- Jabberjaw
						["questID"] = 37386,
						["isDaily"] = true,
						["coord"] = { 48.2, 23.4, FROSTFIRE_RIDGE },
						["groups"] = { i(119390) },	-- Rockworm Carapace Shield
					}),
					n(87600, {	-- Jaluk the Pacifist
						["questID"] = 37556,
						["isDaily"] = true,
						["coord"] = { 85.0, 52.2, FROSTFIRE_RIDGE },
					}),
					n(79678, {	-- Jehil the Climber
						["questID"] = 34708,
						["coord"] = { 61.7, 26.6, FROSTFIRE_RIDGE },
						["groups"] = { i(112078) },	-- Jehil's Climbin' Boots
					}),
					n(84374, {	-- Kaga the Ironbender
						["questID"] = 37404,
						["isDaily"] = true,
						["coord"] = { 86.8, 46.6, FROSTFIRE_RIDGE },
						["groups"] = { i(119372) },	-- Ironstudded Scale Girdle
					}),
					n(82614, {	-- Moltnoma
						["questID"] = 37387,
						["isDaily"] = true,
						["coord"] = { 42.4, 21.7, FROSTFIRE_RIDGE },
						["groups"] = { i(119356) },	-- Moltnoma's Magma Mantle
					}),
					n(87351, {	-- Mother of Goren
						["questID"] = 37381,
						["isDaily"] = true,
						["coords"] = {
							{ 70.0, 27.1, FROSTFIRE_RIDGE },
							{ 72.6, 22.6, FROSTFIRE_RIDGE },
						},
						["groups"] = { i(119376) },	-- Three-Egg Pendant Necklace
					}),
					n(81001, {	-- Nok-Karosh <Warrior's Death>
						["coord"] = { 13.1, 50.4, FROSTFIRE_RIDGE },
						["groups"] = { i(116794) },	-- Garn Nighthowl (MOUNT!)
					}),
					n(87622, bubbleDownSelf({	-- Ogom the Mangler
						["timeline"] = { ADDED_6_0_3, REMOVED_8_0_1 },
						-- #if AFTER 8.0.1
						["isBounty"] = true,
						-- #endif
					}, {
						["questID"] = 37402,
						["isDaily"] = true,
						["coords"] = {	-- **Coords unconfirmed, relied on wowhead**
							{ 84.4, 48.0, FROSTFIRE_RIDGE },
							{ 86.6, 48.6, FROSTFIRE_RIDGE },
						},
						["description"] = translate({
							color = "FF0000";
							en = "Ogom the Mangler seems just to spawn when you are doing the Daily 'Assault on the Iron Siegeworks'. This Quest wasn't active since the start of Legion and the buyable Quest 'Missive: Assault on the Iron Siegeworks' does not work either.",
							es = "Ogom the Mangler parece aparecer cuando estás realizando el 'Asalto a los Sitios de Hierro' diario. Esta misión no estuvo activa desde el inicio de Legion y la misión comprable 'Misiva: Asalto a los Sitios de Hierro' tampoco funciona.",
							de = "Ogom der Mangler scheint gerade dann zu erscheinen, wenn Sie den täglichen „Angriff auf das Eiserne Belagerungswerk“ durchführen. Diese Quest war seit Beginn von Legion nicht mehr aktiv und die käufliche Quest „Missive: Angriff auf das Eiserne Belagerungswerk“ funktioniert auch nicht.",
							fr = "Ogom le Mangler semble apparaître lorsque vous effectuez l'« Assaut quotidien sur les usines de siège de fer ». Cette quête n'était plus active depuis le début de Legion et la quête achetable « Missive : Assaut sur les usines de siège de fer » ne fonctionne pas non plus.",
							it = "Ogom the Mangler sembra apparire solo quando stai eseguendo l'\"Assalto alle officine d'assedio di ferro\" giornaliero. Questa missione non era attiva dall'inizio di Legion e neanche la missione acquistabile \"Missiva: Assalto alle officine d'assedio di ferro\" funziona.",
							pt = "Ogom, o Mangler, parece surgir apenas quando você está fazendo o 'Assalto ao Cerco de Ferro' diário. Esta missão não estava ativa desde o início de Legion e a missão comprável 'Missiva: Assault on the Iron Siegeworks' também não funciona.",
							ru = "Огом Уничтожитель появляется только при выполнении ежедневного задания 'Штурм осадного лагеря Железной Орды'. Данное задание не было доступно со старта Легиона, а приобретаемое в гарнизоне задание 'Донесение: Штурм осадного лагеря Железной Орды' тоже не помогает.",
							ko = "약탈자 오곰은 일일 '철 공성 작업장 공격'을 수행할 때 생성되는 것 같습니다. 이 퀘스트는 Legion이 시작된 이후 활성화되지 않았으며 구매 가능한 퀘스트 'Missive: Iron Siegeworks 공격'도 작동하지 않습니다.",
							cn = "绞肉机奥戈姆似乎只是在你做每日突袭钢铁军工厂的时候刷新的。这个任务从军团开始后就没有激活过，可购买的任务密报：突袭钢铁军工厂也不能用了。",
						}),
						["groups"] = { i(119366) },	-- Ogom's Manacles
					})),
					n(78606, {	-- Pale Fishmonger
						["questID"] = 34470,
						["coord"] = { 28.2, 66.6, FROSTFIRE_RIDGE },
					}),
					n(76918, {	-- Primalist Mur'og
						["questID"] = 33938,
						["coord"] = { 36.9, 33.8, FROSTFIRE_RIDGE },
						["groups"] = { i(111576) },	-- Ritual Leggings of Mur'og
					}),
					n(84392, {	-- Ragore Driftstalker
						["questID"] = 37401,
						["isDaily"] = true,
						["coord"] = { 86.8, 49.0, FROSTFIRE_RIDGE },
						["groups"] = { i(119359) },	-- Tunic of the Driftstalker
					}),
					n(77526, {	-- Scout Goreseeker
						["questID"] = 34132,
						["coord"] = { 76.5, 63.5, FROSTFIRE_RIDGE },
						["groups"] = { i(112094) },	-- Goreseeker's Goresplattered Garb
					}),
					n(82617, {	-- Slogtusk the Corpse-Eater
						["questID"] = 37385,
						["isDaily"] = true,
						["coord"] = { 44.6, 15.2, FROSTFIRE_RIDGE },
						["groups"] = { i(119362) },	-- Frostboar Leather Helmet
					}),
					n(82620, {	-- Son of Goramal
						["questID"] = 37383,
						["isDaily"] = true,
						["coord"] = { 38.4, 16.4, FROSTFIRE_RIDGE },	-- **Coords unconfirmed, relied on wowhead**
						["groups"] = { i(119399) },	-- Cudgel of the Son of Goramal
					}),
					n(77527, {	-- The Beater <Champion of the Circle of Blood>
						["questID"] = 34133,
						["coord"] = { 26.9, 31.9, FROSTFIRE_RIDGE },
						["groups"] = { i(111475) },	-- Beater's Beat Stick
					}),
					n(78265, {	-- The Bone Crawler
						["questID"] = 34361,
						["isDaily"] = true,
						["coord"] = { 72.4, 33.0, FROSTFIRE_RIDGE },
						["groups"] = { i(111534) },	-- The Bone Crawler's Carapace
					}),
					n(82618, {	-- Tor'goroth <The Soul-Gorger>
						["questID"] = 37384,
						["isDaily"] = true,
						["coord"] = { 43.47, 8.89, FROSTFIRE_RIDGE },
						["groups"] = {
							i(119163),	-- Soul Inhaler (TOY!)
							i(119379),	-- Tor'goroth's Soul Prism
						},
					}),
					n(79104, {	-- Ug'lok the Frozen
						["questID"] = 34522,
						["coord"] = { 40.4, 12.6, FROSTFIRE_RIDGE },
						["groups"] = {
							i(119409, {	-- Icebound Bloodmaul Spire
								["description"] = "There are reports that this drops from this rare. This rare is only lootable once, but it appears this may either not drop anymore, or you may only have the one chance per toon to loot it. Please let us know if you get this item to drop.",
								["u"] = REMOVED_FROM_GAME,
							}),
						},
					}),
					n(87357, {	-- Valkor <Might of the Mountain>
						["questID"] = 37378,
						["isDaily"] = true,
						["coords"] = {
							{ 68.8, 29.0, FROSTFIRE_RIDGE },
							{ 72.0, 24.0, FROSTFIRE_RIDGE },
							{ 71.6, 28.6, FROSTFIRE_RIDGE },
						},
						["groups"] = { i(119416) },	-- Magnaron Heart
					}),
					n(87356, {	-- Vrok the Ancient
						["questID"] = 37379,
						["isDaily"] = true,
						["coord"] = { 70.6, 39.2, FROSTFIRE_RIDGE },
						["groups"] = { i(119416) },	-- Magnaron Heart
					}),
					n(79145, {	-- Yaga the Scarred
						["questID"] = 34559,
						["coord"] = { 40.5, 27.5, FROSTFIRE_RIDGE },
						["groups"] = { i(111477) },	-- Yaga's Trophy Belt
					}),
				}),
				n(SPECIAL, {
					n(80285, {	-- Guh
						["sourceQuest"] = 34378,	-- Establish Your Garrison
						["questID"] = 34856,
						["coord"] = { 37.4, 60.3, FROSTFIRE_RIDGE },
					}),
				}),
				n(TREASURES, {
					o(226955, {	-- Arena Master's War Horn
						["questID"] = 33916,
						["coord"] = { 23.1, 24.9, FROSTFIRE_RIDGE },
						["groups"] = { i(108735) },	-- Arena Master's War Horn (TOY!)
					}),
					n(74575, {	-- Bladespire Brute
						["questID"] = 33439,
						["coord"] = { 30.3, 50.6, FROSTFIRE_RIDGE },
						["description"] = "Loot the brute at the base of Mor'dul Tower.",
					}),
					n(74924, {	-- Bladespire Brute
						["questID"] = 33440,
						["coord"] = { 30.6, 50.8, FROSTFIRE_RIDGE },
						["description"] = "Loot the falling brute halfway up Mor'dul Tower.",
					}),
					n(74918, {	-- Bladespire Brute
						["questID"] = 33497,
						["coord"] = { 30.5, 50.9, FROSTFIRE_RIDGE },
						["description"] = "Loot the falling brute at the top of Mor'dul Tower.",
					}),
					n(74574, {	-- Bladespire Primalist
						["description"] = "Loot the cowering ogre at the top of Mor'dul Tower.",
						["questID"] = 33438,
						["coord"] = { 30.3, 51.1, FROSTFIRE_RIDGE },
						["groups"] = { i(107662) },	-- Primalist's Prismatic Pendant
					}),
					o(230252, {	-- Burning Pearl
						["questID"] = 34520,
						["coord"] = { 42.1, 19.3, FROSTFIRE_RIDGE },
						["groups"] = { i(120341) },	-- Burning Pearl
					}),
					o(226983, {	-- Crag-Leaper's Cache
						["questID"] = 33940,
						["coord"] = { 42.65, 31.74, FROSTFIRE_RIDGE },
						["groups"] = { i(112187) },	-- Crag-Leaping Boots
					}),
					o(224713, {	-- Cragmaul Cache
						["questID"] = 33532,
						["coord"] = { 39.6, 17.2, FROSTFIRE_RIDGE },
						["groups"] = { i(120945) },	-- Primal Spirit
					}),
					n(79473, {	-- Dagg
						["provider"] = { "o", 230498 },	-- Thunderlord Cage
						["sourceQuest"] = 34654,	-- Dagg
						["questID"] = 34651,
						["coord"] = { 65.9, 60.8, FROSTFIRE_RIDGE },
					}),
					n(79488, {	-- Dagg
						["provider"] = { "o", 230506 },	-- Thunderlord Cage
						["questID"] = 34654,
						["coord"] = { 39.6, 28.0, FROSTFIRE_RIDGE },
					}),
					o(232218, {	-- Doorog's Secret Stash
						["questID"] = 35370,
						["coord"] = { 37.1, 69.9, 527 },
					}),
					o(229328, {	-- Envoy's Satchel
						["questID"] = 34473,
						["coord"] = { 40.9, 20.1, FROSTFIRE_RIDGE },
						["groups"] = { i(110536) },	-- Envoy's Log
					}),
					o(230909, {	-- Forgotten Supplies
						["questID"] = 34841,
						["coord"] = { 43.7, 55.6, FROSTFIRE_RIDGE },
					}),
					o(229367, {	-- Frozen Orc Skeleton
						["questID"] = 34476,
						["coord"] = { 57.1, 52.1, FROSTFIRE_RIDGE },
						["groups"] = { i(111554) },	-- Rimefrost Fetish
					}),
					o(229640, {	-- Frozen Frostwolf Axe
						["questID"] = 34507,
						["coords"] = {
							{ 24.1, 48.6, FROSTFIRE_RIDGE },	-- Frozen Frostwolf Axe
							{ 25.2, 51.5, FROSTFIRE_RIDGE },	-- Cave Entrance
						},
						["groups"] = { i(110689) },	-- Icebound Frost-Singer Axe
					}),
					o(230425, {	-- Gnawed Bone
						["questID"] = 34648,
						["coord"] = { 25.5, 20.4, FROSTFIRE_RIDGE },
						["groups"] = { i(111415) },	-- Gnawbone Knife
					}),
					o(226996, {	-- Goren Leftovers
						["questID"] = 33948,
						["coord"] = { 66.7, 26.4, FROSTFIRE_RIDGE },
						["groups"] = { i(111543) },	-- Pile of Frostfire Turnips
					}),
					o(232215, {	-- Gorr'thogg's Personal Reserve
						["questID"] = 35367,
						["coord"] = { 31.3, 66.6, 528 },
					}),
					o(226994, {	-- Grimfrost Treasure
						["questID"] = 33947,
						["coord"] = { 68.1, 45.9, FROSTFIRE_RIDGE },
					}),
					o(236693, {	-- Iron Horde Munitions
						["questID"] = 36863,
						["coord"] = { 56.7, 71.9, FROSTFIRE_RIDGE },
					}),
					o(224633, {	-- Iron Horde Supplies
						["questID"] = 33017,
						["coord"] = { 68.9, 69.1, FROSTFIRE_RIDGE },
					}),
					o(226967, {	-- Lagoon Pool
						["requireSkill"] = FISHING,
						["modelScale"] = 10,
						["questID"] = 33926,
						["coord"] = { 21.7, 9.61, FROSTFIRE_RIDGE },
						["groups"] = {
							i(108738, {	-- Giant Draenor Clam
								i(108739),	-- Pretty Draenor Pearl (TOY!)
							}),
						},
					}),
					o(230402, {	-- Lucky Coin
						["questID"] = 34642,
						["coord"] = { 19.2, 12.0, FROSTFIRE_RIDGE },
						["groups"] = { i(111408) },	-- Discarded Lucky Coin
					}),
					o(224616, {	-- Obsidian Petroglyph
						["questID"] = 33502,
						["coord"] = { 38.3, 37.8, FROSTFIRE_RIDGE },
						["groups"] = { i(112087) },	-- Obsidian Frostwolf Petroglyph
					}),
					o(232547, {	-- Ogre Booty
						["questID"] = 35347,
						["coord"] = { 36.4, 28.7, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232216, {	-- Ogre Booty
						["questID"] = 35568,
						["coord"] = { 76.8, 62.1, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232217, {	-- Ogre Booty
						["questID"] = 35569,
						["coord"] = { 70.5, 67.7, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232550, {	-- Ogre Booty
						["questID"] = 35373,
						["coord"] = { 52.1, 52.0, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232237, {	-- Ogre Booty
						["questID"] = 35567,
						["coord"] = { 51.4, 17.9, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232549, {	-- Ogre Booty
						["questID"] = 35371,
						["coord"] = { 46.2, 15.6, 527 },	-- Bladespire Citadel, Courtyuard
					}),
					o(232214, {	-- Ogre Booty
						["questID"] = 35368,
						["coord"] = { 53.2, 28.3, 526 },	-- Bladespire Citadel
					}),
					o(232219, {	-- Ogre Booty
						["questID"] = 35369,
						["coord"] = { 48.5, 67.2, 526 },	-- Bladespire Citadel
					}),
					o(232546, {	-- Ogre Booty
						["questID"] = 35570,
						["coord"] = { 44.7, 64.8, 526 },	-- Bladespire Citadel
					}),
					o(230611, {	-- Pale Loot Sack
						["description"] = "At the bottom of a nearby cave.",
						["questID"] = 34931,
						["coord"] = { 21.7, 50.8, FROSTFIRE_RIDGE },
					}),
					o(231103, {	-- Raided Loot
						["questID"] = 34967,
						["coord"] = { 37.2, 59.2, FROSTFIRE_RIDGE },
						["sourceQuest"] = 34378,	-- Establish Your Garrison
					}),
					o(230401, {	-- Sealed Jug
						["questID"] = 34641,
						["coord"] = { 9.80, 45.3, FROSTFIRE_RIDGE },
						["groups"] = { i(111407) },	-- Waterlogged Journal
					}),
					o(226468, {	-- Shamanstone: Buffeting Galefury
						["questID"] = 33979,	-- Buffeting Galefury
						["coord"] = { 65.14, 79.11, FROSTFIRE_RIDGE },
					}),
					o(239925, {	-- Shamanstone: Ogrish Fortitude
						["questID"] = 33980,	-- Ogrish Fortitude
						["coord"] = { 43.84, 12.32, FROSTFIRE_RIDGE },
					}),
					o(226469, {	-- Shamanstone: Spirit of the Wolf
						["questID"] = 33978,	-- Spirit of the Wolf
						["coord"] = { 17.47, 56.68, FROSTFIRE_RIDGE },
					}),
					o(239926, {	-- Shamanstone: Touched by Fire
						["questID"] = 33981,	-- Touched By Fire
						["coord"] = { 36.98, 33.11, FROSTFIRE_RIDGE },
					}),
					o(230544, {	-- Shamanstone: Touched By Ice
						["questID"] = 33982,	-- Touched By Ice
						["coord"] = { 60.35, 13.65, FROSTFIRE_RIDGE },
					}),
					o(224392, {	-- Slave's Stash
						["questID"] = 33500,
						["coord"] = { 27.7, 42.8, FROSTFIRE_RIDGE },
						["groups"] = { i(43696) },	-- Half Empty Bottle of Prison Moonshine
					}),
					o(230428, {	-- Smoldering True Iron Deposit
						["questID"] = 34649,
						["coord"] = { 36.2, 32.3, FROSTFIRE_RIDGE },
						["requireSkill"] = MINING,
					}),
					o(230424, {	-- Snow-covered Strongbox
						["questID"] = 34647,
						["coord"] = { 24.0, 12.9, FROSTFIRE_RIDGE },
					}),
					o(224613, {	-- Spectator's Chest
						["questID"] = 33501,
						["coord"] = { 24.2, 27.1, FROSTFIRE_RIDGE },
						["groups"] = {
							i(117439),	-- "Da Bruisery" Hot & Wroth
							i(117442),	-- Thunderbelly Mead
						},
					}),
					o(226990, {	-- Supply Dump
						["questID"] = 33942,
						["coord"] = { 16.1, 49.7, FROSTFIRE_RIDGE },
					}),
					o(226993, {	-- Survivalist's Cache
						["questID"] = 33946,
						["coord"] = { 64.7, 25.7, FROSTFIRE_RIDGE },
					}),
					o(220641, {	-- Thunderlord Cache
						["questID"] = 32803,
						["coord"] = { 34.2, 23.4, FROSTFIRE_RIDGE },
					}),
					o(224623, {	-- Wiggling Egg
						["questID"] = 33505,
						["coord"] = { 64.3, 65.8, FROSTFIRE_RIDGE },
						["groups"] = {
							i(112107, {	-- Mysterious Egg
								i(117564),	-- Fruit Hunter (PET!)
							}),
						},
					}),
					n(75072, {	-- Young Orc Traveler
						["description"] = "Use the Bound Traveler's Scroll to obtain Snow Hare's Foot. Must collect the Frostwolf First-Fang from the Young Orc Woman to complete.",
						["questID"] = 33525,
						["coord"] = { 54.8, 35.4, FROSTFIRE_RIDGE },
						["groups"] = { i(112206) },	-- Talisman of Yearning Unfulfilled
					}),
					n(75081, {	-- Young Orc Woman
						["description"] = "Use the Frozen Envelope to obtain Frostwolf First-Fang. Must collect the Snow Hare's Foot from the Young Orc Traveler to complete.",
						["questID"] = 33525,
						["coord"] = { 63.4, 14.7, FROSTFIRE_RIDGE },
						["groups"] = { i(112206) },	-- Talisman of Yearning Unfulfilled
					}),
				}),
				n(VENDORS, {
					n(77465, {	-- "Wrong Knick" <Repairs>
						["coord"] = { 28.2, 34.6, FROSTFIRE_RIDGE },
						["races"] = HORDE_ONLY,
						["sym"] = {
							{"sub", "common_vendor", 64054},	-- Krogo Darkhide <Leatherworking & Skinning Supplies>
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(FROSTFIRE_RIDGE, {
			n(QUESTS, {
				q(33443),	-- Barrier Destroyed - triggers upon reaching the top of the walkway with rolling fireballs in Bladespire Citadel during "Great Balls of Fire!" (questID 33408)
				q(33847),	-- Flag: Seen Ga'nar Rolling Out - triggers when going into Chillfang's cave immediately upon getting to Draenor
				q(33909),	-- Flag: Seen Ga'nar Rolling Out to Bladespire - triggers shortly after reaching Wor'gol during "Den of Wolves" (questID 34379)
				q(33846),	-- Flag: Seen Thrall Cyclone - triggers during "These Colors Don't Run" (questID 33526)
				q(36793),	-- Founded Garrison - triggers after building Horde Garrison
				q(37544),	-- Garrison Follower: Greatmother Geyah - Greatmother Geyah selected during "The Frostwolves Stand Ready" (questID 37563)
				q(37545),	-- Garrison Follower: Kal'gor the Honorable - Kal'gor the Honorable selected during "The Frostwolves Stand Ready" (questID 37563)
				q(34730),	-- Garrison Follower: Lokra - Lokra selected during "The Frostwolves Stand Ready" (questID 37563)
				q(36904),	-- Ogre Waygate
				q(34313),	-- Orlana Strongbrow - triggers during "The Shadow Gate" (questID 34381)
				q(34312),	-- The Magma Lord - triggers when Molthron first appears at 43.6, 15.6
				q(34510),	-- Tracking Event: Catapuls 'n' Clefthoof - triggers after riding the wolf down Bladespire Citadel during "Moving In" (questID 33657)
				q(34453),	-- Tracking Event: Gazlowe Arrived
				q(34511),	-- Tracking Event: Ogre Drag - triggers after riding the wolf down Bladespire Citadel during "Moving In" (questID 33657)
				q(34715),	-- Tracking Flag: Shamanstone Summons - appoach the frostwolf shaman stone in Wor'gol while on "Honor Has Its Rewards" to start the dialog (questID 33816)
			}),
			n(RARES, {
				q(34519),	-- Vignette: Brotoculus - tertiary trigger for g'lok the Frozen rare
				q(34517),	-- Vignette: Gargantuan Frostbeak - secondary trigger for Ug'lok the Frozen rare
				q(37652),	-- Vignette: Jabberjaw - secondary trigger for Jabberjaw rare
			}),
			n(TREASURES, {
				q(34329),	-- Shamanstone: Buffeting Galefury selected. Only procs once
				q(34330),	-- Shamanstone: Ogrish Fortitude selected. Only procs once
				q(34456),	-- Shamanstone: Spirit of the Wolf. Popped when approaching the Frostwolf shamanstone
				q(34331),	-- Shamanstone: Spirit of the Wolf selected. Only procs once
				q(34332),	-- Shamanstone: Touched By Fire selected. Only procs once
				q(34333),	-- Shamanstone: Touched By Ice selected. Only procs once
				q(34328),	-- Shamanstone: Blessing of the WOlf selected. Only procs once
				-- q(34521),	-- Treasure: Glowing Obsidian Shard - secondary quest triggered when looting Burning Pearl in Frostfire Ridge
				q(34968),	-- Treasure: Ice-Covered Supplies - secondary quest triggered when looting Forgotten Supplies in Frostfire Ridge
			}),
		}),
	}),
})));
