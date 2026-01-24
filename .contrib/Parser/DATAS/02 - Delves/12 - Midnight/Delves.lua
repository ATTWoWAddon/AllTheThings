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
			-- TODO: probably doesn't exist in s1 and will be wue after it? But seems like you can also it everything from bountiful but even without key, so idk.
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
		--n(253249),	-- Clever Saptor
		--n(207482),	-- Invasive Sporecap // alpha
		--n(253267),	-- Wailing Spirit
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
				-- TODO: Some items looks like seasoned (e.g. keys, bags, but sorted them out later on if needed)
				-- TODO: not sorted via name but as listed order in vendor
				filter(BATTLE_PETS, {
					i(262393, {	-- Kreepah'zoyd (PET!)
						["cost"] = {{"c", UNDERCOIN, 10000 }},
					}),
				}),
				filter(COSMETIC, {
					i(264849, {	-- Dewy Vinepouch (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(264856, {	-- Vilebranch Lifeseer (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(264860, {	-- Twilight Magus's Cowl (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(264853, {	-- Gilded Twilight Spaulder (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(262984, {	-- Reliquary Expedition Bag (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(262989, {	-- Focusight Relic Mace (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(262973, {	-- Reliquary Expedition Notes (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
					i(262990, {	-- Sin'dorei Arcane Manuscript (COSMETIC!)
						["cost"] = {{"c", UNDERCOIN, 2500 }},
					}),
				}),
				n(DECOR, {
					i(250770, {	-- Silvermoon Privacy Screen (DECOR!)
						["cost"] = {{"c", UNDERCOIN, 500 }},
					}),
					i(246779, {	-- Hanging Mana Brazier (DECOR!)
						["cost"] = {{"c", UNDERCOIN, 500 }},
					}),
				}),
				filter(MISC, {
					i(244193, {	-- L00T RAID-R Mini
						["cost"] = {{"c", UNDERCOIN, 1000 }},
					}),
					i(262963, {	-- Pious Memorial
						["cost"] = {{"c", UNDERCOIN, 2000 }},
						--["questID"] = ???,
					}),
					i(233061, {	-- Rock-in-a-Bottle
						["cost"] = {{"c", UNDERCOIN, 250 }},
					}),
					i(248755, {	-- Star-in-a-Jar
						["cost"] = {{"c", UNDERCOIN, 250 }},
					}),
					i(264652, {	-- Delver's Pouch of Voidlight Marl
						["cost"] = {{"c", UNDERCOIN, 2000 }},
					}),
				}),
				filter(MOUNTS, {
					i(262502, {	-- Elven Arcane Guardian (MOUNT!)
						["cost"] = {{"c", UNDERCOIN, 10000 }},
					}),
				}),
				filter(TOYS, {
					i(267291, {	-- Coffer Key Glue (TOY!)
						["cost"] = {{"c", UNDERCOIN, 250 }},
					}),
					i(262431, {	-- Bouncy Mushroom (TOY!)
						["cost"] = {{"c", UNDERCOIN, 5000 }},
					}),
				}),
			},
		}),
		n(242399, {	-- Telemancer Astrandis
			["coord"] = { 52.5, 78.9, MAP.MIDNIGHT.SILVERMOON_CITY },
			["groups"] = {
				--Rewards locked behind Seasonal Delver's Journey progress.
			},
		}),
	}),
	m(ATAL_AMAN, {
		--["icon"] = ,
		["coord"] = { 63.8, 80.3, MAP.MIDNIGHT.EVERSONG_WOODS },
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
					i(267009),	-- Amani Training Dummy (DECOR!)
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(COLLEGIATE_CALAMITY, {
		--["icon"] = ,
		["coord"] = { 40.5, 53.6, MAP.MIDNIGHT.SILVERMOON_CITY },
		["maps"] = {
			2577,	-- Thalassian Library
			2578,	-- Thalassian University
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
				o(618274, {	-- Sturdy Chest
					["coord"] = { 31.0, 12.5, COLLEGIATE_CALAMITY},
					["questID"] = 94018,
				}),
				o(618285, {	-- Sturdy Chest
					["coord"] = { 81.3, 32.0, COLLEGIATE_CALAMITY},	-- TODO: could be off
					["questID"] = 94029,
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
					i(264258),	-- Blossoming Forge (DECOR!)
					i(263042),	-- Rootlight Lamppost (DECOR!)
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(PARHELION_PLAZA, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(SHADOWGUARD_POINT, {
		--["icon"] = ,
		["coord"] = { 37.3, 48.3, MAP.MIDNIGHT.VOIDSTORM },
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93428, {	-- Delver's Call: Shadowguard Point
					["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: added from alpha open world version of it)
					["provider"] = { "o", 612364 },	-- Shadowguard Point (TODO: missing open world objectID)
					["coords"] = {
						{ 47.6, 79.3, SHADOWGUARD_POINT },
						{ 37.6, 51.9, MAP.MIDNIGHT.VOIDSTORM },
					},
				}),
			}),
			n(TREASURES, {
				o(618273, {	-- Sturdy Chest
					["coord"] = { 41.8, 53.7, SHADOWGUARD_POINT },
					["questID"] = 94017,
					["groups"] = {
						i(245526),	-- Bloodmarked Phasebound Visor (COSMETIC!)
					},
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(SUNKILLER_SANCTUM, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(THE_DARKWAY, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(THE_GULF_OF_MEMORY, {
		--["icon"] = ,
		["coord"] = { 36.6, 49.1, MAP.MIDNIGHT.HARANDAR },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(THE_GRUDGE_PIT, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(THE_SHADOW_ENCLAVE, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(TORMENTS_RISE, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(TWILIGHT_CRYPTS, {
		--["icon"] = ,
		--["coord"] = { X, Y, MAPID },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				---q(XXXX, {	-- ??
				---	["provider"] = { "n", ???? },	-- ????
				---	["coord"] = { X, Y, MAPID },
				---}),
			}),
			n(TREASURES, {
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
		--n(BOUNTIFUL, sharedData({
		--	["isDaily"] = true,
		--},{	-- Bountiful Delve runs?
			--q(91188),	-- Atal'Aman
			--q(91186),	-- Collegiate Calamity
			--q(91187),	-- The Gulf of Memory
			--q(91184),	-- Shadowguard Point
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
