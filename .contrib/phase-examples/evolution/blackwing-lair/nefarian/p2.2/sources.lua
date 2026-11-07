-- Comparison excerpt (P2.1 / P2.2 / P3): same annotated Lua for all three stages.
-- Original phase writers and guards remain; only scope keys and applicability are added.
-- Pinned ATT source: 6f7b562aad5d78ffbc0d608e9627932d90272827.
-- .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/1.6 Blackwing Lair.lua
-- Selected source lines: 45-46, 54, 57, 62, 148-151, 416-421, 431-433, 441, 479-485,
-- 1055-1060, 1062, 1087, 1099-1100, 1139-1144. Retained source lines are verbatim.
-- Other metadata/prerequisites, bosses, rewards and caches are outside this sampled source.
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_THREE, {
	inst(742, {	-- Blackwing Lair
		progressionKey = "raid.bwl.common",
		provider = { "o", 179879 },	-- Orb of Command
		timeline = { ADDED_1_6_0 },
		groups = {
			-- #if SEASON_OF_DISCOVERY
			-- In Season of Discovery, this version of the instance has been deprecated and removed in favor of the raid.
			d(DIFFICULTY.LEGACY_RAID.PLAYER40, bubbleDownTimelineEventSelf(REMOVED_1_15_4, {
			-- #endif
			e(1536, {	-- Nefarian
				progressionKey = "raid.bwl.original",
				crs = {
					11583,	-- Nefarian
					10162,	-- Lord Victor Nefarius
				},
				groups = {
					i(19003, {	-- Head of Nefarian (A)
						races = ALLIANCE_ONLY,
					}),
					i(19364),	-- Ashkandi, Greatsword of the Brotherhood
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			})),
			applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, {
				flavors = { "sod" },
				progressionKey = "raid.bwl.sod20",
				timeline = { ADDED_1_15_4 },
				groups = {
					e(1536, {	-- Nefarian
						crs = {
							11583,	-- Nefarian
							10162,	-- Lord Victor Nefarius
						},
						groups = {
							i(19003),	-- Head of Nefarian (A)
							i(230818),	-- Ashkandi, Greatsword of the Brotherhood
						},
					}),
				},
			})),
			-- #endif
		},
	}),
})));
