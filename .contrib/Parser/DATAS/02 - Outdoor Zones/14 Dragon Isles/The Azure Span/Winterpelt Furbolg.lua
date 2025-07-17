---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		header(HEADERS.Faction, FACTION_WINTERPELT_FURBOLG, bubbleDown({ ["timeline"] = ADDED_10_0_7 }, {
			faction(FACTION_WINTERPELT_FURBOLG, {
				-- completing the whole quest chain will always give exactly exalted
				["sourceQuest"] = 73031,	-- Champion of the Winterpelt
			}),
			n(ACHIEVEMENTS, {
				ach(17427, {	-- Winterpelt Conversationalist
					-- 'cost' isn't "really" accurate here, but via the repeatable quests below (which aren't really reputation-based)
					-- we can't track the required "skill" increase as a collectible to grant this achievement
					-- so for now at least show the items are needed until this achievement is earned
					["cost"] = {
						{ "i", 202017, 500 },	-- Liberated Furbolg Artifacts
						{ "i", 202018, 100 },	-- Intact Scribe Stick
					},
				}),
			}),
			n(MAILBOX, {
				i(204254),	-- Sonova's Request
			}),
			n(QUESTS, {
				-- Intro quests
				q(72546, {	-- Academic Assistance
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["provider"] = { "i", 204254 },	-- Sonova's Request
					["isBreadcrumb"] = true,
				}),
				q(72589, {	-- Honor Their Sacrifice
					["sourceQuests"] = {
						72546,	-- Academic Assistance
					},
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
					["g"] = {
						i(202246),	-- Winterpelt Jewelry
					},
				}),
				q(72588, {	-- Primalist Pillagers
					["sourceQuests"] = {
						72546,	-- Academic Assistance
					},
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
					["g"] = {
						i(202244),	-- Frosty Foraged Foods (QI!)
					},
				}),

				-- First time + Repeatable handins
				q(72547, {	-- Academic Acquisitions
					["sourceQuests"] = {
						72589,	-- Honor Their Sacrifice
						72588,	-- Primalist Pillagers
					},
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["qgs"] = {
						189401,	-- Sonova Snowden
						201065,	-- Sonova Snowden
					},
					["coords"] = {
						{ 65.4, 15.9, THE_AZURE_SPAN },
						{ 66.9, 12.7, THE_AZURE_SPAN },
					},
					["cost"] = { { "i", 202017, 5 } },	-- 5x Liberated Furbolg Artifacts
				}),
				q(72586, {	-- Additional Academic Acquisitions
					["sourceQuests"] = {
						72547,	-- Academic Acquisitions
					},
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["maxReputation"] = { FACTION_WINTERPELT_FURBOLG, EXALTED },
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
					["repeatable"] = true,
					["cost"] = { { "i", 202017, 5 } },	-- 5x Liberated Furbolg Artifacts
					["g"] = {
						spell(403661),	-- Knowledge: Winterpelt
					}
				}),
				q(72587, {	-- Astonishing Academic Acquisitions
					["sourceQuests"] = {
						72547,	-- Academic Acquisitions
					},
					["minReputation"] = { FACTION_WINTERPELT_FURBOLG, UNFRIENDLY+2050 },
					["maxReputation"] = { FACTION_WINTERPELT_FURBOLG, EXALTED },
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
					["repeatable"] = true,
					["cost"] = { { "i", 202018, 1 } },	-- 1x Intact Scribe Stick
					["g"] = {
						spell(403661),	-- Knowledge: Winterpelt
					}
				}),

				-- Language Furbolg 25
				q(73550, {	-- Honeyfreeze Mead
					["sourceQuests"] = {
						72589,	-- Honor Their Sacrifice
						72588,	-- Primalist Pillagers
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 25
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
				}),
				q(73692, {	-- Hive Maintenance
					["sourceQuests"] = {
						72589,	-- Honor Their Sacrifice
						72588,	-- Primalist Pillagers
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 25
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
				}),
				q(73704, {	-- Local Flavors
					["sourceQuests"] = {
						73550,	-- Honeyfreeze Mead
						73692,	-- Hive Maintenance
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 25
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
					["g"] = {
						i(202268),	-- Winterpelt Totem
					},
				}),

				-- Language Furbolg 50
				q(72551, {	-- A Living History
					["sourceQuests"] = { 73704 },	-- Local Flavors
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 50
					["provider"] = { "n", 199266 },	-- Garz
					["coord"] = { 66.9, 13.0, THE_AZURE_SPAN },
				}),
				q(72552, {	-- Gathering Together
					["sourceQuests"] = { 72551 },	-- A Living History
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 50
					["provider"] = { "n", 199271 },	-- Elder Mhaz
					["coord"] = { 57.4, 21.1, THE_AZURE_SPAN },
					["g"] = {
						i(202181),	-- Best-root Tuber (QI!)
					},
				}),
				q(72553, {	-- More Effort, More Reward
					["sourceQuests"] = { 72551 },	-- A Living History
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 50
					["provider"] = { "n", 199272 },	-- Matron Fherg
					["coord"] = { 57.4, 20.9, THE_AZURE_SPAN },
					["g"] = {
						i(202185),	-- Chillwrought Worm Meat (QI!)
					},
				}),
				q(72554, {	-- Break Him
					["sourceQuests"] = {
						72552,	-- Gathering Together
						72553,	-- More Effort, More Reward
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 50
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
					["g"] = {
						i(202283),	-- Reading Glasses (TOY!)
					},
				}),
				q(74433, {	-- Returning the Blade
					["sourceQuests"] = {
						72552,	-- Gathering Together
						72553,	-- More Effort, More Reward
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 50
					["provider"] = { "i", 203651 },	-- Saza's Blade
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
				}),

				-- Language Furbolg 75
				q(73035, {	-- Path of Trust
					["sourceQuests"] = { 72554 },	-- Break Him
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 75
					["provider"] = { "n", 199266 },	-- Garz
					["coord"] = { 66.9, 13.0, THE_AZURE_SPAN },
				}),
				q(72558, {	-- Our Honored Ancestors
					["sourceQuests"] = { 73035 },	-- Path of Trust
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 75
					["provider"] = { "n", 199267 },	-- Radze Thunderclaw
					["coord"] = { 66.0, 12.6, THE_AZURE_SPAN },
				}),
				q(72941, {	-- Ancestral Advice
					["sourceQuests"] = { 72558 },	-- Our Honored Ancestors
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 75
					["provider"] = { "n", 199996 },	-- Ancestor Brazzok
					["coord"] = { 66.0, 12.7, THE_AZURE_SPAN },
				}),
				q(72945, {	-- Our Path Ahead
					["sourceQuests"] = { 72558 },	-- Our Honored Ancestors
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 75
					["provider"] = { "n", 199300 },	-- Ancestor Molg
					["coord"] = { 67.0, 13.1, THE_AZURE_SPAN },
				}),
				q(72559, {	-- History Heist
					["sourceQuests"] = { 72558 },	-- Our Honored Ancestors
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 75
					["provider"] = { "n", 199299 },	-- Jhagaze the Wordkeeper
					["coord"] = { 67.0, 11.9, THE_AZURE_SPAN },
					["g"] = {
						i(202264),	-- Defender of the Winterpelt
						i(198834),	-- Scribbled Bark Chunks (QI!)
					},
				}),

				-- Language Furbolg 100
				q(72598, {	-- Words of the Winterpelt
					["sourceQuests"] = { 72559 },	-- History Heist
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 100
					["provider"] = { "n", 201065 },	-- Sonova Snowden
					["coord"] = { 66.9, 12.7, THE_AZURE_SPAN },
				}),
				q(72590, {	-- Ursol's Wisdom
					["sourceQuests"] = { 72598 },	-- Words of the Winterpelt
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 100
					["provider"] = { "n", 189394 },	-- Kranac Sagesnow
					["coord"] = { 65.9, 10.7, THE_AZURE_SPAN },
				}),
				q(72597, {	-- Ursoc's Strength
					["sourceQuests"] = { 72598 },	-- Words of the Winterpelt
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 100
					["provider"] = { "n", 189394 },	-- Kranac Sagesnow
					["coord"] = { 65.9, 10.7, THE_AZURE_SPAN },
				}),
				q(73031, {	-- Champion of the Winterpelt
					["sourceQuests"] = {
						72590,	-- Ursol's Wisdom
						72597,	-- Ursoc's Strength
					},
					--["minReputation"] = { TODO, TODO },	-- Language Furbolg 100
					["provider"] = { "n", 189394 },	-- Kranac Sagesnow
					["coord"] = { 65.9, 10.7, THE_AZURE_SPAN },
					["g"] = {
						i(202253),	-- Primal Stave of Claw and Fur (TOY!)
					},
				}),
			}),
			n(VENDORS, {
				n(201105, {	-- Kazzi
					["coord"] = { 65.8, 12.7, THE_AZURE_SPAN },
					["g"] = bubbleDownRepSkip(FACTION_WINTERPELT_FURBOLG, {
						{		-- Neutral
						}, {	-- Friendly
							i(202314, {	-- Big Chunk o' Meat
								["cost"] = {{ "c", DRAGON_SUPPLIES, 15 }},
							}),
							i(202315, {	-- Frozen Solid Tea
								["cost"] = {{ "c", DRAGON_SUPPLIES, 15 }},
							}),
						}, {	-- Honored
							i(197006, {	-- Cliffside Wylderdrake: Plated Nose (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(197129, {	-- Highland Drake: Sleek Horns (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(204354, {	-- Hollowed Furbolg Food Pack
								["cost"] = {{ "c", DRAGON_SUPPLIES, 500 }},
							}),
							i(203995, {	-- Winter Pelt Cloak
								["cost"] = {{ "c", DRAGON_SUPPLIES, 75 }},
							}),
							i(202282, {	-- Winterpelt Mending Totem
								["cost"] = {{ "c", DRAGON_SUPPLIES, 150 }},
							}),
							i(202273, {	-- Renewed Proto-Drake: Stubby Snout (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
							i(197583, {	-- Windborne Velocidrake: Exposed Finned Back (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 50 }},
							}),
						}, {	-- Revered
							i(196995, {	-- Cliffside Wylderdrake: Spiked Horns (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 100 }},
							}),
							i(197102, {	-- Highland Drake: Horned Chin (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 100 }},
							}),
							i(204355, {	-- Hollowed Winterpelt Food Pack
								["cost"] = {{ "c", DRAGON_SUPPLIES, 500 }},
							}),
							i(204678, {	-- Pattern: Paw-Made Winterpelt Reagent Bag (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 750 }},
							}),
							i(202289, {	-- Recipe: Firewater Sorbet (RECIPE!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 750 }},
							}),
							i(202279, {	-- Renewed Proto-Drake: Malevolent Horns (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 100 }},
							}),
							i(203734, {	-- Snow Blanket (TOY!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 200 }},
							}),
							i(197629, {	-- Windborne Velocidrake: Spiked Neck (MM!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 100 }},
							}),
						}, {	-- Exalted
							i(202255, {	-- Driftling (PET!)
								["cost"] = {{ "c", DRAGON_SUPPLIES, 150 }},
							}),
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(202017, {	-- Liberated Furbolg Artifacts
					["crs"] = {
						189851,	-- Ritual Scout
						186787,	-- Ritual Guardian
					},
					["coord"] = { 77.6, 39.0, THE_AZURE_SPAN },
				}),
				i(202018, {	-- Intact Scribe Stick
					["crs"] = {
						189851,	-- Ritual Scout
						186787,	-- Ritual Guardian
					},
					["coord"] = { 77.6, 39.0, THE_AZURE_SPAN },
				}),
				i(203651, {	-- Saza's Blade
					["crs"] = { 199279 },	-- Icebreaker
					["coord"] = { 55.1, 19.7, THE_AZURE_SPAN },
				}),
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(DRAGON_ISLES, {
		m(THE_AZURE_SPAN, {
			header(HEADERS.Faction, FACTION_WINTERPELT_FURBOLG, {
				q(73048),	-- Tell Little Toz 'Make sure to marry Fuzzy Feet immediately' during 'Ancestral Advice' (questID 72941)
				q(73049),	-- Tell Little Toz 'Make sure to marry Bring Fur immediately' during 'Ancestral Advice' (questID 72941)
				q(73050),	-- Tell Little Toz 'Make sure to murder Fuzzy Feet immediately' during 'Ancestral Advice' (questID 72941)
				q(73051),	-- Tell Little Toz 'Make sure to murder Bring Fur immediately' during 'Ancestral Advice' (questID 72941)
				q(73184),	-- Tell Kranac Sagesnow 'The Winterpelt must obtain riches' during 'Our Path Ahead' (questID 72945)
				q(73185),	-- Tell Kranac Sagesnow 'The Winterpelt must obtain weapons' during 'Our Path Ahead' (questID 72945)
				q(73186),	-- Tell Kranac Sagesnow 'The Winterpelt must obtain a new home' during 'Our Path Ahead' (questID 72945)
				q(73187),	-- Tell Kranac Sagesnow 'The Winterpelt must obtain allies' during 'Our Path Ahead' (questID 72945)
				q(73547),	-- Let Saza say goodbye to you after summoning the Ancients. Try not to cry like a little girl.
			}),
		}),
	}),
})));