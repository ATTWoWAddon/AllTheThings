-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_SEASONSTART } }, {
	n(ACHIEVEMENTS, {
		ach(61809, {	-- Adventurer of the Dawn
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42767, {	-- Veteran of the Dawn
            ["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42768, {	-- Champion of the Dawn
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42769, {	-- Hero of the Dawn
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42770, {	-- Myth of the Dawn
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(61519, {	-- Midnight Season 1: Catalyst Unbound
			["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		}),
		achraw(61490, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_SEASONSTART }, }, {	-- Midnight Season 1: Champion of the Dawn
			crit(108731),	-- Attained 1600+ Rated PVP rating
			crit(109029),	-- Attained 2000+ Mythic Plus rating
			crit(109881),	-- Defeated Dimensius on Heroic or Mythic difficulty
			i(260173),	-- Crystallized Dawnlight Manaflux
		})),
		ach(61858, {	-- Light of the Party (automated)
			i(265071, {	-- Gleaming Sunmote (CI!)
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249967),	-- Relentless Rider's Chain
						i(249970),	-- Relentless Rider's Crown
						i(249968),	-- Relentless Rider's Dreadthorns
					}),
					cl(DEMONHUNTER, {
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250033),	-- Devouring Reaver's Intake
					}),
					cl(DRUID, {
						i(250024),	-- Branches  of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249995),	-- Beacons of the Black Talon
					}),
					cl(HUNTER, {
						i(249985),	-- Primal Sentry's Cinch
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249986),	-- Primal Sentry's Trophies
					}),
					cl(MAGE, {
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250060),	-- Voidbreaker's Veil
					}),
					cl(MONK, {
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249961),	-- Luminant Verdict's Unwavering Gaze
					}),
					cl(PRIEST, {
						i(250049),	-- Blind Oath's Seraphguards
						i(250051),	-- Blind Oath's Winged Crest
					}),
					cl(ROGUE, {
						i(250006),	-- Masquerade of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249979),	-- Locus of the Primal Core
						i(249977),	-- Tempests of the Primal Core
					}),
					cl(WARLOCK, {
						i(250040),	-- Abyssal Immolator's Fury
						i(250042),	-- Abyssal Immolator's Smoldering Flames
					}),
					cl(WARRIOR, {
						i(249950),	-- Night Ender's Pauldrons
						i(249952),	-- Night Ender's Tusks
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249967),	-- Relentless Rider's Chain
						i(249970),	-- Relentless Rider's Crown
						i(249968),	-- Relentless Rider's Dreadthorns
					}),
					cl(DEMONHUNTER, {
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250033),	-- Devouring Reaver's Intake
					}),
					cl(DRUID, {
						i(250024),	-- Branches  of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249995),	-- Beacons of the Black Talon
					}),
					cl(HUNTER, {
						i(249985),	-- Primal Sentry's Cinch
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249986),	-- Primal Sentry's Trophies
					}),
					cl(MAGE, {
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250060),	-- Voidbreaker's Veil
					}),
					cl(MONK, {
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249961),	-- Luminant Verdict's Unwavering Gaze
					}),
					cl(PRIEST, {
						i(250049),	-- Blind Oath's Seraphguards
						i(250051),	-- Blind Oath's Winged Crest
					}),
					cl(ROGUE, {
						i(250006),	-- Masquerade of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249979),	-- Locus of the Primal Core
						i(249977),	-- Tempests of the Primal Core
					}),
					cl(WARLOCK, {
						i(250040),	-- Abyssal Immolator's Fury
						i(250042),	-- Abyssal Immolator's Smoldering Flames
					}),
					cl(WARRIOR, {
						i(249950),	-- Night Ender's Pauldrons
						i(249952),	-- Night Ender's Tusks
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249967),	-- Relentless Rider's Chain
						i(249970),	-- Relentless Rider's Crown
						i(249968),	-- Relentless Rider's Dreadthorns
					}),
					cl(DEMONHUNTER, {
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250033),	-- Devouring Reaver's Intake
					}),
					cl(DRUID, {
						i(250024),	-- Branches  of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249995),	-- Beacons of the Black Talon
					}),
					cl(HUNTER, {
						i(249985),	-- Primal Sentry's Cinch
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249986),	-- Primal Sentry's Trophies
					}),
					cl(MAGE, {
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250060),	-- Voidbreaker's Veil
					}),
					cl(MONK, {
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249961),	-- Luminant Verdict's Unwavering Gaze
					}),
					cl(PRIEST, {
						i(250049),	-- Blind Oath's Seraphguards
						i(250051),	-- Blind Oath's Winged Crest
					}),
					cl(ROGUE, {
						i(250006),	-- Masquerade of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249979),	-- Locus of the Primal Core
						i(249977),	-- Tempests of the Primal Core
					}),
					cl(WARLOCK, {
						i(250040),	-- Abyssal Immolator's Fury
						i(250042),	-- Abyssal Immolator's Smoldering Flames
					}),
					cl(WARRIOR, {
						i(249950),	-- Night Ender's Pauldrons
						i(249952),	-- Night Ender's Tusks
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249967),	-- Relentless Rider's Chain
						i(249970),	-- Relentless Rider's Crown
						i(249968),	-- Relentless Rider's Dreadthorns
					}),
					cl(DEMONHUNTER, {
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250033),	-- Devouring Reaver's Intake
					}),
					cl(DRUID, {
						i(250024),	-- Branches  of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249995),	-- Beacons of the Black Talon
					}),
					cl(HUNTER, {
						i(249985),	-- Primal Sentry's Cinch
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249986),	-- Primal Sentry's Trophies
					}),
					cl(MAGE, {
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250060),	-- Voidbreaker's Veil
					}),
					cl(MONK, {
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249961),	-- Luminant Verdict's Unwavering Gaze
					}),
					cl(PRIEST, {
						i(250049),	-- Blind Oath's Seraphguards
						i(250051),	-- Blind Oath's Winged Crest
					}),
					cl(ROGUE, {
						i(250006),	-- Masquerade of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249979),	-- Locus of the Primal Core
						i(249977),	-- Tempests of the Primal Core
					}),
					cl(WARLOCK, {
						i(250040),	-- Abyssal Immolator's Fury
						i(250042),	-- Abyssal Immolator's Smoldering Flames
					}),
					cl(WARRIOR, {
						i(249950),	-- Night Ender's Pauldrons
						i(249952),	-- Night Ender's Tusks
					}),
				})),
				n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
					cl(DEATHKNIGHT, {
						i(255562),	-- Galactic Gladiator's Plate Greatbelt
						i(255556),	-- Galactic Gladiator's Plate Helmet
						i(255560),	-- Galactic Gladiator's Plate Pauldrons
					}),
					cl(DEMONHUNTER, {
						i(255447),	-- Galactic Gladiator's Leather Belt
						i(255441),	-- Galactic Gladiator's Leather Helm
						i(255446),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(DRUID, {
						i(255421),	-- Galactic Gladiator's Leather Helm
						i(255426),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(EVOKER, {
						i(255503),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(HUNTER, {
						i(255515),	-- Galactic Gladiator's Chain Gauntlets
						i(255524),	-- Galactic Gladiator's Chain Girdle
						i(255517),	-- Galactic Gladiator's Chain Helm
						i(255522),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(MAGE, {
						i(255363),	-- Galactic Gladiator's Silk Hat
						i(255367),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(MONK, {
						i(255466),	-- Galactic Gladiator's Leather Belt
						i(255461),	-- Galactic Gladiator's Leather Mask
						i(255465),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(PALADIN, {
						i(255574),	-- Galactic Gladiator's Plate Helm
						i(255580),	-- Galactic Gladiator's Plate Pauldrons
					}),
					cl(PRIEST, {
						i(255383),	-- Galactic Gladiator's Silk Guise
						i(255386),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(ROGUE, {
						i(255480),	-- Galactic Gladiator's Leather Mask
						i(255484),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(SHAMAN, {
						i(255536),	-- Galactic Gladiator's Chain Helm
						i(255541),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(WARLOCK, {
						i(255402),	-- Galactic Gladiator's Silk Guise
						i(255406),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(WARRIOR, {
						i(255594),	-- Galactic Gladiator's Plate Helm
						i(255599),	-- Galactic Gladiator's Plate Pauldrons
					}),
				})),
				n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
					cl(DEATHKNIGHT, {
						i(255562),	-- Galactic Gladiator's Plate Greatbelt
						i(255556),	-- Galactic Gladiator's Plate Helmet
						i(255560),	-- Galactic Gladiator's Plate Pauldrons
					}),
					cl(DEMONHUNTER, {
						i(255447),	-- Galactic Gladiator's Leather Belt
						i(255441),	-- Galactic Gladiator's Leather Helm
						i(255446),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(DRUID, {
						i(255421),	-- Galactic Gladiator's Leather Helm
						i(255426),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(EVOKER, {
						i(255503),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(HUNTER, {
						i(255515),	-- Galactic Gladiator's Chain Gauntlets
						i(255524),	-- Galactic Gladiator's Chain Girdle
						i(255517),	-- Galactic Gladiator's Chain Helm
						i(255522),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(MAGE, {
						i(255363),	-- Galactic Gladiator's Silk Hat
						i(255367),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(MONK, {
						i(255466),	-- Galactic Gladiator's Leather Belt
						i(255461),	-- Galactic Gladiator's Leather Mask
						i(255465),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(PALADIN, {
						i(255574),	-- Galactic Gladiator's Plate Helm
						i(255580),	-- Galactic Gladiator's Plate Pauldrons
					}),
					cl(PRIEST, {
						i(255383),	-- Galactic Gladiator's Silk Guise
						i(255386),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(ROGUE, {
						i(255480),	-- Galactic Gladiator's Leather Mask
						i(255484),	-- Galactic Gladiator's Leather Shoulderpads
					}),
					cl(SHAMAN, {
						i(255536),	-- Galactic Gladiator's Chain Helm
						i(255541),	-- Galactic Gladiator's Chain Shoulderguard
					}),
					cl(WARLOCK, {
						i(255402),	-- Galactic Gladiator's Silk Guise
						i(255406),	-- Galactic Gladiator's Silk Mantle
					}),
					cl(WARRIOR, {
						i(255594),	-- Galactic Gladiator's Plate Helm
						i(255599),	-- Galactic Gladiator's Plate Pauldrons
					}),
				})),
			}),
		}),
	}),
})));
