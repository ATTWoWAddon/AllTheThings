DELVES_MID_S2 = createHeader({
	readable = "Delves MID S2",
	icon = 1604168,
	text = {
		en = "Delves MID S2",
		-- TODO: de = "",
		es = "Profundidades MID T2",
		mx = "Abismos MID T2",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Вылазки MID 2 сезон",
		cn = "至暗之夜地下堡第二季",
		tw = "至暗之夜探究第二季",
	},
});
local ALL_REGULAR_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	SHADOWGUARD_POINT,
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	--TORMENTS_RISE,
	TWILIGHT_CRYPTS,
	-- #if AFTER 12.1.0
	GNARLDOR_ISLE,
	THE_RING_OF_GLORY,
	-- VENOMFALL_DEEPS,
	-- #endif
};
local ALL_THE_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	SHADOWGUARD_POINT,
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
	-- #if AFTER 12.1.0
	GNARLDOR_ISLE,
	THE_RING_OF_GLORY,
	VENOMFALL_DEEPS,
	-- #endif
};
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, {
	n(DELVES_MID_S2, {
		["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
		["groups"] = {
			-- MID Season 2 Boss
			m(VENOMFALL_DEEPS, {
				--["icon"] = 7452103,
				["coord"] = { 51.2, 30.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				["groups"] = {
					--n(XXXXXX, {	-- Azta'rec ?
						--["questID"] = XXXXX,	-- triggers on ? and ?? difficulties
						--["isDaily"] = true,
						--["groups"] = {
							ach(63326, {	-- My Venomous Nemesis
								i(276163),	-- Apophic Patagia (COSMETIC!)
							}),
						--},
					--}),
					--n(XXXXXX, {	-- Azta'rec ??
						--["questID"] = XXXXX,	-- triggered ?? difficulty
						--["groups"] = {
							ach(63334, {	-- Fabled Let Me Solo Him: Azta'rec
								["timeline"] = { ADDED_12_1_0, REMOVED_12_1_0 },
								["groups"] = {
									title(776),	-- <Name>, Fabled Vanquisher of Azta'rec
								},
							}),
							ach(63333, {	-- Let Me Solo Him: Azta'rec
								i(275657),	-- Apophic Soul Crusher (MOUNT!)
							}),
							ach(63332, {	-- Purging the Poison
								title(775),	-- <Name> the Poisonous
							}),
						--},
					--}),
				},
			}),
			n(ACHIEVEMENTS, {
				mapped(ach(62889)),	-- Midnight Delves: Tier 4 (Season 2)
				mapped(ach(62890)),	-- Midnight Delves: Tier 5 (Season 2)
				mapped(ach(62891)),	-- Midnight Delves: Tier 6 (Season 2)
				mapped(ach(62892)),	-- Midnight Delves: Tier 7 (Season 2)
				mapped(ach(62893)),	-- Midnight Delves: Tier 8 (Season 2)
				mapped(ach(62894)),	-- Midnight Delves: Tier 9 (Season 2)
				mapped(ach(62895)),	-- Midnight Delves: Tier 10 (Season 2)
				mapped(ach(62897, {	-- Midnight Delves: Tier 11 (Season 2)
					title(550),	-- High Explorer <Name>
				})),
				ach(63433, {	-- Midnight: Journey's End (Season 2)
					-- TITLE!
				}),
			}),
		--[[	n(CURIO, {
				--Combat
				i(257755),	-- Holy Bounding Hand Grenade
				i(249220),	-- Mantle of Stars
				i(249222),	-- Nether Entropic Kris
				i(257683),	-- Porcelain Blade Tip
				i(249221),	-- Sanctum's Edict
				--Utility
				i(249226),	-- Ebon Crown of Subjugation
				i(249225),	-- Mandate of Sacred Death
				i(249224),	-- Motionless Nulltide
				i(257866),	-- Overflowing Voidspire
				i(257768),	-- Time Lost Edict
			}),
			mapped(n(DELVE_COMPLETION, {
				-- Currently unaware of objectIDs so treated just as reward
				i(254675),	-- Ancient Curio (Combat) (QI!/QS!)
				i(254674),	-- Ancient Curio (Utility) (QI!/QS!)
				i(253245),	-- Cracked Keystone (QI!/QS!/CI!)
				i(268297),	-- Rattling Bag o' Gold
				i(252415),	-- Trovehunter's Bounty
				-- Blessings
				i(264669),	-- Blessing of Potency
				i(264670),	-- Blessing of Zeal
				i(260913),	-- Crimson Blessing
				i(260924),	-- Sentinel's Blessing
				i(262389),	-- Veiled Blessing
				-- Bonus roll
				i(268969, {["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }}),	-- Nebulous Voidcache: Delver's Trove
			})),--]]
			n(FACTIONS, {
				faction(2796),	-- Delves: Season 2
			}),
			n(QUESTS, {
				q(97454, {	-- Seasonal Refresher: Midnight
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(97321, {	-- Slithering Spoils
					["sourceQuest"] = 97454,	-- Seasonal Refresher: Midnight
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(277949),	-- Sizzling Venom (QI!)
						o(661347, {	-- Slithersoul Spoils
							i(277934),	-- Slithersoul Spoils (QI!)
						}),
					},
				}),
				q(97482, {	-- Fangs for the Memories
					["sourceQuest"] = 97321,	-- Slithering Spoils
					["qg"] = 242381,	-- Valeera Sanguinar
					["coord"] = { 52.5, 78.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["maps"] = { VENOMFALL_DEEPS },
					["groups"] = { i(275988) },	-- Corrosive Victory (TOY!)
				}),
			}),
			--[[n(REWARDS, sharedDataSelf({["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }}, {
				i(268650, {	-- Ascendant Voidshard
					i(268552),	-- Ascendant Voidcore
				}),
			})),
			mapped(n(TREASURES, {
				o(618495, {	-- Nullaeus Cache
					["questID"] = 92887,
					["isWeekly"] = true,
					["cost"] = { { "i", 253342, 1 } },	-- Beacon of Hope
					["sym"] = {{"select","itemID",
					--	264971,	-- Annihilation Rod (COSMETIC!)
					--	264970,	-- Oblivion's Edge (COSMETIC!)
						265368,	-- Twilight Destroyer (COSMETIC!)
						265366,	-- Twilight Executioner (COSMETIC!)
						265367,	-- Twilight Fang (COSMETIC!)
					}},
					["groups"] = {
						i(262391),	-- Ominous Domanus (PET!)
						i(264971),	-- Annihilation Rod (COSMETIC!)
						i(264970),	-- Oblivion's Edge (COSMETIC!)
					},
				}),
			})),--]]
			n(VENDORS, {
				n(242398, {	-- Naleidea Rivergleam
					["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(275978, {	-- Delver's Starter Kit (CI!)
							--["cost"] = { { "c", UNDERCOIN, 0 } },
						}),
					},
				}),
			}),
		},
	}),
}))

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, {
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			n(DELVES_MID_S2, {
			}),
		},
	}),
}))--]]
