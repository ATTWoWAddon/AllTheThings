---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(DRAENOR, {
		m(STORMSHIELD, {
			["icon"] = 374217,
			["isRaid"] = true,
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				n(FLIGHT_PATHS, {
					fp(1420, {	-- Stormshield (Alliance), Ashran
						["coord"] = { 30.6, 48.4, STORMSHIELD },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(FOLLOWERS, {
					follower(467, {	-- Fen Tao
						["description"] = "In order to obtain this follower you need to talk to him and let him finish his dialogue.",
						["creatureID"] = 91483,	-- Fen Tao
						["coord"] = { 45.3, 70.6, STORMSHIELD },
					}),
				}),
				n(PROFESSIONS, {
					prof(ALCHEMY, {
						n(87048, {	-- Katherine Joplin <Alchemy Recipes>
							["coord"] = { 36.7, 68.6, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_ALCHEMY_RECIPES, {DRAENOR_ALCHEMY}),
						}),
					}),
					prof(BLACKSMITHING, {
						n(87062, {	-- Royce Bigbeard <Blacksmithing Plans>
							["coord"] = { 49.0, 48.7, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_BLACKSMITHING_RECIPES, {DRAENOR_BLACKSMITHING}),
						}),
					}),
					prof(ENCHANTING, {
						n(87022, {	-- Bob <Enchanting Recipes>
							["coord"] = { 56.9, 64.7, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_ENCHANTING_RECIPES, {DRAENOR_ENCHANTING}),
						}),
					}),
					prof(ENGINEERING, {
						n(87065, {	-- Sean Catchpole <Engineering Plans>
							["coord"] = { 47.9, 39.9, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_ENGINEERING_RECIPES, {DRAENOR_ENGINEERING}),
						}),
					}),
					prof(LEATHERWORKING, {
						n(87057, {	-- Leara Moonsilk <Leatherworking Patterns>
							["coord"] = { 51.6, 41.6, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_LEATHERWORKING_RECIPES, {DRAENOR_LEATHERWORKING}),
						}),
					}),
					prof(TAILORING, {
						n(87049, {	-- Steven Cochrane <Tailoring Patterns>
							["coord"] = { 51.0, 37.0, STORMSHIELD },
							["groups"] = appendGroups(COMMON_DRAENOR_TAILORING_RECIPES, {DRAENOR_TAILORING}),
						}),
					}),
				}),
				n(QUESTS, {
					q(36630, {	-- A Surly Dwarf
						["sourceQuests"] = { 36629 },	-- Inspiring Ashran
						["provider"] = { "n", 86069 },	-- Lieutenant Howell
						["coord"] = { 35.6, 75.1, STORMSHIELD },
					}),
					q(37272, {	-- A Worthy Challenge: Gug'rokk
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37277, {	-- A Worthy Challenge: High Sage Viryx
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37275, {	-- A Worthy Challenge: Ner'zhul
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37274, {	-- A Worthy Challenge: Skullok, Son of Gruul
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37273, {	-- A Worthy Challenge: Skylord Tovra
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37279, {	-- A Worthy Challenge: Warlord Zaela
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(37278, {	-- A Worthy Challenge: Yalnu
						["provider"] = { "n", 88155 },	-- Challenger Savina
						["coord"] = { 52.0, 63.6, STORMSHIELD },
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
							i(127831),	-- Challenger's Strongbox
						},
					}),
					q(36633, {	-- Delvar Ironfist
						["sourceQuests"] = { 36630 },	-- A Surly Dwarf
						["provider"] = { "n", 86084 },	-- Delvar Ironfist
						["coord"] = { 47.5, 30.8, STORMSHIELD },
						["groups"] = {
							follower(216),	-- Delvar Ironfist
						},
					}),
					q(36626, {	-- Host Howell
						["sourceQuests"] = { 36624 },	-- Ashran Appearance
						["provider"] = { "n", 86095 },	-- Private Tristan
						["coord"] = { 32.0, 50.5, STORMSHIELD },
					}),
					q(36629, {	-- Inspiring Ashran
						["sourceQuests"] = { 36626 },	-- Host Howell
						["provider"] = { "n", 86069 },	-- Lieutenant Howell
						["coord"] = { 35.6, 75.1, STORMSHIELD },
					}),
					q(36055, {	-- Sealing Fate: Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 823, 500 }, },	-- 500x Apexis Crystal
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37458, {	-- Sealing Fate: Extended Honor
						["sourceQuests"] = { 36057 },	-- Sealing Fate: Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 1792, 1000 }, },	-- 1000x Honor
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(36056, {	-- Sealing Fate: Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 824, 1000 }, },	-- 1,000x Garrison Resources
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(36054, {	-- Sealing Fate: Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 5000000,	-- 500g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37452, {	-- Sealing Fate: Heap of Apexis Crystals
						["sourceQuests"] = { 36055 },	-- Sealing Fate: Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 823, 1000 }, },	-- 1,000x Apexis Crystal
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(36057, {	-- Sealing Fate: Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 1792, 500 }, },	-- 500x Honor
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(37455, {	-- Sealing Fate: Immense Fortune of Gold
						["sourceQuests"] = { 37454 },	-- Sealing Fate: Piles of Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 20000000,	-- 2,000g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37459, {	-- Sealing Fate: Monumental Honor
						["sourceQuests"] = { 37458 },	-- Sealing Fate: Extended Honor
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 1792, 2000 }, },	-- 2000x Honor
						["isWeekly"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(37453, {	-- Sealing Fate: Mountain of Apexis Crystals
						["sourceQuests"] = { 37452 },	-- Sealing Fate: Heap of Apexis Crystals
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 823, 2000 }, },	-- 2,000x Apexis Crystal
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37454, {	-- Sealing Fate: Piles of Gold
						["sourceQuests"] = { 36054 },	-- Sealing Fate: Gold
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = 10000000,	-- 1,000g
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37456, {	-- Sealing Fate: Stockpiled Garrison Resources
						["sourceQuests"] = { 36056 },	-- Sealing Fate: Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 824, 2000 }, },	-- 2,000x Garrison Resources
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
					q(37457, {	-- Sealing Fate: Tremendous Garrison Resources
						["sourceQuests"] = { 37456 },	-- Sealing Fate: Stockpiled Garrison Resources
						["qgs"] = {
							87391,	-- Fate-Twister Seress
							88570,	-- Fate-Twister Tiklal
						},
						["coords"] = {
							{ 51.6, 61.9, STORMSHIELD },	-- Alliance
							{ 64.6, 62.0, WARSPEAR },	-- Horde
						},
						["cost"] = { { "c", 824, 4000 }, },	-- 4,000x Garrison Resources
						["isWeekly"] = true,
						["lvl"] = 100,
					}),
				}),
				n(VENDORS, {
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(87052, {	-- Artificer Harlaan <Jewelcrafting Designs>
							["coord"] = { 44.2, 37.8, STORMSHIELD },
							["sym"] = {{"select","npcID",77356},{"pop"}},	-- Costan Highwall <Jewelcrafter>
						}),
						n(93907, {	-- Amelia Clarke <Wild Gladiator>
							["coord"] = { 54.8, 17.0, STORMSHIELD },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138633, {	-- Arsenal: Wild Gladiator's Weapons (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(5, i(124675)),	-- Wild Gladiator's Cleaver
									moh(5, i(124676)),	-- Wild Gladiator's Shanker
									moh(5, i(124677)),	-- Wild Gladiator's Ripper
									moh(5, i(124678)),	-- Wild Gladiator's Pummeler
									moh(5, i(124679)),	-- Wild Gladiator's Quickblade
									moh(5, i(124680)),	-- Wild Gladiator's Longbow
									moh(5, i(124681)),	-- Wild Gladiator's Heavy Crossbow
									moh(5, i(124682)),	-- Wild Gladiator's Rifle
									moh(5, i(124683)),	-- Wild Gladiator's Pike
									moh(5, i(124684)),	-- Wild Gladiator's Staff
									moh(5, i(124726)),	-- Wild Gladiator's Spellblade
									moh(5, i(124727)),	-- Wild Gladiator's Gavel
									moh(5, i(124728)),	-- Wild Gladiator's Mageblade
									moh(5, i(124729)),	-- Wild Gladiator's Baton of Light
									moh(2, i(124730)),	-- Wild Gladiator's Touch of Defeat
									moh(5, i(124731)),	-- Wild Gladiator's Battle Staff
									moh(5, i(124732)),	-- Wild Gladiator's Energy Staff
									moh(2, i(124741)),	-- Wild Gladiator's Endgame
									moh(2, i(124742)),	-- Wild Gladiator's Reprieve
									moh(2, i(124748)),	-- Wild Gladiator's Redoubt
									moh(2, i(124749)),	-- Wild Gladiator's Barrier
									moh(5, i(124837)),	-- Wild Gladiator's Hacker
									moh(5, i(124838)),	-- Wild Gladiator's Render
									moh(5, i(124839)),	-- Wild Gladiator's Bonecracker
									moh(5, i(124840)),	-- Wild Gladiator's Slicer
									moh(5, i(124841)),	-- Wild Gladiator's Decapitator
									moh(5, i(124842)),	-- Wild Gladiator's Bonegrinder
									moh(5, i(124843)),	-- Wild Gladiator's Greatsword
									moh(5, i(124851)),	-- Wild Gladiator's Shield Wall
									moh(5, i(129934)),	-- Wild Gladiator's Runeaxe
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138515, {	-- Ensemble: Wild Gladiator's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124711)),	-- Wild Gladiator's Dreadplate Chestpiece (A)
									moh(2, i(124712)),	-- Wild Gladiator's Dreadplate Gauntlets (A)
									moh(3, i(124713)),	-- Wild Gladiator's Dreadplate Helm (A)
									moh(3, i(124714)),	-- Wild Gladiator's Dreadplate Legguards (A)
									moh(2, i(124715)),	-- Wild Gladiator's Dreadplate Shoulders (A)
								}),
								cl(DRUID, {
									moh(12, iensemble(138523, {	-- Ensemble: Wild Gladiator's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124716)),	-- Wild Gladiator's Dragonhide Gloves (A)
									moh(3, i(124717)),	-- Wild Gladiator's Dragonhide Helm (A)
									moh(3, i(124718)),	-- Wild Gladiator's Dragonhide Legguards (A)
									moh(3, i(124719)),	-- Wild Gladiator's Dragonhide Robes (A)
									moh(2, i(124720)),	-- Wild Gladiator's Dragonhide Spaulders (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138521, {	-- Ensemble: Wild Gladiator's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124721)),	-- Wild Gladiator's Chain Armor (A)
									moh(2, i(124722)),	-- Wild Gladiator's Chain Gauntlets (A)
									moh(3, i(124723)),	-- Wild Gladiator's Chain Helm (A)
									moh(3, i(124724)),	-- Wild Gladiator's Chain Leggings (A)
									moh(2, i(124725)),	-- Wild Gladiator's Chain Spaulders (A)
								}),
								cl(MAGE, {
									moh(12, iensemble(138529, {	-- Ensemble: Wild Gladiator's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124773)),	-- Wild Gladiator's Silk Amice (A)
									moh(3, i(124770)),	-- Wild Gladiator's Silk Cowl (A)
									moh(2, i(124769)),	-- Wild Gladiator's Silk Handguards (A)
									moh(3, i(124772)),	-- Wild Gladiator's Silk Robe (A)
									moh(3, i(124771)),	-- Wild Gladiator's Silk Trousers (A)
								}),
								cl(MONK, {
									moh(12, iensemble(138525, {	-- Ensemble: Wild Gladiator's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124793)),	-- Wild Gladiator's Ironskin Gloves (A)
									moh(3, i(124794)),	-- Wild Gladiator's Ironskin Helm (A)
									moh(3, i(124795)),	-- Wild Gladiator's Ironskin Legguards (A)
									moh(2, i(124796)),	-- Wild Gladiator's Ironskin Spaulders (A)
									moh(3, i(124797)),	-- Wild Gladiator's Ironskin Tunic (A)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138517, {	-- Ensemble: Wild Gladiator's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124798)),	-- Wild Gladiator's Scaled Chestpiece (A)
									moh(2, i(124799)),	-- Wild Gladiator's Scaled Gauntlets (A)
									moh(3, i(124800)),	-- Wild Gladiator's Scaled Helm (A)
									moh(3, i(124801)),	-- Wild Gladiator's Scaled Legguards (A)
									moh(2, i(124802)),	-- Wild Gladiator's Scaled Shoulders (A)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138531, {	-- Ensemble: Wild Gladiator's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124822)),	-- Wild Gladiator's Satin Gloves (A)
									moh(3, i(124823)),	-- Wild Gladiator's Satin Hood (A)
									moh(3, i(124824)),	-- Wild Gladiator's Satin Leggings (A)
									moh(2, i(124826)),	-- Wild Gladiator's Satin Mantle (A)
									moh(3, i(124825)),	-- Wild Gladiator's Satin Robe (A)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138527, {	-- Ensemble: Wild Gladiator's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124828)),	-- Wild Gladiator's Leather Gloves (A)
									moh(3, i(124829)),	-- Wild Gladiator's Leather Helm (A)
									moh(3, i(124830)),	-- Wild Gladiator's Leather Legguards (A)
									moh(2, i(124831)),	-- Wild Gladiator's Leather Spaulders (A)
									moh(3, i(124827)),	-- Wild Gladiator's Leather Tunic (A)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138519, {	-- Ensemble: Wild Gladiator's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124832)),	-- Wild Gladiator's Ringmail Armor (A)
									moh(2, i(124833)),	-- Wild Gladiator's Ringmail Gauntlets (A)
									moh(3, i(124834)),	-- Wild Gladiator's Ringmail Helm (A)
									moh(3, i(139014)),	-- Wild Gladiator's Ringmail Kilt (A)
									moh(2, i(124836)),	-- Wild Gladiator's Ringmail Spaulders (A)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138533, {	-- Ensemble: Wild Gladiator's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124879)),	-- Wild Gladiator's Felweave Amice (A)
									moh(3, i(124876)),	-- Wild Gladiator's Felweave Cowl (A)
									moh(2, i(124875)),	-- Wild Gladiator's Felweave Handguards (A)
									moh(3, i(124878)),	-- Wild Gladiator's Felweave Raiment (A)
									moh(3, i(124877)),	-- Wild Gladiator's Felweave Trousers (A)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138513, {	-- Ensemble: Wild Gladiator's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124880)),	-- Wild Gladiator's Plate Chestpiece (A)
									moh(2, i(124881)),	-- Wild Gladiator's Plate Gauntlets (A)
									moh(3, i(124882)),	-- Wild Gladiator's Plate Helm (A)
									moh(3, i(124883)),	-- Wild Gladiator's Plate Legguards (A)
									moh(2, i(124884)),	-- Wild Gladiator's Plate Shoulders (A)
								}),
								n(HEAD, {
									moh(3, i(124702)),	-- Wild Gladiator's Hood of Prowess (A)
									moh(3, i(124785)),	-- Wild Gladiator's Helm (A)
									moh(3, i(124761)),	-- Wild Gladiator's Helm (leather) (A)
									moh(3, i(124814)),	-- Wild Gladiator's Plate Helmet (A)
									moh(3, i(124707)),	-- Wild Gladiator's Hood of Crruelty (A)
									moh(3, i(124766)),	-- Wild Gladiator's Headdcover (A)
									moh(3, i(124819)),	-- Wild Gladiator's Plate Visor (A)
									moh(3, i(124790)),	-- Wild Gladiator's Coif (A)
								}),
								n(SHOULDER, {
									moh(2, i(124705)),	-- Wild Gladiator's Amice of Prowess (A)
									moh(2, i(124763)),	-- Wild Gladiator's Spaulders (Leather) (A)
									moh(2, i(124787)),	-- Wild Gladiator's Spaulders (Mail) (A)
									moh(2, i(124816)),	-- Wild Gladiator's Shoulderplates (A)
									moh(2, i(124710)),	-- Wild Gladiator's Mantle of Cruelty (A)
									moh(2, i(124768)),	-- Wild Gladiator's Pauldrons (A)
									moh(2, i(124792)),	-- Wild Gladiator's Pauldrons (Mail) (A)
									moh(2, i(124821)),	-- Wild Gladiator's Plate Pauldrons (A)
								}),
								n(BACK, {
									moh(1, i(124685)),	-- Wild Gladiator's Cape of Cruelty (A)
									moh(1, i(124686)),	-- Wild Gladiator's Cape of Prowess (A)
									moh(1, i(124844)),	-- Wild Gladiator's Cloak of Cruelty (A)
									moh(1, i(124852)),	-- Wild Gladiator's Cloak of Endurance (A)
									moh(1, i(124845)),	-- Wild Gladiator's Cloak of Prowess (A)
									moh(1, i(124736)),	-- Wild Gladiator's Drape of Contemplation (A)
									moh(1, i(124733)),	-- Wild Gladiator's Drape of Cruelty (A)
									moh(1, i(124735)),	-- Wild Gladiator's Drape of Meditation (A)
									moh(1, i(124734)),	-- Wild Gladiator's Drape of Prowess (A)
								}),
								n(CHEST, {
									moh(3, i(124704)),	-- Wild Gladiator's Robes of Prowess (A)
									moh(3, i(124759)),	-- Wild Gladiator's Tunic (Leahter) (A)
									moh(3, i(124783)),	-- Wild Gladiator's Armor (A)
									moh(3, i(124812)),	-- Wild Gladiator's Plate Breastplate (A)
									moh(3, i(124709)),	-- Wild Gladiator's Rainment of Cruelty(A)
									moh(3, i(124764)),	-- Wild Gladiator's Chestguard (Leather) (A)
									moh(3, i(124788)),	-- Wild Gladiator's Chestguard (Mail) (A)
									moh(3, i(124817)),	-- Wild Gladiator's Plate Chestguard (A)
								}),
								n(WRIST, {
									moh(1, i(124699)),	-- Wild Gladiator's Cuffs of Cruelty (A)
									moh(1, i(124698)),	-- Wild Gladiator's Cuffs of Prowess (A)
									moh(1, i(124756)),	-- Wild Gladiator's Bindings of Cruelty (A)
									moh(1, i(124757)),	-- Wild Gladiator's Bindings of Prowess (A)
									moh(1, i(124781)),	-- Wild Gladiator's Armbands of Cruelty (A)
									moh(1, i(124780)),	-- Wild Gladiator's Armbands of Prowess (A)
									moh(1, i(124809)),	-- Wild Gladiator's Armplates of Cruelty (A)
									moh(1, i(124810)),	-- Wild Gladiator's Armplates of Prowess (A)
									moh(1, i(124811)),	-- Wild Gladiator's Armplates of Victory (A)
									moh(1, i(124782)),	-- Wild Gladiator's Armbands of Victory (A)
									moh(1, i(139015)),	-- Wild Gladiator's Armbands of Alacrity (A)
									moh(1, i(124758)),	-- Wild Gladiator's Bindings of Victory (A)
									moh(1, i(124700)),	-- Wild Gladiator's Cuffs of Victory (A)
								}),
								n(HANDS, {
									moh(2, i(124701)),	-- Wild Gladiator's Gloves of Prowess (A)
									moh(2, i(124760)),	-- Wild Gladiator's Gloves (A)
									moh(2, i(124784)),	-- Wild Gladiator's Gauntlets (A)
									moh(2, i(124813)),	-- Wild Gladiator's Plate Gloves (A)
									moh(2, i(124706)),	-- Wild Gladiator's Handguards of Cruelty (A)
									moh(2, i(124789)),	-- Wild Gladiator's Gloves (mail) (A)
									moh(2, i(124818)),	-- Wild Gladiator's Plate Grips (A)
									moh(2, i(124765)),	-- Wild Gladiator's Grips (leather) (A)
								}),
								n(WAIST, {
									moh(1, i(124692)),	-- Wild Gladiator's Cord of Cruelty (A)
									moh(1, i(124693)),	-- Wild Gladiator's Cord of Prowess (A)
									moh(1, i(124751)),	-- Wild Gladiator's Belt of Cruelty (A)
									moh(1, i(124750)),	-- Wild Gladiator's Belt of Prowess (A)
									moh(1, i(124774)),	-- Wild Gladiator's Waistguard of Cruelty (A)
									moh(1, i(124775)),	-- Wild Gladiator's Waistguard of Prowess (A)
									moh(1, i(124803)),	-- Wild Gladiator's Girdle of Cruelty (A)
									moh(1, i(124804)),	-- Wild Gladiator's Girdle of Prowess (A)
									moh(1, i(124805)),	-- Wild Gladiator's Girdle of Victory (A)
									moh(1, i(124776)),	-- Wild Gladiator's Waistguard of Victory (A)
									moh(1, i(124752)),	-- Wild Gladiator's Belt of Victory (A)
									moh(1, i(124694)),	-- Wild Gladiator's Cord of Victory (A)
								}),
								n(LEGS, {
									moh(3, i(124703)),	-- Wild Gladiator's Leggings of Prowess (A)
									moh(3, i(124762)),	-- Wild Gladiator's Legguards (A)
									moh(3, i(124791)),	-- Wild Gladiator's Leggings (A)
									moh(3, i(124820)),	-- Wild Gladiator's Plate Leggings (A)
									moh(3, i(124708)),	-- Wild Gladiator's Trousers of Cruelty (A)
									moh(3, i(124786)),	-- Wild Gladiator's Leggings (Mail) (A)
									moh(3, i(124767)),	-- Wild Gladiator's Leggings (A)
									moh(3, i(124815)),	-- Wild Gladiator's Legplates (A)
									moh(3, i(124835)),	-- Wild Gladiator's Ringmail Leggings (A)
								}),
								n(FEET, {
									moh(2, i(124753)),	-- Wild Gladiator's Boots of Cruelty (A)
									moh(2, i(124755)),	-- Wild Gladiator's Boots of Victory(A)
									moh(2, i(124754)),	-- Wild Gladiator's Boots of Prowess (A)
									moh(2, i(124777)),	-- Wild Gladiator's Footguards of Cruelty (A)
									moh(2, i(124778)),	-- Wild Gladiator's Footguards of Prowess (A)
									moh(2, i(124779)),	-- Wild Gladiator's Footguards of Victory (A)
									moh(2, i(124806)),	-- Wild Gladiator's Warboots of Cruelty (A)
									moh(2, i(124807)),	-- Wild Gladiator's Warboots of Prowess (A)
									moh(2, i(124808)),	-- Wild Gladiator's Warboots of Victory (A)
									moh(2, i(124695)),	-- Wild Gladiator's Treads of Cruelty (A)
									moh(2, i(124696)),	-- Wild Gladiator's Treads of Prowess (A)
									moh(2, i(124697)),	-- Wild Gladiator's Treads of Victory (A)
								}),
							},
						}),
						n(86175, {	-- Bregg Coppercast <Primal Combatant>
							["coord"] = { 56.2, 20.0, STORMSHIELD },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138625, {	-- Arsenal: Primal Combatant's Weapons (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115083)),	-- Primal Combatant's Barrier (A)
									moh(5, i(120066)),	-- Primal Combatant's Baton of Light (A)
									moh(5, i(120068)),	-- Primal Combatant's Battle Staff (A)
									moh(5, i(120072)),	-- Primal Combatant's Bonecracker (A)
									moh(5, i(120075)),	-- Primal Combatant's Bonegrinder (A)
									moh(5, i(120053)),	-- Primal Combatant's Cleaver (A)
									moh(5, i(120074)),	-- Primal Combatant's Decapitator (A)
									moh(2, i(115075)),	-- Primal Combatant's Endgame (A)
									moh(5, i(120069)),	-- Primal Combatant's Energy Staff (A)
									moh(5, i(120064)),	-- Primal Combatant's Gavel (A)
									moh(5, i(120076)),	-- Primal Combatant's Greatsword (A)
									moh(5, i(120070)),	-- Primal Combatant's Hacker (A)
									moh(5, i(120058)),	-- Primal Combatant's Longbow (A)
									moh(5, i(120061)),	-- Primal Combatant's Pike (A)
									moh(5, i(120056)),	-- Primal Combatant's Pummeler (A)
									moh(5, i(120057)),	-- Primal Combatant's Quickblade (A)
									moh(2, i(115082)),	-- Primal Combatant's Redoubt (A)
									moh(5, i(120071)),	-- Primal Combatant's Render (A)
									moh(2, i(115076)),	-- Primal Combatant's Reprieve (A)
									moh(5, i(120060)),	-- Primal Combatant's Rifle (A)
									moh(5, i(120055)),	-- Primal Combatant's Ripper (A)
									moh(5, i(120054)),	-- Primal Combatant's Shanker (A)
									moh(2, i(115148)),	-- Primal Combatant's Shield Wall (A)
									moh(5, i(120073)),	-- Primal Combatant's Slicer (A)
									moh(5, i(120063)),	-- Primal Combatant's Spellblade (A)
									moh(5, i(120062)),	-- Primal Combatant's Staff (A)
									moh(5, i(120067)),	-- Primal Combatant's Touch of Defeat (A)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138613, {	-- Ensemble: Primal Combatant's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115049)),	-- Primal Combatant's Dreadplate Chestpiece (A)
									moh(2, i(115050)),	-- Primal Combatant's Dreadplate Gauntlets (A)
									moh(3, i(115051)),	-- Primal Combatant's Dreadplate Helm (A)
									moh(3, i(115052)),	-- Primal Combatant's Dreadplate Legguards (A)
									moh(2, i(115053)),	-- Primal Combatant's Dreadplate Shoulders (A)
								}),
								cl(DRUID, {
									moh(12, iensemble(138617, {	-- Ensemble: Primal Combatant's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115054)),	-- Primal Combatant's Dragonhide Gloves (A)
									moh(3, i(115055)),	-- Primal Combatant's Dragonhide Helm (A)
									moh(3, i(115056)),	-- Primal Combatant's Dragonhide Legguards (A)
									moh(2, i(115058)),	-- Primal Combatant's Dragonhide Spaulders (A)
									moh(3, i(115057)),	-- Primal Combatant's Dragonhide Tunic (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138579, {	-- Ensemble: Primal Combatant's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115059)),	-- Primal Combatant's Chain Armor (A)
									moh(2, i(115060)),	-- Primal Combatant's Chain Gauntlets (A)
									moh(3, i(115061)),	-- Primal Combatant's Chain Helm (A)
									moh(3, i(115062)),	-- Primal Combatant's Chain Leggings (A)
									moh(2, i(115063)),	-- Primal Combatant's Chain Spaulders (A)
								}),
								cl(MAGE, {
									moh(12, iensemble(138581, {	-- Ensemble: Primal Combatant's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115094)),	-- Primal Combatant's Silk Amice (A)
									moh(3, i(115091)),	-- Primal Combatant's Silk Cowl (A)
									moh(2, i(115090)),	-- Primal Combatant's Silk Handguards (A)
									moh(3, i(115093)),	-- Primal Combatant's Silk Robe (A)
									moh(3, i(115092)),	-- Primal Combatant's Silk Trousers (A)
								}),
								cl(MONK, {
									moh(12, iensemble(138619, {	-- Ensemble: Primal Combatant's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115101)),	-- Primal Combatant's Ironskin Gloves (A)
									moh(3, i(115102)),	-- Primal Combatant's Ironskin Helm (A)
									moh(3, i(115103)),	-- Primal Combatant's Ironskin Legguards (A)
									moh(2, i(115104)),	-- Primal Combatant's Ironskin Spaulders (A)
									moh(3, i(115105)),	-- Primal Combatant's Ironskin Tunic (A)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138615, {	-- Ensemble: Primal Combatant's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115106)),	-- Primal Combatant's Scaled Chestpiece (A)
									moh(2, i(115107)),	-- Primal Combatant's Scaled Gauntlets (A)
									moh(3, i(115108)),	-- Primal Combatant's Scaled Helm (A)
									moh(3, i(115109)),	-- Primal Combatant's Scaled Legguards (A)
									moh(2, i(115110)),	-- Primal Combatant's Scaled Shoulders (A)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138583, {	-- Ensemble: Primal Combatant's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115117)),	-- Primal Combatant's Satin Gloves (A)
									moh(3, i(115118)),	-- Primal Combatant's Satin Hood (A)
									moh(3, i(115119)),	-- Primal Combatant's Satin Leggings (A)
									moh(2, i(115121)),	-- Primal Combatant's Satin Mantle (A)
									moh(3, i(115120)),	-- Primal Combatant's Satin Robe (A)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138621, {	-- Ensemble: Primal Combatant's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115123)),	-- Primal Combatant's Leather Gloves (A)
									moh(3, i(115124)),	-- Primal Combatant's Leather Helm (A)
									moh(3, i(115125)),	-- Primal Combatant's Leather Legguards (A)
									moh(2, i(115126)),	-- Primal Combatant's Leather Spaulders (A)
									moh(3, i(115122)),	-- Primal Combatant's Leather Tunic (A)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138577, {	-- Ensemble: Primal Combatant's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115127)),	-- Primal Combatant's Ringmail Armor (A)
									moh(2, i(115128)),	-- Primal Combatant's Ringmail Gauntlets (A)
									moh(3, i(115129)),	-- Primal Combatant's Ringmail Helm (A)
									moh(3, i(115130)),	-- Primal Combatant's Ringmail Leggings (A)
									moh(2, i(115131)),	-- Primal Combatant's Ringmail Spaulders (A)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138585, {	-- Ensemble: Primal Combatant's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115165)),	-- Primal Combatant's Felweave Amice (A)
									moh(3, i(115162)),	-- Primal Combatant's Felweave Cowl (A)
									moh(2, i(115161)),	-- Primal Combatant's Felweave Handguards (A)
									moh(3, i(115164)),	-- Primal Combatant's Felweave Raiment (A)
									moh(3, i(115163)),	-- Primal Combatant's Felweave Trousers (A)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138611, {	-- Ensemble: Primal Combatant's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115166)),	-- Primal Combatant's Plate Chestpiece (A)
									moh(2, i(115167)),	-- Primal Combatant's Plate Gauntlets (A)
									moh(3, i(115168)),	-- Primal Combatant's Plate Helm (A)
									moh(3, i(115169)),	-- Primal Combatant's Plate Legguards (A)
									moh(2, i(115170)),	-- Primal Combatant's Plate Shoulders (A)
								}),
								n(HEAD, {
									moh(3, i(115039)),	-- Primal Combatant's Hood of Prowess (A)
									moh(3, i(115175)),	-- Primal Combatant's Helm (A)
									moh(3, i(115180)),	-- Primal Combatant's Helm (A)
									moh(3, i(115143)),	-- Primal Combatant's Plate Helmet (A)
								}),
								n(SHOULDER, {
									moh(2, i(115042)),	-- Primal Combatant's Amice of Prowess (A)
									moh(2, i(115177)),	-- Primal Combatant's Spaulders (A)
									moh(2, i(115182)),	-- Primal Combatant's Spaulders (A)
									moh(2, i(115145)),	-- Primal Combatant's Shoulderplates (A)
								}),
								n(BACK, {
									moh(1, i(115183)),	-- Primal Combatant's Cape of Cruelty (A)
									moh(1, i(115184)),	-- Primal Combatant's Cape of Prowess (A)
									moh(1, i(115189)),	-- Primal Combatant's Cloak of Cruelty (A)
									moh(1, i(115190)),	-- Primal Combatant's Cloak of Prowess (A)
									moh(1, i(115188)),	-- Primal Combatant's Drape of Contemplation (A)
									moh(1, i(115185)),	-- Primal Combatant's Drape of Cruelty (A)
									moh(1, i(115187)),	-- Primal Combatant's Drape of Meditation (A)
									moh(1, i(115186)),	-- Primal Combatant's Drape of Prowess (A)
								}),
								n(CHEST, {
									moh(3, i(115041)),	-- Primal Combatant's Robes of Prowess (A)
									moh(3, i(115173)),	-- Primal Combatant's Tunic (A)
									moh(3, i(115178)),	-- Primal Combatant's Armor (A)
									moh(3, i(115141)),	-- Primal Combatant's Plate Breastplate (A)
								}),
								n(WRIST, {
									moh(1, i(115048)),	-- Primal Combatant's Cuffs of Cruelty (A)
									moh(1, i(115047)),	-- Primal Combatant's Cuffs of Prowess (A)
									moh(1, i(115088)),	-- Primal Combatant's Bindings of Cruelty (A)
									moh(1, i(115089)),	-- Primal Combatant's Bindings of Prowess (A)
									moh(1, i(115100)),	-- Primal Combatant's Armbands of Cruelty (A)
									moh(1, i(115099)),	-- Primal Combatant's Armbands of Prowess (A)
									moh(1, i(115115)),	-- Primal Combatant's Armplates of Cruelty (A)
									moh(1, i(115116)),	-- Primal Combatant's Armplates of Prowess (A)
								}),
								n(HANDS, {
									moh(2, i(115038)),	-- Primal Combatant's Gloves of Prowess (A)
									moh(2, i(115174)),	-- Primal Combatant's Gloves (A)
									moh(2, i(115179)),	-- Primal Combatant's Gauntlets (A)
									moh(2, i(115142)),	-- Primal Combatant's Plate Gloves (A)
								}),
								n(WAIST, {
									moh(1, i(115043)),	-- Primal Combatant's Cord of Cruelty (A)
									moh(1, i(115044)),	-- Primal Combatant's Cord of Prowess (A)
									moh(1, i(115085)),	-- Primal Combatant's Belt of Cruelty (A)
									moh(1, i(115084)),	-- Primal Combatant's Belt of Prowess (A)
									moh(1, i(115095)),	-- Primal Combatant's Waistguard of Cruelty (A)
									moh(1, i(115096)),	-- Primal Combatant's Waistguard of Prowess (A)
									moh(1, i(115111)),	-- Primal Combatant's Girdle of Cruelty (A)
									moh(1, i(115112)),	-- Primal Combatant's Girdle of Prowess (A)
								}),
								n(LEGS, {
									moh(3, i(115040)),	-- Primal Combatant's Leggings of Prowess (A)
									moh(3, i(115176)),	-- Primal Combatant's Legguards (A)
									moh(3, i(115181)),	-- Primal Combatant's Leggings (A)
									moh(3, i(115144)),	-- Primal Combatant's Legplates (A)
								}),
								n(FEET, {
									moh(2, i(115045)),	-- Primal Combatant's Treads of Cruelty (A)
									moh(2, i(115046)),	-- Primal Combatant's Treads of Prowess (A)
									moh(2, i(115086)),	-- Primal Combatant's Boots of Cruelty (A)
									moh(2, i(115087)),	-- Primal Combatant's Boots of Prowess (A)
									moh(2, i(115097)),	-- Primal Combatant's Footguards of Cruelty (A)
									moh(2, i(115098)),	-- Primal Combatant's Footguards of Prowess (A)
									moh(2, i(115113)),	-- Primal Combatant's Warboots of Cruelty (A)
									moh(2, i(115114)),	-- Primal Combatant's Warboots of Prowess (A)
								}),
							},
						}),
						n(88155, {	-- Challenger Savina
							["description"] = "You can only buy items from this vendor if you have Challenge Warlord: Gold Feat of Strength on your character.",
							["coord"] = { 52.0, 63.6, STORMSHIELD },
							["groups"] = bubbleDown({ ["u"] = REMOVED_FROM_GAME, }, {
								i(118401, {	-- Arcana Shard Spire
									["cost"] = 10000000,	-- 1,000g
								}),
								iensemble(136854, {	-- Arsenal: Draenor Challenger's Armaments
									["cost"] = 100000000,	-- 10,000g
								}),
								i(118396, {	-- Bloodmaw Gargoyle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118395, {	-- Claws of Creation
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118409, {	-- Cloudsong Glaive
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118411, {	-- Crystal-Shot Longrifle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118403, {	-- Dimension-Ripper's Staff
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118408, {	-- Elemental Crescent
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118397, {	-- Equus
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118407, {	-- Face of the Guardian
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118413, {	-- Flamegrinder
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118406, {	-- Furnace of the Great Machine
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118402, {	-- Greatstaff of Infinite Knowledge
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118412, {	-- Greatsword of the Inferno
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118404, {	-- Living Longbow
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118405, {	-- Shifting Felblade
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118398, {	-- Soul Eater
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118399, {	-- Sunblade
									["cost"] = 10000000,	-- 1,000g
								}),
								i(118410, {	-- Tesseract Timepiece
									["cost"] = 10000000,	-- 1,000g
								}),
								un(REMOVED_FROM_GAME, i(119032, {	-- Rusted Challenger's Strongbox
									["description"] = "This box was from the WoD Challenge Mode Dailies.",
									["groups"] = {
										un(REMOVED_FROM_GAME, i(118996)),	-- Blackfire Amulet
										un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
										un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
										un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
										un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
										un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
										un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
										un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
										un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
										un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
										un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
										un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
										un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
										un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
										un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
										un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
										un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
										un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
										un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
										un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
										un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
										un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
										un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
										un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
										un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
										un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
										un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
										un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
										un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
										un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
										un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
										un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
										un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
										un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
										un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
										un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
										un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
										un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
										un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
										un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
										un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
										un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
										un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
										un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
										un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
										un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
										un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
										un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
										un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
										un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
										un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
										un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
										un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
										un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
										un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
										un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
										un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
										un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
										un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
										un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
										un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
									},
								})),
								un(REMOVED_FROM_GAME, i(127831, {	-- Challenger's Strongbox
									["description"] = "This box was from the WoD Challenge Mode Dailies.",
									["groups"] = {
										un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
										un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
										un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
										un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
										un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
										un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
										un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
										un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
										un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
										un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
										un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
										un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
										un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
										un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
										un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
										un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
										un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
										un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
										un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
										un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
										un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
										un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
										un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
										un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
										un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
										un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
										un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
										un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
										un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
										un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
										un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
										un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
										un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
										un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
										un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
										un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
										un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
										un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
										un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
										un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
										un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
										un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
										un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
										un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
										un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
										un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
										un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
										un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
										un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
										un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
										un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
										un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
										un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
										un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
										un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
										un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
										un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
										un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
										un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
										un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
										un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
										un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
										un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
										un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
										un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
									},
								})),
							}),
						}),
						n(128756, {	-- Magister Langley <Stormshield Quartermaster>
							["coord"] = { 54.8, 16.8, STORMSHIELD },
							["groups"] = bubbleDownClassicRep(FACTION_WRYNNS_VANGUARD, {
								{		-- Neutral
								}, {	-- Friendly
									i(114126),	-- Disposable Pocket Flying Machine
								}, {	-- Honored
								}, {	-- Revered
								}, {	-- Exalted
									moh(100, i(116776, {	-- Pale Thorngrazer (MOUNT!)
										["cost"] = {{ "g", 50000000 }},		-- 5,000g
									})),
									i(115517),	-- Wrynn's Vanguard Tabard
								},
							}),
						}),
						n(92501, {	-- Dawn-Seeker Kasrek <Apexis Belt Trader>
							["coord"] = { 51.2, 61.8, STORMSHIELD },
							["groups"] = {
								i(119821, {	-- Contact: Dawnseeker Rukaryx
									["cost"] = {
										{ "c", 823, 5000 },	-- 5,000x Apexis Crystal
										{ "g", 50000000 },	-- 5,000g
									},
									["groups"] = {
										follower(462),	-- Dawnseeker Rukaryx
									},
								}),
								i(115380, {	-- Crystal-Leaf Chain
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115381, {	-- Crystal-Plated Greatbelt
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115379, {	-- Crystalhide Belt
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122322, {	-- Ethereal Crystal-Leaf Chain
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122323, {	-- Ethereal Crystal-Plated Greatbelt
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116936, {	-- Exceptional Crystalhide Belt
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122320, {	-- Ethereal Windcrystal Cord
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116937, {	-- Exceptional Crystal-Leaf Chain
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116938, {	-- Exceptional Crystal-Plated Greatbelt
									["cost"] = 50000000,	-- 5,000g
								}),
								i(122321, {	-- Ethereal Crystalhide Belt
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116935, {	-- Exceptional Windcrystal Cord
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116941, {	-- Flawless Crystal-Leaf Chain
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116942, {	-- Flawless Crystal-Plated Greatbelt
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116940, {	-- Flawless Crystalhide Belt
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116939, {	-- Flawless Windcrystal Cord
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116768, {	-- Mosshide Riverwallow (MOUNT!)
									["cost"] = {
										{ "c", 823, 5000 },	-- 5,000x Apexis Crystal
										{ "g", 500000000 },	-- 50,000g
									},
								}),
								i(115378, {	-- Windcrystal Cord
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86391, {	-- Dawn-Seeker Krek <Apexis Leggings Trader>
							["coord"] = { 50.7, 61.5, STORMSHIELD },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(115376, {	-- Crystal-Leaf Legguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115377, {	-- Crystal-Plated Legplates
									["cost"] = 10000000,	-- 1,000g
								}),
								i(115375, {	-- Crystalhide Legguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122318, {	-- Ethereal Crystal-Leaf Legguards
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122319, {	-- Ethereal Crystal-Plated Legplates
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122317, {	-- Ethereal Crystalhide Legguards
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122316, {	-- Ethereal Windcrystal Leggings
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116929, {	-- Exceptional Crystal-Leaf Legguards
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116930, {	-- Exceptional Crystal-Plated Legplates
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116928, {	-- Exceptional Crystalhide Legguards
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116927, {	-- Exceptional Windcrystal Leggings
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116933, {	-- Flawless Crystal-Leaf Legguards
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116934, {	-- Flawless Crystal-Plated Legplates
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116932, {	-- Flawless Crystalhide Legguards
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116931, {	-- Flawless Windcrystal Leggings
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115374, {	-- Windcrystal Leggings
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86387, {	-- Dawn-Seeker Rilak <Apexis Helm Trader>
							["coord"] = { 50.0, 61.2, STORMSHIELD },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116955, {	-- Crystal-Leaf Helm
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116956, {	-- Crystal-Plated Greathelm
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116954, {	-- Crystalhide Cowl
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122310, {	-- Ethereal Crystal-Leaf Helm
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122311, {	-- Ethereal Crystal-Plated Greathelm
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122309, {	-- Ethereal Crystalhide Cowl
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122308, {	-- Ethereal Windcrystal Hood
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116959, {	-- Exceptional Crystal-Leaf Helm
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116960, {	-- Exceptional Crystal-Plated Greathelm
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116958, {	-- Exceptional Crystalhide Cowl
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116957, {	-- Exceptional Windcrystal Hood
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115398, {	-- Flawless Crystal-Leaf Helm
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115399, {	-- Flawless Crystal-Plated Greathelm
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115397, {	-- Flawless Crystalhide Cowl
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115396, {	-- Flawless Windcrystal Hood
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116953, {	-- Windcrystal Hood
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(91321, {	-- Dawn-Seeker Skelak <Apexis Bracer Trader>
							["coord"] = { 50.0, 61.6, STORMSHIELD },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116967, {	-- Crystal-Leaf Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116968, {	-- Crystal-Plated Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116966, {	-- Crystalhide Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122314, {	-- Ethereal Crystal-Leaf Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122315, {	-- Ethereal Crystal-Plated Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122313, {	-- Ethereal Crystalhide Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122312, {	-- Ethereal Windcrystal Bracers
									["cost"] = 200000000,	-- 20,000g
								}),
								i(116963, {	-- Exceptional Crystal-Leaf Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116964, {	-- Exceptional Crystal-Plated Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116962, {	-- Exceptional Crystalhide Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116961, {	-- Exceptional Windcrystal Bracers
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115401, {	-- Flawless Crystalhide Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115402, {	-- Flawless Crystal-Leaf Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115403, {	-- Flawless Crystal-Plated Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(115400, {	-- Flawless Windcrystal Bracers
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116965, {	-- Windcrystal Bracers
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86390, {	-- Dawn-Seeker Vallar <Apexis Glove Trader>
							["coord"] = { 48.5, 62.3, STORMSHIELD },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116945, {	-- Crystal-Leaf Gloves
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116946, {	-- Crystal-Plated Gauntlets
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116944, {	-- Crystalhide Grips
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122326, {	-- Ethereal Crystal-Leaf Gloves
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122327, {	-- Ethereal Crystal-Plated Gauntlets
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122325, {	-- Ethereal Crystalhide Grips
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122324, {	-- Ethereal Windcrystal Wraps
									["cost"] = 200000000,	-- 20,000g
								}),
								i(115389, {	-- Exceptional Crystal-Leaf Gloves
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115390, {	-- Exceptional Crystal-Plated Gauntlets
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115388, {	-- Exceptional Crystalhide Grips
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115387, {	-- Exceptional Windcrystal Wraps
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116949, {	-- Flawless Crystal-Leaf Gloves
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116950, {	-- Flawless Crystal-Plated Gauntlets
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116948, {	-- Flawless Crystalhide Grips
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116947, {	-- Flawless Windcrystal Wraps
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116943, {	-- Windcrystal Wraps
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(86389, {	-- Dawn-Seeker Verroak <Apexis Cloak Trader>
							["coord"] = { 49.4, 61.3, STORMSHIELD },
							["sym"] = {{"select","itemID",
								116768,	-- Mosshide Riverwallow (MOUNT!)
								119821,	-- Contact: Dawnseeker Rukaryx
							}},
							["groups"] = {
								i(116976, {	-- Crystal Reinforced Doomcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116973, {	-- Crystal-Edged Bladecloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116974, {	-- Crystalclasp Stormcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(122332, {	-- Ethereal Crystal Reinforced Doomcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122329, {	-- Ethereal Crystal-Edged Bladecloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122330, {	-- Ethereal Crystalclasp Stormcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122331, {	-- Ethereal Refractory Heartcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(122328, {	-- Ethereal Shard-Covered Dreadcloak
									["cost"] = 200000000,	-- 20,000g
								}),
								i(115394, {	-- Exceptional Crystal Reinforced Doomcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115391, {	-- Exceptional Crystal-Edged Bladecloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115392, {	-- Exceptional Crystalclasp Stormcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115393, {	-- Exceptional Refractory Heartcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(115395, {	-- Exceptional Shard-Covered Dreadcloak
									["cost"] = 50000000,	-- 5,000g
								}),
								i(116972, {	-- Flawless Crystal Reinforced Doomcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116969, {	-- Flawless Crystal-Edged Bladecloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116970, {	-- Flawless Crystalclasp Stormcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116971, {	-- Flawless Refractory Heartcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116951, {	-- Flawless Shard-Covered Dreadcloak
									["cost"] = 100000000,	-- 10,000g
								}),
								i(116975, {	-- Refractory Heartcloak
									["cost"] = 10000000,	-- 1,000g
								}),
								i(116952, {	-- Shard-Covered Dreadcloak
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
						n(88482, {	-- Gazrix Gearlock <Steamwheedle "Preservation" Society Quartermaster>
							["coord"] = { 43.1, 77.7, STORMSHIELD },
							["sym"] = {{"sub","common_vendor",87394}},	-- Kwilax Fuseshiv <Reputation Vendor>
						}),
						n(87365, {  -- Grakis <Archaeology Fragments>
							["coord"] = { 48.6, 33.5, STORMSHIELD },
							["groups"] = {
								i(122606, {	-- Explorer's Notebook
									["cost"] = { { "i", 87399, 5 } },	-- 5x  Restored Artifact
								}),
								i(117389, {	-- Draenor Archaeologist's Lodestone
									["cost"] = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
								}),
								i(117390, {	-- Draenor Archaeologist's Map
									["cost"] = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
								}),
								i(118729, {	-- Gorgrond Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } }	-- 100g
								}),
								i(118732, {	-- Nagrand Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } }	-- 100g
								}),
								i(118728, {	-- Shadowmoon Valley Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } }	-- 100g
								}),
								i(118731, {	-- Spires of Arak Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } }	-- 100g
								}),
								i(118730, {	-- Talador Treasure Map (CI!)
									["cost"] = { { "g", 1000000 } }	-- 100g
								}),
							},
						}),
						n(93914, {	-- Holly McTilla <Warmongering Gladiator>
							["coord"] = { 54.8, 18.8, STORMSHIELD },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								moh(100, i(116776, {	-- Pale Thorngrazer (MOUNT!)
									["cost"] = {{ "g", 50000000 }},	-- 5,000g
								})),
								elitepvp(moh(10, i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
									["timeline"] = { ADDED_6_0_2 },
								}))),
								n(WEAPONS, {
									moh(80, iensemble(138635, {	-- Arsenal: Warmongering Gladiator's Weapons (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125863)),	-- Warmongering Gladiator's Barrier (A)
									moh(5, i(125843)),	-- Warmongering Gladiator's Baton of Light (A)
									moh(5, i(125845)),	-- Warmongering Combatant's Battle Staff (A)
									moh(5, i(125953)),	-- Warmongering Gladiator's Bonecracker (A)
									moh(5, i(125956)),	-- Warmongering Gladiator's Bonegrinder (A)
									moh(5, i(125789)),	-- Warmongering Gladiator's Cleaver (A)
									moh(5, i(125955)),	-- Warmongering Gladiator's Decapitator (A)
									moh(2, i(125855)),	-- Warmongering Gladiator's Endgame (A)
									moh(5, i(125846)),	-- Warmongering Gladiator's Energy Staff (A)
									moh(5, i(125841)),	-- Warmongering Gladiator's Gavel (A)
									moh(5, i(125957)),	-- Warmongering Gladiator's Greatsword (A)
									moh(5, i(125951)),	-- Warmongering Gladiator's Hacker (A)
									moh(5, i(125795)),	-- Warmongering Gladiator's Heavy Crossbow (A)
									moh(5, i(125794)),	-- Warmongering Gladiator's Longbow (A)
									moh(5, i(125842)),	-- Warmongering Gladiator's Mageblade (A)
									moh(5, i(125797)),	-- Warmongering Gladiator's Pike (A)
									moh(5, i(125792)),	-- Warmongering Gladiator's Pummeler (A)
									moh(5, i(125793)),	-- Warmongering Gladiator's Quickblade (A)
									moh(2, i(125862)),	-- Warmongering Gladiator's Redoubt (A)
									moh(5, i(125952)),	-- Warmongering Gladiator's Render (A)
									moh(2, i(125856)),	-- Warmongering Gladiator's Reprieve (A)
									moh(5, i(125796)),	-- Warmongering Gladiator's Rifle (A)
									moh(5, i(125791)),	-- Warmongering Gladiator's Ripper (A)
									moh(5, i(125790)),	-- Warmongering Gladiator's Shanker (A)
									moh(2, i(125965)),	-- Warmongering Gladiator's Shield Wall (A)
									moh(5, i(125954)),	-- Warmongering Gladiator's Slicer (A)
									moh(5, i(125840)),	-- Warmongering Gladiator's Spellblade (A)
									moh(5, i(125798)),	-- Warmongering Gladiator's Staff (A)
									moh(5, i(125844)),	-- Warmongering Gladiator's Touch of Defeat (A)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138493, {	-- Ensemble: Warmongering Gladiator's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125825)),	-- Warmongering Gladiator's Dreadplate Chestpiece (A)
									moh(2, i(125826)),	-- Warmongering Gladiator's Dreadplate Gauntlets (A)
									moh(3, i(125827)),	-- Warmongering Gladiator's Dreadplate Helm (A)
									moh(3, i(125828)),	-- Warmongering Gladiator's Dreadplate Legguards (A)
									moh(2, i(125829)),	-- Warmongering Gladiator's Dreadplate Shoulders (A)
								}),
								cl(DRUID, {
									moh(12, iensemble(138501, {	-- Ensemble: Warmongering Gladiator's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125830)),	-- Warmongering Gladiator's Dragonhide Gloves (A)
									moh(3, i(125831)),	-- Warmongering Gladiator's Dragonhide Helm (A)
									moh(3, i(125832)),	-- Warmongering Gladiator's Dragonhide Legguards (A)
									moh(3, i(125833)),	-- Warmongering Gladiator's Dragonhide Robes (A)
									moh(2, i(125834)),	-- Warmongering Gladiator's Dragonhide Spaulders (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138499, {	-- Ensemble: Warmongering Gladiator's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125835)),	-- Warmongering Gladiator's Chain Armor (A)
									moh(2, i(125836)),	-- Warmongering Gladiator's Chain Gauntlets (A)
									moh(3, i(125837)),	-- Warmongering Gladiator's Chain Helm (A)
									moh(3, i(125838)),	-- Warmongering Gladiator's Chain Leggings (A)
									moh(2, i(125839)),	-- Warmongering Gladiator's Chain Spaulders (A)
								}),
								cl(MAGE, {
									moh(12, iensemble(138507, {	-- Ensemble: Warmongering Gladiator's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125887)),	-- Warmongering Gladiator's Silk Amice (A)
									moh(2, i(125884)),	-- Warmongering Gladiator's Silk Cowl (A)
									moh(2, i(125883)),	-- Warmongering Gladiator's Silk Handguards (A)
									moh(3, i(125886)),	-- Warmongering Gladiator's Silk Robe (A)
									moh(3, i(125885)),	-- Warmongering Gladiator's Silk Trousers (A)
								}),
								cl(MONK, {
									moh(12, iensemble(138503, {	-- Ensemble: Warmongering Gladiator's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125907)),	-- Warmongering Gladiator's Ironskin Gloves (A)
									moh(3, i(125908)),	-- Warmongering Gladiator's Ironskin Helm (A)
									moh(3, i(125909)),	-- Warmongering Gladiator's Ironskin Legguards (A)
									moh(2, i(125910)),	-- Warmongering Gladiator's Ironskin Spaulders (A)
									moh(3, i(125911)),	-- Warmongering Gladiator's Ironskin Tunic (A)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138495, {	-- Ensemble: Warmongering Gladiator's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125912)),	-- Warmongering Gladiator's Scaled Chestpiece (A)
									moh(2, i(125913)),	-- Warmongering Gladiator's Scaled Gauntlets (A)
									moh(3, i(125914)),	-- Warmongering Gladiator's Scaled Helm (A)
									moh(3, i(125915)),	-- Warmongering Gladiator's Scaled Legguards (A)
									moh(2, i(125916)),	-- Warmongering Gladiator's Scaled Shoulders (A)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138509, {	-- Ensemble: Warmongering Gladiator's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125936)),	-- Warmongering Gladiator's Satin Gloves (A)
									moh(3, i(125937)),	-- Warmongering Gladiator's Satin Hood (A)
									moh(3, i(125938)),	-- Warmongering Gladiator's Satin Leggings (A)
									moh(2, i(125940)),	-- Warmongering Gladiator's Satin Mantle (A)
									moh(3, i(125939)),	-- Warmongering Gladiator's Satin Robe (A)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138505, {	-- Ensemble: Warmongering Gladiator's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125942)),	-- Warmongering Gladiator's Leather Gloves (A)
									moh(3, i(125943)),	-- Warmongering Gladiator's Leather Helm (A)
									moh(3, i(125944)),	-- Warmongering Gladiator's Leather Legguards (A)
									moh(2, i(125945)),	-- Warmongering Gladiator's Leather Spaulders (A)
									moh(3, i(125941)),	-- Warmongering Gladiator's Leather Tunic (A)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138497, {	-- Ensemble: Warmongering Gladiator's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125946)),	-- Warmongering Gladiator's Ringmail Armor (A)
									moh(2, i(125947)),	-- Warmongering Gladiator's Ringmail Gauntlets (A)
									moh(3, i(125948)),	-- Warmongering Gladiator's Ringmail Helm (A)
									moh(3, i(125949)),	-- Warmongering Gladiator's Ringmail Kilt (A)
									moh(2, i(125950)),	-- Warmongering Gladiator's Ringmail Spaulders (A)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138511, {	-- Ensemble: Warmongering Gladiator's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125993)),	-- Warmongering Gladiator's Felweave Amice (A)
									moh(2, i(125990)),	-- Warmongering Gladiator's Felweave Cowl (A)
									moh(3, i(125989)),	-- Warmongering Gladiator's Felweave Handguards (A)
									moh(2, i(125992)),	-- Warmongering Gladiator's Felweave Raiment (A)
									moh(3, i(125991)),	-- Warmongering Gladiator's Felweave Trousers (A)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138491, {	-- Ensemble: Warmongering Gladiator's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125994)),	-- Warmongering Gladiator's Plate Chestpiece (A)
									moh(2, i(125995)),	-- Warmongering Gladiator's Plate Gauntlets (A)
									moh(3, i(125996)),	-- Warmongering Gladiator's Plate Helm (A)
									moh(3, i(125997)),	-- Warmongering Gladiator's Plate Legguards (A)
									moh(2, i(125998)),	-- Warmongering Gladiator's Plate Shoulders (A)
								}),
								n(HEAD, {
									moh(3, i(125821)),	-- Warmongering Gladiator's Cowl of Cruelty (A)
									moh(3, i(125816)),	-- Warmongering Gladiator's Hood of Prowess (A)
									moh(3, i(125880)),	-- Warmongering Gladiator's Headcover (A)
									moh(3, i(125875)),	-- Warmongering Gladiator's Helm (A)
									moh(3, i(125904)),	-- Warmongering Gladiator's Coif (A)
									moh(3, i(125899)),	-- Warmongering Gladiator's Helm (A)
									moh(3, i(125928)),	-- Warmongering Gladiator's Plate Helmet (A)
									moh(3, i(125933)),	-- Warmongering Gladiator's Plate Visor (A)
								}),
								n(SHOULDER, {
									moh(2, i(125819)),	-- Warmongering Gladiator's Amice of Prowess (A)
									moh(2, i(125824)),	-- Warmongering Gladiator's Mantle of Cruelty (A)
									moh(2, i(125882)),	-- Warmongering Gladiator's Pauldrons (A)
									moh(2, i(125877)),	-- Warmongering Gladiator's Spaulders (A)
									moh(2, i(125906)),	-- Warmongering Gladiator's Pauldrons (A)
									moh(2, i(125901)),	-- Warmongering Gladiator's Spaulders (A)
									moh(2, i(125935)),	-- Warmongering Gladiator's Plate Pauldrons (A)
									moh(2, i(125930)),	-- Warmongering Gladiator's Shoulderplates (A)
								}),
								n(BACK, {
									moh(1, i(125799)),	-- Warmongering Gladiator's Cape of Cruelty (A)
									moh(1, i(125800)),	-- Warmongering Gladiator's Cape of Prowess (A)
									moh(1, i(125958)),	-- Warmongering Gladiator's Cloak of Cruelty (A)
									moh(1, i(125966)),	-- Warmongering Gladiator's Cloak of Endurance (A)
									moh(1, i(125959)),	-- Warmongering Gladiator's Cloak of Prowess (A)
									moh(1, i(125850)),	-- Warmongering Gladiator's Drape of Contemplation (A)
									moh(1, i(125847)),	-- Warmongering Gladiator's Drape of Cruelty (A)
									moh(1, i(125849)),	-- Warmongering Gladiator's Drape of Meditation (A)
									moh(1, i(125848)),	-- Warmongering Gladiator's Drape of Prowess (A)
								}),
								n(CHEST, {
									moh(3, i(125823)),	-- Warmongering Gladiator's Raiment of Cruelty (A)
									moh(3, i(125818)),	-- Warmongering Gladiator's Robes of Prowess (A)
									moh(3, i(125878)),	-- Warmongering Gladiator's Chestguard (A)
									moh(3, i(125873)),	-- Warmongering Gladiator's Tunic (A)
									moh(3, i(125897)),	-- Warmongering Gladiator's Armor (A)
									moh(3, i(125902)),	-- Warmongering Gladiator's Chestguard (A)
									moh(3, i(125926)),	-- Warmongering Gladiator's Plate Breastplate (A)
									moh(3, i(125931)),	-- Warmongering Gladiator's Plate Chestguard (A)
								}),
								n(WRIST, {
									moh(1, i(125813)),	-- Warmongering Gladiator's Cuffs of Cruelty (A)
									moh(1, i(125812)),	-- Warmongering Gladiator's Cuffs of Prowess (A)
									moh(1, i(125814)),	-- Warmongering Gladiator's Cuffs of Victory (A)
									moh(1, i(125870)),	-- Warmongering Gladiator's Bindings of Cruelty (A)
									moh(1, i(125871)),	-- Warmongering Gladiator's Bindings of Prowess (A)
									moh(1, i(125872)),	-- Warmongering Gladiator's Bindings of Victory (A)
									moh(1, i(139031)),	-- Warmongering Gladiator's Armbands of Alacrity (A)
									moh(1, i(125895)),	-- Warmongering Gladiator's Armbands of Cruelty (A)
									moh(1, i(125894)),	-- Warmongering Gladiator's Armbands of Prowess (A)
									moh(1, i(125896)),	-- Warmongering Gladiator's Armbands of Victory (A)
									moh(1, i(125923)),	-- Warmongering Gladiator's Armplates of Cruelty (A)
									moh(1, i(125924)),	-- Warmongering Gladiator's Armplates of Prowess (A)
									moh(1, i(125925)),	-- Warmongering Gladiator's Armplates of Victory (A)
								}),
								n(HANDS, {
									moh(2, i(125815)),	-- Warmongering Gladiator's Gloves of Prowess (A)
									moh(2, i(125820)),	-- Warmongering Gladiator's Handguards of Cruelty (A)
									moh(2, i(125874)),	-- Warmongering Gladiator's Gloves (A)
									moh(2, i(125879)),	-- Warmongering Gladiator's Grips (A)
									moh(2, i(125898)),	-- Warmongering Gladiator's Gauntlets (A)
									moh(2, i(125903)),	-- Warmongering Gladiator's Gloves (A)
									moh(2, i(125927)),	-- Warmongering Gladiator's Plate Gloves (A)
									moh(2, i(125932)),	-- Warmongering Gladiator's Plate Grips (A)
								}),
								n(WAIST, {
									moh(1, i(125806)),	-- Warmongering Gladiator's Cord of Cruelty (A)
									moh(1, i(125807)),	-- Warmongering Gladiator's Cord of Prowess (A)
									moh(1, i(125808)),	-- Warmongering Gladiator's Cord of Victory (A)
									moh(1, i(125865)),	-- Warmongering Gladiator's Belt of Cruelty (A)
									moh(1, i(125864)),	-- Warmongering Gladiator's Belt of Prowess (A)
									moh(1, i(125866)),	-- Warmongering Gladiator's Belt of Victory (A)
									moh(1, i(125888)),	-- Warmongering Gladiator's Waistguard of Cruelty (A)
									moh(1, i(125889)),	-- Warmongering Gladiator's Waistguard of Prowess (A)
									moh(1, i(125890)),	-- Warmongering Gladiator's Waistguard of Victory (A)
									moh(1, i(125917)),	-- Warmongering Gladiator's Girdle of Cruelty (A)
									moh(1, i(125918)),	-- Warmongering Gladiator's Girdle of Prowess (A)
									moh(1, i(125919)),	-- Warmongering Gladiator's Girdle of Victory (A)
								}),
								n(LEGS, {
									moh(3, i(125817)),	-- Warmongering Gladiator's Leggings of Prowess (A)
									moh(3, i(125822)),	-- Warmongering Gladiator's Trousers of Cruelty (A)
									moh(3, i(125881)),	-- Warmongering Gladiator's Leggings (A)
									moh(3, i(125876)),	-- Warmongering Gladiator's Legguards (A)
									moh(3, i(125900)),	-- Warmongering Gladiator's Leggings (A)
									moh(3, i(125905)),	-- Warmongering Gladiator's Leggings (A)
									moh(3, i(125929)),	-- Warmongering Gladiator's Legplates (A)
									moh(3, i(125934)),	-- Warmongering Gladiator's Plate Leggings (A)
								}),
								n(FEET, {
									moh(2, i(125809)),	-- Warmongering Gladiator's Treads of Cruelty (A)
									moh(2, i(125810)),	-- Warmongering Gladiator's Treads of Prowess (A)
									moh(2, i(125811)),	-- Warmongering Gladiator's Treads of Victory (A)
									moh(2, i(125867)),	-- Warmongering Gladiator's Boots of Cruelty (A)
									moh(2, i(125868)),	-- Warmongering Gladiator's Boots of Prowess (A)
									moh(2, i(125869)),	-- Warmongering Gladiator's Boots of Victory (A)
									moh(2, i(125891)),	-- Warmongering Gladiator's Footguards of Cruelty (A)
									moh(2, i(125892)),	-- Warmongering Gladiator's Footguards of Prowess (A)
									moh(2, i(125893)),	-- Warmongering Gladiator's Footguards of Victory (A)
									moh(2, i(125920)),	-- Warmongering Gladiator's Warboots of Cruelty (A)
									moh(2, i(125921)),	-- Warmongering Gladiator's Warboots of Prowess (A)
									moh(2, i(125922)),	-- Warmongering Gladiator's Warboots of Victory (A)
								}),
							},
						}),
						n(86176, {	-- Ingrid Blackingot <Primal Gladiator>
							["coord"] = { 55.0, 19.4, STORMSHIELD },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138631, {	-- Arsenal: Primal Gladiator's Weapons
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(5, i(115594)),	-- Primal Gladiator's Cleaver
									moh(5, i(115595)),	-- Primal Gladiator's Shanker
									moh(5, i(115596)),	-- Primal Gladiator's Ripper
									moh(5, i(115597)),	-- Primal Gladiator's Pummeler
									moh(5, i(115598)),	-- Primal Gladiator's Quickblade
									moh(5, i(115599)),	-- Primal Gladiator's Longbow
									moh(5, i(115601)),	-- Primal Gladiator's Rifle
									moh(5, i(115602)),	-- Primal Gladiator's Pike
									moh(5, i(115644)),	-- Primal Gladiator's Spellblade
									moh(5, i(115645)),	-- Primal Gladiator's Gavel
									moh(5, i(115646)),	-- Primal Gladiator's Mageblade
									moh(5, i(115647)),	-- Primal Gladiator's Baton of Light
									moh(5, i(115648)),	-- Primal Gladiator's Touch of Defeat
									moh(5, i(115649)),	-- Primal Gladiator's Battle Staff
									moh(5, i(115650)),	-- Primal Gladiator's Energy Staff
									moh(2, i(115659)),	-- Primal Gladiator's Endgame
									moh(2, i(115660)),	-- Primal Gladiator's Reprieve
									moh(2, i(115666)),	-- Primal Gladiator's Redoubt
									moh(2, i(115667)),	-- Primal Gladiator's Barrier
									moh(5, i(115725)),	-- Primal Gladiator's Hacker
									moh(5, i(115726)),	-- Primal Gladiator's Render
									moh(5, i(115727)),	-- Primal Gladiator's Bonecracker
									moh(5, i(115728)),	-- Primal Gladiator's Slicer
									moh(5, i(115729)),	-- Primal Gladiator's Decapitator
									moh(5, i(115730)),	-- Primal Gladiator's Bonegrinder
									moh(5, i(115731)),	-- Primal Gladiator's Greatsword
									moh(2, i(115748)),	-- Primal Gladiator's Shield Wall
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138557, {	-- Ensemble: Primal Gladiator's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115629)),	-- Primal Gladiator's Dreadplate Chestpiece
									moh(2, i(115630)),	-- Primal Gladiator's Dreadplate Gauntlets
									moh(3, i(115631)),	-- Primal Gladiator's Dreadplate Helm
									moh(3, i(115632)),	-- Primal Gladiator's Dreadplate Legguards
									moh(2, i(115633)),	-- Primal Gladiator's Dreadplate Shoulders
								}),
								cl(DRUID, {
									moh(12, iensemble(138565, {	-- Ensemble: Primal Gladiator's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115634)),	-- Primal Gladiator's Dragonhide Gloves (A)
									moh(3, i(115635)),	-- Primal Gladiator's Dragonhide Helm (A)
									moh(3, i(115636)),	-- Primal Gladiator's Dragonhide Legguards (A)
									moh(3, i(115637)),	-- Primal Gladiator's Dragonhide Robes (A)
									moh(2, i(115638)),	-- Primal Gladiator's Dragonhide Spaulders (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138563, {	-- Ensemble: Primal Gladiator's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115639)),	-- Primal Gladiator's Chain Armor
									moh(2, i(115640)),	-- Primal Gladiator's Chain Gauntlets
									moh(3, i(115641)),	-- Primal Gladiator's Chain Helm
									moh(3, i(115642)),	-- Primal Gladiator's Chain Leggings
									moh(2, i(115643)),	-- Primal Gladiator's Chain Spaulders
								}),
								cl(MAGE, {
									moh(12, iensemble(138571, {	-- Ensemble: Primal Gladiator's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115677)),	-- Primal Gladiator's Silk Handguards
									moh(3, i(115678)),	-- Primal Gladiator's Silk Cowl
									moh(3, i(115679)),	-- Primal Gladiator's Silk Trousers
									moh(3, i(115680)),	-- Primal Gladiator's Silk Robe
									moh(2, i(115681)),	-- Primal Gladiator's Silk Amice
								}),
								cl(MONK, {
									moh(12, iensemble(138567, {	-- Ensemble: Primal Gladiator's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115691)),	-- Primal Gladiator's Ironskin Gloves
									moh(3, i(115692)),	-- Primal Gladiator's Ironskin Helm
									moh(3, i(115693)),	-- Primal Gladiator's Ironskin Legguards
									moh(2, i(115694)),	-- Primal Gladiator's Ironskin Spaulders
									moh(3, i(115695)),	-- Primal Gladiator's Ironskin Tunic
								}),
								cl(PALADIN, {
									moh(12, iensemble(138559, {	-- Ensemble: Primal Gladiator's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115696)),	-- Primal Gladiator's Scaled Chestpiece
									moh(2, i(115697)),	-- Primal Gladiator's Scaled Gauntlets
									moh(3, i(115698)),	-- Primal Gladiator's Scaled Helm
									moh(3, i(115699)),	-- Primal Gladiator's Scaled Legguards
									moh(2, i(115700)),	-- Primal Gladiator's Scaled Shoulders
								}),
								cl(PRIEST, {
									moh(12, iensemble(138573, {	-- Ensemble: Primal Gladiator's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115710)),	-- Primal Gladiator's Satin Gloves
									moh(3, i(115711)),	-- Primal Gladiator's Satin Hood
									moh(3, i(115712)),	-- Primal Gladiator's Satin Leggings
									moh(3, i(115713)),	-- Primal Gladiator's Satin Robe
									moh(2, i(115714)),	-- Primal Gladiator's Satin Mantle
								}),
								cl(ROGUE, {
									moh(12, iensemble(138569, {	-- Ensemble: Primal Gladiator's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115715)),	-- Primal Gladiator's Leather Tunic
									moh(2, i(115716)),	-- Primal Gladiator's Leather Gloves
									moh(3, i(115717)),	-- Primal Gladiator's Leather Helm
									moh(3, i(115718)),	-- Primal Gladiator's Leather Legguards
									moh(2, i(115719)),	-- Primal Gladiator's Leather Spaulders
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138561, {	-- Ensemble: Primal Gladiator's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115720)),	-- Primal Gladiator's Ringmail Armor
									moh(2, i(115721)),	-- Primal Gladiator's Ringmail Gauntlets
									moh(3, i(115722)),	-- Primal Gladiator's Ringmail Helm
									moh(3, i(115723)),	-- Primal Gladiator's Ringmail Leggings
									moh(2, i(115724)),	-- Primal Gladiator's Ringmail Spaulders
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138575, {	-- Ensemble: Primal Gladiator's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(115761)),	-- Primal Gladiator's Felweave Handguards
									moh(3, i(115762)),	-- Primal Gladiator's Felweave Cowl
									moh(3, i(115763)),	-- Primal Gladiator's Felweave Trousers
									moh(3, i(115764)),	-- Primal Gladiator's Felweave Raiment
									moh(2, i(115765)),	-- Primal Gladiator's Felweave Amice
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138555, {	-- Ensemble: Primal Gladiator's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(115766)),	-- Primal Gladiator's Plate Chestpiece
									moh(2, i(115767)),	-- Primal Gladiator's Plate Gauntlets
									moh(3, i(115768)),	-- Primal Gladiator's Plate Helm
									moh(3, i(115769)),	-- Primal Gladiator's Plate Legguards
									moh(2, i(115770)),	-- Primal Gladiator's Plate Shoulders
								}),
								n(HEAD, {
									moh(3, i(115743)),	-- Primal Gladiator's Plate Visor
									moh(3, i(115738)),	-- Primal Gladiator's Plate Helmet
									moh(3, i(115790)),	-- Primal Gladiator's Coif
									moh(3, i(115780)),	-- Primal Gladiator's Helm
									moh(3, i(115785)),	-- Primal Gladiator's Headcover
									moh(3, i(115775)),	-- Primal Gladiator's Helm
									moh(3, i(115616)),	-- Primal Gladiator's Cowl of Cruelty
									moh(3, i(115611)),	-- Primal Gladiator's Hood of Prowess
								}),
								n(SHOULDER, {
									moh(2, i(115614)),	-- Primal Gladiator's Amice of Prowess
									moh(2, i(115745)),	-- Primal Gladiator's Plate Pauldrons
									moh(2, i(115740)),	-- Primal Gladiator's Shoulderplates
									moh(2, i(115792)),	-- Primal Gladiator's Pauldrons
									moh(2, i(115782)),	-- Primal Gladiator's Spaulders
									moh(2, i(115787)),	-- Primal Gladiator's Pauldrons
									moh(2, i(115777)),	-- Primal Gladiator's Spaulders
									moh(2, i(115619)),	-- Primal Gladiator's Mantle of Cruelty
								}),
								n(CHEST, {
									moh(3, i(115613)),	-- Primal Gladiator's Robes of Prowess
									moh(3, i(115618)),	-- Primal Gladiator's Raiment of Cruelty
									moh(3, i(115783)),	-- Primal Gladiator's Chestguard
									moh(3, i(115773)),	-- Primal Gladiator's Tunic
									moh(3, i(115778)),	-- Primal Gladiator's Armor
									moh(3, i(115788)),	-- Primal Gladiator's Chestguard
									moh(3, i(115736)),	-- Primal Gladiator's Plate Breastplate
									moh(3, i(115741)),	-- Primal Gladiator's Plate Chestguard
								}),
								n(HANDS, {
									moh(2, i(115742)),	-- Primal Gladiator's Plate Grips
									moh(2, i(115737)),	-- Primal Gladiator's Plate Gloves
									moh(2, i(115789)),	-- Primal Gladiator's Gloves
									moh(2, i(115779)),	-- Primal Gladiator's Gauntlets
									moh(2, i(115784)),	-- Primal Gladiator's Grips
									moh(2, i(115774)),	-- Primal Gladiator's Gloves
									moh(2, i(115615)),	-- Primal Gladiator's Handguards of Cruelty
									moh(2, i(115610)),	-- Primal Gladiator's Gloves of Prowess
								}),
								n(LEGS, {
									moh(3, i(115612)),	-- Primal Gladiator's Leggings of Prowess
									moh(3, i(115744)),	-- Primal Gladiator's Plate Leggings
									moh(3, i(115739)),	-- Primal Gladiator's Legplates
									moh(3, i(115791)),	-- Primal Gladiator's Leggings
									moh(3, i(115781)),	-- Primal Gladiator's Leggings
									moh(3, i(115786)),	-- Primal Gladiator's Leggings
									moh(3, i(115776)),	-- Primal Gladiator's Legguards
									moh(3, i(115617)),	-- Primal Gladiator's Trousers of Cruelty
								}),
								n(BACK, {
									moh(1, i(115651)),	-- Primal Gladiator's Drape of Cruelty
									moh(1, i(115652)),	-- Primal Gladiator's Drape of Prowess
									moh(1, i(115653)),	-- Primal Gladiator's Drape of Meditation
									moh(1, i(115654)),	-- Primal Gladiator's Drape of Contemplation
									moh(1, i(115604)),	-- Primal Gladiator's Cape of Cruelty
									moh(1, i(115605)),	-- Primal Gladiator's Cape of Prowess
									moh(1, i(115732)),	-- Primal Gladiator's Cloak of Cruelty
									moh(1, i(115733)),	-- Primal Gladiator's Cloak of Prowess
									moh(1, i(120100)),	-- Primal Gladiator's Cloak of Endurance
								}),
								n(WRIST, {
									moh(1, i(115626)),	-- Primal Gladiator's Cuffs of Prowess
									moh(1, i(115627)),	-- Primal Gladiator's Cuffs of Cruelty
									moh(1, i(115628)),	-- Primal Gladiator's Cuffs of Victory
									moh(1, i(115707)),	-- Primal Gladiator's Armplates of Cruelty
									moh(1, i(115708)),	-- Primal Gladiator's Armplates of Prowess
									moh(1, i(115709)),	-- Primal Gladiator's Armplates of Victory
									moh(1, i(115688)),	-- Primal Gladiator's Armbands of Prowess
									moh(1, i(115689)),	-- Primal Gladiator's Armbands of Cruelty
									moh(1, i(115690)),	-- Primal Gladiator's Armbands of Victory
									moh(1, i(115674)),	-- Primal Gladiator's Bindings of Cruelty
									moh(1, i(115675)),	-- Primal Gladiator's Bindings of Prowess
									moh(1, i(115676)),	-- Primal Gladiator's Bindings of Victory
								}),
								n(WAIST, {
									moh(1, i(115682)),	-- Primal Gladiator's Waistguard of Cruelty
									moh(1, i(115683)),	-- Primal Gladiator's Waistguard of Prowess
									moh(1, i(115684)),	-- Primal Gladiator's Waistguard of Victory
									moh(1, i(115668)),	-- Primal Gladiator's Belt of Prowess
									moh(1, i(115669)),	-- Primal Gladiator's Belt of Cruelty
									moh(1, i(115670)),	-- Primal Gladiator's Belt of Victory
									moh(1, i(115701)),	-- Primal Gladiator's Girdle of Cruelty
									moh(1, i(115702)),	-- Primal Gladiator's Girdle of Prowess
									moh(1, i(115703)),	-- Primal Gladiator's Girdle of Victory
									moh(1, i(115620)),	-- Primal Gladiator's Cord of Cruelty
									moh(1, i(115621)),	-- Primal Gladiator's Cord of Prowess
									moh(1, i(115622)),	-- Primal Gladiator's Cord of Victory
								}),
								n(FEET, {
									moh(2, i(115623)),	-- Primal Gladiator's Treads of Cruelty
									moh(2, i(115624)),	-- Primal Gladiator's Treads of Prowess
									moh(2, i(115625)),	-- Primal Gladiator's Treads of Victory
									moh(2, i(115704)),	-- Primal Gladiator's Warboots of Cruelty
									moh(2, i(115705)),	-- Primal Gladiator's Warboots of Prowess
									moh(2, i(115706)),	-- Primal Gladiator's Warboots of Victory
									moh(2, i(115671)),	-- Primal Gladiator's Boots of Cruelty
									moh(2, i(115672)),	-- Primal Gladiator's Boots of Prowess
									moh(2, i(115673)),	-- Primal Gladiator's Boots of Victory
									moh(2, i(115685)),	-- Primal Gladiator's Footguards of Cruelty
									moh(2, i(115686)),	-- Primal Gladiator's Footguards of Prowess
									moh(2, i(115687)),	-- Primal Gladiator's Footguards of Victory
								}),
							},
						}),
						n(87063, {	-- Joao Calhandro <Inscription Recipes>
							["coord"] = { 62.0, 33.5, STORMSHIELD },
							["groups"] = {
								i(111923, {	-- Secret of Draenor Inscription **Teaches laughing tarot, ocean tarot, savage tarot, war paints, card of omens, research warbinders ink, secrets of draenor inscription, Warbinder's ink
									i(120136),		-- Recipe: Secrets of Draenor Inscription
									recipe(169081),	-- War Paints
									recipe(167950),	-- Research: Warbinder's Ink
									recipe(175390),	-- Laughing Tarot
									recipe(175389),	-- Ocean Tarot
									recipe(175392),	-- Savage Tarot
									recipe(166669),	-- Card of Omens
									recipe(178497),	-- Warbinder's Ink
								}),
								i(118605, {	-- Technique: Crystalfire Spellstaff
									["cost"] = { { "i", 119297, 1 }, },	-- 1x Secret of Draenor Inscription
								}),
								i(118606, {	-- Technique: Darkmoon Card of Draenor
									["cost"] = { { "i", 119297, 5 }, },	-- 5x Secret of Draenor Inscription
								}),
								i(120265, {	-- Technique: Ensorcelled Tarot
									["collectible"] = false,
									["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
									["cost"] = { { "i", 119297, 5 }, },	-- 5x Secret of Draenor Inscription
								}),
								i(118607, {	-- Technique: Etched-Blade Warstaff
									["cost"] = { { "i", 119297, 1 }, },	-- 1x Secret of Draenor Inscription
								}),
								i(202236, {	-- Technique: Impressive Weapon Crystal
									["cost"] = { { "i", 119297, 5 }, },	-- 5x Secret of Draenor Inscription
									["timeline"] = { ADDED_10_0_5 },
								}),
								i(202237, {	-- Technique: Remarkable Weapon Crystal
									["cost"] = { { "i", 119297, 5 }, },	-- 5x Secret of Draenor Inscription
									["timeline"] = { ADDED_10_0_5 },
								}),
								i(118613, {	-- Technique: Shadowtome
									["cost"] = { { "i", 119297, 1 }, },	-- 1x Secret of Draenor Inscription
								}),
								i(118614, {	-- Technique: Volatile Crystal
									["cost"] = { { "i", 119297, 1 }, },	-- 1x Secret of Draenor Inscription
								}),
								i(118615, {	-- Technique: Warmaster's Firestick
									["cost"] = { { "i", 119297, 1 }, },	-- 1x Secret of Draenor Inscription
								}),
								i(118610, {	-- Technique: Weapon Crystal
									["collectible"] = false,
									["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
									["cost"] = { { "i", 119297, 5 }, },	-- 5x Secret of Draenor Inscription
									["timeline"] = { ADDED_6_0_2, REMOVED_10_0_5 },
								}),
								i(118608, { ["timeline"] = { CREATED_6_0_2 }}),	-- Technique: Greater Weapon Crystal
								i(120266, { ["timeline"] = { CREATED_6_0_2 }}),	-- Technique: Greater Ensorcelled Tarot
								i(122548, { ["timeline"] = { CREATED_6_1_0 }}),	-- Technique: Powerful Ensorcelled Tarot
								i(122553, { ["timeline"] = { CREATED_6_1_0 }}),	-- Technique: Powerful Weapon Crystal
							},
						}),
						n(85849, {	-- Kinkade Jakobs <Blueprints Trader>
							["coord"] = { 29.7, 52.9, STORMSHIELD },
							["groups"] = {
								i(111929, {	-- Alchemy Lab, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111968, {	-- Barn, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111970, {	-- Barracks, Level 2
									["cost"] = { { "i", 116395, 1 }, },	-- Comprehensive Outpost Construction Guide
								}),
								i(111966, {	-- Dwarven Bunker, Level 2
									["cost"] = { { "i", 116395, 1 }, },	-- Comprehensive Outpost Construction Guide
								}),
								i(111972, {	-- Enchanter's Study, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(109256, {	-- Engineering Works, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111974, {	-- Gem Boutique, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111980, {	-- Gladiator's Sanctum, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111984, {	-- Gnomish Gearworks, Level 2
									["cost"] = { { "i", 116395, 1 }, },	-- Comprehensive Outpost Construction Guide
								}),
								i(109254, {	-- Lumber Mill, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(107694, {	-- Lunarfall Inn, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(109062, {	-- Mage Tower, Level 2
									["cost"] = { { "i", 116395, 1 }, },	-- Comprehensive Outpost Construction Guide
								}),
								i(111976, {	-- Salvage Yard, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111978, {	-- Scribe's Quarters, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(112002, {	-- Stables, Level 2
									["cost"] = { { "i", 116395, 1 }, },	-- Comprehensive Outpost Construction Guide
								}),
								i(111982, {	-- Storehouse, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111992, {	-- Tailoring Emporium, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111990, {	-- The Forge, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111988, {	-- The Tannery, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
								i(111986, {	-- Trading Post, Level 2
									["cost"] = { { "i", 116394, 1 }, },	-- Outpost Building Assembly Notes
								}),
							},
						}),
						n(93915, {	-- Li "Crunchpaw" Tsang <Warmongering Combatant>
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 54.8, 18.8, STORMSHIELD },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138628, {	-- Arsenal: Warmongering Combatant's Weapons (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126065)),	-- Warmongering Combatant's Barrier (A)
									moh(5, i(126045)),	-- Warmongering Combatant's Baton of Light (A)
									moh(5, i(126047)),	-- Warmongering Combatant's Battle Staff (A)
									moh(5, i(126131)),	-- Warmongering Combatant's Bonecracker (A)
									moh(5, i(126134)),	-- Warmongering Combatant's Bonegrinder (A)
									moh(5, i(127379)),	-- Warmongering Combatant's Chopper (A)
									moh(5, i(125999)),	-- Warmongering Combatant's Cleaver (A)
									moh(5, i(126133)),	-- Warmongering Combatant's Decapitator (A)
									moh(2, i(126057)),	-- Warmongering Combatant's Endgame (A)
									moh(5, i(126048)),	-- Warmongering Combatant's Energy Staff (A)
									moh(5, i(126043)),	-- Warmongering Combatant's Gavel (A)
									moh(5, i(126135)),	-- Warmongering Combatant's Greatsword (A)
									moh(5, i(126129)),	-- Warmongering Combatant's Hacker (A)
									moh(5, i(126005)),	-- Warmongering Combatant's Heavy Crossbow (A)
									moh(5, i(126004)),	-- Warmongering Combatant's Longbow (A)
									moh(5, i(126044)),	-- Warmongering Combatant's Mageblade (A)
									moh(5, i(126007)),	-- Warmongering Combatant's Pike (A)
									moh(5, i(126002)),	-- Warmongering Combatant's Pummeler (A)
									moh(5, i(126003)),	-- Warmongering Combatant's Quickblade (A)
									moh(2, i(126064)),	-- Warmongering Combatant's Redoubt (A)
									moh(5, i(126130)),	-- Warmongering Combatant's Render (A)
									moh(2, i(126058)),	-- Warmongering Combatant's Reprieve (A)
									moh(5, i(126006)),	-- Warmongering Combatant's Rifle (A)
									moh(5, i(126001)),	-- Warmongering Combatant's Ripper (A)
									moh(5, i(126000)),	-- Warmongering Combatant's Shanker (A)
									moh(2, i(126143)),	-- Warmongering Combatant's Shield Wall (A)
									moh(5, i(126132)),	-- Warmongering Combatant's Slicer (A)
									moh(5, i(126042)),	-- Warmongering Combatant's Spellblade (A)
									moh(5, i(126008)),	-- Warmongering Combatant's Staff (A)
									moh(5, i(126046)),	-- Warmongering Combatant's Touch of Defeat (A)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138589, {	-- Ensemble: Warmongering Combatant's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126027)),	-- Warmongering Combatant's Dreadplate Chestpiece (A)
									moh(2, i(126028)),	-- Warmongering Combatant's Dreadplate Gauntlets (A)
									moh(3, i(126029)),	-- Warmongering Combatant's Dreadplate Helm (A)
									moh(3, i(126030)),	-- Warmongering Combatant's Dreadplate Legguards (A)
									moh(2, i(126031)),	-- Warmongering Combatant's Dreadplate Shoulders (A)
								}),
								cl(DRUID, {
									moh(12, iensemble(138593, {	-- Ensemble: Warmongering Combatant's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126032)),	-- Warmongering Combatant's Dragonhide Gloves (A)
									moh(3, i(126033)),	-- Warmongering Combatant's Dragonhide Helm (A)
									moh(3, i(126034)),	-- Warmongering Combatant's Dragonhide Legguards (A)
									moh(2, i(126036)),	-- Warmongering Combatant's Dragonhide Spaulders (A)
									moh(3, i(126035)),	-- Warmongering Combatant's Dragonhide Tunic (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138537, {	-- Ensemble: Warmongering Combatant's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126037)),	-- Warmongering Combatant's Chain Armor (A)
									moh(2, i(126038)),	-- Warmongering Combatant's Chain Gauntlets (A)
									moh(3, i(126039)),	-- Warmongering Combatant's Chain Helm (A)
									moh(3, i(126040)),	-- Warmongering Combatant's Chain Leggings (A)
									moh(2, i(126041)),	-- Warmongering Combatant's Chain Spaulders (A)
								}),
								cl(MAGE, {
									moh(12, iensemble(138539, {	-- Ensemble: Warmongering Combatant's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126081)),	-- Warmongering Combatant's Silk Amice (A)
									moh(2, i(126078)),	-- Warmongering Combatant's Silk Cowl (A)
									moh(2, i(126077)),	-- Warmongering Combatant's Silk Handguards (A)
									moh(3, i(126080)),	-- Warmongering Combatant's Silk Robe (A)
									moh(3, i(126079)),	-- Warmongering Combatant's Silk Trousers (A)
								}),
								cl(MONK, {
									moh(12, iensemble(138595, {	-- Ensemble: Warmongering Combatant's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126093)),	-- Warmongering Combatant's Ironskin Gloves (A)
									moh(3, i(126094)),	-- Warmongering Combatant's Ironskin Helm (A)
									moh(3, i(126095)),	-- Warmongering Combatant's Ironskin Legguards (A)
									moh(2, i(126096)),	-- Warmongering Combatant's Ironskin Spaulders (A)
									moh(3, i(126097)),	-- Warmongering Combatant's Ironskin Tunic (A)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138591, {	-- Ensemble: Warmongering Combatant's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126098)),	-- Warmongering Combatant's Scaled Chestpiece (A)
									moh(2, i(126099)),	-- Warmongering Combatant's Scaled Gauntlets (A)
									moh(3, i(126100)),	-- Warmongering Combatant's Scaled Helm (A)
									moh(3, i(126101)),	-- Warmongering Combatant's Scaled Legguards (A)
									moh(2, i(126102)),	-- Warmongering Combatant's Scaled Shoulders (A)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138541, {	-- Ensemble: Warmongering Combatant's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126114)),	-- Warmongering Combatant's Satin Gloves (A)
									moh(3, i(126115)),	-- Warmongering Combatant's Satin Hood (A)
									moh(3, i(126116)),	-- Warmongering Combatant's Satin Leggings (A)
									moh(2, i(126118)),	-- Warmongering Combatant's Satin Mantle (A)
									moh(3, i(126117)),	-- Warmongering Combatant's Satin Robe (A)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138597, {	-- Ensemble: Warmongering Combatant's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(126120)),	-- Warmongering Combatant's Leather Gloves (A)
									moh(3, i(126121)),	-- Warmongering Combatant's Leather Helm (A)
									moh(3, i(126122)),	-- Warmongering Combatant's Leather Legguards (A)
									moh(2, i(126123)),	-- Warmongering Combatant's Leather Spaulders (A)
									moh(3, i(126119)),	-- Warmongering Combatant's Leather Tunic (A)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138535, {	-- Ensemble: Warmongering Combatant's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126124)),	-- Warmongering Combatant's Ringmail Armor (A)
									moh(2, i(126128)),	-- Warmongering Combatant's Ringmail Spaulders (A)
									moh(3, i(126127)),	-- Warmongering Combatant's Ringmail Leggings (A)
									moh(3, i(126126)),	-- Warmongering Combatant's Ringmail Helm (A)
									moh(2, i(126125)),	-- Warmongering Combatant's Ringmail Gauntlets (A)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138543, {	-- Ensemble: Warmongering Combatant's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126171)),	-- Warmongering Combatant's Felweave Amice (A)
									moh(2, i(126168)),	-- Warmongering Combatant's Felweave Cowl (A)
									moh(3, i(126167)),	-- Warmongering Combatant's Felweave Handguards (A)
									moh(2, i(126170)),	-- Warmongering Combatant's Felweave Raiment (A)
									moh(3, i(126169)),	-- Warmongering Combatant's Felweave Trousers (A)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138587, {	-- Ensemble: Warmongering Combatant's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(126172)),	-- Warmongering Combatant's Plate Chestpiece (A)
									moh(2, i(126173)),	-- Warmongering Combatant's Plate Gauntlets (A)
									moh(3, i(126174)),	-- Warmongering Combatant's Plate Helm (A)
									moh(3, i(126175)),	-- Warmongering Combatant's Plate Legguards (A)
									moh(2, i(126176)),	-- Warmongering Combatant's Plate Shoulders (A)
								}),
								n(BACK, {
									moh(1, i(126009)),	-- Warmongering Combatant's Cape of Cruelty (A)
									moh(1, i(126010)),	-- Warmongering Combatant's Cape of Prowess (A)
									moh(1, i(126136)),	-- Warmongering Combatant's Cloak of Cruelty (A)
									moh(1, i(126163)),	-- Warmongering Combatant's Cloak of Endurance (A)
									moh(1, i(126137)),	-- Warmongering Combatant's Cloak of Prowess (A)
									moh(1, i(126052)),	-- Warmongering Combatant's Drape of Contemplation (A)
									moh(1, i(126049)),	-- Warmongering Combatant's Drape of Cruelty (A)
									moh(1, i(126051)),	-- Warmongering Combatant's Drape of Meditation (A)
									moh(1, i(126050)),	-- Warmongering Combatant's Drape of Prowess (A)
								}),
								n(WRIST, {
									moh(1, i(126021)),	-- Warmongering Combatant's Cuffs of Cruelty (A)
									moh(1, i(126020)),	-- Warmongering Combatant's Cuffs of Prowess (A)
									moh(1, i(126070)),	-- Warmongering Combatant's Bindings of Cruelty (A)
									moh(1, i(126071)),	-- Warmongering Combatant's Bindings of Prowess (A)
									moh(1, i(126087)),	-- Warmongering Combatant's Armbands of Cruelty (A)
									moh(1, i(126086)),	-- Warmongering Combatant's Armbands of Prowess (A)
									moh(1, i(126107)),	-- Warmongering Combatant's Armplates of Cruelty (A)
									moh(1, i(126108)),	-- Warmongering Combatant's Armplates of Prowess (A)
								}),
								n(WAIST, {
									moh(1, i(126016)),	-- Warmongering Combatant's Cord of Cruelty (A)
									moh(1, i(126017)),	-- Warmongering Combatant's Cord of Prowess (A)
									moh(1, i(126067)),	-- Warmongering Combatant's Belt of Cruelty (A)
									moh(1, i(126066)),	-- Warmongering Combatant's Belt of Prowess (A)
									moh(1, i(126082)),	-- Warmongering Combatant's Waistguard of Cruelty (A)
									moh(1, i(126083)),	-- Warmongering Combatant's Waistguard of Prowess (A)
									moh(1, i(126103)),	-- Warmongering Combatant's Girdle of Cruelty (A)
									moh(1, i(126104)),	-- Warmongering Combatant's Girdle of Prowess (A)
								}),
								n(FEET, {
									moh(2, i(126018)),	-- Warmongering Combatant's Treads of Cruelty (A)
									moh(2, i(126019)),	-- Warmongering Combatant's Treads of Prowess (A)
									moh(2, i(126068)),	-- Warmongering Combatant's Boots of Cruelty (A)
									moh(2, i(126069)),	-- Warmongering Combatant's Boots of Prowess (A)
									moh(2, i(126084)),	-- Warmongering Combatant's Footguards of Cruelty (A)
									moh(2, i(126085)),	-- Warmongering Combatant's Footguards of Prowess (A)
									moh(2, i(126105)),	-- Warmongering Combatant's Warboots of Cruelty (A)
									moh(2, i(126106)),	-- Warmongering Combatant's Warboots of Prowess (A)
								}),
							},
						}),
						n(85946, {	-- Shadow Sage Brakoss <Arakkoa Outcasts Quartermaster>
							["coord"] = { 44.5, 75.0, STORMSHIELD },
							["groups"] = bubbleDownClassicRep(FACTION_ARAKKOA_OUTCASTS, {
								{		-- Neutral
								}, {	-- Friendly
									i(118666, {	-- Arakkoa Elixir
										["cost"] = { { "c", 823, 1 }, },	-- 1x Apexis Crystal
									}),
								}, {	-- Honored
									i(118682, {	-- Saberon Protector
										["cost"] = 5000000,	-- 500g
									}),
								}, {	-- Revered
									i(119143, {	-- Son of Sethe (PET!)
										["cost"] = {
											{ "c", 823, 2000 },	-- 2,000x Apexis Crystal
											{ "g", 10000000 },	-- 1,000g
										},
									}),
								}, {	-- Exalted
									i(119136),	-- Arakkoa Outcasts Tabard
									i(116772, {	-- Shadowmane Charger (MOUNT!)
										["cost"] = {
											{ "c", 823, 5000 },	-- 5,000x Apexis Crystal
											{ "g", 50000000 },	-- 5,000g
										},
									}),
								},
							}),
						}),
						n(93906, {	-- Slugg Spinbolt <Wild Combatant>
							["coord"] = { 54.6, 17.6, STORMSHIELD },
							["groups"] = {
								n(WEAPONS, {
									moh(80, iensemble(138630, {	-- Arsenal: Wild Combatant's Weapons (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124951)),	-- Wild Combatant's Barrier (A)
									moh(5, i(124931)),	-- Wild Combatant's Baton of Light (A)
									moh(5, i(124933)),	-- Wild Combatant's Battle Staff (A)
									moh(5, i(125017)),	-- Wild Combatant's Bonecracker (A)
									moh(5, i(125020)),	-- Wild Combatant's Bonegrinder (A)
									moh(5, i(127381)),	-- Wild Combatant's Chopper (A)
									moh(5, i(124885)),	-- Wild Combatant's Cleaver (A)
									moh(5, i(125019)),	-- Wild Combatant's Decapitator (A)
									moh(2, i(124943)),	-- Wild Combatant's Endgame (A)
									moh(5, i(124934)),	-- Wild Combatant's Energy Staff (A)
									moh(5, i(124929)),	-- Wild Combatant's Gavel (A)
									moh(5, i(125021)),	-- Wild Combatant's Greatsword (A)
									moh(5, i(125015)),	-- Wild Combatant's Hacker (A)
									moh(5, i(124891)),	-- Wild Combatant's Heavy Crossbow (A)
									moh(5, i(124890)),	-- Wild Combatant's Longbow (A)
									moh(5, i(124930)),	-- Wild Combatant's Mageblade (A)
									moh(5, i(124893)),	-- Wild Combatant's Pike (A)
									moh(5, i(124888)),	-- Wild Combatant's Pummeler (A)
									moh(5, i(124889)),	-- Wild Combatant's Quickblade (A)
									moh(2, i(124950)),	-- Wild Combatant's Redoubt (A)
									moh(5, i(125016)),	-- Wild Combatant's Render (A)
									moh(2, i(124944)),	-- Wild Combatant's Reprieve (A)
									moh(5, i(124892)),	-- Wild Combatant's Rifle (A)
									moh(5, i(124887)),	-- Wild Combatant's Ripper (A)
									moh(5, i(124886)),	-- Wild Combatant's Shanker (A)
									moh(2, i(125029)),	-- Wild Combatant's Shield Wall (A)
									moh(5, i(125018)),	-- Wild Combatant's Slicer (A)
									moh(5, i(124928)),	-- Wild Combatant's Spellblade (A)
									moh(5, i(124894)),	-- Wild Combatant's Staff (A)
									moh(5, i(124932)),	-- Wild Combatant's Touch of Defeat (A)
								}),
								cl(DEATHKNIGHT, {
									moh(12, iensemble(138601, {	-- Ensemble: Wild Combatant's Dreadplate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124913)),	-- Wild Combatant's Dreadplate Chestpiece (A)
									moh(2, i(124914)),	-- Wild Combatant's Dreadplate Gauntlets (A)
									moh(3, i(124915)),	-- Wild Combatant's Dreadplate Helm (A)
									moh(3, i(124916)),	-- Wild Combatant's Dreadplate Legguards (A)
									moh(2, i(124917)),	-- Wild Combatant's Dreadplate Shoulders (A)
								}),
								cl(DRUID, {
									moh(12, iensemble(138605, {	-- Ensemble: Wild Combatant's Dragonhide Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124918)),	-- Wild Combatant's Dragonhide Gloves (A)
									moh(3, i(124919)),	-- Wild Combatant's Dragonhide Helm (A)
									moh(3, i(124920)),	-- Wild Combatant's Dragonhide Legguards (A)
									moh(3, i(124921)),	-- Wild Combatant's Dragonhide Tunic (A)
									moh(2, i(124922)),	-- Wild Combatant's Dragonhide Spaulders (A)
								}),
								cl(HUNTER, {
									moh(12, iensemble(138547, {	-- Ensemble: Wild Combatant's Chain Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124923)),	-- Wild Combatant's Chain Armor (A)
									moh(2, i(124924)),	-- Wild Combatant's Chain Gauntlets (A)
									moh(3, i(124925)),	-- Wild Combatant's Chain Helm (A)
									moh(3, i(124926)),	-- Wild Combatant's Chain Leggings (A)
									moh(2, i(124927)),	-- Wild Combatant's Chain Spaulders (A)
								}),
								cl(MAGE, {
									moh(12, iensemble(138549, {	-- Ensemble: Wild Combatant's Silk Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124967)),	-- Wild Combatant's Silk Amice (A)
									moh(3, i(124964)),	-- Wild Combatant's Silk Cowl (A)
									moh(2, i(124963)),	-- Wild Combatant's Silk Handguards (A)
									moh(3, i(124966)),	-- Wild Combatant's Silk Robe (A)
									moh(3, i(124965)),	-- Wild Combatant's Silk Trousers (A)
								}),
								cl(MONK, {
									moh(12, iensemble(138607, {	-- Ensemble: Wild Combatant's Ironskin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(124979)),	-- Wild Combatant's Ironskin Gloves (A)
									moh(3, i(124980)),	-- Wild Combatant's Ironskin Helm (A)
									moh(3, i(124981)),	-- Wild Combatant's Ironskin Legguards (A)
									moh(2, i(124982)),	-- Wild Combatant's Ironskin Spaulders (A)
									moh(3, i(124983)),	-- Wild Combatant's Ironskin Tunic (A)
								}),
								cl(PALADIN, {
									moh(12, iensemble(138603, {	-- Ensemble: Wild Combatant's Scaled Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(124984)),	-- Wild Combatant's Scaled Chestpiece (A)
									moh(2, i(124985)),	-- Wild Combatant's Scaled Gauntlets (A)
									moh(3, i(124986)),	-- Wild Combatant's Scaled Helm (A)
									moh(3, i(124987)),	-- Wild Combatant's Scaled Legguards (A)
									moh(2, i(124988)),	-- Wild Combatant's Scaled Shoulders (A)
								}),
								cl(PRIEST, {
									moh(12, iensemble(138551, {	-- Ensemble: Wild Combatant's Satin Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125000)),	-- Wild Combatant's Satin Gloves (A)
									moh(3, i(125001)),	-- Wild Combatant's Satin Hood (A)
									moh(3, i(125002)),	-- Wild Combatant's Satin Leggings (A)
									moh(2, i(125003)),	-- Wild Combatant's Satin Mantle (A)
									moh(3, i(125004)),	-- Wild Combatant's Satin Robe (A)
								}),
								cl(ROGUE, {
									moh(12, iensemble(138609, {	-- Ensemble: Wild Combatant's Leather Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125006)),	-- Wild Combatant's Leather Gloves (A)
									moh(3, i(125007)),	-- Wild Combatant's Leather Helm (A)
									moh(3, i(125008)),	-- Wild Combatant's Leather Legguards (A)
									moh(2, i(125009)),	-- Wild Combatant's Leather Spaulders (A)
									moh(3, i(125005)),	-- Wild Combatant's Leather Tunic (A)
								}),
								cl(SHAMAN, {
									moh(12, iensemble(138545, {	-- Ensemble: Wild Combatant's Ringmail Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125010)),	-- Wild Combatant's Ringmail Armor (A)
									moh(2, i(125011)),	-- Wild Combatant's Ringmail Gauntlets (A)
									moh(3, i(125012)),	-- Wild Combatant's Ringmail Helm (A)
									moh(3, i(125013)),	-- Wild Combatant's Ringmail Leggings (A)
									moh(2, i(125014)),	-- Wild Combatant's Ringmail Spaulders (A)
								}),
								cl(WARLOCK, {
									moh(12, iensemble(138553, {	-- Ensemble: Wild Combatant's Felweave Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(2, i(125057)),	-- Wild Combatant's Felweave Amice (A)
									moh(3, i(125054)),	-- Wild Combatant's Felweave Cowl (A)
									moh(2, i(125053)),	-- Wild Combatant's Felweave Handguards (A)
									moh(3, i(125056)),	-- Wild Combatant's Felweave Raiment (A)
									moh(3, i(125055)),	-- Wild Combatant's Felweave Trousers (A)
								}),
								cl(WARRIOR, {
									moh(12, iensemble(138599, {	-- Ensemble: Wild Combatant's Plate Armor (A)
										["timeline"] = { ADDED_7_0_3 },
									})),
									moh(3, i(125058)),	-- Wild Combatant's Plate Chestpiece (A)
									moh(2, i(125059)),	-- Wild Combatant's Plate Gauntlets (A)
									moh(3, i(125060)),	-- Wild Combatant's Plate Helm (A)
									moh(3, i(125061)),	-- Wild Combatant's Plate Legguards (A)
									moh(2, i(125062)),	-- Wild Combatant's Plate Shoulders (A)
								}),
								n(BACK, {
									moh(1, i(124895)),	-- Wild Combatant's Cape of Cruelty (A)
									moh(1, i(124896)),	-- Wild Combatant's Cape of Prowess (A)
									moh(1, i(125022)),	-- Wild Combatant's Cloak of Cruelty (A)
									moh(1, i(125049)),	-- Wild Combatant's Cloak of Endurance (A)
									moh(1, i(125023)),	-- Wild Combatant's Cloak of Prowess (A)
									moh(1, i(124938)),	-- Wild Combatant's Drape of Contemplation (A)
									moh(1, i(124935)),	-- Wild Combatant's Drape of Cruelty (A)
									moh(1, i(124937)),	-- Wild Combatant's Drape of Meditation (A)
									moh(1, i(124936)),	-- Wild Combatant's Drape of Prowess (A)
								}),
								n(WRIST, {
									moh(1, i(124907)),	-- Wild Combatant's Cuffs of Cruelty (A)
									moh(1, i(124906)),	-- Wild Combatant's Cuffs of Prowess (A)
									moh(1, i(124956)),	-- Wild Combatant's Bindings of Cruelty (A)
									moh(1, i(124957)),	-- Wild Combatant's Bindings of Prowess (A)
									moh(1, i(124973)),	-- Wild Combatant's Armbands of Cruelty (A)
									moh(1, i(124972)),	-- Wild Combatant's Armbands of Prowess (A)
									moh(1, i(124993)),	-- Wild Combatant's Armplates of Cruelty (A)
									moh(1, i(124994)),	-- Wild Combatant's Armplates of Prowess (A)
								}),
								n(WAIST, {
									moh(1, i(124902)),	-- Wild Combatant's Cord of Cruelty (A)
									moh(1, i(124903)),	-- Wild Combatant's Cord of Prowess (A)
									moh(1, i(124953)),	-- Wild Combatant's Belt of Cruelty (A)
									moh(1, i(124952)),	-- Wild Combatant's Belt of Prowess (A)
									moh(1, i(124968)),	-- Wild Combatant's Waistguard of Cruelty (A)
									moh(1, i(124969)),	-- Wild Combatant's Waistguard of Prowess (A)
									moh(1, i(124989)),	-- Wild Combatant's Girdle of Cruelty (A)
									moh(1, i(124990)),	-- Wild Combatant's Girdle of Prowess (A)
								}),
								n(FEET, {
									moh(2, i(124904)),	-- Wild Combatant's Treads of Cruelty (A)
									moh(2, i(124905)),	-- Wild Combatant's Treads of Prowess (A)
									moh(2, i(124954)),	-- Wild Combatant's Boots of Cruelty (A)
									moh(2, i(124955)),	-- Wild Combatant's Boots of Prowess (A)
									moh(2, i(124970)),	-- Wild Combatant's Footguards of Cruelty (A)
									moh(2, i(124971)),	-- Wild Combatant's Footguards of Prowess (A)
									moh(2, i(124991)),	-- Wild Combatant's Warboots of Cruelty (A)
									moh(2, i(124992)),	-- Wild Combatant's Warboots of Prowess (A)
								}),
							},
						}),
						n(85932, {	-- Vindicator Nuurem <Council of Exarchs Quartermaster>
							["coord"] = { 46.6, 76.7, STORMSHIELD },
							["groups"] = bubbleDownClassicRep(FACTION_COUNCIL_OF_EXARCHS, {
								{		-- Neutral
								}, {	-- Friendly
									i(118665, {	-- Exarch Elixir
										["cost"] = { { "c", 823, 1 }, },	-- 1x Apexis Crystal
									}),
								}, {	-- Honored
									i(115472, {	-- Permanent Time Bubble (TOY!)
										["cost"] = 10000000,	-- 1,000g
									}),
									i(118680, {	-- Tranquility of the Exarchs
										["cost"] = 5000000,	-- 500g
									}),
								}, {	-- Revered
									i(119162, {	-- Contract: Cleric Maluuf
										["cost"] = 50000000,	-- 5,000g
										["groups"] = {
											follower(459),	-- Cleric Maluuf
										},
									}),
									i(119142, {	-- Draenei Micro Defender (PET!)
										["cost"] = {
											{ "c", 823, 2000 },	-- 2,000x Apexis Crystal
											{ "g", 10000000 },	-- 1,000g
										},
									}),
									i(118663, {	-- Relic of Karabor
										["cost"] = 25000000,	-- 2,500g
									}),
								}, {	-- Exalted
									i(119135),	-- Council of Exarchs Tabard
									i(116664, {	-- Dusty Rockhide (MOUNT!)
										["cost"] = {
											{ "c", 823, 5000 },	-- 5,000x Apexis Crystal
											{ "g", 50000000 },	-- 5,000g
										},
									}),
								},
							}),
						}),
					},
				}),
			},
		}),
	}),
});
