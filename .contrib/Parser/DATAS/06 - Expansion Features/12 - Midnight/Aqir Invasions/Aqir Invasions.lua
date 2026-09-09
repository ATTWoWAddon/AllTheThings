---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

AQIR_INVASIONS = createHeader({
	readable = "Aqir Invasions",
	icon = 463478,
	text = {
		en = "Aqir Invasions",
		--de = "Aqir Invasions",
		--es = "Aqir Invasions",
		--mx = "Aqir Invasions",
		--fr = "Aqir Invasions",
		--it = "Aqir Invasions",
		--ko = "Aqir Invasions",
		--pt = "Aqir Invasions",
		--ru = "Aqir Invasions",
		--cn = "Aqir Invasions",
		--tw = "Aqir Invasions",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	n(AQIR_INVASIONS, {
		["timeline"] = { ADDED_12_1_5 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(63659, {	-- Bane of the Swarm
					--title(XXX),	-- <Name>, Bane of the Swarm
				}),
				ach(63680),	-- Driving Back the Swarm
				ach(63658),	-- No Hives Left Standing
				ach(63519, {	-- The Promise of Tomorrow
					--title(XXX),	-- <Name>, Light's Faithful
				}),
			}),
			header(HEADERS.Faction, FACTION_AQIR_RESEARCH_ENCLAVE, {
				["lore"] = "Bound by oath to Silvermoon, these paladins dedicate their studies towards the Aqir threat, seeking to understand the enemy's nature so their city may never be caught unprepared.",
				["icon"] = 463478,
				["groups"] = {
					faction(FACTION_AQIR_RESEARCH_ENCLAVE),
					n(ACHIEVEMENTS, {
						ach(63657, {	-- Aqir Research Associate
							["minReputation"] = { FACTION_AQIR_RESEARCH_ENCLAVE, 20 },	-- Aqir Research Enclave, Renown 20
						}),
					}),
					--[[title(XXX, {	-- 
						["minReputation"] = { FACTION_AQIR_RESEARCH_ENCLAVE, 20 },	-- Aqir Research Enclave, Renown 20
					}),
					n(QUESTS, sharedData({
						["provider"] = { "n", 266188 },	-- Estelia Archtender <Aqir Researcher>
						["coord"] = { 39.3, 80.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					}, bubbleDownRep(FACTION_AQIR_RESEARCH_ENCLAVE, {
						{		-- Neutral --
						}, {	-- Friendly --
						}, {	-- Honored --
						}, {	-- Revered --
						}, {	-- Exalted --
						},
					}))),--]]
					n(VENDORS, {
						n(266188, {	-- Estelia Archtender <Aqir Researcher>
							["coord"] = { 39.3, 80.3, MAP.MIDNIGHT.SILVERMOON_CITY },
							["groups"] = bubbleDownRep(FACTION_AQIR_RESEARCH_ENCLAVE, {
								{		-- Neutral --
								}, {	-- Friendly --
									i(274927, {	-- Aqir Wingreaver (PET!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 1000 } },
									}),
									i(275873, {	-- Dormant Brood Egg (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
									}),
									i(275869, {	-- Nourished Brood Eggs (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
									}),
								}, {	-- Honored --
									i(274923, {	-- Aqir Scuttler (PET!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 1000 } },
									}),
									i(275879, {	-- Dormant Brood Egg Cluster (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
									}),
									i(275867, {	-- Nourished Brood Egg Cluster (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
									}),
								}, {	-- Revered --
									i(276927, {	-- Aqir Razorwing (PET!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 2000 } },
									}),
									i(275871, {	-- Dormant Clutch of Brood Eggs (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
									}),
									i(275865, {	-- Nourished Clutch of Brood Eggs (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
									}),
								}, {	-- Exalted --
									i(280050, {	-- Aqir Hunter's Trophy (DECOR!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 1000 } },
									}),
									i(276926, {	-- Corrupted Swarmer (MOUNT!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
									}),
									i(275039, {	-- Curse of the Aqir (TOY!)
										["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
									}),
								},
							}),
						}),
					}),
				},
			}),
			n(QUESTS, {
				header(HEADERS.Achievement, 63519, {	-- The Promise of Tomorrow
					header(HEADERS.AchCriteria, 63519.01, {	-- Sins of the Past
						-- Exo Note: Ach 63519 currently has only 2 criteria but the campaign has 3 chapters. If things are as they look like, Ach should have 3 criteria with first of them named "What Slept Below", and "Sins of the Past" being second. Probably bugged with an update incoming in the next patch?
						q(95533, {	-- The Aqir Swarm
							["qg"] = 235787,	-- Lor'themar Theron
							["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
							["groups"] = { i(280050) },	-- Aqir Hunter's Trophy (DECOR!)
						}),
						q(95187, {	-- All Along the Watchtowers
							["sourceQuest"] = 95533,	-- The Aqir Swarm
							["qg"] = 235787,	-- Lor'themar Theron
							["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(95190, {	-- Double-Edged Swords
							["sourceQuest"] = 95187,	-- All Along the Watchtowers
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 60.3, 81.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						}),
						q(95192, {	-- Rendering Aid
							["sourceQuest"] = 95187,	-- All Along the Watchtowers
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 60.3, 81.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						}),
						q(95191, {	-- The Slumbering Swarm
							["sourceQuest"] = 95187,	-- All Along the Watchtowers
							["qg"] = 260160,	-- Lor'themar Theron
							["coord"] = { 60.3, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						}),
						q(95193, {	-- The Amani Impasse
							["sourceQuests"] = {
								95190,	-- Double-Edged Swords
								95192,	-- Rendering Aid
								95191,	-- The Slumbering Swarm
							},
							["qg"] = 260160,	-- Lor'themar Theron
							["coord"] = { 62.5, 81.4, MAP.MIDNIGHT.EVERSONG_WOODS },
							["groups"] = {
								i(280036),	-- Veilshroud Gauntlets
								i(280033),	-- Veilshroud Grips
								i(280035),	-- Veilshroud Vambraces
								i(277894),	-- Veilshroud Wraps
							},
						}),
						q(95197, {	-- The Long Way Around
							["sourceQuest"] = 95193,	-- The Amani Impasse
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 62.4, 81.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						}),
						q(95199, {	-- Tenuous Alliances
							["sourceQuest"] = 95197,	-- The Long Way Around
							["qg"] = 261975,	-- Lady Liadrin
							["coord"] = { 36.9, 17.9, MAP.MIDNIGHT.ZULAMAN },
						}),
						q(95200, {	-- An Offering for Halazzi
							["sourceQuest"] = 95197,	-- The Long Way Around
							["qg"] = 260164,	-- Zul'jarra
							["coord"] = { 36.9, 17.9, MAP.MIDNIGHT.ZULAMAN },
							["qi"] = 269991,	-- Fresh Beast Heart (QI!)
							["groups"] = { i(279067) },	-- Symbol of Halazzi, Loa of the Hunt (DECOR!)
						}),
						q(95203, {	-- The Ties That Bind
							["sourceQuests"] = {
								95199,	-- Tenuous Alliances
								95200,	-- An Offering for Halazzi
							},
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 35.8, 17.6, MAP.MIDNIGHT.ZULAMAN },
							["groups"] = { i(264718) },	-- Amani Fishing Canoe (DECOR!)
						}),
						q(95208, {	-- Back to Back
							["sourceQuest"] = 95203,	-- The Ties That Bind
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 24.7, 58.3, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						q(95206, {	-- Breaking the Blade
							["sourceQuest"] = 95203,	-- The Ties That Bind
							["qg"] = 261088,	-- Halduron Brightwing
							["coord"] = { 24.8, 58.2, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						q(95209, {	-- The Unheard Voice
							["sourceQuests"] = {
								95208,	-- Back to Back
								95206,	-- Breaking the Blade
							},
							["qg"] = 261088,	-- Halduron Brightwing
							["coord"] = { 28.9, 64.9, MAP.MIDNIGHT.THE_COILED_ISLE },
							["qi"] = 270342,	-- Interlocked Twilight Runes (QI!)
							["groups"] = {
								i(277881),	-- Fetid Reliquary Greaves
								i(280038),	-- Fetid Reliquary Sabatons
								i(280040),	-- Fetid Reliquary Slippers
								i(280039),	-- Fetid Reliquary Treads
							},
						}),
						q(95210, {	-- In the Mouth of Madness
							["sourceQuest"] = 95209,	-- The Unheard Voice
							["qg"] = 260155,	-- Lady Liadrin
							["coord"] = { 32.5, 64.8, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						q(96707, {	-- In the Belly of the Beast
							["sourceQuest"] = 95210,	-- In the Mouth of Madness
							["qg"] = 265961,	-- Lady Liadrin
							["coord"] = { 55.8, 30.0, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						-- Exo Note: Quest chain ends here. Quest log shows that this quest completes the 1/3 Campaign Chapters. None of the friendly NPCs despawn and no new quest is offered. It's incomplete, probably because next quest leads into the Raid (I think).
						-- Entrance to "The Unbinding of Kith'ix" is in The Underbelly at 73.3, 8.6
					}),
					--header(HEADERS.AchCriteria, 63519.02, {	-- To the Faithful
					--}),
				}),
			}),
		},
	}),
}));

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_AQIR_RESEARCH_ENCLAVE, {
		q(),	--
	}),
}));--]]
