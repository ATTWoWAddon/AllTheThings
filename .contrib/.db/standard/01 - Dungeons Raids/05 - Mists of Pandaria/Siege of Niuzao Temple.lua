-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local PAVALAK = 692;
local JINBAK = 693;
local NERONOK = 727;
local VOJAK = 738;

------ EncounterToCRS ------
local EncounterToCRS = {
	[PAVALAK] = { 61485 },	-- General Pa'valak
	[JINBAK] = { 61567 },	-- Vizier Jin'bak
	[NERONOK] = { 62205 },	-- Wing Leader Ner'onok
	[VOJAK] = { 61634 },	-- Commander Vo'jak
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_ONE, inst(324, {	-- Siege of Niuzao Temple
		coord = { 35.0, 82.0, TOWNLONG_STEPPES },
		timeline = { ADDED_5_0_4 },
		maps = { SIEGE_OF_NIUZAO_TEMPLE, SIEGE_OF_NIUZAO_TEMPLE_THE_HOLLOWED_OUT_TREE, SIEGE_OF_NIUZAO_TEMPLE_UPPER_TREE_RING },
		groups = {
			n(QUESTS, {
				q(31365, {	-- Somewhere Inside
					qg = 64517,	-- Shado-Master Chum Kiu
					coord = { 58.0, 23.0, SIEGE_OF_NIUZAO_TEMPLE },
					groups = {
						objective(1, {	-- 0/12 Shado-Pan Prisoner freed
							provider = { "n", 64520 },	-- Shado-Pan Prisoner
						}),
					},
				}),
				q(31366, {	-- Take Down the Wing Leader
					qg = 64517,	-- Shado-Master Chum Kiu
					coord = { 58.0, 23.0, SIEGE_OF_NIUZAO_TEMPLE },
					groups = {
						objective(1, {	-- 0/1 Wing Leader Ner'onok slain
							provider = { "n", 62205 },	-- Wing Leader Ner'onok
						}),
						i(87356),	-- Badge of the Amber Siege
						i(87357),	-- Bridge Breaker Medallion
						i(87358),	-- Hardened Resin Pendant
						i(87359),	-- Mantid Eye Amulet
						i(87360),	-- Saboteur's Locket
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(JINBAK, {
					i(144162, { timeline = { ADDED_7_1_5 } }),	-- Engraved Amber Pendant
					i(144156, { timeline = { ADDED_7_1_5 } }),	-- Flashfrozen Resin Globule
					i(144163, { timeline = { ADDED_7_1_5 } }),	-- Girdle of Soothing Detonation
					i(144022, { timeline = { ADDED_7_1_5 } }),	-- Hood of Viridian Residue
					i(143996, { timeline = { ADDED_7_1_5 } }),	-- Sap-Encrusted Legplates
				}),
				BossOnly(VOJAK, {
					i(144166, { timeline = { ADDED_7_1_5 } }),	-- Archer's Precision Grips
					i(144165, { timeline = { ADDED_7_1_5 } }),	-- Bombardment Bracers
					i(143963, { timeline = { ADDED_7_1_5 } }),	-- Chestwrap of Arcing Flame
					i(144164, { timeline = { ADDED_7_1_5 } }),	-- Siege-Captain's Scimitar
					i(144023, { timeline = { ADDED_7_1_5 } }),	-- Sightfinder Helm
				}),
				BossOnly(PAVALAK, {
					i(144170, { timeline = { ADDED_7_1_5 } }),	-- Aerial Bombardment Cloak
					i(144169, { timeline = { ADDED_7_1_5 } }),	-- Breezebinder Handwraps
					i(144168, { timeline = { ADDED_7_1_5 } }),	-- Siegeworn Bracers
					i(144167, { timeline = { ADDED_7_1_5 } }),	-- Tempestuous Longbow
					i(144157, { timeline = { ADDED_7_1_5 } }),	-- Vial of Ichorous Blood
				}),
				BossOnly(NERONOK, {
					ach(10011, { timeline = { ADDED_6_2_0 } }),	-- Siege of Niuzao Temple
					i(144000, { timeline = { ADDED_7_1_5 } }),	-- Airbender Sandals
					i(143997, { timeline = { ADDED_7_1_5 } }),	-- Anchoring Sabatons
					i(144173, { timeline = { ADDED_7_1_5 } }),	-- Belt of Totemic Binding
					i(144025, { timeline = { ADDED_7_1_5 } }),	-- Breezeswept Hood
					i(143964, { timeline = { ADDED_7_1_5 } }),	-- Galedodger Chestguard
					i(144172, { timeline = { ADDED_7_1_5 } }),	-- Gustwalker Staff
					i(144171, { timeline = { ADDED_7_1_5 } }),	-- Ner'onok's Razor Katar
					i(143998, { timeline = { ADDED_7_1_5 } }),	-- Spaulders of Immovable Stone
					i(144219, { timeline = { ADDED_7_1_5 } }),	-- Tolakesh, Horn of the Black Ox
					i(143999, { timeline = { ADDED_7_1_5 } }),	-- Whisperwind Spaulders
					i(144024, { timeline = { ADDED_7_1_5 } }),	-- Windblast Helm
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { ADDED_5_4_0 } }).AddGroups({
				BossOnly(JINBAK, {
					i(100950, { timeline = { REMOVED_7_1_5 } }),	-- Engraved Amber Pendant
					i(100951, { timeline = { REMOVED_7_1_5 } }),	-- Flashfrozen Resin Globule
					i(100953, { timeline = { REMOVED_7_1_5 } }),	-- Girdle of Soothing Detonation
					i(100952, { timeline = { REMOVED_7_1_5 } }),	-- Hood of Viridian Residue
					i(100954, { timeline = { REMOVED_7_1_5 } }),	-- Sap-Encrusted Legplates
				}),
				BossOnly(VOJAK, {
					i(100958, { timeline = { REMOVED_7_1_5 } }),	-- Archer's Precision Grips
					i(100956, { timeline = { REMOVED_7_1_5 } }),	-- Bombardment Bracers
					i(100957, { timeline = { REMOVED_7_1_5 } }),	-- Chestwrap of Arcing Flame
					i(100955, { timeline = { REMOVED_7_1_5 } }),	-- Siege-Captain's Scimitar
					i(100959, { timeline = { REMOVED_7_1_5 } }),	-- Sightfinder Helm
				}),
				BossOnly(PAVALAK, {
					i(100961, { timeline = { REMOVED_7_1_5 } }),	-- Aerial Bombardment Cloak
					i(100962, { timeline = { REMOVED_7_1_5 } }),	-- Breezebinder Handwraps
					i(100964, { timeline = { REMOVED_7_1_5 } }),	-- Siegeworn Bracers
					i(100960, { timeline = { REMOVED_7_1_5 } }),	-- Tempestuous Longbow
					i(100963, { timeline = { REMOVED_7_1_5 } }),	-- Vial of Ichorous Blood
				}),
				BossOnly(NERONOK, {
					i(100975, { timeline = { REMOVED_7_1_5 } }),	-- Airbender Sandals
					i(100969, { timeline = { REMOVED_7_1_5 } }),	-- Anchoring Sabatons
					i(100974, { timeline = { REMOVED_7_1_5 } }),	-- Belt of Totemic Binding
					i(100971, { timeline = { REMOVED_7_1_5 } }),	-- Breezeswept Hood
					i(100968, { timeline = { REMOVED_7_1_5 } }),	-- Galedodger Chestguard
					i(100973, { timeline = { REMOVED_7_1_5 } }),	-- Gustwalker Staff
					i(100965, { timeline = { REMOVED_7_1_5 } }),	-- Ner'onok's Razor Katar
					i(100970, { timeline = { REMOVED_7_1_5 } }),	-- Spaulders of Immovable Stone
					i(100966, {	-- Tolakesh, Horn of the Black Ox
						-- #if BEFORE WOD
						-- CRIEVE NOTE: This may be available in MOP Classic, keep an eye on it.
						isBounty = true,
						-- #endif
						timeline = { CREATED_5_4_0 },
					}),
					i(100972, { timeline = { REMOVED_7_1_5 } }),	-- Whisperwind Spaulders
					i(100967, { timeline = { REMOVED_7_1_5 } }),	-- Windblast Helm
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				BossOnly(JINBAK, {
					i(81271, { timeline = { REMOVED_7_1_5 } }),	-- Engraved Amber Pendant
					i(81263, { timeline = { REMOVED_7_1_5 } }),	-- Flashfrozen Resin Globule
					i(81272, { timeline = { REMOVED_7_1_5 } }),	-- Girdle of Soothing Detonation
					i(81262, { timeline = { REMOVED_7_1_5 } }),	-- Hood of Viridian Residue
					i(81270, { timeline = { REMOVED_7_1_5 } }),	-- Sap-Encrusted Legplates
				}),
				BossOnly(VOJAK, {
					ach(6688),	-- Where's My Air Support?
					i(81277, { timeline = { REMOVED_7_1_5 } }),	-- Archer's Precision Grips
					i(81276, { timeline = { REMOVED_7_1_5 } }),	-- Bombardment Bracers
					i(81275, { timeline = { REMOVED_7_1_5 } }),	-- Chestwrap of Arcing Flame
					i(81273, { timeline = { REMOVED_7_1_5 } }),	-- Siege-Captain's Scimitar
					i(81274, { timeline = { REMOVED_7_1_5 } }),	-- Sightfinder Helm
				}),
				BossOnly(PAVALAK, {
					ach(6485),	-- Return to Sender
					i(81282, { timeline = { REMOVED_7_1_5 } }),	-- Aerial Bombardment Cloak
					i(81281, { timeline = { REMOVED_7_1_5 } }),	-- Breezebinder Handwraps
					i(81280, { timeline = { REMOVED_7_1_5 } }),	-- Siegeworn Bracers
					i(81279, { timeline = { REMOVED_7_1_5 } }),	-- Tempestuous Longbow
					i(81264, { timeline = { REMOVED_7_1_5 } }),	-- Vial of Ichorous Blood
				}),
				BossOnly(NERONOK, {
					ach(6763),	-- Heroic: Siege of Niuzao Temple
					ach(6772),	-- Heroic: Siege of Niuzao Temple Guild Run
					ach(6822),	-- Run with the Wind
					i(81292, { timeline = { REMOVED_7_1_5 } }),	-- Airbender Sandals
					i(81284, { timeline = { REMOVED_7_1_5 } }),	-- Anchoring Sabatons
					i(81290, { timeline = { REMOVED_7_1_5 } }),	-- Belt of Totemic Binding
					i(81289, { timeline = { REMOVED_7_1_5 } }),	-- Breezeswept Hood
					i(81285, { timeline = { REMOVED_7_1_5 } }),	-- Galedodger Chestguard
					i(81288, { timeline = { REMOVED_7_1_5 } }),	-- Gustwalker Staff
					i(81286, { timeline = { REMOVED_7_1_5 } }),	-- Ner'onok's Razor Katar
					i(81287, { timeline = { REMOVED_7_1_5 } }),	-- Spaulders of Immovable Stone
					i(87547, { timeline = { REMOVED_7_1_5 } }),	-- Tolakesh, Horn of the Black Ox
					i(81291, { timeline = { REMOVED_7_1_5 } }),	-- Whisperwind Spaulders
					i(81283, { timeline = { REMOVED_7_1_5 } }),	-- Windblast Helm
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.CHALLENGE_MODE, { timeline = { REMOVED_6_0_2 } }).AddGroups({
				challengemaster(ach(8439, {	-- Challenge Master: Siege of Niuzao Temple
					timeline = { ADDED_5_4_0, REMOVED_6_0_2 },
					groups = { title(247) },	-- Siegebreaker <Name>
				})),
				ach(6898),	-- Siege of Niuzao Temple Challenger
				ach(6917),	-- Siege of Niuzao Temple: Bronze
				ach(6918),	-- Siege of Niuzao Temple: Silver
				ach(6919, {	-- Siege of Niuzao Temple: Gold
					spell(131228),	-- Path of the Black Ox
				}),
				-- #if ANYCLASSIC
				ach(61975, {	-- Siege of Niuzao Temple: Platinum
					i(265414),	-- Platinum Amber
				}),
				-- #endif
			}),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				OnInit = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				timeline = { ADDED_5_5_0 },
				groups = {
					e(727, {	-- Wing Leader Ner'onok
						creatureID = 62205,	-- Wing Leader Ner'onok
						groups = appendGroups(
						{
							ach(60900),	-- Celestial: Siege of Niuzao Temple
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							i(89972),	-- Band of Bursting Novas
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86830)),	-- Ring of the Shattered Shell
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86890)),	-- Terror in the Mists (Terrace)
							i(86806),	-- Tihan, Scepter of the Sleeping Emperor
							i(86783),	-- Zian's Choker of Coalesced Shadow
						},
						-- #elseif BEFORE 5.5.4
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95972),	-- Abandoned Zandalari Arrowlinks
							i(95974),	-- Abandoned Zandalari Greatbelt
							i(95670),	-- Amun-Thoth, Sul's Spiritrending Talons
							i(95750),	-- Bracers of Mutagenic Fervor
							i(95805),	-- Conduit-Breaker Chain Leggings
							i(95778),	-- Crown of the Golden Golem
							i(95779),	-- Delicate Vial of the Sanguinaire
							i(95806),	-- Doomed Crown of Lei Shen
							i(95725),	-- Egg-Shard Grips
							i(95868),	-- Forgotten Mantle of the Moon
							i(95804),	-- Fusion Slasher Chestguard
							i(95643),	-- Ghostbinder Greatboots
							i(95644),	-- Ionized Yojamban Carapace
							i(95867),	-- Jerthud, Graceful Hand of the Savior
							i(95777),	-- Matter-Swapped Legplates
							i(95698),	-- Megaera's Poisoned Fang
							i(95866),	-- Nadagast's Exsanguinator
							i(95752),	-- Pathogenic Gauntlets
							i(95696),	-- Refreshing Abalone Girdle
							i(95671),	-- Robes of Treacherous Ground
							i(95724),	-- Talonrender Chestplate
							i(95697),	-- Tortos' Shellseizers
							i(95645),	-- Wastewalker's Sandblasted Drape
							i(95669),	-- Wushoolay's Final Choice
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							i(105131),	-- Amber Parasite Wraps
							i(105086),	-- Arrowflight Girdle
							i(105122),	-- Asgorathian Blood Seal
							i(105041),	-- Ashflare Pendant
							i(104969),	-- Boots of Broken Reliance
							i(105058),	-- Bulwark of the Fallen General
							i(99678),	-- Chest of the Cursed Conqueror
							i(99677),	-- Chest of the Cursed Vanquisher
							i(104915),	-- Corruption-Rotted Gauntlets
							i(105113),	-- Devilfang Band
							i(104960),	-- Drape of the Despairing Pit
							i(105014),	-- Earthbreaker's Steaming Chestplate
							i(105149),	-- Ebon Ritual Hood
							i(99667),	-- Gauntlets of the Cursed Protector
							i(99680),	-- Gauntlets of the Cursed Vanquisher
							i(104951),	-- Gaze of Echoing Despair
							i(105104),	-- Gleaming Eye of the Devilsaur
							i(105032),	-- Haromm's Horrifying Helm
							i(99672),	-- Helm of the Cursed Conqueror
							i(99671),	-- Helm of the Cursed Vanquisher
							i(105023),	-- Juggernaut's Power Core
							i(104987),	-- Korgra's Venom-Soaked Gauntlets
							i(99676),	-- Leggings of the Cursed Protector
							i(99674),	-- Leggings of the Cursed Vanquisher
							i(105095),	-- Lost Necklace of the Mogu Empress
							i(105068),	-- Malkorok's Tainted Dog Tags
							i(105140),	-- Penetrating Gaze of Y'Shaarj
							i(104924),	-- Purified Bindings of Immerseus
							i(104942),	-- Robes of the Tendered Heart
							i(104996),	-- Scalebane Bracers
							i(104978),	-- Self-Reflecting Mask
							i(99668),	-- Shoulders of the Cursed Vanquisher
							i(105059),	-- Spaulders of Kor'kron Fealty
							i(104933),	-- Stonetoe's Tormented Treads
							i(105077),	-- Visage of the Monstrous
							i(105005),	-- Windfire Legplates
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
		inst(324, {
			q(31633),	-- Siege of Niuzao Temple Challenge Mode - Bronze Addition (Nth)
			q(31626),	-- Siege of Niuzao Temple Challenge Mode - Consolation (Nth)
			q(31647),	-- Siege of Niuzao Temple Challenge Mode - Gold Addition (Nth)
			q(31640),	-- Siege of Niuzao Temple Challenge Mode - Silver Addition (Nth)
		}),
	}),
	expansion(EXPANSION.WOD, {
		inst(324, {
			q(35312),	-- Siege of Niuzao Reward Quest
			q(35461),	-- Siege of Niuzao Reward Quest
		}),
	}),
});
