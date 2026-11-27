-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local OOK_OOK = 668;
local HOPTALLUS = 669;
local YAN_ZHU = 670;

------ EncounterToCRS ------
local EncounterToCRS = {
	[OOK_OOK] = { 56637 },	-- Ook-Ook
	[HOPTALLUS] = { 56717 },	-- Hoptallus
	[YAN_ZHU] = { 59479 },	-- Yan-Zhu the Uncasked
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_ONE, inst(302, {	-- Stormstout Brewery
		coord = { 36.0, 69.0, VALLEY_OF_THE_FOUR_WINDS },
		timeline = { ADDED_5_0_4 },
		maps = { STORMSTOUT_BREWERY_GRAIN_CELLAR, STORMSTOUT_BREWERY_STORMSTOUT_BREWHALL, STORMSTOUT_BREWERY_THE_GREAT_WHEEL, STORMSTOUT_BREWERY_THE_TASTING_ROOM },
		groups = {
			n(ACHIEVEMENTS, {
				ach(6400, {	-- How Did He Get Up There?
					provider = { "n", 60276 },	-- Hozen Clinger
				}),
				ach(6402, {	-- Ling-Ting's Herbal Journey
					providers = {
						{ "n", 59824 },	-- Golden Hopling
						{ "i", 80313 },	-- Ling-Ting's Favorite Tea
					},
					groups = { i(86562) },	-- Hopling (PET!)
				}),
			}),
			n(QUESTS, {
				q(31324, {	-- Family Secrets
					sourceQuest = 30085,	-- Into the Brewery
					qg = 59822,	-- Auntie Stormstout
					coord = { 76.2, 36.4, STORMSTOUT_BREWERY_GRAIN_CELLAR },
					groups = {
						objective(1, {	-- 0/1 Stormstout Secrets
							providers = {
								{ "o", 213795 },	-- Stormstout Secrets
								{ "i", 86431 },	-- Stormstout Secrets
							},
						}),
						i(87312),	-- Auntie's Cooking Apron
						i(87314),	-- Blackened Chain Cloak
						i(87310),	-- Stormstout Drink Napkin
						i(87313),	-- Tasting Room Tablecloth
						i(87311),	-- Used Bar Rag
					},
				}),
				q(30085, {	-- Into the Brewery
					sourceQuest = 30078,	-- Cleaning House
					qg = 56133,	-- Chen Stormstout
					coord = { 36.0, 69.1, VALLEY_OF_THE_FOUR_WINDS },
					isBreadcrumb = true,
				}),
				q(31327, {	-- Trouble Brewing
					sourceQuest = 30085,	-- Into the Brewery
					qg = 59704,	-- Chen Stormstout
					coord = { 76.6, 36.8, STORMSTOUT_BREWERY_GRAIN_CELLAR },
					groups = {
						objective(1, {	-- 0/1 Yan-Zhu the Uncasked slain
							provider = { "n", 59479 },	-- Yan-Zhu the Uncasked
						}),
						i(87305),	-- Barrel-Aged Gloves
						i(87302),	-- Barrel Stacker's Mitts
						i(87301),	-- Master Brewer's Gloves
						i(87309),	-- Handguards of Sturdy Constitution
						i(87308),	-- Partycrasher's Gauntlets
						i(87304),	-- Uncorking Gloves
						i(87307),	-- Vegetable Chopping Handguards
						i(87306),	-- Virmen Exterminator Gloves
						i(87303),	-- Wine Tasting Gloves
					},
				}),
			}),
			n(VENDORS, {
				n(59822, {	-- Auntie Stormstout
					i(88530),	-- Bubbling Beverage
					i(81924),	-- Carbonated Water
					i(81923),	-- Cobo Cola
					i(80313),	-- Ling-Ting's Favorite Tea
					i(88529),	-- Sparkling Water
					i(88490),	-- Triple-Distilled Brew
					i(88492),	-- Wicked Wikket
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(OOK_OOK, {
					i(143989, { timeline = { ADDED_7_1_5 } }),	-- Barreldodger Boots
					i(144087, { timeline = { ADDED_7_1_5 } }),	-- Bracers of Displaced Air
					i(144119, { timeline = { ADDED_7_1_5 } }),	-- Empty Fruit Barrel
					i(143957, { timeline = { ADDED_7_1_5 } }),	-- Nimbletoe Chestguard
					i(144084, { timeline = { ADDED_7_1_5 } }),	-- Ook's Hozen Slicer
				}),
				BossOnly(HOPTALLUS, {
					i(144120, { timeline = { ADDED_7_1_5 } }),	-- Belt of Brazen Inebriation
					i(144092, { timeline = { ADDED_7_1_5 } }),	-- Bottle of Potent Potables
					i(144088, { timeline = { ADDED_7_1_5 } }),	-- Bubble-Breaker Bracers
					i(144121, { timeline = { ADDED_7_1_5 } }),	-- Cloak of Hidden Flasks
					i(143975, { timeline = { ADDED_7_1_5 } }),	-- Hopping Mad Leggings
				}),
				BossOnly(YAN_ZHU, {
					ach(6457),	-- Stormstout Brewery
					i(144125, { timeline = { ADDED_7_1_5 } }),	-- Alemental Seal
					i(144122, { timeline = { ADDED_7_1_5 } }),	-- Carbonic Carbuncle
					i(144082, { timeline = { ADDED_7_1_5 } }),	-- Fermenting Belt
					i(143969, { timeline = { ADDED_7_1_5 } }),	-- Fizzy Spaulders
					i(144085, { timeline = { ADDED_7_1_5 } }),	-- Gao's Keg Tapper
					i(87545, { timeline = { ADDED_7_1_5 } }),	-- Inelava, Spirit of Inebriation
					i(144123, { timeline = { ADDED_7_1_5 } }),	-- Lime-Rimmed Signet
					i(143976, { timeline = { ADDED_7_1_5 } }),	-- Sudsy Legplates
					i(143958, { timeline = { ADDED_7_1_5 } }),	-- Uncasked Chestguard
					i(144124, { timeline = { ADDED_7_1_5 } }),	-- Wort Stirring Rod
					i(144089, { timeline = { ADDED_7_1_5 } }),	-- Yan-Zhu's Pressure Valve
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(OOK_OOK, {
					i(80897, { timeline = { REMOVED_7_1_5 } }),	-- Bracers of Displaced Air
					i(80896, { timeline = { REMOVED_7_1_5 } }),	-- Nimbletoe Chestguard
					i(80892, { timeline = { REMOVED_7_1_5 } }),	-- Ook's Hozen Slicer
				}),
				BossOnly(HOPTALLUS, {
					i(80893, { timeline = { REMOVED_7_1_5 } }),	-- Bottle of Potent Potables
					i(80899, { timeline = { REMOVED_7_1_5 } }),	-- Bubble-Breaker Bracers
					i(80898, { timeline = { REMOVED_7_1_5 } }),	-- Hopping Mad Leggings
				}),
				BossOnly(YAN_ZHU, {
					i(80903, { timeline = { REMOVED_7_1_5 } }),	-- Fermenting Belt
					i(80900, { timeline = { REMOVED_7_1_5 } }),	-- Fizzy Spaulders
					i(80894, { timeline = { REMOVED_7_1_5 } }),	-- Gao's Keg Tapper
					i(80901, { timeline = { REMOVED_7_1_5 } }),	-- Sudsy Legplates
					i(80902, { timeline = { REMOVED_7_1_5 } }),	-- Uncasked Chestguard
					i(80895, { timeline = { REMOVED_7_1_5 } }),	-- Yan-Zhu's Pressure Valve
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				n(ACHIEVEMENTS, {
					ach(6420),	-- Hopocalypse Now!
				}),
				BossOnly(OOK_OOK, {
					ach(6089),	-- Keep Rollin' Rollin' Rollin'
					i(81134, { timeline = { REMOVED_7_1_5 } }),	-- Barreldodger Boots
					i(81064, { timeline = { REMOVED_7_1_5 } }),	-- Bracers of Displaced Air
					i(81133, { timeline = { REMOVED_7_1_5 } }),	-- Empty Fruit Barrel
					i(81080, { timeline = { REMOVED_7_1_5 } }),	-- Nimbletoe Chestguard
					i(81061, { timeline = { REMOVED_7_1_5 } }),	-- Ook's Hozen Slicer
				}),
				BossOnly(HOPTALLUS, {
					i(81135, { timeline = { REMOVED_7_1_5 } }),	-- Belt of Brazen Inebriation
					i(81076, { timeline = { REMOVED_7_1_5 } }),	-- Bottle of Potent Potables
					i(81065, { timeline = { REMOVED_7_1_5 } }),	-- Bubble-Breaker Bracers
					i(81136, { timeline = { REMOVED_7_1_5 } }),	-- Cloak of Hidden Flasks
					i(81077, { timeline = { REMOVED_7_1_5 } }),	-- Hopping Mad Leggings
				}),
				BossOnly(YAN_ZHU, {
					ach(6456),	-- Heroic: Stormstout Brewery
					ach(6666),	-- Heroic: Stormstout Brewery Guild Run
					i(81141, { timeline = { REMOVED_7_1_5 } }),	-- Alemental Seal
					i(81138, { timeline = { REMOVED_7_1_5 } }),	-- Carbonic Carbuncle
					i(81059, { timeline = { REMOVED_7_1_5 } }),	-- Fermenting Belt
					i(81068, { timeline = { REMOVED_7_1_5 } }),	-- Fizzy Spaulders
					i(81062, { timeline = { REMOVED_7_1_5 } }),	-- Gao's Keg Tapper
					i(87545, { timeline = { REMOVED_7_1_5 } }),	-- Inelava, Spirit of Inebriation
					i(81139, { timeline = { REMOVED_7_1_5 } }),	-- Lime-Rimmed Signet
					i(81078, { timeline = { REMOVED_7_1_5 } }),	-- Sudsy Legplates
					i(81081, { timeline = { REMOVED_7_1_5 } }),	-- Uncasked Chestguard
					i(81140, { timeline = { REMOVED_7_1_5 } }),	-- Wort Stirring Rod
					i(81066, { timeline = { REMOVED_7_1_5 } }),	-- Yan-Zhu's Pressure Valve
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8431, {	-- Challenge Master: Stormstout Brewery
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(248) },	-- Stormbrewer <Name>
				})),
				ach(6888),	-- Stormstout Brewery Challenger
				ach(6889),	-- Stormstout Brewery: Bronze
				ach(6890),	-- Stormstout Brewery: Silver
				ach(6891, {	-- Stormstout Brewery: Gold
					spell(131205),	-- Path of the Stout Brew
				}),
				-- #if ANYCLASSIC
				ach(61968, {	-- Stormstout Brewery: Platinum
					i(265780),	-- Platinum "Little Ale"
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(670, {	-- Yan-Zhu the Uncasked
						creatureID = 59479,	-- Yan-Zhu the Uncasked
						groups = appendGroups(
						{
							ach(60893),	-- Celestial: Stormstout Brewery
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							i(86741),	-- Dagger of the Seven Stars
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86865)),	-- Kri'tak, Imperial Scepter of the Swarm (HoF)
							i(86776),	-- Amulet of the Hidden Kings
							i(86767),	-- Circuit of the Frail Soul
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95870),	-- Abandoned Spaulders of Arrowflight
							i(95871),	-- Abandoned Spaulders of Renewal
							i(95975),	-- Abandoned Zandalari Goreplate
							i(95753),	-- Black Blood Legplates
							i(95728),	-- Durumu's Baleful Gaze
							i(95726),	-- Fabled Feather of Ji-Kun
							i(95869),	-- Forgotten Mantle of the Sun
							i(95672),	-- Gaze of Gara'jal
							i(95701),	-- Grips of Cinderflesh
							i(95755),	-- Hydra-Scale Bloodcloak
							i(95780),	-- Iron Qon's Boot Knife
							i(95647),	-- Jalak's Maelstrom Staff
							i(95807),	-- Legplates of the Lightning Throne
							i(95808),	-- Legplates of Whipping Ionization
							i(95673),	-- Loa-Ridden Bracers
							i(95754),	-- Metabolically Boosted Shoulderplates
							i(95977),	-- Necklace of the Terra-Cotta Vanquisher
							i(95674),	-- Overloaded Bladebreaker Cuirass
							i(95700),	-- Poisonblood Bladeshoulders
							i(95699),	-- Quadra-Head Brooch
							i(95782),	-- Quet'zal's Crackling Cord
							i(95646),	-- Talisman of Living Poison
							i(95809),	-- Uroe, Harbinger of Terror
							i(95781),	-- Voice of the Quilen
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(105087),	-- Ancient Archer's Chestguard
							i(105150),	-- Black Blood of Y'Shaarj
							i(105078),	-- Boots of Perilous Infusion
							i(104988),	-- Cannoneer's Multipocket Gunbelt
							i(105024),	-- Castlebreaker Bracers
							i(99678),	-- Chest of the Cursed Conqueror
							i(99677),	-- Chest of the Cursed Vanquisher
							i(105132),	-- Chestguard of Toxic Injections
							i(104970),	-- Confident Grips
							i(104979),	-- Crown of Boastful Words
							i(104997),	-- Flameslinger's Fiery Cowl
							i(104961),	-- Fusion-Fire Core
							i(99681),	-- Gauntlets of the Cursed Conqueror
							i(99667),	-- Gauntlets of the Cursed Protector
							i(99680),	-- Gauntlets of the Cursed Vanquisher
							i(104934),	-- Grips of Unending Anguish
							i(99672),	-- Helm of the Cursed Conqueror
							i(105096),	-- Immaculately Preserved Wand
							i(105015),	-- Juggernaut's Ignition Keys
							i(105042),	-- Kardris' Toxic Totem
							i(99676),	-- Leggings of the Cursed Protector
							i(99674),	-- Leggings of the Cursed Vanquisher
							i(105069),	-- Malkorok's Skullcleaver
							i(105105),	-- Montak's Grips of Scorching Breath
							i(104952),	-- Norushen's Shortblade
							i(105060),	-- Ring of Restless Energy
							i(105050),	-- Sandals of Two Little Bees
							i(104925),	-- Seal of Eternal Sorrow
							i(105006),	-- Seismic Bore
							i(105141),	-- Shoulderguards of Intended Power
							i(104943),	-- Shoulderpads of Dou Dou Chong
							i(99669),	-- Shoulders of the Cursed Conqueror
							i(99670),	-- Shoulders of the Cursed Protector
							i(105123),	-- Siegecrafter's Forge Hammer
							i(105114),	-- Ticking Ebon Detonator
							i(104916),	-- Treads of Unchained Hate
							i(105033),	-- Wolf-Rider Spurs
						}),
						-- #endif
						{}),
					}),
				},
			})),
			-- #endif
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, {
		inst(302, {
			q(31621),	-- Stormstout Brewery Challenge Mode - Bronze Addition (Nth)
			q(31620),	-- Stormstout Brewery Challenge Mode - Consolation (Nth)
			q(31623),	-- Stormstout Brewery Challenge Mode - Gold Addition (Nth)
			q(31622),	-- Stormstout Brewery Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(302, {
			q(35323),	-- Stormstout Brewery Reward Quest
			q(35324),	-- Stormstout Brewery Reward Quest
		}),
	}),
});
