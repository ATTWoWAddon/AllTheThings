-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(COMMON_DUNGEON_DROPS, {
		i(162460, {	-- Hydrocore
			["description"] = "Drops from any final bosses at Mythic or Heroic",
			["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 },
			["crs"] = {
				122968,	-- Yazma
				126983,	-- Harlan Sweete
				136160,	-- King Dazar <The First>
				134069,	-- Vol'zith the Whisperer
				128652,	-- Viq'Goth
				133392,	-- Avatar of Sethraliss
				129232,	-- Mogul Razdunk
				132713,	-- Mogul Razdunk
				133007,	-- Unbound Abomination
				127503,	-- Overseer Korgus
				131864,	-- Gorak Tul
			},
		}),
		i(162520, {	-- Recipe: Mystical Cauldron [Rank 2] (RECIPE!)
			["description"] = "Drops from any final bosses at Mythic",
			["crs"] = {
				122968,	-- Yazma
				126983,	-- Harlan Sweete
				136160,	-- King Dazar <The First>
				134069,	-- Vol'zith the Whisperer
				128652,	-- Viq'Goth
				133392,	-- Avatar of Sethraliss
				129232,	-- Mogul Razdunk
				132713,	-- Mogul Razdunk
				133007,	-- Unbound Abomination
				127503,	-- Overseer Korgus
				131864,	-- Gorak Tul
				-- #if AFTER 8.2.0
				150396,	-- Aerial Unit R-21/X
				150397,	-- King Mechagon
				144249,	-- Omega Buster
				-- #endif
			},
		}),
		i(165948, {	-- Tidalcore
			["description"] = "Drops from any final bosses at Mythic or Heroic",
			["timeline"] = { ADDED_8_1_0 },
			["crs"] = {
				122968,	-- Yazma
				126983,	-- Harlan Sweete
				136160,	-- King Dazar <The First>
				134069,	-- Vol'zith the Whisperer
				128652,	-- Viq'Goth
				133392,	-- Avatar of Sethraliss
				129232,	-- Mogul Razdunk
				132713,	-- Mogul Razdunk
				133007,	-- Unbound Abomination
				127503,	-- Overseer Korgus
				131864,	-- Gorak Tul
				-- #if AFTER 8.2.0
				150396,	-- Aerial Unit R-21/X
				150397,	-- King Mechagon
				144249,	-- Omega Buster
				-- #endif
			},
		}),
	}),
})));
