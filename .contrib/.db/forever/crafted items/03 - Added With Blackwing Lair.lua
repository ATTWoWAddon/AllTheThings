---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with the release of Phase 2 and Blackwing Lair.
root(ROOTS.Craftables, {
	prof(MINING, {
		header(HEADERS.Spell, 2656, {	-- Smelting
			i(17771, {	-- Enchanted / Elementium Bar
				["cost"] = ClassicCost({
					{ "i", 18562, 1 },	-- Elementium Ore
					{ "i", 12360, 10 },	-- Arcanite Bar
					{ "i", 17010, 1 },	-- Fiery Core
					{ "i", 18567, 3 },	-- Elemental Flux
				}),
			}),
		}),
	}),
});
