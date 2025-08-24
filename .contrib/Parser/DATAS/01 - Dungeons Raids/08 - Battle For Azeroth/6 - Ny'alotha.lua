-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local WRATHION = 2368;
local MAUT = 2365;
local PROPHET = 2369;
local INQUISITOR = 2377;
local HIVEMIND = 2372;
local SHADHAR = 2367;
local DRESTAGATH = 2373;
local ILGYNOTH = 2374;
local VEXIONA = 2370;
local RADEN = 2364;
local CARAPACE = 2366;
local NZOTH = 2375;

------ EncounterToCRS ------
local EncounterToCRS = {
	[WRATHION] = { 156818 },	-- Wrathion, the Black Emperor
	[MAUT] = { 156523 },	-- Maut
	[PROPHET] = {
		157238,	-- The Prophet Skitra
		157620,	-- The Prophet Skitra
	},
	[INQUISITOR] = {
		160229, -- Dark Inquisitor Xanesh
		156575,	-- Dark Inquisitor Xanesh
	},
	[HIVEMIND] = {	-- The Hivemind
		157253,	-- Ka'zir
		157254,	-- Tek'ris
	},
	[SHADHAR] = { 157231 },	-- Shad'har the Insatiable
	[DRESTAGATH] = { 157602 },	-- Drest'agath
	[ILGYNOTH] = { 158328 },	-- Il'gynoth, Corruption Reborn
	[VEXIONA] = { 157354 },	-- Vexiona
	[RADEN] = { 156866 },	-- Ra-den the Despoiled
	[CARAPACE] = {	-- Carapace of N'Zoth
		162429,	-- Fury of N'Zoth
		157439,	-- Fury of N'Zoth
	},
	[NZOTH] = { 158041 },	-- N'Zoth, the Corruptor
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[WRATHION] = {
		i(172185),	-- Destroyer's Shadowblade
		i(174170),	-- Dragonbone Vambraces
		i(174153),	-- Ebony Scaled Gauntlets
		i(174125),	-- Emberscale Gloves
		i(172199),	-- Faralos, Empire's Dream
		i(174044),	-- Humming Black Dragonscale
		i(174105),	-- Mish'un, Blade of Tyrants
		i(174139),	-- Onyx-Imbued Breeches
	};
	[MAUT] = {
		i(172191),	-- An'zig Vra
		i(174141),	-- Boots of Manifest Shadow
		i(173944),	-- Forbidden Obsidian Claw
		i(174155),	-- Greaves of Forbidden Magics
		i(174172),	-- Living Obsidian Legguards
		i(174124),	-- Mana-Infused Sash
		i(174152),	-- Pauldrons of Ill Portent
		i(173940),	-- Sigil of Warding
		i(172200),	-- Sk'shuul Vaz
		i(174132),	-- Stygian Guise
	};
	[PROPHET] = {
		i(172201),	-- Bloodstained Ritual Athame
		i(174173),	-- Boots of Hallucinatory Reality
		i(174138),	-- Bracers of Dark Prophecy
		i(174143),	-- Macabre Ritual Pants
		i(174060),	-- Psyche Shredder
		i(174123),	-- Psychic's Subtle Slippers
		i(174119),	-- Robes of Unreality
		i(174157),	-- Talons of Grim Revelations
		i(172193),	-- Whispering Eldritch Bow
		i(174165),	-- Writhing Spaulders of Madness
	};
	[INQUISITOR] = {
		i(174126),	-- Binding of Dark Heresies
		i(174156),	-- Chainlink Belt of Ill Omens
		i(174140),	-- Cord of Anguished Cries
		i(174169),	-- Gauntlets of Foul Inquisition
		i(173943),	-- Torment in a Jar
		i(174121),	-- Trousers of Peculiar Potency
		i(172190),	-- Uhnish Vwah
		i(172196),	-- Vorzz Yoq'al
	};
	[HIVEMIND] = {
		i(174137),	-- Chitinspine Gloves
		i(174171),	-- Dark Crystalline Girdle
		i(174154),	-- Nightmarish Chain Shackles
		i(174106),	-- Qwor N'lyeth
		i(174530),	-- Ring of Collective Consciousness
		i(172192),	-- The All-Seeing Eye
		i(174122),	-- Void-drenched Wristwraps
	};
	[SHADHAR] = {
		i(174177),	-- Bracers of Phantom Pains
		i(174162),	-- Ego-Annihilating Grips
		i(174130),	-- Grips of Occult Reminiscence
		i(174107),	-- Insidious Writhing Longbow
		i(174531),	-- Void-Etched Band
		i(172186),	-- Warmace of Waking Nightmares
		i(174145),	-- Wristwraps of Volatile Power
	};
	[DRESTAGATH] = {
		i(174174),	-- Belt of Muttering Truths
		i(174146),	-- Gloves of Abyssal Authority
		i(172195),	-- Halsheth, Slumberer's Spear
		i(174532),	-- Ichorspine Loop
		i(172198),	-- Mar'kowa, the Mindpiercer
		i(174159),	-- Spinebarb Legplates
		i(173946),	-- Writhing Segment of Drest'agath
		i(173946),	-- Writhing Segment of Drest'agath
	};
	[ILGYNOTH] = {
		i(174142),	-- Belt of Braided Vessels
		i(174161),	-- Bracers of Manifest Apathy
		i(174116),	-- Cowl of Unspeakable Horrors
		i(174129),	-- Cuffs of Grim Conjuration
		i(172189),	-- Eyestalk of Il'gynoth
		i(174180),	-- Oozing Coagulum
		i(172188),	-- Precipice of Oblivion
		i(174176),	-- Sabatons of Malevolent Intent
		i(174150),	-- Scales of the Scheming Behemoth
		i(174163),	-- Second Sight Helm
		i(174135),	-- Spaulders of Aberrant Allure
	};
	[VEXIONA] = {
		i(172194),	-- Gift of the Void
		i(174148),	-- Helm of Deep Despair
		i(174120),	-- Void Ascendant's Mantle
		i(174164),	-- Breastplate of Twilight Decimation
		i(174131),	-- Darkheart Robe
		i(174160),	-- Greaves of the Twilight Drake
	};
	[RADEN] = {
		i(174128),	-- Boots of Wrought Shadow
		i(174168),	-- Carapace of Pulsing Vita
		i(174149),	-- Dreamer's Unblinking Pauldrons
		i(174134),	-- Gibbering Maw
		i(174175),	-- Reality-Defying Greaves
		i(174115),	-- Robe of the Fallen Keeper
		i(172228),	-- Shandai, Watcher of Cosmos
		i(172197),	-- Unguent Caress
		i(174500),	-- Vita-Charged Titanshard
		i(174528),	-- Vita-Twisted Titanshard
	};
	[CARAPACE] = {
		i(174127),	-- Corporeal Supplicant's Trousers
		i(174144),	-- Corpuscular Leather Greaves
		i(174151),	-- Helm of Actualized Visions
		i(174109),	-- Lurker's Piercing Gaze
		i(174178),	-- Mirage-Weaver's Gauntlets
		i(174166),	-- Pauldrons of Infinite Dreams
		i(172227),	-- Shard of the Black Empire
		i(174108),	-- Shgla'yos, Astral Malignity
		i(174117),	-- Spaulders of Miasmic Mycelia
		i(174136),	-- Tortured Fleshbeast Cuirass
		i(174158),	-- Watcher's Scheming Girdle
	};
	[NZOTH] = {
		i(172187),	-- Devastation's Hour
		i(172229),	-- Dominion, Lurker Beyond Dreams
		i(174167),	-- Greathelm of Phantasmic Reality
		i(174147),	-- Last Vestige of Neltharion
		i(174277),	-- Lingering Psychic Shell
		i(174103),	-- Manifesto of Madness
		i(174133),	-- Pauldrons of the Great Convergence
		i(174533),	-- Ring of Cosmic Potential
		i(174118),	-- Visage of Nightmarish Machinations
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(175005),	-- Belt of Concealed Intent
	i(175007),	-- Footpads of Terrible Delusions
	i(175006),	-- Gauntlets of Nightmare Manifest
	i(175004),	-- Legwraps of Horrifying Figments
	i(175008),	-- Lurking Schemer's Band
	i(175010),	-- Maddened Adherent's Bulwark
	i(175009),	-- Zealous Ritualist's Reverie
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_3_0 } }, {
	inst(1180, {	-- Ny'alotha
		["coords"] = {
			{ 55.1, 43.8, NZOTH_ASSAULT_ULDUM },
			{ 41.6, 45.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
		},
		["isRaid"] = true,
		["lvl"] = { 50 },
		["maps"] = {
			1580,	-- Vision of Destiny
			1581,	-- Annex of Prophecy
			1582,	-- Ny'alotha
			1590,	-- The Hive
			1591,	-- Terrace of Desolation
			1592,	-- The Ritual Chamber
			1593,	-- Twilight Landing
			1594,	-- Maw of Gor'ma
			1595,	-- Warren of Decay
			1596,	-- Chamber of Rebirth
			1597,	-- Locus of Infinite Truths
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(14058),	-- All Eyes On Me (Ny'alotha)
				ach(14146, {	-- Glory of the Ny'alotha Raider (automated)
					i(174861),	-- Wriggling Parasite (MOUNT!)
				}),
				ach(14193, {	-- Vision of Destiny
                    crit(46693, {	-- Wrathion, the Black Emperor
                        ["_encounter"] = { WRATHION, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46694, {	-- Maut
                        ["_encounter"] = { MAUT, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46695, {	-- The Prophet Skitra
                        ["_encounter"] = { PROPHET, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                }),
				ach(14194, {	-- Halls of Devotion
                    crit(46696, {	-- Dark Inquisitor Xanesh
                        ["_encounter"] = { INQUISITOR, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46697, {	-- Vexiona
                        ["_encounter"] = { VEXIONA, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46698, {	-- The Hivemind
                        ["_encounter"] = { HIVEMIND, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46699, {	-- Ra-den the Despoiled
                        ["_encounter"] = { RADEN, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                }),
				ach(14195, {	-- Gift of Flesh
                    crit(46700, {	-- Shad'har the Insatiable
                        ["_encounter"] = { SHADHAR, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46701, {	-- Drest'agath
                        ["_encounter"] = { DRESTAGATH, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46702, {	-- Il'gynoth, Corruption Reborn
                        ["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                }),
				ach(14196, {	-- The Waking Dream
                    crit(46703, {	-- Carapace of N'Zoth
                        ["_encounter"] = { CARAPACE, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                    crit(46704, {	-- N'Zoth, the Corruptor
                        ["_encounter"] = { NZOTH, DIFFICULTY.RAID.MULTI.ALL },
                    }),
                }),
				ach(14039),	-- Ny'alotha, the Waking City Guild Run
				ach(40963, {	-- Ny'alotha, the Waking City (automated)
					["timeline"] = { ADDED_11_0_7 },
				}),
			}),
			n(AZERITE_ESSENCES, {
				i(173883, {	-- Replicating Void Droplets (Rank 1)
					["cost"] = { { "i", 174279, 15 } },	-- 15x Encrypted Ny'alothan Text
				}),
				i(173884, {	-- Burgeoning Void Droplet (Rank 2)
					["cost"] = { { "i", 174279, 30 } },	-- 30x Encrypted Ny'alothan Text
				}),
				i(173885, {	-- Volatile Void Droplet (Rank 3)
					["cost"] = { { "i", 174279, 60 } },	-- 60x Encrypted Ny'alothan Text
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					i(171202),	-- Vantus Rune Technique: Ny'alotha, the Waking City [Rank 1] (RECIPE!)
					i(171201),	-- Vantus Rune Technique: Ny'alotha, the Waking City [Rank 2] (RECIPE!)
					i(171200),	-- Vantus Rune Technique: Ny'alotha, the Waking City [Rank 3] (RECIPE!)
				}),
				BossOnly(WRATHION),
				BossOnly(MAUT, {
					i(174446),	-- Muar (PET!)
				}),
				BossOnly(PROPHET, {
					i(174279),	-- Encrypted Ny'alothan Text
				}),
				BossOnly(INQUISITOR),
				BossOnly(HIVEMIND, {
					i(174448),	-- Aqir Hivespawn (PET!)
					i(174449),	-- Ra'kim (PET!)
				}),
				BossOnly(SHADHAR),
				BossOnly(DRESTAGATH),
				BossOnly(ILGYNOTH, {
					i(174279),	-- Encrypted Ny'alothan Text
				}),
				BossOnly(VEXIONA, {
					i(174279),	-- Encrypted Ny'alothan Text
				}),
				BossOnly(RADEN, {
					i(174279),	-- Encrypted Ny'alothan Text
					i(174447),	-- Void-Scarred Anubisath (PET!)
				}),
				BossOnly(CARAPACE),
				BossOnly(NZOTH, {
					i(174279),	-- Encrypted Ny'alothan Text
					i(174452),	-- Eye of Corruption (PET!)
					i(207091, {	-- Technique: Glyph of the Shath'Yar (RECIPE!)
						["timeline"] = { ADDED_10_1_5 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = {
					177193,	-- Kiku
					177208,	-- Eppu
				},
				["coords"] = {
					{ 74.0, 13.4, BORALUS },	-- Kiku
					{ 68.0, 33.6, THE_GREAT_SEAL },	-- Eppu
				},
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 2036, {	-- Vision of Destiny
					Boss(WRATHION),
					Boss(MAUT),
					Boss(PROPHET),
				}),
				header(HEADERS.LFGDungeon, 2037, {	-- Halls of Devotion
					Boss(INQUISITOR),
					Boss(VEXIONA),
					Boss(HIVEMIND),
					Boss(RADEN),
				}),
				header(HEADERS.LFGDungeon, 2038, {	-- Gift of Flesh
					Boss(SHADHAR),
					Boss(DRESTAGATH),
					Boss(ILGYNOTH),
				}),
				header(HEADERS.LFGDungeon, 2039, {	-- The Waking Dream
					Boss(CARAPACE),
					Boss(NZOTH),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(WRATHION, {
					ach(14019),	-- Smoke Test
				}),
				BossOnly(MAUT, {
					ach(14008),	-- Mana Sponge
				}),
				BossOnly(PROPHET, {
					ach(14037),	-- Phase 3: Prophet
				}),
				BossOnly(INQUISITOR, {
					ach(14024),	-- Buzzer Beater
				}),
				BossOnly(HIVEMIND, {
					ach(14023),	-- Realizing Your Potential
				}),
				BossOnly(SHADHAR, {
					ach(13990),	-- You Can Pet the Dog, But...
				}),
				BossOnly(DRESTAGATH, {
					ach(14026),	-- Temper Tantrum
				}),
				BossOnly(ILGYNOTH, {
					ach(14038),	-- Bloody Mess
				}),
				BossOnly(VEXIONA, {
					ach(14139),	-- Total Annihilation
				}),
				BossOnly(RADEN, {
					ach(13999),	-- Clean up, Aisle 9
				}),
				BossOnly(CARAPACE, {
					ach(14147),	-- Cleansing Treatment
				}),
				BossOnly(NZOTH, {
					ach(14148),	-- Peer Pressure
					i(175062),	-- Malefic Core
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(58373, {	-- Ny'alotha: MOTHER's Guidance [N]
						["provider"] = { "n", 160177 },	-- Wrathion
						["lockCriteria"] = { 1,
							"questID", 58374,	-- Ny'alotha: MOTHER's Guidance [H]
							"questID", 58375,	-- Ny'alotha: MOTHER's Guidance [M]
						},
						["groups"] = {
							i(174910),	-- Dragon Heart (QI!)
							i(174913),	-- Prophetic Eye (QI!)
							i(174063),	-- Titan Core (QI!)
						},
					}),
				}),
				ZoneDrops({}),
				Boss(WRATHION),
				Boss(MAUT),
				Boss(PROPHET),
				Boss(INQUISITOR),
				Boss(HIVEMIND),
				Boss(SHADHAR),
				Boss(DRESTAGATH),
				Boss(ILGYNOTH),
				Boss(VEXIONA),
				Boss(RADEN),
				Boss(CARAPACE),
				Boss(NZOTH),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(NZOTH, {
					ach(14068, {	-- Ahead of the Curve: N'Zoth, the Corruptor
						["timeline"] = { REMOVED_9_0_1 },
					}),
					i(174863, {	-- Spawn of Vexiona (QS!)
						["timeline"] = { REMOVED_9_0_1 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(58374, {	-- Ny'alotha: MOTHER's Guidance [H]
						["provider"] = { "n", 160177 },	-- Wrathion
						["lockCriteria"] = { 1,
							"questID", 58375,	-- Ny'alotha: MOTHER's Guidance [M]
						},
						["groups"] = {
							i(174909),	-- Dragon Heart (QI!)
							i(174911),	-- Prophetic Eye (QI!)
							i(174064),	-- Titan Core (QI!)
						},
					}),
				}),
				ZoneDrops({}),
				Boss(WRATHION),
				Boss(MAUT),
				Boss(PROPHET),
				Boss(INQUISITOR),
				Boss(HIVEMIND),
				Boss(SHADHAR),
				Boss(DRESTAGATH),
				Boss(ILGYNOTH),
				Boss(VEXIONA),
				Boss(RADEN),
				Boss(CARAPACE),
				Boss(NZOTH),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(58375, {	-- Ny'alotha: MOTHER's Guidance [M]
						["provider"] = { "n", 160177 },	-- Wrathion
						["groups"] = {
							i(174908),	-- Dragon Heart (QI!)
							i(174912),	-- Prophetic Eye (QI!)
							i(174065),	-- Titan Core (QI!)
						},
					}),
				}),
				ZoneDrops({}),
				Boss(WRATHION, {
					ach(14041),	-- Mythic: Wrathion, the Black Emperor
				}),
				Boss(MAUT, {
					ach(14043),	-- Mythic: Maut
				}),
				Boss(PROPHET, {
					ach(14044),	-- Mythic: The Prophet Skitra
				}),
				Boss(INQUISITOR, {
					ach(14045),	-- Mythic: Dark Inquisitor Xanesh
				}),
				Boss(HIVEMIND, {
					ach(14046),	-- Mythic: The Hivemind
				}),
				Boss(SHADHAR, {
					ach(14048),	-- Mythic: Shad'har the Insatiable
				}),
				Boss(DRESTAGATH, {
					ach(14049),	-- Mythic: Drest'agath
				}),
				Boss(ILGYNOTH, {
					ach(14052),	-- Mythic: Il'gynoth, Corruption Reborn
				}),
				Boss(VEXIONA, {
					ach(14050),	-- Mythic: Vexiona
				}),
				Boss(RADEN, {
					ach(14051),	-- Mythic: Ra-den the Despoiled
				}),
				Boss(CARAPACE, {
					ach(14054),	-- Mythic: Carapace of N'Zoth
				}),
				Boss(NZOTH, {
					ach(14069, {	-- Cutting Edge: N'Zoth, the Corruptor
						["timeline"] = { REMOVED_9_0_1 },
					}),
					ach(14071, {	-- Hall of Fame: N'Zoth the Corruptor (Alliance)
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { REMOVED_9_0_1 },
						["groups"] = { title(416) },	-- <Name>, Famed Slayer of N'Zoth
					}),
					ach(14072, {	-- Hall of Fame: N'Zoth the Corruptor (Horde)
						["races"] = HORDE_ONLY,
						["timeline"] = { REMOVED_9_0_1 },
						["groups"] = { title(416) },	-- <Name>, Famed Slayer of N'Zoth
					}),
					ach(14055, {	-- Mythic: N'Zoth, the Corruptor
						title(417),	-- the Uncorrupted
					}),
					ach(14040),	-- Mythic: N'Zoth the Corruptor Guild Run
					i(174872),	-- Ny'alotha Allseer (MOUNT!)
					i(173886, {	-- Bursting Void Droplet
						["timeline"] = { REMOVED_9_0_1 },
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
	inst(1180, {	-- Ny'alotha
		q(58550),	-- Mythic: Prophet Skitra
		q(58542),	-- Mythic: Vexiona
		q(58546),	-- Mythic: Ra-den
		q(58538),	-- Mythic: Il'gynoth
		q(58534),	-- Mythic: N'zoth

		q(59557),	-- kill wrathion
		q(59558),	-- kill Maut
		q(58547),	-- kill skitra - probably triggers when first wing clears?
		q(58548),	-- kill skitra - probably triggers when first wing clears?
		q(58549),	-- kill skitra on heroic?
		q(59559),	-- kill skitra - kill credit
		q(59136),	-- after coming up the elevator after first wing. Likely the RP and respawn point reset
		q(59561),	-- kill dark inquisitor xanesh
		q(58539),	-- kill vexiona - probably triggers when the right wing is cleared
		q(58540),	-- kill vexiona - probably triggers when the right wing is cleared
		q(58541),	-- looted Dragon Heart from vexiona on heroic. May be different ID for different difficulties
		q(59562),	-- kill vexiona - kill credit
		q(59563),	-- kill shad'har
		q(59046),	-- kill Jesh'ra, big add with 200 Mementos as loot
		q(59047),	-- kill Sanguimar, big add with 200 Mementos as loot
		q(59048),	-- kill Deresh of the Nothingness, big add with 200 Mementos as loot
		q(59566),	-- kill drest'agath
		q(59560),	-- kill hivemind
		q(58535),	-- Il'gynoth wing clear. probably triggers the azerite beacon
		q(58536),	-- Il'gynoth wing clear. triggers dialog?
		q(58537),	-- looted eye of prophecy from il'gynoth on heroic. May be different ID for different difficulties
		q(59564),	-- kill Il'gynoth
		q(59565),	-- kill ra-den
		q(58543),	-- kill ra-den - either the wing clear OR the beacon placement
		q(58544),	-- kill ra-den - either the wing clear OR the beacon placement
		q(58545),	-- triggered together with 58543, 58544 and 59565. My first ever kill of Ra-den (happened on heroic)
		q(59567),	-- kill Carapace of N'Zoth (Fury of N'Zoth)
		q(59568),	-- N'Zoth killed on Heroic. Possibly the same for other difficulties?
		q(58531),	-- triggered when killing N'zoth on Heroic for the first time, had previously only done LFR
		q(58533),	-- triggered when killing N'zoth on Heroic for the first time, had previously only done LFR
		q(58532),	-- triggered when killing N'Zoth in LFR
		q(59531),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59532),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59533),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59134),	-- my guess is that it triggers after getting Malefic Core from N'Zoth. I got it on heroic and it wasn't present on my previous heroic kills
	}),
})));
