-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			["icon"] = 1714097,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42549, {	-- Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42627,	-- Argussian Reach
							42618,	-- Looking for Group: Argus
							42567,	-- Tour Argus
							42612,	-- You Are Now Prepared!
						}},
						["groups"] = {
							i(253219),	-- Bulwark of Mannoroth (Shield)
							i(253220),	-- Bulwark of Mannoroth (Cloak)
						},
					}),
					ach(42627, {	-- Argussian Reach
						i(250690, {	-- Eredar Lord’s Fel Torch (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(60818),	-- Elusive Foes: Argus
					ach(60817),	-- Explore Argus
					ach(60816),	-- Hidden Treasures: Argus
					ach(42618, {	-- Looking for Group: Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60875,	-- Antorus, the Burning Throne
							60852,	-- Heroic: Seat of the Triumvirate
						}},
					}),
					ach(42567, {	-- Tour Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60818,	-- Elusive Foes: Argus
							60817,	-- Explore Argus
							60816,	-- Hidden Treasures: Argus
						}},
					}),
					ach(42612),	-- You Are Now Prepared!
				}),
				n(ZONE_REWARDS, {
					filter(CLOAKS, {
						i(240614),	-- Arinor Keeper's Cloak
						i(240629),	-- Doomsinger's Cape
						i(240610),	-- Doomsinger's Drape
						i(240601),	-- Oronaar Disciple's Drape
						i(240598),	-- Praetorium Guard's Cape
						i(240597),	-- Praetorium Guard's Drape
					}),
					filter(CLOTH, {
						i(240702),	-- Doomsinger's Guise
						i(240703),	-- Doomsinger's Amice
						i(240704),	-- Doomsinger's Doublet
						i(240705),	-- Doomsinger's Belt
						i(240706),	-- Doomsinger's Pants
						i(240707),	-- Doomsinger's Boots
						i(240708),	-- Doomsinger's Bindings
						i(240709),	-- Doomsinger's Handwraps
					}),
					filter(LEATHER, {
						i(240767),	-- Arinor Keeper's Cap
						i(240768),	-- Arinor Keeper's Mantle
						i(240769),	-- Arinor Keeper's Vest
						i(240770),	-- Arinor Keeper's Cinch
						i(240771),	-- Arinor Keeper's Breeches
						i(240772),	-- Arinor Keeper's Waders
						i(240773),	-- Arinor Keeper's Cuffs
						i(240774),	-- Arinor Keeper's Grips
					}),
					filter(MAIL, {
						i(240815),	-- Oronaar Disciple's Coif
						i(241222),	-- Oronaar Disciple's Hauberk
						i(240816),	-- Oronaar Disciple's Pauldrons
						i(240817),	-- Oronaar Disciple's Haubergeon
						i(240818),	-- Oronaar Disciple's Waistband
						i(240819),	-- Oronaar Disciple's Wargreaves
						i(240820),	-- Oronaar Disciple's Greaves
						i(240821),	-- Oronaar Disciple's Wristguards
						i(240822),	-- Oronaar Disciple's Grips
					}),
					filter(PLATE, {
						i(240662),	-- Praetorium Guard's Helmet
						i(240663),	-- Praetorium Guard's Spaulders
						i(240664),	-- Praetorium Guard's Breastplate
						i(240665),	-- Praetorium Guard's Greatbelt
						i(240666),	-- Praetorium Guard's Legguards
						i(240667),	-- Praetorium Guard's Sabatons
						i(240668),	-- Praetorium Guard's Wristguards
						i(240669),	-- Praetorium Guard's Gauntlets
					}),
				}),
			},
		}),
	}),
})));
