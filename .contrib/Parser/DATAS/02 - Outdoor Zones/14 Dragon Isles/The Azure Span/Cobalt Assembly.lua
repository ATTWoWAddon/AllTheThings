---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
local ADAMANT_SCALES = 193214;
local AWAKENED_FROST = 190329;
local DRACONIUM_ORE = 188658;
local GLIMMERING_MALYGITE_CLUSTER = 200866;
local GLOWING_TITAN_ORB = 201406;
local RAINBOW_PEARL = 198397;
local SEREVITE_ORE = 190396;
local TALLSTRIDER_SINEW = 201404;
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		header(HEADERS.Faction, FACTION_COBALT_ASSEMBLY, {
			faction(FACTION_COBALT_ASSEMBLY),
			n(ACHIEVEMENTS, {
				ach(16569),	-- Cobalt Enthusiast
				ach(16537),	-- Maximum Power!
			}),
			n(QUESTS, {
				q(71094, {	-- Help Is Our Way!
					["sourceQuests"] = { 70550 },	-- Welcome to the Assembly
					["provider"] = { "n", 197100 },	-- Heleth the Wise
					["coord"] = { 46.4, 25.6, THE_AZURE_SPAN },
					["g"] = {
						i(200514),	-- Salve-Soaked Bandages (QI!)
					},
				}),
				q(71095, {	-- A Claw in Need
					["sourceQuests"] = { 71094 },	-- Help Is Our Way!
					["provider"] = { "n", 197100 },	-- Heleth the Wise
					["coord"] = { 45.8, 25.9, THE_AZURE_SPAN },
				}),
				q(71096, {	-- Is A Claw Indeed
					["sourceQuests"] = { 71095 },	-- A Claw in Need
					["provider"] = { "n", 197201 },	-- Venderthvan
					["coord"] = { 45.9, 25.9, THE_AZURE_SPAN },
				}),
				q(71097, {	-- A Helping Claw
					["sourceQuests"] = { 71096 },	-- Is A Claw Indeed
					["provider"] = { "n", 197201 },	-- Venderthvan
					["coord"] = { 45.9, 25.9, THE_AZURE_SPAN },
					["g"] = {
						i(200628),	-- Somewhat-Stabilized Arcana (TOY!)
					},
				}),
				q(72784, {	-- Supporting the Cobalt Assembly
					["sourceQuests"] = {
						66340,	-- Into the Azure
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 192222 },	-- Althanus
					["coord"] = { 46.7, 40.1, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(70550, {	-- Welcome to the Assembly
					["sourceQuests"] = { 72784 },	-- Supporting the Cobalt Assembly
					["provider"] = { "n", 194680 },	-- Venthi
					["coord"] = { 49.0, 23.1, THE_AZURE_SPAN },
				}),
			}),
			n(RARES, sharedData({
				["isDaily"] = true,
			},{
				n(201553,	-- Grand Artificer Zeerak
				bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
					["coord"] = { 47.5, 23.6, THE_AZURE_SPAN },
					["questID"] = 74545,
					["groups"] = {
						bo(74457, true),
						i(203664),	-- Wild Magic Insulating Bands
					},
				})),
				n(201561,	-- Motivator Krathos
				bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
					["coord"] = { 43.9, 30.9, THE_AZURE_SPAN },
					["questID"] = 74544,
					["g"] = {
						bo(74456, true),
						i(203675),	-- Legplates of the Brutal Motivator
					},
				})),
				n(201555,	-- Srivantor
				bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
					["coord"] = { 47.0, 22.0, THE_AZURE_SPAN },
					["questID"] = 74543,
					["g"] = {
						bo(74458, true),
						i(203663),	-- Cinch of the Sundered Flame
					},
				})),
				n(201554,	-- Unstable Arcanogolem
				bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
					["coord"] = { 47.0, 25.3, THE_AZURE_SPAN },
					["questID"] = 74536,
					["g"] = {
						bo(74455, true),
						i(203662),	-- Arcanogolem Crystalblade
					},
				})),
			})),
			n(VENDORS, {
				n(194832, {	-- Meiz <Quartermaster>
					["coord"] = { 49.4, 22.6, THE_AZURE_SPAN },
					["g"] = bubbleDownRep(FACTION_COBALT_ASSEMBLY, {
						{		-- Empty --
							i(197584, {	-- Windborne Velocidrake: Finned Back (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 50 },
								},
							}),
						}, {	-- Low --
							i(196969, {	-- Cliffside Wylderdrake: Finned Back (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
								},
							}),
							i(197355, {	-- Renewed Proto-Drake: Thick Spined Jaw (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
								},
							}),
						}, {	-- Medium --
							i(197620, {	-- Windborne Velocidrake: Beaked Snout (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 200 },
								},
							}),
						}, {	-- High --
							i(197018, {	-- Cliffside Wylderdrake: Finned Tail (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 400 },
								},
							}),
							i(191834, {	-- Cobalt Guardian's Belt
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191835, {	-- Cobalt Guardian's Bracers
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191836, {	-- Cobalt Guardian's Cover
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191830, {	-- Cobalt Guardian's Grips
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191829, {	-- Cobalt Guardian's Hauberk
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191831, {	-- Cobalt Guardian's Helm
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191832, {	-- Cobalt Guardian's Leggings
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(191833, {	-- Cobalt Guardian's Pauldron
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(197148, {	-- Highland Drake: Vertical Finned Tail (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 400 },
								},
							}),
						}, {	-- Maximum --
							i(197368, {	-- Renewed Proto-Drake: Blue Hair (MM!)
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
								},
							}),
							i(199731, {	-- Cobalt Bladewing Staff
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(201371, {	-- Cobalt Defender's Shredder
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199733, {	-- Cobalt Defender's Wingglaive
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199737, {	-- Cobalt Dragonflame Blade
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", GLIMMERING_MALYGITE_CLUSTER, 1 },
								},
							}),
							i(199701, {	-- Cobalt Dragonwing Decapitator
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", RAINBOW_PEARL, 1 },
									{ "i", ADAMANT_SCALES, 10 },
								},
							}),
							i(200559, {	-- Cobalt Duelist's Saber
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", DRACONIUM_ORE, 5 },
								},
							}),
							i(199727, {	-- Cobalt Essence Weaver's Scepter
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199729, {	-- Cobalt Essence Weaver's Staff
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(217891, {	-- Cobalt Guardian's Cloak
								["timeline"] = { ADDED_10_2_7 },
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 100 },
									{ "i", AWAKENED_FROST, 1 },
								},
							}),
							i(199735, {	-- Cobalt Guardian's Cutlass
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", GLOWING_TITAN_ORB, 1 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199706, {	-- Cobalt Stalker's Lancet
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", TALLSTRIDER_SINEW, 5 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199708, {	-- Cobalt Wingguard's Polearm
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", ADAMANT_SCALES, 10 },
									{ "i", SEREVITE_ORE, 10 },
								},
							}),
							i(199703, {	-- Steadfast Cobalt Bulwark
								["cost"] = {
									{ "c", DRAGON_SUPPLIES, 600 },
									{ "i", RAINBOW_PEARL, 1 },
									{ "i", ADAMANT_SCALES, 10 },
								},
							}),
						},
					}),
				}),
				n(196862, {	-- Steiz <Quartermaster>
					["coord"] = { 49.4, 22.6, THE_AZURE_SPAN },
					["sym"] = {{"select","itemID",
						-- Armor --
						191833,	-- Cobalt Guardian's Pauldron
						191832,	-- Cobalt Guardian's Leggings
						191831,	-- Cobalt Guardian's Helm
						191829,	-- Cobalt Guardian's Hauberk
						191830,	-- Cobalt Guardian's Grips
						191836,	-- Cobalt Guardian's Cover
						191835,	-- Cobalt Guardian's Bracers
						191834,	-- Cobalt Guardian's Belt
						-- Weapons --
						199731,	-- Cobalt Bladewing Staff
						199703,	-- Steadfast Cobalt Bulwark
						199708,	-- Cobalt Wingguard's Polearm
						199706,	-- Cobalt Stalker's Lancet
						199735,	-- Cobalt Guardian's Cutlass
						199729,	-- Cobalt Essence Weaver's Staff
						199727,	-- Cobalt Essence Weaver's Scepter
						200559,	-- Cobalt Duelist's Saber
						199701,	-- Cobalt Dragonwing Decapitator
						199737,	-- Cobalt Dragonflame Blade
						199733,	-- Cobalt Defender's Wingglaive
						201371,	-- Cobalt Defender's Shredder
					}},
					["g"] = bubbleDownRep(FACTION_COBALT_ASSEMBLY, {
						{		-- Empty --
						}, {	-- Low --
						}, {	-- Medium --
							i(194265, {	-- Pattern: Blue Silken Lining (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(191579, {	-- Recipe: Transmute: Awakened Frost (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
						}, {	-- High --
							i(202117),	-- Assembly Preserver's Band
							i(202119),	-- Assembly Scholar's Loop
							i(202118),	-- Assembly Guardian's Ring
							i(201733, {	-- Pattern: Frosted Armor Kit (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(194261, {	-- Pattern: Frozen Spellthread (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(198895, {	-- Technique: Highland Drake: Spined Crest (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 25 }},
							}),
						}, {	-- Maximum --
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(198604),	-- Arcane Gem
				i(198603),	-- Arcane Rune
				i(198563),	-- Arcane Spark
				i(201388),	-- Dragonspawn Wingtipped Staff
			}),
		}),
	}),
})));