-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local CORBORUS = 110;
local SLABHIDE = 111;
local OZRUK = 112;
local AZIL = 113;

------ EncounterToCRS ------
local EncounterToCRS = {
	[CORBORUS] = { 43438 },	-- Corborus
	[SLABHIDE] = { 43214 },	-- Slabhide
	[OZRUK] = { 42188 },	-- Ozruk
	[AZIL] = { 42333 },	-- High Priestess Azil
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(67, {	-- The Stonecore
		mapID = 324,
		coord = { 47.50, 52.05, DEEPHOLM },
		timeline = { ADDED_4_0_3 },
		groups = {
			n(QUESTS, {
				q(28814, {	-- Followers and Leaders
					sourceQuest = 28815,	-- Twilight Documents
					qg = 50048,	-- Earthwarden Yrsa
					groups = {
						i(66892),	-- Band of the One Hundred and One
						i(66893),	-- High Priestess' Signet
						i(66891),	-- Pauldrons of Unholy Rituals
					},
				}),
				q(28815, {	-- Twilight Documents
					qg = 50048,	-- Earthwarden Yrsa
				}),
				q(28824, {	-- Wayward Child
					sourceQuest = 26871,	-- A Rock Amongst Many
					qg = 42465,	-- Therazane <The Stonemother>
					coord = { 56.3, 12.2, DEEPHOLM },
					lvl = 82,
					groups = {
						i(66897),	-- Crystal Shimmer Cloak
						i(66894),	-- Leggings of the Lost Child
						i(66896),	-- Stonecore Belt
					},
				}),
				q(28799, {	-- Might of the Earthen
					provider = { "o", 207407 },	-- Broken Pillar
					requireSkill = ARCHAEOLOGY,
					isRepeatable = true,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { REMOVED_7_3_5 } }).AddGroups({
				BossOnly(CORBORUS, {
					i(55792),	-- Cinnabar Shoulders
					i(55793),	-- Dolomite Adorned Gloves
					i(55796),	-- Fist of Pained Senses
					i(55795),	-- Key to the Endless Chamber
					i(55794),	-- Phosphorescent Ring
				}),
				BossOnly(SLABHIDE, {
					i(55798),	-- Deep Delving Gloves
					i(55797),	-- Hematite Plate Gloves
					i(55801),	-- Quicksilver Blade
					i(55799),	-- Rose Quartz Band
					i(55800, { timeline = { ADDED_4_0_3, REMOVED_5_0_4 } }),	-- Stalagmite Dragon
					-- #if BEFORE 7.3.5
					i(63043),	-- Vitreous Stone Drake (MOUNT!)
					-- #endif
				}),
				BossOnly(OZRUK, {
					i(55803),	-- Belt of the Ringworm
					i(55802),	-- Elementium Scale Bracers
					i(55804),	-- Pendant of the Lightless Grotto
					i(55811),	-- Sword of the Bottomless Pit
					i(55810),	-- Tendrils of Burrowing Dark
				}),
				BossOnly(AZIL, {
					-- #if BEFORE 7.3.5
					ach(4846),	-- The Stonecore
					-- #endif
					i(55821, { timeline = { REMOVED_5_0_4 } }),	-- Book of Dark Prophecies
					i(55818),	-- Cowl of the Unseen World
					i(55815),	-- Darkling Staff
					i(55813),	-- Elementium Fang
					i(55812),	-- Helm of Numberless Shadow
					i(55816),	-- Leaden Despair
					i(55814),	-- Magnetite Mirror
					i(55820),	-- Prophet Scepter
					i(55817),	-- Slippers of the Twilight Prophet
					i(55819),	-- Tear of Blood
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55822, {	-- Heavy Geode Mace
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
					i(55824, {	-- Skin of Stone
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
					i(55823, {	-- Wand of Dark Worship
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
				}),
				BossOnly(CORBORUS, {
					i(56330),	-- Cinnabar Shoulders
					i(157592, { timeline = { ADDED_7_3_5 } }),	-- Crackling Geode Mace
					i(157591, { timeline = { ADDED_7_3_5 } }),	-- Crystal-Chained Lodestone
					i(157590, { timeline = { ADDED_7_3_5 } }),	-- Crystalgrinder Bracers
					i(56331),	-- Dolomite Adorned Gloves
					i(56329),	-- Fist of Pained Senses
					i(56328),	-- Key to the Endless Chamber
					i(56332),	-- Phosphorescent Ring
				}),
				BossOnly(SLABHIDE, {
					i(157593, { timeline = { ADDED_7_3_5 } }),	-- Crystalpowder Amice
					i(56334),	-- Deep Delving Gloves
					i(157594, { timeline = { ADDED_7_3_5 } }),	-- Earth-Strength Legguards
					i(56336),	-- Hematite Plate Gloves
					i(56335),	-- Quicksilver Blade
					i(56333),	-- Rose Quartz Band
					i(63043),	-- Vitreous Stone Drake (MOUNT!)
				}),
				BossOnly(OZRUK, {
					i(56341),	-- Belt of the Ringworm
					i(56340),	-- Elementium Scale Bracers
					i(157595, { timeline = { ADDED_7_3_5 } }),	-- Fractured Earthstone Necklace
					i(56338),	-- Pendant of the Lightless Grotto
					i(56342),	-- Sword of the Bottomless Pit
					i(56339),	-- Tendrils of Burrowing Dark
				}),
				BossOnly(AZIL, {
					ach(4846),	-- The Stonecore
					i(56352),	-- Cowl of the Unseen World
					i(56343),	-- Darkling Staff
					i(56346),	-- Elementium Fang
					i(56344),	-- Helm of Numberless Shadow
					i(56347),	-- Leaden Despair
					i(56345),	-- Magnetite Mirror
					i(56349),	-- Prophet Scepter
					i(56348),	-- Slippers of the Twilight Prophet
					i(56351),	-- Tear of Blood
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(CORBORUS),
				BossOnly(SLABHIDE, {
					i(56337, { timeline = { REMOVED_5_0_4 } }),	-- Stalagmite Dragon
				}),
				BossOnly(OZRUK),
				BossOnly(AZIL, {
					ach(5063),	-- Heroic: The Stonecore
					ach(5136),	-- Heroic: The Stonecore Guild Run
					ach(5287),	-- Rotten to the Core
					i(56350, { timeline = { REMOVED_5_0_4 } }),	-- Book of Dark Prophecies
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(55822, {	-- Heavy Geode Mace
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
					i(55824, {	-- Skin of Stone
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
					i(55823, {	-- Wand of Dark Worship
						crs = {
							42810,	-- Crystalspawn Giant
							43430,	-- Stonecore Berserker
							42692,	-- Stonecore Bruiser
							43537,	-- Stonecore Earthshaper
							42808,	-- Stonecore Flayer
							42789,	-- Stonecore Magmalord
							42691,	-- Stonecore Rift Conjurer
							42695,	-- Stonecore Sentry
							42696,	-- Stonecore Warbringer
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(CORBORUS, {
					i(56330),	-- Cinnabar Shoulders
					i(56331),	-- Dolomite Adorned Gloves
					i(56329),	-- Fist of Pained Senses
					i(56328),	-- Key to the Endless Chamber
					i(56332),	-- Phosphorescent Ring
				}),
				BossOnly(SLABHIDE, {
					i(56334),	-- Deep Delving Gloves
					i(56336),	-- Hematite Plate Gloves
					i(56335),	-- Quicksilver Blade
					i(56333),	-- Rose Quartz Band
					i(56337, { timeline = { REMOVED_5_0_4 } }),	-- Stalagmite Dragon
					i(63043),	-- Vitreous Stone Drake (MOUNT!)
				}),
				BossOnly(OZRUK, {
					i(56341),	-- Belt of the Ringworm
					i(56340),	-- Elementium Scale Bracers
					i(56338),	-- Pendant of the Lightless Grotto
					i(56342),	-- Sword of the Bottomless Pit
					i(56339),	-- Tendrils of Burrowing Dark
				}),
				BossOnly(AZIL, {
					ach(5063),	-- Heroic: The Stonecore
					ach(5136),	-- Heroic: The Stonecore Guild Run
					ach(5287),	-- Rotten to the Core
					i(56350, { timeline = { REMOVED_5_0_4 } }),	-- Book of Dark Prophecies
					i(56352),	-- Cowl of the Unseen World
					i(56343),	-- Darkling Staff
					i(56346),	-- Elementium Fang
					i(56344),	-- Helm of Numberless Shadow
					i(56347),	-- Leaden Despair
					i(56345),	-- Magnetite Mirror
					i(56349),	-- Prophet Scepter
					i(56348),	-- Slippers of the Twilight Prophet
					i(56351),	-- Tear of Blood
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				groups = {
					BossOnly(AZIL, {
						ach(41141),	-- Protocol Inferno: The Stonecore
					}),
				},
			})),
			-- #endif
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(67, {
		q(35911),	-- Stonecore Reward Quest - Normal completion
		q(35913),	-- Stonecore (Heroic) Reward Quest - Heroic completion
	}),
}));
