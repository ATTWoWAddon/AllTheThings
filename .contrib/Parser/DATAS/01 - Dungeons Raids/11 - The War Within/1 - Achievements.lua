-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(40138, {	-- Algari Dungeoneer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40139,	-- Algari Dungeon Damage Dealer
				40140,	-- Algari Dungeon Healer
				40141,	-- Algari Dungeon Tank
			}},
			["groups"] = {
				iensemble(219115),	-- Versatile Peddler's Trinkets
			},
		}),
		ach(40139),	-- Algari Dungeon Damage Dealer
		ach(40140),	-- Algari Dungeon Healer
		ach(40141),	-- Algari Dungeon Tank
		ach(61565, {	-- War Within Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40374,	-- Heroic: Ara-Kara, City of Echoes
				40363,	-- Heroic: Cinderbrew Meadery
				40377,	-- Heroic: City of Threads
				40428,	-- Heroic: Darkflame Cleft
				40592,	-- Heroic: Priory of the Sacred Flame
				40601,	-- Heroic: The Dawnbreaker
				40637,	-- Heroic: The Rookery
				40644,	-- Heroic: The Stonevault
				41340,	-- Heroic: Operation: Floodgate
				42781,	-- Heroic: Eco-Dome Al'dani
			}},
			["timeline"] = { ADDED_12_0_0 },
			["groups"] = { i(221492) },	-- Moss Skipper (PET!)
		}),
	}),
})));
