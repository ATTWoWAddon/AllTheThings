-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local GOROTH = 1862;
local INQUISITION = 1867;
local HARJATAN = 1856;
local SASSZINE = 1861;
local SISTERS = 1903;
local DESOLATE_HOST = 1896;
local MAIDEN = 1897;
local AVATAR = 1873;
local KILJAEDEN = 1898;

------ EncounterToCRS ------
local EncounterToCRS = {
	[GOROTH] = { 115844 },	-- Goroth
	[INQUISITION] = {	-- Demonic Inquisition
		116689,	-- Atrigan
		116691,	-- Belac
	},
	[HARJATAN] = { 116407 },	-- Harjatan
	[SISTERS] = {	-- Sisters of the Moon
		118374,	-- Captain Yathae Moonstrike
		118523,	-- Huntress Kasparian
		118518,	-- Priestess Lunaspyre
	},
	[SASSZINE] = { 115767 },	-- Mistress Sassz'ine
	[DESOLATE_HOST] = {
		119072,	-- The Desolate Host
		118460,	-- Engine of Souls
		118462,	-- Soul Queen Dejahna
	},
	[MAIDEN] = { 118289 },	-- Maiden of Vigilance
	[AVATAR] = {	-- Fallen Avatar
		116939,	-- Fallen Avatar
		117264,	-- Maiden of Valor
	},
	[KILJAEDEN] = { 117269 },	-- Kil'jaeden
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[GOROTH] = {
		i(147055),	-- Belt of Screaming Slag
		i(147108),	-- Brand of Relentless Agony
		i(147076),	-- Charred Hymnal of the Moon
		i(147039),	-- Cinch of Sizzling Flesh
		i(146986),	-- Emberscatter Treads
		i(147112),	-- Felsoul Vortex
		i(147022),	-- Feverish Carapace
		i(147104),	-- Icon of Perverse Animation
		i(147084),	-- Imploding Infernal Star
		i(147009),	-- Infernal Cinders
		i(147065),	-- Lava-Slough Legguards
		i(146992),	-- Legwraps of Fused Loathing
		i(147057),	-- Pain-Singed Armguards
		i(147069),	-- Shoulderplates of Crackling Flame
		i(147027),	-- Spirebreaker Harness
	};
	[INQUISITION] = {
		i(147003),	-- Barbaric Mindslaver
		i(147080),	-- Blood of the Unworthy
		i(147073),	-- Bonemeal-Crusted Armplates
		i(147035),	-- Bonespur Studded Legwraps
		i(146998),	-- Braided Torture Lash
		i(147010),	-- Cradle of Anguish
		i(147147),	-- Crown of the Arcane Tempest
		i(147130),	-- Demonbane Faceguard
		i(147183),	-- Diabolic Helm
		i(147172),	-- Fanged Slayer's Helm
		i(147051),	-- Flesh-Raking Leggings
		i(147124),	-- Gravewarden Visage
		i(147178),	-- Helmet of the Skybreaker
		i(147165),	-- Hood of Blind Absolution
		i(147077),	-- Inexorable Truth Serum
		i(147096),	-- Inquisition's Master Key
		i(146996),	-- Mantle of Broken Spirits
		i(147053),	-- Pauldrons of the Gibbering Eye
		i(147160),	-- Radiant Lightbringer Crown
		i(147041),	-- Sinew-Stitched Wristguards
		i(147088),	-- Smoldering Thumbscrews
		i(147136),	-- Stormheart Headdress
		i(147013),	-- String of Extracted Incisors
		i(147190),	-- Titanic Onslaught Greathelm
		i(147142),	-- Wildstalker Helmet
		i(147154),	-- Xuen's Helm
	};
	[HARJATAN] = {
		i(147100),	-- Calcified Barnacle
		i(147002),	-- Charm of the Rising Tide
		i(147129),	-- Demonbane Gauntlets
		i(147182),	-- Diabolic Gloves
		i(147037),	-- Dripping Arcfin Shoulderpads
		i(147171),	-- Fanged Slayer's Handguards
		i(147029),	-- Glacier Walkers
		i(147146),	-- Gloves of the Arcane Tempest
		i(147164),	-- Gloves of Blind Absolution
		i(147123),	-- Gravewarden Handguards
		i(147177),	-- Grips of the Skybreaker
		i(147109),	-- Harjatan's Leering Eye
		i(147043),	-- Hauberk of Frozen Mist
		i(147092),	-- Ice-Threaded Conch
		i(147045),	-- Insulated Finpads
		i(147159),	-- Radiant Lightbringer Gauntlets
		i(147000),	-- Ravenous Devotee's Bracelets
		i(146994),	-- Robe of Aqueous Command
		i(147020),	-- Scaled Band of Servitude
		i(147071),	-- Shiversleet Waistguard
		i(147135),	-- Stormheart Gloves
		i(147189),	-- Titanic Onslaught Handguards
		i(147067),	-- Wave-Hammered Breastplate
		i(147141),	-- Wildstalker Gauntlets
		i(147153),	-- Xuen's Gauntlets
	};
	[SISTERS] = {
		i(147097),	-- Blessing of the White Lady
		i(147005),	-- Chalice of Moonlight
		i(147101),	-- Chiseled Starlight
		i(147068),	-- Cuirass of Blinding Dawn
		i(147061),	-- Dusk-Crusher Handguards
		i(147089),	-- Ferocity of the Devout
		i(147033),	-- Lunar-Wrath Headgear
		i(147054),	-- Mantle of Waning Radiance
		i(147031),	-- Moonfire Strangers
		i(147105),	-- Moontalon's Feather
		i(147078),	-- Mote of Astral Suffusion
		i(146997),	-- Shoulderpads of Whispering Twilight
		i(146987),	-- Slippers of Enduring Vigilance
		i(147017),	-- Tarnished Sentinel Medallion
		i(147012),	-- Umbral Moonglaives
		i(147056),	-- Waistguard of Interminable Unity
		i(147021),	-- Yathae's Thumb Ring
	},
	[SASSZINE] = {
		i(147049),	-- Azure Squallshaper's Helm
		i(147131),	-- Demonbane Leggings
		i(147184),	-- Diabolic Leggings
		i(147173),	-- Fanged Slayer's Legguards
		i(147113),	-- Flawless Hurricane Pearl
		i(147093),	-- Globe of Frothing Eddies
		i(147125),	-- Gravewarden Legplates
		i(147028),	-- Hide of the Abyssal Behemoth
		i(146990),	-- Hundred-Fathom Veil
		i(147059),	-- Iron Ballast Sabatons
		i(147148),	-- Leggings of the Arcane Tempest
		i(147166),	-- Leggings of Blind Absolution
		i(147179),	-- Legguards of the Skybreaker
		i(147023),	-- Leviathan's Hunger
		i(147085),	-- Mutated Nautilus
		i(147081),	-- Pungent Chum
		i(147161),	-- Radiant Lightbringer Greaves
		i(147004),	-- Sea Star of the Depthmother
		i(147137),	-- Stormheart Legguards
		i(147016),	-- Terror From Below
		i(147191),	-- Titanic Onslaught Greaves
		i(147011),	-- Vial of Ceaseless Toxins
		i(147143),	-- Wildstalker Leggings
		i(147155),	-- Xuen's Legguards
	};
	[DESOLATE_HOST] = {
		i(147063),	-- Armet of the Rotten Mind
		i(147086),	-- Befouled Effigy of Elune
		i(147128),	-- Demonbane Shroud
		i(147181),	-- Diabolic Shroud
		i(147145),	-- Drape of the Arcane Tempest
		i(147176),	-- Drape of the Skybreaker
		i(147040),	-- Etched Bone Waistguard
		i(147170),	-- Fanged Slayer's Shroud
		i(147047),	-- Gauntlets of Spiteful Haunting
		i(147106),	-- Glowing Prayer Candle
		i(147122),	-- Gravewarden Cloak
		i(147070),	-- Grave-Dredged Pauldrons
		i(147110),	-- Grimacing Highborne Skull
		i(147014),	-- Locket of Splintered Souls
		i(147114),	-- Preserved Starlight Incense
		i(147158),	-- Radiant Lightbringer Cape
		i(147024),	-- Relinquary of the Damned
		i(147163),	-- Shawl of Blind Absolution
		i(146995),	-- Soul Queen's Ceremonial Robues
		i(147018),	-- Spectral Thurible
		i(147134),	-- Stormheart Drape
		i(147188),	-- Titanic Onslaught Cloak
		i(147140),	-- Wildstalker Cape
		i(147152),	-- Xuen's Cloak
	};
	[MAIDEN] = {
		i(147194),	-- Band of Rescinded Truths
		i(147050),	-- Crown of Discarded Hope
		i(147127),	-- Demonbane Harness
		i(147185),	-- Diabolic Robe
		i(147015),	-- Engine of Eradication
		i(147169),	-- Fanged Slayer's Chestguard
		i(147098),	-- Fragment of Grace
		i(147032),	-- Gloves of Wayward Compulsions
		i(147121),	-- Gravewarden Chestguard
		i(147175),	-- Harness of the Skybreaker
		i(146993),	-- Leggings of Divine Portents
		i(147157),	-- Radiant Lightbringer Breastplate
		i(147025),	-- Recompiled Guardian Module
		i(147149),	-- Robes of the Arcane Tempest
		i(147167),	-- Robes of Blind Absolution
		i(147090),	-- Stabilized Extinction Protocol
		i(147060),	-- Steadfast Purifier's Warboots
		i(147133),	-- Stormheart Tunic
		i(146999),	-- Strife-Riddled Cinch
		i(151189),	-- Tears of the Maiden
		i(147187),	-- Titanic Onslaught Breastplate
		i(147115),	-- Unfurling Origination
		i(147094),	-- Virus of Lethargy
		i(147139),	-- Wildstalker Chestguard
		i(147151),	-- Xuen's Tunic
	};
	[AVATAR] = {
		i(147006),	-- Archive of Faith
		i(146991),	-- Blackened Mask of Disgrace
		i(147042),	-- Bracers of Rippling Darkness
		i(147091),	-- Cleansing Ignition Catalyst
		i(147132),	-- Demonbane Shoulderpads
		i(147186),	-- Diabolic Mantle
		i(147174),	-- Fanged Slayer's Shoulderpads
		i(147030),	-- Felscape Pathfinders
		i(147126),	-- Gravewarden Pauldrons
		i(147062),	-- Groundshatter Gauntlets
		i(147052),	-- Legguards of Siphoned Power
		i(147150),	-- Mantle of the Arcane Tempest
		i(147168),	-- Mantle of Blind Absolution
		i(147001),	-- Oathbreaker's Cuffs
		i(147180),	-- Pauldrons of the Skybreaker
		i(147162),	-- Radiant Lightbringer Shoulderguards
		i(147102),	-- Reactive Pylon Casing
		i(147138),	-- Stormheart Mantle
		i(147192),	-- Titanic Onslaught Pauldrons
		i(147107),	-- Valorous Spark of Hope
		i(147144),	-- Wildstalker Spaulders
		i(147156),	-- Xuen's Shoulderguards
	};
	[KILJAEDEN] = {
		i(147099),	-- Boon of the Prophet
		i(146988),	-- Gloves of Furtive Oppression
		i(147066),	-- Greaves of Impure Midnight
		i(147082),	-- Man'ari Blood Pact
		i(147087),	-- Ruinous Ashes
		i(147111),	-- Scornful Reflection
		i(147195),	-- Seal of the Second Duumvirate
		i(147034),	-- Shadow-Scarred Headcover
		i(147026),	-- Shifting Cosmic Sliver
		i(147072),	-- Soul-Render's Greatbelt
		i(151190),	-- Specter of Betrayal
		i(147095),	-- Sphere of Entropy
		i(147046),	-- Star-Stalker Treads
		i(147007),	-- The Deceiver's Grand Design
		i(147019),	-- Tome of Unraveling Sanity
		i(147079),	-- Torn Fabric of Reality
		i(147048),	-- Vicegrip of the Unrepentant
		i(147347),	-- Waistguard of Profane Duplicity
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(147422),	-- Acolyte's Abandoned Footwraps
	i(147425),	-- Cord of Pilfered Rosaries
	i(147064),	-- Diadem of the Highborne
	i(146989),	-- Fel-Flecked Grips
	i(147429),	-- Girdle of the Crumbling Sanctum
	i(147427),	-- Pristine Moon-Wrought Clasp
	i(147423),	-- Sash of the Unredeemed
	i(147044),	-- Soul-Rattle Ribcage
	i(147428),	-- Spiked Terrorwake Greatboots
	i(147426),	-- Treads of Panicked Escape
	i(147424),	-- Treads of Violent Intrusion
	i(147038),	-- Wakening Horror Spaulders
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_2_0 } }, {
	inst(875, {	-- Tomb of Sargeras
		["coord"] = { 64.3, 21.0, BROKEN_SHORE },
		["maps"] = {
			645,
			850,
			851,
			852,
			853,
			854,
			855,
			856,
		},
		["isRaid"] = true,
		["lvl"] = 110,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11787, {	-- The Gates of Hell
					crit(36469, {	-- Goroth
						["_encounter"] = { GOROTH, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(36470, {	-- Harjatan
						["_encounter"] = { HARJATAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(36471, {	-- Mistress Sassz'ine
						["_encounter"] = { SASSZINE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(11788, {	-- Wailing Halls
					crit(36472, {	-- Demonic Inquisition
						["_encounter"] = { INQUISITION, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(36473, {	-- Sisters of the Moon
						["_encounter"] = { SISTERS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(36474, {	-- The Desolate Host
						["_encounter"] = { DESOLATE_HOST, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(11789, {	-- Chamber of the Avatar
					crit(36475, {	-- Maiden of Vigilance
						["_encounter"] = { MAIDEN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(36476, {	-- Fallen Avatar
						["_encounter"] = { AVATAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(11790, {	-- Deceiver's Fall
					crit(36477, {	-- Kil'jaeden
						["_encounter"] = { KILJAEDEN, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(11763, {	-- Glory of the Tomb Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						11724,	-- Fel Turkey!
						11696,	-- Grin and Bear It
						11683,	-- Bingo!
						11676,	-- Five Course Seafood Buffet
						11675,	-- Sky Walker
						11674,	-- Great Soul, Great Purpose
						11773,	-- Wax On, Wax Off
						11770,	-- Dark Souls
						11699,	-- Grand Fin-ale
					}},
					["groups"] = {
						title(362, {	-- <Name> the Tomb Raider
							["style"] = 3,
						}),
						i(101426),		-- Micronax (PET!)
					},
				}),
				ach(11760, {["timeline"] = {ADDED_7_2_0}}),	-- Retro Trend (Tomb of Sargeras)
				ach(42031, {	-- Tomb of Sargeras (automated)
					["timeline"] = { ADDED_11_1_7 },
				}),
				ach(11782),	-- Tomb of Sargeras Guild Run
			}),
			n(WORLD_QUESTS, {
				q(46503, {	-- Tomb of Sargeras: A Lesson in Pain
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46508, {	-- Tomb of Sargeras: Azshara's Reach
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46504, {	-- Tomb of Sargeras: Crushing Depths
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46502, {	-- Tomb of Sargeras: Hand of the Legion
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46500, {	-- Tomb of Sargeras: Legend of the Deep
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46506, {	-- Tomb of Sargeras: Life After Death
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46505, {	-- Tomb of Sargeras: Lost But Not Forgotten
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(46507, {	-- Tomb of Sargeras: The Dread Stalker
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			n(SPECIAL, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
				n(118930, {	-- Ixallon the Soulbreaker
					i(212779, {	-- Grimoire of the Bloodrage Tyrant (CI!)
						["description"] = "Drops from the last Mob before Kil'Jaeden.\nQueue for Deceiver's Fall in Dalaran for very quick access to him.",
					}),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					i(146411),	-- Vantus Rune Technique: Tomb of Sargeras [Rank 1]
					i(146413),	-- Vantus Rune Technique: Tomb of Sargeras [Rank 3]
				}),
				BossOnly(GOROTH, {
					i(146984),	-- Cloak of Stifling Brimstone
				}),
				BossOnly(INQUISITION),
				BossOnly(HARJATAN),
				BossOnly(SASSZINE, {
					i(143643),	-- Abyss Worm (MOUNT!)
					i(213016, {	-- Grimoire of the Abyssal Darkglare (CI!)
						["timeline"] = { ADDED_10_2_5 },
					}),
					i(146985),	-- Shroud of the Drowned Adherent
				}),
				BossOnly(SISTERS),
				BossOnly(DESOLATE_HOST),
				BossOnly(MAIDEN, {
					i(151524),	-- Hammer of Vigilance
				}),
				BossOnly(AVATAR, {
					i(147193),	-- Cape of Mindless Fury
				}),
				BossOnly(KILJAEDEN, {
					i(151539, {	-- Technique: Glyph of Ember Shards (RECIPE!)
						["timeline"] = { ADDED_7_2_5 },
					}),
					i(146412),	-- Vantus Rune Technique: Tomb of Sargeras [Rank 2]
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["cr"] = 111246,	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 1494, {	-- The Gates of Hell
					Boss(GOROTH),
					Boss(HARJATAN),
					Boss(SASSZINE),
				}),
				header(HEADERS.LFGDungeon, 1495, {	-- Wailing Halls
					Boss(INQUISITION),
					Boss(SISTERS),
					Boss(DESOLATE_HOST),
				}),
				header(HEADERS.LFGDungeon, 1496, {	-- Chamber of the Avatar
					Boss(MAIDEN),
					Boss(AVATAR),
				}),
				header(HEADERS.LFGDungeon, 1497, {	-- Deceiver's Fall
					Boss(KILJAEDEN),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(GOROTH, {
					ach(11724),	-- Fel Turkey
				}),
				BossOnly(INQUISITION, {
					ach(11696),	-- Grin and Bear It
				}),
				BossOnly(HARJATAN, {
					ach(11699, {	-- Grand Fin-ale
						["crs"] = { 121071 },	-- Elder Murk-Eye
						--["groups"] = { i(XXXXXX, {["timeline"] = { ADDED_11_2_7 }}),},	-- Murloc's Wind Chimes (DECOR!)
					}),
				}),
				BossOnly(SISTERS, {
					ach(11773, {	-- Wax On, Wax Off
						["crs"] = { 121498 },	-- Twilight Soul
					}),
				}),
				BossOnly(SASSZINE, {
					ach(11676),	-- Five Course Seafood Buffet
				}),
				BossOnly(DESOLATE_HOST, {
					ach(11674),	-- Great Soul, Great Purpose
				}),
				BossOnly(MAIDEN, {
					ach(11675),	-- Sky Walker
				}),
				BossOnly(AVATAR, {
					ach(11683),	-- Bingo!
				}),
				BossOnly(KILJAEDEN, {
					ach(11770, {	-- Dark Souls
						["crs"] = { 121193 },	-- Shadowsoul
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(47725, {	-- Tomb of Sargeras: Aegwynn's Path (Normal)
						["description"] = "Finishing this quest will grant you access to Maiden of Vigilance after killing Goroth on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["altQuests"] = {
							47726,	-- Tomb of Sargeras: Aegwynn's Path (Heroic)
							47727,	-- Tomb of Sargeras: Aegwynn's Path (Mythic)
						},
						["provider"] = { "n", 119723 },	-- Image of Aegwynn
						["groups"] = { i(151248) },	-- Fragment of the Guardian's Seal (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(GOROTH),
				Boss(INQUISITION),
				Boss(HARJATAN),
				Boss(SISTERS),
				Boss(SASSZINE),
				Boss(DESOLATE_HOST),
				Boss(MAIDEN),
				Boss(AVATAR),
				Boss(KILJAEDEN),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(KILJAEDEN, {
					ach(11874, {	-- Ahead of the Curve: Kil'jaeden
						["timeline"] = { REMOVED_7_3_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(47726, {	-- Tomb of Sargeras: Aegwynn's Path (Heroic)
						["description"] = "Finishing this quest will grant you access to Maiden of Vigilance after killing Goroth on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 47727 },	-- Tomb of Sargeras: Aegwynn's Path (Mythic)
						["provider"] = { "n", 119723 },	-- Image of Aegwynn
						["groups"] = { i(151249) },	-- Fragment of the Guardian's Seal (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(GOROTH),
				Boss(INQUISITION),
				Boss(HARJATAN),
				Boss(SISTERS),
				Boss(SASSZINE),
				Boss(DESOLATE_HOST),
				Boss(MAIDEN),
				Boss(AVATAR),
				Boss(KILJAEDEN),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(47727, {	-- Tomb of Sargeras: Aegwynn's Path (Mythic)
						["description"] = "Finishing this quest will grant you access to Maiden of Vigilance after killing Goroth on Mythic difficulty each week.\n",
						["altQuests"] = { 47727 },	-- Tomb of Sargeras: Aegwynn's Path (Mythic)
						["provider"] = { "n", 119723 },	-- Image of Aegwynn
						["groups"] = { i(151250) },	-- Fragment of the Guardian's Seal (QI!)
					}),
				}),
				ZoneDrops({}),
				Boss(GOROTH, {
					ach(11767),	-- Mythic: Goroth
				}),
				Boss(INQUISITION, {
					ach(11774),	-- Mythic: Demonic Inquisition
				}),
				Boss(HARJATAN, {
					ach(11775),	-- Mythic: Harjatan
				}),
				Boss(SISTERS, {
					ach(11777),	-- Mythic: Sisters of the Moon
				}),
				Boss(SASSZINE, {
					ach(11776),	-- Mythic: Mistress Sassz'ine
				}),
				Boss(DESOLATE_HOST, {
					ach(11778),	-- Mythic: The Desolate Host
				}),
				Boss(MAIDEN, {
					ach(11779),	-- Mythic: Maiden of Vigilance
				}),
				Boss(AVATAR, {
					ach(11780),	-- Mythic: Fallen Avatar
				}),
				Boss(KILJAEDEN, {
					ach(11875, {	-- Cutting Edge: Kil'jaeden
						["timeline"] = { REMOVED_7_3_0 },
					}),
					ach(11781, {	-- Mythic: Kil'jaeden
						title(357),	-- <Name> the Darkener
					}),
					ach(11784),	-- Mythic: Kil'jaeden Guild Run
					un(REMOVED_FROM_GAME, ach(11783)),	-- Realm First! Kil'jaeden
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
	inst(875, {
		q(48064),	-- Goroth Intro - first time cinematic prior to Goroth
		q(48643),	-- Goroth
		q(48644),	-- Demonic Inquisition
		q(48645),	-- Harjatan
		q(48646),	-- Mistress Sassz'ine
		q(48647),	-- Sisters of the Moon
		q(48648),	-- The Desolate Host
		q(48649),	-- Maiden of Vigilance
		q(49612),	-- Maiden of Vigilance (triggered at the same time as above)
		q(48650),	-- Fallen Avatar
		q(48082),	-- Kil'jaeden LFR
		q(48083),	-- Kil'jaeden Normal
		q(48084),	-- Kil'jaeden Heroic
		q(48085),	-- Kil'jaeden Mythic
		q(48651),	-- Kil'jaeden
		q(47106),	-- 7.2 Raid - Tomb - 1 - Quest Item Reward - Tracking Quest
		q(47107),	-- 7.2 Raid - Tomb - 2 - Quest Item Reward - Tracking Quest
		q(47108),	-- 7.2 Raid - Tomb - 3 - Quest Item Reward - Tracking Quest
		q(47109),	-- 7.2 Raid - Tomb - 4 - Quest Item Reward - Tracking Quest
		q(46332),	-- [DNT]Shadow Priests - Elune Death Enabled — for trying to use Xal'atath to absorb Elune's power after Sisters of the Moon
	}),
})));
