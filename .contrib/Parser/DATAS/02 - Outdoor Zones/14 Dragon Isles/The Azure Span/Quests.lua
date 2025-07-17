---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(QUESTS, {
			header(HEADERS.Achievement, 16336, {	-- Azure Spanner
				------ Chapter 1 ------
				q(66340, {	-- Into the Azure
					["sourceQuests"] = { 66783 },	-- Renewal of Vows
					["provider"] = { "n", 188181 },	-- Merithra
					["coord"] = { 22.1, 50.9, OHNAHRAN_PLAINS },
				}),
				q(65686, {	-- To the Azure Span
					["sourceQuests"] = {
						66340,	-- Into the Azure
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 185599 },	-- Masud the Wise
					["coord"] = { 71.7, 80.6, OHNAHRAN_PLAINS },
				}),
				q(66228, {	-- Camp Antonidas
					["sourceQuests"] = { 65686 },	-- To the Azure Span
					["provider"] = { "n", 185603 },	-- Glania of the Blessed Ones
					["coord"] = { 41.4, 35.6, THE_AZURE_SPAN },
					["classes"] = exclude(EVOKER, ALL_CLASSES),
				}),
				q(70746, {	-- Shades of Blue
					["sourceQuests"] = { 65686 },	-- To the Azure Span
					["provider"] = { "n", 197023 },	-- Scalecommander Emberthal
					["coord"] = { 41.5, 35.9, THE_AZURE_SPAN },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				}),
				q(70747, {	-- The Azure Wizard
					["sourceQuests"] = { 70746 },	-- Shades of Blue
					["provider"] = { "n", 197025 },	-- Telash Greywing
					["coord"] = { 45.7, 41.3, THE_AZURE_SPAN },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				}),
				q(67033, {	-- Assemble the Defenses
					["sourceQuests"] = {
						66228,	-- Camp Antonidas
						70747,	-- The Azure Wizard
					},
					["provider"] = { "n", 183543 },	-- Noriko the All-Remembering
					["coord"] = { 46.6, 39.7, THE_AZURE_SPAN },
					["g"] = {
						i(194512),	-- Broken Arcane Device (QI!)
					},
				}),
				q(67035, {	-- Preservation of Knowledge
					["sourceQuests"] = {
						66228,	-- Camp Antonidas
						70747,	-- The Azure Wizard
					},
					["provider"] = { "n", 192222 },	-- Althanus
					["coord"] = { 46.7, 39.7, THE_AZURE_SPAN },
					["g"] = {
						i(194516),	-- Aged Journal (QI!)
						i(194514),	-- Antiquated Guest List (QI!)
						i(194517),	-- Broken Texts (QI!)
						i(194513),	-- Collection of Tomes (QI!)
						i(194515),	-- Crumbling Event Planner (QI!)
					},
				}),
				q(67036, {	-- Wrath of the Kirin Tor
					["sourceQuests"] = {
						67033,	-- Assemble the Defenses
						67035,	-- Preservation of Knowledge
					},
					["provider"] = { "n", 183543 },	-- Noriko the All-Remembering
					["coord"] = { 46.7, 39.8, THE_AZURE_SPAN },
					["g"] = {
						i(198021),	-- Bramble Chain Hauberk
						i(198032),	-- Sleet Shined Chestplate
						i(198010),	-- Twisted Leather Vest
						i(197994),	-- Windswept Vestments
					},
				}),
				q(65688, {	-- Meeting Kalecgos
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "n", 192091 },	-- Archmage Khadgar
					["coord"] = { 46.6, 40.2, THE_AZURE_SPAN },
					["g"] = {
						i(191954),	-- Bag of Helpful Goods (QI!)
					},
				}),
				q(65689, {	-- The Many Images of Kalecgos
					["sourceQuests"] = { 65688 },	-- Meeting Kalecgos
					["provider"] = { "n", 185615 },	-- Kalecgos
					["coord"] = { 40.9, 55.0, THE_AZURE_SPAN },
				}),
				q(65709, {	-- Arcane Pruning
					["sourceQuests"] = { 65689 },	-- The Many Images of Kalecgos
					["provider"] = { "n", 185623 },	-- Kalecgos
					["coord"] = { 40.6, 59.1, THE_AZURE_SPAN },
					["g"] = {
						i(191953),	-- Bag of Helpful Goods
						i(191952),	-- Ley Scepter
					},
				}),
				q(65702, {	-- Driven Mad
					["sourceQuests"] = { 65689 },	-- The Many Images of Kalecgos
					["provider"] = { "n", 185622 },	-- Kalecgos
					["coord"] = { 40.7, 59.0, THE_AZURE_SPAN },
					["g"] = {
						i(198037),	-- Brimming Arcanocrystal
						i(190769),	-- Unstable Arcana (QI!)
						i(197622),	-- Windborne Velocidrake: Finned Tail (MM!)
					},
				}),
				q(65852, {	-- Straight to the Top
					["sourceQuests"] = {
						65709,	-- Arcane Pruning
						65702,	-- Driven Mad
					},
					["provider"] = { "n", 185622 },	-- Kalecgos
					["coord"] = { 40.7, 59.0, THE_AZURE_SPAN },
					["g"] = {
						i(191979),	-- Arcane Stepping Stone (QI!)
						i(191978),	-- Bag of Helpful Goods (QI!)
					},
				}),
				q(65752, {	-- Arcane Annoyances
					["sourceQuests"] = { 65852 },	-- Straight to the Top
					["provider"] = { "n", 186184 },	-- Kalecgos
					["coord"] = { 40.0, 61.5, THE_AZURE_SPAN },
					["g"] = {
						i(198020),	-- Bramble Chain Helm
						i(198028),	-- Sleet Shined Skullguard
						i(198013),	-- Twisted Leather Hood
						i(197999),	-- Windswept Hood
						i(194891),	-- Arcane Hook
					},
				}),
				q(65751, {	-- Platform Adjustments
					["sourceQuests"] = { 65852 },	-- Straight to the Top
					["provider"] = { "n", 186184 },	-- Kalecgos
					["coord"] = { 40.0, 61.5, THE_AZURE_SPAN },
				}),
				q(65854, {	-- Reclaiming the Oathstone
					["sourceQuests"] = {
						65752,	-- Arcane Annoyances
						65751,	-- Platform Adjustments
					},
					["provider"] = { "n", 186184 },	-- Kalecgos
					["coord"] = { 40.0, 61.5, THE_AZURE_SPAN },
				}),
				q(65855, {	-- Aiding Azure Span
					["sourceQuests"] = { 65854 },	-- Reclaiming the Oathstone
					["provider"] = { "n", 186188 },	-- Sindragosa
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["g"] = {
						i(197989),	-- Water-Ordained Signet
					},
				}),
				------ Chapter 2 ------
				q(66699, {	-- Ask the Locals
					["sourceQuests"] = { 65855 },	-- Aiding Azure Span
					["provider"] = { "n", 183543 },	-- Noriko the All-Remembering
					["coord"] = { 46.6, 40.2, THE_AZURE_SPAN },
				}),
				q(65864, {	-- Catch the Caravan
					["sourceQuests"] = { 66699 },	-- Ask the Locals
					["provider"] = { "n", 190225 },	-- Babunituk
					["coord"] = { 45.7, 38.8, THE_AZURE_SPAN },
				}),
				q(65867, {	-- Howling in the Big Tree Hills
					["sourceQuests"] = { 65864 },	-- Catch the Caravan
					["provider"] = { "n", 191810 },	-- Brena
					["coord"] = { 35.3, 36.9, THE_AZURE_SPAN },
					["g"] = {
						i(198023),	-- Bramble Chain Breeches
						i(198030),	-- Sleet Shined Legplates
						i(198015),	-- Twisted Leather Breeches
						i(197998),	-- Windswept Leggings
						i(197388),	-- Renewed Proto-Drake: Finned Jaw (MM!)
					},
				}),
				q(65866, {	-- Snap the Traps
					["sourceQuests"] = { 65864 },	-- Catch the Caravan
					["provider"] = { "n", 191810 },	-- Brena
					["coord"] = { 35.3, 36.9, THE_AZURE_SPAN },
				}),
				q(65868, {	-- Those Aren't for Chewing
					["sourceQuests"] = { 65864 },	-- Catch the Caravan
					["provider"] = { "n", 188809 },	-- Elder Poa
					["coord"] = { 35.4, 36.9, THE_AZURE_SPAN },
					["g"] = {
						i(191669),	-- Engraved Tusk (QI!)
						i(191107),	-- Funerary Offering (QI!)
						i(191671),	-- Fragmented Tuskarr Effigy (QI!)
						i(191673),	-- Grinning Dolphin Fetish (QI!)
						i(191672),	-- Mark of the Provider (QI!)
					},
				}),
				q(65871, {	-- Gnoll Way Out
					["sourceQuests"] = {
						65867,	-- Howling in the Big Tree Hills
						65866,	-- Snap the Traps
						65868,	-- Those Aren't for Chewing
					},
					["provider"] = { "n", 189642 },	-- Hanu
					["coord"] = { 34.4, 31.1, THE_AZURE_SPAN },
				}),
				q(65872, {	-- Ill Gnolls With Ill Intent
					["sourceQuests"] = {
						65867,	-- Howling in the Big Tree Hills
						65866,	-- Snap the Traps
						65868,	-- Those Aren't for Chewing
					},
					["provider"] = { "n", 186228 },	-- Brena
					["coord"] = { 34.3, 31.0, THE_AZURE_SPAN },
				}),
				q(65873, {	-- Leader of the Shadepaw Pack
					["sourceQuests"] = {
						65867,	-- Howling in the Big Tree Hills
						65866,	-- Snap the Traps
						65868,	-- Those Aren't for Chewing
					},
					["provider"] = { "n", 186228 },	-- Brena
					["coord"] = { 34.3, 31.0, THE_AZURE_SPAN },
					["g"] = {
						i(198035),	-- Archer's Decorated Bow
						i(191118),	-- Kargpaw's Totem (QI!)
						i(198007),	-- Large Brass Cleaver
						i(198003),	-- Ornate Steel Cleaver
						i(198006),	-- Sharpened Silver Sword
						i(198008),	-- Shined Iron Polearm
						i(198005),	-- Sleek Obsidian Kris
						i(198004),	-- Steel Draconic Gavel
					},
				}),
				q(65870, {	-- Supplies!
					["sourceQuests"] = {
						65867,	-- Howling in the Big Tree Hills
						65866,	-- Snap the Traps
						65868,	-- Those Aren't for Chewing
					},
					["provider"] = { "n", 189662 },	-- Elder Poa
					["coord"] = { 34.3, 31.0, THE_AZURE_SPAN },
					["g"] = {
						i(192189),	-- Hunting Game Calls (QI!)
						i(191111),	-- Meat Curing Salts (QI!)
						i(192190),	-- Skinning Tools (QI!)
					},
				}),
				q(66239, {	-- Spreading Decay
					["sourceQuests"] = {
						65871,	-- Gnoll Way Out
						65872,	-- Ill Gnolls With Ill Intent
						65873,	-- Leader of the Shadepaw Pack
						65870,	-- Supplies!
					},
					["provider"] = { "n", 186228 },	-- Brena
					["coord"] = { 34.4, 31.0, THE_AZURE_SPAN },
				}),
				q(65869, {	-- Another Ambush
					["sourceQuests"] = { 66239 },	-- Spreading Decay
					["provider"] = { "n", 187721 },	-- Brena
					["coord"] = { 28.7, 34.8, THE_AZURE_SPAN },
				}),
				q(66026, {	-- Urgent Action Required
					["sourceQuests"] = { 65869 },	-- Another Ambush
					["provider"] = { "n", 189708 },	-- Brena
					["coord"] = { 28.8, 34.7, THE_AZURE_SPAN },
					["g"] = {
						i(198024),	-- Bramble Chain Bracers
						i(198033),	-- Sleet Shined Armguards
						i(198016),	-- Twisted Leather Bindings
						i(197993),	-- Windswept Wraps
					},
				}),
				------ Chapter 3 ------
				q(65838, {	-- Breaching the Brackenhide
					["sourceQuests"] = { 66026 },	-- Urgent Action Required
					["provider"] = { "n", 187873 },	-- Kalecgos
					["coord"] = { 20.5, 35.7, THE_AZURE_SPAN },
				}),
				q(65844, {	-- Cut Out the Rot
					["sourceQuests"] = { 65838 },	-- Breaching the Brackenhide
					["provider"] = { "n", 186181 },	-- Norukk
					["coord"] = { 16.7, 37.3, THE_AZURE_SPAN },
				}),
				q(65845, {	-- Echoes of the Fallen
					["sourceQuests"] = { 65838 },	-- Breaching the Brackenhide
					["provider"] = { "n", 186179 },	-- Brena
					["coord"] = { 16.7, 37.2, THE_AZURE_SPAN },
					["g"] = {
						i(191928),	-- Brena's Totem
						i(198001),	-- Tuskarr Spirit Shawl
						i(197408),	-- Renewed Proto-Drake: Finned Throat (MM!)
					},
				}),
				q(65846, {	-- Ley Litter
					["sourceQuests"] = { 65838 },	-- Breaching the Brackenhide
					["provider"] = { "n", 187873 },	-- Kalecgos
					["coord"] = { 16.7, 37.3, THE_AZURE_SPAN },
					["g"] = {
						i(194431),	-- Ley Crystal (QI!)
					},
				}),
				q(65848, {	-- Tome-ward Bound
					["sourceQuests"] = {
						65844,	-- Cut Out the Rot
						65845,	-- Echoes of the Fallen
						65846,	-- Ley Litter
					},
					["provider"] = { "n", 187873 },	-- Kalecgos
					["coord"] = { 16.7, 37.3, THE_AZURE_SPAN },
					["g"] = {
						i(198018),	-- Bramble Chain Sabatons
						i(198027),	-- Sleet Shined Stompers
						i(198012),	-- Twisted Leather Moccasins
						i(197995),	-- Windswept Slippers
					},
				}),
				q(65847, {	-- Realignment
					["sourceQuests"] = { 65848 },	-- Tome-ward Bound
					["provider"] = { "n", 187873 },	-- Kalecgos
					["coord"] = { 15.3, 39.4, THE_AZURE_SPAN },
				}),
				q(65849, {	-- To Iskaara
					["sourceQuests"] = { 65847 },	-- Realignment
					["provider"] = { "n", 186179 },	-- Brena
					["coord"] = { 16.1, 41.5, THE_AZURE_SPAN },
				}),
				q(66210, {	-- Gather the Family
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 186480 },	-- Brena
					["coord"] = { 13.2, 49.6, THE_AZURE_SPAN },
					["g"] = {
						i(194120),	-- Decorated Teapot
						i(194121),	-- Handcrafted Boat
						i(194115),	-- Stone Sculpture
						i(194119),	-- Ornamented Shield
					},
				}),
				q(65850, {	-- The Cycle of the Sea
					["sourceQuests"] = { 66210 },	-- Gather the Family
					["provider"] = { "n", 189793 },	-- Kalecgos
					["coord"] = { 13.3, 49.5, THE_AZURE_SPAN },
					["g"] = {
						i(197990),	-- Selamn Seashell String
					},
				}),
				q(65911, {	-- Azure Alignment
					["sourceQuests"] = { 65850 },	-- The Cycle of the Sea
					["provider"] = { "n", 186177 },	-- Kalecgos
					["coord"] = { 12.9, 50.4, THE_AZURE_SPAN },
				}),
				------ Chapter 4 ------
				q(66027, {	-- Calling the Blue Dragons
					["sourceQuests"] = { 65911 },	-- Azure Alignment
					["provider"] = { "n", 186280 },	-- Kalecgos
					["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					["g"] = {
						i(194705),	-- Highland Drake (MOUNT!)
						ach(15797),	-- An Azure Ally
					},
				}),
				q(65886, {	-- To Rhonin's Shield
					["sourceQuests"] = { 66027 },	-- Calling the Blue Dragons
					["provider"] = { "n", 186280 },	-- Kalecgos
					["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
				}),
				q(65887, {	-- To the Mountain
					["sourceQuests"] = { 65886 },	-- To Rhonin's Shield
					["provider"] = { "n", 189751 },	-- Drok Scrollstabber
					["coord"] = { 65.8, 25.3, THE_AZURE_SPAN },
				}),
				q(66647, {	-- Elemental Unfocus
					["sourceQuests"] = { 65887 },	-- To the Mountain
					["provider"] = { "n", 186305 },	-- Khadgar
					["coord"] = { 70.0, 35.3, THE_AZURE_SPAN },
					["g"] = {
						i(198025),	-- Bramble Chain Belt
						i(192478),	-- Elemental Focus (QI!)
						i(198026),	-- Sleet Shined Waistguard
						i(198017),	-- Twisted Leather Belt
						i(197996),	-- Windswept Sash
					},
				}),
				q(65944, {	-- Lava Burst
					["sourceQuests"] = { 65887 },	-- To the Mountain
					["provider"] = { "n", 186305 },	-- Khadgar
					["coord"] = { 70.0, 35.3, THE_AZURE_SPAN },
				}),
				q(65943, {	-- Primal Offensive
					["sourceQuests"] = { 65887 },	-- To the Mountain
					["provider"] = { "n", 186304 },	-- Kalecgos
					["coord"] = { 70.0, 35.2, THE_AZURE_SPAN },
				}),
				q(65977, {	-- Kirin Tor Recovery
					["sourceQuests"] = {
						65943,	-- Primal Offensive
						65944,	-- Lava Burst
						66647,	-- Elemental Unfocus
					},
					["provider"] = { "n", 186688 },	-- Archmage Khadgar
					["coord"] = { 74.5, 37.8, THE_AZURE_SPAN },
				}),
				q(65958, {	-- Primal Power
					["sourceQuests"] = {
						65943,	-- Primal Offensive
						65944,	-- Lava Burst
						66647,	-- Elemental Unfocus
					},
					["provider"] = { "n", 186686 },	-- Kalecgos
					["coord"] = { 74.5, 37.8, THE_AZURE_SPAN },
					["g"] = {
						i(192479),	-- Elemental Focus
					},
				}),
				q(66007, {	-- Free Air
					["sourceQuests"] = {
						65977,	-- Kirin Tor Recovery
						65958,	-- Primal Power
					},
					["provider"] = { "n", 186779 },	-- Archmage Khadgar
					["coord"] = { 76.9, 39.4, THE_AZURE_SPAN },
				}),
				q(66009, {	-- In Defense of Vakthros
					["sourceQuests"] = { 66007 },	-- Free Air
					["provider"] = { "n", 186862 },	-- Kalecgos
					["coord"] = { 78.4, 40.0, THE_AZURE_SPAN },
					["g"] = {
						i(198022),	-- Bramble Chain Grips
						i(198031),	-- Sleet Shined Crushers
						i(198014),	-- Twisted Leather Gloves
						i(198000),	-- Windswept Gloves
						i(197603),	-- Windborne Velocidrake: Curved Horns (MM!)
					},
				}),
				q(70041, {	-- The Storm-Eater's Fury
					["sourceQuests"] = { 66009 },	-- In Defense of Vakthros
					["provider"] = { "n", 193837 },	-- Archmage Khadgar
					["coord"] = { 78.0, 32.5, THE_AZURE_SPAN },
				}),
				q(66015, {	-- The Blue Dragon Oathstone
					["sourceQuests"] = { 70041 },	-- The Storm-Eater's Fury
					["provider"] = { "n", 187034 },	-- Kalecgos
					["coord"] = { 78.2, 33.3, THE_AZURE_SPAN },
					["g"] = {
						i(198019),	-- Bramble Chain Pauldrons
						i(198029),	-- Sleet Shined Shoulderguards
						i(198011),	-- Twisted Leather Spaulders
						i(197997),	-- Windswept Mantle
					},
				}),
				------ Continues in Thaldraszus ------
			}),
			header(HEADERS.AchCriteria, 16428.01, {	-- Grimtusk Hideaway
				q(71009, {	-- Elementary, My Dear Drakonid
					["sourceQuests"] = { 66026 },	-- Urgent Action Required
					["provider"] = { "n", 196816 },	-- Varsek
					["coord"] = { 21.1, 35.1, THE_AZURE_SPAN },
				}),
				q(71012, {	-- Varsek Recruited
					["sourceQuests"] = { 71009 },	-- Elementary, My Dear Drakonid
					["provider"] = { "n", 196838 },	-- Varsek
					["coord"] = { 21.5, 35.5, THE_AZURE_SPAN },
				}),
				q(71013, {	-- No Vengeance on an Empty Stomach
					["sourceQuests"] = { 66730 },	-- True Survivors
					["provider"] = { "n", 196812 },	-- Old Grimtusk
					["coord"] = { 58.8, 34.9, THE_AZURE_SPAN },
					["requireSkill"] = FISHING,
					["g"] = {
						i(200220),	-- Frozen Tail Darter (QI!)
					},
				}),
				q(71014, {	-- A Far Furbolg Friend
					["sourceQuests"] = { 71013 },	-- No Vengeance on an Empty Stomach
					["provider"] = { "n", 196812 },	-- Old Grimtusk
					["coord"] = { 58.8, 34.9, THE_AZURE_SPAN },
				}),
				q(70996, {	-- A Little Kelp for My Friends
					["sourceQuests"] = { 71014 },	-- A Far Furbolg Friend
					["provider"] = { "n", 196806 },	-- Barst
					["coord"] = { 1.2, 39.2, THE_AZURE_SPAN },
				}),
				q(71000, {	-- Barst Recruited
					["sourceQuests"] = { 70996 },	-- A Little Kelp for My Friends
					["provider"] = { "n", 196806 },	-- Barst
					["coord"] = { 1.2, 39.2, THE_AZURE_SPAN },
				}),
				q(71015, {	-- All Brawn, No Brains [BUG QUEST CANT COMPLETE]
					["sourceQuests"] = { 71013 },	-- No Vengeance on an Empty Stomach
					["provider"] = { "n", 196812 },	-- Old Grimtusk
					["coord"] = { 58.8, 34.9, THE_AZURE_SPAN },
				}),
				q(71016, {	-- Grimtusk's Sister
					["sourceQuests"] = { 71013 },	-- No Vengeance on an Empty Stomach
					["provider"] = { "n", 196812 },	-- Old Grimtusk
					["coord"] = { 58.8, 34.9, THE_AZURE_SPAN },
				}),
				q(71017, {	-- Naluki's Letter
					["sourceQuests"] = { 71016 },	-- Grimtusk's Sister
					["provider"] = { "n", 196841 },	-- Naluki
					["coord"] = { 12.5, 49.2, THE_AZURE_SPAN },
				}),
				q(71135, {	-- Loose Ends
					["sourceQuests"] = {
						71000,	-- Barst Recruited
						71012,	-- Varsek Recruited
						71017,	-- Naluki's Letter
					},
					["provider"] = { "n", 196812 },	-- Old Grimtusk
					["coord"] = { 58.8, 34.9, THE_AZURE_SPAN },
					["g"] = {
						i(202201),	-- Tuskarr Spirit Shawl
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.02, {	-- Gorloc Shore
				q(71234, {	-- Nook News
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 193877 },	-- Lukoturukk
					["coord"] = { 14.1, 49.4, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66781, {	-- A Matter of Taste
					["sourceQuests"] = { 71234 },	-- Nook News
					["provider"] = { "n", 190691 },	-- Mordigan Ironjaw
					["coord"] = { 7.6, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(193052),	-- Large Stone (QI!)
					},
				}),
				q(66147, {	-- Crystals in the Water
					["sourceQuests"] = { 66781 },	-- A Matter of Taste
					["provider"] = { "n", 187156 },	-- Aelnara
					["coord"] = { 7.6, 44.2, THE_AZURE_SPAN },
					["g"] = {
						i(192203),	-- Crystal Sample (QI!)
					},
				}),
				q(66164, {	-- Fishy Fingers
					["sourceQuests"] = { 66781 },	-- A Matter of Taste
					["provider"] = { "n", 187198 },	-- LOU-C Fitzcog
					["coord"] = { 7.6, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(191680),	-- Stolen Parts (QI!)
					},
				}),
				q(66154, {	-- Salivatory Samples
					["sourceQuests"] = { 66781 },	-- A Matter of Taste
					["provider"] = { "n", 187136 },	-- Examiner Rowe
					["coord"] = { 7.7, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(191202),	-- Saliva Sample (QI!)
					},
				}),
				q(66175, {	-- Field Experiment
					["sourceQuests"] = {
						66147,	-- Crystals in the Water
						66164,	-- Fishy Fingers
						66154,	-- Salivatory Samples
					},
					["provider"] = { "n", 187198 },	-- LOU-C Fitzcog
					["coord"] = { 7.6, 44.3, THE_AZURE_SPAN },
				}),
				q(66177, {	-- No Dwarf Left Behind
					["sourceQuests"] = { 66175 },	-- Field Experiment
					["provider"] = { "n", 187198 },	-- LOU-C Fitzcog
					["coord"] = { 7.6, 44.3, THE_AZURE_SPAN },
				}),
				q(66232, {	-- Afront 'Till A Salt
					["sourceQuests"] = { 66175 },	-- Field Experiment
					["provider"] = { "n", 186212 },	-- Wayun
					["coord"] = { 7.5, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(191309),	-- Crystal Flakes (QI!)
					},
				}),
				q(66187, {	-- Mad Mordigan & The Crystal King
					["sourceQuests"] = { 66177 },	-- No Dwarf Left Behind
					["provider"] = { "n", 188030 },	-- Aelnara
					["coord"] = { 10.8, 41.2, THE_AZURE_SPAN },
					["g"] = {
						i(197381),	-- Renewed Proto-Drake: Gradient Horns (MM!)
						i(201294),	-- Salt Crystal Ring
					},
				}),
				q(66559, {	-- Back To Camp
					["sourceQuests"] = { 66187 },	-- Mad Mordigan & The Crystal King
					["provider"] = { "n", 188030 },	-- Aelnara
					["coord"] = { 10.8, 41.2, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16428.03, {	-- Snowhide Camp
				q(66708, {	-- Riders in the Snow
					["sourceQuests"] = {
						66340,	-- Into the Azure
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 190300 },	-- Tuskarr Elder
					["coord"] = { 65.9, 25.5, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66709, {	-- Field Medic 101
					["sourceQuests"] = { 66708 },	-- Riders in the Snow
					["provider"] = { "n", 189963 },	-- Old Grimtusk
					["coord"] = { 59.3, 39.7, THE_AZURE_SPAN },
					["g"] = {
						i(193372),	-- Wood (QI!)
					},
				}),
				q(66715, {	-- The Extraction
					["sourceQuests"] = { 66709 },	-- Field Medic 101
					["provider"] = { "n", 189963 },	-- Old Grimtusk
					["coord"] = { 59.3, 39.7, THE_AZURE_SPAN },
				}),
				q(66703, {	-- Snowball Effect
					["sourceQuests"] = { 66715 },	-- The Extraction
					["provider"] = { "n", 189625 },	-- Frostbite
					["coord"] = { 58.4, 42.0, THE_AZURE_SPAN },
					["g"] = {
						i(193617),	-- Snowhide Totem (QI!)
					},
				}),
				q(67050, {	-- Frostbite: Causes and Symptoms
					["sourceQuests"] = { 66703 },	-- Snowball Effect
					["provider"] = { "n", 189625 },	-- Frostbite
					["coord"] = { 58.4, 42.0, THE_AZURE_SPAN },
				}),
				q(66730, {	-- True Survivors
					["sourceQuests"] = { 67050 },	-- Frostbite: Causes and Symptoms
					["provider"] = { "n", 189963 },	-- Old Grimtusk
					["coord"] = { 58.5, 40.5, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16428.04, {	-- Slyvern Plunge
				q(67299, {	-- Drakes be Gone
					["sourceQuests"] = { 65886 },	-- To Rhonin's Shield
					["provider"] = { "n", 189751 },	-- Drok Scrollstabber
					["coord"] = { 65.8, 25.3, THE_AZURE_SPAN },
				}),
				q(71235, {	-- Field Mages
					["provider"] = { "n", 189751 },	-- Drok Scrollstabber
					["coord"] = { 65.8, 25.3, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(68641, {	-- Mossing the Mark
					["sourceQuests"] = { 71235 },	-- Field Mages
					["provider"] = { "n", 192830 },	-- Steria Duskgrove
					["coord"] = { 63.6, 28.8, THE_AZURE_SPAN },
					["g"] = {
						i(197983),	-- Drakmoss Clump (QI!)
					},
				}),
				q(68639, {	-- Prowling Polar Predators
					["sourceQuests"] = { 71235 },	-- Field Mages
					["provider"] = { "n", 192825 },	-- Callisto Windsor
					["coord"] = { 63.6, 28.9, THE_AZURE_SPAN },
				}),
				q(68642, {	-- Needles to Say
					["sourceQuests"] = {
						68641,	-- Mossing the Mark
						68639,	-- Prowling Polar Predators
					},
					["provider"] = { "n", 192830 },	-- Steria Duskgrove
					["coord"] = { 63.6, 28.8, THE_AZURE_SPAN },
					["g"] = {
						i(198336),	-- Arcane-Infused Quill (QI!)
					},
				}),
				q(68643, {	-- Vitamins and Minerals
					["sourceQuests"] = {
						68641,	-- Mossing the Mark
						68639,	-- Prowling Polar Predators
					},
					["provider"] = { "n", 192825 },	-- Callisto Windsor
					["coord"] = { 63.6, 28.9, THE_AZURE_SPAN },
					["g"] = {
						i(198797),	-- Vial of Mineral Water (QI!)
					},
				}),
				q(68644, {	-- Sugar, Spice, and Everything Nice
					["sourceQuests"] = {
						68642,	-- Needles to Say
						68643,	-- Vitamins and Minerals
					},
					["provider"] = { "n", 192830 },	-- Steria Duskgrove
					["coord"] = { 63.6, 28.8, THE_AZURE_SPAN },
				}),
				q(69862, {	-- Save a Slyvern
					["sourceQuests"] = { 68644 },	-- Sugar, Spice, and Everything Nice
					["provider"] = { "n", 192830 },	-- Steria Duskgrove
					["coord"] = { 63.6, 28.8, THE_AZURE_SPAN },
				}),
				q(70338, {	-- They Took the Kits
					["sourceQuests"] = { 69862 },	-- Save a Slyvern
					["provider"] = { "n", 192830 },	-- Steria Duskgrove
					["coord"] = { 65.7, 30.8, THE_AZURE_SPAN },
					["g"] = {
						i(200526),	-- Steria's Charm of Invisiblity
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.05, {	-- Brackenhide Water Hole
				q(66261, {	-- A Minor Setback
					["sourceQuests"] = { 66340 },	-- Into the Azure
					["provider"] = { "n", 187764 },	-- Illusory Mage
					["coord"] = { 21.0, 38.9, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66262, {	-- Waste Water Cleanup
					["sourceQuests"] = { 66261 },	-- A Minor Setback
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66263, {	-- A Precision Approach
					["sourceQuests"] = { 66262 },	-- Waste Water Cleanup
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66264, {	-- Disarmed and Docile
					["sourceQuests"] = { 66262 },	-- Waste Water Cleanup
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66266, {	-- Filthy Mongrels
					["sourceQuests"] = {
						66263,	-- A Precision Approach
						66264,	-- Disarmed and Docile
					},
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66267, {	-- M.E.T.A
					["sourceQuests"] = {
						66263,	-- A Precision Approach
						66264,	-- Disarmed and Docile
					},
					["provider"] = { "n", 198202 },	-- Illusory Mage
					["coord"] = { 23.5, 41.8, THE_AZURE_SPAN },
				}),
				q(66265, {	-- Who's Next?
					["sourceQuests"] = {
						66263,	-- A Precision Approach
						66264,	-- Disarmed and Docile
					},
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66269, {	-- Just To Be Sure
					["sourceQuests"] = {
						66266,	-- Filthy Mongrels
						66267,	-- M.E.T.A
						66265,	-- Who's Next?
					},
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66268, {	-- Third Try's the Charm
					["sourceQuests"] = {
						66266,	-- Filthy Mongrels
						66267,	-- M.E.T.A
						66265,	-- Who's Next?
					},
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
				}),
				q(66270, {	-- Whack-a-Gnoll
					["sourceQuests"] = {
						66269,	-- Just To Be Sure
						66268,	-- Third Try's the Charm
					},
					["provider"] = { "n", 187463 },	-- Detry Hornswald
					["coord"] = { 22.7, 41.7, THE_AZURE_SPAN },
					["g"] = {
						i(198432),	-- Crude Wind Charm
						i(198036),	-- Spineripper's Fang
						i(197385),	-- Renewned Proto-Drake: Horned Jaw (MM!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.06, {	-- Creektooth Den
				q(65279, {	-- By Royal Decree
					["sourceQuests"] = {
						65686,	-- To the Azure Span
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["providers"] = {
						{ "n", 183997 },	-- Gnoll Mon-Ark
						{ "n", 185749 },	-- Gnoll Mon-Ark [Follows you Around]
					},
					["coord"] = { 16.2, 20.9, THE_AZURE_SPAN },
				}),
				q(65306, {	-- Rot Rancher
					["sourceQuests"] = {
						65686,	-- To the Azure Span
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["providers"] = {
						{ "n", 183997 },	-- Gnoll Mon-Ark
						{ "n", 185749 },	-- Gnoll Mon-Ark [Follows you Around]
					},
					["coord"] = { 16.2, 20.9, THE_AZURE_SPAN },
					["g"] = {
						i(189183),	-- Smelly Ooze (QI!)
					},
				}),
				q(65302, {	-- Keys to the Kingdom
					["sourceQuests"] = {
						65279,	-- By Royal Decree
						65306,	-- Rot Rancher
					},
					["provider"] = { "n", 185749 },	-- Gnoll Mon-Ark [Follows you Around]
					["coord"] = { 13.8, 21.2, THE_AZURE_SPAN },
					["g"] = {
						i(189126),	-- Gnoll "Lances" (QI!)
						i(188959),	-- Sticky Gnoll Key (QI!)
					},
				}),
				q(65594, {	-- Making a Mountain Out of a Gnoll Hill
					["sourceQuests"] = { 65302 },	-- Keys to the Kingdom
					["provider"] = { "n", 183997 },	-- Gnoll Mon-Ark
					["coord"] = { 15.7, 19.2, THE_AZURE_SPAN },
				}),
				q(65595, {	-- One Bad Apple
					["sourceQuests"] = { 65594 },	-- Making a Mountain Out of a Gnoll Hill
					["provider"] = { "n", 183997 },	-- Gnoll Mon-Ark
					["coord"] = { 12.9, 22.0, THE_AZURE_SPAN },
					["g"] = {
						i(198671),	-- Mystic's String of Slime
						i(198090),	-- Jar of Excess Slime (TOY!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.07, {	-- Shiverweb Vale
				q(65750, {	-- Eight-Legged Menace
					["sourceQuests"] = { 65686 },	-- To the Azure Span
					["provider"] = { "n", 185778 },	-- Lilial Dawnburst
					["coord"] = { 51.7, 62.0, THE_AZURE_SPAN },
				}),
				q(65769, {	-- Icy Webs
					["sourceQuests"] = { 65686 },	-- To the Azure Span
					["provider"] = { "n", 185778 },	-- Lilial Dawnburst
					["coord"] = { 51.7, 62.0, THE_AZURE_SPAN },
				}),
				q(65758, {	-- Grungir the Explorer
					["sourceQuests"] = {
						65750,	-- Eight-Legged Menace
						65769,	-- Icy Webs
					},
					["provider"] = { "n", 185778 },	-- Lilial Dawnburst
					["coord"] = { 51.7, 62.0, THE_AZURE_SPAN },
				}),
				q(65832, {	-- Dwarven Antifreeze
					["sourceQuests"] = { 65758 },	-- Grungir the Explorer
					["provider"] = { "n", 185806 },	-- Grungir Ironspout
					["coord"] = { 49.0, 64.2, THE_AZURE_SPAN },
					["g"] = {
						i(191042),	-- Flask of Dwarven Antifreeze (QI!)
					},
				}),
				q(65833, {	-- Primalist Tampering
					["sourceQuests"] = { 65758 },	-- Grungir the Explorer
					["provider"] = { "n", 185806 },	-- Grungir Ironspout
					["coord"] = { 49.0, 64.2, THE_AZURE_SPAN },
					["g"] = {
						i(191137),	-- Julh'ek's Runestone (QI!)
						i(191135),	-- Nai'jin's Runestone (QI!)
						i(191136),	-- Sin'tia's Runestone (QI!)
					},
				}),
				q(65834, {	-- Kill the Queen
					["sourceQuests"] = {
						65832,	-- Dwarven Antifreeze
						65833,	-- Primalist Tampering
					},
					["provider"] = { "n", 185806 },	-- Grungir Ironspout
					["coord"] = { 49.0, 64.2, THE_AZURE_SPAN },
					["g"] = {
						i(191044),	-- Spider Squasher
						i(198353),	-- Shiverweb Egg (PET!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.08, {	-- Kauriq Gleamlet
				q(65925, {	-- Culling the Cullers
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "n", 186157 },	-- Ruriq
					["coord"] = { 44.8, 50.6, THE_AZURE_SPAN },
				}),
				q(65914, {	-- Mammoths Matter
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "n", 186157 },	-- Ruriq
					["coord"] = { 44.8, 50.6, THE_AZURE_SPAN },
					["g"] = {
						i(191091),	-- On'tuq Hide Scraps (QI!)
						i(191092),	-- On'tuq Tusk (QI!)
					},
				}),
				q(65926, {	-- Tackling the Falls
					["sourceQuests"] = {
						65925,	-- Culling the Cullers
						65914,	-- Mammoths Matter
					},
					["provider"] = { "n", 186157 },	-- Ruriq
					["coord"] = { 45.4, 54.2, THE_AZURE_SPAN },
				}),
				q(66724, {	-- The Gleamfisher
					["sourceQuests"] = { 65926 },	-- Tackling the Falls
					["provider"] = { "n", 186386 },	-- Kauj
					["coord"] = { 45.5, 54.2, THE_AZURE_SPAN },
					["g"] = {
						i(194324),	-- Gleamfish (QI!)
					},
				}),
				q(65929, {	-- Ice Breakers
					["sourceQuests"] = { 66724 },	-- The Gleamfisher
					["provider"] = { "n", 186157 },	-- Ruriq
					["coord"] = { 45.4, 54.2, THE_AZURE_SPAN },
				}),
				q(65928, {	-- Wayward Winds
					["sourceQuests"] = { 66724 },	-- The Gleamfisher
					["provider"] = { "n", 186386 },	-- Kauj
					["coord"] = { 45.5, 54.2, THE_AZURE_SPAN },
					["g"] = {
						i(191199),	-- Restless Mote (QI!)
					},
				}),
				q(65930, {	-- A Wrestle of Wind and Water
					["sourceQuests"] = {
						65929,	-- Ice Breakers
						65928,	-- Wayward Winds
					},
					["provider"] = { "n", 186386 },	-- Kauj
					["coord"] = { 45.5, 54.2, THE_AZURE_SPAN },
				}),
				q(66155, {	-- Ruriq's River Rapids Ride
					["sourceQuests"] = { 65930 },	-- A Wrestle of Wind and Water
					["provider"] = { "n", 186157 },	-- Ruriq
					["coord"] = { 45.0, 54.0, THE_AZURE_SPAN },
					["g"] = {
						i(199828),	-- Tuskarr Feet Buckets
						i(199826),	-- Tuskarr Puddle Steppers
						i(199829),	-- Tuskarr Wading Boots
						i(199827),	-- Tuskarr Water Kickers
						i(197607),	-- Windborne Velocidrake: Split Horns (MM!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.09, {	-- Lost Ruins
				q(66964, {	-- Artifacts in the Wrong Hands
					["sourceQuests"] = {
						66340,	-- Into the Azure
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 196545 },	-- Polky Cogzapper
					["coord"] = { 65.9, 25.3, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(70856, {	-- Kill It with Fire
					["sourceQuests"] = { 66964 },	-- Artifacts in the Wrong Hands
					["provider"] = { "n", 191715 },	-- To'tik
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(199928),	-- Flamethrower Torch
					},
				}),
				q(67111, {	-- The Ailing Apprentice
					["sourceQuests"] = { 66964 },	-- Artifacts in the Wrong Hands
					["provider"] = { "n", 196254 },	-- Kattigat
					["coord"] = { 67.2, 44.4, THE_AZURE_SPAN },
					["g"] = {
						i(194747),	-- Frozen Venom Gland (QI!)
					},
				}),
				q(67724, {	-- The Fending Flames
					["sourceQuests"] = { 66964 },	-- Artifacts in the Wrong Hands
					["provider"] = { "n", 191715 },	-- To'tik
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(195468),	-- Shiverweb Silk (QI!)
					},
				}),
				q(70858, {	-- Back into the Action
					["sourceQuests"] = {
						70856,	-- Kill It with Fire
						67111,	-- The Ailing Apprentice
						67724,	-- The Fending Flames
					},
					["provider"] = { "n", 196254 },	-- Kattigat
					["coord"] = { 67.2, 44.4, THE_AZURE_SPAN },
					["g"] = {
						i(199930),	-- Ice Cold Antidote
					},
				}),
				q(70859, {	-- What the Guardian Beholds
					["sourceQuests"] = { 70858 },	-- Back into the Action
					["provider"] = { "n", 196501 },	-- Alia Sunsoar
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(200067),	-- Whispering Shard (QI!)
					},
				}),
				q(70937, {	-- What Valthrux Once Was
					["sourceQuests"] = { 70858 },	-- Back into the Action
					["provider"] = { "n", 191715 },	-- To'tik
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
				}),
				q(70931, {	-- Whispered Fragments
					["sourceQuests"] = { 70859 },	-- What the Guardian Beholds
					["provider"] = { "n", 196501 },	-- Alia Sunsoar
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
					["g"] = {
						i(200110),	-- Whispering Fragments (QI!)
					},
				}),
				q(70946, {	-- No One May Wield It
					["sourceQuests"] = {
						70937,	-- What Valthrux Once Was
						70931,	-- Whispered Fragments
					},
					["provider"] = { "n", 191715 },	-- To'tik
					["coord"] = { 67.3, 44.3, THE_AZURE_SPAN },
				}),
				q(70970, {	-- Good Intentions
					["sourceQuests"] = { 70946 },	-- No One May Wield It
					["provider"] = { "n", 196520 },	-- Kattigat
					["coord"] = { 67.3, 44.4, THE_AZURE_SPAN },
					["g"] = {
						i(201292),	-- Bramble Chain Belt
						i(201293),	-- Sleet Shined Waistguard
						i(201291),	-- Twisted Leather Belt
						i(201290),	-- Windswept Sash
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.10, {	-- Ruins of Karnthar
				q(66391, {	-- To the Ruins!
					["sourceQuests"] = { 66671 },	-- Path to Nowhere
					["provider"] = { "n", 188144 },	-- Rannan Korren
					["coord"] = { 63.4, 58.0, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,	-- Probably? Need checking
				}),
				q(66353, {	-- R.A.D Anomalies
					["sourceQuests"] = { 66391 },	-- To the Ruins!
					["provider"] = { "n", 189171 },	-- Rannan Korren
					["coord"] = { 65.0, 58.6, THE_AZURE_SPAN },
					["g"] = {
						i(191909),	-- R.A.D
					},
				}),
				q(66352, {	-- What the Enemy Knows
					["sourceQuests"] = { 66391 },	-- To the Ruins!
					["provider"] = { "n", 189166 },	-- Lathos Sunband
					["coord"] = { 65.0, 58.6, THE_AZURE_SPAN },
					["g"] = {
						i(191265),	-- Sundered Flames Expedition Orders (QI!)
					},
				}),
				q(66422, {	-- The Expedition Continues!
					["sourceQuests"] = {
						66353,	-- R.A.D Anomalies
						66352,	-- What the Enemy Knows
					},
					["provider"] = { "n", 189166 },	-- Lathos Sunband
					["coord"] = { 65.0, 58.6, THE_AZURE_SPAN },
				}),
				q(66423, {	-- Worries and Validations
					["sourceQuests"] = { 66422 },	-- The Expedition Continues!
					["provider"] = { "n", 189236 },	-- Lathos Sunband
					["coord"] = { 65.6, 60.8, THE_AZURE_SPAN },
				}),
				q(66425, {	-- Arcane Overload
					["sourceQuests"] = { 66423 },	-- Worries and Validations
					["provider"] = { "n", 188845 },	-- Rannan Korren
					["coord"] = { 65.6, 60.8, THE_AZURE_SPAN },
					["g"] = {
						i(192110),	-- R.A.D.D.E.R
					},
				}),
				q(66426, {	-- Running Out of Time
					["sourceQuests"] = { 66425 },	-- Arcane Overload
					["provider"] = { "n", 189236 },	-- Lathos Sunband
					["coord"] = { 65.6, 60.8, THE_AZURE_SPAN },
				}),
				q(66427, {	-- A Looming Menace
					["sourceQuests"] = { 66426 },	-- Running Out of Time
					["provider"] = { "n", 189792 },	-- Lathos Sunband
					["coord"] = { 68.5, 60.5, THE_AZURE_SPAN },
				}),
				q(66428, {	-- Friendship For Granted
					["sourceQuests"] = { 66427 },	-- A Looming Menace
					["provider"] = { "n", 189791 },	-- Rannan Korren
					["coord"] = { 68.5, 60.4, THE_AZURE_SPAN },
					["g"] = {
						i(192475),	-- R.A.D.D.E.R.E.R
					},
				}),
				q(66429, {	-- I Will Remember
					["sourceQuests"] = { 66428 },	-- Friendship For Granted
					["provider"] = { "n", 189791 },	-- Rannan Korren
					["coord"] = { 69.5, 60.4, THE_AZURE_SPAN },
					["g"] = {
						i(202199),	-- Frozen Shard Ring
						i(202198),	-- Salt Crystal Ring
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16428.11, {	-- Rustpine Den
				q(66557, {	-- Academic Aquaintances
					["sourceQuests"] = { 66556 },	-- Ice Cave Ya Got There
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66671, {	-- Path to Nowhere
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "n", 190001 },	-- Caddy Scattershot
					["coord"] = { 45.7, 39.8, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66141, {	-- Broken Traditions, Broken Bodies
					["sourceQuests"] = {
						66671,	-- Path to Nowhere
						66557,	-- Academic Aquaintances
					},
					["provider"] = { "n", 187301 },	-- Garz
					["coord"] = { 63.2, 58.6, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66149, {	-- Elemental Influence
					["sourceQuests"] = { 66141 },	-- Broken Traditions, Broken Bodies
					["provider"] = { "n", 187308 },	-- Garz
					["coord"] = { 63.5, 53.0, THE_AZURE_SPAN },
				}),
				q(66148, {	-- Former Furbolg Family
					["sourceQuests"] = { 66141 },	-- Broken Traditions, Broken Bodies
					["provider"] = { "n", 187308 },	-- Garz
					["coord"] = { 63.5, 53.0, THE_AZURE_SPAN },
				}),
				q(66150, {	-- Rescuing Radza
					["sourceQuests"] = { 66141 },	-- Broken Traditions, Broken Bodies
					["provider"] = { "n", 187308 },	-- Garz
					["coord"] = { 63.5, 53.0, THE_AZURE_SPAN },
				}),
				q(66151, {	-- His Stone Heart
					["sourceQuests"] = {
						66149,	-- Elemental Influence
						66148,	-- Former Furbolg Family
						66150,	-- Rescuing Radza
					},
					["provider"] = { "n", 187616 },	-- Radza Thunderclaw
					["coord"] = { 60.9, 50.5, THE_AZURE_SPAN },
					["g"] = {
						i(198002),	-- Draconic Compendium
						i(198009),	-- Gleaming Bronze Blade
						i(198003),	-- Ornate Steel Cleaver
						i(198034),	-- Rustic Barrier
						i(198006),	-- Sharpened Silver Sword
						i(198005),	-- Sleek Obsidian Kris
						i(198004),	-- Steel Draconic Gavel
					},
				}),
				q(66152, {	-- Nowhere to Go
					["sourceQuests"] = { 66151 },	-- His Stone Heart
					["provider"] = { "n", 187535 },	-- Garz
					["coord"] = { 61.0, 50.6, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16428.12, {	-- Winterpelt Hollow
				q(70627, {	-- What of the Winterpelt Clan?
					["sourceQuests"] = { 66152 },	-- Nowhere to Go
					["provider"] = { "n", 191123 },	-- Radza Thunderclaw
					["coord"] = { 63.2, 58.7, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66554, {	-- Aggressive Self-Defence
					["sourceQuests"] = { 70627 },	-- What of the Winterpelt Clan?
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
				}),
				q(66553, {	-- Hollow Up
					["sourceQuests"] = { 70627 },	-- What of the Winterpelt Clan?
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
				}),
				q(66555, {	-- Bear With Me
					["sourceQuests"] = {
						66554,	-- Aggressive Self-Defence
						66553,	-- Hollow Up
					},
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
				}),
				q(66556, {	-- Ice Cave Ya Got There
					["sourceQuests"] = { 66555 },	-- Bear With Me
					["provider"] = { "n", 189401 },	-- Sonova Snowden
					["coord"] = { 65.4, 15.9, THE_AZURE_SPAN },
					["g"] = {
						i(197988),	-- Frozen Shard Ring
						i(197627),	-- Windborne Velocidrake: Finned Neck (MM!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.01, {	-- WANTED: Frigellus
				q(66488, {	-- WANTED: Frigellus
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "o", 376757 },	-- WANTED: Frigellus
					["coord"] = { 46.2, 39.6, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.02, {	-- Tending the Forge
				q(66523, {	-- Tending the Forge
					["sourceQuests"] = { 67036 },	-- Wrath of the Kirin Tor
					["provider"] = { "n", 189208 },	-- Custodian Vernagos
					["coord"] = { 46.1, 41.0, THE_AZURE_SPAN },
					["g"] = {
						i(192776),	-- Dormant Embercone (QI!)
						i(192474),	-- Frozen Core (QI!)
						i(192473),	-- Hornswog Hide Scraps (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.03, {	-- Setting the Defense
				q(66489, {	-- Setting the Defense
					["sourceQuests"] = { 66488 },	-- WANTED: Frigellus
					["provider"] = { "n", 192335 },	-- Arch Enchanter Celeste
					["coord"] = { 46.0, 38.4, THE_AZURE_SPAN },
					["g"] = {
						i(192471),	-- Arch Instructor's Wand
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.04, {	-- Send It!
				q(66493, {	-- Send It!
					["sourceQuests"] = { 66523 },	-- Tending the Forge
					["provider"] = { "n", 188915 },	-- Supply Portal
					["coord"] = { 46.0, 38.8, THE_AZURE_SPAN },
					["g"] = {
						i(197107),	-- Highland Drake: Triple Finned Head (MM!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.05, {	-- For The Love of Others
				q(69904, {	-- Suspiciously Quiet
					["sourceQuests"] = { 65855 },	-- Aiding Azure Span
					["provider"] = { "n", 183543 },	-- Noriko the All-Remembering
					["coord"] = { 46.6, 40.2, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66500, {	-- Ways of Seeing
					["sourceQuests"] = { 69904 },	-- Suspiciously Quiet
					["provider"] = { "n", 189198 },	-- Apprentice Scrumpy
					["coord"] = { 47.7, 40.2, THE_AZURE_SPAN },
				}),
				q(66503, {	-- For The Love of Others
					["sourceQuests"] = { 66500 },	-- Ways of Seeing
					["provider"] = { "n", 183543 },	-- Noriko the All-Remembering
					["coord"] = { 46.6, 40.2, THE_AZURE_SPAN },
					["g"] = {
						i(198676),	-- Divo's Worn Cloth
						i(200926),	-- Compendium of Love (TOY!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.06, {	-- Fishing: Aileron Seamoth
				q(66212, {	-- Fishing: Aileron Seamoth
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 193877 },	-- Lukoturukk
					["coord"] = { 14.1, 49.4, THE_AZURE_SPAN },
					["requireSkill"] = FISHING,
					["cost"] = { { "i", 194967, 5 }, },	-- 5xAileron Seamoth
				}),
			}),
			header(HEADERS.AchCriteria, 16580.07, {	-- The Weave of a Tale
				q(66213, {	-- The Weave of a Tale
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 186446 },	-- Elder Nappa
					["coord"] = { 12.4, 49.4, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.08, {	-- WANTED: Krojek the Shoreprowler
				q(66217, {	-- WANTED: Krojek the Shoreprowler
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 186568 },	-- Bukarakikk
					["coord"] = { 13.2, 48.8, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.09, {	-- Can We Keep It?
				q(66218, {	-- Scampering Scamps
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 186186 },	-- Hanu
					["coords"] = {
						{ 13.5, 48.2, THE_AZURE_SPAN },
						{ 12.9, 48.7, THE_AZURE_SPAN },
					},
				}),
				q(66223, {	-- Can We Keep It?
					["sourceQuests"] = { 66218 },	-- Scampering Scamps
					["provider"] = { "n", 187674 },	-- Neelo
					["coord"] = { 10.6, 46.9, THE_AZURE_SPAN },
					["cost"] = { { "i", 192153, 7 }, },	--7xFrigidfish
					["g"] = {
						i(201295),	-- Neelo's Spare Blanket
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.10, {	-- Toejam the Terrible
				q(66558, {	-- Rowie
					["sourceQuests"] = { 65849 },	-- To Iskaara
					["provider"] = { "n", 189533 },	-- Anutie Kaunnie
					["coord"] = { 13.8, 47.6, THE_AZURE_SPAN },
				}),
				q(70129, {	-- Toejam the Terrible
					["sourceQuests"] = { 66558 },	-- Rowie
					["provider"] = { "n", 186542 },	-- Rowie
					["coord"] = { 16.1, 50.4, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.11, {	-- Nothing for Breakfast
				q(71233, {	-- Falling Water
					["provider"] = { "n", 194613 },	-- Unkimi
					["coord"] = { 28.5, 35.1, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,
				}),
				q(66837, {	-- Nothing for Breakfast
					["sourceQuests"] = { 71233 },	-- Falling Water [Might be the only true SQ here..]
					["provider"] = { "n", 190315 },	-- Willa Stronghinge
					["coord"] = { 18.7, 24.5, THE_AZURE_SPAN },
					["g"] = {
						i(194030),	-- Moose Flank (QI!)
						i(193219),	-- Vorquin Meat (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.12, {	-- It's Cold Up Here
				q(66838, {	-- It's Cold Up Here
					["sourceQuests"] = { 71233 },	-- Falling Water
					["provider"] = { "n", 190315 },	-- Willa Stronghinge
					["coord"] = { 18.7, 24.5, THE_AZURE_SPAN },
					["g"] = {
						i(193220),	-- Thick Bear Pelt (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.13, {	-- It's Brew Time
				q(66839, {	-- It's Brew Time
					["sourceQuests"] = { 71233 },	-- Falling Water
					["provider"] = { "n", 190672 },	-- Modurun Sixtoes
					["coord"] = { 19.0, 23.3, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.14, {	-- Out of Lukh
				q(66843, {	-- Out of Lukh
					["sourceQuests"] = { 71233 },	-- Falling Water
					["provider"] = { "n", 190884 },	-- Branor Broadbraw
					["coord"] = { 19.3, 26.9, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.AchCriteria, 16580.15, {	-- The Great Shokhari
				q(66844, {	-- The Great Shokhari
					["sourceQuests"] = { 71233 },	-- Falling Water
					["provider"] = { "n", 190892 },	-- Zon'Wogi
					["coord"] = { 19.0, 24.0, THE_AZURE_SPAN },
					["g"] = {
						i(193619),	-- Yipper (PET!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16580.16, {	-- The Heart of the Deck
				q(66841, {	-- A Shard of the Past
					["sourceQuests"] = {
						66839,	-- It's Brew Time
						66838,	-- It's Cold Up Here
						66837,	-- Nothing for Breakfast
						66844,	-- The Great Shokhari
					},
					["provider"] = { "n", 190666 },	-- Gannar Fullpack
					["coord"] = { 19.2, 24.7, THE_AZURE_SPAN },
				}),
				q(66840, {	-- Water Safety
					["sourceQuests"] = {
						66839,	-- It's Brew Time
						66838,	-- It's Cold Up Here
						66837,	-- Nothing for Breakfast
					},
					["provider"] = { "n", 190679 },	-- Manny Read
					["coord"] = { 18.5, 23.7, THE_AZURE_SPAN },
					["g"] = {
						i(193569),	-- Water Testing Flask
					},
				}),
				q(66845, {	-- Legendary Foil
					["sourceQuests"] = {
						66841,	-- A Shard of the Past
						66840,	-- Water Safety
					},
					["provider"] = { "n", 190799 },	-- Manny Read
					["coord"] = { 18.7, 24.4, THE_AZURE_SPAN },
				}),
				q(66846, {	-- The Heart of the Deck
					["sourceQuests"] = { 66845 },	-- Legendary Foil
					["provider"] = { "n", 191741 },	-- Mysterious Apparition
					["coord"] = { 18.8, 24.4, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.Achievement, 17773, bubbleDownSelf({ ["timeline"] = ADDED_10_1_0 }, {	-- A Blue Dawn
				q(72900, {	-- Keeper of the Ossuary
					["qgs"] = {
						187676,	-- Kalecgos
						190000,	-- Kalecgos
					},
					["coords"] = {
						{ 61.4, 36.2, VALDRAKKEN },
						{ 39.4, 63.0, THE_AZURE_SPAN },
					},
				}),
				q(72921, {	-- On the Trail Again
					["provider"] = { "n", 199923 },	-- Senegos
					["sourceQuests"] = { 72900 },	-- Keeper of the Ossuary
					["coord"] = { 62.2, 17.9, THALDRASZUS },
					["groups"] = {
						i(202240),	-- Tome of Fanciful Spheres
						i(202241),	-- Tome of Rolling
						i(202242),	-- Tome of Sticking
					},
				}),
				q(72933, {	-- Rolling Out
					["provider"] = { "n", 199961 },	-- Senegos
					["sourceQuests"] = { 72921 },	-- On the Trail Again
					["coord"] = { 63.9, 12.3, THALDRASZUS },
				}),
				q(72934, {	-- Lest We Forget
					["provider"] = { "n", 199969 },	-- Senegos
					["sourceQuests"] = { 72933 },	-- Rolling Out
					["coord"] = { 66.7, 12.0, THALDRASZUS },
				}),
				q(73069, {	-- Sindragosa and Malygos's Rest
					["provider"] = { "n", 200447 },	-- Senegos
					["sourceQuests"] = { 72934 },	-- Lest We Forget
					["coord"] = { 67.1, 11.8, THALDRASZUS },
				}),
				q(75023, {	-- Memories of Sindragosa and Malygos
					["provider"] = { "n", 200447 },	-- Senegos
					["sourceQuests"] = { 73069 },	-- Sindragosa and Malygos's Rest
					["coord"] = { 67.1, 11.8, THALDRASZUS },
				}),
				q(72935, {	-- Archives Return
					["provider"] = { "n", 200447 },	-- Senegos
					["sourceQuests"] = { 75023 },	-- Memories of Sindragosa and Malygos
					["coord"] = { 67.1, 11.8, THALDRASZUS },
				}),
				q(72936, {	-- Azuregos's Support
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = { 72935 },	-- Archives Return
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
				}),
				q(72937, {	-- Unusual Desruptions
					["provider"] = { "n", 199976 },	-- Azuregos
					["sourceQuests"] = { 72936 },	-- Azuregos's Support
					["coord"] = { 22.5, 23.8, BOREAN_TUNDRA },
					["groups"] = {
						i(205931),	-- Azuregos's Staff
					},
				}),
				q(72938, {	-- Archival Arrival
					["provider"] = { "n", 199976 },	-- Azuregos
					["sourceQuests"] = { 72937 },	-- Unusual Desruptions
					["coord"] = { 22.5, 23.8, BOREAN_TUNDRA },
				}),
					--- Quests to select next zone (Blizzard made them incompletable. They disapear once you choose any of the zones)
				q(72940, {	-- Where in the World is a Lost Blue Dragon?
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = {
						72938,	-- Archival Arrival [First questchain part]
					},
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["collectible"] = false,	-- Blizzard....
				}),
				q(73399, {	-- The Search for Blue Dragons
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = {
						74335,	-- A Moment of Reflection [Theramore]
						74356,	-- Back with the Blues [Winterspring]
						74291,	-- Blue is My Favorite Color [The Jade Forest]
						74783,	-- The Sounds of Silence [Crystalsong Forest]
						73181,	-- Zeroing Debt [Booty Bay]
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["collectible"] = false,	-- Blizzard....
				}),
				q(73404, {	-- Lost Blue Dragons
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = {
						74335,	-- A Moment of Reflection [Theramore]
						74356,	-- Back with the Blues [Winterspring]
						74291,	-- Blue is My Favorite Color [The Jade Forest]
						74783,	-- The Sounds of Silence [Crystalsong Forest]
						73181,	-- Zeroing Debt [Booty Bay]
					},
					["sourceQuestNumRequired"] = 2,
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["collectible"] = false,	-- Blizzard....
				}),
				q(73405, {	-- A Pair of Blue Dragons
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = {
						74335,	-- A Moment of Reflection [Theramore]
						74356,	-- Back with the Blues [Winterspring]
						74291,	-- Blue is My Favorite Color [The Jade Forest]
						74783,	-- The Sounds of Silence [Crystalsong Forest]
						73181,	-- Zeroing Debt [Booty Bay]
					},
					["sourceQuestNumRequired"] = 3,
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["collectible"] = false,	-- Blizzard....
				}),
				q(73406, {	-- The Last Missing Blue Dragon
					["provider"] = { "n", 190000 },	-- Kalecgos
					["sourceQuests"] = {
						74335,	-- A Moment of Reflection [Theramore]
						74356,	-- Back with the Blues [Winterspring]
						74291,	-- Blue is My Favorite Color [The Jade Forest]
						74783,	-- The Sounds of Silence [Crystalsong Forest]
						73181,	-- Zeroing Debt [Booty Bay]
					},
					["sourceQuestNumRequired"] = 4,
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["collectible"] = false,	-- Blizzard....
				}),
				header(HEADERS.Quest, 73026, {	-- Booty Bay
					q(73026, {	-- Booty Bay
						["provider"] = { "n", 199991 },	-- Dragon Locator
						["sourceQuests"] = {
							72940,	-- Where in the World is a Lost Blue Dragon?
							73399,	-- The Search for Blue Dragons
							73404,	-- Lost Blue Dragons
							73405,	-- A Pair of Blue Dragons
							73406,	-- The Last Missing Blue Dragon
						},
						["sourceQuestNumRequired"] = 0,	-- Source quest is never completed due to Blizzard design
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(72988, {	-- The Booty Bay Journal
						["provider"] = { "n", 186240 },	-- Senegos
						["sourceQuests"] = { 73026 },	-- Booty Bay
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(72527, {	-- No Such Thing as Bad Luck
						["provider"] = { "n", 199185 },	-- Zeros
						["sourceQuests"] = { 72988 },	-- The Booty Bay Journal
						["coord"] = { 41.3, 73.1, THE_CAPE_OF_STRANGLETHORN },
					}),
					q(72529, {	-- Information is King
						["provider"] = { "n", 2846 },	-- Blixrez Goodstitch
						["sourceQuests"] = { 72527 },	-- No Such Thing as Bad Luck
						["coord"] = { 42.8, 74.1, THE_CAPE_OF_STRANGLETHORN },
						["groups"] = {
							i(201986),	-- Crocolisk Skin
						},
					}),
					q(72530, {	-- Anyway, I Started Bribing
						["provider"] = { "n", 199185 },	-- Zeros
						["sourceQuests"] = { 72529 },	-- Information is King
						["coord"] = { 42.8, 74.0, THE_CAPE_OF_STRANGLETHORN },
						["groups"] = {
							i(202271),	-- Pouch of Gold Coins (QI!)
						},
					}),
					q(72532, {	-- Money, Money, Money!
						["provider"] = { "n", 199185 },	-- Zeros
						["sourceQuests"] = { 72530 },	-- Anyway, I Started Bribing
						["coord"] = { 42.3, 77.4, THE_CAPE_OF_STRANGLETHORN },
						["groups"] = {
							i(204705),	-- Gold Coins
						},
					}),
					q(72533, {	-- Crystals Shmystals
						["provider"] = { "n", 199185 },	-- Zeros
						["sourceQuests"] = { 72530 },	-- Anyway, I Started Bribing
						["coord"] = { 42.3, 77.4, THE_CAPE_OF_STRANGLETHORN },
						["groups"] = {
							i(202281),	-- Gold Ingot
							i(202284),	-- Worn Brass Key
						},
					}),
					q(72534, {	-- Settled With the Baron
						["provider"] = { "n", 199185 },	-- Zeros
						["sourceQuests"] = {
							72533,	-- Crystals Shmystals
							72532,	-- Money, Money, Money!
						},
						["coord"] = { 42.3, 77.4, THE_CAPE_OF_STRANGLETHORN },
					}),
					q(73181, {	-- Zeroing Debt
						["provider"] = { "n", 200478 },	-- Senegos
						["sourceQuests"] = { 72534 },	-- Settled With the Baron
						["coord"] = { 42.0, 77.6, THE_CAPE_OF_STRANGLETHORN },
					}),
				}),
				header(HEADERS.Quest, 73091, {	-- Crystalsong Forest
					q(73091, {	-- Crystalsong Forest
						["provider"] = { "n", 200478 },	-- Senegos
						["sourceQuests"] = {
							72940,	-- Where in the World is a Lost Blue Dragon?
							73399,	-- The Search for Blue Dragons
							73404,	-- Lost Blue Dragons
							73405,	-- A Pair of Blue Dragons
							73406,	-- The Last Missing Blue Dragon
						},
						["sourceQuestNumRequired"] = 0,	-- Source quest is never completed due to Blizzard design
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(73090, {	-- Regrets in Crystal
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 73091 },	-- Crystalsong Forest
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(72670, {	-- Those We Left Behind
						["provider"] = { "n", 199184 },	-- Lanigosa
						["sourceQuests"] = { 73090 },	-- Regrets in Crystal
						["coord"] = { 91.3, 57.2, CRYSTALSONG_FOREST },
					}),
					q(72674, {	-- A Shattered Legacy
						["provider"] = { "n", 199184 },	-- Lanigosa
						["sourceQuests"] = { 73090 },	-- Regrets in Crystal
						["coord"] = { 91.3, 57.2, CRYSTALSONG_FOREST },
						["groups"] = {
							i(202044),	-- Crystal Focus Fragment
						},
					}),
					q(72679, {	-- An Arcane Requiem
						["provider"] = { "n", 199184 },	-- Lanigosa
						["sourceQuests"] = {
							72674,	-- A Shattered Legacy
							72670,	-- Those We Left Behind
						},
						["coord"] = { 91.3, 57.2, CRYSTALSONG_FOREST },
					}),
					q(74783, {	-- The Sounds of Silence
						["provider"] = { "n", 199184 },	-- Lanigosa
						["sourceQuests"] = { 72679 },	-- An Arcane Requiem
						["coord"] = { 91.3, 57.2, CRYSTALSONG_FOREST },
					}),
				}),
				header(HEADERS.Quest, 73227, {	-- Jade Forest
					q(73227, {	-- Jade Forest
						["provider"] = { "n", 199991 },	-- Dragon Locator
						["sourceQuests"] = {
							72940,	-- Where in the World is a Lost Blue Dragon?
							73399,	-- The Search for Blue Dragons
							73404,	-- Lost Blue Dragons
							73405,	-- A Pair of Blue Dragons
							73406,	-- The Last Missing Blue Dragon
						},
						["sourceQuestNumRequired"] = 0,	-- Source quest is never completed due to Blizzard design
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(72650, {	-- Warm Winds and Water
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 73227 },	-- Jade Forest
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(72651, {	-- Carp Care
						["provider"] = { "n", 199361 },	-- Kirygosa
						["sourceQuests"] = { 72650 },	-- Warm Winds and Water
						["coord"] = { 46.5, 44.5, THE_JADE_FOREST },
						["groups"] = {
							i(203182),	-- Fish Food
						},
					}),
					q(72653, {	-- Local Deliveries
						["provider"] = { "n", 199361 },	-- Kirygosa
						["sourceQuests"] = { 72650 },	-- Warm Winds and Water
						["coord"] = { 46.5, 44.5, THE_JADE_FOREST },
						["groups"] = {
							i(203228),	-- Wild Blue Yonders
						},
					}),
					q(72654, {	-- Up, Up, and Home
						["provider"] = { "n", 199361 },	-- Kirygosa
						["sourceQuests"] = {
							72651,	-- Carp Care
							72653,	-- Local Deliveries
						},
						["coord"] = { 46.5, 44.5, THE_JADE_FOREST },
					}),
					q(72652, {	-- Self Care
						["provider"] = { "n", 201019 },	-- Kalecgos
						["sourceQuests"] = { 72654 },	-- Up, Up, and Home
						["coord"] = { 49.2, 42.5, THE_JADE_FOREST },
					}),
					q(72655, {	-- A Drink With Kalecgos
						["provider"] = { "n", 201019 },	-- Kalecgos
						["sourceQuests"] = { 72652 },	-- Self Care
						["coord"] = { 49.2, 42.5, THE_JADE_FOREST },
					}),
					q(74291, {	-- Blue is My Favorite Color
						["provider"] = { "n", 201019 },	-- Kalecgos
						["sourceQuests"] = { 72655 },	-- A Drink With Kalecgos
						["coord"] = { 45.9, 43.6, THE_JADE_FOREST },
					}),
				}),
				header(HEADERS.Quest, 72939, {	-- Theramore
					q(72939, {	-- Theramore
						["provider"] = { "n", 199991 },	-- Dragon Locator
						["sourceQuests"] = {
							72940,	-- Where in the World is a Lost Blue Dragon?
							73399,	-- The Search for Blue Dragons
							73404,	-- Lost Blue Dragons
							73405,	-- A Pair of Blue Dragons
							73406,	-- The Last Missing Blue Dragon
						},
						["sourceQuestNumRequired"] = 0,	-- Source quest is never completed due to Blizzard design
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(73188, {	-- The Sullied Banner
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 72939 },	-- Theramore
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(72832, {	-- Aftershocks
						["provider"] = { "n", 199736 },	-- Surigosa
						["sourceQuests"] = { 73188 },	-- The Sullied Banner
						["coord"] = { 62.9, 49.7, DUSTWALLOW_MARSH },
					}),
					q(72831, {	-- Creative Solutions
						["provider"] = { "n", 199737 },	-- Kalecgos
						["sourceQuests"] = { 73188 },	-- The Sullied Banner
						["coord"] = { 62.8, 49.7, DUSTWALLOW_MARSH },
					}),
					q(72833, {	-- Breaking the Cycle
						["provider"] = { "n", 199736 },	-- Surigosa
						["sourceQuests"] = {
							72832,	-- Aftershocks
							72831,	-- Creative Solutions
						},
						["coord"] = { 67.0, 54.6, DUSTWALLOW_MARSH },
					}),
					q(74335, {	-- A Moment of Reflection
						["provider"] = { "n", 199736 },	-- Surigosa
						["sourceQuests"] = { 72833 },	-- Breaking the Cycle
						["coord"] = { 67.0, 54.6, DUSTWALLOW_MARSH },
					}),
				}),
				header(HEADERS.Quest, 72656, {	-- Winterspring
					q(72656, {	-- Winterspring
						["provider"] = { "n", 199991 },	-- Dragon Locator
						["sourceQuests"] = {
							72940,	-- Where in the World is a Lost Blue Dragon?
							73399,	-- The Search for Blue Dragons
							73404,	-- Lost Blue Dragons
							73405,	-- A Pair of Blue Dragons
							73406,	-- The Last Missing Blue Dragon
						},
						["sourceQuestNumRequired"] = 0,	-- Source quest is never completed due to Blizzard design
						["coord"] = { 39.5, 63.0, THE_AZURE_SPAN },
					}),
					q(72657, {	-- A Protector of Magic
						["provider"] = { "n", 186188 },	-- Sindragosa
						["sourceQuests"] = { 72656 },	-- Winterspring
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(74354, {	-- Artifacts Abound
						["provider"] = { "n", 199370 },	-- Haleh
						["sourceQuests"] = { 72657 },	-- A Protector of Magic
						["coord"] = { 48.1, 59.1, WINTERSPRING },
						["groups"] = {
							i(203459),	-- Totemic Ruins
						},
					}),
					q(72659, {	-- Test Subject
						["provider"] = { "n", 199370 },	-- Haleh
						["sourceQuests"] = { 74354 },	-- Artifacts Abound
						["coord"] = { 48.1, 59.1, WINTERSPRING },
					}),
					q(72660, {	-- Owl of a Sudden
						["provider"] = { "n", 199370 },	-- Haleh
						["sourceQuests"] = { 72659 },	-- Test Subject
						["coord"] = { 48.1, 59.1, WINTERSPRING },
					}),
					q(72661, {	-- A Wyrm Rest
						["provider"] = { "n", 199404 },	-- Sindragosa
						["sourceQuests"] = { 72660 },	-- Owl of a Sudden
						["coord"] = { 47.5, 60.2, WINTERSPRING },
					}),
					q(74356, {	-- Back with the Blues
						["provider"] = { "n", 199404 },	-- Sindragosa
						["sourceQuests"] = { 72661 },	-- A Wyrm Rest
						["coord"] = { 32.3, 49.1, WINTERSPRING },
					}),
				}),
				header(HEADERS.Quest, 75244, {	-- Reunited Again
					q(75244, {	-- Reunited Again
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = {
							74335,	-- A Moment of Reflection [Theramore]
							74356,	-- Back with the Blues [Winterspring]
							74291,	-- Blue is My Favorite Color [The Jade Forest]
							74783,	-- The Sounds of Silence [Crystalsong Forest]
							73181,	-- Zeroing Debt [Booty Bay]
						},
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(72942, {	-- Veiled Trouble
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 75244 },	-- Reunited Again
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(72946, {	-- Veiled Ossuary Chaos
						["provider"] = { "n", 200019 },	-- Azuregos
						["sourceQuests"] = { 72942 },	-- Veiled Trouble
						["coord"] = { 66.2, 12.3, THALDRASZUS },
					}),
					q(72947, {	-- Memories of Old
						["provider"] = { "n", 200019 },	-- Azuregos
						["sourceQuests"] = { 72942 },	-- Veiled Trouble
						["coord"] = { 66.2, 12.3, THALDRASZUS },
					}),
					q(72948, {	-- What Still Remains
						["provider"] = { "n", 200019 },	-- Azuregos
						["sourceQuests"] = {
							72947,	-- Memories of Old
							72946,	-- Veiled Ossuary Chaos
						},
						["coord"] = { 66.2, 12.3, THALDRASZUS },
						["groups"] = {
							i(203184),	-- Malygos's Lingering Essence
							i(203183),	-- Sindragosa's Lingering Essence
						},
					}),
					q(72949, {	-- Swiftly to the Archives
						["provider"] = { "n", 201061 },	-- Azuregos
						["sourceQuests"] = { 72948 },	-- What Still Remains
						["coord"] = { 67.1, 11.8, THALDRASZUS },
					}),
					q(72950, {	-- The Last Conflict
						["provider"] = { "n", 186188 },	-- Sindragosa
						["sourceQuests"] = { 72949 },	-- Swiftly to the Archives
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
						["maps"] = { 2183 },	-- The Azure Vault
						["groups"] = {
							i(197134),	-- Highland Drake: Spiked Legs (MM!)
						},
					}),
					q(72951, {	-- A Peaceful Farewell
						["provider"] = { "n", 201125 },	-- Senegos
						["sourceQuests"] = { 72950 },	-- The Last Conflict
						["coord"] = { 39.3, 63.6, THE_AZURE_SPAN },
						["groups"] = {
							ach(17773, {	-- A Blue Dawn
								["timeline"] = { ADDED_10_1_7 },
							}),
							iensemble(205958),	-- Ensemble: Azure Renewal Finery
							i(205908, {	-- Inherited Wisdom of Senegos (TOY!)
								["description"] = "You will find this in your mailbox upon completing this quest",
							}),
							i(205959),	-- Letter from Kirygosa
							i(205970),	-- Azure Flightstone
						},
					}),
				}),
				header(HEADERS.Quest, 73196, sharedData({ ["classes"] = { DRUID, EVOKER, MAGE, PRIEST, SHAMAN, WARLOCK }, }, {	-- Tarecgosa's Rest
					q(73196, {	-- Tarecgosa's Rest
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = {
							72951,	-- A Peaceful Farewell
							29309,	-- The Stuff of Legends [H]
							29312,	-- The Stuff of Legends [A]
						},
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					}),
					q(73197, {	-- Love Unending
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 73196 },	-- Tarecgosa's Rest
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
						["groups"] = {
							i(202703),	-- Ephemeral Sand
						},
					}),
					q(73198, {	-- Forget Her Not
						["provider"] = { "n", 190000 },	-- Kalecgos
						["sourceQuests"] = { 73196 },	-- Tarecgosa's Rest
						["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
						["groups"] = {
							i(203913),	-- Blossoming Manaheart
							i(203855),	-- Fragile Manaheart
						},
					}),
					q(73199, {	-- Rhapsody in Blue
						["provider"] = { "n", 200979 },	-- Kalecgos
						["sourceQuests"] = {
							73198,	-- Forget Her Not
							73197,	-- Love Unending
						},
						["coord"] = { 65.7, 12.6, THALDRASZUS },
						["groups"] = {
							i(206162),	-- Tarecgosa's Visage (MOUNT!)
						},
					}),
				})),
			})),
			header(HEADERS.Quest, 76592, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- A Single Wing
				["icon"] = 4616673,
				["g"] = {
					q(76592, {	-- A Single Wing
						["provider"] = { "n", 207790 },	-- Scalecommander Emberthal
						["coord"] = { 23.0, 37.2, VALDRAKKEN },
					}),
					q(77098, {	-- Getting to Ground
						["sourceQuests"] = { 76592 },	-- A Single Wing
						["provider"] = { "n", 208236 },	-- Amythora
						["coord"] = { 74.0, 54.8, THE_AZURE_SPAN },
					}),
					q(76594, {	-- Dracthyr Down
						["sourceQuests"] = { 77098 },	-- Getting to Ground
						["provider"] = { "n", 207819 },	-- Amythora
						["coord"] = { 74.8, 55.1, THE_AZURE_SPAN },
						["g"] = {
							i(208004),	-- Wingfoil (QI!)
						},
					}),
					q(77163, {	-- Seeing Reason
						["sourceQuests"] = { 77098 },	-- Getting to Ground
						["provider"] = { "n", 207820 },	-- Scalecommander Emberthal
						["coord"] = { 74.8, 55.0, THE_AZURE_SPAN },
					}),
					q(76593, {	-- The Best Intentions
						["sourceQuests"] = { 77098 },	-- Getting to Ground
						["provider"] = { "n", 207819 },	-- Amythora
						["coord"] = { 74.8, 55.1, THE_AZURE_SPAN },
						["g"] = {
							i(208014),	-- Sundered Shackles Key (QI!)
						},
					}),
					q(76595, {	-- Urgent Exfiltration
						["sourceQuests"] = {
							76594,	-- Dracthyr Down
							77163,	-- Seeing Reason
							76593,	-- The Best Intentions
						},
						["provider"] = { "n", 207820 },	-- Scalecommander Emberthal
						["coord"] = { 74.8, 55.0, THE_AZURE_SPAN },
					}),
					q(76597, {	-- On New Wings
						["sourceQuests"] = { 76595 },	-- Urgent Exfiltration
						["provider"] = { "n", 207820 },	-- Scalecommander Emberthal
						["coord"] = { 74.8, 55.0, THE_AZURE_SPAN },
					}),
				},
			})),
			header(HEADERS.Item, 198474, {	-- Artist's Easel
				q(70166, {	-- The Joy of Painting
					["sourceQuests"] = { 66026 },	-- Urgent Action Required
					["provider"] = { "n", 194415 },	-- Rauvros
					["coord"] = { 22.1, 36.8, THE_AZURE_SPAN },
					["isBreadcrumb"] = true,	-- Probably?
					["g"] = {
						i(198476),	-- Painting of Introduction
					},
				}),
				q(70168, {	-- Sad Little Accidents
					["sourceQuests"] = { 70166 },	-- The Joy of Painting
					["provider"] = { "n", 194425 },	-- Ranpiata
					["coord"] = { 7.9, 53.5, THE_AZURE_SPAN },
					["g"] = {
						i(198484),	-- Brackenhide's Decay (QI!)
						i(198480),	-- The Resplendent Pools (QI!)
						i(198482),	-- The Spiral of the Kurgans (QI!)
					},
				}),
				q(70169, {	-- Even Trees Need Friends
					["sourceQuests"] = { 70168 },	-- Sad Little Accidents
					["provider"] = { "n", 194323 },	-- Hudson
					["coord"] = { 7.8, 53.4, THE_AZURE_SPAN },
				}),
				q(70170, {	-- Beat the Demons Out of It
					["sourceQuests"] = { 70169 },	-- Even Trees Need Friends
					["provider"] = { "n", 194425 },	-- Ranpiata
					["coord"] = { 7.8, 53.4, THE_AZURE_SPAN },
					["groups"] = {
						i(198512),	-- The Great Halls (QI!)
						i(198513),	-- The Academy (QI!)
						i(198514),	-- The Sealed Vault (QI!)
						i(198515),	-- The Fire Labs (QI!)
					},
				}),
				q(70171, {	-- Happy Little Accidents
					["sourceQuests"] = { 70170 },	-- Beat the Demons Out of It
					["provider"] = { "n", 194425 },	-- Ranpiata
					["coord"] = { 7.9, 53.3, THE_AZURE_SPAN },
					["g"] = {
						i(198474),	-- Artist's Easel (TOY!)
						i(198516),	-- Hudson's Final Drawing (QI!)
					},
				}),
			}),
			header(HEADERS.Achievement, 16323, {	-- Fragments of History
				q(70806, {	-- Chunk of Sculpture
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199895 },	-- Chunk of Sculpture
					["coord"] = { 66.1, 60.1, THE_AZURE_SPAN },
				}),
				q(70791, {	-- Coldwashed Dragonclaw
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199843 },	-- Coldwashed Dragonclaw
					["coord"] = { 47.8, 38.9, THE_AZURE_SPAN },
				}),
				q(70790, {	-- Stone Dragontooth
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199842 },	-- Stone Dragontooth
					["coord"] = { 69.2, 47.6, THE_AZURE_SPAN },
				}),
				q(70788, {	-- Wrapped Gold Band
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199840 },	-- Wrapped Gold Band
					["coord"] = { 47.3, 24.6, THE_AZURE_SPAN },
				}),
			}),
			header(HEADERS.Item, 200205, {	-- Tome of Polymorph: Duck
				q(71002, {	-- Best Spell Ever
					["description"] = "Use Blink ability to enter the cave.",
					["provider"] = { "o", 381663 },	-- Manastorming For Beginners
					["coord"] = { 66.4, 33.3, THE_AZURE_SPAN },
					["classes"] = { MAGE },
					["g"] = {
						i(200205),	-- Tome of Polymorph: Duck (CI!)
					},
				}),
			}),
			cl(EVOKER, {
				q(70748, {	-- For Blue Eyes Only
					["sourceQuests"] = { 71182 },	-- Wayward Archivists
					["provider"] = { "n", 197378 },	-- Sindragosa
					["coord"] = { 42.4, 63.8, THE_AZURE_SPAN },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				}),
				q(71182, {	-- Wayward Archivists
					["sourceQuests"] = { 65854 },	-- Reclaiming the Oathstone
					["provider"] = { "n", 186188 },	-- Sindragosa
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				}),
			}),
			------ Hemet Nesingwary ------
			-- TODO: perhaps verify these further...? either has no quest pre-req, or requires DF_ACCOUNT_CAMPAIGN_QUEST | 65686
			q(66972, {	-- Old Stonetusk
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 45.0, 40.1, THE_AZURE_SPAN },
				["g"] = {
					i(194432),	-- Old Stonetusk's Tusk (QI!)
				},
			}),
			q(66958, {	-- Protect And Herd
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 18.8, 49.2, THE_AZURE_SPAN },
				["g"] = {
					i(194433),	-- Bloodhorn's Horn (QI!)
				},
			}),
			q(66968, {	-- Pruning The Pack
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 65.5, 25.9, THE_AZURE_SPAN },
				["g"] = {
					i(194440),	-- Yetor's Head (QI!)
				},
			}),
			q(66957, {	-- A Shadow In The Ice
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 46.7, 38.7, THE_AZURE_SPAN },
				["g"] = {
					i(194439),	-- Frostfist's Eye (QI!)
				},
			}),
			q(66939, {	-- Hunting the Huntmaster
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 62.7, 60.1, THE_AZURE_SPAN },
				["g"] = {
					i(194430),	-- Krakle's Trigger Paw (QI!)
				},
			}),
			q(66971, {	-- The Face of Death
				["description"] = "Hemet Nesingwary does a circle around the whole zone and stops at the quest places one by one.",
				-- ["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 191205 },	-- Hemet Nesingwary
				["coord"] = { 63.5, 15.6, THE_AZURE_SPAN },
				["g"] = {
					i(194444),	-- Frostjaw's Jaw (QI!)
				},
			}),
			------ Captain Haab ------
			q(72083, {	-- Me Lucky Lure
				["provider"] = { "n", 197979 },	-- Captain Haab
				["coord"] = { 81.1, 57.3, THE_AZURE_SPAN },
			}),
			q(72071, {	-- Round Two, Fish!
				["sourceQuests"] = { 72083 },	-- Me Lucky Lure
				["provider"] = { "n", 197979 },	-- Captain Haab
				["coord"] = { 81.1, 57.3, THE_AZURE_SPAN },
				["g"] = {
					i(202200),	-- Solemn Seashell String
				},
			}),
			------ Miscellaneous ------
			q(67174, {	-- Arcane Detection
				["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 192750 },	-- Miva Star-Eye
				["coord"] = { 41.2, 35.9, THE_AZURE_SPAN },
				["g"] = {
					i(194899),	-- Dispelling Wand (QI!)
				},
			}),
			q(71139, {	-- Glowing Arcane Jewel
				["provider"] = { "i", 200528 },	-- Glowing Arcane Jewel
				["coord"] = { 75.8, 24.2, THE_AZURE_SPAN },
				["description"] = "Requires 2 players (or solo if you time it perfectly). Kill the Lost Elemental, then each player needs to click on a different Lava Orb to open a nearby cave. Kill the Stranded Soul inside the cave and loot the quest item.",
				["g"] = {
					i(197141),	-- Highland Drake: Scaled Pattern (MM!)
					i(197137),	-- Highland Drake: Spined Nose (MM!)
				},
			}),
			q(67175, {	-- How To Stop An Exploding Toy Boat
				["sourceQuests"] = { 67174 },	-- Arcane Detection
				["provider"] = { "n", 192750 },	-- Miva Star-Eye
				["coord"] = { 41.2, 35.9, THE_AZURE_SPAN },
				["g"] = {
					i(194900),	-- Miva's Dispelling Wand (QI!)
				},
			}),
			q(66227, {	-- Some Good Fishing
				["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 185608 },	-- Khuri
				["coord"] = { 41.5, 35.6, THE_AZURE_SPAN },
				--["requireSkill"] = FISHING,	-- TODO: It doesn't require to pickup this quest but you cannot finish it without it
				["g"] = {
					i(191646),	-- Blue-Tailed Minnow (QI!)
				},
			}),
			q(67177, {	-- WANTED: Gorger
				["sourceQuests"] = { 65686 },	-- To the Azure Span
				["provider"] = { "n", 192760 },	-- Shala
				["coord"] = { 41.4, 36.4, THE_AZURE_SPAN },
				["g"] = {
					i(194901),	-- Curved Horns (QI!)
				},
			}),
			q(66622, {	-- Wayward Tools
				["sourceQuests"] = { 70627 },	-- What of the Winterpelt Clan?
				["provider"] = { "n", 186755 },	-- Tyrnokos Sunstrike
				["coord"] = { 65.6, 16.2, THE_AZURE_SPAN },
			}),
			n(BONUS_OBJECTIVES, {
				q(72358, {	-- Cascade
					["provider"] = { "n", 186962 },	-- Cascade
					["coord"] = { 23.7, 33.7, THE_AZURE_SPAN },
				}),
				q(72254, {	-- Fisherman Tinnak's Ghost
					["provider"] = { "n", 193691 },	-- Fisherman Tinnak <Angered Ghost>
					["coord"] = { 49.5, 36.1, THE_AZURE_SPAN },
				}),
				q(69864, {	-- Forgotten Creation
					["provider"] = { "n", 193214 },	-- Forgotten Creation
					["coord"] = { 38.2, 59.0, THE_AZURE_SPAN },
				}),
				q(66718, {	-- Gnolls Must Die
					["sourceQuests"] = { 66709 },	-- Field Medic 101
					["coord"] = { 58.1, 42.3, THE_AZURE_SPAN },
				}),
				q(65841, {	-- Stop the Spread
					["sourceQuests"] = {
						66026,	-- Urgent Action Required
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 19.1, 36.2, THE_AZURE_SPAN },
					["lockCriteria"] = { 1, "lvl", LEVEL_DF_CURRENT_MAX },	-- not available at max DF lvl
				}),
				q(69895, {	-- Summoned Destroyer
					["provider"] = { "n", 193288 },	-- Summoned Destroyer
					["coord"] = { 70.1, 33.2, THE_AZURE_SPAN },
				}),
				q(67173, {	-- Thieving Gnolls
					["providers"] = {
						{"n", 192747 },	-- Larivi (vignette)
						{"n", 192749 },	-- Sharpfang
					},
					["coord"] = { 36.8, 32.5, THE_AZURE_SPAN },
				}),
				q(69872, {	-- Vakril, the Strongest Tuskarr
					["provider"] = { "n", 193223 },	-- Vakril
					["coord"] = { 17.0, 41.3, THE_AZURE_SPAN },
				}),
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THE_AZURE_SPAN, {
			n(QUESTS, {
				q(66046),	-- Pop after killing/completing bonus objective (Cascade) ... or skinning knowledge proc possibly
				q(72779),	-- After completion of [70938]
				q(72516),	-- After completion of (72487)
				-- During The Weave of a Tale (66213)
				-- First Question
				q(66563, { ["name"] = "The Weave of a Tale: Rarest Fish",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66562, 66561 },	-- Slaying / Handstand
				}),
				q(66562, { ["name"] = "The Weave of a Tale: Slaying",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66563, 66561 },	-- Rarest Fish / Handstand
				}),	-- "Slaying"
				q(66561, { ["name"] = "The Weave of a Tale: Handstand",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66563, 66562 },	-- Rarest Fish / Slaying
				}),	-- "Handstand"
				-- Second Question
				q(66566, { ["name"] = "The Weave of a Tale: Average",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66565, 66564 },	-- Biggest / Half Squid
				}),	-- "Average"
				q(66565, { ["name"] = "The Weave of a Tale: Biggest",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66566, 66564 },	-- Average / Half Squid
				}),	-- "Biggest"
				q(66564, { ["name"] = "The Weave of a Tale: Half Squid",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66566, 66565 },	-- Average / Biggest
				}),	-- "Half Squid"
				-- Third Question
				q(66569, { ["name"] = "The Weave of a Tale: Slipped",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66568, 66567 },	-- Sword / Whisper
				}),	-- "Slipped"
				q(66568, { ["name"] = "The Weave of a Tale: Sword",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66569, 66567 },	-- Slipped / Whisper
				}),	-- "Sword"
				q(66567, { ["name"] = "The Weave of a Tale: Whisper",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66569, 66568 },	-- Slipped / Sword
				}),	-- Whisper"
				-- Fourth Question
				q(66571, { ["name"] = "The Weave of a Tale: Ate",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66570 },	-- Threw
				}),	-- "Ate"
				q(66570, { ["name"] = "The Weave of a Tale: Threw",
					["sourceQuest"] = 66213,	-- The Weave of a Tale
					["altQuests"] = { 66571 },	-- Ate
				}),	-- "Threw"
				-- During The Heart of the Deck (66846)
				-- First Question
				q(66992, { ["name"] = "The Heart of the Deck: Draconic Form",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66993 },	-- My Form
				}),
				q(66993, { ["name"] = "The Heart of the Deck: My Form",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66992 },	-- Draconic Form
				}),
				-- Second Question
				q(66984, { ["name"] = "The Heart of the Deck: Destroyer",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66985, 66983 },	-- Guardian / Life-Giver
				}),
				q(66985, { ["name"] = "The Heart of the Deck: Guardian",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66984, 66983 },	-- Destroyer / Life-Giver
				}),
				q(66983, { ["name"] = "The Heart of the Deck: Life-Giver",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66985, 66984 },	-- Guardian / Destroyer
				}),
				-- Third Question
				q(66994, { ["name"] = "The Heart of the Deck: Motivation",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66995, 66996 },	-- Adaptation / Reaction
				}),
				q(66995, { ["name"] = "The Heart of the Deck: Adaptation",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66994, 66996 },	-- Motivation / Reaction
				}),
				q(66996, { ["name"] = "The Heart of the Deck: Reaction",
					["sourceQuest"] = 66846,	-- The Heart of the Deck
					["altQuests"] = { 66995, 66994 },	-- Adaptation / Motivation
				}),
				--
				q(73096, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Booty Bay is chosen
				q(73097, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Booty Bay is chosen (spell ID 398606)
				q(73098, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Crystalsong Forest is chosen (spellID 398610)
				q(73400, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Crystalsong Forest is chosen
				q(73228, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when The Jade Forst is chosen (spellID 399077)
				q(73401, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when The Jade Forst is chosen
				q(73402, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Theramore is chosen
				q(74785, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Theramore is chosen (spellID 403046)
				q(73403, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Winterspring is chosen
				q(74353, {["timeline"] = {ADDED_10_1_0}}),	-- triggers when Winterspring is chosen (spellID 400338)
			}),
		}),
	}),
})));