---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(PANDARIA, applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	-- TODO: lots of these are lacking lots of information! (crs/coords/etc.)
	n(ACHIEVEMENTS, {
		ach(6541, {		-- Loremaster of Pandaria
			["sym"] = {{ "meta_achievement",
				6301,	-- Rally the Valley
				6539,	-- One Steppe Forward, Two Steppes Back
				6540,	-- Dread Haste Makes Dread Waste
				6300,	-- Upjade Complete (A)
				6534,	-- Upjade Complete (H)
				6535,	-- Mighty Roamin' Krasaranger (A)
				6536,	-- Mighty Roamin' Krasaranger (H)
				6537,	-- Slum It in the Summit (A)
				6538,	-- Slum It in the Summit (H)
			}},
		}),
		ach(7284, {	-- Is Another Man's Treasure
			title(200),	-- the Relic Hunter
			ach(7283),	-- One Man's Trash...
			ach(7282),	-- Finders Keepers
			ach(7281),	-- Lost and Found
			o(213972, {		-- Blade of the Poisoned Mind
				["coord"] = { 28.9, 41.9, DREAD_WASTES },
				["questID"] = 31438,
				["g"] = {
					i(86527),	-- Blade of the Poisoned Mind
				},
			}),
			o(213967, {		-- Blade of the Prime
				["coords"] = {
					{ 66.3, 66.5, DREAD_WASTES },	-- Blade
					{ 66.7, 63.7, DREAD_WASTES },	-- Cave
				},
				["questID"] = 31433,
				["g"] = {
					i(86522),	-- Blade of the Prime
				},
			}),
			o(213970, {	-- Bloodsoaked Chitin Fragment
				["coord"] = { 26.0, 50.3, DREAD_WASTES },
				["questID"] = 31436,
				["g"] = {
					i(86525),	-- Blood Soaked Chiten Fragment
				},
			}),
			o(213969, {		-- Dissector's Staff of Mutation
				["coord"] = { 30.2, 90.8, DREAD_WASTES },
				["questID"] = 31435,
				["g"] = {
					i(86524),	-- Dissector's Staff of Mutation
				},
			}),
			o(213966, {	-- Lucid Amulet
				["coord"] = { 33.0, 30.1, DREAD_WASTES },
				["questID"] = 31431,
				["g"] = {
					i(86521),	-- Lucid Amulet of the Agile Mind
				},
			}),
			o(213964, {		-- Malik's Stalwart Spear
				["coord"] = { 48.8, 30.0, DREAD_WASTES },
				["questID"] = 31430,
				["g"] = {
					i(86520),	-- Malik's Stalwart Spear
				},
			}),
			i(86529, {	-- Manipulator's Talisman
				["provider"] = { "n", 65552 },	-- Glinting Rapana Whelk
				["questID"] = 31432,
			}),
			o(213968, {		-- Swarming Cleaver of Ka'roz
				["coord"] = { 56.7, 77.7, DREAD_WASTES },
				["questID"] = 31434,
				["g"] = {
					i(86523),	-- Swarming Cleaver of Ka'roz
				},
			}),
			o(213971, {	-- Swarmkeeper's Medallion
				["coord"] = { 54.3, 56.5, DREAD_WASTES },
				["questID"] = 31437,
				["g"] = {
					i(86526),	-- Swarmkeeper's Medallion
				},
			}),
			o(213962, {		-- Wind-Reaver's Dagger of Quick Strikes
				["coord"] = { 71.8, 36.1, DREAD_WASTES },
				["questID"] = 31429,
				["g"] = {
					i(86519),	-- Wind-Reaver's Dagger of Quick Strikes
				},
			}),
			o(214439, {		-- Barrel of Banana Infused Rum
				["questID"] = 31411,	-- Barrel of Banana Infused Rum Quest Tracker
				["coords"] = {
					-- coords vary due to zone phasing
					{ 52.3, 88.7, KRASARANG_WILDS },
					{ 54.0, 88.0, KRASARANG_WILDS },
				},
				["g"] = {
					i(87266),	-- Recipe: Banana-Infused Rum (RECIPE!)
				},
			}),
			o(213651, {	-- Equipment Locker
				["coord"] = { 43.7, 92.3, KRASARANG_WILDS },
				["icon"] = 985959,
				["questID"] = 31410,
				["description"] = "On the bottom level of the ship. You will have to go down two sets of stairs.\nThis chest may follow the personal loot rule and be based on your current spec, NOT your Loot Spec.",
				["g"] = {
					i(86122, {	-- Plankwalking Greaves
						["description"] = "Recommended to be in a Strength DPS Spec to guarantee this item.",
					}),
					i(86115, {	-- Swashbuckling Boots
						["description"] = "Recommended to be in a Leather Agility Spec (Rogue/Feral/Guardian/Brewmaster/Windwalker) to guarantee this item.",
					}),
					i(86117, {	-- Seafarer's Treads of Precision
						["description"] = "Recommended to be in a Cloth DPS Spec (Mage/Warlock) to guarantee this item.",
					}),
					i(86116, {	-- Agile Seafarer's Jackboots
						["description"] = "Recommended to be in a Mail Agility Spec (Hunter/Enhancement) to guarantee this item.",
					}),
					i(86123, {	-- Seafarer's Sturdy Boots
						["description"] = "Recommended to be in a Strength Tank Spec to guarantee this item.",
					}),
					i(86118, {	-- Seafaring Advisor's Slippers
						["description"] = "Recommended to be a Priest (ingame class) to guarantee this item.",
					}),
					i(86119, {	-- Seafarer's Boots of Meditation
						["description"] = "Recommended to be in a Leather Intellect Spec (Mistweaver/Balance/Restoration) to guarantee this item.",
					}),
					i(86120, {	-- Seafaring Sabatons of Meditation
						["description"] = "Recommended to be in a Mail Intellect Spec (Elemental/Restoration) to guarantee this item.",
					}),
					i(86121, {	-- Radiant Seafarer's Boots
						["description"] = "Recommended to be a Paladin in Holy Spec to guarantee this item.",
					}),
				},
			}),
			o(213653, {		-- Pandaren Fishing Spear
				["questID"] = 31409,
				["coord"] = { 50.8, 49.3, KRASARANG_WILDS },
				["g"] = {
					i(86124),	-- Pandaren Fishing Spear
				},
			}),
			o(213768, {	-- Hozen Warrior Spear
				["description"] = "Cave entrance is at |cFFFFD70052.8 71.3|r, go down and to the section with water, it is in a rock. Might take some time to spawn.",
				["questID"] = 31413,
				["coords"] = {
					{ 52.8, 71.3, KUN_LAI_SUMMIT },	-- Cave entrance
					{ 23.9, 68.1, 384 },	-- The Deeper
				},
				["g"] = {
					i(86394),	-- Hozen Warrior Spear
				},
			}),
			n(64227, {	-- Frozen Trail Packer
				["coords"] = {
					{ 37.4, 77.9, KUN_LAI_SUMMIT },	-- Cave entrance
					{ 35.2, 76.4, KUN_LAI_SUMMIT },
				},
				["g"] = {
					i(86125, {	-- Kafa Press
						["questID"] = 31304,
					}),
				},
			}),
			o(213751, {	-- Sprite's Cloth Chest
				["questID"] = 31412,
				["description"] = "Cave entrance is at 73.2, 73.6.  This chest might be personal loot and obey rules based on your current Spec, NOT your Loot Spec.",
				["coord"] = { 74.6, 74.8, 381 },
				["modelScale"] = 1.5,
				["g"] = {
					i(86223, {	-- Agile Sprite Cloak
						["description"] = "Recommended to be an Agility DPS Spec (Hunter/Rogue) to guarantee this item.", -- verified 2021-10-21 Hunter(Surv)
					}),
					i(86222, {	-- Precise Sprite Cloak
						["description"] = "Recommended to be in an Intellect DPS Spec (Mage/Warlock) to guarantee this item.", -- verified 2021-10-18 Mage(Frost)
					}),
					i(86225, {	-- Strong Sprite Cloak
						["description"] = "Recommended to be in a Strength DPS Spec to guarantee this item.", -- verified 2021-10-22 DK(Unholy)
					}),
					i(86221, {	-- Wise Sprite Cloak
						["description"] = "Recommended to be in a Healer Spec to guarantee this item.", -- verified ?? Shaman(Resto)
					}),
					i(86224, {	-- Steadfast Sprite Cape
						["description"] = "Recommended to be in a Strength Tank Spec to guarantee this item.", -- verified 2021-10-18 Paladin(Prot)
					}),
				},
			}),
			o(213842, {	-- Stash of Yaungol Weapons
				["modelScale"] = 3.2,
				["questID"] = 31421,
				["coords"] = {
					{ 70.1, 63.9, KUN_LAI_SUMMIT },
					{ 71.1, 62.6, KUN_LAI_SUMMIT },
				},
				["g"] = {
					i(88723),	-- Sturdy Yaungol Spear
				},
			}),
			o(213765, {	-- Tablet of Ren Yun
				["questID"] = 31417,	-- FLAG - Tablet of Ren Yun
				["g"] = {
					i(86393),	-- Tablet of Ren Yun (RECIPE!)
				},
			}),
			o(213741, {	-- Ancient Jinyu Staff
				["questID"] = 31402,
				["coords"] = {
					{ 44.9, 64.6, THE_JADE_FOREST },
					{ 47.1, 67.5, THE_JADE_FOREST },
					{ 46.2, 71.2, THE_JADE_FOREST },
					{ 44.5, 64.4, THE_JADE_FOREST },
				},
				["g"] = {
					i(86196),	-- Ancient Jinyu Staff
				},
			}),
			o(213364, {	-- Ancient Pandaren Mining Pick
				["description"] = "Inside Greenstone Quarry at the lower level. Entrance at (46.1, 29.1).",
				["questID"] = 31399,
				["coords"] = {
					{ 33.52, 78.04, 373 },
					{ 37.95, 13.75, 373 },
					{ 40.08, 41.82, 373 },
					{ 64.33, 55.75, 373 },
				},
				["g"] = {
					i(85777),	-- Ancient Pandaren Mining Pick
				},
			}),
			o(213742, {	-- Hammer of Ten Thunders
				["questID"] = 31403,
				["coords"] = {
					{ 40.24, 13.67, THE_JADE_FOREST },
					{ 41.21, 13.84, THE_JADE_FOREST },
					{ 41.76, 17.66, THE_JADE_FOREST },
					{ 42.01, 17.56, THE_JADE_FOREST },
					{ 42.97, 11.63, THE_JADE_FOREST },
				},
				["g"] = {
					i(86198),	-- Hammer of Ten Thunders
				},
			}),
			n(64272, {	-- Jade Warrior Statue
				["questID"] = 31307,
				["coord"] = { 39.26, 46.65, THE_JADE_FOREST },
				["g"] = {
					i(86199),	-- Jade-Infused Blade
				},
			}),
			o(213363, {	-- Wodin's Mantid Shanker
				["questID"] = 31397,
				["coord"] = { 39.41, 7.23, THE_JADE_FOREST },
				["g"] = {
					i(85776),	-- Wodin's Mantid Shanker
				},
			}),
			o(213960, {		-- Yaungol Fire Carrier
				["questID"] = 31425,
				["coords"] = {
					{ 66.2, 44.7, TOWNLONG_STEPPES },
					{ 66.8, 48.0, TOWNLONG_STEPPES },
				},
				["g"] = {
					i(86518),	-- Yaungol Fire Carrier
				},
			}),
			n(64004, {	-- Ghostly Pandaren Fisherman
				["description"] = "Speak with the Ghostly Pandaren Fisherman to get the toy.",
				["questID"] = 31284,
				["coord"] = { 46.8, 24.6, VALLEY_OF_THE_FOUR_WINDS },
				["g"] = {
					i(85973),	-- Ancient Pandaren Fishing Charm (TOY!)
				},
			}),
			n(64191, {	-- Ghostly Pandaren Craftsman
				["questID"] = 31292,
				["coord"] = { 45.4, 38.2, VALLEY_OF_THE_FOUR_WINDS },
				["g"] = {
					i(86079),	-- Ancient Pandaren Woodcutter
				},
			}),
			o(213749, {		-- Staff of the Hidden Master
				["questID"] = 31407,
				["coords"] = {
					{ 15.4, 29.1, VALLEY_OF_THE_FOUR_WINDS },
					{ 17.5, 35.7, VALLEY_OF_THE_FOUR_WINDS },
					{ 19.1, 37.9, VALLEY_OF_THE_FOUR_WINDS },
					{ 15.0, 33.7, VALLEY_OF_THE_FOUR_WINDS },
					{ 19.0, 42.5, VALLEY_OF_THE_FOUR_WINDS },
				},
				["g"] = {
					i(86218),	-- Staff of the Hidden Master
				},
			}),
			o(213649, {		-- Cache of Pilfered Goods
				["questID"] = 31406,
				["coord"] = { 43.61, 37.48, VALLEY_OF_THE_FOUR_WINDS },
				["g"] = {
					i(86110),	-- Stolen Necklace of Precision
					i(86111),	-- Stolen Necklace of Accuracy
					i(86112),	-- Stolen Amulet of Wisdom
					i(86113),	-- Stolen Amulet of Might
					i(86114),	-- Stolen Necklace of Fortitude
				},
			}),
		}),
		ach(6856),	-- Ballad of Liu Lang (automated)
		ach(6716),	-- Between a Saurok and a Hard Place (automated)
		petbattle(ach(8519, {	-- Celestial Family
			crit(23600, {	-- Xu-Fu, Cub of Xuen
				["provider"] = { "i", 101771 },
			}),
			crit(23719, {	-- Chi-Chi, Hatchling of Chi-Ji
				["provider"] = { "i", 102145 },
			}),
			crit(23720, {	-- Yu'la, Broodling of Yu'lon
				["provider"] = { "i", 102147 },
			}),
			crit(23721, {	-- Zao, Calfling of Niuzao
				["provider"] = { "i", 102146 },
			}),
		})),
		ach(7285),	-- Every Day I'm Pand-a-ren
		ach(6846),	-- Fish Tales (automated)
		ach(7439, {	-- Glorious!
			["sym"] = {{"achievement_criteria"}},
			["groups"] = {
				ach(7438),	-- Could We Find More Like That?
				ach(7437),	-- A Worthy Opponent
			},
		}),
		ach(6850),	-- Hozen in the Mist (automated)
		ach(7230),	-- Legend of the Brewfathers (automated)
		petbattle(ach(8518, {	-- Master of the Master
			crit(23620),	-- Blingtron 4000
			crit(23610),	-- Wrathion
			crit(23611),	-- Lorewalker Cho
			crit(23616),	-- Chen Stormstout
			crit(23619),	-- Wise Mari
			crit(23607),	-- Shademaster Kiryn
			crit(23617),	-- Sully "The Pickle" McLeary
			crit(23618),	-- Taran Zhu
			crit(23621),	-- Dr. Ion Goldbloom
			crit(23612),	-- Xu-Fu, Cub of Xuen
			crit(23615),	-- Chi-Chi, Hatchling of Chi-Ji
			crit(23614),	-- Zao, Calfling of Niuzao
			crit(23613),	-- Yu'la, Broodling of Yu'lon
		})),
		ach(6828, {		-- Pandaren Ambassador (Alliance)
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(89785, {		-- Pandaren Kite (A) (MOUNT!)
					["races"] = ALLIANCE_ONLY,
				}),
				crit(19389),		-- Golden Lotus
				crit(19388),		-- The August Celestials
				crit(18993),		-- Shado-Pan
				crit(19390),		-- The Klaxxi
				crit(19393),		-- The Lorewalkers
				crit(19392),		-- The Anglers
				crit(19391),		-- The Tillers
				crit(19395),		-- Order of the Cloud Serpent
				crit(19481),		-- Tushui Pandaren
			},
		}),
		ach(6827, {		-- Pandaren Ambassador (Horde)
			["races"] = HORDE_ONLY,
			["g"] = {
				i(81559, {		-- Pandaren Kite (H) (MOUNT!)
					["races"] = HORDE_ONLY,
				}),
				crit(19389),		-- Golden Lotus
				crit(19388),		-- The August Celestials
				crit(18993),		-- Shado-Pan
				crit(19390),		-- The Klaxxi
				crit(19393),		-- The Lorewalkers
				crit(19392),		-- The Anglers
				crit(19391),		-- The Tillers
				crit(19395),		-- Order of the Cloud Serpent
				crit(19480),		-- Huojin Pandaren
			},
		}),
		applyclassicphase(MOP_PHASE_LANDFALL, ach(6974, {	-- Pandaria Explorer [7.0.3] / Explore Pandaria
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6978,	-- Explore Dread Wastes
				6351,	-- Explore Jade Forest
				6975,	-- Explore Krasarang Wilds
				6976,	-- Explore Kun-Lai Summit
				6977,	-- Explore Townlong Steppes
				6979,	-- Explore Vale of Eternal Blossoms
				6969,	-- Explore Valley of the Four Winds
			}},
		})),
		ach(6589, {		-- Pandaria Safari
			crit(21823),		-- Alpine Foxling (Kun-Lai Summit, Townlong Steppes)
			crit(21824),		-- Alpine Foxling Kit (Kun-Lai Summit, Townlong Steppes)
			crit(21832),		-- Amber Moth (Townlong Steppes, Dread Wastes)
			crit(21809),		-- Amethyst Spiderling (Krasarang Wilds)
			crit(21798),		-- Bandicoon (Valley of the Four Winds, Suramar, The Veiled Stair, Azsuna, The Jade Forest)
			crit(21799),		-- Bandicoon Kit (Valley of the Four Winds, The Jade Forest)
			crit(21781),		-- Bucktooth Flapper (The Jade Forest, Stormheim, Val'sharah)
			crit(21838),		-- Clouded Hedgehog (Dread Wastes, Townlong Steppes)
			crit(21839),		-- Crunchy Scorpion (Dread Wastes, Townlong Steppes)
			crit(21782),		-- Emerald Turtle (The Jade Forest, Valley of the Four Winds, Krasarang Wilds)
			crit(21840),		-- Emperor Crab (Dread Wastes)
			crit(21810),		-- Feverbite Hatchling (Krasarang Wilds)
			crit(21784),		-- Garden Frog (The Jade Forest)
			crit(21785),		-- Garden Moth (The Jade Forest)
			crit(21833),		-- Grassland Hopper (Townlong Steppes)
			crit(21786),		-- Grove Viper (The Jade Forest)
			crit(21787),		-- Jumping Spider (The Jade Forest, Azsuna)
			crit(21788),		-- Jungle Darter (The Jade Forest)
			crit(21811),		-- Jungle Grub (Krasarang Wilds)
			crit(21834),		-- Kuitan Mongoose (Townlong Steppes)
			crit(21789),		-- Leopard Tree Frog (The Jade Forest, Gorgrond)
			crit(21812),		-- Luyu Moth (Krasarang Wilds)
			crit(21800),		-- Malayan Quillrat (Valley of the Four Winds, Krasarang Wilds, The Veiled Stair, The Jade Forest)
			crit(21801),		-- Malayan Quillrat Pup (Valley of the Four Winds, The Veiled Stair)
			crit(21802),		-- Marsh Fiddler (Valley of the Four Winds)
			crit(21790),		-- Masked Tanuki (The Jade Forest)
			crit(21791),		-- Masked Tanuki Pup (The Jade Forest)
			crit(21814),		-- Mei Li Sparkler (Krasarang Wilds)
			crit(21792),		-- Mirror Strider (The Jade Forest)
			crit(21835),		-- Mongoose (Townlong Steppes)
			crit(21836),		-- Mongoose Pup (Townlong Steppes)
			crit(21825),		-- Plains Monitor (Kun-Lai Summit)
			crit(21826),		-- Prairie Mouse (Kun-Lai Summit)
			crit(21841),		-- Rapana Whelk (Azsuna, Stormheim)
			crit(21843),		-- Resilient Roach (Dread Wastes)
			crit(21793),		-- Sandy Petrel (The Jade Forest)
			crit(21815),		-- Savory Beetle (Krasarang Wilds, Valley of the Four Winds)
			crit(21640),		-- Sea Gull (Tanaris, Frostfire Ridge, Frostwall)
			crit(21706),		-- Shore Crab (Westfall, Azshara, Borean Tundra, Twilight Highlands, Howling Fjord)
			crit(21794),		-- Shrine Fly (The Jade Forest)
			crit(21803),		-- Shy Bandicoon (Valley of the Four Winds)
			crit(21797),		-- Sifang Otter (Valley of the Four Winds, Krasarang Wilds, The Jade Forest)
			crit(21816),		-- Sifang Otter Pup (The Jade Forest, Krasarang Wilds)
			crit(21842),		-- Silent Hedgehog (Dread Wastes, Townlong Steppes)
			crit(21795),		-- Silkbead Snail (Gorgrond, Spires of ARak, The Jade Forest, Talador)
			crit(21806),		-- Softshell Snapling (Valley of the Four Winds)
			crit(21817),		-- Spiny Terrapin (Krasarang Wilds, The Jade Forest)
			crit(21796),		-- Spirebound Crab (The Jade Forest)
			crit(21827),		-- Summit Kid (Kun-Lai Summit)
			crit(21828),		-- Szechuan Chicken (Kun-Lai Summit)
			crit(21805),		-- Temple Snake (The Jade Forest)
			crit(21829),		-- Tolai Hare (Kun-Lai Summit, Townlong Steppes)
			crit(21830),		-- Tolai Hare Pup (Kun-Lai Summit)
			crit(21837),		-- Yakrat (Townlong Steppes)
			crit(21831),		-- Zooey Snake (Kun-Lai Summit)
		}),
		petbattle(ach(6616, {		-- Pandaria Tamer
			crit(21494),		-- Dread Wastes
			crit(21489),		-- The Jade Forest
			crit(21491),		-- Krasarang Wilds
			crit(21492),		-- Kun-Lai Summit
			crit(21493),		-- Townlong Steppes
			crit(21495),		-- Vale of Eternal Blossoms
			crit(21490),		-- Valley of the Four Winds
		})),
		ach(7997, {	-- Riches of Pandaria
			ach(7996),	-- Bounty of Pandaria
			ach(7995),	-- Fortune of Pandaria
			ach(7994),	-- Treasure of Pandaria
			o(213750, {	-- Saurok Stone Tablet
				["questID"] = 31408,
				["coord"] = { 71.0, 9.0, KRASARANG_WILDS },
				["description"] = "Located at the back of the cave, to the right of the junk pile.",
				["g"] = {
					i(86220),	-- Saurok Stone Tablet
				},
			}),
			o(214438, {	-- Ancient Mogu Tablet
				["description"] = "Entrance is at |cFFFFD70063.94 49.84|r.",
				["questID"] = 31420,
				["coord"] = { 64.2, 45.2, KUN_LAI_SUMMIT },
				["g"] = {
					i(86471),	-- Ancient Mogu Tablet
				},
			}),
			o(213769, {	-- Hozen Treasure Cache
				["questID"] = 31414,	-- Hozen Treasure Cache
				["coord"] = { 49.5, 59.4, KUN_LAI_SUMMIT },
			}),
			o(213774, {	-- Lost Adventurer's Belongings
				["questID"] = 31418,	-- Lost Adventurer's Belongings
				["coord"] = { 36.7, 79.8, KUN_LAI_SUMMIT },
			}),
			o(213793, {	-- Rikktik's Tiny Chest
				["questID"] = 31419,
				["coord"] = { 52.5, 51.5, KUN_LAI_SUMMIT },
				["g"] = {
					i(86430),	-- Rikktik's Tiny Chest
				},
			}),
			o(213771, {	-- Statue of Xuen
				["questID"] = 31416,	-- Statue of Xuen
				["coord"] = { 72.0, 33.9, KUN_LAI_SUMMIT },
				["g"] = {
					i(86422),	-- Statue of Xuen
				},
			}),
			o(213770, {	-- Stolen Sprite Treasure
				["description"] = "Entrance is at |cFFFFD70059.5 52.9|r.",
				["questID"] = 31415,	-- Stolen Sprite Treasure
				["coord"] = { 41.6, 44.1, 380 },	-- Howlingwind Cavern
			}),
			o(213782, {	-- Terracotta Head
				["questID"] = 31422,
				["coord"] = { 59.2, 73.0, KUN_LAI_SUMMIT },
				["g"] = {
					i(86427),	-- Terracotta Head
				},
			}),
			o(213366, {	-- Ancient Pandaren Tea Pot
				["questID"] = 31400,
				["coord"] = { 26.22, 32.35, THE_JADE_FOREST },
				["g"] = {
					i(85780),	-- Ancient Pandaren Tea Pot
				},
			}),
			o(213368, {	-- Lucky Pandaren Coin
				["questID"] = 31401,
				["description"] = "Located in the wishing fountain.",
				["coord"] = { 31.96, 27.76, THE_JADE_FOREST },
				["g"] = {
					i(85781),	-- Lucky Pandaren Coin
				},
			}),
			o(213748, {	-- Pandaren Ritual Stone
				["questID"] = 31404,
				["coord"] = { 23.49, 35.05, THE_JADE_FOREST },
				["g"] = {
					i(86216),	-- Pandaren Ritual Stone
				},
			}),
			o(213362, {	-- Ship's Locker
				["questID"] = 31396, -- Ship's Locker
				["description"] = "Located underwater in a boat.",
				["coord"] = { 51.28, 100.54, THE_JADE_FOREST },	-- Can't use Uncharted Sea MapID, plots the point incorrectly.
			}),
			o(214325, {	-- Forgotten Lockbox
				["questID"] = 31867, -- Forgotten Lockbox
				["description"] = "Located on a barrel on the second floor of the inn",
				["coord"] = { 54.66, 71.67, THE_VEILED_STAIR },
			}),
			o(213845, {	-- The Hammer of Folly
				["questID"] = 31428,
				["coord"] = { 74.92, 76.47, THE_VEILED_STAIR },
				["g"] = {
					i(86473),	-- The Hammer of Folly
				},
			}),
			o(213961, {	-- Abandoned Crate of Goods
				["questID"] = 31427,	-- Abandoned Crate of Goods
				["coord"] = { 62.8, 34.1, TOWNLONG_STEPPES },
			}),
			o(213844, {	-- Amber Encased Moth
				["questID"] = 31426,
				["coord"] = { 65.8, 86.1, TOWNLONG_STEPPES },
				["g"] = {
					i(86472),	-- Amber Encased Moth
				},
			}),
			o(213956, {	-- Fragment of Dread
				["questID"] = 31423,
				["coords"] = {
					{ 64.2, 20.3, 389 },	-- Niuzao Catacombs
					{ 37.7, 87.0, 389 },	-- Niuzao Catacombs
					{ 47.8, 89.0, 389 },	-- Niuzao Catacombs
					{ 56.5, 64.7, 389 },	-- Niuzao Catacombs
				},
				["description"] = "Entrance is at |cFFFFD70032.6 61.8|r. There are 4 possible spawn points.",
				["g"] = {
					i(86516),	-- Fragment of Dread
				},
			}),
			o(213959, {	-- Hardened Sap of Kri'vess
				["questID"] = 31424,
				["description"] = "Located all around Kri'vess.",
				["g"] = {
					i(86517),	-- Hardened Sap of Kri'vess
				},
			}),
			o(214340, {	-- Boat-Building Instructions
				["questID"] = 31869,
				["coord"] = { 92.2, 39.2, VALLEY_OF_THE_FOUR_WINDS },
				["g"] = {
					i(87524),	-- Boat-Building Instructions
				},
			}),
			o(213650, {	-- Virmen Treasure Cache
				["description"] = "Has a respawn timer of approx 7 minutes.",
				["questID"] = 31405,
				["coords"] = {
					{ 23.2, 30.8, VALLEY_OF_THE_FOUR_WINDS },
					{ 23.8, 28.4, VALLEY_OF_THE_FOUR_WINDS },
				},
			}),
		}),
		petbattle(ach(6606, {	-- Taming Pandaria
			crit(21853),	-- Hyuna of the Shrines [The Jade Forest)
			crit(21854),	-- Farmer Nishi [Valley of the Four Winds)
			crit(21871),	-- Mo'ruk [Krasarang Wilds)
			crit(21855),	-- Courageous Yon [Kun-Lai Summit)
			crit(21870),	-- Seeker Zusshi [Townlong Steppes)
			crit(21856),	-- Wastewalker Shu [Dread Wastes)
			crit(21857),	-- Aki the Chosen [Vale of Eternal Blossoms)
		})),
		petbattle(ach(8410)),	-- The Celestial Tournament
		ach(6754),	-- The Dark Heart of the Mogu (automated)
		ach(6855),	-- The Seven Burdens of Shaohao (automated)
		ach(6847),	-- The Song of the Yaungol (automated)
		ach(6350, {	-- To All the Squirrels I Once Caressed?
			crit(20817, {	-- Amethyst Spiderling
				["provider"] = { "n", 64798 },	-- Amethyst Spiderling
				["maps"] = { KRASARANG_WILDS },
			}),
			crit(20812, {	-- Bandicoon
				["provider"] = { "n", 64782 },	-- Bandicoon
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20821, {	-- Clouded Hedgehog
				["provider"] = { "n", 64803 },	-- Clouded Hedgehog
				["maps"] = { DREAD_WASTES },
			}),
			crit(20811, {	-- Coral Adder
				["provider"] = { "n", 59356 },	-- Coral Adder
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(20827, {	-- Dancing Water Skimmer
				["provider"] = { "n", 65209 },	-- Dancing Water Skimmer
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20822, {	-- Emperor Crab
				["provider"] = { "n", 63329 },	-- Emperor Crab
				["maps"] = { DREAD_WASTES },
			}),
			crit(20826, {	-- Gilded Moth
				["provider"] = { "n", 65205 },	-- Gilded Moth
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20828, {	-- Golden Civet
				["provider"] = { "n", 65206 },	-- Golden Civet
				["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
			}),
			crit(20824, {	-- Leopard Tree Frog
				["provider"] = { "n", 64774 },	-- Leopard Tree Frog
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(20813, {	-- Luyu Moth
				["provider"] = { "n", 63289 },	-- Luyu Moth
				["maps"] = { KRASARANG_WILDS },
			}),
			crit(20825, {	-- Malayan Quillrat
				["provider"] = { "n", 64784 },	-- Malayan Quillrat
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(18979, {	-- Marsh Fiddler
				["provider"] = { "n", 64786 },	-- Marsh Fiddler
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20819, {	-- Mongoose
				["provider"] = { "n", 65191 },	-- Mongoose
				["maps"] = { TOWNLONG_STEPPES },
			}),
			crit(20823, {	-- Resilient Roach
				["provider"] = { "n", 64807 },	-- Resilient Roach
				["maps"] = { DREAD_WASTES },
			}),
			crit(18980, {	-- Shrine Fly
				["provider"] = { "n", 59770 },	-- Shrine Fly
				["maps"] = { THE_JADE_FOREST },
			}),
			crit(18978, {	-- Sifang Otter
				["provider"] = { "n", 64787 },	-- Sifang Otter
				["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
			}),
			crit(20820, {	-- Yakrat
				["provider"] = { "n", 64802 },	-- Yakrat
				["maps"] = { TOWNLONG_STEPPES },
			}),
		}),
		ach(6926, {	-- Tranquil Master
			title(203),	-- the Tranquil Master
			crit(19668, {	-- Sha of Doubt
				["_encounter"] = { 335, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(18829, {	-- Sha of Despair
				["sourceQuests"] = { 30273 },	-- In the House of the Red Crane
			}),
			crit(22274, {	-- Sha of Violence
				["_encounter"] = { 685, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(19374, {	-- Sha of Hatred
				["sourceQuests"] = { 30968 },	-- The Sha of Hatred
			}),
			crit(19136, {	-- Sha of Anger
				["_encounter"] = { 691, WORLD_BOSSES },
			}),
			crit(19913, {	-- Sha of Fear
				["_encounter"] = { 709, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
			}),
		}),
		ach(6858),	-- What Is Worth Fighting For
		ach(8078, {	-- Zul'Again
			crit(22733, {	-- Zandalari Scouts Slain slain (10) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, Krasarang Wilds, The Jade Forest)
				["provider"] = { "n", 69768 },
			}),
			crit(22942, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69842 },
			}),
			crit(22941, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69841 },
			}),
			crit(22732, {	-- Zandalari Warbringers Slain slain (5) (Townlong Steppes, Dread Wastes, Kun-Lai Summit, The Jade Forest)
				["provider"] = { "n", 69769 },
			}),
		}),
	}),
}))))