-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(RATED, {
		n(ACHIEVEMENTS, {
			-- RBG
			ach(61200, {	-- Battleground Blitz Medic: Midnight
				-- While the Filter is correct, the ACM/Cosmetic is hidden for none healers until you learn it.
				-- Having it not filtered is providing information about the Cosmetic which is good.
				--["classes"] = HEALERS,
				["groups"] = {
					i(255969),	-- Nightfall Strategist's Pennant (Cosmetic!)
				},
			}),
			-- Solo
			ach(61199, {	-- Solo Shuffle Medic: Midnight
				-- While the Filter is correct, the ACM/Cosmetic is hidden for none healers until you learn it.
				-- Having it not filtered is providing information about the Cosmetic which is good.
				--["classes"] = HEALERS,
				["groups"] = {
					i(255968),	-- Nightfall Legend's Pennant (Cosmetic!)
				},
			}),
		}),
	}),
}))));
