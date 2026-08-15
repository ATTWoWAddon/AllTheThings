---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(ACHIEVEMENTS, {
				ach(62649, {	-- A Lone Wanderer
					["description"] = "During the Earth and Sky event, go to the Sky Altar and fly around the raid entrance, looking for the moving large blue orb."
				}),
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
				ach(62600, {	-- Ritual Behavior
					["description"] = "Petrified Egg spawns on the west wing, Spirit Urn spawns on the east wing, Venomous Ooze drops from the Venomous Giants in the middle.",
					["groups"] = {
						crit(113658, {	-- Petrified Egg
							["providers"] = {
								{ "o", 633913 },	-- Petrified Egg
							},
						}),
						crit(113659, {	-- Venomous Ooze
							["providers"] = {
								{ "n", 262909 },	-- Venomous Ooze
							},
						}),
						crit(113660, {	-- Spirit Urn
							["providers"] = {
								{ "o", 633908 },	-- Spirit Urn
							},
						}),
					}
				}),
				ach(63598, {	-- Roll the Patrol
					["description"] = "The Temple Patrols rotate every 10 minutes. Not all of them are available on any given week.",
					["groups"] = {
						crit(116176),	-- Broken Bonds
						crit(116177),	-- Slay the Restless
						crit(116180, {	-- Slay Children of Ula'tek
							["providers"] = {
								{ "n", 261973 },	-- Fading Spirit (Temple Patrol: Slay Children of Ula'tek)
							}
						}),
						crit(116181),	-- Siphon Venom
						crit(116182),	-- Scavenged Weapons
						crit(116184),	-- Breath and Bile
						crit(116186),	-- Congealed Venom
						crit(116187),	-- Dragged Below
						crit(116188, {	-- Vengeance for the Dead
							["providers"] = {
								{ "n", 263336 },	-- Vengeful Spirit (Temple Patrol: Vengeance for the Dead)
							},
						}),
						crit(116189, {	-- Ash to Ash
							["providers"] = {
								{ "n", 263346 },	-- Er'inye (Temple Patrol: Ash to Ash)
							},
						}),
						crit(116190),	-- Calming the Dead
						crit(116193, {	-- Laid to Rest
							["providers"] = {
								{ "n", 263339 },	-- Tortured Spirit (Temple Patrol: Laid to Rest)
							},
						}),
					},
				}),
				ach(63596),	-- Snake Stompin'
				ach(62601),	-- Soft Underbelly
				ach(63600),	-- Spike the Strike
				ach(63599),	-- Submerge the Incursion
				ach(63610),	-- The Honored Dead
			}),
		}),
	}),
}));
