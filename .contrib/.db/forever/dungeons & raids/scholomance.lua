-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(246, {	-- Scholomance
	lore = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster.",
	icon = 136355,
	zoneTextAreaID = 2057,	-- TODO: Determine what expansion this gets its own (correct) mapID.
	sourceQuests = {
		5505,	-- The Key to Scholomance [Alliance]
		5511,	-- The Key to Scholomance [Horde]
	},
	mapID = MAP.SCHOLOMANCE,
	coord = { 69.07, 72.96, MAP.WESTERN_PLAGUELANDS },
	cost = { { "i", 13704, 1 } },	-- Skeleton Key
	lvl = 55,
	groups = {
		n(QUESTS, {
			q(8259, {	-- A More Fitting Reward (Post 1.7, Phase 4)
				sourceQuest = 7668,	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
				altQuests = { 8258 },	-- The Darkreaver Menace (New)
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, MAP.ORGRIMMAR },
				races = HORDE_SHAMANS,
				classes = { SHAMAN },
				lvl = 55,
				groups = {
					i(20134),	-- Skyfury Helm
				},
			}),
			q(7666, {	-- Again Into the Great Ossuary [A]
				sourceQuest = 7647,	-- Judgment and Redemption
				qg = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				coord = { 48.6, 50.0, MAP.STORMWIND_CITY },
				races = ALLIANCE_PALADINS,
				classes = { PALADIN },
				lvl = 60,
				repeatable = true,
				groups = {
					i(18746),	-- Divination Scryer
				},
			}),
			q(7669, {	-- Again Into the Great Ossuary [H]
				sourceQuest = 8258,	-- The Darkreaver Menace
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, MAP.ORGRIMMAR },
				races = HORDE_SHAMANS,
				classes = { SHAMAN },
				lvl = 60,
				repeatable = true,
				groups = {
					i(18746),	-- Divination Scryer
				},
			}),
			{	-- Araj's Scarab
				allianceQuestData = q(5803, {	-- Araj's Scarab [A]
					sourceQuest = 5801,	-- Fire Plume Forged [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.7, 83.8, MAP.WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5804, {	-- Araj's Scarab [H]
					sourceQuest = 5802,	-- Fire Plume Forged [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, MAP.TIRISFAL_GLADES },
					maps = { MAP.WESTERN_PLAGUELANDS },
				}),
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Araj's Scarab
						providers = {
							{ "i", 14610 },	-- Araj's Scarab
							{ "o", 177241 },	-- Araj's Phylactery
						},
						coord = { 45.6, 69.2, MAP.WESTERN_PLAGUELANDS },
						cr = 1852,	-- Araj the Summoner
					}),
				},
			},
			{	-- Barov Family Fortune
				allianceQuestData = q(5343, {	-- Barov Family Fortune [A]
					qg = 11023,	-- Weldon Barov <House of Barov>
					coord = { 43.5, 83.7, MAP.WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5341, {	-- Barov Family Fortune [H]
					qg = 11022,	-- Alexi Barov <House of Barov>
					coord = { 83.06, 71.6, MAP.TIRISFAL_GLADES },
					maps = { MAP.WESTERN_PLAGUELANDS },
				}),
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 The Deed to Brill
						providers = {
							{ "i", 13471 },	-- The Deed to Brill
							{ "o", 176484 },	-- The Deed to Brill
						},
						description = "Can be found along the wall in Ras Frostwhisper's room.",
					}),
					objective(2, {	-- 0/1 The Deed to Caer Darrow
						providers = {
							{ "i", 13448 },	-- The Deed to Caer Darrow
							{ "o", 176485 },	-- The Deed to Caer Darrow
						},
						description = "Can be found right next to Alexi Barov.",
					}),
					objective(3, {	-- 0/1 The Deed to Southshore
						providers = {
							{ "i", 13450 },	-- The Deed to Southshore
							{ "o", 176486 },	-- The Deed to Southshore
						},
						description = "Can be found in the very back of the first room hidden behind some bookshelves.",
					}),
					objective(4, {	-- 0/1 The Deed to Tarren Mill
						providers = {
							{ "i", 13451 },	-- The Deed to Tarren Mill
							{ "o", 176487 },	-- The Deed to Tarren Mill
						},
						description = "Can be found on the table in the back corner just before you enter the dragon whelpling room or travel downstairs to fight Jandice Barov.",
					}),
				},
			},
			q(5531, {	-- Betina Bigglezink
				sourceQuest = 5522,	-- Leonid Barthalomew
				qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				coord = { 81.73, 57.83, MAP.EASTERN_PLAGUELANDS },
				lvl = 57,
				qi = 13761,	-- Frozen Eggs (QI!)
			}),
			q(4771, {	-- Dawn's Gambit
				description = "After completing this quest, you can return to Betina to have her give you another Gambit.",
				sourceQuest = 5531,	-- Betina Bigglezink
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.5, 59.7, MAP.EASTERN_PLAGUELANDS },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Vectus slain
						provider = { "n", 10432 },	-- Vectus
					}),
					objective(2, {	-- 0/1 Place Dawn's Gambit
						provider = { "i", 12368 },	-- Dawn's Gambit
						description = "This will significantly reduce all of the nearby student's health and damage. As soon as the component opens, you should have your tank or plate/rogue dps aggro the room other than the 2 bosses and get ready to AOE.",
					}),
					i(15854),	-- Dancing Sliver
					i(15853),	-- Windreaper
				},
			}),
			q(5382, {	-- Doctor Theolen Krastinov, the Butcher
				description = "Talk to Eva until she offers the quest.",
				qg = 11216,	-- Eva Sarkhoff
				coord = { 70.2, 73.7, MAP.WESTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Doctor Theolen Krastinov slain
						provider = { "n", 11261 },	-- Doctor Theolen Krastinov <The Butcher>
					}),
					objective(2, {	-- 0/1 Remains of Eva Sarkhoff Burned
						provider = { "o", 176544 },	-- Remains of Eva Sarkhoff
					}),
					objective(3, {	-- 0/1 Remains of Lucien Sarkhoff Burned
						provider = { "o", 176545 },	-- Remains of Lucien Sarkhoff
					}),
				},
			}),
			{	-- Fire Plume Forged
				allianceQuestData = q(5801, {	-- Fire Plume Forged [A]
					sourceQuest = 5538,	-- Mold Rhymes With... [Alliance]
				}),
				hordeQuestData = q(5802, {	-- Fire Plume Forged [H]
					sourceQuest = 5514,	-- Mold Rhymes With... [Horde]
				}),
				qg = 5411,	-- Krinkle Goodsteel <Blacksmithing Supplies>
				coord = { 51.5, 28.8, MAP.TANARIS },
				maps = { MAP.UNGORO_CRATER },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Unfinished Skeleton Key
						provider = { "i", 14645 },	-- Unfinished Skeleton Key
						coord = { 49.6, 47.6, MAP.UNGORO_CRATER },
						cost = {
							{ "i", 14644, 1 },	-- Skeleton Key Mold
							{ "i", 12359, 2 },	-- Thorium Bar
						},
					}),
				},
			},
			q(5582, {	-- Healthy Dragon Scale
				sourceQuest = 5529,	-- Plagued Hatchlings
				provider = { "i", 13920 },	-- Healthy Dragon Scale
				maxReputation = { FACTION_ARGENT_DAWN, EXALTED },
				lvl = 55,
				repeatable = true,
			}),
			q(5384, {	-- Kirtonos the Herald
				sourceQuest = 5515,	-- Krastinov's Bag of Horrors
				qg = 11216,	-- Eva Sarkhoff
				coord = { 70.2, 73.7, MAP.WESTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Kirtonos the Herald slain
						provider = { "n", 10506 },	-- Kirtonos the Herald
					}),
					i(15806),	-- Mirah's Song
					i(15805),	-- Penelope's Rose
					ig(13544),	-- Spectral Essence
				},
			}),
			q(5515, {	-- Krastinov's Bag of Horrors
				sourceQuest = 5382,	-- Doctor Theolen Krastinov, the Butcher
				qg = 11216,	-- Eva Sarkhoff
				coord = { 70.2, 73.7, MAP.WESTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Krastinov's Bag of Horrors
						provider = { "i", 13725 },	-- Krastinov's Bag of Horrors
					}),
				},
			}),
			q(7647, {	-- Judgment and Redemption
				sourceQuest = 7646,	-- The Divination Scryer
				providers = {
					{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					{ "i", 18804 },	-- Lord Grayson's Satchel
				},
				coord = { 48.6, 50.0, MAP.STORMWIND_CITY },
				races = ALLIANCE_PALADINS,
				classes = { PALADIN },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Charger's Redeemed Soul
						provider = { "i", 18799 },	-- Charger's Redeemed Soul
						cost = { { "i", 18749, 1 } },	-- Charger's Lost Soul
						crs = {
							14516,	-- Death Knight Darkreaver
							14568,	-- Darkreaver's Fallen Charger
						},
					}),
					objective(2, {	-- 0/1 Blessed Arcanite Barding
						provider = { "i", 18792 },	-- Blessed Arcanite Barding
					}),
					mount(23214, {	-- Charger (MOUNT!)
						races = ALLIANCE_ONLY,
						classes = { PALADIN },
						lvl = 60,
					}),
				},
			}),
			q(5522, {	-- Leonid Barthalomew
				sourceQuest = 4735,	-- Egg Collection
				providers = {
					{ "n", 10267 },	-- Tinkee Steamboil
					{ "i", 13761 },	-- Frozen Eggs
				},
				coord = { 65.2, 23.8, MAP.BURNING_STEPPES },
				lvl = 57,
			}),
			q(7667, {	-- Material Assistance
				qg = 13417,	-- Sagorne Creststrider
				coord = { 39.2, 48.4, MAP.ORGRIMMAR },
				cost = {
					{ "i", 12800, 1 },	-- Azerothian Diamond
					{ "i", 18335, 1 },	-- Pristine Black Diamond
				},
				races = HORDE_SHAMANS,
				classes = { SHAMAN },
				lvl = 58,
			}),
			q(5463, {	-- Menethil's Gift (1/2)
				description = "Take the Keepsake to the symbol on the floor in Baron Rivendare's room in Stratholme.",
				sourceQuest = 5462,	-- The Dying, Ras Frostwhisper
				providers = {
					{ "n", 11036 },	-- Leonid Barthalomew the Revered <The Argent Dawn>
					{ "i", 13585 },	-- Keepsake of Remembrance
				},
				coord = { 81.7, 57.8, MAP.EASTERN_PLAGUELANDS },
				maps = { MAP.STRATHOLME },
				lvl = 57,
			}),
			q(5464, {	-- Menethil's Gift (2/2)
				sourceQuest = 5463,	-- Menethil's Gift (1/2)
				providers = {
					{ "o", 176631 },	-- Menethil's Gift
					{ "i", 13624 },	-- Soulbound Keepsake
				},
				maps = { MAP.STRATHOLME },
				lvl = 57,
			}),
			{	-- Mold Rhymes With...
				allianceQuestData = q(5538, {	-- Mold Rhymes With... [A]
					sourceQuest = 5537,	-- Skeletal Fragments [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.66, 83.77, MAP.WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5514, {	-- Mold Rhymes With... [H]
					sourceQuest = 964,	-- Skeletal Fragments [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, MAP.TIRISFAL_GLADES },
					maps = { MAP.WESTERN_PLAGUELANDS },
				}),
				cost = {
					{ "i", 14628, 1 },	-- Imbued Skeletal Fragments
					{ "g", 150000 },	-- 15g
				},
				lvl = 55,
			},
			q(5529, {	-- Plagued Hatchlings
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.47, 59.66, MAP.EASTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/20 Plagued Hatchling slain
						provider = { "n", 10678 },	-- Plagued Hatchling
					}),
				},
			}),
			q(5533, {	-- Scholomance [Alliance]
				sourceQuest = 5097,	-- All Along the Watchtowers [Alliance]
				qg = 10838,	-- Commander Ashlam Valorfist
				coord = { 42.7, 84.0, MAP.WESTERN_PLAGUELANDS },
				races = ALLIANCE_ONLY,
				lvl = 55,
			}),
			q(838, {	-- Scholomance [Horde]
				sourceQuest = 5098,	-- All Along the Watchtowers [Horde]
				qg = 10837,	-- High Executor Derrington
				coord = { 83.1, 68.9, MAP.TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			{	-- Skeletal Fragments
				allianceQuestData = q(5537, {	-- Skeletal Fragments [A]
					sourceQuest = 5533,	-- Scholomance [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.66, 83.77, MAP.WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(964, {	-- Skeletal Fragments [H]
					sourceQuest = 838,	-- Scholomance [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, MAP.TIRISFAL_GLADES },
					maps = { MAP.WESTERN_PLAGUELANDS },
				}),
				lvl = 55,
				groups = {
					objective(1, {	-- 0/15 Skeletal Fragments
						provider = { "i", 14619 },	-- Skeletal Fragments
						crs = {
							1789,	-- Skeletal Acolyte
							1787,	-- Skeletal Executioner
							1783,	-- Skeletal Flayer
							1784,	-- Skeletal Sorcerer
							1785,	-- Skeletal Terror
							1788,	-- Skeletal Warlord
						},
					}),
				},
			},
			q(5465, {	-- Soulbound Keepsake
				sourceQuest = 5464,	-- Menethil's Gift (2/2)
				providers = {
					{ "n", 11036 },	-- Leonid Barthalomew the Revered <The Argent Dawn>
					{ "i", 13624 },	-- Soulbound Keepsake
				},
				coord = { 81.7, 57.8, MAP.EASTERN_PLAGUELANDS },
				lvl = 57,
			}),
			q(7668, {	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
				sourceQuest = 7667,	-- Material Assistance
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, MAP.ORGRIMMAR },
				races = HORDE_SHAMANS,
				classes = { SHAMAN },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Darkreaver's Head
						provider = { "i", 18880 },	-- Darkreaver's Head
						cr = 14516,	-- Death Knight Darkreaver
					}),
					i(18807),	-- Helm of Latent Power
				},
			}),
			q(8258, {	-- The Darkreaver Menace (Post 1.7, Phase 4)
				sourceQuest = 7667,	-- Material Assistance
				altQuests = {
					7668,	-- The Darkreaver Menace (Original)
				},
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, MAP.ORGRIMMAR },
				races = HORDE_SHAMANS,
				classes = { SHAMAN },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Darkreaver's Head
						provider = { "i", 18880 },	-- Darkreaver's Head
						cr = 14516,	-- Death Knight Darkreaver
					}),
					i(20134),	-- Skyfury Helm
				},
			}),
			q(5462, {	-- The Dying, Ras Frostwhisper
				sourceQuest = 5461,	-- The Human, Ras Frostwhisper
				providers = {
					{ "n", 11286 },	-- Magistrate Marduke
					{ "i", 13544 },	-- Spectral Essence
					{ "i", 13585 },	-- Keepsake of Remembrance
				},
				coord = { 70.6, 74.1, MAP.WESTERN_PLAGUELANDS },
				lvl = 57,
			}),
			q(5461, {	-- The Human, Ras Frostwhisper
				sourceQuest = 5384,	-- Kirtonos the Herald
				providers = {
					{ "n", 11286 },	-- Magistrate Marduke
					{ "i", 13544 },	-- Spectral Essence
				},
				coord = { 70.6, 74.1, MAP.WESTERN_PLAGUELANDS },
				maps = { MAP.ARATHI_HIGHLANDS },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Keepsake of Remembrance
						providers = {
							{ "i", 13585 },	-- Keepsake of Remembrance
							{ "o", 176630 },	-- Keepsake of Remembrance
						},
						coord = { 17.9, 69.4, MAP.ARATHI_HIGHLANDS },
					}),
				},
			}),
			{	-- The Key to Scholomance
				allianceQuestData = q(5505, {	-- The Key to Scholomance [A]
					sourceQuest = 5803,	-- Araj's Scarab
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.6, 83.8, MAP.WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5511, {	-- The Key to Scholomance [H]
					sourceQuest = 5804,	-- Araj's Scarab
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.2, 69.2, MAP.TIRISFAL_GLADES },
					maps = { MAP.WESTERN_PLAGUELANDS },
				}),
				lvl = 55,
				groups = {
					i(13704),	-- Skeleton Key
				},
			},
			q(5344, {	-- The Last Barov [Alliance]
				sourceQuest = 5343,	-- Barov Family Fortune [Alliance]
				qg = 11023,	-- Weldon Barov <House of Barov>
				coord = { 43.5, 83.7, MAP.WESTERN_PLAGUELANDS },
				maps = { MAP.TIRISFAL_GLADES },
				races = ALLIANCE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Head of Alexi Barov
						provider = { "i", 13470 },	-- Head of Alexi Barov
						coord = { 83.0, 71.6, MAP.TIRISFAL_GLADES },
						cr = 11022,	-- Alexi Barov <House of Barov>
					}),
					i(14023),	-- Barov Peasant Caller
				},
			}),
			q(5342, {	-- The Last Barov [Horde]
				sourceQuest = 5341,	-- Barov Family Fortune [Horde]
				qg = 11022,	-- Alexi Barov <House of Barov>
				coord = { 83.06, 71.6, MAP.TIRISFAL_GLADES },
				maps = { MAP.WESTERN_PLAGUELANDS },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Head of Weldon Barov
						provider = { "i", 13469 },	-- Head of Weldon Barov
						coord = { 43.4, 83.6, MAP.WESTERN_PLAGUELANDS },
						cr = 11023,	-- Weldon Barov <House of Barov>
					}),
					i(14022),	-- Barov Peasant Caller
				},
			}),
			q(5466, {	-- The Lich, Ras Frostwhisper
				sourceQuest = 5465,	-- Soulbound Keepsake
				providers = {
					{ "n", 11286 },	-- Magistrate Marduke
					{ "i", 13544 },	-- Spectral Essence
				},
				coord = { 70.6, 74.1, MAP.WESTERN_PLAGUELANDS },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Human Head of Ras Frostwhisper
						provider = { "i", 13626 },	-- Human Head of Ras Frostwhisper
					}),
					i(14002),	-- Darrowshire Strongguard
					i(13984),	-- Darrowspike
					i(13982),	-- Warblade of Caer Darrow
					i(13986),	-- Crown of Caer Darrow
				},
			}),
		}),
		n(TREASURES, {
			i(12736, {	-- Frostwhisper's Embalming Fluid
				description = "Can be found inside the chemistry lab in Scholomance, in Ras Frostwhisper's room.",
				provider = { "o", 175965 },	-- Frostwhisper's Embalming Fluid
			}),
		}),
		n(ZONE_DROPS, {
			i(20520),	-- Dark Rune
			i(16255, {	-- Formula: Enchant 2H Weapon - Major Spirit (RECIPE!)
				cr = 10469,	-- Scholomance Adept
			}),
			i(16254, {	-- Formula: Enchant Weapon - Lifestealing (RECIPE!)
				cr = 10499,	-- Spectral Researcher
			}),
			i(15776, {	-- Pattern: Runic Leather Armor (RECIPE!)
				cr = 11582,	-- Scholomance Dark Summoner
			}),
			i(15773, {	-- Pattern: Wicked Leather Armor (RECIPE!)
				cr = 10499,	-- Spectral Researcher
			}),
			i(22526),	-- Bone Fragments
			i(12843, {	-- Corruptor's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12841, {	-- Invader's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12840, {	-- Minion's Scourgestone
				description = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(13920, {	-- Healthy Dragon Scale
				description = "This item can only drop from the Hatchlings after you have completed the Plagued Hatchlings quest.",
				cr = 10678,	-- Plagued Hatchling
			}),
			i(12753),	-- Skin of Shadow
			i(18702),	-- Belt of the Ordained
			i(16671, {	-- Bindings of Elements
				cr = 10478,	-- Splintered Skeleton
			}),
			i(14536),	-- Bonebrace Hauberk
			i(18697),	-- Coldstone Slippers
			i(16702, {	-- Dreadmist Belt
				cr = 10477,	-- Scholomance Necromancer
			}),
			i(16705, {	-- Dreadmist Wraps
				cr = 10477,	-- Scholomance Necromancer
			}),
			i(18699),	-- Icy Tomb Spaulders
			i(18701),	-- Innervating Band
			i(16722, {	-- Lightforge Bracers
				crs = {
					10487,	-- Risen Protector
					10486,	-- Risen Warrior
				},
			}),
			i(16685, {	-- Magister's Belt
				cr = 10469,	-- Scholomance Adept
			}),
			i(16684, {	-- Magister's Gloves
				cr = 10469,	-- Scholomance Adept
			}),
			i(18700),	-- Malefic Bracers
			i(16710, {	-- Shadowcraft Bracers
				crs = {
					11284,	-- Dark Shade
					10472,	-- Scholomance Occultist
					10488,	-- Risen Construct
				},
			}),
			i(18698),	-- Tattered Leather Hood
			i(16716, {	-- Wildheart Belt
				crs = {
					11257,	-- Scholomance Handler
					10500,	-- Spectral Teacher
					10499,	-- Spectral Researcher
				},
			}),
			i(16714, {	-- Wildheart Bracers
				cr = 10495,	-- Diseased Ghoul
			}),
		}),
		n(14861, {	-- Blood Steward of Kirtonos
			i(13523),	-- Blood of Innocents
		}),
		n(10506, {	-- Kirtonos the Herald
			description = "Can only be summoned if someone in your group has the Blood of Innocents.",
			providers = {
				{ "o", 175564 },	-- Brazier of the Herald
				{ "i", 13523 },	-- Blood of Innocents
			},
			groups = {
				i(14024),	-- Frightalon
				i(13983),	-- Gravestone War Axe
				i(13960),	-- Heart of the Fiend
				i(13955),	-- Stoneform Shoulders
				i(13969),	-- Loomguard Armbraces
				i(13957),	-- Gargoyle Slashers
				i(13956),	-- Clutch of Andros
				i(16734),	-- Boots of Valor
				i(13967),	-- Windreaver Greaves
			},
		}),
		n(10503, {	-- Jandice Barov
			i(13523),	-- Blood of Innocents
			i(13725),	-- Krastinov's Bag of Horrors
			o(180794, {	-- Journal of Jandice Barov
				description = "Jandice Barov drops this item when killed, which teaches Felcloth Bag.",
				groups = {
					r(26086, {	-- Felcloth Bag
						requireSkill = TAILORING,
						learnedAt = 285,
					}),
				},
			}),
			i(14541),	-- Barovian Family Sword
			i(22394),	-- Staff of Metanoia
			i(18689),	-- Phantasmal Cloak
			i(16701),	-- Dreadmist Mantle
			i(14548),	-- Royal Cap Spaulders
			i(14543),	-- Darkshade Gloves
			i(14545),	-- Ghostloom Leggings
			i(18690),	-- Wraithplate Leggings
		}),
		n(11622, {	-- Rattlegore
			i(13873, {	-- Viewing Room Key
				description = "You must use this item on the door prior to Vectus and Marduk.",
			}),
			i(18782),	-- Top Half of Advanced Armorsmithing: Volume II
			i(14531),	-- Frightskull Shaft
			i(14528),	-- Rattlecage Buckler
			i(14539),	-- Bone Ring Helm
			i(18686),	-- Bone Golem Shoulders
			i(14538),	-- Deadwalker Mantle
			i(14537),	-- Corpselight Greaves
			i(16711),	-- Shadowcraft Boots
		}),
		n(14516, {	-- Death Knight Darkreaver
			cost = { { "i", 18746, 1 } },	-- Divination Scryer
			groups = {
				i(18749),	-- Charger's Lost Soul
				i(18880),	-- Darkreaver's Head
				i(18759),	-- Malicious Axe
				i(18761),	-- Oblivion's Touch
				i(18758),	-- Specter's Blade
				i(18760),	-- Necromantic Band
			},
		}),
		n(10433, {	-- Marduk Blackpool
			i(14576),	-- Ebon Hilt of Marduk
			i(18692),	-- Death Knight Sabatons
		}),
		n(10432, {	-- Vectus
			i(18691),	-- Dark Advisor's Pendant
			i(14577),	-- Skullsmoke Pants
		}),
		n(10508, {	-- Ras Frostwhisper
			i(13626, {	-- Human Head of Ras Frostwhisper
				description = "Use the Keepsake on him before he dies to turn him back into a human.",
				cost = { { "i", 13752, 1 } },	-- Soulbound Keepsake
			}),
			i(13521),	-- Recipe: Flask of Supreme Power (RECIPE!)
			i(14487),	-- Bonechill Hammer
			i(13952),	-- Iceblade Hacker
			i(18696),	-- Intricately Runed Shield
			i(18695),	-- Spellbound Tome
			i(16689),	-- Magister's Mantle
			i(13314),	-- Alanna's Embrace
			i(14503),	-- Death's Clutch
			i(14525),	-- Boneclenched Gauntlets
			i(18693),	-- Shivery Handwraps
			i(14340),	-- Freezing Lich Robes
			i(14502),	-- Frostbite Girdle
			i(14522),	-- Maelstrom Leggings
			i(18694),	-- Shadowy Mail Greaves
		}),
		n(16118, {	-- Kormok
			description = "This boss can be summoned in Ras Frostwhisper's room using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.\nSummon Location: Ras Frostwhisper's room.",
			provider = { "i", 22057 },	-- Brazier of Invocation
			cost = { { "i", 22052, 1 } },	-- Brazier of Beckoning [Kormok]
			groups = {
				i(22332),	-- Blade of Necromancy
				i(22333),	-- Hammer of Divine Might
				i(22303),	-- Ironweave Pants
				i(22326),	-- Amalgam's Band
				i(22331),	-- Band of the Steadfast Hero
			},
		}),
		n(COMMON_BOSS_DROPS, {
			description = "The following items can drop from any of the mini-bosses in the crypt before fighting Darkmaster Gandling. The bosses other than Lady Illucia Barov have an item or two exclusive to their own drop tables.",
			crs = {
				10505,	-- Instructor Malicia
				11261,	-- Doctor Theolen Krastinov <The Butcher>
				10901,	-- Lorekeeper Polkelt
				10502,	-- Lady Illucia Barov
				10504,	-- Lord Alexi Barov
				10507,	-- The Ravenian
			},
			groups = {
				i(18680),	-- Ancient Bone Bow
				i(18683),	-- Hammer of the Vesper
				i(14611),	-- Bloodmail Hauberk
				i(14615),	-- Bloodmail Gauntlets
				i(14614),	-- Bloodmail Belt
				i(14612),	-- Bloodmail Legguards
				i(14616),	-- Bloodmail Boots
				i(18681),	-- Burial Shawl
				i(14637),	-- Cadaverous Armor
				i(14640),	-- Cadaverous Gloves
				i(14636),	-- Cadaverous Belt
				i(14638),	-- Cadaverous Leggings
				i(14641),	-- Cadaverous Walkers
				i(14624),	-- Deathbone Chestplate
				i(14622),	-- Deathbone Gauntlets
				i(14620),	-- Deathbone Girdle
				i(14623),	-- Deathbone Legguards
				i(14621),	-- Deathbone Sabatons
				i(18684),	-- Dimly Opalescent Ring
				i(18682),	-- Ghoul Skin Leggings
				i(14633),	-- Necropile Mantle
				i(14626),	-- Necropile Robe
				i(14629),	-- Necropile Cuffs
				i(14632),	-- Necropile Leggings
				i(14631),	-- Necropile Boots
				i(23201),	-- Libram of Divinity
				i(23200),	-- Totem of Sustaining
			},
		}),
		n(10505, {	-- Instructor Malicia
			i(16710),	-- Shadowcraft Bracers
		}),
		n(11261, {	-- Doctor Theolen Krastinov <The Butcher>
			i(13523),	-- Blood of Innocents
			i(16684),	-- Magister's Gloves
			i(14617),	-- Sawbones Shirt
		}),
		n(10901, {	-- Lorekeeper Polkelt
			i(16705),	-- Dreadmist Wraps
		}),
		n(10507, {	-- The Ravenian
			i(16716),	-- Wildheart Belt
		}),
		n(10504, {	-- Lord Alexei Barov
			i(16722),	-- Lightforge Bracers
		}),
		n(1853, {	-- Darkmaster Gandling
			description = "You must fully clear out the six rooms around Headmaster's Study before this boss will spawn on the bottom floor. It is recommended that you clear the top floor last so that you have an opportunity to properly position your group.",
			groups = {
				i(14514),	-- Pattern: Robe of the Void (RECIPE!)
				i(13501),	-- Recipe: Major Mana Potion (RECIPE!)
				i(13937),	-- Headmaster's Charge
				i(13938),	-- Bonecreeper Stylus
				i(13953),	-- Silent Fang
				i(13964),	-- Witchblade
				i(16677),	-- Beaststalker's Cap
				i(16667),	-- Coif of Elements
				i(16693),	-- Devout Crown
				i(16698),	-- Dreadmist Mask
				i(16731),	-- Helm of Valor
				i(16727),	-- Lightforge Helm
				i(16686),	-- Magister's Crown
				i(16707),	-- Shadowcraft Cap
				i(16720),	-- Wildheart Cowl
				i(13944),	-- Tombstone Breastplate
				i(13951),	-- Vigorsteel Vambraces
				i(13950),	-- Detention Strap
				i(13398),	-- Boots of the Shrieker
				i(22433),	-- Don Mauricio's Band of Domination
				i(19276),	-- Ace of Portals
			},
		}),
	},
});