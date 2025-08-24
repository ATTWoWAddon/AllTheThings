---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(VENDORS, {
			n(135804, {	-- Hoarder Jena <Voldunai Emissary>
				["coord"] = { 56.7, 49.7, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = bubbleDownClassicRep(FACTION_VOLDUNAI, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(163211, {	-- Akunda's Firesticks (TOY!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(159753, {	-- Desert Flute (TOY!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(160529, {	-- Dune Shroud
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162734, {	-- Schematic: AZ3-R1-T3 Orthogonal Optics [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162755, {	-- Technique: Contract: Voldunai [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161489, {	-- Alpaca Wool Gloves
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165236, {	-- Alpaca Wool Leggings
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161527, {	-- Bracers of Zem'lan
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(162763, {	-- Design: Royal Quartz Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162719, {	-- Formula: Enchant Ring - Pact of Versatility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162725, {	-- Formula: Enchant Weapon - Gale-Force Striking [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162726, {	-- Formula: Enchant Weapon - Versatile Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(165246, {	-- Gauntlets of Scavenged Plates
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163213, {	-- Ghostly Explorer's Skull
							["filterID"] = CONSUMABLES,	-- They may change it to a toy?
						}),
						i(161545, {	-- Girdle of Scavenged Plates
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165243, {	-- Grips of Zem'lan
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161999, {	-- Pack of Many Pockets
							["cost"] = 30000000,	-- 3,000g
						}),
						i(162769, {	-- Pattern: Deep Sea Bag [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162772, {	-- Pattern: Embroidered Deep Sea Cloak [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162766, {	-- Pattern: Recurve Bow of the Strands [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163313, {	-- Recipe: Battle Potion of Agility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162705, {	-- Recipe: Coastal Rejuvenation Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162698, {	-- Recipe: Flask of the Undertow [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162694, {	-- Recipe: Potion of Rising Death [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162735, {	-- Schematic: AZ3-R1-T3 Orthogonal Optics [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162727, {	-- Schematic: Frost-Laced Ammunition [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(165238,{	-- Silent Scavenger Footpads
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161507, {	-- Silent Scavenger Leggings
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
					}, {	-- Exalted
						i(161531, {	-- Akunda's Grounding Boots
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165245, {	-- Akunda's Grounding Girdle
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161542, {	-- Gauntlets of the Scorched Sands
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165235, {	-- Gloves of the Scaled Devoted
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161511, {	-- Kimbul's Cuffs of Redemption
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165241, {	-- Kimbul's Leggings of Redemption
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161773, {	-- Reins of the Alabaster Hyena (MOUNT!)
							["cost"] = 125000000,	-- 12,500g
						}),
						i(161667, {	-- Reins of the Voldunai Dunescraper (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
						}),
						i(161502, {	-- Sash of the Scaled Devoted
							["timeline"] = { CREATED_8_0_1 },	-- (Was in beta, not there on 9/16/18)
						}),
						i(165249, {	-- Scorched Sandstalkers
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160548, {	-- Tabard of the Voldunai
							["cost"] = 6250000,	-- 625g
						}),
						i(165021, {	-- Words of Akunda (TOY!)
							["cost"] = 18000000,	-- 1,800g
						}),
					},
				}),
			}),
			n(135400, {	-- Jenoh
				["sourceQuests"] = { 50818 },	-- A Lost Flute
				["coord"] = { 29.5, 59.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(163511, {	-- Barnacled Hermit Crab (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(159753, {	-- Desert Flute (TOY!)
						["cost"] = 11000000,	-- 1,100g
					}),
					i(163509, {	-- Freshwater Pincher (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(163503, {	-- Ranishu Runt (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(163512, {	-- Sandstinger Wasp (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163514, {	-- Carnivorous Lasher (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 150 }, },
					}),
				},
			}),
			n(129354, {	-- Rhan'ka
				["coord"] = { 43.5, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(164983, {	-- Rhan'ka's Escape Plan (TOY!)
						["sourceQuests"] = { 48322 },	-- A Goldtusk Greeting
					}),
				},
			}),
			n(133833, {	-- Rikati
				["coord"] = { 40.4, 55.4, VOLDUN },
				["groups"] = {
					i(163567),	-- Snake on a Stick
				},
			}),
			n(138919, {	-- Tukuku <Ancient Scrolls>
				["coord"] = { 62.0, 20.8, VOLDUN },
				["groups"] = {
					-- Common Vendor Item added here so theres at least one source for cost item same zone as the rare
					i(161128),	-- Seaside Leafy Greens Mix
				},
			}),
		}),
	}),
})));
