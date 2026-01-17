-------------------------------------------------------------------
--       E X P A N S I O N   F E A T U R E S   M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(61451, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {	-- Worldsoul-Searching
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40244,	-- Nerub-ar Palace
				41222,	-- Liberation of Undermine
				41598,	-- Manaforge Omega
				41555,	-- All That Khaz
				41201,	-- You Xal Not Pass
				40231,	-- The War Within Pathfinder
				40438,	-- Glory of the Delver
				41586,	-- Going Goblin Mode
				41997,	-- Owner of a Radiant Heart
				60889,	-- Unraveled and Persevering
			}},
			["groups"] = {
				i(257353),	-- Drained Dark Heart of Galakrond (DECOR!)
				i(258188),	-- Geargrinder Mk. 11 (MOUNT!)
			},
		})),
		ach(41665, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {	-- Dressed to the Mines (automated)
			i(236852, {	-- Gallagio Highroller's Boomstone (CI!)
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
					cl(DEATHKNIGHT, {
						i(229251),	-- Cauldron Champion's Screamplate
						i(229253),	-- Cauldron Champion's Crown
					}),
					cl(DEMONHUNTER, {
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229305),	-- Jaws of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
					}),
					cl(HUNTER, {
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229271),	-- Tireless Collector's Chained Cowl
					}),
					cl(MAGE, {
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
					}),
					cl(MONK, {
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229298),	-- Ageless Serpent's Mane
					}),
					cl(PALADIN, {
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229244),	-- Aureate Sentry's Pledge
					}),
					cl(PRIEST, {
						i(229332),	-- Confessor's Unshakable Radiance
						i(229334),	-- Confessor's Unshakable Halo
					}),
					cl(ROGUE, {
						i(229287),	-- Spectral Gambler's Bladed Mantle
					}),
					cl(SHAMAN, {
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229262),	-- Gale Sovereign's Charged Hood
					}),
					cl(WARLOCK, {
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229325),	-- Spliced Fiendtrader's Transcendence
					}),
					cl(WARRIOR, {
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229235),	-- Enforcer's Backalley Faceshield
					}),
				})),
			}),
		})),
		ach(40107, {	-- Harbinger of the Weatherd
			-- INFO: The 4 harbinger achievements (which are feats of strength) were added at the start of 11.0.2 but didn't fire and showed a TODO in the name. They were corrected before 11.0.5. They could be timelined to the exact build if prefered but this is good enough.
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40115, {	-- Harbinger of the Carved
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40118, {	-- Harbinger of the Runed
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40939, {	-- Harbinger of the Gilded
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40942, {	-- Weathered of the Undermine
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		ach(40943, {	-- Carved of the Undermine
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		ach(40944, {	-- Runed of the Undermine
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		ach(40945, {	-- Gilded of the Undermine
			["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
		}),
		ach(41886, {	-- Weathered of the Ethereal
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		ach(41887, {	-- Carved of the Ethereal
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		ach(41888, {	-- Runed of the Ethereal
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		ach(41892, {	-- Gilded of the Ethereal
			["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
		}),
		ach(40591, {	-- Khaz Algar Diplomat
			-- Unfun fact: Blizzard isn't currently showing these criteria ingame, and manually adding them doesn't properly fetch their names, I'm just gonna leave them here for reference for when they fix this. It can be either automated, or written out in full.
			-- Unfun fact the second: They never fixed the achievement, they just remade it.
			-- crit(68907),		-- Council of Dornogal
			-- crit(68908),		-- The Assembly of the Deeps
			-- crit(68909),		-- Hallowfall Arathi
			-- crit(68910),		-- The Severed Threads
            ["timeline"] = { REMOVED_11_0_7 },
            ["groups"] = {
                iensemble(219110),	-- Vermillion Patron's Elegance
            },
		}),
        ach(41169, {	-- Khaz Algar Diplomat
            ["timeline"] = { ADDED_11_0_7 },
            ["groups"] = {
                crit(71181),	-- Council of Dornogal
                crit(71180),	-- The Assembly of the Deeps
                crit(71179),	-- Hallowfall Arathi
                crit(71177),	-- The Severed Threads
                iensemble(219110),	-- Vermillion Patron's Elegance
            },
		}),
        -- INFO: Verified 2024-10-04, only shows one criteria without achraw
		achraw(40660, bubbleDownSelf({ ["timeline"] = { REMOVED_11_1_0_SEASONSTART }, }, {	-- The War Within Season 1: Spelunker Supreme
			crit(67375),	-- Attained 1600+ Rated PVP rating
			crit(66890),	-- Attained 2000+ Mythic Plus rating
			crit(67597),	-- Defeated Queen Ansurek on Heroic or Mythic difficulty
			i(226206),	-- Mark of the Spelunker Supreme
		})),
		-- INFO: Verified 2025-01-12, shows no criteria without achraw
		achraw(40911, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART }, }, {	-- The War Within Season 2: Master Blaster
			crit(70046),	-- Attained 1600+ Rated PVP rating
			crit(70053),	-- Attained 2000+ Mythic Plus rating
			crit(70052),	-- Defeated Gallywix on Heroic or Mythic difficulty
			i(236877),	-- Crystallized Essence of Kaja'mite
		})),
		ach(41937, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 }, }, {	-- The War Within Season 3: Voidborne Victor
			i(240175),	-- Crystallized Ethereal Voidsplinter
		})),
		ach(42325, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 }, }, {	-- Void Wear Prohibited (automated)
			i(246737, {	-- K'areshi Voidstone (CI!)
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
					cl(DEATHKNIGHT, {
						i(237626),	-- Hollow Senintel's Perches
						i(237628),	-- Hollow Sentinel's Stonemask
					}),
					cl(DEMONHUNTER, {
						i(237689),	-- Charhound's Vicious Hornguards
						i(237691),	-- Charhound's Vicious Scalp
					}),
					cl(DRUID, {
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237655),	-- Spellweaver's Immaculate Focus
					}),
					cl(HUNTER, {
						i(237644),	-- Midnight Herald's Shadowguards
						i(237646),	-- Midnight Herald's Cowl
					}),
					cl(MAGE, {
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237718),	-- Augur's Ephemeral Wide-Brim
					}),
					cl(MONK, {
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237617),	-- Chargers of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237707),	-- Dying Star's Pyrelights
						i(237709),	-- Dying Star's Veil
					}),
					cl(ROGUE, {
						i(237662),	-- Smokemantle of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237635),	-- Fangs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237700),	-- Inquisitor's Portal to Madness
					}),
					cl(WARRIOR, {
						i(237608),	-- Living Weapon's Ramparts
						i(237610),	-- Living Weapon's Faceshield
					}),
				})),
			}),
		})),
		ach(40723, {	-- Web-Wrapped in the Finest Silks (automated)
			i(226224, {	-- Luminous Nerubian Catalyst Stone (CI!)
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
					cl(DEATHKNIGHT, {
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212002),	-- Exhumed Centurion's Galea
					}),
					cl(DEMONHUNTER, {
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
					}),
					cl(EVOKER, {
						i(212027),	-- Fumaroles of the Destroyer
						i(212029),	-- Horns of the Destroyer
					}),
					cl(HUNTER, {
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212020),	-- Lightless Scavenger's Skull
					}),
					cl(MAGE, {
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
					}),
					cl(MONK, {
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212047),	-- Gatecrasher's Horns
					}),
					cl(PALADIN, {
						i(211991),	-- Entombed Seraph's Plumes
						i(211993),	-- Entombed Seraph's Casque
					}),
					cl(PRIEST, {
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212083),	-- Living Luster's Semblance
					}),
					cl(ROGUE, {
						i(212036),	-- K'areshi Phantom's Shoulderpads
					}),
					cl(SHAMAN, {
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212072),	-- Hexflame Coven's Altar
						i(212074),	-- Hexflame Coven's All-Seeing Eye
					}),
					cl(WARRIOR, {
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211984),	-- Warsculptor's Barbute
					}),
				})),
			}),
		}),
		ach(41201, bubbleDownSelf({	-- You Xal Not Pass
			["timeline"] = { ADDED_11_0_7 },
		},{
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41189,	-- Azj the World Turns
                41188,	-- Crystal Chronicled
                41133,	-- Isle Remember You
                41187,	-- Rage Aside the Machine
                41186,	-- Slate of the Union
			}},
			["groups"] = {
				i(223313),	-- Shadow of Doubt (MOUNT!)
			},
		})),
	}),
})));
