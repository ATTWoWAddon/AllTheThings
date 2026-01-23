--DELVES_MID_S2 = createHeader({
--	readable = "Delves MID S2",
--	icon = 1604168,
--	text = {
--		en = "Delves MID S2",
--		-- TODO: de = "",
--		es = "Profundidades MID T2",
--		mx = "Abismos MID T2",
--		-- TODO: fr = "",
--		-- TODO: it = "",
--		-- TODO: ko = "",
--		-- TODO: pt = "",
--		ru = "Вылазки MID 2 сезон",
--		cn = "至暗之夜地下堡第二季",
--		tw = "至暗之夜探究第二季",
--	},
--});
--DELVES_MID_S3 = createHeader({
--	readable = "Delves MID S3",
--	icon = 1604168,
--	text = {
--		en = "Delves MID S3",
--		-- TODO: de = "",
--		es = "Profundidades MID T3",
--		mx = "Abismos MID T3",
--		-- TODO: fr = "",
--		-- TODO: it = "",
--		-- TODO: ko = "",
--		-- TODO: pt = "",
--		ru = "Вылазки MID 3 сезон",
--		cn = "至暗之夜地下堡第三季",
--		tw = "至暗之夜探究第三季",
--	},
--});
-- #if AFTER 12.0.0
local ALL_REGULAR_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	-- SHADOWGUARD_POINT,	-- MAPID MISSING
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
};
local ALL_THE_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	-- SHADOWGUARD_POINT,	-- MAPID MISSING
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
};
-- #endif
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	n(ACHIEVEMENTS, {
	}),
	mapped(n(DELVE_COMPLETION, {
		filter(CONSUMABLES, {
		}),
		filter(MISC, {
			-- Currency
			--currency(),	-- ??
			-- Display (reward) only (not actually an item
			--TODO: move it into Season 1 file, if needed
			i(254250),	-- Bountiful Coffer
			i(257387),	-- Bountiful Heavy Trunk
			--i(232371),	-- Companion Experience (Delver's Call reward) // alpha item
			i(257382),	-- Companion Experience (Delve reward UI)
			i(263488),	-- Companion Experience (Delver's Call reward)
			--i(257386),	-- Heavy Trunk // alpha item
			--i(257379),	-- Player Experience (Epic) // alpha item
			i(265714),	-- Trovehunter's Bounty
			-- Items and different things
			i(262586),	-- Primeval Arcane Remnant (QI!/QS!)
		}),
		filter(RECIPES, {
		}),
		n(ARMOR, {
			filter(BACK_F, {
			}),
			filter(CLOTH, {
			}),
			filter(FINGER_F, {
			}),
			filter(LEATHER, {
			}),
			filter(MAIL, {
			}),
			filter(NECK_F, {
			}),
			filter(PLATE, {
			}),
			filter(TRINKET_F, {
			}),
		}),
		n(WEAPONS, {
			i(259462),	-- Thorneedle
			i(260187),	-- Underbrush Render
		}),
	})),
	n(FACTIONS, {
	}),
	n(HIDDEN_QUESTS, {
		-- Valeera didn't fire hqts on leveling during beta, but have them on alpha. Did they change tech for it?
		--hqt(92093),	-- Unlock Ability 7 - Level 8 (pop when Valeera obtain level 9 on alpha)
		--hqt(92758),	-- Level 10 (not even sure what level she was)
		--hqt(92760),	-- Level 12 (not even sure what level she was)
		--hqt(92761),	-- Level 13 (not even sure what level she was)
		--hqt(92762),	-- Level 14 (She was level 13, actually, according to notes)
	}),
	n(QUESTS, {
		q(93784, {	-- A Gnawing Void of Curiosity
			["provider"] = { "i", 262586 },	-- Primeval Arcane Remnant (QI!/QS!)
			["isWeekly"] = true,
		}),
	}),
	n(RARES, {
		-- TODO: Alex - I don't think there any point to source them but in case there will be achievement for it or whatever
		--n(207482),	-- Invasive Sporecap // alpha
	}),
	mapped(n(TREASURES, {
		o(584752, {	-- Mislaid Curiosity
			["description"] = "Contains Chunk of Companion Experience tokens.",
			["timeline"] = { ADDED_12_0_X_LAUNCH },
			["groups"] = {
				-- Let's figure out if there will be some pre-seasonal IDs for experience
				i(254756),	-- Chunk of Companion Experience (Uncommon)
				i(254757),	-- Chunk of Companion Experience (Rare)
				i(254748),	-- Chunk of Companion Experience (Epic)
			},
		}),
	})),
	n(VENDORS, {
		n(242398, {	-- Naleidea Rivergleam
			["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
			["groups"] = {

			},
		}),
		n(242399, {	-- Telemancer Astrandis
			["coord"] = { 52.5, 78.9, MAP.MIDNIGHT.SILVERMOON_CITY },
			["groups"] = {
				--Rewards locked behind Seasonal Delver's Journey progress.
			},
		}),
	}),
	--[[m(DELVE_NAME, {
		["icon"] = ,
		["coord"] = { X, Y, MAPID },
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- Delves: The Waterworks
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { 47.1, 31.9, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
		},
	}),]]--
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
		--n(BOUNTIFUL, sharedData({
		--	["isDaily"] = true,
		--},{	-- Bountiful Delve runs
		--	--q(),	-- delveName
		--	-- One time rep bonus from Bountiful Delves
		--	--q(),	-- factionName
		--})),

		-- Restored Coffer Key (Pop from any weekly activity, orders (of activity) doesn't matter)
		--q(93275, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 1st (could be wrong and it is rep lockout for Unity Against the Void?)

		-- Weekly summon boss questID
		--hqt(, {	--
		--	["name"] = "Seasonal delve boss lockout"
		--	["providers"] = {
		--		{"i",253342},	-- Beacon of Hope
		--	},
		--	["timeline"]={ADDED_12_0_X_SEASONSTART},
		--	["isWeekly"] = true,
		--}),
	})),
}));
