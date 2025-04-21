-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(241, {	-- Zul'Farrak
		-- #if BEFORE MOP
		["lore"] = "Troll legends tell of a powerful sword called Sul'thraze the Lasher, a weapon capable of instilling fear and weakness in even the most formidable of foes. Long ago, the weapon was split in half. However, rumors have circulated that the two halves may be found somewhere within Zul'Farrak's walls. Reports have also suggested that a band of mercenaries fleeing Gadgetzan wandered into the city and became trapped. Their fate remains unknown. But perhaps most disturbing of all are the hushed whispers of an ancient creature sleeping within a sacred pool at the city's heart - a mighty demigod who will wreak untold destruction upon any adventurer foolish enough to awaken him.",
		-- #endif
		["zone-text-areaID"] = 978,	-- Zul'Farrak
		["mapID"] = ZULFARRAK,
		["coords"] = {
			-- #if AFTER CATA
			{ 39.2, 21.3, TANARIS },
			-- #else
			{ 39.0, 19.0, TANARIS },
			-- #endif
		},
		["lvl"] = lvlsquish(39, 39, 15),
		["groups"] = {
			n(QUESTS, {
				q(27070, {	-- A Fool's Errand
					["qg"] = 7407,	-- Chief Engineer Bildewhizzle
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(44, 44, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Tiara of the Deep
							["provider"] = { "i", 9234 },	-- Tiara of the Deep
						}),
						objective(2, {	-- 0/1 Gahz'rilla's Electrified Scale
							["provider"] = { "i", 8707 },	-- Gahz'rilla's Electrified Scale
						}),
						i(65954),	-- Belt of the Deep
						i(65929),	-- Bildewhizzle's Armbands
						i(65978),	-- Electrified Leggings
						i(65999),	-- Pauldrons of Zul'Farrak
						-- #if BEFORE MOP
						i(66010, {	-- Star of the Fool
							["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(27076, {	-- Breaking and Entering
					["qg"] = 44929,	-- Tran'rek
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(44, 44, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Nekrum Gutchewer slain
							["provider"] = { "n", 7796 },	-- Nekrum Gutchewer
						}),
						objective(2, {	-- 0/1 Shadowpriest Sezz'ziz slain
							["provider"] = { "n", 7275 },	-- Shadowpriest Sezz'ziz
						}),
					},
				}),
				q(27068, {	-- Chief Ukorz Sandscalp
					["qg"] = 40712,	-- Mazoga's Spirit
					["sourceQuest"] = 25556,	-- Into Zul'Farrak
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(44, 44, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Chief Ukorz Sandscalp slain
							["provider"] = { "n", 7267 },	-- Chief Ukorz Sandscalp
						}),
						i(65930),	-- Hands of Consequences
						i(65955),	-- Mazoga's Boots
						i(65979),	-- Staff of the Unknown Road
					},
				}),
				q(2768, {	-- Divino-matic Rod
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.5, 28.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Divino-matic Rod
							["provider"] = { "i", 8548 },	-- Divino-matic Rod
						}),
						i(9534, {	-- Engineer's Guild Headpiece
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9533, {	-- Masons Fraternity Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2770, {	-- Gahz'rilla
					["qg"] = 4453,	-- Wizzle Brassbolts
					["sourceQuest"] = 2769,	-- The Brassbolts Brothers
					["coord"] = { 78.0, 77.0, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Gahz'rilla's Electrified Scale
							["provider"] = { "i", 8707 },	-- Gahz'rilla's Electrified Scale
						}),
						i(11122, {	-- Carrot on a Stick
							["timeline"] = { REMOVED_4_0_3 },
							-- #if BEFORE WRATH
							-- #if AFTER TBC
							["description"] = "Once you have a Riding Crop, you may safely vendor this item as the two effects do not stack. Until then, use it to make mounted travel more efficient.",
							-- #else
							["description"] = "Do NOT vendor this item. Keep it with you always. It is best-in-slot when you are traveling long distances on your mount. (which you do a lot in Classic!)",
							-- #endif
							-- #endif
						}),
						i(9653, {	-- Speedy Racer Googles
							["timeline"] = { REMOVED_1_9_3 },
						}),
					},
				}),
				q(25556, {	-- Into Zul'Farrak
					["qg"] = 7804,	-- Trenton Lighthammer
					["sourceQuest"] = 25032,	-- Secrets in the Oasis
					["coord"] = { 42.5, 24.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(2991, {	-- Nekrum's Medallion
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2990,	-- Thadius Grimshade
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Nekrum's Medallion
							["provider"] = { "i", 9471 },	-- Nekrum's Medallion
						}),
					},
				}),
				q(2865, {	-- Scarab Shells
					["qg"] = 7876,	-- Tran'rek
					["sourceQuest"] = 2864,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/5 Uncracked Scarab Shell
							["provider"] = { "i", 9238 },	-- Uncracked Scarab Shell
							["cr"] = 7269,	-- Scarab
						}),
					},
				}),
				q(2861, {	-- Tabetha's Task
					["allianceQuestData"] = {
						["qgs"] = {
							5144,	-- Bink <Mage Trainer>
							5497,	-- Jennea Cannon <Mage Trainer>
						},
						["coords"] = {
							{ 27, 8.2, IRONFORGE },
							{ 38.6, 79.4, STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							5885,	-- Deino <Mage Trainer>
							4568,	-- Anastasia Hartwell <Mage Trainer>
						},
						["coords"] = {
							{ 38.4, 86, ORGRIMMAR },
							{ 85, 10.2, UNDERCITY },
						},
					},
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4787, {	-- The Ancient Egg
					["qg"] = 8579,	-- Yeh'kinya
					["sourceQuest"] = 3527,	-- The Prophecy of Mosh'aru
					["coord"] = { 67, 22.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Egg
							["providers"] = {
								{ "i",  12402 },	-- Ancient Egg
								{ "o", 175889 },	-- Ancient Egg
							},
							["coord"] = { 57.5, 86.7, THE_HINTERLANDS },
						}),
					},
				}),
				q(2769, {	-- The Brassbolts Brothers
					["qg"] = 6169,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3527, {	-- The Prophecy of Mosh'aru
					["qg"] = 8579,	-- Yeh'kinya
					["sourceQuest"] = 3520,	-- Screecher Spirits
					["coord"] = { 67.0, 22.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 First Mosh'aru Tablet
							["provider"] = { "i", 10660 },	-- First Mosh'aru Tablet
						}),
						objective(2, {	-- 0/1 Second Mosh'aru Tablet
							["provider"] = { "i", 10661 },	-- Second Mosh'aru Tablet
						}),
					},
				}),
				q(2936, {	-- The Spider God
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 2935,	-- Consult Master Gadrin
					["coord"] = { 56.0, 74.6, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Find the Spider God's Name
							["provider"] = { "o", 142715 },	-- Tablet of Theka
						}),
					},
				}),
				q(2846, {	-- Tiara of the Deep
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 2861,	-- Tabetha's Task
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Tiara of the Deep
							["provider"] = { "i", 9234 },	-- Tiara of the Deep
						}),
						i(9527, {	-- Spellshifter Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9531, {	-- Gemshale Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3042, {	-- Troll Temper
					["qg"] = 7804,	-- Trenton Lighthammer <The Mithril Order>
					["coord"] = { 51.4, 28.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/20 Troll Temper
							["provider"] = { "i", 9523 },	-- Troll Temper
						}),
					},
				}),
				q(27071, {	-- Wrath of the Sandfury
					["qg"] = 40712,	-- Mazoga's Spirit
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(44, 44, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Theka the Martyr slain
							["provider"] = { "n", 7272 },	-- Theka the Martyr
						}),
						objective(2, {	-- 0/1 Witch Doctor Zum'rah slain
							["provider"] = { "n", 7271 },	-- Witch Doctor Zum'rah
						}),
						objective(3, {	-- 0/1 Antu'sul slain
							["provider"] = { "n", 8127 },	-- Antu'sul <Overseer of Sul>
						}),
						objective(4, {	-- 0/1 Ruuzlu slain
							["provider"] = { "n", 7797 },	-- Ruuzlu
						}),
					},
				}),
			}),
			n(SPECIAL, {
				-- #if BEFORE 3.0.8
				i(9240, {	-- Mallet of Zul'Farrak
					["description"] = "The Sacred Mallet drops from Qiaga the Keeper on top of the Altar of Zul in Hinterlands. You then bring it to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 59.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 9241, 1 } },	-- Sacred Mallet
					["cr"] = 7995,	-- Vile Priestess Hexx
				}),
				i(9241, {	-- Sacred Mallet
					["description"] = "Bring this to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 49.2, 68.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 7996,	-- Qiaga the Keeper
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, i(223526, {	-- Sul'thraze the Lasher
					["description"] = "You must take both of the swords and combine them to form this weapon.",
					["cost"] = {
						{ "i", 11086, 1 },	-- Jang'thraze the Protector
						{ "i", 9379, 1 },	-- Sang'thraze the Deflector
					},
					["crs"] = {
						8127,	-- Antu'sul
						7267,	-- Chief Ukorz Sandscalp
					},
				})),
				i(9372, {	-- Sul'thraze the Lasher
					["timeline"] = { REMOVED_1_15_2 },
				}),
				-- #else
				i(9372, {	-- Sul'thraze the Lasher
					["description"] = "You must take both of the swords and combine them to form this weapon.",
					["cost"] = {
						{ "i", 11086, 1 },	-- Jang'thraze the Protector
						{ "i", 9379, 1 },	-- Sang'thraze the Deflector
					},
					["crs"] = {
						8127,	-- Antu'sul
						7267,	-- Chief Ukorz Sandscalp
					},
				}),
				-- #endif
			}),
			n(ZONE_DROPS, {
				i(142402, {	-- Plans: Light Earthforged Blade (RECIPE!)
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(9243),	-- Shriveled Heart / Shriveled Troll Heart
				i(9523),	-- Troll Temper
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_THREE, n(222573, {	-- Delirious Ancient
				["description"] = "Spawns after clearing any 3 bosses (other than Ghaz'rilla) and will wander around the Ghaz'rilla area.",
				["cost"] = {{ "i", 221418, 1 }},	-- Agamaggan's Roar
				["groups"] = {
					i(221290),	-- Ace of Dunes
					i(221271),	-- Ace of Wilds
					i(221262),	-- Wild Offering
				},
			})),
			-- #endif
			n(10080, {	-- Sandarr Dunereaver
				["description"] = "This is a Rare Creature and, as such, is not always present.\n\nItems listed for this NPC 'technically' can drop from other creatures in the dungeon, but are extremely rare in comparison.",
				["groups"] = {
					i(9512),	-- Blackmetal Cape
					i(9511),	-- Bloodletter Scalpel
					i(6440),	-- Brainlash
					i(9480),	-- Eyegouger
					i(9483),	-- Flaming Incinerator
					i(5616),	-- Gutwrencher
					i(862),		-- Runed Ring
					i(9484),	-- Spellshock Leggings
					i(9481),	-- The Minotaur
					i(2040),	-- Troll Protector (2022-02-07 confirmed from Sandfury Shadowcaster)
					i(9482),	-- Witch Doctor's Cane
				},
			}),
			n(10082, {	-- Zerillis
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223962)),	-- Sandstalker Ankleguards
					i(12470, {	-- Sandstalker Ankleguards
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(12470),	-- Sandstalker Ankleguards
					-- #endif
				},
			}),
			e(485, {	-- Theka the Martyr
				["creatureID"] = 7272,
				["groups"] = {
					i(10660),	-- First Mosh'aru Tablet
					i(151456, {	-- Theka's Seal of Vigilance
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			e(484, {	-- Antu'sul
				["creatureID"] = 8127,
				["groups"] = {
					i(9379),	-- Sang'thraze the Deflector
					i(9639),	-- The Hand of Antu'sul
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223532)),	-- Lifeblood Amulet
					i(9641, {	-- Lifeblood Amulet
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(9641),	-- Lifeblood Amulet
					-- #endif
					i(9640),	-- Vice Grips
				},
			}),
			e(486, {	-- Witch Doctor Zum'rah
				["creatureID"] = 7271,
				["groups"] = {
					i(18082),	-- Zum'rah's Vexing Cane
					i(151457, {	-- Witch Doctor's Ritual Collar
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223534)),	-- Jumanza Grips
					i(18083, {	-- Jumanza Grips
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(18083),	-- Jumanza Grips
					-- #endif
				},
			}),
			n(10081, {	-- Dustwraith
				["description"] = "This is a Rare Creature and, as such, is not always present.",
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223533)),	-- Desertwalker Cane
					i(12471, {	-- Desertwalker Cane
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(12471, {	-- Desertwalker Cane
						-- #if AFTER LEGION
						["description"] = "This item is available only in personal loot, and requires a class with an Intellect-using loot spec.",
						-- #endif
					}),
					-- #endif
				},
			}),
			-- #if BEFORE MOP
			n(7796, {	-- Nekrum Gutchewer
				["description"] = "He's linked to Shadowpriest Sezz'ziz. Both will aggro once the 100 troll assault on the pyramid is complete.",
				["groups"] = {
					i(9471, {	-- Nekrum's Medallion
						["races"] = ALLIANCE_ONLY,
					}),
				}
			}),
			-- #endif
			e(487, {	-- Nekrum & Sezzi'ziz
				-- #if AFTER MOP
				["crs"] = {
					7796,	-- Nekrum Gutchewer
					7275,	-- Shadowpriest Sezz'ziz
				},
				-- #else
				["creatureID"] = 7275,	-- Shadowpriest Sezz'ziz
				-- #endif
				["groups"] = {
					-- #if AFTER MOP
					i(9471, {	-- Nekrum's Medallion
						["races"] = ALLIANCE_ONLY,
					}),
					-- #endif
					i(9475),	-- Diabolic Skiver
					i(9470),	-- Bad Mojo Mask
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223529)),	-- Jinxed Hoodoo Skin
					applyclassicphase(SOD_PHASE_THREE, i(223530)),	-- Jinxed Hoodoo Kilt
					i(9473, {	-- Jinxed Hoodoo Skin
						["timeline"] = { REMOVED_1_15_2 },
					}),
					i(9474, {	-- Jinxed Hoodoo Kilt
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(9473),	-- Jinxed Hoodoo Skin
					i(151459, {	-- Nekrum's Witherguard
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(9474),	-- Jinxed Hoodoo Kilt
					-- #endif
					i(151458, {	-- Sezz'ziz's Captive Kickers
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			n(7607, {	-- Weegli Blastfuse
				["description"] =
					-- #if AFTER 10.0.5
					"This NPC no longer needs manually triggered to open the final boss door. You can move out of his vicinity (and also fight the group), and he will run to the door.",
					-- #else
					"You must talk to this NPC in order to enter the room with the last boss! If you are not fast enough, their whole party hearthstones out of the instance.",
					-- #endif
			}),
			n(7604, {	-- Sergeant Bly
				["description"] = "These adventurers initially help you clear the gauntlet leading up to the previous boss, but then they turn on you. You don't have to fight them if no one in your party needs the quest item.",
				["qgs"] = {
					7608,	-- Murta Grimgut
					7606,	-- Oro Eyegouge
					7605,	-- Raven
				},
				["groups"] = {
					i(8548),	-- Divino-matic Rod
				},
			}),
			n(7797, {	-- Ruuzlu
				["description"] = "He's linked to Chief Ukorz Sandscalp, and both are immune to CC. It's generally preferred to kill Ruuzlu first, however.",
			}),
			e(489, {	-- Chief Ukorz Sandscalp
				["creatureID"] = 7267,
				["groups"] = {
					ach(639, {	-- Zul'Farrak
						["timeline"] = { ADDED_3_0_2 },
					}),
					ach(5048, {	-- Zul'Farrak Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(11086),	-- Jang'thraze the Protector
					i(9478),	-- Ripsaw
					i(9477),	-- The Chief's Enforcer
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223963)),	-- Embrace of the Lycan
					applyclassicphase(SOD_PHASE_THREE, i(223531)),	-- Big Bad Pauldrons
					i(9479, {	-- Embrace of the Lycan
						["timeline"] = { REMOVED_1_15_2 },
					}),
					i(9476, {	-- Big Bad Pauldrons
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(9479),	-- Embrace of the Lycan
					i(9476),	-- Big Bad Pauldrons
					-- #endif
					i(151460, {	-- Farraki Ceremonial Robes
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(151461, {	-- Ukorz's Chain Leggings
						["timeline"] = { ADDED_7_3_0 },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(221290)),	-- Ace of Dunes
					-- #endif
				},
			}),
			n(7795, {	-- Hydromancer Velratha
				i(9234),	-- Tiara of the Deep
				i(10661),	-- Second Mosh'aru Tablet
			}),
			e(483, {	-- Gahz'rilla
				["creatureID"] = 7273,
				-- #if BEFORE 3.0.8
				["description"] = "Someone in your party must have the Mallet of Zul'Farrak to summon this boss!\n\nIf you have it, simply bang the Gong of Zul'Farrak. (after first confirming with your party...)",
				["provider"] = { "o", 141832 },	-- Gong of Zul'Farrak
				["cost"] = {
					{ "i", 9240, 1 },	-- Mallet of Zul'Farrak
				},
				-- #endif
				["groups"] = {
					i(204406, {	-- Ancient Design: Square Holders (RECIPE!)
						["timeline"] = { ADDED_10_0_7 },
					}),
					i(8707),	-- Gahz'rilla's Electrified Scale
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_THREE, i(223527)),	-- Gahz'rilla Fang
					applyclassicphase(SOD_PHASE_THREE, i(223528)),	-- Gahz'rilla Scale Armor
					i(9467, {	-- Gahz'rilla Fang
						["timeline"] = { REMOVED_1_15_2 },
					}),
					i(9469, {	-- Gahz'rilla Scale Armor
						["timeline"] = { REMOVED_1_15_2 },
					}),
					-- #else
					i(9467),	-- Gahz'rilla Fang
					i(151455, {	-- Gahz'rilla Scale Cloak
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(9469),	-- Gahz'rilla Scale Armor
					-- #endif
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(241, {
		q(35588),	-- Zul'Farrak Reward Quest - Normal completion
		q(35589),	-- Zul'Farrak Bonus Reward
	}),
})));