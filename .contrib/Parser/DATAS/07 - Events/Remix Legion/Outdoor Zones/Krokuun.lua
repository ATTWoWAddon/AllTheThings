-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(KROKUUN, {
				["icon"] = 1719207,
				["groups"] = {
					n(ACHIEVEMENTS, sharedData({ ["timeline"] = { ADDED_12_0_0 } }, {
						ach(42591),	-- Elusive Foes: Krokuun
						ach(42620),	-- Explore Krokuun
						ach(42588),	-- Hidden Treasures: Krokuun
					})),
					n(ZONE_REWARDS, {
						filter(CLOAKS, {
							i(240614),	-- Arinor Keeper's Cloak
							i(240629),	-- Doomsinger's Cape
							i(240610),	-- Doomsinger's Drape
							i(240601),	-- Oronaar Disciple's Drape
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
						}),
					}),
				},
			}),
		}),
	}),
})));
