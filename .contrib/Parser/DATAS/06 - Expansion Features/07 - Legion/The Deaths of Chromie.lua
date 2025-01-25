-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.LEGION, {
		m(897, {	-- Death's of Chromie Scenario
			["lvl"] = 110,
			["description"] = "The Chromie Scenario sends you through multiple timeways to defeat Chromie's attackers. As you gain reputation with Chromie by killing mobs in the scenario, you will unlock more powerful abilities for Chromie to help speed up your run. Unlike past solo scenarios like Withered Army Training, you do not need to worry about gearing up--your gear is scaled up to 1000 and your player level is increased as well to 112. You can also fly inside this scenario--unusual for instanced content.\n\nEach scenario attempt lasts 15 minutes and the ultimate goal is to defeat 8 timeways in one attempt. Progress can be speed up through obtaining items that grant extra time, buffs from Chromie, and items which auto-complete a timeway threat.",
			["maps"] = { DRAGONBLIGHT, 898, 899, 900, 901, 902 },	-- Dragonblight / Scenario
			["g"] = {
				n(124764, {	-- Azure Dragonshrine Area
					n(QUESTS, {
						q(47557, {	-- Smoldering Chronoshard
							["crs"] = { 122553 },	-- Void Gargantuan
							["provider"] = { "i", 150943 },	-- Smoldering Chronoshard
							["sourceQuest"] = 47645,	-- Voidcaller's Scroll
						}),
						q(47645, {	-- Voidcallers' Scroll
							["crs"] = { 122552 },	-- Leyline Elemental
							["provider"] = { "i", 150941 },	-- Voidcallers' Scroll
						}),
					}),
					n(122552, {	-- Leyline Elemental
						["g"] = {
							i(151141),	-- Darkened Scrap of Vellum
						},
					}),
				}),
				n(124765, {	-- Emerald Dragonshrine Area
					n(QUESTS, {
						q(47643, {	-- The Ancients' Wisdom
							["description"] = "Kill the |cFFFFD700Dream Tormentors|r around each ancient.",
						}),
						q(47559, {	-- Gleaming Chronoshard
							["crs"] = { 122875 },	-- Thalas Vylethorn
							["provider"] = { "i", 150945 },	-- Gleaming Chronoshard
							["sourceQuest"] = 47643,	-- The Ancients' Wisdom
						}),
					}),
					n(122548, {	-- Emerald Skytalon
						["g"] = {
							i(151168, {	-- Emeraldine Plume
								i(151166),	-- Nightmare-Catcher
							}),
						},
					}),
					n(122549, {	-- Emerald Lasher
						["g"] = {
							i(151167, {	-- Twisted Fiber
								i(151166),	-- Nightmare-Catcher
							}),
						},
					}),
				}),
				n(124762, {	-- Obsidian Dragonshrine Area
					n(QUESTS, {
						q(47644, {	-- Demonic Corestone
							["crs"] = { 122528 },	-- Charredbone Goliath
							["provider"] = { "i", 150938 },	-- Demonic Corestone
						}),
						q(47558, {	-- Fel-Touched Chronoshard
							["crs"] = { 122871 },	-- Zorathides
							["provider"] = { "i", 150944 },	-- Fel-Touched Chronoshard
							["sourceQuest"] = 47644,	-- Demonic Corestone
						}),
					}),
				}),
				n(124763, {	-- Ruby Dragonshrine Area
					n(QUESTS, {
						q(47560, {	-- Frozen Chronoshard
							["crs"] = { 122874 },	-- Talar Icechill
							["provider"] = { "i", 150946 },	-- Frozen Chronoshard
							["sourceQuest"] = 47642,	-- Soul Crystal
						}),
						q(47642, {	-- Soul Crystal
							["provider"] = { "i", 150940 },	-- Soul Crystal
							["crs"] = {
								122542,	-- Alyndriel Graveborn
								122541,	-- Earlis the Deathrider
								122540,	-- Festerbloat
							},
						}),
					}),
					n(122542, {	-- -Alyndriel Graveborn
						["g"] = {
							i(150939),	-- Soul Crystal Fragment
						},
					}),
					n(122541, {	-- Earlis the Deathrider
						["g"] = {
							i(150939),	-- Soul Crystal Fragment
						},
					}),
					n(122540, {	-- Festerbloat
						["g"] = {
							i(150939),	-- Soul Crystal Fragment
						},
					}),
				}),
				n(122345, {	-- Battle for the Well of Eternity
				}),
				n(122340, {	-- The Burning of Mount Hyjal
				}),
				n(122344, {	-- The Culling of Stratholme
					n(QUESTS, {
						q(47747, {	-- Fight Plague with Fire
							["coord"] = { 56.3, 68.3, 902 },
							["provider"] = { "n", 123781 },	-- Emery Neill
							["repeatable"] = true,
							["sourceQuest"] = 47750,	-- For Emery
							["g"] = {
								i(151347),	-- Town Hall Door Key
							},
						}),
						q(47750, {	-- For Emery
							["coord"] = { 49.3, 71.7, 902 },
							["provider"] = { "n", 123790 },	-- Orphan Matron Meliana
							["repeatable"] = true,
							["sourceQuest"] = 47746,	-- Holing Up
						}),
						q(47746, {	-- Holing Up
							["coord"] = { 49.3, 71.7, 902 },
							["provider"] = { "n", 123790 },	-- Orphan Matron Meliana
							["repeatable"] = true,
							["sourceQuest"] = 47745,	-- Yeah, Definitely for the Kids
							["g"] = {
								i(151493),	-- Sands of Time
							},
						}),
						q(47744, {	-- Smoke, Meat, and Pretty Flowers
							["coord"] = { 56.3, 68.3, 902 },
							["provider"] = { "n", 123781 },	-- Emery Neill
							["repeatable"] = true,
							["g"] = {
								i(151493),	-- Sands of Time
							},
						}),
						q(47745, {	-- Yeah, Definitely for the Kids
							["coord"] = { 56.3, 68.3, 902 },
							["provider"] = { "n", 123781 },	-- Emery Neill
							["repeatable"] = true,
							["sourceQuest"] = 47744,	-- Smoke, Meat, and Pretty Flowers
						}),
					}),
					n(VENDORS, {
						n(123781, {	-- Emery Neill <Barkeep>
							["g"] = {
								i(151285),	-- Keg of Booty Bay Rum
							},
						}),
						n(123782, {	-- Ezra Grimm
							["g"] = {
								i(151284),	-- Flinty Firestarter
								i(151280),	-- Grimm's Special Pipe Blend
							},
						}),
						n(123778, {	-- George Goodman <General Goods>
							["g"] = {
								i(151286),	-- Heavy Straw Rope
								i(151281),	-- Salted Venison Jerky
							},
						}),
						n(123780, {	-- Olivia Zenith
							["g"] = {
								i(151283),	-- Basic Cloth Bandages
							},
						}),
						n(123783, {	-- Robert Pierce
							["g"] = {
								i(151282),	-- Refurbished Military Rifle
							},
						}),
						n(123779, {	-- Sophie Aaren <Florist>
							["g"] = {
								i(151287),	-- Marigold Bouquet
							},
						}),
					}),
				}),
				n(122339, {	-- The War for Andorhal
					n(QUESTS, {
						q(47773, {	-- Sky Ablaze With Cannonfire
							["coord"] = { 43.9, 69.2, 899 },
							["races"] = HORDE_ONLY,
							["provider"] = { "n", 124154 },	-- Chromie
							["repeatable"] = true,
							["sourceQuest"] = 47559,	-- Gleaming Chronoshard
							["g"] = {
								i(151493),	-- Sands of Time
							},
						}),
						q(47772, {	-- Sky Ablaze With Cannonfire
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 124154 },	-- Chromie
							["repeatable"] = true,
							["sourceQuest"] = 47559,	-- Gleaming Chronoshard
							["g"] = {
								i(151493),	-- Sands of Time
							},
						}),
					}),
					n(124100, {	-- Apothecary Tillings
						["g"] = {
							i(151368),	-- Experimental Alchemy Reagent
						},
					}),
					n(QUALITY_ELITE, {
						["g"] = {
							i(151370),	-- Military Explosives
						},
					}),
					n(124095, {	-- Gatzin Zapwrench
						["g"] = {
							i(151369),	-- Lightning Absorption Capsule
						},
					}),
					n(124094, {	-- Potionmaster Donovan
						["g"] = {
							i(151368),	-- Experimental Alchemy Reagent
						},
					}),
					n(124101, {	-- Roobi Skizzelvolt
						["g"] = {
							i(151369),	-- Lightning Absorption Capsule
						},
					}),
				}),
				n(QUESTS, {
					q(48021, {	-- Chromie
						["coord"] = { 26.4, 44.6, LEGION_DALARAN },
						["providers"] = {
							{ "n", 90417 },	-- Archmage Khadgar
							{ "n", 122926 },	-- Image of Chromie
						},
						["g"] = {
							i(151700),	-- Wayfinder's Sundial
						},
					}),
					q(47810, {	-- Darkened Dreams
						["coord"] = { 59.6, 54.6, 897 },
						["provider"] = { "n", 122513 },	-- Lord Itharius
						["repeatable"] = true,
						["g"] = {
							i(151493),	-- Sands of Time
						},
					}),
					q(47809, {	-- Darkness in the Ley
						["coord"] = { 59.5, 54.3, 897 },
						["provider"] = { "n", 122514 },	-- Kalecgos
						["repeatable"] = true,
						["g"] = {
							i(151493),	-- Sands of Time
						},
					}),
					q(47904, {	-- Preserve the True Future
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["provider"] = { "n", 27856 },	-- Chromie
						["sourceQuest"] = 47550,	-- The Many Advantages of Being a Time Dragon
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					q(47545, {	-- Rewind
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["provider"] = { "n", 27856 },	-- Chromie
						["sourceQuest"] = 47543,	-- The Day That Chromie Dies
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					q(47543, {	-- The Day That Chromie Dies
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["provider"] = { "n", 27856 },	-- Chromie
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					q(47808, {	-- The Dead Walk
						["coord"] = { 59.8, 54.7, 897 },
						["provider"] = { "n", 122511 },	-- Alexstrasza the Life-Binder
						["repeatable"] = true,
						["g"] = {
							i(151493),	-- Sands of Time
						},
					}),
					q(47550, {	-- The Many Advantages of Being a Time Dragon
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["provider"] = { "n", 27856 },	-- Chromie
						["sourceQuest"] = 47545,	-- Rewind
						["g"] = {
							currency(TIMEWARPED_BADGE),
						},
					}),
					q(47807, {	-- Worried About My Friends
						["coord"] = { 60.0, 54.5, 897 },
						["provider"] = { "n", 122510 },	-- Chromie
						["repeatable"] = true,
						["g"] = {
							i(151493),	-- Sands of Time
						},
					}),
				}),
				n(27856, {	-- Chromie (Faction)
					ach(11941, {	-- Chromie Homie
						title(361),		-- Title: Timelord
					}),
					faction(FACTION_CHROMIE),	-- Chromie
					q(47906, {	-- The Deaths of Chromie
						["coord"] = { 60.0, 54.5, DRAGONBLIGHT },
						["provider"] = { "n", 27856 },	-- Chromie
						["g"] = {
							iensemble(151692),	-- Ensemble: Chronoscryer's Finery
							iensemble(151693),	-- Ensemble: Riftscarred Vestments
							iensemble(151694),	-- Ensemble: Epoch Sentinel's Mail
							iensemble(151695),	-- Ensemble: Timewarden's Plate
						},
					}),
				}),
				n(ZONE_DROPS, {	--
					["g"] = {
						i(151493, {	-- Sands of Time
							i(151482, {	-- Time-Lost Wallet
								i(151829),		-- Bronze Proto-Whelp (PET!)
								i(151828),		-- Ageless Bronze Drake (PET!)
							}),
							i(151554, {	-- Time-Lost Keepsake Box
								i(151547),		--	Brimstone Beacon - When you use this, last rare will instantly spawn
								i(151549),		--	Cenarion Circle Documents - Speaking with Adrine Towhide will instantly finish that one.
								i(151546),		--	Stratholme Gate Key
								i(151548),		--	Tyrande's Moonstone - Use it after you teleported into portal. Hippogryph will fly you to end.
							}),
						}),
					},
				}),
			},
		}),
	})
);
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
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
	}),
	expansion(EXPANSION.SL, {
		qNYI(64652),	-- unknown reason in Chromie Scenario
	}),
});