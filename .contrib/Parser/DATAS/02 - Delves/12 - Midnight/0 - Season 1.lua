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
						["questID"] = 96417,
						["isWeekly"] = true,
						["groups"] = {
							ach(61797, {	-- My Shady Nemesis
								i(263413),	-- Nullaeus Domaneye (COSMETIC!)
							}),
							i(262391),	-- Ominous Dominus (PET!)
							hqt(95155, name(HEADERS.NPC, 252892)),	-- Nullaeus ? (first time)
						},
					}),
					n(252892, {	-- Nullaeus ??
						["questID"] = 96416,
						["isWeekly"] = true,
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
							i(262391),	-- Ominous Dominus (PET!)
							hqt(95154, name(HEADERS.NPC, 252892)),	-- Nullaeus ?? (first time)
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
				n(ARMOR, {
					filter(BACK_F, {
						["providers"] = DATAGROUP.MID.DELVES.JEWELRY_PROVIDERS,
						["groups"] = {
							i(249625),	-- Elder Mossveil
							i(249624),	-- Osseoclad Paledrape
							i(249628),	-- Rampant Bramblecloack
							i(249619),	-- Sprawling Mycoshroud
						},
					}),
					filter(CLOTH, {
						["providers"] = DATAGROUP.MID.DELVES.ARMOR_PROVIDERS,
						["groups"] = {
							i(249634),	-- Sprawling Fibershells
							i(249635),	-- Sprawling Rhizomecord
							i(249630),	-- Sprawling Rootpads
							i(249633),	-- Sprawling Rootstockings
							i(249629),	-- Sprawling Rootunic
							i(249632),	-- Sprawling Stoloncollar
							i(249631),	-- Sprawling Tendrils
							i(249636),	-- Sprawling Wristroots
						},
					}),
					filter(FINGER_F, {
						["providers"] = DATAGROUP.MID.DELVES.JEWELRY_PROVIDERS,
						["groups"] = {
							i(249623),	-- Blooming Leafcoil
							i(249622),	-- Spiritseal Ring
							i(249621),	-- Voodoo Band
							i(249620),	-- Vibrant Wilderloop
						},
					}),
					filter(LEATHER, {
						["providers"] = DATAGROUP.MID.DELVES.ARMOR_PROVIDERS,
						["groups"] = {
							i(249638),	-- Osseoclad Bonecrushers
							i(249641),	-- Osseoclad Bonesteppers
							i(249644),	-- Osseoclad Ivory Wrist
							i(249637),	-- Osseoclad Marrowvest
							i(249642),	-- Osseoclad Razorspaulders
							i(249640),	-- Osseoclad Saberteeth
							i(249639),	-- Osseoclad Spinegrapplers
							i(249643),	-- Osseoclad Waistbone
						},
					}),
					filter(MAIL, {
						["providers"] = DATAGROUP.MID.DELVES.ARMOR_PROVIDERS,
						["groups"] = {
							i(249652),	-- Elder Mossbands
							i(249651),	-- Elder Mosscinch
							i(249646),	-- Elder Mossclogs
							i(249647),	-- Elder Mossfeelers
							i(249648),	-- Elder Mosshorns
							i(249645),	-- Elder Mossmail
							i(249649),	-- Elder Mossvein Breeches
							i(249650),	-- Elder Mossvein Greatleaves
						},
					}),
					filter(NECK_F, {
						["providers"] = DATAGROUP.MID.DELVES.JEWELRY_PROVIDERS,
						["groups"] = {
							i(249627),	-- Arboreal Vine Collar
							i(249626),	-- Nocturnal Thorncharm
						},
					}),
					filter(PLATE, {
						["providers"] = DATAGROUP.MID.DELVES.ARMOR_PROVIDERS,
						["groups"] = {
							i(249657),	-- Rampant Bramblegreaves
							i(249653),	-- Rampant Brambleplate
							i(249660),	-- Rampant Briarcuffs
							i(249656),	-- Rampant Briarhelm
							i(249655),	-- Rampant Creepers
							i(249654),	-- Rampant Thistlestompers
							i(249658),	-- Rampant Thornmantles
							i(249659),	-- Rampant Thornstrap
						},
					}),
					filter(TRINKET_F, {
						["sym"] = {{"select","itemID",
							251788,	-- Gift of Light
						}},
						["groups"] = sharedData({
							["providers"] = DATAGROUP.MID.DELVES.ARMOR_PROVIDERS,
						},{
							i(264878),	-- Astalor's Anguish Agitator
							i(251789),	-- Consecrated Chalice
							i(251790),	-- Desecrated Chalice
							i(251792),	-- Glorious Crusader's Keepsake
							i(251791),	-- Holy Retributor's Order
							i(251787),	-- Sealed Chaos Urn
							i(251785),	-- Void-Reaper's Libram
						}),
					}),
				}),
				filter(MISC, {
					i(252415, {	-- Trovehunter's Bounty
						["providers"] = {{"o",618495}},	-- Nullaeus Cache (verified)
					}),
					-- Bonus roll
					i(268969, {["timeline"] = { ADDED_12_0_5, REMOVED_12_1_0 }}),	-- Nebulous Voidcache: Delver's Trove
				}),
				filter(QUEST_ITEMS, {
					-- Currently unaware of objectIDs so treated just as reward
					i(254675),	-- Ancient Curio (Combat) (QI!/QS!)
					i(254674),	-- Ancient Curio (Utility) (QI!/QS!)
					i(253245),	-- Cracked Keystone (QI!/QS!/CI!)
				}),
				n(WEAPONS, {
					["groups"] = sharedData({
						["providers"] = DATAGROUP.MID.DELVES.WEAPON_PROVIDERS,
					},{
						-- Set
						i(251884, {	-- Abyss Sabre
							["providers"] = {
								{ "o", 618495 },	-- Nullaeus Cache
								{ "o", 584518 },	-- Bountiful Heavy Trunk
							},
						}),
						i(251885, {	-- Radiant Foil
							["providers"] = {
								{ "o", 584508 },	-- Nemesis Strongbox
								{ "o", 584518 },	-- Bountiful Heavy Trunk (verified)
							},
						}),
						-- Basic
						i(249667),	-- Barbed Rootwand
						i(249665),	-- Blooming Seedpod
						i(249676),	-- Bramblebarricade
						i(249672),	-- Elderbloom Lantern
						i(249670),	-- Elderoot Spire
						i(249664),	-- Gnarled Thornmace
						i(249671),	-- Gnarlroot Spinecleaver
						i(262729),	-- Hand of the Rootkeeper
						i(262732),	-- Heavy Bramblebolter
						i(251935),	-- Lightgrasp Worldroot
						i(249669),	-- Organ Piercer's Briarspear
						i(249610),	-- Resinous Blossomblade
						i(249661),	-- Root Sculptor's Verdaxe
						i(260189),	-- Rootkeeper's Dancing Needle
						i(260188),	-- Savage Briaredge
						i(259462),	-- Thorneedle
						i(249677),	-- Twinthorn Wildglaive
						i(260187),	-- Underbrush Render
						i(249662),	-- Wild Fiberknife
						i(262731),	-- Wildthorn Razorfang
					}),
				}),
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
					["isMonthly"] = true,	-- This quests resets every season (at least) and is not reliably collectible
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
						i(262391),	-- Ominous Dominus (PET!)
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
							["timeline"] = { REMOVED_12_1_0 },
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
								-- Exo Note: Not sure if this one is removed in 12.1.0, I don't see it on the vendor but, at the same time I have it learned so I can't be sure
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
				q(92888, name(HEADERS.NPC, 252892)),	-- Nullaeus ? and ??
			}),
		},
	}),
}))
