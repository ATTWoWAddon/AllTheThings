---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(VENDORS, {
			n(135793, {	-- Collector Kojo <Tortollan Seekers Emissary>
				["coord"] = { 40.4, 36.4, STORMSONG_VALLEY },
				["g"] = bubbleDownClassicRep(FACTION_TORTOLLAN_SEEKERS, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(160538, {	-- Cape of the Scroll Keepers*
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162288, {	-- Recipe: Bountiful Captain's Feast [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(163215, {	-- Scroll of Combustible Critters
							["cost"] = 480000,	-- 48g
						}),
						i(162373, {	-- Technique: Contract: Champions of Azeroth [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162371, {	-- Technique: Contract: Tortollan Seekers [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161514, {	-- Antiquity Handler's Gloves
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163513, {	-- Cou'pa (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
						}),
						i(162298, {	-- Formula: Enchant Ring - Seal of Critical Strike [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162301, {	-- Formula: Enchant Ring - Seal of Versatility [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161529, {	-- Girdle of the Scroll-Sages
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163026, {	-- Pattern: Embroidered Deep Sea Bag [Rank 2] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162289, {	-- Recipe: Bountiful Captain's Feast [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162136, {	-- Recipe: Endless Tincture of Renewed Combat [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162287, {	-- Recipe: Galley Banquet [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162292, {	-- Recipe: Grilled Catfish [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162293, {	-- Recipe: Seasoned Loins [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162137, {	-- Recipe: Siren's Alchemist Stone [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161494, {	-- Sea-Treated Footwraps
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162358, {	-- Technique: Codex of the Quiet Mind [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162377, {	-- Technique: Darkmoon Card of War [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162023, {	-- Technique: Glyph of the Dolphin (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162352, {	-- Technique: Inscribed Vessel of Mysticism [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162376, {	-- Technique: Tome of the Quiet Mind [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161544, {	-- Vambraces of a Thousand Year Toil
							["cost"] = 14000000,	-- 1,400g
						}),
					}, {	-- Exalted
						i(161534, {	-- Legguards of Ai'twen's Resurgence
							["cost"] = 19000000,	-- 1,900g
						}),
						i(166806, {	-- Recipe: Boralus Blood Sausage [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166263, {	-- Recipe: Sanguinated Feast [Rank 2] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166368, {	-- Recipe: Seasoned Steak and Potatoes [Rank 3] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(166367, {	-- Recipe: Wild Berry Bread [Rank 3] (RECIPE!)
							["cost"] = 19000000,	-- 1,900g
							["timeline"] = { ADDED_8_1_0 },
						}),
						i(161549, {	-- Shellbuckle Girdle
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161519, {	-- Supple Moccasins of Pilgrimage
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160543, {	-- Tabard of the Tortollan Seekers
							["cost"] = 6250000,	-- 625g
						}),
						i(161503, {	-- Wristwraps of Scrollbinding
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
			n(130786, {	-- Hobbs
				["coord"] = { 58.3, 70.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(162000, {	-- Pig Nose
						["cost"] = { { "i", 155838, 25 }, },	-- 25x Briarback Quill
					}),
					i(155820, {	-- Quillbomb
						["cost"] = { { "i", 155838, 10 }, },	-- 10x Briarback Quill
					}),
					i(155822, {	-- Sedative Quill
						["cost"] = { { "i", 155838, 10 }, },	-- 10x Briarback Quill
					}),
					i(155819, {	-- Thrice-Pickled Threshadon Omelet
						["cost"] = { { "i", 155838, 10 }, },	-- 10x Briarback Quill
					}),
					i(155821, {	-- Vial of Viscous Goo
						["cost"] = { { "i", 155838, 10 }, },	-- 10x Briarback Quill
					}),
				},
			}),
			n(136674, {	-- Madeline Netley <Stable Master>
				["coord"] = { 31.6, 67.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(163489, {	-- Abyssal Eel (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 75 }, },
					}),
					i(163511, {	-- Barnacled Hermit Crab (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163508, {	-- Blue Flitter (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 100 }, },
					}),
					i(163509, {	-- Freshwater Pincher (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(163705, {	-- Imaginary Gun (TOY!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
					}),
					i(165840, {	-- Shattered Pet Portal (CI!)
						-- #if BEFORE 9.0.2
						["cost"] = { { "i", POLISHED_PET_CHARM, 1000 }, },
						-- #endif
						["timeline"] = { REMOVED_9_1_0 },
					}),
					i(139003, {	-- Pocket Pet Portal (CI!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 1000 }, },
						["timeline"] = { REMOVED_9_1_0 },
					}),
					i(163512, {	-- Sandstinger Wasp (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 50 }, },
					}),
					i(163560, {	-- Saurolisk Hatchling (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 200 }, },
					}),
					i(163704, {	-- Tiny Mechanical Mouse (TOY!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 500 }, },
					}),
					i(163514, {	-- Carnivorous Lasher (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 150 }, },
					}),
				},
			}),
			n(138096, {	-- Sanya Wraithschilde <Innkeeper>
				["races"] = HORDE_ONLY,
				["coord"] = { 50.8, 33.6, STORMSONG_VALLEY },
				["g"] = {
					i(162000, {	-- Pig Nose
						["cost"] = { { "i", 155838, 25 }, },	-- 25x Briarback Quill
					}),
				},
			}),
			n(135800, {	-- Sister Lilyana <Storm's Wake Emissary>
				["coord"] = { 59.2, 69.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["g"] = bubbleDownClassicRep(FACTION_STORMS_WAKE, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(160533, {	-- Cape of the Divine Depths
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162325, {	-- Schematic: AZ3-R1-T3 Gearspun Goggles [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
						i(162363, {	-- Technique: Contract: Storm's Wake [Rank 2] (RECIPE!)
							["cost"] = 11000000,	-- 1,100g
						}),
					}, {	-- Revered
						i(161579, {	-- Bindings of the Seacallers
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163463, {	-- Dead Ringer (TOY!)
							["cost"] = 18000000,	-- 1,800g
						}),
						i(162382, {	-- Design: Laribole Staff of Alacrity [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162379, {	-- Design: Owlseye Loop [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162385, {	-- Design: Scarlet Diamond Staff of Intuition [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162303, {	-- Formula: Enchant Ring - Pact of Haste [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162313, {	-- Formula: Enchant Weapon - Deadly Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162312, {	-- Formula: Enchant Weapon - Stalwart Navigation [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161575, {	-- Handwraps of Deep Faith
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161582, {	-- Keelbreak Girdle
							["cost"] = 14000000,	-- 1,400g
						}),
						i(163490, {	-- Pair of Bee Wings (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 250 }, },
						}),
						i(163318, {	-- Recipe: Battle Potion of Stamina [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162255, {	-- Recipe: Coastal Healing Potion [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162133, {	-- Recipe: Flask of Endless Fathoms	[Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162129, {	-- Recipe: Potion of Replenishment [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162326, {	-- Schematic: AZ3-R1-T3 Gearspun Goggles [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162342, {	-- Schematic: Deployable Attire Rearranger [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162341, {	-- Schematic: Interdimensional Companion Repository [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162337, {	-- Schematic: Organic Discombobulation Grenade [Rank 3] (RECIPE!)
							["cost"] = 14000000,	-- 1,400g
						}),
						i(161577, {	-- Seabinder's Leggings
							["cost"] = 14000000,	-- 1,400g
						}),
						i(162626, {	-- Tome of Polymorph: Bumblebee (CI!)
							["cost"] = 18000000,	-- 1,800g
						}),
					}, {	-- Exalted
						i(161578, {	-- Kelp-Encrusted Bindings
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161912, {	-- Reins of the Dapple Gray (MOUNT!)
							["cost"] = 100000000,	-- 10,000g
							["races"] = ALLIANCE_ONLY,
						}),
						i(161909, {	-- Reins of the Stormsong Coastwatcher (MOUNT!)
							["cost"] = 900000000,	-- 90,000g
							["races"] = ALLIANCE_ONLY,
						}),
						i(161576, {	-- Sea Priest's Waistcord
							["cost"] = 19000000,	-- 1,900g
						}),
						i(160542, {	-- Storm's Wake Tabard
							["cost"] = 5000000,	-- 500g
						}),
						i(161580, {	-- Stormbreaker Galoshes
							["cost"] = 19000000,	-- 1,900g
						}),
						i(161581, {	-- Tidecrest Gauntlets
							["cost"] = 19000000,	-- 1,900g
						}),
					},
				}),
			}),
		}),
	}),
})));