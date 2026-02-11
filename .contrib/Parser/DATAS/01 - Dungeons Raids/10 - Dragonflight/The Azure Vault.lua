-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	inst(1203, {	-- The Azure Vault
		["coord"] = { 38.9, 64.7, THE_AZURE_SPAN },
		["maps"] = {
			2073,	-- The Arcane Conservatory
			2074,	-- Upper Chamber
			2075,	-- Mausoleum of Legends
			2076,	-- Lower Chamber
			2077,	-- Crystal Chambers
		},
		["groups"] = {
			n(QUESTS, {
				q(71155, {	-- The Azure Vaults
					-- ["sourceQuests"] = { },	-- TODO
					["qg"] = 186188,	-- Sindragosa
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
				}),
				q(75388, {	-- The Azure Vaults
					-- ["sourceQuests"] = { },	-- TODO
					["qg"] = 190000,	-- Kalecgos
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_0 },
				}),
			}),
			n(ZONE_DROPS, {
				i(194255),	-- Pattern: Amice of the Blue (RECIPE!)
				i(194491),	-- Plans: Frostfire Legguards of Preparation (RECIPE!)
				i(194492),	-- Plans: Unstable Frostfire Belt (RECIPE!)
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2492, {	-- Leymor
					["crs"] = { 186644 },	-- Leymor
					["groups"] = {
						i(193634),	-- Burgeoning Seed
						i(193636),	-- Cinch of Forgotten Duty
						i(193635),	-- Infused Elemental Bands
						i(193638),	-- Ley-Line Tracer
						i(193637),	-- Spaulders of Wild Growth
						i(193633),	-- Unstable Arcane Loop
					},
				}),
				e(2505, {	-- Azureblade
					["crs"] = { 186739 },	-- Azureblade
					["groups"] = {
						i(193629),	-- Cloak of Lost Devotion
						i(193632),	-- Fear Striker Tz'onna
						i(193631),	-- Horizon Splitter
						i(193628, {	-- Tome of Unstable Power
							["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_6 },
						}),
						i(212685, {	-- Tome of Unstable Power
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(193630),	-- Twenty-Two-League Striders
					},
				}),
				e(2483, {	-- Telash Greywing
					["crs"] = { 186737 },	-- Telash Greywing
					["groups"] = {
						i(193648),	-- Azureblade's Work Gloves
						i(193647),	-- Custodian's Seal of Delusion
						i(193651),	-- Golden-Winged Rod
						i(193650),	-- Illusion Breaker's Wristguards
						i(193649),	-- Mirage Bindings
					},
				}),
				e(2508, {	-- Umbrelskul
					["crs"] = { 186738 },	-- Umbrelskul
					["groups"] = {
						ach(16272),	-- The Azure Vault
						i(193644),	-- Breastplate of Irreparable Madness
						i(193645),	-- Crystalized Bulwark
						i(193641),	-- Headwrap of the Abandoned
						i(193642),	-- Mantle of Yearned Freedom
						i(193646),	-- Refraction's Edge
						i(193643),	-- Stasis Freed Leggings
						i(193639, {	-- Umbrelskul's Fractured Heart
							["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_6 },
						}),
						i(212684, {	-- Umbrelskul's Fractured Heart
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(197127),	-- Highland Drake: Grand Thorn Horns (MM!)
						i(197140),	-- Highland Drake: Small Spotted Pattern (MM!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2508, {	-- Umbrelskul
					["crs"] = { 186738 },	-- Umbrelskul
					["groups"] = {
						ach(16273),	-- Heroic: The Azure Vault
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(16330),	-- You Must Be Made of Hide
				}),
				e(2483, {	-- Telash Greywing
					["crs"] = { 186737 },	-- Telash Greywing
					["groups"] = {
						ach(16445),	-- Icy What You Did There
					},
				}),
				e(2508, {	-- Umbrelskul
					["crs"] = { 186738 },	-- Umbrelskul
					["groups"] = {
						ach(16274),	-- Mythic: The Azure Vault
						ach(17101),	-- Mythic: The Azure Vault Guild Run
						ach(16331),	-- The Cracked Crystal
					},
				}),
			}),
		},
	})
})));
