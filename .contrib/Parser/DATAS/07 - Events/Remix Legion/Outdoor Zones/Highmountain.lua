-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			["icon"] = 1409000,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42552),	-- Campaign: Highmountain
					ach(60804),	-- Elusive Foes: Highmountain
					ach(42579, {	-- Elusive Foes: Highmountain
						-- Did 60804 get removed/replaced?
						["timeline"] = { ADDED_12_0_0 },
					}),
					ach(60803),	-- Explore Highmountain
					ach(42528, {	-- Explore Highmountain
						-- Did 60803 get removed/replaced?
						["timeline"] = { ADDED_12_0_0 },
					}),
					ach(60805),	-- Hidden Treasures: Highmountain
					ach(42634, {	-- Hidden Treasures: Highmountain
						-- Did 60805 get removed/replaced?
						["timeline"] = { ADDED_12_0_0 },
					}),
					ach(42541, {	-- Highmountain
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42552,	-- Campaign: Highmountain
							42547,	-- Highmountain Tribe
							42533,	-- Looking for Group: Highmountain
							42642,	-- Tour Highmountain
						}},
						["groups"] = { i(246339) },	-- Duskytooth Fel Snooter (PET!)
					}),
					ach(42533, {	-- Looking for Group: Highmountain
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60825,	-- Neltharion's Lair
						}},
					}),
					ach(61109, {	-- Lorerunner of Highmountain
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42552,	-- Campaign: Highmountain
							61104,	-- Sojourner of Highmountain
						}},
					}),
					ach(61104),	-- Sojourner of Highmountain
					ach(42642, {	-- Tour Highmountain
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60804,	-- Elusive Foes: Highmountain
							60803,	-- Explore Highmountain
							60805,	-- Hidden Treasures: Highmountain
						}},
					}),
				}),
				n(FACTIONS, {
					faction(FACTION_HIGHMOUNTAIN_TRIBE, {
						n(ACHIEVEMENTS, {
							ach(42547, {	-- Highmountain Tribe
								--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Hanging Felsteel Cage (DECOR!)
							}),
						}),
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOAKS, {
						i(241665),	-- Druidic Fur Trim Cape
						i(247492),	-- Fashionable Autumn Cloak
					}),
					filter(CLOTH, {
						i(240718),	-- Wine-dark Royal Cowl
						i(240719),	-- Wine-dark Royal Epaulets
						i(240720),	-- Wine-dark Royal Doublet
						i(240721),	-- Wine-dark Royal Belt
						i(240722),	-- Wine-dark Royal Trousers
						i(240723),	-- Wine-dark Royal Boots
						i(240724),	-- Wine-dark Royal Armbands
						i(240725),	-- Wine-dark Royal Handwraps
					}),
					filter(LEATHER, {
						i(240643),	-- Highmountain Hide Boots
						i(240638),	-- Highmountain Hide Cap
						i(240645),	-- Highmountain Hide Gloves
						i(240642),	-- Highmountain Hide Legwraps
						i(240639),	-- Highmountain Hide Shoulders
						i(240641),	-- Highmountain Hide Strap
						i(240640),	-- Highmountain Hide Vest
						i(240644),	-- Highmountain Hide Wristguards
					}),
					filter(MAIL, {
						i(240812),	-- Highmountain Riverscale Boots
						i(240809),	-- Highmountain Riverscale Chainmail
						i(240810),	-- Highmountain Riverscale Clasp
						i(240807),	-- Highmountain Riverscale Helm
						i(240814),	-- Highmountain Riverscale Grips
						i(240808),	-- Highmountain Riverscale Pauldrons
						i(240811),	-- Highmountain Riverscale Wargreaves
						i(240813),	-- Highmountain Riverscale Wristguards
					}),
					filter(PLATE, {
						i(240696),	-- Thunderpeak Bone Battleplate
						i(240694),	-- Thunderpeak Bone Faceguard
						i(240701),	-- Thunderpeak Bone Gauntlets
						i(240697),	-- Thunderpeak Bone Girdle
						i(240695),	-- Thunderpeak Bone Spaulders
						i(240699),	-- Thunderpeak Bone Stompers
						i(240700),	-- Thunderpeak Bone Vambraces
						i(240698),	-- Thunderpeak Bone Wargreaves
					}),
				}),
			},
		}),
	}),
})));
