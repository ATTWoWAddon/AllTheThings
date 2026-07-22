-- VENOMFALL_DEEPS (Nemesis Lair), 51.2, 30.3, MAP.MIDNIGHT.THE_COILED_ISLE
-- THE_RING_OF_GLORY, 71.2, 56.5, MAP.MIDNIGHT.THE_COILED_ISLE
-- GNARLDOR_ISLE, 64.4, 77.8, MAP.MIDNIGHT.THE_COILED_ISLE
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
			})),
			n(FACTIONS, {
				faction(2742),	-- Delves: Season 1
			}),
			n(QUESTS, {
				q(93519, {	-- Midnight Delves! (it pop on login but after cancel it	-- didn't re-pop)
					["description"] = "Pops on login. Do not abandon!",
					["isBreadcrumb"] = true,
				}),
				q(93501, {	-- The Season Starts: Midnight
					["sourceQuests"] = { 93519 },	-- Midnight Delves!
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
					["maps"] = { TORMENTS_RISE },
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
				q(92600, {	-- Cracked Keystone
					["provider"] = { "i", 253245 },	-- Cracked Keystone (QI!/QS!)
					["maps"] = ALL_REGULAR_DELVES_MID,
				}),
			}),
			n(REWARDS, sharedDataSelf({["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }}, {
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
			})),
			n(VENDORS, {
				n(242398, {	-- Naleidea Rivergleam
					["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["timeline"] = { ADDED_12_0_1_SEASONSTART },
					["groups"] = {
						i(253342, {	-- Beacon of Hope
							["cost"] = { { "c", UNDERCOIN, 5000 } },
							--["questID"] = ???,
						}),
						i(263178, {	-- Delver's Starter Kit (CI!)
							--["cost"] = { { "c", UNDERCOIN, 0 } },
						}),
						i(263188, {	-- Restored Coffer Key
							["cost"] = { { "c", UNDERCOIN, 2000 } },
						}),
						i(263191, {	-- Restored Coffer Key
							["cost"] = { { "c", UNDERCOIN, 2000 } },
						}),
					},
				}),
				n(242399, {	-- Telemancer Astrandis
					["coord"] = { 52.5, 78.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["timeline"] = { ADDED_12_0_1_SEASONSTART },
					["groups"] = {
						n(DECOR, {
							i(264175, {	-- Amani Strongbox (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 3
							}),
							i(264170, {	-- Ancient Kaldorei Coffer (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 4
							}),
							i(264007, {	-- Corewarden's Spoils (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 8
							}),
							i(263995, {	-- Delver's Bountiful Coffer (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 10
							}),
							i(263994, {	-- Fungal Chest (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 2
							}),
							i(264008, {	-- Root-Wrapped Reliquary (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 7
							}),
							i(263996, {	-- Twilight Tabernacle (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								--Renown 1
							}),
						}),
						filter(MISC, {
							i(263179, {	-- Delver's Cosmetic Surprise Bag (CI!) [Contains any unlearned cosmetic from delves]
								-- ["cost"] = { { "c", VOIDLIGHT_MARL, 0 } },
								-- Renown 0?
							}),
							i(262951, {	-- Sin'dorei Gravestone (CI!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 6
							}),
						}),
						filter(MOUNTS, {
							i(262500, {	-- Silvermoon's Arcane Defender (MOUNT!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 5
							}),
						}),
						filter(TOYS, {
							i(265100, {	-- Corewarden's Hearthstone (TOY!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 10
							}),
							i(264414, {	-- Midnight Delver's Flare Gun (TOY!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 7
							}),
						}),
					},
				}),
			}),--]]
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
