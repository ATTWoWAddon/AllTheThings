---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(COVENANT_SANCTUMS, {
		["description"] = "These rewards are shared across Covenants.",
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(14835),		-- A Resolute Bond
				ach(14636),		-- Adventurer in Chief
				ach(14843),		-- Adventures: Harmony of Purpose
				ach(14844, {	-- Adventures: Into the Breach
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(14845),	-- Adventures: A Step in the Right Direction
				ach(14846),	-- Adventures: Leaves in the Forest
				ach(14847),	-- Adventures: Protector of the Shadowlands
				ach(14840),	-- Adventures: Learning the Ropes
				ach(14841),	-- Adventures: Now You're Cooking
				ach(14842),	-- Adventures: Strength and Resilience
				ach(14839),	-- Bound to Adventure
				ach(14834),	-- Bound with Purpose
				ach(14627, {	-- Choosing Your Purpose
					["maps"] = { ORIBOS },
					["sourceQuests"] = {
						57878,	-- Choosing Your Purpose (original playthrough version
						62000,	-- Choosing Your Purpose (Threads of Fate)
					},
				}),
				ach(14790, {	-- Covenant Campaign
					["sourceQuests"] = {
						62557,	-- Our Realm Reclaimed
						62406,	-- Staff of the Primus
						60108,	-- Drust and Ashes
						58407,	-- The Medallion of Dominion
					},
					["sourceQuestNumRequired"] = 1,
				}),
				ach(15647, sharedDataSelf({ ["timeline"] = { ADDED_9_2_5 } }, {	-- Dead Men Tell Some Tales
					crit(48005, {	--  Kyrian Campaign
						["sourceQuests"] = { 62557 },	-- Our Realm Reclaimed
					}),
					crit(48146, {	--  Necrolords Campaign
						["sourceQuests"] = { 62406 },	-- Staff of the Primus
					}),
					crit(48530, {	--  Night Fae Campaign
						["sourceQuests"] = { 60108 },	-- Drust and Ashes
					}),
					crit(46963, {	--  Venthyr Campaign
						["sourceQuests"] = { 58407 },	-- The Medallion of Dominion
					}),
				})),
				ach(14628),	-- The Road to Renown
				ach(14629),	-- Gaining Respect
				ach(14630),	-- Becoming a Hero
				ach(14631),	-- Champion of the Covenant
				ach(15241, {	-- Renowned
					["timeline"] = { ADDED_9_1_5 },
				}),
				ach(15646, {	-- Re-Re-Re-Renowned
					["timeline"] = { ADDED_9_2_5 },
				}),
				ach(14632),		-- Conducting Anima
				ach(14639),		-- Dedication to the Restoration
				ach(14633),		-- Master Navigator
				ach(14837),		-- Nexus of Bonds
				ach(14777),		-- Restoration Expert
				ach(15023),	-- We Can Rebuild
				ach(15024),	-- Denying the Drought
				ach(15025),	-- Sanctum Superior
				ach(15649, {	-- Shadowlands Dilettante
					["timeline"] = { ADDED_9_2_5},
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {
						{"meta_achievement",
							14502,	-- Pursuing Loyalty
							14723,	-- Be Our Guest
							14752,	-- Things To Do When You're Dead
							14775,	-- Mush Appreciated
						},
					},
				}),
				ach(14638),		-- The Anima Must Flow
				ach(14836),		-- Unwavering Bond
				ach(14637),		-- Your Covenant's Flavor
			}),
			n(ADVENTURES, {
				["crs"] = {
					154527,	-- Command Table [Kyrian]
					175136,	-- Command Table [Necrolord]
					172400,	-- Command Table [Night Fae]
					166143,	-- Command Table [Venthyr]
				},
				["g"] = {
					i(178040, {	-- Condensed Stygia
						currency(1767),	-- Stygia
					}),
					-- Follower XP Items
					i(187413, {	-- Crystalline Memory Repository
						["timeline"] = { ADDED_9_1_0, REMOVED_9_1_5 },
					}),
					i(188655, {	-- Crystalline Memory Repository
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187414, {	-- Fractal Thoughtbinder
						["timeline"] = { ADDED_9_1_0, REMOVED_9_1_5 },
					}),
					i(188656, {	-- Fractal Thoughtbinder
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(187415, {	-- Mind-Expanding Prism
						["timeline"] = { ADDED_9_1_0, REMOVED_9_1_5 },
					}),
					i(188657, {	-- Mind-Expanding Prism
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(188650, {	-- Grimoire of Knowledge
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(188651, {	-- Grimoire of Knowledge (Drops from the early Campaign Missions) [Night Fae as noticed]
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(188652, {	-- Grimoire of Knowledge (Drops from the Campaign Missions) [Night Fae as noticed]
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(188653, {	-- Grimoire of Knowledge (Drops from the Campaign Missions) [Night Fae as noticed]
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(188654, {	-- Grimoire of Knowledge (Drops from the Campaign Missions) [Night Fae as noticed]
						["timeline"] = { ADDED_9_1_5 },
					}),
					-- Mounts
					i(183617),	-- Chittering Animite (MOUNT!)
					i(183052),	-- Darkwarren Hardshell (MOUNT!)
					i(183618),	-- Highwind Darkmane (MOUNT!)
					i(183615),	-- Warstitched Darkhound (MOUNT!)
					-- Pets
					i(180629),	-- Devouring Animite (PET!)
					i(181170),	-- Pernicious Bonetusk (PET!)
					i(182671),	-- Runelight Leaper (PET!)
					i(180872),	-- Spirited Skyfoal (PET!)
					-- Pet Currency
					i(163036),	-- Polished Pet Charm
					-- Misc.
					i(184650),	-- Adventure Campaign Progress
					i(184631),	-- Adventurer's Enchanting Cache
					-- i(  )	-- Adventurer's Fish Cache (doesn't exist)
					i(184634),	-- Adventurer's Herbalism Cache
					-- i(  ),	-- Adventurer's Meat Cache (doesn't exist)
					i(184635),	-- Adventurer's Mining Cache
					i(184636),	-- Adventurer's Skinning Cache
					i(184630),	-- Adventurer's Tailoring Cache
					i(187573, {	-- Broker's Enchanting Mote of Potentiation
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187572, {	-- Broker's Herbalism Mote of Potentiation
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187569, {	-- Broker's Tailoring Mote of Potentiation
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187574, {	-- Broker's Overflowing Bucket
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(184643),	-- Champion's Enchanting Cache
					i(184632),	-- Champion's Fish Cache
					i(184642),	-- Champion's Herbalism Cache
					i(184633),	-- Champion's Meat Cache
					i(184641),	-- Champion's Mining Cache
					i(184640),	-- Champion's Skinning Cache
					i(184639),	-- Champion's Tailoring Cache
					i(184648),	-- Hero's Enchanting Cache
					i(184638),	-- Hero's Fish Cache
					i(184647),	-- Hero's Herbalism Cache
					i(184637),	-- Hero's Meat Cache
					i(184646),	-- Hero's Mining Cache
					i(184645),	-- Hero's Skinning Cache
					i(184644),	-- Hero's Tailoring Cache
					i(187575, {	-- Korthian Fishing Cache
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187577, {	-- Korthian Meat Cache
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(187576, {	-- Korthian Skinning Cache
						["timeline"] = { ADDED_9_1_0 },
					}),
					i(181468),	-- Veiled Augment Rune
					-- Gear
					i(185942),	-- Sinheart Choker
					i(187821, {	-- Bar-Fusan's Hackblade
						["sourceQuests"] = { 64963 },	-- A Defector's Request
						["description"] = "Can only spawn after completing the quest |cFFFFD700A Defector's Request'(64963)|r.",
					}),
					i(190178, {	-- Pouch of Protogenic Provisions
						["timeline"] = { ADDED_9_2_0 },
					}),
				},
			}),
			n(COVENANT_CALLINGS, {
				n(175390, {	-- Dirty Glinting Object
					["description"] = "Can appear when on certain Training callings.  Roughly every 5 minutes, upon exiting combat, your trainee will call your attention to something they've discovered.\n\nOften contains potions, leveling and rarity charms for pets, or food.",
					["crs"] = {
						-- Confirmed Follower ID's which will drop the loot objects
						170035,	-- Deos [Kyrian]
						170016,	-- Dregs [Necrolord]
						170045,	-- Drippy [Venthyr]
						170029,	-- Twinklewings [Night Fae]

						-- Follower ID's which will NOT drop loot objects
						-- 170026,	-- Cadaverous [Necrolord]
						-- 170033,	-- Karras [Night Fae]
						-- 170044,	-- Nandor [Venthyr]
						-- 170039,	-- Popo [Kyrian]
					},
					["g"] = {
						i(184507),	-- Lucy (PET!)
						i(184505),	-- "Adorable Ascended" Costume
						i(184506),	-- "Flying Faerie" Costume
						i(184503),	-- Attendant's Pocket Portal: Ardenweald
						i(184500),	-- Attendant's Pocket Portal: Bastion
						i(184502),	-- Attendant's Pocket Portal: Maldraxxus
						i(184504),	-- Attendant's Pocket Portal: Oribos
						i(184501),	-- Attendant's Pocket Portal: Revendreth
						i(171438),	-- Porous Weightstone
						i(92683),	-- Flawless Dragonkin Battle-Stone
					},
				}),
				n(COMMON_BOX_DROPS, {	-- Common Box Drops
					i(187880),	-- Goat Soul
					i(187862),	-- Snake Soul
				}),
			}),
			-- Calling Boxes
			n(COVENANT_CALLINGS, sharedData({
					["sym"] = {
						{ "select", "headerID", COVENANT_SANCTUMS },{"pop"}, -- Covenant Sanctum groups
						{ "where", "headerID", COVENANT_CALLINGS },{"pop"},	-- Covenant Callings groups
						{ "where", "headerID", COMMON_BOX_DROPS },	-- Common Box Drops
					},
				},{
				-- Rare Quality Calling Rewards / Zone
				i(181475, {	-- Bounty of the Grovewardens / Ardenweald
					["description"] = "Rewarded by completing a Calling based in Ardenweald.",
					["g"] = {
						i(187840, {	-- Sparkle Wings (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
						i(190381, {	-- Technique: Glyph of the Spectral Vulpine (RECIPE!)
							["timeline"] = { ADDED_9_2_0 },
						}),
					},
				}),
				i(181556, {	-- Tribute of the Court / Revendreth
					["description"] = "Rewarded by completing a Calling based in Revendreth.",
					["g"] = {
						i(180248),	-- Ambassador's Reserve (Ember Court Bonus Time)
						i(187512, {	-- Tome of Small Sins (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),
				i(181732, {	-- Tribute of the Ambitious / Maldraxxus
					["description"] = "Rewarded by completing a Calling based in Maldraxxus.",
					["g"] = {
						i(184159, {	-- Necroray Egg (Timer)
							i(184158, {	-- Oozing Necroray Egg (No Timer)
								i(184160),	-- Bulbous Necroray (MOUNT!)
								i(184161),	-- Infested Necroray (MOUNT!)
								i(184162),	-- Pestilent Necroray (MOUNT!)
							}),
						}),
						i(187913, {	-- Apprentice Slimemancer's Boots (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),
				i(181372, {	-- Tribute of the Ascended / Bastion
					["description"] = "Rewarded by completing a Calling based in Bastion.",
					["g"] = {
						i(187419, {	-- Steward's First Feather (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),

				-- Epic Quality Challenges Rewards / Zone
				i(181476, {	-- Tribute of the Wild Hunt / Ardenweald
					["description"] = "Rewarded by completing a 'Challenges' Calling based in Ardenweald.",
					["g"] = {
						i(187840, {	-- Sparkle Wings (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
						i(190381, {	-- Technique: Glyph of the Spectral Vulpine (RECIPE!)
							["timeline"] = { ADDED_9_2_0 },
						}),
					},
				}),
				i(181557, {	-- Favor of the Court / Revendreth
					["description"] = "Rewarded by completing a 'Challenges' Calling based in Revendreth.",
					["g"] = {
						i(176850),	-- Blank Invitation
						i(187512, {	-- Tome of Small Sins (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),
				i(181733, {	-- Tribute of the Duty-Bound / Maldraxxus
					["description"] = "Rewarded by completing a 'Challenges' Calling based in Maldraxxus.",
					["g"] = {
						i(184159, {	-- Necroray Egg (Timer)
							i(184158, {	-- Oozing Necroray Egg (No Timer)
								i(184160),	-- Bulbous Necroray (MOUNT!)
								i(184161),	-- Infested Necroray (MOUNT!)
								i(184162),	-- Pestilent Necroray (MOUNT!)
							}),
						}),
						i(187913, {	-- Apprentice Slimemancer's Boots (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),
				i(181741, {	-- Tribute of the Paragon / Bastion
					["description"] = "Rewarded by completing a 'Challenges' Calling based in Bastion.",
					["g"] = {
						i(187419, {	-- Steward's First Feather (TOY!)
							["timeline"] = { ADDED_9_1_5 },
						}),
					},
				}),
			})),
			n(-299, {	-- Missions
				mi(2253),	-- Topple the Giants
				mi(2299),	-- Maw: Topple the Giants
				mi(2298),	-- Maw: Coalescing Stygia
				mi(2252),	-- Coalescing Stygia
				mi(2297),	-- Maw: Ghelak's Revenge
				mi(2251),	-- Ghelak's Revenge
				mi(2250),	-- Breach the Planes
				mi(2296),	-- Maw: Breach the Planes
				mi(2260),	-- Krala, Wings of Woe
				mi(2259),	-- Shades of Despair
				mi(2258),	-- Cutting the Threads
				mi(2256),	-- Grandiose Designs
				mi(2255),	-- Dravok's Plot
				mi(2254),	-- Dark Skies, Darker Prospects
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(COVENANT_SANCTUMS, {
		n(ADVENTURES, {
			-- Completing mi(2174), "Tutorial: Dispose of the Detritus"
			q(63070),	-- Shared
			q(63360),	-- Kyrian
			q(63361),	-- Necrolord
			q(63359),	-- Night Fae
			q(63362),	-- Venthyr
			-- Completing mi(2295), "Tutorial: Necromantic Intervention"
			q(63071),	-- Shared
			q(63364),	-- Kyrian
			q(63365),	-- Necrolord
			q(63363),	-- Night Fae
			q(63366),	-- Venthyr
			-- Completing mi(2175),	"Tutorial: Spinal Swarm"
			q(60634),	-- Shared
			q(63368),	-- Kyrian
			q(63369),	-- Necrolord
			q(63367),	-- Night Fae
			q(63370),	-- Venthyr
			-- Completing mi(2211),	"Campaign: Whisper in the Dark"
			q(63247),	-- Shared
			q(63281),	-- Kyrian
			q(63282),	-- Necrolord
			q(63280),	-- Night Fae
			q(63283),	-- Venthyr
			-- Completing mi(2228), "Campaign: Discarded But Not Useless"
			q(63252),	-- Shared
			q(63301),	-- Kyrian
			q(63302),	-- Necrolord
			q(63300),	-- Night Fae
			q(63303),	-- Venthyr
			-- Completing mi(2194), "Campaign: Erezuel's Revenge"
			q(63237),	-- Shared
			q(63258),	-- Kyrian
			q(63259),	-- Necrolord
			q(63257),	-- Night Fae
			q(63260),	-- Venthyr
			-- Completing mi(2245), "Campaign: Stacka's Last Stand"
			q(63242),	-- Shared
			q(63321),	-- Kyrian
			q(63322),	-- Necrolord
			q(63320),	-- Night Fae
			q(63323),	-- Venthyr
			-- Completing mi(2195), "Campaign: Quiet the Shriekers"
			q(63238),	-- Shared
			q(63265),	-- Kyrian
			q(63266),	-- Necrolord
			q(63264),	-- Night Fae
			q(63267),	-- Venthyr
			-- Completing mi(2246), "Campaign: Alpha Bonemauler"
			q(63243),	-- Shared
			q(63325),	-- Kyrian
			q(63326),	-- Necrolord
			q(63324),	-- Night Fae
			q(63327),	-- Venthyr
			-- Completing mi(2212), "Campaign: Promises of the Praetor"
			q(63248),	-- Shared
			q(63285),	-- Kyrian
			q(63286),	-- Necrolord
			q(63284),	-- Night Fae
			q(63287),	-- Venthyr
			-- Completing mi(2229), "Campaign: Bone Breaker's Hoard"
			q(63253),	-- Shared
			q(63305),	-- Kyrian
			q(63306),	-- Necrolord
			q(63304),	-- Night Fae
			q(63307),	-- Venthyr
			-- Completing mi(2213), "Campaign: Save the Skyfoal"
			q(63249),	-- Shared
			q(63289),	-- Kyrian
			q(63290),	-- Necrolord
			q(63288),	-- Night Fae
			q(63291),	-- Venthyr
			-- Completing mi(2196), "Campaign: Rescue the Runelight Leaper"
			q(63239),	-- Shared
			q(63269),	-- Kyrian
			q(63270),	-- Necrolord
			q(63268),	-- Night Fae
			q(63271),	-- Venthyr
			-- Completing mi(2247), "Campaign: Charthox the Indomitable"
			q(63244),	-- Shared
			q(63329),	-- Kyrian
			q(63330),	-- Necrolord
			q(63328),	-- Night Fae
			q(63331),	-- Venthyr
			-- Completing mi(2230), "Campaign: Ahnqat's Darkness"
			q(63254),	-- Shared
			q(63309),	-- Kyrian
			q(63310),	-- Necrolord
			q(63308),	-- Night Fae
			q(63311),	-- Venthyr
			-- Completing mi(2197), "Campaign: Cleanse the Possessed"
			q(63240),	-- Shared
			q(63273),	-- Kyrian
			q(63274),	-- Necrolord
			q(63272),	-- Night Fae
			q(63275),	-- Venthyr
			-- Completing mi(2231), "Campaign: Nirvaska's Grand Designs"
			q(63255),	-- Shared
			q(63313),	-- Kyrian
			q(63314),	-- Necrolord
			q(63312),	-- Night Fae
			q(63315),	-- Venthyr
			-- Completing mi(2214), "Campaign: The Forsworn Strike Back"
			q(63250),	-- Shared
			q(63293),	-- Kyrian
			q(63294),	-- Necrolord
			q(63292),	-- Night Fae
			q(63295),	-- Venthyr
			-- Completing mi(2248), "Campaign: Big Shiny and Friends"
			q(63245),	-- Shared
			q(63333),	-- Kyrian
			q(63334),	-- Necrolord
			q(63332),	-- Night Fae
			q(63335),	-- Venthyr
			-- Completing mi(2215), "Campaign: War-Captain's Woe"
			q(63251),	-- Shared
			q(63297),	-- Kyrian
			q(63298),	-- Necrolord
			q(63296),	-- Night Fae
			q(63299),	-- Venthyr
			-- Completing mi(2198), "Campaign: Darkwarren Finality"
			q(63241),	-- Shared
			q(63277),	-- Kyrian
			q(63278),	-- Necrolord
			q(63276),	-- Night Fae
			q(63279),	-- Venthyr
			-- Completing mi(2249), "Campaign: The Final Puzzle"
			q(63246),	-- Shared
			q(63337),	-- Kyrian
			q(63338),	-- Necrolord
			q(63336),	-- Night Fae
			q(63339),	-- Venthyr
			-- Completing mi(2232), "Campaign: Corpselice Catastrophe"
			q(63256),	-- Shared
			q(63317),	-- Kyrian
			q(63318),	-- Necrolord
			q(63316),	-- Night Fae
			q(63319),	-- Venthyr
			-- Maw adventures
			q(63449),	-- i believe this was Topple the Giants
			-- Misson Table
			q(60635),	-- Night Fae Mission Table / Unknown Venthyr
		}),
		n(RENOWN, {
			-- Generic SL tracking quests
			q(64508),	-- generic Renown quest - triggers multiple times for all covenants
			q(63220),	-- generic quest for hitting Renown 10 (any covenant) - WQ reward upgrade #1
			q(63221),	-- generic quest for hitting Renown 19 (any covenant) - WQ reward upgrade #2
			q(63350),	-- generic quest for hitting Renown 29 (any covenant) - WQ reward upgrade #3
			q(64082, {["timeline"] = {ADDED_9_1_0}}),	-- Renown 73 (WQ Reward increase)
			q(64069, {["timeline"] = {ADDED_9_1_0}}),	-- Renown 75 (WQ Reward increase)
			q(64067, {["timeline"] = {ADDED_9_1_0}}),	-- generic quest for hitting Renown 46 (any covenant) - WQ reward upgrade #4
			q(64073, {["timeline"] = {ADDED_9_1_0}}),	-- generic quest for hitting Renown 47 (any covenant)
			q(64068, {["timeline"] = {ADDED_9_1_0}}),	-- generic quest for hitting Renown 61 (any covenant)
		}),
		n(QUESTS, {
			-- Skip covenant sanctum intro quests
			q(63426),	-- Skip the Kyrian sanctum intro quests (spellID 348412)
			q(63428),	-- Skip the Necrolord sanctum intro quests (spellID 348414)
			q(63427),	-- Skip the Night Fae sanctum intro quests (spellID 348413)
			q(63425),	-- Skip the Venthyr sanctum intro quests (spellID 348407)
			q(63429),	-- Skip the Venthyr sanctum intro quests (spellID 348415)
		}),
	}),
})));