---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
			["lvl"] = { 50 },
		},{
			q(52798, {	-- A Few More Charges
				["races"] = HORDE_ONLY,
				["groups"] = {
					h(ach(13041)),	-- Hungry, Hungry Ranishu
				},
			}),
			q(49013),	-- A Jolt of Power
			q(51238),	-- Abandoned in the Burrows
			q(51105),	-- Ak'tar
			q(53294, {	-- Akunda's Bite Cluster
				["requireSkill"] = HERBALISM,
			}),
			q(51095),	-- Ashmane
			q(54245, {	-- Azerite Altercation (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(164767),	-- Unrefined Azerite Shard (QI!)
				},
			}),
			q(54246, {	-- Azerite Altercation (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(164767),	-- Unrefined Azerite Shard (QI!)
				},
			}),
			q(52849),	-- Azerite Empowerment
			q(51185),	-- Azerite Empowerment
			q(51422),	-- Azerite Madness
			q(50975),	-- Azerite Mining
			q(52875),	-- Azerite Mining
			q(54644),	-- Azerite Transport (Faction Assault WQ)
			q(51428),	-- Azerite Wounds
			q(51096),	-- Azer'tor
			q(51117),	-- Bajiani the Stick
			q(54272, {	-- Battle Bots (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","objectID",
					311903,	-- Loose Parts (A)
				}},
				["groups"] = {
					i(165852),	-- Alkalescent Salt (QI!)
				},
			}),
			q(54273, {	-- Battle Bots (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["sym"] = {{"select","objectID",
					311902,	-- Loose Parts (H)
				}},
				["groups"] = {
					i(165852),	-- Alkalescent Salt (QI!)
				},
			}),
			q(51641),	-- Beachhead
			q(54609, {	-- Beastlord Drakara (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(54638, {	-- Beat Up the Drums (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51210),	-- Blast Back the Siege
			q(51097),	-- Bloated Krolusk
			q(51118),	-- Bloodwing Bonepicker
			q(53298, {	-- Blooming Star Moss
				["requireSkill"] = HERBALISM,
			}),
			q(54254, {	-- Bombs Away (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(54253, {	-- Bombs Away (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(50848, {	-- Brgl-Lrgl the Basher
				n(134643, {	-- Brgl-Lrgl the Basher
					["questID"] = 50663,
					["description"] = "This rare is only up when its associated world quest is active.",
					["coord"] = { 29.78, 46.47, VOLDUN },
					["repeatable"] = true,
					["groups"] = {
						i(161044),	-- Tideflat Brute's Greatbelt
					},
				}),
			}),
			q(51155),	-- Brgl-Lrgl the Basher
			q(51791, {	-- Bubbling Totem Testing
				["races"] = HORDE_ONLY,
			}),
			q(51793, {	-- Bubbling Totem Testing
				["races"] = ALLIANCE_ONLY,
			}),
			q(49345, {	-- Buried Treasure
				["groups"] = {
					i(159828),	-- Ancient Coin (QI!)
				},
			}),
			q(51250),	-- Buzz Off!
			q(55343, {	-- Calligraphy
				["races"] = HORDE_ONLY,
			}),
			q(53325, {	-- Coarse Storm Silver
				["requireSkill"] = MINING,
				["groups"] = {
					i(163626),	-- Coarse Storm Silver (QI!)
				},
			}),
			q(51098),	-- Commodore Calhoun
			q(51562, {	-- Damaged Goods
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160923),	-- Torch (QI!)
				},
			}),
			q(51559, {	-- Damaged Goods
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160923),	-- Torch (QI!)
				},
			}),
			q(54189, {	-- Desert Crawl (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(311182, {	-- Crawler Mine Parts
						i(164742),	-- Crawler Mine Parts (QI!)
					}),
				},
			}),
			petbattle(q(52878, {	-- Desert Survivors
				["provider"] = { "n", 142054 },	-- Kusa
			})),
			q(51780, {	-- Dinner for Dolly and Dot
				["groups"] = {
					i(155680),	-- Buzzard Meat (QI!)
					i(155679),	-- Speckled Egg (QI!)
				},
			}),
			q(51121),	-- Enraged Krolusk
			q(51792, {	-- Erupting Totem Testing
				["races"] = HORDE_ONLY,
			}),
			q(51794, {	-- Erupting Totem Testing
				["races"] = ALLIANCE_ONLY,
			}),
			q(54643),	-- Evezon the Eternal (Faction Assault WQ)
			q(51900),	-- Faithless Follow-Through
			q(51924),	-- Faithless Follow-Through
			q(51156, {	-- Fangcaller Xorreth
				n(136323, {	-- Fangcaller Xorreth
					["questID"] = 51065,
					["description"] = "This rare is only up when its associated world quest is active.",
					["coord"] = { 53.60, 35.01, VOLDUN },
					["groups"] = {
						i(162612),	-- Cobra Priest's Headdress
					},
				}),
			}),
			q(51285),	-- Feeding Frenzy
			q(51565),	-- Feeding Frenzy
			q(51198, {	-- Fertilizer Duty
				["races"] = HORDE_ONLY,
			}),
			q(51564, {	-- Fertilizer Duty
				["races"] = ALLIANCE_ONLY,
			}),
			q(54649),	-- Flames of War (Faction Assault WQ)
			q(53296, {	-- Flourishing Sea Stalks
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(163588),	-- Flourishing Sea Stalk (QI!)
				},
			}),
			q(54645, {	-- Fury of the Earth (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51157, {	-- Golanar
				n(129027, {	-- Golanar
					["questID"] = 50362,
					["description"] = "This rare is only up when its associated world quest is active.",
					["coords"] = {
						{ 57.6, 6.40, VOLDUN },
						{ 59.6, 8.80, VOLDUN },
					},
					["groups"] = {
						i(160972),	-- Herculean Golden Sword
					},
				}),
			}),
			q(54646, {	-- Grand Marshal Fury (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51099),	-- Gut-Gut the Glutton
			q(51108, {	-- Hivemother Kraxi
				["provider"] = { "n", 130443 },	-- Hivemother Kraxi
			}),
			q(51228, {	-- Instant Meat, Ready to Eat
				["races"] = HORDE_ONLY,
				["groups"] = {
					o_repeated({	-- Bonebeak Scavenger Meat
						o(288189),	-- Bonebeak Scavenger Meat
						o(288190),	-- Bonebeak Scavenger Meat
						i(159794),	-- Broiled Buzzard Meat (QI!)
					}),
					o_repeated({	-- Brineclaw Meat
						o(288191),	-- Brineclaw Meat
						o(288192),	-- Brineclaw Meat
						i(159795),	-- Steaming Crab Meat (QI!)
					}),
					i(159796),	-- Meatification Potion (QI!)
				},
			}),
			q(51239),	-- Instructions Not Included
			q(51180, {	-- Instructions Not Included
				["races"] = HORDE_ONLY,	-- very slim chance this isn't Horde only but given that there are 8 versions of the quest with 4 marked Alliance only it's more likely than not (could still use verification though)
			}),
			q(51931),	-- Instructions Not Included
			q(51174),	-- Instructions Not Included
			q(51181),	-- Instructions Not Included
			q(51925),	-- Instructions Not Included
			q(51933),	-- Instructions Not Included
			q(51928),	-- Instructions Not Included
			q(53885, {	-- Isolated Victory (Faction Assault WQ)
				["provider"] = { "n", 135804 },	-- Hoarder Jena <Voldunai Emissary>
				["races"] = HORDE_ONLY,
			}),
			q(54574, {	-- Jin'tago (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51100),	-- Jumbo Sandsnapper
			q(51125),	-- Jungleweb Hunter
			q(51102),	-- Kamid the Trapper
			petbattle(q(52850, {	-- Keeyo's Champions of Vol'dun
				["provider"] = { "n", 141879 },	-- Keeyo
			})),
			q(51429),	-- King Clickyclack
			q(51252),	-- Kiro's Desert Flower
			q(51635),	-- Make Loh Go
			q(54134, {	-- Many Fine Heroes (Faction Assault WQ)
				["provider"] = { "n", 135446 },	-- Vindicator Jaelaana <7th Legion Emissary>
				["races"] = ALLIANCE_ONLY,
			}),
			q(50851, {	-- Mor'fani the Exile
				n(134694, {	-- Mor'fani the Exile
					["questID"] = 50666,
					["description"] = "This rare is only up when its associated world quest is active.",
					["coord"] = { 37.41, 88.71, VOLDUN },
					["repeatable"] = true,
					["groups"] = {
						i(162616),	-- Master Dinomancer's Tunic
					},
				}),
			}),
			q(51153),	-- Mor'fani the Exile
			q(54287, {	-- Naga Attack!
				i(165605),	-- Azsharan Medallion
			}),
			q(51103),	-- Nez'ara
			q(51834),	-- No Negotiations
			q(54170, {	-- Ormin Rocketbop (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(53300, {	-- Overgrown Anchor Weed
				["requireSkill"] = HERBALISM,
				["groups"] = { i(163601) },	-- Overgrown Anchor Weed (QI!)
			}),
			q(51850, {	-- Preserve the Oasis
				["races"] = HORDE_ONLY,
			}),
			q(51853, {	-- Preserve the Oasis
				["races"] = ALLIANCE_ONLY,
			}),
			q(47704),	-- Ranishu Feeding Frenzy
			q(51760, {	-- Ranishu Feeding Frenzy
				["races"] = ALLIANCE_ONLY,
			}),
			q(51124),	-- Relic Hunter Hazaak
			q(51330, {	-- Resilient Seeds
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159909),	-- Resilient Seed (QI!)
				},
			}),
			q(54127, {	-- Rocket Hop (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53324, {	-- Rough Monelite
				["requireSkill"] = MINING,
				["groups"] = {
					i(163625),	-- Rough Monelite (QI!)
				},
			}),
			q(51804),	-- Running Interference
			q(54636, {	-- Sandbinder Sodir (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51173, {	-- Sandfishing
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159767),	-- Sandworm Fang (QI!)
					-- Drops from Quest Mob required for achievement
					i(163464),	-- Cobalt Sandworm Scale
					i(163465),	-- Silver Sandworm Scale
					i(163467),	-- Emerald Sandworm Scale
					i(163468),	-- Ruby Sandworm Scale
					i(163469),	-- Onyx Sandworm Scale
				},
			}),
			q(51107),	-- Scaleclaw Broodmother
			q(51122),	-- Scorpox
			q(54188, {	-- Scrambled Bots (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o(311822, {	-- Bot Scrambler
						["coord"] = { 39.5, 53.7, VOLDUN },
						["groups"] = { i(165841) },	-- Bot Scrambler (QI!)
					}),
				},
			}),
			q(51629),	-- Shell Game
			q(54555, {	-- Siege O' Matic 9000 (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51123),	-- Sirokar
			q(51104),	-- Skycaller Teskris
			q(51116),	-- Skycarver Krakit
			q(53326, {	-- Smooth Platinum
				["requireSkill"] = MINING,
				["groups"] = {
					i(163627),	-- Smooth Platinum (QI!)
				},
			}),
			petbattle(q(52856, {	-- Snakes on a Terrace
				["provider"] = { "n", 141945 },	-- Sizzik
			})),
			q(51106),	-- Songstress Nahjeen
			q(51836, {	-- Sourching Resources
				["groups"] = {
					i(160755),	-- Azerite Sack (QI!)
				},
			}),
			q(51558, {	-- Spider Scorching
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160870),	-- Torch (QI!)
				},
			}),
			q(51561, {	-- Spider Scorching
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160870),	-- Torch (QI!)
				},
			}),
			q(51120),	-- Stef "Marrow" Quin
			q(54786, {	-- Stop the Shipments (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(52386, {	-- Supplies Needed: Redtail Loach
				["races"] = HORDE_ONLY,
			}),
			q(51831, {	-- Swift Strike
				["races"] = ALLIANCE_ONLY,
			}),
			q(52059, {	-- Thar She Sinks
				["races"] = ALLIANCE_ONLY,
			}),
			q(51997, {	-- Thar She Sinks
				["races"] = HORDE_ONLY,
			}),
			q(55303),	-- The Cycle of Life
			q(54154, {	-- The Hills Have Spies (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(315933, {	-- Gallywix's Getaway Pack
						["coord"] = { 37.0, 52.1, VOLDUN },
						["groups"] = { i(165942) },	-- Gallywix's Getaway Pack (QI!)
					}),
					i(165656),	-- Spy Gear (QI!)
				},
			}),
			q(51963, {	-- The Wrath of Vorrik
				["races"] = ALLIANCE_ONLY,
			}),
			q(51957),	-- The Wrath of Vorrik
			q(51119),	-- Vathikur
			q(51983),	-- Vorrik's Vengeance
			q(51995, {	-- Vorrik's Vengeance
				["races"] = ALLIANCE_ONLY,
			}),
			q(54415, {	-- Vulpera for a Day (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					h(ach(13437)),	-- Scavenge like a Vulpera
				},
			}),
			q(51316),	-- Walking in a Spiderweb
			q(51223, {	-- Walking on Broken Glass
				["groups"] = {
					i(159790),	-- Sea Glass (QI!)
				},
			}),
			q(51112),	-- Warbringer Hozzik
			q(51113),	-- Warlord Zothix
			q(51114),	-- Warmother Captive
			q(54014, {	-- Wet Work: Blood in the Sand (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			petbattle(q(52864, {	-- What Do You Mean, Mind Controlling Plants?
				["provider"] = { "n", 141969 },	-- Spineleaf
			})),
			q(51315, {	-- Wild Flutterbies
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162585),	-- Flutterby Collector (QI!)
				},
			}),
			q(51322, {	-- Wings and Stingers
				["groups"] = {
					i(159925),	-- Buzzard Wing (QI!)
					i(159924),	-- Oasis Stinger (QI!)
				},
			}),
			q(54554, {	-- Wolfleader Skraug (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51002, {	-- Work Order: Akunda's Bite
				["requireSkill"] = HERBALISM,
				["races"] = HORDE_ONLY,
			}),
			q(52427, {	-- Work Order: Battle Flag: Rallying Swiftness
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162445),	-- Pattern: Battle Flag: Rallying Swiftness [Rank 3] (RECIPE!)
				},
			}),
			q(51008, {	-- Work Order: Blood-Stained Bone
				["requireSkill"] = SKINNING,
				["races"] = HORDE_ONLY,
			}),
			q(52419, {	-- Work Order: Coarse Leather Barding
				["requireSkill"] = LEATHERWORKING,
				["races"] = HORDE_ONLY,
			}),
			q(52397, {	-- Work Order: Contract: Voldunai
				["requireSkill"] = INSCRIPTION,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162370),	-- Technique: Contract: Voldunai [Rank 3] (RECIPE!)
				},
			}),
			q(52362, {	-- Work Order: Enchant Weapon - Quick Navigation
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162314),	-- Formula: Enchant Weapon - Quick Navigation [Rank 3] (RECIPE!)
				},
			}),
			q(52371, {	-- Work Order: F.R.I.E.D.
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162331),	-- Schematic: F.R.I.E.D. [Rank 3] (RECIPE!)
				},
			}),
			q(52413, {	-- Work Order: Golden Beryl
				["requireSkill"] = JEWELCRAFTING,
				["races"] = HORDE_ONLY,
			}),
			q(52408, {	-- Work Order: Kyanite
				["requireSkill"] = JEWELCRAFTING,
				["races"] = HORDE_ONLY,
			}),
			q(52338, {	-- Work Order: Potion of Concealment
				["requireSkill"] = ALCHEMY,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162260),	-- Recipe: Potion of Concealment [Rank 3] (RECIPE!)
				},
			}),
			q(52412, {	-- Work Order: Rubelite
				["requireSkill"] = JEWELCRAFTING,
				["races"] = HORDE_ONLY,
			}),
			q(51007, {	-- Work Order: Storm Silver Ore
				["requireSkill"] = MINING,
				["races"] = HORDE_ONLY,
			}),
			q(51011, {	-- Work Order: Tempest Hide
				["requireSkill"] = SKINNING,
				["races"] = HORDE_ONLY,
			}),
			q(52370, {	-- Work Order: Thermo-Accelerated Plague Spreader
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162736),	-- Schematic: Thermo-Accelerated Plague Spreader [Rank 3] (RECIPE!)
				},
			}),
			q(51003, {	-- Work Order: Winter's Kiss
				["requireSkill"] = HERBALISM,
				["races"] = HORDE_ONLY,
			}),
			q(51783, {	-- Zem'lan Rescue
				["races"] = ALLIANCE_ONLY,
			}),
			q(51763, {	-- Zem'lan Rescue
				["races"] = HORDE_ONLY,
			}),
			q(51115),	-- Zunashi the Exile
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(VOLDUN, {
			n(WORLD_QUESTS, {
				q(54299),	-- triggered when completing #54272, "Battle Bots" WQ
			}),
		}),
	}),
})));
