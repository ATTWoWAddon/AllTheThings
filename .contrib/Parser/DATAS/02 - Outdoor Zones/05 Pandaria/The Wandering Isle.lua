---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(378, {	-- The Wandering Isle Starter Zones
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
					}),
					q(29679, {	-- A New Friend
						["sourceQuests"] = { 29678 },	-- Shu, the Spirit of Water
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
						["sourceQuests"] = { 29665, 29794, 29797 },	-- From Bad to Worse, None Left Behind, Medical Supplies
					}),
					q(29410, {	-- Aysa of the Tushui
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29409 },	-- The Disciple's Challenge
					}),
					q(29784, {	-- Balanced Perspective
						["provider"] = { "n", 65558 },	-- Huojin Monk
						["sourceQuests"] = { 29779, 29780, 29781 },	-- The Direct Solution, Do No Evil, MOnkey Advisory Warning
					}),
					q(29786, {	-- Battle for the Skies
						["provider"] = { "n", 55595 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29785 },	-- Dafeng, the Spirit of Air
						["g"] = {
							i(74586),	-- Cloak of the Fiery Skies
						},
					}),
					q(29792, {	-- Bidden to Greatness
						["provider"] = { "n", 56012 },	-- Elder Shaopai
						["sourceQuests"] = { 29791 },	-- The Suffering of Shen-zin Su
					}),
					q(29785, {	-- Dafeng, the Spirit of Air
						["provider"] = { "n", 55595 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29784 },	-- Balanced Perspective
					}),
					q(29780, {	-- Do No Evil
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["g"] = {
							i(74592),	-- Dagger of the Hozen
							i(74593),	-- Staff of the Hozen
							i(74591),	-- Sword of the Hozen
						},
					}),
					q(29793, {	-- Evil from the Seas
						["provider"] = { "n", 55942 },	-- Ji Firepaw
						["sourceQuests"] = { 30589 },	-- Wrecking the Wreck
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
						["g"] = {
							i(72112),	-- Fluttering Breeze (QI!)
							i(72109),	-- Wind Stone (QI!)
							i(131906, {	-- Initiate's Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(73231),	-- Initiate's Footgear
							i(73232),	-- Initiate's Sabatons
							i(73230),	-- Initiate's Slippers
						},
					}),
					q(29676, {	-- Finding an Old Friend
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29661, 29663 },	-- The Lesson of Dry Fur, The Lesson of the Balanced Rock
						["g"] = {
							i(73183),	-- Snowblossom Petals (QI!)
						},
					}),
					q(29665, {	-- From Bad to Worse
						["provider"] = { "n", 55940 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29796 },	-- Urgent News
					}),
					q(30590, {	-- Handle With Care
						["provider"] = { "n", 60055 },	-- Makael Bay
						["sourceQuests"] = { 30589 },	-- Wrecking the Wreck
						["g"] = {
							i(74955),	-- Packed Explosion Charge (QI!)
						},
					}),
					q(29422, {	-- Huo, the Spirit of Fire
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29421 },	-- Only the Worthy Shall Pass
						["g"] = {
							i(72583),	-- Huo's Offerings (QI!)
						},
					}),
					q(29424, {	-- Items of Utmost Importance
						["provider"] = { "n", 54943 },	-- Merchant Lorvo
						["sourceQuests"] = { 29410 },	-- Aysa of the Ushui
						["g"] = {
							i(72071),	-- Stolen Training Supplies (QI!)
						},
					}),
					q(29522, {	-- Ji of the Huojin
						["provider"] = { "n", 54608 },	-- Master Shang Xi
						["sourceQuests"] = { 29414 },	-- The Way of the Tushui
					}),
					q(29418, {	-- Kindling the Fire
						["provider"] = { "n", 54568 },	-- Ji Firepaw
						["sourceQuests"] = { 29417 },	-- The Way of the Huojin
						["g"] = {
							i(72111),	-- Dry Dogwood Root (QI!)
						},
					}),
					q(29797, {	-- Medical Supplies
						["provider"] = { "n", 55944 },	-- Delora Lionheart
						["sourceQuests"] = { 29796 },	-- Urgent News
						["g"] = {
							i(74958),	-- Alliance Medical Supplies (QI!)
						},
					}),
					q(29768, {	-- Missing Mallet
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29769 },	-- Rascals
						["g"] = {
							i(74298),	-- Dai-Lo Recess Mallet (QI!)
							i(74585),	-- Dancing Boots
							i(131912, {	-- Ringing Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74583),	-- Silk Shoes
							i(74584),	-- Summer Shoes
						},
					}),
					q(29781, {	-- Monkey Advisory Warning
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["g"] = {
							i(74631),	-- Stolen Firework Bundle (QI!)
						},
					}),
					q(29776, {	-- Morning Breeze Village
						["provider"] = { "n", 54786 },	-- Master Shang Xi
						["sourceQuests"] = { 29775 },	-- The Spirit and Body of Shen-zin Su
					}),
					un(REMOVED_FROM_GAME, q(29404)),	-- Much to Learn (NYI?)
					q(30039, {	-- Much to Learn (Monk)
						["classes"] = { MONK },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30040, {	-- Much to Learn (Mage)
						["classes"] = { MAGE },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30041, {	-- Much to Learn (Hunter)
						["classes"] = { HUNTER },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30042, {	-- Much to Learn (Priest)
						["classes"] = { PRIEST },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30043, {	-- Much to Learn (Rogue)
						["classes"] = { ROGUE },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30044, {	-- Much to Learn (Shaman)
						["classes"] = { SHAMAN },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(30045, {	-- Much to Learn (Warrior)
						["classes"] = { WARRIOR },
						["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
					}),
					q(29800, {	-- New Allies
						["provider"] = { "n", 57739 },	-- Ji Firepaw
						["sourceQuests"] = { 29799 },	-- The Healing of Shen-zin Su
					}),
					q(29794, {	-- None Left Behind
						["provider"] = { "n", 55944 },	-- Delora Lionheart
						["sourceQuests"] = { 29796 },	-- Urgent News
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
					}),
					q(29421, {	-- Only the Worthy Shall Pass
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29664 },	-- The Challenger's Fires
						["g"] = {
							i(73238),	-- Dagger of the Master
							i(73237),	-- Mace of the Master
							i(73239),	-- Staff of the Master
						},
					}),
					q(29790, {	-- Passing Wisdom
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = { 29788, 29789 },	-- Unwelcome Nature, Small, but Significant
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
					}),
					q(29769, {	-- Rascals
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29680 },	-- The Source of Our Livelihood
					}),
					q(29772, {	-- Raucous Rousing
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29768 },	-- Missing Mallet
					}),
					q(29778, {	-- Rewritten Wisdoms
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29776 },	-- Morning Breeze Village
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
					}),
					q(29678, {	-- Shu, the Spirit of Water
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = { 29666, 29677 },	-- The Sting of Learning, The Sun Pearl
						["g"] = {
							i(73791),	-- Sun Pearl (QI!)
						},
					}),
					q(29789, {	-- Small, But Significant
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = { 29787 },	-- Worthy of Passing
						["g"] = {
							i(74634),	-- Kun-Pai Ritual Charm (QI!)
						},
					}),
					q(29770, {	-- Still Good!
						["provider"] = { "n", 55479 },	-- Gao Summerdraft
						["sourceQuests"] = { 29680 },	-- The Source of Our Livelihood
						["g"] = {
							i(74297),	-- Pilfered Pumpkin (QI!)
							i(74296),	-- Stolen Carrot (QI!)
							i(74295),	-- Uprooted Turnip (QI!)
							i(74582),	-- Comfortable Greaves
							i(74580),	-- Homespun Leggings
							i(131911, {	-- Padded Greaves
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74581),	-- Soft Britches
						},
					}),
					q(29795, {	-- Stocking Stalks
						["provider"] = { "n", 60042 },	-- Korga Strongmane
						["sourceQuests"] = { 29792 },	-- Bidden to Greatness
						["g"] = {
							i(80806),	-- Broken Bamboo Stalk (QI!)
						},
					}),
					q(29782, {	-- Stronger Than Bone
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
						["provider"] = { "o", 209673 },	-- Jade Tiger Pillar
						["coord"] = { 26.5, 33.8, THE_WANDERING_ISLE },
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
						["provider"] = { "n", 55585 },	-- Jojo Ironbrow
						["g"] = {
							i(73178),	-- Hard Tearwood Reed (QI!)
						},
					}),
					q(29783, {	-- Stronger Than Stone
						["provider"] = { "n", 55585 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29776 },	-- Morning Breeze Village
						["g"] = {
							i(74624),	-- Abandoned Stone Block (QI!)
						},
					}),
					q(29771, {	-- Stronger Than Wood
						["provider"] = { "n", 55478 },	-- Jojo Ironbrow
						["sourceQuests"] = { 29769 },	-- Rascals
						["g"] = {
							i(74301),	-- Discarded Wood Plank (QI!)
						},
					}),
					q(29664, {	-- The Challenger's Fires
						["provider"] = { "n", 54135 },	-- Master Li Fei
						["sourceQuests"] = { 29420 },	-- The Spirit's Guardian
						["g"] = {
							i(75000),	-- Torch of Prismatic Flame (QI!)
							i(75008),	-- Unlit Challenger's Torch (QI!)
						},
					}),
					q(29779, {	-- The Direct Solution
						["provider"] = { "n", 55583 },	-- Ji Firepaw
						["sourceQuests"] = { 29778 },	-- Rewritten Wisdoms
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
					}),
					q(29408, {	-- The Lesson of the Burning Scroll
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 29524 },	-- The Lesson of Stifled Pride
						["g"] = {
							i(80212),	-- The Master's Flame (QI!)
						},
					}),
					q(30034, {	-- The Lesson of the Iron Bough (Hunter)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { HUNTER },
					}),
					q(30038, {	-- The Lesson of the Iron Bough (Warrior)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { WARRIOR },
					}),
					q(30033, {	-- The Lesson of the Iron Bough (Mage, Warlock)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { MAGE, WARLOCK },
					}),
					q(30035, {	-- The Lesson of the Iron Bough (Priest?)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { PRIEST },
					}),
					q(30027, {	-- The Lesson of the Iron Bough (Monk)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { MONK },
					}),
					q(30036, {	-- The Lesson of the Iron Bough (Rogue)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { ROGUE },
					}),
					q(30037, {	-- The Lesson of the Iron Bough (Shaman)
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["classes"] = { SHAMAN },
					}),
					q(29406, {	-- The Lesson of the Sandy Fist
						["provider"] = { "n", 53566 },	-- Master Shang Xi
						["sourceQuests"] = { 30027, 30033, 30034, 30035, 30036, 30037, 30038 },	-- The Lesson of the Iron Bough (all classes)
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
						["g"] = {
							i(73223),	-- Cloak of the Compassionate
						},
					}),
					q(29423, {	-- The Passion of Shen-zin Su
						["provider"] = { "n", 54787 },	-- Huo
						["sourceQuests"] = { 29422 },	-- Huo, the Spirit of Fire
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
					}),
					q(29680, {	-- The Source of Our Livelihood
						["provider"] = { "n", 54975 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29679 },	-- A New Friend
					}),
					q(29775, {	-- The Spirit and Body of Shen-zin Su
						["provider"] = { "n", 55477 },	-- Ji Firepaw
						["sourceQuests"] = { 29774 },	-- Not in the Face!
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
					}),
					q(29666, {	-- The Sting of Learning
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = { 29676 },	-- Finding an Old Friend
					}),
					q(29791, {	-- The Suffering of Shen-zin Su
						["provider"] = { "n", 56662 },	-- Aysa Cloudsinger
						["sourceQuests"] = { 29790 },	-- Passing Wisdom
					}),
					q(29677, {	-- The Sun Pearl
						["provider"] = { "n", 55020 },	-- Old Man Liang
						["sourceQuests"] = { 29676 },	-- Finding an Old Friend
						["g"] = {
							i(73184),	-- Sun Pearl (QI!)
							i(74576),	-- Sun Pearl Bracers
							i(131909, {	-- Sun Pearl Chainmail
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(74574),	-- Sun Pearl Gloves
							i(74575),	-- Sun Pearl Vest
						},
					}),
					q(29417, {	-- The Way of the Huojin
						["provider"] = { "n", 54568 },	-- Ji Firepaw
						["sourceQuests"] = { 29522 },	-- Ji of the Huojin
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
						["g"] = {
							i(74615),	-- Paint Soaked Brush (QI!)
						},
					}),
					q(29788, {	-- Unwelcome Nature
						["provider"] = { "n", 55672 },	-- Master Shang Xi
						["sourceQuests"] = { 29787 },	-- Worthy of Passing
					}),
					q(29796, {	-- Urgent News
						["provider"] = { "n", 55942 },	-- Ji Firepaw
						["sourceQuests"] = { 29793, 30590 },	-- Evil from the Seas, Handle With Care
					}),
					q(29787, {	-- Worthy of Passing
						["provider"] = { "n", 55586 },	-- Master Shang Xi
						["sourceQuests"] = { 29786 },	-- Battle for the Skies
					}),
					q(30589, {	-- Wrecking the Wreck
						["provider"] = { "n", 60042 },	-- Korga Strongmane
						["sourceQuests"] = { 29795, 30591 },	-- Stocking Stalks, Preying on the Predators
					}),
				}),
				n(TREASURES, {
					o(210005, {	-- Weapon Rack
						["coords"] = {
							{ 56.9, 20.4, 378 },
							{ 56.9, 20.5, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.7, 17.7, 378 },
							{ 57.9, 19.9, 378 },
						},
						["g"] = {
							i(73209),	-- Trainee's Staff
						},
					}),
					o(210015, {	-- Weapon Rack
						["coords"] = {
							{ 56.8, 19.8, 378 },
							{ 57.0, 20.5, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.9, 19.9, 378 },
						},
						["g"] = {
							i(76392),	-- Trainee's Hand Fan
							i(76390),	-- Trainee's Spellblade
						},
					}),
					o(210016, {	-- Weapon Rack
						["coords"] = {
							{ 56.9, 19.8, 378 },
							{ 56.9, 20.5, 378 },
							{ 57.1, 19.0, 378 },
							{ 57.7, 17.7, 378 },
							{ 58.0, 19.8, 378 },
							{ 58.8, 16.7, 378 },
						},
						["g"] = {
							i(73211),	-- Trainee's Crossbow
						},
					}),
					o(210017, {	-- Weapon Rack
						["coords"] = {
							{ 56.8, 19.8, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.7, 17.7, 378 },
							{ 58.7, 16.8, 378 },
						},
						["g"] = {
							i(76393),	-- Trainee's Book of Prayers
							i(73207),	-- Trainee's Mace
						},
					}),
					o(210018, {	-- Weapon Rack
						["coords"] = {
							{ 56.9, 19.8, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.6, 17.6, 378 },
						},
						["g"] = {
							i(73208),	-- Trainee's Dagger
							i(73212),	-- Trainee's Dagger
						},
					}),
					o(210019, {	-- Weapon Rack
						["coords"] = {
							{ 56.9, 20.4, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.7, 19.9, 378 },
						},
						["g"] = {
							i(76391),	-- Trainee's Axe
							i(73213),	-- Trainee's Shield
						},
					}),
					o(210020, {	-- Weapon Rack
						["coords"] = {
							{ 56.9, 20.4, 378 },
							{ 57.2, 19.2, 378 },
							{ 57.3, 16.7, 378 },
							{ 58.8, 16.8, 378 },
						},
						["g"] = {
							i(76391),	-- Trainee's Axe
							i(73213),	-- Trainee's Shield
							i(73210, {	-- Trainee's Sword
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
		m(THE_WANDERING_ISLE, {
			n(QUESTS, {
				q(30454),	-- Pandaren Alliance Tracking Quest - triggers after choosing Alliance faction
				q(30455),	-- Pandaren Horde Tracking Quest - triggers after choosing Horde faction
			}),
		}),
	}),
})));