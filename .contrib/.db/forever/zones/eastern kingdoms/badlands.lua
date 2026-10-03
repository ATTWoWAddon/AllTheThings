---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.BADLANDS, {
	["lore"] = "The Badlands is a region in Khaz Modan accessed via the Searing Gorge to the west and Loch Modan to the north.\n\nThe Badlands are a cracked desert of dry earth, scattered boulders, and winding canyons. Dark Iron dwarves clash with ogres and drakes, while Horde orcs man a fortress to keep watch on their renegade brethren in the eastern lands. Ironforge prospectors search this desolate land for Titan artifacts, inspired by the recently unearthed Uldaman — an immense ruin that held the first clues to the dwarves' lofty origins. Stonevault troggs, released after millennia of slumber, slaughtered the explorers and viciously defend their stolen city.",
	["icon"] = 236716,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(765),	-- Explore Badlands
		}),
		explorationHeader({
			exploration(345),	-- Agmond's End
			exploration(338),	-- Angor Fortress
			exploration(337),	-- Apocryphan's Rest
			exploration(342),	-- Camp Boff
			exploration(344),	-- Camp Cagg
			exploration(341),	-- Camp Kosh
			exploration(347),	-- Dustbelch Grotto
			exploration(1898),	-- Dustwind Gulch
			exploration(346),	-- Hammertoe's Digsite
			exploration(340),	-- Kargath
			exploration(339),	-- Lethlor Ravine
			exploration(1879),	-- Mirage Flats
			exploration(1878),	-- The Dustbowl
			exploration(1897),	-- The Maker's Terrace
			exploration(1877),	-- Valley of Fangs
			exploration(1517),	-- Uldaman
		}),
		n(FLIGHT_PATHS, {
			fp(21, {	-- Kargath, Badlands
				["cr"] = 2861,	-- Gorrik <Wind Rider Master>
				["coord"] = { 4.0, 44.8, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
			}),
		}),
		lockpicking({
			o(179490, {	-- Battered Footlocker
				["coord"] = { 42.4, 29.6, MAP.BADLANDS },
				["requireSkill"] = LOCKPICKING,
				["learnedAt"] = 150,
			}),
			o(179492, {	-- Dented Footlocker
				["coord"] = { 41.5, 27.3, MAP.BADLANDS },
				["requireSkill"] = LOCKPICKING,
				["learnedAt"] = 175,
			}),
		}),
		n(PROFESSIONS, {
			prof(LEATHERWORKING, {
				n(7867, {	-- Thorkaf Dragoneye <Master Dragonscale Leatherworker>
					["coord"] = { 62.6, 57.6, MAP.BADLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = CLASSIC_TBC_DRAGONSCALE,
				}),
			}),
		}),
		n(QUESTS, {
			q(719, {	-- A Dwarf and His Tools
				["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
				["coord"] = { 53.4, 43.2, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Ryedol's Lucky Pick
						["provider"] = { "i", 4616 },	-- Ryedol's Lucky Pick
						["crs"] = {
							2742,	-- Shadowforge Chanter
							2744,	-- Shadowforge Commander
							2740,	-- Shadowforge Darkweaver
							2739,	-- Shadowforge Tunneler
							2743,	-- Shadowforge Warrior
						},
					}),
					i(4978),	-- Ryedol's Hammer
				},
			}),
			q(720, {	-- A Sign of Hope (1/2)
				["provider"] = { "o", 2868 },	-- Crumpled Map
				["coord"] = { 53.0, 34.1, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(721, {	-- A Sign of Hope (2/2)
				["sourceQuest"] = 720,	-- A Sign of Hope (1/2)
				["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
				["coord"] = { 53.4, 43.4, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(722, {	-- Amulet of Secrets
				["sourceQuest"] = 721,	-- A Sign of Hope (2/2)
				["qg"] = 2909,	-- Hammertoe Grez
				["coord"] = { 37.94, 10.53, MAP.BADLANDS },
				["maps"] = { MAP.ULDAMAN, MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Hammertoe's Amulet
						["provider"] = { "i", 4635 },	-- Hammertoe's Amulet
						["coord"] = { 38.0, 92.6, MAP.LOCH_MODAN },
						["cr"] = 2932,	-- Magregan Deepshadow
					}),
				},
			}),
			q(762, {	-- An Ambassador of Evil
				["sourceQuest"] = 726,	-- Passing Word of a Threat (2/2)
				["qg"] = 2916,	-- Historian Karnik
				["coord"] = { 77.5, 11.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Ambassador Infernus' Bracer
						["provider"] = { "i", 4621 },	-- Ambassador Infernus' Bracer
						["coord"] = { 42.1, 28.9, MAP.BADLANDS },
						["qg"] = 2745,	-- Ambassador Infernus
					}),
					i(4987),	-- Dwarf Captain's Sword
				},
			}),
			q(2258, {	-- Badlands Reagent Run
				["qg"] = 6868,	-- Jarkal Mossmeld
				["coord"] = { 2.6, 46.0, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 36,
				["groups"] = {
					objective(1, {	-- 0/5 Buzzard Gizzard
						["provider"] = { "i", 7847 },	-- Buzzard Gizzard
						["crs"] = {
							2830,	-- Buzzard
							2831,	-- Giant Buzzard
							2829,	-- Starving Buzzard
						},
					}),
					objective(2, {	-- 0/10 Crag Coyote Fang
						["provider"] = { "i", 7846 },	-- Crag Coyote Fang
						["crs"] = {
							2727,	-- Crag Coyote
							2729,	-- Elder Crag Coyote
							2728,	-- Feral Crag Coyote
							2730,	-- Rabid Crag Coyote
						},
					}),
					objective(3, {	-- 0/5 Rock Elemental Shard
						["provider"] = { "i", 7848 },	-- Rock Elemental Shard
						["crs"] = {
							2745,	-- Ambassador Infernus
							2791,	-- Enraged Rock Elemental
							2919,	-- Fam'retor Guardian
							2736,	-- Greater Rock Elemental
							2735,	-- Lesser Rock Elemental
							92,		-- Rock Elemental
							2752,	-- Rumbler
							8278,	-- Smoldar
						},
					}),
				},
			}),
			q(2203, {	-- Badlands Reagent Run II
				["sourceQuest"] = 2202,	-- Uldaman Reagent Run
				["qg"] = 6868,	-- Jarkal Mossmeld
				["coord"] = { 2.6, 46.0, MAP.BADLANDS },
				["requireSkill"] = ALCHEMY,
				["learnedAt"] = 210,
				["races"] = HORDE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/3 Vessel of Dragon's Blood
						["provider"] = { "i", 7867 },	-- Vessel of Dragon's Blood
						["cost"] = {{ "i", 7866, 1 }},	-- Empty Thaumaturgy Vessel
						["cr"] = 2726,	-- Scorched Guardian
					}),
					i(7870, {	-- Thaumaturgy Vessel Lockbox
						i(7866),	-- Empty Thaumaturgy Vessel
					}),
					r(11452),	-- Restorative Potion
				},
			}),
			q(703, {	-- Barbecued Buzzard Wings
				["qg"] = 2817,	-- Rigglefuzz
				["coord"] = { 42.39, 52.93, MAP.BADLANDS },
				["cost"] = { { "i", 3404, 4 } },	-- Buzzard Wing
				["lvl"] = 33,
				["groups"] = {
					i(4457),	-- Barbecued Buzzard Wing
					i(4609),	-- Recipe: Barbecued Buzzard Wing (RECIPE!)
				},
			}),
			q(782, {	-- Broken Alliances (1/2)
				["qg"] = 1068,	-- Gorn
				["coord"] = { 2.8, 45.8, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Sign of the Earth
						["provider"] = { "i", 4640 },	-- Sign of the Earth
					}),
				},
			}),
			q(793, {	-- Broken Alliances (2/2)
				["sourceQuest"] = 782,	-- Broken Alliances (1/2)
				["qg"] = 1068,	-- Gorn
				["coord"] = { 2.8, 45.8, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Blacklash's Bindings
						["provider"] = { "i", 4615 },	-- Blacklash's Bindings
					}),
					objective(2, {	-- 0/1 Chains of Hematus
						["provider"] = { "i", 4645 },	-- Chains of Hematus
					}),
					i(11193),	-- Blazewind Breastplate
					i(11196),	-- Mindburst Medallion
					i(11194),	-- Prismscale Hauberk
					i(11195),	-- Warforged Chestplate
				},
			}),
			q(713, {	-- Coolant Heads Prevail
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 26.0, 44.9, MAP.BADLANDS },
				["cost"] = {{ "i", 3829, 1 }},	-- Frost Oil
				["lvl"] = 35,
			}),
			q(1419, {	-- Coyote Thieves
				["qg"] = 5394,	-- Neeka Bloodscar
				["coord"] = { 6.4, 47.0, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/30 Coyote Jawbone
						["provider"] = { "i", 6166 },	-- Coyote Jawbone
						["crs"] = {
							2727,	-- Crag Coyote
							2729,	-- Elder Crag Coyote
							2728,	-- Feral Crag Coyote
							2730,	-- Rabid Crag Coyote
						},
					}),
				},
			}),
			q(3821, {	-- Dreadmaul Rock
				["qg"] = 9082,	-- Thal'trak Proudtusk
				["coord"] = { 3.4, 48.0, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 48,
			}),
			q(706, {	-- Fiery Blaze Enchantments
				["qg"] = 2860,	-- Sigrun Ironhew
				["coord"] = { 53.8, 43.4, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- Black Drake's Heart
						["provider"] = { "i", 4612 },	-- Black Drake's Heart
						["crs"] = {
							2726,	-- Scorched Guardian
							2725,	-- Scalding Whelp
						},
					}),
					i(5421),	-- Fiery Blaze Enchantment
				},
			}),
			q(1559, {	-- Flash Bomb Recipe
				["sourceQuest"] = 705,	-- Pearl Diving
				["qg"] = 2817,	-- Rigglefuzz
				["coord"] = { 42.39, 52.93, MAP.BADLANDS },
				["requireSkill"] = ENGINEERING,
				["lvl"] = 30,
				["groups"] = {
					i(6672),	-- Schematic: Flash Bomb (RECIPE!)
				},
			}),
			q(737, {	-- Forbidden Knowledge
				["allianceQuestData"] = {
					["providers"] = {
						{ "n", 2786 },	-- Gerrig Bonegrip
						{ "i", 4647 },	-- Yagyin's Digest
					},
					["sourceQuest"] = 735,	-- The Star, the Hand and the Heart [A]
					["coord"] = { 50.8, 5.6, MAP.IRONFORGE },
				},
				["hordeQuestData"] = {
					["providers"] = {
						{ "n", 2934 },	-- Keeper Bel'dugur
						{ "i", 4647 },	-- Yagyin's Digest
					},
					["sourceQuest"] = 736,	-- The Star, the Hand and the Heart [H]
					["coord"] = { 53.7, 54.5, MAP.UNDERCITY },
				},
				["lvl"] = 30,
				["groups"] = {
					i(4984),	-- Skull of Impending Doom
				},
			}),
			q(714, {	-- Gyro... What?
				["sourceQuest"] = 713,	-- Coolant Heads Prevail
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 26.0, 44.9, MAP.BADLANDS },
				["cost"] = { { "i", 4389, 1 } },	-- Gyrochronatom
				["lvl"] = 35,
			}),
			q(1108, {	-- Indurium
				["sourceQuest"] = 1106,	-- Martek the Exiled
				["qg"] = 4618,	-- Martek the Exiled
				["coord"] = { 42.22, 52.69, MAP.BADLANDS },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Indurium Flake
						["provider"] = { "i", 5797 },	-- Indurium Flake
						["crs"] = {
							6733,	-- Stonevault Basher
							2893,	-- Stonevault Bonesnapper
							2892,	-- Stonevault Seer
							2894,	-- Stonevault Shaman
						},
					}),
				},
			}),
			q(715, {	-- Liquid Stone
				["sourceQuests"] = {
					714,	-- Gyro... What?
					712,	-- Study of the Elements: Rock (3/3)
				},
				["qg"] = 2920,	-- Lucien Tosselwrench
				["coord"] = { 25.8, 44.2, MAP.BADLANDS },
				["cost"] = {
					{ "i", 929, 1 },	-- Healing Potion
					{ "i", 3823, 1 },	-- Lesser Invisibility Potion
				},
				["lvl"] = 35,
				["groups"] = {
					i(4624),	-- Recipe: Lesser Stoneshield Potion (RECIPE!)
					i(4623),	-- Lesser Stoneshield Potion
				},
			}),
			q(718, {	-- Mirages
				["qg"] = 2860,	-- Sigrun Ironhew
				["coord"] = { 53.8, 43.3, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Supply Crate
						["providers"] = {
							{ "i", 4629 },	-- Supply Crate
							{ "o", 2867 },	-- Excavation Supply Crate
						},
						["coord"] = { 66.5, 31.6, MAP.BADLANDS },
					}),
				},
			}),
			q(739, {	-- Murdaloc
				["sourceQuest"] = 738,	-- Find Agmond
				["provider"] = { "o", 2875 },	-- Battered Dwarven Skeleton
				["coord"] = { 50.89, 62.4, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Murdaloc slain
						["provider"] = { "n", 2945 },	-- Murdaloc
					}),
					objective(2, {	-- 0/12 Stonevault Bonesnapper slain
						["provider"] = { "n", 2893 },	-- Stonevault Bonesnapper
					}),
					i(4983),	-- Rock Pulverizer
				},
			}),
			q(1137, {	-- News for Fizzle
				["sourceQuest"] = 1108,	-- Indurium
				["qg"] = 4618,	-- Martek the Exiled
				["coord"] = { 42.22, 52.69, MAP.BADLANDS },
				["maps"] = { MAP.THOUSAND_NEEDLES },
				["lvl"] = 28,
				["groups"] = {
					i(6729),	-- Fizzle's Zippy Lighter
					i(6732),	-- Gnomish Mechanic's Gloves
				},
			}),
			q(725, {	-- Passing Word of a Threat (1/2)
				["sourceQuest"] = 724,	-- Prospect of Faith (2/2)
				["providers"] = {
					{ "n", 2916 },	-- Historian Karnik
					{ "i", 4622 },	-- Sealed Note to Advisor Belgrum
				},
				["coord"] = { 77.5, 11.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(726, {	-- Passing Word of a Threat (2/2)
				["sourceQuest"] = 725,	-- Passing Word of a Threat (1/2)
				["qg"] = 2918,	-- Advisor Belgrum
				["coord"] = { 77.3, 9.7, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(705, {	-- Pearl Diving
				["qg"] = 2817,	-- Rigglefuzz
				["coord"] = { 42.39, 52.93, MAP.BADLANDS },
				["maps"] = { MAP.STRANGLETHORN_VALE },
				["cost"] = {{ "i", 4611, 9 }},	-- Blue Pearl
				["lvl"] = 30,
				["groups"] = {
					i(4086),	-- Flash Rifle
					i(5248),	-- Flash Wand
					i(4852),	-- Flash Bomb
				},
			}),
			q(2418, {	-- Power Stones
				["qg"] = 2817,	-- Rigglefuzz
				["coord"] = { 42.39, 52.93, MAP.BADLANDS },
				["maps"] = { MAP.ULDAMAN },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/8 Dentrium Power Stone
						["provider"] = { "i", 8009 },	-- Dentrium Power Stone
						["crs"] = {
							4844,	-- Shadowforge Surveyor
							4845,	-- Shadowforge Ruffian
							4846,	-- Shadowforge Digger
							4847,	-- Shadowforge Relic Hunter
							4848,	-- Shadowforge Darkcaster
							4849,	-- Shadowforge Archaeologist
							7030,	-- Shadowforge Geologist
							7290,	-- Shadowforge Sharpshooter
							7091,	-- Shadowforge Ambusher
						},
					}),
					objective(2, {	-- 0/8 An'Alleum Power Stone
						["provider"] = { "i", 8052 },	-- An'Alleum Power Stone
						["crs"] = {
							4844,	-- Shadowforge Surveyor
							4845,	-- Shadowforge Ruffian
							4846,	-- Shadowforge Digger
							4847,	-- Shadowforge Relic Hunter
							4848,	-- Shadowforge Darkcaster
							4849,	-- Shadowforge Archaeologist
							7030,	-- Shadowforge Geologist
							7290,	-- Shadowforge Sharpshooter
							7091,	-- Shadowforge Ambusher
						},
					}),
					i(9522),	-- Energized Stone Circle
					i(10358),	-- Duracin Bracers
					i(10359),	-- Everlast Boots
				},
			}),
			q(723, {	-- Prospect of Faith (1/2)
				["sourceQuest"] = 722,	-- Amulet of Secrets
				["providers"] = {
					{ "n", 2909 },	-- Hammertoe Grez
					{ "i", 4635 },	-- Hammertoe's Amulet
				},
				["coord"] = { 37.94, 10.53, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(724, {	-- Prospect of Faith (2/2)
				["sourceQuest"] = 723,	-- Prospect of Faith (1/2)
				["providers"] = {
					{ "n", 2910 },	-- Prospector Ryedol
					{ "i", 4635 },	-- Hammertoe's Amulet
				},
				["coord"] = { 53.4, 43.2, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
			}),
			q(1360, {	-- Reclaimed Treasures
				["qg"] = 6294,	-- Krom Stoutarm
				["coord"] = { 74.2, 9.4, MAP.IRONFORGE },
				["maps"] = { MAP.LOCH_MODAN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 33,
				["groups"] = {
					objective(1, {	-- 0/1 Krom Stoutarm's Treasure
						["providers"] = {
							{ "i", 8027 },		-- Krom Stoutarm's Treasure
							{ "o", 124389 },	-- Krom Stoutarm's Chest
						},
						["coord"] = { 35.2, 97.4, MAP.LOCH_MODAN },
					}),
				},
			}),
			q(2342, {	-- Reclaimed Treasures
				["qg"] = 5651,	-- Patrick Garrett
				["coord"] = { 62.3, 48.6, MAP.UNDERCITY },
				["maps"] = { MAP.LOCH_MODAN },
				["races"] = HORDE_ONLY,
				["lvl"] = 33,
				["groups"] = {
					objective(1, {	-- 0/1 Garrett Family Treasure
						["providers"] = {
							{ "i",8026 },		-- Garrett Family Treasure
							{ "o", 124388 },	-- Garrett Family Chest
						},
						["coord"] = { 33.9, 93.0, MAP.LOCH_MODAN },
					}),
				},
			}),
			q(1420, {	-- Report to Helgrum
				["sourceQuest"] = 1418,	-- Neeka Bloodscar
				["providers"] = {
					{ "n", 5394 },	-- Neeka Bloodscar
					{ "i", 6167 },	-- Neeka's Report
				},
				["coord"] = { 6.5, 47.2, MAP.BADLANDS },
				["maps"] = { MAP.SWAMP_OF_SORROWS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(733, {	-- Scrounging
				["sourceQuest"] = 718,	-- Mirages
				["qg"] = 2860,	-- Sigrun Ironhew
				["coord"] = { 53.8, 43.3, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/7 Scrap Metal
						["provider"] = { "i", 4630 },	-- Scrap Metal
						["crs"] = {
							2715,	-- Dustbelcher Brute
							2719,	-- Dustbelcher Lord
							2717,	-- Dustbelcher Mauler
							2907,	-- Dustbelcher Mystic
							2701,	-- Dustbelcher Ogre
							2720,	-- Dustbelcher Ogre Mage
							2718,	-- Dustbelcher Shaman
							2906,	-- Dustbelcher Warrior
							2716,	-- Dustbelcher Wyrmhunter
						},
					}),
					i(4652),	-- Salbac Shield
					i(4653),	-- Ironheel Boots
				},
			}),
			q(795, {	-- Seal of the Earth [A]
				["description"] = "This quest is repeatable but can only be completed while |cffe50d12Broken Alliances|r or |cff4a54e8Tremors of the Earth|r is in your quest log.",
				["providers"] = {
					{ "o", 2933 },	-- Seal of the Earth
					{ "i", 4845 },	-- Diamond Runestone
					{ "i", 4844 },	-- Opal Runestone
					{ "i", 4843 },	-- Amethyst Runestone
				},
				["repeatable"] = true,
				["lvl"] = 40,
				["groups"] = {
					i(4615, {	-- Blacklash's Bindings
						["coord"] = { 82.6, 48.8, MAP.BADLANDS },
						["cr"] = 2757,	-- Blacklash
					}),
					i(4645, {	-- Chains of Hematus
						["coord"] = { 81.4, 50.6, MAP.BADLANDS },
						["cr"] = 2759,	-- Hematus
					}),
				},
			}),
			q(779, {	-- Seal of the Earth [A]
				["description"] = "This quest is repeatable but can only be completed while |cffe50d12Broken Alliances|r or |cff4a54e8Tremors of the Earth|r is in your quest log.",
				["providers"] = {
					{ "o", 2933 },	-- Seal of the Earth
					{ "i", 4845 },	-- Diamond Runestone
					{ "i", 4844 },	-- Opal Runestone
					{ "i", 4843 },	-- Amethyst Runestone
				},
				["repeatable"] = true,
				["lvl"] = 40,
				["groups"] = {
					i(4615, {	-- Blacklash's Bindings
						["coord"] = { 82.6, 48.8, MAP.BADLANDS },
						["cr"] = 2757,	-- Blacklash
					}),
					i(4645, {	-- Chains of Hematus
						["coord"] = { 81.4, 50.6, MAP.BADLANDS },
						["cr"] = 2759,	-- Hematus
					}),
				},
			}),
			q(709, {	-- Solution to Doom
				["qg"] = 2785,	-- Theldurin the Lost
				["coord"] = { 51.4, 76.9, MAP.BADLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Tablet of Ryun'eh
						["providers"] = {
							{ "i", 4631 },	-- Tablet of Ryun'eh
							{ "o", 126260 },	-- Ancient Chest
						},
						["coord"] = { 39.3, 18.8, MAP.BADLANDS },
					}),
					i(4746),	-- Doomsayer's Robe
				},
			}),
			q(716, {	-- Stone Is Better than Cloth
				["sourceQuests"] = {
					714,	-- Gyro... What?
					712,	-- Study of the Elements: Rock (3/3)
				},
				["qg"] = 2920,	-- Lucien Tosselwrench
				["coord"] = { 25.8, 44.4, MAP.BADLANDS },
				["cost"] = { { "i", 2868, 1 } },	-- Patterned Bronze Bracers
				["lvl"] = 35,
				["groups"] = {
					i(4979),	-- Enchanted Stonecloth Bracers
				},
			}),
			q(710, {	-- Study of the Elements: Rock (1/3)
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 25.8, 45.0, MAP.BADLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/10 Small Stone Shard
						["provider"] = { "i", 4626 },	-- Small Stone Shard
						["cr"] = 2735,	-- Lesser Rock Elemental
					}),
				},
			}),
			q(711, {	-- Study of the Elements: Rock (2/3)
				["sourceQuest"] = 710,	-- Study of the Elements: Rock (1/3)
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 25.8, 45.0, MAP.BADLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/3 Large Stone Slab
						["provider"] = { "i", 4627 },	-- Large Stone Slab
						["cr"] = 92,	-- Rock Elemental
					}),
				},
			}),
			q(712, {	-- Study of the Elements: Rock (3/3)
				["sourceQuest"] = 711,	-- Study of the Elements: Rock (2/3)
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 25.8, 45.0, MAP.BADLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/5 Bracers of Rock Binding
						["provider"] = { "i", 4628 },	-- Bracers of Rock Binding
						["cr"] = 2736,	-- Greater Rock Elemental
					}),
				},
			}),
			q(692, {	-- The Lost Fragments
				["sourceQuest"] = 687,	-- Theldurin the Lost
				["qg"] = 2785,	-- Theldurin the Lost
				["coord"] = { 51.4, 76.9, MAP.BADLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Torn Scroll Fragment
						["provider"] = { "i", 4518 },	-- Torn Scroll Fragment
						["cr"] = 2791,	-- Enraged Rock Elemental
					}),
					objective(2, {	-- 0/1 Crumpled Scroll Fragment
						["provider"] = { "i", 4519 },	-- Crumpled Scroll Fragment
						["cr"] = 2791,	-- Enraged Rock Elemental
					}),
					objective(3, {	-- 0/1 Singed Scroll Fragment
						["provider"] = { "i", 4520 },	-- Singed Scroll Fragment
						["cr"] = 2791,	-- Enraged Rock Elemental
					}),
				},
			}),
			q(735, {	-- The Star, the Hand and the Heart [A]
				["sourceQuest"] = 727,	-- To Ironforge for Yagyin's Digest
				["providers"] = {
					{ "n", 2786 },	-- Gerrig Bonegrip
					{ "i", 4649 },	-- Bonegrip's Note
				},
				["coord"] = { 50.8, 5.6, MAP.IRONFORGE },
				["maps"] = { MAP.ALTERAC_MOUNTAINS, MAP.DUSTWALLOW_MARSH, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Star of Xil'yeh
						["provider"] = { "i", 4646 },	-- Star of Xil'yeh
						["coord"] = { 39.6, 51.8, MAP.ALTERAC_MOUNTAINS },
						["cr"] = 2417,	-- Grel'borg the Miser
					}),
					objective(2, {	-- 0/1 Hand of Dagun
						["provider"] = { "i", 4641 },	-- Hand of Dagun
						["coord"] = { 60.4, 12.2, MAP.DUSTWALLOW_MARSH },
						["cost"] = { { "i", 4639, 1 } },	-- Enchanted Sea Kelp
						["cr"] = 2937,	-- Dagun the Ravenous
					}),
					objective(3, {	-- 0/1 The Legacy Heart
						["provider"] = { "i", 4644 },	-- The Legacy Heart
						["coord"] = { 47.6, 44.2, MAP.STRANGLETHORN_VALE },
						["cr"] = 1060,	-- Mogh the Undying <Skullsplitter Clan Witchdoctor>
					}),
				},
			}),
			q(736, {	-- The Star, the Hand and the Heart [H]
				["sourceQuest"] = 728,	-- To the Undercity for Yagyin's Digest
				["providers"] = {
					{ "n", 2934 },	-- Keeper Bel'dugur
					{ "i", 4650 },	-- Bel'dugur's Note
				},
				["coord"] = { 53.7, 54.5, MAP.UNDERCITY },
				["maps"] = { MAP.ALTERAC_MOUNTAINS, MAP.DUSTWALLOW_MARSH, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Star of Xil'yeh
						["provider"] = { "i", 4646 },	-- Star of Xil'yeh
						["coord"] = { 39.6, 51.8, MAP.ALTERAC_MOUNTAINS },
						["cr"] = 2417,	-- Grel'borg the Miser
					}),
					objective(2, {	-- 0/1 Hand of Dagun
						["provider"] = { "i", 4641 },	-- Hand of Dagun
						["coord"] = { 60.4, 12.2, MAP.DUSTWALLOW_MARSH },
						["cost"] = { { "i", 4639, 1 } },	-- Enchanted Sea Kelp
						["cr"] = 2937,	-- Dagun the Ravenous
					}),
					objective(3, {	-- 0/1 The Legacy Heart
						["provider"] = { "i", 4644 },	-- The Legacy Heart
						["coord"] = { 47.6, 44.2, MAP.STRANGLETHORN_VALE },
						["cr"] = 1060,	-- Mogh the Undying <Skullsplitter Clan Witchdoctor>
					}),
				},
			}),
			q(734, {	-- This Is Going to Be Hard (1/3)
				["sourceQuests"] = {
					714,	-- Gyro... What?
					712,	-- Study of the Elements: Rock (3/3)
				},
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 25.8, 45.0, MAP.BADLANDS },
				["lvl"] = 35,
			}),
			q(777, {	-- This Is Going to Be Hard (2/3)
				["sourceQuest"] = 734,	-- This Is Going to Be Hard (1/3)
				["providers"] = {
					{ "n", 2920 },	-- Lucien Tosselwrench
					{ "i", 4846 },	-- Cog #5
				},
				["coord"] = { 25.8, 44.4, MAP.BADLANDS },
				["lvl"] = 35,
			}),
			q(778, {	-- This Is Going to Be Hard (3/3)
				["sourceQuest"] = 777,	-- This Is Going to Be Hard (2/3)
				["qg"] = 2921,	-- Lotwil Veriatus
				["coord"] = { 25.8, 45.0, MAP.BADLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Lotwil's Shackles of Elemental Binding
						["provider"] = { "i", 4847 },	-- Lotwil's Shackles of Elemental Binding
						["coord"] = { 26.0, 46.6, MAP.BADLANDS },
						["cr"] = 2919,	-- Fam'retor Guardian
					}),
					i(2820),	-- Nifty Stopwatch
				},
			}),
			q(727, {	-- To Ironforge for Yagyin's Digest
				["sourceQuest"] = 709,	-- Solution to Doom
				["providers"] = {
					{ "n", 2785 },	-- Theldurin the Lost
					{ "i", 4648 },	-- Sigil of the Hammer
				},
				["coord"] = { 51.4, 76.9, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(728, {	-- To the Undercity for Yagyin's Digest
				["sourceQuest"] = 709,	-- Solution to Doom
				["providers"] = {
					{ "n", 2785 },	-- Theldurin the Lost
					{ "i", 4648 },	-- Sigil of the Hammer
				},
				["coord"] = { 51.4, 76.9, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(732, {	-- Tremors of the Earth (1/2)
				["sourceQuest"] = 718,	-- Mirages
				["qg"] = 2888,	-- Garek
				["coord"] = { 61.8, 54.2, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Sign of the Earth
						["provider"] = { "i", 4640 },	-- Sign of the Earth
					}),
				},
			}),
			q(717, {	-- Tremors of the Earth (2/2)
				["sourceQuest"] = 732,	-- Tremors of the Earth (1/2)
				["qg"] = 2888,	-- Garek
				["coord"] = { 61.8, 54.2, MAP.BADLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/1 Blacklash's Bindings
						["provider"] = { "i", 4615 },	-- Blacklash's Bindings
					}),
					objective(2, {	-- 0/1 Chains of Hematus
						["provider"] = { "i", 4645 },	-- Chains of Hematus
					}),
					i(11193),	-- Blazewind Breastplate
					i(11194),	-- Prismscale Hauberk
					i(11195),	-- Warforged Chestplate
					i(11196),	-- Mindburst Medallion
				},
			}),
			q(2202, {	-- Uldaman Reagent Run
				["sourceQuest"] = 2258,	-- Badlands Reagent Run
				["qg"] = 6868,	-- Jarkal Mossmeld
				["coord"] = { 2.6, 46.0, MAP.BADLANDS },
				["maps"] = { MAP.ULDAMAN },
				["races"] = HORDE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/12 Magenta Fungus Cap
						["providers"] = {
							{ "i",   8047 },	-- Magenta Fungus Cap
							{ "o", 126049 },	-- Magenta Cap Clusters
						},
					}),
				},
			}),
			q(9439, {	-- Unclaimed Baggage
				["qg"] = 17097,	-- Advisor Sarophas
				["coord"] = { 5.8, 48.0, MAP.BADLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 36,
				["groups"] = {
					objective(1, {	-- 0/1 Advisor's Pack
						["providers"] = {
							{ "i",  23658 },	-- Advisor's Pack
							{ "o", 181628 },	-- Empty Barrel
						},
						["coord"] = { 41.0, 29.2, MAP.BADLANDS },
					}),
					objective(2, {	-- 0/1 Advisor's Rapier
						["providers"] = {
							{ "i",  23660 },	-- Advisor's Rapier
							{ "o", 181627 },	-- Weapon Rack
						},
						["coord"] = { 41.7, 26.8, MAP.BADLANDS },
					}),
				},
			}),
		}),
		n(RARES, {
			n(14224, {	-- 7:XT <Long Distance Recovery Unit>
				["coords"] = {
					{ 24.0, 52.6, MAP.BADLANDS },
					{ 12.8, 67.0, MAP.BADLANDS },
					{ 19.4, 80.6, MAP.BADLANDS },
					{ 29.0, 68.6, MAP.BADLANDS },
					{ 55.4, 53.2, MAP.BADLANDS },
					{ 58.4, 67.6, MAP.BADLANDS },
					{ 55.4, 83.8, MAP.BADLANDS },
				},
				["races"] = ALLIANCE_ONLY,
			}),
			n(2754, {	-- Anathemus
				["coords"] = {
					{ 48.0, 47.4, MAP.BADLANDS },
					{ 58.0, 57.0, MAP.BADLANDS },
					{ 52.0, 75.4, MAP.BADLANDS },
					{ 37.6, 71.4, MAP.BADLANDS },
					{ 17.0, 82.2, MAP.BADLANDS },
					{ 11.8, 72.6, MAP.BADLANDS },
					{ 25.6, 52.6, MAP.BADLANDS },
					{ 35.4, 58.0, MAP.BADLANDS },
					{ 43.0, 54.2, MAP.BADLANDS },
				},
			}),
			n(2753, {	-- Barnabus
				["coords"] = {
					{ 57.2, 57.0, MAP.BADLANDS },
					{ 54.0, 68.6, MAP.BADLANDS },
					{ 46.2, 74.2, MAP.BADLANDS },
					{ 38.2, 69.4, MAP.BADLANDS },
				},
			}),
			n(2850, {	-- Broken Tooth
				["coords"] = {
					{ 54.0, 16.6, MAP.BADLANDS },
					{ 45.4, 36.8, MAP.BADLANDS },
					{ 62.0, 32.8, MAP.BADLANDS },
				},
			}),
			n(2752, {	-- Rumbler
				["coords"] = {
					{ 3.4, 78.8, MAP.BADLANDS },
					{ 15.6, 89.0, MAP.BADLANDS },
				},
			}),
			n(2744, {	-- Shadowforge Commander
				["coord"] = { 41.2, 26.2, MAP.BADLANDS },
			}),
			n(2749, {	-- Siege Golem
				["coords"] = {
					{ 5.6, 59.8, MAP.BADLANDS },
					{ 13.4, 65.4, MAP.BADLANDS },
					{ 19.0, 60.0, MAP.BADLANDS },
					{ 30.0, 61.0, MAP.BADLANDS },
					{ 35.6, 43.6, MAP.BADLANDS },
					{ 43.0, 39.0, MAP.BADLANDS },
				},
			}),
			n(2751, {	-- War Golem
				["coords"] = {
					{ 47.8, 13.2, MAP.BADLANDS },
					{ 52.0, 28.2, MAP.BADLANDS },
					{ 45.6, 33.2, MAP.BADLANDS },
				},
			}),
			n(2931, {	-- Zaricotl
				["coords"] = {
					{ 3.6, 44.2, MAP.BADLANDS },
					{ 34.6, 53.8, MAP.BADLANDS },
					{ 37.2, 68.0, MAP.BADLANDS },
					{ 56.0, 57.4, MAP.BADLANDS },
					{ 55.8, 64.6, MAP.BADLANDS },
				},
			}),
		}),
		n(TREASURES, {
			o(2842, {	-- Pillar of Diamond
				["cost"] = {{ "i", 4640, 1 }},	-- Sign of the Earth
				["coord"] = { 83.5, 32.9, MAP.BADLANDS },
				["groups"] = {
					i(4845),	-- Diamond Runestone
				},
			}),
			o(2848, {	-- Pillar of Opal
				["cost"] = {{ "i", 4640, 1 }},	-- Sign of the Earth
				["coord"] = { 72.38, 66.94, MAP.BADLANDS },
				["groups"] = {
					i(4844),	-- Opal Runestone
				},
			}),
			o(2858, {	-- Pillar of Amethyst
				["cost"] = {{ "i", 4640, 1 }},	-- Sign of the Earth
				["coord"] = { 81.27, 64.29, MAP.BADLANDS },
				["groups"] = {
					i(4843),	-- Amethyst Runestone
				},
			}),
		}),
		n(VENDORS, {
			n(9179, {	-- Jazzrik <Blacksmithing Supplies>
				["coord"] = { 42.4, 52.5, MAP.BADLANDS },
				["groups"] = {
					i(10858),	-- Plans: Solid Iron Maul (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(2621, {	-- Cowl of Necromancy
				["coords"] = {
					{ 53.6, 31.8, MAP.BADLANDS },
					{ 52.4, 33.6, MAP.BADLANDS },
				},
				["cr"] = 2740,	-- Shadowforge Darkweaver
			}),
			i(10822, {	-- Dark Whelpling (PET!)
				["cr"] = 2725,	-- Scalding Whelp
			}),
			i(1521, {	-- Lumbering Ogre Axe
				["coords"] = {
					{ 10.0, 92.6, MAP.BADLANDS },
					{ 7.6, 89.4, MAP.BADLANDS },
				},
				["cr"] = 2719,	-- Dustbelcher Lord
			}),
			i(1993, {	-- Ogremind Ring
				["cr"] = 2907,	-- Dustbelcher Mystic
			}),
			i(4616, {	-- Ryedol's Lucky Pick
				["collectible"] = false,	-- This is a quest item where you have to be on the quest to get it, keep it, and not turn it in for several years to get the transmog for.
				["crs"] = {
					2740,	-- Shadowforge Darkweaver
					2739,	-- Shadowforge Tunneler
					2743,	-- Shadowforge Warrior
				},
			}),
			i(4640, {	-- Sign of the Earth
				["cr"] = 2944,	-- Boss Tho'grun
			}),
			i(2624, {	-- Thinking Cap
				["coords"] = {
					{ 9.6, 78.6, MAP.BADLANDS },
					{ 9.4, 85.4, MAP.BADLANDS },
				},
				["cr"] = 2718,	-- Dustbelcher Shaman
			}),
		}),
	},
});
