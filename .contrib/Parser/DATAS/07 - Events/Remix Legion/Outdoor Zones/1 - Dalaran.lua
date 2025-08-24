-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	m(LEGION_DALARAN, {
	--	["icon"] = 618798,
		["groups"] = {
			explorationHeader({
				visit_exploration(15177,{coord={47.2,87.7,LEGION_DALARAN}}),	-- Dalaran
			}),
			n(ACHIEVEMENTS, {
			}),
			n(QUESTS, {
			}),
			n(VENDORS, {
			}),
			n(ZONE_REWARDS, {
				n(ARMOR, {
					filter(CLOAKS, {
						i(240260),	-- Cape of Devouring Night
						i(241223),	-- Cloak of Devouring Night
						i(241758),	-- Draping Shawl of Devouring Night
						i(240604),	-- Lunarblight Leather Cloak
						i(240602),	-- Lunarblight Leather Shroud
						i(240259),	-- Shawl of Devouring Night
						i(240255),	-- Shroud of Devouring Night
					}),
					filter(CLOTH, {
						i(240354),	-- Amice of Night Eternal
						i(240351),	-- Belt of Night Eternal
						i(240349),	-- Boots of Night Eternal
						i(240348),	-- Cuffs of Night Eternal
						i(240347),	-- Gloves of Night Eternal
						i(240355),	-- Guise of Night Eternal
						i(240350),	-- Legwraps of Night Eternal
						i(240352),	-- Robe of Night Eternal
						i(240353),	-- Vestments of Night Eternal
					}),
					filter(LEATHER, {
						i(240775),	-- Lunarblight Leather Cowl
						i(240781),	-- Lunarblight Leather Cuffs
						i(240782),	-- Lunarblight Leather Grips
						i(240779),	-- Lunarblight Leather Legwraps
						i(240776),	-- Lunarblight Leather Spaulders
						i(240778),	-- Lunarblight Leather Strap
						i(240780),	-- Lunarblight Leather Striders
						i(240777),	-- Lunarblight Leather Tunic
					}),
					filter(MAIL, {
						i(240306),	-- Faceguard of Devouring Night
						i(240299),	-- Handguards of Devouring Night
						i(240304),	-- Haubergeon of Devouring Night
						i(240302),	-- Leggings of Devouring Night
						i(240305),	-- Spaulders of Devouring Night
						i(240301),	-- Stompers of Devouring Night
						i(240303),	-- Waistband of Devouring Night
						i(240300),	-- Wristguards of Devouring Night
					}),
					filter(PLATE, {
						i(240544),	-- Xorothian Battleplate
						i(240539),	-- Xorothian Gauntlets
						i(240543),	-- Xorothian Greatbelt
						i(240546),	-- Xorothian Helmet
						i(240541),	-- Xorothian Jackboots
						i(240542),	-- Xorothian Legguards
						i(240545),	-- Xorothian Shoulderguards
						i(240540),	-- Xorothian Wristguards
					}),
				}),
			}),
		},
	}),
}))));
