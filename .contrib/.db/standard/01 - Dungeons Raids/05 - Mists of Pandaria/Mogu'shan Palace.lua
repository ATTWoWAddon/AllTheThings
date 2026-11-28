-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TRIAL_OF_THE_KING = 708;
local GEKKAN = 690;
local XIN = 698;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TRIAL_OF_THE_KING] = {
		61445,	-- Haiyan the Unstoppable
		61442,	-- Kuai the Brute
		61444,	-- Ming the Cunning
	},
	[GEKKAN] = { 61243 },	-- Gekkan
	[XIN] = { 61398 },	-- Xin the Weaponmaster
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_ONE, inst(321, {	-- Mogu'shan Palace
		coord = { 80.5, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
		timeline = { ADDED_5_0_4 },
		maps = {
			MOGUSHAN_PALACE_THE_CRIMSON_ASSEMBLY_HALL,
			MOGUSHAN_PALACE_THRONE_OF_ANCIENT_CONQUERORS,
			MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST,
			-- #if AFTER 10.2.7
			1546,	-- Mogu'shan Palace (reported a lot on Remix)
			-- #endif
		},
		groups = {
			n(QUESTS, {
				q(31360, {	-- A New Lesson for the Master
					provider = { "n", 64432 },	-- Sinan the Dreamer
					coord = { 38.8, 81.8, 455 },
					groups = {
						objective(1, {	-- 0/1 Xin the Weaponmaster slain
							provider = { "n", 61398 },	-- Xin the Weaponmaster
						}),
						i(87337),	-- Deposer's Leggings
						i(87334),	-- Dreamer's Vigil Leggings
						i(87335),	-- Leggings of Clever Entrapment
						i(87339),	-- Leggings of Forceful Instruction
						i(87338),	-- Leggings of the Empty Throne
						i(87336),	-- Legplates of the Scattered Tribes
						i(87340),	-- Mogu Warlord Legguards
						i(87333),	-- Watchful Dreamer's Trousers
						i(87341),	-- Weaponmaster's Legplates
					},
				}),
				q(31357, {	-- Relics of the Four Kings
					qg = 64432,	-- Sinan the Dreamer
					coord = { 38.8, 81.8, MOGUSHAN_PALACE_THRONE_OF_ANCIENT_CONQUERORS },
					groups = {
						objective(1, {	-- 0/1 Lantern of the Sorcerer King
							providers = {
								{ "i", 86476 },	-- Lantern of the Sorcerer King
								{ "o", 214824 },	-- Ancient Mogu Chest
							},
							coord = { 54.9, 53.9, MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST },
						}),
						objective(2, {	-- 0/1 Mad King Meng's Balance
							providers = {
								{ "i", 86477 },	-- Mad King Meng's Balance
								{ "o", 214825 },	-- Ancient Mogu Chest
							},
							coord = { 55.8, 53.2, MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST },
						}),
						objective(3, {	-- 0/1 Qiang's "The Science of War"
							providers = {
								{ "i", 86478 },	-- Qiang's "The Science of War"
								{ "o", 214826 },	-- Ancient Mogu Chest
							},
							coord = { 55.1, 58.0, MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST },
						}),
						objective(4, {	-- 0/1 Subetai's Bow of the Swift
							providers = {
								{ "i", 86479 },	-- Subetai's Bow of the Swift
								{ "o", 214827 },	-- Ancient Mogu Chest
							},
							coord = { 58.5, 57.0, MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST },
						}),
						i(87346),	-- Armbands of the Reawakened
						i(87349),	-- Armplates of Martial Artistry
						i(87345),	-- Bindings of Impeccable Strategy
						i(87348),	-- Bracers of Inner Knowledge
						i(87343),	-- Bracers of Swift Wrath
						i(87344),	-- Cuffs of the Endless Shadow
						i(87347),	-- Lost Heritage Bracers
						i(87350),	-- Poet-King's Vambraces
						i(87342),	-- Subjugation Bracers
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(87806, {	-- Ancient Mogu Key
					crs = {
						61216,	-- Glintrok Hexxer
						61242,	-- Glintrok Ironhide
						61239,	-- Glintrok Oracle
						61240,	-- Glintrok Skulker
					},
				}),
				i(89427, {	-- Ancient Mogu Treasure
					description = "Contains some gold and a several green-quality gems.",
					cost = { { "i", 87806, 1 } },	-- 1x Ancient Mogu Key
				}),
				i(89428, {	-- Ancient Mogu Treasure
					description = "Contains some gold and a several green-quality gems.",
					cost = { { "i", 87806, 1 } },	-- 1x Ancient Mogu Key
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(TRIAL_OF_THE_KING, {
					i(144145, { timeline = { ADDED_7_1_5 } }),	-- Conflagrating Gloves
					i(144020, { timeline = { ADDED_7_1_5 } }),	-- Crest of the Clan Lords
					i(144143, { timeline = { ADDED_7_1_5 } }),	-- Hurricane Belt
					i(144021, { timeline = { ADDED_7_1_5 } }),	-- Meteoric Greathelm
					i(144144, { timeline = { ADDED_7_1_5 } }),	-- Whirling Dervish Choker
				}),
				BossOnly(GEKKAN, {
					i(144148, { timeline = { ADDED_7_1_5 } }),	-- Claws of Gekkan
					i(144147, { timeline = { ADDED_7_1_5 } }),	-- Cloak of Cleansing Flame
					i(143992, { timeline = { ADDED_7_1_5 } }),	-- Glintrok Sollerets
					i(144149, { timeline = { ADDED_7_1_5 } }),	-- Hexxer's Lethargic Gloves
					i(144146, { timeline = { ADDED_7_1_5 } }),	-- Iron Protector Talisman
				}),
				BossOnly(XIN, {
					ach(6755),	-- Mogu'shan Palace
					i(144151, { timeline = { ADDED_7_1_5 } }),	-- Axebreaker Gauntlets
					i(144152, { timeline = { ADDED_7_1_5 } }),	-- Blade Trap Signet
					i(143993, { timeline = { ADDED_7_1_5 } }),	-- Boots of Plummeting Death
					i(144154, { timeline = { ADDED_7_1_5 } }),	-- Firescribe Dagger
					i(144150, { timeline = { ADDED_7_1_5 } }),	-- Ghostheart
					i(144153, { timeline = { ADDED_7_1_5 } }),	-- Groundshaker Bracers
					i(143956, { timeline = { ADDED_7_1_5 } }),	-- Mind's Eye Breastplate
					i(144155, { timeline = { ADDED_7_1_5 } }),	-- Mindcapture Pendant
					i(144214, { timeline = { ADDED_7_1_5 } }),	-- Mogu'Dar, Blade of the Thousand Slaves
					i(143995, { timeline = { ADDED_7_1_5 } }),	-- Regal Silk Shoulderpads
					i(143994, { timeline = { ADDED_7_1_5 } }),	-- Soulbinder Treads
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(TRIAL_OF_THE_KING, {
					i(85178, { timeline = { REMOVED_7_1_5 } }),	-- Conflagrating Gloves
					i(85175, { timeline = { REMOVED_7_1_5 } }),	-- Crest of the Clan Lords
					i(85176, { timeline = { REMOVED_7_1_5 } }),	-- Hurricane Belt
					i(85179, { timeline = { REMOVED_7_1_5 } }),	-- Meteoric Greathelm
					i(85177, { timeline = { REMOVED_7_1_5 } }),	-- Whirling Dervish Choker
				}),
				BossOnly(GEKKAN, {
					i(85183, { timeline = { REMOVED_7_1_5 } }),	-- Claws of Gekkan
					i(85182, { timeline = { REMOVED_7_1_5 } }),	-- Cloak of Cleansing Flame
					i(85180, { timeline = { REMOVED_7_1_5 } }),	-- Glintrok Sollerets
					i(85184, { timeline = { REMOVED_7_1_5 } }),	-- Hexxer's Lethargic Gloves
					i(85181, { timeline = { REMOVED_7_1_5 } }),	-- Iron Protector Talisman
				}),
				BossOnly(XIN, {
					i(85186, { timeline = { REMOVED_7_1_5 } }),	-- Axebreaker Gauntlets
					i(85188, { timeline = { REMOVED_7_1_5 } }),	-- Blade Trap Signet
					i(85187, { timeline = { REMOVED_7_1_5 } }),	-- Boots of Plummeting Death
					i(85190, { timeline = { REMOVED_7_1_5 } }),	-- Firescribe Dagger
					i(85185, { timeline = { REMOVED_7_1_5 } }),	-- Ghostheart
					i(85189, { timeline = { REMOVED_7_1_5 } }),	-- Groundshaker Bracers
					i(85193, { timeline = { REMOVED_7_1_5 } }),	-- Mind's Eye Breastplate
					i(85191, { timeline = { REMOVED_7_1_5 } }),	-- Mindcapture Pendant
					i(85194, { timeline = { REMOVED_7_1_5 } }),	-- Regal Silk Shoulderpads
					i(85192, { timeline = { REMOVED_7_1_5 } }),	-- Soulbinder Treads
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				n(ACHIEVEMENTS, {
					ach(6713),	-- Quarrelsome Quilen Quintet
				}),
				BossOnly(TRIAL_OF_THE_KING, {
					i(81240, { timeline = { REMOVED_7_1_5 } }),	-- Conflagrating Gloves
					i(81237, { timeline = { REMOVED_7_1_5 } }),	-- Crest of the Clan Lords
					i(81238, { timeline = { REMOVED_7_1_5 } }),	-- Hurricane Belt
					i(81241, { timeline = { REMOVED_7_1_5 } }),	-- Meteoric Greathelm
					i(81239, { timeline = { REMOVED_7_1_5 } }),	-- Whirling Dervish Choker
				}),
				BossOnly(GEKKAN, {
					ach(6478),	-- Glintrok N' Roll
					i(81245, { timeline = { REMOVED_7_1_5 } }),	-- Claws of Gekkan
					i(81244, { timeline = { REMOVED_7_1_5 } }),	-- Cloak of Cleansing Flame
					i(81242, { timeline = { REMOVED_7_1_5 } }),	-- Glintrok Sollerets
					i(81246, { timeline = { REMOVED_7_1_5 } }),	-- Hexxer's Lethargic Gloves
					i(81243, { timeline = { REMOVED_7_1_5 } }),	-- Iron Protector Talisman
				}),
				BossOnly(XIN, {
					ach(6756),	-- Heroic: Mogu'shan Palace
					ach(6766),	-- Heroic: Mogu'shan Palace Guild Run
					ach(6736, {	-- What Does This Button Do?
						description = "At 66% health the button on southeast side becomes interactable, and at 33% health the button on the northwest side becomes interactable. Interact with the second button within 5 seconds after interacting with the first, and pull the boss to either of the laser beams.\n\nWarning: Addons might interfere with the recognition of the achievement objective.",
					}),
					i(81248, { timeline = { REMOVED_7_1_5 } }),	-- Axebreaker Gauntlets
					i(81251, { timeline = { REMOVED_7_1_5 } }),	-- Blade Trap Signet
					i(81249, { timeline = { REMOVED_7_1_5 } }),	-- Boots of Plummeting Death
					i(81253, { timeline = { REMOVED_7_1_5 } }),	-- Firescribe Dagger
					i(81247, { timeline = { REMOVED_7_1_5 } }),	-- Ghostheart
					i(81252, { timeline = { REMOVED_7_1_5 } }),	-- Groundshaker Bracers
					i(81256, { timeline = { REMOVED_7_1_5 } }),	-- Mind's Eye Breastplate
					i(81254, { timeline = { REMOVED_7_1_5 } }),	-- Mindcapture Pendant
					i(87542, { timeline = { REMOVED_7_1_5 } }),	-- Mogu'Dar, Blade of the Thousand Slaves
					i(81257, { timeline = { REMOVED_7_1_5 } }),	-- Regal Silk Shoulderpads
					i(81255, { timeline = { REMOVED_7_1_5 } }),	-- Soulbinder Treads
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8433, {	-- Challenge Master: Mogu'shan Palace
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(242) },	-- Mogu-Slayer <Name>
				})),
				ach(6892),	-- Mogu'shan Palace Challenger
				ach(6899),	-- Mogu'shan Palace: Bronze
				ach(6900),	-- Mogu'shan Palace: Silver
				ach(6901, {	-- Mogu'shan Palace: Gold
					spell(131222),	-- Path of the Mogu King
				}),
				-- #if ANYCLASSIC
				ach(61969, {	-- Mogu'shan Palace: Platinum
					i(265417),	-- Platinum Battle Horn
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(698, {	-- Xin the Weaponmaster
						creatureID = 61398,	-- Xin the Weaponmaster
						groups = appendGroups(
						{
							ach(60894),	-- Celestial: Mogu'shan Palace
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							i(86748),	-- Cape of Three Lanterns
							i(86789),	-- Elegion, the Fanged Crescent
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86886)),	-- Loshan, Terror Incarnate (Terrace)
							i(89952),	-- Pheromone-Coated Choker
							i(86790),	-- Vial of Dragon's Blood
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95735),	-- Artery Rippers
							i(95681),	-- Beady-Eye Bracers
							i(95762),	-- Bracers of Fragile Bone
							i(95629),	-- Cloudbreaker Greatbelt
							i(95657),	-- Dinomancer's Spiritbinding Spire
							i(95737),	-- Durumu's Severed Tentacle
							i(95710),	-- Fetish of the Hydra
							i(95655),	-- Flamecaster's Burning Crown
							i(95708),	-- Frostborn Wristwraps
							i(95764),	-- Leggings of the Malformed Sapling
							i(95818),	-- Lei Shen's Orb of Command
							i(95817),	-- Lightning-Imbued Chalice
							i(95709),	-- Megaera's Shining Eye
							i(95958),	-- Necklace of the Terra-Cotta Archer
							i(95790),	-- Qon's Flaming Scimitar
							i(95682),	-- Quakestompers
							i(95789),	-- Rein-binder's Fists
							i(95736),	-- Reinforced Mirror-Sheen Cloak
							i(95816),	-- Soul Prism of Lei Shen
							i(95640),	-- Soulblade of the Breaking Storm
							i(95627),	-- Spearman's Jingling Leggings
							i(95959),	-- Spiderweb Tabi
							i(95628),	-- Static-Shot Shoulderguards
							i(95763),	-- Stolen Relic of Zuldazar
							i(95656),	-- Vaccinator's Armwraps
							i(95878),	-- Visage of the Doomed
							i(95791),	-- Wu-Lai, Bladed Fan of the Empyreans
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(104991),	-- Arcsmasher Bracers
							i(105045),	-- Belt of the Iron Prison
							i(104964),	-- Blight Hurlers
							i(105036),	-- Bloodclaw Band
							i(105027),	-- Borer Drill Boots
							i(99679),	-- Chest of the Cursed Protector
							i(99677),	-- Chest of the Cursed Vanquisher
							i(105099),	-- Chitin-Link Chain Belt
							i(104982),	-- Choker of the Final Word
							i(105117),	-- Dysmorphic Samophlange of Discontinuity
							i(104919),	-- Encapsulated Essence of Immerseus
							i(105000),	-- Extinguished Ember of Galakras
							i(99681),	-- Gauntlets of the Cursed Conqueror
							i(99680),	-- Gauntlets of the Cursed Vanquisher
							i(104955),	-- Gloves of the Golden Protector
							i(99673),	-- Helm of the Cursed Protector
							i(105072),	-- Hood of Perpetual Implosion
							i(105126),	-- Kil'ruk's Band of Ascendancy
							i(105135),	-- Kil'ruk's Furious Blade
							i(105063),	-- Lazahk's Lost Shadowrap
							i(105018),	-- Leggings of Furious Flame
							i(99675),	-- Leggings of the Cursed Conqueror
							i(99676),	-- Leggings of the Cursed Protector
							i(105009),	-- Minelayer's Padded Boots
							i(105090),	-- Ominous Mogu Greatboots
							i(104946),	-- Purehearted Cricket Cage
							i(105153),	-- Seal of Karmic Return
							i(104937),	-- Shockstriker Gauntlets
							i(105053),	-- Shoulderguards of the Righteous Stand
							i(99668),	-- Shoulders of the Cursed Vanquisher
							i(105108),	-- Signet of the Dinomancers
							i(104928),	-- Soul-Soaked Gloves
							i(105081),	-- Terrorguard Chestplate
							i(104910),	-- Trident of Corrupted Waters
							i(104973),	-- Wristplates of Broken Doubt
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
		inst(321, {
			q(31634),	-- Mogu'shan Palace Challenge Mode - Bronze Addition (Nth)
			q(31627),	-- Mogu'shan Palace Challenge Mode - Consolation (Nth)
			q(31648),	-- Mogu'shan Palace Challenge Mode - Gold Addition (Nth)
			q(31641),	-- Mogu'shan Palace Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(321, {
			q(35318),	-- Mogu'shan Palace Reward Quest - Normal completion
			q(35321),	-- Mogu'shan Palace Reward Quest - Heroic completion
		}),
	}),
});
