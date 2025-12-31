-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
BOUNTY = createHeader({
	readable = "Bounty",
	icon = 2125377,
	text = {
		en = "Bounty",
		de = "Kopfgeld",
		es = "Recompensa",
		mx = "Recompensa",
		fr = "Prime",
		it = "Premio",
		ko = "하사품",
		pt = "Recompensa",
		ru = "Премия",
		cn = "赏金任务",
		-- TODO: tw = "",
	},
});
SLAYERS_RISE = createHeader({
	readable = "Slayer's Rise",
	icon = 2125377,
	text = {
		en = "Slayer's Rise",
	},
});
WORLD_PVP = createHeader({
	readable = "World PvP",
	icon = [[~_.asset("Category_Zones")]],
	text = {
		en = "World PvP",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Мировое PvP",
		cn = "世界PvP",
		-- TODO: tw = "",
	},
});
root(ROOTS.PVP, pvp(n(WORLD_PVP, {
	expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(12567),	-- The Horde Slayer
			ach(12568),	-- The Alliance Slayer
		}),
		n(BOUNTY, {
			i(163825),	-- Plundered Supplies
			i(170539, {	-- Plunderer Supplies
				["timeline"] = { ADDED_8_2_0 },
			}),
		}),
		n(TREASURES, {
			["description"] = "Contains Dread Aspirant Gear if you are Level 10-49 and Sinister Aspirant Gear at Level 50.",
		}),
		n(QUESTS, {
			q(58274, bubbleDownSelf({["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } },{	-- Servant of N'Zoth
				["description"] = "Granted upon killing 10 Horde players without dying after you became an Assassin.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(414),	-- <Name>, Servant of N'Zoth
					i(173951),	-- N'lyeth, Sliver of N'Zoth (TOY!)
					i(174020),	-- N'lyeth, Sliver of N'Zoth (Q Item)
				},
			})),
			q(58273, bubbleDownSelf({["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } },{	-- Servant of N'Zoth
				["description"] = "Granted upon killing 10 Alliance players without dying after you became an Assassin.",
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(414),	-- <Name>, Servant of N'Zoth
					i(173951),	-- N'lyeth, Sliver of N'Zoth (TOY!)
					i(174020),	-- N'lyeth, Sliver of N'Zoth (Q Item)
				},
			})),
			q(52786, bubbleDownSelf({	-- The Alliance Slayer
				["timeline"] = { REMOVED_10_0_2 },
				["races"] = HORDE_ONLY,
			},{
				title(376),	-- <Name> the Alliance Slayer
			})),
			q(52784, bubbleDownSelf({	-- The Horde Slayer
				["timeline"] = { REMOVED_10_0_2 },
				["races"] = ALLIANCE_ONLY,
			},{
				title(375),	-- <Name> the Horde Slayer
			})),
		}),
	})),
	expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(14516, {	-- Impressing Zo'Sorg
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(14515, {	-- Zo'Sorg's Bidding
				["sym"] = {{ "achievement_criteria" }},
			}),
		}),
		n(BOUNTY, {
			i(184810),	-- Plundered Supplies
		}),
	})),
	expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(16599, {	-- A Champion's Pursuit
				crit(55944, {	-- Krolkoth the Mountain
					["_quests"] = { 72008 },	-- Overcoming a Mountain: Krolkoth
				}),
				crit(55957, {	-- Tarolekk the Stomper
					["_quests"] = { 72058 },	-- What Hoof We Here: Tarolekk
				}),
				crit(55956, {	-- Nezascar the Sightless
					["_quests"] = { 72019 },	-- Seeing through the Enemy: Nezascar
				}),
				crit(55957, {	-- Rhuzast the Tempest
					["_quests"] = { 71225 },	-- Blown Through Wind: Rhuzast
				}),
			}),
			ach(16590, {	-- A Champion's Tour: Dragon Isles
				crit(56021, {	-- How to Train a Proto-Drake
					["_quests"] = { 67005 },
				}),
				crit(55945, {	-- Quacks and Attacks
					["_quests"] = { 70209 },
				}),
				crit(55946, {	-- Wild Arcana
					["_quests"] = { 70439 },
				}),
				crit(55947, {	-- Extermination
					["_quests"] = { 69949 },
				}),
			}),
			ach(17335, {	-- Airborne Tumbler (x1)
				["maps"] = {
					-- #if BEFORE 11.0.2
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS,
					-- #else
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, DORNOGAL, AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS,
					-- #endif
				},
				["timeline"] = { ADDED_10_0_5 },
			}),
			ach(17336, {	-- Airborne Tumbler (x10)
				["maps"] = {
					-- #if BEFORE 11.0.2
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS,
					-- #else
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, DORNOGAL, AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS,
					-- #endif
				},
				["timeline"] = { ADDED_10_0_5 },
			}),
			ach(17345, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 }, }, {	-- Airborne Tumbler (x50)
				["maps"] = {
					-- #if BEFORE 11.0.2
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS,
					-- #else
					THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, DORNOGAL, AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS,
					-- #endif
				},
				["groups"] =	{
					title(492),	-- Skyscourge <Name>
				},
			})),
			ach(16615, {	-- Blood Bank
				["cost"] = {{"c",2123,3000}},	-- 3000 Bloody Token
			}),
			ach(16614, {	-- Bloodstained Bounty
				["cost"] = {{"c",2123,750}},	-- 750 Bloody Token
			}),
			ach(16603, {	-- Bounty Hunter
				crit(55967, {	-- The Waking Shores
					["maps"] = { THE_WAKING_SHORES },
				}),
				crit(55968, {	-- Ohn'ahran Plains
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(55970, {	-- The Azure Span
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(55969, {	-- Thaldraszus
					["maps"] = { THALDRASZUS },
				}),
			}),
			ach(16612, {	-- Bounty Vigalante
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
			}),
			ach(16601, {	-- Dragonfight Club
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16589,	-- Malicia's Challenge
					16590,	-- A Champion's Tour: Dragon Isles
					16592,	-- Tour of Duty: The Waking Shores
					16595,	-- Tour of Duty: Ohn'ahran Plains
					16594,	-- Tour of Duty: The Azure Span
					16593,	-- Tour of Duty: Thaldraszus
					16599,	-- A Champion's Pursuit
				}},
				["groups"] =	{
					title(479),	-- Malicious <Name>
				},
			}),
			ach(16613, {	-- Finder's Keepers
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
			}),
			ach(16589, {	-- Malicia's Challenge
				crit(56021, {	-- How to Train a Proto-Drake
					["_quests"] = { 67005 },
				}),
				crit(55945, {	-- Quacks and Attacks
					["_quests"] = { 70209 },
				}),
				crit(55946, {	-- Wild Arcana
					["_quests"] = { 70439 },
				}),
				crit(55947, {	-- Extermination
					["_quests"] = { 69949 },
				}),
			}),
			ach(16616, {	-- Prosperously Bloody
				["cost"] = {{"c",2123,1500}},	-- 1500 Bloody Token
			}),
			ach(16611, {	-- Resource Scavanger
				crit(55990, {	-- The Waking Shores
					["maps"] = { THE_WAKING_SHORES },
				}),
				crit(55991, {	-- Ohn'ahran Plains
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(55992, {	-- The Azure Span
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(55993, {	-- Thaldraszus
					["maps"] = { THALDRASZUS },
				}),
			}),
		}),
		n(QUESTS, {
			q(71143, {	-- The Horde Slayer
				["description"] = "If you die while on the quest, and are resurrected you will continue gaining credit.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(375),	-- <Name> the Horde Slayer
				},
			}),
			q(71144, {	-- The Alliance Slayer
				["description"] = "If you die while on the quest, and are resurrected you will continue gaining credit.",
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(376),	-- <Name> the Alliance Slayer
				},
			}),
		}),
		n(REWARDS, {
			currency(2123, {	-- Bloody Tokens
				["timeline"] = { REMOVED_11_0_0 },
			}),
			i(201756),	-- Bulging Coin Purse
			i(202184),	-- Trophy of Strife
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(40088, {	-- A Champion's Tour: The War Within (automated)
				i(223802),	-- Ruby-Eyed Stagshell (PET!)
			}),
			ach(40464),	-- Bounty Master
			ach(40097, {	-- Ruffious's Bid
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40088,	-- A Champion's Tour: Dragon Isles
					40096,	-- Sparking Battle
					40086,	-- Tour of Duty: Azj-Kahet
					40085,	-- Tour of Duty: Hallowfall
					40083,	-- Tour of Duty: Isle of Dorn
					40084,	-- Tour of Duty: The Ringing Deeps
					40087,	-- Unbound Battle
				}},
				["groups"] = {
					title(562),	-- <Name>, Slayer of the Deeps
					i(223158),	-- Raging Cinderbee (MOUNT!)
				},
			}),
			-- TODO: check if achraw still needed once all criteriaIDs are correct
			achraw(40091, {	-- Slightly Spoiled
				crit(66982, {	-- Isle of Dorn
					["maps"] = { ISLE_OF_DORN },
				}),
				crit(66983, {	-- The Ringing Deeps
					["maps"] = { THE_RINGING_DEEPS },
				}),
				-- TODO: Blizzard done goofed with the criteriaIDs here, fix after they do
				-- crit(66982, {	-- Hallowfall
				-- 	["maps"] = { HALLOWFALL },
				-- }),
				crit(66984, {	-- Azj-kahet
					["maps"] = { AZJ_KAHET },
				}),
			}),
			ach(40095),	-- Sparking Battle (x5)
			ach(40096, {	-- Sparking Battle (x20)
				i(225969),	-- Forged Flag of Victory (TOY!)
			}),
			ach(40089, {	-- Spoiled Goods (1x)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS },
			}),
			ach(40090, {	-- Spoiled Goods (10x)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS },
			}),
			ach(40087, {	-- Unbound Battle (automated)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS },
			}),
			ach(40465, {	-- Unbound Bounty (automated)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS },
			}),
			ach(40466, {	-- Unbound Glory (10x)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			}),
			ach(40467, {	-- Unbound Glory (25x)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			}),
			ach(40468, {	-- Unbound Glory (5x)
				["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			}),
		}),
		n(TREASURES, {
			o(433370,{	-- War Supply Chest
				["sym"] = {{"select","itemID",224556},{"pop"}},	-- Glorious Contender's Strongbox
			}),
		}),
		n(REWARDS, {
			currency(2123),	-- Bloody Tokens
		}),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(61234),	-- Hunt in the Night
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			ach(61225),	-- Investigating the Rise		-- 1x
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			ach(61238),	-- Midnight Hunter
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			ach(61231),	-- Midnight Loot
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			ach(61232),	-- Midnight Treasures
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
			ach(61230),	-- Remains in the Rise
			ach(61446, {	-- Slayer's Mastery
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61226,	-- Uprising
					61230,	-- Remains in the Rise
					61266,	-- Spectral Stocker
					61229,	-- Dedication in the Void
					61449,	-- Customary Rise
					61232,	-- Midnight Treasures
				}},
				["groups"] = {
					title(664),	-- Voidslayer %s
				},
			}),
			ach(61464),	-- Spark in the Night			-- 5x
			ach(61465),	-- Spark in the Night			-- 20x
			ach(61226),	-- Uprising						-- 10x
				-- ["maps"] = { AZJ_KAHET, HALLOWFALL, ISLE_OF_DORN, THE_RINGING_DEEPS, UNDERMINE },
		}),
		n(SLAYERS_RISE, {
			n(ACHIEVEMENTS, {
				ach(61227),	-- Entering the Void		-- 50 Kills
				ach(61228),	-- Embracing the Void		-- 100 Kills
				ach(61229),	-- Dedication in the Void	-- 250 Kills
				ach(61447),	-- Partake in the Rise		-- 1 Win
				ach(61448),	-- Frequent the Rise		-- 10 Wins
				ach(61449),	-- Customary Rise			-- 25 Wins
			}),
			n(TREASURES, {
				-- o(433370, {	-- Spectral Battle Chest
					ach(61265),	-- Spectral Capture		-- 1 Chest
					ach(61266),	-- Spectral Stocker		-- 10 Chest
				-- }),
			}),
		}),
		n(TREASURES, {
			-- o(433370,{	-- War Supply Chest
			-- 	["sym"] = {{"select","itemID",224556},{"pop"}},	-- Glorious Contender's Strongbox
			-- }),
		}),
		n(REWARDS, {
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(PVP, {
			q(72376, {	-- looting first War Crate of the day
				["name"] = "Warmode Crate Looted",
			}),
			q(72377, {	-- looting first War Crate of the day
				["name"] = "Warmode Crate Looted",
				["isDaily"] = true,
			}),
			q(72362, {
				["name"] = "Warmode Bounty Looted",
				["isDaily"] = true,
			}),
			q(80413, {	-- after looting War Supply chest, first time per day
				["name"] = "First War Supply Chest of the Day!",
				["timeline"] = {ADDED_10_2_7},
				["isDaily"] = true,
			}),
			q(80414, {	-- after looting War Supply chest, first time per day
				["name"] = "First War Supply Chest of the Day!",
				["timeline"] = {ADDED_10_2_7},
				["isDaily"] = true,
			}),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(PVP, {
			q(80415, {	-- after looting War Supply chest, first time per day
				["name"] = "First War Supply Chest of the Day!",
				["isDaily"] = true,
			}),
			q(80416, {	-- after looting War Supply chest, first time per day
				["name"] = "First War Supply Chest of the Day!",
				["isDaily"] = true,
			}),
			q(84447, {	-- after looting an Unbound Spoils War Supply Chest
				["name"] = "Unbound Spoils Looted.",
			}),
			q(84448, {	-- after looting an Unbound Spoils War Supply Chest
				["name"] = "Unbound Spoils Looted.",
			}),
			q(84449, {	-- after looting an Unbound Spoils War Supply Chest
				["name"] = "Unbound Spoils Looted.",
			}),
		}),
	})),
});
