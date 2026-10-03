-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.LEGION, {
		header(HEADERS.Map, 897, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {	-- The Deaths of Chromie
			["lvl"] = 110,
			["description"] = "The Chromie Scenario sends you through multiple timeways to defeat Chromie's attackers. As you gain reputation with Chromie by killing mobs in the scenario, you will unlock more powerful abilities for Chromie to help speed up your run. Unlike past solo scenarios like Withered Army Training, you do not need to worry about gearing up--your gear is scaled up to 1000 and your player level is increased as well to 112. You can also fly inside this scenario--unusual for instanced content.\n\nEach scenario attempt lasts 15 minutes and the ultimate goal is to defeat 8 timeways in one attempt. Progress can be speed up through obtaining items that grant extra time, buffs from Chromie, and items which auto-complete a timeway threat.",
			["icon"] = 236699,
			["cr"] = 27856,	-- Chromie
			["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
			["maps"] = {	-- Scenario Maps
				897,	-- Dragonblight
				898,	-- The Well of Eternity
				899,	-- The War for Andorhal
				900,	-- The Burning of Mount Hyjal
				901,	-- Well of Eternity
				902,	-- The Culling of Stratholme
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(11941, {	-- Chromie Homie
						title(361),	-- Title: Timelord
					}),
				}),
				n(FACTIONS, {
					faction(FACTION_CHROMIE),	-- Chromie
				}),
				n(QUESTS, {
					q(48021, {	-- Chromie
						["qgs"] = {
							90417,	-- Archmage Khadgar
							122926,	-- Image of Chromie
						},
						["coord"] = { 26.4, 44.6, LEGION_DALARAN },
						["groups"] = { i(151700) },	-- Wayfinder's Sundial
					}),
					q(47543, {	-- The Day That Chromie Dies
						["provider"] = { "n", 27856 },	-- Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
					}),
					q(47545, {	-- Rewind
						["sourceQuest"] = 47543,	-- The Day That Chromie Dies
						["provider"] = { "n", 27856 },	-- Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
					}),
					q(47550, {	-- The Many Advantages of Being a Time Dragon
						["sourceQuest"] = 47545,	-- Rewind
						["provider"] = { "n", 27856 },	-- Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
					}),
					q(47904, {	-- Preserve the True Future
						["sourceQuest"] = 47550,	-- The Many Advantages of Being a Time Dragon
						["provider"] = { "n", 27856 },	-- Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
					}),
					q(47906, {	-- The Deaths of Chromie
						["sourceQuest"] = 47904,	-- Preserve the True Future
						["provider"] = { "n", 27856 },	-- Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["groups"] = {
							iensemble(151692),	-- Ensemble: Chronoscryer's Finery
							iensemble(151693),	-- Ensemble: Riftscarred Vestments
							iensemble(151694),	-- Ensemble: Epoch Sentinel's Mail
							iensemble(151695),	-- Ensemble: Timewarden's Plate
						},
					}),
					-- Repeatables
					q(47810, {	-- Darkened Dreams
						["provider"] = { "n", 122513 },	-- Lord Itharius
						["coord"] = { 59.6, 54.6, 897 },
						["repeatable"] = true,
					}),
					q(47809, {	-- Darkness in the Ley
						["provider"] = { "n", 122514 },	-- Kalecgos
						["coord"] = { 59.5, 54.3, 897 },
						["repeatable"] = true,
					}),
					q(47808, {	-- The Dead Walk
						["provider"] = { "n", 122511 },	-- Alexstrasza the Life-Binder
						["coord"] = { 59.8, 54.7, 897 },
						["repeatable"] = true,
					}),
					q(47807, {	-- Worried About My Friends
						["provider"] = { "n", 122510 },	-- Chromie
						["coord"] = { 60.0, 54.5, 897 },
						["repeatable"] = true,
					}),
				}),
				n(REWARDS, {
					currency(TIMEWARPED_BADGE),
					i(151493),	-- Sands of Time
				}),
				n(ZONE_DROPS, {
					["groups"] = {
						i(151493, {	-- Sands of Time
							i(151482, {	-- Time-Lost Wallet
								i(151829),	-- Bronze Proto-Whelp (PET!)
								i(151828),	-- Ageless Bronze Drake (PET!)
							}),
							i(151551, {	-- Time-Lost Keepsake Box
								i(151547),	-- Brimstone Beacon - When you use this, last rare will instantly spawn
							}),
							i(151552, {	-- Time-Lost Keepsake Box
								i(151548),	-- Tyrande's Moonstone - Use it after you teleported into portal. Hippogryph will fly you to end.
							}),
							i(151553, {	-- Time-Lost Keepsake Box
								i(151549),	-- Cenarion Circle Documents - Speaking with Adrine Towhide will instantly finish that one.
							}),
							i(151554, {	-- Time-Lost Keepsake Box
								i(151546),	-- Stratholme Gate Key
							}),
						}),
					},
				}),
				n(124764, {	-- Azure Dragonshrine
					n(QUESTS, {
						q(47645, {	-- Voidcallers' Scroll
							["provider"] = { "i", 150941 },	-- Voidcallers' Scroll (QS!)
						}),
						q(47557, {	-- Smoldering Chronoshard
							["sourceQuest"] = 47645,	-- Voidcaller's Scroll
							["provider"] = { "i", 150943 },	-- Smoldering Chronoshard (QS!)
							["coord"] = { 56.6, 66.1, 897 },	-- Dragonblight
						}),
					}),
					n(ZONE_DROPS, {
						i(151141, {	-- Darkened Scrap of Vellum
							["cr"] = 122552,	-- Leyline Elemental
						}),
						i(150943, {	-- Smoldering Chronoshard (QS!)
							["cr"] = 122553,	-- Void Gargantuan
						}),
						i(150941, {	-- Voidcallers' Scroll (QS!)
							["cost"] = { { "i", 151141, 50 } },	-- 50x Darkened Scrap of Vellum
						}),
					}),
				}),
				n(124765, {	-- Emerald Dragonshrine
					n(QUESTS, {
						q(47643, {	-- The Ancients' Wisdom
							["description"] = "Use 'Nightmare-Catcher' to enter The Emerald Nightmare and kill the |cFFFFD700Dream Tormentors|r around each ancient.",
							["cost"] = { { "i", 151166, 3 } },	-- 3x Nightmare-Catcher
						}),
						q(47559, {	-- Gleaming Chronoshard
							["sourceQuest"] = 47643,	-- The Ancients' Wisdom
							["provider"] = { "i", 150945 },	-- Gleaming Chronoshard (QS!)
							["coord"] = { 63.9, 72.6, 897 },	-- Dragonblight
						}),
					}),
					n(ZONE_DROPS, {
						i(151168, {	-- Emeraldine Plume
							["cr"] = 122548,	-- Emerald Skytalon
						}),
						i(150945, {	-- Gleaming Chronoshard (QS!)
							["cr"] = 122875,	-- Thalas Vylethorn
						}),
						i(151167, {	-- Twisted Fiber
							["cr"] = 122549,	-- Emerald Lasher
						}),
						i(151166, {	-- Nightmare-Catcher
							["cost"] = {
								{ "i", 151168,  8 },	--  8x Emeraldine Plume
								{ "i", 151167, 10 },	-- 10x Twisted Fiber
							},
						}),
					}),
				}),
				n(124762, {	-- Obsidian Dragonshrine
					n(QUESTS, {
						q(47644, {	-- Demonic Corestone
							["provider"] = { "i", 150938 },	-- Demonic Corestone (QS!)
						}),
						q(47558, {	-- Fel-Touched Chronoshard
							["sourceQuest"] = 47644,	-- Demonic Corestone
							["provider"] = { "i", 150944 },	-- Fel-Touched Chronoshard (QS!)
							["coord"] = { 37.9, 31.1, 897 },	-- Dragonblight
						}),
					}),
					n(ZONE_REWARDS, {
						i(150938, {	-- Demonic Corestone (QS!)
							["cr"] = 122528,	-- Charredbone Goliath
						}),
						i(150944, {	-- Fel-Touched Chronoshard (QS!)
							["cr"] = 122871,	-- Zorathides
						}),
					}),
				}),
				n(124763, {	-- Ruby Dragonshrine
					n(QUESTS, {
						q(47642, {	-- Soul Crystal
							["provider"] = { "i", 150940 },	-- Soul Crystal (QS!)
						}),
						q(47560, {	-- Frozen Chronoshard
							["sourceQuest"] = 47642,	-- Soul Crystal
							["provider"] = { "i", 150946 },	-- Frozen Chronoshard (QS!)
							["coord"] = { 47.6, 48.8, 897 },	-- Dragonblight
						}),
					}),
					n(ZONE_REWARDS, {
						i(150946, {	-- Frozen Chronoshard (QS!)
							["cr"] = 122874,	-- Talar Icechill
						}),
						i(150939, {	-- Soul Crystal Fragment
							["crs"] = {
								122542,	-- Alyndriel Graveborn
								122541,	-- Earlis the Deathrider
								122540,	-- Festerbloat
							},
						}),
						i(150940, {	-- Soul Crystal (QS!)
							["cost"] = { { "i", 150939, 3 } },	-- 3x Soul Crystal Fragment
						}),
					}),
				}),
				n(122345, {	-- Battle for the Well of Eternity
				}),
				n(122340, {	-- The Burning of Mount Hyjal
				}),
				n(122344, {	-- The Culling of Stratholme
					n(QUESTS, {
						q(47744, {	-- Smoke, Meat, and Pretty Flowers
							["provider"] = { "n", 123781 },	-- Emery Neill
							["coord"] = { 56.3, 68.3, 902 },
							["repeatable"] = true,
						}),
						q(47745, {	-- Yeah, Definitely for the Kids
							["sourceQuest"] = 47744,	-- Smoke, Meat, and Pretty Flowers
							["provider"] = { "n", 123781 },	-- Emery Neill
							["coord"] = { 56.3, 68.3, 902 },
							["repeatable"] = true,
						}),
						q(47746, {	-- Holing Up
							["sourceQuest"] = 47745,	-- Yeah, Definitely for the Kids
							["provider"] = { "n", 123790 },	-- Orphan Matron Meliana
							["coord"] = { 49.3, 71.7, 902 },
							["repeatable"] = true,
						}),
						q(47750, {	-- For Emery
							["sourceQuest"] = 47746,	-- Holing Up
							["provider"] = { "n", 123790 },	-- Orphan Matron Meliana
							["coord"] = { 49.3, 71.7, 902 },
							["repeatable"] = true,
						}),
						q(47747, {	-- Fight Plague with Fire
							["sourceQuest"] = 47750,	-- For Emery
							["provider"] = { "n", 123781 },	-- Emery Neill
							["coord"] = { 56.3, 68.3, 902 },
							["repeatable"] = true,
							["groups"] = { i(151347) },	-- Town Hall Door Key
						}),
					}),
					n(VENDORS, {
						n(123781, {	-- Emery Neill <Barkeep>
							["coord"] = { 56.3, 68.4, 902 },	-- The Culling of Stratholme
							["groups"] = { i(151285) },	-- Keg of Booty Bay Rum (QI!)
						}),
						n(123782, {	-- Ezra Grimm
							["coord"] = { 41.5, 70.7, 902 },	-- The Culling of Stratholme
							["groups"] = {
								i(151284),	-- Flinty Firestarter (QI!)
								i(151280),	-- Grimm's Special Pipe Blend (QI!)
							},
						}),
						n(123778, {	-- George Goodman <General Goods>
							["coord"] = { 61.8, 35.3, 902 },	-- The Culling of Stratholme
							["groups"] = {
								i(151286),	-- Heavy Straw Rope (QI!)
								i(151281),	-- Salted Venison Jerky (QI!)
							},
						}),
						n(123780, {	-- Olivia Zenith
							["coord"] = { 62.9, 43.2, 902 },	-- The Culling of Stratholme
							["groups"] = { i(151283) },	-- Basic Cloth Bandages (QI!)
						}),
						n(123783, {	-- Robert Pierce
							["coord"] = { 58.1, 46.1, 902 },	-- The Culling of Stratholme
							["groups"] = { i(151282) },	-- Refurbished Military Rifle (QI!)
						}),
						n(123779, {	-- Sophie Aaren <Florist>
							["coord"] = { 63.9, 55.6, 902 },	-- The Culling of Stratholme
							["groups"] = { i(151287) },	-- Marigold Bouquet (QI!)
						}),
					}),
				}),
				n(122339, {	-- The War for Andorhal
					n(QUESTS, {
						q(47773, {	-- Sky Ablaze With Cannonfire
							["sourceQuest"] = 47559,	-- Gleaming Chronoshard
							["provider"] = { "n", 124154 },	-- Chromie
							["coord"] = { 43.9, 69.2, 899 },	-- The War for Andorhal
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
						}),
						q(47772, {	-- Sky Ablaze With Cannonfire
							["sourceQuest"] = 47559,	-- Gleaming Chronoshard
							["provider"] = { "n", 124154 },	-- Chromie
							["coord"] = { 43.9, 69.2, 899 },	-- The War for Andorhal
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
						}),
					}),
					n(ZONE_DROPS, {
						i(151368, {	-- Experimental Alchemy Reagent
							["crs"] = {
								124100,	-- Apothecary Tillings
								124094,	-- Potionmaster Donovan
							},
						}),
						i(151369, {	-- Lightning Absorption Capsule
							["crs"] = {
								124095,	-- Gatzin Zapwrench
								124101,	-- Roobi Skizzelvolt
							},
						}),
						n(QUALITY_ELITE, {
							i(151370),	-- Military Explosives
						}),
					}),
				}),
			},
		})),
	})
);

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
		m(897, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {
			q(48032),	-- FLAG - Hyjal Scene Seen - immediately upon entering Hyjal
			q(47829),	-- FLAG - Hyjal Complete - kill the fiery behemoth
			q(47830),	-- FLAG - Andorhal Complete
			q(48031),	-- FLAG - Andorhal Scene seen
			q(48044),	-- FLAG - Shields Cleared - immediately after picking up the Lightning Absorption Capsule
			q(48043),	-- FLAG - Plating Cleared - destroy cannon plating in andorhal
			q(47831),	-- FLAG - Stratholme Complete
			q(48030),	-- FLAG - Stratholme Scene seen
			q(47749),	-- FLAG - Fight Plague With Fire Complete
			q(47748),	-- FLAG - Holing Up Complete
			q(48033),	-- FLAG - Well of Eternity Scene seen
			q(47832),	-- FLAG - Well of Eternity Complete
			q(47938),	-- Tracking Quest - kill Bloodfeast
			q(47936),	-- Tracking Quest - kill Bonesunder
			q(47934),	-- Tracking Quest - kill Dregmar Runebrand
			q(47937),	-- Tracking Quest - kill Iceshatter
			q(47935),	-- Tracking Quest - kill Icefist
		})),
	}),
	expansion(EXPANSION.SL, {
		m(897, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2 } }, {
			q(64652),	-- unknown reason in 'The Deaths of Chromie' scenario
		})),
	}),
	expansion(EXPANSION.TWW, {
		m(897, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
			q(84587),	-- Triggered on first zoning into 'The Deaths of Chromie' scenario
		})),
	}),
});
