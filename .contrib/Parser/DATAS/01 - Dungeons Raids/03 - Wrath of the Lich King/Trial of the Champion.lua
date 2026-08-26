-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

-- #if ANYCLASSIC
-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
local COLOSOS_CRITERIA_UID_HEROIC_HORDE = 12312;
local RUNOK_CRITERIA_UID_HEROIC_ALLIANCE = 12312;
-- #else
local COLOSOS_CRITERIA_UID_HEROIC_HORDE = 12320;
local RUNOK_CRITERIA_UID_HEROIC_ALLIANCE = 12320;
-- #endif

------ Encounter Constants ------
local GRAND_CHAMPIONS = 634;
local EADRIC = 635;
local PALETRESS = 636;
local BLACK_KNIGHT = 637;

------ EncounterToCRS ------
local EncounterToCRS = {
	[GRAND_CHAMPIONS] = {
		34705,	-- Marshal Jacob Alerius
		34702,	-- Ambrose Boltspark
		34701,	-- Colosos
		34657,	-- Jaelyne Evensong
		34703,	-- Lana Stouthammer
		35572,	-- Mokra the Skullcrusher
		35569,	-- Eressea Dawnsinger
		35571,	-- Runok Wildmane
		35570,	-- Zul'tore
		35617,	-- Deathstalker Visceri
	},
	[EADRIC] = { 35119 },	-- Eadric the Pure
	[PALETRESS] = { 34928 },	-- Argent Confessor Paletress
	[BLACK_KNIGHT] = { 35451 },	-- The Black Knight
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_3_2_0 } }, {
	inst(284, {	-- Trial of the Champion
		["mapID"] = TRIAL_OF_THE_CHAMPION,
		["coord"] = { 74.0, 20.9, ICECROWN },
		["lvl"] = lvlsquish(75, 75, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				bubbleDown({ ["races"] = ALLIANCE_ONLY }, ach(4296, {	-- Trial of the Champion (A)
					-- #if AFTER 7.3.5
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Mokra the Skullcrusher
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12298, {	-- Deathstalker Visceri
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12299, {	-- Runok Wildmane
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12300, {	-- Eressea Dawnsinger
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12301, {	-- Zul'tore
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Mokra the Skullcrusher
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12298, {	-- Deathstalker Visceri
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12299, {	-- Runok Wildmane
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12300, {	-- Eressea Dawnsinger
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12301, {	-- Zul'tore
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				})),
				bubbleDown({ ["races"] = ALLIANCE_ONLY }, ach(4298, {	-- Heroic: Trial of the Champion (A)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(12539, {	-- Mokra the Skullcrusher
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12545, {	-- Deathstalker Visceri
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(RUNOK_CRITERIA_UID_HEROIC_ALLIANCE, {	-- Runok Wildmane
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12543, {	-- Eressea Dawnsinger
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12541, {	-- Zul'tore
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12549, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12551, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.HEROIC },
					}),
					-- #endif
					crit(12553, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.HEROIC },
					}),
				})),
				bubbleDown({ ["races"] = HORDE_ONLY }, ach(3778, {	-- Trial of the Champion (H)
					-- #if AFTER 7.3.5
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Marshal Jacob Alerius
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12298, {	-- Lana Stouthammer
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12299, {	-- Colosos
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12300, {	-- Ambrose Boltspark
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(12301, {	-- Jaelyne Evensong
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Marshal Jacob Alerius
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12298, {	-- Lana Stouthammer
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12299, {	-- Colosos
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12300, {	-- Ambrose Boltspark
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12301, {	-- Jaelyne Evensong
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				})),
				bubbleDown({ ["races"] = HORDE_ONLY }, ach(4297, {	-- Heroic: Trial of the Champion (H)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(12539, {	-- Marshal Jacob Alerius
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12545, {	-- Lana Stouthammer
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(COLOSOS_CRITERIA_UID_HEROIC_HORDE, {	-- Colosos
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12543, {	-- Ambrose Boltspark
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12541, {	-- Jaelyne Evensong
						["_encounter"] = { GRAND_CHAMPIONS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12549, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12551, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DIFFICULTY.DUNGEON.HEROIC },
					}),
					-- #endif
					crit(12553, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DIFFICULTY.DUNGEON.HEROIC },
					}),
				})),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_THREE, bubbleDownFiltered({ ["races"] = ALLIANCE_ONLY },	-- Defense Protocol Beta: Trial of the Champion (A)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(18677, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(60760, {	-- Mokra the Skullcrusher
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60761, {	-- Deathstalker Visceri
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60765, {	-- Runok Wildmane
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60766, {	-- Eressea Dawnsinger
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60763, {	-- Zul'tore
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60762, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DEFENSE_PROTOCOL_BETA },
					}),
					-- #endif
					crit(60621, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DEFENSE_PROTOCOL_BETA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_THREE, bubbleDownFiltered({ ["races"] = HORDE_ONLY },	-- Defense Protocol Beta: Trial of the Champion (H)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(18678, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(60768, {	-- Marshal Jacob Alerius
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60771, {	-- Lana Stouthammer
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60770, {	-- Colosos
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Ambrose Boltspark
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60767, {	-- Jaelyne Evensong
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60762, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DEFENSE_PROTOCOL_BETA },
					}),
					-- #endif
					crit(60621, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DEFENSE_PROTOCOL_BETA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, bubbleDownFiltered({ ["races"] = ALLIANCE_ONLY },	-- Defense Protocol Gamma: Trial of the Champion (A)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(19426, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(63308, {	-- Mokra the Skullcrusher
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63317, {	-- Deathstalker Visceri
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63314, {	-- Runok Wildmane
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63313, {	-- Eressea Dawnsinger
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63306, {	-- Zul'tore
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63310, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63315, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DEFENSE_PROTOCOL_GAMMA },
					}),
					-- #endif
					crit(63310, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DEFENSE_PROTOCOL_GAMMA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, bubbleDownFiltered({ ["races"] = HORDE_ONLY },	-- Defense Protocol Gamma: Trial of the Champion (H)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(19425, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(63308, {	-- Marshal Jacob Alerius
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(60771, {	-- Lana Stouthammer
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63314, {	-- Colosos
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63313, {	-- Ambrose Boltspark
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63306, {	-- Jaelyne Evensong
						["_encounter"] = { GRAND_CHAMPIONS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63316, {	-- Argent Confessor Paletress
						["_encounter"] = { PALETRESS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63315, {	-- Eadric the Pure
						["_encounter"] = { EADRIC, DEFENSE_PROTOCOL_GAMMA },
					}),
					-- #endif
					crit(63310, {	-- The Black Knight
						["_encounter"] = { BLACK_KNIGHT, DEFENSE_PROTOCOL_GAMMA },
					}),
				}))),
				-- #endif
			}),
			-- #if AFTER 4.3.0.14732
			n(QUESTS, {
				q(29851, {	-- Champion of the Tournament
					-- #if BEFORE 5.0.4
					["description"] = "Blizzard broke auto complete quests, so until they fix that system, this can't be turned in.",
					["isBounty"] = true,
					-- #endif
					["qg"] = 34996,	-- Highlord Tirion Fordring
					["timeline"] = {
						-- #if ANYCLASSIC
						CREATED_4_3_0,
						ADDED_5_0_4,
						-- #else
						ADDED_4_3_0,
						-- #endif
					},
				}),
			}),
			-- #endif
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(GRAND_CHAMPIONS, {
					i(47213),	-- Abyssal Rune
					i(47170),	-- Belt of Fierce Competition
					i(47181),	-- Belt of the Churning Blaze
					i(47174),	-- Binding of the Tranquil Glade
					i(47173),	-- Bindings of the Wicked
					i(47176),	-- Breastplate of the Imperial Joust
					i(47178),	-- Carapace of Grim Visions
					i(47244),	-- Chestguard of the Ravenous Fiend
					i(47493),	-- Edge of Ruin
					i(47177),	-- Gloves of the Argent Fanatic
					i(47172),	-- Helm of the Bested Gallant
					i(47185),	-- Leggings of the Haggard Apprentice
					i(47249),	-- Leggings of the Snowy Bramble
					i(47171),	-- Legguards of Abandoned Fealty
					i(47243),	-- Mark of the Relentless
					i(47250),	-- Pauldrons of the Deafening Gale
					i(47175),	-- Scale Boots of the Outlander
					i(47248),	-- Treads of Dismal Fortune
				}),
				BossOnly(EADRIC, {
					i(47213),	-- Abyssal Rune
					i(47508),	-- Aledar's Battlestar
					i(47494),	-- Ancient Pendant of Arathor
					i(47496),	-- Armbands of the Wary Lookout
					i(47504),	-- Barkhide Treads
					i(47181),	-- Belt of the Churning Blaze
					i(47201),	-- Boots of Heartfelt Repentance
					i(47176),	-- Breastplate of the Imperial Joust
					i(47178),	-- Carapace of Grim Visions
					i(47197),	-- Gauntlets of the Stouthearted Crusader
					i(47177),	-- Gloves of the Argent Fanatic
					i(47498),	-- Gloves of the Dismal Fortune
					i(47199),	-- Greaves of the Grand Paladin
					i(47497),	-- Helm of the Crestfallen Challenger
					i(47501),	-- Kurisu's Indecision
					i(47202),	-- Leggings of Brazen Trespass
					i(47185),	-- Leggings of the Haggard Apprentice
					i(47495),	-- Legplates of Relentless Onslaught
					i(47503),	-- Legplates of the Argent Armistice
					i(47502),	-- Majestic Silversmith Shoulderplates
					i(47210),	-- Mantle of Gnarled Overgrowth
					i(47509),	-- Mariel's Sorrow
					i(47500),	-- Peacekeeper Blade
					i(47200),	-- Signet of Purity
				}),
				BossOnly(PALETRESS, {
					i(47213),	-- Abyssal Rune
					i(47494),	-- Ancient Pendant of Arathor
					i(47496),	-- Armbands of the Wary Lookout
					i(47214),	-- Banner of Victory
					i(47181),	-- Belt of the Churning Blaze
					i(47176),	-- Breastplate of the Imperial Joust
					i(47219),	-- Brilliant Hailstone Amulet
					i(47178),	-- Carapace of Grim Visions
					i(47217),	-- Gaze of the Somber Keeper
					i(47498),	-- Gloves of Dismal Fortune
					i(47177),	-- Gloves of the Argent Fanatic
					i(47497),	-- Helm of the Crestfallen Challenger
					i(47185),	-- Leggings of the Haggard Apprentice
					i(47495),	-- Legplates of Relentless Onslaught
					i(47522),	-- Marrowstrike
					i(47212),	-- Mercy's Hold
					i(47245),	-- Pauldrons of Concealed Loathing
					i(47500),	-- Peacekeeper Blade
					i(47511),	-- Plated Greaves of Providence
					i(47514),	-- Regal Aurous Shoulderplates
					i(47512),	-- Sinner's Confession
					i(47218),	-- The Confessor's Binding
					i(47510),	-- Trueheart Girdle
					i(47211),	-- Wristguards of Ceaseless Regret
				}),
				BossOnly(BLACK_KNIGHT, {
					i(47231),	-- Belt of Merciless Cruelty
					i(49682),	-- Black Knight's Rondel
					i(47560),	-- Boots of the Crackling Flame
					i(47232),	-- Drape of the Undefeated
					i(47527),	-- Embrace of Madness
					i(47567),	-- Gauntlets of Revelation
					i(47564),	-- Gaze of the Unknown
					i(47229),	-- Girdle of Arrogant Downfall
					i(47563),	-- Girdle of the Dauntless Conqueror
					i(47227),	-- Girdle of the Pallid Knight
					i(47561),	-- Gloves of the Dark Exile
					i(47230),	-- Handwraps of Surrendered Hope
					i(47220),	-- Helm of the Violent Fray
					i(47228),	-- Leggings of the Bloodless Knight
					i(47226),	-- Mantle of Inconsolable Fear
					i(47529),	-- Mask of the Distant Memory
					i(47221),	-- Shoulderpads of the Infamous Knave
					i(47569),	-- Spectral Kris
					i(47562),	-- Symbol of Redemption
					i(47215),	-- Tears of the Vanquished
					i(47216),	-- The Black Heart
					i(47566),	-- The Warlord's Depravity
					i(47568),	-- True-Aim Long Rifle
					i(47222),	-- Uruka's Band of Zeal
					i(47565),	-- Vambraces of Unholy Command
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(BLACK_KNIGHT, {
					-- #if AFTER 8.0.1
					currency(241),	-- Champion's Seal
					-- #endif
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(COMMON_BOSS_DROPS, {
					currency(241),	-- Champion's Seal
					-- #if BEFORE CATA
					currency(301, {	-- Emblem of Triumph
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_1 },
					}),
					-- #endif
				}),
				BossOnly(GRAND_CHAMPIONS),
				BossOnly(EADRIC, {
					ach(3803),	-- The Faceroller
				}),
				BossOnly(PALETRESS, {
					ach(3802, {	-- Argent Confessor
						crit(11927, {	-- Algalon
							["cr"] = 35052,	-- Memory of Algalon
						}),
						crit(11916, {	-- Archimonde
							["cr"] = 35041,	-- Memory of Archimonde
						}),
						crit(11909, {	-- Chromaggus
							["cr"] = 35033,	-- Memory of Chromaggus
						}),
						crit(11921, {	-- Cyanigosa
							["cr"] = 35046,	-- Memory of Cyanigosa
						}),
						crit(11918, {	-- Delrissa
							["cr"] = 35043,	-- Memory of Delrissa
						}),
						crit(11922, {	-- Eck
							["cr"] = 35047,	-- Memory of Eck
						}),
						crit(11914, {	-- Gruul
							["cr"] = 35039,	-- Memory of Gruul
						}),
						crit(11910, {	-- Hakkar
							["cr"] = 35034,	-- Memory of Hakkar
						}),
						crit(11924, {	-- Heigan
							["cr"] = 35049,	-- Memory of Heigan
						}),
						crit(11906,	{	-- Herod
							["cr"] = 35030,	-- Memory of Herod
						}),
						crit(11863,	{	-- Hogger
							["cr"] = 34942,	-- Memory of Hogger
						}),
						crit(11925, {	-- Ignis
							["cr"] = 35050,	-- Memory of Ignis
						}),
						crit(11917, {	-- Illidan
							["cr"] = 35042,	-- Memory of Illidan
						}),
						crit(11920, {	-- Ingvar
							["cr"] = 35045,	-- Memory of Ingvar
						}),
						crit(11912, {	-- Kalithresh
							["cr"] = 35037,	-- Memory of Kalithresh
						}),
						crit(11907,	{	-- Lucifron
							["cr"] = 35031,	-- Memory of Lucifron
						}),
						crit(11919, {	-- M'uru (Entropius)
							["cr"] = 35044,	-- Memory of Entropius
						}),
						crit(11913, {	-- Malchezaar
							["cr"] = 35038,	-- Memory of Malchezaar
						}),
						crit(11905,	{	-- Mutanus
							["cr"] = 35029,	-- Memory of Mutanus
						}),
						crit(11923, {	-- Onyxia
							["cr"] = 35048,	-- Memory of Onyxia
						}),
						crit(11908,	{	-- Thunderaan
							["cr"] = 35032,	-- Memory of Thunderaan
						}),
						crit(11904,	{	-- VanCleef
							["cr"] = 35028,	-- Memory of VanCleef
						}),
						crit(11915, {	-- Vashj
							["cr"] = 35040,	-- Memory of Vashj
						}),
						crit(11911,	{	-- Vek'nilash
							["cr"] = 35036,	-- Memory of Vek'nilash
						}),
						crit(11926, {	-- Vezax
							["cr"] = 35051,	-- Memory of Vezax
						}),
					}),
				}),
				BossOnly(BLACK_KNIGHT, {
					ach(5110, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Trial of the Champion Guild Run [H]
					ach(5111, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Trial of the Champion Guild Run [A]
					ach(3804),	-- I've Had Worse
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(GRAND_CHAMPIONS, {
					i(47170),	-- Belt of Fierce Competition
					i(47174),	-- Binding of the Tranquil Glade
					i(47173),	-- Bindings of the Wicked
					i(47172),	-- Helm of the Bested Gallant
					i(47171),	-- Legguards of Abandoned Fealty
					i(47175),	-- Scale Boots of the Outlander
				}),
				BossOnly(EADRIC, {
					i(47213),	-- Abyssal Rune
					i(47181),	-- Belt of the Churning Blaze
					i(47201),	-- Boots of Heartfelt Repentance
					i(47176),	-- Breastplate of the Imperial Joust
					i(47178),	-- Carapace of Grim Visions
					i(47197),	-- Gauntlets of the Stouthearted Crusader
					i(47177),	-- Gloves of the Argent Fanatic
					i(47199),	-- Greaves of the Grand Paladin
					i(47202),	-- Leggings of Brazen Trespass
					i(47185),	-- Leggings of the Haggard Apprentice
					i(47210),	-- Mantle of Gnarled Overgrowth
					i(47200),	-- Signet of Purity
				}),
				BossOnly(PALETRESS, {
					i(47213),	-- Abyssal Rune
					i(47214),	-- Banner of Victory
					i(47181),	-- Belt of the Churning Blaze
					i(47176),	-- Breastplate of the Imperial Joust
					i(47219),	-- Brilliant Hailstone Amulet
					i(47178),	-- Carapace of Grim Visions
					i(47217),	-- Gaze of the Somber Keeper
					i(47177),	-- Gloves of the Argent Fanatic
					i(47185),	-- Leggings of the Haggard Apprentice
					i(47212),	-- Mercy's Hold
					i(47218),	-- The Confessor's Binding
					i(47211),	-- Wristguards of Ceaseless Regret
				}),
				BossOnly(BLACK_KNIGHT, {
					i(47231),	-- Belt of Merciless Cruelty
					i(47232),	-- Drape of the Undefeated
					i(47229),	-- Girdle of Arrogant Downfall
					i(47227),	-- Girdle of the Pallid Knight
					i(47230),	-- Handwraps of Surrendered Hope
					i(47220),	-- Helm of the Violent Fray
					i(47228),	-- Leggings of the Bloodless Knight
					i(47226),	-- Mantle of Inconsolable Fear
					i(47221),	-- Shoulderpads of the Infamous Knave
					i(47215),	-- Tears of the Vanquished
					i(47216),	-- The Black Heart
					i(47222),	-- Uruka's Band of Zeal
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(COMMON_BOSS_DROPS, {
					currency(241),	-- Champion's Seal
					-- #if BEFORE CATA
					currency(301, {	-- Emblem of Triumph
						["timeline"] = { ADDED_3_2_0, REMOVED_4_0_1 },
					}),
					-- #endif
				}),
				BossOnly(GRAND_CHAMPIONS, {
					i(47244),	-- Chestguard of the Ravenous Fiend
					i(47493),	-- Edge of Ruin
					i(47249),	-- Leggings of the Snowy Bramble
					i(47243),	-- Mark of the Relentless
					i(47250),	-- Pauldrons of the Deafening Gale
					i(47248),	-- Treads of Dismal Fortune
				}),
				BossOnly(EADRIC, {
					ach(3803),	-- The Faceroller
					i(47508),	-- Aledar's Battlestar
					i(47494),	-- Ancient Pendant of Arathor
					i(47496),	-- Armbands of the Wary Lookout
					i(47504),	-- Barkhide Treads
					i(47498),	-- Gloves of the Dismal Fortune
					i(47497),	-- Helm of the Crestfallen Challenger
					i(47501),	-- Kurisu's Indecision
					i(47495),	-- Legplates of Relentless Onslaught
					i(47503),	-- Legplates of the Argent Armistice
					i(47502),	-- Majestic Silversmith Shoulderplates
					i(47509),	-- Mariel's Sorrow
					i(47500),	-- Peacekeeper Blade
				}),
				BossOnly(PALETRESS, {
					ach(3802, {	-- Argent Confessor
						crit(11927, {	-- Algalon
							["cr"] = 35052,	-- Memory of Algalon
						}),
						crit(11916, {	-- Archimonde
							["cr"] = 35041,	-- Memory of Archimonde
						}),
						crit(11909, {	-- Chromaggus
							["cr"] = 35033,	-- Memory of Chromaggus
						}),
						crit(11921, {	-- Cyanigosa
							["cr"] = 35046,	-- Memory of Cyanigosa
						}),
						crit(11918, {	-- Delrissa
							["cr"] = 35043,	-- Memory of Delrissa
						}),
						crit(11922, {	-- Eck
							["cr"] = 35047,	-- Memory of Eck
						}),
						crit(11914, {	-- Gruul
							["cr"] = 35039,	-- Memory of Gruul
						}),
						crit(11910, {	-- Hakkar
							["cr"] = 35034,	-- Memory of Hakkar
						}),
						crit(11924, {	-- Heigan
							["cr"] = 35049,	-- Memory of Heigan
						}),
						crit(11906,	{	-- Herod
							["cr"] = 35030,	-- Memory of Herod
						}),
						crit(11863,	{	-- Hogger
							["cr"] = 34942,	-- Memory of Hogger
						}),
						crit(11925, {	-- Ignis
							["cr"] = 35050,	-- Memory of Ignis
						}),
						crit(11917, {	-- Illidan
							["cr"] = 35042,	-- Memory of Illidan
						}),
						crit(11920, {	-- Ingvar
							["cr"] = 35045,	-- Memory of Ingvar
						}),
						crit(11912, {	-- Kalithresh
							["cr"] = 35037,	-- Memory of Kalithresh
						}),
						crit(11907,	{	-- Lucifron
							["cr"] = 35031,	-- Memory of Lucifron
						}),
						crit(11919, {	-- M'uru (Entropius)
							["cr"] = 35044,	-- Memory of Entropius
						}),
						crit(11913, {	-- Malchezaar
							["cr"] = 35038,	-- Memory of Malchezaar
						}),
						crit(11905,	{	-- Mutanus
							["cr"] = 35029,	-- Memory of Mutanus
						}),
						crit(11923, {	-- Onyxia
							["cr"] = 35048,	-- Memory of Onyxia
						}),
						crit(11908,	{	-- Thunderaan
							["cr"] = 35032,	-- Memory of Thunderaan
						}),
						crit(11904,	{	-- VanCleef
							["cr"] = 35028,	-- Memory of VanCleef
						}),
						crit(11915, {	-- Vashj
							["cr"] = 35040,	-- Memory of Vashj
						}),
						crit(11911,	{	-- Vek'nilash
							["cr"] = 35036,	-- Memory of Vek'nilash
						}),
						crit(11926, {	-- Vezax
							["cr"] = 35051,	-- Memory of Vezax
						}),
					}),
					i(47494),	-- Ancient Pendant of Arathor
					i(47496),	-- Armbands of the Wary Lookout
					i(47498),	-- Gloves of Dismal Fortune
					i(47497),	-- Helm of the Crestfallen Challenger
					i(47495),	-- Legplates of Relentless Onslaught
					i(47522),	-- Marrowstrike
					i(47245),	-- Pauldrons of Concealed Loathing
					i(47500),	-- Peacekeeper Blade
					i(47511),	-- Plated Greaves of Providence
					i(47514),	-- Regal Aurous Shoulderplates
					i(47512),	-- Sinner's Confession
					i(47510),	-- Trueheart Girdle
				}),
				BossOnly(BLACK_KNIGHT, {
					ach(5110, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Trial of the Champion Guild Run [H]
					ach(5111, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Trial of the Champion Guild Run [A]
					ach(3804),	-- I've Had Worse
					i(49682),	-- Black Knight's Rondel
					i(47560),	-- Boots of the Crackling Flame
					i(47527),	-- Embrace of Madness
					i(47567),	-- Gauntlets of Revelation
					i(47564),	-- Gaze of the Unknown
					i(47563),	-- Girdle of the Dauntless Conqueror
					i(47561),	-- Gloves of the Dark Exile
					i(47529),	-- Mask of the Distant Memory
					i(47569),	-- Spectral Kris
					i(47562),	-- Symbol of Redemption
					i(47566),	-- The Warlord's Depravity
					i(47568),	-- True-Aim Long Rifle
					i(47565),	-- Vambraces of Unholy Command
					-- #if BEFORE 4.0.1
					i(48418),	-- Fragment of the Black Knight's Soul
					-- #endif
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413573, 424211),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(GRAND_CHAMPIONS, {
						i(46028),	-- Faceguard of the Eyeless Horror
						i(46024),	-- Kingsbane
					}),
					BossOnly(EADRIC, {
						i(46022),	-- Pendant of a Thousand Maws
						i(45311),	-- Relentless Edge
					}),
					BossOnly(PALETRESS, {
						i(46022),	-- Pendant of a Thousand Maws
						i(45311),	-- Relentless Edge
					}),
					BossOnly(BLACK_KNIGHT, {
						i(46021),	-- Royal Seal of King Llane
						i(46031),	-- Touch of Madness
						i(46030),	-- Treads of the Dragon Council
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424211),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(BLACK_KNIGHT),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(284, {
		q(35950),	-- Trial of the Champion Reward Quest - Normal / Heroic completion
	}),
})));
