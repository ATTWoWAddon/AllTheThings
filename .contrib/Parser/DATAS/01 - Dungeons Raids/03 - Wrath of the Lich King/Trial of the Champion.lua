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

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_3_2_0 } }, {
	inst(284, {	-- Trial of the Champion
		["mapID"] = TRIAL_OF_THE_CHAMPION,
		["coord"] = { 74.0, 20.9, ICECROWN },
		["lvl"] = lvlsquish(75, 75, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				bubbleDown({ ["races"] = ALLIANCE_ONLY }, ach(4296, {	-- Trial of the Champion (A)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Mokra the Skullcrusher
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12298, {	-- Deathstalker Visceri
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12299, {	-- Runok Wildmane
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12300, {	-- Eressea Dawnsinger
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12301, {	-- Zul'tore
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { 635, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { 637, DIFFICULTY.DUNGEON.NORMAL },
					}),
				})),
				bubbleDown({ ["races"] = ALLIANCE_ONLY }, ach(4298, {	-- Heroic: Trial of the Champion (A)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(12539, {	-- Mokra the Skullcrusher
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12545, {	-- Deathstalker Visceri
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(RUNOK_CRITERIA_UID_HEROIC_ALLIANCE, {	-- Runok Wildmane
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12543, {	-- Eressea Dawnsinger
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12541, {	-- Zul'tore
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12549, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12551, {	-- Eadric the Pure
						["_encounter"] = { 635, DIFFICULTY.DUNGEON.HEROIC },
					}),
					-- #endif
					crit(12553, {	-- The Black Knight
						["_encounter"] = { 637, DIFFICULTY.DUNGEON.HEROIC },
					}),
				})),
				bubbleDown({ ["races"] = HORDE_ONLY }, ach(3778, {	-- Trial of the Champion (H)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(11420, {	-- Marshal Jacob Alerius
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12298, {	-- Lana Stouthammer
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12299, {	-- Colosos
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12300, {	-- Ambrose Boltspark
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(12301, {	-- Jaelyne Evensong
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13312, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(13313, {	-- Eadric the Pure
						["_encounter"] = { 635, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					crit(13314, {	-- The Black Knight
						["_encounter"] = { 637, DIFFICULTY.DUNGEON.NORMAL },
					}),
				})),
				bubbleDown({ ["races"] = HORDE_ONLY }, ach(4297, {	-- Heroic: Trial of the Champion (H)
					-- #if NOT ANYCLASSIC
					-- Blizzard removed the criteria for this achievement in Wrath Classic.
					crit(12539, {	-- Marshal Jacob Alerius
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12545, {	-- Lana Stouthammer
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(COLOSOS_CRITERIA_UID_HEROIC_HORDE, {	-- Colosos
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12543, {	-- Ambrose Boltspark
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12541, {	-- Jaelyne Evensong
						["_encounter"] = { 634, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12549, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(12551, {	-- Eadric the Pure
						["_encounter"] = { 635, DIFFICULTY.DUNGEON.HEROIC },
					}),
					-- #endif
					crit(12553, {	-- The Black Knight
						["_encounter"] = { 637, DIFFICULTY.DUNGEON.HEROIC },
					}),
				})),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_THREE, bubbleDownFiltered({ ["races"] = ALLIANCE_ONLY },	-- Defense Protocol Beta: Trial of the Champion (A)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(18677, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(60760, {	-- Mokra the Skullcrusher
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60761, {	-- Deathstalker Visceri
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60765, {	-- Runok Wildmane
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60766, {	-- Eressea Dawnsinger
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60763, {	-- Zul'tore
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60762, {	-- Eadric the Pure
						["_encounter"] = { 635, DEFENSE_PROTOCOL_BETA },
					}),
					-- #endif
					crit(60621, {	-- The Black Knight
						["_encounter"] = { 637, DEFENSE_PROTOCOL_BETA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_THREE, bubbleDownFiltered({ ["races"] = HORDE_ONLY },	-- Defense Protocol Beta: Trial of the Champion (H)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(18678, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(60768, {	-- Marshal Jacob Alerius
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60771, {	-- Lana Stouthammer
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60770, {	-- Colosos
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Ambrose Boltspark
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60767, {	-- Jaelyne Evensong
						["_encounter"] = { 634, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60764, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60762, {	-- Eadric the Pure
						["_encounter"] = { 635, DEFENSE_PROTOCOL_BETA },
					}),
					-- #endif
					crit(60621, {	-- The Black Knight
						["_encounter"] = { 637, DEFENSE_PROTOCOL_BETA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, bubbleDownFiltered({ ["races"] = ALLIANCE_ONLY },	-- Defense Protocol Gamma: Trial of the Champion (A)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(19426, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(63308, {	-- Mokra the Skullcrusher
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63317, {	-- Deathstalker Visceri
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63314, {	-- Runok Wildmane
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63313, {	-- Eressea Dawnsinger
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63306, {	-- Zul'tore
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63310, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63315, {	-- Eadric the Pure
						["_encounter"] = { 635, DEFENSE_PROTOCOL_GAMMA },
					}),
					-- #endif
					crit(63310, {	-- The Black Knight
						["_encounter"] = { 637, DEFENSE_PROTOCOL_GAMMA },
					}),
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, bubbleDownFiltered({ ["races"] = HORDE_ONLY },	-- Defense Protocol Gamma: Trial of the Champion (H)
					(function(t) return t.criteriaID or t.achID or t.achievementID; end), ach(19425, {
					-- #if NOT ANYCLASSIC
					-- Blizzard removed these from Wrath Classic.
					crit(63308, {	-- Marshal Jacob Alerius
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(60771, {	-- Lana Stouthammer
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63314, {	-- Colosos
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63313, {	-- Ambrose Boltspark
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63306, {	-- Jaelyne Evensong
						["_encounter"] = { 634, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63316, {	-- Argent Confessor Paletress
						["_encounter"] = { 636, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63315, {	-- Eadric the Pure
						["_encounter"] = { 635, DEFENSE_PROTOCOL_GAMMA },
					}),
					-- #endif
					crit(63310, {	-- The Black Knight
						["_encounter"] = { 637, DEFENSE_PROTOCOL_GAMMA },
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
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(634, {	-- Grand Champions
					["crs"] = {
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
					["groups"] = {
						-- #if AFTER 7.3.5
						i(47493),	-- Edge of Ruin (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47172),	-- Helm of the Bested Gallant
						-- #if AFTER 7.3.5
						i(47250),	-- Pauldrons of the Deafening Gale (7.3.5 - Used to be only Heroic Mode)
						i(47176),	-- Breastplate of the Imperial Jouse (7.3.5 - Used to be only from Eadric and Confessor)
						i(47178),	-- Carapace of Grim Visions (7.3.5 - Used to be only from Eadric and Confessor)
						i(47244),	-- Chestguard of the Ravenous Fiend (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47173),	-- Bindings of the Wicked
						-- #if AFTER 7.3.5
						i(47177),	-- Gloves of the Argent Fanatic (7.3.5 - Used to be only from Eadric and Confessor)
						-- #endif
						i(47170),	-- Belt of Fierce Competition
						-- #if AFTER 7.3.5
						i(47181),	-- Belt of the Churning Blaze (7.3.5 - Used to be only from Eadric and Confessor)
						-- #endif
						i(47174),	-- Binding of the Tranquil Glade
						-- #if AFTER 7.3.5
						i(47185),	-- Leggings of the Haggard Apprentice (7.3.5 - Used to be only from Eadric and Confessor)
						i(47249),	-- Leggings of the Snowy Bramble (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47171),	-- Legguards of Abandoned Fealty
						i(47175),	-- Scale Boots of the Outlander
						-- #if AFTER 7.3.5
						i(47248),	-- Treads of Dismal Fortune (7.3.5 - Used to be only Heroic Mode)
						i(47243),	-- Mark of the Relentless (7.3.5 - Used to be only Heroic Mode)
						i(47213),	-- Abyssal Rune (7.3.5 - Used to be only from Eadric and Confessor)
						-- #endif
					},
				}),
				e(635, {	-- Eadric the Pure
					["creatureID"] = 35119,	-- Eadric the Pure
					["groups"] = {
						-- #if AFTER 7.3.5
						i(47508),	-- Aledar's Battlestar (7.3.5 - Used to be only Heroic Mode)
						i(47509),	-- Mariel's Sorrow (7.3.5 - Used to be only Heroic Mode)
						i(47500),	-- Peacekeeper Blade (7.3.5 - Used to be only Heroic Mode)
						i(47497),	-- Helm of the Crestfallen Challenger (7.3.5 - Used to be only Heroic Mode)
						i(47494),	-- Ancient Pendant of Arathor (7.3.5 - Used to be only Heroic Mode)
						i(47502),	-- Majestic Silversmith Shoulderplates (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47210),	-- Mantle of Gnarled Overgrowth
						-- #if AFTER 7.3.5
						i(47501),	-- Kurisu's Indecision (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47176),	-- Breastplate of the Imperial Joust
						i(47178),	-- Carapace of Grim Visions
						-- #if AFTER 7.3.5
						i(47496),	-- Armbands of the Wary Lookout (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47197),	-- Gauntlets of the Stouthearted Crusader
						-- #if AFTER 7.3.5
						i(47498),	-- Gloves of the Dismal Fortune (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47177),	-- Gloves of the Argent Fanatic
						i(47181),	-- Belt of the Churning Blaze
						i(47202),	-- Leggings of Brazen Trespass
						i(47185),	-- Leggings of the Haggard Apprentice
						-- #if AFTER 7.3.5
						i(47495),	-- Legplates of Relentless Onslaught (7.3.5 - Used to be only Heroic Mode)
						i(47503),	-- Legplates of the Argent Armistice (7.3.5 - Used to be only Heroic Mode)
						i(47504),	-- Barkhide Treads (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47201),	-- Boots of Heartfelt Repentance
						i(47199),	-- Greaves of the Grand Paladin
						i(47200),	-- Signet of Purity
						i(47213),	-- Abyssal Rune
					},
				}),
				e(636, {	-- Argent Confessor Paletress
					["creatureID"] = 34928,	-- Argent Confessor Paletress
					["groups"] = {
						-- #if AFTER 7.3.5
						i(47522),	-- Marrowstrike (7.3.5 - Used to be only Heroic Mode)
						i(47500),	-- Peacekeeper Blade (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47217),	-- Gaze of the Somber Keeper
						-- #if AFTER 7.3.5
						i(47497),	-- Helm of the Crestfallen Challenger (7.3.5 - Used to be only Heroic Mode)
						i(47494),	-- Ancient Pendant of Arathor (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47219),	-- Brilliant Hailstone Amulet
						-- #if AFTER 7.3.5
						i(47245),	-- Pauldrons of Concealed Loathing (7.3.5 - Used to be only Heroic Mode)
						i(47514),	-- Regal Aurous Shoulderplates (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47176),	-- Breastplate of the Imperial Joust
						i(47178),	-- Carapace of Grim Visions
						-- #if AFTER 7.3.5
						i(47496),	-- Armbands of the Wary Lookout (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47211),	-- Wristguards of Ceaseless Regret
						-- #if AFTER 7.3.5
						i(47498),	-- Gloves of Dismal Fortune (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47177),	-- Gloves of the Argent Fanatic
						i(47212),	-- Mercy's Hold
						i(47181),	-- Belt of the Churning Blaze
						i(47218),	-- The Confessor's Binding
						-- #if AFTER 7.3.5
						i(47510),	-- Trueheart Girdle (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47185),	-- Leggings of the Haggard Apprentice
						-- #if AFTER 7.3.5
						i(47495),	-- Legplates of Relentless Onslaught (7.3.5 - Used to be only Heroic Mode)
						i(47511),	-- Plated Greaves of Providence (7.3.5 - Used to be only Heroic Mode)
						i(47512),	-- Sinner's Confession (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47213),	-- Abyssal Rune
						i(47214),	-- Banner of Victory
					},
				}),
				e(637, {	-- The Black Knight
					["creatureID"] = 35451,	-- The Black Knight
					["groups"] = {
						-- #if AFTER 7.3.5
						i(49682),	-- Black Knight's Rondel (7.3.5 - Used to be only Heroic Mode)
						i(47569),	-- Spectral Kris (7.3.5 - Used to be only Heroic Mode)
						i(47568),	-- True-Aim Long Rifle (7.3.5 - Used to be only Heroic Mode)
						i(47564),	-- Gaze of the Unknown (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47220),	-- Helm of the Violent Fray
						-- #if AFTER 7.3.5
						i(47529),	-- Mask of the Distant Memory (7.3.5 - Used to be only Heroic Mode)
						i(47562),	-- Symbol of Redemption (7.3.5 - Used to be only Heroic Mode)
						i(47566),	-- The Warlord's Depravity (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47226),	-- Mantle of Inconsolable Fear
						i(47221),	-- Shoulderpads of the Infamous Knave
						i(47232),	-- Drape of the Undefeated
						-- #if AFTER 7.3.5
						i(47527),	-- Embrace of Madness (7.3.5 - Used to be only Heroic Mode)
						i(47565),	-- Vambraces of Unholy Command (7.3.5 - Used to be only Heroic Mode)
						i(47567),	-- Gauntlets of Revelation (7.3.5 - Used to be only Heroic Mode)
						i(47561),	-- Gloves of the Dark Exile (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47230),	-- Handwraps of Surrendered Hope
						i(47231),	-- Belt of Merciless Cruelty
						i(47229),	-- Girdle of Arrogant Downfall
						-- #if AFTER 7.3.5
						i(47563),	-- Girdle of the Dauntless Conqueror (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47227),	-- Girdle of the Pallid Knight
						i(47228),	-- Leggings of the Bloodless Knight
						-- #if AFTER 7.3.5
						i(47560),	-- Boots of the Crackling Flame (7.3.5 - Used to be only Heroic Mode)
						-- #endif
						i(47222),	-- Uruka's Band of Zeal
						i(47215),	-- Tears of the Vanquished
						i(47216),	-- The Black Heart
						-- #if AFTER 8.0
						currency(241),	-- Champion's Seal
						-- #endif
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						currency(241),	-- Champion's Seal
						-- #if BEFORE CATA
						currency(301, {	-- Emblem of Triumph
							["timeline"] = { ADDED_3_2_0, REMOVED_4_0_1 },
						}),
						-- #endif
					}),
					e(634, {	-- Grand Champions
						["crs"] = {
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
						["groups"] = {
							i(47493),	-- Edge of Ruin
							-- #if AFTER 7.3.5
							i(47172),	-- Helm of the Bested Gallant (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47250),	-- Pauldrons of the Deafening Gale
							-- #if AFTER 7.3.5
							i(47176),	-- Breastplate of the Imperial Jouse (7.3.5 - Used to be only from Eadric and Confessor)
							i(47178),	-- Carapace of Grim Visions (7.3.5 - Used to be only from Eadric and Confessor)
							-- #endif
							i(47244),	-- Chestguard of the Ravenous Fiend
							-- #if AFTER 7.3.5
							i(47173),	-- Bindings of the Wicked (7.3.5 - Used to be only Normal Mode)
							i(47177),	-- Gloves of the Argent Fanatic (7.3.5 - Used to be only from Eadric and Confessor)
							i(47170),	-- Belt of Fierce Competition (7.3.5 - Used to be only Normal Mode)
							i(47181),	-- Belt of the Churning Blaze (7.3.5 - Used to be only from Eadric and Confessor)
							i(47174),	-- Binding of the Tranquil Glade (7.3.5 - Used to be only Normal Mode)
							i(47185),	-- Leggings of the Haggard Apprentice (7.3.5 - Used to be only from Eadric and Confessor)
							-- #endif
							i(47249),	-- Leggings of the Snowy Bramble
							-- #if AFTER 7.3.5
							i(47171),	-- Legguards of Abandoned Fealty (7.3.5 - Used to be only Normal Mode)
							i(47175),	-- Scale Boots of the Outlander (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47248),	-- Treads of Dismal Fortune
							i(47243),	-- Mark of the Relentless
							-- #if AFTER 7.3.5
							i(47213),	-- Abyssal Rune (7.3.5 - Used to be only from Eadric and Confessor)
							-- #endif
						},
					}),
					e(635, {	-- Eadric the Pure
						["creatureID"] = 35119,	-- Eadric the Pure
						["groups"] = {
							ach(3803),	-- The Faceroller
							i(47508),	-- Aledar's Battlestar
							i(47509),	-- Mariel's Sorrow
							i(47500),	-- Peacekeeper Blade
							i(47497),	-- Helm of the Crestfallen Challenger
							i(47494),	-- Ancient Pendant of Arathor
							i(47502),	-- Majestic Silversmith Shoulderplates
							-- #if AFTER 7.3.5
							i(47210),	-- Mantle of Gnarled Overgrowth (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47501),	-- Kurisu's Indecision
							-- #if AFTER 7.3.5
							i(47176),	-- Breastplate of the Imperial Joust (7.3.5 - Used to be only Normal Mode)
							i(47178),	-- Carapace of Grim Visions (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47496),	-- Armbands of the Wary Lookout
							-- #if AFTER 7.3.5
							i(47197),	-- Gauntlets of the Stouthearted Crusader (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47498),	-- Gloves of the Dismal Fortune
							-- #if AFTER 7.3.5
							i(47177),	-- Gloves of the Argent Fanatic (7.3.5 - Used to be only Normal Mode)
							i(47181),	-- Belt of the Churning Blaze (7.3.5 - Used to be only Normal Mode)
							i(47202),	-- Leggings of Brazen Trespass (7.3.5 - Used to be only Normal Mode)
							i(47185),	-- Leggings of the Haggard Apprentice (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47495),	-- Legplates of Relentless Onslaught
							i(47503),	-- Legplates of the Argent Armistice
							i(47504),	-- Barkhide Treads
							-- #if AFTER 7.3.5
							i(47201),	-- Boots of Heartfelt Repentance (7.3.5 - Used to be only Normal Mode)
							i(47199),	-- Greaves of the Grand Paladin (7.3.5 - Used to be only Normal Mode)
							i(47200),	-- Signet of Purity (7.3.5 - Used to be only Normal Mode)
							i(47213),	-- Abyssal Rune (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(636, {	-- Argent Confessor Paletress
						["creatureID"] = 34928,	-- Argent Confessor Paletress
						["groups"] = {
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
							i(47522),	-- Marrowstrike
							i(47500),	-- Peacekeeper Blade
							-- #if AFTER 7.3.5
							i(47217),	-- Gaze of the Somber Keeper (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47497),	-- Helm of the Crestfallen Challenger
							i(47494),	-- Ancient Pendant of Arathor
							-- #if AFTER 7.3.5
							i(47219),	-- Brilliant Hailstone Amulet (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47245),	-- Pauldrons of Concealed Loathing
							i(47514),	-- Regal Aurous Shoulderplates
							-- #if AFTER 7.3.5
							i(47176),	-- Breastplate of the Imperial Joust (7.3.5 - Used to be only Normal Mode)
							i(47178),	-- Carapace of Grim Visions (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47496),	-- Armbands of the Wary Lookout
							-- #if AFTER 7.3.5
							i(47211),	-- Wristguards of Ceaseless Regret (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47498),	-- Gloves of Dismal Fortune
							-- #if AFTER 7.3.5
							i(47177),	-- Gloves of the Argent Fanatic (7.3.5 - Used to be only Normal Mode)
							i(47212),	-- Mercy's Hold (7.3.5 - Used to be only Normal Mode)
							i(47181),	-- Belt of the Churning Blaze (7.3.5 - Used to be only Normal Mode)
							i(47218),	-- The Confessor's Binding (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47510),	-- Trueheart Girdle
							-- #if AFTER 7.3.5
							i(47185),	-- Leggings of the Haggard Apprentice (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47495),	-- Legplates of Relentless Onslaught
							i(47511),	-- Plated Greaves of Providence
							i(47512),	-- Sinner's Confession
							-- #if AFTER 7.3.5
							i(47213),	-- Abyssal Rune (7.3.5 - Used to be only Normal Mode)
							i(47214),	-- Banner of Victory (7.3.5 - Used to be only Normal Mode)
							-- #endif
						},
					}),
					e(637, {	-- The Black Knight
						["creatureID"] = 35451,	-- The Black Knight
						["groups"] = {
							ach(5110, {	-- Heroic: Trial of the Champion Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(5111, {	-- Heroic: Trial of the Champion Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(3804),	-- I've Had Worse
							i(49682),	-- Black Knight's Rondel
							i(47569),	-- Spectral Kris
							i(47568),	-- True-Aim Long Rifle
							i(47564),	-- Gaze of the Unknown
							-- #if AFTER 7.3.5
							i(47220),	-- Helm of the Violent Fray (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47529),	-- Mask of the Distant Memory
							i(47562),	-- Symbol of Redemption
							i(47566),	-- The Warlord's Depravity
							-- #if AFTER 7.3.5
							i(47226),	-- Mantle of Inconsolable Fear (7.3.5 - Used to be only Normal Mode)
							i(47221),	-- Shoulderpads of the Infamous Knave (7.3.5 - Used to be only Normal Mode)
							i(47232),	-- Drape of the Undefeated (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47527),	-- Embrace of Madness
							i(47565),	-- Vambraces of Unholy Command
							i(47567),	-- Gauntlets of Revelation
							i(47561),	-- Gloves of the Dark Exile
							-- #if AFTER 7.3.5
							i(47230),	-- Handwraps of Surrendered Hope (7.3.5 - Used to be only Normal Mode)
							i(47231),	-- Belt of Merciless Cruelty (7.3.5 - Used to be only Normal Mode)
							i(47229),	-- Girdle of Arrogant Downfall (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47563),	-- Girdle of the Dauntless Conqueror
							-- #if AFTER 7.3.5
							i(47227),	-- Girdle of the Pallid Knight (7.3.5 - Used to be only Normal Mode)
							i(47228),	-- Leggings of the Bloodless Knight (7.3.5 - Used to be only Normal Mode)
							-- #endif
							i(47560),	-- Boots of the Crackling Flame
							-- #if AFTER 7.3.5
							i(47222),	-- Uruka's Band of Zeal (7.3.5 - Used to be only Normal Mode)
							i(47215),	-- Tears of the Vanquished (7.3.5 - Used to be only Normal Mode)
							i(47216),	-- The Black Heart (7.3.5 - Used to be only Normal Mode)
							-- #endif
							-- #if BEFORE 4.0.1
							i(48418),	-- Fragment of the Black Knight's Soul
							-- #endif
						},
					}),
				},
			}),
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413573, 424211),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(634, {	-- Grand Champions
						["crs"] = {
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
						["groups"] = {
							i(46028),	-- Faceguard of the Eyeless Horror
							i(46024),	-- Kingsbane
						},
					}),
					e(635, {	-- Eadric the Pure
						["creatureID"] = 35119,	-- Eadric the Pure
						["groups"] = {
							i(46022),	-- Pendant of a Thousand Maws
							i(45311),	-- Relentless Edge
						},
					}),
					e(636, {	-- Argent Confessor Paletress
						["creatureID"] = 34928,	-- Argent Confessor Paletress
						["groups"] = {
							i(46022),	-- Pendant of a Thousand Maws
							i(45311),	-- Relentless Edge
						},
					}),
					e(637, {	-- The Black Knight
						["creatureID"] = 35451,	-- The Black Knight
						["groups"] = {
							i(46021),	-- Royal Seal of King Llane
							i(46030),	-- Treads of the Dragon Council
							i(46031),	-- Touch of Madness
						},
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424211),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					e(637, {	-- The Black Knight
						["creatureID"] = 35451,	-- The Black Knight
						["groups"] = {

						},
					}),
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
