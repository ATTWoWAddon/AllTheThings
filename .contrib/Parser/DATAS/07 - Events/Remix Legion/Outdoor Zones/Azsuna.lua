-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	m(AZSUNA, {
		["icon"] = 624970,
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(QUESTS, {
			}),
			n(RARES, {
				n(244782, {	-- Eye of Greed
					["coord"] = { 66.0, 45.9, AZSUNA },
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOAKS, {
					i(241690),	-- Cloak of the Rosy Combatant
					i(241707),	-- Conservatory Ward's Shroud
					i(242180),	-- Invasion Stalker's Draping Shroud
				}),
				filter(CLOTH, {
				}),
				filter(LEATHER, {
					i(240762),	-- Llothien Prowler's Belt
					i(240765),	-- Llothien Prowler's Cuffs
					i(240766),	-- Llothien Prowler's Gloves
					i(240761),	-- Llothien Prowler's Harness
					i(240759),	-- Llothien Prowler's Hat
					i(240763),	-- Llothien Prowler's Legguards
					i(240760),	-- Llothien Prowler's Shoulderguard
					i(240764),	-- Llothien Prowler's Waders
				}),
				filter(MAIL, {
				}),
				filter(PLATE, {
				}),
				n(WEAPONS, {
				}),
			}),
		},
	}),
}))));
