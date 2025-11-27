-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_SKINNING_KNOWLEDGE = 2033;
local TWW_SKINNING_KNOWLEDGE = 2794;
-- Skinning - Skill ID 393 / Spell ID 8613
root(ROOTS.Professions, prof(SKINNING, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18834, {	-- Broken Isles Skinning Techniques
			crit(61485, {	-- Felhide
				["sourceQuests"] = { 40159 },	-- The Emerald Nightmare: The Pestilential Hide of Nythendra
			}),
			crit(61486, {	-- Fiendish Leather
				["sourceQuests"] = { 48042 },	-- Order of Operations
				["provider"] = { "i", 151868 },	-- Corrupted Tooth
			}),
			crit(61487, {	-- Legion Butchery
				["provider"] = { "i", 139895 },	-- Skinning Technique: Legion Butchery
			}),
			crit(61488, {	-- Legion Gutting
				["provider"] = { "i", 139896 },	-- Skinning Technique: Legion Gutting
			}),
			crit(61489, {	-- Stonehide Leather
				["sourceQuests"] = { 40140 },	-- Ske'rit's Leather Handbook
			}),
			crit(61490, {	-- Stormscale
				["sourceQuests"] = { 40155 },	-- Ske'rit's Scale-Skinning Suggestions
			}),
			crit(61491, {	-- Unbroken Claw
				["provider"] = { "i", 139894 },	-- Skinning Technique: Unbroken Claw
			}),
			crit(61492, {	-- Unbroken Tooth
				["provider"] = { "i", 139893 },	-- Skinning Technique: Unbroken Tooth
			}),
		}),
		ach(18831, sharedData({	-- Elusive Beasts of the Dragon Isles (15)
			["cost"] = {{"i",193906,1}},	-- Elusive Creature Bait
		},{
			crit(61435, {	-- Elusive Salamanther
				["crs"] = { 193854 },	-- Elusive Salamanther
			}),
			crit(61437, {	-- Elusive Vorquin
				["crs"] = { 193855 },	-- Elusive Vorquin
			}),
			crit(61438, {	-- Elusive Proto Dragon
				["crs"] = { 193857 },	-- Elusive Proto Dragon
			}),
			crit(61439, {	-- Elusive Thunder Lizard
				["crs"] = { 193859 },	-- Elusive Thunder Lizard
			}),
			crit(61440, {	-- Elusive Lava Phoenix
				["crs"] = { 193860 },	-- Elusive Lava Phoenix
			}),
			crit(61441, {	-- Elusive Magmammoth
				["crs"] = { 193861 },	-- Elusive Magmammoth
			}),
			crit(61442, {	-- Elusive Fiery Dreadsquall
				["crs"] = { 193862 },	-- Elusive Fiery Dreadsquall
			}),
			crit(61443, {	-- Elusive Snapdragon
				["crs"] = { 193873 },	-- Elusive Snapdragon
			}),
			crit(61443, {	-- Elusive Rockfang
				["crs"] = { 193881 },	-- Elusive Rockfang
			}),
			crit(61445, {	-- Elusive Feral Bakar
				["crs"] = { 193882 },	-- Elusive Feral Bakar
			}),
			crit(61447, {	-- Elusive Hornstrider
				["crs"] = { 193884 },	-- Elusive Hornstrider
			}),
			crit(61448, {	-- Elusive Crystalspine
				["crs"] = { 193891 },	-- Elusive Crystalspine
			}),
			crit(61449, {	-- Elusive Bull
				["crs"] = { 193892 },	-- Elusive Bull
			}),
			crit(61450, {	-- Elusive Stonegazer
				["crs"] = { 193893 },	-- Elusive Stonegazer
			}),
			crit(61451, {	-- Elusive Ottuk
				["crs"] = { 193894 },	-- Elusive Ottuk
			}),
			crit(61452, {	-- Elusive Slyvern
				["crs"] = { 193986 },	-- Elusive Slyvern
			}),
			crit(61453, {	-- Elusive Magmammoth Bull
				["crs"] = { 194060 },	-- Elusive Magmammoth Bull
			}),
			crit(61454, {	-- Elusive Prime Salamanther
				["crs"] = { 194062 },	-- Elusive Prime Salamanther
			}),
			crit(61455, {	-- Elusive Prime Proto Dragon
				["crs"] = { 194063 },	-- Elusive Prime Proto Dragon
			}),
			crit(61456, {	-- Elusive Storm Lizard
				["crs"] = { 194082 },	-- Elusive Storm Lizard
			}),
			crit(61457, {	-- Elusive Elder Rockfang
				["crs"] = { 194085 },	-- Elusive Elder Rockfang
			}),
			crit(61458, {	-- Elusive Elder Slyvern
				["crs"] = { 194102 },	-- Elusive Elder Slyvern
			}),
			crit(61459, {	-- Elusive Rimeclaw Bear
				["crs"] = { 194103 },	-- Elusive Rimeclaw Bear
			}),
			crit(61460, {	-- Elusive Elder Armoredon
				["crs"] = { 194105 },	-- Elusive Elder Armoredon
			}),
			crit(61461, {	-- Elusive Argali
				["crs"] = { 202506 },	-- Elusive Argali
			}),
			crit(61462, {	-- Elusive Elder Argali
				["crs"] = { 202510 },	-- Elusive Elder Argali
			}),
			crit(61463, {	-- Elusive Deepflayer
				["crs"] = { 204819 },	-- Elusive Deepflayer
			}),
			crit(61464, {	-- Elusive Stoneclaw
				["crs"] = { 204820 },	-- Elusive Stoneclaw
			}),
			crit(61465, {	-- Elusive Viper (Lava)
				["crs"] = { 204825 },	-- Elusive Viper (Lava)
			}),
			crit(61466, {	-- Elusive Lavafang
				["crs"] = { 204828 },	-- Elusive Lavafang
			}),
			crit(61467, {	-- Elusive Deepstrider
				["crs"] = { 204833 },	-- Elusive Deepstrider
			}),
			crit(61468, {	-- Elusive Colossal Deepstrider
				["crs"] = { 204834 },	-- Elusive Colossal Deepstrider
			}),
			crit(61469, {	-- Elusive Viper (Rock)
				["crs"] = { 204837 },	-- Elusive Viper (Rock)
			}),
			crit(61470, {	-- Elusive Shalefang
				["crs"] = { 204839 },	-- Elusive Shalefang
			}),
			crit(61471, {	-- Elusive Sulfurstrider
				["crs"] = { 204840 },	-- Elusive Sulfurstrider
			}),
			crit(61472, {	-- Elusive Colossal Sulfurstrider
				["crs"] = { 204841 },	-- Elusive Colossal Sulfurstrider
			}),
		})),
		achpart(18832, 18833),	-- Elusive Legend of the Dragon Isles (1)
		ach(18833, sharedData({	-- Elusive Legends of the Dragon Isles
			["cost"] = {{"i",193906,1}},	-- Elusive Creature Bait
		},{
			crit(61473, {	-- Elusive Elder Drake
				["crs"] = { 194489 },	-- Elusive Elder Drake
				["coord"] = { 23.2, 33.8, THE_AZURE_SPAN },
			}),
			crit(61474, {	-- Elusive Elder Frigidpelt
				["crs"] = { 194491 },	-- Elusive Elder Frigidpelt
				["coord"] = { 64.7, 30.7, THE_AZURE_SPAN },
			}),
			crit(61475, {	-- Elusive Tempest Lizard
				["crs"] = { 195465 },	-- Elusive Tempest Lizard
				["coord"] = { 55.0, 55.2, OHNAHRAN_PLAINS },
			}),
			crit(61476, {	-- Elusive Ferocious Titanfang
				["crs"] = { 195472 },	-- Elusive Ferocious Titanfang
				["coord"] = { 48.2, 50.7, THALDRASZUS },
			}),
			crit(61477, {	-- Elusive Deepwater Salamanther
				["crs"] = { 195492 },	-- Elusive Deepwater Salamanther
				["coord"] = { 54.7, 58.8, THE_WAKING_SHORES },
			}),
			crit(61478, {	-- Elusive Proto Skyterror
				["crs"] = { 195509 },	-- Elusive Proto Skyterror
				["coord"] = { 44.8, 78.2, THE_WAKING_SHORES },
			}),
			crit(61479, {	-- Elusive Cliffdweller Vorquin
				["crs"] = { 195518 },	-- Elusive Cliffdweller Vorquin
				["coord"] = { 56.2, 70.6, THALDRASZUS },
			}),
			crit(61480, {	-- Elusive Flourishing Quillbloom
				["crs"] = { 195541 },	-- Elusive Flourishing Quillbloom
				["coord"] = { 24.7, 58.7, OHNAHRAN_PLAINS },
			}),
			crit(61481, {	-- Elusive Frenzied Amberfur
				["crs"] = { 202436 },	-- Elusive Frenzied Amberfur
				["coord"] = { 40.8, 60.7, THE_FORBIDDEN_REACH },
			}),
			crit(61482, {	-- Elusive Auric Argali
				["crs"] = { 202441 },	-- Elusive Auric Argali
				["coord"] = { 44.7, 40.0, THE_FORBIDDEN_REACH },
			}),
			crit(61483, {	-- Elusive Crystalscale Stonecleaver
				["crs"] = { 204821 },	-- Elusive Crystalscale Stonecleaver
				["coord"] = { 59.6, 39.5, ZARALEK_CAVERN },
			}),
			crit(61484, {	-- Elusive Magma Cobra
				["crs"] = { 204831 },	-- Elusive Magma Cobra
				["coord"] = { 43.8, 48.0, ZARALEK_CAVERN },
			}),
		})),
		ach(18835, {	-- Fourth War Skinning Techniques
			crit(61493, {	-- Cragscale
				["sourceQuests"] = {
					56565,	-- Hanging by a Thread [A]
					56566 ,	-- Hanging by a Thread [H]
				},
				["sourceQuestNumRequired"] = 1,
			}),
			crit(61494, {	-- Dredged Leather
				["sourceQuests"] = {
					56562,	-- The Problem with Shrinkage [A]
					56563 ,	-- The Problem with Shrinkage [H]
				},
				["sourceQuestNumRequired"] = 1,
			}),
			crit(61495, {	-- Bone Gathering
				["sourceQuests"] = { 52228 },	-- Atal'Dazar: An Unbreakable Bone Needle
			}),
			crit(61496, {	-- Leather Gathering
				["sourceQuests"] = { 52224 },	-- Ivory Handled Dagger
			}),
			crit(61497, {	-- Scale Gathering
				["sourceQuests"] = { 52226 },	-- Turtle Soup
			}),
		}),
	})),
	q(52213, {	-- Ancient Skinning Knife
		["description"] = "Requires 150 Zandalari Skinning to get the item.",
		["sourceQuest"] = 51575,	-- Lost But Not Forgotten
		["provider"] = { "i", 161431 },	-- Ancient Skinning Knife
		["timeline"] = { ADDED_8_0_1 },
		["races"] = HORDE_ONLY,
		["groups"] = {
			recipe(257148),	-- Skinning Technique: Leather Gathering (Rank 3)
		},
	}),
	q(52224, {	-- Ivory Handled Dagger
		["description"] = "Requires 150 Kul Tiran Skinning to get the item.",
		["sourceQuest"] = 52223,	-- Brinepinch
		["provider"] = { "i", 161424 },	-- Ivory Handled Dagger
		["timeline"] = { ADDED_8_0_1 },
		["races"] = ALLIANCE_ONLY,
		["groups"] = {
			recipe(257148),	-- Skinning Technique: Leather Gathering (Rank 3)
		},
	}),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2 }, ["requireSkill"] = SKINNING }, {
		n(QUESTS, {
			q(70363, {	-- Dragon Isles Skinning
				["description"] = "Do NOT skin any Dragon Isles creatures. This quest can only be picked up PRIOR to learning Dragon Isles Skinning.",
				["provider"] = { "n", 192558 },	-- Toninaar
				["coord"] = { 76.7, 34.8, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366263},	-- Dragon Isles Skinning
			}),
			q(70034, {	-- Artisan's Supply: Salamanther Scale
				["provider"] = { "n", 192558 },	-- Toninaar
				["coord"] = { 76.6, 34.8, THE_WAKING_SHORES },
				["cost"] = { { "i", 193252, 3 }, },	-- 3x Salamanther Scales
				["_drop"] = { "g" },
			}),
			q(70259, {	-- Hidden Profession Master Skinning
				["name"] = "Hidden Profession Master: Skinning",
				["provider"] = { "n", 194844 },	-- Zenzi
				["coord"] = { 73.3, 69.7, THE_WAKING_SHORES },
			}),
			q(70193, {	-- Specialized Secrets: Skinning
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = { { "i", 191784, 1 }, },	-- Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["groups"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 193846 },	-- Ralathor the Rugged
			["coord"] = { 28.8, 60.4, VALDRAKKEN },
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["groups"] = {
				i(199128),	-- Skinning Field Notes
			},
		},{
			q(72158),	-- A Dense Delivery
			q(70619),	-- A Study of Leather
			q(72159),	-- Scaling Down
			q(70620),	-- Scaling Up
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = { { "c", DF_SKINNING_KNOWLEDGE, 1 } }, }, {
				r(383090),	-- Aileron Seamoth Lure
				r(383128),	-- Bottled Pheromones
				r(375787),	-- Cerulean Spinefish Lure
				r(383132),	-- Elusive Creature Bait
				r(385984),	-- Infusion: Decay
				r(385982),	-- Infusion: Earth
				r(385972),	-- Infusion: Frost
				r(385985),	-- Infusion: Titan
				r(383094),	-- Islefin Dorado Lure
				r(375731),	-- Refine Hides++
				r(375763),	-- Refine Hides+++
				r(376611),	-- Refine Leather++
				r(376612),	-- Refine Leather+++
				r(376613),	-- Refine Scales++
				r(376614),	-- Refine Scales+++
				r(375773),	-- Scalebelly Mackerel Lure
				r(375786),	-- Temporal Dragonhead Lure
				r(375782),	-- Thousandbite Piranha Lure
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(DF_SKINNING_KNOWLEDGE),
			},
		},{
			i(199128),	-- Skinning Field Notes
			q(74114, {	-- DF Inscription Order: Skinning
				["name"] = "DF Inscription Order: Skinning",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 201023 },	-- Draconic Treatise on Skinning
			}),
			q(70381, {	-- DF Weekly Skinning Knowledgepoint #1
				["name"] = "DF Weekly Skinning Knowledgepoint #1",
				["provider"] = { "i", 198837 },	-- Curious Hide Scraps
			}),
			q(70383, {	-- DF Weekly Skinning Knowledgepoint #2
				["name"] = "DF Weekly Skinning Knowledgepoint #2",
				["provider"] = { "i", 198837 },	-- Curious Hide Scraps
			}),
			q(70384, {	-- DF Weekly Skinning Knowledgepoint #3
				["name"] = "DF Weekly Skinning Knowledgepoint #3",
				["provider"] = { "i", 198837 },	-- Curious Hide Scraps
			}),
			q(70385, {	-- DF Weekly Skinning Knowledgepoint #4
				["name"] = "DF Weekly Skinning Knowledgepoint #4",
				["provider"] = { "i", 198837 },	-- Curious Hide Scraps
			}),
			q(70386, {	-- DF Weekly Skinning Knowledgepoint #5
				["name"] = "DF Weekly Skinning Knowledgepoint #5",
				["provider"] = { "i", 198837 },	-- Curious Hide Scraps
			}),
			q(70389, {	-- DF Weekly Skinning Knowledgepoint #6
				["name"] = "DF Weekly Skinning Knowledgepoint #6",
				["provider"] = { "i", 198841 },	-- Large Sample of Curious Hide
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 }, ["requireSkill"] = SKINNING }, {
		n(QUESTS, sharedData({
			-- ["description"] = "Requires 50 Skill.",
			["provider"] = { "n", 219083 },	-- Ginnad <Skinning Trainer>
			["coord"] = { 54.5, 57.6, DORNOGAL },
			["isWeekly"] = true,
			["groups"] = {
				i(224807),	-- Algari Skinner's Notes
			},
		},{
			q(83097),	-- Cinder and Storm
			q(83100),	-- Cracking the Shell
			q(82993),	-- From Shadows
			q(83098),	-- Snap and Crackle
			q(82992),	-- Stormcharged Goods
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_SKINNING_KNOWLEDGE, 1 }} }, {
				r(442647),	-- Arathor Hammerfish Lure
				r(442654),	-- Beast Lure Scent
				r(442615),	-- Carve Meat
				r(442646),	-- Dornish Pike Lure
				r(442652),	-- Elusive Creature Lure
				r(442649),	-- Infusion: Crystal
				r(442650),	-- Infusion: Spores
				r(442651),	-- Infusion: Writhing
				r(442645),	-- Quiet River Bass Lure
				r(440942),	-- Refine Chitin++
				r(440943),	-- Refine Chitin+++
				r(440929),	-- Refine Hides++
				r(440934),	-- Refine Hides+++
				r(440937),	-- Refine Leather++
				r(440938),	-- Refine Leather+++
				r(442648),	-- Roaring Anglerseeker Lure
				r(440977),	-- Sharpen Your Knife
				r(442644),	-- Specular Rainbowfish Lure
				r(442655),	-- Supreme Beast Lure
			}),
		}),
		n(TREASURES, {
			o(455948, {	-- Arathi Craftsman's Spokeshave
				["coord"] = { 42.2, 53.9, HALLOWFALL },
				["questID"] = 83919,
				["groups"] = {
					i(226345),	-- Arathi Craftsman's Spokeshave
				},
			}),
			o(455949, {	-- Arathi Tanning Agent
				["coord"] = { 49.3, 62.1, HALLOWFALL },
				["questID"] = 83918,
				["groups"] = {
					i(226344),	-- Arathi Tanning Agent
				},
			}),
			o(455951, {	-- Artisan's Drawing Knife
				["coord"] = { 47.3, 28.3, THE_RINGING_DEEPS },
				["questID"] = 83916,
				["groups"] = {
					i(226342),	-- Artisan's Drawing Knife
				},
			}),
			o(455946, {	-- Carapace Shiner
				["coord"] = { 56.5, 55.2, AZJ_KAHET },
				["questID"] = 83921,
				["groups"] = {
					i(226347),	-- Carapace Shiner
				},
			}),
			o(455953, {	-- Dornogal Carving Knife
				["coord"] = { 28.7, 51.7, DORNOGAL },
				["questID"] = 83914,
				["groups"] = {
					i(226340),	-- Dornogal Carving Knife
				},
			}),
			o(455952, {	-- Earthen Worker's Beam
				["coord"] = { 60.0, 28.0, ISLE_OF_DORN },
				["questID"] = 83915,
				["groups"] = {
					i(226341),	-- Earthen Worker's Beams
				},
			}),
			o(455950, {	-- Fungarian's Rich Tannin
				["coord"] = { 65.7, 61.9, THE_RINGING_DEEPS },
				["questID"] = 83917,
				["groups"] = {
					i(226343),	-- Fungarian's Rich Tannin
				},
			}),
			o(455947, {	-- Nerubian's Slicking Iron
				["coord"] = { 45.5, 49.4, NERUBAR },
				["questID"] = 83920,
				["groups"] = {
					i(226346),	-- Nerubian's Slicking Iron
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(TWW_SKINNING_KNOWLEDGE),
			},
		},{
			q(81459, {	-- TWW Weekly Skinning Knowledgepoint #1
				["name"] = "TWW Weekly Skinning Knowledgepoint #1",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81460, {	-- TWW Weekly Skinning Knowledgepoint #2
				["name"] = "TWW Weekly Skinning Knowledgepoint #2",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81461, {	-- TWW Weekly Skinning Knowledgepoint #3
				["name"] = "TWW Weekly Skinning Knowledgepoint #3",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81462, {	-- TWW Weekly Skinning Knowledgepoint #4
				["name"] = "TWW Weekly Skinning Knowledgepoint #4",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81463, {	-- TWW Weekly Skinning Knowledgepoint #5
				["name"] = "TWW Weekly Skinning Knowledgepoint #5",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81464, {	-- TWW Weekly Skinning Knowledgepoint #6
				["name"] = "TWW Weekly Skinning Knowledgepoint #6",
				["provider"] = { "i", 224781 },	-- Abyssal Fur
			}),
		})),
	})),
	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {
		n(ACHIEVEMENTS, {
			ach(42790, {	-- Skinning at Midnight
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
				},
			}),
		}),
		--[[
		n(QUESTS, sharedData({
			-- ["description"] = "Requires 50 Skill.",
			["provider"] = { "n", 219083 },	-- Ginnad <Skinning Trainer>
			["coord"] = { 54.5, 57.6, DORNOGAL },
			["isWeekly"] = true,
			["groups"] = {
				i(224807),	-- Algari Skinner's Notes
			},
		},{
			q(83097),	-- Cinder and Storm
			q(83100),	-- Cracking the Shell
			q(82993),	-- From Shadows
			q(83098),	-- Snap and Crackle
			q(82992),	-- Stormcharged Goods
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["groups"] = sharedData({ ["cost"] = {{ "c", TWW_SKINNING_KNOWLEDGE, 1 }} }, {
				r(442647),	-- Arathor Hammerfish Lure
				r(442654),	-- Beast Lure Scent
				r(442615),	-- Carve Meat
				r(442646),	-- Dornish Pike Lure
				r(442652),	-- Elusive Creature Lure
				r(442649),	-- Infusion: Crystal
				r(442650),	-- Infusion: Spores
				r(442651),	-- Infusion: Writhing
				r(442645),	-- Quiet River Bass Lure
				r(440942),	-- Refine Chitin++
				r(440943),	-- Refine Chitin+++
				r(440929),	-- Refine Hides++
				r(440934),	-- Refine Hides+++
				r(440937),	-- Refine Leather++
				r(440938),	-- Refine Leather+++
				r(442648),	-- Roaring Anglerseeker Lure
				r(440977),	-- Sharpen Your Knife
				r(442644),	-- Specular Rainbowfish Lure
				r(442655),	-- Supreme Beast Lure
			}),
		}),
		n(TREASURES, {
			o(455948, {	-- Arathi Craftsman's Spokeshave
				["coord"] = { 42.2, 53.9, HALLOWFALL },
				["questID"] = 83919,
				["groups"] = {
					i(226345),	-- Arathi Craftsman's Spokeshave
				},
			}),
			o(455949, {	-- Arathi Tanning Agent
				["coord"] = { 49.3, 62.1, HALLOWFALL },
				["questID"] = 83918,
				["groups"] = {
					i(226344),	-- Arathi Tanning Agent
				},
			}),
			o(455951, {	-- Artisan's Drawing Knife
				["coord"] = { 47.3, 28.3, THE_RINGING_DEEPS },
				["questID"] = 83916,
				["groups"] = {
					i(226342),	-- Artisan's Drawing Knife
				},
			}),
			o(455946, {	-- Carapace Shiner
				["coord"] = { 56.5, 55.2, AZJ_KAHET },
				["questID"] = 83921,
				["groups"] = {
					i(226347),	-- Carapace Shiner
				},
			}),
			o(455953, {	-- Dornogal Carving Knife
				["coord"] = { 28.7, 51.7, DORNOGAL },
				["questID"] = 83914,
				["groups"] = {
					i(226340),	-- Dornogal Carving Knife
				},
			}),
			o(455952, {	-- Earthen Worker's Beam
				["coord"] = { 60.0, 28.0, ISLE_OF_DORN },
				["questID"] = 83915,
				["groups"] = {
					i(226341),	-- Earthen Worker's Beams
				},
			}),
			o(455950, {	-- Fungarian's Rich Tannin
				["coord"] = { 65.7, 61.9, THE_RINGING_DEEPS },
				["questID"] = 83917,
				["groups"] = {
					i(226343),	-- Fungarian's Rich Tannin
				},
			}),
			o(455947, {	-- Nerubian's Slicking Iron
				["coord"] = { 45.5, 49.4, NERUBAR },
				["questID"] = 83920,
				["groups"] = {
					i(226346),	-- Nerubian's Slicking Iron
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["groups"] = {
				currency(MID_SKINNING_KNOWLEDGE),
			},
		},{
			q(81459, {	-- TWW Weekly Skinning Knowledgepoint #1
				["name"] = "TWW Weekly Skinning Knowledgepoint #1",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81460, {	-- TWW Weekly Skinning Knowledgepoint #2
				["name"] = "TWW Weekly Skinning Knowledgepoint #2",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81461, {	-- TWW Weekly Skinning Knowledgepoint #3
				["name"] = "TWW Weekly Skinning Knowledgepoint #3",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81462, {	-- TWW Weekly Skinning Knowledgepoint #4
				["name"] = "TWW Weekly Skinning Knowledgepoint #4",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81463, {	-- TWW Weekly Skinning Knowledgepoint #5
				["name"] = "TWW Weekly Skinning Knowledgepoint #5",
				["provider"] = { "i", 224780 },	-- Toughened Thunderous Hide
			}),
			q(81464, {	-- TWW Weekly Skinning Knowledgepoint #6
				["name"] = "TWW Weekly Skinning Knowledgepoint #6",
				["provider"] = { "i", 224781 },	-- Abyssal Fur
			}),
		})),--]]
	})),
}));
profession(SKINNING, {
	-- #if AFTER WOD
	-- TODO: This is not timelined
	n(DROPS, {
		i(111351, {		-- A Guide to Skinning in Draenor
			["description"] = "This can drop from any Warlords of Draenor mob after skinning it.",
		}),
		n(103675, {	-- Felhide Gargantuan
			["description"] = "These mobs are only available during a World Quest. They can only be skinned one time, similarly to the Slice of Bacon cooking quests.",
			["groups"] = {
				i(124116),	-- Felhide
				header(HEADERS.Item, 124116, {	-- Felhide
					q(40156, {	-- Felhide Sample
						["provider"] = { "i", 129863 },	-- Felhide Sample
						["maps"] = {
							AZSUNA,
							HIGHMOUNTAIN,
							STORMHEIM,
							VALSHARAH,
						},
						["groups"] = {
							recipe(194167),	-- Felhide [Rank 1]
						},
					}),
					q(40157, {	-- An Unseemly Task
						["sourceQuest"] = 40156,	-- Felhide Sample
						["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
					}),
					q(40158, {	-- Darkheart Thicket: Demons Be Different
						["sourceQuest"] = 40157,	-- An Unseemly Task
						["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
						["groups"] = {
							recipe(194168),	-- Felhide [Rank 2]
						},
					}),
					q(40159, {	-- The Emerald Nightmare: The Pestilential Hide of Nythendra
						["sourceQuest"] = 40158,	-- Darkheart Thicket: Demons Be Different
						["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
						["groups"] = {
							recipe(194169),	-- Felhide [Rank 3]
						},
					}),
				}),
			},
		}),
		i(151566),	-- Fiendish Leather
		header(HEADERS.Item, 151566, {	-- Fiendish Leather
			q(48040, {	-- Tainted Scraps
				["provider"] = { "i", 151866 },	-- Tainted Scraps
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247842),	-- Fiendish Leather [Rank 1]
				},
			}),
			q(48041, {	-- A Larger Cut
				["sourceQuest"] = 48040,	-- Tainted Scraps
				["provider"] = { "i", 151867 },	-- Spoiled Fiendish Leather
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247843),	-- Fiendish Leather [Rank 2]
				},
			}),
			q(48042, {	-- Order of Operations
				["sourceQuest"] = 48041,	-- A Larger Cut
				["provider"] = { "i", 151868 },	-- Corrupted Tooth
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247844),	-- Fiendish Leather [Rank 3]
				},
			}),
		}),
		i(124115),	-- Stormscale
		header(HEADERS.Item, 124115, {	-- Stormscale
			q(40141, {	-- Stormscale Sample
				["provider"] = { "i", 129862 },	-- Stormscale Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40142, {	-- The Core of the Stormscale
				["sourceQuest"] = 40141,	-- Stormscale Sample
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["groups"] = {
					recipe(194164),	-- Stormscale [Rank 1]
				},
			}),
			q(40143, {	-- Unfinished Treatise on the Properties of Stormscale
				["sourceQuest"] = 40142,	-- The Core of the Stormscale
				["provider"] = { "i", 129865 },	-- Unfinished Treatise on the Properties of Stormscale
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40144, {	-- Glielle
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40145, {	-- Under Down
				["sourceQuest"] = 40144,	-- Glielle
				["qg"] = 98791,	-- Glielle <Skinning Trainer>
				["coord"] = { 47.0, 45.2, AZSUNA },
				["groups"] = {
					recipe(194165),	-- Stormscale [Rank 2]
				},
			}),
			q(40146, {	-- Seymour and Agnes
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40147, {	-- Mother's Prized Knife
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
				["groups"] = {
					i(129910),	-- Agnes' Skinning Knife (QI!)
				},
			}),
			q(40148, {	-- Red-Eyed Revenge
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
			}),
			q(40149, {	-- Drakol'nir Must Die
				["sourceQuests"] = {
					40147,	-- Mother's Prized Knife
					40148	-- Seymour and Agnes
				},
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["coord"] = { 45.7, 25.6, STORMHEIM },
				["groups"] = {
					i(130102),	-- Mother's Skinning Knife (TOY!)
				},
			}),
			q(40151, {	-- Immaculate Stormscale
				["sourceQuest"] = 40145,	-- Under Down
				["provider"] = { "i", 129867 },	-- Immaculate Stormscale
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40152, {	-- Scales for Ske'rit
				["sourceQuest"] = 40151,	-- Immaculate Stormscale
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["maps"] = { LEGION_DALARAN },	-- TODO replace with coord
			}),
			q(40153, {	-- Return to Karazhan: Scales of Legend
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["maps"] = { KARAZHAN, 474, THE_OBSIDIAN_SANCTUM },
			}),
			q(40154, {	-- Eye of Azshara: The Scales of Serpentrix
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
			}),
			q(40155, {	-- Eye of Azshara: The Scales of Serpentrix
				["sourceQuests"] = {
					40153,	-- Return to Karazhan: Scales of Legend
					40154	-- Eye of Azshara: The Scales of Serpentrix
				},
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["groups"] = {
					recipe(194166),	-- Stormscale [Rank 3]
				},
			}),
		}),
		i(124113),	-- Stonehide Leather
		header(HEADERS.Item, 124113, {	-- Stonehide Leather
			q(40131, {	-- Stonehide Leather Sample
				["provider"] = { "i", 129860 },	-- Stonehide Leather Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40132, {	-- In One Piece
				["sourceQuest"] = 40131,	-- Stonehide Leather Sample
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["coord"] = { 35.9, 28.6, LEGION_DALARAN },
				["groups"] = {
					recipe(194161),	-- Stonehide Leather [Rank 1]
				},
			}),
			q(40133, {	-- Scrap of Pants
				["sourceQuest"] = 40132,	-- In One Piece
				["provider"] = { "i", 129864 },	-- Scrap of Pants
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40134, {	-- Highmountain Hides
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["qg"] = 94409,	-- Hemet Nesingwary <Hemet's Hunting Party>
				["groups"] = {
					i(129900),	-- Bear Hide (QI!)
					i(129901),	-- Elderhorn Hide (QI!)
					i(129903),	-- Saber Hide (QI!)
					i(130064),	-- Deadeye Monocle
				},
			}),
			q(40135, {	-- The Freedom to Roam
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["qg"] = 94409,	-- Hemet Nesingwary <Hemet's Hunting Party>
				["groups"] = {
					recipe(194162),	-- Stonehide Leather [Rank 2]
				},
			}),
			q(40136, {	-- Immaculate Stonehide Leather
				["sourceQuest"] = 40135,	-- In One Piece
				["provider"] = { "i", 129866 },	-- Immaculate Stonehide Leather
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40137, {	-- Leather for Ske'rit
				["sourceQuest"] = 40136,	-- Immaculate Stonehide Leather
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["maps"] = { SURAMAR },
			}),
			q(40138, {	-- Trial of the Crusader: Hides of Legend
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
			}),
			q(40139, {	-- Halls of Valor: The Hide of Fenryr
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
			}),
			q(40140, {	-- Ske'rit's Leather Handbook
				["sourceQuests"] = {
					40138,	-- Trial of the Crusader: Hides of Legend
					40139	-- Halls of Valor: The Hide of Fenryr
				},
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["groups"] = {
					recipe(194163),	-- Stonehide Leather [Rank 3]
				},
			}),
		}),
	}),
	filter(BATTLE_PETS, {
		i(153057, {	-- Fossorial Bile Larva (PET!)
			["description"] = "This can be obtained from any skinnable Argus mob.",
			["timeline"] = { ADDED_7_3_0 },
		}),
	}),
	filter(TOYS, {
		i(130102),	-- Mother's Skinning Knife (TOY!)
	}),
	filter(RECIPES, {
		expansion(EXPANSION.LEGION, {
			recipe(194167),	-- Felhide [Rank 1]
			recipe(194168),	-- Felhide [Rank 2]
			recipe(194169),	-- Felhide [Rank 3]
			recipe(247842),	-- Fiendish Leather [Rank 1]
			recipe(247843),	-- Fiendish Leather [Rank 2]
			recipe(247844),	-- Fiendish Leather [Rank 3]
			recipe(194173),	-- Legion Butchery
			recipe(194203),	-- Legion Gutting
			recipe(194161),	-- Stonehide Leather [Rank 1]
			recipe(194162),	-- Stonehide Leather [Rank 2]
			recipe(194163),	-- Stonehide Leather [Rank 3]
			recipe(194164),	-- Stormscale [Rank 1]
			recipe(194165),	-- Stormscale [Rank 2]
			recipe(194166),	-- Stormscale [Rank 3]
			recipe(194171),	-- Unbroken Claw
			recipe(194170),	-- Unbroken Tooth
		}),
		expansion(EXPANSION.BFA, {
			recipe(257152),	-- Bone Gathering [Rank 1]
			recipe(257153),	-- Bone Gathering [Rank 2]
			recipe(257154),	-- Bone Gathering [Rank 3]
			recipe(302014),	-- Cragscale [Rank 1]
			recipe(302015),	-- Cragscale [Rank 2]
			recipe(302016),	-- Cragscale [Rank 3]
			recipe(302007),	-- Dredged Leather [Rank 1]
			recipe(302010),	-- Dredged Leather [Rank 2]
			recipe(302011),	-- Dredged Leather [Rank 3]
			recipe(257146),	-- Leather Gathering [Rank 1]
			recipe(257147),	-- Leather Gathering [Rank 2]
			recipe(257148),	-- Leather Gathering [Rank 3]
			recipe(257149),	-- Scale Gathering [Rank 1]
			recipe(257150),	-- Scale Gathering [Rank 2]
			recipe(257151),	-- Scale Gathering [Rank 3]
		}),
	}),
	-- #endif
});
