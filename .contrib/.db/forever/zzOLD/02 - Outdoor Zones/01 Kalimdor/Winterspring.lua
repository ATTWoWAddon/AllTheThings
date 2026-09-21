---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

ExportDB.OnTooltipDB.ForEverlook = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Kill Pirates in Ratchet*", 2.5, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill Pirates in Tanaris", 2.5, 42000);
		tinsert(tooltipInfo, { left = " * PROTIP: Ratchet is faster.", r = 1, g = 0.5, b = 0.5 });
	end
end]];

local OnTooltipForWintersaberTrainers = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		local repPerKill = 50;
		if reputation < 1500 then
			addRepInfo(tooltipInfo, reputation, "Complete Frostsaber Provisions (to 1500)", repPerKill, 1500);
		else
			addRepInfo(tooltipInfo, reputation, "Complete Winterfall Intrusion", repPerKill, 42000);
			if reputation >= ]] .. HONORED .. [[ then
				repPerKill = 50;
				addRepInfo(tooltipInfo, reputation, "Complete Rampaging Giants", repPerKill, 42000);
			end
		end
	end
end]];

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.WINTERSPRING, {
		["lore"] = "Winterspring is a frosty valley in northern Kalimdor. This frigid zone is littered with night elven ruins, and serves as the primary home of the Blue Dragonflight in Kalimdor. The only settlement in Winterspring is Everlook, a Steamwheedle Cartel town that is neutral to both Horde and Alliance.",
		["icon"] = 236854,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(857),	-- Explore Winterspring
			}),
			explorationHeader({
				exploration(2256),	-- Darkwhisper Gorge
				exploration(2255),	-- Everlook
				exploration(2246),	-- Frostfire Hot Springs
				exploration(2241),	-- Frostsaber Rock
				exploration(2249),	-- Frostwhisper Gorge
				exploration(2247),	-- Ice Thistle Hills
				exploration(2251),	-- Lake Kel'Theril
				exploration(2245),	-- Mazthoril
				exploration(2250),	-- Owl Wing Thicket
				exploration(2253),	-- Starfall Village
				exploration(2242),	-- The Hidden Grove
				exploration(2243),	-- Timbermaw Post
				exploration(2244),	-- Winterfall Village
			}),
			n(FACTIONS, {
				faction(FACTION_EVERLOOK, {	-- Everlook
					["icon"] = 133784,
					["OnTooltip"] = [[_.OnTooltipDB.ForEverlook]],
					["maps"] = { MAP.TANARIS, MAP.THE_BARRENS },
				}),
				faction(FACTION_WINTERSABER_TRAINERS, {	-- Wintersaber Trainers
					["icon"] = 132252,
					["OnTooltip"] = OnTooltipForWintersaberTrainers,
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(52, {	-- Everlook, Winterspring
					["cr"] = 11138,	-- Maethrya <Hippogryph Master>
					["coord"] = { 62.2, 36.6, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(53, {	-- Everlook, Winterspring
					["cr"] = 11139,	-- Yugrek <Wind Rider Master>
					["coord"] = { 60.4, 36.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(6605, {	-- A Strange One
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61.0, 38.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 49,
				}),
				q(8798, {	-- A Yeti of Your Own
					["sourceQuest"] = 5163,	-- Are We There, Yeti? (3/3)
					["qg"] = 10305,	-- Umi Rumplesnicker
					["coord"] = { 60.8, 37.6, MAP.WINTERSPRING },
					["requireSkill"] = ENGINEERING,
					["lvl"] = 55,
					["groups"] = {
						r(26011, {	-- Tranquil Mechanical Yeti
							["requireSkill"] = ENGINEERING,
						}),
					},
				}),
				q(3783, {	-- Are We There, Yeti? (1/3)
					["qg"] = 10305,	-- Umi Rumplesnicker
					["coord"] = { 60.8, 37.6, MAP.WINTERSPRING },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Fur
							["provider"] = { "i", 12366 },	-- Thick Yeti Fur
							["crs"] = {
								7457,	-- Rogue Ice Thistle
								7458,	-- Ice Thistle Yeti
							},
						}),
					},
				}),
				q(977, {	-- Are We There, Yeti? (2/3)
					["sourceQuest"] = 3783,	-- Are We There, Yeti? (1/3)
					["qg"] = 10305,	-- Umi Rumplesnicker
					["coord"] = { 60.8, 37.6, MAP.WINTERSPRING },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/2 Pristine Yeti Horn
							["provider"] = { "i", 12367 },	-- Pristine Yeti Horn
							["crs"] = {
								7460,	-- Ice Thistle Patriarch
								7459,	-- Ice Thistle Matriarch
							},
						}),
					},
				}),
				q(5163, {	-- Are We There, Yeti? (3/3)
					["sourceQuest"] = 977,	-- Are We There, Yeti? (2/3)
					["qg"] = 10305,	-- Umi Rumplesnicker
					["coord"] = { 60.8, 37.6, MAP.WINTERSPRING },
					["maps"] = { MAP.TANARIS, MAP.UNGORO_CRATER },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- Scare Legacki
							["providers"] = {
								{ "n", 10978 },	-- Legacki
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 61.6, 38.6, MAP.WINTERSPRING },
						}),
						objective(2, {	-- Scare Sprinkle
							["providers"] = {
								{ "n", 7583 },	-- Sprinkle
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 51.0, 26.8, MAP.TANARIS },
						}),
						objective(3, {	-- Scare Quixxil
							["providers"] = {
								{ "n", 10977 },	-- Quixxil
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 43.6, 9.6, MAP.UNGORO_CRATER },
						}),
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["sourceQuest"] = 5054,	-- Ursius of the Shardtooth
					["qg"] = 10303,	-- Storm Shadowhoof
					["coord"] = { 61.8, 38.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Brumeran slain
							["provider"] = { "n", 10807 },	-- Brumeran
						}),
					},
				}),
				q(975, {	-- Cache of Mau'ari
					["sourceQuest"] = 969,	-- Luck Be With You
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["lvl"] = 55,
					["groups"] = {
						i(12384),	-- Cache of Mau'ari
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 4804, 3 } },	-- Chillwind E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12457),	-- Juju Chill
					},
				}),
				q(5307, {	-- Corruption
					["altQuests"] = {
						5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
						5305,	-- Sweet Serenity [Master Hammersmith]
					},
					["qg"] = 11193,	-- Seril Scourgebane
					["coord"] = { 61.2, 37.2, MAP.WINTERSPRING },
					["maps"] = { MAP.STRATHOLME },
					["requireSkill"] =
						9787,	-- Weaponsmith
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Insignia of the Black Guard
							["provider"] = { "i", 13350 },	-- Insignia of the Black Guard
							["cr"] = 11121,	-- Black Guard Swordsmith
						}),
						i(12825),	-- Plans: Blazing Rapier (RECIPE!)
					},
				}),
				q(6030, {	-- Duke Nicholas Zverenhoff
					["providers"] = {
						{ "n", 10431 },	-- Gregor Greystone
						{ "i", 15790 },	-- Studies in Spirit Speaking
					},
					["coord"] = { 61.2, 38.8, MAP.WINTERSPRING },
					["maps"] = { MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6604, {	-- Enraged Wildkin (1/4)
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61.0, 38.4, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(4861, {	-- Enraged Wildkin (2/4)
					["sourceQuest"] = 6604,	-- Enraged Wildkin (1/4)
					["qg"] = 10301,	-- Jaron Stoneshaper
					["coord"] = { 52.0, 30.4, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4863, {	-- Enraged Wildkin (3/4)
					["sourceQuest"] = 4861,	-- Enraged Wildkin (2/4)
					["provider"] = { "o", 175587 },	-- Damaged Crate
					["coord"] = { 59.0, 59.7, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4864, {	-- Enraged Wildkin (4/4)
					["sourceQuest"] = 4863,	-- Enraged Wildkin (3/4)
					["provider"] = { "o", 175586 },	-- Jaron's Wagon
					["coord"] = { 61.4, 60.6, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Jaron's Supplies
							["providers"] = {
								{ "i", 12525 },	-- Jaron's Supplies
								{ "o", 175629 },	-- Jaron's Supplies
							},
							["coord"] = { 61.4, 60.7, MAP.WINTERSPRING },
						}),
						objective(2, {	-- 0/1 Blue-feathered Amulet
							["provider"] = { "i", 12524 },	-- Blue-feathered Amulet
							["crs"] = {
								7454,	-- Berserk Owlbeast
								7452,	-- Crazed Owlbeast
								7453,	-- Moontouched Owlbeast
							},
						}),
					},
				}),
				q(5084, {	-- Falling to Corruption
					["sourceQuest"] = 5083,	-- Winterfall Firewater
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["maps"] = { MAP.FELWOOD },
					["lvl"] = 52,
				}),
				q(979, {	-- Find Ranshalla
					["sourceQuest"] = 978,	-- Moontouched Wildkin
					["qg"] = 7916,	-- Erelas Ambersky
					["coord"] = { 55.5, 92.1, MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(4806, {	-- Frostmaul E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12436, 3 } },	-- Frostmaul E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12460),	-- Juju Might
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12430, 3 } },	-- Frostsaber E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12450),	-- Juju Flurry
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, MAP.WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, NEUTRAL },	-- Wintersaber Trainers, Neutral.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/5 Shardtooth Meat
							["provider"] = { "i", 12622 },
							["crs"] = {
								7445,	-- Elder Shardtooth
								7446,	-- Rabid Shardtooth
								7444,	-- Shardtooth Bear
								7443,	-- Shardtooth Mauler
							},
						}),
						objective(2, {	-- 0/5 Chillwind Meat
							["provider"] = { "i", 12623 },
							["crs"] = {
								7448,	-- Chillwind Chimaera
								7449,	-- Chillwind Ravager
								7447,	-- Fledgling Chillwind
							},
						}),
					},
				}),
				q(4901, {	-- Guardians of the Altar
					["sourceQuest"] = 979,	-- Find Ranshalla
					["qg"] = 10300,	-- Ranshalla
					["coord"] = { 63.0, 59.4, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(4882, {	-- Guarding Secrets (1/2)
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["provider"] = { "i", 12558 },	-- Blue-feathered Necklace
					["maps"] = { MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(5121, {	-- High Chief Winterfall
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 High Chief Winterfall slain
							["provider"] = { "n", 10738 },	-- High Chief Winterfall
							["coord"] = { 69.6, 38.2, MAP.WINTERSPRING },
						}),
						i(15784),	-- Crystal Breeze Mantle
						i(15786),	-- Fernpulse Jerkin
						i(15787),	-- Willow Band Hauberk
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12435, 3 } },	-- Ice Thistle E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(969, {	-- Luck Be With You
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/10 Frostmaul Shards
							["providers"] = {
								{ "i", 12334 },	-- Frostmaul Shards
								{ "o", 175324 },	-- Frostmaul Shards
							},
							["crs"] = {
								10198,	-- Kashoch the Reaver
								7429,	-- Frostmaul Preserver
								7428,	-- Frostmaul Giant
							},
							["coord"] = { 61.8, 68.6, MAP.WINTERSPRING },
						}),
					},
				}),
				q(9266, {	-- Making Amends
					["qg"] = 16416,	-- Bronn Fitzwrench
					["coord"] = { 59.8, 39.7, MAP.WINTERSPRING },
					["maxReputation"] = { FACTION_EVERLOOK, NEUTRAL },	-- Everlook, must be less than Neutral
					["cost"] = {
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 3857, 4 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(978, {	-- Moontouched Wildkin
					["sourceQuest"] = 3661,	-- Favored of Elune?
					["qg"] = 7916,	-- Erelas Ambersky
					["coord"] = { 55.5, 92.1, MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/10 Moontouched Feather
							["providers"] = {
								{ "i", 12383 },	-- Moontouched Feather
								{ "o", 175407 },	-- Moontouched Feather
							},
						}),
					},
				}),
				q(5057, {	-- Past Endeavors
					["sourceQuest"] = 5056,	-- Shy-Rotam
					["qg"] = 10303,	-- Storm Shadowhoof
					["coord"] = { 61.8, 38.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						i(15704),	-- Hunter's Insignia Medal
					},
				}),
				q(5981, {	-- Rampaging Giants
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, MAP.WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, HONORED },	-- Wintersaber Trainers, Honored.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/4 Frostmaul Giant slain
							["provider"] = { "n", 7428 },	-- Frostmaul Giant
						}),
						objective(2, {	-- 0/4 Frostmaul Preserver slain
							["provider"] = { "n", 7429 },	-- Frostmaul Preserver
						}),
					},
				}),
				q(5252, {	-- Remorseful Highborne
					["sourceQuest"] = 5248,	-- Tormented By the Past
					["providers"] = {
						{ "n", 10684 },	-- Remorseful Highborne
						{ "i", 13347 },	-- Crystal of Zin-Malor (Provided)
					},
					["coord"] = { 56.2, 44.4, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4810, {	-- Return to Tinkee
					["sourceQuest"] = 4809,	-- Chillwind Horns
					["providers"] = {
						{ "n", 10468 },	-- Felnok Steelspring
						{ "i", 12445 },	-- Felnok's Package
					},
					["coord"] = { 61.6, 38.6, MAP.WINTERSPRING },
					["maps"] = { MAP.BURNING_STEPPES },
					["lvl"] = 50,
					["groups"] = {
						i(15862),	-- Blitzcleaver
						i(15863),	-- Grave Scepter
					},
				}),
				q(4803, {	-- Shardtooth E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12432, 3 } },	-- Shardtooth E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12455),	-- Juju Ember
					},
				}),
				q(5056, {	-- Shy-Rotam
					["sourceQuest"] = 5055,	-- Brumeran of the Chillwind
					["qg"] = 10303,	-- Storm Shadowhoof
					["coord"] = { 61.8, 38.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Shy-Rotam slain
							["providers"] = {
								{ "n", 10737 },	-- Shy-Rotam
								{ "o", 177684 },	-- Stone of Shy-Rotam
							},
							["coord"] = { 49.8, 9.8, MAP.WINTERSPRING },
							["cost"] = { { "i", 12733, 1 } },	-- Sacred Frostsaber Meat
						}),
						i(12733, {	-- Sacred Frostsaber Meat
							["crs"] = {
								7431,	-- Frostsaber
								7430,	-- Frostsaber Cub
								7433,	-- Frostsaber Huntress
								7434,	-- Frostsaber Pride Watcher
								7432,	-- Frostsaber Stalker
							},
						}),
						i(15783),	-- Beasthunter Dagger
						i(15782),	-- Beaststalker Blade
					},
				}),
				q(5601, {	-- Sister Pamela
					["altQuests"] = { 5142 },	-- Little Pamela
					["qg"] = 11629,	-- Jessica Redpath
					["coord"] = { 61.2, 39.0, MAP.WINTERSPRING },
					["lvl"] = 50,
				}),
				q(5306, {	-- Snakestone of the Shadow Huntress
					["description"] = "Upon finishing this quest, you will become a Master Axesmith and be locked out of becoming a Master Hammersmith and Master Swordsmith.",
					["altQuests"] = {
						5307,	-- Corruption [Master Swordsmith]
						5305,	-- Sweet Serenity [Master Hammersmith]
					},
					["qg"] = 11192,	-- Kilram
					["coord"] = { 61.2, 37.0, MAP.WINTERSPRING },
					["maps"] = { MAP.BLACKROCK_SPIRE },
					["requireSkill"] =
						9787,	-- Weaponsmith
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Vosh'gajin's Snakestone
							["provider"] = { "i", 13352 },	-- Vosh'gajin's Snakestone
							["cr"] = 9236,	-- Shadow Hunter Vosh'gajin
						}),
						i(12821),	-- Plans: Dawn's Edge (RECIPE!)
					},
				}),
				q(5250, {	-- Starfall
					["qg"] = 7907,	-- Daryn Lightwind
					["coord"] = { 55.4, 92.2, MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(4842, {	-- Strange Sources
					["sourceQuest"] = 980,	-- The New Springs
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["lvl"] = 51,
					["groups"] = {
						i(15789),	-- Deep River Cloak
					},
				}),
				q(5305, {	-- Sweet Serenity
					["description"] = "Upon finishing this quest, you will become a Master Hammersmith and be locked out of becoming a Master Axesmith and Master Swordsmith.",
					["altQuests"] = {
						5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
						5307,	-- Corruption [Master Swordsmith]
					},
					["qg"] = 11191,	-- Lilith the Lithe
					["coord"] = { 61.2, 37.2, MAP.WINTERSPRING },
					["maps"] = { MAP.STRATHOLME },
					["requireSkill"] =
						9787,	-- Weaponsmith
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Crimson Hammersmith's Apron
							["provider"] = { "i", 13351 },	-- Crimson Hammersmith's Apron
							["cr"] = 11120,	-- Crimson Hammersmith
						}),
						i(12824),	-- Plans: Enchanted Battlehammer (RECIPE!)
					},
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["sourceQuest"] = 5252,	-- Remorseful Highborne
					["providers"] = {
						{ "n", 11079 },	-- Wynd Nightchaser
						{ "i", 13347 },	-- Crystal of Zin-Malor (Provided)
					},
					["coord"] = { 52.0, 30.2, MAP.WINTERSPRING },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						i(15791),	-- Turquoise Sash
						i(15792),	-- Plow Wood Spaulders
						i(15795),	-- Emerald Mist Gauntlets
					},
				}),
				{	-- The Everlook Report
					["allianceQuestData"] = q(6028, {	-- The Everlook Report (A)
						["maps"] = { MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(6029, {	-- The Everlook Report (H)
						["maps"] = { MAP.TIRISFAL_GLADES },
					}),
					["providers"] = {
						{ "n", 10431 },	-- Gregor Greystone
						{ "i", 15788 },	-- Everlook Report
					},
					["coord"] = { 61.2, 38.8, MAP.WINTERSPRING },
					["lvl"] = 50,
				},
				q(5123, {	-- The Final Piece
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["coord"] = { 69.6, 38.2, MAP.WINTERSPRING },
					["cr"] = 10738,	-- High Chief Winterfall
					["lvl"] = 52,
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["sourceQuests"] = {
						5250,	-- Starfall
						5249,	-- To Winterspring!
					},
					["qg"] = 11079,	-- Wynd Nightchaser
					["coord"] = { 52.0, 30.2, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(5082, {	-- Threat of the Winterfall
					["sourceQuest"] = 6603,	-- Trouble in Winterspring!
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/8 Winterfall Pathfinder slain
							["provider"] = { "n", 7442 },	-- Winterfall Pathfinder
						}),
						objective(2, {	-- 0/8 Winterfall Den Watcher slain
							["provider"] = { "n", 7440 },	-- Winterfall Den Watcher
						}),
						objective(3, {	-- 0/8 Winterfall Totemic slain
							["provider"] = { "n", 7441 },	-- Winterfall Totemic
						}),
					},
				}),
				q(5249, {	-- To Winterspring!
					["qg"] = 10924,	-- Ivy Leafrunner
					["coord"] = { 50.8, 81.6, MAP.FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(5086, {	-- Toxic Horrors
					["sourceQuest"] = 5085,	-- Mystery Goo
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["maps"] = { MAP.FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/3 Toxic Horror Droplet
							["provider"] = { "i", 12822 },	-- Toxic Horror Droplet
							["cr"] = 7132,	-- Toxic Horror
						}),
					},
				}),
				q(6603, {	-- Trouble in Winterspring!
					["qg"] = 11754,	-- Meggi Peppinrocker
					["coord"] = { 61.4, 38.4, MAP.WINTERSPRING },
					["isBreadcrumb"] = true,
					["lvl"] = 52,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["sourceQuest"] = 5244,	-- The Ruins of Kel'Theril
					["qg"] = 10301,	-- Jaron Stoneshaper
					["coord"] = { 52.0, 30.4, MAP.WINTERSPRING },
					["maps"] = { MAP.EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 First Relic Fragment
							["providers"] = {
								{ "i", 12896 },	-- First Relic Fragment
								{ "o", 175888 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 55.0, 42.0, MAP.WINTERSPRING },
						}),
						objective(2, {	-- 0/1 Second Relic Fragment
							["providers"] = {
								{ "i", 12897 },	-- Second Relic Fragment
								{ "o", 175891 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 50.0, 41.0, MAP.WINTERSPRING },
						}),
						objective(3, {	-- 0/1 Third Relic Fragment
							["providers"] = {
								{ "i", 12898 },	-- Third Relic Fragment
								{ "o", 175892 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 53.0, 43.0, MAP.WINTERSPRING },
						}),
						objective(4, {	-- 0/1 Fourth Relic Fragment
							["providers"] = {
								{ "i", 12899 },	-- Fourth Relic Fragment
								{ "o", 175893 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 52.0, 41.0, MAP.WINTERSPRING },
						}),
					},
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["qg"] = 10303,	-- Storm Shadowhoof
					["coord"] = { 61.8, 38.4, MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Ursius slain
							["provider"] = { "n", 10806 },	-- Ursius
						}),
					},
				}),
				q(4807, {	-- Wildkin E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12433, 3 } },	-- Wildkin E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12458),	-- Juju Guile
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, MAP.WINTERSPRING },
					["cost"] = { { "i", 12431, 3 } },	-- Winterfall E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12451),	-- Juju Power
					},
				}),
				q(5083, {	-- Winterfall Firewater
					["provider"] = { "i", 12771 },	-- Empty Firewater Flask
					["lvl"] = 52,
				}),
				q(5201, {	-- Winterfall Intrusion
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, MAP.WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, NEUTRAL + 1500 },	-- Wintersaber Trainers, Neutral + 1500.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/5 Winterfall Shaman slain
							["provider"] = { "n", 7439 },	-- Winterfall Shaman
						}),
						objective(2, {	-- 0/5 Winterfall Ursa slain
							["provider"] = { "n", 7438 },	-- Winterfall Ursa
						}),
					},
				}),
				q(5087, {	-- Winterfall Runners
					["sourceQuest"] = 5086,	-- Toxic Horrors
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Winterfall Crate
							["provider"] = { "i", 12829 },	-- Winterfall Crate
							["coord"] = { 28.4, 37.8, MAP.WINTERSPRING },
							["cr"] = 10916,	-- Winterfall Runner
						}),
					},
				}),
				q(5128, {	-- Words of the High Chief
					["sourceQuest"] = 5123,	-- The Final Piece
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, MAP.WINTERSPRING },
					["maps"] = { MAP.FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						i(13158),	-- Words of the High Chief
					},
				}),
			}),
			n(RARES, {
				n(10202, {	-- Azurous
					["coords"] = {
						{ 57.2, 45.6, MAP.WINTERSPRING },
						{ 61.8, 40.4, MAP.WINTERSPRING },
						{ 63.0, 40.8, MAP.WINTERSPRING },
						{ 64.8, 43.0, MAP.WINTERSPRING },
						{ 66.4, 45.6, MAP.WINTERSPRING },
						{ 66.6, 53.4, MAP.WINTERSPRING },
					},
				}),
				n(10196, {	-- General Colbatann
					["coords"] = {
						{ 54.6, 51.6, MAP.WINTERSPRING },
						{ 57.6, 50.0, MAP.WINTERSPRING },
						{ 59.6, 49.2, MAP.WINTERSPRING },
						{ 61.2, 49.4, MAP.WINTERSPRING },
					},
				}),
				n(10199, {	-- Grizzle Snowpaw
					["coords"] = {
						{ 67.0, 35.2, MAP.WINTERSPRING },
						{ 67.2, 37.6, MAP.WINTERSPRING },
						{ 68.6, 36.0, MAP.WINTERSPRING },
						{ 69.2, 38.6, MAP.WINTERSPRING },
					},
				}),
				n(10198, {	-- Kashoch the Reaver
					["coords"] = {
						{ 62.0, 69.2, MAP.WINTERSPRING },
						{ 63.6, 69.8, MAP.WINTERSPRING },
					},
				}),
				n(10201, {	-- Lady Hederine
					["coords"] = {
						{ 65.0, 80.2, MAP.WINTERSPRING },
						{ 51.6, 84.4, MAP.WINTERSPRING },
						{ 54.6, 87.4, MAP.WINTERSPRING },
					},
				}),
				n(10197, {	-- Mezzir the Howler
					["coords"] = {
						{ 30.6, 38.4, MAP.WINTERSPRING },
						{ 30.6, 46.0, MAP.WINTERSPRING },
						{ 39.8, 36.4, MAP.WINTERSPRING },
						{ 45.0, 38.0, MAP.WINTERSPRING },
					},
				}),
				n(10200, {	-- Rak'shiri
					["coords"] = {
						{ 50.0, 8.0, MAP.WINTERSPRING },
						{ 50.0, 11.2, MAP.WINTERSPRING },
						{ 50.4, 20.4, MAP.WINTERSPRING },
						{ 51.8, 17.2, MAP.WINTERSPRING },
						{ 55.6, 14.0, MAP.WINTERSPRING },
					},
				}),
			}),
			prof(SKINNING, {
				i(15422, {	-- Frostsaber Leather
					["crs"] = {
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
					},
				}),
			}),
			n(VENDORS, {
				n(11188, {	-- Evie Whirlbrew <Alchemy Supplies>
					["coord"] = { 60.8, 37.8, MAP.WINTERSPRING },
					["groups"] = {
						i(13480),	-- Recipe: Major Healing Potion (RECIPE!)
					},
				}),
				n(11187, {	-- Himmik <Food & Drink>
					["coord"] = { 61.2, 39.0, MAP.WINTERSPRING },
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				n(2303, {	-- Lyranne Feathersong <Food & Drink>
					["coord"] = { 52.0, 29.2, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
				}),
				n(11189, {	-- Qia <Trade Supplies>
					["coord"] = { 61.2, 37.2, MAP.WINTERSPRING },
					["groups"] = {
						i(16221, {	-- Formula: Enchant Chest - Major Health (RECIPE!)
							["isLimited"] = true,
						}),
						i(15740, {	-- Pattern: Frostsaber Boots (RECIPE!)
							["isLimited"] = true,
						}),
						i(14526),	-- Pattern: Mooncloth (RECIPE!)
						i(14468, {	-- Pattern: Runecloth Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(14481, {	-- Pattern: Runecloth Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(10618, {	-- Rivern Frostwind <Wintersaber Trainer>
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["coord"] = { 49.8, 9.8, MAP.WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13086),	-- Winterspring Frostsaber (MOUNT!)
					},
				}),
				n(16015, {	-- Vi'el <Exotic Reagent Merchant>
					["coord"] = { 58.9, 78.4, MAP.WINTERSPRING },
					["groups"] = {
						i(21939, {	-- Fel Elemental Rod
							["cost"] = 400000,	-- 40g
						}),
					},
				}),
				n(11184, {	-- Wixxrak <Weaponsmith & Gunsmith>
					["coord"] = { 61.6, 38.0, MAP.WINTERSPRING },
				}),
				n(11185, {	-- Xizzer Fizzbolt <Engineering Supplies>
					["coord"] = { 60.8, 38.6, MAP.WINTERSPRING },
					["groups"] = {
						i(16050, {	-- Schematic: Delicate Arcanite Converter (RECIPE!)
							["isLimited"] = true,
						}),
						i(18652, {	-- Schematic: Gyrofreeze Ice Reflector (RECIPE!)
							["isLimited"] = true,
						}),
						i(16046, {	-- Schematic: Masterwork Target Dummy (RECIPE!)
							["isLimited"] = true,
						}),
						i(18656, {	-- Schematic: Powerful Seaforium Charge (RECIPE!)
							["isLimited"] = true,
						}),
						i(16047, {	-- Schematic: Thorium Tube (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(14742, {	-- Zap Farflinger <Unbalanced Engineer>
					["description"] = "Goblin Engineers can speak to Zap to learn the recipe.",
					["requireSkill"] = GOBLIN_ENGINEERING,
					["coord"] = { 61.2, 37.6, MAP.WINTERSPRING },
					["groups"] = {
						r(23486),	-- Dimensional Ripper - Everlook
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(12434, {	-- Chillwind E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7449,	-- Chillwind Ravager
						7448,	-- Chillwind Chimaera
						7447,	-- Fledgling Chillwind
					},
				}),
				i(21105, {	-- Draconic for Dummies [Chapter III]
					["timeline"] = { ADDED_1_9_0 },
					["coords"] = {
						{ 65.0, 80.2, MAP.WINTERSPRING },
						{ 51.6, 84.4, MAP.WINTERSPRING },
						{ 54.6, 87.4, MAP.WINTERSPRING },
					},
					["crs"] = {
						10201,	-- Lady Hederine
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
				i(12771, {	-- Empty Firewater Flask
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(12558, {	-- Blue-feathered Necklace
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
				}),
				i(16223, {	-- Formula: Enchant Weapon - Icy Chill (RECIPE!)
					["cr"] = 7524,	-- Anguished Highborne
				}),
				i(12436, {	-- Frostmaul E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				}),
				i(12430, {	-- Frostsaber E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7433,	-- Frostsaber Huntress
						7430,	-- Frostsaber Cub
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
						7431,	-- Frostsaber
					},
				}),
				i(12435, {	-- Ice Thistle E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7459,	-- Ice Thistle Matriarch
						7460,	-- Ice Thistle Patriarch
						7458,	-- Ice Thistle Yeti
						7457,	-- Rogue Ice Thistle
					},
				}),
				i(18704, {	-- Mature Blue Dragon Sinew
					["crs"] = {
						7435,	-- Cobalt Wyrmkin
						7436,	-- Cobalt Scalebane
						7437,	-- Cobalt Mageweaver
						10196,	-- General Colbatann
						10663,	-- Manaclaw
						10664,	-- Scryer
					},
				}),
				i(15761, {	-- Pattern: Frostsaber Gloves (RECIPE!)
					["coords"] = {
						{ 41.6, 42.8, MAP.WINTERSPRING },
						{ 33.0, 36.8, MAP.WINTERSPRING },
					},
					["cr"] = 7441,	-- Winterfall Totemic
				}),
				i(15747, {	-- Pattern: Frostsaber Leggings (RECIPE!)
					["coords"] = {
						{ 68.0, 35.6, MAP.WINTERSPRING },
						{ 41.6, 42.8, MAP.WINTERSPRING },
						{ 33.6, 36.8, MAP.WINTERSPRING },
					},
					["cr"] = 7440,	-- Winterfall Den Watcher
				}),
				i(15779, {	-- Pattern: Frostsaber Tunic (RECIPE!)
					["coords"] = {
						{ 69.6, 38.2, MAP.WINTERSPRING },
						{ 65.6, 37.6, MAP.WINTERSPRING },
					},
					["cr"] = 7438,	-- Winterfall Ursa
				}),
				i(14493, {	-- Pattern: Robe of Winter Night (RECIPE!)
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13497, {	-- Recipe: Greater Arcane Protection Potion (RECIPE!)
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13495, {	-- Recipe: Greater Frost Protection Potion (RECIPE!)
					["coords"] = {
						{ 64.2, 69.0, MAP.WINTERSPRING },
						{ 61.8, 68.6, MAP.WINTERSPRING },
					},
					["crs"] = {
						7428,	-- Frostmaul Giant
					},
					["timeline"] = { ADDED_1_11_1 },	-- ATT Discord 05.09.2023
				}),
				i(16054, {	-- Schematic: Arcanite Dragonling (RECIPE!)
					["coord"] = { 59.6, 49.0, MAP.WINTERSPRING },
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(12432, {	-- Shardtooth E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7446,	-- Rabid Shardtooth
						7445,	-- Elder Shardtooth
						7443,	-- Shardtooth Mauler
						7444,	-- Shardtooth Bear
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
				i(12433, {	-- Wildkin E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						7453,	-- Moontouched Owlbeast
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7451,	-- Raging Owlbeast
						7450,	-- Ragged Owlbeast
					},
				}),
				i(12431, {	-- Winterfall E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(12820, {	-- Winterfall Firewater
					["crs"] = {
						10199,	-- Grizzle Snowpaw
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21383, {	-- Winterfall Spirit Beads
					["description"] =
						"Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21928, {	-- Winterspring Blood Sample
					["crs"] = {
						7445,	-- Elder Shardtooth
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
						7446,	-- Rabid Shardtooth
						7444,	-- Shardtooth Bear
						7443,	-- Shardtooth Mauler
					},
				}),
			}),
		},
	}),
}));
