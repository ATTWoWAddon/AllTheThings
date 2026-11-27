-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local DRAKE = 538;
local SKARLOC = 539;
local EPOCH_HUNTER = 540;

------ EncounterToCRS ------
local EncounterToCRS = {
	[DRAKE] = { 17848 },	-- Lieutenant Drake
	[SKARLOC] = { 17862 },	-- Captain Skarloc
	[EPOCH_HUNTER] = { 18096 },	-- Epoch Hunter
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

local THOMAS_YANCE_GROUPS = {
	i(25725),	-- Pattern: Riding Crop (RECIPE!)
	i(23321),	-- Recruit's Robe
};

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(251, {	-- Old Hillsbrad Foothills
		lore = "Old Hillsbrad Foothills is one of the timeways accessible in the Caverns of Time. The setting is seven years before WoW's present, to when the future Warchief Thrall was a slave of Aedelas Blackmoore, master of Durnholde Keep. The questing involves helping Thrall escape. The instance area in question spans from Southshore (where familiar personalities of WoW present can be found) to Tarren Mill.",
		description = "This is an event-triggered dungeon with the following steps:\n\n1. Talk to Erozion at the beginning of the dungeon to obtain a Pack of Incendiary Bombs.\n\n2. Traverse to the internment camps in Durnholde Keep and interact with a barrel in each building to start a fire and summon the first boss Lieutenant Drake.\n\n3. Find Thrall in the basement of the keep and follow him for the remainder of the dungeon.",
		-- #if BEFORE MOP
		zoneTextAreaID = 2367,	-- Old Hillsbrad Foothills
		-- #endif
		mapID = CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS,
		coord = { 26.8, 36.8, CAVERNS_OF_TIME },
		timeline = { ADDED_2_0_3 },
		lvl = lvlsquish(63, 63, 15),
		groups = {
			n(QUESTS, {
				q(10284, {	-- Escape from Durnholde
					sourceQuest = 10283,	-- Taretha's Diversion
					qg = 17876,	-- Thrall
					timeline = { REMOVED_4_3_0 },
					lvl = lvlsquish(66, 66, 15),
				}),
				q(29599, {	-- Escape from Durnholde
					sourceQuest = 29598,	-- Taretha's Diversion
					qg = 17876,	-- Thrall
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(64, 64, 15),
					groups = {
						i(29318),	-- Southshore Sneakers
						i(29319),	-- Tarren Mill Defender's Cinch
						i(29317),	-- Tempest's Touch
						i(29316),	-- Warchief's Mantle
					},
				}),
				q(12513, {	-- Nice Hat...
					qg = 28126,	-- Don Carlos
					coords = {
						-- #if AFTER CATA
						{ 50.8, 27.5, TANARIS },
						-- #else
						{ 53.9, 28.9, TANARIS },
						-- #endif
					},
					timeline = { ADDED_2_4_3 },
					races = { HUMAN, DWARF, GNOME, KULTIRAN, DARKIRON, MECHAGNOME },
					lvl = lvlsquish(66, 66, 15),
					-- Races straight from Blizz api confirmed by Gaulish 9/27/20
					groups = {
						objective(1, {	-- 0/1 Don Carlos' Hat
							provider = { "i", 38329 },	-- Don Carlos' Hat
						}),
						i(38276),	-- Haliscan Brimmed Hat
					},
				}),
				q(12515, {	-- Nice Hat...
					qg = 28126,	-- Don Carlos
					coords = {
						-- #if AFTER CATA
						{ 50.7, 27.5, TANARIS },
						-- #else
						{ 53.9, 28.9, TANARIS },
						-- #endif
					},
					timeline = { ADDED_2_4_3 },
					races = exclude({ HUMAN, DWARF, GNOME, KULTIRAN, DARKIRON, MECHAGNOME, DRACTHYR_ALLIANCE, DRACTHYR_HORDE }, ALL_RACES),
					lvl = lvlsquish(66, 66, 15),
					-- Races straight from Blizz api confirmed by Gaulish 9/27/20
					groups = {
						objective(1, {	-- 0/1 Don Carlos' Hat
							provider = { "i", 38329 },	-- Don Carlos' Hat
						}),
						i(38276),	-- Haliscan Brimmed Hat
					},
				}),
				q(10282, {	-- Old Hillsbrad
					sourceQuest = 10277,	-- The Caverns of Time
					qg = 20130,	-- Andormu <Keepers of Time>
					coords = {
						-- #if AFTER CATA
						{ 41.6, 38.5, CAVERNS_OF_TIME },
						-- #else
						{ 58.4, 54.3, TANARIS },
						-- #endif
					},
					lvl = lvlsquish(66, 66, 15),
				}),
				q(10283, {	-- Taretha's Diversion
					sourceQuest = 10282,	-- Old Hillsbrad
					qg = 18723,	-- Erozion
					timeline = { REMOVED_4_3_0 },
					lvl = lvlsquish(66, 66, 15),
					groups = {
						objective(1, {	-- Internment Lodges Set Ablaze
							provider = { "i", 25853 },	-- Pack of Incendiary Bombs
						}),
					},
				}),
				q(29598, {	-- Taretha's Diversion
					qg = 18723,	-- Erozion
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(64, 64, 15),
					groups = {
						objective(1, {	-- Internment Lodges Set Ablaze
							provider = { "i", 25853 },	-- Pack of Incendiary Bombs
						}),
					},
				}),
				q(10285, {	-- Return to Andormu
					sourceQuest = 10284,	-- Escape from Durnholde
					qg = 18723,	-- Erozion
					timeline = { REMOVED_4_3_0 },
					lvl = lvlsquish(66, 66, 15),
					groups = {
						i(29318),	-- Southshore Sneakers
						i(29319),	-- Tarren Mill Defender's Cinch
						i(29317),	-- Tempest's Touch
						i(29316),	-- Warchief's Mantle
					},
				}),
			}),
			n(VENDORS, {
				n(18664, {	-- Aged Dalaran Wizard
					i(22539),	-- Formula: Enchant Shield - Intellect (RECIPE!)
				}),
				n(20377, {	-- Barkeep Kelly <Bartender>
					description = "Can be found inside Southshore tavern.",
					groups = {
						i(19222),	-- Cheap Beer
						i(4600),	-- Cherry Grog
						i(21151),	-- Rumsey Rum Black Label
						i(3703),	-- Southshore Stout
						i(29401),	-- Sparkling Southshore Cider
						i(23585),	-- Stouthammer Lite
					},
				}),
				n(20378, {	-- Chef Jessen <Speciality Meat & Slop>
					description = "Can be found inside Southshore tavern.",
					groups = {
						i(29412),	-- Jessen's Special Slop
					},
				}),
				n(18672, THOMAS_YANCE_GROUPS),	-- Thomas Yance
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(30457),	-- Gilneas Sparkled Water
					i(25729, {	-- Pattern: Stylin' Adventure Hat (RECIPE!)
						crs = {
							-- #if AFTER 2.4.3
							28132,	-- Don Carlos
							-- #endif
							17820,	-- Durnholde Rifleman
						},
					}),
					i(30610),	-- Smoked Black Bear Meat
					i(30458),	-- Stromgarde Muenster
				}),
				n(28132, {	-- Don Carlos
					description = "This is a neutral Elite Creature that wanders the road.",
					timeline = { ADDED_2_4_3 },
					groups = { i(38329) },	-- Don Carlos' Hat
				}),
				BossOnly(DRAKE, {
					i(28212),	-- Aran's Sorcerous Slacks
					i(28210),	-- Bloodskull Destroyer
					i(27423),	-- Cloak of Impulsiveness
					i(28214),	-- Grips of the Lunar Eclipse
					i(27436),	-- Iron Band of the Unbreakable
					i(28211),	-- Lieutenant's Signet of Lordaeron
					i(28213),	-- Lordaeron Medical Guide
					i(28215),	-- Mok'Nathal Mask of Battle
					i(27417),	-- Ravenwing Pauldrons
					i(27418),	-- Stormreaver Shadow-Kilt
					i(27420),	-- Uther's Ceremonial Warboots
				}),
				BossOnly(SKARLOC, {
					i(27424),	-- Amani Venom-Axe
					i(28221),	-- Boots of the Watchful Heart
					i(28216),	-- Dathrohan's Ceremonial Hammer
					i(27427),	-- Durotan's Battle Harness
					i(28219),	-- Emerald-Scale Greaves
					i(28220),	-- Moon-Crown Antlers
					i(27426),	-- Northshire Battlemace
					i(28218),	-- Pontiff's Pantaloons of Prophecy
					i(22927),	-- Recipe: Ironshield Potion (RECIPE!)
					i(27430),	-- Scaled Greaves of Patience
					i(27428),	-- Stormfront Gauntlets
					i(28217),	-- Tarren Mill Vitality Locket
				}),
				BossOnly(EPOCH_HUNTER, {
					ach(652),	-- The Escape From Durnholde
					i(28223),	-- Arcanist's Stone
					i(27432),	-- Broxigar's Ring of Valor
					i(29250),	-- Cord of Sanctification
					i(24173),	-- Design: Circlet of Arcane Might (RECIPE!)
					i(27440),	-- Diamond Prism of Recurrence
					i(28225),	-- Doomplate Warhelm
					i(27911),	-- Epoch's Whispering Cinch
					i(30536),	-- Greaves of the Martyr
					i(28401),	-- Hauberk of Desolation
					i(28191),	-- Mana-Etched Vestments
					i(27434),	-- Mantle of Perenolde
					i(28233),	-- Necklace of Resplendent Hope
					i(29246),	-- Nightfall Wristguards
					i(27433),	-- Pauldrons of Sufferance
					i(28222),	-- Reaver of the Infinites
					i(27904),	-- Resounding Ring of Glory
					i(28227),	-- Sparking Arcanite Ring
					i(27431),	-- Time-Shifted Dagger
					i(28226),	-- Timeslicer
					i(28224),	-- Wastewalker Helm
					i(28344),	-- Wyrmfury Pauldrons
					i(30534),	-- Wyrmscale Greaves
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30589),	-- Dazzling Chrysoprase
					i(30591),	-- Empowered Fire Opal
					i(30590),	-- Enduring Chrysoprase
				}),
				n(28132, {	-- Don Carlos
					description = "This is a neutral Elite Creature that wanders the road.",
					timeline = { ADDED_2_4_3 },
					groups = {
						applyclassicphase(LEGION_PHASE_ONE, i(134019, { timeline = { ADDED_7_0_3 } })),	-- Don Carlos' Famous Hat (TOY!)
						i(38506, { timeline = { REMOVED_7_0_3 } }),	-- Don Carlos' Famous Hat
					},
				}),
				BossOnly(DRAKE),
				BossOnly(SKARLOC),
				BossOnly(EPOCH_HUNTER, {
					ach(673),	-- Heroic: The Escape From Durnholde
					ach(5073, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Escape From Durnholde Guild Run
					i(33847),	-- Epoch Hunter's Head
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(30457),	-- Gilneas Sparkled Water
					i(25729, {	-- Pattern: Stylin' Adventure Hat (RECIPE!)
						crs = {
							-- #if AFTER 2.4.3
							28132,	-- Don Carlos
							-- #endif
							17820,	-- Durnholde Rifleman
						},
					}),
					i(30610),	-- Smoked Black Bear Meat
					i(30458),	-- Stromgarde Muenster
				}),
				n(28132, {	-- Don Carlos
					description = "This is a neutral Elite Creature that wanders the road.",
					timeline = { ADDED_2_4_3 },
					groups = { i(38329) },	-- Don Carlos' Hat
				}),
				BossOnly(SKARLOC, {
					i(22927),	-- Recipe: Ironshield Potion (RECIPE!)
				}),
				BossOnly(EPOCH_HUNTER, {
					i(24173),	-- Design: Circlet of Arcane Might (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(DRAKE, {
					i(27423),	-- Cloak of Impulsiveness
					i(27436),	-- Iron Band of the Unbreakable
					i(27417),	-- Ravenwing Pauldrons
					i(27418),	-- Stormreaver Shadow-Kilt
					i(27420),	-- Uther's Ceremonial Warboots
				}),
				BossOnly(SKARLOC, {
					i(27424),	-- Amani Venom-Axe
					i(27427),	-- Durotan's Battle Harness
					i(27426),	-- Northshire Battlemace
					i(27430),	-- Scaled Greaves of Patience
					i(27428),	-- Stormfront Gauntlets
				}),
				BossOnly(EPOCH_HUNTER, {
					ach(652),	-- The Escape From Durnholde
					i(27432),	-- Broxigar's Ring of Valor
					i(27440),	-- Diamond Prism of Recurrence
					i(27434),	-- Mantle of Perenolde
					i(27433),	-- Pauldrons of Sufferance
					i(27431),	-- Time-Shifted Dagger
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				attunement = {
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265849 },	-- Communal Key of Time
					-- #endif
					{ "i", 30635 },	-- Key of Time
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30589),	-- Dazzling Chrysoprase
					i(30591),	-- Empowered Fire Opal
					i(30590),	-- Enduring Chrysoprase
				}),
				n(28132, {	-- Don Carlos
					description = "This is a neutral Elite Creature that wanders the road.",
					timeline = { ADDED_2_4_3 },
					groups = {
						applyclassicphase(LEGION_PHASE_ONE, i(134019, { timeline = { ADDED_7_0_3 } })),	-- Don Carlos' Famous Hat (TOY!)
						i(38506, { timeline = { REMOVED_7_0_3 } }),	-- Don Carlos' Famous Hat
					},
				}),
				BossOnly(DRAKE, {
					i(28212),	-- Aran's Sorcerous Slacks
					i(28210),	-- Bloodskull Destroyer
					i(28214),	-- Grips of the Lunar Eclipse
					i(28211),	-- Lieutenant's Signet of Lordaeron
					i(28213),	-- Lordaeron Medical Guide
					i(28215),	-- Mok'Nathal Mask of Battle
				}),
				BossOnly(SKARLOC, {
					i(28221),	-- Boots of the Watchful Heart
					i(28216),	-- Dathrohan's Ceremonial Hammer
					i(28219),	-- Emerald-Scale Greaves
					i(28220),	-- Moon-Crown Antlers
					i(28218),	-- Pontiff's Pantaloons of Prophecy
					i(28217),	-- Tarren Mill Vitality Locket
				}),
				BossOnly(EPOCH_HUNTER, {
					ach(673),	-- Heroic: The Escape From Durnholde
					ach(5073, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Escape From Durnholde Guild Run
					i(28223),	-- Arcanist's Stone
					i(29250),	-- Cord of Sanctification
					i(28225),	-- Doomplate Warhelm
					i(33847),	-- Epoch Hunter's Head
					i(27911),	-- Epoch's Whispering Cinch
					i(30536),	-- Greaves of the Martyr
					i(28401),	-- Hauberk of Desolation
					i(28191),	-- Mana-Etched Vestments
					i(28233),	-- Necklace of Resplendent Hope
					i(29246),	-- Nightfall Wristguards
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(28222),	-- Reaver of the Infinites
					i(27904),	-- Resounding Ring of Glory
					i(28227),	-- Sparking Arcanite Ring
					i(28226),	-- Timeslicer
					i(28224),	-- Wastewalker Helm
					i(28344),	-- Wyrmfury Pauldrons
					i(30534),	-- Wyrmscale Greaves
				}),
			}),
			-- #endif
		},
	}),
})));

-- Add the items we didn't want to mark with a phase
for i,o in ipairs({
	i(45),	-- Squire's Shirt
	i(38),	-- Recruit's Shirt
	i(53),	-- Neophyte's Shirt
	i(6096),	-- Apprentice's Shirt
	i(6097),	-- Acolyte's Shirt
}) do table.insert(THOMAS_YANCE_GROUPS, o); end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(251, {
		q(35542),	-- Old Hillsbrad Foothills Reward Quest - Normal completion
		q(35543),	-- Old Hillsbrad Foothills Reward Quest - Heroic completion
	}),
}));
