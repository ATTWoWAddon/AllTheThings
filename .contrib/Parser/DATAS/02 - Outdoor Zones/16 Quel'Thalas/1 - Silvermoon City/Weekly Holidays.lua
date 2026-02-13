---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(WEEKLY_HOLIDAYS, {
			n(QUESTS, sharedData({			-- Normal Cache Quests
				["provider"] = { "n", 256212 },	-- Archmage Aethas Sunreaver
				["coord"] = { 48.9, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
				["groups"] = {
					i(250116, {	-- Cache of Quel'Thalas Treasures (N)
						["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					}),
				},
			}, {
				--q(XXX),	-- A Burning Path Through Time
				--q(XXX),	-- A Fel Path Through Time
				--q(XXX),	-- A Frozen Path Through Time
				--q(XXX),	-- A Savage Path Through Time
				--q(XXX),	-- A Scarred Path Through Time
				q(93628),	-- A Shadowed Path Through Time
				--q(XXX),	-- A Shattered Path Through Time
				--q(XXX),	-- A Shrouded Path Through Time
				--q(XXX),	-- An Original Path Through Time
			})),
			n(QUESTS, sharedData({			-- No Cache Quests
				["provider"] = { "n", 256212 },	-- Archmage Aethas Sunreaver
				["coord"] = { 48.9, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
			}, {
				
				pvp(q(93593, {				-- A Call to Battle
					["_drop"] = { "g" },	-- Drop Mark of Honor
				})),
				--pvp(q(XXXX)),	-- The Arena Calls
				--petbattle(pvp(q(XXXX, {	-- The Very Best
				--	["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				--}))),
				--q(XXXX),	-- The World Awaits
			})),
			--[[n(QUESTS, {
				q(XXXX, {	-- A Call to Delves
					["provider"] = { "n", 226919 },	-- Archivist Frithrun
					["coord"] = { 46.5, 49.3, DORNOGAL },
					["isWeekly"] = true,
					["groups"] = { i(229129) },	-- Cache of Delver's Spoils
				}),
				q(XXXX, {	-- Emissary of War
					["provider"] = { "n", 226919 },	-- Archivist Frithrun
					["coord"] = { 46.5, 49.3, DORNOGAL },
					["isWeekly"] = true,
					["groups"] = {
						i(250117, {	-- Cache of Quel'Thalas Treasures (H)
							["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
						}),
					},
				}),
			}),]]--
		}),
	}),
}));
