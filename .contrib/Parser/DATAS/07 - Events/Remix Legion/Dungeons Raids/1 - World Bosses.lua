-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	n(WORLD_BOSSES, {
			n(ACHIEVEMENTS, {
				ach(11786, {	-- Terrors of the Shore
					crit(36550, {	-- Brutallus
						["_npcs"] = { 117239 },
					}),
					crit(36551, {	-- Malificus
						["_npcs"] = { 117303 },
					}),
					crit(36552, {	-- Si'vash
						["_npcs"] = { 117470 },
					}),
					crit(36553, {	-- Apocron
						["_npcs"] = { 121124 },
					}),
				}),
				ach(11160, {	-- Unleashed Monstrosities
					crit(32097, {	-- Na'zak the Fiend
						["_npcs"] = { 110321 },
					}),
					crit(32096, {	-- Nithogg
						["_npcs"] = { 107544 },
					}),
					crit(32099, {	-- Humongris
						["_npcs"] = { 108879 },
					}),
					crit(32095, {	-- Flotsam
						["_npcs"] = { 99929 },
					}),
					crit(32100, {	-- Ana-Mouz
						["_npcs"] = { 109943 },
					}),
					crit(32102, {	-- Levantus
						["_npcs"] = { 108829 },
					}),
					crit(32094, {	-- Drugon the Frostblood
						["_npcs"] = { 110378 },
					}),
					crit(32889, {	-- The Soultakers (there was also 32890 and 32891)
						["_quests"] = { 42269 },
					}),
					crit(32101, {	-- Calamir
						["_npcs"] = { 109331 },
					}),
					crit(32098, {	-- Shar'thos
						["_npcs"] = { 108678 },
					}),
					crit(35022, {	-- Withered J'im
						["_npcs"] = { 112350 },
					}),
				}),
			}),
			e(1790, {	-- Ana-Mouz
				["coord"] = { 31.0, 65.5, SURAMAR },
				["creatureID"] = 109943,	-- Ana-Mouz
				["questID"] = 43512,	-- Ana-Mouz (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(137778, {	-- Vantus Rune Technique: Tichondrius [Rank 3] (RECIPE!)
						["timeline"] = { ADDED_7_1_0 },
					}),
					i(141448),	-- Imp Mother's Loincloth
					i(141423),	-- Crop Top Chain Hauberk
					i(141413),	-- Low-Cut Chestplate
					i(141427),	-- Sheer Felthreaded Robe
					i(141419),	-- Skimpy Demonleather Tunic
					i(141486),	-- Demonic Birthstone Ring
					i(141520),	-- Imp-Eye Diamond
				},
			}),
			e(1956, {	-- Apocron
				["coord"] = { 59.2, 62.6, BROKEN_SHORE },
				["creatureID"] = 121124,	-- Apocron
				["questID"] = 47061,	-- Apocron (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(147766),	-- Band of Dark Millennia
					i(147734),	-- Spaulders of Forgotten Worlds
					i(147743),	-- Harness of Devouring Flame
					i(147730),	-- Ashen Worldscorcher Gloves
					i(147753),	-- Reaver's Rattling Girdle
					i(147738),	-- Doom-Herald's Footpads
					i(147760),	-- Apocron's Energy Core
					i(147759),	-- Charged Felfire Casing
				},
			}),
			e(1883, {	-- Brutallus
				["coord"] = { 59.2, 28.4, BROKEN_SHORE },
				["creatureID"] = 117239,	-- Brutallus
				["questID"] = 46947,	-- Brutallus (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(147749),	-- Polished Felfury Helmet
					i(147765),	-- Clasp of Burning Demise
					i(147742),	-- Violent Zealot's Shoulderpads
					i(147747),	-- Armbands of Crude Strategy
					i(147748),	-- Gauntlets of Dreadful Tenacity
					i(147739),	-- Rigid Meteorguard Gauntlets
					i(147732),	-- Leggings of Echoing Calamity
					i(147755),	-- Brutallus's Wretched Heart
					i(147756),	-- Crashing Ember
				},
			}),
			e(1774, {	-- Calamir
				["coord"] = { 37.7, 83.6, AZSUNA },
				["creatureID"] = 109331,	-- Calamir
				["questID"] = 43193,	-- Calamitous Intent (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(137847),	-- Design: Sorcerous Shadowruby Pendant [Rank 3]
					i(141438),	-- Pendant of Cold Flame
					i(141432),	-- Frostburned Sabatons
					i(141430),	-- Mana-Tanned Sandals
					i(141443),	-- Sandals of Frozen Ash
					i(141437),	-- Warboots of Smoldering Fury
					i(141533),	-- Ring of Frozen Magic
					i(141522),	-- Calamir's Jaw
				},
			}),
			e(1789, {	-- Drugon the Frostblood
				["coord"] = { 58.4, 72.6, HIGHMOUNTAIN },
				["creatureID"] = 110378,	-- Drugon the Frostblood
				["questID"] = 43448,	-- The Frozen King (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(142108, {	-- Vantus Rune Technique: Guarm [Rank 3] (RECIPE!)
						["timeline"] = { ADDED_7_1_0 },
					}),
					i(141538),	-- Giant's Handkerchief
					i(141433),	-- Assorted Dragonscale Bracers
					i(141439),	-- Ettinbone Bracers
					i(141428),	-- Snowdrift Bracers
					i(141429),	-- Wax-Sealed Leather Bracers
					i(141535),	-- Ettin Fingernail
					i(141517),	-- Drugon's Snowglobe
				},
			}),
			e(1795, {	-- Flotsam
				["coord"] = { 49.2, 7.60, HIGHMOUNTAIN },
				["creatureID"] = 99929,	-- Flotsam
				["questID"] = 43985,	-- A Dark Tide (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(139573, {	-- The Warmace of Shirvallah (Shaman Artifact)
						-- ["sourceQuest"] = , TODO
					}),
					i(141539),	-- Ragged Azsharan Sail Fragment
					i(141466),	-- Blackwater Raider Handguards
					i(141470),	-- Faded Bloodsail Handwraps
					i(141476),	-- Kezan Pirate's Mitts
					i(141475),	-- Salt-Stained Tuskarr Gloves
					i(141544),	-- Marshstomper Oracle's Loop
					i(141516),	-- "Liberated" Un'goro Relic
				},
			}),
			e(1770, {	-- Humongris <The Wizard>
				["coord"] = { 24.6, 69.6, VALSHARAH },
				["creatureID"] = 108879,	-- Humongris
				["questID"] = 42819,	-- Pocket Wizard (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(139895),	-- Skinning Technique: Legion Butchery
					i(141540),	-- Coerced Wizard's Cloak
					i(141445),	-- Mantle of the Aspiring Spellgiant
					i(141416),	-- Padawsen's Squished Pauldrons
					i(141422),	-- Shoulderguards of Unimaginative Magic
					i(141426),	-- Shoulderplates of Oversized Sorcery
					i(141536),	-- Padawsen's Unlucky Charm
					i(141521),	-- Sea Giant Toothpick Fragment
				},
			}),
			e(1769, {	-- Levantus
				["coord"] = { 43.0, 67.6, AZSUNA },
				["creatureID"] = 108829,	-- Levantus
				["questID"] = 43192,	-- Terror of the Deep (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(142109, {	-- Vantus Rune Technique: Helya [Rank 3] (RECIPE!)
						["timeline"] = { ADDED_7_1_0 },
					}),
					i(139573, {	-- The Warmace of Shirvallah (Shaman Artifact)
						-- ["sourceQuest"] = , TODO
					}),
					i(141473),	-- Krakentooth Necklace
					i(141441),	-- Chum-Chopper Gauntlets
					i(141431),	-- Hook-Fingered Gauntlets
					i(141440),	-- Seaweed "Leather" Mitts
					i(141435),	-- Whirlpool Gloves
					i(141545),	-- Ring of Deep Sea Pearls
					i(141523),	-- Fel-Scented Bait
				},
			}),
			e(1884, {	-- Malificus
				["coord"] = { 59.8, 27.8, BROKEN_SHORE },
				["creatureID"] = 117303,	-- Malificus
				["questID"] = 46948,	-- Malificus (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(147740),	-- Plague-Resistant Headcover
					i(147764),	-- Cloak of Growing Mistrust
					i(147733),	-- Doomsayer's Ritualistic Vestment
					i(147735),	-- Cuffs of Fearful Service
					i(147745),	-- Taloned Brain-Scrapers
					i(147741),	-- Legguards of Unholy Disdain
					i(147750),	-- Malicious Zealot's Legplates
					i(147744),	-- Treads of Disorderly Retreat
					i(147758),	-- Beguiling Revelation
					i(147754),	-- Gory Dreadlord Horn
				},
			}),
			e(1783, {	-- Na'zak the Fiend
				["coord"] = { 36.0, 66.4, 685 },	-- Shattered Locus (Floor #2)
				["creatureID"] = 110321,	-- Na'zak the Fiend
				["questID"] = 43513,	-- Na'zak the Fiend(WQ)
				["maps"] = { SURAMAR },
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(142121, {	-- Recipe: Potion of Prolonged Power [Rank 3]
						["timeline"] = { ADDED_7_1_0 },
					}),
					i(141425),	-- Avalanche Resistant Legplates
					i(141417),	-- Desiccated Leather Pants
					i(141415),	-- Na'zak's Dusty Pantaloons
					i(141421),	-- Venomscarred Chain Leggings
					i(141534),	-- Loop of Polished Pebbles
					i(141488),	-- Mana-Dowsing Ring
					i(141515),	-- Leystone Nugget
				},
			}),
			e(1749, {	-- Nithogg
				["coord"] = { 46.6, 30.0, STORMHEIM },
				["creatureID"] = 107544,	-- Nithogg
				["questID"] = 42270,	-- Scourge of the Skies (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(142107, {	-- Vantus Rune Technique: Odyn [Rank 3] (RECIPE!)
						["timeline"] = { ADDED_7_1_0 },
					}),
					i(140658),	-- Skull of Nithogg
					i(141420),	-- Coif of Unstable Discharge
					i(141418),	-- Helm of the Mountain Recluse
					i(141414),	-- Hood of Scorned Brood
					i(141424),	-- Stormbattered Casque
					i(141541),	-- Windwhipped Greatcloak
					i(141546),	-- Cursed Warden's Keepsake
					i(141519),	-- Pillaged Titan Disc
				},
			}),
			e(1763, {	-- Shar'thos
				["coord"] = { 55.6, 43.2, VALSHARAH },
				["creatureID"] = 108678,	-- Shar'thos
				["questID"] = 42779,	-- The Sleeping Corruption (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(140659),	-- Skull of Shar'thos
					i(141547),	-- Choker of Dreamthorns
					i(141542),	-- Despoiled Dreamthread Cloak
					i(141481),	-- Chestplate of Blackened Emeralds
					i(141491),	-- Hauberk of the Snarled Vale
					i(141487),	-- Raiments of Waking Nightmares
					i(141495),	-- Robe of Fever Dreams
					i(141518),	-- Decaying Dragonfang
				},
			}),
			e(1885, {	-- Si'vash
				["coord"] = { 89.6, 33.0, BROKEN_SHORE },
				["creatureID"] = 117470,	-- Si'vash
				["questID"] = 46945,	-- Si'vash (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(147731),	-- Cowl of Plumbed Depths
					i(147752),	-- Pauldrons of the Engulfing Tide
					i(147737),	-- Shorebreaker Robes
					i(147751),	-- Si'vashi Guard's Breastplate
					i(147736),	-- Dockthrasher Cinch
					i(147746),	-- Glistening Seaspray Legguards
					i(147767),	-- Coral Band of the Abyss
					i(147757),	-- Globule of Submersion
					i(147761),	-- Sandblasted Conch
				},
			}),
			e(1756, {	-- The Soultakers
				["crs"] = {
					106981,	-- Captain Hring
					106982,	-- Reaver Jdorn
					106984,	-- Soultrapper Mevra
				},
				["coord"] = { 78.2, 8.60, STORMHEIM },
				["questID"] = 42269,	-- The Soultakers (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
						["sourceQuest"] = 38990,	-- The Call of Icecrown
					}),
					i(141506),	-- Soultrapper's Pendant
					i(141434),	-- Cord of Kept Souls
					i(141444),	-- Hel-Cursed Belt
					i(141436),	-- Helchain Waistguard
					i(141442),	-- Sea-Reaver's Girdle
					i(141537),	-- Thrice-Accursed Compass
					i(141514),	-- Barnacled Mistcaller Orb
				},
			}),
			e(1796, {	-- Withered J'im
				["coord"] = { 52.6, 80.8, AZSUNA },
				["creatureID"] = 112350,	-- Withered J'im
				["questID"] = 44287,	-- DEADLY: Withered J'im (WQ)
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(141455),	-- Cave Skulker's Helm
					i(141453),	-- Magic-Warped Hood
					i(141459),	-- Manacrystal-Adorned Helmet
					i(141449),	-- Mana Scavenger's Mask
					i(141543),	-- Drape of the Mana-Starved
					i(141492),	-- Dingy Suramar Mercantile Signet
					i(141482),	-- Unstable Arcanocrystal
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		-- The Kill ID is added here because the WQ ID is attached to the Worldboss to show up in /att wq
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(WORLD_BOSSES, {
				q(44502),	-- Tracking Quest - Calamir killID
				q(44897),	-- Tracking Quest - Calamir bonus roll
				q(44506),	-- Tracking Quest - Levantus killID
				q(44901),	-- Tracking Quest - Levantus bonus roll
				q(44511),	-- Tracking Quest - Withered J'im killID
				q(44906),	-- Tracking Quest - Withered J'im bonus roll
			}),
		}),
		m(BROKEN_SHORE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
			n(WORLD_BOSSES, {
				q(47084),	-- Tracking Quest - Apocron killID
				q(47087),	-- Tracking Quest - Apocron bonus roll
				q(47085),	-- Tracking Quest - Brutallus killID
				q(47088),	-- Tracking Quest - Brutallus bonus roll
				q(47086),	-- Tracking Quest - Malificus killID
				q(47089),	-- Tracking Quest - Malificus bonus roll
				q(47090),	-- Tracking Quest - Si'vash killID
				q(47091),	-- Tracking Quest - Si'vash bonus roll
			}),
		})),
		m(HIGHMOUNTAIN, {
			n(WORLD_BOSSES, {
				q(44503),	-- Tracking Quest - Drugon the Frostblood killID
				q(44898),	-- Tracking Quest - Drugon the Frostblood bonus roll
				q(44504),	-- Tracking Quest - Flotsam killID
				q(44899),	-- Tracking Quest - Flotsam bonus roll
			}),
		}),
		m(STORMHEIM, {
			n(WORLD_BOSSES, {
				q(44508),	-- Tracking Quest - Nithogg killID
				q(44903),	-- Tracking Quest - Nithogg bonus roll
				q(44510),	-- Tracking Quest - The Soultakers killID
				q(44905),	-- Tracking Quest - The Soultakers bonus roll
			}),
		}),
		m(SURAMAR, {
			n(WORLD_BOSSES, {
				q(44501),	-- Tracking Quest - Ana-Mouz killID
				q(44896),	-- Tracking Quest - Ana-Mouz bonus roll
				q(44507),	-- Tracking Quest - Nazak the Fiend killID
				q(44902),	-- Tracking Quest - Nazak the Fiend bonus roll
			}),
		}),
		m(VALSHARAH, {
			n(WORLD_BOSSES, {
				q(44505),	-- Tracking Quest - Humongris killID
				q(44900),	-- Tracking Quest - Humongris bonus roll
				q(44509),	-- Tracking Quest - Shar'thos killID
				q(44904),	-- Tracking Quest - Shar'thos bonus roll
			}),
		}),
	}),
})));--]]
