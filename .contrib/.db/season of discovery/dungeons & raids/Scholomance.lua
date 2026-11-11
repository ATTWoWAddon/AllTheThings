-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local SCHOLOMANCE_GROUPS = {};
local KORMOK_LEGACY_DESCRIPTION = "This boss can be summoned in Ras Frostwhisper's room using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.\nSummon Location: Ras Frostwhisper's room.";
local ignoreTimeline = function(item)	-- Items applied with this were never actually removed.
	item.timeline = IGNORED_VALUE;
	return item;
end

local SCHOLOMANCE_LEGACY_DATA = {
	n(QUESTS, {
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(PHASE_FOUR, q(8259, {	-- A More Fitting Reward (Post 1.7, Phase 4)
				sourceQuest = 7668,	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
				altQuests = { 8258 },	-- The Darkreaver Menace (New)
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, ORGRIMMAR },
				timeline = { ADDED_1_7_0 },
				classes = { SHAMAN },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					i(20134),	-- Skyfury Helm
				},
			})),
			q(7666,	{ -- Again Into the Great Ossuary [A]
				qg = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				sourceQuest = 7647,	-- Judgment and Redemption
				coords = {
					{ 37.6, 32.6, STORMWIND_CITY },
				},
				classes = { PALADIN },
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = 60,
				groups = {
					i(18746),	-- Divination Scryer
				},
			}),
			q(7669, {	-- Again Into the Great Ossuary [H]
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				sourceQuest = 8258,	-- The Darkreaver Menace
				coord = { 38.7, 35.9, ORGRIMMAR },
				classes = { SHAMAN },
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 60,
				groups = {
					i(18746),	-- Divination Scryer
				},
			}),
			{	-- Araj's Scarab
				allianceQuestData = q(5803, {	-- Araj's Scarab [A]
					sourceQuest = 5801,	-- Fire Plume Forged [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.7, 83.8, WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5804, {	-- Araj's Scarab [H]
					sourceQuest = 5802,	-- Fire Plume Forged [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, TIRISFAL_GLADES },
					maps = { WESTERN_PLAGUELANDS },
				}),
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Araj's Scarab
						providers = {
							{ "i",  14610 },	-- Araj's Scarab
							{ "o", 177241 },	-- Araj's Phylactery
						},
						coord = { 45.6, 69.2, WESTERN_PLAGUELANDS },
						cr = 1852,	-- Araj the Summoner
					}),
				},
			},
			{	-- Barov Family Fortune
				allianceQuestData = q(5343, {	-- Barov Family Fortune [A]
					qg = 11023,	-- Weldon Barov <House of Barov>
					coord = { 43.5, 83.7, WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5341, {	-- Barov Family Fortune [H]
					qg = 11022,	-- Alexi Barov <House of Barov>
					coord = { 83.06, 71.6, TIRISFAL_GLADES },
					maps = { WESTERN_PLAGUELANDS },
				}),
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 The Deed to Brill
						providers = {
							{ "i",  13471 },	-- The Deed to Brill
							{ "o", 176484 },	-- The Deed to Brill
						},
						description = "Can be found along the wall in Ras Frostwhisper's room.",
					}),
					objective(2, {	-- 0/1 The Deed to Caer Darrow
						providers = {
							{ "i",  13448 },	-- The Deed to Caer Darrow
							{ "o", 176485 },	-- The Deed to Caer Darrow
						},
						description = "Can be found right next to Alexi Barov.",
					}),
					objective(3, {	-- 0/1 The Deed to Southshore
						providers = {
							{ "i",  13450 },	-- The Deed to Southshore
							{ "o", 176486 },	-- The Deed to Southshore
						},
						description = "Can be found in the very back of the first room hidden behind some bookshelves.",
					}),
					objective(4, {	-- 0/1 The Deed to Tarren Mill
						providers = {
							{ "i",  13451 },	-- The Deed to Tarren Mill
							{ "o", 176487 },	-- The Deed to Tarren Mill
						},
						description = "Can be found on the table in the back corner just before you enter the dragon whelpling room or travel downstairs to fight Jandice Barov.",
					}),
				},
			},
			q(5531, {	-- Betina Bigglezink
				sourceQuest = 5522,	-- Leonid Barthalomew
				qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				coord = { 81.73, 57.83, EASTERN_PLAGUELANDS },
				lvl = 57,
				qi = 13761,	-- Frozen Eggs (QI!)
			}),
			q(4771, {	-- Dawn's Gambit
				description = "After completing this quest, you can return to Betina to have her give you another Gambit.",
				sourceQuest = 5531,	-- Betina Bigglezink
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.5, 59.7, EASTERN_PLAGUELANDS },
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
				coord = { 70.2, 73.7, WESTERN_PLAGUELANDS },
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
				coord = { 51.5, 28.8, TANARIS },
				maps = { UNGORO_CRATER },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Unfinished Skeleton Key
						provider = { "i", 14645 },	-- Unfinished Skeleton Key
						coord = { 49.6, 47.6, UNGORO_CRATER },
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
				repeatable = true,
				lvl = 55,
			}),
			q(5384, {	-- Kirtonos the Herald
				qg = 11216,	-- Eva Sarkhoff
				sourceQuest = 5515,	-- Krastinov's Bag of Horrors
				coord = { 70.2, 73.7, WESTERN_PLAGUELANDS },
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
				coord = { 70.2, 73.7, WESTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Krastinov's Bag of Horrors
						provider = { "i", 13725 },	-- Krastinov's Bag of Horrors
					}),
				},
			}),
			q(7647, {	-- Judgment and Redemption
				qg = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				qi = 18804,	-- Lord Grayson's Satchel
				sourceQuest = 7646,	-- The Divination Scryer
				coords = {
					{ 37.6, 32.6, STORMWIND_CITY },
				},
				classes = { PALADIN },
				races = ALLIANCE_ONLY,
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
						classes = { PALADIN },
						races = ALLIANCE_ONLY,
						lvl = 60,
					}),
				},
			}),
			q(5522, {	-- Leonid Barthalomew
				sourceQuest = 4735,	-- Egg Collection
				qg = 10267,	-- Tinkee Steamboil
				qi = 13761,	-- Frozen Eggs
				coord = { 65.2, 23.8, BURNING_STEPPES },
				lvl = 57,
			}),
			q(7667, {	-- Material Assistance
				qg = 13417,	-- Sagorne Creststrider
				coord = { 39.2, 48.4, ORGRIMMAR },
				timeline = { ADDED_1_4_0 },
				cost = {
					{ "i", 12800, 1 },	-- Azerothian Diamond
					{ "i", 18335, 1 },	-- Pristine Black Diamond
				},
				classes = { SHAMAN },
				races = HORDE_ONLY,
				lvl = 58,
			}),
			q(5463, {	-- Menethil's Gift (1/2)
				description = "Take the Keepsake to the symbol on the floor in Baron Rivendare's room in Stratholme.",
				sourceQuest = 5462,	-- The Dying, Ras Frostwhisper
				qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				qi = 13585,	-- Keepsake of Remembrance
				coord = { 81.7, 57.8, EASTERN_PLAGUELANDS },
				maps = { STRATHOLME },
				lvl = 57,
			}),
			q(5464, {	-- Menethil's Gift (2/2)
				sourceQuest = 5463,	-- Menethil's Gift (1/2)
				providers = {
					{ "o", 176631 },	-- Menethil's Gift
					{ "i", 13624 },	-- Soulbound Keepsake
				},
				maps = { STRATHOLME },
				lvl = 57,
			}),
			{	-- Mold Rhymes With...
				allianceQuestData = q(5538, {	-- Mold Rhymes With... [A]
					sourceQuest = 5537,	-- Skeletal Fragments [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.66, 83.77, WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5514, {	-- Mold Rhymes With... [H]
					sourceQuest = 964,	-- Skeletal Fragments [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, TIRISFAL_GLADES },
					maps = { WESTERN_PLAGUELANDS },
				}),
				cost = {
					{ "i", 14628, 1 },	-- Imbued Skeletal Fragments
					{ "g", 150000 },	-- 15g
				},
				lvl = 55,
			},
			q(5529, {	-- Plagued Hatchlings
				qg = 11035,	-- Betina Bigglezink <The Argent Dawn>
				coord = { 81.47, 59.66, EASTERN_PLAGUELANDS },
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
				coord = { 42.7, 84.0, WESTERN_PLAGUELANDS },
				races = ALLIANCE_ONLY,
				lvl = 55,
			}),
			q(838, {	-- Scholomance [Horde]
				sourceQuest = 5098,	-- All Along the Watchtowers [Horde]
				qg = 10837,	-- High Executor Derrington
				coord = { 83.1, 68.9, TIRISFAL_GLADES },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			{	-- Skeletal Fragments
				allianceQuestData = q(5537, {	-- Skeletal Fragments [A]
					sourceQuest = 5533,	-- Scholomance [Alliance]
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.66, 83.77, WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(964, {	-- Skeletal Fragments [H]
					sourceQuest = 838,	-- Scholomance [Horde]
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.3, 69.2, TIRISFAL_GLADES },
					maps = { WESTERN_PLAGUELANDS },
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
				qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
				qi = 13624,	-- Soulbound Keepsake
				coord = { 81.7, 57.8, EASTERN_PLAGUELANDS },
				lvl = 57,
			}),
			q(7668, {	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
				sourceQuest = 7667,	-- Material Assistance
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, ORGRIMMAR },
				timeline = { REMOVED_1_7_0 },
				classes = { SHAMAN },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Darkreaver's Head
						provider = { "i", 18880 },	-- Darkreaver's Head
						cr = 14516,	-- Death Knight Darkreaver
					}),
					i(18807),	-- Helm of Latent Power
				},
			}),
			applyclassicphase(PHASE_FOUR, q(8258, {	-- The Darkreaver Menace (Post 1.7, Phase 4)
				sourceQuest = 7667,	-- Material Assistance
				altQuests = {
					7668,	-- The Darkreaver Menace (Original)
				},
				qg = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				coord = { 38.7, 35.9, ORGRIMMAR },
				timeline = { ADDED_1_7_0 },
				classes = { SHAMAN },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Darkreaver's Head
						provider = { "i", 18880 },	-- Darkreaver's Head
						cr = 14516,	-- Death Knight Darkreaver
					}),
					i(20134),	-- Skyfury Helm
				},
			})),
			q(5462, {	-- The Dying, Ras Frostwhisper
				sourceQuest = 5461,	-- The Human, Ras Frostwhisper
				providers = {
					{ "n", 11286 },	-- Magistrate Marduke
					{ "i", 13544 },	-- Spectral Essence
					{ "i", 13585 },	-- Keepsake of Remembrance
				},
				coord = { 70.6, 74.1, WESTERN_PLAGUELANDS },
				lvl = 57,
			}),
			q(5461, {	-- The Human, Ras Frostwhisper
				sourceQuest = 5384,	-- Kirtonos the Herald
				qg = 11286,	-- Magistrate Marduke
				qi = 13544,	-- Spectral Essence
				coord = { 70.6, 74.1, WESTERN_PLAGUELANDS },
				maps = { ARATHI_HIGHLANDS },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Keepsake of Remembrance
						providers = {
							{ "i",  13585 },	-- Keepsake of Remembrance
							{ "o", 176630 },	-- Keepsake of Remembrance
						},
						coord = { 17.9, 69.4, ARATHI_HIGHLANDS },
					}),
				},
			}),
			{	-- The Key to Scholomance
				allianceQuestData = q(5505, {	-- The Key to Scholomance [A]
					sourceQuest = 5803,	-- Araj's Scarab
					qg = 11056,	-- Alchemist Arbington
					coord = { 42.6, 83.8, WESTERN_PLAGUELANDS },
				}),
				hordeQuestData = q(5511, {	-- The Key to Scholomance [H]
					sourceQuest = 5804,	-- Araj's Scarab
					qg = 11057,	-- Apothecary Dithers
					coord = { 83.2, 69.2, TIRISFAL_GLADES },
					maps = { WESTERN_PLAGUELANDS },
				}),
				lvl = 55,
				groups = {
					i(13704),	-- Skeleton Key
				},
			},
			q(5344, {	-- The Last Barov [Alliance]
				sourceQuest = 5343,	-- Barov Family Fortune [Alliance]
				qg = 11023,	-- Weldon Barov <House of Barov>
				coord = { 43.5, 83.7, WESTERN_PLAGUELANDS },
				maps = { TIRISFAL_GLADES },
				races = ALLIANCE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Head of Alexi Barov
						provider = { "i", 13470 },	-- Head of Alexi Barov
						coord = { 83.0, 71.6, TIRISFAL_GLADES },
						cr = 11022,	-- Alexi Barov <House of Barov>
					}),
					i(14023),	-- Barov Peasant Caller
				},
			}),
			q(5342, {	-- The Last Barov [Horde]
				sourceQuest = 5341,	-- Barov Family Fortune [Horde]
				qg = 11022,	-- Alexi Barov <House of Barov>
				coord = { 83.06, 71.6, TIRISFAL_GLADES },
				maps = { WESTERN_PLAGUELANDS },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Head of Weldon Barov
						provider = { "i", 13469 },	-- Head of Weldon Barov
						coord = { 43.4, 83.6, WESTERN_PLAGUELANDS },
						cr = 11023,	-- Weldon Barov <House of Barov>
					}),
					i(14022),	-- Barov Peasant Caller
				},
			}),
			q(5466, {	-- The Lich, Ras Frostwhisper
				sourceQuest = 5465,	-- Soulbound Keepsake
				qg = 11286,	-- Magistrate Marduke
				qi = 13544,	-- Spectral Essence
				coord = { 70.6, 74.1, WESTERN_PLAGUELANDS },
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
		},
	}),
	n(TREASURES, {
		timeline = { ADDED_1_3_0 },
		groups = {
			i(12736, {	-- Frostwhisper's Embalming Fluid
				description = "Can be found inside the chemistry lab in Scholomance, in Ras Frostwhisper's room.",
				provider = { "o", 175965 },	-- Frostwhisper's Embalming Fluid
				timeline = { ADDED_1_11_1 }	-- Maybe added with Scholo in 10.1.7, but its an useless item anyway.
			}),
		},
	}),
	n(ZONE_DROPS, {
		timeline = { ADDED_1_3_0 },
		groups = {
			i(20520),	-- Dark Rune
			i(16255, {	-- Formula: Enchant 2H Weapon - Major Spirit / CLASSIC: Formula: Enchant 2H Weapon - Major Versatility (RECIPE!)
				cr = 10469,	-- Scholomance Adept
			}),
			i(16254, {	-- Formula: Enchant Weapon - Lifestealing (RECIPE!)
				cr = 10499,	-- Spectral Researcher
			}),
			i(15776, {	-- Pattern: Runic Leather Armor (RECIPE!)
				timeline = { ADDED_1_11_1 },
				cr = 11582,	-- Scholomance Dark Summoner
			}),
			i(15773, {	-- Pattern: Wicked Leather Armor (RECIPE!)
				timeline = { ADDED_1_11_1 },
				cr = 10499,	-- Spectral Researcher
			}),
			applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
			i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				timeline = { ADDED_1_11_1 },
			}),
			i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				timeline = { ADDED_1_11_1 },
			}),
			i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
				description = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				timeline = { ADDED_1_11_1 },
			}),
			i(13920, {	-- Healthy Dragon Scale
				description = "This item can only drop from the Hatchlings after you have completed the Plagued Hatchlings quest.",
				cr = 10678,	-- Plagued Hatchling
			}),
			i(12753, {	-- Skin of Shadow
				timeline = { ADDED_1_11_1 },
			}),
			ignoreTimeline(i(18702)),	-- Belt of the Ordained
			applyclassicphase(SOD_PHASE_FOUR, i(226751, {	-- Bindings of Elements
				timeline = { ADDED_1_15_3 },
				cr = 10478,	-- Splintered Skeleton
			})),
			i(16671, {	-- Bindings of Elements
				timeline = { REMOVED_1_15_3 },
				cr = 10478,	-- Splintered Skeleton
			}),
			ignoreTimeline(i(14536)),	-- Bonebrace Hauberk
			applyclassicphase(SOD_PHASE_FOUR, i(228703, {	-- Coldstone Slippers
				description = "None of these have been found on WoWHead or the AH. @Crieve if you get one to drop!",
				timeline = { CREATED_1_15_3 },
			})),
			ignoreTimeline(i(18697, {	-- Coldstone Slippers
				-- CRIEVE NOTE: There is a reitemized version, but it doesn't seem to exist yet.
				-- timeline = { REMOVED_1_15_3 },
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226761, {	-- Dreadmist Belt
				timeline = { ADDED_1_15_3 },
				cr = 10477,	-- Scholomance Necromancer
			})),
			i(16702, {	-- Dreadmist Belt
				timeline = { REMOVED_1_15_3 },
				cr = 10477,	-- Scholomance Necromancer
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226758, {	-- Dreadmist Wraps
				timeline = { ADDED_1_15_3 },
				cr = 10477,	-- Scholomance Necromancer
			})),
			i(16705, {	-- Dreadmist Wraps
				timeline = { REMOVED_1_15_3 },
				cr = 10477,	-- Scholomance Necromancer
			}),
			ignoreTimeline(i(18699)),	-- Icy Tomb Spaulders
			ignoreTimeline(i(18701)),	-- Innervating Band
			applyclassicphase(SOD_PHASE_FOUR, i(226739, {	-- Lightforge Bracers
				timeline = { ADDED_1_15_3 },
				crs = {
					10487,	-- Risen Protector
					10486,	-- Risen Warrior
				},
			})),
			i(16722, {	-- Lightforge Bracers
				timeline = { REMOVED_1_15_3 },
				crs = {
					10487,	-- Risen Protector
					10486,	-- Risen Warrior
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226724, {	-- Magister's Belt
				timeline = { ADDED_1_15_3 },
				cr = 10469,	-- Scholomance Adept
			})),
			i(16685, {	-- Magister's Belt
				timeline = { REMOVED_1_15_3 },
				cr = 10469,	-- Scholomance Adept
			}),
			i(16684, {	-- Magister's Gloves
				timeline = { REMOVED_1_15_3 },
				cr = 10469,	-- Scholomance Adept
			}),
			ignoreTimeline(i(18700)),	-- Malefic Bracers
			applyclassicphase(SOD_PHASE_FOUR, i(226704, {	-- Shadowcraft Bracers
				timeline = { ADDED_1_15_3 },
				crs = {
					11284,	-- Dark Shade
					10472,	-- Scholomance Occultist
					10488,	-- Risen Construct
				},
			})),
			i(16710, {	-- Shadowcraft Bracers
				timeline = { REMOVED_1_15_3 },
				crs = {
					11284,	-- Dark Shade
					10472,	-- Scholomance Occultist
					10488,	-- Risen Construct
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228704, {	-- Tattered Leather Hood
				description = "None of these have been found on WoWHead or the AH. @Crieve if you get one to drop!",
				timeline = { CREATED_1_15_3 },
			})),
			ignoreTimeline(i(18698, {	-- Tattered Leather Hood
				-- CRIEVE NOTE: There is a reitemized version, but it doesn't seem to exist yet.
				-- timeline = { REMOVED_1_15_3 },
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226712, {	-- Wildheart Belt
				timeline = { ADDED_1_15_3 },
				crs = {
					11257,	-- Scholomance Handler
					10500,	-- Spectral Teacher
					10499,	-- Spectral Researcher
				},
			})),
			i(16716, {	-- Wildheart Belt
				timeline = { REMOVED_1_15_3 },
				crs = {
					11257,	-- Scholomance Handler
					10500,	-- Spectral Teacher
					10499,	-- Spectral Researcher
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226714, {	-- Wildheart Bracers
				timeline = { ADDED_1_15_3 },
				cr = 10495,	-- Diseased Ghoul
			})),
			i(16714, {	-- Wildheart Bracers
				timeline = { REMOVED_1_15_3 },
				cr = 10495,	-- Diseased Ghoul
			}),
		},
	}),
	n(14861, {	-- Blood Steward of Kirtonos
		timeline = { ADDED_1_3_0 },
		groups = {
			i(13523),	-- Blood of Innocents
		},
	}),
	n(10506, {	-- Kirtonos the Herald
		providers = {
			{ "o", 175564 },	-- Brazier of the Herald
			{ "i",  13523 },	-- Blood of Innocents
		},
		description = "Can only be summoned if someone in your group has the Blood of Innocents.",
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(228015, {	-- Frightalon
				timeline = { ADDED_1_15_3 },
			})),
			i(14024, {	-- Frightalon
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228029, {	-- Gravestone War Axe
				timeline = { ADDED_1_15_3 },
			})),
			i(13983, {	-- Gravestone War Axe
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228019, {	-- Heart of the Fiend
				timeline = { ADDED_1_15_3 },
			})),
			i(13960, {	-- Heart of the Fiend
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228001, {	-- Stoneform Shoulders
				timeline = { ADDED_1_15_3 },
			})),
			i(13955, {	-- Stoneform Shoulders
				timeline = { REMOVED_1_15_3 },
			}),
			i(13969),	-- Loomguard Armbraces
			applyclassicphase(SOD_PHASE_FOUR, i(228007, {	-- Gargoyle Slashers
				timeline = { ADDED_1_15_3 },
			})),
			i(13957, {	-- Gargoyle Slashers
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228005, {	-- Clutch of Andros
				timeline = { ADDED_1_15_3 },
			})),
			i(13956, {	-- Clutch of Andros
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226764, {	-- Boots of Valor
				timeline = { ADDED_1_15_3 },
			})),
			i(16734, {	-- Boots of Valor
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228004, {	-- Windreaver Greaves
				timeline = { ADDED_1_15_3 },
			})),
			i(13967, {	-- Windreaver Greaves
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(10503, {	-- Jandice Barov
		timeline = { ADDED_1_3_0 },
		groups = {
			i(13523),	-- Blood of Innocents
			i(13725),	-- Krastinov's Bag of Horrors
			o(180794, {	-- Journal of Jandice Barov
				description = "Jandice Barov drops this item when killed, which teaches Felcloth Bag. You must be a tailor of skill 285 or higher to learn this recipe.",
				groups = {
					r(26086, {	-- Felcloth Bag
						requireSkill = TAILORING,
					}),
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(227997, {	-- Barovian Family Sword
				timeline = { ADDED_1_15_3 },
			})),
			i(14541, {	-- Barovian Family Sword
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(PHASE_FIVE, i(22394)),	-- Staff of Metanoia
			i(18689),	-- Phantasmal Cloak
			applyclassicphase(SOD_PHASE_FOUR, i(226756, {	-- Dreadmist Mantle
				timeline = { ADDED_1_15_3 },
			})),
			i(16701, {	-- Dreadmist Mantle
				timeline = { REMOVED_1_15_3 },
			}),
			i(14548),	-- Royal Cap Spaulders
			applyclassicphase(SOD_PHASE_FOUR, i(228031, {	-- Darkshade Gloves
				timeline = { ADDED_1_15_3 },
			})),
			i(14543, {	-- Darkshade Gloves
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228040, {	-- Ghostloom Leggings
				timeline = { ADDED_1_15_3 },
			})),
			i(14545, {	-- Ghostloom Leggings
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228041, {	-- Wraithplate Leggings
				timeline = { ADDED_1_15_3 },
			})),
			i(18690, {	-- Wraithplate Leggings
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(11622, {	-- Rattlegore
		timeline = { ADDED_1_3_0 },
		groups = {
			i(13873, {	-- Viewing Room Key
				description = "You must use this item on the door prior to Vectus and Marduk.",
				timeline = { ADDED_1_11_1 },
			}),
			i(18782, {	-- Top Half of Advanced Armorsmithing: Volume II
				timeline = { ADDED_1_11_1 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(227994, {	-- Frightskull Shaft
				timeline = { ADDED_1_15_3 },
			})),
			i(14531, {	-- Frightskull Shaft
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228037, {	-- Rattlecage Buckler
				timeline = { ADDED_1_15_3 },
			})),
			i(14528, {	-- Rattlecage Buckler
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228032, {	-- Bone Ring Helm
				timeline = { ADDED_1_15_3 },
			})),
			i(14539, {	-- Bone Ring Helm
				timeline = { REMOVED_1_15_3 },
			}),
			i(18686),	-- Bone Golem Shoulders
			i(14538),	-- Deadwalker Mantle
			i(14537),	-- Corpselight Greaves
			applyclassicphase(SOD_PHASE_FOUR, i(226703, {	-- Shadowcraft Boots
				timeline = { ADDED_1_15_3 },
			})),
			i(16711, {	-- Shadowcraft Boots
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	-- The Re-release of scholomance should allow the summon of this boss once again, however the item required to summon him is one time.
	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you can't.	-- Gold 02/08/2023 (EU)
	n(14516, {	-- Death Knight Darkreaver
		cost = { { "i", 18746, 1 } },	-- Divination Scryer
		groups = {
			i(18749),	-- Charger's Lost Soul
			i(18880),	-- Darkreaver's Head
			applyclassicphase(SOD_PHASE_FOUR, i(228030, {	-- Malicious Axe
				description = "There are no recorded drops for this version, if you get it to drop, @Crieve on Discord!",
				timeline = { CREATED_1_15_3 },
			})),
			i(18759, {	-- Malicious Axe
				-- CRIEVE NOTE: The reitemized version isn't in the game yet?
				-- timeline = { REMOVED_1_15_3 },
			}),
			i(18761),	-- Oblivion's Touch
			i(18758),	-- Specter's Blade
			applyclassicphase(SOD_PHASE_FOUR, i(228045, {	-- Necromantic Band
				timeline = { ADDED_1_15_3 },
			})),
			i(18760, {	-- Necromantic Band
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(10433, {	-- Marduk Blackpool
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(227993, {	-- Ebon Hilt of Marduk
				description = "There are no recorded drops for this version, if you get it to drop, @Crieve on Discord!",
				timeline = { CREATED_1_15_3 },
			})),
			i(14576, {	-- Ebon Hilt of Marduk
				-- CRIEVE NOTE: The reitemized version isn't in the game.
				-- timeline = { REMOVED_1_15_3 },
			}),
			i(18692),	-- Death Knight Sabatons
		},
	}),
	n(10432, {	-- Vectus
		timeline = { ADDED_1_3_0 },
		groups = {
			i(18691),	-- Dark Advisor's Pendant
			applyclassicphase(SOD_PHASE_FOUR, i(228017, {	-- Skullsmoke Pants
				timeline = { ADDED_1_15_3 },
			})),
			i(14577, {	-- Skullsmoke Pants
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(10508, {	-- Ras Frostwhisper
		timeline = { ADDED_1_3_0 },
		groups = {
			i(13626, {	-- Human Head of Ras Frostwhisper
				description = "Use the Keepsake on him before he dies to turn him back into a human.",
				cost = { { "i", 13752, 1 } },	-- Soulbound Keepsake
			}),
			i(13521),	-- Recipe: Flask of Supreme Power (RECIPE!)
			i(14487),	-- Bonechill Hammer
			applyclassicphase(SOD_PHASE_FOUR, i(228027, {	-- Iceblade Hacker
				timeline = { ADDED_1_15_3 },
			})),
			i(13952, {	-- Iceblade Hacker
				timeline = { REMOVED_1_15_3 },
			}),
			i(18696),	-- Intricately Runed Shield
			applyclassicphase(SOD_PHASE_FOUR, i(228039, {	-- Spellbound Tome
				timeline = { ADDED_1_15_3 },
			})),
			i(18695, {	-- Spellbound Tome
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226726, {	-- Magister's Mantle
				timeline = { ADDED_1_15_3 },
			})),
			i(16689, {	-- Magister's Mantle
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228023, {	-- Alanna's Embrace
				timeline = { ADDED_1_15_3 },
			})),
			i(13314, {	-- Alanna's Embrace
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228036, {	-- Death's Clutch
				timeline = { ADDED_1_15_3 },
			})),
			i(14503, {	-- Death's Clutch
				timeline = { REMOVED_1_15_3 },
			}),
			i(14525),	-- Boneclenched Gauntlets
			applyclassicphase(SOD_PHASE_FOUR, i(228034, {	-- Shivery Handwraps
				timeline = { ADDED_1_15_3 },
			})),
			i(18693, {	-- Shivery Handwraps
				timeline = { REMOVED_1_15_3 },
			}),
			i(14340),	-- Freezing Lich Robes
			i(14502),	-- Frostbite Girdle
			applyclassicphase(SOD_PHASE_FOUR, i(228044, {	-- Maelstrom Leggings
				timeline = { ADDED_1_15_3 },
			})),
			i(14522, {	-- Maelstrom Leggings
				timeline = { REMOVED_1_15_3 },
			}),
			i(18694),	-- Shadowy Mail Greaves
		},
	}),
	applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16118, {	-- Kormok
		description =
			KORMOK_LEGACY_DESCRIPTION,
		cost = {
			{ "i", 22052, 1 },	-- Brazier of Beckoning [Kormok]
		},


		provider = { "i", 22057 },	-- Brazier of Invocation
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(228026, {	-- Blade of Blackwood
				timeline = { ADDED_1_15_3 },
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(228028, {	-- Blade of Necromancy
				timeline = { ADDED_1_15_3 },
			})),
			i(22332, {	-- Blade of Necromancy
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228033, {	-- Hammer of Divine Might
				timeline = { ADDED_1_15_3 },
			})),
			i(22333, {	-- Hammer of Divine Might
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228038, {	-- Ironweave Pants
				timeline = { ADDED_1_15_3 },
			})),
			i(22303, {	-- Ironweave Pants
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228047, {	-- Amalgam's Band
				timeline = { ADDED_1_15_3 },
			})),
			i(22326, {	-- Amalgam's Band
				timeline = { REMOVED_1_15_3 },
			}),
			i(22331),	-- Band of the Steadfast Hero
		},
	})),
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
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(227996, {	-- Ancient Bone Bow
				timeline = { ADDED_1_15_3 },
			})),
			i(18680, {	-- Ancient Bone Bow
				timeline = { REMOVED_1_15_3 },
			}),
			i(18683),	-- Hammer of the Vesper
			applyclassicphase(SOD_PHASE_FOUR, i(228012, {	-- Bloodmail Hauberk
				timeline = { ADDED_1_15_3 },
			})),
			i(14611, {	-- Bloodmail Hauberk
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228020, {	-- Bloodmail Gauntlets
				timeline = { ADDED_1_15_3 },
			})),
			i(14615, {	-- Bloodmail Gauntlets
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228014, {	-- Bloodmail Belt
				timeline = { ADDED_1_15_3 },
			})),
			i(14614, {	-- Bloodmail Belt
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228003, {	-- Bloodmail Legguards
				timeline = { ADDED_1_15_3 },
			})),
			i(14612, {	-- Bloodmail Legguards
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(227998, {	-- Bloodmail Boots
				timeline = { ADDED_1_15_3 },
			})),
			i(14616, {	-- Bloodmail Boots
				timeline = { REMOVED_1_15_3 },
			}),
			i(18681),	-- Burial Shawl
			i(14637),	-- Cadaverous Armor
			i(14640),	-- Cadaverous Gloves
			i(14636),	-- Cadaverous Belt
			i(14638),	-- Cadaverous Leggings
			i(14641),	-- Cadaverous Walkers
			applyclassicphase(SOD_PHASE_FOUR, i(228000, {	-- Deathbone Chestplate
				timeline = { ADDED_1_15_3 },
			})),
			i(14624, {	-- Deathbone Chestplate
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228006, {	-- Deathbone Gauntlets
				timeline = { ADDED_1_15_3 },
			})),
			i(14622, {	-- Deathbone Gauntlets
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228002, {	-- Deathbone Girdle
				timeline = { ADDED_1_15_3 },
			})),
			i(14620, {	-- Deathbone Girdle
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228008, {	-- Deathbone Legguards
				timeline = { ADDED_1_15_3 },
			})),
			i(14623, {	-- Deathbone Legguards
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(227999, {	-- Deathbone Sabatons
				timeline = { ADDED_1_15_3 },
			})),
			i(14621, {	-- Deathbone Sabatons
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228016, {	-- Dimly Opalescent Ring
				timeline = { ADDED_1_15_3 },
			})),
			i(18684, {	-- Dimly Opalescent Ring
				timeline = { REMOVED_1_15_3 },
			}),
			i(18682),	-- Ghoul Skin Leggings
			applyclassicphase(SOD_PHASE_FOUR, i(228010, {	-- Necropile Mantle
				timeline = { ADDED_1_15_3 },
			})),
			i(14633, {	-- Necropile Mantle
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228013, {	-- Necropile Robe
				timeline = { ADDED_1_15_3 },
			})),
			i(14626, {	-- Necropile Robe
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228011, {	-- Necropile Cuffs
				timeline = { ADDED_1_15_3 },
			})),
			i(14629, {	-- Necropile Cuffs
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228018, {	-- Necropile Leggings
				timeline = { ADDED_1_15_3 },
			})),
			i(14632, {	-- Necropile Leggings
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228009, {	-- Necropile Boots
				timeline = { ADDED_1_15_3 },
			})),
			i(14631, {	-- Necropile Boots
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(PHASE_FIVE, i(23201)),	-- Libram of Divinity
			applyclassicphase(PHASE_FIVE, i(23200)),	-- Totem of Sustaining
		},
	}),
	n(10505, {	-- Instructor Malicia
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(226704, {	-- Shadowcraft Bracers
				timeline = { ADDED_1_15_3 },
			})),
			i(16710, {	-- Shadowcraft Bracers
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(11261, {	-- Doctor Theolen Krastinov <The Butcher>
		timeline = { ADDED_1_3_0 },
		groups = {
			i(13523),	-- Blood of Innocents
			applyclassicphase(SOD_PHASE_FOUR, i(226731, {	-- Magister's Gloves
				timeline = { ADDED_1_15_3 },
			})),
			i(16684, {	-- Magister's Gloves
				timeline = { REMOVED_1_15_3 },
			}),
			i(14617),	-- Sawbones Shirt
		},
	}),
	n(10901, {	-- Lorekeeper Polkelt
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(226758, {	-- Dreadmist Wraps
				timeline = { ADDED_1_15_3 },
			})),
			i(16705, {	-- Dreadmist Wraps
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(10507, {	-- The Ravenian
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(226712, {	-- Wildheart Belt
				timeline = { ADDED_1_15_3 },
			})),
			i(16716, {	-- Wildheart Belt
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(10504, {	-- Lord Alexei Barov
		timeline = { ADDED_1_3_0 },
		groups = {
			applyclassicphase(SOD_PHASE_FOUR, i(226739, {	-- Lightforge Bracers
				timeline = { ADDED_1_15_3 },
			})),
			i(16722, {	-- Lightforge Bracers
				timeline = { REMOVED_1_15_3 },
			}),
		},
	}),
	n(1853, {	-- Darkmaster Gandling
		description = "You must fully clear out the six rooms around Headmaster's Study before this boss will spawn on the bottom floor. It is recommended that you clear the top floor last so that you have an opportunity to properly position your group.",
		timeline = { ADDED_1_3_0 },
		groups = {
			i(14514),	-- Pattern: Robe of the Void (RECIPE!)
			i(13501),	-- Recipe: Major Mana Potion (RECIPE!)
			applyclassicphase(SOD_PHASE_FOUR, i(228022, {	-- Headmaster's Charge
				timeline = { ADDED_1_15_3 },
			})),
			i(13937, {	-- Headmaster's Charge
				timeline = { REMOVED_1_15_3 },
			}),
			i(13938),	-- Bonecreeper Stylus
			applyclassicphase(SOD_PHASE_FOUR, i(228024, {	-- Silent Fang
				timeline = { ADDED_1_15_3 },
			})),
			i(13953, {	-- Silent Fang
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228021, {	-- Witchblade
				timeline = { ADDED_1_15_3 },
			})),
			i(13964, {	-- Witchblade
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226720, {	-- Beaststalker's Cap
				timeline = { ADDED_1_15_3 },
			})),
			i(16677, {	-- Beaststalker's Cap
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226755, {	-- Coif of Elements
				timeline = { ADDED_1_15_3 },
			})),
			i(16667, {	-- Coif of Elements
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226746, {	-- Devout Crown
				timeline = { ADDED_1_15_3 },
			})),
			i(16693, {	-- Devout Crown
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226762, {	-- Dreadmist Mask
				timeline = { ADDED_1_15_3 },
			})),
			i(16698, {	-- Dreadmist Mask
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226769, {	-- Helm of Valor
				timeline = { ADDED_1_15_3 },
			})),
			i(16731, {	-- Helm of Valor
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226733, {	-- Lightforge Helm
				timeline = { ADDED_1_15_3 },
			})),
			i(16727, {	-- Lightforge Helm
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226728, {	-- Magister's Crown
				timeline = { ADDED_1_15_3 },
			})),
			i(16686, {	-- Magister's Crown
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226707, {	-- Shadowcraft Cap
				timeline = { ADDED_1_15_3 },
			})),
			i(16707, {	-- Shadowcraft Cap
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226708, {	-- Wildheart Cowl
				timeline = { ADDED_1_15_3 },
			})),
			i(16720, {	-- Wildheart Cowl
				timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228025, {	-- Tombstone Breastplate
				timeline = { ADDED_1_15_3 },
			})),
			i(13944, {	-- Tombstone Breastplate
				timeline = { REMOVED_1_15_3 },
			}),
			i(13951),	-- Vigorsteel Vambraces
			applyclassicphase(SOD_PHASE_FOUR, i(228042, {	-- Detention Strap
				timeline = { ADDED_1_15_3 },
			})),
			i(13950, {	-- Detention Strap [CRIEVE NOTE: This item seems to have disappeared with TBC Classic.]
				description = "This item seems to have disappeared in Classic. If you get this item in any game flavor, please screenshot this and send it directly to @Crieve on Discord!",
				timeline = { REMOVED_1_15_3 },
			}),
			--[[
			applyclassicphase(SOD_PHASE_FOUR, i(228043, {	-- Boots of the Shrieker
				description = "None of these have been found on WoWHead. @Crieve if you get one to drop!",
				timeline = { CREATED_1_15_3 },
			})),
			]]--
			i(13398, {	-- Boots of the Shrieker
				-- CRIEVE NOTE: This item is likely still in the game, the reitemized version doesn't appear to be yet.
				-- timeline = { REMOVED_1_15_3 },
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(228046, {	-- Don Mauricio's Band of Domination
				timeline = { ADDED_1_15_3 },
			})),
			applyclassicphase(PHASE_FIVE, i(22433, {	-- Don Mauricio's Band of Domination
				timeline = { REMOVED_1_15_3 },
			})),
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19276)),	-- Ace of Portals
		},
	}),
	-- n(14695),	-- Lord Blackwood
	-- Listed under Worldevent>Scourge>
};

-- Before MOP there was only one difficulty for Scholomance. Merge all the legacy data into the groups directly.
for i,o in ipairs(SCHOLOMANCE_LEGACY_DATA) do
	table.insert(SCHOLOMANCE_GROUPS, o);
end


instanceroot(246, {	-- Scholomance
	lore = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster.",
	zoneTextAreaID = 2057,	-- TODO: Determine what expansion this gets its own (correct) mapID.
	sourceQuests = {
		5505,	-- The Key to Scholomance [Alliance]
		5511,	-- The Key to Scholomance [Horde]
	},
	cost = { { "i", 13704, 1 } },	-- Skeleton Key
	mapID = SCHOLOMANCE,
	coord = { 69.07, 72.96, WESTERN_PLAGUELANDS },
	maps = {
		306, 307, 308, 309,
	},
	lvl = 55,
	groups = SCHOLOMANCE_GROUPS,
});

