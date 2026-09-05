-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local NEKZALI = 2888;
local ENTOMBED = 2874;
local VASHNIK = 2882;
local EXPLORERS = 2894;
local SSZORAK = 2871;
local TWIN_FANGS = 2887;
local COILED_ALTAR = 2883;
local ULATEK = 2895;

------ EncounterToCRS ------
local EncounterToCRS = {
	[NEKZALI] = { 259927 },	-- Nek'zali the Soulcoiler
	[ENTOMBED] = {
		258557,	-- Breath of Ula'tek
		258558,	-- Blood of Ula'tek
	},
	[EXPLORERS] = {
		261835,	-- First Mate Nama
		261843,	-- Scrollsage Iku
		261848,	-- Trader Gebbo
	},
	[SSZORAK] = { 257347 },
	[TWIN_FANGS] = {
		257368,	-- Ithraz
		257361,	-- Vexhul
	},
	[VASHNIK] = { 259181 },
	[COILED_ALTAR] = {
		259447,	-- Zul'jan
		259854,	-- Hex Lord Malacrass
	},
	[ULATEK] = { 268956 },
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[NEKZALI] = {
		i(268248),	-- Amani Summoning Shawl
		i(268216),	-- Cursed Reliquary Cincture
		i(268245),	-- Entombed Cultist's Sabatons
		i(268203),	-- Hexing Spiritrender
		i(268236),	-- Initiate's Sacrificial Tights
		i(268218),	-- Nek'zali's Spiritwalkers
		i(268240),	-- Restless Spirit Shackles
		i(268229),	-- Skullguard of the Risen Sacrifice
		i(270162),	-- Soulcoiler Ritual Vessel
		i(268231),	-- Soulslither Spaulders
		i(268208),	-- Strongblood's Ceremonial Cleaver
		i(270930),	-- Tomb-Creeper's Claw
		i(268235),	-- Vestment of the Awakening
	};
	[ENTOMBED] = {
		i(270912, {	-- Venomcast Idol
			i(271504),	-- Searing Caldera of Calamity
			i(271493),	-- Skulking Viper's Hidepiercers
			i(271484),	-- Hexing Grips of the Ophidian Oracle
		}),
		i(270911, {	-- Venomcured Idol
			i(271538),	-- Abyssal Doomhound's Studded Gauntlets
			i(271529),	-- Enigmatic Dreamwatcher's Gauntlets
			i(271520),	-- Monkey King's Fighting Fists
			i(271511),	-- Chosen Bloodslayer's Fanged Grips
		}),
		i(270913, {	-- Venomforged Idol
			i(271475),	-- Baleful Grave-Knight's Deathgrips
			i(271466),	-- Gauntlets of the Consecrated Flame
			i(271457),	-- Jeweled Gauntlets of the Jade Warlord
		}),
		i(270910, {	-- Venomwoven Idol
			i(271565),	-- Primal Leywarden's Manashapers
			i(271556),	-- Cosmic Penitent's Celestial Grips
			i(271547),	-- Damned Necrolyte's Charred Grasps
		}),
		i(268204),	-- Ancient Construct's Venomshiv
		i(268198),	-- Caustic Keeper-Crusher
		i(268230),	-- Crown of the Eternal Fang
		i(270165),	-- Keeper's Seething Core
		i(268250),	-- Sentinel's Vitriolic Chain
		i(268219),	-- Shadow Hunter's Warmask
		i(268197),	-- Spine of the Hissing Abyss
		i(268224),	-- Venom Warden's Greaves
		i(268228),	-- Venom-Singed Cuffs
	};
	[VASHNIK] = {
		i(270928, {	-- Venomcast Icon
			i(271502),	-- Calamitous Echo's Ebon Greathorns
			i(271495),	-- Skulking Viper's Scuteplate
			i(271486),	-- Fanged Raiment of the Ophidian Oracle
		}),
		i(270927, {	-- Venomcured Icon
			i(271540),	-- Abyssal Doomhound's Coreguard
			i(271531),	-- Enigmatic Dreamwatcher's Lunar Raiment
			i(271522),	-- Battle Gi of the Monkey King
			i(271513),	-- Chosen Bloodslayer's Banded Poncho
		}),
		i(270929, {	-- Venomforged Icon
			i(271477),	-- Baleful Grave-Knight's Breastplate
			i(271468),	-- Bulwark of the Consecrated Flame
			i(271459),	-- Cuirass of the Jade Warlord
		}),
		i(270926, {	-- Venomwoven Icon
			i(271567),	-- Crest of the Primal Leywarden
			i(271558),	-- Cosmic Penitent's Eclipsing Robes
			i(271549),	-- Damned Necrolyte's Rattling Robes
		}),
		i(270161),	-- Fang of Umbral Malignance
		i(268246),	-- Frothing Venom Spaulders
		i(268214),	-- Malignant Toothed Edge
		i(268260),	-- Scaled Fiend's Warboots
		i(268254),	-- Serpentine Mixing Belt
		i(270166),	-- Vashnik's Sanguine Rancor
		i(268205),	-- Venomancer's Winged Channeler
		i(268249),	-- Vile Alchemist's Band
	};
	[EXPLORERS] = {
		i(270924, {	-- Venomcast Remnant
			i(271499),	-- Calamitous Echo's Sundered Peaks
			i(271490),	-- Jaws of the Skulking Viper
			i(271481),	-- Hissing Mantle of the Ophidian Oracle
		}),
		i(270923, {	-- Venomcured Remnant
			i(271535),	-- Abyssal Doomhound's Jaws
			i(271526),	-- Enigmatic Dreamwatcher's Plumage
			i(271517),	-- Tassels of the Monkey King
			i(271508),	-- Chosen Bloodslayer's Voodoo Guards
		}),
		i(270925, {	-- Venomforged Remnant
			i(271472),	-- Baleful Grave-Knight's Gibbets
			i(271463),	-- Pauldrons of the Consecrated Flame
			i(271454),	-- Raging Pauldrons of the Jade Warlord
		}),
		i(270922, {	-- Venomwoven Remnant
			i(271562),	-- Primal Leywarden's Manaflux
			i(271553),	-- Cosmic Penitent's Echoing Screams
			i(271544),	-- Spires of the Damned Necrolyte
		}),
		i(268258),	-- Boots of the Reckless Wayfarer
		i(268242),	-- Errant Scrollsage's Hood
		i(270160),	-- First Mate's Shellward
		i(268200),	-- Gebbo's Backup Blaster
		i(270164),	-- Gebbo's Bottomless Bag
		i(268210),	-- Malevolent Spiritcudgel
		i(268239),	-- Shellbound Bracers
		i(268227),	-- Unpossessed Skullsash
		i(268196),	-- Venom-Slashed Scuteward
	};
	[SSZORAK] = {
		i(270920, {	-- Venomcast Relic
			i(271500),	-- Earthen Pillars of Calamity
			i(271491),	-- Skulking Viper's Coiled Legwraps
			i(271482),	-- Leggings of the Ophidian Oracle
		}),
		i(270919, {	-- Venomcured Relic
			i(271536),	-- Abyssal Doomhound's Legwraps
			i(271527),	-- Enigmatic Dreamwatcher's Leggings
			i(271518),	-- Pantaloons of the Monkey King
			i(271509),	-- Chosen Bloodslayer's Reinforced Pants
		}),
		i(270921, {	-- Venomforged Relic
			i(271473),	-- Baleful Grave-Knight's Greaves
			i(271464),	-- Greaves of the Consecrated Flame
			i(271455),	-- Greaves of the Jade Warlord
		}),
		i(270918, {	-- Venomwoven Relic
			i(271563),	-- Primal Leywarden's Tailored Legwraps
			i(271554),	-- Enveloping Legwraps of the Cosmic Penitent
			i(271545),	-- Damned Necrolyte's Leg Bindings
		}),
		i(268252),	-- Apex Brute's Claw Ring
		i(268257),	-- Caustic Chain-Wrapped Sash
		i(268233),	-- Ferocious Scaleboots
		i(270174),	-- Idol of the Howling Nexus
		i(268234),	-- Ruthless Slaughtergrips
		i(268206),	-- Slithering Savage's Gavel
		i(270163),	-- Sszorak's Ferocity
		i(268201),	-- Venomous Boneglaive
	};
	[TWIN_FANGS] = {
		i(270916, {	-- Venomcast Effigy
			i(271501),	-- Calamitous Echo's Magmashapers
			i(271492),	-- Skulking Viper's Weeping Fangs
			i(271483),	-- Serpent Crown of the Ophidian Oracle
		}),
		i(270915, {	-- Venomcured Effigy
			i(271537),	-- Abyssal Doomhound's Relentless Stare
			i(271528),	-- Enigmatic Dreamwatcher's Somnolent Stare
			i(271519),	-- Monkey King's Unyielding Visage
			i(271510),	-- Chosen Bloodslayer's Spirit Shroud
		}),
		i(270917, {	-- Venomforged Effigy
			i(271474),	-- Baleful Grave-Knight's Casque
			i(271465),	-- Warhelm of the Consecrated Flame
			i(271456),	-- Tempered Horns of the Jade Warlord
		}),
		i(270914, {	-- Venomwoven Effigy
			i(271564),	-- Crown of the Primal Leywarden
			i(271555),	-- Cosmic Penitent's Truesight
			i(271546),	-- Skull of the Damned Necrolyte
		}),
		i(268251),	-- Amulet of the Twin Fangs
		i(268261),	-- Bespittled Slitherslippers
		i(268223),	-- Ophidian Fangmail
		i(268241),	-- Ornaments of the Eternal Coil
		i(270171),	-- Preternatural Antivenom
		i(268264),	-- Ravenous Feaster's Fang
		i(268220),	-- Scaleplate Strangulators
		i(270170),	-- Vexhul's Everflowing Gland
	};
	[COILED_ALTAR] = {
		i(268209),	-- Aman'muso, Warlord's Vengeance
		i(268211),	-- Baleful Hexblade
		i(268255),	-- Cackling Soultreads
		i(268225),	-- Coiled Hex Legguards
		i(268237),	-- Cuisses of the Uncoiled Union
		i(268259),	-- Girdle of Toxic Regret
		i(268243),	-- Grasps of the Eternal Shadow
		i(270169),	-- Hex Lord's Dooming Idol
		i(268213),	-- Maze-roa, Warlord's Fury
		i(268222),	-- Reckless Spirit Breastplate
		i(268256),	-- Sash of the Forlorn Vessel
		i(268253),	-- Silken Voodoo Drape
		i(270173),	-- Zul'jin's Guillotine Technique
	};
	[ULATEK] = {
		i(268215),	-- Abyssal Broodfiend's Bardiche
		i(268265),	-- Aqirbane Reliquary
		i(271876),	-- Awoken Dreadfang Cuirass
		i(268207),	-- Caustic Repose Greatbow
		i(271878),	-- Chausses of Unbound Rancor
		i(270168),	-- Font of Venomous Rage
		i(271875),	-- Gaze of the Coiled Watcher
		i(271092),	-- Jan'thrazet, the Soul Fang
		i(268202),	-- Jaw of the Shackled Goddess
		i(271874),	-- Venomkeeper's Horrific Cowl
		i(270175),	-- Voracious Heart of Ula'tek
		i(271093),	-- Zatha'tek, Breath of Corruption
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(271638),	-- Bound Serpent's Jade Eye
	i(271441),	-- Crushing Coiler Coif
	i(271445),	-- Fanged Brute's Greatbelt
	i(271440),	-- Greaves of the Noxious Depths
	i(271444),	-- Pauldrons of the Forgotten Sacrifice
	i(271435),	-- Slippers of the Hissing Cult
	i(271436),	-- Slitherscale Girdle
	i(271438),	-- Temple Delver's Mystic Helm
	i(271434),	-- Venom Rite Mantle
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	-- #IF AFTER 12.2
	[DIFFICULTY.RAID.LFR] = 0,
	[DIFFICULTY.RAID.NORMAL] = 0,
	[DIFFICULTY.RAID.HEROIC] = 0,
	-- #ELSE
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ENDIF
}

InstanceHelper.BossObjects = {
	[EXPLORERS] = { 673637 },
	[TWIN_FANGS] = { 673657 },
	[ULATEK] = { 673428 },
}

root(ROOTS.Instances, expansion(EXPANSION.MID, {
	inst(1320, {	-- The Venomous Abyss
		["coord"] = { 47.2, 22.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
		["maps"] = {
			2606,	-- The Soulcoil Well
			2607,	-- The Pit of Fangs
			2608,	-- The Vile Crypt
			2609,	-- Crypt of the Soulcoilers
			2610,	-- The Coiled Altar
		},
		["isRaid"] = true,
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(63530, {	-- The Venomous Abyss: Essence of Ula'tek
					crit(116119, {	-- Nek'zali the Soulcoiler
						["_encounter"] = { NEKZALI, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116120, {	-- Entombed Sentinels
						["_encounter"] = { ENTOMBED, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116122, {	-- Vashnik the Malignant
						["_encounter"] = { VASHNIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(63531, {	-- The Venomous Abyss: Beasts of Ula'tek
					crit(116121, {	-- The Lost Explorers
						["_encounter"] = { EXPLORERS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116123, {	-- Sszorak
						["_encounter"] = { SSZORAK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116124, {	-- The Twin Fangs
						["_encounter"] = { TWIN_FANGS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(63532, {	-- The Venomous Abyss: Ula'tek
					crit(116125, {	-- The Coiled Altar
						["_encounter"] = { COILED_ALTAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116126, {	-- Ula'tek
						["_encounter"] = { ULATEK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(63521, {	-- The Venomous Abyss
					crit(116119, {	-- Nek'zali the Soulcoiler
						["_encounter"] = { NEKZALI, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116120, {	-- Entombed Sentinels
						["_encounter"] = { ENTOMBED, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116122, {	-- Vashnik the Malignant
						["_encounter"] = { VASHNIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116121, {	-- The Lost Explorers
						["_encounter"] = { EXPLORERS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116123, {	-- Sszorak
						["_encounter"] = { SSZORAK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116124, {	-- The Twin Fangs
						["_encounter"] = { TWIN_FANGS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116125, {	-- The Coiled Altar
						["_encounter"] = { COILED_ALTAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(116126, {	-- Ula'tek
						["_encounter"] = { ULATEK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(63520, {	-- Heroic: The Venomous Abyss
					crit(116111, {	-- Nek'zali the Soulcoiler
						["_encounter"] = { NEKZALI, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116112, {	-- Entombed Sentinels
						["_encounter"] = { ENTOMBED, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116114, {	-- Vashnik the Malignant
						["_encounter"] = { VASHNIK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116113, {	-- The Lost Explorers
						["_encounter"] = { EXPLORERS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116115, {	-- Sszorak
						["_encounter"] = { SSZORAK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116116, {	-- The Twin Fangs
						["_encounter"] = { TWIN_FANGS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116117, {	-- The Coiled Altar
						["_encounter"] = { COILED_ALTAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(116118, {	-- Ula'tek
						["_encounter"] = { ULATEK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(63522),	-- Mythic: The Venomous Abyss (automated)
				ach(63254, {	-- Glory of the Venomous Abyss Raider (automated)
					i(275652),	-- Crimson Venomfang (MOUNT!)
				}),
				ach(63472),	-- Fang Fatale
				ach(63646),	-- The Venomous Abyss Guild Run
				ach(63647),	-- Heroic: The Venomous Abyss Guild Run
			}),
			o(532226, {	-- The Catalyst
				["description"] = "This allows converting certain pieces of gear into Tier items for your Class.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 40.3, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				["modelScale"] = 4,
				["catalystID"] = 13,	-- ItemBonus.Value_0 MID:S2
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {["upgradeTrackID"]=UPGRADETRACKS.VETERAN}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VENOMOUS_ABYSS_TIER, DIFFICULTY.RAID.LFR)
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VENOMOUS_ABYSS_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VENOMOUS_ABYSS_TIER, DIFFICULTY.RAID.HEROIC)
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						ALL_CLASS_TIERS_HELPER(THE_VENOMOUS_ABYSS_TIER, DIFFICULTY.RAID.MYTHIC)
					),
				},
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(QUESTS, {
				}),
				BossOnly(NEKZALI, {
					i(280305),	-- Soulcoil Remnant (PET!)
					i(279115),	-- Soulcoiler's Ritual Candle (DECOR!)
					i(281227),	-- Soulcoiler's Rush'kah (COSMETIC!)
				}),
				BossOnly(ENTOMBED, {
					i(264716),	-- Hexed Tomb Brazier (DECOR!) [NYI??]
				}),
				BossOnly(VASHNIK, {
					i(272361),	-- Venomous Pyre (DECOR!)
				}),
				BossOnly(EXPLORERS, {
					i(279118),	-- Lost Explorers Mailbox (DECOR!)
				}),
				BossOnly(SSZORAK, {
					i(244343),	-- Vessel of the Howling Ossuary (DECOR!) [Check]
				}),
				BossOnly(TWIN_FANGS, {
					i(273070),	-- Pattern: Adorned Fang (RECIPE!)
					i(279122),	-- Venom-Fanged Font (DECOR)
				}),
				BossOnly(COILED_ALTAR, {
					i(279131),	-- Pillar of the Coiled Isle (DECOR!)
					i(275938),	-- Hex Lord's Gaze (COSMETIC!)
					i(279449, {	-- Hex Troll Mask Fragment
						i(275937),	-- Hex Lord's Visage (COSMETIC!)
					}),
				}),
				BossOnly(ULATEK, {
					i(279500),	-- "Rage of the Shackled" Mural (DECOR!)
					i(278340),	-- Blighted Pearl (CI!)
					i(279127, { ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }),	-- The Venomous Abyss Argent Trophy (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				ZoneDrops({}),
				CommonBossDrops({
					currency(VETERAN_MISTCREST, {
						["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 3316, {	-- The Soulcoilers
					Boss(NEKZALI),
					Boss(TWIN_FANGS),
				}),
				header(HEADERS.LFGDungeon, 3317, {	-- The Essence of Venom
					Boss(ENTOMBED),
					Boss(VASHNIK),
				}),
				header(HEADERS.LFGDungeon, 3318, {	-- The Serpent Warren
					Boss(EXPLORERS),
					Boss(SSZORAK),
				}),
				header(HEADERS.LFGDungeon, 3319, {	-- The Heart of Ula'tek
					Boss(COILED_ALTAR),
					Boss(ULATEK, {
						i(270909, {	-- Slumbering Coil Curio
							["sym"] = {{"sub", "instance_tier",1320,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				n(ACHIEVEMENTS, {
					ach(63670),	-- Comforting Da Spirits
				}),
				BossOnly(NEKZALI, {
					ach(63418),	-- Well, Well, Little Sky
				}),
				BossOnly(ENTOMBED, {
					ach(63250),	-- Is Venom Stasis A Joke To You?
				}),
				BossOnly(VASHNIK, {
					ach(63397),	-- Kept You Waiting Huh?
				}),
				BossOnly(EXPLORERS, {
					ach(63645),	-- Accidental Inclusion
				}),
				BossOnly(SSZORAK, {
					ach(63391),	-- Jumping Through Hoops
				}),
				BossOnly(TWIN_FANGS, {
					ach(63656),	-- Taking a Bite out of Slime
				}),
				BossOnly(COILED_ALTAR, {
					ach(63669),	-- Watch Out Behind You
				}),
				BossOnly(ULATEK, {
					ach(63609, {	-- No Egg Scramble
						i(279387),	-- Ul'ava'took (PET!)
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CHAMPION_MISTCREST, {
						["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
					}),
				}),
				n(QUESTS, {
					q(98226, {	-- The Venomous Abyss: Deception Unmasked [N]
						["qg"] = 262667,	-- Zul'jarra
						["qi"] = 280007,	-- Mask Fragment (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(NEKZALI),
				Boss(ENTOMBED),
				Boss(VASHNIK),
				Boss(EXPLORERS),
				Boss(SSZORAK),
				Boss(TWIN_FANGS),
				Boss(COILED_ALTAR),
				Boss(ULATEK, {
					i(270909, {	-- Slumbering Coil Curio
						["sym"] = {{"sub", "instance_tier",1320,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(NEKZALI),
				BossOnly(ENTOMBED),
				BossOnly(VASHNIK),
				BossOnly(EXPLORERS),
				BossOnly(SSZORAK),
				BossOnly(TWIN_FANGS),
				BossOnly(COILED_ALTAR),
				BossOnly(ULATEK, {
					ach(63650, { ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }),	-- Ahead of the Curve: Ula'tek
					i(279125, { ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }),	-- The Venomous Abyss Aureate Trophy (DECOR!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(HERO_MISTCREST, {
						["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
					}),
				}),
				n(QUESTS, {
					q(98228, {	-- The Venomous Abyss: Deception Unmasked [H]
						["qg"] = 262667,	-- Zul'jarra
						["qi"] = 280089,	-- Mask Fragment (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(NEKZALI),
				Boss(ENTOMBED),
				Boss(VASHNIK),
				Boss(EXPLORERS),
				Boss(SSZORAK),
				Boss(TWIN_FANGS),
				Boss(COILED_ALTAR),
				Boss(ULATEK, {
					i(270909, {	-- Slumbering Coil Curio
						["sym"] = {{"sub", "instance_tier",1320,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(MYTH_MISTCREST, {
						["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
					}),
				}),
				n(QUESTS, {
					q(98229, {	-- The Venomous Abyss: Deception Unmasked [M]
						["qg"] = 262667,	-- Zul'jarra
						["qi"] = 280090,	-- Mask Fragment (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(NEKZALI, {
					ach(63523),	-- Mythic: Nek'zali the Soulcoiler
				}),
				Boss(ENTOMBED, {
					ach(63524),	-- Mythic: Entombed Sentinels
				}),
				Boss(VASHNIK, {
					ach(63526),	-- Mythic: Vashnik the Malignant
				}),
				Boss(EXPLORERS, {
					ach(63525),	-- Mythic: The Lost Explorers
				}),
				Boss(SSZORAK, {
					ach(63527),	-- Mythic: Sszorak
				}),
				Boss(TWIN_FANGS, {
					ach(63528),	-- Mythic: The Twin Fangs
				}),
				Boss(COILED_ALTAR, {
					ach(63529),	-- Mythic: The Coiled Altar
				}),
				Boss(ULATEK, {
					ach(63476, {	-- Mythic: Ula'tek
						title(791),	-- <Name>, Venom's End
					}),
					ach(63651, {["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 }}),	-- Cutting Edge: Ula'tek
					ach(63652, applyDataSelf({["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {	-- Hall of Fame: Ula'tek
						title(790),	-- <Name>, Famed Slayer of Ula'tek
					})),
					ach(63648),	-- Mythic: Ula'tek Guild Run
					i(275658),	-- Primeval Skyfriend (MOUNT!)
					i(279129, {["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 }}),	-- The Venomous Abyss Gleaming Trophy (DECOR!)
					i(270909, {	-- Slumbering Coil Curio
						["sym"] = {{"sub", "instance_tier",1320,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
		},
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	inst(1320, {	-- The Venomous Abyss
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			-- LFR
			hqt(98080, name(HEADERS.NPC, 261492)),	-- Gorefang the Reaver
			hqt(98092, name(HEADERS.NPC, 266538)),	-- Shriekcoil
			-- N
			hqt(98083, name(HEADERS.NPC, 261491)),	-- Noxiss Venomcrest
			hqt(98079, name(HEADERS.NPC, 261492)),	-- Gorefang the Reaver
			hqt(98091, name(HEADERS.NPC, 266538)),	-- Shriekcoil
			hqt(98075, name(HEADERS.NPC, 261503)),	-- Frightmaw
			hqt(98087, name(HEADERS.NPC, 263594)),	-- Venomweaver Vexhiss
			hqt(98097, name(HEADERS.Encounter, COILED_ALTAR)),	-- Coiled Altar
			hqt(97980, name(HEADERS.Encounter, ULATEK)),	-- Ula'tek
			-- H
			hqt(96496, name(HEADERS.Encounter, NEKZALI)),	-- second week this triggered on boss kill... weird it's likely something else
			hqt(98082, name(HEADERS.NPC, 261491)),	-- Noxiss Venomcrest
			hqt(98078, name(HEADERS.NPC, 261492)),	-- Gorefang the Reaver
			hqt(98090, name(HEADERS.NPC, 266538)),	-- Shriekcoil
			hqt(98074, name(HEADERS.NPC, 261503)),	-- Frightmaw
			hqt(98086, name(HEADERS.NPC, 263594)),	-- Venomweaver Vexhiss
			hqt(97983, name(HEADERS.Encounter, ULATEK)),	-- Ula'tek
			-- M
			hqt(98081, name(HEADERS.NPC, 261491)),	-- Noxiss Venomcrest
			hqt(98077, name(HEADERS.NPC, 261492)),	-- Gorefang the Reaver
			hqt(98089, name(HEADERS.NPC, 266538)),	-- Shriekcoil
			hqt(98073, name(HEADERS.NPC, 261503)),	-- Frightmaw
		},
	}),
}))

--[[ This is not quite accurate. Only certain Zone Drops were given random NYI versions, or maybe they really do come from some other situation...
root(ROOTS.NeverImplemented, expansion(EXPANSION.MID, {
	inst(1320, {	-- The Venomous Abyss
		["timeline"] = { ADDED_12_1_0 },
		["groups"] = {
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				ZoneDrops(sharedData({["bonusID"] = 6895},clone(ZoneDropLoot))),
			}),
		},
	}),
}))
--]]
