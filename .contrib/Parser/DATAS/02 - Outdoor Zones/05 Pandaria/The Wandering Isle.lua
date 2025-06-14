---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local STARTER_WANDERING_ISLE = 378;

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(STARTER_WANDERING_ISLE, {	-- The Wandering Isle Starter Zones
			["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },	-- [Adding faction just to be safe]
			["icon"] = 133937,
			["g"] = {
				n(FACTIONS, {
					faction(1216, {	-- Shang Xi's Academy
						["description"] = "The maximum obtainable reputation with this faction is 8510/12000 (Honored).",
						["collectible"] = false,
					}),
				}),
				n(QUESTS, {
					q(31450, {	-- A New Fate
						["provider"] = { "n", 56013 },	-- Spirit of Master Shang Xi
						["sourceQuests"] = { 29800 },	-- New Allies
						["coord"] = { 51.5, 48.3, STARTER_WANDERING_ISLE },
					}),
					q(29679, {	-- A New Friend
						["sourceQuests"] = { 29678 },	-- Shu, the Spirit of Water
						["coord"] = { 65.6, 42.6, STARTER_WANDERING_ISLE },
						["g"] = {
							i(131908, {	-- Gauntlets of Splashing Water
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74573),	-- Glistening Breastplate
							i(74572),	-- Gloves of Splashing Water
							i(74571),	-- Playful Wristbands
						},
					}),
					q(29798, {	-- An Ancient Evil
						["provider"] = { "n", 55940 },	-- Jojo Ironbrow
						["sourceQuests"] = {
							29665,	-- From Bad to Worse
							29794,	-- None Left Behind
							29797,	-- Medical Supplies
						},
						["coord"] = { 42.2, 86.5, STARTER_WANDERING_ISLE },
					}),
					q(29410, {	-- Aysa of the Tushui
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29409 },	-- The Disciple's Challenge
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(29784, {	-- Balanced Perspective
						["provider"] = { "n", 65558 },	-- Huojin Monk
						["sourceQuests"] = {
							29779, 	-- The Direct Solution
							29780,	-- Do No Evil
							29781,	-- MOnkey Advisory Warning
						},
						["coord"] = { 21.2, 34.2, STARTER_WANDERING_ISLE },
					}),
					q(29786, {	-- Battle for the Skies
						["provider"] = { "n", 55595 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29785 },	-- Dafeng, the Spirit of Air
						["coord"] = { 24.8, 69.8, STARTER_WANDERING_ISLE },
						["g"] = { i(74586) },	-- Cloak of the Fiery Skies
					}),
					q(29792, {	-- Bidden to Greatness
						["provider"] = { "n", 56012 },	-- Elder Shaopai
						["sourceQuests"] = { 29791 },	-- The Suffering of Shen-zin Su
						["coord"] = { 51.3, 48.3, STARTER_WANDERING_ISLE },
					}),
					q(29785, {	-- Dafeng, the Spirit of Air
						["provider"] = { "n", 55595 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29784 },	-- Balanced Perspective
						["coord"] = { 33.0, 35.6, STARTER_WANDERING_ISLE },
					}),
					q(29780, {	-- Do No Evil
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["coord"] = { 31.0, 36.7, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74592),	-- Dagger of the Hozen
							i(74593),	-- Staff of the Hozen
							i(74591),	-- Sword of the Hozen
						},
					}),
					q(29793, {	-- Evil from the Seas
						["provider"] = { "n", 55942 },	-- Ji Firepaw
						["sourceQuests"] = { 30589 },	-- Wrecking the Wreck
						["coord"] = { 36.3, 72.4, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74607),	-- Boots of Courage
							i(74608),	-- Legguards of the Brave
							i(74606),	-- Protector's Robes
							i(131917, {	-- Waders of Bravery
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(29523, {	-- Fanning the Flames
						["provider"] = { "n", 54568 },	-- Ji Firepaw
						["sourceQuests"] = { 29417 },	-- The Way of the Huojin
						["coord"] = { 50.3, 21.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(131906, {	-- Initiate's Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73231),	-- Initiate's Footgear
							i(73232),	-- Initiate's Sabatons
							i(73230),	-- Initiate's Slippers
							--
							i(72112),	-- Fluttering Breeze (QI!)
							i(72109),	-- Wind Stone (QI!)
						},
					}),
					q(29676, {	-- Finding an Old Friend
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = {
							29661,	-- The Lesson of Dry Fur
							29663,	-- The Lesson of the Balanced Rock
						},
						["coord"] = { 65.6, 42.6, STARTER_WANDERING_ISLE },
						["g"] = { i(73183) },	-- Snowblossom Petals (QI!)
					}),
					q(29665, {	-- From Bad to Worse
						["provider"] = { "n", 55940 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29796 },	-- Urgent News
						["coord"] = { 42.2, 86.5, STARTER_WANDERING_ISLE },
					}),
					q(30590, {	-- Handle With Care
						["provider"] = { "n", 60055 },	-- Makael Bay
						["sourceQuests"] = { 30589 },	-- Wrecking the Wreck
						["coord"] = { 36.3, 72.4, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209792, {	-- Explosive Bundle
								["coords"] = {
									{ 35.4, 78.8, STARTER_WANDERING_ISLE },
									{ 35.6, 80.8, STARTER_WANDERING_ISLE },
									{ 36.2, 76.6, STARTER_WANDERING_ISLE },
									{ 36.4, 75.4, STARTER_WANDERING_ISLE },
									{ 36.5, 76.7, STARTER_WANDERING_ISLE },
									{ 36.6, 78.7, STARTER_WANDERING_ISLE },
									{ 37.7, 77.2, STARTER_WANDERING_ISLE },
									{ 38.1, 75.4, STARTER_WANDERING_ISLE },
									{ 38.2, 78.2, STARTER_WANDERING_ISLE },
									{ 38.3, 73.9, STARTER_WANDERING_ISLE },
									{ 38.4, 78.9, STARTER_WANDERING_ISLE },
									{ 38.5, 74.1, STARTER_WANDERING_ISLE },
									{ 38.5, 79.1, STARTER_WANDERING_ISLE },
									{ 39.4, 78.4, STARTER_WANDERING_ISLE },
									{ 39.8, 75.7, STARTER_WANDERING_ISLE },
									{ 39.9, 77.9, STARTER_WANDERING_ISLE },
								},
								["g"] = { i(74955) },	-- Packed Explosion Charge (QI!)
							})
						},
					}),
					q(29422, {	-- Huo, the Spirit of Fire
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29421 },	-- Only the Worthy Shall Pass
						["coord"] = { 38.8, 25.5, STARTER_WANDERING_ISLE },
						["g"] = { i(72583) },	-- Huo's Offerings (QI!)
					}),
					q(29424, {	-- Items of Utmost Importance
						["provider"] = { "n", 54943 },	-- Merchant Lorvo
						["sourceQuests"] = { 29410 },	-- Aysa of the Ushui
						["coord"] = { 55.1, 32.6, STARTER_WANDERING_ISLE },
						["g"] = { i(72071) },	-- Stolen Training Supplies (QI!)
					}),
					q(29522, {	-- Ji of the Huojin
						["provider"] = { "n", 54608 },	-- Master Shang Xi
						["sourceQuests"] = { 29414 },	-- The Way of the Tushui
						["coord"] = { 57.5, 34.8, STARTER_WANDERING_ISLE },
					}),
					q(29418, {	-- Kindling the Fire
						["provider"] = { "n", 54568 },	-- Ji Firepaw
						["sourceQuests"] = { 29417 },	-- The Way of the Huojin
						["coord"] = { 50.3, 21.5, STARTER_WANDERING_ISLE },
						["g"] = {
							o_repeated({	-- -- Loose Dogwood Root
								o(209326),	-- Loose Dogwood Root
								o(209327),	-- Loose Dogwood Root
								i(72111),	-- Dry Dogwood Root (QI!)
							}),
						},
					}),
					q(29797, {	-- Medical Supplies
						["provider"] = { "n", 55944 },	-- Delora Lionheart
						["sourceQuests"] = { 29796 },	-- Urgent News
						["coord"] = { 42.2, 86.5, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209793, {	-- Alliance Medical Crate
								["coords"] = {
									{ 35.2, 84.4, STARTER_WANDERING_ISLE },
									{ 36.1, 85.8, STARTER_WANDERING_ISLE },
									{ 36.1, 88.3, STARTER_WANDERING_ISLE },
									{ 36.3, 86.7, STARTER_WANDERING_ISLE },
									{ 36.3, 89.1, STARTER_WANDERING_ISLE },
									{ 36.4, 83.4, STARTER_WANDERING_ISLE },
									{ 37.1, 87.1, STARTER_WANDERING_ISLE },
									{ 37.7, 86.4, STARTER_WANDERING_ISLE },
									{ 37.8, 81.4, STARTER_WANDERING_ISLE },
									{ 37.9, 83.5, STARTER_WANDERING_ISLE },
									{ 38.0, 86.8, STARTER_WANDERING_ISLE },
									{ 38.4, 83.1, STARTER_WANDERING_ISLE },
									{ 38.4, 87.5, STARTER_WANDERING_ISLE },
									{ 39.1, 88.5, STARTER_WANDERING_ISLE },
								},
								["g"] = { i(74958) },	-- Alliance Medical Supplies (QI!)
							}),
						},
					}),
					q(29768, {	-- Missing Mallet
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29769 },	-- Rascals
						["coord"] = { 68.9, 65.0, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74585),	-- Dancing Boots
							i(131912, {	-- Ringing Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74583),	-- Silk Shoes
							i(74584),	-- Summer Shoes
							--
							o(214406, {	-- Dai-Lo Recess Mallet
								["coord"] = { 62.6, 76.9, STARTER_WANDERING_ISLE },
								["g"] = { i(74298) },	-- Dai-Lo Recess Mallet (QI!)
							}),
						},
					}),
					q(29781, {	-- Monkey Advisory Warning
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["coord"] = { 31.0, 36.7, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209669, {	-- Stolen Fireworks
								["coords"] = {
									{ 21.0, 34.5, STARTER_WANDERING_ISLE },
									{ 21.7, 33.5, STARTER_WANDERING_ISLE },
									{ 23.4, 32.4, STARTER_WANDERING_ISLE },
									{ 24.3, 30.2, STARTER_WANDERING_ISLE },
									{ 24.8, 31.4, STARTER_WANDERING_ISLE },
									{ 25.1, 29.4, STARTER_WANDERING_ISLE },
									{ 26.0, 27.5, STARTER_WANDERING_ISLE },
									{ 26.1, 30.0, STARTER_WANDERING_ISLE },
									{ 26.2, 32.2, STARTER_WANDERING_ISLE },
									{ 26.3, 31.4, STARTER_WANDERING_ISLE },
									{ 26.4, 28.8, STARTER_WANDERING_ISLE },
									{ 27.0, 31.8, STARTER_WANDERING_ISLE },
									{ 27.6, 28.4, STARTER_WANDERING_ISLE },
									{ 27.8, 29.4, STARTER_WANDERING_ISLE },
									{ 28.0, 29.8, STARTER_WANDERING_ISLE },
								},
								["g"] = { i(74631) },	-- Stolen Firework Bundle (QI!)
							}),
						},
					}),
					q(29776, {	-- Morning Breeze Village
						["provider"] = { "n", 54786 },	-- Master Shang Xi
						["sourceQuests"] = { 29775 },	-- The Spirit and Body of Shen-zin Su
						["coord"] = { 51.5, 48.5, STARTER_WANDERING_ISLE },
					}),
					q(30039, {	-- Much to Learn (Monk)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { MONK },
					}),
					q(30040, {	-- Much to Learn (Mage)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { MAGE },
					}),
					q(30041, {	-- Much to Learn (Hunter)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { HUNTER },
					}),
					q(30042, {	-- Much to Learn (Priest)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { PRIEST },
					}),
					q(30043, {	-- Much to Learn (Rogue)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { ROGUE },
					}),
					q(30044, {	-- Much to Learn (Shaman)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { SHAMAN },
					}),
					q(30045, {	-- Much to Learn (Warrior)
						["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
						["classes"] = { WARRIOR },
					}),
					q(29800, {	-- New Allies
						["provider"] = { "n", 57739 },	-- Ji Firepaw
						["sourceQuests"] = { 29799 },	-- The Healing of Shen-zin Su
						["coord"] = { 38.8, 86.4, STARTER_WANDERING_ISLE },
					}),
					q(29794, {	-- None Left Behind
						["provider"] = { "n", 55944 },	-- Delora Lionheart
						["sourceQuests"] = { 29796 },	-- Urgent News
						["coord"] = { 42.2, 86.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(131916, {	-- Empathetic Mail
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74605),	-- Gauntlets of Mercy
							i(74603),	-- Survival Leggings
							i(74604),	-- Vest of Compassion
						},
					}),
					q(29774, {	-- Not In the Face!
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29772 },	-- Raucous Rousing
						["coord"] = { 68.9, 65.0, STARTER_WANDERING_ISLE },
					}),
					q(29421, {	-- Only the Worthy Shall Pass
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29664 },	-- The Challenger's Fires
						["coord"] = { 38.8, 25.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73238),	-- Dagger of the Master
							i(73237),	-- Mace of the Master
							i(73239),	-- Staff of the Master
						},
					}),
					q(29790, {	-- Passing Wisdom
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = {
							29788,	-- Unwelcome Nature
							29789,	-- Small, but Significant
						},
						["coord"] = { 19.5, 51.2, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74599),	-- Cinch of Grieving
							i(74597),	-- Cord of Grieving
							i(131914, {	-- Links of Grieving
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74598),	-- Ropes of Grieving
						},
					}),
					q(30591, {	-- Preying on the Predators
						["provider"] = { "n", 55943 },	-- Wei Palerage
						["sourceQuests"] = { 29792 },	-- Bidden to Greatness
						["coord"] = { 50.1, 76.6, STARTER_WANDERING_ISLE },
					}),
					q(29769, {	-- Rascals
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29680 },	-- The Source of Our Livelihood
						["coord"] = { 68.9, 65.0, STARTER_WANDERING_ISLE },
					}),
					q(29772, {	-- Raucous Rousing
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29768 },	-- Missing Mallet
						["coord"] = { 68.9, 65.0, STARTER_WANDERING_ISLE },
					}),
					q(29778, {	-- Rewritten Wisdoms
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29776 },	-- Morning Breeze Village
						["coord"] = { 31.0, 36.8, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74595),	-- Gloves of Verity
							i(74594),	-- Gloves of Wisdom
							i(131913, {	-- Handgrips of Verity
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74596),	-- Unvarnished Vambraces
						},
					}),
					q(30767, {	-- Risking It All
						["provider"] = { "n", 56416 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29798 },	-- An Ancient Evil
						["coord"] = { 36.5, 84.2, STARTER_WANDERING_ISLE },
					}),
					q(29678, {	-- Shu, the Spirit of Water
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = {
							29666,	-- The Sting of Learning
							29677,	-- The Sun Pearl
						},
						["coord"] = { 78.5, 42.9, STARTER_WANDERING_ISLE },
						["g"] = { i(73791) },	-- Sun Pearl (QI!)
					}),
					q(29789, {	-- Small, But Significant
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = { 29787 },	-- Worthy of Passing
						["coord"] = { 19.5, 51.2, STARTER_WANDERING_ISLE },
						["g"] = {
							o_repeated({	-- Kun-Pai Ritual Charm
								o(209671),	-- Kun-Pai Ritual Charm
								o(209774),	-- Kun-Pai Ritual Charm
								i(74634),	-- Kun-Pai Ritual Charm (QI!)
							}),
						},
					}),
					q(29770, {	-- Still Good!
						["provider"] = { "n", 55479 },	-- Gao Summerdraft
						["sourceQuests"] = { 29680 },	-- The Source of Our Livelihood
						["coord"] = { 68.1, 66.4, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74582),	-- Comfortable Greaves
							i(74580),	-- Homespun Leggings
							i(131911, {	-- Padded Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74581),	-- Soft Britches
							--
							o_repeated({	-- Pilfered Pumpkin
								["coords"] = {
									{ 77.3, 70.4, STARTER_WANDERING_ISLE },
									{ 77.9, 71.4, STARTER_WANDERING_ISLE },
									{ 78.0, 72.5, STARTER_WANDERING_ISLE },
									{ 78.4, 70.0, STARTER_WANDERING_ISLE },
									{ 78.6, 69.9, STARTER_WANDERING_ISLE },
									{ 78.7, 70.8, STARTER_WANDERING_ISLE },
								},
								["g"] = {
									o(209642),	-- Pilfered Pumpkin
									o(209643),	-- Pilfered Pumpkin
									o(209644),	-- Pilfered Pumpkin
									o(209645),	-- Pilfered Pumpkin
									i(74297),	-- Pilfered Pumpkin (QI!)
								},
							}),
							o(209641, {	-- Stolen Carrot
								["coords"] = {
									{ 71.5, 70.2, STARTER_WANDERING_ISLE },
									{ 73.8, 70.8, STARTER_WANDERING_ISLE },
									{ 74.0, 72.5, STARTER_WANDERING_ISLE },
									{ 75.0, 74.5, STARTER_WANDERING_ISLE },
									{ 75.4, 72.9, STARTER_WANDERING_ISLE },
								},
								["g"] = { i(74296) },	-- Stolen Carrot (QI!)
							}),
							o_repeated({	-- Uprooted Turnip
								["coords"] = {
									{ 67.0, 77.1, STARTER_WANDERING_ISLE },
									{ 67.3, 75.9, STARTER_WANDERING_ISLE },
									{ 68.1, 77.4, STARTER_WANDERING_ISLE },
									{ 68.4, 79.4, STARTER_WANDERING_ISLE },
									{ 68.4, 81.6, STARTER_WANDERING_ISLE },
									{ 68.5, 77.1, STARTER_WANDERING_ISLE },
									{ 68.5, 79.5, STARTER_WANDERING_ISLE },
									{ 68.6, 81.8, STARTER_WANDERING_ISLE },
									{ 69.4, 79.0, STARTER_WANDERING_ISLE },
									{ 69.7, 82.8, STARTER_WANDERING_ISLE },
									{ 70.0, 77.4, STARTER_WANDERING_ISLE },
									{ 70.0, 82.0, STARTER_WANDERING_ISLE },
									{ 70.1, 79.0, STARTER_WANDERING_ISLE },
									{ 70.5, 80.3, STARTER_WANDERING_ISLE },
									{ 71.0, 80.8, STARTER_WANDERING_ISLE },
									{ 71.2, 79.3, STARTER_WANDERING_ISLE },
									{ 71.2, 81.9, STARTER_WANDERING_ISLE },
									{ 71.3, 77.8, STARTER_WANDERING_ISLE },
								},
								["g"] = {
									o(209639),	-- Uprooted Turnip
									o(209640),	-- Uprooted Turnip
									i(74295),	-- Uprooted Turnip (QI!)
								},
							}),
						},
					}),
					q(29795, {	-- Stocking Stalks
						["provider"] = { "n", 60042 },	-- Korga Strongmane
						["sourceQuests"] = { 29792 },	-- Bidden to Greatness
						["coord"] = { 50.1, 76.6, STARTER_WANDERING_ISLE },
						["g"] = {
							o_repeated({	-- Broken Bamboo Stalk
								o(211394),	-- Broken Bamboo Stalk
								o(211397),	-- Broken Bamboo Stalk
								o(211398),	-- Broken Bamboo Stalk
								o(211399),	-- Broken Bamboo Stalk
								o(211400),	-- Broken Bamboo Stalk
								o(211401),	-- Broken Bamboo Stalk
								i(80806),	-- Broken Bamboo Stalk (QI!)
							}),
						},
					}),
					q(29782, {	-- Stronger Than Bone
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["provider"] = { "o", 209673 },	-- Jade Tiger Pillar
						["coord"] = { 26.5, 33.8, STARTER_WANDERING_ISLE },
						["g"] = {
							i(76174),	-- Jade Tiger Pillar (QI!)
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
						["provider"] = { "n", 55021 },	-- Jojo Ironbrow
						["coord"] = { 51.4, 46.4, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209507, {	-- Hard Tearwood Reed
								i(73178),	-- Hard Tearwood Reed (QI!)
							}),
						},
					}),
					q(29783, {	-- Stronger Than Stone
						["provider"] = { "n", 55585 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29776 },	-- Morning Breeze Village
						["coord"] = { 29.9, 39.8, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209665, {	-- Abandoned Stone Blocks
								i(74624),	-- Abandoned Stone Block (QI!)
							}),
						},
					}),
					q(29771, {	-- Stronger Than Wood
						["provider"] = { "n", 55478 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29769 },	-- Rascals
						["coord"] = { 69.1, 66.7, STARTER_WANDERING_ISLE },
						["g"] = {
							o(209646, {	-- Discarded Wood Plank
								["coords"] = {
									{ 61.9, 79.1, STARTER_WANDERING_ISLE },
									{ 62.2, 76.4, STARTER_WANDERING_ISLE },
									{ 62.2, 79.9, STARTER_WANDERING_ISLE },
									{ 62.2, 81.0, STARTER_WANDERING_ISLE },
									{ 62.3, 77.1, STARTER_WANDERING_ISLE },
									{ 63.1, 77.1, STARTER_WANDERING_ISLE },
									{ 63.4, 79.0, STARTER_WANDERING_ISLE },
									{ 63.5, 78.7, STARTER_WANDERING_ISLE },
								},
								["g"] = { i(74301) },	-- Discarded Wood Plank (QI!)
							}),
						},
					}),
					q(29664, {	-- The Challenger's Fires
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29420 },	-- The Spirit's Guardian
						["coord"] = { 38.8, 25.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(75000),	-- Torch of Prismatic Flame (QI!)
							i(75008),	-- Unlit Challenger's Torch (QI!)
						},
					}),
					q(29779, {	-- The Direct Solution
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["coord"] = { 31.0, 36.7, STARTER_WANDERING_ISLE },
					}),
					q(29409, {	-- The Disciple's Challenge
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29408 },	-- The Lesson of the Burning Scroll
						["g"] = {
							i(73222),	-- Initiate's Gauntlets
							i(73220),	-- Initiate's Gloves
							i(131903, {	-- Initiate's Grips
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73221),	-- Initiate's Handguards
						},
					}),
					q(29799, {	-- The Healing of Shen-zin Su
						["provider"] = { "n", 56418 },	-- Ji Firepaw
						["sourceQuests"] = { 30767 },	-- Risking it All
						["coord"] = { 39.2, 86.2, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74601),	-- Ceremonial Leggings
							i(74600),	-- Healer's Wristwraps
							i(74602),	-- Ritual Breastplate
							i(131915, {	-- Service Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(29661, {	-- The Lesson of Dry Fur
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29521 },	-- The Singing Pools
						["coord"] = { 65.6, 42.6, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74570),	-- Unmarred Belt
							i(131907, {	-- Unmarred Chain
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74568),	-- Unmarred Cord
							i(74569),	-- Unmarred Waistband
						},
					}),
					q(29524, {	-- The Lesson of Stifled Pride
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29406 },	-- The Lesson of the Sandy Fist
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73218),	-- Initiate's Belt
							i(131902, {	-- Initiate's Braided Belt
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73219),	-- Initiate's Plate Belt
							i(73217),	-- Initiate's Rope Belt
						},
					}),
					q(29663, {	-- The Lesson of the Balanced Rock
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29521 },	-- The Singing Pools
						["coord"] = { 65.6, 42.6, STARTER_WANDERING_ISLE },
					}),
					q(29408, {	-- The Lesson of the Burning Scroll
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29524 },	-- The Lesson of Stifled Pride
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
						["g"] = { i(80212) },	-- The Master's Flame (QI!)
					}),
					q(30034, {	-- The Lesson of the Iron Bough (Hunter)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { HUNTER },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30038, {	-- The Lesson of the Iron Bough (Warrior)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { WARRIOR },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30033, {	-- The Lesson of the Iron Bough (Mage, Warlock)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { MAGE, WARLOCK },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30035, {	-- The Lesson of the Iron Bough (Priest)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { PRIEST },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30027, {	-- The Lesson of the Iron Bough (Monk)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { MONK },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30036, {	-- The Lesson of the Iron Bough (Rogue)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { ROGUE },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(30037, {	-- The Lesson of the Iron Bough (Shaman)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { SHAMAN },
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
					}),
					q(29406, {	-- The Lesson of the Sandy Fist
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = {
							30027,	-- The Lesson of the Iron Bough (Monk)
							30033,	-- The Lesson of the Iron Bough (Mage, Warlock)
							30034,	-- The Lesson of the Iron Bough (Hunter)
							30035,	-- The Lesson of the Iron Bough (Priest)
							30036,	-- The Lesson of the Iron Bough (Rogue)
							30037,	-- The Lesson of the Iron Bough (Shaman)
							30038,	-- The Lesson of the Iron Bough (Warrior)
						},
						["coord"] = { 66.0, 22.8, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73216),	-- Initiate's Armguards
							i(73215),	-- Initiate's Bracers
							i(131901, {	-- Initiate's Cuffs
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73214),	-- Initiate's Wristwraps
						},
					}),
					q(29419, {	-- The Missing Driver
						["provider"] = { "n", 54943 },	-- Merchant Lorvo
						["sourceQuests"] = { 29410 },	-- Aysa of the Ushui
						["coord"] = { 55.1, 32.6, STARTER_WANDERING_ISLE },
						["g"] = { i(73223) },	-- Cloak of the Compassionate
					}),
					q(29423, {	-- The Passion of Shen-zin Su
						["provider"] = { "n", 54787 },	-- Huo
						["sourceQuests"] = { 29422 },	-- Huo, the Spirit of Fire
						["coord"] = { 39.4, 29.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73236),	-- Dagger of Silent Flame
							i(73234),	-- Flameheart Crossbow
							i(73233),	-- Shield of Blazing Will
							i(73235),	-- Sword of the Burning Spirit
						},
					}),
					q(29521, {	-- The Singing Pools
						["provider"] = { "n", 54786 },	-- Master Shang Xi
						["sourceQuests"] = { 29423 },	-- The Passion of Shen-zin Su
						["coord"] = { 51.4, 46.4, STARTER_WANDERING_ISLE },
					}),
					q(29680, {	-- The Source of Our Livelihood
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29679 },	-- A New Friend
						["coord"] = { 79.8, 39.3, STARTER_WANDERING_ISLE },
					}),
					q(29775, {	-- The Spirit and Body of Shen-zin Su
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29774 },	-- Not in the Face!
						["coord"] = { 68.9, 65.0, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74578),	-- Bindings of the Earth Spirit
							i(131910, {	-- Bracers of the Earth Spirit
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74579),	-- Gauntlets of Earth and Water
							i(74577),	-- Robes of the Water Spirit
						},
					}),
					q(29420, {	-- The Spirit's Guardian
						["provider"] = { "n", 54609 },	-- Master Shang Xi
						["sourceQuests"] = { 29418, 29523 },	-- Kindling the Fire, Fanning the Flames
						["coord"] = { 50.3, 21.5, STARTER_WANDERING_ISLE },
					}),
					q(29666, {	-- The Sting of Learning
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = { 29676 },	-- Finding an Old Friend
						["coord"] = { 70.6, 38.7, STARTER_WANDERING_ISLE },
					}),
					q(29791, {	-- The Suffering of Shen-zin Su
						["provider"] = { "n", 56662 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29790 },	-- Passing Wisdom
						["coord"] = { 15.8, 49.1, STARTER_WANDERING_ISLE },
					}),
					q(29677, {	-- The Sun Pearl
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = { 29676 },	-- Finding an Old Friend
						["coord"] = { 70.6, 38.7, STARTER_WANDERING_ISLE },
						["g"] = {
							i(74576),	-- Sun Pearl Bracers
							i(131909, {	-- Sun Pearl Chainmail
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74574),	-- Sun Pearl Gloves
							i(74575),	-- Sun Pearl Vest
							--
							o(209584, {	-- Ancient Clam
								["coord"] = { 76.5, 46.7, STARTER_WANDERING_ISLE },
								["g"] = { i(73184) },	-- Sun Pearl (QI!)
							}),
						},
					}),
					q(29417, {	-- The Way of the Huojin
						["provider"] = { "n", 54568 },	-- Ji Firepaw
						["sourceQuests"] = { 29522 },	-- Ji of the Huojin
						["coord"] = { 50.3, 21.5, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73228),	-- Initiate's Britches
							i(131905, {	-- Initiate's Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73227),	-- Initiate's Leggings
							i(73229),	-- Initiate's Legguards
						},
					}),
					q(29414, {	-- The Way of the Tushui
						["provider"] = { "n", 54567 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29419, 29424 },	-- The Missing Driver, Items of Utmost Importance
						["coord"] = { 55, 32.3, STARTER_WANDERING_ISLE },
						["g"] = {
							i(73226),	-- Initiate's Breastplate
							i(131904, {	-- Initiate's Chestpiece
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73224),	-- Initiate's Robes
							i(73225),	-- Initiate's Vest
						},
					}),
					q(29777, {	-- Tools of the Enemy
						["provider"] = { "n", 55588 },	-- Elder Shaopai
						["sourceQuests"] = { 29776 },	-- Morning Breeze Village
						["coord"] = { 31.8, 39.7, STARTER_WANDERING_ISLE },
						["g"] = { i(74615) },	-- Paint Soaked Brush (QI!)
					}),
					q(29788, {	-- Unwelcome Nature
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = { 29787 },	-- Worthy of Passing
						["coord"] = { 19.5, 51.2, STARTER_WANDERING_ISLE },
					}),
					q(29796, {	-- Urgent News
						["provider"] = { "n", 55942 },	-- Ji Firepaw
						["sourceQuests"] = {
							29793,	-- Evil from the Seas
							30590,	-- Handle With Care
						},
						["coord"] = { 36.3, 72.4, STARTER_WANDERING_ISLE },
					}),
					q(29787, {	-- Worthy of Passing
						["provider"] = { "n", 55586 },	-- Master Shang Xi
						["sourceQuests"] = { 29786 },	-- Battle for the Skies
						["coord"] = { 30.0, 60.4, STARTER_WANDERING_ISLE },
					}),
					q(30589, {	-- Wrecking the Wreck
						["provider"] = { "n", 60042 },	-- Korga Strongmane
						["sourceQuests"] = {
							29795,	-- Stocking Stalks
							30591,	-- Preying on the Predators
						},
						["coord"] = { 50.1, 76.6, STARTER_WANDERING_ISLE },
					}),
				}),
				n(TREASURES, {
					o_repeated({	-- Weapon Rack
						["description"] = "Only available during The Lesson of the Iron Bough.",
						["sourceQuests"] = { 30027, 30033, 30034, 30035, 30036, 30037, 30038 },	-- The Lesson of the Iron Bough (all classes)
						["coords"] = {
							{ 56.9, 20.4, STARTER_WANDERING_ISLE },
							{ 56.9, 20.5, STARTER_WANDERING_ISLE },
							{ 57.2, 19.2, STARTER_WANDERING_ISLE },
							{ 57.7, 17.7, STARTER_WANDERING_ISLE },
							{ 57.9, 19.9, STARTER_WANDERING_ISLE },
							{ 59.1, 17.3, STARTER_WANDERING_ISLE },
						},
						["g"] = {
							o(210005),	-- Weapon Rack
							o(210015),	-- Weapon Rack
							o(210016), 	-- Weapon Rack
							o(210017),	-- Weapon Rack
							o(210018),	-- Weapon Rack
							o(210019),	-- Weapon Rack
							o(210020),	-- Weapon Rack
							i(76391, {	-- Trainee's Axe
								["classes"] = { SHAMAN, WARRIOR },
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
							i(73207, {	-- Trainee's Mace
								["classes"] = { PRIEST },
							}),
							i(73213, {	-- Trainee's Shield
								["classes"] = { SHAMAN, WARRIOR },
							}),
							i(76390, {	-- Trainee's Spellblade
								["classes"] = { MAGE, WARLOCK },
							}),
							i(73209, {	-- Trainee's Staff
								["classes"] = { MONK },
							}),
							i(73210, {	-- Trainee's Sword
								["classes"] = { WARRIOR },
								["u"] = REMOVED_FROM_GAME,	-- Since warriors now default to protection, this can no longer be picked up
							}),
						},
					}),
				}),
			},
		}),
	}),
});
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(STARTER_WANDERING_ISLE, {
			n(QUESTS, {
				q(29404),	-- Much to Learn [NYI] - completed with quest 30039, 30040, 30041, 30042, 30043, 30044, 30045.
				q(30454),	-- Pandaren Alliance Tracking Quest - triggers after choosing Alliance faction
				q(30455),	-- Pandaren Horde Tracking Quest - triggers after choosing Horde faction
			}),
		}),
	}),
})));