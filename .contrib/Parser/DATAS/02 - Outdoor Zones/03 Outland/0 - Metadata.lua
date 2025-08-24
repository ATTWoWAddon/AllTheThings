---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	applyclassicphase(TBC_PHASE_ONE, m(OUTLAND, {
		["lore"] = "Outland is the shattered floating remnants of the destroyed world of Draenor, the homeworld of the orcs and refuge of the draenei. After the sundering of Draenor, Outland was thrown partially towards the Twisting Nether, and is now in a constant state of degradation. It became the domain of the pitlord Magtheridon, who was eventually deposed and replaced by Illidan Stormrage until his death at the Black Temple.",
		["icon"] = 236813,
		["zone-text-continent"] = true,
		["timeline"] = { ADDED_2_0_1 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1312, {	-- Bloody Rare (automated)
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(1262, {	-- Loremaster of Outland (A) (automated)
					-- #if BEFORE 5.0.4
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				-- #if BEFORE 5.0.4
				ach(1274, {	-- Loremaster of Outland (H) (automated)
					["timeline"] = { DELETED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				-- #endif
				ach(1311, {	-- Medium Rare
					["sym"] = {{"partial_achievement",1312}},	-- Bloody Rare
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(44),	-- Outland Explorer [7.0.3] / Explore Outland (automated)
				petbattle(ach(6587, { ["timeline"] = { ADDED_5_0_4 } })),	-- Outland Safari (automated)
				petbattle(ach(6614, { ["timeline"] = { ADDED_5_0_4 } })),	-- Outland Tamer (automated)
				petbattle(ach(6604, {	-- Taming Outland (automated)
					["timeline"] = { ADDED_5_0_4 },
				})),
			}),
		},
	})),
});
