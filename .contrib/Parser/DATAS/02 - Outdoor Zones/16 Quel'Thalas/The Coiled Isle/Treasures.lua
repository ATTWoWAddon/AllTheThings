---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(TREASURES, {
			header(HEADERS.Achievement, 63359, {	-- Treasures of the Coiled Isle
				header(HEADERS.Object, 619906, {	-- Abandoned Amani Privateer's Cache
					["description"] = "1. Fish out a 'Grisly Morsel' from 'Grisly Cod Pool'.\n2. Feed the 'Hungry Dolphin' to gain it as your companion.\n3. Dive down and swim around the bay area until the Dolphin helps you find both pieces of the key. DO NOT RESURFACE!\n4. Combine both halves of the key.\n5. Loot the treasure.",
					["coord"] = { 72.5, 67.0, MAP.MIDNIGHT.THE_COILED_ISLE },	-- General area where everything related to the treasure happens
					["cr"] = 258255,	-- Helpful Dolphin
					["groups"] = {
						o(619768, {	-- Grisly Cod Pool
							["coord"] = { 73.4, 66.1, MAP.MIDNIGHT.THE_COILED_ISLE },
							["groups"] = { i(265525) },	-- Grisly Morsel
						}),
						n(258076, {	-- Hungry Dolphin
							["coord"] = { 72.5, 67.0, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 265525, 1 } },	-- 1x Grisly Morsel
							["groups"] = {
								n(258255),	-- Helpful Dolphin
							},
						}),
						o(619921, {	-- Waterlogged Crate
							["coord"] = { 73.1, 67.0, MAP.MIDNIGHT.THE_COILED_ISLE },
							["provider"] = { "n", 258255 },	-- Helpful Dolphin
							["groups"] = { i(265610) },	-- Privateer's Loop Half of Key
						}),
						o(619908, {	-- Broken Urn
							["coord"] = { 72.4, 68.4, MAP.MIDNIGHT.THE_COILED_ISLE },
							["provider"] = { "n", 258255 },	-- Helpful Dolphin
							["groups"] = { i(265603) },	-- Privateer's Teeth Half of Key
						}),
						i(265602, {	-- Amani Privateer's Key
							["cost"] = {
								{ "i", 265610, 1 },	-- 1x Privateer's Loop Half of Key
								{ "i", 265603, 1 },	-- 1x Privateer's Teeth Half of Key
							},
						}),
						o(619906, {	-- Abandoned Amani Privateer's Cache
							["coord"] = { 71.9, 66.7, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 265602, 1 } },	-- 1x Amani Privateer's Key
							["questID"] = 94569,
							["groups"] = {
								i(279054),	-- Idol of Blue Water and Blue Sky (TOY!)
								i(279055),	-- Privateer's Dolphin Idol
							},
						}),
					},
				}),
				header(HEADERS.Object, 649085, {	-- Brine-Crusted Chest
					["description"] = "1. Find a 'Bubbling Clam' under water to the south of the Cave and obtain a 'Luminescent Pearl'.\n2. Go to the cave and present the Pearl to 'Nacretta'. It will give you the Key in exchange.\n3. Loot the 'Dropped Key' and open the treasure.",
					["coord"] = { 70.2, 77.0, MAP.MIDNIGHT.THE_COILED_ISLE },	-- Cave Entrance
					["cr"] = 263347,	-- Nacretta <the Pearl Hoarder>
					["groups"] = {	-- Progress order
						o(648981, {	-- Bubbling Clam
							["coords"] = {
								{ 67.3, 79.2, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 68.0, 80.3, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 69.6, 82.5, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 71.0, 81.7, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 71.3, 83.3, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 71.9, 82.9, MAP.MIDNIGHT.THE_COILED_ISLE },
							},
							["groups"] = { i(271815) },	-- Luminescent Pearl
						}),
						hqt(96001, {	-- Triggered after Nacretta spots the Luminescent Pearl
							["name"] = "Nacretta has taken the Luminescent Pearl",
							["cost"] = { { "i", 271815, 1 } },	-- 1x Luminescent Pearl
						}),
						hqt(96002, {	-- Triggered after the Dropped Key spawns
							["name"] = "Nacretta has Dropped the Key",
							["sourceQuest"] = 96001,	-- Nacretta has taken the Luminescent Pearl
						}),
						o(649082, {	-- Dropped Key
							["sourceQuest"] = 96002,	-- Nacretta has Dropped the Key
							["coord"] = { 70.6, 77.1, MAP.MIDNIGHT.THE_COILED_ISLE },
							["groups"] = { i(271881) },	-- Dropped Key
						}),
						o(649085, {	-- Brine-Crusted Chest (Ancient Amani Chest)
							["coord"] = { 70.6, 76.6, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 271881, 1 } },	-- 1x Dropped Key
							["questID"] = 95995,
							["groups"] = {
								i(274921),	-- Pearl of Jubilation (TOY!)
								i(276144),	-- Pearl of Jubilation
							},
						}),
					},
				}),
				o(642316, {	-- Cracked Skull
					["coord"] = { 58.1, 43.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95594,
					["groups"] = { i(278031) },	-- Cracked Amani Skull
				}),
				o(641984, {	-- Crumbling Urn (Broken Amani Urn)
					["coord"] = { 73.5, 56.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95558,
					["groups"] = {
						i(269861, {	-- A Tattered Amani Scroll
							["lore"] = "Translated from Zandali language:\n'May the loas of the land protect us and bless us. May the spirits of our ancestors have mercy on our house and guide our hand in fortune.'",
						}),
						i(281582),	-- Atal'Utek Ivy (DECOR!)
						i(269868),	-- Miniature Hand-Crafted Mask
					},
				}),
				o(642322, {	-- Damaged Loa Trinket
					["coord"] = { 46.9, 29.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95596,
					["groups"] = { i(278032) },	-- Damaged Loa Trinket
				}),
				o(645410, {	-- Fangbound Sack
					["coord"] = { 45.9, 66.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95938,
					["groups"] = { i(281571) },	-- Focus of Fangs (COSMETIC!)
				}),
				o(642307, {	-- Forgotten Mask
					["coord"] = { 64.9, 78.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95591,
					["groups"] = { i(278003) },	-- Forgotten Mask
				}),
				header(HEADERS.Object, 645549, {	-- Grave of Someone Forgotten
					["description"] = "***Enable Debug Mode to see all the steps***\n1. Talk to Forgotten Soldier and read the text on the Nameless Grave.\n2. Find Zuzan sitting across The Ring of Glory Vendors\n3. Find Zan'ja croaching atop one of the Defiant Ring pillars. Talk to him.\n4. Find Ru'ko meditating atop one of the Arches of The Ring of Glory. Talk to her.\n5. Go back to the Nameless Grave.",
					["providers"] = {
						{ "n", 263244 },	-- Forgotten Soldier
						{ "o", 645553 },	-- Nameless Grave
					},
					["coord"] = { 67.3, 48.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						n(263241, {	-- Zuzan
							["coord"] = { 69.0, 52.7, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						n(263242, {	-- Zan'ja
							["coord"] = { 70.4, 58.4, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						n(263243, {	-- Ru'ko
							["coord"] = { 66.4, 57.2, MAP.MIDNIGHT.THE_COILED_ISLE },
						}),
						o(645549, {	-- Grave of Someone Forgotten
							["coord"] = { 67.3, 48.5, MAP.MIDNIGHT.THE_COILED_ISLE },
							["questID"] = 95956,
							["groups"] = {
								i(279021),	-- Forgotten Memento (TOY!)
								i(279049),	-- Forgotten Memento
							},
						}),
					},
				}),
				o(642071, {	-- Jaktu's Cursed Blade
					["coord"] = { 60.4, 59.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95566,
					["groups"] = {
						i(277954),	-- Jaktu's Cursed Blade (TOY!)
						i(277961),	-- Jaktu's Cursed Blade
					},
				}),
				header(HEADERS.NPC, 261867, {	-- Lost Spirit
					["lore"] = "Translated from Zandali language:\n'Can you help me? I have lost something. A family heirloom. It must be somewhere nearby. Please bring it to me if you find it.'",
					["description"] = "You can find a 'Forgotten Trinket' on the left side of the base of |cFFFFD700The Altar of Wrath|r.",
					["coord"] = { 68.1, 65.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["cr"] = 261867,	-- Lost Spirit
					["groups"] = {
						o(642210, {	-- Forgotten Trinket
							["coord"] = { 70.2, 64.5, MAP.MIDNIGHT.THE_COILED_ISLE },
							["groups"] = { i(269935) },	-- Forgotten Trinket
						}),
						hqt(95574, { -- Triggered when Forgotten Trinket is given to the Lost Spirit
							["name"] = "Lost Spirit freed.",
							["cost"] = { { "i", 269935, 1 } },	-- 1x Forgotten Trinket
						}),
						o(642205, {	-- Forgotten Treasure
							["questID"] = 95571,
							["groups"] = {
								i(244345),	-- Forgotten Amani Urn (DECOR!)
							},
						}),
					},
				}),
				o(629421, {	-- Malfunctioning Staff
					["coord"] = { 75.4, 68.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95164,
					["groups"] = { i(268504) },	-- Malfunctioning Staff (TOY!)
				}),
				o(644665, {	-- Ornate Bottle
					["coord"] = { 67.0, 28.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95836,
					["groups"] = { i(278035) },	-- Ornate Healing Potion
				}),
				o(656678, {	-- Possessed Vase
					["coord"] = { 31.4, 83.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96985,
					["groups"] = { i(279051) },	-- Possessed Vase
				}),
				o(645422, {	-- Profane Ritual Spoils (Ritual Chest)
					["coord"] = { 43.7, 67.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95941,
					["groups"] = {
						n(263202, {	-- Mysterious Trinket
							["description"] = "Activate First.",
						}),
						n(263187, {	-- Mysterious Trinket
							["description"] = "Activate Second.",
						}),
						n(263185, {	-- Mysterious Trinket
							["description"] = "Activate Third.",
						}),
						n(268062, {	-- Mysterious Trinket
							["description"] = "Activate Fourth.",
						}),
						--
						i(281567),	-- Profane Ritual Staff (COSMETIC!)
					},
				}),
				o(644813, {	-- Smoldering Incense
					["coord"] = { 29.5, 67.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95855,
					["groups"] = { i(281570) },	-- Amani Incense Stick (COSMETIC!)
				}),
				o(644681, {	-- Stinking Vessel (Intact Vase)
					["coord"] = { 53.1, 43.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95841,
					["groups"] = { i(281580) },	-- Pungent Atal'Utek Shroom (DECOR!)
				}),
				header(HEADERS.Object, 645208, {	-- Sunken Diver's Chest
					["description"] = "You need to kill |cFFFFD700Glittering Grouper Brinetail|r and obtain 3 |cFFFFFFFFDiver's Key Fragments|r. Combining them gives you a |cFFFFFFFFDiver's Key|r.",
					["groups"] = {
						i(271423, {	-- Diver's Key
							["cost"] = { { "i", 271424, 3 } },	-- 3x Diver's Key Fragment
						}),
						o(645208, {	-- Sunken Diver's Chest
							["coord"] = { 65.4, 5.6, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 271423, 1 } },	-- 1x Diver's Key
							["questID"] = 95907,
							["groups"] = {
								i(279052),	-- Ancient Amani Mask (TOY!)
								i(279053),	-- Ancient Amani Mask
							},
						}),
					},
				}),
				o(642021, {	-- Tarnished Amani Glaive
					["coord"] = { 55.2, 38.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95563,
					["groups"] = { i(275920) },	-- Tarnished Amani Glaive
				}),
				o(644654, {	-- Venomjade Necklace
					["coord"] = { 64.7, 36.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95835,
					["groups"] = {
						i(279011),	-- Venomjade Necklace
						i(271175),	-- Venomjade Necklace (DECOR!)
					},
				}),
				header(HEADERS.Object, 648564, {	-- Vul'zahn's Smuggled Treasure
					["description"] = "Steps must be followed in order to unlock gossip options.\n\n1. Talk to Vul'zahn and ask him if you can have the treasure.\n2. Talk to Witherbark Cook and ask him for the Bowl of Stew.\n3. Talk to Apothecary Dezi and ask him to give you a Potion.\n4. Talk to Witherbark Cook and ask him to give you a Bowl of Stew.\n5. Talk to Vul'zahn, give him the Stew. He will give you the key.\n6. Open the treasure.",
					["groups"] = {
						n(253837, {	-- Apothecary Dezi
							["coord"] = { 57.2, 48.5, MAP.MIDNIGHT.THE_COILED_ISLE },
							["groups"] = { i(271791) },	-- Potion of Headache Relief
						}),
						n(262204, {	-- Witherbark Cook
							["coord"] = { 58.0, 48.8, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 271791, 1 } },	-- 1x Potion of Headache Relief
							["groups"] = { i(271788) },	-- Snuffling Boar Stew
						}),
						n(263265, {	-- Vul'zahn
							["coord"] = { 58.2, 45.7, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 271788, 1 } },	-- 1x Snuffling Boar Stew
							["groups"] = { i(271792) },	-- Soldier's Smuggled Treasure Key
						}),
						o(648564, {	-- Vul'zahn's Smuggled Treasure
							["coord"] = { 58.2, 45.7, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cost"] = { { "i", 271792, 1 } },	-- 1x Soldier's Smuggled Treasure Key
							["questID"] = 95976,
							["groups"] = { i(281568) },	-- Vul'zahn's Smuggled Spear (COSMETIC!)
						}),
					},
				}),
				o(644791, {	-- Waterlogged Basket
					["coord"] = { 49.5, 32.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95854,
					["groups"] = { i(281569) },	-- Quiver of the Drowned Marksman (COSMETIC!)
				}),
				o(642786, {	-- Zul'Jan's Stash
					["coord"] = { 44.0, 26.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 95727,
					["groups"] = {
						i(281566),	-- Amani Warrior's Cleaver (COSMETIC!)
						i(270268),	-- Crumpled Note
					},
				}),
			}),
			header(HEADERS.Achievement, 63662, {	-- Student of Hissstory
				o(669308, {	-- Abandoned Tablet
					["coord"] = { 50.7, 68.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98302,
				}),
				o(653579, {	-- Amani Exile's Words
					["coord"] = { 57.3, 80.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96947,
				}),
				o(669317, {	-- Forum Rules
					["coord"] = { 25.0, 67.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98305,
				}),
				o(653515, {	-- Head Mason's Tablet
					["coord"] = { 42.4, 65.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96946,
				}),
				o(669312, {	-- Message in a Bottle
					["coord"] = { 31.6, 83.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98303,
				}),
				o(669316, {	-- Oily Black Stone
					["coord"] = { 45.8, 47.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98304,
				}),
				o(669320, {	-- Profaned Plaque
					["coord"] = { 32.6, 63.7, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98308,
				}),
				o(669318, {	-- Survival Journals
					["coord"] = { 34.1, 36.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98306,
				}),
				o(654586, {	-- Worn Tablet
					["coord"] = { 70.0, 66.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 96945,
				}),
				o(669314, {	-- Zandalari Logbook
					["coord"] = { 71.9, 44.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					["questID"] = 98307,
				}),
			}),
			o(654986, {	-- Decrepit Cache
				["coords"] = {
					-- On the Main Map of The Coiled Isle
					{ 27.3, 70.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 31.1, 84.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 44.6, 47.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 57.1, 65.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 60.0, 82.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 66.7, 31.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 67.0, 48.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 67.8, 40.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 69.3, 55.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					{ 72.0, 43.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					-- Scattered through Crypts and Tombs
					{ 53.8, 16.9, 2639 },	-- Crypt of the Denied
					{ 17.3, 59.6, 2640 },	-- Blistering Terrace
					{ 40.1, 53.6, 2641 },	-- Crypt of the Lost Warrior
					{ 51.5, 72.3, 2641 },	-- Crypt of the Lost Warrior
					{ 52.9, 18.9, 2641 },	-- Crypt of the Lost Warrior
					{ 75.7, 60.6, 2641 },	-- Crypt of the Lost Warrior
					{ 79.7, 70.9, 2641 },	-- Crypt of the Lost Warrior
					{ 38.1, 43.6, 2642 },	-- Tomb of the Lost Priest
					{ 61.0, 89.5, 2643 },	-- Crypt of the Lost Mason
					{ 62.6, 52.7, 2643 },	-- Crypt of the Lost Mason
					{ 32.2, 45.8, 2644 },	-- Crypt of the Disgraced
				},
				["cost"] = { { "i", 275048, 1 } },	-- 1x Decrepit Key
			}),
			-- Repeatables
			o(654991, {	-- Cracked Canopic Jar
				["description"] = "Spawns randomly around the temples.",
			}),
			o_repeated({	-- Ossified Relic
				["description"] = "Spawns randomly around the whole area once opted in to the Curse of the Isle or on a Prey.",
				["sourceQuests"] = { 96474 },	-- Prey: Something for Astalor
				["groups"] = {
					-- Drops
					i(274422),	-- Ossified Relic
					-- Objects
					o(653064),	-- Ossified Relic
					o(652482),	-- Ossified Relic
					o(673863),	-- Ossified Relic
				},
			}),
			o(656044, {	-- Singing Shell
				["description"] = "Spawns randomly around coastal regions.",
			}),
			o(656039, {	-- Venom-Clotted Bauble
				["description"] = "Spawns randomly around the poisoned areas.",
			}),
			o(656046, {	-- Unfortunate Scout's Satchel
				["minReputation"] = { FACTION_ZULJARRAS_FORCES, 9 },
				["coords"] = {
					{ 21.5, 64.3, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 26.3, 54.7, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 27.4, 59.9, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 33.4, 84.2, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 42.5, 24.6, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 44.7, 25.5, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 45.6, 50.0, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 46.0, 46.2, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 46.3, 61.8, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 49.2, 38.3, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 49.4, 69.3, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 50.0, 56.0, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 54.8, 42.1, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 57.8, 79.8, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 58.4, 83.6, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 62.6, 38.2, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 62.9, 82.4, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 64.1, 40.7, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 64.5, 48.5, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 64.8, 43.6, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 65.7, 75.8, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 66.0, 55.9, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 66.3, 29.4, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 66.3, 68.4, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 66.3, 68.5, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 66.9, 35.2, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 68.5, 81.9, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 69.7, 57.5, MAP.MIDNIGHT.THE_COILED_ISLE },
                    { 70.1, 77.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				},
				["description"] = "Spawns randomly edges and ledges around the area after reaching Renown 9.",
				["groups"] = {
					i(280178),	-- Poison Dart Frog (PET!)
				},
			}),
		}),
	}),
}));
