-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(3001, {	-- The Shaper's Terrace
	-- Blizzard lists it for levels 58-60.
	--lore = "",
	icon = 409547,
	zoneTextAreaID = 16667,	-- The Shaper's Terrace
	--coord = { , MAP.UNGORO_CRATER },	-- The Shaper's Terrace (area 16985); entrance location unknown.
	timeline = { TIMELINE.ADDED_1_60_1 },
	lvl = 58,
	groups = {
		n(QUESTS, {
			
		}),
		e(3498, {	-- Titanosaur
			creatureID = 253201,	-- Titanosaur
		}),
		e(3499, {	-- Ravasaur Hunters
			crs = {
				253214,	-- Ravasaur Hunter
				262688,	-- Ravasaur Hunter
			},
		}),
		e(3500, {	-- Thunderhoof
			creatureID = 261812,	-- Thunderhoof
		}),
		e(3501, {	-- Venomridge
			creatureID = 261813,	-- Venomridge
		}),
		e(3507, {	-- Direhorn Matriarch
			creatureID = 262127,	-- Direhorn Matriarch
		}),
		e(3503, {	-- Cinder
			creatureID = 261974,	-- Cinder
		}),
		-- TODO: King Op's creatureID isn't on Wowhead yet; encounters without one crash the addon, so it stays commented out.
		--e(3504),	-- King Op
		e(3597, {	-- Snowtalon
			creatureID = 262297,	-- Snowtalon
		}),
		e(3505, {	-- Bolt
			creatureID = 262081,	-- Bolt
		}),
		e(3600, {	-- Vitrix
			creatureID = 272561,	-- Vitrix
		}),
		e(3502, {	-- Nanaya
			creatureID = 261809,	-- Nanaya
		}),
	},
});