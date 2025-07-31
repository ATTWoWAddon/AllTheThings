-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1269, {	-- The Stonevault
		["coord"] = { 46.8, 8.5, THE_RINGING_DEEPS },
		["maps"] = { 2341 },	-- The Stonevault
		["groups"] = {
			n(QUESTS, {
				q(83108, {	-- Daily Diagnostics
					["sourceQuests"] = { 79354 },	-- The Machine Speakers
					["provider"] = { "n", 225533 },	-- Therkan
					["coord"] = { 47.3, 31.6, THE_RINGING_DEEPS },
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2572, {	-- E.D.N.A.
					["crs"] = { 210108 },	-- E.D.N.A
					["groups"] = {
						i(221074),	-- Augmented Refractor Cannon
						i(221073),	-- Earthen Nullification Aegis
						i(221078),	-- Endoskeletal Polecrank
						i(221076),	-- E.D.N.A. Stabilizers
						i(219315),	-- Refracting Aggression Module
						i(221075),	-- Reinforced Anti-Intruder Chainmail
						i(221077),	-- "Emergency Stop" Keychain
					},
				}),
				e(2579, {	-- Skarmorak
					["crs"] = { 210156 },	-- Skarmorak
					["groups"] = {
						i(221080),	-- Corpseleecher Grips
						i(221079),	-- Crystal-Fissure Girdle
						i(221081),	-- Guise of the Construct
						i(221084),	-- Skardyn Mercybringer
						i(219300),	-- Skarmorak Shard
						i(221082),	-- Tainted Earthshard Walkers
						i(221083),	-- Wardbreaker of the Fractured
					},
				}),
				e(2590, {	-- Master Machinists Brokk and Dorlita
					["crs"] = {
						213217,	-- Speaker Brokk
						213216,	-- Speaker Dorlita
					},
					["groups"] = {
						i(221088),	-- Anvilhide Cape
						i(221087),	-- Dorlita's Safety Belt
						i(221086),	-- Machinist's Searing Handguards
						i(221085),	-- Melodious Iron Songspire
						i(219301),	-- Overclocked Gear-a-Rang Launcher
						i(219302),	-- Scrapsinger's Symphony
					},
				}),
				e(2582, {	-- Void Speaker Eirich
					["crs"] = { 213119 },	-- High Speaker Eirich
					["groups"] = {
						ach(40643),	-- The Stonevault
						i(221091),	-- Cutting-Edge Sermon
						i(221093),	-- Deeply Corrupted Coil [Only Available as Warbound]
						i(221090),	-- Eirich's Fist of Deception
						i(219303),	-- High Speaker's Accretion
						i(221092),	-- Legplates of Broken Trust
						i(221095),	-- Shadowed Orator's Tunic
						i(221089),	-- Silver-Tongued Boltcaster
						i(221094),	-- Whispering Umbral Mantle
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2582, {	-- Void Speaker Eirich
					["crs"] = { 213119 },	-- High Speaker Eirich
					["groups"] = {
						ach(40644),	-- Heroic: The Stonevault
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2582, {	-- Void Speaker Eirich
					["crs"] = { 213119 },	-- High Speaker Eirich
					["groups"] = {
						ach(40648),	-- Mythic: The Stonevault
						i(226683),	-- Malfunctioning Mechsuit (QS!)
					},
				}),
			}),
		},
	})
})));
--]]
