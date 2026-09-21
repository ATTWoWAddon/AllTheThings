---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.AZSHARA, {
		["lore"] =
			"A shattered stretch of coastline on Kalimdor's northeast, Azshara was once the greatest night elf metropolis. The city fell millennia ago in the War of the Ancients, but a few ragged buildings perch on the cliffs overlooking similar ruins among the coral. The Horde has established a small outpost, Grim Ulang, in the area, but naga are a constant danger.",
		["icon"] = 236714,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(852),	-- Explore Azshara
			}),
			explorationHeader({
				exploration(1227),	-- Bay of Storms
				exploration(2497),	-- Bitter Reaches
				exploration(1233),	-- Forlorn Ridge
				exploration(1236),	-- Haldarr Encampment
				exploration(1230),	-- Jagged Reef
				exploration(1234),	-- Lake Mennar
				exploration(1219),	-- Legash Encampment
				exploration(1232),	-- Ravencrest Monument
				exploration(1221),	-- Ruins of Eldarath
				exploration(1235),	-- Shadowsong Shrine
				exploration(1231),	-- Southridge Beach
				exploration(1226),	-- Temple of Arkkoran
				exploration(1220),	-- Thalassian Base Camp
				exploration(1256),	-- The Ruined Reaches
				exploration(1228),	-- The Shattered Strand
				exploration(1216),	-- Timbermaw Hold
				exploration(1229),	-- Tower of Eldara
				exploration(1225),	-- Ursolan
				exploration(1237),	-- Valormok
			}),
			n(FLIGHT_PATHS, {
				fp(64, {	-- Talrendis Point, Azshara
					["cr"] = 12577,	-- Jarrodenus <Hippogryph Master>
					["coord"] = { 11.8, 77.6, MAP.AZSHARA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(44, {	-- Valormok, Azshara / Bilgewater Harbor, Azshara [CATA+]
					["cr"] = 8610,	-- Kroum <Wind Rider Master>
					["coord"] = { 22.0, 49.6, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179497, {	-- Mossy Footlocker
					["coords"] = {
						{ 49.6, 37.2, MAP.AZSHARA },
						{ 59.8, 73.5, MAP.AZSHARA },
						{ 80.3, 36.3, MAP.AZSHARA },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 225,
				}),
			}),
			n(PROFESSIONS, {
				prof(LEATHERWORKING, {
					n(7866, {	-- Peter Galen <Master Dragonscale Leatherworker>
						["coord"] = { 37.6, 65.4, MAP.AZSHARA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_TBC_DRAGONSCALE,
					}),
				}),
			}),
			n(QUESTS, {
				q(3382, {	-- A Crew Under Fire
					["qg"] = 8380,	-- Captain Vanessa Beltis
					["coord"] = { 53.0, 87.8, MAP.AZSHARA },
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(5536, {	-- A Land Filled with Hatred
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, MAP.AZSHARA },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/6 Haldarr Satyr slain
							["provider"] = { "n", 6125 },	-- Haldarr Satyr
						}),
						objective(2, {	-- 0/2 Haldarr Trickster slain
							["provider"] = { "n", 6126 },	-- Haldarr Trickster
						}),
						objective(3, {	-- 0/2 Haldarr Felsworn slain
							["provider"] = { "n", 6127 },	-- Haldarr Felsworn
						}),
					},
				}),
				q(3381, {	-- A Meeting with the Master
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, MAP.AZSHARA },
					["timeline"] = { REMOVED_1_7_0 },
					["lvl"] = 45,
				}),
				q(3564, {	-- Andron's Payment to Jediga
					["sourceQuest"] = 3542,	-- Delivery to Andron Gant
					["providers"] = {
						{ "n", 6522 },	-- Andron Gant
						{ "i", 10679 },	-- Andron's Note
					},
					["coord"] = { 54.6, 75.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3602, {	-- Azsharite
					["sourceQuest"] = 3511,	-- The Name of the Beast (3/3)
					["qg"] = 7783,	-- Loramus Thalipedes
					["coord"] = { 60.8, 66.4, MAP.AZSHARA },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/20 Crystallized Azsharite
							["provider"] = { "i",  10714 },	-- Crystallized Azsharite
						}),
						i(10834, {	-- Felhound Tracker Kit
							i(10832),	-- Fel Tracker Owner's Manual
							i(10831),	-- Fel Orb
						}),
					},
				}),
				q(3504, {	-- Betrayed (1/4)
					["providers"] = {
						{ "n", 4485 },	-- Belgrom Rockmaul
						{ "i", 10643 },	-- Sealed Letter to Ag'tor
					},
					["coord"] = { 75.0, 34.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(3505, {	-- Betrayed (2/4)
					["sourceQuest"] = 3504,	-- Betrayed (1/4)
					["qg"] = 8576,	-- Ag'tor Bloodfist
					["coord"] = { 22.2, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/10 Blood Elf Reclaimer slain
							["provider"] = { "n", 6199 },	-- Blood Elf Reclaimer
						}),
						objective(2, {	-- 0/10 Blood Elf Surveyor slain
							["provider"] = { "n", 6198 },	-- Blood Elf Surveyor
						}),
					},
				}),
				q(3506, {	-- Betrayed (3/4)
					["sourceQuest"] = 3505,	-- Betrayed (2/4)
					["provider"] = { "o", 151286 },	-- Kaldorei Tome of Summoning
					["coord"] = { 59.5, 31.3, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Magus Rimtori
							["providers"] = {
								{ "i",  10597 },	-- Head of Magus Rimtori
								{ "o", 150140 },	-- Arcane Focusing Crystal
							},
							["coord"] = { 59.6, 31.4, MAP.AZSHARA },
							["cr"] = 8578,	-- Magus Rimtori
						}),
					},
				}),
				q(3507, {	-- Betrayed (4/4)
					["sourceQuest"] = 3506,	-- Betrayed (3/4)
					["providers"] = {
						{ "n", 8576 },	-- Ag'tor Bloodfist
						{ "i", 10597 },	-- Head of Magus Rimtori
					},
					["coord"] = { 22.2, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						i(10709),	-- Pyrestone Orb
						i(11120),	-- Belgrom's Hammer
					},
				}),
				q(3508, {	-- Breaking the Ward
					["sourceQuest"] = 3141,	-- Loramus
					["qg"] = 7783,	-- Loramus Thalipedes
					["coord"] = { 60.8, 66.4, MAP.AZSHARA },
					["lvl"] = 45,
				}),
				q(8254, {	-- Cenarion Aid
					["allianceQuestData"] = {
						["qg"] = 5489,	-- Brother Joshua <Priest Trainer>
						["coord"] = { 38.8, 26.4, MAP.STORMWIND_CITY },
					},
					["hordeQuestData"] = {
						["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
						["coord"] = { 35.6, 87.6, MAP.ORGRIMMAR },
					},
					["classes"] = { PRIEST },
					["lvl"] = 50,
				}),
				q(8153, {	-- Courser Antlers
					["sourceQuest"] = 8151,	-- The Hunter's Charm
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["classes"] = { HUNTER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Perfect Courser Antlers
							["provider"] = { "i", 20017 },	-- Perfect Courser Antler
							["cr"] = 8761,	-- Mosshoof Courser
						}),
					},
				}),
				q(3542, {	-- Delivery to Andron Gant
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["providers"] = {
						{ "n", 8587 },	-- Jediga
						{ "i", 10540 },	-- Tablet of Markri
					},
					["coord"] = { 22.4, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3561, {	-- Delivery to Archmage Xylem
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["providers"] = {
						{ "n", 8587 },	-- Jediga
						{ "i", 10541 },	-- Tablet of Sael'hai
					},
					["coord"] = { 22.4, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3541, {	-- Delivery to Jes'rimon
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["providers"] = {
						{ "n", 8587 },	-- Jediga
						{ "i", 10539 },	-- Tablet of Jin'yael
					},
					["coord"] = { 22.4, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3518, {	-- Delivery to Magatha
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["providers"] = {
						{ "n", 8587 },	-- Jediga
						{ "i", 10538 },	-- Tablet of Beth'Amara
					},
					["coord"] = { 22.4, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(9364, {	-- Fragmented Magic
					["sourceQuest"] = 9362,	-- Warlord Krellian
					["providers"] = {
						{ "n", 8379 },	-- Archmage Xylem
						{ "i", 23250 },	-- Prismatic Shell
					},
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/50 Polymorph Clone slain
							["provider"] = { "n", 16479 },	-- Polymorph Clone
							["crs"] = {
								6196,	-- Spitelash Myrmidon
								6193,	-- Spitelash Screamer
								6194,	-- Spitelash Serpent Guard
								6195,	-- Spitelash Siren
								6190,	-- Spitelash Warrior
							},
						}),
						{
							["itemID"] = 4142,	-- Tome of Polymorph: Pig
							["recipeID"] = 28272,	-- Polymorph (Pig)
							["classes"] = { MAGE },
							["f"] = RECIPES,
						},
					},
				}),
				q(3563, {	-- Jes'rimon's Payment to Jediga
					["sourceQuest"] = 3541,	-- Delivery to Jes'rimon
					["providers"] = {
						{ "n", 8659 },	-- Jes'rimon
						{ "i", 10680 },	-- Jes'rimon's Note
					},
					["coord"] = { 55.6, 34.0, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(3601, {	-- Kim'jael Indeed!
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, MAP.AZSHARA },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Kim'Jael's Compass
							["providers"] = {
								{ "i",  10717 },	-- Kim'Jael's Compass
								{ "o", 153123 },	-- Kim'jael's Equipment
							},
						}),
						objective(2, {	-- 0/1 Kim'Jael's Scope
							["providers"] = {
								{ "i",  10715 },	-- Kim'Jael's Scope
								{ "o", 153123 },	-- Kim'jael's Equipment
							},
						}),
						objective(3, {	-- 0/1 Kim'Jael's Stuffed Chicken
							["providers"] = {
								{ "i",  10722 },	-- Kim'Jael's Stuffed Chicken
								{ "o", 153123 },	-- Kim'jael's Equipment
							},
						}),
						objective(4, {	-- 0/1 Kim'Jael's Wizzlegoober
							["providers"] = {
								{ "i",  10718 },	-- Kim'Jael's Wizzlegoober
								{ "o", 153123 },	-- Kim'jael's Equipment
							},
						}),
						i(10830),	-- M73 Frag Grenade
					},
				}),
				q(5534, {	-- Kim'jael's "Missing" Equipment
					["sourceQuest"] = 3601,	-- Kim'jael Indeed!
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, MAP.AZSHARA },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Some Rune
							["provider"] = { "i", 13815 },	-- Some Rune
							["crs"] = {
								7885,	-- Spitelash Battlemaster
								7886,	-- Spitelash Enchantress
								6196,	-- Spitelash Myrmidon
								6195,	-- Spitelash Siren
							},
						}),
					},
				}),
				q(3141, {	-- Loramus
					["sourceQuest"] = 2744,	-- The Demon Hunter
					["qg"] = 7783,	-- Loramus Thalipedes
					["coord"] = { 60.8, 66.4, MAP.AZSHARA },
					["lvl"] = 45,
				}),
				q(3562, {	-- Magatha's Payment to Jediga
					["sourceQuest"] = 3518,	-- Delivery to Magatha
					["providers"] = {
						{ "n", 4046 },	-- Magatha Grimtotem
						{ "i", 10678 },	-- Magatha's Note
					},
					["coord"] = { 70.2, 30.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(8250, {	-- Magecraft
					["allianceQuestData"] = {
						["qgs"] = {
							7312,	-- Dink <Mage Trainer> [MAP.IRONFORGE]
							331,	-- Maginor Dumas <Master Mage> [MAP.STORMWIND_CITY]
						},
						["coords"] = {
							{ 26.8, 8.6, MAP.IRONFORGE },
							{ 49.2, 87.7, MAP.STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							7311,	-- Uthel'nay <Mage Trainer> [MAP.ORGRIMMAR]
							3047,	-- Archmage Shymm <Mage Trainer> [MAP.THUNDER_BLUFF]
							4567,	-- Pierce Shackleton <Mage Trainer>	[MAP.UNDERCITY]
						},
						["coords"] = {
							{ 39.0, 86.0, MAP.ORGRIMMAR },
							{ 22.6, 14.8, MAP.THUNDER_BLUFF },
							{ 85.6, 14.0, MAP.UNDERCITY },
						},
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(8251, {	-- Magic Dust
					["sourceQuest"] = 8250,	-- Magecraft
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Glittering Dust
							["provider"] = { "i", 20028 },	-- Glittering Dust
							["crs"] = {
								6199,	-- Blood Elf Reclaimer
								6198,	-- Blood Elf Surveyor
							},
						}),
					},
				}),
				q(3503, {	-- Meeting with the Master
					["qg"] = 8395,	-- Sanath Lim-yo
					["coord"] = { 28.0, 50.0, MAP.AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8255, {	-- Of Coursers We Know
					["sourceQuest"] = 8254,	-- Cenarion Aid
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["classes"] = { PRIEST },
					["lvl"] = 50,
					["groups"] = {
						objective(2, {	-- 0/1 Secret Rocket Plans
							["provider"] = { "i", 49204 },	-- Secret Rocket Plans
							["cr"] = 36156,	-- Mutant Goblin
						}),
						objective(1, {	-- 0/4 Healthy Courser Gland
							["provider"] = { "i", 20027 },	-- Healthy Courser Gland
							["cr"] = 8761,	-- Mosshoof Courser
						}),
					},
				}),
				q(3421, {	-- Return Trip
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, MAP.AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(5535, {	-- Spiritual Unrest
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, MAP.AZSHARA },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/6 Highborne Apparition slain
							["provider"] = { "n", 6116 },	-- Highborne Apparition
						}),
						objective(2, {	-- 0/6 Highborne Lichling slain
							["provider"] = { "n", 6117 },	-- Highborne Lichling
						}),
					},
				}),
				q(3517, {	-- Stealing Knowledge
					["qg"] = 8587,	-- Jediga
					["coord"] = { 22.4, 51.4, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Beth'Amara
							["providers"] = {
								{ "i",  10538 },	-- Tablet of Beth'Amara
								{ "o", 148516 },	-- Tablet of Beth'Amara
							},
						}),
						objective(2, {	-- 0/1 Tablet of Jin'yael
							["providers"] = {
								{ "i",  10539 },	-- Tablet of Jin'yael
								{ "o", 148513 },	-- Tablet of Jin'yael
							},
						}),
						objective(3, {	-- 0/1 Tablet of Markri
							["providers"] = {
								{ "i",  10540 },	-- Tablet of Markri
								{ "o", 148514 },	-- Tablet of Markri
							},
						}),
						objective(4, {	-- 0/1 Tablet of Sael'hai
							["providers"] = {
								{ "i",  10541 },	-- Tablet of Sael'hai
								{ "o", 148515 },	-- Tablet of Sael'hai
							},
						}),
					},
				}),
				q(3621, {	-- The Formation of Felbane
					["sourceQuest"] = 3602,	-- Azsharite
					["providers"] = {
						{ "n", 7783 },	-- Loramus Thalipedes
						{ "i", 10738 },	-- Shipment to Galvan
					},
					["coord"] = { 60.8, 66.4, MAP.AZSHARA },
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 45,
				}),
				q(8151, {	-- The Hunter's Charm
					["allianceQuestData"] = {
						["qgs"] = {
							4205,	-- Dorion <Hunter Trainer>
							5116,	-- Olmin Burningbeard <Hunter Trainer>
							5516,	-- Ulfir Ironbeard <Hunter Trainer>
						},
						["coords"] = {
							{ 42.2, 7.6, MAP.DARNASSUS },
							{ 70.6, 83.8, MAP.IRONFORGE },
							{ 67.6, 35.8, MAP.STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							3352,	-- Ormak Grimshot <Hunter Trainer>
							3039,	-- Holt Thunderhorn <Hunter Trainer>
						},
						["coords"] = {
							{ 66.2, 18.6, MAP.ORGRIMMAR },
							{ 57.6, 88.6, MAP.THUNDER_BLUFF },
						},
					},
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(8256, {	-- The Ichor of Undeath
					["sourceQuest"] = 8255,	-- Of Coursers We Know
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["cost"] = { { "i", 7972, 1 } },	-- Ichor of Undeath
					["classes"] = { PRIEST },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Keystone Shard
							["providers"] = {
								{ "i", 49094 },	-- Keystone Shard
								{ "o", 201579 },	-- Keystone Shard
							},
						}),
					},
				}),
				q(3509, {	-- The Name of the Beast (1/3)
					["sourceQuest"] = 3508,	-- Breaking the Ward
					["qg"] = 7783,	-- Loramus Thalipedes
					["coord"] = { 60.8, 66.4, MAP.AZSHARA },
					["lvl"] = 45,
				}),
				q(3510, {	-- The Name of the Beast (2/3)
					["sourceQuest"] = 3509,	-- The Name of the Beast (1/3)
					["qg"] = 6134,	-- Lord Arkkoroc
					["coord"] = { 77.2, 42.8, MAP.AZSHARA },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Hetaera's Beaten Head
							["provider"] = { "i", 10599 },	-- Hetaera's Beaten Head
							["coords"] = {
								{ 56.6, 44.6, MAP.AZSHARA },
								{ 59.4, 40.6, MAP.AZSHARA },
							},
							["cr"] = 6140,	-- Hetaera
						}),
						objective(2, {	-- 0/1 Hetaera's Bloodied Head
							["provider"] = { "i", 10598 },	-- Hetaera's Bloodied Head
							["cr"] = 6140,	-- Hetaera
						}),
						objective(3, {	-- 0/1 Hetaera's Bruised Head
							["provider"] = { "i", 10600 },	-- Hetaera's Bruised Head
							["cr"] = 6140,	-- Hetaera
						}),
					},
				}),
				q(3511, {	-- The Name of the Beast (3/3)
					["sourceQuest"] = 3510,	-- The Name of the Beast (2/3)
					["providers"] = {
						{ "n", 6134 },	-- Lord Arkkoroc
						{ "i", 10610 },	-- Hetaera's Blood
					},
					["coord"] = { 77.2, 42.8, MAP.AZSHARA },
					["lvl"] = 45,
				}),
				q(8252, {	-- The Siren's Coral
					["sourceQuest"] = 8251,	-- Magic Dust
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/6 Enchanted Coral
							["provider"] = { "i", 20029 },	-- Enchanted Coral
							["cr"] = 6195,	-- Spitelash Siren
						}),
					},
				}),
				q(9362, {	-- Warlord Krellian
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, MAP.AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Prismatic Shell
							["provider"] = { "i", 23250 },	-- Prismatic Shell
							["coord"] = { 41.6, 52.8, MAP.AZSHARA },
							["cr"] = 8408,	-- Warlord Krellian
						}),
					},
				}),
				q(8231, {	-- Wavethrashing
					["sourceQuest"] = 8153,	-- Courser Antlers
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, MAP.AZSHARA },
					["classes"] = { HUNTER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/6 Wavethrasher Scales
							["provider"] = { "i", 20087 },	-- Wavethrasher Scales
							["crs"] = {
								6349,	-- Great Wavethrasher
								6348,	-- Wavethrasher
								6347,	-- Young Wavethrasher
							},
						}),
					},
				}),
				q(3565, {	-- Xylem's Payment to Jediga
					["sourceQuest"] = 3561,	-- Delivery to Archmage Xylem
					["providers"] = {
						{ "n", 8379 },	-- Archmage Xylem
						{ "i", 10681 },	-- Xylem's Note
					},
					["coord"] = { 29.2, 40.2, MAP.AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
			}),
			n(RARES, {
				n(6648, {	-- Antilos
					["coords"] = {
						{ 16.8, 51.8, MAP.AZSHARA },
						{ 18.0, 56.6, MAP.AZSHARA },
						{ 17.0, 64.0, MAP.AZSHARA },
						{ 48.0, 19.2, MAP.AZSHARA },
						{ 49.0, 26.0, MAP.AZSHARA },
						{ 51.0, 29.6, MAP.AZSHARA },
						{ 52.2, 36.8, MAP.AZSHARA },
						{ 54.0, 25.8, MAP.AZSHARA },
						{ 56.6, 19.4, MAP.AZSHARA },
					},
				}),
				n(6651, {	-- Gatekeeper Rageroar
					["description"] = "Killing him will reduce your Timbermaw reputation. (DON'T DO IT!)",
					["coords"] = {
						{ 38.4, 32.6, MAP.AZSHARA },
					},
				}),
				n(6650, {	-- General Fangferror
					["coords"] = {
						{ 41.6, 51.8, MAP.AZSHARA },
					},
					["groups"] = {
						i(17054),	-- Joonho's Mercy
					},
				}),
				n(6649, {	-- Lady Sesspira
					["coords"] = {
						{ 40.6, 45.6, MAP.AZSHARA },
						{ 37.2, 49.0, MAP.AZSHARA },
						{ 37.6, 51.8, MAP.AZSHARA },
						{ 34.0, 58.6, MAP.AZSHARA },
						{ 39.6, 55.6, MAP.AZSHARA },
					},
				}),
				n(6647, {	-- Magister Hawkhelm
					["coords"] = {
						{ 56.8, 28.6, MAP.AZSHARA },
						{ 59.4, 31.4, MAP.AZSHARA },
					},
				}),
				n(6652, {	-- Master Feardred
					["coords"] = {
						{ 61.8, 25.6, MAP.AZSHARA },
						{ 65.8, 17.6, MAP.AZSHARA },
					},
				}),
				n(6646, {	-- Monnos the Elder
					["coords"] = {
						{ 82.0, 18.6, MAP.AZSHARA },
						{ 78.6, 17.4, MAP.AZSHARA },
						{ 76.2, 18.0, MAP.AZSHARA },
						{ 72.8, 19.2, MAP.AZSHARA },
						{ 76.8, 23.4, MAP.AZSHARA },
						{ 59.8, 78.4, MAP.AZSHARA },
						{ 55.6, 80.2, MAP.AZSHARA },
						{ 59.8, 80.6, MAP.AZSHARA },
						{ 56.4, 87.8, MAP.AZSHARA },
						{ 59.6, 89.0, MAP.AZSHARA },
					},
				}),
				n(13896, {	-- Scalebeard
					["coords"] = {
						{ 55.0, 49.8, MAP.AZSHARA },
						{ 52.0, 45.6, MAP.AZSHARA },
						{ 52.2, 49.6, MAP.AZSHARA },
					},
				}),
				n(8660, {	-- The Evalcharr
					["coords"] = {
						{ 17.6, 54.0, MAP.AZSHARA },
						{ 18.8, 66.0, MAP.AZSHARA },
						{ 23.4, 55.0, MAP.AZSHARA },
					},
				}),
				n(6118, {	-- Varo'then's Ghost
					["coords"] = {
						{ 13.4, 74.8, MAP.AZSHARA },
						{ 16.6, 72.8, MAP.AZSHARA },
						{ 17.2, 66.2, MAP.AZSHARA },
						{ 19.0, 68.0, MAP.AZSHARA },
					},
				}),
			}),
			n(TREASURES, {
				o(152620, {	-- Azsharite Formation
					["coord"] = { 50.0, 70.1, MAP.AZSHARA },
					["groups"] = {
						i(10714),	-- Crystallized Azsharite
						i(10840),	-- Crystallized Note
					},
				}),
				o(152621, {	-- Azsharite Formation
					["coord"] = { 52.6, 78.3, MAP.AZSHARA },
					["groups"] = {
						i(10714),	-- Crystallized Azsharite
						i(10839),	-- Crystallized Note
					},
				}),
				o(152622, {	-- Azsharite Formation
					["coord"] = { 60.7, 86.5, MAP.AZSHARA },
					["groups"] = {
						i(10714),	-- Crystallized Azsharite
					},
				}),
			}),
			n(VENDORS, {
				n(12957, {	-- Blimo Gadgetspring <Trade Supplies>
					["coord"] = { 45.2, 90.8, MAP.AZSHARA },
					["groups"] = {
						i(15751),	-- Pattern: Blue Dragonscale Breastplate (RECIPE!)
						i(15729),	-- Pattern: Chimeric Gloves (RECIPE!)
					},
				}),
				n(14301, {	-- Brinna Valanaar <Bowyer>
					["coord"] = { 12.0, 78.4, MAP.AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(8678, {	-- Jubie Gadgetspring <Engineering Supplier>
					["coord"] = { 45.2, 90.8, MAP.AZSHARA },
					["groups"] = {
						i(10607),	-- Schematic: Deepdive Helmet (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- Originally a zone drop of Azshara, was moved to Winterspring after.
				i(16219, {	-- Formula: Enchant Gloves - Greater Agility
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(15763, {	-- Pattern: Blue Dragonscale Shoulders (RECIPE!)
					["cr"] = 6146,	-- Cliff Breaker
					["coords"] = {
						{ 64.6, 87.2, MAP.AZSHARA },
						{ 50.4, 80.2, MAP.AZSHARA },
						{ 80.6, 18.6, MAP.AZSHARA },
						{ 70.4, 17.6, MAP.AZSHARA },
					},
					-- Zonedrop, can drop from any mob now
				}),
				i(14473, {	-- Pattern: Ghostweave Belt (RECIPE!)
					["cr"] = 7864,	-- Lingering Highborne
				}),
				i(14477, {	-- Pattern: Ghostweave Gloves (RECIPE!)
					["cr"] = 7864,	-- Lingering Highborne
				}),
				i(15753, {	-- Pattern: Stormshroud Armor (RECIPE!)
					["cr"] = 6138,	-- Arkkoran Oracle
				}),
				i(15764, {	-- Pattern: Stormshroud Shoulders (RECIPE!)
					["cr"] = 6144,	-- Son of Arkkoroc
				}),
				i(15728, {	-- Pattern: Wicked Leather Bracers (RECIPE!)
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose (RECIPE!)
					["coords"] = {
						{ 56.6, 23.6, MAP.AZSHARA },
						{ 53.6, 23.8, MAP.AZSHARA },
					},
					["timeline"] = { ADDED_1_11_1 },	-- ATT Discord 05.09.2023
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(16045, {	-- Schematic: Spellpower Goggles Xtreme Plus (RECIPE!)
					["cr"] = 6195,	-- Spitelash Siren
				}),
				i(10450, {	-- Undamaged Hippogryph Feather
					["crs"] = {
						6648,	-- Antilos
						6380,	-- Thunderhead Consort
						6375,	-- Thunderhead Hippogryph
						6379,	-- Thunderhead Patriarch
						6378,	-- Thunderhead Skystormer
						6377,	-- Thunderhead Stagwing
					},
				}),
			}),
		},
	}),
}));
