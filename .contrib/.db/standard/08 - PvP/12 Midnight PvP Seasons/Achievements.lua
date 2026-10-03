-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_13_0_0 } }, {
	n(RATED, {
		n(ACHIEVEMENTS, {
			-- RBG
			ach(61200, {	-- Battleground Blitz Medic: Midnight
				-- While the Filter is correct, the ACM/Cosmetic is hidden for any specs, even healers until you learn it.
				["classes"] = HEALERS,
				["groups"] = {
					i(255969),	-- Nightfall Strategist's Pennant (Cosmetic!)
				},
			}),
			-- Solo
			ach(61199, {	-- Solo Shuffle Medic: Midnight
				-- While the Filter is correct, the ACM/Cosmetic is hidden for any specs, even healers until you learn it.
				["classes"] = HEALERS,
				["groups"] = {
					i(255968),	-- Nightfall Legend's Pennant (Cosmetic!)
				},
			}),
		}),
	}),
}))));
