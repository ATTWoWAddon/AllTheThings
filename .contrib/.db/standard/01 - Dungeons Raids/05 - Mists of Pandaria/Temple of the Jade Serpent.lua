-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SHA_OF_DOUBT = 335;
local LIU_FLAMEHEART = 658;
local STONESTEP = 664;
local WISE_MARI = 672;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SHA_OF_DOUBT] = { 56439 },	-- Sha of Doubt
	[LIU_FLAMEHEART] = { 56732 },	-- Liu Flameheart
	[STONESTEP] = { 56843 },	-- Lorewalker Stonestep
	[WISE_MARI] = { 56448 },	-- Wise Mari
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_ONE, inst(313, {	-- Temple of the Jade Serpent
		coord = { 56.0, 57.8, THE_JADE_FOREST },
		timeline = { ADDED_5_0_4 },
		maps = {
			TEMPLE_OF_THE_JADE_SERPENT,
			TEMPLE_OF_THE_JADE_SERPENT_THE_SCROLLKEEPERS_SANCTUM,
		},
		groups = {
			n(QUESTS, {
				q(31356, {	-- Deep Doubts, Deep Wisdom
					qg = 64399,	-- Master Windstrong
					coord = { 35.4, 44.4, TEMPLE_OF_THE_JADE_SERPENT },
					groups = {
						objective(1, {	-- 0/1 Sha of Doubt slain
							provider = { "n", 56439 },	-- Sha of Doubt
						}),
						i(87289),	-- Equilibrium Legwraps
						i(87287),	-- Leggings of Inner Peace
						i(87284),	-- Leggings of the Fifth Sun
						i(87290),	-- Legguards of Ironclad Confidence
						i(87285),	-- Legguards of the Tides
						i(87286),	-- Legplates of Absolute Clarity
						i(87291),	-- Legplates of Pure Purpose
						i(87288),	-- Lui's Leggings
						i(87283),	-- Windstrong Leggings
					},
				}),
				q(31355, {	-- Restoring Jade's Purity
					qg = 60578,	-- Priestess Summerpetal
					coord = { 35.4, 44.4, TEMPLE_OF_THE_JADE_SERPENT },
					groups = {
						objective(1, {	-- 0/1 Wise Mari assisted
							provider = { "n", 56448 },	-- Wise Mari
						}),
						objective(2, {	-- 0/1 Lorewalker Stonestep assisted
							provider = { "n", 56843 },	-- Lorewalker Stonestep
						}),
						objective(3, {	-- 0/1 Liu Flameheart assisted
							provider = { "n", 56732 },	-- Liu Flameheart
						}),
						i(87300),	-- Armplates of the Jade Idol
						i(87298),	-- Bracers of Ancient Tales
						i(87296),	-- Coiled Serpent Armband
						i(87293),	-- Defiant Archer's Bracers
						i(87299),	-- Eversight Armplates
						i(87292),	-- Flameheart Wristguards
						i(87294),	-- Scrollkeeper's Cuffs
						i(87295),	-- Summerpetal Cuffs
						i(87297),	-- Wise Mari's Bracers
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(65317, {	-- Xiang <The Two Jugglers>
					i(87522),	-- Star-Carrier Bracers
				}),
				BossOnly(WISE_MARI, {
					i(144112, { timeline = { ADDED_7_1_5 } }),	-- Crystallized Droplet
					i(143960, { timeline = { ADDED_7_1_5 } }),	-- Riverbed Chestguard
					i(143973, { timeline = { ADDED_7_1_5 } }),	-- Treads of Corrupted Water
					i(144017, { timeline = { ADDED_7_1_5 } }),	-- Waterburst Helm
					i(144111, { timeline = { ADDED_7_1_5 } }),	-- Wind-Soaked Drape
				}),
				BossOnly(STONESTEP, {
					i(144081, { timeline = { ADDED_7_1_5 } }),	-- Girdle of Endemic Anger
					i(143987, { timeline = { ADDED_7_1_5 } }),	-- Leggings of Whispered Dreams
					i(143974, { timeline = { ADDED_7_1_5 } }),	-- Stonestep Boots
					i(144083, { timeline = { ADDED_7_1_5 } }),	-- Sunheart Waistband
					i(144113, { timeline = { ADDED_7_1_5 } }),	-- Windswept Pages
				}),
				BossOnly(LIU_FLAMEHEART, {
					i(144094, { timeline = { ADDED_7_1_5 } }),	-- Cape of Entanglement
					i(144090, { timeline = { ADDED_7_1_5 } }),	-- Firebelcher Hand Cannon
					i(143988, { timeline = { ADDED_7_1_5 } }),	-- Flameheart Sandals
					i(143971, { timeline = { ADDED_7_1_5 } }),	-- Serpentstrike Shoulderpads
					i(144114, { timeline = { ADDED_7_1_5 } }),	-- Signet of Dancing Jade
				}),
				BossOnly(SHA_OF_DOUBT, {
					ach(6757),	-- Temple of the Jade Serpent
					i(144116, { timeline = { ADDED_7_1_5 } }),	-- Binding of Broken Dreams
					i(143959, { timeline = { ADDED_7_1_5 } }),	-- Chestguard of Despair
					i(144115, { timeline = { ADDED_7_1_5 } }),	-- Cloak of Failing Will
					i(143972, { timeline = { ADDED_7_1_5 } }),	-- Doubtridden Shoulderguards
					i(144086, { timeline = { ADDED_7_1_5 } }),	-- Dubious Handaxe
					i(144091, { timeline = { ADDED_7_1_5 } }),	-- Hopecrusher Gauntlets
					i(144216, { timeline = { ADDED_7_1_5 } }),	-- Je'lyu, Spirit of the Serpent
					i(144117, { timeline = { ADDED_7_1_5 } }),	-- Mindbreaker Pendant
					i(143970, { timeline = { ADDED_7_1_5 } }),	-- Neverdare Shoulders
					i(144118, { timeline = { ADDED_7_1_5 } }),	-- Paralyzing Gloves
					i(144093, { timeline = { ADDED_7_1_5 } }),	-- Staff of Trembling Will
					i(246846, { timeline = { ADDED_11_2_7 } }),	-- Tome of Pandaren Wisdom (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(WISE_MARI, {
					i(80861, { timeline = { REMOVED_7_1_5 } }),	-- Riverbed Chestguard
					i(80862, { timeline = { REMOVED_7_1_5 } }),	-- Treads of Corrupted Water
					i(80860, { timeline = { REMOVED_7_1_5 } }),	-- Waterburst Helm
				}),
				BossOnly(STONESTEP, {
					i(80864, { timeline = { REMOVED_7_1_5 } }),	-- Girdle of Endemic Anger
					i(80863, { timeline = { REMOVED_7_1_5 } }),	-- Stonestep Boots
					i(80865, { timeline = { REMOVED_7_1_5 } }),	-- Sunheart Waistband
				}),
				BossOnly(LIU_FLAMEHEART, {
					i(80866, { timeline = { REMOVED_7_1_5 } }),	-- Cape of Entanglement
					i(80872, { timeline = { REMOVED_7_1_5 } }),	-- Firebelcher Hand Cannon
					i(80867, { timeline = { REMOVED_7_1_5 } }),	-- Serpentstrike Shoulderpads
				}),
				BossOnly(SHA_OF_DOUBT, {
					i(80870, { timeline = { REMOVED_7_1_5 } }),	-- Chestguard of Despair
					i(80868, { timeline = { REMOVED_7_1_5 } }),	-- Doubtridden Shoulderguards
					i(80873, { timeline = { REMOVED_7_1_5 } }),	-- Dubious Handaxe
					i(80869, { timeline = { REMOVED_7_1_5 } }),	-- Hopecrusher Gauntlets
					i(80871, { timeline = { REMOVED_7_1_5 } }),	-- Neverdare Shoulders
					i(80874, { timeline = { REMOVED_7_1_5 } }),	-- Staff of Trembling Will
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(WISE_MARI, {
					ach(6460),	-- Hydrophobia
					i(81124, { timeline = { REMOVED_7_1_5 } }),	-- Crystallized Droplet
					i(81083, { timeline = { REMOVED_7_1_5 } }),	-- Riverbed Chestguard
					i(81072, { timeline = { REMOVED_7_1_5 } }),	-- Treads of Corrupted Water
					i(81075, { timeline = { REMOVED_7_1_5 } }),	-- Waterburst Helm
					i(81123, { timeline = { REMOVED_7_1_5 } }),	-- Wind-Soaked Drape
				}),
				BossOnly(STONESTEP, {
					i(81058, { timeline = { REMOVED_7_1_5 } }),	-- Girdle of Endemic Anger
					i(81126, { timeline = { REMOVED_7_1_5 } }),	-- Leggings of Whispered Dreams
					i(81073, { timeline = { REMOVED_7_1_5 } }),	-- Stonestep Boots
					i(81060, { timeline = { REMOVED_7_1_5 } }),	-- Sunheart Waistband
					i(81125, { timeline = { REMOVED_7_1_5 } }),	-- Windswept Pages
				}),
				BossOnly(LIU_FLAMEHEART, {
					i(81084, { timeline = { REMOVED_7_1_5 } }),	-- Cape of Entanglement
					i(81067, { timeline = { REMOVED_7_1_5 } }),	-- Firebelcher Hand Cannon
					i(81127, { timeline = { REMOVED_7_1_5 } }),	-- Flameheart Sandals
					i(81070, { timeline = { REMOVED_7_1_5 } }),	-- Serpentstrike Shoulderpads
					i(81128, { timeline = { REMOVED_7_1_5 } }),	-- Signet of Dancing Jade
				}),
				BossOnly(SHA_OF_DOUBT, {
					ach(6475),	-- Cleaning Up
					ach(6758),	-- Heroic: Temple of the Jade Serpent
					ach(6764),	-- Heroic: Temple of the Jade Serpent Guild Run
					ach(6671),	-- Seeds of Doubt
					i(81130, { timeline = { REMOVED_7_1_5 } }),	-- Binding of Broken Dreams
					i(81082, { timeline = { REMOVED_7_1_5 } }),	-- Chestguard of Despair
					i(81129, { timeline = { REMOVED_7_1_5 } }),	-- Cloak of Failing Will
					i(81071, { timeline = { REMOVED_7_1_5 } }),	-- Doubtridden Shoulderguards
					i(81063, { timeline = { REMOVED_7_1_5 } }),	-- Dubious Handaxe
					i(81074, { timeline = { REMOVED_7_1_5 } }),	-- Hopecrusher Gauntlets
					i(87544, { timeline = { REMOVED_7_1_5 } }),	-- Je'lyu, Spirit of the Serpent
					i(81131, { timeline = { REMOVED_7_1_5 } }),	-- Mindbreaker Pendant
					i(81069, { timeline = { REMOVED_7_1_5 } }),	-- Neverdare Shoulders
					i(81132, { timeline = { REMOVED_7_1_5 } }),	-- Paralyzing Gloves
					i(81079, { timeline = { REMOVED_7_1_5 } }),	-- Staff of Trembling Will
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8430, {	-- Challenge Master: Temple of the Jade Serpent
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(249) },	-- Jade Protector <Name>
				})),
				ach(6884),	-- Temple of the Jade Serpent Challenger
				ach(6885),	-- Temple of the Jade Serpent: Bronze
				ach(6886),	-- Temple of the Jade Serpent: Silver
				ach(6887, {	-- Temple of the Jade Serpent: Gold
					spell(131204),	-- Path of the Jade Serpent
				}),
				-- #if ANYCLASSIC
				ach(61967, {	-- Temple of the Jade Serpent: Platinum
					i(265774),	-- Platinum Boots of Expeditious Retreat
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(335, {	-- Sha of Doubt
						creatureID = 56439,	-- Sha of Doubt
						groups = appendGroups(
						{
							ach(60892),	-- Celestial: Temple of the Jade Serpent
							i(248204),	-- Chimera of Doubt
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							i(86791),	-- Bottle of Infinite Stars
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86814)),	-- Fragment of Fear Made Flesh
							i(86762),	-- Gara'kal, Fist of the Spiritbinder
							i(86759),	-- Soulgrasp Choker
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95731),	-- Aberrant Chestguard of Torment
							i(95758),	-- Acid-Spine Bonemace
							i(95756),	-- Band of the Scaled Tyrant
							i(95651),	-- Bloodlord's Bloodsoaked Legplates
							i(95979),	-- Columnbreaker Stompers
							i(95729),	-- Crimson Bloom Legguards
							i(95784),	-- Dam'ren's Frozen Footguards
							i(95677),	-- Fortitude of the Zandalari
							i(95650),	-- Frozen Warlord's Bracers
							i(95812),	-- Legwraps of Cardinality
							i(95730),	-- Links of the Disintegrator
							i(95978),	-- Locksmasher Greaves
							i(95980),	-- Necklace of the Terra-Cotta Protector
							i(95702),	-- Plated Toothbreaker Girdle
							i(95757),	-- Primordius' Talisman of Rage
							i(95874),	-- Reconstructed Bloody Shoulderplates
							i(95872),	-- Reconstructed Holy Shoulderplates
							i(95785),	-- Ro'shak's Remembrance
							i(95703),	-- Rot-Proof Greatplate
							i(95783),	-- Saddle-Scarred Leggings
							i(95811),	-- Soul Barrier
							i(95704),	-- Spinescale Seal
							i(95649),	-- Sul'lithuz Sandmail
							i(95676),	-- Talisman of Angry Spirits
							i(95810),	-- Ultimate Protection of the Emperor
							i(95675),	-- Zerat, Malakk's Soulburning Greatsword
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(105106),	-- Akolik's Acid-Soaked Robes
							i(105124),	-- Blackfuse's Blasting Cord
							i(105079),	-- Bracers of Averted Fatality
							i(104971),	-- Bracers of Final Serenity
							i(104917),	-- Bracers of Sordid Sleep
							i(105034),	-- Breastplate of Shamanic Mirrors
							i(99678),	-- Chest of the Cursed Conqueror
							i(99679),	-- Chest of the Cursed Protector
							i(104989),	-- Dagryn's Fuselight Bracers
							i(105115),	-- Fusespark Gloves
							i(105133),	-- Gauntlets of Insane Calculations
							i(99667),	-- Gauntlets of the Cursed Protector
							i(99680),	-- Gauntlets of the Cursed Vanquisher
							i(104980),	-- Greaves of Sublime Superiority
							i(99672),	-- Helm of the Cursed Conqueror
							i(99673),	-- Helm of the Cursed Protector
							i(99671),	-- Helm of the Cursed Vanquisher
							i(105088),	-- Helm of the Night Watchman
							i(105151),	-- Horned Mace of the Old Ones
							i(104909),	-- Immerseus' Crystalline Eye
							i(105016),	-- Juggernaut's Focusing Crystal
							i(105043),	-- Kardris' Scepter
							i(105097),	-- Klaxxi Grips of Rejuvenation
							i(105061),	-- Kor'kron Hand Cannon
							i(105007),	-- Laser Burn Bracers
							i(99675),	-- Leggings of the Cursed Conqueror
							i(99674),	-- Leggings of the Cursed Vanquisher
							i(105142),	-- Legplates of Unthinking Strife
							i(104944),	-- Lifebane Bracers
							i(105051),	-- Nazgrim's Burnished Insignia
							i(104935),	-- Poisonbinder Girth
							i(104953),	-- Reality Ripper Ring
							i(104926),	-- Salt Water Sandals
							i(99668),	-- Shoulders of the Cursed Vanquisher
							i(104998),	-- Skydancer Boots
							i(105025),	-- Treads of Autonomic Motion
							i(105070),	-- Vial of Living Corruption
							i(104962),	-- Xifeng, Longblade of the Titanic Guardian
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
		inst(313, {
			q(31499),	-- Jade Serpent Challenge Mode - Bronze Addition (Nth)
			q(31498),	-- Jade Serpent Challenge Mode - Consolation (Nth)
			q(31501),	-- Jade Serpent Challenge Mode - Gold Addition (Nth)
			q(31500),	-- Jade Serpent Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(313, {
			q(35325),	-- Temple of the Jade Serpent Reward Quest
			q(35327),	-- Temple of the Jade Serpent Reward Quest
		}),
	}),
});
