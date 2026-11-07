-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2974, {	-- Blackmaw Hold
	-- Blizzard lists it for levels 55-60.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16554,	-- Blackmaw Hold
	--coord = { 37.2, 33.3, MAP.AZSHARA },	-- Blackmaw Hold (area 1216); verify the entrance.
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 55,
	groups = {
		n(QUESTS, {
			
		}),
		e(3315, {	-- Withermaw
			creatureID = 247195,	-- Withermaw
		}),
		e(3316, {	-- Impaan the Imprisoner
			creatureID = 247206,	-- Impaan the Imprisoner
		}),
		e(3327, {	-- Elder Shaman Bloodmane
			creatureID = 247209,	-- Elder Shaman Bloodmane
		}),
		e(3322, {	-- Bonesnout the Unbroken
			creatureID = 247198,	-- Bonesnout the Unbroken
		}),
		e(3334, {	-- Varrox Bleakhoof
			creatureID = 247234,	-- Varrox Bleakhoof
		}),
		e(3323, {	-- Blackmaw Behemoth
			creatureID = 247207,	-- Blackmaw Behemoth
		}),
		e(3336, {	-- Unbound Spirit
			creatureID = 247231,	-- Unbound Spirit
		}),
	},
});