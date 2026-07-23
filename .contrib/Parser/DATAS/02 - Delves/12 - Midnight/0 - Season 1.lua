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
};
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, {
	n(DELVES_MID_S1, {
		-- TODO 12.1 - Mark permanent Delve content from S1 with proper timelines
		["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
		["groups"] = {
			-- MID Season 1 Boss
			m(TORMENTS_RISE, {
				["icon"] = 7452103,
				["coord"] = { 61.2, 71.4, MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					-- n(DELVE_COMPLETION, {	-- TODO: check if still available in 12.1
					-- 	n(TREASURES, {
					-- 		filter(COSMETIC, {
					-- 		}),
					-- 		n(WEAPONS, {
					-- 		}),
					-- 	}),
					-- }),
					-- n(EXPLORATION, {
					-- }),
					n(252101, {	-- Nullaeus ?
						["questID"] = 92888,	-- triggers on ? and ?? difficulties
						["isDaily"] = true,
						["groups"] = {
							ach(61797, {	-- My Shady Nemesis
								i(263413),	-- Nullaeus Domaneye (COSMETIC!)
							}),
							i(262391),	-- Ominous Domanus (PET!)
						},
					}),
					n(252892, {	-- Nullaeus ??
						["questID"] = 95154,	-- triggered ?? difficulty
						["groups"] = {
							ach(61808, {	-- Fabled Let Me Solo Him: Nullaeus
								["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_0_1_SEASONSTART },
								["groups"] = {
									title(689),	-- <Name>, Fabled Vanquisher of Nullaeus
								},
							}),
							ach(61799, {	-- Let Me Solo Him: Nullaeus
								i(263222),	-- Arcanovoid Construct (MOUNT!)
							}),
							ach(61798, {	-- Lighting the Dark
								title(688),	-- <Name> the Ominous
							}),
							i(262391),	-- Ominous Domanus (PET!)
						},
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				mapped(ach(61800)),	-- Midnight Delves: Tier 4 (Season 1)
				mapped(ach(61801)),	-- Midnight Delves: Tier 5 (Season 1)
				mapped(ach(61802)),	-- Midnight Delves: Tier 6 (Season 1)
				mapped(ach(61803)),	-- Midnight Delves: Tier 7 (Season 1)
				mapped(ach(61804)),	-- Midnight Delves: Tier 8 (Season 1)
				mapped(ach(61805)),	-- Midnight Delves: Tier 9 (Season 1)
				mapped(ach(61806)),	-- Midnight Delves: Tier 10 (Season 1)
				mapped(ach(61807, {	-- Midnight Delves: Tier 11 (Season 1)
					title(550),	-- High Explorer <Name>
				})),
				ach(61796, {	-- Midnight: Journey's End (Season 1)
					title(772, { ["timeline"] = { ADDED_12_0_5 } }),	-- Void Breacher <Name>
				}),
			}),
			n(CURIO, {
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
					},
				}),
				n(242399, {	-- Telemancer Astrandis
					["coord"] = { 52.5, 78.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["timeline"] = { ADDED_12_0_1_SEASONSTART },
					["groups"] = {
						filter(MISC, {
							i(263179, {	-- Delver's Cosmetic Surprise Bag (CI!) [Contains any unlearned cosmetic from delves]
								-- ["cost"] = { { "c", VOIDLIGHT_MARL, 0 } },
								-- Renown 0?
							}),
							-- # if BEFORE 12.1.0
							i(262951, {	-- Sin'dorei Gravestone (CI!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 6
							}),
							-- #endif
						}),
						filter(MOUNTS, {
							i(262500, {	-- Silvermoon's Arcane Defender (MOUNT!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 5
							}),
						}),
						-- #if BEFORE 12.1.0
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
						-- #endif
					},
				}),
			}),
		},
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, {
		["timeline"] = { ADDED_12_0_1_SEASONSTART },
		["groups"] = {
			n(DELVES_MID_S1, {
				-- Seasonal Delver's Journey Rewards
				--automated stuff
				--q(93882),	-- Restored Coffer Key (itemID 263188)
				--q(93883),	-- Restored Coffer Key (itemID 263191)

				--q(93686),	-- tiggered after a delve
				q(95155),	-- Nullaeus ?
				q(96416),	-- Nullaeus ??
			}),
		},
	}),
}))
