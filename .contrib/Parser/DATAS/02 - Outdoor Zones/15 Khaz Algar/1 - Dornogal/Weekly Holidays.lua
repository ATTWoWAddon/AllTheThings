---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(DORNOGAL, {
		n(WEEKLY_HOLIDAYS, {
			n(QUESTS, sharedData({			-- Normal Cache Quests
				["provider"] = { "n", 226919 },	-- Archivist Frithrun
				["coord"] = { 46.5, 49.3, DORNOGAL },
				["isWeekly"] = true,
				["groups"] = {
					i(226193, {	-- Cache of Nerubian Treasures (N)
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(234729, {	-- Cache of Undermine Treasures (N)
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				},
			}, {
				q(83363),					-- A Burning Path Through Time
				q(83360, {["timeline"] = { ADDED_11_0_7 }}),	-- A Fel Path Through Time
				q(83365),					-- A Frozen Path Through Time
				q(83364, {["timeline"] = { ADDED_11_0_7 }}),	-- A Savage Path Through Time
				q(83359, {["timeline"] = { ADDED_11_0_7 }}),	-- A Shattered Path Through Time
				q(83362, {["timeline"] = { ADDED_11_0_7 }}),	-- A Shrouded Path Through Time
			})),
			n(QUESTS, sharedData({			-- No Cache Quests
				["provider"] = { "n", 226919 },	-- Archivist Frithrun
				["coord"] = { 46.5, 49.3, DORNOGAL },
				["isWeekly"] = true,
			}, {
				pvp(q(83345)),				-- A Call to Battle
				-- #IF AFTER TWW
				-- #IF BEFORE MID
				pvp(q(47148)),				-- Something Different
				-- #ENDIF
				-- #ENDIF
				pvp(q(83358, {["timeline"] = { ADDED_11_0_5 }})),	-- The Arena Calls
				petbattle(pvp(q(83357, {	-- The Very Best
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}))),
				q(83366),					-- The World Awaits
			})),
			n(QUESTS, {
				q(84776, {	-- A Call to Delves
					["provider"] = { "n", 226919 },	-- Archivist Frithrun
					["coord"] = { 46.5, 49.3, DORNOGAL },
					["isWeekly"] = true,
					["groups"] = {
						i(229129, {	-- Cache of Delver's Spoils
							["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
						}),
					},
				}),
				q(83347, {	-- Emissary of War
					["provider"] = { "n", 226919 },	-- Archivist Frithrun
					["coord"] = { 46.5, 49.3, DORNOGAL },
					["isWeekly"] = true,
					["groups"] = {
						i(226194, {	-- Cache of Nerubian Treasures (H)
							["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
						}),
					},
				}),
			}),
		}),
	}),
})));