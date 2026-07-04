---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(ACHIEVEMENTS, {
				ach(62649),	-- A Lone Wanderer
				ach(63630, {	-- Assault the Vault
					i(276801),	-- Venomous Coiler (MOUNT!)
				}),
				ach(62604),	-- Dance While Everyone Watches
				ach(63636, {	-- Fully Corroded
					["cr"] = 269485,	-- Altar of Corrosion
					["groups"] = { title(794) },	-- <Name> the Snake
				}),
				ach(63601),	-- Oppose the Foes
				ach(63653, {	-- Pro Poison Patroller
					i(276553),	-- Emerald Skyfang (MOUNT!)
				}),
				ach(62600),	-- Ritual Behavior
				ach(63598),	-- Roll the Patrol
				ach(63596),	-- Snake Stompin'
				ach(62601),	-- Soft Underbelly
				ach(63600),	-- Spike the Strike
				ach(63599),	-- Submerge the Incursion
				ach(63610),	-- The Honored Dead
			}),
		}),
	}),
}));
