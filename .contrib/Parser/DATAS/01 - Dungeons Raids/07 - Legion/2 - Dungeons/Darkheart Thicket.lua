-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(762, {	-- Darkheart Thicket
		["mapID"] = 733,
		["coord"] = { 59.0, 31.3, VALSHARAH },
		["lvl"] = 98,
		["g"] = {
			n(WORLD_QUESTS, {
				q(42745, {	-- Darkheart Thicket: A Burden to Bear
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42743, {	-- Darkheart Thicket: Kudzilla
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42714, {	-- Darkheart Thicket: Mythana
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42744, {	-- Darkheart Thicket: Preserving the Preservers
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42742, {	-- Darkheart Thicket: Rage Rot
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				cr(96512, e(1654, {	-- Archdruid Glaidalis
					i(140653),	-- Pure Drop of Shaladrassil's Sap (druid appearance)
				})),
				cr(103344, e(1655, {	-- Oakheart
					i(137307),	-- Corrupted Knot
					i(211473, {	-- Corrupted Knot
						["timeline"] = { ADDED_11_0_2 },
					}),
				})),
				cr(99192, e(1657, {	-- Shade of Xavius
					ach(10783),	-- Darkheart Thicket
					i(128595),	-- Formula: Enchant Neck - Mark of the Hidden Satyr [Rank 2] (RECIPE!)
					i(137876),	-- Pattern: Warhide Bindings [Rank 3] (RECIPE!)
				})),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				cr(99192, e(1657, {	-- Shade of Xavius
					ach(10784),	-- Heroic: Darkheart Thicket
					i(137853),	-- Design: Sylvan Maelstrom Amulet [Rank 3] (RECIPE!)
				})),
			}),
			n(MYTHIC_PLUS, sharedDataSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
				i(211473),	-- Corrupted Knot
			})),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				cr(96512, e(1654, {	-- Archdruid Glaidalis
					i(134487),	-- Arch-Druid's Tainted Seal
					i(139077),	-- Bramblemail Belt
					i(137301),	-- Corrupted Starlight
					i(137300),	-- Gloves of Wretched Lesions
					i(134429),	-- Grove Darkener's Treads
					i(139086),	-- Night Dreamer Crest
					i(139058),	-- Nightsfall Helmet
					i(134423),	-- Poisonroot Belt
					i(134520),	-- Thornscar Wristguards
					i(139071),	-- Tranquil Bough Vest
					i(137302),	-- Misshapen Abomination Heart
					i(137303),	-- Touch of Nightfall
				})),
				cr(103344, e(1655, {	-- Oakheart
					i(134531),	-- Band of Twisted Bark
					i(137305),	-- Blighted Grasp Bracers
					i(134500),	-- Breastplate of Preservation
					i(121299),	-- Dreadhide Girdle
					i(134452),	-- Epaulets of Desiccated Foliage
					i(137306),	-- Oakheart's Gnarled Root
					i(137304),	-- Oakheart's Trunkwarmers
					i(121325),	-- Terrorweave Gloves
					i(121319),	-- Vilescale Helm
					i(121280),	-- Wracksoul Legplates
					i(137308),	-- Clotted Sap of the Grove
				})),
				cr(99200, e(1656, {	-- Dresaron
					i(139082),	-- Bramblemail Greaves
					i(137311),	-- Chain of the Green Flight
					i(137310),	-- Greatbelt of Disruption
					i(139089),	-- Night Dreamer Robe
					i(137312),	-- Nightmare Egg Shell
					i(139056),	-- Nightsfall Gauntlets
					i(137309),	-- Slipstream Shoulderpads
					i(134461),	-- Thermal Bindings
					i(139070),	-- Tranquil Bough Hood
					i(134464),	-- Whelp Handler's Lined Boots
					i(137313),	-- Roiling Fog
				})),
				cr(99192, e(1657, {	-- Shade of Xavius
					i(134448),	-- Ashen Satyr Leggings
					i(137321),	-- Burning Sky Pauldrons
					i(134405),	-- Cloak of Fading Echoes
					i(134504),	-- Curserunner Soulcrushers
					i(121293),	-- Dreadhide Boots
					i(134462),	-- Dream Bolstered Chestguard
					i(137320),	-- Gloves of Vile Defiance
					i(137322),	-- Mantle of the Resolute Champion
					i(137319),	-- Paranoid Sprinters
					i(134537),	-- Signet of the Highborne Magi
					i(121326),	-- Terrorweave Leggings
					i(121316),	-- Vilescale Bracers
					i(121276),	-- Wracksoul Chestplate
					i(137314),	-- Wristbands of Cursed Torment
					i(137315),	-- Writhing Heart of Darkness
					i(137316),	-- Torch of Shaladrassil
					i(137317),	-- Xavius' Mad Whispers
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = 110,
				["g"] = {
					cr(96512, e(1654, {	-- Archdruid Glaidalis
						i(134487),	-- Arch-Druid's Tainted Seal
						i(139077),	-- Bramblemail Belt
						i(137301),	-- Corrupted Starlight
						i(137300),	-- Gloves of Wretched Lesions
						i(134429),	-- Grove Darkener's Treads
						i(139086),	-- Night Dreamer Crest
						i(139058),	-- Nightsfall Helmet
						i(134423),	-- Poisonroot Belt
						i(134520),	-- Thornscar Wristguards
						i(139071),	-- Tranquil Bough Vest
						i(137302),	-- Misshapen Abomination Heart
						i(137303),	-- Touch of Nightfall
					})),
					cr(103344, e(1655, {	-- Oakheart
						i(134531),	-- Band of Twisted Bark
						i(137305),	-- Blighted Grasp Bracers
						i(134500),	-- Breastplate of Preservation
						i(121299),	-- Dreadhide Girdle
						i(134452),	-- Epaulets of Desiccated Foliage
						i(137306),	-- Oakheart's Gnarled Root
						i(137304),	-- Oakheart's Trunkwarmers
						i(121325),	-- Terrorweave Gloves
						i(121319),	-- Vilescale Helm
						i(121280),	-- Wracksoul Legplates
						i(137308),	-- Clotted Sap of the Grove
					})),
					cr(99200, e(1656, {	-- Dresaron
						i(139082),	-- Bramblemail Greaves
						i(137311),	-- Chain of the Green Flight
						i(137310),	-- Greatbelt of Disruption
						i(139089),	-- Night Dreamer Robe
						i(137312),	-- Nightmare Egg Shell
						i(139056),	-- Nightsfall Gauntlets
						i(137309),	-- Slipstream Shoulderpads
						i(134461),	-- Thermal Bindings
						i(139070),	-- Tranquil Bough Hood
						i(134464),	-- Whelp Handler's Lined Boots
						i(137313),	-- Roiling Fog
					})),
					cr(99192, e(1657, {	-- Shade of Xavius
						i(134448),	-- Ashen Satyr Leggings
						i(137321),	-- Burning Sky Pauldrons
						i(134405),	-- Cloak of Fading Echoes
						i(134504),	-- Curserunner Soulcrushers
						i(121293),	-- Dreadhide Boots
						i(134462),	-- Dream Bolstered Chestguard
						i(137320),	-- Gloves of Vile Defiance
						i(137322),	-- Mantle of the Resolute Champion
						i(137319),	-- Paranoid Sprinters
						i(134537),	-- Signet of the Highborne Magi
						i(121326),	-- Terrorweave Leggings
						i(121316),	-- Vilescale Bracers
						i(121276),	-- Wracksoul Chestplate
						i(137314),	-- Wristbands of Cursed Torment
						i(137315),	-- Writhing Heart of Darkness
						i(137316),	-- Torch of Shaladrassil
						i(137317),	-- Xavius' Mad Whispers
					})),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["lvl"] = 110,
				["g"] = {
					cr(96512, e(1654, {	-- Archdruid Glaidalis
						i(134487),	-- Arch-Druid's Tainted Seal
						i(139077),	-- Bramblemail Belt
						i(137301),	-- Corrupted Starlight
						i(137300),	-- Gloves of Wretched Lesions
						i(134429),	-- Grove Darkener's Treads
						i(139086),	-- Night Dreamer Crest
						i(139058),	-- Nightsfall Helmet
						i(134423),	-- Poisonroot Belt
						i(134520),	-- Thornscar Wristguards
						i(139071),	-- Tranquil Bough Vest
						i(137302),	-- Misshapen Abomination Heart
						i(137303),	-- Touch of Nightfall
					})),
					cr(103344, e(1655, {	-- Oakheart
						i(134531),	-- Band of Twisted Bark
						i(137305),	-- Blighted Grasp Bracers
						i(134500),	-- Breastplate of Preservation
						i(121299),	-- Dreadhide Girdle
						i(134452),	-- Epaulets of Desiccated Foliage
						i(137306),	-- Oakheart's Gnarled Root
						i(137304),	-- Oakheart's Trunkwarmers
						i(121325),	-- Terrorweave Gloves
						i(121319),	-- Vilescale Helm
						i(121280),	-- Wracksoul Legplates
						i(137308),	-- Clotted Sap of the Grove
					})),
					cr(99200, e(1656, {	-- Dresaron
						ach(10766, {	-- Egg-cellent!
							["crs"] = { 111008 },	-- Hatespawn Abomination
						}),
						i(139082),	-- Bramblemail Greaves
						i(137311),	-- Chain of the Green Flight
						i(137310),	-- Greatbelt of Disruption
						i(139089),	-- Night Dreamer Robe
						i(137312),	-- Nightmare Egg Shell
						i(139056),	-- Nightsfall Gauntlets
						i(137309),	-- Slipstream Shoulderpads
						i(134461),	-- Thermal Bindings
						i(139070),	-- Tranquil Bough Hood
						i(134464),	-- Whelp Handler's Lined Boots
						i(137313),	-- Roiling Fog
					})),
					cr(99192, e(1657, {	-- Shade of Xavius
						ach(10769),	-- Burning Down the House
						ach(10785),	-- Mythic: Darkheart Thicket
						ach(10857),	-- Mythic: Darkheart Thicket Guild Run
						i(134448),	-- Ashen Satyr Leggings
						i(137321),	-- Burning Sky Pauldrons
						i(134405),	-- Cloak of Fading Echoes
						i(134504),	-- Curserunner Soulcrushers
						i(121293),	-- Dreadhide Boots
						i(134462),	-- Dream Bolstered Chestguard
						i(137320),	-- Gloves of Vile Defiance
						i(137322),	-- Mantle of the Resolute Champion
						i(137319),	-- Paranoid Sprinters
						i(134537),	-- Signet of the Highborne Magi
						i(121326),	-- Terrorweave Leggings
						i(137316),	-- Torch of Shaladrassil
						i(121316),	-- Vilescale Bracers
						i(121276),	-- Wracksoul Chestplate
						i(137314),	-- Wristbands of Cursed Torment
						i(137315),	-- Writhing Heart of Darkness
						i(137317),	-- Xavius' Mad Whispers
					})),
				},
			}),
		},
	}),
}));
