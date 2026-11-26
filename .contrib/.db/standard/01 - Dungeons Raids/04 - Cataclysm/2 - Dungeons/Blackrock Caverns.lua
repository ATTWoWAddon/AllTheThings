-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ROMOGG = 105;
local CORLA = 106;
local KARSH = 107;
local BEAUTY = 108;
local OBSIDIUS = 109;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ROMOGG] = { 39665 },	-- Rom'ogg Bonecrusher
	[CORLA] = { 39679 },	-- Corla, Herald of Twilight
	[KARSH] = { 39698 },	-- Karsh Steelbender
	[BEAUTY] = { 39700 },	-- Beauty
	[OBSIDIUS] = { 39705 },	-- Ascendant Lord Obsidius
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(66, {	-- Blackrock Caverns
		mapID = 283,
		coord = { 71.77, 52.98, BLACKROCK_MOUNTAIN_LEVEL2 },
		timeline = { ADDED_4_0_3 },
		maps = { 284 },
		groups = {
			n(QUESTS, {
				q(28741, {	-- Ascendant Lord Obsidius
					sourceQuest = 28738,	-- The Twilight Forge
					qg = 49476,	-- Pip Quickwit
					groups = {
						i(66886),	-- Acid-Eaten Vest
						i(66885),	-- Diamond-Studded Helm
						i(66884),	-- Raz's Breastplate
					},
				}),
				q(28740, {	-- Do My Eyes Deceive Me?
					sourceQuest = 28738,	-- The Twilight Forge
					qg = 49476,	-- Pip Quickwit
					groups = {
						i(66889),	-- Beauty's Cootie-Ridden Blankie
						i(66887),	-- Beauty Jr.'s Collar
						i(66890),	-- Auto-Decoding Band
					},
				}),
				q(28738, {	-- The Twilight Forge
					sourceQuest = 28737,	-- What Is This Place?
					qg = 49476,	-- Pip Quickwit
				}),
				q(28732, {	-- This Can Only Mean One Thing...
					qg = 49444,	-- Pip Quickwit
					coord = { 42.6, 28.1, MOUNT_HYJAL },
					isBreadcrumb = true,
					groups = {
						objective(1, {	-- Arrive at Blackrock Caverns.
							provider = { "o", 207327 },	-- Pip's Mole Machine
						}),
					},
				}),
				q(28735, {	-- To the Chamber of Incineration!
					sourceQuest = 28732,	-- This Can Only Mean One Thing...
					qg = 49476,	-- Pip Quickwit
				}),
				q(28737, {	-- What Is This Place?
					sourceQuest = 28735,	-- To the Chamber of Incineration!
					qg = 49476,	-- Pip Quickwit
				}),
				q(28804, {	-- Dark Iron Contingency Plan
					provider = { "o", 207412 },	-- Stone Tablet
					requireSkill = ARCHAEOLOGY,
					isRepeatable = true,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { REMOVED_7_3_5 } }).AddGroups({
				BossOnly(ROMOGG, {
					i(55278),	-- Inquisition Robes
					i(55279),	-- Manacles of Pain
					i(55778),	-- Shield of the Iron Maiden
					i(55776),	-- Skullcracker Ring
					i(55777),	-- Torturer's Mercy
				}),
				BossOnly(CORLA, {
					i(55264),	-- Armbands of Change
					i(55267),	-- Corla's Baton
					i(55266),	-- Grace of the Herald
					i(55263),	-- Renouncer's Cowl
					i(55265),	-- Signet of Transformation
				}),
				BossOnly(KARSH, {
					i(55268),	-- Bracers of Cooled Anger
					i(55270),	-- Burned Gatherings
					i(55269),	-- Heat Wave Leggings
					i(55271),	-- Quicksilver Amulet
					i(55272),	-- Steelbender's Masterpiece
				}),
				BossOnly(BEAUTY, {
					i(55273),	-- Beauty's Chew Toy
					i(55277),	-- Beauty's Favorite Bone
					i(55274),	-- Beauty's Plate
					i(55275),	-- Beauty's Silken Ribbon
					i(55276),	-- Kibble
				}),
				BossOnly(OBSIDIUS, {
					-- #if BEFORE 7.3.5
					ach(4833),	-- Blackrock Caverns
					-- #endif
					i(55782),	-- Amber Messenger
					i(55781),	-- Carrier Wave Pendant
					i(55784),	-- Clutches of Dying Light
					i(55788),	-- Crepuscular Shield
					i(55786),	-- Kyrstel Mantle
					i(55779),	-- Raz's Pauldrons
					i(55783, { timeline = { ADDED_4_0_3, REMOVED_5_0_4 } }),	-- Sandshift Relic
					i(55780),	-- Twitching Shadows
					i(55785),	-- Willowy Crown
					i(55787),	-- Witching Hourglass
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55791, {	-- Acanthia's Lost Pendant
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
					i(55789, {	-- Berto's Staff
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
					i(55790, {	-- Toxidunk Dagger
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
				}),
				BossOnly(ROMOGG, {
					i(157608, { timeline = { ADDED_7_3_5 } }),	-- Groundrumble Boots
					i(56311),	-- Inquisition Robes
					i(56313),	-- Manacles of Pain
					i(56314),	-- Shield of the Iron Maiden
					i(56310),	-- Skullcracker Ring
					i(56312),	-- Torturer's Mercy
				}),
				BossOnly(CORLA, {
					i(56297),	-- Armbands of Change
					i(56296),	-- Corla's Baton
					i(56295),	-- Grace of the Herald
					i(56298),	-- Renouncer's Cowl
					i(56299),	-- Signet of Transformation
				}),
				BossOnly(KARSH, {
					i(56301),	-- Bracers of Cooled Anger
					i(56304),	-- Burned Gatherings
					i(56303),	-- Heat Wave Leggings
					i(157610, { timeline = { ADDED_7_3_5 } }),	-- Heat-Shielded Tunic
					i(56300),	-- Quicksilver Amulet
					i(56302),	-- Steelbender's Masterpiece
				}),
				BossOnly(BEAUTY, {
					i(56309),	-- Beauty's Chew Toy
					i(56306),	-- Beauty's Favorite Bone
					i(56308),	-- Beauty's Plate
					i(56305),	-- Beauty's Silken Ribbon
					i(157607, { timeline = { ADDED_7_3_5 } }),	-- Gently Gnawed Hauberk
					i(56307),	-- Kibble
				}),
				BossOnly(OBSIDIUS, {
					ach(4833),	-- Blackrock Caverns
					i(56317),	-- Amber Messenger
					i(56319),	-- Carrier Wave Pendant
					i(56323),	-- Clutches of Dying Light
					i(56322),	-- Crepuscular Shield
					i(56324),	-- Kyrstel Mantle
					i(56318),	-- Raz's Pauldrons
					i(56315),	-- Twitching Shadows
					i(56321),	-- Willowy Crown
					i(56320),	-- Witching Hourglass
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(ROMOGG, {
					ach(5281),	-- Crushing Bones and Cracking Skulls
				}),
				BossOnly(CORLA, {
					ach(5282),	-- Arrested Development
				}),
				BossOnly(KARSH, {
					ach(5283),	-- Too Hot to Handle
				}),
				BossOnly(BEAUTY),
				BossOnly(OBSIDIUS, {
					ach(5284),	-- Ascendant Descending
					ach(5060),	-- Heroic: Blackrock Caverns
					ach(5134),	-- Heroic: Blackrock Caverns Guild Run
					i(56316, { timeline = { REMOVED_5_0_4 } }),	-- Sandshift Relic
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55791, {	-- Acanthia's Lost Pendant
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
					i(55789, {	-- Berto's Staff
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
					i(55790, {	-- Toxidunk Dagger
						crs = {
							40084,	-- Bellows Slave
							40013,	-- Buster
							39994,	-- Conflagration
							39982,	-- Crazed Mage
							40023,	-- Defiled Earth Rager
							39987,	-- Evolved Twilight Zealot
							40021,	-- Incendiary Spark
							40008,	-- Lucky
							39985,	-- Mad Prisoner
							40004,	-- Quicksilver
							40015,	-- Runty
							40017,	-- Twilight Element Warden
							39708,	-- Twilight Flame Caller
							40019,	-- Twilight Obsidian Borer
							39980,	-- Twilight Sadist
							39978,	-- Twilight Torturer
							39990,	-- Twilight Zealot
							50284,	-- Twilight Zealot
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(ROMOGG, {
					ach(5281),	-- Crushing Bones and Cracking Skulls
					i(56311),	-- Inquisition Robes
					i(56313),	-- Manacles of Pain
					i(56314),	-- Shield of the Iron Maiden
					i(56310),	-- Skullcracker Ring
					i(56312),	-- Torturer's Mercy
				}),
				BossOnly(CORLA, {
					ach(5282),	-- Arrested Development
					i(56297),	-- Armbands of Change
					i(56296),	-- Corla's Baton
					i(56295),	-- Grace of the Herald
					i(56298),	-- Renouncer's Cowl
					i(56299),	-- Signet of Transformation
				}),
				BossOnly(KARSH, {
					ach(5283),	-- Too Hot to Handle
					i(56301),	-- Bracers of Cooled Anger
					i(56304),	-- Burned Gatherings
					i(56303),	-- Heat Wave Leggings
					i(56300),	-- Quicksilver Amulet
					i(56302),	-- Steelbender's Masterpiece
				}),
				BossOnly(BEAUTY, {
					i(56309),	-- Beauty's Chew Toy
					i(56306),	-- Beauty's Favorite Bone
					i(56308),	-- Beauty's Plate
					i(56305),	-- Beauty's Silken Ribbon
					i(56307),	-- Kibble
				}),
				BossOnly(OBSIDIUS, {
					ach(5284),	-- Ascendant Descending
					ach(5060),	-- Heroic: Blackrock Caverns
					ach(5134),	-- Heroic: Blackrock Caverns Guild Run
					i(56317),	-- Amber Messenger
					i(56319),	-- Carrier Wave Pendant
					i(56323),	-- Clutches of Dying Light
					i(56322),	-- Crepuscular Shield
					i(56324),	-- Kyrstel Mantle
					i(56318),	-- Raz's Pauldrons
					i(56316, { timeline = { REMOVED_5_0_4 } }),	-- Sandshift Relic
					i(56315),	-- Twitching Shadows
					i(56321),	-- Willowy Crown
					i(56320),	-- Witching Hourglass
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				groups = {
					BossOnly(OBSIDIUS, {
						ach(41139),	-- Protocol Inferno: Blackrock Caverns
					}),
				},
			})),
			-- #endif
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(66, {
		q(35348),	-- Blackrock Caverns Reward Quest
		q(35351),	-- Blackrock Caverns Reward Quest
		q(35349),	-- Blackrock Caverns Bonus Reward
		q(35352),	-- Blackrock Caverns Bonus Reward - killing Beauty
	}),
}));
