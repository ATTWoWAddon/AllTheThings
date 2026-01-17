---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(BORALUS, {
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(132228, {	-- Elric Whalgrene <Alchemy Trainer>
					["coord"] = { 74.2, 6.6, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_ALCHEMY, {
						r(264255),	-- Kul Tiran Alchemy
					}),
				}),
			}),
			prof(BLACKSMITHING, {
				n(133536, {	-- Grix "Ironfists" Barlow <Blacksmithing Trainer>
					["coord"] = { 73.6, 8.6, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_BLACKSMITHING, {
						r(264448),	-- Kul Tiran Blacksmithing
					}),
				}),
			}),
			prof(COOKING, {
				n(136052, {	-- "Cap'n" Byron Mehlsack <Cooking Trainer>
					["coord"] = { 71.2, 10.8, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_COOKING, {
						r(264646),	-- Kul Tiran Cooking
					}),
				}),
			}),
			prof(ENCHANTING, {
				n(136041, {	-- Emily Fairweather <Enchanting Trainer>
					["coord"] = { 74.1, 11.5, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_ENCHANTING, {
						r(264473),	-- Kul Tiran Enchanting
						n(ARMOR_ENCHANTMENTS, {
							r(255070),	-- Kul Tiran Crafting
							r(255035),	-- Kul Tiran Herbalism
							r(255040),	-- Kul Tiran Mining
							r(255065),	-- Kul Tiran Skinning
							r(255066),	-- Kul Tiran Surveying
							r(255068),	-- Swift Hearthing
						}),
					}),
				}),
			}),
			prof(ENGINEERING, {
				n(136059, {	-- Layla Evenkeel <Engineering Trainer>
					["coord"] = { 77.6, 14.3, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_ENGINEERING, {
						r(264492),	-- Kul Tiran Engineering
					}),
				}),
			}),
			prof(FISHING, {
				n(136102, {	-- Alan Goyle <Fishing Trainer>
					["coord"] = { 74.2, 5.7, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(271675),	-- Kul Tiran Fishing
						r(271990),	-- Fishing Journal
					},
				}),
			}),
			prof(HERBALISM, {
				n(136096, {	-- Declan Senal <Herbalism Trainer>
					["coord"] = { 71.5, 4.9, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_HERBALISM, {
						r(265831),	-- Herb Gathering (Kul Tiran)
					}),
				}),
			}),
			prof(INSCRIPTION, {
				n(130399, {	-- Zooey Inksprocket <Inscription Trainer>
					["coord"] = { 73.4, 6.33, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_INSCRIPTION, {
						r(264508),	-- Kul Tiran Inscription
						f(MISC, {
							r(284292, {	-- Contract: 7th Legion [Rank 1]
								["timeline"] = { ADDED_8_1_0 },
							}),
							r(256278),	-- Contract: Order of Embers [Rank 1]
							r(256275),	-- Contract: Proudmoore Admiralty [Rank 1]
							r(256281),	-- Contract: Storm's Wake [Rank 1]
						}),
					}),
				}),
			}),
			prof(LEATHERWORKING, {
				n(136063, {	-- Cassandra Brennor <Leatherworking Trainer>
					["coord"] = { 75.5, 12.6, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_LEATHERWORKING, {
						r(264592),	-- Kul Tiran Leatherworking
					}),
				}),
			}),
			prof(JEWELCRAFTING, {
				n(130368, {	-- Samuel D. Colton III <Jewelcrafting Trainer>
					["coord"] = { 75.2, 9.9, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_JEWELCRAFTING, {
						r(264548),	-- Kul Tiran Jewelcrafting
					}),
				}),
			}),
			prof(MINING, {
				n(136091, {	-- Myra Cabot <Mining Trainer>
					["coord"] = { 75.2, 7.6, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_MINING, {
						r(265851),	-- Mining (Kul Tiran)
					}),
				}),
			}),
			prof(SKINNING, {
				n(136061, {	-- Camilla Darksky <Skinning Trainer>
					["coord"] = { 75.7, 13.4, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_SKINNING, {
						r(265869),	-- Skinning (Kul Tiran)
					}),
				}),
			}),
			prof(TAILORING, {
				n(136071, {	-- Daniel Brineweaver <Tailoring Trainer>
					["coord"] = { 76.8, 11.2, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(BFA_TAILORING, {
						r(264630),	-- Kul Tiran Tailoring
					}),
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(BORALUS, {
			n(PROFESSIONS, {
				prof(TAILORING, {
					n(QUESTS, {
						q(55236),	-- while closing time rifts during (55214)
					}),
				}),
			}),
		}),
	}),
})));
