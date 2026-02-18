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
root(ROOTS.Delves, expansion(EXPANSION.MID, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(DELVES_MID_S1, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
		})),
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
		mapped(n(DELVE_COMPLETION,  bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
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
			--
			n(BOUNTIFUL, bubbleDownFiltered({
				["cost"] = { { "c", RESTORED_COFFER_KEY, 1 } },
			},FILTERFUNC_itemID,{
				["provider"] = { "o", 584514 },	-- Bountiful Coffer
				["groups"] = {
					n(ARMOR, {
						filter(BACK_F, {
							i(249625),	-- Elder Mossveil
							i(249624),	-- Osseoclad Paledrape
							i(249628),	-- Rampant Bramblecloack
							i(249619),	-- Sprawling Mycoshroud
						}),
						filter(CLOTH, {
							i(249634),	-- Sprawling Fibershells
							i(249635),	-- Sprawling Rhizomecord
							i(249630),	-- Sprawling Rootpads
							i(249633),	-- Sprawling Rootstockings
							i(249629),	-- Sprawling Rootunic
							i(249632),	-- Sprawling Stoloncollar
							i(249631),	-- Sprawling Tendrils
							i(249636),	-- Sprawling Wristroots
						}),
						filter(FINGER_F, {
							i(249623),	-- Blooming Leafcoil
							i(249622),	-- Spiritseal Ring
							i(249621),	-- Voodoo Band
							i(249620),	-- Vibrant Wilderloop
						}),
						filter(LEATHER, {
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
							i(249652),	-- Elder Mossbands
							i(249651),	-- Elder Mosscinch
							i(249646),	-- Elder Mossclogs
							i(249647),	-- Elder Mossfeelers
							i(249648),	-- Elder Mosshorns
							i(249645),	-- Elder Mossmail
							i(249649),	-- Elder Mossvein Breeches
							i(249650),	-- Elder Mossvein Greatleaves
						}),
						filter(NECK_F, {
							i(249627),	-- Arboreal Vine Collar
							i(249626),	-- Nocturnal Thorncharm
						}),
						filter(PLATE, {
							i(249657),	-- Rampant Bramblegreaves
							i(249653),	-- Rampant Brambleplate
							i(249660),	-- Rampant Briarcuffs
							i(249656),	-- Rampant Briarhelm
							i(249655),	-- Rampant Creepers
							i(249654),	-- Rampant Thistlestompers
							i(249658),	-- Rampant Thornmantles
							i(249659),	-- Rampant Thornstrap
						}),
						filter(TRINKET_F, {
							--TODO: They probably gonna exist outside of season but idk?
							i(251790),	-- Desecrated Chalice
							i(251792),	-- Glorious Crusader's Keepsake
							i(251791),	-- Holy Retributor's Order (also was as wq reward)
							i(251787),	-- Sealed Chaos Urn
							i(251784),	-- Sylvan Wakrapuku
							i(264694),	-- Ultradon Cuirass
						}),
					}),
					n(WEAPONS, {
						i(249667),	-- Barbed Rootwand
						i(249665),	-- Blooming Seedpod
						i(249676),	-- Bramblebarricade
						i(249672),	-- Elderbloom Lantern
						i(249670),	-- Elderoot Spire
						i(249664),	-- Gnarled Thornmace
						i(249671),	-- Gnarlroot Spinecleaver
						i(249669),	-- Organ Piercer's Briarspear
						i(251885),	-- Radiant Foil
						i(249661),	-- Root Sculptor's Verdaxe
						i(259462),	-- Thorneedle
						i(249677),	-- Twinthorn Wildglaive
						i(260187),	-- Underbrush Render
						i(249662),	-- Wild Fiberknife
						i(262731),	-- Wildthorn Razorfang
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
			q(92600, {	-- Cracked Keystone
				["provider"] = { "i", 253245 },	-- Cracked Keystone (QI!/QS!)
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
			--o(584515, {	-- Bountiful Heavy Trunk
			--	["groups"] = {
			--	},
			--}),
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
			--o(584512),	-- Nemesis Strongbox (Poor)
			o(584511),	-- Nemesis Strongbox (Uncommon)
			o(584509),	-- Nemesis Strongbox (Rare)
			o(584508, {	-- Nemesis Strongbox (Epic)
				["groups"] = {
					i(254869),	-- Chunk of Companion Experience (Epic)
					-- TODO: Don't ask me, ask Blizzard.
					i(264342),	-- Cosmic Void Cache (DECOR!)
					i(262991),	-- Two Thousand and Two Nights (COSMETIC!) (TODO: it was looted from strongbox, however could be ATAL_AMAN loot table)
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
		}))),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			n(242398, {	-- Naleidea Rivergleam
				["coord"] = { 52.8, 77.9, MAP.MIDNIGHT.SILVERMOON_CITY },
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
							-- ["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
							-- Renown 0?
							-- i(264847),	-- Dozing Vinepouch (COSMETIC!)	-- I looted it from it, need to properly sorted it out to delve
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
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
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
	})),
}));
