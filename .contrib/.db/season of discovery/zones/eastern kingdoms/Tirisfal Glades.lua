---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

ExportDB.OnTooltipDB.ZidormiTravelArtID1136 = [[~function(t, tooltipInfo)
					if t.parent.artID == 1136 then
						tooltipInfo[#tooltipInfo+1] = { left = "You need to speak to Zidormi to travel back to the past in order to collect these." }
					end
				end]]

maproot(EASTERN_KINGDOMS, TIRISFAL_GLADES, {
	lore = "On the northern coast of Lordaeron lies the eerie Tirisfal Glades. The unofficial kingdom to the Forsaken, servants of the Banshee Queen Sylvanas Windrunner, the wooded hills are seeped through with the curse of the Lich King's plague. The sky over Tirisfal is eternally gloomy and tinted a blighted green, and the trees and other flora desperately cling to their last shreds of life.\n\nAlthough tainted and melancholy, Tirisfal still very much has its own unique, haunting beauty, particularly in such areas as the stony North Coast, the village of Brill, and the deep atmosphere of the ruined Agamand Mills.\n\nTirisfal Glades is home not only to the Forsaken, but to their enemies as well. The Scarlet Crusade has several outposts here, including the seat of their religious faith, the Scarlet Monastery. The minions of the Scourge are also ever present, tainting the derelict farmsteads and dilapidated mills with their foul presence.",
	icon = 236849,
	groups = {
		m(DEATHKNELL, {
			lore = "Deathknell is a small Forsaken village nestled in a well guarded valley just north of Silverpine Forest in Tirisfal Glades which serves as the starting area for the Forsaken.",
			icon = 236457,
			zoneTextAreaIDs = {
				154,	-- Deathknell
			},
			groups = {
				n(QUESTS, {
					q(8, {	-- A Rogue's Deal (1/2)
						qg = 6784,	-- Calvin Montague
						qi = 7628,	-- Nondescript Letter
						coord = { 38.2, 56.6, TIRISFAL_GLADES },
						races = HORDE_ONLY,
					}),
					q(590, {	-- A Rogue's Deal (2/2)
						sourceQuest = 8,	-- A Rogue's Deal (1/2)
						qg = 6784,	-- Calvin Montague
						coord = { 38.2, 56.6, TIRISFAL_GLADES },
						races = HORDE_ONLY,
					}),
					q(3096, {	-- Encrypted Scroll
						sourceQuests = {
							364,	-- The Mindless Ones
						},
						qg = 1569,	-- Shadow Priest Sarvis
						qi = 9559,	-- Encrypted Scroll
						coords = {
							{ 30.8, 66.2, TIRISFAL_GLADES },
						},
						races = { UNDEAD },
						classes = { ROGUE },
					}),
					q(3098, {	-- Glyphic Scroll
						sourceQuests = {
							364,	-- The Mindless Ones
						},
						qg = 1569,	-- Shadow Priest Sarvis
						qi = 9574,	-- Glyphic Scroll
						coords = {
							{ 30.8, 66.2, TIRISFAL_GLADES },
						},
						races = { UNDEAD },
						classes = { MAGE },
					}),
					q(3097, {	-- Hallowed Scroll
						sourceQuests = {
							364,	-- The Mindless Ones
						},
						qg = 1569,	-- Shadow Priest Sarvis
						qi = 9569,	-- Hallowed Scroll
						coords = {
							{ 30.8, 66.2, TIRISFAL_GLADES },
						},
						races = { UNDEAD, BLOODELF },
						classes = { PRIEST },
					}),
					q(5651, {	-- In Favor of Darkness
						qg = 2123,	-- Dark Cleric Duesten <Priest Trainer>
						coord = { 31.0, 66.0, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PRIEST },
						lvl = 5,
					}),
					q(6395, {	-- Marla's Last Wish
						sourceQuest = 376,	-- The Damned
						qg = 1661,	-- Novice Elreth
						coord = { 30.9, 66.1, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- Samuel's Remains Buried
								providers = {
									{ "i",  16333 },	-- Samuel's Remains
									{ "o", 178090 },	-- Marla's Grave
								},
								coords = {
									{ 36.6, 61.6, TIRISFAL_GLADES },
									{ 31.0, 65.0, TIRISFAL_GLADES },
								},
								cr = 1919,	-- Samuel Fipps
							}),
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77670, {	-- Meditation on Undeath
						qg = 2123,	-- Dark Cleric Duesten <Priest Trainer>
						coord = { 31.0, 66.0, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { PRIEST },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
								provider = { "i", 205951 },	-- Memory of a Troubled Acolyte
								description = "Kneel (/kneel) at a Graveyard to gain a Meditation buff, then use the Rune to complete the quest.",
							}),
							recipe(402862),	-- Engrave Gloves - Penance
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(380, {	-- Night Web's Hollow
						sourceQuest = 376,	-- The Damned
						qg = 1570,	-- Executor Arren
						coord = { 32.2, 66.0, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/10 Young Night Web Spider slain
								provider = { "n", 1504 },	-- Young Night Web Spider
							}),
							objective(2, {	-- 0/8 Night Web Spider slain
								provider = { "n", 1505 },	-- Night Web Spider
							}),
							i(3270),	-- Flax Vest
							i(3273),	-- Rugged Mail Vest / Rugged Plate Vest [7.0.3+]
							i(3272),	-- Zombie Skin Leggings
						},
					}),
					q(1470, {	-- Piercing the Veil
						qg = 5667,	-- Venya Marthand
						coord = { 31.0, 66.4, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { WARLOCK },
						groups = {
							objective(1, {	-- 0/3 Rattlecage Skull
								provider = { "i", 6281 },	-- Rattlecage Skull
								cr = 1890,	-- Rattlecage Skeleton
							}),
							recipe(688),	-- Summon Imp
						},
					}),
					q(3901, {	-- Rattling the Rattlecages
						sourceQuest = 364,	-- The Mindless Ones
						qg = 1569,	-- Shadow Priest Sarvis
						coord = { 30.8, 66.2, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/12 Rattlecage Skeleton slain
								provider = { "n", 1890 },	-- Rattlecage Skeleton
							}),
							i(3274),	-- Flax Boots
							i(11851),	-- Scavenger Tunic
							i(11852),	-- Roamer's Leggings
						},
					}),
					q(363, {	-- Rude Awakening
						qg = 1568,	-- Undertaker Mordo
						coord = { 30.2, 71.6, TIRISFAL_GLADES },
						races = { UNDEAD },
						isBreadcrumb = true
					}),
					q(3902, {	-- Scavenging Deathknell
						sourceQuest = 376,	-- The Damned
						qg = 1740,	-- Deathguard Saltain
						coord = { 31.6, 65.6, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/6 Scavenged Goods
								providers = {
									{ "i",  11127 },	-- Scavenged Goods
									{ "o", 164662 },	-- Equipment Boxes
								},
							}),
							i(11848),	-- Flax Belt
							i(11849),	-- Rustmetal Bracers
							i(11850),	-- Short Duskbat Cape
						},
					}),
					q(3095, {	-- Simple Scroll
						sourceQuests = {
							364,	-- The Mindless Ones
						},
						qg = 1569,	-- Shadow Priest Sarvis
						qi = 9546,	-- Simple Scroll
						coords = {
							{ 30.8, 66.2, TIRISFAL_GLADES },
						},
						races = { UNDEAD },
						classes = { WARRIOR },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77671, {	-- Spell Research
						qg = 2124,	-- Isabella <Mage Trainer>
						qi = 211809,	-- Comprehension Primer
						coord = { 30.8, 66.0, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { MAGE },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Ice Lance
								provider = { "i", 203745 },	-- Spell Notes: Ice Lance
							}),
							recipe(401760),	-- Engrave Gloves - Ice Lance
							i(211779),	-- Comprehension Charm
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					q(3099, {	-- Tainted Scroll
						sourceQuests = {
							364,	-- The Mindless Ones
						},
						qg = 1569,	-- Shadow Priest Sarvis
						qi = 9578,	-- Tainted Scroll
						coords = {
							{ 30.8, 66.2, TIRISFAL_GLADES },
						},
						races = { UNDEAD },
						classes = { WARLOCK },
					}),
					q(376, {	-- The Damned
						qg = 1661,	-- Novice Elreth
						coord = { 30.9, 66.1, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/6 Scavenger Paw
								provider = { "i", 3265 },	-- Scavenger Paw
								crs = {
									1509,	-- Ragged Scavenger
									1508,	-- Young Scavenger
								},
							}),
							objective(2, {	-- 0/6 Duskbat Wing
								provider = { "i", 3264 },	-- Duskbat Wing
								crs = {
									1512,	-- Duskbat
									1553,	-- Greater Duskbat
									1513,	-- Mangy Duskbat
								},
							}),
							i(6060),	-- Flax Bracers
							i(2173),	-- Old Leather Belt
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77672, {	-- The Lost Rune [Warlock]
						qg = 2126,	-- Maximillion <Warlock Trainer>
						coord = { 30.8, 66.2, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { WARLOCK },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Haunt
								provider = { "i", 205230 },	-- Rune of Haunting
							}),
							recipe(403919),	-- Engrave Gloves - Haunt
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77668, {	-- The Lost Rune [Warrior]
						qg = 2119,	-- Dannal Stern <Warrior Trainer>
						coord = { 32.6, 65.6, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { WARRIOR },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								provider = { "i", 204806 },	-- Rune of Victory Rush
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(364, {	-- The Mindless Ones
						sourceQuest = 363,	-- Rude Awakening
						qg = 1569,	-- Shadow Priest Sarvis
						coord = { 30.8, 66.2, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Mindless Zombie slain
								provider = { "n", 1501 },	-- Mindless Zombie
							}),
							objective(2, {	-- 0/8 Wretched Zombie slain
								provider = { "n", 1502 },	-- Wretched Zombie
							}),
							i(3275),	-- Flax Gloves
							i(11847),	-- Battered Cloak
						},
					}),
					q(382, {	-- The Red Messenger
						sourceQuest = 381,	-- The Scarlet Crusade
						qg = 1570,	-- Executor Arren
						coord = { 32.2, 66.0, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Scarlet Crusade Documents
								provider = { "i", 2885 },	-- Scarlet Crusade Documents
								coord = { 36.6, 68.6, TIRISFAL_GLADES },
								cr = 1667,	-- Meven Korgal
							}),
							i(3277),	-- Executor Staff
							i(3276),	-- Deathguard Buckler
						},
					}),
					q(381, {	-- The Scarlet Crusade
						sourceQuest = 380,	-- Night Web's Hollow
						qg = 1570,	-- Executor Arren
						coord = { 32.2, 66.0, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/12 Scarlet Armband
								provider = { "i", 3266 },	-- Scarlet Armband
								crs = {
									1507,	-- Scarlet Initiate
									1506,	-- Scarlet Convert
									1667,	-- Meven Korgal
								},
							}),
							i(3268),	-- Forsaken Dagger
							i(3269),	-- Forsaken Maul
							i(3267),	-- Forsaken Shortsword
							i(5779),	-- Forsaken Bastard Sword
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77669, {	-- The Scarlet Rune
						qg = 2122,	-- David Trias <Rogue Trainer>
						coord = { 32.6, 65.6, TIRISFAL_GLADES },
						races = { UNDEAD },
						classes = { ROGUE },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								provider = { "i", 204795 },	-- Rune of Shadowstrike
								coord = { 38.2, 68.4, TIRISFAL_GLADES },
								cr = 1506,	-- Scarlet Convert
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(383, {	-- Vital Intelligence
						sourceQuest = 382,	-- The Red Messenger
						qg = 1570,	-- Executor Arren
						qi = 2885,	-- Scarlet Crusade Documents
						coord = { 32.2, 66.0, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						lvl = 2,
					}),
				}),
				n(TREASURES, {
					applyclassicphase(SOD_PHASE_ONE, o(406736, {	-- Lost Stash
						coord = { 24.7, 59.4, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						groups = {
							i(205230, {	-- Rune of Haunting
								classes = { WARLOCK },
							}),
							i(204806, {	-- Rune of Victory Rush
								classes = { WARRIOR },
							}),
						},
					})),
				}),
				n(ZONE_DROPS, {
					i(3295, {	-- Deadman Blade
						coords = {
							{ 36.6, 61.6, TIRISFAL_GLADES },
						},
						cr = 1919,	-- Samuel Fipps
					}),
					i(3293, {	-- Deadman Cleaver
						coords = {
							{ 36.6, 61.8, TIRISFAL_GLADES },
						},
						cr = 1917,	-- Daniel Ulfman
					}),
					i(3294, {	-- Deadman Club
						coords = {
							{ 36.6, 61.6, TIRISFAL_GLADES },
						},
						cr = 1918,	-- Karrel Grayves
					}),
					i(3296, {	-- Deadman Dagger
						coords = {
							{ 36.6, 61.6, TIRISFAL_GLADES },
						},
						cr = 1916,	-- Stephen Bhartec
					}),
					i(3262, {	-- Putrid Wooden Hammer
						coords = {
							{ 33.0, 63.6, TIRISFAL_GLADES },
						},
						cr = 1890,	-- Rattlecage Skeleton
					}),
					i(3260, {	-- Scarlet Initiate Robes
						coord = { 37.4, 68.0, TIRISFAL_GLADES },
						cr = 1507,	-- Scarlet Initiate
					}),
					applyclassicphase(SOD_PHASE_ONE, i(203751, {	-- Spell Notes: CALE ENCI
						coord = { 38.2, 68.4, TIRISFAL_GLADES },
						classes = { MAGE },
						cr = 1507,	-- Scarlet Initiate
					})),
					i(2754, {	-- Tarnished Bastard Sword
						coords = {
							{ 36.8, 68.0, TIRISFAL_GLADES },
						},
						crs = {
							1506,	-- Scarlet Convert
						},
					}),
					i(3263, {	-- Webbed Pants
						coords = {
							{ 27.6, 59.2, TIRISFAL_GLADES },
						},
						cr = 1505,	-- Night Web Spider
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(768),	-- Explore Tirisfal Glades
		}),
		explorationHeader({
			groups = {
				exploration(157),	-- Agamand Mills
				exploration(165),	-- Balnir Farmstead
				exploration(162),	-- Brightwater Lake
				exploration(159),	-- Brill
				exploration(166),	-- Cold Hearth Manor
				exploration(167),	-- Crusader Outpost
				exploration(154),	-- Deathknell
				exploration(164),	-- Garren's Haunt
				exploration(811),	-- Nightmare Vale
				exploration(459),	-- Scarlet Watch Post
				exploration(156),	-- Solliden Farmstead
				exploration(810),	-- Stillwater Pond
				exploration(161),	-- Terrace of Repose
				exploration(152),	-- The Bulwark
				exploration(812),	-- Venomweb Vale
				exploration(160),	-- Whispering Gardens
				exploration(1497),	-- Undercity
				--[[
				exploration(158),	-- Agamand Family Crypt
				exploration(2118),	-- Brill Town Hall
				exploration(173),	-- Faol's Rest
				exploration(2119),	-- Gallows' End Tavern
				exploration(155),	-- Night Web's Hollow
				exploration(2117),	-- Shadow Grave
				exploration(2399),	-- The Great Sea
				exploration(168),	-- The North Coast
				exploration(169),	-- Whispering Shore
				]]--
			},
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(208005, {	-- Agamand Relic Coffer Key
				coords = {
					{ 58.8, 38.2, TIRISFAL_GLADES },
					{ 53.0, 28.8, TIRISFAL_GLADES },
					{ 46.0, 30.6, TIRISFAL_GLADES },
					{ 52.8, 56.8, TIRISFAL_GLADES },
				},
				classes = { ROGUE },
				crs = {
					1674,	-- Rot Hide Gnoll
					1534,	-- Wailing Ancestor
					1523,	-- Cracked Skull Soldier
					1522,	-- Darkeye Bonecaster
					1526,	-- Ravaged Corpse
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208085, {	-- Scarlet Lieutenant Signet Ring
				coords = {
					{ 51.8, 67.4, TIRISFAL_GLADES },
					{ 79.0, 26.0, TIRISFAL_GLADES },
				},
				classes = { ROGUE },
				crs = {
					1662,	-- Captain Perrine
					1665,	-- Captain Melrache
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208007, {	-- Shipwreck Cache Key
				coord = { 35.8, 43.4, TIRISFAL_GLADES },
				classes = { ROGUE },
				crs = {
					1545,	-- Vile Fin Muckdweller
					1543,	-- Vile Fin Puddlejumper
					1544,	-- Vile Fin Minor Oracle
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208034, {	-- Tirisfal Treasure Map
				cost = {
					{ "i", 208038, 1 },	-- Bottom-Left Map Piece
					{ "i", 208037, 1 },	-- Bottom-Right Map Piece
					{ "i", 208036, 1 },	-- Top-Left Map Piece
					{ "i", 208035, 1 },	-- Top-Right Map Piece
				},
				classes = { ROGUE },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208038, {	-- Bottom-Left Map Piece
				coord = { 56.6, 44.4, TIRISFAL_GLADES },
				classes = { ROGUE },
				crs = {
					1941,	-- Rot Hide Graverobber
					1675,	-- Rot Hide Mongrel
					1674,	-- Rot Hide Gnoll
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208037, {	-- Bottom-Right Map Piece
				coord = { 35.8, 43.4, TIRISFAL_GLADES },
				classes = { ROGUE },
				crs = {
					1545,	-- Vile Fin Muckdweller
					1543,	-- Vile Fin Puddlejumper
					1544,	-- Vile Fin Minor Oracle
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208036, {	-- Top-Left Map Piece
				coord = { 37.4, 49.2, TIRISFAL_GLADES },
				classes = { ROGUE },
				crs = {
					1935,	-- Tirisfal Farmhand
					1934,	-- Tirisfal Farmer
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208035, {	-- Top-Right Map Piece
				coord = { 32.8, 50.4, TIRISFAL_GLADES },
				classes = { ROGUE },
				crs = {
					1535,	-- Scarlet Warrior
					1536,	-- Scarlet Missionary
					1538,	-- Scarlet Friar
					1540,	-- Scarlet Vanguard
					1537,	-- Scarlet Zealot
					1539,	-- Scarlet Neophyte
				},
			})),
		}),
		n(QUESTS, {
			q(361, {	-- A Letter Undelivered
				providers = {
					{ "i", 2839 },	-- A Letter to Yvette
					{ "i", 2837 },	-- Thurman's Letter
				},
				coord = { 61.6, 52.6, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(367, {	-- A New Plague (1/4)
				qg = 1518,	-- Apothecary Johaan
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/5 Darkhound Blood
						provider = { "i", 2858 },	-- Darkhound Blood
						crs = {
							1548,	-- Cursed Darkhound
							1547,	-- Decrepit Darkhound
						},
					}),
					i(3382),	-- Weak Troll's Blood Potion
				},
			}),
			q(368, {	-- A New Plague (2/4)
				sourceQuest = 367,	-- A New Plague (1/4)
				qg = 1518,	-- Apothecary Johaan
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/5 Vile Fin Scale
						provider = { "i", 2859 },	-- Vile Fin Scale
						crs = {
							1544,	-- Vile Fin Minor Oracle
							1545,	-- Vile Fin Muckdweller
							1543,	-- Vile Fin Puddlejumper
						},
					}),
					i(3434),	-- Slumber Sand
				},
			}),
			q(369, {	-- A New Plague (3/4)
				sourceQuest = 368,	-- A New Plague (2/4)
				qg = 1518,	-- Apothecary Johaan
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/4 Vicious Night Web Spider Venom
						provider = { "i", 2872 },	-- Vicious Night Web Spider Venom
						cr = 1555,	-- Vicious Night Web Spider
					}),
					i(3442),	-- Apprentice Sash
				},
			}),
			q(492, {	-- A New Plague (4/4)
				sourceQuest = 369,	-- A New Plague (3/4)
				qg = 1518,	-- Apothecary Johaan
				qi = 3460,	-- Johaan's Special Drink
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
			}),
			q(404, {	-- A Putrid Task
				qg = 1496,	-- Deathguard Dillinger
				coord = { 58.21, 51.45, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/7 Putrid Claw
						provider = { "i", 2855 },	-- Putrid Claw
						crs = {
							1526,	-- Ravaged Corpse
							1525,	-- Rotting Dead
						},
					}),
				},
			}),
			q(1821, {	-- Agamand Heirlooms
				sourceQuest = 1820,	-- Speak with Coleman
				qg = 1500,	-- Coleman Farthing
				coord = { 61.73, 52.30, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Agamand Family Axe
						providers = {
							{ "i",   7567 },	-- Agamand Family Axe
							{ "o", 105170 },	-- Agamand Weapon Rack
						},
						coord = { 51.7, 25.7, TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/1 Agamand Family Dagger
						providers = {
							{ "i",   7568 },	-- Agamand Family Dagger
							{ "o", 105172 },	-- Agamand Weapon Rack
						},
						coord = { 52.6, 26.9, TIRISFAL_GLADES },
					}),
					objective(3, {	-- 0/1 Agamand Family Mace
						providers = {
							{ "i",   7569 },	-- Agamand Family Mace
							{ "o", 105171 },	-- Agamand Weapon Rack
						},
						coord = { 51.9, 27.1, TIRISFAL_GLADES },
					}),
					objective(4, {	-- 0/1 Agamand Family Sword
						providers = {
							{ "i",   7566 },	-- Agamand Family Sword
							{ "o", 105169 },	-- Agamand Weapon Rack
						},
						coord = { 52.6, 25.9, TIRISFAL_GLADES },
					}),
				},
			}),
			q(427, {	-- At War With The Scarlet Crusade (1/4)
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/10 Scarlet Warrior slain
						provider = { "n", 1535 },	-- Scarlet Warrior
					}),
				},
			}),
			q(370, {	-- At War With The Scarlet Crusade (2/4)
				sourceQuest = 427,	-- At War With The Scarlet Crusade (1/4)
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Captain Perrine slain
						provider = { "n", 1662 },	-- Captain Perrine
						coord = { 51.8, 67.4, TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/3 Scarlet Zealot slain
						provider = { "n", 1537 },	-- Scarlet Zealot
					}),
					objective(3, {	-- 0/3 Scarlet Missionary slain
						provider = { "n", 1536 },	-- Scarlet Missionary
					}),
				},
			}),
			q(371, {	-- At War With The Scarlet Crusade (3/4)
				sourceQuest = 370,	-- At War With The Scarlet Crusade (2/4)
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Captain Vachon slain
						provider = { "n", 1664 },	-- Captain Vachon
						coord = { 79.6, 55.8, TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/5 Scarlet Friar slain
						provider = { "n", 1538 },	-- Scarlet Friar
					}),
				},
			}),
			q(372, {	-- At War With The Scarlet Crusade (4/4)
				sourceQuest = 371,	-- At War With The Scarlet Crusade (3/4)
				qg = 1515,	-- Executor Zygand
				coord = { 60.6, 51.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Captain Melrache slain
						provider = { "n", 1665 },	-- Captain Melrache
						coord = { 79.6, 26.8, TIRISFAL_GLADES },
					}),
					objective(2, {	-- 0/2 Scarlet Bodyguard slain
						provider = { "n", 1660 },	-- Scarlet Bodyguard
					}),
					i(3445),	-- Ceremonial Knife
					i(3071),	-- Striking Hatchet
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
				questID = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
				qgs = {
					208920,	-- Penny Hawkins <Bartender>
					208919,	-- Blueheart
				},
				coord = { 61.8, 52.0, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				groups = {
					i(204716, {	-- Rune of Frenzied Assault
						classes = { WARRIOR },
						groups = {
							recipe(425447),	-- Engrave Pants - Frenzied Assault
						},
					}),
				},
			})),
			q(354, {	-- Deaths in the Family
				qg = 1500,	-- Coleman Farthing
				coord = { 61.73, 52.30, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 Gregor's Remains
						provider = { "i", 2829 },	-- Gregor's Remains
						coord = { 46.8, 29.6, TIRISFAL_GLADES },
						cr = 1654,	-- Gregor Agamand
					}),
					objective(2, {	-- 0/1 Nissa's Remains
						provider = { "i", 2828 },	-- Nissa's Remains
						coord = { 49.6, 36.2, TIRISFAL_GLADES },
						cr = 1655,	-- Nissa Agamand
					}),
					objective(3, {	-- 0/1 Thurman's Remains
						provider = { "i", 2830 },	-- Thurman's Remains
						coord = { 44.0, 33.4, TIRISFAL_GLADES },
						cr = 1656,	-- Thurman Agamand
					}),
				},
			}),
			q(445, {	-- Delivery to Silverpine Forest
				qg = 1518,	-- Apothecary Johaan
				qi = 3238,	-- Johaan's Findings
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 9,
			}),
			q(5482, {	-- Doom Weed
				sourceQuest = 5481,	-- Gordo's Task
				qg = 10665,	-- Junior Apothecary Holland
				coord = { 57.5, 49.0, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/10 Doom Weed
						provider = { "i", 13702 },	-- Doom Weed
					}),
				},
			}),
			q(365, {	-- Fields of Grief (1/2)
				qg = 1519,	-- Deathguard Simmer
				coord = { 40.9, 54.2, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/10 Tirisfal Pumpkin
						providers = {
							{ "i", 2846 },	-- Tirisfal Pumpkin
							{ "o", 375 },	-- Tirisfal Pumpkin
						},
						coord = { 35.5, 52.5, TIRISFAL_GLADES },
					}),
				},
			}),
			q(407, {	-- Fields of Grief (2/2)
				sourceQuest = 365,	-- Fields of Grief (1/2)
				qg = 1518,	-- Apothecary Johaan
				qi = 3035,	-- Laced Pumpkin
				coord = { 59.5, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
			}),
			q(359, {	-- Forsaken Duties
				qg = 1499,	-- Magistrate Sevren
				coord = { 61.2, 50.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
			}),
			q(5650, {	-- Garments of Darkness
				sourceQuest = 5651,	-- In Favor of Darkness
				qg = 2129,	-- Dark Cleric Beryl <Priest Trainer>
				coord = { 61.6, 52.2, TIRISFAL_GLADES },
				races = { UNDEAD },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					objective(1, {	-- Heal and fortify Deathguard Kel
						provider = { "n", 12428 },	-- Deathguard Kel
						coord = { 59.2, 46.4, TIRISFAL_GLADES },
					}),
					i(16607),	-- Acolyte's Sacrificial Robes
				},
			}),
			q(5481, {	-- Gordo's Task
				qg = 10666,	-- Gordo
				coord = { 55.8, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/3 Gloom Weed
						providers = {
							{ "i",  12737 },	-- Gloom Weed
							{ "o", 175566 },	-- Gloom Weed
						},
						coord = { 49.7, 54.9, TIRISFAL_GLADES },
					}),
				},
			}),
			q(358, {	-- Graverobbers
				qg = 1499,	-- Magistrate Sevren
				coord = { 61.2, 50.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Rot Hide Graverobber
						provider = { "n", 1941 },	-- Rot Hide Graverobber
					}),
					objective(2, {	-- 0/5 Rot Hide Mongrel
						provider = { "n", 1675 },	-- Rot Hide Mongrel
					}),
					objective(3, {	-- 0/8 Embalming Ichor
						provider = { "i", 2834 },	-- Embalming Ichor
						crs = {
							1674,	-- Rot Hide Gnoll
							1941,	-- Rot Hide Graverobber
							1675,	-- Rot Hide Mongrel
						},
					}),
					i(6063),	-- Cold Steel Gauntlets
					i(3439),	-- Zombie Skin Boots
				},
			}),
			q(1822, {	-- Heirloom Weapon
				sourceQuest = 1821,	-- Agamand Heirlooms
				qg = 1500,	-- Coleman Farthing
				coord = { 61.73, 52.30, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				lvl = 10,
				groups = {
					i(7115),	-- Heirloom Axe
					i(7117),	-- Heirloom Hammer
					i(7116),	-- Heirloom Dagger
					i(7118),	-- Heirloom Sword
				},
			}),
			q(374, {	-- Proof of Demise
				sourceQuest = 427,	-- At War With The Scarlet Crusade (1/4)
				qg = 1652,	-- Deathguard Burgess
				coord = { 60.8, 52.0, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/10 Scarlet Insignia Ring
						provider = { "i", 2875 },	-- Scarlet Insignia Ring
						crs = {
							1665,	-- Captain Melrache
							1662,	-- Captain Perrine
							1664,	-- Captain Vachon
							1660,	-- Scarlet Bodyguard
							1538,	-- Scarlet Friar
							1536,	-- Scarlet Missionary
							1539,	-- Scarlet Neophyte
							1540,	-- Scarlet Vanguard
							1535,	-- Scarlet Warrior
							1537,	-- Scarlet Zealot
						},
					}),
					i(3435),	-- Zombie Skin Bracers
					i(3437),	-- Clasped Belt
					i(12299),	-- Netted Gloves
				},
			}),
			q(409, {	-- Proving Allegiance
				sourceQuest = 366,	-- Return the Book
				qg = 1497,	-- Gunther Arcanus
				coord = { 68.2, 42.0, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					q(431, {	-- Candles of Beckoning
						provider = { "o", 1586 },	-- Crate of Candles
						coord = { 68.1, 42.0, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						repeatable = true,
						lvl = 5,
						groups = {
							i(3080),	-- Candle of Beckoning
						},
					}),
					q(410, {	-- The Dormant Shade
						providers = {
							{ "i", 3080 },	-- Candle of Beckoning
							{ "o", 1557 },	-- Lillith's Dinner Table
						},
						coord = { 66.6, 44.8, TIRISFAL_GLADES },
						races = HORDE_ONLY,
						repeatable = true,
						lvl = 5,
						groups = {
							objective(1, {	-- 0/1 Lillith Nefara slain
								questID = 409,	-- Proving Allegiance
								provider = { "n", 1946 },	-- Lillith Nefara
								coord = { 66.6, 44.8, TIRISFAL_GLADES },
							}),
						},
					}),
				},
			}),
			q(356, {	-- Rear Guard Patrol
				qg = 1495,	-- Deathguard Linnea
				coord = { 65.4, 60.2, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/8 Bleeding Horror slain
						provider = { "n", 1529 },	-- Bleeding Horror
					}),
					objective(2, {	-- 0/8 Wandering Spirit slain
						provider = { "n", 1532 },	-- Wandering Spirit
					}),
				},
			}),
			q(366, {	-- Return the Book
				sourceQuest = 357,	-- The Lich's Identity
				qg = 1498,	-- Bethor Iceshard
				qi = 3016,	-- Gunther's Spellbook
				coord = { 84.2, 17.4, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 5,
			}),
			q(360, {	-- Return to the Magistrate
				sourceQuest = 359,	-- Forsaken Duties
				qg = 1495,	-- Deathguard Linnea
				coord = { 65.4, 60.2, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
			}),
			q(1820, {	-- Speak with Coleman
				sourceQuest = 1819,	-- Ulag the Cleaver
				qg = 1496,	-- Deathguard Dillinger
				coord = { 58.21, 51.45, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(1818, {	-- Speak with Dillinger
				altQuests = { 1502 },	-- Thun'grim Firegaze
				qg = 2131,	-- Austil de Mon
				coord = { 61.84, 52.53, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(355, {	-- Speak with Sevren
				qg = 1500,	-- Coleman Farthing
				coord = { 61.73, 52.30, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
			}),
			q(375, {	-- The Chill of Death
				qg = 1521,	-- Gretchen Dedmar
				coord = { 61.9, 52.7, TIRISFAL_GLADES },
				cost = { { "i", 2320, 1 } },	-- Coarse Thread
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/5 Duskbat Pelt
						provider = { "i", 2876 },	-- Duskbat Pelt
						crs = {
							1553,	-- Greater Duskbat
							1554,	-- Vampiric Duskbat
						},
					}),
					i(3833),	-- Adept's Cloak
					i(5939),	-- Sewing Gloves
				},
			}),
			q(408, {	-- The Family Crypt
				sourceQuest = 355,	-- Speak with Sevren
				qg = 1499,	-- Magistrate Sevren
				coord = { 61.2, 50.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Wailing Ancestor slain
						provider = { "n", 1534 },	-- Wailing Ancestor
					}),
					objective(2, {	-- 0/8 Rotting Ancestor slain
						provider = { "n", 1530 },	-- Rotting Ancestor
					}),
					objective(3, {	-- 0/1 Dargol's Skull
						provider = { "i", 3082 },	-- Dargol's Skull
						coord = { 52.6, 26.4, TIRISFAL_GLADES },
						cr = 1658,	-- Captain Dargol
					}),
					i(3446),	-- Darkwood Staff
					i(3440),	-- Bonecracker
				},
			}),
			q(362, {	-- The Haunted Mills
				qg = 1500,	-- Coleman Farthing
				coord = { 61.73, 52.30, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/1 Devlin's Remains
						provider = { "i", 2831 },	-- Devlin's Remains
						coord = { 47.6, 40.2, TIRISFAL_GLADES },
						cr = 1657,	-- Devlin Agamand
					}),
				},
			}),
			q(357, {	-- The Lich's Identity
				sourceQuest = 405,	-- The Prodigal Lich
				qg = 1498,	-- Bethor Iceshard
				coord = { 84.2, 17.4, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 The Lich's Spellbook
						provider = { "i", 2833 },	-- The Lich's Spellbook
						coord = { 68.0, 42.1, TIRISFAL_GLADES },
					}),
				},
			}),
			q(426, {	-- The Mills Overrun
				sourceQuest = 404,	-- A Putrid Task
				qg = 1496,	-- Deathguard Dillinger
				coord = { 58.21, 51.45, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/5 Notched Rib
						provider = { "i", 3162 },	-- Notched Rib
						crs = {
							1523,	-- Cracked Skull Soldier
							1520,	-- Rattlecage Soldier
						},
					}),
					objective(2, {	-- 0/3 Blackened Skull
						provider = { "i", 3163 },	-- Blackened Skull
						cr = 1522,	-- Darkeye Bonecaster
					}),
					i(3447),	-- Cryptwalker Boots
					i(3834),	-- Sturdy Cloth Trousers
				},
			}),
			q(405, {	-- The Prodigal Lich
				qg = 1499,	-- Magistrate Sevren
				qi = 3017,	-- Sevren's Orders
				coord = { 61.2, 50.8, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
			}),
			q(411, {	-- The Prodigal Lich Returns
				sourceQuest = 409,	-- Proving Allegiance
				qg = 1497,	-- Gunther Arcanus
				qi = 3081,	-- Nether Gem
				coord = { 68.2, 42.0, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					i(5940),	-- Bone Buckler
				},
			}),
			q(1819, {	-- Ulag the Cleaver
				sourceQuest = 1818,	-- Speak with Dillinger
				altQuests = { 1502 },	-- Thun'grim Firegaze
				qg = 1496,	-- Deathguard Dillinger
				coord = { 58.21, 51.45, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				classes = { WARRIOR },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Ulag the Cleaver slain
						provider = { "n", 6390 },	-- Ulag the Cleaver
						coord = { 59.2, 48.6, TIRISFAL_GLADES },
					}),
				},
			}),
			q(398, {	-- Wanted: Maggot Eye
				provider = { "o", 711 },	-- Wanted!
				coord = { 60.7, 51.5, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/1 Maggot Eye's Paw
						provider = { "i", 3635 },	-- Maggot Eye's Paw
						coord = { 58.6, 31.6, TIRISFAL_GLADES },
						cr = 1753,	-- Maggot Eye
					}),
					i(5941),	-- Brass Scale Pants
					i(3444),	-- Tiller's Vest
				},
			}),
		}),
		n(RARES, {
			n(10356, {	-- Bayne
				coords = {
					{ 40.8, 43.2, TIRISFAL_GLADES },
					{ 57.6, 41.6, TIRISFAL_GLADES },
					{ 42.0, 52.6, TIRISFAL_GLADES },
					{ 45.0, 54.0, TIRISFAL_GLADES },
					{ 50.0, 50.8, TIRISFAL_GLADES },
					{ 51.4, 52.2, TIRISFAL_GLADES },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(208927, {	-- Dead Acolyte
				coord = { 76.6, 44.8, TIRISFAL_GLADES },
				classes = { WARLOCK },
				races = HORDE_ONLY,
				groups = {
					i(208223, {	-- Acolyte's Knapsack
						classes = { WARLOCK },
						groups = {
							i(208224),	-- Acolyte's Note
							i(205181),	-- Unidentified Artifact
						},
					}),
					i(205183, {	-- Fel-Powered Artifact
						description = "Bring the Unidentified Artifact back to the warlock trainer in the zone to receive the Powerless Artifact and then come back to acquire this item.\n\nBring it to Carendin Halgar in Undercity to receive the rune.",
						cost = { { "i", 205182, 1 } },	-- Powerless Artifact
						classes = { WARLOCK },
					}),
				},
			})),
			n(1911, {	-- Deeb
				coords = {
					{ 58.8, 27.2, TIRISFAL_GLADES },
					{ 62.6, 28.6, TIRISFAL_GLADES },
				},
				groups = {
					i(4303),	-- Cranial Thumper
				},
			}),
			n(1936, {	-- Farmer Solliden
				coords = {
					{ 34.2, 52.6, TIRISFAL_GLADES },
					{ 38.0, 49.8, TIRISFAL_GLADES },
				},
				groups = {
					i(3334),	-- Farmer's Shovel
					i(4261),	-- Solliden's Trousers
					i(2091),	-- Magic Dust
				},
			}),
			n(10358, {	-- Fellicent's Shade
				coords = {
					{ 74.6, 63.8, TIRISFAL_GLADES },
					{ 77.8, 63.2, TIRISFAL_GLADES },
					{ 76.4, 57.4, TIRISFAL_GLADES },
					{ 74.6, 59.6, TIRISFAL_GLADES },
					{ 74.8, 60.6, TIRISFAL_GLADES },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(202060, {	-- Frozen Murloc
				coord = { 66.2, 40.0, TIRISFAL_GLADES },
				classes = { MAGE, WARLOCK },
				groups = {
					i(205228, {	-- Rune of Chaos Bolt
						classes = { WARLOCK },
						groups = {
							recipe(403925),	-- Engrave Gloves - Chaos Bolt
						},
					}),
					i(203748, {	-- Spell Notes: Burnout
						classes = { MAGE },
						groups = {
							recipe(401759),	-- Engrave Chest - Burnout
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(208196, {	-- Gillgar
				coord = { 27.2, 46.4, TIRISFAL_GLADES },
				classes = { PRIEST, MAGE, WARRIOR },
				groups = {
					i(205940, {	-- Memory of a Dark Purpose
						classes = { PRIEST },
						groups = {
							recipe(425216),	-- Engrave Chest - Void Plague
						},
					}),
					i(204809, {	-- Rune of Furious Thunder
						classes = { WARRIOR },
						groups = {
							recipe(403476),	-- Engrave Pants - Furious Thunder
						},
					}),
					i(203753, {	-- Spell Notes: RING SEFF OSTROF
						classes = { MAGE },
					}),
				},
			})),
			n(1531, {	-- Lost Soul
				coords = {
					{ 48.6, 36.2, TIRISFAL_GLADES },
					{ 53.6, 48.6, TIRISFAL_GLADES },
				},
				groups = {
					i(3322),	-- Wispy Cloak
				},
			}),
			n(1910, {	-- Muad
				coord = { 35.8, 43.0, TIRISFAL_GLADES },
				groups = {
					i(4302),	-- Small Green Dagger
				},
			}),
			n(10357, {	-- Ressan the Needler
				coords = {
					{ 43.6, 67.0, TIRISFAL_GLADES },
					{ 47.0, 65.0, TIRISFAL_GLADES },
					{ 50.2, 64.4, TIRISFAL_GLADES },
					{ 52.4, 63.8, TIRISFAL_GLADES },
					{ 55.6, 60.0, TIRISFAL_GLADES },
					{ 56.2, 63.6, TIRISFAL_GLADES },
				},
			}),
			n(10359, {	-- Sri'skulk
				coords = {
					{ 83.0, 55.8, TIRISFAL_GLADES },
					{ 85.2, 49.4, TIRISFAL_GLADES },
					{ 89.4, 40.2, TIRISFAL_GLADES },
					{ 90.2, 47.6, TIRISFAL_GLADES },
					{ 88.8, 53.6, TIRISFAL_GLADES },
				},
			}),
			n(1533, {	-- Tormented Spirit
				coord = { 46.0, 35.4, TIRISFAL_GLADES },
				groups = {
					i(3323),	-- Ghostly Bracers
				},
			}),
		}),
		n(RIDING_TRAINER, {
			n(4773, {	-- Velma Warnam <Undead Horse Riding Instructor>
				coord = { 60.0, 52.6, TIRISFAL_GLADES },
				races = { ORC, TROLL, UNDEAD },

				-- Available to Undead without faction requirements.
				minReputation = { FACTION_UNDERCITY, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. UNDEAD .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(10906, {	-- Undead Horsemanship
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
				provider = { "o", 405201 },	-- Shipwreck Cache
				coord = { 66.7, 24.6, TIRISFAL_GLADES },
				cost = { { "i", 208007, 1 } },	-- Shipwreck Cache Key
				classes = { ROGUE },
				groups = {
					recipe(400081),	-- Engrave Pants - Between the Eyes
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
				provider = { "o", 386675 },	-- Buried Treasure
				coord = { 52.9, 54.0, TIRISFAL_GLADES },
				cost = { { "i", 208034, 1 } },	-- Tirisfal Treasure Map
				classes = { ROGUE },
				groups = {
					recipe(400095),	-- Engrave Chest - Quick Draw
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203993, {	-- Rune of Slaughter
				provider = { "o", 404941 },	-- Relic Coffer
				coord = { 52.5, 25.8, TIRISFAL_GLADES },
				cost = { { "i", 208005, 1 } },	-- Agamand Relic Coffer Key
				classes = { ROGUE },
				groups = {
					recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208185, {	-- The Apothecary's Metaphysical Primer
				provider = { "o", 405879 },	-- Apothecary Society Primer
				coord = { 59.5, 52.3, TIRISFAL_GLADES },
			})),
		}),
		n(VENDORS, {
			n(2118, {	-- Abigail Shiel <Trade Supplies>
				coords = {
					{ 61.0, 52.4, TIRISFAL_GLADES },
				},
				races = HORDE_ONLY,
				groups = {
					i(12226),	-- Recipe: Crispy Bat Wing (RECIPE!)
				},
			}),
			n(11057, {	-- Apothecary Dithers
				coord = { 83.2, 69.2, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					i(13320),	-- Arcane Quickener
					i(13370),	-- Vitreous Focuser
				},
			}),
			n(10856, {	-- Argent Quartermaster Hasana <The Argent Dawn>
				coords = {
					{ 83.2, 68.2, TIRISFAL_GLADES },
				},
				sym = {{ "select", "npcID", 11536 }, { "isnt", "questID" }, { "pop" }, { "exclude", "itemID", 136801, 136928 } },	-- Quartermaster Miranda Breechlock <The Argent Crusade>
			}),
			n(3522, {	-- Constance Brisboise <Apprentice Clothier>
				coord = { 52.6, 55.6, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(2310, {	-- Jamie Nore
				coord = { 60.8, 50.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(203990, {	-- Rune of Mutilation
						cost = { { "i", 208086, 1 } },	-- Forged Scarlet Memorandum
						classes = { ROGUE },
						groups = {
							recipe(400094),	-- Engrave Gloves - Mutilate
						},
					})),
				},
			}),
			n(3550, {	-- Martine Tramblay <Fishing Supplies>
				coord = { 65.8, 59.6, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(2127, {	-- Rupert Boch <Warlock Trainer>
				coord = { 61.6, 52.4, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(205182, {	-- Powerless Artifact
						cost = { { "i", 205181, 1 } },	-- Unidentified Artifact
						classes = { WARLOCK },
					})),
				},
			}),
			n(3548, {	-- Selina Weston <Alchemy & Herbalism Supplies>
				coords = {
					{ 61.8, 50.0, TIRISFAL_GLADES },
				},
				races = HORDE_ONLY,
			}),
			n(12943, {	-- Werg Thickblade <Leatherworking Supplies>
				coords = {
					{ 83.2, 69.6, TIRISFAL_GLADES },
				},
				races = HORDE_ONLY,
				groups = {
					i(15741, {	-- Pattern: Stormshroud Pants (RECIPE!)
						isLimited = true,
					}),
					i(15725, {	-- Pattern: Wicked Leather Gauntlets (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(4731, {	-- Zachariah Post <Undead Horse Merchant>
				coords = {
					{ 59.8, 52.6, TIRISFAL_GLADES },
				},
				-- Available to Undead without faction requirements.
				minReputation = { FACTION_UNDERCITY, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. UNDEAD .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = HORDE_ONLY,
				groups = {
					i(13332),	-- Blue Skeletal Horse (MOUNT!)
					i(13333),	-- Brown Skeletal Horse (MOUNT!)
					i(13334),	-- Green Skeletal Warhorse (MOUNT!)
					i(18791),	-- Purple Skeletal Warhorse (MOUNT!)
					i(13331),	-- Red Skeletal Horse (MOUNT!)
				},
			}),
		}),
		applyclassicphase(SOD_PHASE_ONE, n(WILD_POLYMORPH, {
			races = HORDE_ONLY,
			classes = { MAGE },
			groups = {
				i(203749, {	-- Spell Notes: Enlightenment
					cost = { { "i", 208183, 6 } },	-- Apothecary Notes
					classes = { MAGE },
					groups = {
						recipe(415942),	-- Engrave Chest - Enlightenment
					},
				}),
				i(208183, {	-- Apothecary Notes
					cr = 208712,	-- Odd Melon
				}),
			},
		})),
		n(ZONE_DROPS, {
			i(2839, {	-- A Letter to Yvette
				crs = {
					1523,	-- Cracked Skull Soldier
					1522,	-- Darkeye Bonecaster
					1520,	-- Rattlecage Soldier
				},
			}),
			-- Added to Dargol in Tirisfall via Pickpocket (not trolling)
			i(3330, {	-- Dargol's Hauberk
				coord = { 52.6, 26.2, TIRISFAL_GLADES },
				cr = 1658,	-- Captain Dargol
			}),
			i(3335, {	-- Farmer's Broom
				coords = {
					{ 40.6, 51.8, TIRISFAL_GLADES },
					{ 36.8, 51.6, TIRISFAL_GLADES },
				},
				cr = 1935,	-- Tirisfal Farmhand
			}),
			i(3334, {	-- Farmer's Shovel
				coords = {
					{ 38.2, 50.0, TIRISFAL_GLADES },
					{ 34.6, 51.6, TIRISFAL_GLADES },
					{ 44.6, 33.2, TIRISFAL_GLADES },
					{ 36.2, 50.4, TIRISFAL_GLADES },
					{ 40.6, 51.8, TIRISFAL_GLADES },
					{ 34.4, 49.0, TIRISFAL_GLADES },
				},
				crs = {
					1936,	-- Farmer Solliden
					1934,	-- Tirisfal Farmer
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, i(204906, {	-- Gnoll Blood
				coords = {
					{ 59.4, 33.6, TIRISFAL_GLADES },
					{ 56.2, 44.8, TIRISFAL_GLADES },
				},
				classes = { WARLOCK },
				crs = {
					1675,	-- Rot Hide Mongrel
					1941,	-- Rot Hide Graverobber
					1674,	-- Rot Hide Gnoll
				},
			})),
			i(3321, {	-- Gray Fur Booties
				coords = {
					{ 86.0, 38.2, TIRISFAL_GLADES },
					{ 80.4, 42.2, TIRISFAL_GLADES },
					{ 79.8, 49.0, TIRISFAL_GLADES },
					{ 82.8, 51.0, TIRISFAL_GLADES },
					{ 88.2, 49.6, TIRISFAL_GLADES },
					{ 89.6, 43.6, TIRISFAL_GLADES },
					{ 86.0, 46.2, TIRISFAL_GLADES },
				},
				cr = 1549,	-- Ravenous Darkhound
			}),
			applyclassicphase(SOD_PHASE_ONE, i(207973, {	-- Hound Jawbone
				coords = {
					{ 44.8, 48.4, TIRISFAL_GLADES },
					{ 55.4, 65.4, TIRISFAL_GLADES },
					{ 85.0, 46.4, TIRISFAL_GLADES },
				},
				classes = { WARLOCK },
				crs = {
					1548,	-- Cursed Darkhound
					1547,	-- Decrepit Darkhound
					1549,	-- Ravenous Darkhound
				},
			})),
			i(3331, {	-- Melrache's Cape
				coord = { 79.4, 26.0, TIRISFAL_GLADES },
				cr = 1665,	-- Captain Melrache
				-- This item was given an description about how the NPC it drops from is friendly to the Alliance in pre-cata iterations of the game.
				-- That information is incorrect unless someone can point to a specific patch where it would have merit. //Danny Donkey
			}),
			applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
				coords = {
					{ 40.6, 51.8, TIRISFAL_GLADES },
					{ 36.8, 51.6, TIRISFAL_GLADES },
				},
				classes = { PRIEST },
				crs = {
					1934,	-- Tirisfal Farmer
					1935,	-- Tirisfal Farmhand
				},
				groups = {
					recipe(402854),	-- Engrave Pants - Shared Pain
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207974, {	-- Ominous Tome
				coord = { 46.8, 35.0, TIRISFAL_GLADES },
				classes = { WARLOCK },
				cr = 1522,	-- Darkeye Bonecaster
			})),
			i(3332, {	-- Perrine's Boots
				coord = { 51.6, 67.6, TIRISFAL_GLADES },
				cr = 1662,	-- Captain Perrine
			}),
			applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
				coords = {
					{ 34.0, 47.8, TIRISFAL_GLADES },
					{ 51.6, 68.8, TIRISFAL_GLADES },
					{ 80.0, 54.4, TIRISFAL_GLADES },
				},
				classes = { PRIEST },
				crs = {
					1535,	-- Scarlet Warrior
					1536,	-- Scarlet Missionary
					1537,	-- Scarlet Zealot
				},
				groups = {
					recipe(402852),	-- Engrave Pants - Homunculi
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(207975, {	-- Severed Bat Head
				coord = { 43.2, 53.0, TIRISFAL_GLADES },
				classes = { WARRIOR },
				crs = {
					1553,	-- Greater Duskbat
					1554,	-- Vampiric Duskbat
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
				coord = { 59.2, 36.2, TIRISFAL_GLADES },
				classes = { WARRIOR },
				crs = {
					1674,	-- Rot Hide Gnoll
					1941,	-- Rot Hide Graverobber
					1675,	-- Rot Hide Mongrel
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204477, {	-- Severed Murloc Head
				coord = { 35.2, 42.0, TIRISFAL_GLADES },
				classes = { WARRIOR },
				crs = {
					1545,	-- Vile Fin Muckdweller
					1544,	-- Vile Fin Minor Oracle
				},
			})),
			i(3319, {	-- Short Sabre
				coords = {
					{ 78.6, 60.6, TIRISFAL_GLADES },
					{ 75.0, 61.6, TIRISFAL_GLADES },
				},
				cr = 1529,	-- Bleeding Horror
			}),
			applyclassicphase(SOD_PHASE_ONE, i(203752, {	-- Spell Notes: MILEGIN VALF
				coords = {
					{ 34.0, 47.8, TIRISFAL_GLADES },
					{ 51.6, 68.8, TIRISFAL_GLADES },
					{ 80.0, 54.4, TIRISFAL_GLADES },
				},
				classes = { MAGE },
				crs = {
					1535,	-- Scarlet Warrior
					1536,	-- Scarlet Missionary
					1537,	-- Scarlet Zealot
				},
			})),
			i(3328, {	-- Spider Web Robe
				coord = { 86.6, 53.8, TIRISFAL_GLADES },
				cr = 1555,	-- Vicious Night Web Spider
			}),
			i(3329, {	-- Spiked Wooden Plank
				coords = {
					{ 58.6, 31.0, TIRISFAL_GLADES },
					{ 58.8, 31.6, TIRISFAL_GLADES },
				},
				cr = 1753,	-- Maggot Eye
			}),
			i(4263, {	-- Standard Issue Shield
				coords = {
					{ 79.6, 26.8, TIRISFAL_GLADES },
					{ 78.8, 33.0, TIRISFAL_GLADES },
					{ 78.4, 36.8, TIRISFAL_GLADES },
				},
				cr = 1660,	-- Scarlet Bodyguard
			}),
			i(3325, {	-- Vile Fin Battle Axe
				coords = {
					{ 36.6, 38.6, TIRISFAL_GLADES },
					{ 34.8, 44.8, TIRISFAL_GLADES },
					{ 62.8, 29.6, TIRISFAL_GLADES },
					{ 27.8, 38.0, TIRISFAL_GLADES },
					{ 27.6, 46.6, TIRISFAL_GLADES },
				},
				cr = 1545,	-- Vile Fin Muckdweller
			}),
			i(3327, {	-- Vile Fin Oracle Staff
				coords = {
					{ 36.6, 38.6, TIRISFAL_GLADES },
					{ 34.8, 44.8, TIRISFAL_GLADES },
					{ 62.8, 29.6, TIRISFAL_GLADES },
				},
				cr = 1544,	-- Vile Fin Minor Oracle
			}),
			i(3261, {	-- Webbed Cloak
				coords = {
					{ 23.8, 58.4, TIRISFAL_GLADES },
					{ 86.2, 53.4, TIRISFAL_GLADES },
				},
				crs = {
					1688,	-- Night Web Matriarch
					1555,	-- Vicious Night Web Spiders
				},
			}),
		}),
	},
});

