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