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
-- #if BEFORE CATA
-- Crieve NOTE: This is done by completing the 'They Grow Up So Fast' quest for Cata+.
local OnTooltipForWintersaberTrainers = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		-- #if AFTER TBC
		local repPerKill = 250;
		-- #else
		local repPerKill = 50;
		-- #endif
		if reputation < 1500 then
			addRepInfo(tooltipInfo, reputation, "Complete Frostsaber Provisions (to 1500)", repPerKill, 1500);
		else
			addRepInfo(tooltipInfo, reputation, "Complete Winterfall Intrusion", repPerKill, 42000);
			if reputation >= ]] .. HONORED .. [[ then
				-- #if AFTER TBC
				repPerKill = 350;
				-- #else
				repPerKill = 50;
				-- #endif
				addRepInfo(tooltipInfo, reputation, "Complete Rampaging Giants", repPerKill, 42000);
			end
		end
	end
end]];
-- #endif
root(ROOTS.Zones, m(KALIMDOR, {
	m(WINTERSPRING, {
		["lore"] = "Winterspring is a frosty valley in northern Kalimdor. This frigid zone is littered with night elven ruins, and serves as the primary home of the Blue Dragonflight in Kalimdor. The only settlement in Winterspring is Everlook, a Steamwheedle Cartel town that is neutral to both Horde and Alliance.",
		["icon"] = 236854,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5443, {		-- E'ko Madness
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						crit(15632, {	-- Winterspring Furbolg
							["crs"] = {
								10738,	-- High Chief Winterfall
								7442,	-- Winterfall Pathfinder
								10916,	-- Winterfall Runner
								7438,	-- Winterfall Ursa
							},
							["coords"] = {
								{ 29.0, 49.0, WINTERSPRING },
								{ 66.4, 52.2, WINTERSPRING },
								{ 36.8, 55.6, WINTERSPRING },
							},
						}),
						crit(16177, {	-- Wildkin
							["crs"] = {
								7454,	-- Berserk Owlbeast
								7452,	-- Crazed Owlbeast
								7453,	-- Moontouched Owlbeast
								7450,	-- Ragged Owlbeast
								7451,	-- Raging Owlbeast
							},
							["coords"] = {
								{ 63.0, 30.4, WINTERSPRING },
								{ 65.2, 76.6, WINTERSPRING },
								{ 57.6, 75.6, WINTERSPRING }
							},
						}),
						crit(16178, {	-- Shardtooth Bears
							["crs"] = {
								7444,	-- Shardtooth Bear
								7443,	-- Shardtooth Mauler
							},
							["coords"] = {
								{ 30.6, 56.8, WINTERSPRING },
								{ 55.2, 30.6, WINTERSPRING },
								{ 55.8, 38.8, WINTERSPRING },
							},
						}),
						crit(16179, {	-- Frostmaul Giants
							["crs"] = {
								7428,	-- Frostmaul Giant
							},
							["coords"] = {
								{ 56.6, 86.6, WINTERSPRING },
								{ 63.2, 89.8, WINTERSPRING },
							},
						}),
						crit(16180, {	-- Frostsabers
							["crs"] = {
								7431,	-- Frostsaber
								10737,	-- Shy-Rotam
							},
							["coords"] = {
								{ 46.2, 17.6, WINTERSPRING },
								{ 51.4, 22.0, WINTERSPRING },
							},
						}),
						crit(16181, {	-- Chillwind Chimaera
							["crs"] = {
								7448,	-- Chillwind Chimera
							},
							["coords"] = {
								{ 58.0, 23.8, WINTERSPRING },
							},
						}),
						crit(16182, {	-- Ice Thistle Yeti
							["crs"] = {
								7459,	-- Ice Thistle Matriarch
								7460,	-- Ice Thistle Patriarch
								7458,	-- Ice Thistle Yeti
								49235,	-- Icewhomp
								7457,	-- Rogue Ice Thistle
							},
							["coords"] = {
								{ 67.6, 54.2, WINTERSPRING },
							},
						}),
					},
				}),
				explorationAch(857),	-- Explore Winterspring
				-- #if AFTER CATA
				ach(3356, {	-- Winterspring Frostsaber
					["provider"] = { "i", 13086 },	-- Reins of the Winterspring Frostsaber
					["races"] = ALLIANCE_ONLY,
					["f"] = MOUNTS,
				}),
				-- #endif
				ach(4940, {	-- Winterspring Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						28472,	-- Words of the High Chief
						28848,	-- Trailing the Spiritspeaker
						28628,	-- Ice Delivery
						28710,	-- Spray It One More Time
						28782,	-- A Bird of Legend
						28742,	-- Shy-Rotam
						28639,	-- Ursius
						28828,	-- You Gotta Have Eggs
						28722,	-- Yetiphobia
						28830,	-- Chips Off the Old Block
						28831,	-- Damn You, Frostilicus
						28842,	-- Umbranse's Deliverance
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					441,	-- Alpine Hare (PET!)
					633,	-- Mountain Skunk (PET!)
					472,	-- Rabid Nut Varmint 5000 (PET!)
					471,	-- Robo-Chick (PET!)
				}},
				["groups"] = {
					pet(487),	-- Alpine Chipmunk (PET!)
					pet(1163, {	-- Anodized Robo Cub (PET!)
						["description"] = "Found in Everlook.",
						["timeline"] = { ADDED_5_1_0 },
					}),
					pet(634, {	-- Crystal Spider (PET!)
						["description"] = "Can most commonly be found in Frostwhisper Gorge in southern Winterspring and Lake Kel'theril.",
					}),
					pet(69, {	-- Snowy Owl (PET!)
						["description"] = "Starts spawning December 21st. Stops spawning March 20th",
					}),
				},
			}),
			explorationHeader({
				-- #if AFTER CATA
				exploration(2248),	-- Dun Mandarr
				-- #else
				exploration(2256),	-- Darkwhisper Gorge
				-- #endif
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
					["maps"] = { TANARIS, THE_BARRENS },
				}),
				faction(FACTION_WINTERSABER_TRAINERS, {	-- Wintersaber Trainers
					["icon"] = 132252,
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForWintersaberTrainers,
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(52, {	-- Everlook, Winterspring
					["cr"] = 11138,	-- Maethrya <Hippogryph Master>
					-- #if AFTER CATA
					["coord"] = { 61.0, 48.6, WINTERSPRING },
					-- #else
					["coord"] = { 62.2, 36.6, WINTERSPRING },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				fp(53, {	-- Everlook, Winterspring
					["cr"] = 11139,	-- Yugrek <Wind Rider Master>
					-- #if AFTER CATA
					["coord"] = { 58.8, 48.2, WINTERSPRING },
					-- #else
					["coord"] = { 60.4, 36.4, WINTERSPRING },
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(29037, {	-- 'Borrowing' From the Winterfall
					["providers"] = {
						{ "i", 68646 },	-- Winterspring Cub
						{ "n", 51677 },	-- Winterspring Cub
					},
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Feed Winterspring Cub Smoked Meat
							["providers"] = {
								{ "i", 68645 },	-- Smoked Meat
								{ "o", 208189 },	-- Smoked Meat
							},
						}),
						i(68644),	-- Winterspring Cub Whisker
					},
				}),
				q(28782, {	-- A Bird of Legend
					["qg"] = 49537,	-- Jeb Guthrie (granted automatically. Coords are relative to player position)
					["sourceQuest"] = 28745,	-- Screechy Keen
					["coord"] = { 56.0, 28.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Hell-Hoot slain
							["provider"] = { "n", 50044 },	-- Hell-Hoot
						}),
						i(67168, {	-- Gloves of the Infernal Nocturnal
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67185, {	-- Hell-Hoot Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67202, {	-- Vest of the Smoking Pit
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67225, {	-- Hoot-Hunter's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67218, {	-- Legend Eater Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(29035, {	-- A Cub's Cravings
					["providers"] = {
						{ "i", 68646 },	-- Winterspring Cub
						{ "n", 51677 },	-- Winterspring Cub
					},
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Feed Shardtooth Meat to Cub
							["provider"] = { "i", 12622 },	-- Shardtooth Meat
							["crs"] = {
								7443,	-- Shardtooth Mauler
								7444,	-- Shardtooth Bear
								7445,	-- Elder Shardtooth
								7446,	-- Rabid Shardtooth
							},
						}),
						i(68644),	-- Winterspring Cub Whisker
					},
				}),
				q(28719, {	-- A Little Gamy
					["qg"] = 49436,	-- Francis Morcott
					["sourceQuest"] = 28637,	-- A Taste for Bear
					["coord"] = { 55.8, 28.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Shardtooth Mauler slain
							["provider"] = { "n", 7443 },	-- Shardtooth Mauler
						}),
					},
				}),
				q(6605, {	-- A Strange One
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 49,
				}),
				q(28637, {	-- A Taste for Bear
					["qg"] = 49436,	-- Francis Morcott
					["coord"] = { 55.8, 28.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Shardtooth Bear slain
							["provider"] = { "n", 7444 },	-- Shardtooth Bear
						}),
					},
				}),
				q(8798, {	-- A Yeti of Your Own
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 5163,	-- Are We There, Yeti? (3/3)
					["coord"] = { 60.8, 37.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = ENGINEERING,
					["lvl"] = 55,
					["groups"] = {
						r(26011, {	-- Tranquil Mechanical Yeti
							["timeline"] = { REMOVED_4_0_3 },
							["requireSkill"] = ENGINEERING,
						}),
					},
				}),
				q(28837, {	-- Altered Beasts
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 28847,	-- The Pursuit of Umbranse
					["coord"] = { 58.0, 63.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Mana-Addled Brain
							["provider"] = { "i", 66052 },	-- Mana-Addled Brain
							["crs"] = {
								49161,	-- Altered Beast
								49162,	-- Altered Beast
							},
						}),
					},
				}),
				q(28629, {	-- Are We There, Yeti?
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 28627,	-- Seril's Boast
					["coord"] = { 59.3, 49.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Thick Yeti Fur
							["provider"] = { "i", 12366 },	-- Thick Yeti Fur
							["crs"] = {
								7458,	-- Ice Thistle Yeti
								7459,	-- Ice Thistle Matriarch
								7460,	-- Ice Thistle Patriarch
							},
						}),
					},
				}),
				q(3783, {	-- Are We There, Yeti? (1/3)
					["qg"] = 10305,	-- Umi Rumplesnicker
					["coord"] = { 60.8, 37.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 3783,	-- Are We There, Yeti? (1/3)
					["coord"] = { 60.8, 37.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
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
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 977,	-- Are We There, Yeti? (2/3)
					["coord"] = { 60.8, 37.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS, UNGORO_CRATER },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- Scare Legacki
							["providers"] = {
								{ "n", 10978 },	-- Legacki
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 61.6, 38.6, WINTERSPRING },
						}),
						objective(2, {	-- Scare Sprinkle
							["providers"] = {
								{ "n", 7583 },	-- Sprinkle
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 51.0, 26.8, TANARIS },
						}),
						objective(3, {	-- Scare Quixxil
							["providers"] = {
								{ "n", 10977 },	-- Quixxil
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
							["coord"] = { 43.6, 9.6, UNGORO_CRATER },
						}),
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(28614, {	-- Bearzerker
					["qg"] = 48722,	-- Burndl
					["coord"] = { 65.3, 46.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Grolnar the Berserk slain
							["provider"] = { "n", 49178 },	-- Grolnar the Berserk
						}),
						i(67216, {	-- Firewater Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67166, {	-- Belt of Bloating
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67183, {	-- Bearzerker's Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67200, {	-- Burndl's Bundled Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(44952, {	-- Blackrock Depths: Jewel of the Depths
					["qg"] = 11184,	-- Wixxrak
					["coord"] = { 60.2, 50.2, WINTERSPRING },
					["timeline"] = { ADDED_7_1_5 },
					["requireSkill"] = 2477,	-- Classic Blacksmithing
					["groups"] = {
						i(142357, {	-- Plans: Dawn's Edge (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
				q(28618, {	-- Boulder Delivery
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28610,	-- Rubble Trouble
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5054,	-- Ursius of the Shardtooth
					["coord"] = { 61.8, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Brumeran slain
							["provider"] = { "n", 10807 },	-- Brumeran
						}),
					},
				}),
				q(975, {	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 969,	-- Luck Be With You
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 55,
					["groups"] = {
						i(12384, {	-- Cache of Mau'ari
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 4804, 3 }},	-- Chillwind E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12457, {	-- Juju Chill
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4809, {	-- Chillwind Horns
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4808,	-- Felnok Steelspring
					["coord"] = { 61.6, 38.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/8 Uncracked Chillwind Horn
							["provider"] = { "i", 12444 },	-- Uncracked Chillwind Horn
							["crs"] = {
								7447,	-- Fledgling Chillwind
								7448,	-- Chillwind Chimaera
								7449,	-- Chillwind Ravager
							},
						}),
					},
				}),
				q(28830, {	-- Chips off the Old Block
					["qg"] = 50263,	-- Jadrag the Slicer
					["sourceQuest"] = 28829,	-- Razor Beak and Antlers Pointy
					["coord"] = { 61.8, 74.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Frostmaul Tumbler slain
							["provider"] = { "n", 50258 },	-- Frostmaul Tumbler
						}),
					},
				}),
				q(28625, {	-- Chop Chop
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28624,	-- Kilram's Boast
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Fresh-Cut Frostwood
							["provider"] = { "i", 64587 },	-- Fresh-Cut Frostwood
							["cr"] = 48952,	-- Frostleaf Treant
						}),
						i(67213, {	-- Frostleaf Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67163, {	-- Chop Chop Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67180, {	-- Treant-Bark Shoes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67197, {	-- Rocksnitch Helmet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5307, {	-- Corruption
					["qg"] = 11193,	-- Seril Scourgebane
					-- #if BEFORE TBC
					["altQuests"] = {
						5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
						-- #if SEASON_OF_DISCOVERY
						84496,	-- Sweet Serenity [Master Hammersmith]
						-- #else
						5305,	-- Sweet Serenity [Master Hammersmith]
						-- #endif
					},
					-- #endif
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRATHOLME },
					-- #if BEFORE TBC
					["requireSkill"] = 9787,	-- Weaponsmith
					-- #else
					["requireSkill"] = BLACKSMITHING,
					-- #endif
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Insignia of the Black Guard
							["provider"] = { "i", 13350 },	-- Insignia of the Black Guard
							["cr"] = 11121,	-- Black Guard Swordsmith
						}),
						i(12825, {	-- Plans: Blazing Rapier (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(29040, {	-- Cub's First Toy
					["providers"] = {
						{ "i", 68646 },	-- Winterspring Cub
						{ "n", 51677 },	-- Winterspring Cub
					},
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- Try out Winterspring Cat Toy
							["provider"] = { "i", 68668 },	-- Winterspring Cat Toy
							["cost"] = {
								{ "i", 68663, 1 },	-- Tough Yeti Hide
								{ "i", 68662, 5 },	-- Wildkin Feather
							},
						}),
						i(68663, {	-- Tough Yeti Hide
							["crs"] = {
								7459,	-- Ice Thistle Matriarch
								7458,	-- Ice Thistle Yeti
								7460,	-- Ice Thistle Patriarch
							},
						}),
						i(68662, {	-- Wildkin Feather
							["crs"] = {
								7450,	-- Ragged Owlbeast
								7451,	-- Raging Owlbeast
								7452,	-- Crazed Owlbeast
								7453,	-- Moontouched Owlbeast
								7454,	-- Berserk Owlbeast
							},
						}),
						i(68644),	-- Winterspring Cub Whisker
					},
				}),
				q(28831, {	-- Damn You, Frostilicus
					["qg"] = 50263,	-- Jadrag the Slicer
					["sourceQuest"] = 28829,	-- Razor Beak and Antlers Pointy
					["coord"] = { 61.8, 74.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Frostilicus slain
							["provider"] = { "n", 50251 },	-- Frostilicus
						}),
						i(67172, {	-- Cowl of Whistling Winds
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67189, {	-- Frostilicus's Hide
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67206, {	-- Owl Wing Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67221, {	-- Breastplate of the Poetic Orc
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(67228, {	-- Jadrag's Slicers
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28535, {	-- Descendants of the High Elves
					["qg"] = 48659,	-- Quel'dorei Spirit
					["sourceQuest"] = 28518,	-- Legacy of the High Elves
					["coord"] = { 50.7, 55.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28534, {	-- Descendants of the Highborne
					["qg"] = 48658,	-- Kaldorei Spirit
					["sourceQuest"] = 28513,	-- Pride of Highborne
					["coord"] = { 50.7, 54.8, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28540, {	-- Doin' De E'ko Magic
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 25.1, 58.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Rimepelt's Heart
							["provider"] = { "i", 64465 },	-- Rimepelt's Heart
							["cr"] = 48765,	-- Rimepelt
						}),
						i(67162, {	-- E'ko Gatherer's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67179, {	-- Heart Grippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67212, {	-- Bear Hunter's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67196, {	-- Witch Doctor's Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6030, {	-- Duke Nicholas Zverenhoff
					["providers"] = {
						{ "n", 10431 },	-- Gregor Greystone
						{ "i", 15790 },	-- Studies in Spirit Speaking
					},
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(28630, {	-- Echo Three
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 28627,	-- Seril's Boast
					["coord"] = { 59.3, 49.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(6604, {	-- Enraged Wildkin (1/4)
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(4861, {	-- Enraged Wildkin (2/4)
					["qg"] = 10301,	-- Jaron Stoneshaper
					["sourceQuest"] = 6604,	-- Enraged Wildkin (1/4)
					["coord"] = { 52, 30.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4863, {	-- Enraged Wildkin (3/4)
					["provider"] = { "o", 175587 },	-- Damaged Crate
					["sourceQuest"] = 4861,	-- Enraged Wildkin (2/4)
					["coord"] = { 59, 59.7, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4864, {	-- Enraged Wildkin (4/4)
					["provider"] = { "o", 175586 },	-- Jaron's Wagon
					["sourceQuest"] = 4863,	-- Enraged Wildkin (3/4)
					["coord"] = { 61.4, 60.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Jaron's Supplies
							["providers"] = {
								{ "i", 12525 },	-- Jaron's Supplies
								{ "o", 175629 },	-- Jaron's Supplies
							},
							["coord"] = { 61.4, 60.7, WINTERSPRING },
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
				q(28676, {	-- Exterminators at Work
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuest"] = 28674,	-- Starfall Village
					["coord"] = { 48.6, 41.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28464, {	-- Falling to Corruption
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 25.1, 58.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5084, {	-- Falling to Corruption
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5083,	-- Winterfall Firewater
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
				}),
				q(979, {	-- Find Ranshalla
					["qg"] = 7916,	-- Erelas Ambersky
					["sourceQuest"] = 978,	-- Moontouched Wildkin
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(28632, {	-- Fresh From The Hills
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28627,	-- Seril's Boast
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28640, {	-- Fresh Frostsabers
					["qg"] = 49396,	-- Jez Goodgrub
					["sourceQuest"] = 28718,	-- Where There's Smoke, There's Delicious Meat
					["coord"] = { 55.9, 28.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Frostsaber slain
							["providers"] = {
								{ "n", 7431},	-- Frostsaber
								{ "n", 7432},	-- Frostsaber Stalker
							},
						}),
					},
				}),
				q(4806, {	-- Frostmaul E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12436, 3 }},	-- Frostmaul E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12460, {	-- Juju Might
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12430, 3 }},	-- Frostsaber E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12450, {	-- Juju Flurry
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, NEUTRAL },	-- Wintersaber Trainers, Neutral.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
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
				q(29032, {	-- Get Them While They're Young
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 46.6, 17.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(4901, {	-- Guardians of the Altar
					["qg"] = 10300,	-- Ranshalla
					["sourceQuest"] = 979,	-- Find Ranshalla
					["coord"] = { 63, 59.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(4882, {	-- Guarding Secrets (1/2)
					["provider"] = { "i", 12558 },	-- Blue-feathered Necklace
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(28609, {	-- Hammer Time
					["qg"] = 11191,	-- Lilith the Lithe
					["coord"] = { 59.8, 49.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				heroscall(q(28544, {	-- Hero's Call: Winterspring! (breadcrumb quest for ???, not available if 28524,28545,28768 are completed) (max level 53)
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 53 (TODO: Test max level between 54 and 60)
					["lvl"] = { 49, 53 },
					-- #endif
				})),
				q(28470, {	-- High Chief Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 28469,	-- Winterfall Runners
					["coord"] = { 25.1, 58.5, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 High Chief Winterfall slain
							["provider"] = { "n", 10738 },	-- High Chief Winterfall
						}),
						i(67210, {	-- Wand of Sudden Changes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67159, {	-- Furbolg Fur Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67176, {	-- Princess Zoe's Old Hunting Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67193, {	-- Ambush Armguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5121, {	-- High Chief Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 High Chief Winterfall slain
							["provider"] = { "n", 10738 },	-- High Chief Winterfall
							["coord"] = { 69.6, 38.2, WINTERSPRING },
						}),
						i(15784, {	-- Crystal Breeze Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15786, {	-- Fernpulse Jerkin
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15787, {	-- Willow Band Hauberk
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(29038, {	-- Hunting Practice
					["providers"] = {
						{ "i", 68646 },	-- Winterspring Cub
						{ "n", 51677 },	-- Winterspring Cub
					},
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(68644),	-- Winterspring Cub Whisker
					},
				}),
				q(28628, {	-- Ice Delivery
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28632,	-- Fresh From the Hills
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(67181, {	-- Kilram's Killer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67164, {	-- Lilith the Lithe's Little Hammer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67214, {	-- Scourgebane's Slicer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67198, {	-- Scourgebane's Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12435, 3 }},	-- Ice Thistle E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(28537, {	-- In Pursuit of Shades
					["qg"] = 10920,	-- Kelek Skykeeper
					["sourceQuest"] = 28536,	-- The Curse of Zin-Malor
					["coord"] = { 46.8, 53.8, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Shard of the Spiritspeaker
							["provider"] = { "i", 64463 },	-- Shard of the Spiritspeaker
							["cr"] = 48678,	-- Shade of the Spiritspeaker
						}),
					},
				}),
				q(28624, {	-- Kilram's Boast
					["qg"] = 11192,	-- Kilram
					["sourceQuest"] = 28618,	-- Boulder Delivery
					["coord"] = { 59.8, 49.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28518, {	-- Legacy of the High Elves
					["qg"] = 48659,	-- Quel'dorei Spirit
					["sourceQuest"] = 28534,	-- Descendants of the Highborne
					["coord"] = { 50.8, 55.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Memory of Zin-Malor
							["provider"] = { "i", 64441 },	-- Memory of Zin-Malor
							["cr"] = 48740,	-- Archmage Maenius
						}),
					},
				}),
				q(969, {	-- Luck Be With You
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
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
							["coord"] = { 61.8, 68.6, WINTERSPRING },
						}),
					},
				}),
				q(28839, {	-- Magic Prehistoric
					["sourceQuest"] = 28838,	-- The Owlbeast's Defense
					["coord"] = { 57.1, 75.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Essence of the Claw-Totem
							["providers"] = {
								{ "i", 65899 },	-- Essence of the Claw-Totem
								{ "o", 207421 },	-- Owlbeast Claw-Totem
							},
						}),
						objective(2, {	-- 0/1 Essence of the Life-Totem
							["providers"] = {
								{ "i", 65900 },	-- Essence of the Life-Totem
								{ "o", 207423 },	-- Owlbeast Life-Totem
							},
						}),
						objective(3, {	-- 0/1 Essence of the Moon-Totem
							["providers"] = {
								{ "i", 65901 },	-- Essence of the Moon-Totem
								{ "o", 207422 },	-- Owlbeast Moon-Totem
							},
						}),
					},
				}),
				q(9266, {	-- Making Amends
					["qg"] = 16416,	-- Bronn Fitzwrench
					-- #if AFTER CATA
					["coord"] = { 58.0, 52.2, WINTERSPRING },
					-- #else
					["coord"] = { 59.8, 39.7, WINTERSPRING },
					-- #endif
					["maxReputation"] = { FACTION_EVERLOOK, NEUTRAL },	-- Everlook, must be less than Neutral
					["cost"] = {
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 3857, 4 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(978, {	-- Moontouched Wildkin
					["qg"] = 7916,	-- Erelas Ambersky
					["sourceQuest"] = 3661,	-- Favored of Elune?
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
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
				q(28467, {	-- Mystery Goo
					["provider"] = { "o", 207179 },	-- Winterfall Cauldron
					["sourceQuest"] = 28464,	-- Falling to Corruption
					["coord"] = { 24.4, 47.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28701, {	-- Out of Harm's Way
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuest"] = 28674,	-- Starfall Village
					["coord"] = { 48.6, 41.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Starfall Relic
							["providers"] = {
								{ "i", 64675 },	-- Starfall Relic
								{ "o", 207301 },	-- Ancient Urn
							},
						}),
					},
				}),
				q(28519, {	-- Pain of the Blood Elves
					["qg"] = 48660,	-- Sin'dorei Spirit
					["sourceQuest"] = 28535,	-- Descendants of the High Elves
					["coord"] = { 50.6, 55.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Wretched Spirit slain
							["providers"] = {
								{ "n", 48664},	-- Wretched Spirit
								{ "n", 48665},	-- Wretched Spectre
							},
						}),
						i(67161, {	-- Dagger of Wretched Spectres
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67195, {	-- Mace of the Sin'dorei Spirit
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67178, {	-- Blade of Wretched Spirits
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157021, {	-- Staff of Haunted Memory
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(67211, {	-- Orb of Kel'theril
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5057, {	-- Past Endeavors
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5056,	-- Shy-Rotam
					["coord"] = { 61.8, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						i(15704, {	-- Hunter's Insignia Medal
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28641, {	-- Pride of the Dinner Table
					["qg"] = 49396,	-- Jez Goodgrub (granted automatically. Coords are relative to player position)
					["sourceQuest"] = 28640,	-- Fresh Frostsabers
					["coord"] = { 55.9, 28.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Frostsaber Pride Watcher slain
							["providers"] = {
								{ "n", 7434},	-- Frostsaber Pride Watcher
								{ "n", 7433},	-- Frostsaber Huntress
							},
						}),
					},
				}),
				q(28513, {	-- Pride of the Highborne
					["qg"] = 48658,	-- Kaldorei Spirit
					["sourceQuest"] = 28479,	-- The Ruins of Kel'Theril
					["coord"] = { 50.7, 54.8, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Highborne spirits released
							["providers"] = {
								{ "n", 7523},	-- Suffering Highborne
								{ "n", 7524},	-- Anguished Highborne
							},
						}),
						i(67177, {	-- Amulet of the Kaldorei Spirit
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67160, {	-- Dagger of Suffering
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67194, {	-- Zin-Malor Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5981, {	-- Rampaging Giants
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, HONORED },	-- Wintersaber Trainers, Honored.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
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
				q(28829, {	-- Razor Beak and Antlers Pointy
					["qg"] = 50263,	-- Jadrag the Slicer
					["coord"] = { 61.8, 74.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Crazed Owlbeast slain
							["providers"] = {
								{ "n", 7452},	-- Crazed Owlbeast
								{ "n", 7453},	-- Moontouched Owlbeast
								{ "n", 7454},	-- Berserk Owlbeast
							},
						}),
					},
				}),
				q(5252, {	-- Remorseful Highborne
					["providers"] = {
						{ "n", 10684 },	-- Remorseful Highborne
						{ "i", 13347 },	-- Crystal of Zin-Malor (Provided)
					},
					["sourceQuest"] = 5248,	-- Tormented By the Past
					["coord"] = { 56.2, 44.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4810, {	-- Return to Tinkee
					["providers"] = {
						{ "n", 10468 },	-- Felnok Steelspring
						{ "i", 12445 },	-- Felnok's Package
					},
					["sourceQuest"] = 4809,	-- Chillwind Horns
					["coord"] = { 61.6, 38.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BURNING_STEPPES },
					["lvl"] = 50,
					["groups"] = {
						i(15862, {	-- Blitzcleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15863, {	-- Grave Scepter
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28610, {	-- Rubble Trouble
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28609,	-- Hammer Time
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Prime Rubble Chunk
							["provider"] = { "i", 64586 },	-- Prime Rubble Chunk
							["cr"] = 48960,	-- Frostshard Rumbler
						}),
					},
				}),
				q(28530, {	-- Scalding Signs
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 28467,	-- Mystery Goo
					["coord"] = { 25.1, 58.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Suspicious Green Sludge
							["provider"] = { "i", 64449 },	-- Suspicious Green Sludge
							["crs"] = {
								48767,	-- Scalding Springsurge
								48768,	-- Boiling Springbubble
							},
						}),
					},
				}),
				q(28745, {	-- Screechy Keen
					["qg"] = 49396,	-- Jez Goodgrub (granted automatically. Coords are relative to player position)
					["sourceQuest"] = 28638,	-- The Owls Have It
					["coord"] = { 55.9, 28.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Winterspring Screecher slain
							["provider"] = { "n", 7456 },	-- Winterspring Screecher
						}),
					},
				}),
				q(28627, {	-- Seril's Boast
					["qg"] = 11193,	-- Seril Scourgebane
					["sourceQuest"] = 28626,	-- Tree Delivery
					["coord"] = { 59.7, 49.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4803, {	-- Shardtooth E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12432, 3 }},	-- Shardtooth E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12455, {	-- Juju Ember
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28742, {	-- Shy-Rotam
					["qg"] = 49396,	-- Jez Goodgrub (granted automatically. Coords are relative to player position)
					["sourceQuest"] = 28641,	-- Pride of the Dinner Table
					["coord"] = { 55.9, 28.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Shy-Rotam slain
							["provider"] = { "n", 10737 },	-- Shy-Rotam
						}),
						i(67169, {	-- Shy Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67186, {	-- Shy Shrug
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67219, {	-- Breastplate of the Fifth Hunter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67203, {	-- Frostsaber Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67226, {	-- Corpse Dragger's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5056, {	-- Shy-Rotam
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5055,	-- Brumeran of the Chillwind
					["coord"] = { 61.8, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Shy-Rotam slain
							["providers"] = {
								{ "n", 10737 },	-- Shy-Rotam
								{ "o", 177684 },	-- Stone of Shy-Rotam
							},
							["coord"] = { 49.8, 9.8, WINTERSPRING },
							["cost"] = {{ "i", 12733, 1 }},	-- Sacred Frostsaber Meat
						}),
						-- #if BEFORE 4.0.3
						i(12733, {	-- Sacred Frostsaber Meat
							["crs"] = {
								7431,	-- Frostsaber
								7430,	-- Frostsaber Cub
								7433,	-- Frostsaber Huntress
								7434,	-- Frostsaber Pride Watcher
								7432,	-- Frostsaber Stalker
							},
						}),
						-- #endif
						i(15783, {	-- Beasthunter Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15782, {	-- Beaststalker Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5601, {	-- Sister Pamela
					["qg"] = 11629,	-- Jessica Redpath
					["coord"] = { 61.2, 39, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
				}),
				q(5306, {	-- Snakestone of the Shadow Huntress
					["qg"] = 11192,	-- Kilram
					-- #if BEFORE TBC
					["altQuests"] = {
						5307,	-- Corruption [Master Swordsmith]
						-- #if SEASON_OF_DISCOVERY
						84496,	-- Sweet Serenity [Master Hammersmith]
						-- #else
						5305,	-- Sweet Serenity [Master Hammersmith]
						-- #endif
					},
					-- #endif
					-- #if BEFORE 4.0.3
					["description"] = "Upon finishing this quest, you will become a Master Axesmith and be locked out of becoming a Master Hammersmith and Master Swordsmith.",
					-- #endif
					["coord"] = { 61.2, 37, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKROCK_SPIRE },
					-- #if BEFORE TBC
					["requireSkill"] = 9787,	-- Weaponsmith
					-- #else
					["requireSkill"] = BLACKSMITHING,
					-- #endif
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Vosh'gajin's Snakestone
							["provider"] = { "i", 13352 },	-- Vosh'gajin's Snakestone
							["cr"] = 9236,	-- Shadow Hunter Vosh'gajin
						}),
						i(12821, {	-- Plans: Dawn's Edge (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28707, {	-- Spray it Again
					["qg"] = 49399,	-- Remma Curtainfire
					["sourceQuest"] = 28706,	-- Spray it Forward
					["coord"] = { 45.6, 41.5, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28706, {	-- Spray it Forward
					["qg"] = 49407,	-- Rinno Curtainfire
					["coord"] = { 45.7, 41.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28710, {	-- Spray it One More Time
					["qg"] = 49400,	-- Marcy Curtainfire
					["sourceQuest"] = 28707,	-- Spray it Again
					["coord"] = { 46.2, 42.5, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(67205, {	-- Ring of Pesticide
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67171, {	-- Curtainfire Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67188, {	-- Fumigator's Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5250, {	-- Starfall
					["qg"] = 7907,	-- Daryn Lightwind
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(28674, {	-- Starfall Village
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuests"] = {
						28628,	-- Ice Delivery
						28722,	-- Yetiphobia
					},
					["coord"] = { 59.8, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(28703, {	-- Step Into My Barrow
					["qg"] = 49407,	-- Rinno Curtainfire
					["coord"] = { 45.7, 41.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Coldlurk Creeper slain
							["provider"] = { "n", 49346 },	-- Coldlurk Creeper
						}),
						objective(2, {	-- 0/5 Coldlurk Burrower slain
							["provider"] = { "n", 49347 },	-- Coldlurk Burrower
						}),
					},
				}),
				q(28656, {	-- Strange Life Forces
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["description"] = "Kill mobs at close range until you receive an E'ko buff.",
					["coords"] = {
						{ 46.3, 18.0, WINTERSPRING },
						{ 55.6, 23.6, WINTERSPRING },
						{ 63.7, 28.1, WINTERSPRING },
						{ 57.5, 40.9, WINTERSPRING },
						{ 67.6, 48.7, WINTERSPRING },
						{ 68.0, 54.1, WINTERSPRING },
						{ 60.7, 76.3, WINTERSPRING },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(4842, {	-- Strange Sources
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 980,	-- The New Springs
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 51,
					["groups"] = {
						i(15789, {	-- Deep River Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84496, {	-- Sweet Serenity
					["qg"] = 11191,	-- Lilith the Lithe
					-- #if BEFORE TBC
					["altQuests"] = {
						5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
						5307,	-- Corruption [Master Swordsmith]
					},
					-- #endif
					-- #if BEFORE 4.0.3
					["description"] = "Upon finishing this quest, you will become a Master Hammersmith and be locked out of becoming a Master Axesmith and Master Swordsmith.",
					-- #endif
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { STRATHOLME },
					-- #if BEFORE TBC
					["requireSkill"] = 9787,	-- Weaponsmith
					-- #else
					["requireSkill"] = BLACKSMITHING,
					-- #endif
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Crimson Hammersmith's Apron
							["provider"] = { "i", 13351 },	-- Crimson Hammersmith's Apron
							["cr"] = 11120,	-- Crimson Hammersmith
						}),
						i(228311, {	-- Plans: Finely-Enchanted Battlehammer (RECIPE!)
							["timeline"] = { ADDED_1_15_3 },
						}),
					},
				})),
				-- #endif
				q(5305, {	-- Sweet Serenity
					["qg"] = 11191,	-- Lilith the Lithe
					-- #if BEFORE TBC
					["altQuests"] = {
						5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
						5307,	-- Corruption [Master Swordsmith]
					},
					-- #endif
					-- #if BEFORE 4.0.3
					["description"] = "Upon finishing this quest, you will become a Master Hammersmith and be locked out of becoming a Master Axesmith and Master Swordsmith.",
					-- #endif
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["maps"] = { STRATHOLME },
					-- #if BEFORE TBC
					["requireSkill"] = 9787,	-- Weaponsmith
					-- #else
					["requireSkill"] = BLACKSMITHING,
					-- #endif
					["learnedAt"] = 250,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Crimson Hammersmith's Apron
							["provider"] = { "i", 13351 },	-- Crimson Hammersmith's Apron
							["cr"] = 11120,	-- Crimson Hammersmith
						}),
						i(12824, {	-- Plans: Enchanted Battlehammer (RECIPE!)
							["timeline"] = {
								-- #if SEASON_OF_DISCOVERY
								REMOVED_1_15_3,
								-- #else
								REMOVED_4_0_3,
								-- #endif
							},
						}),
					},
				}),
				q(28841, {	-- The Arcane Storm Within
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 28840,	-- Winterwater
					["coord"] = { 58.0, 63.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["providers"] = {
						{ "n", 11079 },	-- Wynd Nightchaser
						{ "i", 13347 },	-- Crystal of Zin-Malor (Provided)
					},
					["sourceQuest"] = 5252,	-- Remorseful Highborne
					["coord"] = { 52, 30.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						i(15791, {	-- Turquoise Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15792, {	-- Plow Wood Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15795, {	-- Emerald Mist Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28536, {	-- The Curse of Zin-Malor
					["qg"] = 48660,	-- Sin'dorei Spirit
					["sourceQuest"] = 28519,	-- Pain of the Blood Elves
					["coord"] = { 50.6, 55.0, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				{	-- The Everlook Report
					["allianceQuestData"] = q(6028, {	-- The Everlook Report (A)
						["maps"] = { WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(6029, {	-- The Everlook Report (H)
						["maps"] = { TIRISFAL_GLADES },
					}),
					["providers"] = {
						{ "n", 10431 },	-- Gregor Greystone
						{ "i", 15788 },	-- Everlook Report
					},
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
				},
				q(28471, {	-- The Final Piece
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["sourceQuest"] = 28469,	-- Winterfall Runners
					["coord"] = { 36.9, 55.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["cr"] = 10738,	-- High Chief Winterfall
				}),
				q(5123, {	-- The Final Piece
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["coord"] = { 69.6, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 10738,	-- High Chief Winterfall
					["lvl"] = 52,
				}),
				q(28838, {	-- The Owlbeasts' Defense
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 28837,	-- Altered Beasts
					["coord"] = { 58.0, 63.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Owlbeast Dreamcatcher
							["providers"] = {
								{ "i", 65902 },	-- Owlbeast Dreamcatcher
								{ "o", 207424 },	-- Abandoned Research Samples
							},
						}),
					},
				}),
				q(28638, {	-- The Owls Have It
					["qg"] = 49537,	-- Jeb Guthrie
					["coord"] = { 55.9, 28.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Winterspring Owl slain
							["provider"] = { "n", 7455 },	-- Winterspring Owl
						}),
					},
				}),
				q(28631, {	-- The Perfect Horns
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 28627,	-- Seril's Boast
					["coord"] = { 59.3, 49.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Icewhomp's Pristine Horns
							["provider"] = { "i", 64664 },	-- Icewhomp's Pristine Horns
							["cr"] = 49235,	-- Icewhomp
						}),
					},
				}),
				q(28847, {	-- The Pursuit of Umbranse
					["qg"] = 50366,	-- Nymn
					["sourceQuests"] = {
						28537,	-- In Pursuit of Shades
						28722,	-- Yetiphobia
					},
					["coord"] = { 59.6, 50.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(28479, {	-- The Ruins of Kel'Theril
					["qg"] = 10920,	-- Kelek Skykeeper
					["coords"] = {
						{ 51.2, 80.3, FELWOOD },
						{ 46.8, 53.8, WINTERSPRING },
					},
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuests"] = {
						5250,	-- Starfall
						5249,	-- To Winterspring!
					},
					["coord"] = { 52, 30.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(29034, {	-- They Grow Up So Fast
					["qg"] = 10618,	-- Rivern Frostwind
					["sourceQuest"] = 29032,	-- Get Them While They're Young
					["description"] = "This quest must remain in your quest log to do the relevant daily quests.",
					["coord"] = { 46.6, 17.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {
						{ "i", 68644, 20 },	-- Winterspring Cub Whisker
						{ "i", 14047, 20 },	-- Runecloth
						{ "i", 8170, 20 },	-- Rugged Leather
						{ "g", 800000 },	-- 80g
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13086),	-- Winterspring Frostsaber (MOUNT!)
					},
				}),
				q(28460, {	-- Threat of the Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuests"] = {
						28524,	-- Delivery for Donova
						28544,	-- Hero's Call: Winterspring!
						28545,	-- Warchief's Command: Winterspring!
						28768,	-- Winterspring!
					},
					["coord"] = { 25.1, 58.4, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Winterfall Furbolg slain
							["providers"] = {
								{ "n", 48586},	-- Winterfall Kill Credit
								{ "n", 7440},	-- Winterfall Den Watcher
								{ "n", 7441},	-- Winterfall Totemic
								{ "n", 7442},	-- Winterfall Pathfinder
								{ "n", 10916},	-- Winterfall Runner
							},
						}),
						i(67158, {	-- Donova's Fuzzy Robe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67175, {	-- Hot Spring Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67192, {	-- Snowden Legwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67209, {	-- Winterfall Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5082, {	-- Threat of the Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 6603,	-- Trouble in Winterspring!
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 50.8, 81.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(5086, {	-- Toxic Horrors
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5085,	-- Mystery Goo
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/3 Toxic Horror Droplet
							["provider"] = { "i", 12822 },	-- Toxic Horror Droplet
							["cr"] = 7132,	-- Toxic Horror
						}),
					},
				}),
				q(28848, {	-- Trailing the Spiritspeaker
					["qg"] = 10920,	-- Kelek Skykeeper
					["sourceQuest"] = 28537,	-- In Pursuit of Shades
					["coord"] = { 46.8, 53.8, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28626, {	-- Tree Delivery
					["qg"] = 48965,	-- Deez Rocksnitch
					["sourceQuest"] = 28625,	-- Chop Chop
					["coord"] = { 59.7, 49.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(6603, {	-- Trouble in Winterspring!
					["qg"] = 11754,	-- Meggi Peppinrocker
					["coord"] = { 61.4, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 52,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["qg"] = 10301,	-- Jaron Stoneshaper
					["sourceQuest"] = 5244,	-- The Ruins of Kel'Theril
					["coord"] = { 52, 30.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 First Relic Fragment
							["providers"] = {
								{ "i", 12896 },	-- First Relic Fragment
								{ "o", 175888 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 55, 42, WINTERSPRING },
						}),
						objective(2, {	-- 0/1 Second Relic Fragment
							["providers"] = {
								{ "i", 12897 },	-- Second Relic Fragment
								{ "o", 175891 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 50, 41, WINTERSPRING },
						}),
						objective(3, {	-- 0/1 Third Relic Fragment
							["providers"] = {
								{ "i", 12898 },	-- Third Relic Fragment
								{ "o", 175892 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 53, 43, WINTERSPRING },
						}),
						objective(4, {	-- 0/1 Fourth Relic Fragment
							["providers"] = {
								{ "i", 12899 },	-- Fourth Relic Fragment
								{ "o", 175893 },	-- Highborne Relic Fragment
								{ "i", 12891 },	-- Jaron's Pick
							},
							["coord"] = { 52, 41, WINTERSPRING },
						}),
					},
				}),
				q(28615, {	-- Turning the Earth
					["qg"] = 48723,	-- Tanrir
					["coord"] = { 65.3, 46.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28842, {	-- Umbranse's Deliverance
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 28840,	-- Winterwater
					["coord"] = { 58.0, 63.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Umbranse the Spiritspeaker slain
							["provider"] = { "n", 50325 },	-- Umbranse the Spiritspeaker
						}),
						i(67222, {	-- Umbranse's Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67174, {	-- Bracers of Mazthoril
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67191, {	-- Dreamcatcher Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67208, {	-- Nam's Gauntlets
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28639, {	-- Ursius
					["qg"] = 49436,	-- Francis Morcott (granted automatically. Coords are relative to player position)
					["sourceQuest"] = 28719,	-- A Little Gamy
					["coord"] = { 55.8, 28.2, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Ursius slain
							["provider"] = { "n", 10806 },	-- Ursius
						}),
						i(67167, {	-- Shardtooth Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67184, {	-- Ursius's Cap
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67217, {	-- Bracers of Considerable Influence
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67201, {	-- Bear Oiled Chainmail
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67224, {	-- Morcott's Bow
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["qg"] = 10303,	-- Storm Shadowhoof
					["coord"] = { 61.8, 38.4, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Ursius slain
							["provider"] = { "n", 10806 },	-- Ursius
						}),
					},
				}),
				warchiefscommand(q(28545, {	-- Warchief's Command: Winterspring!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 53. (TODO: Test max level)
					["lvl"] = { 49, 53 },
					-- #endif
				})),
				q(28718, {	-- Where There's Smoke, There's Delicious Meat
					["qg"] = 49402,	-- Sana Curtainfire
					["sourceQuest"] = 28710,	-- Spray it One More Time
					["coord"] = { 48.0, 40.6, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(4807, {	-- Wildkin E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12433, 3 }},	-- Wildkin E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12458, {	-- Juju Guile
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 975,	-- Cache of Mau'ari
					["coord"] = { 61.8, 38.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 12431, 3 }},	-- Winterfall E'ko
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12451, {	-- Juju Power
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5083, {	-- Winterfall Firewater
					["provider"] = { "i", 12771 },	-- Empty Firewater Flask
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
					["lvl"] = 52,
				}),
				q(5201, {	-- Winterfall Intrusion
					["qg"] = 10618,	-- Rivern Frostwind
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, NEUTRAL + 1500 },	-- Wintersaber Trainers, Neutral + 1500.
					["maxReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
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
				q(28469, {	-- Winterfall Runners
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 28467,	-- Mystery Goo
					["coord"] = { 25.1, 58.5, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Winterfall Crate
							["provider"] = { "i", 12829 },	-- Winterfall Crate
							["cr"] = 10916,	-- Winterfall Runner
						}),
					},
				}),
				q(5087, {	-- Winterfall Runners
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5086,	-- Toxic Horrors
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/1 Winterfall Crate
							["provider"] = { "i", 12829 },	-- Winterfall Crate
							["coord"] = { 28.4, 37.8, WINTERSPRING },
							["cr"] = 10916,	-- Winterfall Runner
						}),
					},
				}),
				q(28840, {	-- Winterwater
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 28839,	-- Magic Prehistoric
					["coord"] = { 58.0, 63.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Winterwater
							["provider"] = { "i", 65903 },	-- Winterwater
							["crs"] = {
								50250,	-- Ice Avatar
								50251,	-- Frostilicus
							},
						}),
						i(67173, {	-- Haleh's Warm Legwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67190, {	-- Ice Avatar Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67207, {	-- Winterwater Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28472, {	-- Words of the High Chief
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 28471,	-- The Final Piece
					["coord"] = { 25.1, 58.5, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(13158),	-- Words of the High Chief
						i(34424, {	-- Power of the High Chief
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(34423, {	-- Strength of the High Chief
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(5128, {	-- Words of the High Chief
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5123,	-- The Final Piece
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						i(13158),	-- Words of the High Chief
						i(34424, {	-- Power of the High Chief
							["timeline"] = { ADDED_2_3_0 },
						}),
						i(34423, {	-- Strength of the High Chief
							["timeline"] = { ADDED_2_3_0 },
						}),
					},
				}),
				q(28722, {	-- Yetiphobia
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuests"] = {
						28629,	-- Are We There, Yeti?
						28631,	-- The Perfect Horns
					},
					["coord"] = { 59.3, 49.7, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Scare Legacki
							["providers"] = {
								{ "n", 10978 },	-- Legacki
								{ "i", 12928 },	-- Umi's Mechanical Yeti
							},
						}),
						i(67223, {	-- Umi's Masterful Shooter
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67165, {	-- Everlook Snow Shoes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67182, {	-- Helm of Yetiphobia
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67199, {	-- Prankster's Fingers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67215, {	-- Amusing Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(28828, {	-- You Gotta Have Eggs
					["qg"] = 49396,	-- Jez Goodgrub
					["coord"] = { 55.9, 28.1, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/40 Chillwind Egg
							["providers"] = {
								{ "i", 65890 },	-- Chillwind Egg
								{ "o", 207293 },	-- Chillwind Eggs
							},
						}),
						i(67220, {	-- Goodgrub Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67170, {	-- Gourmand's Sash
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67187, {	-- Snow Nest Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67204, {	-- Chillwind Scale Armguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67227, {	-- Chimaera Heart Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(51045, {	-- Arcanus
					["coord"] = { 48.0, 59.6, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10202, {	-- Azurous
					-- #if AFTER CATA
					["coords"] = {
						{ 58.0, 56.0, WINTERSPRING },
						{ 59.8, 53.8, WINTERSPRING },
						{ 61.2, 54.6, WINTERSPRING },
						{ 63.0, 54.8, WINTERSPRING },
						{ 65.6, 58.0, WINTERSPRING },
						{ 65.8, 61.0, WINTERSPRING },
						{ 65.8, 64.6, WINTERSPRING },
						{ 66.0, 67.8, WINTERSPRING },
					},
					-- #else
					["coords"] = {
						{ 57.2, 45.6, WINTERSPRING },
						{ 61.8, 40.4, WINTERSPRING },
						{ 63.0, 40.8, WINTERSPRING },
						{ 64.8, 43.0, WINTERSPRING },
						{ 66.4, 45.6, WINTERSPRING },
						{ 66.6, 53.4, WINTERSPRING },
					},
					-- #endif
				}),
				n(50997, {	-- Bornak the Gorer
					["coords"] = {
						{ 59.6, 17.4, WINTERSPRING },
						{ 62.4, 24.8, WINTERSPRING },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50995, {	-- Bruiser
					["coord"] = { 65.6, 42.8, WINTERSPRING },
					["timeline"] = { ADDED_5_2_0 },
				}),
				o(240616, {	-- Frozen Supplies
					["description"] = "Loot the Frozen Supplies in a nook at the base of the pillar.",
					["coord"] = { 68.0, 73.9, WINTERSPRING },
					["timeline"] = { ADDED_6_1_0 },
					["groups"] = {
						i(122224, {	-- Music Roll: Mountains
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				n(50993, {	-- Gal'dorak
					["coord"] = { 35.6, 48.8, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10196, {	-- General Colbatann
					-- #if AFTER CATA
					["coords"] = {
						{ 55.8, 64.6, WINTERSPRING },
						{ 57.2, 65.8, WINTERSPRING },
						{ 58.6, 65.6, WINTERSPRING },
						{ 59.4, 65.0, WINTERSPRING },
						{ 60.6, 64.0, WINTERSPRING },
						{ 62.8, 63.6, WINTERSPRING },
					},
					-- #else
					["coords"] = {
						{ 54.6, 51.6, WINTERSPRING },
						{ 57.6, 50.0, WINTERSPRING },
						{ 59.6, 49.2, WINTERSPRING },
						{ 61.2, 49.4, WINTERSPRING },
					},
					-- #endif
				}),
				n(10199, {	-- Grizzle Snowpaw
					-- #if AFTER CATA
					["coord"] = { 68.6, 50.2, WINTERSPRING },
					-- #else
					["coords"] = {
						{ 67.0, 35.2, WINTERSPRING },
						{ 67.2, 37.6, WINTERSPRING },
						{ 68.6, 36.0, WINTERSPRING },
						{ 69.2, 38.6, WINTERSPRING },
					},
					-- #endif
				}),
				n(50819, {	-- Iceclaw
					["coord"] = { 52.0, 18.8, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10198, {	-- Kashoch the Reaver
					-- #if AFTER CATA
					["coord"] = { 61.2, 83.8, WINTERSPRING },
					-- #else
					["coords"] = {
						{ 62.0, 69.2, WINTERSPRING },
						{ 63.6, 69.8, WINTERSPRING },
					},
					-- #endif
				}),
				n(10201, {	-- Lady Hederine
					["coords"] = {
						{ 65.0, 80.2, WINTERSPRING },
						{ 51.6, 84.4, WINTERSPRING },
						{ 54.6, 87.4, WINTERSPRING },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(50353, {	-- Manas
					["coord"] = { 64.0, 80.0, WINTERSPRING },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(10197, {	-- Mezzir the Howler
					-- #if AFTER CATA
					["coord"] = { 24.2, 51.6, WINTERSPRING },
					-- #else
					["coords"] = {
						{ 30.6, 38.4, WINTERSPRING },
						{ 30.6, 46.0, WINTERSPRING },
						{ 39.8, 36.4, WINTERSPRING },
						{ 45.0, 38.0, WINTERSPRING },
					},
					-- #endif
				}),
				n(50348, {	-- Norissis
					["coord"] = { 59.6, 24.0, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(14457, {	-- Princess Tempestria
					-- TODO: Move this to an Elemental Invasion World Event file.
					["description"] = "This is only available during an Elemental Invasion.",
					["coord"] = { 54.6, 42.6, WINTERSPRING },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(21548, {	-- Pattern: Stormshroud Gloves (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(7091),	-- Pattern: Truefaith Gloves
						-- #endif
						i(18679, {	-- Frigid Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18678, {	-- Tempestria's Frozen Necklace
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
						-- #endif
					},
				}),
				n(50788, {	-- Quetzl
					["coord"] = { 67.0, 83.6, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
					["groups"] = {
						i(4191, {	-- Owlbeast Leggings
							["timeline"] = { ADDED_10_1_7 },	-- ATT Discord 10.09.2023
						}),
					},
				}),
				n(10200, {	-- Rak'shiri
					-- #if AFTER CATA
					["coords"] = {
						{ 47.6, 18.2, WINTERSPRING },
						{ 47.0, 19.6, WINTERSPRING },
						{ 46.2, 18.6, WINTERSPRING },
					},
					-- #else
					["coords"] = {
						{ 50.0, 8.0, WINTERSPRING },
						{ 50.0, 11.2, WINTERSPRING },
						{ 50.4, 20.4, WINTERSPRING },
						{ 51.8, 17.2, WINTERSPRING },
						{ 55.6, 14.0, WINTERSPRING },
					},
					-- #endif
				}),
				n(50346, {	-- Ronak
					["coord"] = { 59.6, 42.8, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
				-- #if AFTER CATA
				n(10741, {	-- Sian-Rotam
					-- NOTE: Originally an Elite quest mob, converted to a Rare with Cata.
					["coord"] = { 45.8, 17.6, WINTERSPRING },
				}),
				-- #endif
				n(51028, {	-- The Deep Tunneler
					["coord"] = { 50.6, 72.2, WINTERSPRING },
					["timeline"] = { ADDED_5_1_0 },
				}),
			}),
			-- #if BEFORE 3.1.0
			prof(SKINNING, {
				i(15423, {	-- Chimera Leather
					["timeline"] = { REMOVED_3_1_0 },
					["crs"] = {
						10807,	-- Brumeran
						7449,	-- Chillwind Ravager
					},
				}),
				i(15422, {	-- Frostsaber Leather
					["timeline"] = { REMOVED_3_1_0 },
					["crs"] = {
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_FOUR, i(226419, {	-- Rune of Feral Combat Specialization
					["provider"] = { "o", 457098 },	-- Finding Your Inner Feline: A Guide to Modern Druidism
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 49.6, 8.8, WINTERSPRING },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(453703, {	-- Engrave Ring - Feral Combat Specialization
							["classes"] = { DRUID },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_FOUR, i(226415, {	-- Rune of Frost Specialization
					["provider"] = { "o", 457095 },	-- Elements for Dummies Volume I: Frost
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 58.9, 59.9, WINTERSPRING },
					["classes"] = { HUNTER, SHAMAN, MAGE },
					["groups"] = {
						recipe(453697, {	-- Engrave Ring - Frost Specialization
							["classes"] = { HUNTER, SHAMAN, MAGE },
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(50129, {	-- Daleohm <Blacksmithing Supplies>
					["coord"] = { 58.0, 63.8, WINTERSPRING },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(12836, {	-- Plans: Frostguard (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(11188, {	-- Evie Whirlbrew <Alchemy Supplies>
					-- #if AFTER CATA
					["coord"] = { 59.2, 50.0, WINTERSPRING },
					-- #else
					["coord"] = { 60.8, 37.8, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(20013, {	-- Recipe: Living Action Potion (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(13480, {	-- Recipe: Major Healing Potion (RECIPE!)
							["timeline"] = { REMOVED_2_0_1 },	-- Moved to Trainers
						}),
					},
				}),
				n(11187, {	-- Himmik <Food & Drink>
					-- #if AFTER CATA
					["coord"] = { 59.8, 51.6, WINTERSPRING },
					-- #else
					["coord"] = { 61.2, 39.0, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				n(52830, {	-- Michelle De Rum <Pet Collector>
					["coord"] = { 59.8, 51.6, WINTERSPRING },
					["timeline"] = { ADDED_4_1_0 },
					["groups"] = {
						i(69239, {	-- Winterspring Cub (PET!)
							["timeline"] = { ADDED_4_1_0 },
						}),
					},
				}),
				n(11189, {	-- Qia <Trade Supplies>
					-- #if AFTER CATA
					["coord"] = { 59.6, 49.2, WINTERSPRING },
					-- #else
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(21957, {	-- Design: Necklace of the Diamond Tower
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(16221, {	-- Formula: Enchant Chest - Major Health (RECIPE!)
							["isLimited"] = true,
						}),
						i(15740, {	-- Pattern: Frostsaber Boots (RECIPE!)
							["isLimited"] = true,
						}),
						i(14526),	-- Pattern: Mooncloth
						i(14468, {	-- Pattern: Runecloth Bag
							["isLimited"] = true,
						}),
						i(14481, {	-- Pattern: Runecloth Gloves
							["timeline"] = { REMOVED_2_0_1 },	-- Moved to Trainers
							-- #if BEFORE TBC
							["isLimited"] = true,
							-- #endif
						}),
					},
				}),
				n(10618, {	-- Rivern Frostwind <Wintersaber Trainer>
					["minReputation"] = { FACTION_WINTERSABER_TRAINERS, EXALTED },	-- Wintersaber Trainers, Exalted.
					-- #if AFTER CATA
					["coord"] = { 46.6, 17.6, WINTERSPRING },
					-- #else
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						ach(3356, {	-- Winterspring Frostsaber
							["provider"] = { "i", 13086 },	-- Reins of the Winterspring Frostsaber
							["races"] = ALLIANCE_ONLY,
							["f"] = MOUNTS,
						}),
						-- #endif
						i(13086),	-- Winterspring Frostsaber (MOUNT!)
					},
				}),
				n(16015, {	-- Vi'el <Exotic Reagent Merchant>
					-- #if AFTER CATA
					["coord"] = { 61.6, 87.6, WINTERSPRING },
					-- #else
					["coord"] = { 58.9, 78.4, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(21939, {	-- Fel Elemental Rod
							["cost"] = 400000,	-- 40g
						}),
						i(207295, {	-- Grimoire of the Dreadfire Imp (CI!)
							["timeline"] = { ADDED_10_1_5 },
						}),
					},
				}),
				n(11184, {	-- Wixxrak <Weaponsmith & Gunsmith>
					-- #if AFTER 7.1.5.23360
					["sourceQuest"] = 44952,	-- Blackrock Depths: Jewel of the Depths
					["description"] = "Must have completed the quest 'Blackrock Depths: Jewel of the Depths' before he'll sell you the plans.",
					-- #endif
					-- #if AFTER CATA
					["coord"] = { 60.2, 50.2, WINTERSPRING },
					-- #else
					["coord"] = { 61.6, 38.0, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(142357, {	-- Plans: Dawn's Edge (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
				n(11185, {	-- Xizzer Fizzbolt <Engineering Supplies>
					-- #if AFTER CATA
					["coord"] = { 59.2, 50.8, WINTERSPRING },
					-- #else
					["coord"] = { 60.8, 38.6, WINTERSPRING },
					-- #endif
					["groups"] = {
						i(16050, {	-- Schematic: Delicate Arcanite Converter (RECIPE!)
							["isLimited"] = true,
						}),
						i(32381, {	-- Schematic: Fused Wiring (RECIPE!)
							["timeline"] = { ADDED_2_1_0, REMOVED_5_0_4 },
							-- #if BEFORE 5.0.4
							["isLimited"] = true,
							-- #endif
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
							["timeline"] = { REMOVED_2_1_0 },	-- Taught by Trainer
							-- #if BEFORE 2.1.0
							["isLimited"] = true,
							-- #endif
						}),
						i(201794, {	-- Schematic: Tranquil Mechanical Yeti
							["timeline"] = { ADDED_10_0_2 },
							["description"] = "Available for purchase after you complete |cFFFFD700Yetiphobia|r quest.",
							["isLimited"] = true,
							["sourceQuest"] = 28722,	-- Yetiphobia
						}),
					},
				}),
				n(14742, {	-- Zap Farflinger <Unbalanced Engineer>
					["description"] = "Goblin Engineers can speak to Zap to learn the recipe.",
					["requireSkill"] = GOBLIN_ENGINEERING,
					-- #if AFTER CATA
					["coord"] = { 59.6, 49.8, WINTERSPRING },
					-- #else
					["coord"] = { 61.2, 37.6, WINTERSPRING },
					-- #endif
					["groups"] = {
						r(23486),	-- Dimensional Ripper - Everlook
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if AFTER CATA
				-- Originally a zone drop of Azshara, was moved to Winterspring after.
				i(34535, {	-- Azure Whelpling (PET!)
					["timeline"] = { ADDED_2_3_0 },
				}),
				-- #endif
				i(12434, {	-- Chillwind E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7449,	-- Chillwind Ravager
						7448,	-- Chillwind Chimaera
						7447,	-- Fledgling Chillwind
					},
				}),
				i(12771, {	-- Empty Firewater Flask
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(16223, {	-- Formula: Enchant Weapon - Icy Chill (RECIPE!)
					["cr"] = 7524,	-- Anguished Highborne
				}),
				i(12436, {	-- Frostmaul E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				}),
				i(12430, {	-- Frostsaber E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["timeline"] = { REMOVED_4_0_3 },
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
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },	-- Likely was never removed
					["crs"] = {
						7459,	-- Ice Thistle Matriarch
						7460,	-- Ice Thistle Patriarch
						7458,	-- Ice Thistle Yeti
						7457,	-- Rogue Ice Thistle
					},
				}),
				i(18704, {	-- Mature Blue Dragon Sinew
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7435,	-- Cobalt Wyrmkin
						7436,	-- Cobalt Scalebane
						7437,	-- Cobalt Mageweaver
						10196,	-- General Colbatann
						10663,	-- Manaclaw
						10664,	-- Scryer
					},
				}),
				i(4191, {	-- Owlbeast Leggings
					["timeline"] = { ADDED_10_1_7 },	-- ATT Discord 10.09.2023
					["crs"] = {
						50788,	-- Quetzl (Rare)
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
					["coords"] = {
						{ 65.0, 74.0, WINTERSPRING },
						{ 65.8, 75.6, WINTERSPRING },
						{ 64.6, 80.8, WINTERSPRING },
						{ 62.8, 75.0, WINTERSPRING },
						{ 65.2, 76.6, WINTERSPRING },
						{ 57.6, 75.2, WINTERSPRING },
					},
				}),
				i(15761, {	-- Pattern: Frostsaber Gloves (RECIPE!)
					["cr"] = 7441,	-- Winterfall Totemic
					["timeline"] = { REMOVED_7_3_5, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if BEFORE 4.0.3
					["coords"] = {
						{ 41.6, 42.8, WINTERSPRING },
						{ 33.0, 36.8, WINTERSPRING },
					},
					-- #elseif AFTER 10.1.7
					["coords"] = {
						{ 35.4, 57.0, WINTERSPRING },
						{ 24.4, 47.6, WINTERSPRING },
					},
					-- #endif
				}),
				i(15747, {	-- Pattern: Frostsaber Leggings (RECIPE!)
					["cr"] = 7440,	-- Winterfall Den Watcher
					["timeline"] = { REMOVED_7_3_5, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if BEFORE 4.0.3
					["coords"] = {
						{ 68.0, 35.6, WINTERSPRING },
						{ 41.6, 42.8, WINTERSPRING },
						{ 33.6, 36.8, WINTERSPRING },
					},
					-- #elseif AFTER 10.1.7
					["coords"] = {
						{ 35.4, 57.0, WINTERSPRING },
						{ 27.6, 48.6, WINTERSPRING },
						{ 23.6, 50.8, WINTERSPRING },
					},
					-- #endif
				}),
				i(15779, {	-- Pattern: Frostsaber Tunic (RECIPE!)
					["cr"] = 7438,	-- Winterfall Ursa
					["timeline"] = { REMOVED_7_3_5, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if BEFORE 4.0.3
					["coords"] = {
						{ 69.6, 38.2, WINTERSPRING },
						{ 65.6, 37.6, WINTERSPRING },
					},
					-- #elseif AFTER 10.1.7
					["coords"] = {
						{ 68.2, 46.8, WINTERSPRING },
						{ 66.2, 49.4, WINTERSPRING },
					},
					-- #endif
				}),
				i(14493, {	-- Pattern: Robe of Winter Night
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 7437,	-- Cobalt Mageweaver
					-- Wont return, its on timewalking vendor
				}),
				i(13497, {	-- Recipe: Greater Arcane Protection Potion (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 7437,	-- Cobalt Mageweaver
					-- Wont return, its on timewalking vendor
				}),
				i(13495, {	-- Recipe: Greater Frost Protection Potion (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					-- #if BEFORE 4.0.3
					["cr"] = 7428,	-- Frostmaul Giant
					["coords"] = {
						{ 64.2, 69.0, WINTERSPRING },
						{ 61.8, 68.6, WINTERSPRING },
					},
					-- #elseif AFTER 10.1.7
					["crs"] = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
						50258,	-- Frostmaul Tumbler
					},
					["coords"] = {
						{ 63.2, 89.8, WINTERSPRING },
						{ 57.8, 86.6, WINTERSPRING },
						{ 56.2, 83.4, WINTERSPRING },
					},
					-- #endif
				}),
				i(16054, {	-- Schematic: Arcanite Dragonling
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 7437,	-- Cobalt Mageweaver
					--[[["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
					-- #if BEFORE 4.0.3
					["cr"] = 570,	-- Brain Eater
					["coords"] = {
						{ 23.4, 35.4, WINTERSPRING },
						{ 25.4, 35.4, WINTERSPRING },
					},
					-- #elseif AFTER 10.1.7
					["crs"] = {
						604,	-- Plague Spreader
						3,		-- Flesh Eater
					},
					["coords"] = {
						{ 23.4, 35.4, WINTERSPRING },
						{ 17.8, 33.4, WINTERSPRING },
						{ 19.8, 46.8, WINTERSPRING },
					},
					-- #endif
					--]]
				}),
				i(12432, {	-- Shardtooth E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7446,	-- Rabid Shardtooth
						7445,	-- Elder Shardtooth
						7443,	-- Shardtooth Mauler
						7444,	-- Shardtooth Bear
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PRIEST },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
				i(12433, {	-- Wildkin E'ko
					["provider"] = { "i", 12384 },	-- Cache of Mau'ari
					["timeline"] = { REMOVED_4_0_3 },
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
					["timeline"] = { REMOVED_4_0_3 },
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
					-- #if BEFORE 4.0.3
					["description"] = "Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. Each turn in requires 5 Winterfall Spirit Beads. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
					-- #else
					["description"] = "Drops commmonly from all Winterfall furbolgs, and can be turned in to the NPC named Salfa for Timbermaw Hold reputation. The inital turn in requires 10 Winterfall Spirit Beads, and all following requires 5. Salfa can be found in the westernmost part of the zone, by the entrance to Timbermaw Hold.",
					-- #endif
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
