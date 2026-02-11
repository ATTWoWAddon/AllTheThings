-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local VIGILANT_GUARDIAN = 2458;
local SKOLEX_THE_INSATIABLE_RAVENER = 2465;
local ARTIFICER_XYMOX = 2470;
local DAUSEGNE_THE_FALLEN_ORACLE = 2459;
local PROTOTYPE_PANTHEON = 2460;
local LIHUVIM_PRINCIPAL_ARCHITECT = 2461;
local HALONDRUS_THE_RECLAIMER = 2463;
local ANDUIN_WRYNN = 2469;
local LORDS_OF_DREAD = 2457;
local RYGELON = 2467;
local THE_JAILER = 2464;

------ EncounterToCRS ------
local EncounterToCRS = {
	[VIGILANT_GUARDIAN] = {
		180773,	-- Vigilant Guardian
		184522,	-- Vigilant Custodian
	},
	[SKOLEX_THE_INSATIABLE_RAVENER] = { 181395 },	-- Skolex
	[ARTIFICER_XYMOX] = { 183501 },	-- Artificer Xy'mox
	[DAUSEGNE_THE_FALLEN_ORACLE] = { 181224 },	-- Dausegne, the Fallen Oracle
	[PROTOTYPE_PANTHEON] = {
		181551,	-- Prototype of Duty
		181549,	-- Prototype of War
		181546,	-- Prototype of Renewal
		181548,	-- Prototype of Absolution
	},
	[LIHUVIM_PRINCIPAL_ARCHITECT] = { 182169 },	-- Lihuvium, Principal Architect
	[HALONDRUS_THE_RECLAIMER] = { 180906 },	-- Halondrus the Reclaimer
	[ANDUIN_WRYNN] = { 181954 },	-- Anduin Wrynn
	[LORDS_OF_DREAD] = {
		181398,	-- Mal'Ganis <The Eternal>
		181399,	-- Kin'tessa <The Beguiler>
	},
	[RYGELON] = { 182777 },	-- Rygelon
	[THE_JAILER] = {
		185421,	-- Zovaal <The Jailer>
		180990,	-- The Jailer
	},
};

------ All Bosses crs ------
local ALL_BOSSES = {};
for k,v in pairs(EncounterToCRS) do
	ALL_BOSSES = appendGroups(v, ALL_BOSSES);
end

------ EncounterToLoot ------
local EncounterToLoot = {
	[VIGILANT_GUARDIAN] = {
		i(189771),	-- Ancient Materium Tassets
		i(188273),	-- Auxillary Attendant Chime
		i(189774),	-- Fractured Colossus Core
		i(189776),	-- Girdle of the First Gate
		i(189775),	-- Helm of Solemn Vigil
		i(189779),	-- Key to the Immortal Hearth
		i(189778),	-- Legplates of the Slumbering Sentinel
		i(189772),	-- Modified Defense Grid
		i(189770),	-- Pre-Fabricated Footpads
		i(189584),	-- Sepulcher's Savior
		i(189777),	-- Unstable Giant's Cuffs
	},
	[SKOLEX_THE_INSATIABLE_RAVENER] = {
		i(189819),	-- Assimilated Safeguard
		i(188267),	-- Bells of the Endless Feast
		i(189816),	-- Crystallized Viscera Spike
		i(189812),	-- Devourer's Sandblown Hidebinders
		i(189810),	-- Ephemera-Softened Exoskeleton
		i(189814),	-- Gluttonous Gardbrace
		i(189811),	-- Infinitely Collapsing Coil
		i(189815),	-- Lurking Predator's Camouflage
		i(189813),	-- Mantle of the Broken Beast
		i(189817),	-- Rift-Scarred Solcrusher
		i(189809),	-- Skolex's Ravenous Skinguards
	},
	[ARTIFICER_XYMOX] = {
		i(188265),	-- Cache of Acquired Treasures
		i(189827),	-- Cartel Xy's Proof of Initiation
		i(189826),	-- Enforcer's Containment Cinch
		i(189829),	-- Forerunner's Relic Blade
		i(189821),	-- Illicit Artifact Holster
		i(189822),	-- Imported Illidari Spaulders
		i(188266),	-- Pulsating Riftshard
		i(189830),	-- Replicated Relic Blade
		i(189823),	-- Stolen Nathrian Slippers
		i(189824),	-- Unlicensed Hyperlight Handlers
		i(189825),	-- Veiled Auctioneer's Vambraces
		i(189828),	-- Xy Captain's Crossbow
	},
	[DAUSEGNE_THE_FALLEN_ORACLE] = {
		i(189773),	-- Clasp of Crooked Crescendos
		i(189787),	-- Dausegne's Dissonant Halo
		i(189807),	-- Discordant Deathblade
		i(189791),	-- Drape of Mournful Melodies
		i(189784),	-- Epaulets of the Ailing Aria
		i(189790),	-- Final Forte
		i(189782),	-- Haunting Hymnal Robes
		i(189788),	-- Maestro's Malice
		i(189785),	-- Oracle's Chromatic Cuirass
		i(188272),	-- Resonant Reservoir
		i(189793),	-- Sash of the Silent Sonata
		i(189786),	-- Song-Mad Sabatons
	},
	[PROTOTYPE_PANTHEON] = {
		i(189794),	-- Boots of Ceaseless Conflict
		i(189796),	-- Duty's Ascendant Breastplate
		i(188270),	-- Elegy of the Eternals
		i(189799),	-- Elysia's Promise
		i(189798),	-- Moccasins of Dreadful Absolution
		i(189800),	-- Prelude to Pride
		i(189789),	-- Pursuit of Victory
		i(189783),	-- Sin-Steeped Coronet
		i(188271),	-- The First Sigil
		i(189795),	-- Winter's Stampeding Striders
		i(189797),	-- Wristwraps of Night's Renewal
	},
	[LIHUVIM_PRINCIPAL_ARCHITECT] = {
		i(191014, {	-- Dreadful Hand Module
			i(188863),	-- Gauntlets of the First Eidolon
			i(188898),	-- Mercurial Punisher's Grips
			i(188890),	-- Grasps of the Demon Star
		}),
		i(191015, {	-- Mystic Hand Module
			i(188853),	-- Handwraps of the Fixed Stars
			i(188861),	-- Godstalker's Gauntlets
			i(188845),	-- Erudite Occultist's Handwraps
		}),
		i(191016, {	-- Venerated Hand Module
			i(188928),	-- Luminous Chevalier's Gauntlets
			i(188881),	-- Caress of the Empyrean
			i(188925),	-- Theurgic Starspeaker's Runebindings
		}),
		i(191017, {	-- Zenith Hand Module
			i(188916),	-- Grips of the Grand Upwelling
			i(188907),	-- Soulblade Grasps
			i(188937),	-- Grasps of the Infinite Infantry
		}),
		i(188268),	-- Architect's Ingenuity Core
		i(189803),	-- Automa-Tender's Tights
		i(189805),	-- Bracers of the Inscrutable Inventor
		i(189804),	-- Combustible Collaboration Girdle
		i(189801),	-- Ephemera-Charged Thinking Cap
		i(189754),	-- Genesis Lathe
		i(189808),	-- Lihuvim's Severing Scalpel
		i(189802),	-- Loquacious Keeper's Peridot
		i(188269),	-- Pocket Protoforge
	},
	[HALONDRUS_THE_RECLAIMER] = {
		i(191018, {	-- Dreadful Leg Module
			i(188866),	-- Chausses of the First Eidolon
			i(188893),	-- Mercurial Punisher's Breeches
			i(188887),	-- Leggings of the Demon Star
		}),
		i(191019, {	-- Mystic Leg Module
			i(188848),	-- Leggings of the Fixed Stars
			i(188860),	-- Godstalker's Tassets
			i(188842),	-- Erudite Occultist's Leggings
		}),
		i(191020, {	-- Venerated Leg Module
			i(188931),	-- Luminous Chevalier's Robes
			i(188878),	-- Leggings of the Empyrean
			i(188924),	-- Theurgic Starspeaker's Tassets
		}),
		i(191021, {	-- Zenith Leg Module
			i(188911),	-- Legguards of the Grand Upwelling
			i(188902),	-- Soulblade Leggings
			i(188940),	-- Legplates of the Infinite Infantry
		}),
		i(188264),	-- Earthbreaker's Impact
		i(189831),	-- Ephemera-Stained Sollerets
		i(189832),	-- Greatboots of the Roaming Goliath
		i(189834),	-- Guardstaff of the Great Cycle
		i(189806),	-- Lightshatter Hatchet
		i(189781),	-- Obscured Fractal Prism
		i(188263),	-- Reclaimer's Intensity Core
		i(189833),	-- Taciturn Keeper's Lapis
	},
	[ANDUIN_WRYNN] = {
		i(191005, {	-- Dreadful Helm Module
			i(188868),	-- Visage of the First Eidolon
			i(188892),	-- Mercurial Punisher's Hood
			i(188889),	-- Horns of the Demon Star
		}),
		i(191002, {	-- Mystic Helm Module
			i(188847),	-- Headpiece of the Fixed Stars
			i(188859),	-- Godstalker's Sallet
			i(188844),	-- Erudite Occultist's Hood
		}),
		i(191003, {	-- Venerated Helm Module
			i(188933),	-- Luminous Chevalier's Casque
			i(188880),	-- Amice of the Empyrean
			i(188923),	-- Theurgic Starspeaker's Howl
		}),
		i(191004, {	-- Zenith Helm Module
			i(188910),	-- Crown of the Grand Upwelling
			i(188901),	-- Soulblade Guise
			i(188942),	-- Gaze of the Infinite Infantry
		}),
		i(189835),	-- Anduin's Princely Vestments
		i(189838),	-- Beacon of Stormwind
		i(189837),	-- King's Wolfheart Wasitband
		i(189840),	-- Remnant's Blasphemous Scourgebelt
		i(189841),	-- Soulwarped Seal of Menethil
		i(189839),	-- Soulwarped Seal of Wrynn
		i(188262),	-- The Lion's Roar
		i(189836),	-- Wrists of the Wicked Star
	},
	[LORDS_OF_DREAD] = {
		i(191006, {	-- Dreadful Shoulder Module
			i(188867),	-- Shoulderplates of the First Eidolon
			i(188896),	-- Mercurial Punisher's Shoulderpads
			i(188888),	-- Mantle of the Demon Star
		}),
		i(191007, {	-- Mystic Shoulder Module
			i(188851),	-- Shoulderpads of the Fixed Stars
			i(188856),	-- Godstalker's Pauldrons
			i(188843),	-- Erudite Occultist's Mantle
		}),
		i(191008, {	-- Venerated Shoulder Module
			i(188932),	-- Luminous Chevalier's Epaulets
			i(188879),	-- Capelet of the Empyrean
			i(188920),	-- Theurgic Starspeaker's Adornment
		}),
		i(191009, {	-- Zenith Shoulder Module
			i(188914),	-- Tassets of the Grand Upwelling
			i(188905),	-- Soulblade Nightwings
			i(188941),	-- Pauldrons of the Infinite Infantry
		}),
		i(189846),	-- Alandien's Tortured Twinblades
		i(189842),	-- Cuffs of the Covert Commander
		i(189844),	-- Gauntlets of Unseen Guests
		i(189843),	-- Grasps of Abducted Fate
		i(188255),	-- Heart of the Swarm
		i(188261),	-- Intrusive Thoughtcage
		i(189845),	-- Ruined Crest of Lordaeron
		i(189847),	-- Shroud of the Sire's Chosen
	},
	[RYGELON] = {
		i(191010, {	-- Dreadful Chest Module
			i(188864),	-- Carapace of the First Eidolon
			i(188894),	-- Mercurial Punisher's Jerkin
			i(188884),	-- Robes of the Demon Star
		}),
		i(191011, {	-- Mystic Chest Module
			i(188849),	-- Chestguard of the Fixed Stars
			i(188858),	-- Godstalker's Hauberk
			i(188839),	-- Erudite Occultist's Robes
		}),
		i(191012, {	-- Venerated Chest Module
			i(188929),	-- Luminous Chevalier's Plackart
			i(188875),	-- Habit of the Empyrean
			i(188922),	-- Theurgic Starspeaker's Ringmail
		}),
		i(191013, {	-- Zenith Chest Module
			i(188912),	-- Cuirass of the Grand Upwelling
			i(188903),	-- Soulblade Leathers
			i(188938),	-- Breastplate of the Infinite Infantry
		}),
		i(189852),	-- Antumbra, Shadow of the Cosmos
		i(189853),	-- Astral Verdict
		i(189851),	-- Devastated Worldshard
		i(188254),	-- Grim Eclipse
		i(189850),	-- Handguards of Hidden Realms
		i(189849),	-- Interdimensional Manica
		i(191001),	-- Observer's Umbral Shiv
		i(189854),	-- Rygelon's Heraldric Ring
		i(189848),	-- Treads of Titanic Curiosity
	},
	[THE_JAILER] = {
		i(189855),	-- Bindings of the Banished One
		i(188252),	-- Chains of Domination
		i(189818),	-- Domination's Deliverance
		i(189857),	-- Epochal Oppressor's Greaves
		i(189860),	-- Forbidden Truth
		i(189862),	-- Gavel of the First Arbiter
		i(189858),	-- Legguards of the Ultimate Threat
		i(189856),	-- Runecarver's Twisted Ward
		i(188253),	-- Scars of Fraternal Strife
		i(189859),	-- Worldkiller Iris
		i(189861),	-- Zovastrum, the Unmaking
	},
};

------ Zone Drops ------
local ZoneDropLoot = {
	i(190629),	-- Cartel's Larcenous Toecaps
	i(190630),	-- Devouring Pellicle Shoulderpads
	i(190624),	-- Gauntlets of the End
	i(190626),	-- Hood of Empty Eternities
	i(190334),	-- Origin
	i(190628),	-- Lupine's Synthetic Headgear
	i(190625),	-- Pauldrons of Possible Afterlives
	i(190627),	-- Subversive Lord's Leggings
	i(190631),	-- Vandalized Ephemera Mitts
};

------ Catalyst Functions ------
local TierList, SymLink
local SymRaid = function(ClassID, ModID)
	if ClassID == DEATHKNIGHT or ClassID == WARLOCK or ClassID == DEMONHUNTER then
		TierList = {"select", "itemID",
			191010,	-- Dreadful Chest Module
			191014,	-- Dreadful Hand Module
			191005,	-- Dreadful Helm Module
			191018,	-- Dreadful Leg Module
			191006,	-- Dreadful Shoulder Module
		}
	elseif ClassID == HUNTER or ClassID == MAGE or ClassID == DRUID then
		TierList = {"select", "itemID",
			191011,	-- Mystic Chest Module
			191015,	-- Mystic Hand Module
			191002,	-- Mystic Helm Module
			191019,	-- Mystic Leg Module
			191007,	-- Mystic Shoulder Module
		}
	elseif ClassID == PALADIN or ClassID == PRIEST or ClassID == SHAMAN then
		TierList = {"select", "itemID",
			191012,	-- Venerated Chest Module
			191016,	-- Venerated Hand Module
			191003,	-- Venerated Helm Module
			191020,	-- Venerated Leg Module
			191008,	-- Venerated Shoulder Module
		}
	else
		TierList = {"select", "itemID",
			191013,	-- Zenith Chest Module
			191017,	-- Zenith Hand Module
			191004,	-- Zenith Helm Module
			191021,	-- Zenith Leg Module
			191009,	-- Zenith Shoulder Module
		}
	end
	SymLink = {
		TierList,
		{"pop"},
		{"where", "modID", ModID },
		{"contains", "c", ClassID },
	}
	return SymLink
end

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	inst(1195, {	-- Sepulcher of the First Ones
		["coord"] = { 80.9, 53.4, ZERETH_MORTIS },
		["maps"] = {
			2047,	-- Immortal Hearth
			2048,	-- Genesis Cradle
			2049,	-- The Endless Foundry
			2050,	-- Domination's Grasp
			2051,	-- Heart of Eternity
			2052,	-- The Grand Design
			2061,	-- Ephemeral Plains
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(15493, {	-- Ephemeral Plains
					crit(53151, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53152, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53153, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53157, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15492, {	-- Cornerstone of Creation
					crit(53154, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53155, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53156, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15416, {	-- Domination's Grasp
					crit(53158, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53148, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53149, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15418, {	-- The Grand Design
					crit(53150, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15417, {	-- Sepulcher of the First Ones
					crit(53151, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53152, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53153, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53154, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53155, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53156, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53157, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53158, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53148, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53149, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53150, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15478, {	-- Heroic: Sepulcher of the First Ones
					crit(53162, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53166, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53170, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53174, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53178, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53182, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53186, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53190, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53194, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53198, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.HEROIC },
					}),
					crit(53202, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.HEROIC },
					}),
				}),
				ach(15490, {	-- Mythic: Sepulcher of the First Ones
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						15479,	-- Mythic: Vigilant Guardian
						15480,	-- Mythic: Skolex
						15481,	-- Mythic: Artificer Xy'mox
						15482,	-- Mythic: Dausegne
						15483,	-- Mythic: Prototype Pantheon
						15484,	-- Mythic: Lihuvim
						15485,	-- Mythic: Halondrus
						15486,	-- Mythic: Anduin Wrynn
						15487,	-- Mythic: Lords of Dread
						15488,	-- Mythic: Rygelon
						15489,	-- Mythic: The Jailer
					}},
				}),
				ach(15491, {	-- Glory of the Sepulcher Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						15381,	-- Power ON
						15401,	-- Wisdom Comes From the Desert
						15398,	-- Xy Never, Ever Marks the Spot.
						15397,	-- Four Ring Circus
						15400,	-- Where the Wild Beasts Are
						15419,	-- The Protoform Matrix
						15386,	-- Shimmering Secrets
						15399,	-- Coming to Terms
						15315,	-- Amidst Ourselves
						15396,	-- We Are All Made of Stars
						15494,	-- Damnation Aviation
					}},
					["groups"] = {
						i(187675),	-- Shimmering Aurelid (MOUNT!)
					},
				}),
				ach(15409),	-- First Wonders
				-- Fated
				ach(15681, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Fate of the Sepulcher
					crit(53579, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53580, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53581, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53582, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53583, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53584, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53585, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53586, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53587, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53588, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53589, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.MULTI.ALL },
					}),
				})),
				ach(15682, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Heroic: Fate of the Sepulcher
					crit(53590, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53591, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53592, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53593, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53594, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53595, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53596, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53597, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53598, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53599, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53600, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				})),
				ach(15683, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Mythic: Fate of the Sepulcher
					crit(153601, {	-- Vigilant Guardian
						["_encounter"] = { VIGILANT_GUARDIAN, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(253602, {	-- Skolex, the Insatiable Ravener
						["_encounter"] = { SKOLEX_THE_INSATIABLE_RAVENER, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(353603, {	-- Artificer Xy'mox
						["_encounter"] = { ARTIFICER_XYMOX, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(453604, {	-- Dausegne, the Fallen Oracle
						["_encounter"] = { DAUSEGNE_THE_FALLEN_ORACLE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(553605, {	-- Prototype Pantheon
						["_encounter"] = { PROTOTYPE_PANTHEON, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(653606, {	-- Lihuvim, Principal Architect
						["_encounter"] = { LIHUVIM_PRINCIPAL_ARCHITECT, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(753607, {	-- Halondrus the Reclaimer
						["_encounter"] = { HALONDRUS_THE_RECLAIMER, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(853608, {	-- Anduin Wrynn
						["_encounter"] = { ANDUIN_WRYNN, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(953609, {	-- Lords of Dread
						["_encounter"] = { LORDS_OF_DREAD, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53610, {	-- Rygelon
						["_encounter"] = { RYGELON, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53611, {	-- The Jailer
						["_encounter"] = { THE_JAILER, DIFFICULTY.RAID.MYTHIC },
					}),
				})),
				-- Guild Achievements
				ach(15472),		-- Sepulcher of the First Ones Guild Run
				ach(15473),		-- Heroic Sepulcher of the First Ones Guild Run
			}),
			CommonBossDrops({
				i(187806),	-- Vantus Rune Technique: Sepulcher of the First Ones (RECIPE!)
			}),
			n(FLIGHT_PATHS, sharedData({ ["collectible"] = false }, {
				fp(2715, {	-- Ephemeral Plains Alpha
					["cr"] = 182522,	-- Ancient Translocator
				}),
				fp(2716, {	-- Ephemeral Plains Omega
					["cr"] = 182544,	-- Ancient Translocator
				}),
				fp(2731, {	-- Domination's Grasp
					["cr"] = 184354,	-- Ancient Translocator
				}),
				fp(2713, {	-- Genesis Cradle Alpha
					["cr"] = 182472,	-- Ancient Translocator
				}),
				fp(2714, {	-- Genesis Cradle Beta
					["cr"] = 185200,	-- Ancient Translocator
				}),
				fp(2757, {	-- Genesis Cradle Omega
					["cr"] = 182489,	-- Ancient Translocator
				}),
				fp(2712, {	-- Immortal Hearth
					["cr"] = 182431,	-- Ancient Translocator
				}),
			})),
			n(SPECIAL, {
				i(189167, {	-- Glimmer of Satisfaction
					["description"] = "Eating a Empty Kettle of Stone Soup (/att i:187648) or Feast of Gluttonous Hedonism Feast (/att i:172043) has a chance to spawn this item in your inventory.\nThe chance to Award Glimmer of Satisfaction happens whenever you either gain the 'Well Fed' buff or refresh the buff, so you can click again on the feast every ~12 seconds.",
				}),
				n(185032, {	-- Taskmaster Xy'pro <Cartel Xy>
					["description"] = "Killed when having 3 stacks of Synergy",
					["coord"] = { 22.0, 38.0, 2061 },
					["groups"] = {
						i(190727),	-- Security Override Orb
					},
				}),
			}),
			n(TREASURES, {
				o(375893, {	-- High Value Cache
					["description"] = "When Taskmaster Xy'pro has 3 stacks of Synergy, which he gets from being nearby other mobs, he gets another buff called Security Override which says he will drop the Security Override Orb.",
					["coord"] = { 22.0, 38.0, 2061 },
					["questID"] = 66285,
					["cost"] = { { "i", 190727, 1 } },	-- 1x Security Override Orb
					["isWeekly"] = true,
					["groups"] = {
						i(189175),	-- Mawforged Bridle (PS!)
						i(189991),	-- Snail Soul (SS!)
					},
				}),
				o(375905, {	-- Protoform Schematic
					["description"] = "Prior to the Vigilant Guardian encounter, under the north-eastern 'island' in a chain.",
					["coord"] = { 45.4, 32.6, 2047 },
					["groups"] = {
						i(189461),	-- Schematic: Serenade (PS!)
					},
				}),
				o(375907, {	-- Protoform Schematic
					["description"] = "Located on the North side of the 2nd encounter area after defeating Halondrus.",
					["coord"] = { 63.2, 51.9, 2061 },
					["groups"] = {
						i(189476),	-- Schematic: Curious Crystalsniffer (PS!)
					},
				}),
			}),
			o(375368, {	-- Creation Catalyst Console
				["description"] = "The Creation Catalyst is a system that lets you convert Items bought with Sandworn Relics in Zereth Morthis & non-set Items from the Sepulcher of the First Ones Raid into your class' Transmog Set Items.\n\nThe catalyst is outside of the Raid in southern Zereth Mortis. Make sure to equip your item first before converting it.",
				["coord"] = { 47.4, 88.6, ZERETH_MORTIS },
				["sourceQuests"] = { 64842 },	-- Flora Frenzy
				["modelScale"] = 4,
				["catalystID"] = 2,	-- ItemBonus.Value_0 SL:S4
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {["upgradeTrackID"]=UPGRADETRACKS.VETERAN}).AddGroups(
						sharedData({
							["cost"] = { { "i", 190189, 2070 } },	-- 2070 Sandworn Relic, Full set cost from Vendor
						},
						ALL_CLASS_TIERS_HELPER(SEPULCHER_OF_FIRST_ONES_TIER, DIFFICULTY.RAID.LFR))
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(SEPULCHER_OF_FIRST_ONES_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						ALL_CLASS_TIERS_HELPER(SEPULCHER_OF_FIRST_ONES_TIER, DIFFICULTY.RAID.HEROIC)
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						ALL_CLASS_TIERS_HELPER(SEPULCHER_OF_FIRST_ONES_TIER, DIFFICULTY.RAID.MYTHIC)
					),
				},
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(WORLD_QUESTS, {
					q(66695, {	-- Tempting Fate: Sepchuler of the First Ones
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
						["isWorldQuest"] = true,
					}),
				}),
				BossOnly(VIGILANT_GUARDIAN, {
					i(183402),	-- Bloodletting (CONDUIT!)
					i(182126),	-- High Voltage (CONDUIT!)
					i(181734),	-- Magi's Brand (CONDUIT!)
					i(183505),	-- Maim, Mangle (CONDUIT!)
					i(180944),	-- Merciless Bonegrinder (CONDUIT!)
					i(182622),	-- Resplendent Light (CONDUIT!)
					i(182736),	-- Rolling Agony (CONDUIT!)
					i(181843),	-- Shining Radiance (CONDUIT!)
					i(183479),	-- Umbral Intensity (CONDUIT!)
					i(181742),	-- Walk with the Ox (CONDUIT!)
				}),
				BossOnly(SKOLEX_THE_INSATIABLE_RAVENER, {
					i(181838),	-- Charitable Soul (CONDUIT!)
					i(182110),	-- Crippling Hex (CONDUIT!)
					i(182383),	-- Dancing with Fate (CONDUIT!)
					i(181980),	-- Embrace Death (CONDUIT!)
					i(181508),	-- Fortifying Ingredients (CONDUIT!)
					i(182336),	-- Golden Path (CONDUIT!)
					i(181469),	-- Indelible Victory (CONDUIT!)
					i(183502),	-- Prepared for All (CONDUIT!)
					i(182466),	-- Shade of Terror (CONDUIT!)
					i(183167),	-- Strength of the Pack (CONDUIT!)
					i(183484),	-- Unchecked Aggression (CONDUIT!)
				}),
				BossOnly(ARTIFICER_XYMOX, {
					i(182128),	-- Call of Flame (CONDUIT!)
					i(180935),	-- Crash the Ramparts (CONDUIT!)
					i(182667),	-- Focused Light (CONDUIT!)
					i(182743),	-- Focused Malignancy (CONDUIT!)
					i(181756),	-- Incantation of Swiftness (CONDUIT!)
					i(183506),	-- Lethal Poisons (CONDUIT!)
					i(181844),	-- Pain Transformation (CONDUIT!)
					i(182469),	-- Rejuvenating Wind (CONDUIT!)
					i(181836),	-- Spirit Drain (CONDUIT!)
					i(183488),	-- Unstoppable Growth (CONDUIT!)
				}),
				BossOnly(DAUSEGNE_THE_FALLEN_ORACLE, {
					i(183510),	-- Count the Odds (CONDUIT!)
					i(181942),	-- Focused Mending (CONDUIT!)
					i(181504),	-- Infernal Cascade (CONDUIT!)
					i(181495),	-- Jade Bond (CONDUIT!)
					i(182677),	-- Punish the Guilty (CONDUIT!)
					i(182648),	-- Sharpshooter's Focus (CONDUIT!)
					i(182471),	-- Soul Furnace (CONDUIT!)
					i(182751),	-- Tyrant's Soul (CONDUIT!)
					i(182134),	-- Unruly Winds (CONDUIT!)
					i(181776),	-- Vicious Contempt (CONDUIT!)
					i(181866),	-- Withering Plague (CONDUIT!)
				}),
				BossOnly(PROTOTYPE_PANTHEON, {
					i(181770),	-- Bone Marrow Hops (CONDUIT!)
					i(182706),	-- Brooding Pool (CONDUIT!)
					i(182292),	-- Brutal Grasp (CONDUIT!)
					i(182962),	-- Catastrophic Origin (CONDUIT!)
					i(183473),	-- Conflux of Elements (CONDUIT!)
					i(181974),	-- Courageous Ascension (CONDUIT!)
					i(183471),	-- Deep Allegiance (CONDUIT!)
					i(182651),	-- Destructive Reverberations (CONDUIT!)
					i(181539),	-- Discipline of the Grove (CONDUIT!)
					i(182345),	-- Elysian Dirge (CONDUIT!)
					i(182331),	-- Empowered Release (CONDUIT!)
					i(183474),	-- Endless Thirst (CONDUIT!)
					i(182321),	-- Enfeebled Mark (CONDUIT!)
					i(182347),	-- Essential Extraction (CONDUIT!)
					i(183472),	-- Evolved Swarm (CONDUIT!)
					i(182129),	-- Fae Fermata (CONDUIT!)
					i(182961),	-- Fatal Decimation (CONDUIT!)
					i(181981),	-- Festering Transfusion (CONDUIT!)
					i(181553),	-- Gift of the Lich (CONDUIT!)
					i(182777),	-- Hallowed Discernment (CONDUIT!)
					i(182463),	-- Harrowing Punishment (CONDUIT!)
					i(181774),	-- Imbued Reflections (CONDUIT!)
					i(182288),	-- Impenetrable Gloom (CONDUIT!)
					i(182685),	-- Increased Scrutiny (CONDUIT!)
					i(181600),	-- Ire of the Ascended (CONDUIT!)
					i(183495),	-- Lashing Scars (CONDUIT!)
					i(182348),	-- Lavish Harvest (CONDUIT!)
					i(182339),	-- Necrotic Barrage (CONDUIT!)
					i(182440),	-- Piercing Verdict (CONDUIT!)
					i(182295),	-- Proliferation (CONDUIT!)
					i(182646),	-- Repeat Decree (CONDUIT!)
					i(183492),	-- Reverberation (CONDUIT!)
					i(182770),	-- Righteous Might (CONDUIT!)
					i(182778),	-- Ringing Clarity (CONDUIT!)
					i(183494),	-- Septic Shock (CONDUIT!)
					i(182130),	-- Shattered Perceptions (CONDUIT!)
					i(181639),	-- Siphoned Malice (CONDUIT!)
					i(182964),	-- Soul Eater (CONDUIT!)
					i(182960),	-- Soul Tithe (CONDUIT!)
					i(182335),	-- Spirit Attunement (CONDUIT!)
					i(181759),	-- Strike with Clarity (CONDUIT!)
					i(183493),	-- Sudden Fractures (CONDUIT!)
					i(182767),	-- The Long Summer (CONDUIT!)
					i(182346),	-- Tumbling Waves (CONDUIT!)
					i(183463),	-- Unnatural Malice (CONDUIT!)
					i(182442),	-- Veteran's Respite (CONDUIT!)
					i(181775),	-- Way of the Fae (CONDUIT!)
					i(183199),	-- Withering Ground (CONDUIT!)
				}),
				BossOnly(LIHUVIM_PRINCIPAL_ARCHITECT, {
					i(189437),	-- Schematic: Stabilized Geomental (RECIPE!)
					i(189178),	-- Tools of Incomprehensible Experimentation (PS!)
					i(182755),	-- Ashen Remains (CONDUIT!)
					i(181435),	-- Calculated Strikes (CONDUIT!)
					i(182140),	-- Dissonant Echoes (CONDUIT!)
					i(181982),	-- Everfrost (CONDUIT!)
					i(181455),	-- Icy Propulsion (CONDUIT!)
					i(183512),	-- Planned Execution (CONDUIT!)
					i(182624),	-- Show of Force (CONDUIT!)
					i(183482),	-- Sudden Ambush (CONDUIT!)
					i(182143),	-- Swirling Currents (CONDUIT!)
					i(182608),	-- Virtuous Command (CONDUIT!)
				}),
				BossOnly(HALONDRUS_THE_RECLAIMER, {
					i(182748),	-- Borne of Blood (CONDUIT!)
					i(181712),	-- Depths of Insanity (CONDUIT!)
					i(183478),	-- Fury of the Skies (CONDUIT!)
					i(182137),	-- Magma Fist (CONDUIT!)
					i(182187),	-- Meat Shield (CONDUIT!)
					i(181511),	-- Nether Precision (CONDUIT!)
					i(182621),	-- One With the Beast (CONDUIT!)
					i(182325),	-- Ravenous Consumption (CONDUIT!)
					i(181944),	-- Resonant Words (CONDUIT!)
					i(181700),	-- Scalding Brew (CONDUIT!)
					i(183507),	-- Triple Threat (CONDUIT!)
				}),
				BossOnly(ANDUIN_WRYNN, {
					i(181848),	-- Accelerated Cold (CONDUIT!)
					i(182769),	-- Combusting Engine (CONDUIT!)
					i(183197),	-- Controlled Destruction (CONDUIT!)
					i(182142),	-- Embrace of Earth (CONDUIT!)
					i(180932),	-- Fueled by Violence (CONDUIT!)
					i(181737),	-- Nourishing Chi (CONDUIT!)
					i(183514),	-- Perforated Veins (CONDUIT!)
					i(182686),	-- Powerful Precision (CONDUIT!)
					i(183480),	-- Taste for Blood (CONDUIT!)
					i(182681),	-- Vengeful Shock (CONDUIT!)
				}),
				BossOnly(LORDS_OF_DREAD, {
					i(181462),	-- Coordinated Offensive (CONDUIT!)
					i(182598),	-- Demon Muzzle (CONDUIT!)
					i(181786),	-- Eternal Hunger (CONDUIT!)
					i(181461),	-- Ice Bite (CONDUIT!)
					i(181962),	-- Mental Recovery (CONDUIT!)
					i(183485),	-- Savage Combatant (CONDUIT!)
					i(183184),	-- Stinging Strike (CONDUIT!)
					i(182109),	-- Totemic Surge (CONDUIT!)
					i(182465),	-- Truth's Wake (CONDUIT!)
				}),
				BossOnly(RYGELON, {
					i(183468),	-- Born Anew (CONDUIT!)
					i(180943),	-- Cacophonous Roar (CONDUIT!)
					i(182461),	-- Echoing Blessings (CONDUIT!)
					i(181498),	-- Grounding Surge (CONDUIT!)
					i(183497),	-- Recuperator (CONDUIT!)
					i(182368),	-- Relentless Onslaught (CONDUIT!)
				}),
				BossOnly(THE_JAILER, {
					i(181975),	-- Hardened Bones (CONDUIT!)
					i(182131),	-- Haunting Apparitions (CONDUIT!)
					i(181510),	-- Lingering Numbness (CONDUIT!)
					i(183491),	-- Ready for Anything (CONDUIT!)
					i(182449),	-- Resolute Barrier (CONDUIT!)
					i(182480),	-- Reversal of Fortune (CONDUIT!)
					i(182318),	-- Viscous Ink (CONDUIT!)
				}),
			}),
			-- #if AFTER 10.1.5
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 205959 },	-- Ta'elfar <Trader of Histories>
				["coord"] = { 41.3, 71.0, ORIBOS },
			}),
			-- #endif
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups(bubbleDown({ ["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH, ADDED_10_1_5 } }, {
				ZoneDrops(),
				header(HEADERS.Achievement, 15493, {	-- Ephemeral Plains
					Boss(VIGILANT_GUARDIAN),
					Boss(SKOLEX_THE_INSATIABLE_RAVENER),
					Boss(ARTIFICER_XYMOX),
					Boss(HALONDRUS_THE_RECLAIMER),
				}),
				header(HEADERS.Achievement, 15492, {	-- Cornerstone of Creation
					Boss(DAUSEGNE_THE_FALLEN_ORACLE),
					Boss(PROTOTYPE_PANTHEON),
					Boss(LIHUVIM_PRINCIPAL_ARCHITECT),
				}),
				header(HEADERS.Achievement, 15416, {	-- Domination's Grasp
					Boss(ANDUIN_WRYNN),
					Boss(LORDS_OF_DREAD),
					Boss(RYGELON),
				}),
				header(HEADERS.Achievement, 15418, {	-- The Grand Design
					Boss(THE_JAILER),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(VIGILANT_GUARDIAN, {
					ach(15381),	-- Power ON
				}),
				BossOnly(SKOLEX_THE_INSATIABLE_RAVENER, {
					ach(15401),	-- Wisdom Comes From the Desert
				}),
				BossOnly(ARTIFICER_XYMOX, {
					ach(15398),	-- Xy Never, Ever Marks the Spot.
				}),
				BossOnly(DAUSEGNE_THE_FALLEN_ORACLE, {
					ach(15397),	-- Four Ring Circus
				}),
				BossOnly(PROTOTYPE_PANTHEON, {
					ach(15400),	-- Where the Wild Beasts Are
				}),
				BossOnly(LIHUVIM_PRINCIPAL_ARCHITECT, {
					ach(15419),	-- The Protoform Matrix
				}),
				BossOnly(HALONDRUS_THE_RECLAIMER, {
					ach(15386),	-- Shimmering Secrets
				}),
				BossOnly(ANDUIN_WRYNN, {
					ach(15399),	-- Coming to Terms
				}),
				BossOnly(LORDS_OF_DREAD, {
					ach(15315),	-- Amidst Ourselves
				}),
				BossOnly(RYGELON, {
					ach(15396),	-- We Are All Made of Stars
				}),
				BossOnly(THE_JAILER, {
					ach(15494),	-- Damnation Aviation
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(65764, {	-- Sepulcher of the First Ones - Heavy is the Crown [N]
						["provider"] = { "n", 184601 },	-- Highlord Bolvar Fordragon
						["groups"] = {
							i(190967),	-- Mourne Fragment (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(VIGILANT_GUARDIAN),
				Boss(SKOLEX_THE_INSATIABLE_RAVENER),
				Boss(ARTIFICER_XYMOX),
				Boss(DAUSEGNE_THE_FALLEN_ORACLE),
				Boss(PROTOTYPE_PANTHEON),
				Boss(LIHUVIM_PRINCIPAL_ARCHITECT),
				Boss(HALONDRUS_THE_RECLAIMER),
				Boss(ANDUIN_WRYNN),
				Boss(LORDS_OF_DREAD),
				Boss(RYGELON),
				Boss(THE_JAILER),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				n(QUESTS, {
					q(65717, bubbleDownSelf({	-- Final Shape
						["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH },
					},{
						["provider"] = { "i", 190773 },	-- Carcinized Protoform
						["groups"] = {
							i(190771),	-- Carcinized Zerethsteed (MOUNT!)
						},
					})),
				}),
				BossOnly(VIGILANT_GUARDIAN),
				BossOnly(SKOLEX_THE_INSATIABLE_RAVENER),
				BossOnly(ARTIFICER_XYMOX),
				BossOnly(DAUSEGNE_THE_FALLEN_ORACLE),
				BossOnly(PROTOTYPE_PANTHEON, {
					ig(190337),	-- Cervid Soul (SS!)
				}),
				BossOnly(LIHUVIM_PRINCIPAL_ARCHITECT),
				BossOnly(HALONDRUS_THE_RECLAIMER),
				BossOnly(ANDUIN_WRYNN),
				BossOnly(LORDS_OF_DREAD),
				BossOnly(RYGELON, {
					ach(15468, {["timeline"] = { ADDED_9_2_7, REMOVED_10_0_2_LAUNCH }}),	-- We Are All Made of Stars [Heroic]
				}),
				BossOnly(THE_JAILER, {
					ach(15470, {["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 }}),	-- Ahead of the Curve: The Jailer
					ig(190773, {["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH }}),	-- Carcinized Protoform (MOUNT! - QUEST)
					ig(189982),	-- Silithid Soul (SS!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(65763, {	-- Sepulcher of the First Ones - Heavy is the Crown [H]
						["provider"] = { "n", 184601 },	-- Highlord Bolvar Fordragon
						["groups"] = {
							i(190966),	-- Mourne Fragment (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(VIGILANT_GUARDIAN),
				Boss(SKOLEX_THE_INSATIABLE_RAVENER),
				Boss(ARTIFICER_XYMOX),
				Boss(DAUSEGNE_THE_FALLEN_ORACLE),
				Boss(PROTOTYPE_PANTHEON),
				Boss(LIHUVIM_PRINCIPAL_ARCHITECT),
				Boss(HALONDRUS_THE_RECLAIMER),
				Boss(ANDUIN_WRYNN),
				Boss(LORDS_OF_DREAD),
				Boss(RYGELON),
				Boss(THE_JAILER),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(65762, {	-- Sepulcher of the First Ones - Heavy is the Crown [M]
						["qgs"] = {
							184601,	-- Highlord Bolvar Fordragon
							188683,	-- Knight of the Ebon Blade
						},	--
						["groups"] = { i(190959) },	-- Mourne Fragment (QI!)
					}),
				}),
				ZoneDrops(),
				Boss(VIGILANT_GUARDIAN, {
					ach(15479),	-- Mythic: Vigilant Guardian
				}),
				Boss(SKOLEX_THE_INSATIABLE_RAVENER, {
					ach(15480),	-- Mythic: Skolex
				}),
				Boss(ARTIFICER_XYMOX, {
					ach(15481),	-- Mythic: Artificer Xy'mox
				}),
				Boss(DAUSEGNE_THE_FALLEN_ORACLE, {
					ach(15482),	-- Mythic: Dausegne
				}),
				Boss(PROTOTYPE_PANTHEON, {
					ach(15483),	-- Mythic: Prototype Pantheon
				}),
				Boss(LIHUVIM_PRINCIPAL_ARCHITECT, {
					ach(15484),	-- Mythic: Lihuvim
				}),
				Boss(HALONDRUS_THE_RECLAIMER, {
					ach(15485),	-- Mythic: Halondrus
				}),
				Boss(ANDUIN_WRYNN, {
					ach(15486),	-- Mythic: Anduin Wrynn
				}),
				Boss(LORDS_OF_DREAD, {
					ach(15487),	-- Mythic: Lords of Dread
				}),
				Boss(RYGELON, {
					ach(15488),	-- Mythic: Rygelon
					ach(15469, {["timeline"] = { ADDED_9_2_7, REMOVED_10_0_2_LAUNCH }}),	-- We Are All Made of Stars [Mythic]
				}),
				Boss(THE_JAILER, {
					ach(15489, {	-- Mythic: The Jailer
						title(455),	-- <Name>, Guardian of the Pattern
					}),
					ach(15474),		-- Mythic The Jailer Guild Run
					ig(190768),	-- Zereth Overseer (MOUNT!)
				}),
				Boss(THE_JAILER, bubbleDown({["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 } }, {
					ach(15476, {	-- Hall of Fame: The Jailer (A)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							title(454),	-- <Name>, Famed Slayer of The Banished One
						},
					}),
					ach(15475, {	-- Hall of Fame: The Jailer (H)
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(454),	-- <Name>, Famed Slayer of The Banished One
						},
					}),
					ach(15471),	-- Cutting Edge: The Jailer
				})),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
	inst(1195, {	-- Sepulcher of the First Ones
		-- Normal
		q(65356),	-- Entering the Raid
		q(65810),	-- Triggered when killing Vigilant Guardian
		q(65966),	-- Triggered when killing Vigilant Guardian
		q(65984),	-- Triggered when killing Trash: Subjugator Zeltoth
		q(65985),	-- Triggered when killing Trash: Subjugator Zeltoth
		q(65818),	-- Triggered when killing Skolex
		q(65819),	-- Triggered when killing Skolex
		q(65970),	-- Triggered when killing Skolex
		q(65982),	-- Triggered when killing Trash: Taskmaster Xy'pro
		q(65983),	-- Triggered when killing Trash: Taskmaster Xy'pro
		q(65820),	-- Triggered when killing Artificer Xy'mox
		q(65821),	-- Triggered when killing Artificer Xy'mox
		q(65971),	-- Triggered when killing Artificer Xy'mox
		q(65822),	-- Triggered when killing Halondrus
		q(65823),	-- Triggered when killing Halondrus
		q(65972),	-- Triggered when killing Halondrus
		q(65980),	-- Triggered when killing Trash: Manifestor Krugan
		q(65981),	-- Triggered when killing Trash: Manifestor Krugan
		q(65812),	-- Triggered when killing Dausegne
		q(65813),	-- Triggered when killing Dausegne
		q(65967),	-- Triggered when killing Dausegne
		q(65814),	-- Triggered when killing Prototype Pantheon
		q(65815),	-- Triggered when killing Prototype Pantheon
		q(65968),	-- Triggered when killing Prototype Pantheon
		q(65978),	-- Triggered when killing Trash: Sacred Matrix Automa
		q(65979),	-- Triggered when killing Trash: Sacred Matrix Automa
		q(65816),	-- Triggered when killing Lihuvium
		q(65817),	-- Triggered when killing Lihuvium
		q(65969),	-- Triggered when killing Lihuvium
		q(65824),	-- Triggered when killing Anduin
		q(65825),	-- Triggered when killing Anduin
		q(65973),	-- Triggered when killing Anduin
		q(65699),	-- Anduin Cinematic (spellID 368011)
		q(65826),	-- Killing Lord of Dread
		q(65827),	-- Killing Lord of Dread
		q(65974),	-- Killing Lord of Dread
		q(65828),	-- Killing Rygelon
		q(65829),	-- Killing Rygelon
		q(65975),	-- Killing Rygelon
		q(65986),	-- Triggered when killing Trash: Kelmortos
		q(65987),	-- Triggered when killing Trash: Kelmortos
		q(65830),	-- Killing The Jailer
		q(65831),	-- Killing The Jailer
		q(65976),	-- Killing The Jailer
		q(65697),	-- Jailer Intro Complete Quest (spellID 368009)
		q(65698),	-- Jailer Cinematic (spellID 368010)
	}),
})));
