-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(707, {	-- Vault of the Wardens
		["coord"] = { 48.0, 82.1, AZSUNA },
		["maps"] = { 710, 711, 712 },
		["g"] = {
			n(QUESTS, {
				q(44486, {	-- Fel-Ravaged Tome
					["provider"] = { "o", 258979 },	-- Fel-Ravaged Tome
					["g"] = {
						crit(33146, {	-- Fel-Ravaged Tome
							["achievementID"] = 11240,	-- Harbinger
						}),
					},
				}),
			}),
			n(WORLD_QUESTS, {
				q(42924, {	-- Vault of the Wardens: A Grim Matter
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42926, {	-- Vault of the Wardens: How'd He Get Up There?
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42922, {	-- Vault of the Wardens: Startup Sequence
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				cr(95886, e(1468, {	-- Ash'golm
					i(139468),	-- Bindings of the Windlord (rogue appearance)
				})),
				cr(95888, e(1470, {	-- Cordana Felsong
					ach(10801),	-- Vault of the Wardens
				})),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				cr(95885, e(1467, {	-- Tirathon Saltheril
					i(134369),	-- Felbat Leather Boots
					i(137509),	-- Glaivemaster's Studded Grips
					i(137502),	-- Hood of Indignation
					i(134390),	-- Mardum Chain Vest
					i(137524),	-- Mortar Guard Shoulderplates
					i(134398),	-- Netherwhisper Wristguard
					i(134362),	-- Portalguard Wristguard
					i(137532),	-- Seal of Saltheril
					i(137517),	-- Striders of Furious Flight
					i(137537),	-- Tirathon's Betrayal
					i(137542),	-- Metamorphosis Spark
				})),
				cr(96015, e(1695, {	-- Inquisitor Tormentorum
					i(137503),	-- Amice of Cruel Laughter
					i(137525),	-- Blood-Spattered Gauntlets
					i(137530),	-- Drape of Vile Misfortune
					i(137511),	-- Hood of the Blind Executioner
					i(137518),	-- Leggings of Biting Links
					i(137538),	-- Orb of Torment
					i(137544),	-- Prisoner's Wail
					i(137543),	-- Soulsap Shackles
				})),
				cr(95886, e(1468, {	-- Ash'golm
					i(137510),	-- Charskin Mantle
					i(137526),	-- Crown of Ash
					i(137539),	-- Faulty Countermeasure
					i(137512),	-- Flame Juggler's Armbands
					i(137504),	-- Flameheart Vestment
					i(137519),	-- Lavabreaker Gauntlets
					i(137535),	-- Lavadrip Pendant
					i(137505),	-- Leggings of the Third Degree
					i(137523),	-- Magmacrusher Girdle
					i(137520),	-- Permafrost Waistband
					i(137545),	-- Flashfrozen Ember
					i(137546),	-- Molten Giant's Eye
				})),
				cr(95887, e(1469, {	-- Glazer
					i(137516),	-- Collar of Blindsight
					i(137540),	-- Concave Reflecting Lens
					i(137513),	-- Girdle of Lidless Sight
					i(137506),	-- Gloves of Unseen Evil
					i(137536),	-- Pendant of the Watchful Eye
					i(137527),	-- Polished Jade Chestguard
					i(137533),	-- Ring of Minute Mirrors
					i(137547),	-- Pulsing Prism
				})),
				cr(95888, e(1470, {	-- Cordana Felsong
					i(137522),	-- Bracers of Twisted Revelation
					i(137514),	-- Chestguard of Insidious Desire
					i(137531),	-- Cloak of Enthralling Darkness
					i(134371),	-- Felbat Leather Gloves
					i(137528),	-- Legguards of Illusory Burdens
					i(134386),	-- Mardum Chain Boots
					i(137541),	-- Moonlit Prism
					i(134392),	-- Netherwhisper Hood
					i(137529),	-- Pathfinders of Dark Omens
					i(134356),	-- Portalguard Gauntlets
					i(137508),	-- Shadewalker Footwraps
					i(137521),	-- Shoulderguards of Shunned Duty
					i(137507),	-- Waistband of Spiritual Doom
					i(137515),	-- Warden's Martial Greaves
					i(137548),	-- Elune's Light
					i(137550),	-- Moonglaive Dervish
					i(137549),	-- Shade of the Vault
				})),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				cr(95888, e(1470, {	-- Cordana Felsong
					ach(10802),	-- Heroic: Vault of the Wardens
					i(137852),	-- Design: Vindictive Pandemonite Choker [Rank 3] (RECIPE!)
					i(127931),	-- Recipe: Flask of the Seventh Demon [Rank 2] (RECIPE!)
					i(137930),	-- Pattern: Gravenscale Treads [Rank 3] (RECIPE!)
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = 110,
				["g"] = {
					cr(95885, e(1467, {	-- Tirathon Saltheril
						i(134369),	-- Felbat Leather Boots
						i(137509),	-- Glaivemaster's Studded Grips
						i(137502),	-- Hood of Indignation
						i(134390),	-- Mardum Chain Vest
						i(137524),	-- Mortar Guard Shoulderplates
						i(134398),	-- Netherwhisper Wristguard
						i(134362),	-- Portalguard Wristguard
						i(137532),	-- Seal of Saltheril
						i(137517),	-- Striders of Furious Flight
						i(137537),	-- Tirathon's Betrayal
						i(137542),	-- Metamorphosis Spark
					})),
					cr(96015, e(1695, {	-- Inquisitor Tormentorum
						i(137503),	-- Amice of Cruel Laughter
						i(137525),	-- Blood-Spattered Gauntlets
						i(137530),	-- Drape of Vile Misfortune
						i(137511),	-- Hood of the Blind Executioner
						i(137518),	-- Leggings of Biting Links
						i(137538),	-- Orb of Torment
						i(137544),	-- Prisoner's Wail
						i(137543),	-- Soulsap Shackles
					})),
					cr(95886, e(1468, {	-- Ash'golm
						i(137510),	-- Charskin Mantle
						i(137526),	-- Crown of Ash
						i(137539),	-- Faulty Countermeasure
						i(137512),	-- Flame Juggler's Armbands
						i(137504),	-- Flameheart Vestment
						i(137519),	-- Lavabreaker Gauntlets
						i(137535),	-- Lavadrip Pendant
						i(137505),	-- Leggings of the Third Degree
						i(137523),	-- Magmacrusher Girdle
						i(137520),	-- Permafrost Waistband
						i(137545),	-- Flashfrozen Ember
						i(137546),	-- Molten Giant's Eye
					})),
					cr(95887, e(1469, {	-- Glazer
						i(137516),	-- Collar of Blindsight
						i(137540),	-- Concave Reflecting Lens
						i(137513),	-- Girdle of Lidless Sight
						i(137506),	-- Gloves of Unseen Evil
						i(137536),	-- Pendant of the Watchful Eye
						i(137527),	-- Polished Jade Chestguard
						i(137533),	-- Ring of Minute Mirrors
						i(137547),	-- Pulsing Prism
					})),
					cr(95888, e(1470, {	-- Cordana Felsong
						i(137522),	-- Bracers of Twisted Revelation
						i(137514),	-- Chestguard of Insidious Desire
						i(137531),	-- Cloak of Enthralling Darkness
						i(134371),	-- Felbat Leather Gloves
						i(137528),	-- Legguards of Illusory Burdens
						i(134386),	-- Mardum Chain Boots
						i(137541),	-- Moonlit Prism
						i(134392),	-- Netherwhisper Hood
						i(137529),	-- Pathfinders of Dark Omens
						i(134356),	-- Portalguard Gauntlets
						i(137508),	-- Shadewalker Footwraps
						i(137521),	-- Shoulderguards of Shunned Duty
						i(137507),	-- Waistband of Spiritual Doom
						i(137515),	-- Warden's Martial Greaves
						i(137548),	-- Elune's Light
						i(137550),	-- Moonglaive Dervish
						i(137549),	-- Shade of the Vault
					})),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["lvl"] = 110,
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(10707, {	-- A Specter, Illuminated
							["description"] = "After killing |cFFFFD700Cordana Felsong|r, take Elune's Light to the hallway connecting |cFFFFD700Glazer|r and |cFFFFD700Ash'golm|r and follow the spirit until it reaches the end of the hall. Kill the spectre that spawns, then repeat the process 2 more times.",
							["crs"] = { 108996 },	-- Specter of Vengeance
						}),
					}),
					cr(95885, e(1467, {	-- Tirathon Saltheril
						i(134369),	-- Felbat Leather Boots
						i(137509),	-- Glaivemaster's Studded Grips
						i(137502),	-- Hood of Indignation
						i(134390),	-- Mardum Chain Vest
						i(137524),	-- Mortar Guard Shoulderplates
						i(134398),	-- Netherwhisper Wristguard
						i(134362),	-- Portalguard Wristguard
						i(137532),	-- Seal of Saltheril
						i(137517),	-- Striders of Furious Flight
						i(137537),	-- Tirathon's Betrayal
						i(137542),	-- Metamorphosis Spark
					})),
					cr(96015, e(1695, {	-- Inquisitor Tormentorum
						i(137503),	-- Amice of Cruel Laughter
						i(137525),	-- Blood-Spattered Gauntlets
						i(137530),	-- Drape of Vile Misfortune
						i(137511),	-- Hood of the Blind Executioner
						i(137518),	-- Leggings of Biting Links
						i(137538),	-- Orb of Torment
						i(137544),	-- Prisoner's Wail
						i(137543),	-- Soulsap Shackles
					})),
					cr(95886, e(1468, {	-- Ash'golm
						ach(10679),	-- I Ain't Even Cold
						i(137510),	-- Charskin Mantle
						i(137526),	-- Crown of Ash
						i(137539),	-- Faulty Countermeasure
						i(137512),	-- Flame Juggler's Armbands
						i(137504),	-- Flameheart Vestment
						i(137519),	-- Lavabreaker Gauntlets
						i(137535),	-- Lavadrip Pendant
						i(137505),	-- Leggings of the Third Degree
						i(137523),	-- Magmacrusher Girdle
						i(137520),	-- Permafrost Waistband
						i(137545),	-- Flashfrozen Ember
						i(137546),	-- Molten Giant's Eye
					})),
					cr(95887, e(1469, {	-- Glazer
						i(137516),	-- Collar of Blindsight
						i(137540),	-- Concave Reflecting Lens
						i(137513),	-- Girdle of Lidless Sight
						i(137506),	-- Gloves of Unseen Evil
						i(137536),	-- Pendant of the Watchful Eye
						i(137527),	-- Polished Jade Chestguard
						i(137533),	-- Ring of Minute Mirrors
						i(137547),	-- Pulsing Prism
					})),
					cr(95888, e(1470, {	-- Cordana Felsong
						ach(10803),	-- Mythic: Vault of the Wardens
						ach(10861),	-- Mythic: Vault of the Wardens Guild Run
						ach(10680),	-- Who's Afraid of the Dark?
						i(128607),	-- Formula: Enchant Cloak - Binding of Strength [Rank 3] (RECIPE!)
						i(137522),	-- Bracers of Twisted Revelation
						i(137514),	-- Chestguard of Insidious Desire
						i(137531),	-- Cloak of Enthralling Darkness
						i(134371),	-- Felbat Leather Gloves
						i(137528),	-- Legguards of Illusory Burdens
						i(134386),	-- Mardum Chain Boots
						i(137541),	-- Moonlit Prism
						i(134392),	-- Netherwhisper Hood
						i(137529),	-- Pathfinders of Dark Omens
						i(134356),	-- Portalguard Gauntlets
						i(137508),	-- Shadewalker Footwraps
						i(137521),	-- Shoulderguards of Shunned Duty
						i(137507),	-- Waistband of Spiritual Doom
						i(137515),	-- Warden's Martial Greaves
						i(137548),	-- Elune's Light
						i(137550),	-- Moonglaive Dervish
						i(137549),	-- Shade of the Vault
					})),
				},
			}),
		},
	}),
}));
