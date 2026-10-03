-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

battleground(MAP.DARKSPEAR_ISLANDS, {
	--["lore"] = "",
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["icon"] = 441150,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(62049, {	-- Master of Darkspear Islands
				["races"] = HORDE_ONLY,
			}),
			ach(64029, {	-- Master of Darkspear Islands
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(FACTIONS, {
			faction(2798, {	-- Darkspear Raiders
				["races"] = HORDE_ONLY,
			}),
			faction(2799, {	-- Theramore Expeditionary Force
				["races"] = ALLIANCE_ONLY,
			}),
		}),
	},
});
