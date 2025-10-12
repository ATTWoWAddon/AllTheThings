-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	n(MYTHIC_PLUS, {
		n(ACHIEVEMENTS, {
			ach(11224, {	-- Realm First! Legion Keystone Master
				["u"] = REMOVED_FROM_GAME,
			}),
			ach(11181, {	-- Legion Keymaster
				["timeline"] = {
					ADDED_7_0_3,
					REMOVED_8_0_1,
					ADDED_11_2_5,
					REMOVED_LEGION_REMIX_END,
				},
				["groups"] = {
					crit(32353),	-- Eye of Azshara
					crit(32359),	-- Darkheart Thicket
					crit(32360),	-- Neltharion's Lair
					crit(32358),	-- Halls of Valor
					crit(32361),	-- Vault of the Wardens
					crit(32356),	-- Black Rook Hold
					crit(32357),	-- Maw of Souls
					crit(32355),	-- The Arcway
					crit(32354),	-- Court of Stars
				},
			}),
		}),
	}),
}));
