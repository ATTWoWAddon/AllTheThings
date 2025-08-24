-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1267, {	-- Priory of the Sacred Flame
		["coord"] = { 41.3, 49.3, HALLOWFALL },
		["maps"] = {
			2308,	-- Sanctified Grounds
			2309,	-- Priory of the Sacred Flame
		},
		["groups"] = {
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2571, {	-- Captain Dailcry
					["crs"] = { 207946 },
					["groups"] = {
						i(221118),	-- Flameforged Armguard
						-- #if BEFORE 11.2.0
						i(221116),	-- Glorious Defender's Poleaxe
						-- #endif
						i(221119),	-- Holybound Grips
						i(221121),	-- Honorbound Retainer's Sash
						i(221117),	-- Sanctified Priory Wall
						i(219308),	-- Signet of the Priory
						i(221120),	-- Stalwart Guardian's Boots
					},
				}),
				e(2570, {	-- Baron Braunpyke
					["crs"] = { 207939 },	-- Baron Braunpyke
					["groups"] = {
						i(221124),	-- Consecrated Baron's Bindings
						i(221123),	-- Devoted Plate Walkers
						i(221122),	-- Hand of Beledar
						i(221125),	-- Helm of the Righteous Crusade
						i(219309),	-- Tome of Light's Devotion
						i(221126),	-- Zealous Warden's Raiment
					},
				}),
				e(2573, {	-- Prioress Murrpray
					["crs"] = { 207940 },	-- Prioress Murrpray
					["groups"] = {
						ach(40590),	-- Priory of the Sacred Flame
						i(223115),	-- Formula: Enchant Ring - Radiant Critical Strike (RECIPE!)
						i(223116),	-- Formula: Enchant Ring - Radiant Haste (RECIPE!)
						i(223117),	-- Formula: Enchant Ring - Radiant Mastery (RECIPE!)
						i(223118),	-- Formula: Enchant Ring - Radiant Versatility (RECIPE!)
						i(223120),	-- Formula: Enchant Weapon - Authority of Radiant Power (RECIPE!)
						i(223098),	-- Pattern: Waders of the Unifying Flame (RECIPE!)
						i(219310),	-- Bursting Lightshard
						i(221129),	-- Divine Pyrewalkers
						i(221131),	-- Elysian Flame Crown
						i(221127),	-- Emberbrand Zweihander
						i(221200),	-- Radiant Necromancer's Band
						i(221203),	-- Reanimator's Pyreforged Shoulders
						i(221130),	-- Seraphic Wraps of the Ordained
						i(221128),	-- Starforged Seraph's Mace
					},
				}),
			}),
			-- #if AFTER 11.2.0
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2571, {	-- Captain Dailcry
					["crs"] = { 207946 },
					["groups"] = {
						i(221116),	-- Glorious Defender's Poleaxe
					},
				}),
			}),
			-- #endif
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				-- #if AFTER 11.2.0
				e(2570, {	-- Baron Braunpyke
					["crs"] = { 207939 },	-- Baron Braunpyke
					["groups"] = {
						i(252009, {	-- Bloodstained Memento
							["timeline"] = { ADDED_11_2_0 },
						}),
					},
				}),
				-- #endif
				e(2573, {	-- Prioress Murrpray
					["crs"] = { 207940 },	-- Prioress Murrpray
					["groups"] = {
						ach(40592),	-- Heroic: Priory of the Sacred Flame
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2, ADDED_11_1_0 } }, {
				e(2573, {	-- Prioress Murrpray
					["crs"] = { 207940 },	-- Prioress Murrpray
					["groups"] = {
						ach(40596),	-- Mythic: Priory of the Sacred Flame
					},
				}),
			})),
		},
	})
})));
