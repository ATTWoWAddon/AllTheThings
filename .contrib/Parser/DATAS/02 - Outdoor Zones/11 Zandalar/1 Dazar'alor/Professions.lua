---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(THE_GREAT_SEAL, {
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(122703, {	-- Clever Kumali <Alchemist Trainer>
					["coord"] = { 42.2, 38.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_ALCHEMY, {
						r(265787),	-- Zandalari Alchemy
					}),
				}),
			}),
			prof(BLACKSMITHING, {
				n(127112, {	-- Forgemaster Zak'aal <Blacksmithing Trainer>
					["coord"] = { 43.6, 38.3, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_BLACKSMITHING, {
						r(265803),	-- Zandalari Blacksmithing
					}),
				}),
			}),
			prof(COOKING, {
				n(141549, {	-- T'sarah the Royal Chef <Cooking Trainer>
					["coord"] = { 28.5, 50.0, HALL_OF_CHRONICLERS },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_COOKING, {
						r(265817),	-- Zandalari Cooking
					}),
				}),
			}),
			prof(ENCHANTING, {
				n(122702, {	-- Enchantress Quinni <Enchanting Trainer>
					["coord"] = { 47.0, 35.8, THE_GREAT_SEAL },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_ENCHANTING, {
						r(265805),	-- Zandalari Enchanting
						n(ARMOR_ENCHANTMENTS, {
							r(267495),	-- Swift Hearthing
							r(267498),	-- Zandalari Crafting
							r(267458),	-- Zandalari Herbalism
							r(267482),	-- Zandalari Mining
							r(267486),	-- Zandalari Skinning
							r(267490),	-- Zandalari Surveying
						}),
					}),
				}),
			}),
			prof(ENGINEERING, {
				n(131840, {	-- Shuga Blastcaps <Engineering Trainer>
					["coord"] = { 45.0, 40.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_ENGINEERING, {
						r(265807),	-- Zandalari Engineering
					}),
				}),
			}),
			prof(FISHING, {
				n(122705, {	-- Silent Tali <Fishing Trainer>
					["coord"] = { 50.6, 23.2, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(271677),	-- Zandalari Fishing
						r(271990),	-- Fishing Journal
					},
				}),
			}),
			prof(HERBALISM, {
				n(122704, {	-- Jahden Fla <Herbalism Trainer>
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_HERBALISM, {
						r(265835),	-- Herb Gathering (Zandalari)
					}),
				}),
			}),
			prof(INSCRIPTION, {
				n(130901, {	-- Chronicler Grazzul <Inscription Trainer>
					["coord"] = { 42.3, 39.7, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_INSCRIPTION, {
						r(265809),	-- Zandalari Inscription
						f(MISC, {
							r(256287),	-- Contract: Talanji's Expedition [Rank 1]
							r(284295, {	-- Contract: The Honorbound [Rank 1]
								["timeline"] = { ADDED_8_1_0 },
							}),
							r(256290),	-- Contract: Voldunai [Rank 1]
							r(256284),	-- Contract: Zandalari Empire [Rank 1]
						}),
					}),
				}),
			}),
			prof(JEWELCRAFTING, {
				n(130368, {	-- Seshuli <Jewelcrafting Trainer>
					["coord"] = { 47.1, 37.9, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_JEWELCRAFTING, {
						r(265811),	-- Zandalari Jewelcrafting
					}),
				}),
			}),
			prof(LEATHERWORKING, {
				n(122698, {	-- Xanjo <Leatherworking Trainer>
					["coord"] = { 44.0, 34.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_LEATHERWORKING, {
						r(265813),	-- Zandalari Leatherworking
					}),
				}),
			}),
			prof(MINING, {
				n(122694, {	-- Secott the Goldsmith <Mining Trainer>
					["coord"] = { 44.1, 39.0, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_MINING, {
						r(265853),	-- Mining (Zandalari)
					}),
				}),
			}),
			prof(SKINNING, {
				-- Bone Gathering
				q(52216, {	-- Hexoskeleton
					["description"] = "Requires 50 Zandalari Skinning",
					["provider"] = { "n", 122699 },	-- Rana the Cutta
					["coord"] = { 43.8, 34.7, DAZARALOR },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						recipe(257153),	-- Skinning Technique: Bone Gathering (Rank 2)
						i(161434),	-- Unbroken Makrura Carapace (QI!)
					},
				}),
				q(52217, {	-- Loa Fit For A King
					["description"] = "Requires 150 Zandalari Skinning",
					["sourceQuest"] = 52216,	-- Hexoskeleton
					["provider"] = { "n", 122699 },	-- Rana the Cutta
					["coord"] = { 43.8, 34.7, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						recipe(257154),	-- Skinning Technique: Bone Gathering (Rank 3)
						i(161435),	-- Rezan's Bone Splinter (QI!)
					},
				}),
				-- Leather Gathering
				q(51575, {	-- Lost But Not Forgotten
					["description"] = "Requires 50 Zandalari Skinning",
					["provider"] = { "n", 122699 },	-- Rana the Cutta
					["coord"] = { 43.8, 34.7, DAZARALOR },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						recipe(257147),	-- Skinning Technique: Leather Gathering (Rank 2)
						i(161430),	-- Rana's 'Ancient Artifact' (QI!)
					},
				}),
				-- Scale Gathering
				q(52214, {	-- Ceremonial Vestments
					["description"] = "Requires 50 Zandalari Skinning",
					["provider"] = { "n", 122699 },	-- Rana the Cutta
					["coord"] = { 43.8, 34.7, DAZARALOR },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						recipe(257150),	-- Skinning Technique: Scale Gathering (Rank 2)
						i(161432),	-- Pristine Crocolisk Skin (QI!)
					},
				}),
				q(52215, {	-- A Thicker Thread
					["description"] = "Requires 150 Zandalari Skinning",
					["sourceQuest"] = 52214,	-- Ceremonial Vestments
					["provider"] = { "n", 122699 },	-- Rana the Cutta
					["coord"] = { 43.8, 34.7, DAZARALOR },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						recipe(257151),	-- Skinning Technique: Scale Gathering (Rank 3)
						i(161433),	-- Thick Webbing (QI!)
					},
				}),
			}),
			prof(TAILORING, {
				n(122700, {	-- Pin'jin the Patient <Tailoring Trainer>
					["coord"] = { 44.4, 33.8, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(BFA_TAILORING, {
						r(265815),	-- Zandalari Tailoring
					}),
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(THE_GREAT_SEAL, {
			n(PROFESSIONS, {
				n(QUESTS, {
					q(55240),	--  triggered after destroying all portals during Seam Stress quest (55214)
				}),
			}),
		}),
	}),
})));
