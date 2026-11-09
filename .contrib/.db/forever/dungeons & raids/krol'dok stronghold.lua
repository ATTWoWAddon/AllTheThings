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
	},
});