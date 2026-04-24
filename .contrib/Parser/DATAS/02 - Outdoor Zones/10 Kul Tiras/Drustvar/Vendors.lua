---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(VENDORS, {
			n(142197, {	-- Nigel Rifthold <Adventurer's Society>
				["description"] = "In order to unlock this vendor you will need to buy 10 \"Tirasreli Gourmet Chocolate\", then find the tree house at his coords and click on the chest twice.",
				["coord"] = { 52.2, 31.6, DRUSTVAR },
				["groups"] = {
					i(163493, {	-- Frenzied Cottontail (PET!)
						["description"] = "Defeat Cottontail Matron (located at 52.2, 46.8) for this item to appear on the vendor.",
						["cost"] = { { "i", POLISHED_PET_CHARM, 300 } },
					}),
					i(163510, {	-- Crimson Frog (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
					}),
					i(163492, {	-- Drustvar Piglet (PET!)
						["sourceQuests"] = { 47950 },	-- Cured Ham
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 } },
					}),
					i(160708, {	-- Smoochums (PET!)
						["sourceQuests"] = { 44785 },	-- Tea Party
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
					}),
					i(163494, {	-- Bilefang Skitterer (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
					}),
				},
			}),
			n(135815, {	-- Quartermaster Alcorn <Order of Embers Emissary>
				["coord"] = { 37.8, 49.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = bubbleDownClassicRep(FACTION_ORDER_OF_EMBERS, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(163205, {	-- Ghostly Pet Biscuit
							["description"] = "This gives your hunter's pet a ghostly appearance for 30 minutes.",
							["filterID"] = CONSUMABLES,
						}),
						i(162329, {	-- Schematic: AZ3-R1-T3 Orthogonal Optics [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162361, {	-- Technique: Contract: Order of Embers [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(160535, {	-- Witch Hunter's Cape
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(162381, {	-- Design: Royal Quartz Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161593, {	-- Footpads of the Deft Exorcist
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162305, {	-- Formula: Enchant Ring - Pact of Versatility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162318, {	-- Formula: Enchant Weapon - Gale-Force Striking [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162320, {	-- Formula: Enchant Weapon - Versatile Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161597, {	-- Gauntlets of Renewed Resolution
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161595, {	-- Grips of the Oathsworn
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161592, {	-- Leggings of Devout Opposition
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162421, {	-- Pattern: Deep Sea Bag [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162427, {	-- Pattern: Embroidered Deep Sea Cloak [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162412, {	-- Pattern: Recurve Bow of the Strands [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163491, {	-- Pristine Falcon Feather (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
						}),
						i(163314, {	-- Recipe: Battle Potion of Agility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162256, {	-- Recipe: Coastal Rejuvenation Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162135, {	-- Recipe: Flask of the Undertow [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162131, {	-- Recipe: Potion of Rising Death [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162330, {	-- Schematic: AZ3-R1-T3 Orthogonal Optics [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162322, {	-- Schematic: Frost-Laced Ammunition [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162624, {	-- Tome of Hex: Wicker Mongrel (CI!)
							["cost"] = 18000000,	-- 1,800g
						}),
					}, {	-- Exalted
						i(161596, {	-- Coven Buster's Waistguard
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161591, {	-- Eternal Flamekeeper's Handwraps
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161598, {	-- Hexxed-Land Treads
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160541, {	-- Order of Embers Tabard
							["cost"] = 6250000,	-- 625g
						}),
						i(161908, {	-- Reins of the Dusky Waycrest Gryphon (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
							["races"] = ALLIANCE_ONLY,
						}),
						i(161910, {	-- Reins of the Smoky Charger (MOUNT!)
							["cost"] = 125000000,	-- 12,500g
							["races"] = ALLIANCE_ONLY,
						}),
						i(161594, {	-- Woven Thornspeaker's Leggings
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
			n(138021, {	-- Sally Boltwrench <Repairs>
				["coord"] = { 37.6, 25.8, DRUSTVAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(23596, {	-- Plans: Adamantite Breastplate (RECIPE!)
						["isLimited"] = true,
					}),
					i(23591, {	-- Plans: Adamantite Cleaver (RECIPE!)
						["isLimited"] = true,
					}),
					i(23592, {	-- Plans: Adamantite Dagger (RECIPE!)
						["isLimited"] = true,
					}),
					i(23590, {	-- Plans: Adamantite Maul (RECIPE!)
						["isLimited"] = true,
					}),
					i(23594, {	-- Plans: Adamantite Plate Bracers (RECIPE!)
						["isLimited"] = true,
					}),
					i(23595, {	-- Plans: Adamantite Plate Gloves (RECIPE!)
						["isLimited"] = true,
					}),
					i(23593, {	-- Plans: Adamantite Rapier (RECIPE!)
						["isLimited"] = true,
					}),
					i(23638, {	-- Plans: Lesser Ward of Shielding (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
		}),
	}),
})));
