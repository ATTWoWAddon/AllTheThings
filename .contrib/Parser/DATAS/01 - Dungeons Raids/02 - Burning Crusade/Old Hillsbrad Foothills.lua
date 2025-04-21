-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local THOMAS_YANCE_GROUPS = {
	i(25725),	-- Pattern: Riding Crop (RECIPE!)
	i(23321),	-- Recruit's Robe
};
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(251, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- Old Hillsbrad Foothills
		["lore"] = "Old Hillsbrad Foothills is one of the timeways accessible in the Caverns of Time. The setting is seven years before WoW's present, to when the future Warchief Thrall was a slave of Aedelas Blackmoore, master of Durnholde Keep. The questing involves helping Thrall escape. The instance area in question spans from Southshore (where familiar personalities of WoW present can be found) to Tarren Mill.",
		["description"] = "This is an event-triggered dungeon with the following steps:\n\n1. Talk to Erozion at the beginning of the dungeon to obtain a Pack of Incendiary Bombs.\n\n2. Traverse to the internment camps in Durnholde Keep and interact with a barrel in each building to start a fire and summon the first boss Lieutenant Drake.\n\n3. Find Thrall in the basement of the keep and follow him for the remainder of the dungeon.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 2367,	-- Old Hillsbrad Foothills
		-- #endif
		["coord"] = { 26.8, 36.8, CAVERNS_OF_TIME },
		["mapID"] = CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS,
		["lvl"] = lvlsquish(63, 63, 15),
		["groups"] = {
			n(QUESTS, {
				q(10284, {	-- Escape from Durnholde
					["qg"] = 17876,	-- Thrall
					["sourceQuest"] = 10283,	-- Taretha's Diversion
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(66, 66, 15),
				}),
				q(29599, {	-- Escape from Durnholde
					["qg"] = 17876,	-- Thrall
					["sourceQuest"] = 29598,	-- Taretha's Diversion
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						i(29317),	-- Tempest's Touch
						i(29318),	-- Southshore Sneakers
						i(29319),	-- Tarren Mill Defender's Cinch
						i(29316),	-- Warchief's Mantle
					},
				}),
				q(12513, {	-- Nice Hat...
					["qg"] = 28126,	-- Don Carlos
					["coords"] = {
						-- #if AFTER CATA
						{ 50.8, 27.5, TANARIS },
						-- #else
						{ 53.9, 28.9, TANARIS },
						-- #endif
					},
					-- Races straight from Blizz api confirmed by Gaulish 9/27/20
					["races"] = { HUMAN, DWARF, GNOME, KULTIRAN, DARKIRON, MECHAGNOME },
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Don Carlos' Hat
							["provider"] = { "i", 38329 },	-- Don Carlos' Hat
						}),
						i(38276),	-- Haliscan Brimmed Hat
					},
				}),
				q(12515, {	-- Nice Hat...
					["qg"] = 28126,	-- Don Carlos
					["coords"] = {
						-- #if AFTER CATA
						{ 50.7, 27.5, TANARIS },
						-- #else
						{ 53.9, 28.9, TANARIS },
						-- #endif
					},
					-- Races straight from Blizz api confirmed by Gaulish 9/27/20
					["races"] = exclude({ HUMAN, DWARF, GNOME, KULTIRAN, DARKIRON, MECHAGNOME }, ALL_RACES),
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Don Carlos' Hat
							["provider"] = { "i", 38329 },	-- Don Carlos' Hat
						}),
						i(38276),	-- Haliscan Brimmed Hat
					},
				}),
				q(10282, {	-- Old Hillsbrad
					["qg"] = 20130,	-- Andormu <Keepers of Time>
					["sourceQuest"] = 10277,	-- The Caverns of Time
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 38.5, CAVERNS_OF_TIME },
						-- #else
						{ 58.4, 54.3, TANARIS },
						-- #endif
					},
					["lvl"] = lvlsquish(66, 66, 15),
				}),
				q(10283, {	-- Taretha's Diversion
					["qg"] = 18723,	-- Erozion
					["sourceQuest"] = 10282,	-- Old Hillsbrad
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						objective(1, {	-- Internment Lodges Set Ablaze
							["provider"] = { "i", 25853 },	-- Pack of Incendiary Bombs
						}),
					},
				}),
				q(29598, {	-- Taretha's Diversion
					["qg"] = 18723,	-- Erozion
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(64, 64, 15),
					["groups"] = {
						objective(1, {	-- Internment Lodges Set Ablaze
							["provider"] = { "i", 25853 },	-- Pack of Incendiary Bombs
						}),
					},
				}),
				q(10285, {	-- Return to Andormu
					["qg"] = 18723,	-- Erozion
					["sourceQuest"] = 10284,	-- Escape from Durnholde
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(66, 66, 15),
					["groups"] = {
						i(29317),	-- Tempest's Touch
						i(29318),	-- Southshore Sneakers
						i(29319),	-- Tarren Mill Defender's Cinch
						i(29316),	-- Warchief's Mantle
					},
				}),
			}),
			n(VENDORS, {
				n(18672, THOMAS_YANCE_GROUPS),	-- Thomas Yance
				n(18664, {	-- Aged Dalaran Wizard
					i(22539),	-- Formula: Enchant Shield - Intellect (RECIPE!)
				}),
			}),
			n(ZONE_DROPS, {
				i(25729, {	-- Pattern: Stylin' Adventure Hat (RECIPE!)
					["crs"] = {
						28132,	-- Don Carlos
						17820,	-- Durnholde Rifleman
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(28132, {	-- Don Carlos
					["description"] = "This is a neutral Elite Creature that wanders the road.",
					["groups"] = {
						i(38329),	-- Don Carlos' Hat
					},
				}),
				e(538, {	-- Lieutenant Drake
					["creatureID"] = 17848,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(28210),	-- Bloodskull Destroyer
						i(28213),	-- Lordaeron Medical Guide
						i(28215),	-- Mok'Nathal Mask of Battle
						-- #endif
						i(27417),	-- Ravenwing Pauldrons
						i(27423),	-- Cloak of Impulsiveness
						-- #if AFTER 7.3.5
						i(28214),	-- Grips of the Lunar Eclipse
						i(28212),	-- Aran's Sorcerous Slacks
						-- #endif
						i(27418),	-- Stormreaver Shadow-Kilt
						i(27420),	-- Uther's Ceremonial Warboots
						i(27436),	-- Iron Band of the Unbreakable
						-- #if AFTER 7.3.5
						i(28211),	-- Lieutenant's Signet of Lordaeron
						-- #endif
					},
				}),
				e(539, {	-- Captain Skarloc
					["creatureID"] = 17862,
					["groups"] = {
						i(27424),	-- Amani Venom-Axe
						-- #if AFTER 7.3.5
						i(28216),	-- Dathrohan's Ceremonial Hammer
						-- #endif
						i(27426),	-- Northshire Battlemace
						-- #if AFTER 7.3.5
						i(28220),	-- Moon-Crown Antlers
						i(28217),	-- Tarren Mill Vitality Locket
						-- #endif
						i(27427),	-- Durotan's Battle Harnace
						i(27428),	-- Stormfront Gauntlets
						-- #if AFTER 7.3.5
						i(28219),	-- Emerald-Scale Greaves
						i(28218),	-- Pontiff's Pantaloons of Prophecy
						-- #endif
						i(27430),	-- Scaled Greaves of Patience
						-- #if AFTER 7.3.5
						i(28221),	-- Boots of the Watchful Heart
						-- #endif
						i(22927),	-- Recipe: Ironshield Potion (RECIPE!)
					},
				}),
				e(540, {	-- Epoch Hunter
					["creatureID"] = 18096,
					["groups"] = {
						ach(652, {	-- The Escape From Durnholde
							-- #if BEFORE WRATH
							["sourceQuest"] = 10284,	-- Escape from Durnholde
							-- #endif
						}),
						-- #if AFTER 7.3.5
						i(28222),	-- Reaver of the Infinites
						-- #endif
						i(27431),	-- Time-Shifted Dagger
						-- #if AFTER 7.3.5
						i(28226),	-- Timeslicer
						i(28225),	-- Doomplate Warhelm
						i(28224),	-- Wastewalker Helm
						-- #endif
						i(27440),	-- Diamond Prism of Recurrence
						-- #if AFTER 7.3.5
						i(28233),	-- Necklace of Resplendent Hope
						-- #endif
						i(27434),	-- Mantle of Perenolde
						i(27433),	-- Pauldrons of Sufferance
						-- #if AFTER 7.3.5
						i(28344),	-- Wyrmfury Pauldrons
						i(28401),	-- Hauberk of Desolation
						i(28191),	-- Mana-Etched Vestments
						i(29246),	-- Nightfall Wristguards
						i(29250),	-- Cord of Sanctification
						i(27911),	-- Epoch's Whispering Cinch
						i(30536),	-- Greaves of the Martyr
						i(30534),	-- Wyrmscale Greaves
						-- #endif
						i(27432),	-- Broxigar's Ring of Valor
						-- #if AFTER 7.3.5
						i(27904),	-- Resounding Ring of Glory
						i(28227),	-- Sparking Arcanite Ring
						i(28223),	-- Arcanist's Stone
						-- #endif
						i(24173),	-- Design: Circlet of Arcane Might
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30635, 1 },	-- Key of Time
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17848,	-- Lieutenant Drake
							17862,	-- Captain Skarloc
							18096,	-- Epoch Hunter
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30589),	-- Dazzling Chrysoprase
							i(30591),	-- Empowered Fire Opal
							i(30590),	-- Enduring Chrysoprase
						},
					}),
					n(28132, {	-- Don Carlos
						["description"] = "This is a neutral Elite Creature that wanders the road.",
						["groups"] = {
							applyclassicphase(LEGION_PHASE_ONE, i(134019, {	-- Don Carlos' Famous Hat (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							})),
							i(38506, {	-- Don Carlos' Famous Hat
								["timeline"] = { REMOVED_7_0_3 },
							}),
							i(38329),	-- Don Carlos' Hat
						},
					}),
					e(538, {	-- Lieutenant Drake
						["creatureID"] = 17848,
						["groups"] = {
							i(28210),	-- Bloodskull Destroyer
							i(28213),	-- Lordaeron Medical Guide
							i(28215),	-- Mok'Nathal Mask of Battle
							-- #if AFTER 7.3.5
							i(27417),	-- Ravenwing Pauldrons
							i(27423),	-- Cloak of Impulsiveness
							-- #endif
							i(28214),	-- Grips of the Lunar Eclipse
							i(28212),	-- Aran's Sorcerous Slacks
							-- #if AFTER 7.3.5
							i(27418),	-- Stormreaver Shadow-Kilt
							i(27420),	-- Uther's Ceremonial Warboots
							i(27436),	-- Iron Band of the Unbreakable
							-- #endif
							i(28211),	-- Lieutenant's Signet of Lordaeron
						},
					}),
					e(539, {	-- Captain Skarloc
						["creatureID"] = 17862,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(27424),	-- Amani Venom-Axe
							-- #endif
							i(28216),	-- Dathrohan's Ceremonial Hammer
							-- #if AFTER 7.3.5
							i(27426),	-- Northshire Battlemace
							-- #endif
							i(28220),	-- Moon-Crown Antlers
							i(28217),	-- Tarren Mill Vitality Locket
							-- #if AFTER 7.3.5
							i(27427),	-- Durotan's Battle Harnace
							i(27428),	-- Stormfront Gauntlets
							-- #endif
							i(28219),	-- Emerald-Scale Greaves
							i(28218),	-- Pontiff's Pantaloons of Prophecy
							-- #if AFTER 7.3.5
							i(27430),	-- Scaled Greaves of Patience
							-- #endif
							i(28221),	-- Boots of the Watchful Heart
							i(22927),	-- Recipe: Ironshield Potion (RECIPE!)
						},
					}),
					e(540, {	-- Epoch Hunter
						["creatureID"] = 18096,
						["groups"] = {
							ach(673, {	-- Heroic: The Escape From Durnholde
								["timeline"] = { ADDED_3_0_2 },
							}),
							ach(5073, {	-- Heroic: The Escape From Durnholde Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(28222),	-- Reaver of the Infinites
							-- #if AFTER 7.3.5
							i(27431),	-- Time-Shifted Dagger
							-- #endif
							i(28226),	-- Timeslicer
							i(28225),	-- Doomplate Warhelm
							i(28224),	-- Wastewalker Helm
							-- #if AFTER 7.3.5
							i(27440),	-- Diamond Prism of Recurrence
							-- #endif
							i(28233),	-- Necklace of Resplendent Hope
							-- #if AFTER 7.3.5
							i(27434),	-- Mantle of Perenolde
							i(27433),	-- Pauldrons of Sufferance
							-- #endif
							i(28344),	-- Wyrmfury Pauldrons
							i(28401),	-- Hauberk of Desolation
							i(28191),	-- Mana-Etched Vestments
							i(29246),	-- Nightfall Wristguards
							i(29250),	-- Cord of Sanctification
							i(27911),	-- Epoch's Whispering Cinch
							i(30536),	-- Greaves of the Martyr
							i(30534),	-- Wyrmscale Greaves
							-- #if AFTER 7.3.5
							i(27432),	-- Broxigar's Ring of Valor
							-- #endif
							i(27904),	-- Resounding Ring of Glory
							i(28227),	-- Sparking Arcanite Ring
							i(28223),	-- Arcanist's Stone
							i(24173),	-- Design: Circlet of Arcane Might
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33847),	-- Epoch Hunter's Head
						},
					}),
				}
			}),
		},
	})),
})));

-- Add the items we didn't want to mark with a phase
for i,o in ipairs({
	i(45),	-- Squire's Shirt
	i(38),	-- Recruit's Shirt
	i(53),	-- Neophyte's Shirt
	i(6096),	-- Apprentice's Shirt
	i(6097),	-- Acolyte's Shirt
}) do table.insert(THOMAS_YANCE_GROUPS, o); end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(251, {
		q(35542),	-- Old Hillsbrad Foothills Reward Quest - Normal completion
		q(35543),	-- Old Hillsbrad Foothills Reward Quest - Heroic completion
	}),
})));