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
				-- ["icon"] = [[~_.asset("Delves_Nerubian")]],
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
								i(263413),	-- Nullaeus Domaneye
							}),
						},
					}),
					n(252892, {	-- Nullaeus ??
						["questID"] = 95154,	-- triggered ?? difficulty
						["groups"] = {
							ach(61808, {	-- Fabled Let Me Solo Him: Nullaeus
								["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_0_1_SEASONSTART },
							}),
							ach(61799, {	-- Let Me Solo Him: Nullaeus
								i(263222),	-- Arcanovoid Construct (MOUNT!)
							}),
							ach(61798),	-- Lighting the Dark
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
				ach(61796),	-- Midnight: Journey's End (Season 1)
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
				i(253245),	-- Cracked Keystone (QI!/QS!)
				i(268297),	-- Rattling Bag o' Gold
				i(252415),	-- Trovehunter's Bounty
				--Blessings
				i(264669),	-- Blessing of Potency
				i(264670),	-- Blessing of Zeal
				i(260913),	-- Crimson Blessing
				i(260924),	-- Sentinel's Blessing
				i(262389),	-- Veiled Blessing // alpha
			})),
			n(QUESTS, {
				q(93519, {	-- Midnight Delves! (it pop on login but after cancel it	-- didn't re-pop)
					["description"] = "Pops on login",
				}),
				q(93501, {	-- The Season Starts: Midnight
					--TODO: could be account wide one time quest per season, breadcrumb?
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
			mapped(n(TREASURES, {
				o(584752, {	-- Mislaid Curiosity
					["groups"] = {
						-- Let's figure out if there will be some pre-seasonal IDs for experience / different per season stuff
						-- Alpha items (NYI?)
						--i(249028),	-- Perfectly Preserved Kaja'Classic Original Taste
						--i(254675),	-- Ancient Curio (QS!)
						--i(260910),	-- Boon of Vitality (Rare) // alpha
						-- Boons (Renown 1)
						i(260884),	-- Boon of Abstinence (Rare)
						i(267241),	-- Boon of Abstinence (Epic)
						i(260911),	-- Boon of Fortitude (Rare)
						i(267240),	-- Boon of Fortitude (Epic)
						i(260878),	-- Boon of Possibilities (Rare)
						i(267239),	-- Boon of Possibilities (Epic)
						i(260882),	-- Boon of Potency (Rare)
						i(267238),	-- Boon of Potency (Epic)
						i(260879),	-- Boon of Power (Rare)
						i(267237),	-- Boon of Power (Epic)
						i(267647),	-- Boon of Vigor (Uncommon)
						i(267649),	-- Boon of Vigor (Rare)
						i(267648),	-- Boon of Vigor (Epic)
					},
				}),
				--TODO Should these really be in the seasonal file vs the midnight delves file? Since when to objects change per season
				o(584514, {	-- Bountiful Coffer
					["groups"] = {
					},
				}),
				o(584515, {	-- Bountiful Heavy Trunk
					["groups"] = {
					},
				}),
				o(584518, {	-- Bountiful Heavy Trunk
					["groups"] = {
					},
				}),
				o(584517, {	-- Heavy Trunk
					["groups"] = {
					},
				}),
				o(584519, {	-- Heavy Trunk
					["groups"] = {
					},
				}),
				o(584512),	-- Nemesis Strongbox (Poor)
				o(584511),	-- Nemesis Strongbox (Uncommon)
				o(584509),	-- Nemesis Strongbox (Rare)
				o(584508, {	-- Nemesis Strongbox (Epic)
					["groups"] = {
						i(254869),	-- Chunk of Companion Experience (Epic)
						-- TODO: Don't ask me, ask Blizzard.
						i(264342),	-- Cosmic Void Cache (DECOR!)
					},
				}),
				o(581922),	-- Hidden Trove
				o(584503, {	-- Grand Sanctified Spoils (Rare, if it has different version of it)
					["groups"] = {
						i(254983),	-- Assassin's Subtle Tea
					},
				}),
				o(584504, {	-- Sanctified Spoils
					["groups"] = {
						i(254983),	-- Assassin's Subtle Tea
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
						i(263178, {	-- Delver's Starter Kit
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
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 3
							}),
							i(264170, {	-- Ancient Kaldorei Coffer (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 4
							}),
							i(264007, {	-- Corewarden's Spoils (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 8
							}),
							i(263995, {	-- Delver's Bountiful Coffer (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 10
							}),
							i(263994, {	-- Fungal Chest (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 2
							}),
							i(264008, {	-- Root-Wrapped Reliquary (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 7
							}),
							i(263996, {	-- Twilight Tabernacle (DECOR!)
								["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								--Renown 1
							}),
						}),
						filter(MISC, {
							i(263179, {	-- Delver's Cosmetic Surprise Bag
								-- ["cost"] = { { "c", VOIDLIGHT_MARL, 0 } },
								-- Renown 0?
								-- Just sym the cosmetic header
							}),
							i(262951, {	-- Sin'dorei Gravestone
								["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								-- Renown 6
								--["questID"] = ???,
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
				--q(92601),	-- pop after looting Cracked Keystone
				--q(93742),	-- pop in first delve (Atal'Aman) after ability to loot catalyst charges was obtained (achievementID 61519 - Midnight Season 1: Catalyst Unbound)
				--automated stuff
				--q(93880),	-- Delver's Starter Kit (itemID 263178)
				--q(93881),	-- Delver's Cosmetic Surprise Bag (itemID 263179)
				--q(93882),	-- Restored Coffer Key (itemID 263188)
				--q(93883),	-- Restored Coffer Key (itemID 263191)
				--q(93859),	-- Sin'dorei Gravestone (itemID 262951)
			}),
		},
	}),
}))
