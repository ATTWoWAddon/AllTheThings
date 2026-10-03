-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local PRIMEVAL_ESSENCE = 199211;

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansion(EXPANSION.DF, {
		["forcetimeline"] = { ADDED_10_0_2, REMOVED_10_0_2_LAUNCH },
	}),
	expansion(EXPANSION.DF, {
		n(ACHIEVEMENTS, {
			ach(16431, {	-- Against the Elements
				crit(55367, {
					["_npcs"] = { 185784 },	-- Unbridled Storm Lord
				}),
				crit(55368, {
					["_npcs"] = { 189954 },	-- Rumbling Earth Lord
				}),
				crit(55369, {
					["_npcs"] = { 189955 },	-- Raging Fire Lord
				}),
				crit(55370, {
					["_npcs"] = { 189933 },	-- Glacial Ice Lord
				}),
			}),
		}),
		n(HEIRLOOMS, {
			i(199686, {	-- Unstable Elemental Confluence (HEIRLOOM!)
				["cost"] = {
					{ "i", 199837, 1 },	-- 1x Dimmed Primeval Earth
					{ "i", 199836, 1 },	-- 1x Dimmed Primeval Fire
					{ "i", 199838, 1 },	-- 1x Dimmed Primeval Storm
					{ "i", 199839, 1 },	-- 1x Dimmed Primeval Water
				},
			}),
		}),
		n(QUESTS, {
			q(70050, {	-- Chasing Storms [A]
				["sourceQuests"] = { 66596 },	-- Whispers in the Winds [A]
				["provider"] = { "n", 189077 },	-- Toddy Whiskers
				["coord"] = { 22.8, 55.8, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(69944, {	-- Chasing Storms [H]
				["sourceQuests"] = { 65439 },	-- Whispers in the Winds [H]
				["provider"] = { "n", 197279 },	-- Naleidea Rivergleam
				["coord"] = { 55.8, 12.6, DUROTAR },
				["races"] = HORDE_ONLY,
			}),
			q(70048, {	-- A Primal Threat [A]
				["sourceQuests"] = { 66596 },	-- Whispers in the Winds [A]
				["provider"] = { "n", 193450 },	-- Archmage Khadgar
				["coord"] = { 23.0, 56.0, STORMWIND_CITY },
				["groups"] = {
					i(192493),	-- Mote of Primal Energy (QI!)
					i(199109),	-- Primal Stormling (PET!)
					i(199211),	-- Primeval Essence
				},
			}),
			q(69923, {	-- A Primal Threat [H]
				["sourceQuests"] = { 65439 },	-- Whispers in the Winds [H]
				["provider"] = { "n", 193450 },	-- Archmage Khadgar
				["coord"] = { 55.9, 12.6, DUROTAR },
				["groups"] = {
					i(192493),	-- Mote of Primal Energy (QI!)
					i(199109),	-- Primal Stormling (PET!)
					i(199211),	-- Primeval Essence
				},
			}),
			q(70055, {	-- Sigil of Storms [A]
				["sourceQuests"] = { 70050 },	-- Chasing Storms [A]
				["provider"] = { "i", 198352 },	-- Sigil of Storms [A]
				["groups"] = {
					i(199211),	-- Primeval Essence
				},
			}),
			q(69992, {	-- Sigil of Storms [H]
				["sourceQuests"] = { 69944 },	-- Chasing Storms [H]
				["provider"] = { "i", 198080 },	-- Sigil of Storms [H]
				["groups"] = {
					i(199211),	-- Primeval Essence
				},
			}),
			q(70049, {	-- Calming the Storms [A]
				["sourceQuests"] = { 70048 },	-- A Primal Threat [A]
				["provider"] = { "n", 193450 },	-- Archmage Khadgar
				["coord"] = { 23.0, 56.0, STORMWIND_CITY },
				["isDaily"] = true,
				["groups"] = {
					i(192493),	-- Mote of Primal Energy (QI!)
				},
			}),
			q(69925, {	-- Calming the Storms [H]
				["sourceQuests"] = { 69923 },	-- A Primal Threat [H]
				["provider"] = { "n", 193450 },	-- Archmage Khadgar
				["coord"] = { 55.9, 12.6, DUROTAR },
				["isDaily"] = true,
				["groups"] = {
					i(192493),	-- Mote of Primal Energy (QI!)
				},
			}),
			q(66458, {	-- Legacy of Tyr: Secrets of the Past [A]
				["sourceQuests"] = { 66596 },	-- Whispers on the Winds [A]
				["provider"] = { "n", 189569 },	-- Wrathion <The Black Prince>
				["coord"] = { 22.9, 56.0, STORMWIND_CITY },
				["groups"] = {
					i(201303),	-- Beheader's Poleaxe
					i(201304),	-- Dunesplitter
					i(201305),	-- Fist of the Treasure Seeker
					i(201306),	-- Knowledge Seeker's Cudgel
					i(201307),	-- Raider's Lost Spire
					i(201302),	-- Scarab Blaster
					i(201308),	-- Scorpion Slicer
					i(201309),	-- Tomb Raider's Shank
				},
			}),
			q(66586, {	-- Legacy of Tyr: Secrets of the Past [H]
				["sourceQuests"] = { 65439 },	-- Whispers in the Winds [H]
				["provider"] = { "n", 190239 },	-- Ebyssian
				["coord"] = { 55.8, 12.1, DUROTAR },
				["groups"] = {
					i(201303),	-- Beheader's Poleaxe
					i(201304),	-- Dunesplitter
					i(201305),	-- Fist of the Treasure Seeker
					i(201306),	-- Knowledge Seeker's Cudgel
					i(201307),	-- Raider's Lost Spire
					i(201302),	-- Scarab Blaster
					i(201308),	-- Scorpion Slicer
					i(201309),	-- Tomb Raider's Shank
				},
			}),
		}),
		n(VENDORS, {
			["crs"] = {
				195912,	-- Storm Hunter William <Storm Vendor>
				195899,	-- Storm Huntress Suhrakka <Storm Vendor>
			},
			["coords"] = {
				{ 25.0, 53.2, STORMWIND_CITY },
				{ 55.6, 12.4, DUROTAR },
			},
			["groups"] = {
				i(199337, {	-- Bag of Furious Winds (TOY!)
					["cost"] = { { "i", PRIMEVAL_ESSENCE, 100 } },
				}),
				i(202188, {	-- Storm-Battered Reagent Bag
					["cost"] = { { "i", PRIMEVAL_ESSENCE, 5 } },
				}),
				n(ARMOR, {
					i(199382, {	-- Catastrophe Signet
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199355, {	-- Cloudburst Bindings
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199352, {	-- Cloudburst Breeches
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199351, {	-- Cloudburst Hood
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199353, {	-- Cloudburst Mantle
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199350, {	-- Cloudburst Mitts
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199348, {	-- Cloudburst Robes
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199354, {	-- Cloudburst Sash
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199349, {	-- Cloudburst Slippers
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199384, {	-- Cloudburst Wrap
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199371, {	-- Cyclonic Bracers
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199364, {	-- Cyclonic Chainmail
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199370, {	-- Cyclonic Cinch
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199367, {	-- Cyclonic Cowl
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199380, {	-- Cyclonic Drape
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199366, {	-- Cyclonic Gauntlets
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199368, {	-- Cyclonic Kilt
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199369, {	-- Cyclonic Spaulders
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199365, {	-- Cyclonic Striders
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199362, {	-- Dust Devil Cincture
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199385, {	-- Dust Devil Cloak
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199361, {	-- Dust Devil Epaulets
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199358, {	-- Dust Devil Gloves
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199360, {	-- Dust Devil Leggings
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199359, {	-- Dust Devil Mask
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199356, {	-- Dust Devil Raiment
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199357, {	-- Dust Devil Treads
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199363, {	-- Dust Devil Wristbands
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199386, {	-- Firestorm Cape
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199372, {	-- Firestorm Chestplate
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199374, {	-- Firestorm Crushers
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199378, {	-- Firestorm Girdle
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199375, {	-- Firestorm Greathelm
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199376, {	-- Firestorm Greaves
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199377, {	-- Firestorm Pauldrons
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199373, {	-- Firestorm Stompers
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 35 } },
					}),
					i(199379, {	-- Firestorm Vambraces
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199381, {	-- Seal of Elemental Disasters
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199645, {	-- Storm Hunter's Insignia
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199383, {	-- Torc of Calamities
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199555, {	-- Versatile Storm Lure
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
				}),
				n(WEAPONS, {
					i(199402, {	-- Galepiercer Ballista
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199416, {	-- Galerider Crescent
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199406, {	-- Galerider Mallet
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199399, {	-- Galerider Poleaxe
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199407, {	-- Galerider Shank
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199400, {	-- Squallbreaker Greatsword
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199408, {	-- Squallbreaker Longblade
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199404, {	-- Squallbreaker Shield
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199403, {	-- Stormbender Maul
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199405, {	-- Stormbender Rod
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 45 } },
					}),
					i(199409, {	-- Stormbender Saber
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
					i(199401, {	-- Stormbender Scroll
						["cost"] = { { "i", PRIMEVAL_ESSENCE, 25 } },
					}),
				}),
			},
		}),
		n(WORLD_BOSSES, {
			["maps"] = {
				NORTHERN_BARRENS,
				BADLANDS,
				TIRISFAL_GLADES,
				UNGORO_CRATER,
			},
			["groups"] = {
				n(COMMON_BOSS_DROPS, {
					i(199211),	-- Primeval Essence
					i(198352),	-- Sigil of Storms [A]
					i(198080),	-- Sigil of Storms [H]
				}),
				n(189933, {	-- Glacial Ice Lord
					["groups"] = {
						i(199839),	-- Dimmed Primeval Water
					},
				}),
				n(189955, {	-- Raging Fire Lord
					["groups"] = {
						i(199836),	-- Dimmed Primeval Fire
					},
				}),
				n(189954, {	-- Rumbling Earth Lord
					["groups"] = {
						i(199837),	-- Dimmed Primeval Earth
					},
				}),
				n(185784, {	-- Unbridled Storm Lord
					["groups"] = {
						i(199838),	-- Dimmed Primeval Storm
					},
				}),
			},
		}),
	}),
}))

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansion(EXPANSION.DF, {
		["timeline"] = { ADDED_10_0_2 },
		["groups"] = {
			n(HIDDEN_QUESTS, {
				hqt(72285, {	-- Stay awhile and listen: Scalecommander Azurathel
					["qg"] = 189078,	-- Scalecommander Azurathel
					["sourceQuests"] = {
						65101,	-- An Iconic, Draconic, Look [A]
						66577,	-- Aspectral Invitation [A]
					},
					["name"] = "Stay awhile and listen: Scalecommander Azurathel",
					["coord"] = { 25.4, 55.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				hqt(72286, {	-- Stay awhile and listen: Genn Greymane
					["qg"] = 194756,	-- Genn Greymane
					["sourceQuests"] = {
						65101,	-- An Iconic, Draconic, Look [A]
						66577,	-- Aspectral Invitation [A]
					},
					["name"] = "Stay awhile and listen: Genn Greymane",
					["coord"] = { 27.1, 53.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				hqt(72287, {	-- Stay awhile and listen: High Exarch Turalyon
					["qg"] = 189600,	-- High Exarch Turalyon
					["sourceQuests"] = {
						65101,	-- An Iconic, Draconic, Look [A]
						66577,	-- Aspectral Invitation [A]
					},
					["name"] = "Stay awhile and listen: High Exarch Turalyon",
					["coord"] = { 27.1, 53.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				hqt(72288, {	-- Stay awhile and listen: Baine and Mayla
					["name"] = "Stay awhile and listen: Baine and Mayla",
					["sourceQuests"] = {
						72256,	-- The Dark Talons [H]
						65443,	-- Expeditionary Coordination [H]
					},
					["provider"] = { "n", 198411 },	-- Baine
					["coord"] = { 55.9, 12.1, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				hqt(72289, {	-- Stay awhile and listen: Lor'themar and Thalyssra
					["name"] = "Stay awhile and listen: Lor'themar and Thalyssra",
					["sourceQuests"] = {
						72256,	-- The Dark Talons [H]
						65443,	-- Expeditionary Coordination [H]
					},
					["provider"] = { "n", 184665 },	-- Lor'themar Theron
					["coord"] = { 55.7, 12.2, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				hqt(72290, {	-- Stay awhile and listen: Cindrethresh and Emberthal
					["name"] = "Stay awhile and listen: Cindrethresh and Emberthal",
					["sourceQuests"] = {72256},	-- The Dark Talons [H]
					["provider"] = { "n", 184858 },	-- Cindrethresh
					["coord"] = { 55.6, 12.3, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
			}),
		},
	}),
}))
