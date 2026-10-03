---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	applyclassicphase(TBC_PHASE_ONE, m(OUTLAND, {
		["lore"] = "Outland is the shattered floating remnants of the destroyed world of Draenor, the homeworld of the orcs and refuge of the draenei. After the sundering of Draenor, Outland was thrown partially towards the Twisting Nether, and is now in a constant state of degradation. It became the domain of the pitlord Magtheridon, who was eventually deposed and replaced by Illidan Stormrage until his death at the Black Temple.",
		["icon"] = 236813,
		["zone-text-continent"] = true,
		["timeline"] = { ADDED_2_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1312, {	-- Bloody Rare (automated)
					["timeline"] = { ADDED_3_0_2 },
				}),
				header(HEADERS.Achievement, 62460, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {	-- Family Battler of Outland
					petbattle(ach(62460, {	-- Family Battler of Outland (automated)
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							62466,	-- Aquatic Battler of Outland
							62467,	-- Beast Battler of Outland
							62468,	-- Critter Battler of Outland
							62469,	-- Dragonkin Battler of Outland
							62470,	-- Elemental Battler of Outland
							62471,	-- Flying Battler of Outland
							62472,	-- Humanoid Battler of Outland
							62473,	-- Magic Battler of Outland
							62474,	-- Mechanical Battler of Outland
							62475,	-- Undead Battler of Outland
						}},
						["timeline"] = { ADDED_12_1_0 },
						["groups"] = { i(270191) },	-- Lil'Kruul's Hilt (PET!)
					})),
					petbattle(ach(62466)),	-- Aquatic Battler of Outland
					petbattle(ach(62467)),	-- Beast Battler of Outland
					petbattle(ach(62468)),	-- Critter Battler of Outland
					petbattle(ach(62469)),	-- Dragonkin Battler of Outland
					petbattle(ach(62470)),	-- Elemental Battler of Outland
					petbattle(ach(62471)),	-- Flying Battler of Outland
					petbattle(ach(62472)),	-- Humanoid Battler of Outland
					petbattle(ach(62473)),	-- Magic Battler of Outland
					petbattle(ach(62474)),	-- Mechanical Battler of Outland
					petbattle(ach(62475)),	-- Undead Battler of Outland
				})),
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
				achpart(1311, 1312, {	-- Medium Rare
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
