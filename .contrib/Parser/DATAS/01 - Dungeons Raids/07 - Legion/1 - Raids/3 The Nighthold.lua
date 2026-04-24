-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SKORPYRON = 1706;
local CHRONOMATIC = 1725;
local TRILLIAX = 1731;
local ALURIEL = 1751;
local TICHONDRIUS = 1762;
local KROSUS = 1713;
local TELARN = 1761;
local ETRAEUS = 1732;
local ELISANDE = 1743;
local GULDAN = 1737;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SKORPYRON] = { 102263 },	-- Skorpyron
	[CHRONOMATIC] = { 104415 },	-- Chronomatic Anomaly
	[TRILLIAX] = { 104288 },	-- Trilliax
	[ALURIEL] = { 104881 },	-- Spellblade Aluriel
	[TICHONDRIUS] = { 103685 },	-- Tichondrius
	[KROSUS] = { 101002 },	-- Krosus
	[TELARN] = {	-- Tel'arn
		109040,	-- Arcanist Tel'arn
		104528,	-- High Botanist Tel'arn
		109041,	-- Naturalist Tel'arn
		109038,	-- Solarist Tel'arn
	},
	[ETRAEUS] = { 103758 },	-- Star Augur Etraeus
	[ELISANDE] = { 106643 },	-- Grand Magistrix Elisande
	[GULDAN] = {	-- Gul'dan
		104154,	-- Gul'dan
		111022,	-- The Demon Within
	},
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[SKORPYRON] = {
		i(140789),	-- Animated Exoskeleton
		i(140849),	-- Antiquated Highborne Cinch
		i(140875),	-- Arcanochitin Hauberk
		i(140840),	-- Chittering Mandible
		i(140790),	-- Claw of the Crystalline Scorpid
		i(140862),	-- Gnawed Nightfallen Britches
		i(140815),	-- Infused Chitin Fragment
		i(140902),	-- Jagged Carapace Wristclamps
		i(140884),	-- Leystone-Toe Kickers
		i(140827),	-- Manatoxin Gland
		i(140898),	-- Radiant String of Scorpid Eyes
		i(140888),	-- Scorpid Handler's Gloves
		i(140876),	-- Stinger Resistant Bracers
		i(140901),	-- Vintage Suramar Nobility Hat
	};
	[CHRONOMATIC] = {
		i(140853),	-- Chaos-Scarred Mantle
		i(140882),	-- Chrono-Tempered Legplates
		i(140792),	-- Erratic Metronome
		i(140843),	-- Flickering Timespark
		i(140879),	-- Gauntlets of Fractured Eons
		i(140903),	-- Hood of Fading Opportunity
		i(140872),	-- Pauldrons of Warped Memory
		i(140821),	-- Precipice of Eternity
		i(140848),	-- Robes of Fluctuating Energy
		i(140791),	-- Royal Dagger Haft
		i(140860),	-- Stutterstep Treads
		i(140831),	-- Suspended Nightwell Droplet
		i(140863),	-- Temporally Displaced Gloves
		i(140894),	-- Zealous Timestone Pendant
	};
	[TRILLIAX] = {
		i(140794),	-- Arcanogolem Digit
		i(140858),	-- Cake Carrier's Girdle
		i(140838),	-- Construct Personality Sphere
		i(140818),	-- Foreign Contaminant
		i(140880),	-- Gilded Nightborne Waistplate
		i(140904),	-- Immaculately Polished Boots
		i(140851),	-- Nighthold Custodian's Hood
		i(140793),	-- Perfectly Preserved Cake
		i(140854),	-- Perpetually Muddy Sandals
		i(140871),	-- Pertinacious Legplates
		i(140812),	-- Soggy Manascrubber Brush
		i(140869),	-- Sterilizer's Insulated Gauntlets
		i(140865),	-- Tunic of Unwavering Devotion
	};
	[ALURIEL] = {
		i(140795),	-- Aluriel's Mirror
		i(140813),	-- Arcana Crux
		i(140850),	-- Bracers of Harnessed Flame
		i(140877),	-- Captain's Parade Breastplate
		i(140878),	-- Duskwatch Plate Bracers
		i(140868),	-- Emblazoned Duskwatch Belt
		i(140796),	-- Entwined Elemental Foci
		i(140905),	-- Gloves of Synchronous Elements
		i(140832),	-- Heart of Frost
		i(140852),	-- Master Warmage's Leggings
		i(140866),	-- Nightborne Battle-Magus Hood
		i(140867),	-- Sabatons of Burning Steps
		i(140834),	-- Soul of Flame
		i(140895),	-- Spellblade's Gemmed Signet
	};
	[TICHONDRIUS] = {
		i(140844),	-- Archaic Nathrezim Keepsake
		i(140855),	-- Dreadlord's Tattered Wingcover
		i(140797),	-- Fang of Tichondrius
		i(140859),	-- Girdle of Nefarious Strategy
		i(140892),	-- Goresmeared Abyssal Waistplate
		i(140798),	-- Icon of Rot
		i(140906),	-- Ring of Exclusive Servitude
		i(140819),	-- Vampiric Fetish
		i(140824),	-- Writ of Subjugation
	};
	[KROSUS] = {
		i(140870),	-- Architect's Coif of Despair
		i(140899),	-- Beleron's Choker of Misery
		i(140907),	-- Bridgebreaker Gauntlets
		i(140825),	-- Felfire Pitch
		i(140816),	-- Fingernail of the Fel Brute
		i(140887),	-- Man'ari Skullbuckled Cinch
		i(140799),	-- Might of Krosus
		i(140800),	-- Pharamere's Forbidden Grimoire
		i(140835),	-- Unkindled Ember
		i(140857),	-- Well-Flattened Wristguards
	};
	[TELARN] = {
		i(140822),	-- Breath of Dusk
		i(140881),	-- Eventide Casque
		i(140801),	-- Fury of the Burning Sky
		i(140861),	-- Grove-Tender's Moccasins
		i(140802),	-- Nightblooming Frond
		i(140839),	-- Parasitic Spore
		i(140896),	-- Ring of Braided Stems
		i(140873),	-- Shal'dorei Weedstompers
		i(140883),	-- Shoulderguard of the Eclipse
		i(140836),	-- Sunflare Coal
		i(140874),	-- Thistle-Proof Thorngrabbers
		i(140908),	-- Trousers of Cultivation
		i(140886),	-- Woven Lasher Tendril Bracers
	};
	[ETRAEUS] = {
		i(140909),	-- Astromancer's Greatcloak
		i(140900),	-- Brooch of the Astral Scryer
		i(140803),	-- Etraeus' Celestial Map
		i(140845),	-- Glistening Meteorite Shard
		i(140864),	-- Mantle of the Torn Sky
		i(140891),	-- Sabatons of Unchanging Fate
		i(140804),	-- Star Gate
		i(140833),	-- Sundered Comet
		i(140841),	-- Tempest of the Heavens
		i(140885),	-- Treads of Galactic Odyssey
	};
	[ELISANDE] = {
		i(140890),	-- Belt of Celestial Alignment
		i(140889),	-- Bracers of Impossible Choices
		i(140910),	-- Cloak of Temporal Recalibration
		i(140842),	-- Collapsing Epoch
		i(140806),	-- Convergence of Fates
		i(140805),	-- Ephemeral Paradox
		i(140893),	-- Eternally Recurring Bracers
		i(140837),	-- Exothermic Core
		i(140810),	-- Farsight Spiritjewel
		i(140911),	-- Mantle of Prestidigitation
		i(140912),	-- Waistplate of Fractured Realities
	};
	[GULDAN] = {
		i(140913),	-- Breastplate of the Remembered King
		i(140808),	-- Draught of Souls
		i(140826),	-- Felstained Jawbone Fragments
		i(140919),	-- High Shadow Councilor's Wrap
		i(140807),	-- Infernal Contract
		i(140817),	-- Lionshead Lapel Clasp
		i(140917),	-- Netherbranded Shoulderpads
		i(140914),	-- Outcast Wanderer's Footrags
		i(140820),	-- Phial of Fel Blood
		i(140897),	-- Ring of the Scoured Clan
		i(140823),	-- Warchief's Shattered Tusk
		i(140809),	-- Whispers in the Dark
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(144399),	-- Aristocrat's Winter Drape
	i(144401),	-- Cloak of Multitudinous Sheaths
	i(144403),	-- Fashionable Autumn Cloak
	i(144400),	-- Feathermane Feather Cloak
	i(144407),	-- Gleaming Celestial Waistguard
	i(144404),	-- Mana-Cord of Deception
	i(144406),	-- Vintage Duskwatch Cinch
	i(144405),	-- Waistclasp of Unethical Power
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(786, {	-- The Nighthold
		["coords"] = {
			{ 43.3, 62.3, SURAMAR },	-- entrance that leads underground
			{ 44.1, 59.7, SURAMAR },	-- actual raid entrance
		},
		["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },
		["isRaid"] = true,
		["lvl"] = 110,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(10829, {	-- Arcing Aqueducts
					crit(31445, {	-- Skorpyron
						["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31444, {	-- Chronomatic Anomaly
						["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31443, {	-- Trilliax
						["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(10837, {	-- Royal Athenaeum
					crit(31447, {	-- Spellblade Aluriel
						["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31448, {	-- Star Augur Etraeus
						["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31449, {	-- High Botanist Tel'arn
						["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(10838, {	-- Nightspire
					crit(31452, {	-- Tichondrius
						["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31451, {	-- Krosus
						["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31450, {	-- Elisande
						["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(10839, {	-- Betrayer's Rise
					crit(31453, {	-- Gul'dan
						["_encounter"] = { GULDAN, DIFFICULTY.RAID.MULTI.ALL },
						["provider"] = { "n", 104154 },	-- Gul'dan
					}),
				}),
				ach(11628, {["timeline"] = {ADDED_7_2_0}}),	-- That's So Last Millennium (Nighthold)
				ach(42030, {	-- The Nighthold (automated)
					["timeline"] = { ADDED_11_1_7 },
				}),
				ach(10868),	-- The Nighthold Guild Run
			}),
			n(WORLD_QUESTS, {
				q(44934, {	-- The Nighthold: Creepy Crawlers
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44932, {	-- The Nighthold: Ettin Your Foot In The Door
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44937, {	-- The Nighthold: Focused Power
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44935, {	-- The Nighthold: Gilded Guardian
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44938, {	-- The Nighthold: Love Tap
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44939, {	-- The Nighthold: Seeds of Destruction
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44936, {	-- The Nighthold: Supply Routes
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(44933, {	-- The Nighthold: Wailing In The Night
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			n(QUESTS, {
				q(45417, {	-- The Nighthold: Lord of the Shadow Council
					["description"] = "Click on the Eye of Aman'thul after Gul'dan dies to complete the quest.",
					["sourceQuests"] = { 44719 },	-- Breaching the Sanctum
					["provider"] = { "n", 115367 },	-- Archmage Khadgar
					["coord"] = { 44.1, 60.1, SURAMAR },
				}),
				q(45420, {	-- The Nighthold: The Eye of Aman'Thul
					["sourceQuests"] = { 45417 },	-- The Nighthold: Lord of the Shadow Council
					["provider"] = { "n", 106522 },	-- Archmage Khadgar
					["groups"] = {
						sp(233377),	-- Gaze of Aman'Thul
					},
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(SKORPYRON, {
					i(139642),	-- Vantus Rune Technique: Skorpyron [Rank 1] (RECIPE!)
					i(137754),	-- Vantus Rune Technique: Skorpyron [Rank 2] (RECIPE!)
				}),
				BossOnly(CHRONOMATIC, {
					i(138828),	-- Illusion: Chronos (ILLUSION!)
					i(139643),	-- Vantus Rune Technique: Chronomatic Anomaly [Rank 1] (RECIPE!)
					i(137755),	-- Vantus Rune Technique: Chronomatic Anomaly [Rank 2] (RECIPE!)
				}),
				BossOnly(TRILLIAX, {
					i(139644),	-- Vantus Rune Technique: Trilliax [Rank 1] (RECIPE!)
					i(137756),	-- Vantus Rune Technique: Trilliax [Rank 2] (RECIPE!)
				}),
				BossOnly(ALURIEL, {
					i(256682, {	-- Magistrix's Garden Fountain
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(139645),	-- Vantus Rune Technique: Spellblade Aluriel [Rank 1] (RECIPE!)
					i(137757),	-- Vantus Rune Technique: Spellblade Aluriel [Rank 2] (RECIPE!)
				}),
				BossOnly(TICHONDRIUS, {
					i(137687),	-- Plans: Fel Core Hound Harness (RECIPE!)
					i(139646),	-- Vantus Rune Technique: Tichondrius [Rank 1] (RECIPE!)
					i(137758),	-- Vantus Rune Technique: Tichondrius [Rank 2] (RECIPE!)
				}),
				BossOnly(KROSUS, {
					i(139648),	-- Vantus Rune Technique: Krosus [Rank 1] (RECIPE!)
					i(137760),	-- Vantus Rune Technique: Krosus [Rank 2] (RECIPE!)
				}),
				BossOnly(TELARN, {
					i(143751),	-- Technique: Glyph of Twilight Bloom (RECIPE!)
					i(139647),	-- Vantus Rune Technique: High Botanist Tel'arn [Rank 1] (RECIPE!)
					i(137759),	-- Vantus Rune Technique: High Botanist Tel'arn [Rank 2] (RECIPE!)
				}),
				BossOnly(ETRAEUS, {
					i(142078),	-- Pattern: Imbued Silkweave Bag [Rank 3] (RECIPE!)
					i(139649),	-- Vantus Rune Technique: Star Augur Etraeus [Rank 1] (RECIPE!)
					i(137761),	-- Vantus Rune Technique: Star Augur Etraeus [Rank 2] (RECIPE!)
				}),
				BossOnly(ELISANDE, {
					i(139650),	-- Vantus Rune Technique: Grand Magistrix Elisande [Rank 1] (RECIPE!)
					i(137762),	-- Vantus Rune Technique: Grand Magistrix Elisande [Rank 2] (RECIPE!)
				}),
				BossOnly(GULDAN, {
					i(119211),	-- Golden Hearthstone Card: Lord Jaraxxus (TOY!)
					i(143544),	-- Skull of Corruption (TOY!)
					i(141061, {	-- Technique: Grimoire of the Abyssal
						["timeline"] = { ADDED_10_1_5 },
					}),
					i(139651),	-- Vantus Rune Technique: Gul'dan [Rank 1] (RECIPE!)
					i(137763),	-- Vantus Rune Technique: Gul'dan [Rank 2] (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["cr"] = 111246,	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 1290, {	-- Arcing Aqueducts
					Boss(SKORPYRON),
					Boss(CHRONOMATIC),
					Boss(TRILLIAX, {
						i(138375),	-- Cape of Second Sight
						i(138365),	-- Cloak of Everburning Knowledge
						i(138366),	-- Cloak of the Astral Warden
						i(138367),	-- Cloak of Enveloped Dissonance
						i(138372),	-- Cloak of Shackled Elements
						i(138373),	-- Cloak of Azj'Aqir
						i(138371),	-- Doomblade Shadowwrap
						i(138364),	-- Dreadwyrm Greatcloak
						i(138368),	-- Eagletalon Cloak
						i(138374),	-- Greatcloak of the Obsidian Aspect
						i(138369),	-- Greatmantle of the Highlord
						i(138370),	-- Purifier's Drape
					}),
				}),
				header(HEADERS.LFGDungeon, 1291, {	-- Royal Athenaeum
					Boss(ALURIEL),
					Boss(ETRAEUS, {
						i(138311),	-- Clutch of Azj'Aqir
						i(138352),	-- Dreadwyrm Gauntlets
						i(138329),	-- Doomblade Gauntlets
						i(138340),	-- Eagletalon Gauntlets
						i(138341),	-- Gauntlets of Shackled Elements
						i(138353),	-- Gauntlets of the Highlord
						i(138354),	-- Gauntlets of the Obsidian Aspect
						i(138328),	-- Gloves of Enveloped Dissonance
						i(138309),	-- Gloves of Everburning Knowledge
						i(138377),	-- Gloves of Second Sight
						i(138327),	-- Gloves of the Astral Warden
						i(138310),	-- Purifier's Gloves
					}),
					Boss(TELARN),
				}),
				header(HEADERS.LFGDungeon, 1292, {	-- Nightspire
					Boss(TICHONDRIUS, {
						i(138338),	-- Doomblade Spaulders
						i(138361),	-- Dreadwyrm Shoulderguards
						i(138347),	-- Eagletalon Spaulders
						i(138321),	-- Mantle of Everburning Knowledge
						i(138336),	-- Mantle of the Astral Warden
						i(138323),	-- Pauldrons of Azj'Aqir
						i(138337),	-- Pauldrons of Enveloped Dissonance
						i(138348),	-- Pauldrons of Shackled Elements
						i(138362),	-- Pauldrons of the Highlord
						i(138322),	-- Purifier's Mantle
						i(138380),	-- Shoulderguards of Second Sight
						i(138363),	-- Shoulderplates of the Obsidian Aspect
					}),
					Boss(KROSUS, {
						i(138350),	-- Breastplate of the Highlord
						i(138351),	-- Chestplate of the Obsidian Aspect
						i(138326),	-- Doomblade Tunic
						i(138349),	-- Dreadwyrm Breastplate
						i(138339),	-- Eagletalon Tunic
						i(138320),	-- Finery of Azj'Aqir
						i(138319),	-- Purifier's Cassock
						i(138346),	-- Raiment of Shackled Elements
						i(138318),	-- Robe of Everburning Knowledge
						i(138324),	-- Robe of the Astral Warden
						i(138325),	-- Tunic of Enveloped Dissonance
						i(138376),	-- Tunic of Second Sight
					}),
					Boss(ELISANDE,  {
						i(138332),	-- Doomblade Cowl
						i(138355),	-- Dreadwyrm Crown
						i(138342),	-- Eagletalon Cowl
						i(138314),	-- Eyes of Azj'Aqir
						i(138343),	-- Helm of Shackled Elements
						i(138356),	-- Helmet of the Highlord
						i(138331),	-- Hood of Enveloped Dissonance
						i(138312),	-- Hood of Everburning Knowledge
						i(138330),	-- Hood of the Astral Warden
						i(138378),	-- Mask of Second Sight
						i(138313),	-- Purifier's Gorget
						i(138357),	-- Warhelm of the Obsidian Aspect
					}),
				}),
				header(HEADERS.LFGDungeon, 1293, {	-- Betrayer's Rise
					Boss(GULDAN, {
						i(138335),	-- Doomblade Pants
						i(138358),	-- Dreadwyrm Legplates
						i(138344),	-- Eagletalon Legchains
						i(138317),	-- Leggings of Azj'Aqir
						i(138334),	-- Leggings of Enveloped Dissonance
						i(138315),	-- Leggings of Everburning Knowledge
						i(138345),	-- Leggings of Shackled Elements
						i(138333),	-- Leggings of the Astral Warden
						i(138359),	-- Legplates of the Highlord
						i(138360),	-- Legplates of the Obsidian Aspect
						i(138379),	-- Legwraps of Second Sight
						i(138316),	-- Purifier's Leggings
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				CommonBossDrops({
					i(140199),	-- Nightshard
					i(140200, {	-- Immaculate Nightshard Curio
						i(140199),	-- Nightshard
					}),
				}),
				BossOnly(SKORPYRON, {
					ach(10678),	-- Cage Rematch
				}),
				BossOnly(CHRONOMATIC, {
					ach(10697),	-- Grand Opening
					i(142559),	-- Mysterious Cube
				}),
				BossOnly(TRILLIAX, {
					ach(10742),	-- Gluten Free
				}),
				BossOnly(ALURIEL, {
					ach(10817, {	-- A Change In Scenery
						crit(31807, {	-- The Shal'dorei Terrace
							["_noautomation"] = true,
						}),
						crit(31806, {	-- The Shattered Walkway
							["_noautomation"] = true,
						}),
						crit(31808, {	-- Astromancer's Rise
							["_noautomation"] = true,
						}),
					}),
				}),
				BossOnly(TICHONDRIUS, {
					ach(10704),	-- Not For You
				}),
				BossOnly(KROSUS, {
					ach(10575),	-- Burning Bridges
				}),
				BossOnly(TELARN, {
					ach(10754),	-- Fruit of All Evil
				}),
				BossOnly(ETRAEUS, {
					ach(10851, {	-- Elementalry!
						["crs"] = { 111595 },	-- Well-Traveled Nether Elemental
					}),
				}),
				BossOnly(ELISANDE, {
					ach(10699, {	-- Infinitesimal
						["crs"] = { 108802 },	-- Infinite Drakeling
					}),
				}),
				BossOnly(GULDAN, {
					ach(10696, {	-- I've Got My Eyes On You
						["crs"] = { 105630 },	-- Eye of Gul'dan <Gul'dan's Minion>
					}),
					i(137574),	-- Felblaze Infernal (MOUNT!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(45381, {	-- The Nighthold: Talisman of the Shal'dorei (Normal)
						["description"] = "Finishing this quest will grant you immediate access to Spellblade Aluriel, Krosus, and/or Elisande on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["altQuests"] = {
							45382,	-- The Nighthold: Talisman of the Shal'dorei (Heroic)
							45383,	-- The Nighthold: Talisman of the Shal'dorei (Mythic)
						},
						["provider"] = { "n", 110791 },	-- First Arcanist Thalyssra
						["groups"] = {
							i(143656),	-- Echo of Time (QI!)
							ig(141324),	-- Talisman of the Shal'dorei (Normal)
						},
					}),
				}),
				Boss(SKORPYRON),
				Boss(CHRONOMATIC),
				Boss(TRILLIAX, {
					i(143577, {	-- Cloak of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138375),	-- Cape of Second Sight
						i(138373),	-- Cloak of Azj'Aqir
						i(138369),	-- Greatmantle of the Highlord
						i(138370),	-- Purifier's Drape
					}),
					i(143579, {	-- Cloak of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138367),	-- Cloak of Enveloped Dissonance
						i(138372),	-- Cloak of Shackled Elements
						i(138368),	-- Eagletalon Cloak
						i(138374),	-- Greatcloak of the Obsidian Aspect
					}),
					i(143578, {	-- Cloak of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138365),	-- Cloak of Everburning Knowledge
						i(138366),	-- Cloak of the Astral Warden
						i(138371),	-- Doomblade Shadowwrap
						i(138364),	-- Dreadwyrm Greatcloak
					}),
				}),
				Boss(ALURIEL),
				Boss(TICHONDRIUS, {
					i(143566, {	-- Shoulders of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138323),	-- Pauldrons of Azj'Aqir
						i(138362),	-- Pauldrons of the Highlord
						i(138322),	-- Purifier's Mantle
						i(138380),	-- Shoulderguards of Second Sight
					}),
					i(143576, {	-- Shoulders of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138347),	-- Eagletalon Spaulders
						i(138337),	-- Pauldrons of Enveloped Dissonance
						i(138348),	-- Pauldrons of Shackled Elements
						i(138363),	-- Shoulderplates of the Obsidian Aspect
					}),
					i(143570, {	-- Shoulders of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138338),	-- Doomblade Spaulders
						i(138361),	-- Dreadwyrm Shoulderguards
						i(138321),	-- Mantle of Everburning Knowledge
						i(138336),	-- Mantle of the Astral Warden
					}),
				}),
				Boss(KROSUS, {
					i(143562, {	-- Chest of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138350),	-- Breastplate of the Highlord
						i(138320),	-- Finery of Azj'Aqir
						i(138319),	-- Purifier's Cassock
						i(138376),	-- Tunic of Second Sight
					}),
					i(143572, {	-- Chest of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138351),	-- Chestplate of the Obsidian Aspect
						i(138339),	-- Eagletalon Tunic
						i(138346),	-- Raiment of Shackled Elements
						i(138325),	-- Tunic of Enveloped Dissonance
					}),
					i(143571, {	-- Chest of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138326),	-- Doomblade Tunic
						i(138349),	-- Dreadwyrm Breastplate
						i(138318),	-- Robe of Everburning Knowledge
						i(138324),	-- Robe of the Astral Warden
					}),
				}),
				Boss(TELARN),
				Boss(ETRAEUS, {
					i(143563, {	-- Gauntlets of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138311),	-- Clutch of Azj'Aqir
						i(138377),	-- Gloves of Second Sight
						i(138353),	-- Gauntlets of the Highlord
						i(138310),	-- Purifier's Gloves
					}),
					i(143573, {	-- Gauntlets of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138340),	-- Eagletalon Gauntlets
						i(138341),	-- Gauntlets of Shackled Elements
						i(138354),	-- Gauntlets of the Obsidian Aspect
						i(138328),	-- Gloves of Enveloped Dissonance
					}),
					i(143567, {	-- Gauntlets of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138329),	-- Doomblade Gauntlets
						i(138309),	-- Gloves of Everburning Knowledge
						i(138352),	-- Dreadwyrm Gauntlets
						i(138327),	-- Gloves of the Astral Warden
					}),
				}),
				Boss(ELISANDE, {
					i(143565, {	-- Helm of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138314),	-- Eyes of Azj'Aqir
						i(138356),	-- Helmet of the Highlord
						i(138378),	-- Mask of Second Sight
						i(138313),	-- Purifier's Gorget
					}),
					i(143575, {	-- Helm of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138342),	-- Eagletalon Cowl
						i(138343),	-- Helm of Shackled Elements
						i(138331),	-- Hood of Enveloped Dissonance
						i(138357),	-- Warhelm of the Obsidian Aspect
					}),
					i(143568, {	-- Helm of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138332),	-- Doomblade Cowl
						i(138355),	-- Dreadwyrm Crown
						i(138312),	-- Hood of Everburning Knowledge
						i(138330),	-- Hood of the Astral Warden
					}),
				}),
				Boss(GULDAN, {
					i(143564, {	-- Leggings of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138317),	-- Leggings of Azj'Aqir
						i(138359),	-- Legplates of the Highlord
						i(138379),	-- Legwraps of Second Sight
						i(138316),	-- Purifier's Leggings
					}),
					i(143574, {	-- Leggings of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138344),	-- Eagletalon Legchains
						i(138334),	-- Leggings of Enveloped Dissonance
						i(138345),	-- Leggings of Shackled Elements
						i(138360),	-- Legplates of the Obsidian Aspect
					}),
					i(143569, {	-- Leggings of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138335),	-- Doomblade Pants
						i(138358),	-- Dreadwyrm Legplates
						i(138315),	-- Leggings of Everburning Knowledge
						i(138333),	-- Leggings of the Astral Warden
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(GULDAN, {
					ach(11195, {	-- Ahead of the Curve: Gul'dan
						["timeline"] = { REMOVED_7_2_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(45382, {	-- The Nighthold: Talisman of the Shal'dorei (Heroic)
						["description"] = "Finishing this quest will grant you immediate access to Spellblade Aluriel, Krosus, and/or Elisande on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 45383 },	-- The Nighthold: Talisman of the Shal'dorei (Mythic)
						["provider"] = { "n", 110791 },	-- First Arcanist Thalyssra
						["groups"] = {
							i(143657),	-- Echo of Time (QI!)
							ig(141325),	-- Talisman of the Shal'dorei (Heroic)
						},
					}),
				}),
				Boss(SKORPYRON),
				Boss(CHRONOMATIC),
				Boss(TRILLIAX, {
					i(143577, {	-- Cloak of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138375),	-- Cape of Second Sight
						i(138373),	-- Cloak of Azj'Aqir
						i(138369),	-- Greatmantle of the Highlord
						i(138370),	-- Purifier's Drape
					}),
					i(143579, {	-- Cloak of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138367),	-- Cloak of Enveloped Dissonance
						i(138372),	-- Cloak of Shackled Elements
						i(138368),	-- Eagletalon Cloak
						i(138374),	-- Greatcloak of the Obsidian Aspect
					}),
					i(143578, {	-- Cloak of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138365),	-- Cloak of Everburning Knowledge
						i(138366),	-- Cloak of the Astral Warden
						i(138371),	-- Doomblade Shadowwrap
						i(138364),	-- Dreadwyrm Greatcloak
					}),
				}),
				Boss(ALURIEL),
				Boss(TICHONDRIUS, {
					i(143566, {	-- Shoulders of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138323),	-- Pauldrons of Azj'Aqir
						i(138362),	-- Pauldrons of the Highlord
						i(138322),	-- Purifier's Mantle
						i(138380),	-- Shoulderguards of Second Sight
					}),
					i(143576, {	-- Shoulders of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138347),	-- Eagletalon Spaulders
						i(138337),	-- Pauldrons of Enveloped Dissonance
						i(138348),	-- Pauldrons of Shackled Elements
						i(138363),	-- Shoulderplates of the Obsidian Aspect
					}),
					i(143570, {	-- Shoulders of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138338),	-- Doomblade Spaulders
						i(138361),	-- Dreadwyrm Shoulderguards
						i(138321),	-- Mantle of Everburning Knowledge
						i(138336),	-- Mantle of the Astral Warden
					}),
				}),
				Boss(KROSUS, {
					i(143562, {	-- Chest of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138350),	-- Breastplate of the Highlord
						i(138320),	-- Finery of Azj'Aqir
						i(138319),	-- Purifier's Cassock
						i(138376),	-- Tunic of Second Sight
					}),
					i(143572, {	-- Chest of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138351),	-- Chestplate of the Obsidian Aspect
						i(138339),	-- Eagletalon Tunic
						i(138346),	-- Raiment of Shackled Elements
						i(138325),	-- Tunic of Enveloped Dissonance
					}),
					i(143571, {	-- Chest of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138326),	-- Doomblade Tunic
						i(138349),	-- Dreadwyrm Breastplate
						i(138318),	-- Robe of Everburning Knowledge
						i(138324),	-- Robe of the Astral Warden
					}),
				}),
				Boss(TELARN),
				Boss(ETRAEUS, {
					i(143563, {	-- Gauntlets of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138311),	-- Clutch of Azj'Aqir
						i(138377),	-- Gloves of Second Sight
						i(138353),	-- Gauntlets of the Highlord
						i(138310),	-- Purifier's Gloves
					}),
					i(143573, {	-- Gauntlets of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138340),	-- Eagletalon Gauntlets
						i(138341),	-- Gauntlets of Shackled Elements
						i(138354),	-- Gauntlets of the Obsidian Aspect
						i(138328),	-- Gloves of Enveloped Dissonance
					}),
					i(143567, {	-- Gauntlets of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138329),	-- Doomblade Gauntlets
						i(138309),	-- Gloves of Everburning Knowledge
						i(138352),	-- Dreadwyrm Gauntlets
						i(138327),	-- Gloves of the Astral Warden
					}),
				}),
				Boss(ELISANDE, {
					i(143565, {	-- Helm of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138314),	-- Eyes of Azj'Aqir
						i(138356),	-- Helmet of the Highlord
						i(138378),	-- Mask of Second Sight
						i(138313),	-- Purifier's Gorget
					}),
					i(143575, {	-- Helm of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138342),	-- Eagletalon Cowl
						i(138343),	-- Helm of Shackled Elements
						i(138331),	-- Hood of Enveloped Dissonance
						i(138357),	-- Warhelm of the Obsidian Aspect
					}),
					i(143568, {	-- Helm of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138332),	-- Doomblade Cowl
						i(138355),	-- Dreadwyrm Crown
						i(138312),	-- Hood of Everburning Knowledge
						i(138330),	-- Hood of the Astral Warden
					}),
				}),
				Boss(GULDAN, {
					i(143564, {	-- Leggings of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138317),	-- Leggings of Azj'Aqir
						i(138359),	-- Legplates of the Highlord
						i(138379),	-- Legwraps of Second Sight
						i(138316),	-- Purifier's Leggings
					}),
					i(143574, {	-- Leggings of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138344),	-- Eagletalon Legchains
						i(138334),	-- Leggings of Enveloped Dissonance
						i(138345),	-- Leggings of Shackled Elements
						i(138360),	-- Legplates of the Obsidian Aspect
					}),
					i(143569, {	-- Leggings of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138335),	-- Doomblade Pants
						i(138358),	-- Dreadwyrm Legplates
						i(138315),	-- Leggings of Everburning Knowledge
						i(138333),	-- Leggings of the Astral Warden
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(45383, {	-- The Nighthold: Talisman of the Shal'dorei (Mythic)
						["description"] = "Finishing this quest will grant you immediate access to Spellblade Aluriel, Krosus, and/or Elisande on Mythic difficulty each week.\n",
						["provider"] = { "n", 110791 },	-- First Arcanist Thalyssra
						["groups"] = {
							i(143658),	-- Echo of Time (QI!)
							ig(141326),	-- Talisman of the Shal'dorei (Mythic)
						},
					}),
				}),
				Boss(SKORPYRON, {
					ach(10840),	-- Mythic: Skorpyron
				}),
				Boss(CHRONOMATIC, {
					ach(10842),	-- Mythic: Chronomatic Anomaly
				}),
				Boss(TRILLIAX, {
					i(143577, {	-- Cloak of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138375),	-- Cape of Second Sight
						i(138373),	-- Cloak of Azj'Aqir
						i(138369),	-- Greatmantle of the Highlord
						i(138370),	-- Purifier's Drape
					}),
					i(143579, {	-- Cloak of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138367),	-- Cloak of Enveloped Dissonance
						i(138372),	-- Cloak of Shackled Elements
						i(138368),	-- Eagletalon Cloak
						i(138374),	-- Greatcloak of the Obsidian Aspect
					}),
					i(143578, {	-- Cloak of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138365),	-- Cloak of Everburning Knowledge
						i(138366),	-- Cloak of the Astral Warden
						i(138371),	-- Doomblade Shadowwrap
						i(138364),	-- Dreadwyrm Greatcloak
					}),
					ach(10843),	-- Mythic: Trilliax
				}),
				Boss(ALURIEL, {
					ach(10844),	-- Mythic: Spellblade Aluriel
				}),
				Boss(TICHONDRIUS, {
					ach(10847),	-- Mythic: Tichondrius
					i(143566, {	-- Shoulders of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138323),	-- Pauldrons of Azj'Aqir
						i(138362),	-- Pauldrons of the Highlord
						i(138322),	-- Purifier's Mantle
						i(138380),	-- Shoulderguards of Second Sight
					}),
					i(143576, {	-- Shoulders of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138347),	-- Eagletalon Spaulders
						i(138337),	-- Pauldrons of Enveloped Dissonance
						i(138348),	-- Pauldrons of Shackled Elements
						i(138363),	-- Shoulderplates of the Obsidian Aspect
					}),
					i(143570, {	-- Shoulders of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138338),	-- Doomblade Spaulders
						i(138361),	-- Dreadwyrm Shoulderguards
						i(138321),	-- Mantle of Everburning Knowledge
						i(138336),	-- Mantle of the Astral Warden
					}),
				}),
				Boss(KROSUS, {
					i(143562, {	-- Chest of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138350),	-- Breastplate of the Highlord
						i(138320),	-- Finery of Azj'Aqir
						i(138319),	-- Purifier's Cassock
						i(138376),	-- Tunic of Second Sight
					}),
					i(143572, {	-- Chest of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138351),	-- Chestplate of the Obsidian Aspect
						i(138339),	-- Eagletalon Tunic
						i(138346),	-- Raiment of Shackled Elements
						i(138325),	-- Tunic of Enveloped Dissonance
					}),
					i(143571, {	-- Chest of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138326),	-- Doomblade Tunic
						i(138349),	-- Dreadwyrm Breastplate
						i(138318),	-- Robe of Everburning Knowledge
						i(138324),	-- Robe of the Astral Warden
					}),
					ach(10848),	-- Mythic: Krosus
				}),
				Boss(TELARN, {
					ach(10846),	-- Mythic: High Botanist Tel'arn
				}),
				Boss(ETRAEUS, {
					i(143563, {	-- Gauntlets of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138311),	-- Clutch of Azj'Aqir
						i(138377),	-- Gloves of Second Sight
						i(138353),	-- Gauntlets of the Highlord
						i(138310),	-- Purifier's Gloves
					}),
					i(143573, {	-- Gauntlets of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138340),	-- Eagletalon Gauntlets
						i(138341),	-- Gauntlets of Shackled Elements
						i(138354),	-- Gauntlets of the Obsidian Aspect
						i(138328),	-- Gloves of Enveloped Dissonance
					}),
					i(143567, {	-- Gauntlets of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138329),	-- Doomblade Gauntlets
						i(138309),	-- Gloves of Everburning Knowledge
						i(138352),	-- Dreadwyrm Gauntlets
						i(138327),	-- Gloves of the Astral Warden
					}),
					ach(10845),	-- Mythic: Star Augur Etraeus
				}),
				Boss(ELISANDE, {
					i(143565, {	-- Helm of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138314),	-- Eyes of Azj'Aqir
						i(138356),	-- Helmet of the Highlord
						i(138378),	-- Mask of Second Sight
						i(138313),	-- Purifier's Gorget
					}),
					i(143575, {	-- Helm of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138342),	-- Eagletalon Cowl
						i(138343),	-- Helm of Shackled Elements
						i(138331),	-- Hood of Enveloped Dissonance
						i(138357),	-- Warhelm of the Obsidian Aspect
					}),
					i(143568, {	-- Helm of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138332),	-- Doomblade Cowl
						i(138355),	-- Dreadwyrm Crown
						i(138312),	-- Hood of Everburning Knowledge
						i(138330),	-- Hood of the Astral Warden
					}),
					ach(10849),	-- Mythic: Grand Magistrix Elisande
				}),
				Boss(GULDAN, {
					ach(11192, {	-- Cutting Edge: Gul'dan
						["timeline"] = { REMOVED_7_2_0 },
					}),
					i(137575),	-- Hellfire Infernal (MOUNT!)
					i(143564, {	-- Leggings of the Foreseen Conqueror [Demon Hunter, Paladin, Priest, Warlock]
						i(138317),	-- Leggings of Azj'Aqir
						i(138359),	-- Legplates of the Highlord
						i(138379),	-- Legwraps of Second Sight
						i(138316),	-- Purifier's Leggings
					}),
					i(143574, {	-- Leggings of the Foreseen Protector [Hunter, Monk, Shaman, Warrior]
						i(138344),	-- Eagletalon Legchains
						i(138334),	-- Leggings of Enveloped Dissonance
						i(138345),	-- Leggings of Shackled Elements
						i(138360),	-- Legplates of the Obsidian Aspect
					}),
					i(143569, {	-- Leggings of the Foreseen Vanquisher [Death Knight, Druid, Mage, Rogue]
						i(138335),	-- Doomblade Pants
						i(138358),	-- Dreadwyrm Legplates
						i(138315),	-- Leggings of Everburning Knowledge
						i(138333),	-- Leggings of the Astral Warden
					}),
					ach(10850, {	-- Mythic: Gul'dan
						title(342),	-- <Name>, Vengeance Incarnate
					}),
					ach(11239),	-- Mythic: Gul'dan Guild Run
					ach(10855, {	-- Realm First! Gul'dan
						["u"] = REMOVED_FROM_GAME,
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(786, {
		q(45318),	-- Skorpyron
		q(45319),	-- Chronomatic Anomaly
		q(45320),	-- Triliax
		q(45321),	-- Spellblade Aluriel
		q(45322),	-- Tichondrius
		q(45323),	-- Krosus
		q(46329),	-- Krosus Normal
		q(46330),	-- Krosus Heroic
		q(46331),	-- Krosus Mythic
		q(45324),	-- High Botanist Tel'arn
		q(45325),	-- Star Augur Etraeus
		q(45326),	-- Elisande
		q(45327),	-- Gul'dan Mythic
		q(45328),	-- Triggers when the door to Chronomatic Anomaly opens
		q(46328),	-- Triggers when the port to Elisande is activated
	}),
})));
