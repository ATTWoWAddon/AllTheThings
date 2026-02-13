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
-- #endif
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(61722),	-- Curio Enthusiast: Midnight
		ach(61723),	-- Curio Fanatic: Midnight
		ach(61741),	-- Delve Loremaster: Midnight
		ach(61707),	-- Delver of the Depths: Midnight
		ach(61708),	-- Delver of the Depths II: Midnight
		ach(61709),	-- Delver of the Depths III: Midnight
		ach(61710),	-- Delver of the Depths IV: Midnight
		ach(61906, {	-- Glory of the Midnight Delver
			--i(257199),	-- Giganto Manis (MOUNT!)
		}),
		ach(61720),	-- Midnight Delver
		ach(61721, {	-- Midnight Delver II
			i(FINERY_FUNDS),
		}),
		ach(62206),	-- Midnight Delver III
		ach(61711),	-- Midnight Delver Damage Dealer
		ach(61712),	-- Midnight Delver Damage Dealer II
		ach(61713),	-- Midnight Delver Damage Dealer III
		ach(61714),	-- Midnight Delver Healer
		ach(61715),	-- Midnight Delver Healer II
		ach(61716),	-- Midnight Delver Healer III
		ach(61717),	-- Midnight Delver Tank
		ach(61718),	-- Midnight Delver Tank II
		ach(61719),	-- Midnight Delver Tank III
		ach(61832),	-- Midnight Delves: Tier 1
		ach(61835),	-- Midnight Delves: Tier 2
		ach(61836),	-- Midnight Delves: Tier 3
		ach(61734),	-- Midnight Delves: Endgame
		ach(61901, {	-- Midnight: Leave No Treasure Unfound
			title(691),	-- Treasure Seeker <Name>
		}),
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
			i(257386),	-- Heavy Trunk (Delve reward UI)
			--i(257379),	-- Player Experience (Epic) // alpha item
			i(265714),	-- Trovehunter's Bounty
			-- Items and different things
			i(262586),	-- Primeval Arcane Remnant (QI!/QS!)
		}),
		filter(RECIPES, {
			i(256747),	-- Formula: Enchant Boots - Shaladrassil's Roots (RECIPE!)
			i(256738),	-- Formula: Enchant Helm - Empowered Hex of Leeching (RECIPE!)
			i(256753),	-- Formula: Enchant Helm - Empowered Rune of Avoidance (RECIPE!)
			i(256752),	-- Formula: Enchant Ring - Nature's Fury (RECIPE!)
			i(256748),	-- Formula: Enchant Shoulders - Amirdrassil's Grace (RECIPE!)
			i(256740),	-- Formula: Enchant Shoulders - Akil'zon's Swiftness (RECIPE!)
			i(259370),	-- Formula: Rootflame Campfire (RECIPE!)
			i(247425),	-- Recipe: Riftstone (RECIPE!)
			i(247423),	-- Recipe: Silvermoon Spire Fountain (RECIPE!)
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
		--n(DECOR, {
		--	-- TODO: based on pure specilation due to lack of data. Probably all delves decor are shared and can be looted from any delves.
		--}),
		n(WEAPONS, {
		}),
	})),
	n(FACTIONS, {
	}),
	n(HIDDEN_QUESTS, {
		hqt(92087),	-- Unlock Ability 1 - Level 2
		hqt(92088),	-- Unlock Ability 2 - Level 3
		hqt(92089),	-- Unlock Ability 3 - Level 4
		hqt(92090),	-- Unlock Ability 4 - Level 5
		hqt(92091),	-- Unlock Ability 5 - Level 6
		hqt(92092),	-- Unlock Ability 6 - Level 7
		hqt(92093),	-- Unlock Ability 7 - Level 8
		hqt(92756),	-- Level 9
		--hqt(92758),	-- Level 10 (automated)
		hqt(92759),	-- Level 11
		hqt(92760),	-- Level 12
		hqt(92761),	-- Level 13
		hqt(92762),	-- Level 14
		hqt(92763),	-- Level 15
		hqt(92764),	-- Level 16
		hqt(92765),	-- Level 17
		hqt(92766),	-- Level 18
		hqt(92767),	-- Level 19
		--hqt(92768),	-- Level 20 (automated)
		hqt(92769),	-- Level 21
		hqt(92770),	-- Level 22
		hqt(92771),	-- Level 23
		hqt(92772),	-- Level 24
		hqt(92773),	-- Level 25
		hqt(92774),	-- Level 26
		hqt(92775),	-- Level 27
		hqt(92776),	-- Level 28
		hqt(92777),	-- Level 29
		--hqt(92778),	-- Level 30 (automated)
		hqt(92779),	-- Level 31
		hqt(92780),	-- Level 32
		hqt(92781),	-- Level 33
		hqt(92782),	-- Level 34
		hqt(92783),	-- Level 35
		hqt(92784),	-- Level 36
		hqt(92785),	-- Level 37
		hqt(92786),	-- Level 38
		hqt(92787),	-- Level 39
		--hqt(92788),	-- Level 40 (automated)
		hqt(92789),	-- Level 41
		hqt(92790),	-- Level 42
		hqt(92791),	-- Level 43
		hqt(92792),	-- Level 44
		hqt(92793),	-- Level 45
		hqt(92794),	-- Level 46
		hqt(92795),	-- Level 47
		hqt(92796),	-- Level 48
		hqt(92797),	-- Level 49
		--hqt(92798),	-- Level 50 (automated?)
		hqt(92799),	-- Level 51
		hqt(92800),	-- Level 52
		hqt(92801),	-- Level 53
		hqt(92803),	-- Level 54
		hqt(92804),	-- Level 55
		hqt(92805),	-- Level 56
		hqt(92806),	-- Level 57
		hqt(92807),	-- Level 58
		hqt(92808),	-- Level 59
		--hqt(92809),	-- Level 60 (automated?)
	}),
	n(QUESTS, {
		q(93784, {	-- A Gnawing Void of Curiosity
			["provider"] = { "i", 262586 },	-- Primeval Arcane Remnant (QI!/QS!)
			["isWeekly"] = true,
		}),
	}),
	n(RARES, {
		-- TODO: Alex - I don't think there any point to source them but in case there will be achievement for it or whatever
		--n(253257),	-- Abandoned Sentinel
		--n(253249),	-- Clever Saptor
		--n(207482),	-- Invasive Sporecap // alpha
		--n(253304),	-- Paingolin
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
						["cost"] = { { "c", UNDERCOIN, 10000 } },
					}),
				}),
				filter(COSMETIC, {
					i(264849, {	-- Dewy Vinepouch (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(264856, {	-- Vilebranch Lifeseer (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(264860, {	-- Twilight Magus's Cowl (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(264853, {	-- Gilded Twilight Spaulder (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(262984, {	-- Reliquary Expedition Bag (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(262989, {	-- Focusight Relic Mace (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(262973, {	-- Reliquary Expedition Notes (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
					i(262990, {	-- Sin'dorei Arcane Manuscript (COSMETIC!)
						["cost"] = { { "c", UNDERCOIN, 2500 } },
					}),
				}),
				n(DECOR, {
					i(250770, {	-- Silvermoon Privacy Screen (DECOR!)
						["cost"] = { { "c", UNDERCOIN, 500 } },
					}),
					i(246779, {	-- Hanging Mana Brazier (DECOR!)
						["cost"] = { { "c", UNDERCOIN, 500 } },
					}),
				}),
				filter(MISC, {
					i(244193, {	-- L00T RAID-R Mini
						["cost"] = { { "c", UNDERCOIN, 1000 } },
					}),
					i(262963, {	-- Pious Memorial
						["cost"] = { { "c", UNDERCOIN, 2000 } },
					}),
					i(233061, {	-- Rock-in-a-Bottle
						["cost"] = { { "c", UNDERCOIN, 250 } },
					}),
					i(248755, {	-- Star-in-a-Jar
						["cost"] = { { "c", UNDERCOIN, 250 } },
					}),
					i(264652, {	-- Delver's Pouch of Voidlight Marl
						["cost"] = { { "c", UNDERCOIN, 2000 } },
					}),
				}),
				filter(MOUNTS, {
					i(262502, {	-- Elven Arcane Guardian (MOUNT!)
						["cost"] = { { "c", UNDERCOIN, 10000 } },
					}),
				}),
				filter(TOYS, {
					i(267291, {	-- Coffer Key Glue (TOY!)
						["cost"] = { { "c", UNDERCOIN, 250 } },
					}),
					i(262431, {	-- Bouncy Mushroom (TOY!)
						["cost"] = { { "c", UNDERCOIN, 5000 } },
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
				ach(61863),	-- Atal'Aman Discoveries
				ach(61729),	-- Atal'Aman Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93409, {	-- Delver's Call: Atal'Aman
					["provider"] = { "n", 254726 },	-- Fallen Amani Scout
					["coord"] = { 24.9, 43.3, ATAL_AMAN },
				}),
			}),
			n(TREASURES, {
				--o(XXXXXX, {	-- Sturdy Chest
				--	["coord"] = { 55.7, 69.9, ATAL_AMAN },
				--	["questID"] = 94000,
				--}),
				o(618270, {	-- Sturdy Chest
					["coord"] = { 48.3, 50.5, ATAL_AMAN },
					--["questID"] = XXXXXX,
					["groups"] = {
						i(252265),	-- Hexed Potatoad Mucus (TOY!)
					},
				}),

			}),
			n(REWARDS, {
				n(DECOR, {
					i(267009),	-- Amani Training Dummy (DECOR!)
					i(264258),	-- Blossoming Forge (DECOR!)
					i(263042),	-- Rootlight Lamppost (DECOR!)
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
				ach(61894),	-- Collegiate Calamity Discoveries
				ach(61726),	-- Collegiate Calamity Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93384, {	-- Delver's Call: Collegiate Calamity
					["provider"] = { "o", 612038 },	-- Agitated Tome
					["coord"] = { 41.6, 61.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
			}),
			n(TREASURES, {
				o(618274, {	-- Sturdy Chest
					["coord"] = { 31.0, 12.5, COLLEGIATE_CALAMITY },
					["questID"] = 94018,
				}),
				o(618285, {	-- Sturdy Chest
					["coord"] = { 81.3, 32.0, COLLEGIATE_CALAMITY },	-- TODO: could be off
					["questID"] = 94029,
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
					i(264330),	-- Amani Hanging Brazier (DECOR!)
					i(267009),	-- Amani Training Dummy (DECOR!)
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
		["coord"] = { 47.5, 41.4, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61893),	-- Parhelion Plaza Discoveries
				ach(61725),	-- Parhelion Plaza Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93386, {	-- Delver's Call: Parhelion Plaza
					["provider"] = { "o", 612894 },	-- Parhelion Plaza
					["coords"] = {
						{ 52.3, 77.5, MAP.MIDNIGHT.SILVERMOON_CITY },
						{ 74.5, 28.0, PARHELION_PLAZA },
					},
				}),
			}),
			n(TREASURES, {
				o(618275, {	-- Sturdy Chest
					["coord"] = { 9.7, 50.3, PARHELION_PLAZA },
					["questID"] = 94019,
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
	m(SHADOWGUARD_POINT, {
		--["icon"] = ,
		["coord"] = { 37.3, 48.3, MAP.MIDNIGHT.VOIDSTORM },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61900),	-- Shadowguard Point Discoveries
				ach(61733),	-- Shadowguard Point Stories
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
				--o(XXXX, {	-- Sturdy Chest	-- TODO: missing objectID
				--	["coord"] = { 39.0, 41.9, SHADOWGUARD_POINT },	-- TODO: coords off, since data from delve when map was missing
				--	["questID"] = 94025,
				--}),
			}),
			n(REWARDS, {
				n(DECOR, {
					i(251967),	-- Fungarian Banner (DECOR!)
				}),
				filter(COSMETIC, {
					i(264848),	-- Sunlit Vinepouch (COSMETIC!)
				}),
				filter(MISC, {
				}),
			}),
		},
	}),
	m(SUNKILLER_SANCTUM, {
		--["icon"] = ,
		["coord"] = { 54.8, 47.0, MAP.MIDNIGHT.VOIDSTORM },
		["maps"] = { 2571 },	-- Lower Sanctum
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61899),	-- Sunkiller Sanctum Discoveries
				ach(61732),	-- Sunkiller Sanctum Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93427, {	-- Delver's Call: Sunkiller Sanctum
					["provider"] = { "o", 612354 },	-- Sunkiller Sanctum
					["coord"] = { 63.4, 34.8, SUNKILLER_SANCTUM },
				}),
			}),
			n(TREASURES, {
				o(618280, {	-- Sturdy Chest
					["coord"] = { 60.1, 40.8, 2571 },
					["questID"] = 94024,
				}),
				o(618294, {	-- Sturdy Chest
					["coord"] = { 49.7, 50.6, 2571 },
					["questID"] = 94043,
				}),
				o(618293, {	-- Sturdy Chest
					["coord"] = { 38.1, 49.0, SUNKILLER_SANCTUM },
					["questID"] = 94042,
				}),
				---o(, {	-- Sturdy Chest
				---	["coord"] = { x, y, SUNKILLER_SANCTUM },
				---	["questID"] = ,
				---}),
			}),
			n(REWARDS, {
				n(DECOR, {
					i(264330),	-- Amani Hanging Brazier (DECOR!)
				}),
				filter(COSMETIC, {
					i(264851),	-- Voidtouched Twilight Spaulder (COSMETIC!)
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
				ach(61895),	-- The Darkway Discoveries
				ach(61728),	-- The Darkway Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93385, {	-- Delver's Call: The Darkway
					["provider"] = { "o", 612039 },	-- The Darkway
					["coords"] = {
						{ 52.1, 78.0, MAP.MIDNIGHT.SILVERMOON_CITY },
						{ 49.1, 18.6, THE_DARKWAY },
					},
				}),
			}),
			n(TREASURES, {
				o(618283, {	-- Sturdy Chest
					["coord"] = { 53.0, 43.1, THE_DARKWAY },
					["questID"] = 94026,
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
	m(THE_GULF_OF_MEMORY, {
		--["icon"] = ,
		["coord"] = { 36.6, 49.1, MAP.MIDNIGHT.HARANDAR },
		--["maps"] = {},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61898),	-- The Gulf of Memory Discoveries
				ach(61731),	-- The Gulf of Memory Stories
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
				o(618278, {	-- Sturdy Chest
					["coord"] = { 54.3, 25.2, THE_GULF_OF_MEMORY },
					["questID"] = 94023,
				}),
				o(618292, {	-- Sturdy Chest
					["coord"] = { 55.5, 26.2, THE_GULF_OF_MEMORY },
					["questID"] = 94041,
				}),
				o(618272, {	-- Sturdy Chest
					["coord"] = { 39.8, 26.6, THE_GULF_OF_MEMORY },
					["questID"] = 94016,
					["groups"] = {
						i(264805),	-- Brann-O-Vision 3000 (TOY!)
					},
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
					i(264342),	-- Cosmic Void Cache (DECOR!)
					i(263233),	-- Sin'dorei Spinning Library (DECOR!)
				}),
				filter(COSMETIC, {
					i(262970),	-- Ominous Tome (COSMETIC!)
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
				ach(61897),	-- The Grudge Pit Discoveries
				ach(61724),	-- The Grudge Pit Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93421, {	-- Delver's Call: The Grudge Pit
					["provider"] = { "o", 612264 },	-- The Grudge Pit
					["coords"] = {
						{ 39.2, 42.9, THE_GRUDGE_PIT },
						{ 71.2, 52.1, MAP.MIDNIGHT.HARANDAR },
					},
				}),
			}),
			n(TREASURES, {
				o(618291, {	-- Sturdy Chest
					["coord"] = { 37.2, 28.7, THE_GRUDGE_PIT },
					["questID"] = 94039,
				}),
				o(618279, {	-- Sturdy Chest
					["coord"] = { 69.9, 31.7, THE_GRUDGE_PIT },
					["questID"] = 94022,
				}),
				o(618277, {	-- Sturdy Chest
					["coord"] = { 67.6, 59.5, THE_GRUDGE_PIT },
					["questID"] = 94021,
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
	m(THE_SHADOW_ENCLAVE, {
		--["icon"] = ,
		["coord"] = { 45.4, 85.9, MAP.MIDNIGHT.EVERSONG_WOODS },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61892),	-- The Shadow Enclave Discoveries
				ach(61727),	-- The Shadow Enclave Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93372, {	-- Delver's Call: Shadow Enclave
					["provider"] = { "o", 611933 },	-- The Shadow Enclave
					["coords"] = {
						{ 29.2, 73.6, THE_SHADOW_ENCLAVE },
						{ 50.8, 40.0, MAP.MIDNIGHT.EVERSONG_WOODS },	-- alpha data / outdoor
					},
				}),
				filter(MISC, {
					i(263368),	-- Armageddon and You - A Beginner's Guide to Thriving in the Apocalypse
					i(263361),	-- Chicken Soup for the Soulless
					i(263350),	-- Harbringer Fan Fiction
					i(263348),	-- Purple Is The New Black
					i(263382),	-- Twilight Material
					i(263377),	-- Xal-a-Pal
					i(263381),	-- Xal'atath Wall Scrolls
					i(263373),	-- You Can't Believe It's Not Void
					--didn't saw it, but they probably exist here too
					--i(263354),	-- Filling the Void in Your Heart
					--i(263379),	-- Personal Advertising Platform
					--i(263380),	-- Recruitment Pamphlets
				}),
			}),
			n(TREASURES, {
				o(618111, {	-- Sturdy Chest
					["coord"] = { 54.7, 48.5, THE_SHADOW_ENCLAVE },
					["questID"] = 94002,
				}),
				o(617855, {	-- Sturdy Chest
					["coord"] = { 54.7, 85.0, THE_SHADOW_ENCLAVE },
					["questID"] = 94001,
				}),
				o(618112, {	-- Sturdy Chest
					["coord"] = { 56.0, 34.6, THE_SHADOW_ENCLAVE },
					["questID"] = 94028,
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(COSMETIC, {
					i(262983),	-- Archival Magnimace (COSMETIC!)
				}),
			}),
		},
	}),
	m(TORMENTS_RISE, {	-- TODO: Seasonal delve with boss
		--["icon"] = ,
		["coord"] = { 61.2, 71.4, MAP.MIDNIGHT.VOIDSTORM },
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
		["coord"] = { 25.4, 84.0, MAP.MIDNIGHT.ZULAMAN },
		["maps"] = { 2504 },	-- Twilight Crypts
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61896),	-- Twilight Crypts Discoveries
				ach(61730),	-- Twilight Crypts Stories
			}),
			n(EXPLORATION, {
			}),
			n(QUESTS, {
				q(93410, {	-- Delver's Call: Twilight Crypts
					["provider"] = { "o", 612242 },	-- Twilight Crypts
					["coords"] = {
						{ 47.2, 39.6, TWILIGHT_CRYPTS },
						{ 43.1, 69.2, MAP.MIDNIGHT.ZULAMAN },
					},
				}),
				q(94909, {	-- Blessings of Pestilence (TODO: unsure if it exist only here)
					["provider"] = { "i", 266438 },	-- Idol of Pestilence
				}),
			}),
			n(TREASURES, {
				o(618289, {	-- Sturdy Chest
					["coord"] = { 46.9, 49.9, 2504 },
					["questID"] = 94037,
				}),
				o(618276, {	-- Sturdy Chest
					["coord"] = { 56.8, 85.9, 2504 },
					["questID"] = 94020,
				}),
				o(618288, {	-- Sturdy Chest
					["coord"] = { 21.8, 36.2, 2504 },
					["questID"] = 94034,
				}),
			}),
			n(REWARDS, {
				n(DECOR, {
				}),
				filter(COSMETIC, {
					i(262992),	-- Myth Maker's Brush (COSMETIC!)
				}),
				filter(MISC, {
					i(266438),	-- Idol of Pestilence (QS!/QI!)
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(DELVES, applyDataSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
		n(BOUNTIFUL, sharedData({
			["isDaily"] = true,
		},{
			q(91188),	-- Atal'Aman
			q(91186),	-- Collegiate Calamity
			q(91189),	-- Shadow Enclave
			q(91184),	-- Shadowguard Point / Sunkiller Sanctum
			q(91185),	-- The Grudge Pit
			q(91187),	-- The Gulf of Memory
			q(91190),	-- Twilight Crypts
		--	-- One time rep bonus from Bountiful Delves
		--	--q(),	-- factionName
		})),

		-- Restored Coffer Key (Pop from any weekly activity, orders (of activity) doesn't matter)
		--q(93275, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 1st (could be wrong and it is rep lockout for Unity Against the Void?)

		-- Weekly summon boss questID
		--hqt(86371, {	--	// automated/use TWW questID?
		--	["name"] = "Seasonal delve map lockout"
		--	["providers"] = {
		--		{"i",253342},	-- Beacon of Hope
		--		{"i",252415},	-- Trovehunter's Bounty
		--	},
		--	["timeline"]={ADDED_12_0_X_SEASONSTART},
		--	["isWeekly"] = true,
		--}),

		--automated
		--q(93869),	-- Pious Memorial (itemID 262963)
	})),
}));
