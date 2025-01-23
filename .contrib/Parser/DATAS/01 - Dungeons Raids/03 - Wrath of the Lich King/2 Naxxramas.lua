-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- Blizzard removed the 10 man Quest / Quest Item, but not the necks themselves in Wrath Classic.
-- They were instead moved to Heroic+ dungeon bosses.
-- #if ANYCLASSIC
local WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_TWO .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. WRATH_PHASE_ONE .. [[;
		t.rwp = 30100;
	end
end]];
-- #endif
local DEATHS_BARGAINING_CHIP = 206576;
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, {
	inst(754, {	-- Naxxramas
		["mapID"] = NAXXRAMAS,
		["maps"] = { 163, 164, 165, 166, 167 },
		["coords"] = {
			{ 87.4, 51.1, DRAGONBLIGHT },
			-- #if AFTER 10.1.5
			{ 35.7, 22.9, EASTERN_PLAGUELANDS },
			-- #endif
		},
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			header(HEADERS.Achievement, 18372, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				i(12846, {	-- Argent Dawn Commission
					["cost"] = {
						{ "i", 206372, 1 },	-- 1x Cracked Argent Dawn Commission
						{ "i", 12811, 1 },	-- 1x Righteous Orb
						{ "i", 6037, 4 },	-- 4x Truesilver Bar
					},
				}),
				n(206148, {	-- Hand of Naxxramas
					["description"] = "When you have both the ward and holy water, head to the entrance of the Crusader's Cathedral, but don't enter there - Instead, use your Ward of Naxxramas and turn to the left. If done correctly, you will see a Dread Ward of Naxxramas right next to the gates there, Once you find the Dread Ward, toss your  Stratholme Holy Water in it.\n\nIf done correctly, you will receive a zone-wide yell, and a debuff called  Sleight of Hand. Once you get this debuff, you have 5 minutes to run all the way to the Undead side of Stratholme, to the gate to the left of the Necropolis where Lord Aurius Rivendare is located. You MUST kill Lord Aurius Rivendare to open the gate. If you arrive in time, a Hand of Naxxramas NPC will be there, and you will be able to use your Argent Dawn Commission to burn it to a crisp.",
					["sourceQuests"] = { 76257 },	-- Darkmaster's Scourgestone
					["questID"] = 76261,
					["maps"] = { 318 },	-- Stratholme - Undead
					["cost"] = {
						{ "i", 12846, 1 },	-- 1x Argent Dawn Commission
						{ "i", 13180, 1 },	-- 1x Stratholme Holy Water
						{ "i", 206377, 1 },	-- 1x Ward of Naxxramas
					},
				}),
				n(16116, {	-- Archmage Angela Dosantos
					["description"] = "Talk to Archmage after defeating Hand of Naxxramas",
					["sourceQuests"] = { 76261 },	-- Hand of Naxxramas
					["coord"] = { 75.5, 52.8, EASTERN_PLAGUELANDS },
					["questID"] = 76262,
				}),
				q(76263, {	-- The Dread Citadel - Naxxramas [Honored]
					["sourceQuests"] = { 76262 },	-- Archmage Angela Dosantos
					["altQuests"] = {
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["provider"] = { "n", 16116 },	-- Archmage Angela Dosantos
					["coord"] = { 75.5, 52.8, EASTERN_PLAGUELANDS },
					["maxReputation"] = { FACTION_ARGENT_DAWN, REVERED },
					["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },
					["cost"] = {
						{ "i", 12363, 5 },	-- 5x Arcane Crystal
						{ "i", 14344, 6 },	-- 6x Large Brilliant Shard
						{ "i", 12811, 1 },	-- 1x Righteous Orb
					},
					["g"] = {
						ach(18372),	-- Wards of the Dread Citadel
					},
				}),
				q(76264, {	-- The Dread Citadel - Naxxramas [Revered]
					["sourceQuests"] = { 76262 },	-- Archmage Angela Dosantos
					["altQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["provider"] = { "n", 16116 },	-- Archmage Angela Dosantos
					["coord"] = { 75.5, 52.8, EASTERN_PLAGUELANDS },
					["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },
					["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },
					["cost"] = {
						{ "i", 12363, 2 },	-- 2x Arcane Crystal
						{ "i", 14344, 3 },	-- 3x Large Brilliant Shard
					},
					["g"] = {
						ach(18372),	-- Wards of the Dread Citadel
					},
				}),
				q(76265, {	-- The Dread Citadel - Naxxramas [Exalted]
					["sourceQuests"] = { 76262 },	-- Archmage Angela Dosantos
					["altQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
					},
					["provider"] = { "n", 16116 },	-- Archmage Angela Dosantos
					["coord"] = { 75.5, 52.8, EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },
					["g"] = {
						ach(18372),	-- Wards of the Dread Citadel
					},
				}),
			})),
			n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				ach(18557),	-- Never Bothered, Anyway
				ach(18616, {	-- Putting Wilhelm Out of Business
					crit(60649, {	-- Omarion's Notes - Pages 1 & 2
						["_quests"] = { 76291 },
					}),
					crit(60650, {	-- Omarion's Notes - Pages 3 & 4
						["_quests"] = { 76292 },
					}),
					crit(60651, {	-- Omarion's Notes - Pages 5 & 6
						["_quests"] = { 76293 },
					}),
					crit(60652, {	-- Omarion's Notes - Pages 7 & 8
						["_quests"] = { 76294 },
					}),
					crit(60653, {	-- Omarion's Notes - Pages 9 & 10
						["_quests"] = { 76295 },
					}),
					crit(60654, {	-- Omarion's Notes - Pages 11 & 12
						["_quests"] = { 76296 },
					}),
					crit(60655, {	-- Omarion's Notes - Pages 13 & 14
						["_quests"] = { 76297 },
					}),
					crit(60656, {	-- Omarion's Notes - Pages 15 & 16
						["_quests"] = { 76298 },
					}),
					crit(60657, {	-- Omarion's Notes - Pages 17 & 18
						["_quests"] = { 76299 },
					}),
					crit(60658, {	-- Omarion's Notes - Pages 19 & 20
						["_quests"] = { 76300 },
					}),
					crit(60659, {	-- Omarion's Notes - Pages 21 & 22
						["_quests"] = { 76301 },
					}),
					crit(60660, {	-- Omarion's Notes - Pages 23 & 24
						["_quests"] = { 76302 },
					}),
					crit(60661, {	-- Omarion's Notes - Pages 25 & 26
						["_quests"] = { 76303 },
					}),
					crit(60662, {	-- Omarion's Notes - Pages 27 & 28
						["_quests"] = { 76304 },
					}),
					crit(60663, {	-- Omarion's Notes - Pages 29 & 30
						["_quests"] = { 76305 },
					}),
					crit(60664, {	-- Omarion's Notes - Pages 31 & 32
						["_quests"] = { 76306 },
					}),
				}),
				ach(11750, {["timeline"] = {ADDED_7_2_0}}),	-- Undying Aesthetic (Naxxramas)
			})),
			n(COMMON_BOSS_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				i(206375, {	-- Corruptor's Scourgestone
					["timeline"] = { ADDED_10_1_5 },
				}),
			})),
			prof(FISHING, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				i(206471, {	-- Abomination's Chain
					["description"] = "Chance to be fished from any slime in Naxxramas.",
					["sourceQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["sourceQuestNumRequired"] = 1,
					["requireSkill"] = FISHING,
				}),
			})),
			n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				q(76395, {	-- Corruptor's Scourgestones
					["sourceQuests"] = { 76390 },	-- Inconvenience Fee
					["provider"] = { "n", 206572 },	-- Zackett Skullsmash
					["repeatable"] = true,
					["cost"] = {{ "i", 206375, 1 }},	-- 1x Corruptor's Scourgestone
					["g"] = {
						i(DEATHS_BARGAINING_CHIP),
					},
				}),
				q(76390, {	-- Inconvenience Fee
					["sourceQuests"] = { 76307 },	-- Makeshift Grappling Hook
					["provider"] = { "n", 206572 },	-- Zackett Skullsmash
					["cost"] = {
						{ "i", 206374, 20 },	-- 20x Invader's Scourgestone
						{ "i", 206375, 5 },		-- 5x Corruptor's Scourgestone
						{ "i", 20520, 3 },		-- 3x Dark Rune
						{ "i", 33042, 1 },		-- 1x Black Coffee
						{ "i", 13180, 2 },		-- 2x Stratholme Holy Water
					},
					["g"] = {
						i(206615),	-- Desecrated Cloth Bracers
						i(206623),	-- Desecrated Leather Bracers
						i(206631),	-- Desecrated Mail Bracers
						i(206640),	-- Desecrated Plate Bracers
					},
				}),
				q(76396, {	-- Invader's Scourgestones
					["sourceQuests"] = { 76390 },	-- Inconvenience Fee
					["provider"] = { "n", 206572 },	-- Zackett Skullsmash
					["repeatable"] = true,
					["cost"] = {{ "i", 206374, 10 }},	-- 10x Invader's Scourgestone
					["g"] = {
						i(DEATHS_BARGAINING_CHIP),
					},
				}),
				q(77244, {	-- Many Corruptor's Scourgestones
					["sourceQuests"] = { 76390 },	-- Inconvenience Fee
					["provider"] = { "n", 206572 },	-- Zackett Skullsmash
					["repeatable"] = true,
					["cost"] = {{ "i", 206375, 5 }},	-- 5x Corruptor's Scourgestone
					["g"] = {
						i(DEATHS_BARGAINING_CHIP),
					},
				}),
				q(77245, {	-- Many Invader's Scourgestones
					["sourceQuests"] = { 76390 },	-- Inconvenience Fee
					["provider"] = { "n", 206572 },	-- Zackett Skullsmash
					["repeatable"] = true,
					["cost"] = {{ "i", 206374, 50 }},	-- 50x Invader's Scourgestone
					["g"] = {
						i(DEATHS_BARGAINING_CHIP),
					},
				}),
				q(76290, {	-- Omarion's Second Handbook
					["sourceQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "i", 206449 },	-- Omarion's Second Handbook
				}),
			})),
			n(SPECIAL, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				i(206473, {	-- Makeshift Grappling Hook
					["sourceQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["sourceQuestNumRequired"] = 1,
					["questID"] = 76307,
					["cost"] = {
						{ "i", 206471, 1 },	-- 1x Abomination's Chain
						{ "i", 206470, 1 },	-- 1x Construct's Hook
						{ "i", 206472, 1 },	-- 1x Faerlina's Sewing Kit
					},
				}),
			})),
			n(TIER_THREE_SETS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				ach(11744),	-- Drop Dead, Gorgeous
				n(CRAFTABLES, {
					filter(CLOTH, {
						i(206617, {	-- Desecrated Cloth Belt
							["cost"] = {
								{ "i", 206609, 1 },	-- 1x Lamented Crusader's Belt
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206619, {	-- Desecrated Cloth Boots
							["cost"] = {
								{ "i", 206611, 1 },	-- 1x Lamented Crusader's Boots
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206615, {	-- Desecrated Cloth Bracers
							["cost"] = {
								{ "i", 206607, 1 },	-- 1x Lamented Crusader's Bracers
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206614, {	-- Desecrated Cloth Chestpiece
							["cost"] = {
								{ "i", 206606, 1 },	-- 1x Lamented Crusader's Chestpiece
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206616, {	-- Desecrated Cloth Gauntlets
							["cost"] = {
								{ "i", 206608, 1 },	-- 1x Lamented Crusader's Gauntlets
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206612, {	-- Desecrated Cloth Helmet
							["cost"] = {
								{ "i", 206604, 1 },	-- 1x Lamented Crusader's Helmet
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206618, {	-- Desecrated Cloth Leggings
							["cost"] = {
								{ "i", 206610, 1 },	-- 1x Lamented Crusader's Leggings
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
						i(206613, {	-- Desecrated Cloth Spaulders
							["cost"] = {
								{ "i", 206605, 1 },	-- 1x Lamented Crusader's Spaulders
								{ "i", 206645, 1 },	-- 1x Cursed Cloth
							},
						}),
					}),
					filter(LEATHER, {
						i(206625, {	-- Desecrated Leather Belt
							["cost"] = {
								{ "i", 206609, 1 },	-- 1x Lamented Crusader's Belt
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206627, {	-- Desecrated Leather Boots
							["cost"] = {
								{ "i", 206611, 1 },	-- 1x Lamented Crusader's Boots
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206623, {	-- Desecrated Leather Bracers
							["cost"] = {
								{ "i", 206607, 1 },	-- 1x Lamented Crusader's Bracers
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206622, {	-- Desecrated Leather Chestpiece
							["cost"] = {
								{ "i", 206606, 1 },	-- 1x Lamented Crusader's Chestpiece
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206624, {	-- Desecrated Leather Gauntlets
							["cost"] = {
								{ "i", 206608, 1 },	-- 1x Lamented Crusader's Gauntlets
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206620, {	-- Desecrated Leather Helmet
							["cost"] = {
								{ "i", 206604, 1 },	-- 1x Lamented Crusader's Helmet
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206626, {	-- Desecrated Leather Leggings
							["cost"] = {
								{ "i", 206610, 1 },	-- 1x Lamented Crusader's Leggings
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
						i(206621, {	-- Desecrated Leather Spaulders
							["cost"] = {
								{ "i", 206605, 1 },	-- 1x Lamented Crusader's Spaulders
								{ "i", 206646, 1 },	-- 1x Languished Leather
							},
						}),
					}),
					filter(MAIL, {
						i(206633, {	-- Desecrated Mail Belt
							["cost"] = {
								{ "i", 206609, 1 },	-- 1x Lamented Crusader's Belt
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206635, {	-- Desecrated Mail Boots
							["cost"] = {
								{ "i", 206611, 1 },	-- 1x Lamented Crusader's Boots
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206631, {	-- Desecrated Mail Bracers
							["cost"] = {
								{ "i", 206607, 1 },	-- 1x Lamented Crusader's Bracers
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206630, {	-- Desecrated Mail Chestpiece
							["cost"] = {
								{ "i", 206606, 1 },	-- 1x Lamented Crusader's Chestpiece
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206632, {	-- Desecrated Mail Gauntlets
							["cost"] = {
								{ "i", 206608, 1 },	-- 1x Lamented Crusader's Gauntlets
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206628, {	-- Desecrated Mail Helmet
							["cost"] = {
								{ "i", 206604, 1 },	-- 1x Lamented Crusader's Helmet
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206634, {	-- Desecrated Mail Leggings
							["cost"] = {
								{ "i", 206610, 1 },	-- 1x Lamented Crusader's Leggings
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
						i(206629, {	-- Desecrated Mail Spaulders
							["cost"] = {
								{ "i", 206605, 1 },	-- 1x Lamented Crusader's Spaulders
								{ "i", 206647, 1 },	-- 1x Scourged Scales
							},
						}),
					}),
					filter(PLATE, {
						i(206642, {	-- Desecrated Plate Belt
							["cost"] = {
								{ "i", 206609, 1 },	-- 1x Lamented Crusader's Belt
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206644, {	-- Desecrated Plate Boots
							["cost"] = {
								{ "i", 206611, 1 },	-- 1x Lamented Crusader's Boots
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206640, {	-- Desecrated Plate Bracers
							["cost"] = {
								{ "i", 206607, 1 },	-- 1x Lamented Crusader's Bracers
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206639, {	-- Desecrated Plate Chestpiece
							["cost"] = {
								{ "i", 206606, 1 },	-- 1x Lamented Crusader's Chestpiece
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206641, {	-- Desecrated Plate Gauntlets
							["cost"] = {
								{ "i", 206608, 1 },	-- 1x Lamented Crusader's Gauntlets
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206636, {	-- Desecrated Plate Helmet
							["cost"] = {
								{ "i", 206604, 1 },	-- 1x Lamented Crusader's Helmet
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206643, {	-- Desecrated Plate Leggings
							["cost"] = {
								{ "i", 206610, 1 },	-- 1x Lamented Crusader's Leggings
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
						i(206637, {	-- Desecrated Plate Spaulders
							["cost"] = {
								{ "i", 206605, 1 },	-- 1x Lamented Crusader's Spaulders
								{ "i", 206648, 1 },	-- 1x Undeath Metal
							},
						}),
					}),
				}),
				cl(DRUID, {
					i(22490, {	-- Dreamwalker Headpiece
						["cost"] = {
							{ "i", 206620, 1 },		-- 1x Desecrated Leather Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22491, {	-- Dreamwalker Spaulders
						["cost"] = {
							{ "i", 206621, 1 },		-- 1x Desecrated Leather Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22488, {	-- Dreamwalker Tunic
						["cost"] = {
							{ "i", 206622, 1 },		-- 1x Desecrated Leather Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22495, {	-- Dreamwalker Wristguards
						["cost"] = {
							{ "i", 206623, 1 },		-- 1x Desecrated Leather Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22493, {	-- Dreamwalker Handguards
						["cost"] = {
							{ "i", 206624, 1 },		-- 1x Desecrated Leather Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22494, {	-- Dreamwalker Girdle
						["cost"] = {
							{ "i", 206625, 1 },		-- 1x Desecrated Leather Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22489, {	-- Dreamwalker Legguards
						["cost"] = {
							{ "i", 206626, 1 },		-- 1x Desecrated Leather Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22492, {	-- Dreamwalker Boots
						["cost"] = {
							{ "i", 206627, 1 },		-- 1x Desecrated Leather Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(MAGE, {
					i(22498, {	-- Frostfire Circlet
						["cost"] = {
							{ "i", 206612, 1 },		-- 1x Desecrated Cloth Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22499, {	-- Frostfire Shoulderpads
						["cost"] = {
							{ "i", 206613, 1 },		-- 1x Desecrated Cloth Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22496, {	-- Frostfire Robe
						["cost"] = {
							{ "i", 206614, 1 },		-- 1x Desecrated Cloth Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22503, {	-- Frostfire Bindings
						["cost"] = {
							{ "i", 206615, 1 },		-- 1x Desecrated Cloth Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22501, {	-- Frostfire Gloves
						["cost"] = {
							{ "i", 206616, 1 },		-- 1x Desecrated Cloth Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22502, {	-- Frostfire Belt
						["cost"] = {
							{ "i", 206617, 1 },		-- 1x Desecrated Cloth Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22497, {	-- Frostfire Leggings
						["cost"] = {
							{ "i", 206618, 1 },		-- 1x Desecrated Cloth Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22500, {	-- Frostfire Sandals
						["cost"] = {
							{ "i", 206619, 1 },		-- 1x Desecrated Cloth Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(HUNTER, {
					i(22438, {	-- Cryptstalker Headpiece
						["cost"] = {
							{ "i", 206628, 1 },		-- 1x Desecrated Mail Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22439, {	-- Cryptstalker Spaulders
						["cost"] = {
							{ "i", 206629, 1 },		-- 1x Desecrated Mail Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22436, {	-- Cryptstalker Tunic
						["cost"] = {
							{ "i", 206630, 1 },		-- 1x Desecrated Mail Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22443, {	-- Cryptstalker Wristguards
						["cost"] = {
							{ "i", 206631, 1 },		-- 1x Desecrated Mail Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22441, {	-- Cryptstalker Handguards
						["cost"] = {
							{ "i", 206632, 1 },		-- 1x Desecrated Mail Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22442, {	-- Cryptstalker Girdle
						["cost"] = {
							{ "i", 206633, 1 },		-- 1x Desecrated Mail Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22437, {	-- Cryptstalker Legguards
						["cost"] = {
							{ "i", 206634, 1 },		-- 1x Desecrated Mail Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22440, {	-- Cryptstalker Boots
						["cost"] = {
							{ "i", 206635, 1 },		-- 1x Desecrated Mail Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(PALADIN, {
					i(22428, {	-- Redemption Headpiece
						["cost"] = {
							{ "i", 206636, 1 },		-- 1x Desecrated Plate Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22429, {	-- Redemption Spaulders
						["cost"] = {
							{ "i", 206637, 1 },		-- 1x Desecrated Plate Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22425, {	-- Redemption Tunic
						["cost"] = {
							{ "i", 206639, 1 },		-- 1x Desecrated Plate Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22424, {	-- Redemption Wristguards
						["cost"] = {
							{ "i", 206640, 1 },		-- 1x Desecrated Plate Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22426, {	-- Redemption Handguards
						["cost"] = {
							{ "i", 206641, 1 },		-- 1x Desecrated Plate Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22431, {	-- Redemption Girdle
						["cost"] = {
							{ "i", 206642, 1 },		-- 1x Desecrated Plate Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22427, {	-- Redemption Legguards
						["cost"] = {
							{ "i", 206643, 1 },		-- 1x Desecrated Plate Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22430, {	-- Redemption Boots
						["cost"] = {
							{ "i", 206644, 1 },		-- 1x Desecrated Plate Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(PRIEST, {
					i(22514, {	-- Circlet of Faith
						["cost"] = {
							{ "i", 206612, 1 },		-- 1x Desecrated Cloth Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22515, {	-- Shoulderpads of Faith
						["cost"] = {
							{ "i", 206613, 1 },		-- 1x Desecrated Cloth Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22512, {	-- Robe of Faith
						["cost"] = {
							{ "i", 206614, 1 },		-- 1x Desecrated Cloth Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22519, {	-- Bindings of Faith
						["cost"] = {
							{ "i", 206615, 1 },		-- 1x Desecrated Cloth Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22517, {	-- Gloves of Faith
						["cost"] = {
							{ "i", 206616, 1 },		-- 1x Desecrated Cloth Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22518, {	-- Belt of Faith
						["cost"] = {
							{ "i", 206617, 1 },		-- 1x Desecrated Cloth Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22513, {	-- Leggings of Faith
						["cost"] = {
							{ "i", 206618, 1 },		-- 1x Desecrated Cloth Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22516, {	-- Sandals of Faith
						["cost"] = {
							{ "i", 206619, 1 },		-- 1x Desecrated Cloth Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(ROGUE, {
					i(22478, {	-- Bonescythe Helmet
						["cost"] = {
							{ "i", 206620, 1 },		-- 1x Desecrated Leather Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22479, {	-- Bonescythe Pauldrons
						["cost"] = {
							{ "i", 206621, 1 },		-- 1x Desecrated Leather Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22476, {	-- Bonescythe Breastplate
						["cost"] = {
							{ "i", 206622, 1 },		-- 1x Desecrated Leather Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22483, {	-- Bonescythe Bracers
						["cost"] = {
							{ "i", 206623, 1 },		-- 1x Desecrated Leather Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22481, {	-- Bonescythe Gauntlets
						["cost"] = {
							{ "i", 206624, 1 },		-- 1x Desecrated Leather Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22482, {	-- Bonescythe Waistguard
						["cost"] = {
							{ "i", 206625, 1 },		-- 1x Desecrated Leather Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22477, {	-- Bonescythe Legplates
						["cost"] = {
							{ "i", 206626, 1 },		-- 1x Desecrated Leather Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22480, {	-- Bonescythe Sabatons
						["cost"] = {
							{ "i", 206627, 1 },		-- 1x Desecrated Leather Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(SHAMAN, {
					i(22466, {	-- Earthshatter Headpiece
						["cost"] = {
							{ "i", 206628, 1 },		-- 1x Desecrated Mail Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22467, {	-- Earthshatter Spaulders
						["cost"] = {
							{ "i", 206629, 1 },		-- 1x Desecrated Mail Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22464, {	-- Earthshatter Tunic
						["cost"] = {
							{ "i", 206630, 1 },		-- 1x Desecrated Mail Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22471, {	-- Earthshatter Wristguards
						["cost"] = {
							{ "i", 206631, 1 },		-- 1x Desecrated Mail Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22469, {	-- Earthshatter Handguards
						["cost"] = {
							{ "i", 206632, 1 },		-- 1x Desecrated Mail Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22470, {	-- Earthshatter Girdle
						["cost"] = {
							{ "i", 206633, 1 },		-- 1x Desecrated Mail Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22465, {	-- Earthshatter Legguards
						["cost"] = {
							{ "i", 206634, 1 },		-- 1x Desecrated Mail Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22468, {	-- Earthshatter Boots
						["cost"] = {
							{ "i", 206635, 1 },		-- 1x Desecrated Mail Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(WARLOCK, {
					i(22506, {	-- Plagueheart Circlet
						["cost"] = {
							{ "i", 206612, 1 },		-- 1x Desecrated Cloth Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22507, {	-- Plagueheart Shoulderpads
						["cost"] = {
							{ "i", 206613, 1 },		-- 1x Desecrated Cloth Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22504, {	-- Plagueheart Robe
						["cost"] = {
							{ "i", 206614, 1 },		-- 1x Desecrated Cloth Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22511, {	-- Plagueheart Bindings
						["cost"] = {
							{ "i", 206615, 1 },		-- 1x Desecrated Cloth Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22509, {	-- Plagueheart Gloves
						["cost"] = {
							{ "i", 206616, 1 },		-- 1x Desecrated Cloth Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22510, {	-- Plagueheart Belt
						["cost"] = {
							{ "i", 206617, 1 },		-- 1x Desecrated Cloth Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22505, {	-- Plagueheart Leggings
						["cost"] = {
							{ "i", 206618, 1 },		-- 1x Desecrated Cloth Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22508, {	-- Plagueheart Sandals
						["cost"] = {
							{ "i", 206619, 1 },		-- 1x Desecrated Cloth Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
				cl(WARRIOR, {
					i(22418, {	-- Dreadnaught Helmet
						["cost"] = {
							{ "i", 206636, 1 },		-- 1x Desecrated Plate Helmet
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22419, {	-- Dreadnaught Pauldrons
						["cost"] = {
							{ "i", 206637, 1 },		-- 1x Desecrated Plate Spaulders
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 280 },	-- 280x Phylacterweave
						},
					}),
					i(22416, {	-- Dreadnaught Breastplate
						["cost"] = {
							{ "i", 206639, 1 },		-- 1x Desecrated Plate Chestpiece
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22423, {	-- Dreadnaught Bracers
						["cost"] = {
							{ "i", 206640, 1 },		-- 1x Desecrated Plate Bracers
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22421, {	-- Dreadnaught Gauntlets
						["cost"] = {
							{ "i", 206641, 1 },		-- 1x Desecrated Plate Gauntlets
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
					i(22422, {	-- Dreadnaught Waistguard
						["cost"] = {
							{ "i", 206642, 1 },		-- 1x Desecrated Plate Belt
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 70 },	-- 70x Phylacterweave
						},
					}),
					i(22417, {	-- Dreadnaught Legplates
						["cost"] = {
							{ "i", 206643, 1 },		-- 1x Desecrated Plate Leggings
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 210 },	-- 210x Phylacterweave
						},
					}),
					i(22420, {	-- Dreadnaught Sabatons
						["cost"] = {
							{ "i", 206644, 1 },		-- 1x Desecrated Plate Boots
							{ "i", 12811, 10 },		-- 10x Righteous Orb
							{ "i", 206579, 140 },	-- 140x Phylacterweave
						},
					}),
				}),
			})),
			n(TREASURES, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				o(403722, {	-- Conveniently Misplaced Hook
					["description"] = "Located in the second room of the Construct Quarter, by a vat of slime to the right.",
					["sourceQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(206470),	-- Construct's Hook
					},
				}),
				o(403731, {	-- Frozen Rune
					["description"] = "Located everywhere inside of Naxxramas.",
					["sourceQuests"] = {
						76263,	-- The Dread Citadel - Naxxramas [Honored]
						76264,	-- The Dread Citadel - Naxxramas [Revered]
						76265,	-- The Dread Citadel - Naxxramas [Exalted]
					},
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(22682),	-- Frozen Rune
					},
				}),
				o(403702, {	-- Lost Page
					["description"] = "Pages 1 and 2 of Omarion's Notes can be found in the Outer Ring of Naxxramas, inside the slime pool that separates the Construct and Arachnid Quarters, to the north of the instance. It will be at the bottom of the pool.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206450, {	-- Omarion's Notes - Pages 1 & 2
							["questID"] = 76291,
						}),
					},
				}),
				o(403703, {	-- Lost Page
					["description"] = "Pages 3 and 4 of Omarion's notes can be found in the first room of the Arachnid Quarter, hidden within the ruined structure by the slime pool.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206451, {	-- Omarion's Notes - Pages 3 & 4
							["questID"] = 76292,
						}),
					},
				}),
				o(403704, {	-- Lost Page
					["description"] = "Pages 5 and 6 of Omarion's Notes can be found just before entering Faerlina's room - Instead of taking a left to enter the boss room, take a right. Page is hidden beneath some spider eggs.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206452, {	-- Omarion's Notes - Pages 5 & 6
							["questID"] = 76293,
						}),
					},
				}),
				o(403705, {	-- Lost Page
					["description"] = "Pages 7 and 8 of Omarion's Notes can be found in Maexxna's Room. Once you enter the room, turn back to face the entrance and look up, there will be a grapple point just above the entrance. Grapple and walk around the outer ring to the eastern end of the room, where the notes will be waiting for you.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206453, {	-- Omarion's Notes - Pages 7 & 8
							["questID"] = 76294,
						}),
					},
				}),
				o(403706, {	-- Lost Page
					["description"] = "Pages 9 and 10 of Omarion's Notes can be found just before the tunnel that leads to Gluth. Before you enter the tunnel, by the pipe after Grobbulus, there will be a grapple point. Simply grapple to it to reach the note.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206454, {	-- Omarion's Notes - Pages 9 & 10
							["questID"] = 76295,
						}),
					},
				}),
				o(403707, {	-- Lost Page
					["description"] = "Pages 11 and 12 of Omarion's Notes can be found in Grobbulus's room. Climb the ramp behind the boss and turn back, you will see a grappling point to a small alcove near the ceiling of the room. Grapple there and walk to the end of the alcove to reach the note.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206455, {	-- Omarion's Notes - Pages 11 & 12
							["questID"] = 76296,
						}),
					},
				}),
				o(403708, {	-- Lost Page
					["description"] = "Pages 13 and 14 of Omarion's Notes can be found high on the ceiling on the corridor after Patchwerk. To reach the page, start by grabbing a grapple point by the tunnel leading to Gluth, at the broken portion to the left just before dropping to the boss, then follow a small grappling puzzle to get to the page.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206456, {	-- Omarion's Notes - Pages 13 & 14
							["questID"] = 76297,
						}),
					},
				}),
				o(403709, {	-- Lost Page
					["description"] = "Pages 15 and 16 of Omarion's Notes can be found in Thaddius's room, by grappling on your way to Zackett Skullsmash.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206457, {	-- Omarion's Notes - Pages 15 & 16
							["questID"] = 76298,
						}),
					},
				}),
				o(403710, {	-- Lost Page
					["description"] = "Pages 17 and 18 of Omarion's Notes can be found in the first room of the Plague Quarter, sitting by a meat wagon just to the left of the entrance. The page does blend in well with the wagon so it can be easy to miss.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206458, {	-- Omarion's Notes - Pages 17 & 18
							["questID"] = 76299,
						}),
					},
				}),
				o(403711, {	-- Lost Page
					["description"] = "Pages 19 and 20 of Omarion's Notes can be found by the corridor between Noth and Heigan in the Plague Quarter. On the mob gauntlet on the left side, there will be a slime pool covered by a sewer lid, and some mushrooms in the area. The note will be on top of one of the mushrooms.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206459, {	-- Omarion's Notes - Pages 19 & 20
							["questID"] = 76300,
						}),
					},
				}),
				o(403712, {	-- Lost Page
					["description"] = "Pages 21 and 22 of Omarion's Notes can be found in Loatheb's room, by a gate to the left of where the boss is standing (when looking from the boss's room entrance).",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206460, {	-- Omarion's Notes - Pages 21 & 22
							["questID"] = 76301,
						}),
					},
				}),
				o(403713, {	-- Lost Page
					["description"] = "Pages 23 and 24 of Omarion's Notes can be found by the platform overlooking Noth's room. The platform is accessible by reaching it via the Outer Ring.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206461, {	-- Omarion's Notes - Pages 23 & 24
							["questID"] = 76302,
						}),
					},
				}),
				o(403714, {	-- Lost Page
					["description"] = "Pages 25 and 26 of Omarion's Notes can be found above the entrance to Gothik's room. Grapple to an upper alcove right at the entrance of the weapon mobs room after Razuvious, then carefully run along the small alcove all the way to Gothik's room to reach the page.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206462, {	-- Omarion's Notes - Pages 25 & 26
							["questID"] = 76303,
						}),
					},
				}),
				o(403715, {	-- Lost Page
					["description"] = "Pages 27 and 28 of Omarion's Notes can be found in the Four Horsemen room, by a sewer pipe to the left as you enter the room.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206463, {	-- Omarion's Notes - Pages 27 & 28
							["questID"] = 76304,
						}),
					},
				}),
				o(403716, {	-- Lost Page
					["description"] = "Pages 29 and 30 of Omarion's Notes can be found by the stables in In Instructor Razuvious's room. Use the grapple point to an upper alcove by the nest just in front of the entrance of Razuvious's battle arena, then run along the alcove to reach the note.",
					["sourceQuests"] = {
						76307,	-- Makeshift Grappling Hook
						76290,	-- Omarion's Second Handbook
					},
					["g"] = {
						i(206464, {	-- Omarion's Notes - Pages 29 & 30
							["questID"] = 76305,
						}),
					},
				}),
				o(403717, {	-- Lost Page
					["description"] = "Pages 31 and 32 of Omarion's Notes can be found in the room after Razuvious with all the enchanted weapons. By the right, next to the corner, by one of the window frames.",
					["sourceQuests"] = { 76290 },	-- Omarion's Second Handbook
					["g"] = {
						i(206465, {	-- Omarion's Notes - Pages 31 & 32
							["questID"] = 76306,
						}),
					},
				}),
				o(403962, {	-- Omarion's Second Handbook
					["description"] = "Located by a cage in the first room of the Military Quarter.",
					["g"] = {
						i(206449),	-- Omarion's Second Handbook
					},
				}),
			})),
			n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				n(206572, {	-- Zackett Skullsmash
					["sourceQuests"] = { 76390 },	-- Inconvenience Fee
					["g"] = {
						i(206573, {	-- Dented Raider's Belt
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Belts from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206609),	-- Lamented Crusader's Belt
							},
						}),
						i(206575, {	-- Dented Raider's Boots
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Boots from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(10402),	-- Blackened Defias Boots
								i(206611),	-- Lamented Crusader's Boots
								i(7187),	-- VanCleef's Boots
							--	i(4660),	-- Walking Boots					Added to original Source in 10.1.7
							},
						}),
						i(206571, {	-- Dented Raider's Bracers
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Bracers from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206607),	-- Lamented Crusader's Bracers
							},
						}),
						i(206570, {	-- Dented Raider's Chestpiece
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Chestpieces from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206606),	-- Lamented Crusader's Chestpiece
								i(3019),	-- Noble's Robe
							},
						}),
						i(206572, {	-- Dented Raider's Gauntlets
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Gauntlets from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206608),	-- Lamented Crusader's Gauntlets
							--	i(1944),	-- Metalworking Gloves				Added to original Source in 10.1.7
							--	i(1945),	-- Woodworking Gloves				Added to original Source in 10.1.7
							},
						}),
						i(206568, {	-- Dented Raider's Helmet
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Helmets from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206604),	-- Lamented Crusader's Helmet
							},
						}),
						i(206574, {	-- Dented Raider's Leggings
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Leggings from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
							--	i(1943),	-- Goblin Mail Leggings				Added to original Source in 10.1.7
							--	i(2978),	-- Veteran Leggings					-- Likely added back. Add when confirmed
								i(206610),	-- Lamented Crusader's Leggings
							},
						}),
						i(206569, {	-- Dented Raider's Spaulders
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 3 }},
							["description"] = "Includes a wide range of Bind on Equip (BoE) Spaulders from Classic, including those found in dungeons. We specifically feature items where Dented Tokens serve as the exclusive or optimal source.",
							["g"] = {
								i(206605),	-- Lamented Crusader's Spaulders
							},
						}),
						i(206771, {	-- Pattern: Cursed Cloth (RECIPE!)
							["sourceAchievements"] = { 11744 },	-- Drop Dead, Gorgeous
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 20 }},
						}),
						i(206772, {	-- Pattern: Languished Leather (RECIPE!)
							["sourceAchievements"] = { 11744 },	-- Drop Dead, Gorgeous
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 20 }},
						}),
						i(206773, {	-- Pattern: Scourged Scales (RECIPE!)
							["sourceAchievements"] = { 11744 },	-- Drop Dead, Gorgeous
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 20 }},
						}),
						i(206774, {	-- Plans: Undeath Metal (RECIPE!)
							["sourceAchievements"] = { 11744 },	-- Drop Dead, Gorgeous
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 20 }},
						}),
						i(206579, {	-- Phylacterweave
							-- Dont symlink it Dented tokens, makes it too spammy
							["description"] = "Can also drop from any Dented Raider's Token.\nChanged to Bind on Account in 10.1.7",
						}),
						i(206565, {	-- Plagued Grain (TOY!)
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 15 }},
						}),
						i(208068, {	-- Rotten Delicious
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 30 }},
						}),
						i(206577, {	-- Slime-Covered Scroll
							["cost"] = {{ "i", DEATHS_BARGAINING_CHIP, 12 }},
							["g"] = {
								i(206552),	-- Ancient Design: Frostwyrm's Frigid Stare (RECIPE!)
								i(206551),	-- Ancient Design: Frostwyrm's Icy Gaze (RECIPE!)
								i(206543),	-- Ancient Design: Gem of the Nerubians (RECIPE!)
								i(206547),	-- Ancient Pattern: Bindings of the Harvested Soul (RECIPE!)
								i(206556),	-- Ancient Pattern: Displacement Boots (RECIPE!)
								i(206554),	-- Ancient Pattern: Necrotic Gown (RECIPE!)
								i(206538),	-- Ancient Pattern: Nerubian Persuader (RECIPE!)
								i(206583),	-- Ancient Pattern: Peculiar Glacial Mantle (RECIPE!)
								i(206563),	-- Ancient Pattern: Shroud of Forbidden Magic (RECIPE!)
								i(206540),	-- Ancient Plans: Axe of Sundered Bone (RECIPE!)
								i(206558),	-- Ancient Plans: Belt of the Mentor (RECIPE!)
								i(206539),	-- Ancient Plans: Blade of Unholy Might (RECIPE!)
								i(206546),	-- Ancient Plans: Blade of the Fallen Seraph (RECIPE!)
								i(206542),	-- Ancient Plans: Bracers of Vengeance (RECIPE!)
								i(206805),	-- Ancient Plans: Bucket Kickers (RECIPE!)
								i(206553),	-- Ancient Plans: Dawn of Demise (RECIPE!)
								i(206557),	-- Ancient Plans: Death's Gamble (RECIPE!)
								i(206537),	-- Ancient Plans: Edict of the Redeemed Crusader (RECIPE!)
								i(206555),	-- Ancient Plans: Gauntlets of the Unrelenting (RECIPE!)
								i(206550),	-- Ancient Plans: Harbinger of Death (RECIPE!)
								i(206533),	-- Ancient Plans: Midnight's Graze (RECIPE!)
								i(206545),	-- Ancient Plans: Plated Construct's Ribcage (RECIPE!)
								i(206536),	-- Ancient Plans: Shade's Blade (RECIPE!)
								i(206531),	-- Ancient Plans: Strength of Menethil (RECIPE!)
								i(206560),	-- Ancient Plans: Stygian Shield (RECIPE!)
								i(206549),	-- Ancient Plans: The Face of Doom (RECIPE!)
								i(206544),	-- Ancient Plans: The Final Dream (RECIPE!)
								i(206541),	-- Ancient Plans: The Plague Belcher (RECIPE!)
								i(206534),	-- Ancient Plans: Weaver's Fang (RECIPE!)
								i(206535),	-- Ancient Plans: Widow's Weep (RECIPE!)
								i(206559),	-- Ancient Schematic: Replaced Servo Arm (RECIPE!)
								i(206548),	-- Ancient Technique: Encased Frigid Heart (RECIPE!)
								i(206532),	-- Ancient Technique: Soulscryer (RECIPE!)
							},
						}),
					},
				}),
			})),
			n(ZONE_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				i(207702, {	-- Wartorn Scrap
					["timeline"] = { ADDED_10_1_5 },
				}),
			})),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(578),	-- The Dedicated Few (10 player)
						ach(562),	-- The Arachnid Quarter (10 player)
						ach(566),	-- The Plague Quarter (10 player)
						ach(568),	-- The Military Quarter (10 player)
						ach(564),	-- The Construct Quarter (10 player)
						ach(576, {	-- The Fall of Naxxramas (10 player)
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								562,	-- The Arachnid Quarter (10 player)
								566,	-- The Plague Quarter (10 player)
								568,	-- The Military Quarter (10 player)
								564,	-- The Construct Quarter (10 player)
								572,	-- Sapphiron's Demise (10 player)
								574,	-- Kel'Thuzad's Defeat (10 player)
							}},
						}),
						ach(2187, {	-- The Undying
							["timeline"] = { REMOVED_4_0_3 },
							["groups"] = {
								title(109, {	-- The Undying
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
					}),
					n(QUESTS, {
						q(13372, {	-- The Key to the Focusing Iris (Quest)
							["provider"] = { "i", 44569 },	-- Key to the Focusing Iris (Item)
							-- #if ANYCLASSIC
							["OnUpdate"] = WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE,
							-- #endif
							["lvl"] = lvlsquish(78, 78, 30),
							["groups"] = {
								i(44582, {	-- Key to the Focusing Iris
									["timeline"] = { DELETED_4_2_0 },
									-- #if ANYCLASSIC
									["OnUpdate"] = WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE,
									-- #endif
								}),
							},
						}),
					}),
					n(SPECIAL, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
						n(206712, {	-- Valiance
							["description"] = "You must do this in the 10-man version of Naxxramas, with Instructor Razuvious still alive.\n\nOnce you have the Rotten Delicious apple, you need to go back to Valiance, and slowly approach it, while attempting to give the item. Once you're able to do so, the steed will eat the rotten apple, but that will not be enough, as it will still refuse you as its rider.\n\nClick on one of the Obedience Crystal near the boss to mind control one of the Understudy adds, and bring the mind-controlled add to Valiance, which will at that point mount Valiance. Bring the mounted add back to Razuvious, and then break the mind control by clicking on the mind-controlled pet portrait and selecting Dismiss.\n\nNow kill the boss and loot your new mount.",
							["questID"] = 76378,
							["cost"] = {{ "i", 208068, 1 }},	-- 1x Rotten Delicious
							["g"] = {
								i(206585),	-- Valiance (MOUNT!)
							},
						}),
					})),
					n(ZONE_DROPS, {
						i(39467),	-- Minion Bracers
						i(39427),	-- Omen of Ruin
						i(39468),	-- The Stray
						i(39473),	-- Contortion
						i(39472),	-- Chain of Latent Energies
						i(39470),	-- Medallion of the Disgraced
					}),
					n(NAXX_ARACHNID_QUARTER, {
						e(1601, {	-- Anub'Rehkan
							["creatureID"] = 15956,	-- Anub'Rehkan
							["lore"] = "Anub'Rekhan, one of the finest Spider Lords of Azjol'Nerub, was brought under control of the Scourge when he and his commander, Anub'Arak, were finally defeated by the Lich King many years ago. It is said he was the most loyal of Anub'Arak's commanders.",
							["groups"] = {
								ach(562, {	-- The Arachnid Quarter (10 player)
									["criteriaID"] = 5100,	-- Anub'Rehkan slain
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7146,	-- Anub'Rehkan slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39140),	-- Knife of Incision
								i(39146),	-- Collar of Dissolution
								i(39188),	-- Chivalric Chestguard
								i(39192),	-- Gloves of Dark Gestures
								i(39190),	-- Agonal Sash
								i(39191),	-- Splint-Bound Leggings
								i(39189),	-- Boots of Persistence
								i(39139),	-- Ravaging Sabaton
								i(39193),	-- Band of Neglected Pleas
								i(39141),	-- Deflection Band
							},
						}),
						e(1602, {	-- Grand Widow Faerlina
							["creatureID"] = 15953,	-- Grand Widow Faerlina
							["lore"] = "A botanist in life, breeder and caretaker of arachnids in death, she oversees the spider wing, developing the most potent of poisons for the Lich King.",
							["groups"] = {
								ach(1997),	-- Momma Said Knock You Out (10 player)
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(562, {	-- The Arachnid Quarter (10 player)
									["criteriaID"] = 5101,	-- Grand Widow Faerlina slain
								}),
								-- #else
								ach(562, {	-- The Arachnid Quarter (10 player)
									["criteriaID"] = 6430,	-- Grand Widow Faerlina slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7147,	-- Grand Widow Faerlina slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(206472, {	-- Faerlina's Sewing Kit
									["sourceQuests"] = {
										76263,	-- The Dread Citadel - Naxxramas [Honored]
										76264,	-- The Dread Citadel - Naxxramas [Revered]
										76265,	-- The Dread Citadel - Naxxramas [Exalted]
									},
									["sourceQuestNumRequired"] = 1,
									["timeline"] = { ADDED_10_1_5 },
								}),
								i(39200),	-- Grieving Spellblade
								i(39199),	-- Watchful Eye
								i(39198),	-- Frostblight Pauldrons
								i(39195),	-- Bracers of Lost Sentiments
								i(39197),	-- Gauntlets of the Master
								i(39194),	-- Rusted-Link Spiked Gauntlets
								i(39216),	-- Sash of Mortal Desire
								i(39217),	-- Avenging Combat Leggings
								i(39215),	-- Boots of the Follower
								i(39196),	-- Boots of the Worshiper
							},
						}),
						e(1603, {	-- Maexxna
							["creatureID"] = 15952,	-- Maexxna
							["lore"] = "Born deep within the mountains of Northrend many ages ago, she was captured within the dread citadel Naxxramas, where she gives birth to her brood, feeding them the corpses of all who dare venture too deeply into Naxxramas.",
							["groups"] = {
								ach(1858),	-- Arachnophobia (10 player)
								ach(562, {	-- The Arachnid Quarter (10 player)
									["criteriaID"] = 5102,	-- Maexxna slain
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7148,	-- Maexxna slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(93030, {	-- Giant Bone Spider (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								i(39221),	-- Wraith Spear
								i(39226),	-- Maexxna's Femur
								i(39233),	-- Aegis of Damnation
								i(39232),	-- Pendant of Lost Vocations
								i(39230),	-- Spaulders of the Monstrosity
								i(39225),	-- Cloak of Armed Strife
								i(39228),	-- Web Cocoon Grips
								i(39224),	-- Leggings of Discord
								i(39231),	-- Timeworn Silken Band
								i(39229),	-- Embrace of the Spider
							},
						}),
					}),
					n(NAXX_PLAGUE_QUARTER, {
						e(1604, {	-- Noth the Plaguebringer
							["creatureID"] = 15954,	-- Noth the Plaguebringer
							["lore"] = "Responsible for the creation of the process that distills the souls of the living and places them within the cold cage of undeath, Noth was observed to be refining this process even now.",
							["groups"] = {
								ach(566, {	-- The Plague Quarter (10 player)
									["criteriaID"] = 5104,	-- Noth the Plaguebringer slain
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7153,	-- Noth the Plaguebringer slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39240),	-- Noth's Curse
								i(39237),	-- Spaulders of Resumed Battle
								i(39241),	-- Dark Shroud of the Scourge
								i(39239),	-- Chestplate of the Risen Soldier
								i(39242),	-- Robes of Hoarse Breaths
								i(39235),	-- Bone-Framed Bracers
								i(39243),	-- Handgrips of the Foredoomed
								i(39234),	-- Plague-Impervious Boots
								i(39236),	-- Trespasser's Boots
								i(39244),	-- Ring of the Fated
							},
						}),
						e(1605, {	-- Heigan the Unclean
							["creatureID"] = 15936,	-- Heigan the Unclean
							["lore"] = "The mastermind behind the plague cauldrons that turned the wilderness of Azeroth into the Plaguelands. It is said that Heigan has rigged the very walls and floors of Naxxramas itself with a vast array of traps, which he can trigger at will.",
							["groups"] = {
								ach(1996),	-- The Safety Dance (10 player)
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(566, {	-- The Plague Quarter (10 player)
									["criteriaID"] = 5112,	-- Heigan the Unclean slain
								}),
								-- #else
								ach(566, {	-- The Plague Quarter (10 player)
									["criteriaID"] = 6426,	-- Heigan the Unclean slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7154,	-- Heigan the Unclean slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39245),	-- Demise
								i(39255),	-- Staff of the Plague Beast
								i(39246),	-- Amulet of Autopsy
								i(39249),	-- Shoulderplates of Bloodshed
								i(39248, {	-- Tunic of the Lost Pack
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39247),	-- Cuffs of Dark Shadows
								i(39252),	-- Preceptor's Bindings
								i(39251),	-- Necrogenic Belt
								i(39254, {	-- Saltarello Shoes
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39250),	-- Ring of Holy Cleansing
							},
						}),
						e(1606, {	-- Loatheb
							["creatureID"] = 16011,	-- Loatheb
							["lore"] = "The hideous result of fusing the living plague of the Plaguelands with the bog beasts of Azeroth, Loatheb is said to control the power of healing itself.",
							["groups"] = {
								ach(2182),	-- Spore Loser (10 player)
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(566, {	-- The Plague Quarter (10 player)
									["criteriaID"] = 5113,	-- Loatheb slain
								}),
								-- #else
								ach(566, {	-- The Plague Quarter (10 player)
									["criteriaID"] = 6428,	-- Loatheb slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7155,	-- Loatheb slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(93032, {	-- Fungal Abomination (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								i(40622),	-- Spaulders of the Lost Conqueror
								i(40623),	-- Spaulders of the Lost Protector
								i(40624),	-- Spaulders of the Lost Vanquisher
								i(39256),	-- Sulfur Stave
								i(39260),	-- Helm of the Corrupted Mind
								i(39259),	-- Fungi-Stained Coverings
								i(39258),	-- Legplates of Inescapable Death
								i(39257),	-- Loatheb's Shadow
							},
						}),
					}),
					n(NAXX_MILITARY_QUARTER, {
						e(1607, {	-- Instructor Razuvious
							["creatureID"] = 16061,	-- Instructor Razuvious
							["lore"] = "Kel'Thuzad's appointed trainer of all death knights. It is said that his own technique is so potent, only a disciple of his could possibly withstand his might.",
							["groups"] = {
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(568, {	-- The Military Quarter (10 player)
									["criteriaID"] = 6429,	-- Instructor Razuvious slain
								}),
								-- #else
								ach(568, {	-- The Military Quarter (10 player)
									["criteriaID"] = 5120,	-- Instructor Razuvious slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7156,	-- Instructor Razuvious slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39296),	-- Accursed Bow of the Elite
								i(39311),	-- Scepter of Murmuring Spirits
								i(39310),	-- Mantle of the Extensive Mind
								i(39297),	-- Cloak of Darkening
								i(39307),	-- Iron Rings of Endurance
								i(39306),	-- Plated Gloves of Relief
								i(39299),	-- Rapid Attack Gloves
								i(39308),	-- Girdle of Lenience
								i(39298),	-- Waistguard of the Tutor
								i(39309),	-- Leggings of the Instructor
							},
						}),
						e(1608, {	-- Gothik the Harvester
							["creatureID"] = 16060,	-- Gothik the Harvester
							["lore"] = "A master of necromancy and conjuration, Gothik is said to be able to beckon forth legions of the undead at a moment's notice. It is with his guidance that even the weakest of Death Knights can raise the dead.",
							["groups"] = {
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(568, {	-- The Military Quarter (10 player)
									["criteriaID"] = 6431,	-- Gothik the Harvester slain
								}),
								-- #else
								ach(568, {	-- The Military Quarter (10 player)
									["criteriaID"] = 5108,	-- Gothik the Harvester slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7157,	-- Gothik the Harvester slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39344),	-- Slayer of the Lifeless
								i(39392),	-- Veiled Amulet of Life
								i(39391),	-- Heinous Mail Chestguard
								i(39386),	-- Tunic of Dislocation
								i(39390),	-- Resurgent Phantom Bindings
								i(39345),	-- Girdle of the Ascended Phantom
								i(39379),	-- Spectral Rider's Girdle
								i(39369),	-- Sabatons of Deathlike Gloom
								i(39389),	-- Signet of the Malevolent
								i(39388),	-- Spirit-World Glass
							},
						}),
						e(1609, {	-- The Four Horsemen
							["crs"] = {
								30549,	-- Baron Rivendare
								16064,	-- Thane Korth'azz
								16065,	-- Lady Blaumeux
								16063,	-- Sir Zeliek
							},
							["lore"] = "The most powerful death knights within Naxxramas are the four horsemen. They represent the pinnacle of Kel'Thuzad's guard. The first, Thane Korth'azz, holds the power of flame. The next, Lady Blaumeux, calls forth the power of shadows, drawing the souls of the living into the voracious embrace. Sir Zeliek, a paladin in life, so strong in his faith, that even in undeath, the power of the light still heeds his call, smiting his foes in battle. The final death knight, Lord Mograine, was the finest warrior that the death knights had ever seen. However, after the events of Azeroth, he vanished without a trace. Kel'Thuzad has appointed Baron Rivendare in his place.",
							["provider"] = { "o", 193426 },	-- Four Horsemen Chest
							["groups"] = {
								ach(2176),	-- And They Would All Go Down Together (10 player)
								ach(568, {	-- The Military Quarter (10 player)
									["criteriaID"] = 7805,	-- The Four Horsemen slain
								}),
								i(40610),	-- Chestguard of the Lost Conqueror
								i(40611),	-- Chestguard of the Lost Protector
								i(40612),	-- Chestguard of the Lost Vanquisher
								i(39394),	-- Charmed Cierge
								i(39393),	-- Claymore of Ancient Power
								i(39395),	-- Thane's Tainted Greathelm
								i(39397),	-- Pauldrons of Havoc
								i(39396),	-- Gown of Blaumeux
							},
						}),
					}),
					n(NAXX_CONSTRUCT_QUARTER, {
						e(1610, {	-- Patchwerk
							["creatureID"] = 16028,	-- Patchwerk
							["lore"] = "When word of his existence first reached the ears of the Brotherhood, none believed the tales of an abomination with such immense speed and strength. Fewer still believed it when he fell the first time... Patchwerk want to play!",
							["groups"] = {
								ach(1856),	-- Make Quick Werk of Him (10 player)
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 5110,	-- Patchwerk slain
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7149,	-- Patchwerk slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39271),	-- Blade of Dormant Memories
								i(39270),	-- Hatestrike
								i(39267),	-- Abomination Shoulderblades
								i(39274),	-- Retcher's Shoulderpads
								i(39272),	-- Drape of Surgery
								i(39275),	-- Contagion Gloves
								i(39262, {	-- Gauntlets of Combined Strength
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39261),	-- Tainted Girdle of Mending
								i(39263, {	-- Dissevered Leggings
									-- #if ANYCLASSIC
									["OnUpdate"] = [[function(t) if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_TWO .. [[) then t.u = nil; else t.u = ]] .. WRATH_PHASE_TWO .. [[; end end]],
									-- #if BEFORE 8.0.1
									["description"] = "This item was originally unavailable until Patch 8.0.1, but after H+ was introduced to Wrath Classic, it was added as a boss drop from Old Kingdom.",
									-- #endif
									-- #elseif BEFORE 8.0.1
									["description"] = "This item was originally unavailable until Patch 8.0.1 after the AllTheThings Discord reported it missing from the Patchwerk loot table. Interestingly enough, its absense triggered the creation of the addon by Crieve after failing to get this transmog to drop after many many months of unsuccessfully farming for it.",
									-- #endif
									["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 },
								}),
								i(39273),	-- Sullen Cloth Boots
							},
						}),
						e(1611, {	-- Grobbulus
							["creatureID"] = 15931,	-- Grobbulus
							["lore"] = "The first of what was to be an army of flesh giants. It carried the plague slime of Naxxramas within its body, injecting the living ooze into the bodies of its foe. The recipient of this foul injection would usually flee to his allies, bringing them down with him.",
							["groups"] = {
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 5114,	-- Grobbulus slain
								}),
								-- #else
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 6425,	-- Grobbulus slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7150,	-- Grobbulus slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(39281),	-- Infection Repulser
								i(39276),	-- The Skull of Ruin
								i(39282),	-- Bone-Linked Amulet
								i(39284),	-- Miasma Mantle
								i(39278),	-- Bands of Anxiety
								i(39283),	-- Putrescent Bands
								i(39285),	-- Handgrips of Turmoil
								i(39279),	-- Blistered Belt of Decay
								i(39280),	-- Leggings of Innumerable Barbs
								i(39277),	-- Sealing Ring of Grobbulus
							},
						}),
						e(1612, {	-- Gluth
							["creatureID"] = 15932,	-- Gluth
							["lore"] = "The foul plague-dog of Naxxramas, was said to have an appetite so voracious that even the living were not enough to satisfy his hunger. Feugen was said to feed him an army of zombies daily, recycling the remains of undead too weak to use in combat.",
							-- #IF NOT ANYCLASSIC
							["sym"] = {
								{"select","instanceID",754},{"pop"},	-- Naxx
								{"where","difficultyID",3},		-- 10 Difficulty
								{"extract","encounterID"},		-- Extract Encounters
								{"not","encounterID",
									1612,	-- Not Gluth
									1614,	-- Not Sapphiron
									1615,	-- Not Kel'Thuzad
								},{"pop"},
								{"is","itemID"},				-- Items only
								{"not","itemID",
									93032,	-- Fungal Abomination (PET!)
									93030,	-- Giant Bone Spider (PET!)
								},
							},
							-- #ENDIF
							["groups"] = {
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 6416,	-- Gluth slain
								}),
								-- #else
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 5117,	-- Gluth slain
								}),
								-- #endif
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7151,	-- Gluth slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(93029, {	-- Stitched Pup (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								-- #IF ANYCLASSIC
								-- Leaving this duplication for Classic because it doesn't support the 'extract' symlink command
								i(40610),	-- Chestguard of the Lost Conqueror
								i(40611),	-- Chestguard of the Lost Protector
								i(40612),	-- Chestguard of the Lost Vanquisher
								i(40619),	-- Leggings of the Lost Conqueror
								i(40620),	-- Leggings of the Lost Protector
								i(40621),	-- Leggings of the Lost Vanquisher
								i(40622),	-- Spaulders of the Lost Conqueror
								i(40623),	-- Spaulders of the Lost Protector
								i(40624),	-- Spaulders of the Lost Vanquisher
								i(39394),	-- Charmed Cierge
								i(39393),	-- Claymore of Ancient Power
								i(39245),	-- Demise
								i(39255),	-- Staff of the Plague Beast
								i(39256),	-- Sulfur Stave
								i(39221),	-- Wraith Spear
								i(39271),	-- Blade of Dormant Memories
								i(39200),	-- Grieving Spellblade
								i(39270),	-- Hatestrike
								i(39281),	-- Infection Repulser
								i(39140),	-- Knife of Incision
								i(39226),	-- Maexxna's Femur
								i(39344),	-- Slayer of the Lifeless
								i(39291),	-- Torment of the Banished
								i(39296),	-- Accursed Bow of the Elite
								i(39233),	-- Aegis of Damnation
								i(39276),	-- The Skull of Ruin
								i(39311),	-- Scepter of Murmuring Spirits
								i(39199),	-- Watchful Eye
								i(39294),	-- Arc-Scorched Helmet
								i(39295),	-- Cowl of Sheet Lightning
								i(39260),	-- Helm of the Corrupted Mind
								i(39240),	-- Noth's Curse
								i(39395),	-- Thane's Tainted Greathelm
								i(39246),	-- Amulet of Autopsy
								i(39282),	-- Bone-Linked Amulet
								i(39146),	-- Collar of Dissolution
								i(39232),	-- Pendant of Lost Vocations
								i(39392),	-- Veiled Amulet of Life
								i(39267),	-- Abomination Shoulderblades
								i(39198),	-- Frostblight Pauldrons
								i(39310),	-- Mantle of the Extensive Mind
								i(39284),	-- Miasma Mantle
								i(39397),	-- Pauldrons of Havoc
								i(39274),	-- Retcher's Shoulderpads
								i(39249),	-- Shoulderplates of Bloodshed
								i(39237),	-- Spaulders of Resumed Battle
								i(39230),	-- Spaulders of the Monstrosity
								i(39225),	-- Cloak of Armed Strife
								i(39297),	-- Cloak of Darkening
								i(39241),	-- Dark Shroud of the Scourge
								i(39272),	-- Drape of Surgery
								i(39239),	-- Chestplate of the Risen Soldier
								i(39188),	-- Chivalric Chestguard
								i(39259),	-- Fungi-Stained Coverings
								i(39396),	-- Gown of Blaumeux
								i(39391),	-- Heinous Mail Chestguard
								i(39242),	-- Robes of Hoarse Breaths
								i(39386),	-- Tunic of Dislocation
								i(39248, {	-- Tunic of the Lost Pack
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39278),	-- Bands of Anxiety
								i(39235),	-- Bone-Framed Bracers
								i(39195),	-- Bracers of Lost Sentiments
								i(39247),	-- Cuffs of Dark Shadows
								i(39307),	-- Iron Rings of Endurance
								i(39252),	-- Preceptor's Bindings
								i(39283),	-- Putrescent Bands
								i(39390),	-- Resurgent Phantom Bindings
								i(39275),	-- Contagion Gloves
								i(39262, {	-- Gauntlets of Combined Strength
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39197),	-- Gauntlets of the Master
								i(39192),	-- Gloves of Dark Gestures
								i(39243),	-- Handgrips of the Foredoomed
								i(39285),	-- Handgrips of Turmoil
								i(39306),	-- Plated Gloves of Relief
								i(39299),	-- Rapid Attack Gloves
								i(39194),	-- Rusted-Link Spiked Gauntlets
								i(39228),	-- Web Cocoon Grips
								i(39190),	-- Agonal Sash
								i(39279),	-- Blistered Belt of Decay
								i(39308),	-- Girdle of Lenience
								i(39345),	-- Girdle of the Ascended Phantom
								i(39251),	-- Necrogenic Belt
								i(39216),	-- Sash of Mortal Desire
								i(39379),	-- Spectral Rider's Girdle
								i(39261),	-- Tainted Girdle of Mending
								i(39298),	-- Waistguard of the Tutor
								i(39217),	-- Avenging Combat Leggings
								i(39293),	-- Blackened Legplates of Feugen
								i(39263, {	-- Dissevered Leggings
									-- #if ANYCLASSIC
									["OnUpdate"] = [[function(t) if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_TWO .. [[) then t.u = nil; else t.u = ]] .. WRATH_PHASE_TWO .. [[; end end]],
									-- #if BEFORE 8.0.1
									["description"] = "This item was originally unavailable until Patch 8.0.1, but after H+ was introduced to Wrath Classic, it was added as a boss drop from Old Kingdom.",
									-- #endif
									-- #elseif BEFORE 8.0.1
									["description"] = "This item was originally unavailable until Patch 8.0.1 after the AllTheThings Discord reported it missing from the Patchwerk loot table. Interestingly enough, its absense triggered the creation of the addon by Crieve after failing to get this transmog to drop after many many months of unsuccessfully farming for it.",
									-- #endif
									["timeline"] = { CREATED_3_0_2, ADDED_8_0_1 },
								}),
								i(39224),	-- Leggings of Discord
								i(39280),	-- Leggings of Innumerable Barbs
								i(39309),	-- Leggings of the Instructor
								i(39258),	-- Legplates of Inescapable Death
								i(39191),	-- Splint-Bound Leggings
								i(39189),	-- Boots of Persistence
								i(39215),	-- Boots of the Follower
								i(39196),	-- Boots of the Worshiper
								i(39234),	-- Plague-Impervious Boots
								i(39139),	-- Ravaging Sabatons
								i(39369),	-- Sabatons of Deathlike Gloom
								i(39254, {	-- Saltarello Shoes
									-- #if ANYCLASSIC
									["description"] = "This item was originally available in Naxxramas 10, but after H+ was introduced to Wrath Classic, it was removed.",
									["timeline"] = { ADDED_3_0_2, REMOVED_3_4_1 },
									-- #endif
								}),
								i(39273),	-- Sullen Cloth Boots
								i(39236),	-- Trespasser's Boots
								i(39193),	-- Band of Neglected Pleas
								i(39141),	-- Deflection Band
								i(39250),	-- Band of Holy Cleansing
								i(39244),	-- Ring of the Fated
								i(39277),	-- Sealing Ring of Grobbulus
								i(39389),	-- Signet of the Malevolent
								i(39231),	-- Timeworn Silken Band
								i(39229),	-- Embrace of the Spider
								i(39257),	-- Loatheb's Shadow
								i(39292),	-- Repelling Charge
								i(39388),	-- Spirit-World Glass
								-- #ENDIF
							},
						}),
						e(1613, {	-- Thaddius
							["creatureID"] = 15928,	-- Thaddius
							["lore"] = "Built from the flesh of women and children, it is said that their souls are fused together - eternally bound within that foul prison of flesh.",
							["groups"] = {
								ach(2178),	-- Shocking! (10 player)
								ach(2180),	-- Subtraction (10 player)
								ach(564, {	-- The Construct Quarter (10 player)
									["criteriaID"] = 5119,	-- Thaddius slain
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7152,	-- Thaddius slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(40619),	-- Leggings of the Lost Conqueror
								i(40620),	-- Leggings of the Lost Protector
								i(40621),	-- Leggings of the Lost Vanquisher
								i(39291),	-- Torment of the Banished
								i(39294),	-- Arc-Scorched Helmet
								i(39295),	-- Cowl of Sheet Lightning
								i(39293),	-- Blackened Legplates of Feugen
								i(39292),	-- Repelling Charge
							},
						}),
					}),
					n(NAXX_UPPER_NECROPOLIS, {
						e(1614, {	-- Sapphiron
							["creatureID"] = 15989,	-- Sapphiron
							["lore"] = "Once a noble blue dragon within the mountains of Northrend, Sapphiron was slain by Arthas during his campaign through the frozen north. Resurrected to serve him, Sapphiron guards Kel'Thuzad's lair eternally, awaiting those who would dare trespass upon his master.",
							["groups"] = {
								ach(572),	-- Sapphiron's Demise (10 player)
								ach(2146),	-- The Hundred Club (10 player)
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 7158,	-- Sapphiron slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(44569, {	-- Key to the Focusing Iris (Item)
									-- #if ANYCLASSIC
									["OnUpdate"] = WOTLK_CLASSIC_TENMAN_KEY_ONUPDATE,
									-- #endif
								}),
								i(39409),	-- Cowl of Winged Fear
								i(39403),	-- Helm of the Unsubmissive
								i(39399),	-- Helm of the Vast Legions
								i(39405),	-- Helmet of the Inner Sanctum
								i(39404),	-- Cloak of Mastery
								i(39415),	-- Shroud of the Citadel
								i(39398),	-- Massive Skeletal Ribcage
								i(39408),	-- Leggings of Sapphiron
								i(39401),	-- Circle of Death
								i(39407),	-- Circle of Life
							},
						}),
						e(1615, {	-- Kel'Thuzad
							["creatureID"] = 15990,	-- Kel'Thuzad
							["lore"] = "He serves the Lich King without question, a necromancer of great prowess in life, turned to a master of necromancy after his death. It is said he is the most loyal of the Lich King's subjects.",
							["groups"] = {
								ach(574),	-- Kel'Thuzad's Defeat (10 player)
								ach(2184, {	-- Just Can't Get Enough (10 player)
									["cr"] = 16428,	-- Unstoppable Abomination
									-- #if NOT ANYCLASSIC
									["description"] = "Pull 1 abomination from each section and then AOE them all when they get to you. Very easy achievement.",
									-- #endif
								}),
								ach(5016, {	-- Just Can't Get Enough - Guild Edition
									["timeline"] = { ADDED_4_0_3 },
								}),
								ach(578, {	-- The Dedicated Few (10 player)
									["criteriaID"] = 6802,	-- Kel'Thuzad slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_10M_OnUpdate]],
									-- #endif
								}),
								i(40616),	-- Helm of the Lost Conqueror
								i(40617),	-- Helm of the Lost Protector
								i(40618),	-- Helm of the Lost Vanquisher
								i(39417),	-- Death's Bite
								i(39422),	-- Staff of the Plaguehound
								i(39420),	-- Anarchy
								i(39423),	-- Hammer of the Astral Plane
								i(39416),	-- Kel'Thuzad's Reach
								i(39424),	-- The Soulblade
								i(39419),	-- Nerubian Conqueror
								i(39426),	-- Wand of the Archlich
								i(39421),	-- Gem of Imprisoned Vassals
								i(39425),	-- Cloak of the Dying
								i(122197, {	-- Music Roll: Wrath of the Lich King
									["timeline"] = { ADDED_6_1_0 },
								}),
							},
						}),
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(579),	-- The Dedicated Few (25 player)
						ach(563),	-- The Arachnid Quarter (25 player)
						ach(567),	-- The Plague Quarter (25 player)
						ach(569),	-- The Military Quarter (25 player)
						ach(565),	-- The Construct Quarter (25 player)
						ach(577, {	-- The Fall of Naxxramas (25 player)
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								563,	-- The Arachnid Quarter (25 player)
								567,	-- The Plague Quarter (25 player)
								569,	-- The Military Quarter (25 player)
								565,	-- The Construct Quarter (25 player)
								573,	-- Sapphiron's Demise (25 player)
								575,	-- Kel'Thuzad's Defeat (25 player)
							}},
						}),
						ach(2186, {	-- The Immortal
							["timeline"] = { REMOVED_4_0_3 },
							["groups"] = {
								title(108, {	-- The Immortal
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
					}),
					n(QUESTS, {
						q(13375, {	-- The Heroic Key to the Focusing Iris (Quest)
							["provider"] = { "i", 44577 },	-- Heroic Key to the Focusing Iris (Item)
							["lvl"] = lvlsquish(78, 78, 30),
							["groups"] = {
								i(44581, {	-- Heroic Key to the Focusing Iris
									["timeline"] = { DELETED_4_2_0 },
								}),
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(40410),	-- Shadow of the Ghoul
						i(40409),	-- Boots of the Escaped Captive
						i(40414),	-- Shoulderguards of the Undaunted
						i(40408),	-- Haunting Call
						i(40407),	-- Silent Crusader
						i(40406),	-- Inevitable Defeat
						i(40412),	-- Ousted Bead Necklace
					}),
					n(NAXX_ARACHNID_QUARTER, {
						e(1601, {	-- Anub'Rekhan
							["creatureID"] = 15956,	-- Anub'Rekhan
							["lore"] = "Anub'Rekhan, one of the finest Spider Lords of Azjol'Nerub, was brought under control of the Scourge when he and his commander, Anub'Arak, were finally defeated by the Lich King many years ago. It is said he was the most loyal of Anub'Arak's commanders.",
							["groups"] = {
								ach(563, {	-- The Arachnid Quarter (25 player)
									["criteriaID"] = 5111,	-- Anub'Rekhan slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7159,	-- Anub'Rekhan slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(39714),	-- Webbed Death
								i(39712),	-- Gemmed Wand of the Nerubians
								i(39716),	-- Shield of Assimilation
								i(40071),	-- Chains of Adoration
								i(40065),	-- Fool's Trial
								i(40069),	-- Heritage
								i(40064),	-- Thunderstorm Amulet
								i(39719),	-- Mantle of the Locusts
								i(39704),	-- Pauldrons of Unnatural Death
								i(39702),	-- Arachnoid Gold Band
								i(39722),	-- Swarm Bindings
								i(39718),	-- Corpse Scarab Handguards
								i(39703),	-- Rescinding Grips
								i(39721),	-- Sash of the Parlor
								i(39720),	-- Leggings of Atrophy
								i(39701),	-- Dawnwalkers
								i(39717),	-- Inexorable Sabatons
								i(39706),	-- Sabatons of Sudden Reprisal
								i(40080),	-- Lost Jewel
								i(40075),	-- Ruthlessness
								i(40107),	-- Sand-Worn Band
								i(40108),	-- Seized Beauty
								i(40074),	-- Strong-Handed Ring
							},
						}),
						e(1602, {	-- Grand Widow Faerlina
							["creatureID"] = 15953,	-- Grand Widow Faerlina
							["lore"] = "A botanist in life, breeder and caretaker of arachnids in death, she oversees the spider wing, developing the most potent of poisons for the Lich King.",
							["groups"] = {
								ach(2140),	-- Momma Said Knock You Out (25 player)
								ach(563, {	-- The Arachnid Quarter (25 player)
									["criteriaID"] = 5126,	-- Grand Widow Faerlina slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7160,	-- Grand Widow Faerlina slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(206472, {	-- Faerlina's Sewing Kit
									["sourceQuests"] = {
										76263,	-- The Dread Citadel - Naxxramas [Honored]
										76264,	-- The Dread Citadel - Naxxramas [Revered]
										76265,	-- The Dread Citadel - Naxxramas [Exalted]
									},
									["sourceQuestNumRequired"] = 1,
									["timeline"] = { ADDED_10_1_5 },
								}),
								i(39730),	-- Widow's Fury
								i(39732),	-- Faerlina's Madness
								i(39723),	-- Fire-Scorched Greathelm
								i(40071),	-- Chains of Adoration
								i(40065),	-- Fool's Trial
								i(40069),	-- Heritage
								i(40064),	-- Thunderstorm Amulet
								i(39725),	-- Epaulets of the Grieving Servant
								i(39724),	-- Cult's Chestguard
								i(39756),	-- Tunic of Prejudice
								i(39729),	-- Bracers of the Tyrant
								i(39731),	-- Punctilious Bindings
								i(39726),	-- Callous-Hearted Gauntlets
								i(39727),	-- Dislocating Handguards
								i(39733),	-- Gloves of Token Respect
								i(39735),	-- Belt of False Dignity
								i(39734),	-- Atonement Greaves
								i(40080),	-- Lost Jewel
								i(40075),	-- Ruthlessness
								i(40107),	-- Sand-Worn Band
								i(40108),	-- Seized Beauty
								i(40074),	-- Strong-Handed Ring
								i(39757, {	-- Idol of Worship
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(39728, {	-- Totem of Misery
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1603, {	-- Maexxna
							["creatureID"] = 15952,	-- Maexxna
							["lore"] = "Born deep within the mountains of Northrend many ages ago, she was captured within the dread citadel Naxxramas, where she gives birth to her brood, feeding them the corpses of all who dare venture too deeply into Naxxramas.",
							["groups"] = {
								ach(1859),	-- Arachnophobia (25 player)
								ach(563, {	-- The Arachnid Quarter (25 player)
									["criteriaID"] = 6405,	-- Maexxna slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7161,	-- Maexxna slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(93030, {	-- Giant Bone Spider (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								i(39758),	-- The Jawbone
								i(39763),	-- Wraith Strike
								i(39766),	-- Matriarch's Spawn
								i(39768),	-- Cowl of the Perished
								i(39760),	-- Helm of Diminished Pride
								i(40063),	-- Mantle of Shattered Kinship
								i(40250),	-- Aged Winter Cloak
								i(40254),	-- Cloak of Averted Crisis
								i(40252),	-- Cloak of the Shadowed Sun
								i(40253),	-- Shawl of the Old Maid
								i(40251),	-- Shroud of Luminosity
								i(40062),	-- Digested Silken Robes
								i(40061),	-- Quivering Tunic
								i(39767),	-- Undiminished Battleplate
								i(39764),	-- Bindings of the Hapless Prey
								i(39765),	-- Sinner's Bindings
								i(39759),	-- Ablative Chitin Girdle
								i(39762),	-- Torn Web Wrapping
								i(40060),	-- Distorted Limbs
								i(39761),	-- Infectious Skitterer Leggings
								i(40257),	-- Defender's Code
								i(40255),	-- Dying Curse
								i(40258),	-- Forethought Talisman
								i(40256),	-- Grim Toll
							},
						}),
					}),
					n(NAXX_PLAGUE_QUARTER, {
						e(1604, {	-- Noth the Plaguebringer
							["creatureID"] = 15954,	-- Noth the Plaguebringer
							["lore"] = "Responsible for the creation of the process that distills the souls of the living and places them within the cold cage of undeath, Noth was observed to be refining this process even now.",
							["groups"] = {
								ach(567, {	-- The Plague Quarter (25 player)
									["criteriaID"] = 5133,	-- Noth the Plaguebringer slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7166,	-- Noth the Plaguebringer slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40189),	-- Angry Dread
								i(40192),	-- Accursed Spine
								i(40071),	-- Chains of Adoration
								i(40065),	-- Fool's Trial
								i(40069),	-- Heritage
								i(40064),	-- Thunderstorm Amulet
								i(40185),	-- Shoulderguards of Opportunity
								i(40602),	-- Robes of Mutation
								i(40193),	-- Tunic of Masked Suffering
								i(40198),	-- Bands of Impurity
								i(40186),	-- Thrusting Bands
								i(40188),	-- Gauntlets of the Disobedient
								i(40197),	-- Gloves of the Fallen Wizard
								i(40200),	-- Belt of Potent Chanting
								i(40196),	-- Legguards of the Undisturbed
								i(40184),	-- Crippled Treads
								i(40187),	-- Poignant Sabatons
								i(40080),	-- Lost Jewel
								i(40075),	-- Ruthlessness
								i(40107),	-- Sand-Worn Band
								i(40108),	-- Seized Beauty
								i(40074),	-- Strong-Handed Ring
								i(40190, {	-- Spinning Fate
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40191, {	-- Libram of Radiance
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1605, {	-- Heigan the Unclean
							["creatureID"] = 15936,	-- Heigan the Unclean
							["lore"] = "The mastermind behind the plague cauldrons that turned the wilderness of Azeroth into the Plaguelands. It is said that Heigan has rigged the very walls and floors of Naxxramas itself with a vast array of traps, which he can trigger at will.",
							["groups"] = {
								ach(2139),	-- The Safety Dance (25 player)
								ach(567, {	-- The Plague Quarter (25 player)
									["criteriaID"] = 5128,	-- Heigan the Unclean slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7167,	-- Heigan the Unclean slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40208),	-- Cryptfiend's Bite
								i(40233),	-- The Undeath Carrier
								i(40235),	-- Helm of Pilgrimage
								i(40250),	-- Aged Winter Cloak
								i(40254),	-- Cloak of Averted Crisis
								i(40252),	-- Cloak of the Shadowed Sun
								i(40253),	-- Shawl of the Old Maid
								i(40251),	-- Shroud of Luminosity
								i(40203),	-- Breastplate of Tormented Rage
								i(40210),	-- Chestguard of Bitter Charms
								i(40234),	-- Heigan's Putrid Vestments
								i(40209),	-- Bindings of the Decrepit
								i(40238),	-- Gloves of the Dancing Bear
								i(40205),	-- Stalk-Skin Belt
								i(40201),	-- Leggings of Colossal Strides
								i(40204),	-- Legguards of the Apostle
								i(40237),	-- Eruption-Scarred Boots
								i(40206),	-- Iron-Spring Jumpers
								i(40236),	-- Serene Echoes
								i(40257),	-- Defender's Code
								i(40255),	-- Dying Curse
								i(40258),	-- Forethought Talisman
								i(40256),	-- Grim Toll
								i(40207, {	-- Sigil of Awareness
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1606, {	-- Loatheb
							["creatureID"] = 16011,	-- Loatheb
							["lore"] = "The hideous result of fusing the living plague of the Plaguelands with the bog beasts of Azeroth, Loatheb is said to control the power of healing itself.",
							["groups"] = {
								ach(2183),	-- Spore Loser (25 player)
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(567, {	-- The Plague Quarter (25 player)
									["criteriaID"] = 5131,	-- Loatheb slain
								}),
								-- #else
								ach(567, {	-- The Plague Quarter (25 player)
									["criteriaID"] = 6409,	-- Loatheb slain
								}),
								-- #endif
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7168,	-- Loatheb slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(93032, {	-- Fungal Abomination (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								i(40637),	-- Mantle of the Lost Conqueror
								i(40638),	-- Mantle of the Lost Protector
								i(40639),	-- Mantle of the Lost Vanquisher
								i(40239),	-- The Hand of Nerub
								i(40244),	-- The Impossible Dream
								i(40245),	-- Fading Glow
								i(40247),	-- Cowl of Innocent Delight
								i(40249),	-- Vest of Vitality
								i(40242),	-- Grotesque Handgrips
								i(40241),	-- Girdle of Unity
								i(40240),	-- Greaves of Turbulence
								i(40246),	-- Boots of Impetuous Ideals
								i(40243),	-- Footwraps of Vile Deceit
							},
						}),
					}),
					n(NAXX_MILITARY_QUARTER, {
						e(1607, {	-- Instructor Razuvious
							["creatureID"] = 16061,	-- Instructor Razuvious
							["lore"] = "Kel'Thuzad's appointed trainer of all death knights. It is said that his own technique is so potent, only a disciple of his could possibly withstand his might.",
							["groups"] = {
								ach(569, {	-- The Military Quarter (25 player)
									["criteriaID"] = 6410,	-- Instructor Razuvious slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7169,	-- Instructor Razuvious slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40071),	-- Chains of Adoration
								i(40065),	-- Fool's Trial
								i(40069),	-- Heritage
								i(40064),	-- Thunderstorm Amulet
								i(40315),	-- Shoulderpads of Secret Arts
								i(40305),	-- Spaulders of Egotism
								i(40319),	-- Chestpiece of Suspicion
								i(40324),	-- Bands of Mutual Respect
								i(40325),	-- Bindings of the Expansive Mind
								i(40306),	-- Bracers of the Unholy Knight
								i(40323),	-- Esteemed Bindings
								i(40316),	-- Gauntlets of Guiding Touch
								i(40317),	-- Girdle of Razuvious
								i(40327),	-- Girdle of Recuperation
								i(40318),	-- Legplates of Double Strikes
								i(40326),	-- Boots of Forlorn Wishes
								i(40320),	-- Faithful Steel Sabatons
								i(40080),	-- Lost Jewel
								i(40075),	-- Ruthlessness
								i(40107),	-- Sand-Worn Band
								i(40108),	-- Seized Beauty
								i(40074),	-- Strong-Handed Ring
								i(40321, {	-- Idol of the Shooting Star
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40322, {	-- Totem of Dueling
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1608, {	-- Gothik the Harvester
							["creatureID"] = 16060,	-- Gothik the Harvester
							["lore"] = "A master of necromancy and conjuration, Gothik is said to be able to beckon forth legions of the undead at a moment's notice. It is with his guidance that even the weakest of Death Knights can raise the dead.",
							["groups"] = {
								ach(569, {	-- The Military Quarter (25 player)
									["criteriaID"] = 5125,	-- Gothik the Harvester slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7170,	-- Gothik the Harvester slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40336),	-- Life and Death
								i(40335),	-- Touch of Horror
								i(40339),	-- Gothik's Cowl
								i(40340),	-- Helm of Unleashed Energy
								i(40328),	-- Helm of Vital Protection
								i(40329),	-- Hood of the Exodus
								i(40334),	-- Burdened Shoulderplates
								i(40250),	-- Aged Winter Cloak
								i(40254),	-- Cloak of Averted Crisis
								i(40252),	-- Cloak of the Shadowed Sun
								i(40253),	-- Shawl of the Old Maid
								i(40251),	-- Shroud of Luminosity
								i(40332),	-- Abetment Bracers
								i(40338),	-- Bindings of Yearning
								i(40330),	-- Bracers of Unrelenting Attack
								i(40341),	-- Shackled Cinch
								i(40331),	-- Leggings of Failed Escape
								i(40333),	-- Leggings of Fleeting Moments
								i(40257),	-- Defender's Code
								i(40255),	-- Dying Curse
								i(40258),	-- Forethought Talisman
								i(40256),	-- Grim Toll
								i(40342, {	-- Idol of Awakening
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40337, {	-- Libram of Resurgence
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1609, {	-- The Four Horsemen
							["crs"] = {
								30549,	-- Baron Rivendare
								16064,	-- Thane Korth'azz
								16065,	-- Lady Blaumeux
								16063,	-- Sir Zeliek
							},
							["lore"] = "The most powerful death knights within Naxxramas are the four horsemen. They represent the pinnacle of Kel'Thuzad's guard. The first, Thane Korth'azz, holds the power of flame. The next, Lady Blaumeux, calls forth the power of shadows, drawing the souls of the living into the voracious embrace. Sir Zeliek, a paladin in life, so strong in his faith, that even in undeath, the power of the light still heeds his call, smiting his foes in battle. The final death knight, Lord Mograine, was the finest warrior that the death knights had ever seen. However, after the events of Azeroth, he vanished without a trace. Kel'Thuzad has appointed Baron Rivendare in his place.",
							["provider"] = { "o", 193426 },	-- Four Horsemen Chest
							["groups"] = {
								ach(2177),	-- And They Would All Go Down Together (25 player)
								ach(569, {	-- The Military Quarter (25 player)
									["criteriaID"] = 7806,	-- The Four Horsemen slain
								}),
								i(40343),	-- Armageddon
								i(40348),	-- Damnation
								i(40345),	-- Broken Promise
								i(40346),	-- Final Voyage
								i(40350),	-- Urn of Lost Memories
								i(40344),	-- Helm of the Grave
								i(40286),	-- Mantle of the Corrupted
								i(40349),	-- Gloves of Peaceful Death
								i(40347),	-- Zeliek's Gauntlets
								i(40352),	-- Leggings of Voracious Shadows
								i(40625),	-- Breastplate of the Lost Conqueror
								i(40626),	-- Breastplate of the Lost Protector
								i(40627),	-- Breastplate of the Lost Vanquisher
								i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
									["sourceQuest"] = 38990,	-- The Call of Icecrown
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
					}),
					n(NAXX_CONSTRUCT_QUARTER, {
						e(1610, {	-- Patchwerk
							["creatureID"] = 16028,	-- Patchwerk
							["lore"] = "When word of his existence first reached the ears of the Brotherhood, none believed the tales of an abomination with such immense speed and strength. Fewer still believed it when he fell the first time... Patchwerk want to play!",
							["groups"] = {
								ach(1857),	-- Make Quick Werk of Him (25 player)
								-- #if ANYCLASSIC
								-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
								ach(565, {	-- The Construct Quarter (25 player)
									["criteriaID"] = 5103,	-- Patchwerk slain
								}),
								-- #else
								ach(565, {	-- The Construct Quarter (25 player)
									["criteriaID"] = 6403,	-- Patchwerk slain
								}),
								-- #endif
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7162,	-- Patchwerk slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40264),	-- Split Greathammer
								i(40265),	-- Arrowsong
								i(40266),	-- Hero's Surrender
								i(40273),	-- Surplus Limb
								i(40071),	-- Chains of Adoration
								i(40065),	-- Fool's Trial
								i(40069),	-- Heritage
								i(40064),	-- Thunderstorm Amulet
								i(40261),	-- Crude Discolored Battlegrips
								i(40262),	-- Gloves of Calculated Risk
								i(40260),	-- Belt of the Tortured
								i(40263),	-- Fleshless Girdle
								i(40272),	-- Girdle of the Gambit
								i(40271),	-- Sash of Solitude
								i(40259),	-- Waistguard of Divine Grace
								i(40269),	-- Boots of Persuasion
								i(40270),	-- Boots of Septic Wounds
								i(40080),	-- Lost Jewel
								i(40075),	-- Ruthlessness
								i(40107),	-- Sand-Worn Band
								i(40108),	-- Seized Beauty
								i(40074),	-- Strong-Handed Ring
								i(40268, {	-- Libram of Tolerance
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40267, {	-- Totem of Hex
									["timeline"] = { REMOVED_5_0_4 },
								}),
							},
						}),
						e(1611, {	-- Grobbulus
							["creatureID"] = 15931,	-- Grobbulus
							["lore"] = "The first of what was to be an army of flesh giants. It carried the plague slime of Naxxramas within its body, injecting the living ooze into the bodies of its foe. The recipient of this foul injection would usually flee to his allies, bringing them down with him.",
							["groups"] = {
								ach(565, {	-- The Construct Quarter (25 player)
									["criteriaID"] = 6406,	-- Grobbulus slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7163,	-- Grobbulus slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40280),	-- Origin of Nightmares
								i(40281),	-- Twilight Mist
								i(40284),	-- Plague Igniter
								i(40287),	-- Cowl of Vanity
								i(40351),	-- Mantle of the Fatigued Sage
								i(40288),	-- Spaulders of Incoherence
								i(40289),	-- Sympathetic Amice
								i(40250),	-- Aged Winter Cloak
								i(40254),	-- Cloak of Averted Crisis
								i(40252),	-- Cloak of the Shadowed Sun
								i(40253),	-- Shawl of the Old Maid
								i(40251),	-- Shroud of Luminosity
								i(40279),	-- Chestguard of the Exhausted
								i(40283),	-- Fallout Impervious Tunic
								i(40277),	-- Tunic of Indulgence
								i(40274),	-- Bracers of Liberation
								i(40282),	-- Slime Stream Bands
								i(40275),	-- Depraved Linked Belt
								i(40278),	-- Girdle of Chivalry
								i(40285),	-- Desecrated Past
								i(40257),	-- Defender's Code
								i(40255),	-- Dying Curse
								i(40258),	-- Forethought Talisman
								i(40256),	-- Grim Toll
							},
						}),
						e(1612, {	-- Gluth
							["creatureID"] = 15932,	-- Gluth
							["lore"] = "The foul plague-dog of Naxxramas was said to have an appetite so voracious that even the living were not enough to satisfy his hunger. Feugen was said to feed him an army of zombies daily, recycling the remains of undead too weak to use in combat.",
							-- #IF NOT ANYCLASSIC
							["sym"] = {
								{"select","instanceID",754},{"pop"},	-- Naxx
								{"where","difficultyID",4},		-- 25 Difficulty
								{"extract","encounterID"},		-- Extract Encounters
								{"not","encounterID",
									1612,	-- Not Gluth
									1614,	-- Not Sapphiron
									1615,	-- Not Kel'Thuzad
								},{"pop"},
								{"is","itemID"},				-- Items only
								{"not","itemID",
									93032,	-- Fungal Abomination (PET!)
									93030,	-- Giant Bone Spider (PET!)
								},
							},
							-- #ENDIF
							["groups"] = {
								ach(565, {	-- The Construct Quarter (25 player)
									["criteriaID"] = 5124,	-- Gluth slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7164,	-- Gluth slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(93029, {	-- Stitched Pup (PET!)
									["timeline"] = { ADDED_5_1_0 },
								}),
								-- #IF ANYCLASSIC
								-- Leaving this duplication for Classic because it doesn't support the 'extract' symlink command
								i(40625),	-- Breastplate of the Lost Conqueror
								i(40626),	-- Breastplate of the Lost Protector
								i(40627),	-- Breastplate of the Lost Vanquisher
								i(40634),	-- Legplates of the Lost Conqueror
								i(40635),	-- Legplates of the Lost Protector
								i(40636),	-- Legplates of the Lost Vanquisher
								i(40637),	-- Mantle of the Lost Conqueror
								i(40638),	-- Mantle of the Lost Protector
								i(40639),	-- Mantle of the Lost Vanquisher
								i(40343),	-- Armageddon
								i(40208),	-- Cryptfiend's Bite
								i(40348),	-- Damnation
								i(40280),	-- Origin of Nightmares
								i(40300),	-- Spire of Sunset
								i(39758),	-- The Jawbone
								i(40233),	-- The Undeath Carrier
								i(40189),	-- Angry Dread
								i(40345),	-- Broken Promise
								i(40336),	-- Life and Death
								i(40264),	-- Split Greathammer
								i(40239),	-- The Hand of Nerub
								i(40244),	-- The Impossible Dream
								i(40281),	-- Twilight Mist
								i(39714),	-- Webbed Death
								i(39730),	-- Widow's Fury
								i(39763),	-- Wraith Strike
								i(40265),	-- Arrowsong
								i(40245),	-- Fading Glow
								i(40346),	-- Final Voyage
								i(39712),	-- Gemmed Wand of the Nerubians
								i(40284),	-- Plague Igniter
								i(40335),	-- Touch of Horror
								i(40266),	-- Hero's Surrender
								i(39716),	-- Shield of Assimilation
								i(40192),	-- Accursed Spine
								i(39766),	-- Matriarch's Spawn
								i(40273),	-- Surplus Limb
								i(40350),	-- Urn of Lost Memories
								i(40296),	-- Cover of Silence
								i(40247),	-- Cowl of Innocent Delight
								i(39768),	-- Cowl of the Perished
								i(40287),	-- Cowl of Vanity
								i(40298),	-- Faceguard of the Succumbed
								i(39732),	-- Faerlina's Madness
								i(39723),	-- Fire-Scorched Greathelm
								i(40339),	-- Gothik's Cowl
								i(40304),	-- Headpiece of Fungal Bloom
								i(39760),	-- Helm of Diminished Pride
								i(40235),	-- Helm of Pilgrimage
								i(40344),	-- Helm of the Grave
								i(40340),	-- Helm of Unleashed Energy
								i(40328),	-- Helm of Vital Protection
								i(40329),	-- Hood of the Exodus
								i(40334),	-- Burdened Shoulderplates
								i(39725),	-- Epaulets of the Grieving Servant
								i(40063),	-- Mantle of Shattered Kinship
								i(40286),	-- Mantle of the Corrupted
								i(40351),	-- Mantle of the Fatigued Sage
								i(39719),	-- Mantle of the Locusts
								i(40299),	-- Pauldrons of the Abandoned
								i(39704),	-- Pauldrons of Unnatural Death
								i(40185),	-- Shoulderguards of Opportunity
								i(40315),	-- Shoulderpads of Secret Arts
								i(40305),	-- Spaulders of Egotism
								i(40288),	-- Spaulders of Incoherence
								i(40289),	-- Sympathetic Amice
								i(40203),	-- Breastplate of Tormented Rage
								i(40210),	-- Chestguard of Bitter Charms
								i(40279),	-- Chestguard of the Exhausted
								i(40319),	-- Chestpiece of Suspicion
								i(39724),	-- Cult's Chestguard
								i(40062),	-- Digested Silken Robes
								i(40283),	-- Fallout Impervious Tunic
								i(40234),	-- Heigan's Putrid Vestments
								i(40061),	-- Quivering Tunic
								i(40602),	-- Robes of Mutation
								i(40277),	-- Tunic of Indulgence
								i(40193),	-- Tunic of Masked Suffering
								i(39756),	-- Tunic of Prejudice
								i(39767),	-- Undiminished Battleplate
								i(40249),	-- Vest of Vitality
								i(40332),	-- Abetment Bracers
								i(39702),	-- Arachnoid Gold Band
								i(40198),	-- Bands of Impurity
								i(40209),	-- Bindings of the Decrepit
								i(39764),	-- Bindings of the Hapless Prey
								i(40338),	-- Bindings of Yearning
								i(40274),	-- Bracers of Liberation
								i(39729),	-- Bracers of the Tyrant
								i(40306),	-- Bracers of the Unholy Knight
								i(40330),	-- Bracers of Unrelenting Attack
								i(39731),	-- Punctilious Bindings
								i(39765),	-- Sinner's Bindings
								i(40282),	-- Slime Stream Bands
								i(39722),	-- Swarm Bindings
								i(40186),	-- Thrusting Bands
								i(40302),	-- Benefactor's Gauntlets
								i(39726),	-- Callous-Hearted Gauntlets
								i(39718),	-- Corpse Scarab Handguards
								i(40261),	-- Crude Discolored Battlegrips
								i(39727),	-- Dislocating Handguards
								i(40316),	-- Gauntlets of Guiding Touch
								i(40188),	-- Gauntlets of the Disobedient
								i(40262),	-- Gloves of Calculated Risk
								i(40349),	-- Gloves of Peaceful Death
								i(40238),	-- Gloves of the Dancing Bear
								i(40197),	-- Gloves of the Fallen Wizard
								i(39733),	-- Gloves of Token Respect
								i(40242),	-- Grotesque Handgrips
								i(39703),	-- Rescinding Grips
								i(40303),	-- Wraps of the Persecuted
								i(40347),	-- Zeliek's Gauntlets
								i(39759),	-- Ablative Chitin Girdle
								i(39735),	-- Belt of False Dignity
								i(40200),	-- Belt of Potent Chanting
								i(40260),	-- Belt of the Tortured
								i(40301),	-- Cincture of Polarity
								i(40275),	-- Depraved Linked Belt
								i(40263),	-- Fleshless Girdle
								i(40278),	-- Girdle of Chivalry
								i(40317),	-- Girdle of Razuvious
								i(40272),	-- Girdle of the Gambit
								i(40241),	-- Girdle of Unity
								i(40271),	-- Sash of Solitude
								i(39721),	-- Sash of the Parlor
								i(40341),	-- Shackled Cinch
								i(40205),	-- Stalk-Skin Belt
								i(39762),	-- Torn Web Wrapping
								i(40259),	-- Waistguard of Divine Grace
								i(40285),	-- Desecrated Past
								i(40060),	-- Distorted Limbs
								i(40240),	-- Greaves of Turbulence
								i(39761),	-- Infectious Skitterer Leggings
								i(39720),	-- Leggings of Atrophy
								i(40201),	-- Leggings of Colossal Strides
								i(40331),	-- Leggings of Failed Escape
								i(40333),	-- Leggings of Fleeting Moments
								i(40352),	-- Leggings of Voracious Shadows
								i(40204),	-- Legguards of the Apostle
								i(40196),	-- Legguards of the Undisturbed
								i(40318),	-- Legplates of Double Strikes
								i(40294),	-- Riveted Abomination Leggings
								i(39734),	-- Atonement Greaves
								i(40246),	-- Boots of Impetuous Ideals
								i(40269),	-- Boots of Persuasion
								i(40270),	-- Boots of Septic Wounds
								i(40184),	-- Crippled Treads
								i(39701),	-- Dawnwalkers
								i(40237),	-- Eruption-Scarred Boots
								i(40320),	-- Faithful Steel Sabatons
								i(40243),	-- Footwraps of Vile Deceit
								i(39717),	-- Inexorable Sabatons
								i(40206),	-- Iron-Spring Jumpers
								i(40187),	-- Poignant Sabatons
								i(40297),	-- Sabatons of Endurance
								i(39706),	-- Sabatons of Sudden Reprisal
								i(40236),	-- Serene Echoes
								i(40325),	-- Bindings of the Expansive Mind
								i(40191, {	-- Libram of Radiance
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40337, {	-- Libram of Resurgence
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40268, {	-- Libram of Tolerance
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40321, {	-- Idol of the Shooting Star
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(39757, {	-- Idol of Worship
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(40322, {	-- Totem of Dueling
									["timeline"] = { REMOVED_5_0_4 },
								}),
								-- #ENDIF
							},
						}),
						e(1613, {	-- Thaddius
							["creatureID"] = 15928,	-- Thaddius
							["lore"] = "Built from the flesh of women and children, it is said that their souls are fused together - eternally bound within that foul prison of flesh.",
							["groups"] = {
								ach(2179),	-- Shocking! (25 player)
								ach(2181),	-- Subtraction (25 player)
								ach(565, {	-- The Construct Quarter (25 player)
									["criteriaID"] = 5134,	-- Thaddius slain
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7165,	-- Thaddius slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40634),	-- Legplates of the Lost Conqueror
								i(40635),	-- Legplates of the Lost Protector
								i(40636),	-- Legplates of the Lost Vanquisher
								i(40300),	-- Spire of Sunset
								i(40296),	-- Cover of Silence
								i(40298),	-- Faceguard of the Succumbed
								i(40304),	-- Headpiece of Fungal Bloom
								i(40299),	-- Pauldrons of the Abandoned
								i(40302),	-- Benefactor's Gauntlets
								i(40303),	-- Wraps of the Persecuted
								i(40301),	-- Cincture of Polarity
								i(40294),	-- Riveted Abomination Leggings
								i(40297),	-- Sabatons of Endurance
							},
						}),
					}),
					n(NAXX_UPPER_NECROPOLIS, {
						e(1614, {	-- Sapphiron
							["creatureID"] = 15989,	-- Sapphiron
							["lore"] = "Once a noble blue dragon within the mountains of Northrend, Sapphiron was slain by Arthas during his campaign through the frozen north. Resurrected to serve him, Sapphiron guards Kel'Thuzad's lair eternally, awaiting those who would dare trespass upon his master.",
							["groups"] = {
								ach(573),	-- Sapphiron's Demise (25 player)
								ach(2147),	-- The Hundred Club (25 player)
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7171,	-- Sapphiron slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(44577),	-- Heroic Key to the Focusing Iris (Item)
								i(40368),	-- Murder
								i(40366),	-- Platehelm of the Great Wyrm
								i(40378),	-- Ceaseless Pity
								i(40374),	-- Cosmic Lights
								i(40369),	-- Icy Blast Amulet
								i(40377),	-- Noble Birthright Pauldrons
								i(40365),	-- Breastplate of Frozen Pain
								i(40381),	-- Sympathy
								i(40362),	-- Gloves of Fast Reactions
								i(40380),	-- Gloves of Grandeur
								i(40379),	-- Bone-Inlaid Legguards
								i(40363),	-- Legguards of the Boneyard
								i(40376),	-- Legwraps of the Defeated Dragon
								i(40367),	-- Boots of the Great Construct
								i(40370),	-- Gatekeeper
								i(40375),	-- Ring of Decaying Beauty
								i(40371),	-- Bandit's Insignia
								i(40373),	-- Extract of Necromantic Power
								i(40372),	-- Rune of Repulsion
								i(40382),	-- Soul of the Dead
							},
						}),
						e(1615, {	-- Kel'Thuzad
							["creatureID"] = 15990,	-- Kel'Thuzad
							["lore"] = "He serves the Lich King without question, a necromancer of great prowess in life, turned to a master of necromancy after his death. It is said he is the most loyal of the Lich King's subjects.",
							["groups"] = {
								applyclassicphase(WRATH_PHASE_ONE_REALM_FIRST, ach(1402, {	-- Realm First! Conqueror of Naxxramas
									["timeline"] = { REMOVED_4_0_3 },
									["groups"] = {
										title(90, {	-- <Name>, Conqueror of Naxxramas
											["timeline"] = { REMOVED_4_0_3 },
										}),
									},
								})),
								ach(575),	-- Kel'Thuzad's Defeat (25 player)
								ach(2185, {	-- Just Can't Get Enough (25 player)
									["cr"] = 16428,	-- Unstoppable Abomination
									-- #if NOT ANYCLASSIC
									["description"] = "Pull 1 abomination from each section and then AOE them all when they get to you. Very easy achievement.",
									-- #endif
								}),
								ach(5016, {	-- Just Can't Get Enough - Guild Edition
									["timeline"] = { ADDED_4_0_3 },
								}),
								ach(579, {	-- The Dedicated Few (25 player)
									["criteriaID"] = 7172,	-- Kel'Thuzad slain
									-- #if ANYCLASSIC
									["OnUpdate"] = [[_.CommonAchievementHandlers.DEDICATED_25M_OnUpdate]],
									-- #endif
								}),
								i(40631),	-- Crown of the Lost Conqueror
								i(40632),	-- Crown of the Lost Protector
								i(40633),	-- Crown of the Lost Vanquisher
								i(40384),	-- Betrayer of Humanity
								i(40388),	-- Journey's End
								i(40383),	-- Calamity's Grasp
								i(40402),	-- Last Laugh
								i(40386),	-- Sinister Revenge
								i(40396),	-- The Turning Tide
								i(40395),	-- Torch of the Holy Fire
								i(40385),	-- Envoy of Mortality
								i(40401),	-- Voice of Reason
								i(40400),	-- Wall of Terror
								i(40387),	-- Boundless Ambition
								i(40405),	-- Cape of the Unworthy Wizard
								i(40403),	-- Drape of the Deadly Foe
								i(40398),	-- Leggings of Mortal Arrogance
								i(40399),	-- Signet of Manifested Pain
								i(122197, {	-- Music Roll: Wrath of the Lich King
									["timeline"] = { ADDED_6_1_0 },
								}),
							},
						}),
					}),
				},
			}),
		},
	}),
})));