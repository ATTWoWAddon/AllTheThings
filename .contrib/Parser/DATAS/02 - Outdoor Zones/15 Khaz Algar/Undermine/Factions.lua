---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
	--	n(CARTELS_OF_UNDERMINE, {
			n(FACTIONS, {
				faction(FACTION_CARTELS_OF_UNDERMINE, {
					faction(FACTION_TWW_BILGEWATER_CARTEL),	-- Bilgewater Cartel
					faction(FACTION_TWW_BLACKWATER_CARTEL),	-- Blackwater Cartel
					faction(FACTION_TWW_STEAMWHEEDLE_CARTEL),	-- Steamwheedle Cartel
					faction(FACTION_TWW_VENTURE_CO),	-- Venture Co
					n(ACHIEVEMENTS, {
						ach(41349, {	-- In with the Cartels
							crit(102751, {	-- Bilgewater Cartel
								["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, HONORED },	-- Bilgewater Cartel Honored
							}),
							crit(102752, {	-- Blackwater Cartel
								["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, HONORED },	-- Blackwater Cartel Honored
							}),
							crit(102753, {	-- Steamwheedle Cartel
								["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, HONORED },	-- Steamwheedle Cartel Honored
							}),
							crit(102754, {	-- Venture Co
								["minReputation"] = { FACTION_TWW_VENTURE_CO, HONORED },	-- Venture Co Honored
							}),
							i(232807),	-- Iron Chick (PET!)
						}),
						ach(41351, {	-- Cartels Bestie
							crit(102751, {	-- Bilgewater Cartel
								["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, REVERED },	-- Bilgewater Cartel Revered
							}),
							crit(102752, {	-- Blackwater Cartel
								["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, REVERED },	-- Blackwater Cartel Revered
							}),
							crit(102753, {	-- Steamwheedle Cartel
								["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, REVERED },	-- Steamwheedle Cartel Revered
							}),
							crit(102754, {	-- Venture Co
								["minReputation"] = { FACTION_TWW_VENTURE_CO, REVERED },	-- Venture Co Revered
							}),
							-- Reward
							i(231739),	-- Black Bruiser's Helm
							i(231745),	-- Black Bruiser's Shoulderspikes
							i(231733),	-- Black Bruiser's Tabard
						}),
						ach(41352, {	-- Trade-Duke
							crit(102751, {	-- Bilgewater Cartel
								["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel Exalted
							}),
							crit(102752, {	-- Blackwater Cartel
								["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, EXALTED },	-- Blackwater Cartel Exalted
							}),
							crit(102753, {	-- Steamwheedle Cartel
								["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel Exalted
							}),
							crit(102754, {	-- Venture Co
								["minReputation"] = { FACTION_TWW_VENTURE_CO, EXALTED },	-- Venture Co Exalted
							}),
							-- Reward
							title(607),	-- Trade-Duke <Name>
						}),
						ach(41086, {	-- Ally of Undermine
							["minReputation"] = { FACTION_CARTELS_OF_UNDERMINE, 20 },	-- Cartels of Undermine 20
							["g"] = {
								title(603),	-- <Name> the Explosive
							},
						}),
					}),
					n(QUESTS, bubbleDownRep(FACTION_CARTELS_OF_UNDERMINE, {
						{		-- RENOWN 1 --
						}, {	-- RENOWN 2 --
						}, {	-- RENOWN 3 --
							q(86934, {	-- Trash to Profit
								["provider"] = { "n", 237649 },	-- Renzi Boltcutter
								["coord"] = { 42.8, 50.4, UNDERMINE },
							}),
							q(86935, {	-- On-the-Job Training
								["sourceQuests"] = { 86934 },	-- Trash to Profit
								["provider"] = { "n", 237659 },	-- Carlo Greasegrind
								["coord"] = { 26.6, 37.2, UNDERMINE },
							}),
						}, {	-- RENOWN 4 --
							q(85815, {	-- A Small Pouch of Crystals
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 5 --
							q(85816, {	-- Valorstones
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 6 --
							q(85817, {	-- Weathered Crests
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 7 --
						}, {	-- RENOWN 8 --
							q(85818, {	-- A Small Pouch of Crystals
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 9 --
							q(85819, {	-- Weathered Crests
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
							q(90557, {	-- Whose Key is This?
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 10 --
							q(86555, {	-- Undermine Benefactor
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
								["g"] = {
									i(231737),	-- Undermine Enforcer's Padding (COSMETIC!)
								},
							}),
						}, {	-- RENOWN 11 --
							-- TODO: missing Scrappy S.C.R.A.P.per II
							q(85820, {	-- Valorstones
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
								["g"] = {
									i(231737),	-- Undermine Enforcer's Padding (COSMETIC!)
								},
							}),
						}, {	-- RENOWN 12 --
							-- TODO: missing Master Negotiator
							q(85821, {	-- Valorstones
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
								["g"] = {
									i(231737),	-- Undermine Enforcer's Padding (COSMETIC!)
								},
							}),
						}, {	-- RENOWN 13 --
						}, {	-- RENOWN 14 --
						}, {	-- RENOWN 15 --
							q(85823, {	-- Carved Crests
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 16 --
						}, {	-- RENOWN 17 --
							q(85824, {	-- Valorstones
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 18 --
							q(85825, {	-- Carved Crests
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
							}),
						}, {	-- RENOWN 19 --
						}, {	-- RENOWN 20 --
							q(85827, {	-- Glinting and Gleaming
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
								["g"] = {
									i(230936),	-- Enchanted Runed Undermine Crest
								},
							}),
							------ Paragon ------
							q(85805, {	-- Renowned with the Cartels of Undermine
								["provider"] = { "n", 231409 },	-- Smaks Topskimmer
								["coord"] = { 43.8, 50.8, UNDERMINE },
								["isRepeatable"] = true,
								["g"] = {
									i(232463),	-- Overflowing Undermine Trove
								},
							}),
							header(HEADERS.Faction, FACTION_TWW_BILGEWATER_CARTEL, {
								q(88870, {	-- Honored with the Bilgewater Cartel
									["provider"] = { "n", 231406 },	-- Rocco Razzboom
									["coord"] = { 39.15, 22.19, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, HONORED },	-- Bilgewater Cartel Honored
									["g"] = {
										i(234745),	-- Bilgewater's Trove (Green)
									},
								}),
								q(88871, {	-- Revered with the Bilgewater Cartel
									["provider"] = { "n", 231406 },	-- Rocco Razzboom
									["coord"] = { 39.15, 22.19, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, REVERED },	-- Bilgewater Cartel Revered
									["g"] = {
										i(235258),	-- Bilgewater's Trove (Blue)
									},
								}),
								q(88872, {	-- Exalted with the Bilgewater Cartel
									["provider"] = { "n", 231406 },	-- Rocco Razzboom
									["coord"] = { 39.15, 22.19, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel Exalted
									["g"] = {
										i(235259),	-- Bilgewater's Trove (Epic)
									},
								}),
								q(85806, {	-- Exalted with the Bilgewater Cartel (Paragon)
									["provider"] = { "n", 231406 },	-- Rocco Razzboom
									["coord"] = { 39.15, 22.19, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel Exalted
									["isRepeatable"] = true,
									["g"] = {
										i(237132, {	-- Bilgewater Trove (Paragon)
											i(234741),	-- Miscellaneous Mechanica
											i(229957),	-- Bilgewater Bombardier (MOUNT!)
										}),
									},
								}),
							}),
							header(HEADERS.Faction, FACTION_TWW_BLACKWATER_CARTEL, {
								q(88876, {	-- Honored with the Blackwater Cartel
									["provider"] = { "n", 231405 },	-- Boatswain Hardee <Blackwater Quartermaster>
									["coord"] = { 63.2, 17.2, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, HONORED },	-- Blackwater Cartel Honored
									["g"] = {
										i(234744),	-- Blackwater's Trove (Green)
									},
								}),
								q(88877, {	-- Revered with the Blackwater Cartel
									["provider"] = { "n", 231405 },	-- Boatswain Hardee <Blackwater Quartermaster>
									["coord"] = { 63.2, 17.2, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, REVERED },	-- Blackwater Cartel Revered
									["g"] = {
										i(235260),	-- Blackwater's Trove (Blue)
									},
								}),
								q(88878, {	-- Exalted with the Blackwater Cartel
									["provider"] = { "n", 231405 },	-- Boatswain Hardee <Blackwater Quartermaster>
									["coord"] = { 63.2, 17.2, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, EXALTED },	-- Blackwater Cartel Exalted
									["g"] = {
										i(235261),	-- Blackwater's Trove (Purple)
									},
								}),
								q(85807, {	-- Exalted with the Blackwater Cartel (Paragon)
									["provider"] = { "n", 231405 },	-- Boatswain Hardee <Blackwater Quartermaster>
									["coord"] = { 63.2, 17.2, UNDERMINE },
									["minReputation"] = { FACTION_TWW_BLACKWATER_CARTEL, EXALTED },	-- Blackwater Cartel Exalted
									["isRepeatable"] = true,
									["g"] = {
										i(237135, {	-- Blackwater Trove (Paragon)
											i(234741),	-- Miscellaneous Mechanica
											i(229937),	-- Blackwater Bonecrusher (MOUNT!)
										}),
									},
								}),
							}),
							header(HEADERS.Faction, FACTION_TWW_STEAMWHEEDLE_CARTEL, {
								q(88873, {	-- Honored with the Steamwheedle Cartel
									["provider"] = { "n", 231408 },	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
									["coord"] = { 27.6, 72.8, UNDERMINE },
									["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, HONORED },	-- Steamwheedle Cartel Honored
									["g"] = {
										i(235262),	-- Steamwheedle's Trove (Green)
									},
								}),
								q(88874, {	-- Revered with the Steamwheedle Cartel
									["provider"] = { "n", 231408 },	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
									["coord"] = { 27.6, 72.8, UNDERMINE },
									["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, REVERED },	-- Steamwheedle Cartel Revered
									["g"] = {
										i(234743),	-- Steamwheedle's Trove (Blue)
									},
								}),
								q(88875, {	-- Exalted with the Steamwheedle Cartel
									["provider"] = { "n", 231408 },	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
									["coord"] = { 27.6, 72.8, UNDERMINE },
									["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel Exalted
									["g"] = {
										i(235263),	-- Steamwheedle's Trove (Purple)
									},
								}),
								q(85809, {	-- Exalted with the Steamwheedle Cartel (Paragon)
									["provider"] = { "n", 231408 },	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
									["coord"] = { 27.6, 72.8, UNDERMINE },
									["minReputation"] = { FACTION_TWW_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel Exalted
									["isRepeatable"] = true,
									["g"] = {
										i(237134, {	-- Steamwheedle Trove (Paragon)
											i(234741),	-- Miscellaneous Mechanica
											i(229943),	-- Steamwheedle Supplier (MOUNT!)
										}),
									},
								}),
							}),
							header(HEADERS.Faction, FACTION_TWW_VENTURE_CO, {
								q(88879, {	-- Honored with the Venture Co
									["provider"] = { "n", 231407 },	-- Shredz the Scrapper <Venture Quartermaster>
									["coord"] = { 53.2, 72.6, UNDERMINE },
									["minReputation"] = { FACTION_TWW_VENTURE_CO, HONORED },	-- Venture Co Honored
									["g"] = {
										i(234746),	-- Venture Co. Trove (Green)
									},
								}),
								q(88880, {	-- Revered with the Venture Co
									["provider"] = { "n", 231407 },	-- Shredz the Scrapper <Venture Quartermaster>
									["coord"] = { 53.2, 72.6, UNDERMINE },
									["minReputation"] = { FACTION_TWW_VENTURE_CO, REVERED },	-- Venture Co Revered
									["g"] = {
										i(235264),	-- Venture Co. Trove (Blue)
									},
								}),
								q(88881, {	-- Exalted with the Venture Co
									["provider"] = { "n", 231407 },	-- Shredz the Scrapper <Venture Quartermaster>
									["coord"] = { 53.2, 72.6, UNDERMINE },
									["minReputation"] = { FACTION_TWW_VENTURE_CO, EXALTED },	-- Venture Co Exalted
									["g"] = {
										i(235265),	-- Venture Co. Trove (Purple)
									},
								}),
								q(85810, {	-- Exalted with the Venture Co (Paragon)
									["provider"] = { "n", 231407 },	-- Shredz the Scrapper <Venture Quartermaster>
									["coord"] = { 53.2, 72.6, UNDERMINE },
									["minReputation"] = { FACTION_TWW_VENTURE_CO, EXALTED },	-- Venture Co Exalted
									["isRepeatable"] = true,
									["g"] = {
										i(237133, {	-- Venture Co Trove (Paragon)
											i(234741),	-- Miscellaneous Mechanica
											i(229951),	-- Venture Co-ordinator (MOUNT!)
										}),
									},
								}),
							}),
						},
					})),
					n(VENDORS, {
						header(HEADERS.Faction, FACTION_CARTELS_OF_UNDERMINE, {
							n(231409, {	-- Smaks Topskimmer <Renown Quartermaster>
								["coord"] = { 43.6, 50.8, UNDERMINE },
								["g"] = bubbleDownRep(FACTION_CARTELS_OF_UNDERMINE, {
									{		-- RENOWN 1 --
									}, {	-- RENOWN 2 --
									}, {	-- RENOWN 3 --
									}, {	-- RENOWN 4 --
									}, {	-- RENOWN 5 --
										i(235338, {	-- Pattern: Charged Armor Kit (RECIPE!)
											["cost"] = {{"i", ARTISANS_ACUITY, 150}},
										}),
										i(234274, {	-- Schematic: 22H Slicks (RECIPE!)
											["cost"] = {{"i", ARTISANS_ACUITY, 150}},
										}),
										i(232535, {	-- Technique: Contract: The Cartels of Undermine (RECIPE!)
											["cost"] = {{"i", ARTISANS_ACUITY, 150}},
										}),
										i(233022, {	-- Technique: Vantus Rune: Undermine (RECIPE!)
											["cost"] = {{"i", ARTISANS_ACUITY, 150}},
										}),
									}, {	-- RENOWN 6 --
									}, {	-- RENOWN 7 --
										i(232384, {	-- Aqirite-Toe Boots
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
										}),
										i(232381, {	-- Mostly Cobbled Shoes
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
										}),
										i(232379, {	-- Slime-Slicked Slippers
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
										}),
										i(232383, {	-- Soot-Encrusted Kickers
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
										}),
									}, {	-- RENOWN 8 --
									}, {	-- RENOWN 9 --
									}, {	-- RENOWN 10 --
									}, {	-- RENOWN 11 --
									}, {	-- RENOWN 12 --
									}, {	-- RENOWN 13 --
									}, {	-- RENOWN 14 --
										i(232410, {	-- Craftsman's Repurposed Mitts
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
										}),
										i(232411, {	-- Goblin Boxer's Wraps
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
										}),
										i(232413, {	-- Retired Bouncer's Gauntlets
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
										}),
										i(232412, {	-- Undermine Smelter's Gloves
											["modID"] = 14,
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3900}},
										}),
									}, {	-- RENOWN 15 --
										i(229936, {	-- Violet Armored Growler (MOUNT!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 8125}},
										}),
									}, {	-- RENOWN 16 --
										i(232499, {	-- Undermine Treatise on Alchemy (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = ALCHEMY,
										}),
										i(232500, {	-- Undermine Treatise on Blacksmithing (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = BLACKSMITHING,
										}),
										i(232501, {	-- Undermine Treatise on Enchanting (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = ENCHANTING,
										}),
										i(232507, {	-- Undermine Treatise on Engineering (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = ENGINEERING,
										}),
										i(232503, {	-- Undermine Treatise on Herbalism (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = HERBALISM,
										}),
										i(232508, {	-- Undermine Treatise on Inscription (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = INSCRIPTION,
										}),
										i(232504, {	-- Undermine Treatise on Jewelcrafting (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = JEWELCRAFTING,
										}),
										i(232505, {	-- Undermine Treatise on Leatherworking (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = LEATHERWORKING,
										}),
										i(232509, {	-- Undermine Treatise on Mining (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = MINING,
										}),
										i(232506, {	-- Undermine Treatise on Skinning (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = SKINNING,
										}),
										i(232502, {	-- Undermine Treatise on Tailoring (CI!)
											["cost"] = {{"i", ARTISANS_ACUITY, 50}},
											["requireSkill"] = TAILORING,
										}),
									}, {	-- RENOWN 17 --
										i(231743, {	-- Undermine Enforcer's Helmet (COSMETIC!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 1625}},
										}),
										i(231749, {	-- Undermine Enforcer's Spikes (COSMETIC!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
										}),
										iensemble(237034, {	-- Smartest in Town's Attire
											["cost"] = {{"c", RESONANCE_CRYSTALS, 9750}},
										}),
										iensemble(237102, {	-- Slickest in Town's Attire
											["cost"] = {{"c", RESONANCE_CRYSTALS, 9750}},
										}),
										iensemble(237112, {	-- Craftiest in Town's Attire
											["cost"] = {{"c", RESONANCE_CRYSTALS, 9750}},
										}),
										iensemble(237122, {	-- Toughest in Town's Attire
											["cost"] = {{"c", RESONANCE_CRYSTALS, 9750}},
										}),
									}, {	-- RENOWN 18 --
										i(232515, {	-- Experimental Goblin Jetpack (COSMETIC!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 3250}},
										}),
									}, {	-- RENOWN 19 --
										i(229944, {	-- The Topskimmer Special (MOUNT!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 11375}},
										}),
										i(232981, {	-- GNZ Airmaster 9000 (MM!)
											["cost"] = {{"c", RESONANCE_CRYSTALS, 2600}},
										}),
									}, {	-- RENOWN 20 --
									},
								}),
							}),
						}),
						header(HEADERS.Faction, FACTION_TWW_BILGEWATER_CARTEL, {
							n(231406, {	-- Rocco Razzboom <Bilgewater Quartermaster>
								["coord"] = { 39.2, 22.2, UNDERMINE },
								["g"] = bubbleDownClassicRep(FACTION_TWW_BILGEWATER_CARTEL, {
									{		-- Neutral
									}, {	-- Friendly
										i(236764, {	-- Finder's Fee
											["sourceAchievement"] = 41627,	-- C.H.E.T.T.ing it Twice
											["cost"] = {{ "i", 235053, 1 }},	-- Completed C.H.E.T.T. List
										}),
									}, {	-- Honored
										i(236672, {	-- The Ol' Low-and-Slow (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
										}),
										i(235670, {	-- Bilgewater Cartel Banner (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Revered
										i(232845, {	-- Bilgewater Junkhauler (PET!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
										}),
										i(235807, {	-- Storefront-in-a-Box (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Exalted
										i(229935, {	-- Crimson Armored Growler (MOUNT!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 8125 }},
										}),
										i(231526, {	-- Bilgewater Undermine Tabard (COSMETIC!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
										}),
										i(235388, {	-- Paint: Redlining Red (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
										}),
									},
								}),
							}),
						}),
						header(HEADERS.Faction, FACTION_TWW_BLACKWATER_CARTEL, {
							n(231405, {	-- Boatswain Hardee <Blackwater Quartermaster>
								["coord"] = { 63.4, 16.7, UNDERMINE },
								["g"] = bubbleDownClassicRep(FACTION_TWW_BLACKWATER_CARTEL, {
									{		-- Neutral
									}, {	-- Friendly
										i(236763, {	-- Finder's Fee
											["sourceAchievement"] = 41627,	-- C.H.E.T.T.ing it Twice
											["cost"] = {{ "i", 235053, 1 }},	-- Completed C.H.E.T.T. List
										}),
									}, {	-- Honored
										i(236671, {	-- The Buzzer (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
										}),
										i(235671, {	-- Blackwater Cartel Banner (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Revered
										i(232839, {	-- Wavebreaker Mechasaur (PET!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
										}),
										i(235801, {	-- Personal Fishing Barge (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Exalted
										i(229948, {	-- Blackwater Shredder Deluxe Mk 2 (MOUNT!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 8125 }},
										}),
										i(231528, {	-- Blackwater Undermine Tabard (COSMETIC!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
										}),
										i(235390, {	-- Paint: Body Roll Blue (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
										}),
									},
								}),
							}),
						}),
						header(HEADERS.Faction, FACTION_TWW_STEAMWHEEDLE_CARTEL, {
							n(231408, {	-- Lab Assistant Laszly <Steamwheedle Quartermaster>
								["coord"] = { 27.5, 72.8, UNDERMINE },
								["g"] = bubbleDownClassicRep(FACTION_TWW_STEAMWHEEDLE_CARTEL, {
									{		-- Neutral
									}, {	-- Friendly
										i(236689, {	-- Finder's Fee
											["sourceAchievement"] = 41627,	-- C.H.E.T.T.ing it Twice
											["cost"] = {{ "i", 235053, 1 }},	-- Completed C.H.E.T.T. List
										}),
									}, {	-- Honored
										i(236670, {	-- Maniacal Melodies (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
										}),
										i(235669, {	-- Steamwheedle Cartel Banner (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Revered
										i(232853, {	-- Eepy (PET!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
										}),
										i(226373, {	-- Everlasting Noggenfogger Elixir (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Exalted
										i(229956, {	-- Mean Green Flying Machine (MOUNT!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
										}),
										i(231527, {	-- Steamwheedle Undermine Tabard (COSMETIC!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
										}),
										i(235389, {	-- Paint: Goblin Green (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
										}),
									},
								}),
							}),
						}),
						header(HEADERS.Faction, FACTION_TWW_VENTURE_CO, {
							n(231407, {	-- Shredz the Scrapper <Venture Quartermaster>
								["coord"] = { 53.3, 72.7, UNDERMINE },
								["g"] = bubbleDownClassicRep(FACTION_TWW_VENTURE_CO, {
									{		-- Neutral
									}, {	-- Friendly
										i(236765, {	-- Finder's Fee
											["sourceAchievement"] = 41627,	-- C.H.E.T.T.ing it Twice
											["cost"] = {{ "i", 235053, 1 }},	-- Completed C.H.E.T.T. List
										}),
									}, {	-- Honored
										i(236669, {	-- The Whole Brass Band (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 975 }},
										}),
										i(235672, {	-- Venture Co. Banner (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Revered
										i(232851, {	-- Rocketfist (PET!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 6500 }},
										}),
										i(235799, {	-- Throwin' Sawblade (TOY!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
										}),
									}, {	-- Exalted
										i(229946, {	-- Ocher Delivery Rocket (MOUNT!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
										}),
										i(231542, {	-- Venture Co. Undermine Tabard (COSMETIC!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1625 }},
										}),
										i(235391, {	-- Paint: Yellow Cake Yellow (MM!)
											["cost"] = {{ "c", RESONANCE_CRYSTALS, 1350 }},
										}),
									},
								}),
							}),
						}),
					}),
			--	}),
				faction(FACTION_DARKFUSE_SOLUTIONS, {
					ach(41350, {	-- A Long Fuse
						["minReputation"] = { FACTION_DARKFUSE_SOLUTIONS, EXALTED },	-- Darkfuse Solutions Exalted
						["g"] = {
							title(606),	-- Darkfuse Diplomat <Name>
						},
					}),
					n(QUESTS, {
						q(85808, {	-- Exalted with Darkfuse Solutions (Paragon)
							["provider"] = { "n", 231396 },	-- Sitch Lowdown <Darkfuse Solutions Quartermaster>
							["coord"] = { 30.8, 38.2, UNDERMINE },
							["isRepeatable"] = true,
							["g"] = {
								i(232465, {	-- Darkfuse Trove (Paragon)
									i(233064),	-- Bronze Goblin Wave Shredder (MOUNT!)
								}),
							},
						}),
					}),
					n(VENDORS, {
						n(231396, {	-- Sitch Lowdown <Darkfuse Solutions Quartermaster>
							["sourceQuest"] = 86961,	-- Diversified Investments
							["coord"] = { 30.8, 38.2, UNDERMINE },
							["g"] = bubbleDownClassicRep(FACTION_DARKFUSE_SOLUTIONS, {
								{		-- Neutral
									i(235558, {	-- Box of Darkfuse Miscellany
										["cost"] = {{ "c", 3226, 100 }},	-- 100x Market Research
										["g"] = {
											currency(3177),	-- Darkfuse Solutions Commendation
										},
									}),
									i(235532, {	-- Experimental Goblin-FUEL Supplement
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
									}),
									i(237276),	-- Refurbished Rocket Glider
								}, {	-- Friendly
									i(229823, {	-- Canister of Darkfuse Solution
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
									}),
									i(235533, {	-- Prototype Auto-Advertiser
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
									}),
								}, {	-- Honored
									i(234950, {	-- Atomic Regoblinator
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 5000 }},
									}),
									i(235534, {	-- Electropuncture Test Model
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 100 }},
									}),
								}, {	-- Revered
									i(229950, {	-- Darkfuse Demolisher (MOUNT!)
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 11375 }},
									}),
								}, {	-- Exalted
									i(231550, {	-- Darkfuse Lowdown Coat
										["cost"] = {{ "c", RESONANCE_CRYSTALS, 3250 }},
									}),
								},
							}),
						}),
					}),
				}),
			}),
		}),
	}),
})));