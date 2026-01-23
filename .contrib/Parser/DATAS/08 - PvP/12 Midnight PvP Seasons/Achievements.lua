-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(RATED, {
		n(ACHIEVEMENTS, {
			-- RBG
			ach(61200, {	-- Battleground Blitz Medic: Midnight
				-- While the Filter is correct, the ACM/Toy is hidden for none healers until you learn it.
				-- Having it not filtered is providing information about the Toy which is good.
				--["classes"] = HEALERS,
				["groups"] = {
				--	i(227539),	-- Unbound Strategist's Pennant (TOY!)
				},
			}),
			-- Solo
			ach(61199, {	-- Solo Shuffle Medic: Midnight
				-- While the Filter is correct, the ACM/Toy is hidden for none healers until you learn it.
				-- Having it not filtered is providing information about the Toy which is good.
				--["classes"] = HEALERS,
				["groups"] = {
				--	i(227538),	-- Unbound Legend's Pennant (TOY!)
				},
			}),
		}),
	}),
}))));
