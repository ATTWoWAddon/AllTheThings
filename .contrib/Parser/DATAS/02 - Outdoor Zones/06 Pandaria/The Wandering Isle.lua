---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		m(THE_WANDERING_ISLE_STARTING_ZONE, {	-- The Wandering Isle Starter Zones
			["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },	-- [Adding faction just to be safe]
			["icon"] = 133937,
			["groups"] = {
				n(EXPLORATION, {
					exploration(5848),	-- Cave of Meditation
					exploration(5886),	-- Chamber of Whispers
					exploration(5944),	-- Forlorn Hut
					exploration(5828),	-- Mandori Village
					exploration(5862),	-- Pool of Reflection
					exploration(5829),	-- Ridge of Laughing Winds
					exploration(5849),	-- Shrine of Inner-Light
					exploration(5837),	-- The Dawning Span
					exploration(5825),	-- The Dawning Valley
					exploration(5843),	-- Tranquil Grotto
				}),
				n(FACTIONS, {
					faction(1216, {	-- Shang Xi's Academy
						-- #if BEFORE 11.2.7
						-- Exalted is now obtainable with Heritage questline for Pandarens
						["description"] = "The maximum obtainable reputation with this faction is 8510/12000 (Honored).",
						["minReputation"] = { 1216, HONORED + 8510 },	-- Shang Xi's Academy, Honored + change.
						-- #endif
					}),
				}),
				n(QUESTS, {
					q(31450, {	-- A New Fate
						["sourceQuest"] = 29800,	-- New Allies
						["qg"] = 56013,	-- Spirit of Master Shang Xi
						["coord"] = { 51.4, 48.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["maps"] = { ORGRIMMAR, STORMWIND_CITY },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(29679, {	-- A New Friend
						["sourceQuest"] = 29678,	-- Shu, the Spirit of Water
						["qg"] = 54975,	-- Aysa Cloudsinger
						["coord"] = { 79.8, 39.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Play with the Spirit of Water
								["provider"] = { "n", 55212 },	-- Shu <Ancient Spirit of Water>
								["coord"] = { 78.96, 37.18, THE_WANDERING_ISLE_STARTING_ZONE },
								["description"] = "If you can't see the water spouts, open Options -> Graphics -> and change \"Particle Density\" to \"Good\" or higher.",
							}),
							i(131908, {	-- Gauntlets of Splashing Water
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74573),	-- Glistening Breastplate
							i(74572),	-- Gloves of Splashing Water
							i(74571),	-- Playful Wristbands
						},
					}),
					q(29798, {	-- An Ancient Evil
						["sourceQuests"] = {
							29665,	-- From Bad to Worse
							29794,	-- None Left Behind
							29797,	-- Medical Supplies
						},
						["qg"] = 55940,	-- Jojo Ironbrow
						["coord"] = { 42.3, 86.4, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Vordraka, the Deep Sea Nightmare slain
								["provider"] = { "n", 56009 },	-- Vordraka, the Deep Sea Nightmare
								["coord"] = { 36.8, 84.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(30989, {	-- An Old Pit Fighter
						["sourceQuest"] = 30988,	-- The Alliance Way
						["qg"] = 61796,	-- King Varian Wrynn
						["coord"] = { 82.6, 28.2, STORMWIND_CITY },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE },
					}),
					q(29410, {	-- Aysa of the Tushui
						["sourceQuest"] = 29409,	-- The Disciple's Challenge
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29784, {	-- Balanced Perspective
						["sourceQuests"] = {
							29779, 	-- The Direct Solution
							29780,	-- Do No Evil
							29781,	-- MOnkey Advisory Warning
						},
						["qg"] = 65558,	-- Huojin Monk
						["coord"] = { 30.8, 36.8, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29786, {	-- Battle for the Skies
						["sourceQuest"] = 29785,	-- Dafeng, the Spirit of Air
						["qg"] = 55595,	-- Aysa Cloudsinger
						["coord"] = { 24.8, 69.8, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Zhao-Ren slain
								["provider"] = { "n", 55786 },	-- Zhao-Ren <The Onyx Serpent>
								["coord"] = { 30.6, 59.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74586),	-- Cloak of the Fiery Skies
						},
					}),
					q(29792, {	-- Bidden to Greatness
						["sourceQuest"] = 29791,	-- The Suffering of Shen-zin Su
						["qg"] = 56012,	-- Elder Shaopai
						["coord"] = { 51.3, 48.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Open Mandori Village Gate
								["provider"] = { "o", 210965 },	-- Mandori Village Gate
								["coord"] = { 51.6, 61.3, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Open Pei-Wu Forest Gate
								["provider"] = { "o", 210964 },	-- Pei-Wu Forest Gate
								["coord"] = { 52.3, 68.5, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29785, {	-- Dafeng, the Spirit of Air
						["sourceQuests"] = {
							29782,	-- Stronger Than Bone
							29784,	-- Balanced Perspective
						},
						["qg"] = 55595,	-- Aysa Cloudsinger
						["coord"] = { 32.9, 35.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Locate Dafeng
								["provider"] = { "n", 55592 },	-- Dafeng <Ancient Spirit of Wind>
								["coord"] = { 24.8, 69.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29780, {	-- Do No Evil
						["sourceQuests"] = {
							29777,	-- Tools of the Enemy
							29778,	-- Rewritten Wisdoms
							29783,	-- Stronger Than Stone
						},
						["qg"] = 55583,	-- Ji Firepaw
						["coord"] = { 31.0, 36.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Ruk-Ruk slain
								["provider"] = { "n", 55634 },	-- Ruk-Ruk <Fe-Feng Chief>
								["coord"] = { 21.2, 34.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74592),	-- Dagger of the Hozen
							i(74593),	-- Staff of the Hozen
							i(74591),	-- Sword of the Hozen
						},
					}),
					q(29793, {	-- Evil from the Seas
						["sourceQuest"] = 30589,	-- Wrecking the Wreck
						["qg"] = 55942,	-- Ji Firepaw
						["coord"] = { 36.4, 72.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Darkened Horrors or Darkened Terrors slain
								["providers"] = {
									{ "n", 56007 },	-- Darkened Horror
									{ "n", 56008 },	-- Darkened Terror
								},
								["coord"] = { 38.0, 75.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74607),	-- Boots of Courage
							i(74608),	-- Legguards of the Brave
							i(74606),	-- Protector's Robes
							i(131917, {	-- Waders of Bravery
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(29523, {	-- Fanning the Flames
						["sourceQuest"] = 29417,	-- The Way of the Huojin
						["qg"] = 54568,	-- Ji Firepaw
						["coord"] = { 50.2, 21.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/1 Fluttering Breeze
								["providers"] = {
									{ "i", 72112 },	-- Fluttering Breeze (QI!)
									{ "i", 72109 },	-- Wind Stone (QI!)
									{ "o", 209325 },	-- Wind Stone
								},
								["coord"] = { 47.8, 31.6, THE_WANDERING_ISLE_STARTING_ZONE },
								["cr"] = 54631,	-- Living Air
							}),
							i(131906, {	-- Initiate's Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73231),	-- Initiate's Footgear
							i(73232),	-- Initiate's Sabatons
							i(73230),	-- Initiate's Slippers
						},
					}),
					q(29676, {	-- Finding an Old Friend
						["sourceQuests"] = {
							29661,	-- The Lesson of Dry Fur
							29662,	-- Stronger Than Reeds
							29663,	-- The Lesson of the Balanced Rock
						},
						["providers"] = {
							{ "n", 54975 },	-- Aysa Cloudsinger
							{ "i", 73183 },	-- Snowblossom Petals (QI!)
						},
						["coord"] = { 65.6, 42.6, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29665, {	-- From Bad to Worse
						["sourceQuest"] = 29796,	-- Urgent News
						["qg"] = 55940,	-- Jojo Ironbrow
						["coord"] = { 42.3, 86.4, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Deepscale Tormentor slain
								["provider"] = { "n", 56360 },	-- Deepscale Tormentor
								["coord"] = { 37.6, 87.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(30590, {	-- Handle With Care
						["sourceQuest"] = 30589,	-- Wrecking the Wreck
						["qg"] = 60055,	-- Makael Bay
						["coord"] = { 36.3, 72.4, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/6 Packed Explosion Charge
								["providers"] = {
									{ "i",  74955 },	-- Packed Explosion Charge (QI!)
									{ "o", 209792 },	-- Explosive Bundle
								},
								["coords"] = {
									{ 35.4, 78.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 35.6, 80.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.2, 76.6, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.4, 75.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.5, 76.7, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.6, 78.7, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 37.7, 77.2, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.1, 75.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.2, 78.2, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.3, 73.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.4, 78.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.5, 74.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.5, 79.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 39.4, 78.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 39.8, 75.7, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 39.9, 77.9, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
						},
					}),
					q(31014, {	-- Hellscream's Gift
						["sourceQuest"] = 31013,	-- The Horde Way
						["qg"] = 62092,	-- Garrosh Hellscream
						["coord"] = { 70.6, 30.8, ORGRIMMAR },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["maps"] = { 503 },	-- Brawl'gar Arena
						["races"] = { PANDAREN_HORDE },
					}),
					q(29422, {	-- Huo, the Spirit of Fire
						["sourceQuest"] = 29421,	-- Only the Worthy Shall Pass
						["qg"] = 54135,	-- Master Li Fei
						["coord"] = { 38.8, 25.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Reignite the Spirit of Fire
								["providers"] = {
									{ "n", 57779 },	-- Huo <Ancient Spirit of Fire>
									{ "i", 72583 },	-- Huo's Offerings (QI!)
								},
								["coord"] = { 39.44, 29.59, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29424, {	-- Items of Utmost Importance
						["sourceQuest"] = 29410,	-- Aysa of the Ushui
						["qg"] = 54943,	-- Merchant Lorvo
						["coord"] = { 55.1, 32.8, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/6 Stolen Training Supplies
								["provider"] = { "i", 72071 },	-- Stolen Training Supplies (QI!)
								["coord"] = { 54.0, 23.6, THE_WANDERING_ISLE_STARTING_ZONE },
								["cr"] = 54130,	-- Amberleaf Scamp
							}),
						},
					}),
					q(29522, {	-- Ji of the Huojin
						["sourceQuest"] = 29414,	-- The Way of the Tushui
						["qg"] = 54608,	-- Master Shang Xi
						["coord"] = { 57.5, 34.7, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(30987, {	-- Joining the Alliance
						["qg"] = 60566,	-- Aysa Cloudsinger
						["coord"] = { 74.2, 92.4, STORMWIND_CITY },
						["timeline"] = { ADDED_5_0_4 },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE },
					}),
					q(31012, {	-- Joining the Horde
						["qg"] = 60570,	-- Ji Firepaw
						["coord"] = { 45.6, 12.6, DUROTAR },
						["timeline"] = { ADDED_5_0_4 },
						["races"] = { PANDAREN_NEUTRAL },
					}),
					q(29418, {	-- Kindling the Fire
						["sourceQuest"] = 29417,	-- The Way of the Huojin
						["qg"] = 54568,	-- Ji Firepaw
						["coord"] = { 50.2, 21.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/5 Dry Dogwood Root
								["providers"] = {
									{ "i",  72111 },	-- Dry Dogwood Root (QI!)
									{ "o", 209326 },	-- Loose Dogwood Root
									{ "o", 209327 },	-- Loose Dogwood Root
								},
								["coord"] = { 48.0, 31.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29797, {	-- Medical Supplies
						["sourceQuest"] = 29796,	-- Urgent News
						["qg"] = 55944,	-- Delora Lionheart
						["coord"] = { 42.2, 86.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Alliance Medical Supplies
								["providers"] = {
									{ "i",  74958 },	-- Alliance Medical Supplies (QI!)
									{ "o", 209793 },	-- Alliance Medical Crate
								},
								["coords"] = {
									{ 35.2, 84.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.1, 85.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.1, 88.3, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.3, 86.7, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.3, 89.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 36.4, 83.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 37.1, 87.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 37.7, 86.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 37.8, 81.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 37.9, 83.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.0, 86.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.4, 83.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 38.4, 87.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 39.1, 88.5, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
						},
					}),
					q(29768, {	-- Missing Mallet
						["sourceQuests"] = {
							29769,	-- Rascals
							29770,	-- Still Good!
						},
						["qg"] = 55477,	-- Ji Firepaw
						["coord"] = { 68.9, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/1 Dai-Lo Recess Mallet
								["providers"] = {
									{ "i",  74298 },	-- Dai-Lo Recess Mallet (QI!)
									{ "o", 214406 },	-- Dai-Lo Recess Mallet
								},
								["coord"] = { 62.6, 76.9, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74585),	-- Dancing Boots
							i(131912, {	-- Ringing Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74583),	-- Silk Shoes
							i(74584),	-- Summer Shoes
						},
					}),
					q(29781, {	-- Monkey Advisory Warning
						["sourceQuests"] = {
							29777,	-- Tools of the Enemy
							29778,	-- Rewritten Wisdoms
							29783,	-- Stronger Than Stone
						},
						["qg"] = 55583,	-- Ji Firepaw
						["coord"] = { 31.0, 36.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/1 Stolen Firework Bundle
								["providers"] = {
									{ "i",  74631 },	-- Stolen Firework Bundle (QI!)
									{ "o", 209669 },	-- Stolen Fireworks
								},
								["coords"] = {
									{ 21.0, 34.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 21.7, 33.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 23.4, 32.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 24.3, 30.2, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 24.8, 31.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 25.1, 29.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 26.0, 27.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 26.1, 30.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 26.2, 32.2, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 26.3, 31.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 26.4, 28.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 27.0, 31.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 27.6, 28.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 27.8, 29.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 28.0, 29.8, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
						},
					}),
					q(29776, {	-- Morning Breeze Village
						["sourceQuest"] = 29775,	-- The Spirit and Body of Shen-zin Su
						["qg"] = 54786,	-- Master Shang Xi
						["coord"] = { 51.6, 48.3, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(30039, {	-- Much to Learn (Monk)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { MONK },
					}),
					q(30040, {	-- Much to Learn (Mage)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { MAGE },
					}),
					q(30041, {	-- Much to Learn (Hunter)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { HUNTER },
					}),
					q(30042, {	-- Much to Learn (Priest)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { PRIEST },
					}),
					q(30043, {	-- Much to Learn (Rogue)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { ROGUE },
					}),
					q(30044, {	-- Much to Learn (Shaman)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { SHAMAN },
					}),
					q(30045, {	-- Much to Learn (Warrior)
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { WARRIOR },
					}),
					q(29800, {	-- New Allies
						["sourceQuest"] = 29799,	-- The Healing of Shen-zin Su
						["qg"] = 57739,	-- Ji Firepaw
						["coord"] = { 38.8, 86.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Delivery Cart taken to the Template
								["provider"] = { "n", 57741 },	-- Delivery Cart
								["coord"] = { 41.6, 85.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29794, {	-- None Left Behind
						["sourceQuest"] = 29796,	-- Urgent News
						["qg"] = 55944,	-- Delora Lionheart
						["coord"] = { 42.2, 86.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/3 Injured Sailors rescued
								["provider"] = { "n", 55999 },	-- Injured Sailor
								["coord"] = { 40.0, 84.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(131916, {	-- Empathetic Mail
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74605),	-- Gauntlets of Mercy
							i(74603),	-- Survival Leggings
							i(74604),	-- Vest of Compassion
						},
					}),
					q(29774, {	-- Not In the Face!
						["sourceQuests"] = {
							29771,	-- Stronger Than Wood
							29772,	-- Raucous Rousing
						},
						["qg"] = 55477,	-- Ji Firepaw
						["coord"] = { 68.9, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Ask Shu for help
								["provider"] = { "n", 55556 },	-- Shu <Ancient Spirit of Water>
								["coord"] = { 69.0, 63.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Wake Wugou
								["provider"] = { "n", 60916 },	-- Wugou <Ancient Spirit of Earth>
								["coord"] = { 68.8, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29421, {	-- Only the Worthy Shall Pass
						["sourceQuest"] = 29664,	-- The Challenger's Fires
						["qg"] = 54135,	-- Master Li Fei
						["coord"] = { 38.8, 25.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Defeat Master Li Fei
								["provider"] = { "n", 54734 },	-- Master Li Fei
								["coord"] = { 38.8, 24.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73238),	-- Dagger of the Master
							i(73237),	-- Mace of the Master
							i(73239),	-- Staff of the Master
							i(73242),	-- Master's Haversack
						},
					}),
					q(29790, {	-- Passing Wisdom
						["sourceQuests"] = {
							29788,	-- Unwelcome Nature
							29789,	-- Small, but Significant
						},
						["qg"] = 55672,	-- Master Shang Xi
						["coord"] = { 19.5, 51.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							i(74599),	-- Cinch of Grieving
							i(74597),	-- Cord of Grieving
							i(131914, {	-- Links of Grieving
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74598),	-- Ropes of Grieving
						},
					}),
					q(30591, {	-- Preying on the Predators
						["sourceQuest"] = 29792,	-- Bidden to Greatness
						["qg"] = 55943,	-- Wei Palerage
						["coord"] = { 50.1, 76.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/9 Pei-Wu Tiger slain
								["provider"] = { "n", 55946 },	-- Pei-Wu Tiger
								["coord"] = { 52.4, 76.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29769, {	-- Rascals
						["sourceQuest"] = 29680,	-- The Source of Our Livelihood
						["qg"] = 55477,	-- Ji Firepaw
						["coord"] = { 68.9, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/10 Plump Virmen slain
								["providers"] = {
									{ "n", 55483 },	-- Plump Virmen
									{ "n", 55504 },	-- Plump Carrotcruncher
								},
								["coord"] = { 74.8, 71.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29772, {	-- Raucous Rousing
						["sourceQuest"] = 29768,	-- Missing Mallet
						["qg"] = 55477,	-- Ji Firepaw
						["coord"] = { 68.9, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Ring the town gong
								["provider"] = { "o", 209626 },	-- Break Gong
								["coord"] = { 69.0, 65.2, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29778, {	-- Rewritten Wisdoms
						["sourceQuest"] = 29776,	-- Morning Breeze Village
						["qg"] = 55583,	-- Ji Firepaw
						["coord"] = { 31.0, 36.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/5 Defaced Scroll of Wisdom burned
								["providers"] = {
									{ "o", 209656 },	-- Defaced Scroll of Wisdom
									{ "o", 209660 },	-- Defaced Scroll of Wisdom
									{ "o", 209661 },	-- Defaced Scroll of Wisdom
									{ "o", 209663 },	-- Defaced Scroll of Wisdom
								},
								["coord"] = { 32.4, 46.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74595),	-- Gloves of Verity
							i(74594),	-- Gloves of Wisdom
							i(131913, {	-- Handgrips of Verity
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74596),	-- Unvarnished Vambraces
						},
					}),
					q(30767, {	-- Risking It All
						["sourceQuest"] = 29798,	-- An Ancient Evil
						["qg"] = 56416,	-- Aysa Cloudsinger
						["coord"] = { 36.5, 84.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Shen-zin Su's Thorn Removed
								["provider"] = { "n", 60741 },	-- Ji Firepaw
								["coord"] = { 36.4, 87.36, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29678, {	-- Shu, the Spirit of Water
						["sourceQuests"] = {
							29666,	-- The Sting of Learning
							29677,	-- The Sun Pearl
						},
						["qg"] = 55020,	-- Old Man Liang
						["coord"] = { 78.4, 43.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Cross to the Pool of Reflection
								["description"] = "Jump into the swirling blue effects on the closest rock to the shore to jump up the rest of the stones to ledge.",
								["coord"] = { 79.979, 41.34, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Coax Shu, the Water Spirit
								["providers"] = {
									{ "n", 55213 },	-- Shu
									{ "i", 73791 },	-- Sun Pearl (QI!)
								},
								["coord"] = { 78.96, 37.18, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29789, {	-- Small, But Significant
						["sourceQuest"] = 29787,	-- Worthy of Passing
						["qg"] = 55672,	-- Master Shang Xi
						["coord"] = { 19.5, 51.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Kun-Pai Ritual Charm
								["providers"] = {
									{ "i",  74634 },	-- Kun-Pai Ritual Charm (QI!)
									{ "o", 209671 },	-- Kun-Pai Ritual Charm
									{ "o", 209774 },	-- Kun-Pai Ritual Charm
								},
								["coord"] = { 23.0, 47.3, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29770, {	-- Still Good!
						["sourceQuest"] = 29680,	-- The Source of Our Livelihood
						["qg"] = 55479,	-- Gao Summerdraft
						["coord"] = { 68.1, 66.4, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/3 Uprooted Turnip
								["providers"] = {
									{ "i",  74295 },	-- Uprooted Turnip (QI!)
									{ "o", 209639 },	-- Uprooted Turnip
									{ "o", 209640 },	-- Uprooted Turnip
								},
								["coords"] = {
									{ 67.0, 77.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 67.3, 75.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.1, 77.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.4, 79.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.4, 81.6, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.5, 77.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.5, 79.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 68.6, 81.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 69.4, 79.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 69.7, 82.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 70.0, 77.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 70.0, 82.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 70.1, 79.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 70.5, 80.3, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 71.0, 80.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 71.2, 79.3, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 71.2, 81.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 71.3, 77.8, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
							objective(2, {	-- 0/3 Stolen Carrot
								["providers"] = {
									{ "i",  74296 },	-- Stolen Carrot (QI!)
									{ "o", 209641 },	-- Stolen Carrot
								},
								["coords"] = {
									{ 71.5, 70.2, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 73.8, 70.8, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 74.0, 72.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 75.0, 74.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 75.4, 72.9, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
							objective(3, {	-- 0/3 Pilfered Pumpkin
								["providers"] = {
									{ "i",  74297 },	-- Pilfered Pumpkin (QI!)
									{ "o", 209642 },	-- Pilfered Pumpkin
									{ "o", 209643 },	-- Pilfered Pumpkin
									{ "o", 209644 },	-- Pilfered Pumpkin
									{ "o", 209645 },	-- Pilfered Pumpkin
								},
								["coords"] = {
									{ 77.3, 70.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 77.9, 71.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 78.0, 72.5, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 78.4, 70.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 78.6, 69.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 78.7, 70.8, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
							i(74582),	-- Comfortable Greaves
							i(74580),	-- Homespun Leggings
							i(131911, {	-- Padded Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74581),	-- Soft Britches
						},
					}),
					q(29795, {	-- Stocking Stalks
						["sourceQuest"] = 29792,	-- Bidden to Greatness
						["qg"] = 60042,	-- Korga Strongmane
						["coord"] = { 50.2, 76.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/10 Broken Bamboo Stalk
								["providers"] = {
									{ "i",  80806 },	-- Broken Bamboo Stalk (QI!)
									{ "o", 211394 },	-- Broken Bamboo Stalk
									{ "o", 211397 },	-- Broken Bamboo Stalk
									{ "o", 211398 },	-- Broken Bamboo Stalk
									{ "o", 211399 },	-- Broken Bamboo Stalk
									{ "o", 211400 },	-- Broken Bamboo Stalk
									{ "o", 211401 },	-- Broken Bamboo Stalk
								},
								["coord"] = { 52.2, 79.2, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29782, {	-- Stronger Than Bone
						["sourceQuest"] = 29778,	-- Rewritten Wisdoms
						["providers"] = {
							{ "o", 209673 },	-- Jade Tiger Pillar
							{ "i",  76174 },	-- Jade Tiger Pillar (QI!)
						},
						["coord"] = { 26.4, 33.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							i(157020, {	-- Humble Cudgel
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74588),	-- Jade Crossbow
							i(74590),	-- Jade Hilted Dagger
							i(74589),	-- Jade Hilted Sword
							i(74587),	-- Jade Shield
						},
					}),
					q(29662, {	-- Stronger Than Reeds
						["sourceQuest"] = 29521,	-- The Singing Pools
						["qg"] = 55021,	-- Jojo Ironbrow
						["coord"] = { 63.5, 41.9, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Hard Tearwood Reed
								["providers"] = {
									{ "i",  73178 },	-- Hard Tearwood Reed (QI!)
									{ "o", 209507 },	-- Hard Tearwood Reed
								},
								["coord"] = { 62.5, 48.7, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29783, {	-- Stronger Than Stone
						["sourceQuest"] = 29776,	-- Morning Breeze Village
						["qg"] = 55585,	-- Jojo Ironbrow
						["coord"] = { 29.9, 39.8, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/12 Abandoned Stone Blocks
								["providers"] = {
									{ "i",  74624 },	-- Abandoned Stone Blocks (QI!)
									{ "o", 209665 },	-- Abandoned Stone Blocks
								},
								["coord"] = { 31.2, 47.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29771, {	-- Stronger Than Wood
						["sourceQuests"] = {
							29769,	-- Rascals
							29770,	-- Still Good!
						},
						["qg"] = 55478,	-- Jojo Ironbrow
						["coord"] = { 69.2, 66.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/12 Discarded Wood Plank
								["providers"] = {
									{ "i",  74301 },	-- Discarded Wood Plank
									{ "o", 209646 },	-- Discarded Wood Plank
								},
								["coords"] = {
									{ 61.9, 79.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 62.2, 76.4, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 62.2, 79.9, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 62.2, 81.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 62.3, 77.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 63.1, 77.1, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 63.4, 79.0, THE_WANDERING_ISLE_STARTING_ZONE },
									{ 63.5, 78.7, THE_WANDERING_ISLE_STARTING_ZONE },
								},
							}),
						},
					}),
					q(30988, {	-- The Alliance Way
						["sourceQuest"] = 30987,	-- Joining the Alliance
						["qg"] = 61796,	-- King Varian Wrynn
						["coord"] = { 82.6, 28.2, STORMWIND_CITY },
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE },
					}),
					q(29664, {	-- The Challenger's Fires
						["sourceQuest"] = 29420,	-- The Spirit's Guardian
						["qg"] = 54135,	-- Master Li Fei
						["coord"] = { 38.8, 25.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Challenger Torch lit
								["providers"] = {
									{ "i",  75008 },	-- Unlit Challenger's Torch (QI!)
									{ "o", 209369 },	-- Brazier of the Flickering Flame
								},
								["coord"] = { 38.8, 25.3, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Red Brazier lit
								["providers"] = {
									{ "i",  75000 },	-- Torch of Prismatic Flame (QI!)
									{ "o", 209801 },	-- Brazier of the Red Flame
								},
								["coord"] = { 38.8, 23.5, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(3, {	-- Blue Brazier lit
								["providers"] = {
									{ "i",  75000 },	-- Torch of Prismatic Flame (QI!)
									{ "o", 209802 },	-- Brazier of the Blue Flame
								},
								["coord"] = { 39.0, 25.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(4, {	-- Violet Brazier lit
								["providers"] = {
									{ "i",  75000 },	-- Torch of Prismatic Flame (QI!)
									{ "o", 209803 },	-- Brazier of the Violet Flame
								},
								["coord"] = { 38.5, 25.1, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29779, {	-- The Direct Solution
						["sourceQuests"] = {
							29777,	-- Tools of the Enemy
							29778,	-- Rewritten Wisdoms
							29783,	-- Stronger Than Stone
						},
						["qg"] = 55583,	-- Ji Firepaw
						["coord"] = { 31.0, 36.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/20  slain
								["providers"] = {
									{ "n", 55632 },	-- Fe-Feng Ruffian
									{ "n", 55633 },	-- Fe-Feng Firethief
									{ "n", 57466 },	-- Fe-Feng Firethief
								},
								["coord"] = { 26.0, 30.2, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29409, {	-- The Disciple's Challenge
						["sourceQuest"] = 29408,	-- The Lesson of the Burning Scroll
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 59.7, 19.1, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Defeat Jaomin Ro
								["provider"] = { "n", 54611 },	-- Jaomin Ro
								["coord"] = { 67.6, 22.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73222),	-- Initiate's Gauntlets
							i(73220),	-- Initiate's Gloves
							i(131903, {	-- Initiate's Grips
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73221),	-- Initiate's Handguards
						},
					}),
					q(29799, {	-- The Healing of Shen-zin Su
						["sourceQuest"] = 30767,	-- Risking it All
						["qg"] = 56418,	-- Ji Firepaw
						["coord"] = { 39.3, 86.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Protect the healers
								["provider"] = { "n", 60780 },	-- Deepscale Ravager
								["coord"] = { 39.8, 88.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74601),	-- Ceremonial Leggings
							i(74600),	-- Healer's Wristwraps
							i(74602),	-- Ritual Breastplate
							i(131915, {	-- Service Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(31013, {	-- The Horde Way
						["sourceQuest"] = 31012,	-- Joining the Horde
						["qg"] = 39605,	-- Garrosh Hellscream
						["coord"] = { 48.2, 70.6, ORGRIMMAR },
						["timeline"] = { ADDED_5_0_4 },
						["races"] = { PANDAREN_NEUTRAL },
					}),
					q(29661, {	-- The Lesson of Dry Fur
						["sourceQuest"] = 29521,	-- The Singing Pools
						["qg"] = 54975,	-- Aysa Cloudsinger
						["coord"] = { 65.6, 42.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Ring the Training Bell
								["provider"] = { "o", 209608 },	-- Training Bell
								["coord"] = { 61.5, 47.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74570),	-- Unmarred Belt
							i(131907, {	-- Unmarred Chain
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74568),	-- Unmarred Cord
							i(74569),	-- Unmarred Waistband
						},
					}),
					q(29524, {	-- The Lesson of Stifled Pride
						["sourceQuest"] = 29406,	-- The Lesson of the Sandy Fist
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/6 Sparring Trainees defeated
								["providers"] = {
									{ "n", 54586 },	-- Huojin Trainee
									{ "n", 54587 },	-- Tushui Trainee
									{ "n", 65470 },	-- Huojin Trainee
									{ "n", 65471 },	-- Tushui Trainee
								},
								["coord"] = { 59.8, 20.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73218),	-- Initiate's Belt
							i(131902, {	-- Initiate's Braided Belt
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73219),	-- Initiate's Plate Belt
							i(73217),	-- Initiate's Rope Belt
						},
					}),
					q(29663, {	-- The Lesson of the Balanced Rock
						["sourceQuest"] = 29521,	-- The Singing Pools
						["qg"] = 54975,	-- Aysa Cloudsinger
						["coord"] = { 65.6, 42.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/6 Defeat Tushui Monks
								["provider"] = { "n", 55019 },	-- Tushui Monk
								["coord"] = { 62.6, 47.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29408, {	-- The Lesson of the Burning Scroll
						["sourceQuest"] = 29524,	-- The Lesson of Stifled Pride
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 59.7, 19.1, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Snatch the Master's Flame
								["providers"] = {
									{ "i", 80212 },	-- The Master's Flame (QI!)
									{ "n", 59591 },	-- The Master's Flame
								},
								["coord"] = { 59.7, 19.1, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Burn the Edict of Temperance
								["providers"] = {
									{ "i",  80212 },	-- The Master's Flame (QI!)
									{ "o", 210986 },	-- Edict of Temperance
								},
								["coord"] = { 60.0, 20.5, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(30034, {	-- The Lesson of the Iron Bough (Hunter)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30041,	-- Much to Learn (Hunter)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { HUNTER },
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Crossbow
								["provider"] = { "i", 73211 },	-- Trainee's Crossbow
							}),
						},
					}),
					q(30038, {	-- The Lesson of the Iron Bough (Warrior)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30045,	-- Much to Learn (Warrior)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { WARRIOR },
						["groups"] = {
							-- #if AFTER 9.0.1
							objective(1, {	-- Loot and Equip a Trainee's Axe
								["provider"] = { "i", 76391 },	-- Trainee's Axe
							}),
							objective(2, {	-- Loot and Equip a Trainee's Shield
								["provider"] = { "i", 73213 },	-- Trainee's Shield
							}),
							-- #else
							objective(1, {	-- Loot and Equip a Trainee's Sword
								["provider"] = { "i", 73210 },	-- Trainee's Sword
							}),
							-- #endif
						},
					}),
					q(30033, {	-- The Lesson of the Iron Bough (Mage, Warlock)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30040,	-- Much to Learn (Mage)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = {
							MAGE,
							-- #if AFTER DF
							WARLOCK
							-- #endif
						},
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Spellblade
								["provider"] = { "i", 76390 },	-- Trainee's Spellblade
							}),
							objective(2, {	-- Loot and Equip a Trainee's Hand Fan
								["provider"] = { "i", 76392 },	-- Trainee's Hand Fan
							}),
						},
					}),
					q(30035, {	-- The Lesson of the Iron Bough (Priest)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30042,	-- Much to Learn (Priest)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { PRIEST },
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Mace
								["provider"] = { "i", 73207 },	-- Trainee's Mace
							}),
							objective(2, {	-- Loot and Equip a Trainee's Book of Prayers
								["provider"] = { "i", 76393 },	-- Trainee's Book of Prayers
							}),
						},
					}),
					q(30027, {	-- The Lesson of the Iron Bough (Monk)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30039,	-- Much to Learn (Monk)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { MONK },
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Staff
								["provider"] = { "i", 73209 },	-- Trainee's Staff
							}),
						},
					}),
					q(30036, {	-- The Lesson of the Iron Bough (Rogue)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30043,	-- Much to Learn (Rogue)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { ROGUE },
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Dagger
								["provider"] = { "i", 73208 },	-- Trainee's Dagger
							}),
							objective(2, {	-- Loot and Equip a Second Trainee's Dagger
								["provider"] = { "i", 73212 },	-- Trainee's Dagger
							}),
						},
					}),
					q(30037, {	-- The Lesson of the Iron Bough (Shaman)
						-- #if BEFORE LEGION
						["sourceQuest"] = 30044,	-- Much to Learn (Shaman)
						-- #endif
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["classes"] = { SHAMAN },
						["groups"] = {
							objective(1, {	-- Loot and Equip a Trainee's Axe
								["provider"] = { "i", 76391 },	-- Trainee's Axe
							}),
							objective(2, {	-- Loot and Equip a Trainee's Shield
								["provider"] = { "i", 73213 },	-- Trainee's Shield
							}),
						},
					}),
					q(29406, {	-- The Lesson of the Sandy Fist
						["sourceQuests"] = {
							30027,	-- The Lesson of the Iron Bough (Monk)
							30033,	-- The Lesson of the Iron Bough (Mage, Warlock)
							30034,	-- The Lesson of the Iron Bough (Hunter)
							30035,	-- The Lesson of the Iron Bough (Priest)
							30036,	-- The Lesson of the Iron Bough (Rogue)
							30037,	-- The Lesson of the Iron Bough (Shaman)
							30038,	-- The Lesson of the Iron Bough (Warrior)
						},
						["qg"] = 53566,	-- Master Shang Xi
						["coord"] = { 56.7, 18.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/5 Training Targets destroyed
								["providers"] = {
									{ "n", 57873 },	-- Training Target
									{ "n", 53714 },	-- Training Target
								},
								["coord"] = { 58.2, 19.6, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73216),	-- Initiate's Armguards
							i(73215),	-- Initiate's Bracers
							i(131901, {	-- Initiate's Cuffs
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73214),	-- Initiate's Wristwraps
						},
					}),
					q(29419, {	-- The Missing Driver
						["sourceQuest"] = 29410,	-- Aysa of the Ushui
						["qg"] = 54943,	-- Merchant Lorvo
						["coord"] = { 55.1, 32.8, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Rescue the Cart Driver
								["provider"] = { "n", 54855 },	-- Min Dimwind <Cart Driver>
								["coord"] = { 54.0, 21.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73223),	-- Cloak of the Compassionate
							i(73241),	-- Merchant's Satchel
						},
					}),
					q(29423, {	-- The Passion of Shen-zin Su
						["sourceQuest"] = 29422,	-- Huo, the Spirit of Fire
						["qg"] = 54787,	-- Huo
						["coord"] = { 39.4, 29.5, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Bring the Spirit of Fire to the Temple of Five Dawns
								["provider"] = { "n", 54958 },	-- Huo
								["coord"] = { 39.4, 29.5, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73236),	-- Dagger of Silent Flame
							i(73234),	-- Flameheart Crossbow
							i(73233),	-- Shield of Blazing Will
							i(73235),	-- Sword of the Burning Spirit
						},
					}),
					q(29521, {	-- The Singing Pools
						["sourceQuest"] = 29423,	-- The Passion of Shen-zin Su
						["qg"] = 54786,	-- Master Shang Xi
						["coord"] = { 51.4, 46.4, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29680, {	-- The Source of Our Livelihood
						["sourceQuest"] = 29679,	-- A New Friend
						["qg"] = 54975,	-- Aysa Cloudsinger
						["coord"] = { 79.8, 39.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Delivery Cart taken to the Dai-Lo Farmstead
								["provider"] = { "n", 57710 },	-- Delivery Cart
								["coord"] = { 79.2, 45.2, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29775, {	-- The Spirit and Body of Shen-zin Su
						["sourceQuest"] = 29774,	-- Not in the Face!
						["qg"] = 55477,	-- Ji Firepaw
						["coord"] = { 68.9, 65.0, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Delivery Cart taken to the Temple
								["provider"] = { "n", 59497 },	-- Delivery Cart
								["coord"] = { 67.8, 67.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74578),	-- Bindings of the Earth Spirit
							i(131910, {	-- Bracers of the Earth Spirit
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74579),	-- Gauntlets of Earth and Water
							i(74577),	-- Robes of the Water Spirit
						},
					}),
					q(29420, {	-- The Spirit's Guardian
						["sourceQuests"] = { 29418, 29523 },	-- Kindling the Fire, Fanning the Flames
						["qg"] = 54609,	-- Master Shang Xi
						["coord"] = { 50.3, 21.5, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29666, {	-- The Sting of Learning
						["sourceQuest"] = 29676,	-- Finding an Old Friend
						["qg"] = 55020,	-- Old Man Liang
						["coord"] = { 70.6, 38.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/6 Water Pincer slain
								["provider"] = { "n", 60411 },	-- Water Pincer
								["coord"] = { 73.8, 40.4, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29791, {	-- The Suffering of Shen-zin Su
						["sourceQuest"] = 29790,	-- Passing Wisdom
						["qg"] = 56662,	-- Aysa Cloudsinger
						["coord"] = { 15.8, 49.1, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Board the Hot Air Balloon
								["provider"] = { "n", 55918 },	-- Shang Xi's Hot Air Balloon
								["coord"] = { 15.67, 49.04, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							objective(2, {	-- Uncover the source of Shen-zin Su's pain
								["provider"] = { "n", 57769 },	-- Shen-zin Su
								["coord"] = { 0.0, 50.0, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29677, {	-- The Sun Pearl
						["sourceQuest"] = 29676,	-- Finding an Old Friend
						["qg"] = 55020,	-- Old Man Liang
						["coord"] = { 70.6, 38.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/1 Sun Pearl
								["providers"] = {
									{ "i",  73184 },	-- Sun Pearl (QI!)
									{ "o", 209584 },	-- Ancient Clam
								},
								["coord"] = { 76.5, 46.7, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(74576),	-- Sun Pearl Bracers
							i(131909, {	-- Sun Pearl Chainmail
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74574),	-- Sun Pearl Gloves
							i(74575),	-- Sun Pearl Vest
						},
					}),
					q(29417, {	-- The Way of the Huojin
						["sourceQuest"] = 29522,	-- Ji of the Huojin
						["qg"] = 54568,	-- Ji Firepaw
						["coord"] = { 50.2, 21.3, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Fe-Feng attackers slain
								["providers"] = {
									{ "n", 54131 },	-- Fe-Feng Hozen
									{ "n", 56730 },	-- Fe-Feng Brewthief
									{ "n", 57164 },	-- Fe-Feng Leaper
									{ "n", 57205 },	-- Fe-Feng Hozen
								},
								["coord"] = { 50.6, 19.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73228),	-- Initiate's Britches
							i(131905, {	-- Initiate's Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73227),	-- Initiate's Leggings
							i(73229),	-- Initiate's Legguards
						},
					}),
					q(29414, {	-- The Way of the Tushui
						["sourceQuests"] = { 29419, 29424 },	-- The Missing Driver, Items of Utmost Importance
						["qg"] = 54567,	-- Aysa Cloudsinger
						["coord"] = { 55.1, 32.6, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Protect Aysa while she meditates
								["providers"] = {
									{ "n", 59637 },	-- Amberleaf Troublemaker
									{ "n", 61801 },	-- Amberleaf Troublemaker
								},
								["coord"] = { 57.88, 36.47, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
							i(73226),	-- Initiate's Breastplate
							i(131904, {	-- Initiate's Chestpiece
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73224),	-- Initiate's Robes
							i(73225),	-- Initiate's Vest
						},
					}),
					q(29777, {	-- Tools of the Enemy
						["sourceQuest"] = 29776,	-- Morning Breeze Village
						["qg"] = 55588,	-- Elder Shaopai
						["coord"] = { 31.8, 39.7, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Paint Soaked Brush
								["provider"] = { "i", 74615 },	-- Paint Soaked Brush (QI!)
								["coord"] = { 31.8, 50.0, THE_WANDERING_ISLE_STARTING_ZONE },
								["cr"] = 55601,	-- Fe-Feng Wiseman
							}),
						},
					}),
					q(29788, {	-- Unwelcome Nature
						["sourceQuest"] = 29787,	-- Worthy of Passing
						["qg"] = 55672,	-- Master Shang Xi
						["coord"] = { 19.5, 51.2, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- 0/8 Thornbranch Scamp slain
								["provider"] = { "n", 55640 },	-- Thornbranch Scamp
								["coord"] = { 21.8, 45.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(29796, {	-- Urgent News
						["sourceQuests"] = {
							29793,	-- Evil from the Seas
							30590,	-- Handle With Care
						},
						["qg"] = 55942,	-- Ji Firepaw
						["coord"] = { 36.4, 72.5, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
					q(29787, {	-- Worthy of Passing
						["sourceQuest"] = 29786,	-- Battle for the Skies
						["qg"] = 55586,	-- Master Shang Xi
						["coord"] = { 30.0, 60.4, THE_WANDERING_ISLE_STARTING_ZONE },
						["groups"] = {
							objective(1, {	-- Guardian of the Elders slain
								["provider"] = { "n", 56274 },	-- Guardian of the Elders
								["coord"] = { 23.0, 52.8, THE_WANDERING_ISLE_STARTING_ZONE },
							}),
						},
					}),
					q(30589, {	-- Wrecking the Wreck
						["sourceQuests"] = {
							29795,	-- Stocking Stalks
							30591,	-- Preying on the Predators
						},
						["qg"] = 60042,	-- Korga Strongmane
						["coord"] = { 50.2, 76.6, THE_WANDERING_ISLE_STARTING_ZONE },
					}),
				}),
				n(TREASURES, {
					o(210005, {	-- Weapon Rack
						["providers"] = {
							{ "o", 210015 },	-- Weapon Rack
							{ "o", 210016 },	-- Weapon Rack
							{ "o", 210017 },	-- Weapon Rack
							{ "o", 210018 },	-- Weapon Rack
							{ "o", 210019 },	-- Weapon Rack
							{ "o", 210020 },	-- Weapon Rack
						},
						["sourceQuests"] = { 30027, 30033, 30034, 30035, 30036, 30037, 30038 },	-- The Lesson of the Iron Bough (all classes)
						["coords"] = {
							{ 56.9, 20.4, THE_WANDERING_ISLE_STARTING_ZONE },
							{ 56.9, 20.5, THE_WANDERING_ISLE_STARTING_ZONE },
							{ 57.2, 19.2, THE_WANDERING_ISLE_STARTING_ZONE },
							{ 57.7, 17.7, THE_WANDERING_ISLE_STARTING_ZONE },
							{ 57.9, 19.9, THE_WANDERING_ISLE_STARTING_ZONE },
							{ 59.1, 17.3, THE_WANDERING_ISLE_STARTING_ZONE },
						},
						["description"] = "Only available during The Lesson of the Iron Bough.",
						["groups"] = bubbleDown({ ["b"] = 1 }, {
							i(76391, {	-- Trainee's Axe
								["classes"] = {
									SHAMAN,
									-- #if AFTER 9.0.1
									WARRIOR,
									-- #endif
								},
							}),
							i(76393, {	-- Trainee's Book of Prayers
								["classes"] = { PRIEST },
							}),
							i(73211, {	-- Trainee's Crossbow
								["classes"] = { HUNTER },
							}),
							i(73208, {	-- Trainee's Dagger
								["classes"] = { ROGUE },
							}),
							i(73212, {	-- Trainee's Dagger
								["classes"] = { ROGUE },
							}),
							i(76392, {	-- Trainee's Hand Fan
								["classes"] = { MAGE, WARLOCK },
							}),
							i(77279, {	-- Trainee's Handwrap
								["timeline"] = { CREATED_5_0_4, ADDED_7_0_3, REMOVED_9_0_1 },
								["classes"] = { MONK },
								-- Monks got the staff initially, replaced with fist weapons in legion, then back to staff in shadowlands.
							}),
							i(77278, {	-- Trainee's Handwrap (off-hand)
								["timeline"] = { CREATED_5_0_4, ADDED_7_0_3, REMOVED_9_0_1 },
								["classes"] = { MONK },
								-- Monks got the staff initially, replaced with fist weapons in legion, then back to staff in shadowlands.
							}),
							i(73207, {	-- Trainee's Mace
								["classes"] = { PRIEST },
							}),
							i(73213, {	-- Trainee's Shield
								["classes"] = {
									SHAMAN,
									-- #if AFTER 9.0.1
									WARRIOR,
									-- #endif
								},
							}),
							i(76390, {	-- Trainee's Spellblade
								["classes"] = { MAGE, WARLOCK },
							}),
							i(73209, {	-- Trainee's Staff
								["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3, ADDED_9_0_1 },
								["classes"] = { MONK },
								-- Monks got the staff initially, replaced with fist weapons in legion, then back to staff in shadowlands.
							}),
							i(73210, {	-- Trainee's Sword
								["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 },
								["classes"] = { WARRIOR },
								-- Warriors no longer get access to the sword with shadowlands as they are forced into Protection spec.
							}),
						}),
					}),
				}),
			},
		}),
	})),
});
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(THE_WANDERING_ISLE_STARTING_ZONE, {
			n(QUESTS, {
				q(29404),	-- Much to Learn [NYI] - completed with quest 30039, 30040, 30041, 30042, 30043, 30044, 30045.
				q(30454),	-- Pandaren Alliance Tracking Quest - triggers after choosing Alliance faction
				q(30455),	-- Pandaren Horde Tracking Quest - triggers after choosing Horde faction
			}),
		}),
	}),
})));
