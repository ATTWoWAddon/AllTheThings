-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local MAKER = 555;
local BROGGOK = 556;
local KELIDAN = 557;

------ EncounterToCRS ------
local EncounterToCRS = {
	[MAKER] = { 17381 },	-- The Maker
	[BROGGOK] = { 17380 },	-- Broggok
	[KELIDAN] = { 17377 },	-- Keli'dan the Breaker
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(256, {	-- The Blood Furnace
		lore = "The Blood Furnace is the second wing of the Hellfire Citadel. The instance takes place above Hellfire Ramparts, inside of the tower that overlooks the ramparts itself. The pit lord Magtheridon is entrapped by the fel orcs' sorcery at the base of the tower and they're using his blood to manufacture a new Fel Horde, infused with his demonic energy.",
		-- #if BEFORE MOP
		zoneTextAreaID = 3713,	-- The Blood Furnace
		-- #endif
		mapID = HELLFIRE_CITADEL_BLOOD_FURNACE,
		coord = { 46.06, 51.74, HELLFIRE_PENINSULA },	-- The Blood Furnace, Hellfire Peninsula
		timeline = { ADDED_2_0_3 },
		lvl = lvlsquish(58, 58, 10),
		groups = {
			n(QUESTS, {
				q(9607, {	-- Heart of Rage [Alliance]
					qg = 17479,	-- Gunny
					sourceQuest = 9575,	-- Weaken the Ramparts [Alliance]
					coord = { 56.4, 66.7, HELLFIRE_PENINSULA },
					timeline = { REMOVED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					-- #if BEFORE 4.3.0.14732
					groups = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
					-- #endif
				}),
				q(9608, {	-- Heart of Rage [Horde]
					qg = 17558,	-- Caza'rez
					sourceQuest = 9572,	-- Weaken the Ramparts [Horde]
					coord = { 54.9, 36.0, HELLFIRE_PENINSULA },
					timeline = { REMOVED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					-- #if BEFORE 4.3.0.14732
					groups = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
					-- #endif
				}),
				q(29539, {	-- Heart of Rage [Alliance]
					qg = 54629,	-- Gunny
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
				}),
				q(29536, {	-- Heart of Rage [Horde]
					qg = 54636,	-- Caza'rez
					timeline = { ADDED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						i(25714),	-- Crimson Pendant of Clarity
						i(25713),	-- Holy Healing Band
						i(25712),	-- Perfectly Balanced Cape
					},
				}),
				q(29538, {	-- Make Them Bleed [Alliance]
					qg = 54629,	-- Gunny
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							provider = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						objective(2, {	-- 0/1 Fel Infusion Rod
							provider = { "i", 73200 },	-- Fel Infusion Rod
						}),
					},
				}),
				q(29535, {	-- Make Them Bleed [Horde]
					qg = 54636,	-- Caza'rez
					timeline = { ADDED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							provider = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						objective(2, {	-- 0/1 Fel Infusion Rod
							provider = { "i", 73200 },	-- Fel Infusion Rod
						}),
					},
				}),
				q(29537, {	-- Mind the Gap
					qg = 54636,	-- Caza'rez
					timeline = { ADDED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- Keli'dan the Breaker slain
							provider = { "n", 17377 },	-- Keli'dan the Breaker
						}),
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
					},
				}),
				q(9589, {	-- The Blood is Life [Alliance]
					sourceQuest = 9587,	-- Dark Tidings [Alliance]
					qg = 17479,	-- Gunny
					coord = { 56.4, 66.7, HELLFIRE_PENINSULA },
					timeline = { REMOVED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							provider = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						-- #if BEFORE 4.3.0.14732
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
						-- #endif
					},
				}),
				q(9590, {	-- The Blood is Life [Horde]
					sourceQuest = 9588,	-- Dark Tidings [Horde]
					qg = 17558,	-- Caza'rez
					coord = { 54.9, 36.0, HELLFIRE_PENINSULA },
					timeline = { REMOVED_4_3_0 },
					races = HORDE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- 0/10 Fel Orc Blood Vial
							provider = { "i", 23894 },	-- Fel Orc Blood Vial
						}),
						-- #if BEFORE 4.3.0.14732
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
						-- #endif
					},
				}),
				q(29540, {	-- The Breaker
					qg = 54629,	-- Gunny
					timeline = { ADDED_4_3_0 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(59, 59, 10),
					groups = {
						objective(1, {	-- Keli'dan the Breaker slain
							provider = { "n", 17377 },	-- Keli'dan the Breaker
						}),
						i(25701),	-- Breastplate of Retribution
						i(25711),	-- Deadly Borer Leggings
						i(25710),	-- Moonkin Headdress
						i(25702),	-- Scaled Legs of Ruination
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(23894),	-- Fel Orc Blood Vial
				}),
				BossOnly(MAKER, {
					i(73200, { timeline = { ADDED_4_3_0 } }),	-- Fel Infusion Rod (QI!)
					--
					i(27487),	-- Bloodlord Legplates
					i(24384),	-- Diamond-Core Sledgemace
					i(27485),	-- Embroidered Cape of Mysteries
					i(24388),	-- Girdle of the Gale Storm
					i(24387),	-- Ironblade Gauntlets
					i(27488),	-- Mage-Collar of the Firestorm
					i(27483),	-- Moon-Touched Bands
					i(24385),	-- Pendant of Battle-Lust
				}),
				BossOnly(BROGGOK, {
					i(24392),	-- Arcing Bracers
					i(24390),	-- Auslese's Light Channeler
					i(24393),	-- Bloody Surgeon's Mitts
					i(27848),	-- Embroidered Spellpyre Boots
					i(27494),	-- Emerald Eye Bracer
					i(27490),	-- Firebrand Battleaxe
					i(24391),	-- Kilt of the Night Strider
					i(24389),	-- Legion Blunderbuss
					i(27492),	-- Moonchild Leggings
					i(27491),	-- Signet of Repose
					i(141063, { timeline = { ADDED_7_0_3_LAUNCH, REMOVED_10_1_5 } }),	-- Technique: Grimoire of the Observer (RECIPE!)
					i(27489),	-- Virtue Bearer's Vambraces
				}),
				BossOnly(KELIDAN, {
					ach(648),	-- The Blood Furnace
					i(27507),	-- Adamantine Repeater
					i(27788),	-- Bloodsworn Warboots
					i(27497),	-- Doomplate Gauntlets
					i(29239),	-- Eaglecrest Warboots
					i(28121),	-- Icon of Unyielding Courage
					i(27514),	-- Leggings of the Unrepentant
					i(32080),	-- Mantle of Shadowy Embrace
					i(24398),	-- Mantle of the Dusk-Dweller
					i(24395),	-- Mindfire Waistband
					i(24397),	-- Raiments of Divine Authority
					i(27506),	-- Robe of Effervescent Light
					i(27505),	-- Ruby Helm of the Just
					i(27495),	-- Soldier's Dog Tags
					i(29347),	-- Talisman of the Breaker
					i(27512),	-- The Willbreaker
					i(24396),	-- Vest of Vengeance
					i(24394),	-- Warsong Howling Axe
					i(28264),	-- Wastewalker Tunic
					i(29245),	-- Wave-Crest Striders
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(MAKER, {
					i(24386, { timeline = { REMOVED_5_0_4 } }),	-- Libram of Saints Departed
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30601),	-- Beaming Fire Opal
					i(30600),	-- Fluorescent Tanzanite
					i(30602),	-- Jagged Chrysoprase
				}),
				BossOnly(MAKER, {
					i(27484, { timeline = { REMOVED_5_0_4 } }),	-- Libram of Avengement
				}),
				BossOnly(BROGGOK),
				BossOnly(KELIDAN, {
					ach(668),	-- Heroic: The Blood Furnace
					ach(5068, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Blood Furnace Guild Run
					i(33814),	-- Keli'dan's Feathered Stave
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(23894),	-- Fel Orc Blood Vial
				}),
				BossOnly(MAKER, {
					i(73200, { timeline = { ADDED_4_3_0 } }),	-- Fel Infusion Rod (QI!)
				}),
				BossOnly(BROGGOK, {
					i(141063, { timeline = { ADDED_7_0_3_LAUNCH, REMOVED_10_1_5 } }),	-- Technique: Grimoire of the Observer (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(MAKER, {
					i(24384),	-- Diamond-Core Sledgemace
					i(24388),	-- Girdle of the Gale Storm
					i(24387),	-- Ironblade Gauntlets
					i(24386, { timeline = { REMOVED_5_0_4 } }),	-- Libram of Saints Departed
					i(24385),	-- Pendant of Battle-Lust
				}),
				BossOnly(BROGGOK, {
					i(24392),	-- Arcing Bracers
					i(24390),	-- Auslese's Light Channeler
					i(24393),	-- Bloody Surgeon's Mitts
					i(24391),	-- Kilt of the Night Strider
					i(24389),	-- Legion Blunderbuss
				}),
				BossOnly(KELIDAN, {
					ach(648),	-- The Blood Furnace
					i(24398),	-- Mantle of the Dusk-Dweller
					i(24395),	-- Mindfire Waistband
					i(24397),	-- Raiments of Divine Authority
					i(24396),	-- Vest of Vengeance
					i(24394),	-- Warsong Howling Axe
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				aqd = {
					attunement = {
						{ "i", 30622 },	-- Flamewrought Key [A]
						-- #if CLASSIC_ANNIVERSARY
						{ "i", 265830 },	-- Communal Flamewrought Key [A]
						-- #endif
					},
				},
				hqd = {
					attunement = {
						{ "i", 30637 },	-- Flamewrought Key [H]
						-- #if CLASSIC_ANNIVERSARY
						{ "i", 265826 },	-- Communal Flamewrought Key [H]
						-- #endif
					},
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30601),	-- Beaming Fire Opal
					i(30600),	-- Fluorescent Tanzanite
					i(30602),	-- Jagged Chrysoprase
				}),
				BossOnly(MAKER, {
					i(27487),	-- Bloodlord Legplates
					i(27485),	-- Embroidered Cape of Mysteries
					i(27484, { timeline = { REMOVED_5_0_4 } }),	-- Libram of Avengement
					i(27488),	-- Mage-Collar of the Firestorm
					i(27483),	-- Moon-Touched Bands
				}),
				BossOnly(BROGGOK, {
					i(27848),	-- Embroidered Spellpyre Boots
					i(27490),	-- Firebrand Battleaxe
					i(27492),	-- Moonchild Leggings
					i(27491),	-- Signet of Repose
					i(27489),	-- Virtue Bearer's Vambraces
				}),
				BossOnly(KELIDAN, {
					ach(668),	-- Heroic: The Blood Furnace
					ach(5068, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Blood Furnace Guild Run
					i(27507),	-- Adamantine Repeater
					i(27788),	-- Bloodsworn Warboots
					i(27497),	-- Doomplate Gauntlets
					i(29239),	-- Eaglecrest Warboots
					i(27494),	-- Emerald Eye Bracer
					i(28121),	-- Icon of Unyielding Courage
					i(33814),	-- Keli'dan's Feathered Stave
					i(27514),	-- Leggings of the Unrepentant
					i(32080),	-- Mantle of Shadowy Embrace
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(27506),	-- Robe of Effervescent Light
					i(27505),	-- Ruby Helm of the Just
					i(27495),	-- Soldier's Dog Tags
					i(29347),	-- Talisman of the Breaker
					i(27512),	-- The Willbreaker
					i(28264),	-- Wastewalker Tunic
					i(29245),	-- Wave-Crest Striders
					i(27522),	-- World's End Bracers
				}),
			}),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(256, {
		q(35565),	-- The Blood Furnace Reward Quest - Normal completion
		q(35566),	-- The Blood Furnace Reward Quest - Heroic completion
	}),
}));
