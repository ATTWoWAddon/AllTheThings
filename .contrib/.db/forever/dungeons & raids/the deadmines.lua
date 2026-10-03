-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, {
	inst(63, {	-- Deadmines
		["lore"] = "Once the greatest gold production center in the human lands, the Dead Mines were abandoned when the Horde razed Stormwind city during the First War. Now the Defias Brotherhood has taken up residence and turned the dark tunnels into their private sanctum. It is rumored that the thieves have conscripted the clever goblins to help them build something terrible at the bottom of the mines - but what that may be is still uncertain. Rumor has it that the way into the Deadmines lies through the quiet, unassuming village of Moonbrook.",
		["zone-text-areaID"] = 1581,	-- "The Deadmines" now points to the Deadmines.
		["mapID"] = MAP.DEADMINES,
		["coord"] = { 42.2, 82.6, MAP.WESTFALL },
		["icon"] = 136332,
		["lvl"] = 10,
		["groups"] = {
			n(QUESTS, {
				q(168, {	-- Collecting Memories
					["qg"] = 656,	-- Wilder Thistlenettle
					["coord"] = { 70.2, 40.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/4 Miners' Union Card
							["provider"] = { "i", 1894 },	-- Miners' Union Card
						}),
						i(2036),	-- Dusty Mining Gloves
						i(2037),	-- Tunneler's Boots
						i(270007, {	-- Worn Miner's Waistcord
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(92753, {	-- Destruction in Deadmines (1/2)
					sourceQuest = 92752,	-- Explosive Consultation
					qg = 253092,	-- Alba Fairmoon
					qi = 254553,	-- Extra-Destructive Explosives (PQI!)
					coord = { 52.5, 53.0, MAP.WESTFALL },
					timeline = { TIMELINE.ADDED_1_60_1 },
					races = ALLIANCE_ONLY,
					lvl = 9,
				}),
				q(92819, {	-- Destruction in Deadmines (2/2)
					sourceQuest = 92753,	-- Destruction in Deadmines (1/2)
					qg = 253279,	-- Alba Fairmoon
					coord = { 52.5, 53.0, MAP.WESTFALL },
					timeline = { TIMELINE.ADDED_1_60_1 },
					races = ALLIANCE_ONLY,
					lvl = 9,
				}),
				q(167, {	-- Oh Brother. . .
					["qg"] = 656,	-- Wilder Thistlenettle
					["coord"] = { 70.2, 40.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Thistlenettle's Badge
							["provider"] = { "i", 1875 },	-- Thistlenettle's Badge
						}),
						i(1893),	-- Miner's Revenge
						i(270012, {	-- Miner's Workgloves
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
						i(270013, {	-- Miner's Workboots
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(214, {	-- Red Silk Bandanas
					["sourceQuests"] = {
						153,	-- Red Leather Bandanas
						155,	-- The Defias Brotherhood
					},
					["qg"] = 820,	-- Scout Riell <The People's Militia>
					["coord"] = { 56.7, 47.4, MAP.WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Red Silk Bandana
							["provider"] = { "i", 915 },	-- Red Silk Bandana
							["description"] = "Can also drop from any Defias mob in the Deadmines.",
							["crs"] = {
								619,	-- Defias Conjurer
								824,	-- Defias Digger
								594,	-- Defias Henchman
							},
						}),
						i(6094),	-- Piercing Axe
						i(2089),	-- Scrimshaw Dagger
						i(2074),	-- Solid Shortblade
						i(270005, {	-- Monastic Hammer
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
				q(166, {	-- The Defias Brotherhood (7/7)
					["sourceQuest"] = 155,	-- The Defias Brotherhood (6/7)
					["qg"] = 234,	-- Gryan Stoutmantle <The People's Militia>
					["coord"] = { 56.3, 47.5, MAP.WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Head of VanCleef
							["provider"] = { "i", 3637 },	-- Head of VanCleef
						}),
						i(6087),	-- Chausses of Westfall
						i(2042),	-- Staff of Westfall
						i(2041),	-- Tunic of Westfall
					},
				}),
				q(373, {	-- The Unsent Letter
					["description"] = "Drops from VanCleef. Deliver it to Baros Alexston in Stormwind City.",
					["qs"] = 2874,	-- An Unsent Letter (QS!)
					["cr"] = 1646,	-- Baros Alexston <City Architect>
					["coord"] = { 57.7, 47.9, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(2040, {	-- Underground Assault
					["sourceQuest"] = 2041,	-- Speak with Shoni
					["qg"] = 6579,	-- Shoni the Shilent
					["coord"] = { 62.8, 34.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Gnoam Sprecklesprocket
							["provider"] = { "i", 7365 },	-- Gnoam Sprecklesprocket
						}),
						i(7607),	-- Sable Wand
						i(7606),	-- Polar Gauntlets
						i(270015, {	-- Bravo's Armbands
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
						i(270016, {	-- Dreamer's Leggings
							timeline = { TIMELINE.ADDED_1_60_1 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(596, {	-- Brainwashed Noble
					["description"] = "This is a Rare Creature and, as such, is not always present.\n\nLocated in the cavern before the instance.",
					["coord"] = { 44.0, 78.3, MAP.WESTFALL },
					["groups"] = {
						i(3902),	-- Staff of Nobles
						i(5967),	-- Girdle of Nobility
					},
				}),
				n(626, {	-- Foreman Thistlenettle
					["description"] = "This is a Rare Creature and, as such, is not always present.\n\nLocated in the cavern before the instance.",
					["coord"] = { 42.2, 82.6, MAP.WESTFALL },
					["groups"] = {
						i(1875),	-- Thistlenettle's Badge
						i(2167),	-- Foreman's Gloves
						i(2166),	-- Foreman's Leggings
						i(2168),	-- Foreman's Boots [Classic] / Corpse Rompers [CATA+]
					},
				}),
				n(599, {	-- Marisa du'Paige
					["description"] = "This is a Rare Creature and, as such, is not always present.\n\nLocated in the cavern before the instance.",
					["coord"] = { 42.2, 79.9, MAP.WESTFALL },
					["groups"] = {
						i(3019),	-- Noble's Robe
						i(4660),	-- Walking Boots
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(10402, {	-- Blackened Defias Boots
					["cr"] = 4416,	-- Defias Strip Miner
				}),
				i(10401, {	-- Blackened Defias Gloves
					["crs"] = {
						634,	-- Defias Overseer
						4417,	-- Defias Taskmaster
					},
				}),
				i(10400, {	-- Blackened Defias Leggings
					["crs"] = {
						634,	-- Defias Overseer
						4417,	-- Defias Taskmaster
					},
				}),
				i(1951, {	-- Blackwater Cutlass
					["crs"] = {
						657,	-- Defias Pirate
						1732,	-- Defias Squallshaper
					},
				}),
				i(1959, {	-- Cold Iron Pick
					["cr"] = 623,	-- Skeletal Miner
				}),
				i(1927, {	-- Deadmines Cleaver
					["cr"] = 594,	-- Defias Henchman
				}),
				i(1928, {	-- Defias Mage Staff
					["cr"] = 1726,	-- Defias Magician
				}),
				i(1925, {	-- Defias Rapier
					["cr"] = 1725,	-- Defias Watchman
				}),
				i(1943, {	-- Goblin Mail Leggings
					["cr"] = 3947,	-- Goblin Shipbuilder
				}),
				i(1936, {	-- Goblin Screwdriver
					["cr"] = 622,	-- Goblin Engineer
				}),
				i(1944, {	-- Metalworking Gloves
					["cr"] = 1731,	-- Goblin Craftsman
				}),
				i(1894, {	-- Miners' Union Card
					["crs"] = {
						623,	-- Skeletal Miner
						625,	-- Undead Dynamiter
						624,	-- Undead Excavator
					},
				}),
				i(8492, {	-- Green Wing Macaw (PET!)
					["cr"] = 657,	-- Defias Pirate
				}),
				i(5787, {	-- Pattern: Murloc Scale Breastplate (RECIPE!)
					["cr"] = 657,	-- Defias Pirate
				}),
				i(1958, {	-- Petrified Shinbone
					["cr"] = 625,	-- Undead Dynamiter
				}),
				i(7997, {	-- Red Defias Mask
					["description"] = "Can drop in Westfall and The Deadmines.",
				}),
				i(915),	-- Red Silk Bandana
				i(1929, {	-- Silk-threaded Trousers
					["crs"] = {
						1729,	-- Defias Evoker
						4418,	-- Defias Wizard
					},
				}),
				i(4676, {	-- Skeletal Gauntlets
					["cr"] = 624,	-- Undead Excavator
				}),
				i(1930, {	-- Stonemason Cloak
					["cr"] = 598,	-- Defias Miner
				}),
				i(1934, {	-- Stonemason Trousers [Classic] / Hogger's Trousers [CATA+]
					["cr"] = 636,	-- Defias Blackguard
				}),
				i(1926, {	-- Weighted Sap
					["cr"] = 824,	-- Defias Digger
				}),
				i(1945, {	-- Woodworking Gloves
					["cr"] = 641,	-- Goblin Woodcarver
				}),
			}),
			n(3586, {	-- Miner Johnson
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					i(5443),	-- Gold-plated Buckler
					i(5444),	-- Miner's Cape
				},
			}),
			n(644, {	-- Rhahk'Zor <The Foreman>
				i(5187),	-- Rhahk'Zor's Hammer [Classic] / Foe Reaper [TBC+]
				i( 872),	-- Rockslicer
				i(273289, {	-- Ogre Loincloth
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(642, {	-- Sneed's Shredder <Lumbermaster>
				i(7365),	-- Gnoam Sprecklesprocket
				i(2169),	-- Buzzer Blade
				i(1937),	-- Buzz Saw
				i(285292, {	-- Dull Sawblade
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(643, {	-- Sneed
				i(5194),	-- Taskmaster Axe
				i(5195),	-- Gold-flecked Gloves
				i(273293, {	-- Bandsaw Wristbands
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273092, {	-- Blueprint: Repair Bot
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(1763, {	-- Gilnid <The Smelter>
				i(5199),	-- Smelting Pants
				i(1156),	-- Lavishly Jeweled Ring
				i(273297, {	-- Goblin Hammer
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(646, {	-- Mr. Smite <The Ship's First Mate>
				i(7230),	-- Smite's Mighty Hammer
				i(5196),	-- Smite's Reaver
				i(5192),	-- Thief's Blade
				i(284715, {	-- First Mate Band
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(647, {	-- Captain Greenskin
				i(5201),	-- Emberstone Staff
				i(5200),	-- Impaling Harpoon
				i(10403),	-- Blackened Defias Belt
			}),
			n(639, {	-- Edwin VanCleef <Defias Kingpin>
				i(2874),	-- An Unsent Letter
				i(3637),	-- Head of VanCleef
				i(5191),	-- Cruel Barb
				i(5193),	-- Cape of the Brotherhood
				i(5202),	-- Corsair's Overshirt
				i(10399),	-- Blackened Defias Armor
			}),
			n(645, {	-- Cookie <The Ship's Cook>
				i(8490),	-- Siamese Cat (PET!)
				i(5198),	-- Cookie's Stirring Rod
				i(5197),	-- Cookie's Tenderizer
				i(273298, {	-- Lookie's Spyglass
					timeline = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
		},
	}),
});