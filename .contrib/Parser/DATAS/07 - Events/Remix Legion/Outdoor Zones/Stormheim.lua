-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			["icon"] = 1409001,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42596),	-- Campaign: Stormheim
					ach(60807),	-- Elusive Foes: Stormheim
					ach(60806),	-- Explore Stormheim
					ach(60808),	-- Hidden Treasures: Stormheim
					ach(42578, {	-- Looking for Group: Stormheim
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60831,	-- Halls of Valor
							60828,	-- Maw of Souls
							60860,	-- Trial of Valor
						}},
					}),
					ach(61110, {	-- Lorerunner of Stormheim
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42596,	-- Campaign: Stormheim
							61105,	-- Sojourner of Stormheim
						}},
					}),
					ach(61105),	-- Sojourner of Stormheim
					ach(42582, {	-- Stormheim
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42596,	-- Campaign: Stormheim
							42658,	-- Valarjar
							42578,	-- Looking for Group: Stormheim
							42590,	-- Tour Stormheim
						}},
						["groups"] = {
							i(253357, {	-- Felscorned Arsenal
								i(246786),	-- Sinister Felblade
								i(246793),	-- Sinister Feldirk
								i(246991),	-- Sinister Felstaff
								i(246997),	-- Sinister Felwand
							}),
						},
					}),
					ach(42590, {	-- Tour Stormheim
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60807,	-- Elusive Foes: Stormheim
							60806,	-- Explore Stormheim
							60808,	-- Hidden Treasures: Stormheim
						}},
					}),
					ach(42658, {	-- Valarjar
						i(250402, {	-- Vrykul Lord’s Throne (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOAKS, {
						i(247087),	-- Stormheart Drape
					}),
					filter(CLOTH, {
						i(240740),	-- Hrydshal Runespeaker Bindings
						i(240736),	-- Hrydshal Runespeaker Chestwrap
						i(240737),	-- Hrydshal Runespeaker Cord
						i(240734),	-- Hrydshal Runespeaker Cowl
						i(240741),	-- Hrydshal Runespeaker Gloves
						i(240735),	-- Hrydshal Runespeaker Mantle
						i(240738),	-- Hrydshal Runespeaker Pants
						i(240739),	-- Hrydshal Runespeaker Slippers
					}),
					filter(LEATHER, {
						i(240746),	-- Haustvelt Leather Belt
						i(240748),	-- Haustvelt Leather Boots
						i(240747),	-- Haustvelt Leather Breeches
						i(240745),	-- Haustvelt Leather Chestguard
						i(240750),	-- Haustvelt Leather Gloves
						i(240743),	-- Haustvelt Leather Headgear
						i(240744),	-- Haustvelt Leather Mantle
						i(240749),	-- Haustvelt Leather Wraps
					}),
					filter(MAIL, {
						i(240801),	-- Stormborn Laminar Chainmail
						i(240804),	-- Stormborn Laminar Greaves
						i(240806),	-- Stormborn Laminar Handguards
						i(240799),	-- Stormborn Laminar Helmet
						i(240803),	-- Stormborn Laminar Leggings
						i(240800),	-- Stormborn Laminar Shoulderguards
						i(240805),	-- Stormborn Laminar Vambraces
						i(240802),	-- Stormborn Laminar Waistband
					}),
					filter(PLATE, {
						i(240676),	-- Vrykul Funereal Armplates
						i(240672),	-- Vrykul Funereal Battleplate
						i(240673),	-- Vrykul Funereal Greatbelt
						i(240677),	-- Vrykul Funereal Handguards
						i(240675),	-- Vrykul Funereal Jackboots
						i(240674),	-- Vrykul Funereal Legguards
						i(240671),	-- Vrykul Funereal Pauldrons
						i(240670),	-- Vrykul Funereal Warhelm
					}),
				}),
			},
		}),
	}),
})));
