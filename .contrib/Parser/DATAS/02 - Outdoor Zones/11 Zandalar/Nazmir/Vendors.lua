---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, timelineSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(VENDORS, {
			n(126833, {	-- Blind Wunja <Medicine Woman>
				["coord"] = { 35.4, 55.2, NAZMIR },
				["groups"] = {
					i(163506, {	-- Accursed Hexxer (PET!)
						["sourceQuests"] = { 50976 },	-- An Ancient Curse
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 } },
					}),
					i(163500, {	-- Bloodfeaster Larva (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
					}),
					i(163510, {	-- Crimson Frog (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
					}),
					i(163563),	-- Primitive Watermelon
				},
			}),
			n(148810, {	-- Gottum <Da Frogman>
				["coord"] = { 71.2, 55.5, NAZMIR },
				["groups"] = {
					i(166442, {	-- Blue Marsh Hopper (MOUNT!)
						["cost"] = 3333330000,	-- 333,333g
					}),
					i(163183, {	-- Green Marsh Hopper (MOUNT!)
						["cost"] = 3333330000,	-- 333,333g
					}),
					i(166443, {	-- Yellow Marsh Hopper (MOUNT!)
						["cost"] = 3333330000,	-- 333,333g
					}),
				},
			}),
			n(135459, {	-- Provisioner Lija <Talanji's Expedition Emissary>
				["races"] = HORDE_ONLY,
				["coord"] = { 39.1, 79.4, NAZMIR },
				["groups"] = bubbleDownClassicRep(FACTION_TALANJIS_EXPEDITION, {
					{		-- Neutral
						i(245488, {	-- Zandalari Rickshaw (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", 1560, 500 } },	-- 500x War Resources
						}),
					}, {	-- Friendly
					}, {	-- Honored
						i(160531, {	-- Drape of the Blood Purge
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162732, {	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162754, {	-- Technique: Contract: Talanji's Expedition [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(245413, {	-- Zandalari Sconce (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", 1560, 150 } },	-- 150x War Resources
						}),
						i(257394, {	-- Zandalari War Torch (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", 1560, 150 } },	-- 150x War Resources
						}),
					}, {	-- Revered
						i(165242, {	-- Bracers of the Swamp Hunter
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162762, {	-- Design: Tidal Amethyst Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162718, {	-- Formula: Enchant Ring - Pact of Mastery [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162724, {	-- Formula: Enchant Weapon - Masterful Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162723, {	-- Formula: Enchant Weapon - Siphoning [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161538, {	-- Gloomplate Gauntlets
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 8/12/18)
						}),
						i(165248, {	-- Gloomplate Girdle
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161528, {	-- Grips of the Swamp Hunter
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(162768, {	-- Pattern: Hardened Tempest Knuckles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162767, {	-- Pattern: Mistscale Knuckles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163315, {	-- Recipe: Battle Potion of Intellect [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162703, {	-- Recipe: Coastal Mana Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162697, {	-- Recipe: Flask of the Vast Horizon [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162693, {	-- Recipe: Potion of Bursting Blood [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162733, {	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(165234, {	-- Swamp Medic's Gloves
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161493, {	-- Swamp Medic's Leggings
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(163501, {	-- Tragg the Curious (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 75 } },
						}),
						i(245495, {	-- Dazar'alor Market Tent (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", 1560, 400 } },	-- 400x War Resources
						}),
						i(245500, {	-- Red Dazar'alor Tent (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", 1560, 400 } },	-- 400x War Resources
						}),
					}, {	-- Exalted
						i(165240, {	-- Hir'eek Hide Cuffs
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161520, {	-- Hir'eek Hide Leggings
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165244, {	-- Torga Scale Boots
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161536, {	-- Torga Scale Girdle
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(161666, {	-- Reins of the Captured Swampstalker (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
						}),
						i(161774, {	-- Reins of the Expedition Bloodswarmer (MOUNT!)
							["cost"] = 125000000,	-- 12,500g
						}),
						i(161506, {	-- Swampstalker Footpads [Was in beta, not there on 9/16/18]
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165239, {	-- Swampstalker Leggings
							["cost"] = 14000000,	-- 1,400g
						}),
						i(160547, {	-- Talanji's Expedition Tabard
							["cost"] = 6250000,	-- 625g
						}),
						i(161492, {	-- Zo'bal Spirit Gloves
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165237, {	-- Zo'bal Spirit Sash
							["cost"] = 19000000,	-- 1,900g
						}),
						i(165247, {	-- Zul'jan Camp Gauntlets
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161551, {	-- Zul'jan Camp Stalkers
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
					},
				}),
			}),
			n(132011, {	-- Shoak
				["sourceQuests"] = {
					47919,	-- Just Say No to Cannibalism
					47998,	-- Killing Cannibals
					47925,	-- Shoak's on the Menu
				},
				["coord"] = { 66.9, 42.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(163506, {	-- Accursed Hexxer (PET!)
						["sourceQuests"] = { 50976 },	-- An Ancient Curse
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 } },
					}),
					i(163500, {	-- Bloodfeaster Larva (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
					}),
					i(163510, {	-- Crimson Frog (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
					}),
					i(163505, {	-- Swamp Toad (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
					}),
				},
			}),
		}),
	}),
})));
