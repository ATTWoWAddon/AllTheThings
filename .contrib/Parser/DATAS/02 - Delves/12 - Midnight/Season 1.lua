DELVES_MID_S1 = createHeader({
	readable = "Delves MID S1",
	icon = 1604168,
	text = {
		en = "Delves MID S1",
		-- TODO: de = "",
		es = "Profundidades MID T1",
		mx = "Abismos MID T1",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Вылазки MID 1 сезон",
		cn = "至暗之夜地下堡第一季",
		tw = "至暗之夜探究第一季",
	},
});
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
root(ROOTS.Delves, expansion(EXPANSION.MID, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(DELVES_MID_S1, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
		})),
		n(CURIO, {
			--Combat
			i(249220),	-- Mantle of Holy Light // alpha
			i(249222),	-- Nether Entropic Kris
			--Utility
			i(249226),	-- Ebon Crown of Subjugation
			i(249225),	-- Mandate of Sacred Death // alpha
			i(249224),	-- Motionless Nulltide // alpha
		}),
		mapped(n(DELVE_COMPLETION,  bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			-- Currently unaware of objectIDs so treated just as reward
			i(254675),	-- Ancient Curio (Combat) (QI!/QS!)
			i(254674),	-- Ancient Curio (Utility) (QI!/QS!)
			i(260913),	-- Crimson Blessing
			i(262389),	-- Veiled Blessing // alpha
			--
			n(BOUNTIFUL, bubbleDownFiltered({
				["cost"] = {{"c", RESTORED_COFFER_KEY, 1}},
			},FILTERFUNC_itemID,{
				--["provider"] = { "o", XXXXX },	-- Bountiful Coffer
				["groups"] = {
					filter(BACK_F, {
						i(249624),	-- Osseoclad Paledrape
					}),
					filter(CLOTH, {
					}),
					filter(FINGER_F, {
						i(249620),	-- Vibrant Wilderloop // alpha
					}),
					filter(LEATHER, {
						-- Alpha data
						i(249638),	-- Osseoclad Bonecrushers
						i(249641),	-- Osseoclad Bonesteppers
						i(249644),	-- Osseoclad Ivory Wrist
						i(249637),	-- Osseoclad Marrowvest
						i(249642),	-- Osseoclad Razorspaulders
						i(249640),	-- Osseoclad Saberteeth
						i(249639),	-- Osseoclad Spinegrapplers
						i(249643),	-- Osseoclad Waistbone
					}),
					filter(MAIL, {
					}),
					filter(NECK_F, {
						i(249626),	-- Verdant Sprigstrand // alpha
					}),
					filter(PLATE, {
					}),
					filter(TRINKET_F, {
						--TODO: They probably gonna exist outside of season but idk?
					}),
				},
			})),
		}))),
		n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			--q(???),	-- Midnight Delves! (it pop on login but after cancel it -- didn't re-pop)
			q(93501, {	-- The Season Starts: Midnight
				--TODO: could be account wide one time quest per season, breadcrumb?
				--["sourceQuests"] = { XXX },	-- ???
				["provider"] = { "n", 242381 },	-- Valeera Sanguinar
				["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(93511, {	-- A Missing Member
				["sourceQuests"] = { 93501 },	-- The Season Starts: Midnight
				["provider"] = { "n", 255103 },	-- Reno Jackson
				["coord"] = { 52.4, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(93525, {	-- Nulling Nullaeus
				["sourceQuests"] = { 93511 },	-- A Missing Member
				["provider"] = { "n", 242381 },	-- Valeera Sanguinar
				["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(264413),	-- Dominating Victory (TOY!)
				},
			}),
			q(93943, {	-- Ancient Curiosity: Combat
				["provider"] = { "i", 254675 },	-- Ancient Curio (QI!/QS!)
				["maps"] = ALL_REGULAR_DELVES_MID,
			}),
			q(93945, {	-- Ancient Curiosity: Utility
				["provider"] = { "i", 254674 },	-- Ancient Curio (QI!/QS!)
				["maps"] = ALL_REGULAR_DELVES_MID,
			}),
		})),
		mapped(n(TREASURES, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			o(584752, {	-- Mislaid Curiosity
				["groups"] = {
					-- Let's figure out if there will be some pre-seasonal IDs for experience / different per season stuff
					-- Alpha items (NYI?)
					--i(249028),	-- Perfectly Preserved Kaja'Classic Original Taste
					--i(254675),	-- Ancient Curio (QS!)
					-- Boons (Renown 1)
					i(260884),	-- Boon of Abstinence (Rare) // alpha
					i(260911),	-- Boon of Fortitude (Rare)
					i(260878),	-- Boon of Possibilities (Rare)
					i(267239),	-- Boon of Possibilities (Epic)
					i(260882),	-- Boon of Potency (Rare)
					i(260879),	-- Boon of Power (Rare)
					i(267647),	-- Boon of Vigor (Uncommon)
					i(260910),	-- Boon of Vitality (Rare) // alpha
				},
			}),
			--o(584518, {	-- Bountiful Heavy Trunk
			--	["groups"] = {
			--	},
			--}),
			--o(584517, {	-- Heavy Trunk
			--	["groups"] = {
			--	},
			--}),
			--o(584519, {	-- Heavy Trunk
			--	["groups"] = {
			--	},
			--}),
			o(584512),	-- Nemesis Strongbox (Poor)
			o(584511, {	-- Nemesis Strongbox (Uncommon)
				["groups"] = {
					i(268297),	-- Rattling Bag o' Gold
				},
			}),
		}))),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			n(242398, {	-- Naleidea Rivergleam
				["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
				},
			}),
			n(242399, {	-- Telemancer Astrandis
				["coord"] = { 52.5, 78.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
		n(DELVES_MID_S1, {
			-- Seasonal Delver's Journey Rewards
			--q(),	--
		}),
	})),
}));
