-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, {
	cl(PALADIN, {
		filter(MOUNTS, {
			mount(13819, {	-- Warhorse (MOUNT!)
				["races"] = { HUMAN, DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 40,
			}),
		}),
	}),
	cl(WARLOCK, {
		filter(MOUNTS, {
			mount(5784, {	-- Felsteed (MOUNT!)
				["classes"] = { WARLOCK },
				["lvl"] = 40,
			}),
		}),
	}),
});
