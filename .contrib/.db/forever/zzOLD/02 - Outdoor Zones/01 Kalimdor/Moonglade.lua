---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.MOONGLADE, {
		["lore"] = "Moonglade is both home of the Cenarion Circle and a haven for all druids. It is an uncorrupted neutral zone, protected by mountains and shrouded in green light, without any hostile mobs or gathering resources. The main village of Nighthaven is maintained by the Cenarion Circle and features druid trainers and a rare robe vendor, Geenia Sunshadow, who sells items like Formal Dangui.",
		["icon"] = 135758,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(855),	-- Explore Moonglade
			}),
			explorationHeader({
				exploration(656),	-- Lake Elune'ara
				exploration(2361),	-- Nighthaven
			}),
			n(FLIGHT_PATHS, {
				fp(49, {	-- Moonglade
					["cr"] = 10897,	-- Sindrayl <Hippogryph Master>
					["coord"] = { 48.0, 67.2, MAP.MOONGLADE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(69, {	-- Moonglade
					["cr"] = 12740,	-- Faustron <Wind Rider Master>
					["coord"] = { 32.2, 66.6, MAP.MOONGLADE },
					["races"] = HORDE_ONLY,
				}),
				fp(63, {	-- Nighthaven, Moonglade
					["cr"] = 11800,	-- Silva Fil'naveth <Darnassus Flight Master>
					["coord"] = { 44.2, 45.2, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(62, {	-- Nighthaven, Moonglade
					["cr"] = 11798,	-- Bunthen Plainswind <Thunder Bluff Flight Master>
					["coord"] = { 44.4, 45.6, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(26, {	-- A Lesson to Learn [A]
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				q(27, {	-- A Lesson to Learn [H]
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				{	-- Aquatic Form
					["allianceQuestData"] = q(5061, {	-- Aquatic Form [A]
						["sourceQuest"] = 272,	-- Trial of the Sea Lion [A]
					}),
					["hordeQuestData"] = q(31, {	-- Aquatic Form [H]
						["sourceQuest"] = 30,	-- Trial of the Sea Lion [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						recipe(1066),	-- Aquatic Form
						i(16608),	-- Aquarius Belt
					},
				},
				q(5931, {	-- Back to Darnassus
					["sourceQuest"] = 5929,	-- Great Bear Spirit [A]
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(5932, {	-- Back to Thunder Bluff
					["sourceQuest"] = 5930,	-- Great Bear Spirit [H]
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["maps"] = { MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(6001, {	-- Body and Heart [A]
					["sourceQuest"] = 5931,	-- Back to Darnassus
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, MAP.DARNASSUS },
					["maps"] = { MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Face Lunaclaw and earn the strength of body and heart it possesses.
							["provider"] = { "n", 12138 },	-- Lunaclaw
							["cost"] = { { "i", 15208, 1 } },	-- Cenarion Moondust
							["coord"] = { 43.0, 45.0, MAP.DARKSHORE },
						}),
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnownHelper(9634) then
									if not _.CurrentCharacter.Spells[5487] then
										_.CurrentCharacter.Spells[5487] = 2;
										ATTAccountWideData.Spells[5487] = 1;
									end
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(6002, {	-- Body and Heart [H]
					["sourceQuest"] = 5932,	-- Back to Thunder Bluff
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Face Lunaclaw and earn the strength of body and heart it possesses.
							["provider"] = { "n", 12138 },	-- Lunaclaw
							["cost"] = { { "i", 15710, 1 } },	-- Cenarion Lunardust
							["coord"] = { 42.0, 60.0, MAP.THE_BARRENS },
						}),
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnownHelper(9634) then
									if not _.CurrentCharacter.Spells[5487] then
										_.CurrentCharacter.Spells[5487] = 2;
										ATTAccountWideData.Spells[5487] = 1;
									end
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				{	-- Great Bear Spirit
					["allianceQuestData"] = q(5929, {	-- Great Bear Spirit [A]
						["sourceQuest"] = 5921,	-- Moonglade [A]
					}),
					["hordeQuestData"] = q(5930, {	-- Great Bear Spirit [H]
						["sourceQuest"] = 5922,	-- Moonglade [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["lvl"] = 10,
				},
				q(5923, {	-- Heeding the Call [Darnassus]
					["qg"] = 4218,	-- Denatharion <Druid Trainer>
					["coord"] = { 34.8, 7.8, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5924, {	-- Heeding the Call [Stormwind City]
					["qg"] = 5505,	-- Theridran <Druid Trainer>
					["coord"] = { 36.2, 64.2, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5925, {	-- Heeding the Call [Teldrassil]
					["qg"] = 3602,	-- Kal <Druid Trainer>
					["coord"] = { 56.0, 61.6, MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5926, {	-- Heeding the Call [Thunder Bluff]
					["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
					["coord"] = { 45.8, 64.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5927, {	-- Heeding the Call [Orgrimmar]
					["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
					["coord"] = { 54.2, 68.4, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5928, {	-- Heeding the Call [Mulgore]
					["qg"] = 3064,	-- Gennia Runetotem <Druid Trainer>
					["coord"] = { 48.4, 59.6, MAP.MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6121, {	-- Lessons Anew [A]
					["sourceQuests"] = {
						5923,	-- Heeding the Call [Darnassus]
						5924,	-- Heeding the Call [Stormwind City]
						5925,	-- Heeding the Call [Teldrassil]
					},
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(6126, {	-- Lessons Anew [H]
					["sourceQuests"] = {
						5926,	-- Heeding the Call [Thunder Bluff]
						5927,	-- Heeding the Call [Orgrimmar]
						5928,	-- Heeding the Call [Mulgore]
					},
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(5921, {	-- Moonglade [A]
					["sourceQuests"] = {
						5923,	-- Heeding the Call [Darnassus]
						5924,	-- Heeding the Call [Stormwind City]
						5925,	-- Heeding the Call [Teldrassil]
					},
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
				}),
				q(5922, {	-- Moonglade [H]
					["sourceQuests"] = {
						5926,	-- Heeding the Call [Thunder Bluff]
						5927,	-- Heeding the Call [Orgrimmar]
						5928,	-- Heeding the Call [Mulgore]
					},
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
				}),
				{	-- Power over Poison
					["allianceQuestData"] = q(6125, {	-- Power over Poison [A]
						["sourceQuest"] = 6124,	-- Curing the Sick [A]
						["maps"] = { MAP.DARNASSUS },
					}),
					["hordeQuestData"] = q(6130, {	-- Power over Poison [H]
						["sourceQuest"] = 6129,	-- Curing the Sick [H]
						["maps"] = { MAP.THUNDER_BLUFF },
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						recipe(8946),	-- Cure Poison
					},
				},
				q(6762, {	-- Rabine Saturna [A]
					["sourceQuest"] = 6761,	-- The New Frontier (2/2) [Darnassus]
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1123, {	-- Rabine Saturna [H]
					["sourceQuests"] = {
						1000,	-- The New Frontier [Thunder Bluff]
						1004,	-- The New Frontier [Undercity]
						1018,	-- The New Frontier [Orgrimmar]
					},
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.4, 28.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1015, {	-- The New Frontier [Stormwind City]
					["altQuests"] = {
						1019,	-- The New Frontier [Ironforge]
						1047,	-- The New Frontier [Darnassus]
					},
					["qg"] = 2198,	-- Crier Goodman
					["coord"] = { 54.8, 62.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1019, {	-- The New Frontier [Ironforge]
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1047,	-- The New Frontier [Darnassus]
					},
					["qg"] = 10877,	-- Courier Hammerfall
					["coord"] = { 31.6, 67.0, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1047, {	-- The New Frontier (1/2) [Darnassus]
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,	-- The New Frontier [Ironforge]
					},
					["qg"] = 10878,	-- Herald Moonstalker
					["coord"] = { 36.4, 39.8, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(6761, {	-- The New Frontier (2/2) [Darnassus]
					["sourceQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,	-- The New Frontier [Ironforge]
						1047,	-- The New Frontier (1/2) [Darnassus]
					},
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["coord"] = { 34.8, 8.8, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1000, {	-- The New Frontier [Thunder Bluff]
					["altQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1004,	-- The New Frontier [Undercity]
					},
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1004, {	-- The New Frontier [Undercity]
					["altQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1000,	-- The New Frontier [Thunder Bluff]
					},
					["qg"] = 10879,	-- Harbinger Balthazad
					["coord"] = { 68.8, 48.4, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1018, {	-- The New Frontier [Orgrimmar]
					["altQuests"] = {
						1000,	-- The New Frontier [Thunder Bluff]
						1004,	-- The New Frontier [Undercity]
					},
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(6122, {	-- The Principal Source [A]
					["sourceQuest"] = 6121,	-- Lessons Anew [A]
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["maps"] = { MAP.DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Cliffspring Falls Sampler
							["provider"] = { "i", 15845 },	-- Filled Cliffspring Falls Sampler
							["cost"] = { { "i", 15844, 1 } },	-- Empty Cliffspring Falls Sampler
							["coord"] = { 54.9, 33.3, MAP.DARKSHORE },
						}),
					},
				}),
				q(6127, {	-- The Principal Source [H]
					["sourceQuest"] = 6121,	-- Lessons Anew [H]
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Dreadmist Falls Sampler
							["provider"] = { "i", 15843 },	-- Filled Dreadmist Falls Sampler
							["cost"] = { { "i", 15842, 1 } },	-- Empty Dreadmist Falls Sampler
							["coord"] = { 47.0, 18.0, MAP.THE_BARRENS },
						}),
					},
				}),
				{	-- Trial of the Lake
					["allianceQuestData"] = q(29, {	-- Trial of the Lake [A]
						["sourceQuest"] = 26,	-- A Lesson to Learn [A]
					}),
					["hordeQuestData"] = q(28, {	-- Trial of the Lake [H]
						["sourceQuest"] = 27,	-- A Lesson to Learn [H]
					}),
					["qg"] = 11802,	-- Dendrite Starblaze
					["coord"] = { 56.2, 30.4, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Shrine Bauble
							["provider"] = { "i", 15877 },	-- Shrine Bauble
							["coords"] = {
								{ 54.1, 50.1, MAP.MOONGLADE },
								{ 36.4, 40.2, MAP.MOONGLADE },
							},
						}),
					},
				},
				{	-- Trial of the Sea Lion
					["allianceQuestData"] = q(272, {	-- Trial of the Sea Lion [A]
						["sourceQuest"] = 29,	-- Trial of the Lake [A]
					}),
					["hordeQuestData"] = q(30, {	-- Trial of the Sea Lion [H]
						["sourceQuest"] = 28,	-- Trial of the Lake [H]
					}),
					["qg"] = 11799,	-- Tajarri
					["coord"] = { 36.4, 40.2, MAP.MOONGLADE },
					["classes"] = { DRUID },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Pendant of the Sea Lion
							["provider"] = { "i", 15885 },	-- Pendant of the Sea Lion
							["cost"] = {
								{ "i", 15882, 1 },	-- Half Pendant of Aquatic Endurance
								{ "i", 15883, 1 },	-- Half Pendant of Aquatic Agility
							},
						}),
						{
							["itemID"] = 15882,	-- Half Pendant of Aquatic Endurance
							["coords"] = {
								{ 17.9, 33.0, MAP.WESTFALL },
								{ 29.6, 29.5, MAP.SILVERPINE_FOREST },
							},
						},
						{
							["itemID"] = 15883,	-- Half Pendant of Aquatic Agility
							["coords"] = {
								{ 48.9, 11.3, MAP.DARKSHORE },
								{ 56.7, 8.3, MAP.THE_BARRENS },
							},
						},
					},
				},
				q(6845, {	-- Uncovering Past Secrets
					["sourceQuest"] = 6844,	-- Umber, Archivist
					["qg"] = 11939,	-- Umber
					["coord"] = { 44.88, 35.6, MAP.MOONGLADE },
					["lvl"] = 54,
					["groups"] = {
						i(18400),	-- Ring of Living Stone
						i(18402),	-- Glowing Crystal Ring
					},
				}),
				q(1185, {	-- Under the Chitin Was...
					["sourceQuest"] = 6845,	-- Uncovering Past Secrets
					["qg"] = 11939,	-- Umber
					["coord"] = { 44.88, 35.6, MAP.MOONGLADE },
					["lvl"] = 54,
				}),
				q(1124, {	-- Wasteland
					["sourceQuests"] = {
						1123,	-- Rabine Saturna [H]
						6762,	-- Rabine Saturna [A]
					},
					["providers"] = {
						{ "n", 11801 },	-- Rabine Saturna
						{ "i", 17355 },	-- Rabine's Letter
					},
					["coord"] = { 51.7, 45.1, MAP.MOONGLADE },
					["lvl"] = 54,
				}),
			}),
			n(VENDORS, {
				n(7940, {	-- Darnall <Tailoring Supplies>
					["coord"] = { 51.6, 33.2, MAP.MOONGLADE },
					["groups"] = {
						i(14488, {	-- Pattern: Runecloth Boots (RECIPE!)
							["isLimited"] = true
						}),
						i(14472, {	-- Pattern: Runecloth Cloak (RECIPE!)
							["isLimited"] = true
							-- NOTE: Not sure what patch, it's apparently still sold well into MOP. Will check back in future Classic versions.
						}),
						i(14469, {	-- Pattern: Runecloth Robe (RECIPE!)
							["isLimited"] = true
							-- NOTE: Not sure what patch, it's apparently still sold well into MOP. Will check back in future Classic versions.
						}),
					},
				}),
				n(4184, {	-- Geenia Sunshadow <Speciality Dress Maker>
					["coord"] = { 51.8, 33.0, MAP.MOONGLADE },
					["groups"] = {
						i(13896),	-- Dark Green Wedding Hanbok
						i(13895, {	-- Formal Dangui
							["isLimited"] = true,
						}),
						i(13900, {	-- Green Wedding Hanbok
							["isLimited"] = true,
						}),
						i(13899, {	-- Red Traditional Hanbok
							["isLimited"] = true,
						}),
						i(13898),	-- Royal Dangui
						i(13897),	-- White Traditional Hanbok
					},
				}),
				n(12023, {	-- Kharedon <Light Armor Merchant>
					["coord"] = { 56.6, 29.8, MAP.MOONGLADE },
					["groups"] = {
						i(12254, {	-- Well Oiled Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(12022, {	-- Lorelae Wintersong <Trade Supplies>
					["coord"] = { 48.2, 40.0, MAP.MOONGLADE },
					["groups"] = {
						i(16224, {	-- Formula: Enchant Cloak - Superior Defense (RECIPE!)
							["isLimited"] = true,
						}),
						i(16243),	-- Formula: Runed Arcanite Rod (RECIPE!)
						i(14483, {	-- Pattern: Felcloth Pants (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12029, {	-- Narianna <Bowyer>
					["coord"] = { 53.2, 42.6, MAP.MOONGLADE },
					["groups"] = {
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
			}),
		},
	}),
}));
