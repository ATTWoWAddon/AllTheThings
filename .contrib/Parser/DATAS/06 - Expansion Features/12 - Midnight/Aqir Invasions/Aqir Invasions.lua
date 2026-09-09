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
		},
	}),
}));

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_AQIR_RESEARCH_ENCLAVE, {
		q(),	--
	}),
}));--]]
