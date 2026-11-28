-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local BRAUN = 660;
local HARLAN = 654;
local KOEGLER = 656;

------ EncounterToCRS ------
local EncounterToCRS = {
	[BRAUN] = { 59303 },	-- Houndmaster Braun
	[HARLAN] = { 58632 },	-- Armsmaster Harlan
	[KOEGLER] = { 59150 },	-- Flameweaver Koegler
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(311, {	-- Scarlet Halls
		coord = { 78.0, 56.8, SCARLET_MONASTERY_ENTRANCE },
		timeline = { ADDED_5_0_4 },
		maps = { SCARLET_HALLS_TRAINING_GROUNDS, SCARLET_HALLS_ATHENAEUM },
		lvl = lvlsquish(21, 21, 10),
		groups = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(HARLAN, {
					i(23192, { timeline = { ADDED_5_3_0 } }),	-- Tabard of the Scarlet Crusade
				}),
				BossOnly(KOEGLER, {
					ach(7413),	-- Scarlet Halls
					ach(7434),	-- Scarlet Halls Guild Run
					o(212968, {	-- Ancient Tome
						coord = { 48.4, 20.0, SCARLET_HALLS_ATHENAEUM },
						groups = {
							i(82469, {	-- Ancient Tome of Teleport: Dalaran (CI!)
								description = "Can be looted from a bookshelf if the boss didn't burn them.",
							}),
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(QUESTS, {
					q(31493, {	-- Just for Safekeeping, Of Course
						qg = 64738,	-- Hooded Crusader
						groups = {
							objective(1, {	-- 0/1 Codex of the Crusade
								provider = { "i", 87267 },	-- Codex of the Crusade
								cr = 59150,	-- Flameweaver Koegler
							}),
						},
					}),
					q(31490, {	-- Rank and File
						qg = 64738,	-- Hooded Crusader
					}),
				}),
				n(ZONE_DROPS, {
					i(7754),	-- Harbinger Boots
					i(7786),	-- Headsplitter
					i(7787),	-- Resplendent Guardian
					i(8226),	-- The Butcher
					i(7727),	-- Watchman Pauldrons
				}),
				BossOnly(BRAUN, {
					i(88265),	-- Beastbinder Ring
					i(88268),	-- Canine Commander's Breastplate
					i(88267),	-- Commanding Bracers
					i(88266),	-- Hound Trainer's Gloves
					i(88264),	-- Houndmaster's Compound Crossbow
				}),
				BossOnly(HARLAN, {
					i(88273),	-- Armsmaster's Sealed Locket
					i(88271),	-- Harlan's Shoulders
					i(88270),	-- Lightblade Bracer
					i(132550, { timeline = { ADDED_7_0_3 } }),	-- Scarlet Chain Footpads
					i(88269),	-- Scarlet Sandals
					i(88272),	-- The Gleaming Ravager
				}),
				BossOnly(KOEGLER, {
					i(88276),	-- Bindburner Belt
					i(88283),	-- Bradbury's Entropic Legguards
					i(88274),	-- Koegler's Ritual Knife
					i(88280),	-- Melted Hypnotic Blade
					i(88278),	-- Mograine's Immaculate Might
					i(88277),	-- Pyretic Legguards
					i(88279),	-- Robes of Koegler
					i(88275),	-- Scorched Scarlet Key
					i(88281),	-- Temperature-Sensing Necklace
					i(88282),	-- Vellum-Ripper Gloves
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(90, 90, 35) }).AddGroups({
				n(QUESTS, {
					q(31497, {	-- Just for Safekeeping, Of Course
						qg = 64764,	-- Hooded Crusader
						groups = {
							objective(1, {	-- 0/1 Codex of the Crusade
								provider = { "i", 87268 },	-- Codex of the Crusade
								cr = 59150,	-- Flameweaver Koegler
							}),
							i(87370),	-- Waistguard of the Phalanx
							i(87371),	-- Scarlet Champion's Belt
							i(87372),	-- Verdone's Chewed Waistplate
							i(87373),	-- Belt of Singed Shame
							i(87374),	-- Bucket Tosser's Girdle
							i(87375),	-- Cord of Bloody Evangelism
							i(87376),	-- Scholarly Cord
							i(87377),	-- Scarlet Archer's Links
							i(87378),	-- Loksey's Lost Belt
						},
					}),
					q(31495, {	-- Rank and File
						qg = 64764,	-- Hooded Crusader
					}),
				}),
				BossOnly(BRAUN, {
					-- Available
					ach(6684),	-- Humane Society
					i(144177, { timeline = { ADDED_7_1_5 } }),	-- Beastbinder Ring
					i(143966, { timeline = { ADDED_7_1_5 } }),	-- Canine Commander's Breastplate
					i(144191, { timeline = { ADDED_7_1_5 } }),	-- Commanding Bracers
					i(144192, { timeline = { ADDED_7_1_5 } }),	-- Hound Trainer's Gloves
					i(144190, { timeline = { ADDED_7_1_5 } }),	-- Houndmaster's Compound Crossbow

					-- Removed
					i(81563, { timeline = { REMOVED_7_1_5 } }),	-- Beastbinder Ring
					i(81696, { timeline = { REMOVED_7_1_5 } }),	-- Canine Commander's Breastplate
					i(81694, { timeline = { REMOVED_7_1_5 } }),	-- Commanding Bracers
					i(81695, { timeline = { REMOVED_7_1_5 } }),	-- Hound Trainer's Gloves
					i(81693, { timeline = { REMOVED_7_1_5 } }),	-- Houndmaster's Compound Crossbow
				}),
				BossOnly(HARLAN, {
					-- Available
					ach(6427),	-- Mosh Pit
					i(144182, { timeline = { ADDED_7_1_5 } }),	-- Armsmaster's Sealed Locket
					i(144006, { timeline = { ADDED_7_1_5 } }),	-- Harlan's Shoulders
					i(144194, { timeline = { ADDED_7_1_5 } }),	-- Lightblade Bracer
					i(144007, { timeline = { ADDED_7_1_5 } }),	-- Scarlet Sandals
					i(144193, { timeline = { ADDED_7_1_5 } }),	-- The Gleaming Ravager

					-- Removed
					i(81568, { timeline = { REMOVED_7_1_5 } }),	-- Armsmaster's Sealed Locket
					i(81698, { timeline = { REMOVED_7_1_5 } }),	-- Harlan's Shoulders
					i(81700, { timeline = { REMOVED_7_1_5 } }),	-- Lightblade Bracer
					i(81699, { timeline = { REMOVED_7_1_5 } }),	-- Scarlet Sandals
					i(81697, { timeline = { REMOVED_7_1_5 } }),	-- The Gleaming Ravager
				}),
				BossOnly(KOEGLER, {
					-- Available
					ach(6760),	-- Heroic: Scarlet Halls
					ach(6769),	-- Heroic: Scarlet Halls Guild Run
					i(144197, { timeline = { ADDED_7_1_5 } }),	-- Bindburner Belt
					i(144010, { timeline = { ADDED_7_1_5 } }),	-- Bradbury's Entropic Legguards
					i(144195, { timeline = { ADDED_7_1_5 } }),	-- Koegler's Ritual Knife
					i(144198, { timeline = { ADDED_7_1_5 } }),	-- Melted Hypnotic Blade
					i(144196, { timeline = { ADDED_7_1_5 } }),	-- Mograine's Immaculate Might
					i(144008, { timeline = { ADDED_7_1_5 } }),	-- Pyretic Legguards
					i(144009, { timeline = { ADDED_7_1_5 } }),	-- Robes of Koegler
					i(144178, { timeline = { ADDED_7_1_5 } }),	-- Scorched Scarlet Key
					i(144179, { timeline = { ADDED_7_1_5 } }),	-- Temperature-Sensing Necklace
					i(144199, { timeline = { ADDED_7_1_5 } }),	-- Vellum-Ripper Gloves
					i(144220, { timeline = { ADDED_7_1_5 } }),	-- Vithrak, Gaze of the Deadman

					-- Removed
					i(82815, { timeline = { REMOVED_7_1_5 } }),	-- Bindburner Belt
					i(82819, { timeline = { REMOVED_7_1_5 } }),	-- Bradbury's Entropic Legguards
					i(82813, { timeline = { REMOVED_7_1_5 } }),	-- Koegler's Ritual Knife
					i(82816, { timeline = { REMOVED_7_1_5 } }),	-- Melted Hypnotic Blade
					i(82814, { timeline = { REMOVED_7_1_5 } }),	-- Mograine's Immaculate Might
					i(82812, { timeline = { REMOVED_7_1_5 } }),	-- Pyretic Legguards
					i(82817, { timeline = { REMOVED_7_1_5 } }),	-- Robes of Koegler
					i(81564, { timeline = { REMOVED_7_1_5 } }),	-- Scorched Scarlet Key
					i(81565, { timeline = { REMOVED_7_1_5 } }),	-- Temperature-Sensing Necklace
					i(82818, { timeline = { REMOVED_7_1_5 } }),	-- Vellum-Ripper Gloves
					i(87550, { timeline = { REMOVED_7_1_5 } }),	-- Vithrak, Gaze of the Deadman
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8436, {	-- Challenge Master: Scarlet Halls
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(243) },	-- Flameweaver <Name>
				})),
				ach(6895),	-- Scarlet Halls Challenger
				ach(6908),	-- Scarlet Halls: Bronze
				ach(6909),	-- Scarlet Halls: Silver
				ach(6910, {	-- Scarlet Halls: Gold
					spell(131231),	-- Path of the Scarlet Blade
				}),
				-- #if ANYCLASSIC
				ach(61972, {	-- Scarlet Halls: Platinum
					i(265416),	-- Platinum Battle Banner
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(656, {	-- Flameweaver Koegler
						creatureID = 59150,	-- Flameweaver Koegler
						groups = appendGroups(
						{
							ach(60897),	-- Celestial: Scarlet Halls
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86906)),	-- Kilrak, Jaws of Terror (Terrace)
							i(86778),	-- Steelskin, Qiang's Impervious Shield
							i(86753),	-- Cloak of Peacock Feathers
							i(89967),	-- Feng's Seal of Binding
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86858)),	-- Seal of the Profane (HoF)
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95961),	-- Abandoned Zandalari Firecord
							i(95962),	-- Abandoned Zandalari Shadowgirdle
							i(95685),	-- Amulet of the Primal Turtle
							i(95711),	-- Breath of the Hydra
							i(95630),	-- Chestplate of Violent Detonation
							i(95740),	-- Chilblain Spaulders
							i(95765),	-- Clear-Mind Helm
							i(95819),	-- Grips of Slicing Electricity
							i(95713),	-- Hood of Smoldering Flesh
							i(95641),	-- Horridon's Last Gasp
							i(95658),	-- Horridon's Tusk Fragment
							i(95712),	-- Inscribed Bag of Hydra-Spawn
							i(95739),	-- Leggings of Pulsing Blood
							i(95821),	-- Lei Shen's Grounded Carapace
							i(95738),	-- Lifedrainer's Sordid Grip
							i(95793),	-- Passionfire Choker
							i(95659),	-- Petrified Eye of the Basilisk
							i(95792),	-- Robes of the Moon Lotus
							i(95960),	-- Scalehide Spurs
							i(95684),	-- Shell-Coated Wristplates
							i(95794),	-- Shield of Twinned Despair
							i(95767),	-- Spaulders of Primordial Growth
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(104974),	-- Assurance of Consequence
							i(104920),	-- Bolt-Burster Grips
							i(105118),	-- Bomber's Blackened Wristwatch
							i(105019),	-- Bracers of the Broken Fault
							i(99678),	-- Chest of the Cursed Conqueror
							i(105001),	-- Drakebinder Greatstaff
							i(99681),	-- Gauntlets of the Cursed Conqueror
							i(104929),	-- Greatbelt of Living Waters
							i(105145),	-- Greathelm of the Warchief
							i(99673),	-- Helm of the Cursed Protector
							i(105154),	-- Hopeglow Spaulders
							i(104911),	-- Hood of Blackened Tears
							i(105037),	-- Haromm's Frozen Crescent
							i(105127),	-- Korven's Crimson Crescent
							i(105136),	-- Kor'kron Spire of Supremacy
							i(104992),	-- Krugruk's Rigid Shoulderplates
							i(99676),	-- Leggings of the Cursed Protector
							i(99674),	-- Leggings of the Cursed Vanquisher
							i(104956),	-- Leggings of Unabashed Anger
							i(104939),	-- Poisonmist Nightcloak
							i(105010),	-- Precision Cutters
							i(105073),	-- Robes of Riven Dreams
							i(105054),	-- Robes of the Warrior's Fall
							i(104965),	-- Sash of the Last Guardian
							i(105091),	-- Seal of the Forgotten Kings
							i(104983),	-- Shield of Mockery
							i(105046),	-- Shoulderguards of Foul Streams
							i(99668),	-- Shoulders of the Cursed Vanquisher
							i(104947),	-- Shoulders of the Roiling Inferno
							i(105082),	-- Sigil of Rampage
							i(104938),	-- Sorrowpath Signet
							i(105109),	-- Thok's Acid-Grooved Tooth
							i(105064),	-- Wristguards of Ruination
						}),
						-- #endif
						{}),
					}),
				},
			})),
			-- #endif
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, {
		inst(311, {
			q(31636),	-- Scarlet Halls Challenge Mode - Bronze Addition (Nth)
			q(31630),	-- Scarlet Halls Challenge Mode - Consolation (Nth)
			q(31650),	-- Scarlet Halls Challenge Mode - Gold Addition (Nth)
			q(31643),	-- Scarlet Halls Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(311, {
			q(35606),	-- Scarlet Halls Reward Quest - Normal completion
			q(35607),	-- Scarlet Halls - Bonus Objective Reward Quest - kill Armsmaster Harlan
			q(35608),	-- Scarlet Halls Reward Quest - Heroic completion
			q(35609),	-- Scarlet Halls - Bonus Objective Reward Quest - kill Armsmaster Harlan (Heroic)
		}),
	}),
});
