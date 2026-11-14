---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local PRIESTESS_OF_THE_MOON_RACES = ALLIANCE_ONLY;
PRIESTESS_OF_THE_MOON_RACES = { NIGHTELF };

maproot(KALIMDOR, TELDRASSIL, {
	lore =
		"In the past few years, the night elves have moved their capital to an island off northwest Kalimdor. Here, the Circle of the Ancients and the wise druids pooled their power to create a great tree akin to the World Tree, but on a smaller scale.\n\nThey called this tree Teldrassil, meaning “Crown of the Earth,” and built their city of Darnassus atop it. The island takes the name of the tree as well, and a twilite forest now covers it.",
	icon = 236740,
	maps = {
		59,	-- Fel Rock
		60,	-- Ban'ethil Barrow Den
		61,	-- Ban'ethil Barrow Den
	},
	groups = {
		m(SHADOWGLEN, {
			lore = "Shadowglen is the starting area for night elves in the northeast part of Teldrassil, just north of Starbreeze Village. A small twilight field, bathed in a quiet dusk, the area is dominated by the great tree Aldrassil, which lies at the clearing's center. It has class trainers for all night elf classes. Another notable location is Shadowthread Cave, which lies in the region's extreme northwest. The area is ringed by mountains; the only gap is to the south, where the path headed to Dolanaar parts the mountain range.",
			icon = 236449,
			-- CRIEVE NOTE: I actually have no idea when they added the proper mapID for this subzone.
			zoneTextAreaIDs = {
				188,	-- Shadowglen
				256,	-- Aldrassil
				257,	-- Shadowthread Cave
			},
			maps = { 58 },	-- Shadowthread Cave
			groups = {
				n(QUESTS, {
					q(3519, {	-- A Friend in Need
						sourceQuest = 4495,	-- A Good Friend
						qg = 8584,	-- Iverron
						coord = { 54.6, 33.0, TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					q(4495, {	-- A Good Friend
						qg = 8583,	-- Dirania Silvershine
						coord = { 60.8, 42.0, TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77568, {	-- A Hunter's Strength
						qg = 3596,	-- Ayanna Everstride <Hunter Trainer>
						coord = { 58.6, 40.6, TELDRASSIL },
						classes = { HUNTER },
						races = { NIGHTELF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
								provider = { "i", 206168 },	-- Rune of the Chimera
								coord = { 56.8, 26.6, TELDRASSIL },
								cr = 1994,	-- Githyiss the Vile
							}),
							recipe(410121),	-- Engrave Gloves - Chimera Shot
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77575, {	-- Amidst the Shadowed Webs
						qg = 3593,	-- Alyissia <Warrior Trainer>
						coord = { 59.6, 38.4, TELDRASSIL },
						classes = { WARRIOR },
						races = { NIGHTELF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								provider = { "i", 204806 },	-- Rune of Victory Rush
								coord = { 56.8, 31.6, TELDRASSIL },
								cr = 1986,	-- Webwood Spider
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					q(921, {	-- Crown of the Earth (1/6)
						sourceQuest = 920,	-- Tenaron's Summons
						qg = 3514,	-- Tenaron Stormgrip
						coord = { 59.0, 39.4, TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Filled Crystal Phial
								providers = {
									{ "i", 5184 },	-- Filled Crystal Phial
									{ "i", 5185 },	-- Crystal Phial
								},
								coord = { 59.94, 33.07, TELDRASSIL },
							}),
						},
					}),
					q(928, {	-- Crown of the Earth (2/6)
						sourceQuest = 921,	-- Crown of the Earth (1/6)
						qg = 3514,	-- Tenaron Stormgrip
						qi = 5186,	-- Partially Filled Vessel
						coord = { 59.0, 39.4, TELDRASSIL },
						races = ALLIANCE_ONLY,
					}),
					q(2159, {	-- Dolanaar Delivery
						qg = 6780,	-- Porthannius
						qi = 7627,	-- Dolanaar Delivery
						coords = {
							{ 61.2, 47.6, TELDRASSIL },
						},
						races = ALLIANCE_ONLY,
						_drop = { "g" },	-- Refreshing Spring Water
					}),
					q(3118, {	-- Encrypted Sigil
						sourceQuests = {
							457,	-- The Balance of Nature (2/2)
						},
						providers = {
							{ "n", 2079 },	-- Conservator Ilthalaine
							{ "i", 9551 },	-- Encrypted Sigil
						},
						coords = {
							{ 58.6, 44.2, TELDRASSIL },
						},
						races = { NIGHTELF },
						classes = { ROGUE },
					}),
					q(3117, {	-- Etched Sigil
						sourceQuests = {
							457,	-- The Balance of Nature (2/2)
						},
						providers = {
							{ "n", 2079 },	-- Conservator Ilthalaine
							{ "i", 9567 },	-- Etched Sigil
						},
						coords = {
							{ 58.6, 44.2, TELDRASSIL },
						},
						races = { NIGHTELF },
						classes = { HUNTER },
					}),
					q(3119, {	-- Hallowed Sigil
						sourceQuests = {
							457,	-- The Balance of Nature (2/2)
						},
						providers = {
							{ "n", 2079 },	-- Conservator Ilthalaine
							{ "i", 9557 },	-- Hallowed Sigil
						},
						coords = {
							{ 58.6, 44.2, TELDRASSIL },
						},
						races = { NIGHTELF },
						classes = { PRIEST },
					}),
					q(5622, {	-- In Favor of Elune
						qg = 3595,	-- Shanda <Priest Trainer>
						coord = { 59.2, 40.4, TELDRASSIL },
						races = { NIGHTELF },
						classes = { PRIEST },
						isBreadcrumb = true,
						lvl = 5,
					}),
					q(3521, {	-- Iverron's Antidote (1/2)
						sourceQuest = 3519,	-- A Friend in Need
						qg = 8583,	-- Dirania Silvershine
						coord = { 60.8, 42.0, TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							objective(1, {	-- 0/7 Hyacinth Mushroom
								providers = {
									{ "i",  10639 },	-- Hyacinth Mushroom
									{ "o", 152094 },	-- Hyacinth Mushroom
								},
								crs = {
									1988,	-- Grell
									1989,	-- Grellkin
								},
							}),
							objective(2, {	-- 0/4 Moonpetal Lily
								providers = {
									{ "i", 10641 },	-- Moonpetal Lily
									{ "o", 152095 },	-- Moonpetal Lily
								},
							}),
							objective(3, {	-- 0/1 Webwood Ichor
								provider = { "i", 10640 },	-- Webwood Ichor
								cr = 1986,	-- Webwood Spider
							}),
						},
					}),
					q(3522, {	-- Iverron's Antidote (2/2)
						sourceQuest = 3522,	-- Iverron's Antidote (1/2)
						qg = 8583,	-- Dirania Silvershine
						qi = 10642,	-- Iverron's Antidote
						coord = { 60.8, 42.0, TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 2,
						groups = {
							i(10655),	-- Sedgeweed Britches
							i(10656),	-- Barkmail Vest
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77574, {	-- Meditation on Elune
						qg = 3595,	-- Shanda <Priest Trainer>
						coord = { 59.2, 40.4, TELDRASSIL },
						classes = { PRIEST },
						races = { NIGHTELF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
								provider = { "i", 205951 },	-- Memory of a Troubled Acolyte
								-- coord = { , TELDRASSIL },	-- TODO: Find the coordinate for the closest moonwell.
								description = "Kneel (/kneel) in the Moonwell to gain a Meditation buff, then use the Rune to complete the quest.",
							}),
							recipe(402862),	-- Engrave Gloves - Penance
							i(711),	-- Tattered Cloth Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77571, {	-- Relics of the Kaldorei
						qg = 3597,	-- Mardant Strongoak <Druid Trainer>
						coord = { 58.6, 40.4, TELDRASSIL },
						classes = { DRUID },
						races = { NIGHTELF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Fury of Stormrage
								provider = { "i", 208414 },	-- Lunar Idol
								cr = 1989,	-- Grellkin
							}),
							recipe(410061),	-- Engrave Chest - Fury of Stormrage
							i(2127),	-- Cracked Leather Vest
						},
					})),
					q(5629, {	-- Returning Home [Teldrassil]
						altQuests = {
							5627,	-- Returning Home [Darnassus]
							5628,	-- Returning Home [Elwynn Forest]
							5630,	-- Returning Home [Dun Morogh]
							5631,	-- Returning Home [Stormwind City]
							5632,	-- Returning Home [Stormwind City]
							5633,	-- Returning Home [Ironforge]
						},
						qg = 3600,	-- Laurna Morninglight <Priest Trainer>
						coord = { 55.6, 56.8, TELDRASSIL },
						classes = { PRIEST },
						races = { NIGHTELF },
						lvl = 10,
						groups = {
							{
								recipeID = 10797,	-- Starshards (Rank 1)
								rank = 1,
							},
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77573, {	-- Second-Story Work
						qg = 3594,	-- Frahun Shadewhisper <Rogue Trainer>
						coord = { 59.6, 38.6, TELDRASSIL },
						classes = { ROGUE },
						races = { NIGHTELF },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
								providers = {
									{ "o", 406006 },	-- Idol
									{ "i", 204795 },	-- Rune of Shadowstrike
								},
								coord = { 59.7, 42.6, TELDRASSIL },
							}),
							recipe(400105),	-- Engrave Gloves - Shadowstrike
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(3116, {	-- Simple Sigil
						sourceQuests = {
							457,	-- The Balance of Nature (2/2)
						},
						providers = {
							{ "n", 2079 },	-- Conservator Ilthalaine
							{ "i", 9545 },	-- Simple Sigil
						},
						coords = {
							{ 58.6, 44.2, TELDRASSIL },
						},
						races = { NIGHTELF, WORGEN },
						classes = { WARRIOR },
					}),
					q(920, {	-- Tenaron's Summons
						sourceQuest = 917,	-- Webwood Egg
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, TELDRASSIL },
						races = ALLIANCE_ONLY,
					}),
					q(456, {	-- The Balance of Nature (1/2)
						qg = 2079,	-- Conservator Ilthalaine
						coord = { 58.6, 44.2, TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/7 Young Nightsaber
								provider = { "n", 2031 },	-- Young Nightsaber
							}),
							objective(2, {	-- 0/4 Young Thistle Boar
								provider = { "n", 1984 },	-- Young Thistle Boar
							}),
							i(5394),	-- Archery Training Gloves
							i(11187),	-- Stemleaf Bracers
						},
					}),
					q(457, {	-- The Balance of Nature (2/2)
						sourceQuest = 456,	-- The Balance of Nature (1/2)
						qg = 2079,	-- Conservator Ilthalaine
						coord = { 58.6, 44.2, TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/7 Mangy Nightsaber
								provider = { "n", 2032 },	-- Mangy Nightsaber
							}),
							objective(2, {	-- 0/7 Thistle Boar
								provider = { "n", 1985 },	-- Thistle Boar
							}),
							i(5405),	-- Draped Cloak
							i(6058),	-- Blackened Leather Belt
						},
					}),
					q(458, {	-- The Woodland Protector (1/2)
						qg = 2077,	-- Melithar Staghelm
						coord = { 59.8, 42.4, TELDRASSIL },
						races = ALLIANCE_ONLY,
					}),
					q(459, {	-- The Woodland Protector (2/2)
						sourceQuest = 458,	-- The Woodland Protector (1/2)
						qg = 1992,	-- Tarindrella
						coord = { 57.8, 45.0, TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Fel Moss
								provider = { "i", 3297 },	-- Fel Moss
								crs = {
									1988,	-- Grell
									1989,	-- Grellkin
								},
							}),
							i(5398),	-- Canopy Leggings
							i(5399),	-- Tracking Boots
							i(11190),	-- Viny Gloves
						},
					}),
					q(3120, {	-- Verdant Sigil
						sourceQuests = {
							457,	-- The Balance of Nature (2/2)
						},
						providers = {
							{ "n", 2079 },	-- Conservator Ilthalaine
							{ "i", 9580 },	-- Verdant Sigil
						},
						coords = {
							{ 58.6, 44.2, TELDRASSIL },
						},
						races = { NIGHTELF },
						classes = { DRUID },
					}),
					q(917, {	-- Webwood Egg
						sourceQuest = 916,	-- Webwood Venom
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, TELDRASSIL },
						races = ALLIANCE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Webwood Egg
								providers = {
									{ "i", 5167 },	-- Webwood Egg
									{ "o", 4406 },	-- Webwood Eggs
								},
								coord = { 56.6, 26.5, TELDRASSIL },
							}),
							i(5395),	-- Woodland Shield
							i(4907),	-- Woodland Tunic
							i(11189),	-- Woodland Robes
						},
					}),
					q(916, {	-- Webwood Venom
						qg = 2082,	-- Gilshalan Windwalker
						coord = { 57.8, 41.6, TELDRASSIL },
						races = ALLIANCE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/10 Webwood Venom Sac
								provider = { "i", 5166 },	-- Webwood Venom Sac
								cr = 1986,	-- Webwood Spider
							}),
							i(10544),	-- Thistlewood Maul
							i(5392),	-- Thistlewood Dagger
							i(5393),	-- Thistlewood Staff
							i(5586),	-- Thistlewood Blade
							i(12447, {	-- Thistlewood Bow
								timeline = { REMOVED_1_7_0 },
							}),
						},
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(842),	-- Explore Teldrassil
		}),
		explorationHeader({
			exploration(736),	-- Ban'ethil Hollow
			exploration(1657),	-- Darnassus
			exploration(186),	-- Dolanaar
			exploration(261),	-- Gnarlpine Hold
			exploration(259),	-- Lake Al'Ameth
			exploration(478),	-- Pools of Arlithrien
			exploration(702),	-- Rut'theran Village
			exploration(188),	-- Shadowglen
			exploration(260),	-- Starbreeze Village
			exploration(264),	-- The Oracle Glade
			exploration(266),	-- Wellspring Lake
			exploration(265),	-- Wellspring River
		}),
		n(FLIGHT_PATHS, {
			fp(27, {	-- Rut'theran Village, Teldrassil
				cr = 3838,	-- Vesprystus <Hippogryph Master>
				coords = {
					{ 58.4, 94.0, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
			}),
		}),
		pickpocketing({
			applyclassicphase(SOD_PHASE_ONE, i(208749, {	-- Gnarlpine Stash Key
				coord = { 41.6, 77.6, TELDRASSIL },
				classes = { ROGUE },
				crs = {
					2011,	-- Gnarlpine Augur
					2013,	-- Gnarlpine Avenger
					2012,	-- Gnarlpine Pathfinder
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208605, {	-- Teldrassil Treasure Map
				cost = {
					{ "i", 208604, 1 },	-- Bottom-Left Map Piece
					{ "i", 208603, 1 },	-- Bottom-Right Map Piece
					{ "i", 208602, 1 },	-- Top-Left Map Piece
					{ "i", 208601, 1 },	-- Top-Right Map Piece
				},
				classes = { ROGUE },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208604, {	-- Bottom-Left Map Piece
				coord = { 52.6, 49.6, TELDRASSIL },
				classes = { ROGUE },
				crs = {
					2005,	-- Vicious Grell
					2002,	-- Rascal Sprite
					2004,	-- Dark Sprite
					2003,	-- Shadow Sprite
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208603, {	-- Bottom-Right Map Piece
				coord = { 36.8, 37.6, TELDRASSIL },
				classes = { ROGUE },
				crs = {
					2019,	-- Bloodfeather Fury
					2021,	-- Bloodfeather Matriarch
					2015,	-- Bloodfeather Harpy
					2020,	-- Bloodfeather Wind Witch
					2018,	-- Bloodfeather Sorceress
					2017,	-- Bloodfeather Rogue
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208602, {	-- Top-Left Map Piece
				coord = { 46.6, 52.4, TELDRASSIL },
				classes = { ROGUE },
				crs = {
					2010,	-- Gnarlpine Defender
					2152,	-- Gnarlpine Ambusher
					2009,	-- Gnarlpine Shaman
					2011,	-- Gnarlpine Augur
					2013,	-- Gnarlpine Avenger
					2012,	-- Gnarlpine Pathfinder
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208601, {	-- Top-Right Map Piece
				coord = { 60.0, 64.4, TELDRASSIL },
				classes = { ROGUE },
				crs = {
					2022,	-- Timberling
					2027,	-- Timberling Trampler
					2029,	-- Timberling Mire Beast
					2030,	-- Elder Timberling
					2025,	-- Timberling Bark Ripper
				},
			})),
		}),
		n(QUESTS, {
			q(475, {	-- A Troubling Breeze
				qg = 2078,	-- Athridas Bearmantle
				coords = {
					{ 56.0, 57.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
				questID = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
				qgs = {
					6736,	-- Innkeeper Keldamyr <Innkeeper>
					209872,	-- Syllart
				},
				coord = { 55.6, 59.8, TELDRASSIL },
				classes = { PALADIN, WARRIOR },
				races = ALLIANCE_ONLY,
				groups = {
					i(204716, {	-- Rune of Frenzied Assault
						classes = { WARRIOR },
						groups = {
							recipe(425447),	-- Engrave Pants - Frenzied Assault
						},
					}),
					i(205683, {	-- Rune of Rebuke
						classes = { PALADIN },
						groups = {
							recipe(425621),	-- Engrave Pants - Rebuke
						},
					}),
				},
			})),
			q(929, {	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
				sourceQuest = 928,	-- Crown of the Earth (2/6)
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Jade Phial
						providers = {
							{ "i", 5639 },	-- Filled Jade Phial
							{ "i", 5619 },	-- Jade Phial
						},
						coord = { 63.0, 58.0, TELDRASSIL },
					}),
				},
			}),
			q(933, {	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
				sourceQuest = 929,	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Tourmaline Phial
						providers = {
							{ "i", 5645 },	-- Filled Tourmaline Phial
							{ "i", 5621 },	-- Tourmaline Phial
						},
						coord = { 42.0, 67.0, TELDRASSIL },
					}),
				},
			}),
			q(7383, {	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
				sourceQuest = 933,	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
				qg = 3515,	-- Corithras Moonrage
				coord = { 56.2, 61.7, TELDRASSIL },
				timeline = { ADDED_1_7_0 },
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Filled Amethyst Phial
						providers = {
							{ "i", 18151 },	-- Filled Amethyst Phial
							{ "i", 18152 },	-- Amethyst Phial
						},
						coord = { 38.0, 34.0, TELDRASSIL },
					}),
				},
			}),
			q(935, {	-- Crown of the Earth (6/6) / The Waters of Teldrassil [CATA+]
				sourceQuest = 7383,	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
				qg = 3515,	-- Corithras Moonrage
				qi = 5188,	-- Filled Vessel
				coord = { 56.2, 61.7, TELDRASSIL },
				races = ALLIANCE_ONLY,
				groups = {
					i(5596),	-- Ashwood Bow
					i(5595),	-- Thicket Hammer
				},
			}),
			q(997, {	-- Denalan's Earth
				qg = 2083,	-- Syral Bladeleaf
				qi = 5391,	-- Rare Earth
				coords = {
					{ 56.0, 57.8, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(5636, {	-- Desperate Prayer
				altQuests = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5637,	-- Desperate Prayer [Dun Morogh]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				qg = 3600,	-- Laurna Morninglight <Priest Trainer>
				coord = { 55.6, 56.8, TELDRASSIL },
				races = { HUMAN, DWARF },
				classes = { PRIEST },
				lvl = 10,
				groups = {
					{
						recipeID = 13908,	-- Desperate Prayer (Rank 1)
						rank = 1,
					},
				},
			}),
			q(2561, {	-- Druid of the Claw
				sourceQuest = 2541,	-- The Sleeping Druid
				qg = 7317,	-- Oben Rageclaw
				coords = {
					{ 45.0, 61.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- Release Oben Rageclaw's spirit
						providers = {
							{ "n", 7318 },	-- Rageclaw
							{ "i", 8149 },	-- Voodoo Charm
						},
						coord = { 45.6, 59.6, TELDRASSIL },
					}),
					i(9598),	-- Sleeping Robes
					i(18957),	-- Brushwood Blade
					i(9602, {	-- Brushwood Blade
						timeline = { REMOVED_1_11_1 },
						collectible = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
						-- If anything, it should match the sourceID of the other item by that name. (7540)
						-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
					}),
				},
			}),
			q(1684, {	-- Elanaria
				altQuests = {
					1638,	-- A Warrior's Training
					1679,	-- Muren Stormpike
					1678,	-- Vejrek
				},
				qgs = {
					3657,	-- Sentinel Elissa Starbreeze [Darkshore]
					3598,	-- Kyra Windblade <Warrior Trainer> [Teldrassil]
					2151,	-- Moon Priestess Amara [Teldrassil]
				},
				coords = {
					{ 39.0, 43.4, DARKSHORE },
					{ 56.2, 59.2, TELDRASSIL },
				},
				maps = { DARNASSUS },
				races = ALLIANCE_ONLY,
				classes = { WARRIOR },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(1581, {	-- Elixirs for the Bladeleafs
				description =
					"This quest becomes available at Alchemy skill level 20 when the character level requirement is met.",
				qg = 2083,	-- Syral Bladeleaf
				coords = {
					{ 56.0, 57.8, TELDRASSIL },
				},
				cost = {
					{ "i", 2454, 6 },	-- Elixir of Lion's Strength
					{ "i", 5997, 2 },	-- Elixir of Minor Defense
				},
				requireSkill = ALCHEMY,
				races = ALLIANCE_ONLY,
				lvl = 4,
				_drop = { "g" },	-- Earthroot and Mageroyal
			}),
			q(2259, {	-- Erion Shadewhisper
				sourceQuest = 2241,	-- The Apple Falls
				qg = 3599,	-- Jannok Breezesong
				coord = { 56.4, 60.1, TELDRASSIL },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(3661, {	-- Favored of Elune?
				qg = 7916,	-- Erelas Ambersky
				coord = { 55.5, 92.1, TELDRASSIL },
				maps = { THE_HINTERLANDS },
				races = ALLIANCE_ONLY,
				lvl = 42,
				groups = {
					objective(1, {	-- 0/15 Wildkin Feather
						providers = {
							{ "i",  10819 },	-- Wildkin Feather
							{ "o", 153239 },	-- Wildkin Feather
						},
						description = "Scattered on the ground around the Hinterlands.",
					}),
				},
			}),
			q(2940, {	-- Feralas: A History
				sourceQuest = 2939,	-- In Search of Knowledge
				provider = { "o", 142958 },	-- Feralas: A History
				coord = { 55.2, 91.4, TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(2459, {	-- Ferocitas the Dream Eater
				sourceQuest = 2438,	-- The Emerald Dreamcatcher
				qg = 3567,	-- Tallonkai Swiftroot
				coords = {
					{ 55.4, 56.8, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/7 Gnarlpine Mystic slain
						provider = { "n", 7235 },	-- Gnarlpine Mystic
					}),
					objective(2, {	-- 0/1 Tallonkai's Jewel
						providers = {
							{ "i", 8050 },	-- Tallonkai's Jewel
							{ "n", 7234 },	-- Ferocitas the Dream Eater
							{ "i", 8049 },	-- Gnarlpine Necklace
						},
						coords = {
							{ 69.2, 53.4, TELDRASSIL },
						},
					}),
				},
			}),
			q(6342, {	-- Flight to Auberdine / An Unexpected Gift [CATA+]
				sourceQuest = 6341,	-- The Bounty of Teldrassil / To Darnassus [CATA+]
				qg = 3838,	-- Vesprystus
				qi = 16262,	-- Nessa's Collection
				coord = { 58.4, 94.0, TELDRASSIL },
				races = { NIGHTELF },
				lvl = 10,
			}),
			q(5621, {	-- Garments of the Moon
				sourceQuest = 5622,	-- In Favor of Elune
				qg = 3600,	-- Laurna Morninglight <Priest Trainer>
				coord = { 55.6, 56.8, TELDRASSIL },
				races = { NIGHTELF },
				classes = { PRIEST },
				lvl = 5,
				groups = {
					objective(1, {	-- Heal and fortify Sentinel Shaya
						provider = { "n", 12429 },	-- Sentinel Shaya
						coord = { 57.4, 63.6, TELDRASSIL },
					}),
					i(16604),	-- Moon Robes of Elune
				},
			}),
			q(476, {	-- Gnarlpine Corruption
				sourceQuest = 475,	-- A Troubling Breeze
				qg = 2107,	-- Gaerolas Talvethren
				coords = {
					{ 66.2, 58.6, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(938, {	-- Mist
				qg = 3568,	-- Mist
				coords = {
					{ 31.4, 31.6, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 7,
				groups = {
					i(5590),	-- Cord Bracers
					i(5593),	-- Crag Buckler
					i(5618, {	-- Scout's Cloak
						description = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
					}),
				},
			}),
			q(2499, {	-- Oakenscowl
				sourceQuests = {
					2498,	-- Return to Denalan
				},
				qg = 2080,	-- Denalan
				coords = {
					{ 60.8, 68.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Gargantuan Tumor
						provider = { "i", 8136 },	-- Gargantuan Tumor
						coords = {
							{ 53.6, 75.0, TELDRASSIL },
						},
						cr = 2166,	-- Oakenscowl
					}),
					i(5458),	-- Dirtwood Belt
					i(5589),	-- Moss-covered Gauntlets
				},
			}),
			q(941, {	-- Planting the Heart
				sourceQuest = 927,	-- The Moss-twined Heart
				qg = 2080,	-- Denalan
				qg = 2080,	-- Denalan
				qi = 5217,	-- Tainted Heart
				coords = {
					{ 60.8, 68.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 9,
				groups = {
					i(5218),	-- Cleansed Timberling Heart
				},
			}),
			q(4161, {	-- Recipe of the Kaldorei
				qg = 6286,	-- Zarrin
				coord = { 57.0, 61.2, TELDRASSIL },
				cost = { { "i", 5465, 7 } },	-- Small Spider Leg
				requireSkill = COOKING,
				races = ALLIANCE_ONLY,
				groups = {
					i(5482),	-- Recipe: Kaldorei Spider Kabob (RECIPE!)
				},
			}),
			q(922, {	-- Rellian Greenspyre
				sourceQuest = 918,	-- Timberling Seeds
				qg = 2080,	-- Denalan
				qi = 5168,	-- Timberling Seed
				coords = {
					{ 60.8, 68.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2498, {	-- Return to Denalan
				sourceQuest = 923,	-- Tumors / Mossy Tumors [CATA+]
				qg = 3517,	-- Rellian Greenspyre
				coord = { 38.4, 21.6, DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2943, {	-- Return to Troyas
				sourceQuest = 2944,	-- The Super Snapper FX
				qg = 7907,	-- Daryn Lightwind
				qi = 9331,	-- Feralas: A History
				coord = { 55.4, 92.2, TELDRASSIL },
				maps = { FERALAS },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(489, {	-- Seek Redemption!
				sourceQuest = 488,	-- Zenn's Bidding
				qg = 2083,	-- Syral Bladeleaf
				coords = {
					{ 56.0, 59.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/3 Fel Cone
						providers = {
							{ "i", 3418 },	-- Fel Cone
							{ "o", 1673 },	-- Fel Cone
						},
					}),
				},
			}),
			q(6063, {	-- Taming the Beast (1/3)
				sourceQuests = {
					6071,	-- The Hunter's Path [Darnassus]
					6072,	-- The Hunter's Path [Teldrassil]
					6073,	-- The Hunter's Path [Darnassus]
					6721,	-- The Hunter's Path [Ironforge]
					6722,	-- The Hunter's Path [Dun Morogh]
				},
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Webwood Lurker
						providers = {
							{ "n", 1998 },	-- Webwood Lurker
							{ "i", 15921 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6101, {	-- Taming the Beast (2/3)
				sourceQuest = 6063,	-- Taming the Beast (1/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Nightsaber Stalker
						providers = {
							{ "n", 2043 },	-- Nightsaber Stalker
							{ "i", 15922 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6102, {	-- Taming the Beast (3/3)
				sourceQuest = 6101,	-- Taming the Beast (2/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Strigid Screecher
						providers = {
							{ "n", 1996 },	-- Strigid Screecher
							{ "i", 15923 },	-- Taming Rod
						},
					}),
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(940, {	-- Teldrassil
				sourceQuest = 937,	-- The Enchanted Glade
				qg = 3519,	-- Sentinel Arynia Cloudsbreak
				qi = 5219,	-- Inscribed Bark
				coord = { 38.2, 34.4, TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 6,
			}),
			q(2241, {	-- The Apple Falls
				qg = 3599,	-- Jannok Breezesong
				qi = 7735,	-- Jannok's Rose
				coord = { 56.4, 60.1, TELDRASSIL },
				races = ALLIANCE_ONLY,
				classes = { ROGUE },
				lvl = 10,
			}),
			q(2941, {	-- The Borrower
				sourceQuest = 2940,	-- Feralas: A History
				qg = 7907,	-- Daryn Lightwind
				qi = 9329,	-- A Short Note
				coord = { 55.4, 92.2, TELDRASSIL },
				races = ALLIANCE_ONLY,
				lvl = 42,
			}),
			q(6341, {	-- The Bounty of Teldrassil / To Darnassus [CATA+]
				sourceQuest = 6344,	-- Nessa Shadowsong
				qg = 10118,	-- Nessa Shadowsong
				qi = 16262,	-- Nessa's Collection
				coord = { 56.2, 92.4, TELDRASSIL },
				races = { NIGHTELF },
				lvl = 10,
			}),
			q(2438, {	-- The Emerald Dreamcatcher
				qg = 3567,	-- Tallonkai Swiftroot
				coords = {
					{ 55.4, 56.8, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				groups = {
					objective(1, {	-- 0/1 Emerald Dreamcatcher
						providers = {
							{ "i", 8048 },	-- Emerald Dreamcatcher
							{ "o", 126158 },	-- Tallonkai's Dresser
						},
						coords = {
							{ 68.0, 59.6, TELDRASSIL },
						},
					}),
				},
			}),
			q(937, {	-- The Enchanted Glade
				qg = 3519,	-- Sentinel Arynia Cloudsbreak
				coords = {
					{ 38.2, 34.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/6 Bloodfeather Belt
						provider = { "i", 5204 },	-- Bloodfeather Belt
						crs = {
							2019,	-- Bloodfeather Fury
							2015,	-- Bloodfeather Harpy
							2021,	-- Bloodfeather Matriarch
							2017,	-- Bloodfeather Rogue
							2018,	-- Bloodfeather Sorceress
							2020,	-- Bloodfeather Wind Witch
							14431,	-- Fury Shelda
						},
					}),
					i(5591),	-- Rain-spotted Cape
					i(5592, {	-- Shackled Girdle
						description = "This gets completely removed. To be safe, keep this in your bank forever on a mail user.",
					}),
				},
			}),
			q(930, {	-- The Glowing Fruit
				providers = {
					{ "o", 6751 },	-- Strange Fruited Plant
					{ "i", 5189 },	-- Glowing Fruit
				},
				coords = {
					{ 42.6, 76.1, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(6071, {	-- The Hunter's Path [Darnassus]
				qg = 4146,	-- Jocaste <Hunter Trainer>
				coord = { 40.2, 8.8, DARNASSUS },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6072, {	-- The Hunter's Path [Teldrassil]
				qg = 3596,	-- Ayanna Everstride <Hunter Trainer>
				coord = { 58.66, 40.45, TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6073, {	-- The Hunter's Path [Darnassus]
				qg = 4205,	-- Dorion <Hunter Trainer>
				coord = { 42.2, 7.6, DARNASSUS },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6721, {	-- The Hunter's Path [Ironforge]
				qg = 5117,	-- Regnus Thundergranite <Hunter Trainer>
				coord = { 69.8, 83.6, IRONFORGE },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6722, {	-- The Hunter's Path [Dun Morogh]
				qg = 1231,	-- Grif Wildheart <Hunter Trainer>
				coord = { 45.8, 53.0, DUN_MOROGH },
				races = { NIGHTELF },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(927, {	-- The Moss-twined Heart
				provider = { "i", 5179 },	-- Moss-twined Heart
				coord = { 52.0, 63.6, DARNASSUS },
				races = ALLIANCE_ONLY,
				cr = 3535,	-- Blackmoss the Fetid
				lvl = 5,
			}),
			q(483, {	-- The Relics of Wakening
				sourceQuest = 476,	-- Gnarlpine Corruption
				qg = 2078,	-- Athridas Bearmantle
				coords = {
					{ 56.0, 57.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/1 Raven Claw Talisman
						providers = {
							{ "i", 3405 },	-- Raven Claw Talisman
							{ "o", 2740 },	-- Chest of the Raven Claw
						},
						coords = {
							{ 45.7, 57.5, TELDRASSIL },
						},
					}),
					objective(2, {	-- 0/1 Black Feather Quill
						providers = {
							{ "i", 3406 },	-- Black Feather Quill
							{ "o", 2739 },	-- Chest of the Black Feather
						},
						coords = {
							{ 43.8, 61.2, TELDRASSIL },
						},
					}),
					objective(3, {	-- 0/1 Sapphire of Sky
						providers = {
							{ "i", 3407 },	-- Sapphire of Sky
							{ "o", 2741 },	-- Chest of the Sky
						},
						coords = {
							{ 44.6, 62.5, TELDRASSIL },
						},
					}),
					objective(4, {	-- 0/1 Rune of Nesting
						providers = {
							{ "i", 3408 },	-- Rune of Nesting
							{ "o", 2742 },	-- Chest of Nesting
						},
						coords = {
							{ 44.5, 60.6, TELDRASSIL },
						},
					}),
					i(9599),	-- Barkmail Leggings
					i(9603, {	-- Gritroot Staff
						description = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
					}),
				},
			}),
			q(487, {	-- The Road to Darnassus
				qg = 2151,	-- Moon Priestess Amara
				coords = {
					{ 55.6, 58.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/6 Gnarlpine Ambusher slain
						provider = { "n", 2152 },	-- Gnarlpine Ambusher
					}),
				},
			}),
			q(931, {	-- The Shimmering Frond
				providers = {
					{ "o", 6752 },	-- Strange Fronded Plant
					{ "i", 5190 },	-- Shimmering Frond
				},
				coords = {
					{ 34.7, 28.8, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(2541, {	-- The Sleeping Druid
				qg = 7317,	-- Oben Rageclaw
				coords = {
					{ 45.0, 61.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- Shaman Voodoo Charm
						provider = { "i", 8363 },	-- Shaman Voodoo Charm
						cr = 2009,	-- Gnarlpine Shaman
					}),
				},
			}),
			q(2399, {	-- The Sprouted Fronds
				sourceQuest = 931,	-- The Shimmering Frond
				provider = { "o", 7510 },	-- Sprouted Frond
				coords = {
					{ 60.8, 68.5, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
			}),
			q(918, {	-- Timberling Seeds
				sourceQuest = 997,	-- Denalan's Earth
				qg = 2080,	-- Denalan
				coords = {
					{ 60.8, 68.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Timberling Seed
						provider = { "i", 5168 },	-- Timberling Seed
						crs = {
							2030,	-- Elder Timberling
							2166,	-- Oakenscowl
							2022,	-- Timberling
							2025,	-- Timberling Bark Ripper
							2027,	-- Timberling Trampler
						},
					}),
				},
			}),
			q(919, {	-- Timberling Sprouts
				sourceQuest = 997,	-- Denalan's Earth
				qg = 2080,	-- Denalan
				coords = {
					{ 60.8, 68.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/12 Timberling Seed
						providers = {
							{ "i", 5169 },	-- Timberling Sprout
							{ "o", 4608 },	-- Timberling Sprout
						},
					}),
					i(5606),	-- Gardening Gloves
					i(6061),	-- Graystone Bracers
				},
			}),
			q(6103, {	-- Training the Beast
				sourceQuest = 6102,	-- Taming the Beast (3/3)
				qg = 3601,	-- Dazalar <Hunter Trainer>
				coord = { 56.6, 59.6, TELDRASSIL },
				races = { NIGHTELF },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					recipe(6991),	-- Feed Pet
					recipe(982),	-- Revive Pet
				},
			}),
			q(923, {	-- Tumors / Mossy Tumors [CATA+]
				sourceQuest = 922,	-- Rellian Greenspyre
				qg = 3517,	-- Rellian Greenspyre
				coord = { 38.2, 21.6, DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/5 Mossy Tumor
						provider = { "i", 5170 },	-- Mossy Tumor
						crs = {
							2030,	-- Elder Timberling
							2029,	-- Timberling Mire Beast
							2027,	-- Timberling Trampler
						},
					}),
					i(5605),	-- Pruning Knife
				},
			}),
			q(932, {	-- Twisted Hatred
				qg = 3567,	-- Tallonkai Swiftroot
				coords = {
					{ 55.4, 56.8, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {
						provider = { "i", 5221 },	-- Melenas' Head
						coord = { 51.6, 51.6, TELDRASSIL },
						cr = 2038,	-- Lord Melenas
					}),
					i(5419),	-- Feral Bracers
					i(2571),	-- Viny Wrappings
				},
			}),
			q(486, {	-- Ursal the Mauler
				sourceQuest = 483,	-- The Relics of Wakening
				qg = 2078,	-- Athridas Bearmantle
				coords = {
					{ 56.0, 57.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- Ursal the Mauler slain
						provider = { "n", 2039 },	-- Ursal the Mauler
						coords = {
							{ 39.8, 80.6, TELDRASSIL },
						},
					}),
					i(5459, {	-- Defender Axe
						description = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
					}),
					i(5587, {	-- Thornroot Club
						description = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
					}),
				},
			}),
			q(4902, {	-- Wildkin of Elune
				sourceQuest = 4901,	-- Guardians of the Altar
				qg = 7916,	-- Erelas Ambersky
				coord = { 55.5, 92.1, TELDRASSIL },
				maps = { DARNASSUS },
				races = ALLIANCE_ONLY,
				lvl = 52,
				groups = {
					i(16622),	-- Thornflinger
					i(16623),	-- Opaline Medallion
				},
			}),
			q(488, {	-- Zenn's Bidding
				qg = 2150,	-- Zenn Foulhoof
				coords = {
					{ 60.4, 56.2, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/3 Nightsaber Fang
						provider = { "i", 3409 },	-- Nightsaber Fang
						crs = {
							14430,	-- Duskstalker
							2042,	-- Nightsaber
							2043,	-- Nightsaber Stalker
						},
					}),
					objective(2, {	-- 0/3 Strigid Owl Feather
						provider = { "i", 3411 },	-- Strigid Owl Feather
						crs = {
							1995,	-- Strigid Owl
							1996,	-- Strigid Screecher
						},
					}),
					objective(3, {	-- 0/3 Webwood Spider Silk
						provider = { "i", 3412 },	-- Webwood Spider Silk
						crs = {
							1998,	-- Webwood Lurker
							2000,	-- Webwood Silkspinner
							1999,	-- Webwood Venomfang
						},
					}),
					i(5457),	-- Severed Voodoo Claw
				},
			}),
		}),
		n(RARES, {
			n(3535, {	-- Blackmoss the Fetid
				coords = {
					{ 42.8, 25.8, TELDRASSIL },
					{ 44.6, 27.6, TELDRASSIL },
					{ 43.0, 31.0, TELDRASSIL },
					{ 43.8, 33.2, TELDRASSIL },
					{ 46.0, 30.4, TELDRASSIL },
					{ 40.8, 39.6, TELDRASSIL },
					{ 43.6, 36.6, TELDRASSIL },
					{ 42.8, 38.6, TELDRASSIL },
					{ 44.0, 39.6, TELDRASSIL },
				},
				groups = {
					i(5179, {	-- Moss-twined Heart
						description = "This is one of the only drops from a rare spawn in the game that start a quest. Good luck!",
						races = ALLIANCE_ONLY,
					}),
				},
			}),
			n(14430, {	-- Duskstalker
				coords = {
					{ 51.2, 77.8, TELDRASSIL },
					{ 53.4, 77.2, TELDRASSIL },
					{ 54.6, 75.8, TELDRASSIL },
					{ 54.8, 77.4, TELDRASSIL },
					{ 58.0, 75.8, TELDRASSIL },
					{ 58.8, 76.6, TELDRASSIL },
					{ 60.6, 76.2, TELDRASSIL },
					{ 61.0, 74.4, TELDRASSIL },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(209812, {	-- Fallenroot Poacher
				provider = { "n", 209811 },	-- Rustling Bush
				description = "Cast Hunter's Mark on the bush to spawn the Rare Creature.",
				coord = { 46.6, 46.4, TELDRASSIL },
				classes = { HUNTER },
				groups = {
					i(206155, {	-- Rune of Marksmanship
						classes = { HUNTER },
						groups = {
							recipe(410113),	-- Engrave Chest - Master Marksman
						},
					}),
				},
			})),
			n(14431, {	-- Fury Shelda
				coords = {
					{ 34.8, 34.4, TELDRASSIL },
					{ 38.2, 34.8, TELDRASSIL },
					{ 36.0, 37.8, TELDRASSIL },
					{ 38.0, 39.0, TELDRASSIL },
					{ 36.4, 42.4, TELDRASSIL },
					{ 39.0, 41.4, TELDRASSIL },
					{ 38.0, 44.0, TELDRASSIL },
				},
				groups = {
					i(18612),	-- Bloody Chain Boots
				},
			}),
			n(14429, {	-- Grimmaw
				coords = {
					{ 41.6, 78.6, TELDRASSIL },
					{ 40.2, 80.6, TELDRASSIL },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(209928, {	-- Mowgh
				description = "You can tame him and you still get the rune!",
				coord = { 48.3, 31.4, TELDRASSIL },
				cost = { { "i", 208608, 1 } },	-- Teldrassil Bird Meat
				groups = {
					i(205979, {	-- Rune of Flanking
						classes = { HUNTER },
						groups = { recipe(425762) },	-- Engrave Pants - Flanking Strike
					}),
				},
			})),
			n(14432, {	-- Threggil
				coords = {
					{ 51.2, 50.8, TELDRASSIL },
					{ 52.0, 50.6, TELDRASSIL },
					{ 52.6, 52.4, TELDRASSIL },
				},
				groups = { i(18610) },	-- Keen Machete
			}),
			applyclassicphase(SOD_PHASE_ONE, n(206245, {	-- Unleashed Nature Spirit
				provider = { "n", 206248 },	-- Wooden Effigy
				qi = 208760,	-- Glade Crown
				coord = { 66.8, 58.0, TELDRASSIL },
				cost = { { "i", 208609, 3 } },	-- Glade Flower
				groups = {
					i(206963, {	-- Rune of Natural Potential
						classes = { DRUID },
						groups = {
							recipe(416050),	-- Engrave Chest - Living Seed
						},
					}),
				},
			})),
			n(14428, {	-- Uruson
				coords = {
					{ 63.8, 57.2, TELDRASSIL },
					{ 65.4, 57.8, TELDRASSIL },
					{ 67.6, 56.4, TELDRASSIL },
					{ 66.2, 60.6, TELDRASSIL },
					{ 67.8, 61.0, TELDRASSIL },
					{ 69.6, 62.0, TELDRASSIL },
				},
				groups = {
					i(18611),	-- Gnarlpine Leggings
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
				provider = { "o", 392029 },	-- Swordsman's Reward
				coords = {
					{ 39.6, 37.6, TELDRASSIL },
					{ 39.8, 69.6, TELDRASSIL },
					{ 34.8, 76.8, TELDRASSIL },
					{ 54.6, 66.0, TELDRASSIL },
					{ 62.6, 71.8, TELDRASSIL },
				},
				groups = {
					i(204441, {	-- Rune of Blood Frenzy
						classes = { WARRIOR },
						groups = {
							recipe(403474),	-- Engrave Chest - Blood Frenzy
						},
					}),
				},
			})),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
				provider = { "n", 204827 },	-- Adventurer's Remains
				coord = { 33.6, 35.6, TELDRASSIL },
				groups = {
					i(210589, {	-- Echo of the Ancestors
						classes = { SHAMAN },
						groups = {
							recipe(410099),	-- Engrave Pants - Ancestral Guidance
						},
					}),
					i(205944, {	-- Reciprocal Epiphany
						classes = { PRIEST },
						groups = {
							recipe(402848),	-- Engrave Pants - Prayer of Mending
						},
					}),
					i(206264, {	-- Rune of Inspiration
						classes = { PALADIN },
						groups = {
							recipe(410011),	-- Engrave Pants - Inspiration Exemplar
						},
					}),
					i(206970, {	-- Rune of Life
						classes = { DRUID },
						groups = {
							recipe(410033),	-- Engrave Pants - Lifebloom
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, o(407734, {	-- Gnarlpine Cache
				coord = { 45.0, 61.4, TELDRASSIL },
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
					i(203993, {	-- Rune of Slaughter
						classes = { ROGUE },
						groups = {
							recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
				provider = { "o", 407352 },	-- Gnarlpine Stash
				coord = { 37.9, 82.5, TELDRASSIL },
				cost = { { "i", 208749, 1 } },	-- Gnarlpine Stash Key
				classes = { ROGUE },
				groups = {
					recipe(400081),	-- Engrave Pants - Between the Eyes
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
				provider = { "o", 386675 },	-- Buried Treasure
				coord = { 55.3, 90.8, TELDRASSIL },
				cost = { { "i", 208605, 1 } },	-- Teldrassil Treasure Map
				classes = { ROGUE },
				groups = {
					recipe(400095),	-- Engrave Chest - Quick Draw
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206989, {	-- Rune of the Sun
				description = "Cast Moonfire on each of the Lunar Stones to spawn the Lunar Chest nearby.",
				providers = {
					{ "n", 207577 },	-- Lunar Stone
					{ "o", 404433 },	-- Lunar Chest
				},
				coord = { 52.8, 78.8, TELDRASSIL },
				classes = { DRUID },
				groups = {
					recipe(416044),	-- Engrave Gloves - Sunfire
				},
			})),
		}),
		n(VENDORS, {
			n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
				coords = {
					{ 56.2, 92.4, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(4265, {	-- Nyoma <Cooking Supplies>
				coords = {
					{ 57.2, 61.2, TELDRASSIL },
				},
				races = ALLIANCE_ONLY,
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(7095, {	-- Bog Boots
				coords = {
					{ 43.6, 29.8, TELDRASSIL },
					{ 43.4, 35.4, TELDRASSIL },
					{ 52.6, 52.4, TELDRASSIL },
				},
				crs = {
					2029,	-- Timberling Mire Beast
					2005,	-- Vicious Grell
				},
			}),
			i(5206, {	-- Bogling Root
				cr = 3569,	-- Bogling
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208607, {	-- Deer Musk
				coords = {
					{ 45.8, 58.2, TELDRASSIL },
					{ 39.8, 80.4, TELDRASSIL },
					{ 42.4, 79.2, TELDRASSIL },
					{ 47.2, 52.8, TELDRASSIL },
					{ 38.4, 80.8, TELDRASSIL },
				},
				classes = { HUNTER },
				crs = {
					2011,	-- Gnarlpine Augur
					2012,	-- Gnarlpine Pathfinder
					2152,	-- Gnarlpine Ambusher
					2014,	-- Gnarlpine Totemic
					2013,	-- Gnarlpine Avenger
					2010,	-- Gnarlpine Defender
					2009,	-- Gnarlpine Shaman
				},
			})),
			i(7094, {	-- Driftwood Branch
				coord = { 45.4, 24.6, TELDRASSIL },
				cr = 2030,	-- Elder Timberling
			}),
			applyclassicphase(SOD_PHASE_ONE, i(208609, {	-- Glade Flower
				description = "These are scattered throughout the zone.",
				provider = { "o", 407247 },	-- Glade Flower
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206954, {	-- Idol of Ursine Rage
				coord = { 45.6, 59.6, TELDRASSIL },
				classes = { DRUID },
				cr = 7318,	-- Rageclaw
				groups = {
					recipe(410025),	-- Engrave Gloves - Mangle
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
				coord = { 51.6, 51.6, TELDRASSIL },
				classes = { PRIEST },
				cr = 2038,	-- Lord Melenas
				groups = {
					recipe(402854),	-- Engrave Pants - Shared Pain
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
				coord = { 52.6, 49.6, TELDRASSIL },
				classes = { PRIEST },
				crs = {
					2005,	-- Vicious Grell
					2002,	-- Rascal Sprite
					2004,	-- Dark Sprite
					2003,	-- Shadow Sprite
				},
				groups = {
					recipe(402852),	-- Engrave Pants - Homunculi
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206169, {	-- Rune of Explosive Shot
				coord = { 45.6, 59.6, TELDRASSIL },
				classes = { HUNTER },
				cr = 7318,	-- Rageclaw
				groups = {
					recipe(410123),	-- Engrave Gloves - Explosive Shot
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(203990, {	-- Rune of Mutilation
				coord = { 51.6, 51.6, TELDRASSIL },
				classes = { ROGUE },
				cr = 2038,	-- Lord Melenas
				groups = {
					recipe(400094),	-- Engrave Gloves - Mutilate
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208610, {	-- Severed Owl Head
				coord = { 40.6, 53.6, TELDRASSIL },
				classes = { WARRIOR },
				crs = {
					1996,	-- Strigid Screecher
					1995,	-- Strigid Owl
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208612, {	-- Severed Spider Head
				coord = { 59.8, 59.0, TELDRASSIL },
				classes = { WARRIOR },
				crs = {
					1998,	-- Webwood Lurker
					1999,	-- Webwood Venomfang
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208611, {	-- Severed Tiger Head
				coord = { 40.4, 60.0, TELDRASSIL },
				classes = { WARRIOR },
				crs = {
					2042,	-- Nightsaber
					2043,	-- Nightsaber Stalker
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208608, {	-- Teldrassil Bird Meat
				classes = { HUNTER },
				crs = {
					1995,	-- Strigid Owl
					1997,	-- Strigid Hunter
					1996,	-- Strigid Screecher
				},
			})),
		}),
	},
});

root(ROOTS.HiddenQuestTriggers, {
	q(934, {	-- Crown of the Earth (5/6)
		description = "This quest gets marked as completed when you complete the quest ' Crown of the Earth (5/6)' (7383).",
		timeline = { REMOVED_1_7_0 },
		races = ALLIANCE_ONLY,
	}),
});
