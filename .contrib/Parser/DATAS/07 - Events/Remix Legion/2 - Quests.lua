-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	header(HEADERS.Quest, 89476, {	-- Infinite Research
		n(QUESTS, sharedData({
			["qgs"] = {
				241748,	-- Eternus
				249256,	-- Pile of Chronoqueries
			},
			["coords"] = {
				{ 45.7, 68.5, BROKEN_ISLES },
				{ 45.8, 68.5, BROKEN_ISLES },
			},
			["isRepeatable"] = true,
		}, {
			q(91445),	-- Infinite Research: Advanced Combat Studies, Comprehensive
			q(91447),	-- Infinite Research: Advanced Combat Studies, Demonology
			q(91444),	-- Infinite Research: Advanced Combat Studies, Elite
			q(91449),	-- Infinite Research: Advanced Combat Studies, Empowerment
			q(91443),	-- Infinite Research: Advanced Combat Studies, Rare
			q(91446),	-- Infinite Research: Advanced Combat Studies, Rare Elites
			q(89595),	-- Infinite Research: Antorus, the Burning Throne, Heroic
			q(89601),	-- Infinite Research: Antorus, the Burning Throne, Mythic
			q(89592),	-- Infinite Research: Antorus, the Burning Throne, Normal
			q(90108),	-- Infinite Research: Artifact Collector
			q(89517),	-- Infinite Research: Assault on Violet Hold, Heroic
			q(89531),	-- Infinite Research: Assault on Violet Hold, Mythic
			q(89516),	-- Infinite Research: Assault on Violet Hold, Normal
			q(89519),	-- Infinite Research: Black Rook Hold, Heroic
			q(89528),	-- Infinite Research: Black Rook Hold, Mythic
			q(89523),	-- Infinite Research: Black Rook Hold, Normal
			q(89518),	-- Infinite Research: Cathedral of Eternal Night, Heroic
			q(89522),	-- Infinite Research: Cathedral of Eternal Night, Mythic
			q(89530),	-- Infinite Research: Cathedral of Eternal Night, Normal
			q(90102),	-- Infinite Research: Champion of the Broken Isles
			q(90103),	-- Infinite Research: Champion of the Order Hall
			q(90109),	-- Infinite Research: Clear the Skies
			q(89464),	-- Infinite Research: Combat Studies, Comprehensive
			q(90112),	-- Infinite Research: Combat Studies, Elite
			q(90111),	-- Infinite Research: Combat Studies, Demonology
			q(92439),	-- Infinite Research: Combat Studies, Felrunner
			q(90115),	-- Infinite Research: Combat Studies, Groverunner
			q(92442),	-- Infinite Research: Combat Studies, Lightrunner
			q(92441),	-- Infinite Research: Combat Studies, Magerunner
			q(92440),	-- Infinite Research: Combat Studies, Stormrunner
			q(90099),	-- Infinite Research: Combat Studies, Rare
			q(90100),	-- Infinite Research: Combat Studies, Rare Elites
			q(89521),	-- Infinite Research: Court of Stars, Heroic
			q(89556),	-- Infinite Research: Court of Stars, Mythic
			q(89529),	-- Infinite Research: Court of Stars, Normal
			q(89558),	-- Infinite Research: Darkheart Thicket, Heroic
			q(89520),	-- Infinite Research: Darkheart Thicket, Mythic
			q(89557),	-- Infinite Research: Darkheart Thicket, Normal
			q(89469),	-- Infinite Research: Dungeoneers Wanted, Heroic
			q(89468),	-- Infinite Research: Dungeoneers Wanted, Normal
			q(89527),	-- Infinite Research: Eye of Azshara, Heroic
			q(89525),	-- Infinite Research: Eye of Azshara, Mythic
			q(89526),	-- Infinite Research: Eye of Azshara, Normal
			q(90110),	-- Infinite Research: Gather Timewarped Samples
			q(90098),	-- Infinite Research: Greater Invasion Points
			q(89551),	-- Infinite Research: Halls of Valor, Heroic
			q(89552),	-- Infinite Research: Halls of Valor, Mythic
			q(89550),	-- Infinite Research: Halls of Valor, Normal
			q(91440),	-- Infinite Research: Hero of the Broken Isles
			q(91441),	-- Infinite Research: Heroic Greater Invasion Points
			q(91439),	-- Infinite Research: Heroic Invasion Points
			q(91448),	-- Infinite Research: Heroic Terrors of the Broken Isles
			q(91438),	-- Infinite Research: Heroic Worldly Deeds
			q(90097),	-- Infinite Research: Invasion Points
			q(89554),	-- Infinite Research: Lower Return to Karazhan, Heroic
			q(89555),	-- Infinite Research: Lower Return to Karazhan, Mythic
			q(89553),	-- Infinite Research: Lower Return to Karazhan, Normal
			q(89546),	-- Infinite Research: Maw of Souls, Heroic
			q(89547),	-- Infinite Research: Maw of Souls, Mythic
			q(89524),	-- Infinite Research: Maw of Souls, Normal
			q(89549),	-- Infinite Research: Neltharion's Lair, Heroic
			q(89532),	-- Infinite Research: Neltharion's Lair, Mythic
			q(89548),	-- Infinite Research: Neltharion's Lair, Normal
			q(89599),	-- Infinite Research: Nighthold, Heroic
			q(89598),	-- Infinite Research: Nighthold, Normal
			q(89465),	-- Infinite Research: No Task Too Small
			q(89533),	-- Infinite Research: Seat of the Triumvirate, Heroic
			q(89544),	-- Infinite Research: Seat of the Triumvirate, Mythic
			q(89545),	-- Infinite Research: Seat of the Triumvirate, Normal
			q(90114),	-- Infinite Research: Self Improvement, Advanced
			q(90113),	-- Infinite Research: Self Improvement, Basic
			q(90101),	-- Infinite Research: Terrors of the Broken Isles
			q(89543),	-- Infinite Research: The Arcway, Heroic
			q(89535),	-- Infinite Research: The Arcway, Mythic
			q(89534),	-- Infinite Research: The Arcway, Normal
			q(89679),	-- Infinite Research: The Emerald Nightmare, Heroic
			q(89680),	-- Infinite Research: The Emerald Nightmare, Mythic
			q(89677),	-- Infinite Research: The Emerald Nightmare, Normal
			q(89600),	-- Infinite Research: The Nighthold, Mythic
			q(89678),	-- Infinite Research: Time to Raid, Arcing Aqueducts
			q(89594),	-- Infinite Research: Time to Raid, Betrayer's Rise
			q(89606),	-- Infinite Research: Time to Raid, Chamber of the Avatar
			q(89644),	-- Infinite Research: Time to Raid, Darkbough
			q(89607),	-- Infinite Research: Time to Raid, Deceiver's Fall
			q(89467),	-- Infinite Research: Time to Raid, Forbidden Descent
			q(89590),	-- Infinite Research: Time to Raid, Hope's End
			q(89466),	-- Infinite Research: Time to Raid, Light's Breach
			q(89593),	-- Infinite Research: Time to Raid, Nightspire
			q(89676),	-- Infinite Research: Time to Raid, Rift of Aln
			q(89683),	-- Infinite Research: Time to Raid, Royal Athenaeum
			q(89591),	-- Infinite Research: Time to Raid, Seat of the Pantheon
			q(89604),	-- Infinite Research: Time to Raid, The Gates of Hell
			q(89665),	-- Infinite Research: Time to Raid, Tormented Guardians
			q(89681),	-- Infinite Research: Time to Raid, Trial of Valor
			q(89605),	-- Infinite Research: Time to Raid, Wailing Halls
			q(89540),	-- Infinite Research: Timeworn Keystone Dungeon
			q(89602),	-- Infinite Research: Tomb of Sargeras, Heroic
			q(89603),	-- Infinite Research: Tomb of Sargeras, Mythic
			q(89622),	-- Infinite Research: Tomb of Sargeras, Normal
			q(89596),	-- Infinite Research: Trial of Valor, Heroic
			q(89597),	-- Infinite Research: Trial of Valor, Mythic
			q(89682),	-- Infinite Research: Trial of Valor, Normal
			q(89536),	-- Infinite Research: Upper Return to Karazhan, Heroic
			q(89541),	-- Infinite Research: Upper Return to Karazhan, Mythic
			q(89542),	-- Infinite Research: Upper Return to Karazhan, Normal
			q(89537),	-- Infinite Research: Vault of the Wardens, Heroic
			q(89539),	-- Infinite Research: Vault of the Wardens, Mythic
			q(89538),	-- Infinite Research: Vault of the Wardens, Normal
			q(90096),	-- Infinite Research: Worldly Deeds
		})),
		n(REWARDS, {
			-- Exo note: Moved out of the quests so that the items do not show "... and 100 other sources"
			i(251821),	-- Cache of Infinite Power
			i(239224),	-- Cache of Infinite Treasure
			i(254579),	-- Epoch Resonance
			i(249400, {	-- Stack of Chronoqueries
				["sourceQuest"] = 91846,	-- Infinite Research Promotion: Principal Chronoquery Investigator
			}),
		}),
	}),
	n(QUESTS, {
		n(REWARDS, {
			n(ARMOR, {
				filter(CLOAKS, {
					i(240260),	-- Cape of Devouring Night
					i(241223),	-- Cloak of Devouring Night
					i(240604),	-- Lunarblight Leather Cloak
					i(240602),	-- Lunarblight Leather Shroud
					i(240603),	-- Lunarblight Leather Wrap
					i(240259),	-- Shawl of Devouring Night
					i(240255),	-- Shroud of Devouring Night
				}),
				filter(CLOTH, {
					i(240354),	-- Amice of Night Eternal
					i(240351),	-- Belt of Night Eternal
					i(240349),	-- Boots of Night Eternal
					i(240348),	-- Cuffs of Night Eternal
					i(240347),	-- Gloves of Night Eternal
					i(240355),	-- Guise of Night Eternal
					i(240350),	-- Legwraps of Night Eternal
					i(240352),	-- Robe of Night Eternal
					i(240353),	-- Vestments of Night Eternal
					}),
				filter(LEATHER, {
					i(240775),	-- Lunarblight Leather Cowl
					i(240781),	-- Lunarblight Leather Cuffs
					i(240782),	-- Lunarblight Leather Grips
					i(240779),	-- Lunarblight Leather Legwraps
					i(240776),	-- Lunarblight Leather Spaulders
					i(240778),	-- Lunarblight Leather Strap
					i(240780),	-- Lunarblight Leather Striders
					i(240777),	-- Lunarblight Leather Tunic
					}),
				filter(MAIL, {
					i(240306),	-- Faceguard of Devouring Night
					i(240299),	-- Handguards of Devouring Night
					i(240304),	-- Haubergeon of Devouring Night
					i(240302),	-- Leggings of Devouring Night
					i(240305),	-- Spaulders of Devouring Night
					i(240301),	-- Stompers of Devouring Night
					i(240303),	-- Waistband of Devouring Night
					i(240300),	-- Wristguards of Devouring Night
					}),
				filter(PLATE, {
					i(240544),	-- Xorothian Battleplate
					i(240539),	-- Xorothian Gauntlets
					i(240543),	-- Xorothian Greatbelt
					i(240546),	-- Xorothian Helmet
					i(240541),	-- Xorothian Jackboots
					i(240542),	-- Xorothian Legguards
					i(240545),	-- Xorothian Shoulderguards
					i(240540),	-- Xorothian Wristguards
				}),
			}),
			i(256763),	-- Cache from the Infinite's Armory
			i(245553),	-- Heroic Cache of Infinite Treasure
		}),
		q(89404, {	-- Time Crisis
			["qg"] = 241140,	-- Moratari
			["coord"] = { 72.4, 46.0, LEGION_DALARAN },
		}),
		q(89405, {	-- Mean Streets of Dalaran
			["sourceQuest"] =  89404,	-- Time Crisis
			["qg"] = 241740,	-- Archmage Khadgar <Mirror Image>
			["coord"] = { 67.6, 42.5, LEGION_DALARAN },
		}),
		q(89406, {	-- Seal and Protect
			["sourceQuest"] = 89405,	-- Mean Streets of Dalaran
			["qg"] = 241743,	-- Archmage Khadgar
			["coord"] = { 49.3, 47.6, LEGION_DALARAN },
		}),
		q(89407, {	-- Thrift
			["sourceQuest"] = 89406,	-- Seal and Protect
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
			["groups"] = {
				o(527833, {	-- Archeology Chest
					["coord"] = { 40.9, 24.0, LEGION_DALARAN },
					["groups"] = { i(243607) },	-- Dusty Stone Tablet (QI!)
				}),
				o(529397, {	-- Curio Lockbox
					["coord"] = { 38.8, 39.9, LEGION_DALARAN },
					["groups"] = { i(243601) },	-- Curious Curio (QI!)
				}),
				o(529396, {	-- Weapon Crate
					["coord"] = { 46.1, 25.4, LEGION_DALARAN },
					["groups"] = { i(243604) },	-- Bent and Battered Blade (QI!)
				}),
			},
		}),
		q(89408, {	-- Threadbare
			["sourceQuest"] = 89406,	-- Seal and Protect
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89409, {	-- Infinite Bronze
			["sourceQuests"] = {
				89407,	-- Thrift
				89408,	-- Threadbare
			},
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(90659, {	-- Something Borrowed
			["description"] = "You can get one Artifact Weapon of your choice (based on your specialization). Others can be obtained through Order Hall Campaign.",
			["sourceQuest"] = 89409,	-- Infinite Bronze
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
			["groups"] = sharedData({
				["ItemAppearanceModifierID"] = 9,
			}, {
				cl(DEATHKNIGHT, {
					i(242563),	-- Apocalypse
					i(242559),	-- Blades of the Fallen Prince [Main hand]
					i(242560),	-- Blades of the Fallen Prince [Off hand]
					i(242562, {["ItemAppearanceModifierID"] = 0}),	-- Maw of the Damned
				}),
				cl(DEMONHUNTER, {
					i(242577),	-- Aldrachi Warblades [Main hand]
					i(242576),	-- Aldrachi Warblades [Off hand]
					i(242556),	-- Twinblades of the Deceiver [Main hand]
					i(242557, {["collectible"] = false }),	-- Twinblades of the Deceiver [Off hand]
				}),
				cl(DRUID, {
					i(242569),	-- Claws of Ursoc [Main hand]
					i(242570, {["collectible"] = false }),	-- Claws of Ursoc [Off hand]
					i(242580),	-- Fangs of Ashamane [Main hand]
					i(242579, {["collectible"] = false }),	-- Fangs of Ashamane [Off hand]
					i(242561),	-- G'Hanir, the Mother Tree
					i(242578),	-- Scythe of Elune
				}),
				cl(HUNTER, {
					i(242566),	-- Talonclaw
					i(242574),	-- Thas'dorah, Legacy of the Windrunners
					i(242581),	-- Titanstrike
				}),
				cl(MAGE, {
					i(242558),	-- Aluneth
					i(242582),	-- Ebonchill
					i(242568),	-- Felo'melorn
					i(242603),	-- Heart of the Phoenix
				}),
				cl(MONK, {
					i(242596),	-- Fu Zan, the Wanderer's Companion
					i(242595),	-- Sheilun, Staff of the Mists
					i(242597),	-- Fists of the Heavens [Main hand]
					i(242601, {["collectible"] = false }),	-- Fists of the Heavens [Off hand]
				}),
				cl(PALADIN, {
					i(242555),	-- Ashbringer
					i(242571),	-- The Silver Hand
					i(242583),	-- Truthguard
					i(242584),	-- Oathseeker
				}),
				cl(PRIEST, {
					i(242585),	-- Light's Wrath
					i(242573),	-- T'uure, Beacon of the Naaru
					i(242575),	-- Xal'atath, Blade of the Black Empire
					i(242602),	-- Secrets of the Void
				}),
				cl(ROGUE, {
					i(242564),	-- Fangs of the Devourer [Main hand]
					i(242565, {["collectible"] = false }),	-- Fangs of the Devourer [Off hand]
					i(242588),	-- The Dreadblades [Main hand]
					i(242604, {["collectible"] = false }),	-- The Dreadblades [Off hand]
					i(242587),	-- The Kingslayers [Main hand]
					i(242586, {["collectible"] = false }),	-- The Kingslayers [Off hand]
				}),
				cl(SHAMAN, {
					i(242567),	-- Doomhammer
					i(242589),	-- Fury of the Stonemother
					i(242591),	-- Sharas'dal, Scepter of Tides
					i(242592),	-- Shield of the Sea Queen
					i(242593),	-- The Fist of Ra-den
					i(242594, {["ItemAppearanceModifierID"] = 0}),	-- The Highkeeper's Ward
				}),
				cl(WARLOCK, {
					i(242599),	-- Ulthalesh, the Deadwind Harvester
					i(242598),	-- Scepter of Sargeras
					i(242600, {["ItemAppearanceModifierID"] = 0}),	-- Skull of the Man'ari
					i(242605),	-- Spine of Thal'kiel
				}),
				cl(WARRIOR, {
					i(237749),	-- Scale of the Earth-Warder
					i(237748),	-- Scaleshard
					i(236772, {["ItemAppearanceModifierID"] = 0}),	-- Strom'kar, the Warbreaker
					i(237746),	-- Warswords of the Valarjar [Main hand]
					i(237747, {["collectible"] = false }),	-- Warswords of the Valarjar [Off hand]
				}),
			}),
		}),
		q(90901, {	-- As A Matter of Artifact
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89412, {	-- Get Plenty of Exorcise
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89411, {	-- Scavenger Hunting
			["sourceQuest"] = 90659,	-- Something Borrowed
			["qg"] = 241745,	-- Erus
			["coord"] = { 42.3, 27.2, LEGION_DALARAN },
			["groups"] = { i(241211) },	-- Legion Armor Scraps (QI!)
		}),
		q(89413, {	-- Obliterate, Then Iterate
			["sourceQuest"] = 89411,	-- Scavenger Hunting
			["qg"] = 241745,	-- Erus
			["coord"] = { 42.3, 27.2, LEGION_DALARAN },
			["groups"] = { i(251901) },	-- Legion Armor Scraps (PQI!)
		}),
		q(89414, {	-- Not A Memento Too Soon
			["sourceQuest"] = 89413,	-- Obliterate, Then Iterate
			["qg"] = 241744,	-- Momentus
			["coord"] = { 42.8, 27.8, LEGION_DALARAN },
		}),
		q(89415, {	-- Storm the Citadel
			["sourceQuest"] = 89414,	-- Not A Memento Too Soon
			["qg"] = 241743,	-- Archmage Khadgar
			["coord"] = { 49.3, 47.6, LEGION_DALARAN },
		}),
		q(89416, {	-- Eternal Gratitude
			["sourceQuest"] = 89415,	-- Storm the Citadel
			["qg"] = 241140,	-- Moratari
			["coords"] = {
				{ 51.2, 48.2, LEGION_DALARAN },
				{ 72.4, 46.0, LEGION_DALARAN },
			},
		}),
		------ Stay awhile and listen ------
		-- hqt(???, {	-- Stay awhile and listen: Eternus
		-- 	["name"] = "Stay awhile and listen: Eternus",
		-- 	["description"] = "Dialogue becomes available after you accept 'Eternal Gratitude' (89416).",
		-- 	["sourceQuest"] = 89415,	-- Storm the Citadel
		-- 	["qg"] = 241748,	-- Eternus
		-- 	["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		-- }),
		--
		q(89417, {	-- Infinite Meetings
			["sourceQuest"] = 89416,	-- Eternal Gratitude
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["groups"] = { i(254320) },	-- Elixir of Remembered Sight
		}),
		q(91955, {	-- Just Between Us
			["sourceQuest"] = 89416,	-- Eternal Gratitude
			["qg"] = 241142,	-- Momentus
			["coord"] = { 45.8, 68.0, BROKEN_ISLES },
			["groups"] = {
				i(242617, {	-- Curious Simulacrum (QI!)
					i(247808),	-- Bronze Simulacrum (QS!)
				}),
				i(248141, {	-- Curious Simulacrum (QI!)
					i(248140),	-- Bronze Simulacrum (QS!)
				}),
				-- Exo Note: Simulacrum is obtained during the regular Order Hall quest chain for the Artifact Weapon that you have already selected and obtained during the quest 'Something Borrowed'.
				-- eg. If a Paladin, takes Ashbringer from 'Something Borrowed', instead of Ashbringer he will receive a Curious Simulacrum during the regular Class Quest for the weapon.
			},
		}),
		q(92688, {	-- Bronze Simulacrum
			["provider"] = { "i", 247808 },	-- Bronze Simulacrum (QS!)
		}),
		q(89418, {	-- A Fixed Point in Time
			["sourceQuest"] = 89417,	-- Infinite Meetings
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(90995, {	-- The Future of The Fel Hammer
			["sourceQuest"] = 89418,	-- A Fixed Point in Time
			["qg"] = 243948,	-- Moratari
			["coord"] = { 72.1, 41.7, LEGION_DALARAN },
			["classes"] = { DEMONHUNTER },
		}),
		q(90754, {	-- Skyriding
			["sourceQuest"] = 89418,	-- A Fixed Point in Time
			["qg"] = 243948,	-- Moratari
			["coord"] = { 72.1, 41.7, LEGION_DALARAN },
		}),
		q(80013, {	-- How to Glide with Your Dragon
			["sourceQuest"] = 90754,	-- Skyriding
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80015, {	-- How to Dive with Your Dragon
			["sourceQuest"] = 80013,	-- How to Glide with Your Dragon
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80016, {	-- The Need For Higher Velocities
			["sourceQuest"] = 80015,	-- How to Dive with Your Dragon
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80017, {	-- The Need For Higher Altitudes
			["sourceQuest"] = 80016,	-- The Need For Higher Velocities
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
			["groups"] = { i(216712) },	-- Bronze Timepiece (PQI!)
		}),
		q(80018, {	-- Fashionable Flying
			["sourceQuest"] = 80017,	-- The Need For Higher Altitudes
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
		}),
		q(90755, {	-- Time Flies
			["sourceQuest"] = 80018,	-- Fashionable Flying
			["qg"] = 218469,	-- Lord Andestrasz
			["coord"] = { 65.3, 37.2, THE_JADE_FOREST },
		}),
		q(91437, {	-- Call for Participants
			["description"] = "Quest pops-up into your log when you visit Bazaar after completing 'Time Flies'.",
			["sourceQuest"] = 90755,	-- Time Flies
			["repeatable"] = true,
		}),
		q(91639, {	-- Embrace Your Own Legend
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(91721, {	-- Surpass Your Own Legend
			["sourceQuest"] = 91639,	-- Embrace Your Own Legend
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(92430, {	-- Embracing the Infinite Chaos
			["description"] = "Quest pops-up when you hit Level 25.",
			["lockCriteria"] = { 1, "questID", 91061 },	-- Infinite Chaos
			["isBreadcrumb"] = true,
			["lvl"] = 25,
		}),
		q(91061, {	-- Infinite Chaos
			["description"] = "Quest becomes available after you enable 'Heroic World Tier'.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["groups"] = { i(246808) },	-- Experiment Instructions (PQI!)
		}),
		q(90892, {	-- Clearing the Skies: A Fel of a Time
			["description"] = "Quest pops-up when you fly through first 'Mote of Bronze'.",
		}),
		q(92563, {	-- Awoken by Accessory
			["description"] = "Quest pops-up when you obtain and equip your first jewelry (Trinket, Ring, Necklace).",
		}),
		q(91613, {	-- Infinite Research Promotion: Timely Assistant
			["description"] = "Quest becomes available after you complete 5 'Infinite Research' quests.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
		}),
		q(92855, {	-- Make Haste, Not Waste
			["description"] = "Grants a random piece of jewelry.",
			["qg"] = 241189,	-- Lidamorrutu
			["coord"] = { 45.9, 68.0, BROKEN_ISLES },
			["isDaily"] = true,
		}),
		q(93112, {	-- Infinite Research: Special Assignment, Fel Skies
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 20,
		}),
		q(91844, {	-- Infinite Research: Honorary Chronographer
			["description"] = "Quest becomes available after you complete 20 'Infinite Research' quests.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 25,
		}),
		q(93113, {	-- Infinite Research: Special Assignment, Rare Dare
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 30,
		}),
		q(93055, {	-- Extracurriculars
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 30,
		}),
		q(91631, {	-- Epoch Progress
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 40,
		}),
		q(93114, {	-- Infinite Research: Special Assignment, Sampling the World
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 40,
		}),
		q(93116, {	-- Infinite Research: Special Assignment, Here to Slay
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 50,
		}),
		q(93056, {	-- A Lesson in Alacrity
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 60,
		}),
		q(93117, {	-- Infinite Research: Special Assignment, Boss Rush
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 60,
		}),
		q(93118, {	-- Infinite Research: Special Assignment, Power Overwhelming
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 70,
		}),
		q(93120, {	-- Infinite Research: Special Assignment, A World to Explore
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91632, {	-- The End of an Epoch Journey
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91845, {	-- Infinite Research Promotion: Senior Executive Chronographer
			["description"] = "Quest becomes available after you complete 50 'Infinite Research' quests.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91722, {	-- Shape a New Legend
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91846, {	-- Infinite Research Promotion: Principal Chronoquery Investigator
			["description"] = "Quest becomes available after you complete 150 'Infinite Research' quests.",
			["qg"] = 241748,	-- Eternus
			["coord"] = { 45.7, 68.5, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		-- Infinite Epilogues
		q(91522, {	-- Order from Chaos
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91728, {	-- Suramar Liberated
			["sourceQuest"] = 91522,	-- Order from Chaos
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91729, {	-- Armies Gathered
			["sourceQuest"] = 91728,	-- Suramar Liberated
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 80,
		}),
		q(91730, {	-- Azeroth Saved
			["sourceQuest"] = 91729,	-- Armies Gathered
			["qg"] = 243853,	-- Moratari
			["coord"] = { 45.6, 67.7, BROKEN_ISLES },
			["lvl"] = 80,
		}),
	}),
})))
