-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(3039, {	-- Krol'dok Stronghold
	-- Blizzard lists it for levels 40-45.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16842,	-- Krol'dok Stronghold
	--coord = { 42.0, 21.5, MAP.BADLANDS },	-- Estimated from the Krol'dok Stronghold exploration area (17780, Riverglades); verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 40,
	groups = {
		n(QUESTS, {
			q(94982, {	-- Eye of Mugg
				qg = 257558,	-- Demar Brant
				coord = { 66.6, 81.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Eye of Mugg
						provider = { "i", 267086 },	-- Eye of Mugg
						cr = 258968,	-- Overseer Mugg
					}),
					i(279480),	-- Bigger Rock on Bigger Stick
					i(279852),	-- Rock on Stick
					i(279853),	-- Stick No Rock
				},
			}),
			q(94981, {	-- Key Ingredients [A]
				sourceQuest = 94980,	-- Krol'dok Moulding [A]
				qg = 259250,	-- Alphonse Dumas <Journeyman Blacksmith>
				coord = { 64.4, 82.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/4 Thick Leather
						provider = { "i", 4304 },	-- Thick Leather
					}),
					objective(2, {	-- 0/12 Iron Bar
						provider = { "i", 3575 },	-- Iron Bar
					}),
					i(267089),	-- Krol'dok Compound Key
				},
			}),
			q(94974, {	-- Key Ingredients [H]
				sourceQuest = 94973,	-- Krol'dok Moulding [H]
				qg = 256657,	-- Kreza Darkthorn <Weaponsmith & Armorcrafter>
				coord = { 59.8, 46.0, MAP.RIVERGLADES },
				races = HORDE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/4 Thick Leather
						provider = { "i", 4304 },	-- Thick Leather
					}),
					objective(2, {	-- 0/12 Iron Bar
						provider = { "i", 3575 },	-- Iron Bar
					}),
					i(267089),	-- Krol'dok Compound Key
				},
			}),
			q(94980, {	-- Krol'dok Moulding [A]
				qs = 267138,	-- Krol'dok Moulding (QS!)
				races = ALLIANCE_ONLY,
				lvl = 38,
			}),
			q(94973, {	-- Krol'dok Moulding [H]
				qs = 267137,	-- Krol'dok Moulding (QS!)
				races = HORDE_ONLY,
				lvl = 38,
			}),
			q(94984, {	-- Tome of Twilight
				-- TODO: Wowhead doesn't list the quest giver yet. A Contributor Report accepted it at 66.7, 81.1 in Riverglades, where Demar Brant and Ashe Amberhall both stand.
				sourceQuest = 94907,	-- A Small Favor
				races = ALLIANCE_ONLY,
				lvl = 39,
				groups = {
					objective(1, {	-- 0/1 Tome of Twilight
						provider = { "i", 267104 },	-- Tome of Twilight
						cr = 258964,	-- Nar'gurk
					}),
					i(279854),	-- Twilight Initiate's Belt
					i(279855),	-- Torn Cultist Cloak
				},
			}),
			q(94983, {	-- Twilight Mementos
				qg = 258023,	-- Sergeant Riftan
				coord = { 30.7, 49.1, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				lvl = 38,
				groups = {
					objective(1, {	-- 0/8 Twilight Bangle
						provider = { "i", 267234 },	-- Twilight Bangle
						crs = {
							258042,	-- Twilight Grunt
							258100,	-- Twilight Warlock
							258102,	-- Twilight Outrider
							258104,	-- Twilight Lieutenant
							258972,	-- Twilight Commander Zarmok
							268423,	-- Zalfan Moonshadow
						},
					}),
				},
			}),
			q(96771, {	-- Vengeance of the Highborne
				qg = 268425,	-- Ranath Nightstride
				coord = { 17.9, 66.0, MAP.ALTERAC_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Zalfan Moonshadow slain
						provider = { "n", 268423 },	-- Zalfan Moonshadow
					}),
				},
			}),
		}),
		e(3450, {	-- Slavecrusher Grox
			creatureID = 258966,	-- Slavecrusher Grox
		}),
		e(3452, {	-- Twilight Commander Zarmok
			creatureID = 258972,	-- Twilight Commander Zarmok
		}),
		e(3453, {	-- Handler Ashka
			creatureID = 259281,	-- War Handler Ashka
		}),
		e(3449, {	-- Nar'gurk
			creatureID = 258964,	-- Nar'gurk
		}),
		e(3451, {	-- Overseer Mugg
			creatureID = 258968,	-- Overlord Mugg
		}),
		n(ZONE_DROPS, {
			i(267137, {	-- Krol'dok Moulding (QS!)
				cr = 259256,	-- Tunk
			}),
			i(267138, {	-- Krol'dok Moulding (QS!)
				cr = 259256,	-- Tunk
			}),
		}),
	},
});