-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local GU_CLOUDSTRIKE = 673;
local SNOWDRIFT = 657;
local SHA_OF_VIOLENCE = 685;
local TARAN_ZHU = 686;

------ EncounterToCRS ------
local EncounterToCRS = {
	[GU_CLOUDSTRIKE] = { 56747 },	-- Gu Cloudstrike
	[SNOWDRIFT] = { 56541 },	-- Master Snowdrift
	[SHA_OF_VIOLENCE] = { 56719 },	-- Sha of Violence
	[TARAN_ZHU] = { 56884 },	-- Taran Zhu
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_ONE, inst(312, {	-- Shado-Pan Monastery
		coord = { 36.8 ,47.7, KUN_LAI_SUMMIT},
		timeline = { ADDED_5_0_4 },
		maps = { SHADOPAN_MONASTERY, SHADOPAN_MONASTERY_CLOUDSTRIKE_DOJO, SHADOPAN_MONASTERY_SEALED_CHAMBERS, SHADOPAN_MONASTERY_SNOWDRIFT_DOJO },
		groups = {
			n(QUESTS, {
				q(31030, {	-- Into the Monastery
					sourceQuest = 30752,	-- Unbelievable!
					qg = 62227,	-- Ban Bearheart
					coord = { 36.6, 47.7, KUN_LAI_SUMMIT },
					isBreadcrumb = true,
				}),
				q(31031, {	-- Into the Monastery
					description = "This version is available if you abandon the other version.",
					sourceQuest = 30752,	-- Unbelievable!
					qg = 62227,	-- Ban Bearheart
					coord = { 35.3, 49.5, KUN_LAI_SUMMIT },
					isBreadcrumb = true,
				}),
				q(30757, {	-- Lord of the Shado-Pan
					sourceQuests = {
						31030,	-- Into the Monastery
						31031,	-- Into the Monastery
					},
					qg = 62236,	-- Ban Bearheart
					coord = { 84.8, 56.0, SHADOPAN_MONASTERY_CLOUDSTRIKE_DOJO },
					groups = {
						i(87319),	-- Antagonist's Headwrap
						i(87315),	-- Cowl of Angry Thoughts
						i(87321),	-- Cowl of Internal Strife
						i(87316),	-- Headcover of Disturbed Serenity
						i(87318),	-- Hood of Endless Agitation
						i(87322),	-- Helm of Enmity
						i(87323),	-- Helm of Unstable Temperament
						i(87320),	-- Headcover of the Impatient
						i(87317),	-- Vexing Coif
					},
				}),
				q(31342, {	-- The Path to Respect Lies in Violence
					qg = 56541,	-- Master Snowdrift
					coord = { 29.5, 73.0, SHADOPAN_MONASTERY },
					groups = {
						i(87327),	-- Cloudstriker Cord
						i(87332),	-- Cord of Disturbed Dreams
						i(87324),	-- Cord of Sha Savagery
						i(87329),	-- Elemental Archer's Links
						i(87331),	-- Girdle of the Broken Seal
						i(87325),	-- Kun-Lai Climbing Belt
						i(87326),	-- Sha-Trapper Waistguard
						i(87328),	-- Shado-Pan Initiate's Belt
						i(87330),	-- Monastery Guardian Waistguard
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				-- #if AFTER MOP
				n(56747, {	-- Gu Cloudstrike
					description = "Do not attack the Azure Serpent until Gu Cloudstrike made immune of all damage, otherwise Gu might remain immune for the following ten minutes!",
				}),
				-- #endif
				BossOnly(GU_CLOUDSTRIKE, {
					i(143961, { timeline = { ADDED_7_1_5 } }),	-- Azure Serpent Chestguard
					i(144127, { timeline = { ADDED_7_1_5 } }),	-- Cloudstrike Pendant
					i(143978, { timeline = { ADDED_7_1_5 } }),	-- Leggings of the Charging Soul
					i(144096, { timeline = { ADDED_7_1_5 } }),	-- Sparkbreath Girdle
					i(144126, { timeline = { ADDED_7_1_5 } }),	-- Star Summoner Bracers
				}),
				BossOnly(SNOWDRIFT, {
					i(144129, { timeline = { ADDED_7_1_5 } }),	-- Eye of the Tornado
					i(144106, { timeline = { ADDED_7_1_5 } }),	-- Gauntlets of Resolute Fury
					i(144128, { timeline = { ADDED_7_1_5 } }),	-- Heart of Fire
					i(144097, { timeline = { ADDED_7_1_5 } }),	-- Quivering Heart Girdle
					i(144110, { timeline = { ADDED_7_1_5 } }),	-- Snowdrift's Bladed Staff
				}),
				BossOnly(SHA_OF_VIOLENCE, {
					i(144131, { timeline = { ADDED_7_1_5 } }),	-- Bladed Smoke Bracers
					i(144099, { timeline = { ADDED_7_1_5 } }),	-- Crescent of Ichor
					i(144107, { timeline = { ADDED_7_1_5 } }),	-- Gloves of Enraged Slaughter
					i(144130, { timeline = { ADDED_7_1_5 } }),	-- Necklace of Disorientation
					i(143985, { timeline = { ADDED_7_1_5 } }),	-- Spike-Soled Stompers
				}),
				BossOnly(TARAN_ZHU, {
					ach(6469),	-- Shado-Pan Monastery
					i(143986, { timeline = { ADDED_7_1_5 } }),	-- Blastwalker Footguards
					i(143979, { timeline = { ADDED_7_1_5 } }),	-- Darkbinder Leggings
					i(143962, { timeline = { ADDED_7_1_5 } }),	-- Hateshatter Chestplate
					i(144215, { timeline = { ADDED_7_1_5 } }),	-- Ka'eng, Breath of the Shadow
					i(144108, { timeline = { ADDED_7_1_5 } }),	-- Mindbinder Plate Gloves
					i(144133, { timeline = { ADDED_7_1_5 } }),	-- Ring of Malice
					i(143990, { timeline = { ADDED_7_1_5 } }),	-- Robes of Fevered Dreams
					i(144132, { timeline = { ADDED_7_1_5 } }),	-- Seal of Hateful Meditation
					i(143981, { timeline = { ADDED_7_1_5 } }),	-- Shadowspine Shoulderguards
					i(144103, { timeline = { ADDED_7_1_5 } }),	-- Shield of Blind Hate
					i(144109, { timeline = { ADDED_7_1_5 } }),	-- Warmace of Taran Zhu
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(GU_CLOUDSTRIKE, {
					i(80909, { timeline = { REMOVED_7_1_5 } }),	-- Azure Serpent Chestguard
					i(80910, { timeline = { REMOVED_7_1_5 } }),	-- Leggings of the Charging Soul
					i(80908, { timeline = { REMOVED_7_1_5 } }),	-- Sparkbreath Girdle
				}),
				BossOnly(SNOWDRIFT, {
					i(80912, { timeline = { REMOVED_7_1_5 } }),	-- Gauntlets of Resolute Fury
					i(80911, { timeline = { REMOVED_7_1_5 } }),	-- Quivering Heart Girdle
					i(80937, { timeline = { REMOVED_7_1_5 } }),	-- Snowdrift's Bladed Staff
				}),
				BossOnly(SHA_OF_VIOLENCE, {
					i(80883, { timeline = { REMOVED_7_1_5 } }),	-- Crescent of Ichor
					i(80913, { timeline = { REMOVED_7_1_5 } }),	-- Gloves of Enraged Slaughter
					i(80915, { timeline = { REMOVED_7_1_5 } }),	-- Spike-Soled Stompers
				}),
				BossOnly(TARAN_ZHU, {
					i(80917, { timeline = { REMOVED_7_1_5 } }),	-- Blastwalker Footguards
					i(80919, { timeline = { REMOVED_7_1_5 } }),	-- Darkbinder Leggings
					i(80918, { timeline = { REMOVED_7_1_5 } }),	-- Mindbinder Plate Gloves
					i(80916, { timeline = { REMOVED_7_1_5 } }),	-- Shadowspine Shoulderguards
					i(80935, { timeline = { REMOVED_7_1_5 } }),	-- Shield of Blind Hate
					i(80936, { timeline = { REMOVED_7_1_5 } }),	-- Warmace of Taran Zhu
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(GU_CLOUDSTRIKE, {
					i(81110, { timeline = { REMOVED_7_1_5 } }),	-- Azure Serpent Chestguard
					i(81180, { timeline = { REMOVED_7_1_5 } }),	-- Cloudstrike Pendant
					i(81092, { timeline = { REMOVED_7_1_5 } }),	-- Leggings of the Charging Soul
					i(81086, { timeline = { REMOVED_7_1_5 } }),	-- Sparkbreath Girdle
					i(81179, { timeline = { REMOVED_7_1_5 } }),	-- Star Summoner Bracers
				}),
				BossOnly(SNOWDRIFT, {
					ach(6477),	-- Respect
					i(81182, { timeline = { REMOVED_7_1_5 } }),	-- Eye of the Tornado
					i(81101, { timeline = { REMOVED_7_1_5 } }),	-- Gauntlets of Resolute Fury
					i(81181, { timeline = { REMOVED_7_1_5 } }),	-- Heart of Fire
					i(81087, { timeline = { REMOVED_7_1_5 } }),	-- Quivering Heart Girdle
					i(81108, { timeline = { REMOVED_7_1_5 } }),	-- Snowdrift's Bladed Staff
				}),
				BossOnly(SHA_OF_VIOLENCE, {
					ach(6472),	-- The Obvious Solution
					i(81185, { timeline = { REMOVED_7_1_5 } }),	-- Bladed Smoke Bracers
					i(81089, { timeline = { REMOVED_7_1_5 } }),	-- Crescent of Ichor
					i(81102, { timeline = { REMOVED_7_1_5 } }),	-- Gloves of Enraged Slaughter
					i(81184, { timeline = { REMOVED_7_1_5 } }),	-- Necklace of Disorientation
					i(81113, { timeline = { REMOVED_7_1_5 } }),	-- Spike-Soled Stompers
				}),
				BossOnly(TARAN_ZHU, {
					ach(6471),	-- Hate Leads to Suffering
					ach(6470),	-- Heroic: Shado-Pan Monastery
					ach(6767),	-- Heroic: Shado-Pan Monastery Guild Run
					i(81114, { timeline = { REMOVED_7_1_5 } }),	-- Blastwalker Footguards
					i(81093, { timeline = { REMOVED_7_1_5 } }),	-- Darkbinder Leggings
					i(81187, { timeline = { REMOVED_7_1_5 } }),	-- Hateshatter Chestplate
					i(87543, { timeline = { REMOVED_7_1_5 } }),	-- Ka'eng, Breath of the Shadow
					i(81103, { timeline = { REMOVED_7_1_5 } }),	-- Mindbinder Plate Gloves
					i(81189, { timeline = { REMOVED_7_1_5 } }),	-- Ring of Malice
					i(81188, { timeline = { REMOVED_7_1_5 } }),	-- Robes of Fevered Dreams
					i(81186, { timeline = { REMOVED_7_1_5 } }),	-- Seal of Hateful Meditation
					i(81099, { timeline = { REMOVED_7_1_5 } }),	-- Shadowspine Shoulderguards
					i(81096, { timeline = { REMOVED_7_1_5 } }),	-- Shield of Blind Hate
					i(81107, { timeline = { REMOVED_7_1_5 } }),	-- Warmace of Taran Zhu
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8432, {	-- Challenge Master: Shado-Pan Monastery
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(246) },	-- Purified Defender <Name>
				})),
				ach(6893),	-- Shado-Pan Monastery Challenger
				ach(6902),	-- Shado-Pan Monastery: Bronze
				ach(6903),	-- Shado-Pan Monastery: Silver
				ach(6904, {	-- Shado-Pan Monastery: Gold
					spell(131206),	-- Path of the Shado-Pan
				}),
				-- #if ANYCLASSIC
				ach(61970, {	-- Shado-Pan Monastery: Platinum
					i(265419),	-- Platinum Potion of Invisibility
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(686, {	-- Taran Zhu
						creatureID = 56884,	-- Taran Zhu
						groups = appendGroups(
						{
							ach(60895),	-- Celestial: Shado-Pan Monastery
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							i(86739),	-- Beads of the Mogu'shi
							i(86805),	-- Qin-xi's Polarizing Seal
							i(86777),	-- Screaming Tiger, Qiang's Unbreakable Polearm
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86905)),	-- Shin'ka, Execution of Dominion (Terrace)
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86813)),	-- Vizier's Ruby Signet (HoF)
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86873)),	-- Watersoul Signet (Terrace)
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95776),	-- Anima-Ringed Fingers
							i(95774),	-- Athame of the Sanguine Ritual
							i(95639),	-- Drape of Booming Nights
							i(95721),	-- Featherflight Belt
							i(95720),	-- Giorgio's Caduceus of Pure Moods
							i(95749),	-- Gloves of Cushioned Air
							i(95722),	-- Grasp of the Ruthless Mother
							i(95642),	-- Infinitely Conducting Bracers
							i(95666),	-- Kura-Kura, Kazra'jin's Skullcleaver
							i(95747),	-- Legplates of Re-Emergence
							i(95863),	-- Lost Shoulders of Fire
							i(95865),	-- Lost Shoulders of Fluidity
							i(95864),	-- Lost Shoulders of Healing
							i(95667),	-- Mar'li's Bloodstained Sandals
							i(95969),	-- Necklace of the Terra-Cotta Mender
							i(95694),	-- Robes of Concussive Shocks
							i(95803),	-- Shan-Dun, Breaker of Hope
							i(95748),	-- Talisman of Bloodlust
							i(95693),	-- Vampire Bat-Hide Bracers
							i(95668),	-- Zandalari Robes of the Final Rite
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(105148),	-- Belt of the Broken Pact
							i(104995),	-- Bone-Inlaid Sandals
							i(105112),	-- Britomart's Jagged Pike
							i(105121),	-- Calixian Bladebreakers
							i(104914),	-- Chestplate of Congealed Corrosion
							i(104923),	-- Cloak of Misguided Power
							i(105057),	-- Gar'tok, Strength of the Faithful
							i(99681),	-- Gauntlets of the Cursed Conqueror
							i(99667),	-- Gauntlets of the Cursed Protector
							i(104977),	-- Gaze of Arrogance
							i(104950),	-- Grips of the Fallen Council
							i(105103),	-- Hvitserk's Formidable Shanker
							i(105040),	-- Iron Wolf Hood
							i(105130),	-- Iyyokuk's Hereditary Seal
							i(105022),	-- Laser-Slice Signet
							i(99675),	-- Leggings of the Cursed Conqueror
							i(105094),	-- Mantid Vizier's Robes
							i(105049),	-- Nazgrim's Gutripper
							i(104959),	-- Rage-Blind Greathelm
							i(105031),	-- Riou's Vigilant Leggings
							i(105076),	-- Seal of Sullen Fury
							i(104941),	-- Sha-Seared Sandals
							i(105004),	-- Smoldering Drakescale Bracers
							i(104932),	-- Softfoot's Last Resort
							i(105013),	-- Tar-Coated Gauntlets
							i(104986),	-- Unrepentant Heels
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
		inst(312, {
			q(31632),	-- Shado-Pan Monastery Challenge Mode - Bronze Addition (Nth)
			q(31625),	-- Shado-Pan Monastery Challenge Mode - Consolation (Nth)
			q(31646),	-- Shado-Pan Monastery Challenge Mode - Gold Addition (Nth)
			q(31639),	-- Shado-Pan Monastery Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(312, {
			q(35319),	-- Shado-Pan Monastery Reward Quest - Normal completion
			q(35320),	-- Shado-Pan Monastery Reward Quest - Heroic completion
		}),
	}),
});
