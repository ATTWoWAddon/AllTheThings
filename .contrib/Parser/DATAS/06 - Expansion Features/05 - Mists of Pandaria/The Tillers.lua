-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local HARVESTING = createHeader({
	readable = "Harvesting",
	icon = 134427,
	text = {
		en = "Harvesting",
		de = "Abbauen",
		es = "Cosecha",
		mx = "Cosechando",
		fr = "Récolte",
		it = "Raccolta",
		ko = "채취",
		pt = "Colhendo",
		ru = "Сбор",
		cn = "收获",
		tw = "採集",
	},
	description = {
		en = "The following goods can be harvested by planting seeds in Tilled Soil at Sunsong Ranch. You will earn Tillers reputation for harvesting crops and a chance to obtain replacement seeds from the crop.\n\nFUN FACT: Priests may cast Levitate on their crops, making them float.",
	},
});

root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_TILLERS, {
		["description"] = "The Tillers are a group of pandaren farmers who harvest and produce crops to feed their people. They were seemingly founded by a man only referred to as \"the Tiller\".",
		["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
		["icon"] = 645198,
		["lvl"] = lvlsquish(85, 85, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				achpart(6551, 6552),	-- Friend on the Farm
				ach(6552, {	-- Friends on the Farm
					crit(19398, {	-- Farmer Fung
						["_factions"] = { FACTION_FARMER_FUNG },
					}),
					crit(19402, {	-- Jogu the Drunk
						["_factions"] = { FACTION_JOGU_THE_DRUNK },
					}),
					crit(19396, {	-- Chee Chee
						["_factions"] = { FACTION_CHEE_CHEE },
					}),
					crit(19404, {	-- Sho
						["_factions"] = { FACTION_SHO },
					}),
					crit(19397, {	-- Ella
						["_factions"] = { FACTION_ELLA },
					}),
					crit(19405, {	-- Tina Mudclaw
						["_factions"] = { FACTION_TINA_MUDCLAW },
					}),
					crit(19403, {	-- Old Hillpaw
						["_factions"] = { FACTION_OLD_HILLPAW },
					}),
					crit(19401, {	-- Haohan Mudclaw
						["_factions"] = { FACTION_HAOHAN_MUDCLAW },
					}),
					crit(19399, {	-- Fish Fellreed
						["_factions"] = { FACTION_FISH_FELLREED },
					}),
					crit(19400, {	-- Gina Mudclaw
						["_factions"] = { FACTION_GINA_MUDCLAW },
					}),
				}),
				ach(6544, {	-- The Tillers
					title(195),	-- Farmer <Name>
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_THE_TILLERS, {		-- The Tillers
					["icon"] = 645198,
				}),
				faction(FACTION_CHEE_CHEE, {		-- Chee Chee
					["provider"] = { "n", 58709 },	-- Chee Chee
					["coords"] = {
						{ 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						{ 34.4, 46.8, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_ELLA, {				-- Ella
					["provider"] = { "n", 58647 },	-- Ella
					["coords"] = {
						{ 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
						{ 31.6, 58.0, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_FARMER_FUNG, {		-- Farmer Fung
					["provider"] = { "n", 57298 },	-- Farmer Fung
					["coords"] = {
						{ 48.3, 33.9, VALLEY_OF_THE_FOUR_WINDS },
						{ 48.2, 33.8, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_FISH_FELLREED, {	-- Fish Fellreed
					["provider"] = { "n", 58705 },	-- Fish Fellreed
					["coords"] = {
						{ 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
						{ 41.6, 30.0, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_GINA_MUDCLAW, {		-- Gina Mudclaw
					["provider"] = { "n", 58706 },	-- Gina Mudclaw
					["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				faction(FACTION_HAOHAN_MUDCLAW, {	-- Haohan Mudclaw
					["provider"] = { "n", 57402 },	-- Haohan Mudclaw
					["coords"] = {
						{ 53.0, 51.7, VALLEY_OF_THE_FOUR_WINDS },
						{ 44.6, 34.0, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_JOGU_THE_DRUNK, {	-- Jogu the Drunk
					["provider"] = { "n", 58710 },	-- Jogu the Drunk
					["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
				}),
				faction(FACTION_OLD_HILLPAW, {		-- Old Hillpaw
					["provider"] = { "n", 58707 },	-- Old Hillpaw
					["coords"] = {
						{ 53.1, 51.9, VALLEY_OF_THE_FOUR_WINDS },
						{ 31.0, 53.0, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_SHO, {				-- Sho
					["provider"] = { "n", 58708 },	-- Sho
					["coords"] = {
						{ 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						{ 29.6, 30.6, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
				faction(FACTION_TINA_MUDCLAW, {		-- Tina Mudclaw
					["provider"] = { "n", 58761 },	-- Tina Mudclaw
					["coords"] = {
						{ 53.0, 51.8, VALLEY_OF_THE_FOUR_WINDS },
						{ 45.0, 33.8, VALLEY_OF_THE_FOUR_WINDS },
					},
				}),
			}),
			n(HARVESTING, {
				["providers"] = {
					{ "n", 58563 },	-- Tilled Soil
					{ "n", 59990 },	-- Tilled Soil
					{ "n", 58562 },	-- Untilled Soil
				},
				["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(7294),	-- A Taste of Things to Come (Halfhill)
						ach(7295, {	-- Listen to the Drunk Fish (Halfhill)
							["provider"] = { "n", 58710 },	-- Jogu the Drunk
							-- #if ANYCLASSIC
							["timeline"] = { ADDED_5_0_4, "deleted 5.5.3" },
							-- #endif
							["groups"] = {
								crit(21034, {	-- Green Cabbage
									["_npcs"] = { 58567 },	-- Ripe Green Cabbage
								}),
								crit(20536, {	-- Juicycrunch Carrot
									["_npcs"] = { 63154 },	-- Ripe Juicycrunch Carrot
								}),
								crit(21035, {	-- Mogu Pumpkin
									["_npcs"] = { 63185 },	-- Ripe Mogu Pumpkin
								}),
								crit(21038, {	-- Pink Turnip
									["_npcs"] = { 63250 },	-- Ripe Pink Turnip
								}),
								crit(21036, {	-- Red Blossom Leek
									["_npcs"] = { 63229 },	-- Ripe Red Blossom Leek
								}),
								crit(21037, {	-- Scallions
									["_npcs"] = { 63165 },	-- Ripe Scallions
								}),
								crit(21039, {	-- White Turnip
									["_npcs"] = { 63265 },	-- Ripe White Turnip
								}),
							},
						}),
						ach(7293),	-- Till the Break of Dawn (Halfhill)
					}),
					n(66175, {	-- Autumn Blossom Tree
						["description"] = "Each tree is a one-time use vanity item that lasts three minutes.",
						["cost"] = { { "i", 85267, 1 } },	-- 1x Autumn Blossom Sapling
						["cr"] = 66172,	-- Autumn Blossom Sapling
					}),
					n(65916, {	-- Growing Enigma Seed
						["description"] = "Enigma Seeds will result in a Fool's Cap, Green Tea Leaf, Rain Poppy, Silkweed, Snow Lily or a Golden Lotus being grown in the plot. As with herbing, Golden Lotus will result in only 1 received, while the rest 2-4 will be received. Unlike gathering them in the wild, however, Golden Lotuses harvested from an Enigma Seed will not give the [Luck of the Lotus] buff.",
						["cost"] = { { "i", 85216, 1 } },	-- 1x Enigma Seed
						["groups"] = {
							i(79011, {	-- Fool's Cap
								["provider"] = { "o", 209355 },	-- Fool's Cap
							}),
							i(72234, {	-- Green Tea Leaf
								["provider"] = { "o", 209349 },	-- Green Tea Leaf
							}),
							i(72238, {	-- Golden Lotus
								["provider"] = { "o", 209354 },	-- Golden Lotus
							}),
							i(72237, {	-- Rain Poppy
								["provider"] = { "o", 209353 },	-- Rain Poppy
							}),
							i(72235, {	-- Silkweed
								["provider"] = { "o", 209350 },	-- Silkweed
							}),
							i(79010, {	-- Snow Lily
								["provider"] = { "o", 209351 },	-- Snow Lily
							}),
						},
					}),
					n(65989, {	-- Magebulb
						["cost"] = { { "i", 85217, 1 } },	-- 1x Magebulb Seed
						["cr"] = 65986,	-- Growing Magebulb
						["groups"] = {
							i(74250),	-- Mysterious Essence
							i(74249),	-- Spirit Dust
						},
					}),
					i(85219, {	-- Ominous Seed
						["description"] = "This seed is acquired by harvesting crops at Sunsong Ranch, albeit very rarely.",
						["crs"] = {
							66152,	-- Ominous Seedling
							66161,	-- Terrible Turnip
						},
						["groups"] = {
							i(85220),	-- Terrible Turnip (PET!)
						},
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(97988, {	-- Paper-Covered Rock (QI!)
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
						-- Wouter NOTE: in MoP Classic, this started dropping in Phase 2 (Landfall) already
						-- #if BEFORE 5.5.3
						["description"] = "This is not supposed to be in the game until Phase 4 and doesn't work yet, keep it in your bank until then.",
						-- #elseif BEFORE LEGION
						["description"] = "Can only be harvested along with normal crops or Portal Shard crops.",
						-- #endif
					})),
					applyclassicphase(MOP_PHASE_LANDFALL, n(67482, {	-- Portal Shard
						["cost"] = { { "i", 91806, 1 } },	-- 1x Unstable Portal Shard
						["crs"] = { 67446 },	-- Unstable Portal Shard
						["groups"] = {
							i(91865, {	-- Darnassus Portal Shard
								["races"] = ALLIANCE_ONLY,
							}),
							i(91866, {	-- Exodar Portal Shard
								["races"] = ALLIANCE_ONLY,
							}),
							i(91864, {	-- Ironforge Portal Shard
								["races"] = ALLIANCE_ONLY,
							}),
							i(91850, {	-- Orgrimmar Portal Shard
								["races"] = HORDE_ONLY,
							}),
							i(91863, {	-- Silvermoon Portal Shard
								["races"] = HORDE_ONLY,
							}),
							i(91860, {	-- Stormwind Portal Shard
								["races"] = ALLIANCE_ONLY,
							}),
							i(91861, {	-- Thunder Bluff Portal Shard
								["races"] = HORDE_ONLY,
							}),
							i(91862, {	-- Undercity Portal Shard
								["races"] = HORDE_ONLY,
							}),
						},
					})),
					n(66016, {	-- Raptorleaf
						["cost"] = { { "i", 89202, 1 } },	-- 1x Raptorleaf Seed
						["cr"] = 66013,	-- Growing Raptorleaf
						["groups"] = {
							i(72120),	-- Mist-Touched Leather
							i(72163),	-- Magnificent Hide
						},
					}),
					n(65973, {	-- Snakeroot
						["cost"] = { { "i", 85215, 1 } },	-- 1x Snakeroot Seed
						["cr"] = 65965,	-- Growing Snakeroot
						["groups"] = {
							i(72094),	-- Black Trillium Ore
							i(72092),	-- Ghost Iron Ore
							i(72103),	-- White Trillium Ore
						},
					}),
					n(66043, {	-- Songbell
						["description"] = "This is the without a doubt the most efficient way to farm motes as a solo player every day. The rest of the seeds are trash in comparison.",
						["cost"] = { { "i", 89233, 1 } },	-- 1x Songbell Seed
						["cr"] = 66040,	-- Growing Songbell
						["groups"] = {
							i(89112),	-- Mote of Harmony
						},
					}),
					n(66192, {	-- Spring Blossom Tree
						["description"] = "Each tree is a one-time use vanity item that lasts three minutes.",
						["cost"] = { { "i", 85268, 1 } },	-- 1x Spring Blossom Sapling
						["cr"] = 66189,	-- Spring Blossom Sapling
					}),
					n(66006, {	-- Windshear Cactus
						["cost"] = { { "i", 89197, 1 } },	-- 1x Windshear Cactus Seed
						["cr"] = 66003,	-- Growing Windshear Cactus
						["groups"] = {
							i(72988),	-- Windwool Cloth
						},
					}),
					n(66173, {	-- Winter Blossom Tree
						["description"] = "Each tree is a one-time use vanity item that lasts three minutes.",
						["cost"] = { { "i", 85269, 1 } },	-- 1x Winter Blossom Sapling
						["cr"] = 66171,	-- Winter Blossom Sapling
					}),
					n(58567, {	-- Ripe Green Cabbage
						["crs"] = {
							63157,	-- Bursting Green Cabbage
							60113,	-- Plump Green Cabbage
							58566,	-- Growing Green Cabbage
						},
						["cost"] = { { "i", 79102, 1 } },	-- 1x Green Cabbage Seeds
						["groups"] = {
							i(74840),	-- Green Cabbage
						},
					}),
					n(66113, {	-- Ripe Jade Squash
						["crs"] = {
							66108,	-- Bursting Jade Squash
							66112,	-- Plump Jade Squash
							66109,	-- Growing Jade Squash
						},
						["cost"] = { { "i", 89328, 1 } },	-- 1x Jade Squash Seeds
						["groups"] = {
							i(74847),	-- Jade Squash
						},
					}),
					n(63154, {	-- Ripe Juicycrunch Carrot
						["crs"] = {
							63158,	-- Bursting Juicycrunch Carrot
							63156,	-- Plump Juicycrunch Carrot
							63153,	-- Growing Juicycrunch Carrot
						},
						["cost"] = { { "i", 80590, 1 } },	-- 1x Juicycrunch Carrot Seeds
						["groups"] = {
							i(74841),	-- Juicycrunch Carrot
						},
					}),
					n(63185, {	-- Ripe Mogu Pumpkin
						["crs"] = {
							63180,	-- Bursting Mogu Pumpkin
							63184,	-- Plump Mogu Pumpkin
							63181,	-- Growing Mogu Pumpkin
						},
						["cost"] = { { "i", 80592, 1 } },	-- 1x Mogu Pumpkin Seeds
						["groups"] = {
							i(74842),	-- Mogu Pumpkin
						},
					}),
					n(63250, {	-- Ripe Pink Turnip
						["crs"] = {
							63245,	-- Bursting Pink Turnip
							63249,	-- Plump Pink Turnip
							63246,	-- Growing Pink Turnip
						},
						["cost"] = { { "i", 80594, 1 } },	-- 1x Pink Turnip Seeds
						["groups"] = {
							i(74849),	-- Pink Turnip
						},
					}),
					n(63229, {	-- Ripe Red Blossom Leek
						["crs"] = {
							63223,	-- Bursting Red Blossom Leek
							63228,	-- Plump Red Blossom Leek
							63224,	-- Growing Red Blossom Leek
						},
						["cost"] = { { "i", 80593, 1 } },	-- 1x Red Blossom Leek Seeds
						["groups"] = {
							i(74844),	-- Red Blossom Leek
						},
					}),
					n(63165, {	-- Ripe Scallions
						["crs"] = {
							63160,	-- Bursting Scallions
							63164,	-- Plump Scallions
							63161,	-- Growing Scallions
						},
						["cost"] = { { "i", 80591, 1 } },	-- 1x Scallion Seeds
						["groups"] = {
							i(74843),	-- Scallions
						},
					}),
					n(66129, {	-- Ripe Striped Melon
						["crs"] = {
							66123,	-- Bursting Striped Melon
							66128,	-- Plump Striped Melon
							66124,	-- Growing Striped Melon
						},
						["cost"] = { { "i", 89329, 1 } },	-- 1x Striped Melon Seeds
						["groups"] = {
							i(74848),	-- Striped Melon
						},
					}),
					n(63265, {	-- Ripe White Turnip
						["crs"] = {
							63260,	-- Bursting Ripe White Turnip
							63264,	-- Plump Ripe White Turnip
							63261,	-- Growing Ripe White Turnip
						},
						["cost"] = { { "i", 80595, 1 } },	-- 1x White Turnip Seeds
						["groups"] = {
							i(74850),	-- White Turnip
						},
					}),
					n(66085, {	-- Ripe Witchberries
						["crs"] = {
							66080,	-- Bursting Witchberries
							66084,	-- Plump Witchberries
							66081,	-- Growing Witchberries
						},
						["cost"] = { { "i", 89326, 1 } },	-- 1x Witchberry Seeds
						["groups"] = {
							i(74846),	-- Witchberries
						},
					}),
				},
			}),
			n(MAILBOX, {
				i(85497, {	-- Chirping Package
					["description"] = "Once you hit Best Friend with Sho you receive this in the mail.",
					["minReputation"] = { FACTION_SHO, 6 },	-- Sho, Best Friend.
					["groups"] = {
						i(85222),	-- Red Cricket (PET!)
					},
				}),
				i(90042, {	-- Straw Hat
					["description"] = "Once you hit Best Friend with Old Hillpaw you receive this in the mail.",
					["minReputation"] = { FACTION_OLD_HILLPAW, 6 },	-- Old Hillpaw, Best Friend.
				}),
			}),
			n(QUESTS, {
				q(31937, {	-- "Thunder King" Pest Repellers
					["description"] = "You never have to loot a Vintage Bug Sprayer ever again!",
					["sourceQuest"] = 30523,	-- Growing the Farm II: The Broken Wagon
					["providers"] = {
						{ "i",  89813 },	-- "Thunder King" Pest Repellers
						{ "o", 215162 },	-- Pest Repeller
					},
					["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(31329, {	-- A Beautiful Brooch
					["provider"] = { "i", 86436 },	-- Beautiful Brooch
					["minReputation"] = { FACTION_TINA_MUDCLAW, 5 },	-- Good Friend
					["crs"] = {
						59120,	-- Kunzen Rockflinger
						59126,	-- Jokka-Jokka
						59128,	-- Jim-Jim
						59130,	-- Teeku
						59127,	-- Kon-Kon
						59129,	-- Maaka
						59125,	-- Kunzen Soupmaster
						59123,	-- Kunzen Ritualist
						59134,	-- Yammo
						59121,	-- Kunzen Hunter
						59133,	-- Buk-Buk
						59131,	-- Lor-Lor
						59135,	-- Bimba
						59124,	-- Kunzen Collector
						59132,	-- Rit-Rit
						59119,	-- Kunzen Ravager
						59122,	-- Kunzen Herdskeeper
					},
				}),
				q(30252, {	-- A Helping Hand
					["qg"] = 58721,	-- Farmer Yoon
					["coord"] = { 52.0, 48.1, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/8 Unbudging Rock cleared
							["provider"] = { "n", 58719 },	-- Unbudging Rock
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30534, {	-- A Second Hand
					["description"] = "Also requires reputation level of \"Best Friends\" with whomever you want assisting you on the farm.",
					["sourceQuest"] = 30529,	-- Growing the Farm III: The Mossy Boulder
					["provider"] = { "o", 215705 },	-- Tillers Shrine
					["coord"] = { 52.1, 49.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, EXALTED },	-- The Tillers, Exalted.
					["groups"] = {
						objective(1, {	-- Hired a farm hand
							["providers"] = {
								{ "n", 58709 },	-- Chee Chee
								{ "n", 58647 },	-- Ella
								{ "n", 57298 },	-- Farmer Fung
								{ "n", 58705 },	-- Fish Fellreed
								{ "n", 58706 },	-- Gina Mudclaw
								{ "n", 57402 },	-- Haohan Mudclaw
								{ "n", 58710 },	-- Jogu the Drunk
								{ "n", 58707 },	-- Old Hillpaw
								{ "n", 58708 },	-- Sho
								{ "n", 58761 },	-- Tina Mudclaw
							},
						}),
					},
				}),
				applyclassicphase(MOP_PHASE_LANDFALL, q(32189, {	-- A Shabby New Face
					["description"] = "Only available on days that Barnaby Fletcher is visiting the Market.",
					["qg"] = 58718,	-- Merchant Greenfield
					["coord"] = { 52.8, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_1_0 },
				})),
				q(31341, {	-- A Wolf In Sheep's Clothing
					["sourceQuest"] = 31340,	-- Oh Sheepie....
					["qg"] = 58709,	-- Chee Chee
					["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Krungko Fingerlicker slain
							["providers"] = {
								{ "n", 64389 },	-- Krungko Fingerlicker
								{ "i", 86465 },	-- Old Sheepskin (QI!)
							},
							["coord"] = { 29.8, 42.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31538, {	-- A Worthy Brew
					["sourceQuest"] = 31537,	-- Ella's Taste Test
					["qg"] = 58647,	-- Ella
					["coord"] = { 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_ELLA, 5 },	-- Good Friend
					["groups"] = {
						objective(1, {	-- Jogu the Drunk tasted
							["providers"] = {
								{ "n", 56133 },	-- Chen Stormstout
								{ "i", 87763 },	-- Ella's Brew (QI!)
							},
							["coord"] = { 55.2, 50.8, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31325, {	-- A Very Nice Necklace
					["provider"] = { "i", 86433 },	-- Nice Necklace
					["minReputation"] = { FACTION_TINA_MUDCLAW, 2 },	-- Acquaintance
					["crs"] = {
						59120,	-- Kunzen Rockflinger
						59126,	-- Jokka-Jokka
						59128,	-- Jim-Jim
						59130,	-- Teeku
						59127,	-- Kon-Kon
						59129,	-- Maaka
						59125,	-- Kunzen Soupmaster
						59123,	-- Kunzen Ritualist
						59134,	-- Yammo
						59121,	-- Kunzen Hunter
						59133,	-- Buk-Buk
						59131,	-- Lor-Lor
						59135,	-- Bimba
						59124,	-- Kunzen Collector
						59132,	-- Rit-Rit
						59119,	-- Kunzen Ravager
						59122,	-- Kunzen Herdskeeper
					},
				}),
				q(31328, {	-- An Exquisite Earring
					["provider"] = { "i", 86435 },	-- Exquisite Earring
					["minReputation"] = { FACTION_TINA_MUDCLAW, 4 },	-- Friend
					["crs"] = {
						59120,	-- Kunzen Rockflinger
						59126,	-- Jokka-Jokka
						59128,	-- Jim-Jim
						59130,	-- Teeku
						59127,	-- Kon-Kon
						59129,	-- Maaka
						59125,	-- Kunzen Soupmaster
						59123,	-- Kunzen Ritualist
						59134,	-- Yammo
						59121,	-- Kunzen Hunter
						59133,	-- Buk-Buk
						59131,	-- Lor-Lor
						59135,	-- Bimba
						59124,	-- Kunzen Collector
						59132,	-- Rit-Rit
						59119,	-- Kunzen Ravager
						59122,	-- Kunzen Herdskeeper
					},
				}),
				q(31323, {	-- Buy A Fish A Brewery?
					["sourceQuest"] = 31322,	-- Buy A Fish A Keg?
					["qg"] = 58710,	-- Jogu the Drunk
					["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_JOGU_THE_DRUNK, 5 },	-- Good Friend
					["groups"] = {
						objective(1, {	-- 0/20 Mad Brewer's Breakfast
							["cost"] = { { "i", 75038, 20 } },	-- 20x Mad Brewer's Breakfast
						}),
					},
				}),
				q(31320, {	-- Buy A Fish A Drink?
					["qg"] = 58710,	-- Jogu the Drunk
					["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_JOGU_THE_DRUNK, 2 },	-- Acquaintance
					["groups"] = {
						objective(1, {	-- 0/1 Four Wind Soju
							["provider"] = { "i", 81407 },	-- Four Wind Soju
							["coord"] = { 55.0, 50.4, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 64319,	-- Den Den <Bartender>
						}),
					},
				}),
				q(31322, {	-- Buy A Fish A Keg?
					["sourceQuest"] = 31321,	-- Buy A Fish A Round?
					["qg"] = 58710,	-- Jogu the Drunk
					["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_JOGU_THE_DRUNK, 4 },	-- Friend
					["groups"] = {
						objective(1, {	-- 0/10 Jade Witch Brew
							["cost"] = { { "i", 75037, 10 } },	-- 10x Jade Witch Brew
						}),
					},
				}),
				q(31321, {	-- Buy A Fish A Round?
					["sourceQuest"] = 31320,	-- Buy A Fish A Drink?
					["qg"] = 58710,	-- Jogu the Drunk
					["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_JOGU_THE_DRUNK, 3 },	-- Buddy
					["groups"] = {
						objective(1, {	-- 0/5 Pandaren Plum Wine
							["provider"] = { "i", 81415 },	-- Pandaren Plum Wine
							["coord"] = { 55.0, 50.4, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 64319,	-- Den Den <Bartender>
						}),
					},
				}),
				q(31537, {	-- Ella's Taste Test
					["sourceQuest"] = 31534,	-- The Beginner's Brew
					["qg"] = 58647,	-- Ella
					["coord"] = { 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_ELLA, 4 },	-- Friend
					["groups"] = {
						objective(1, {	-- Jogu the Drunk tasted
							["providers"] = {
								{ "n", 58710 },	-- Jogu the Drunk
								{ "i", 87558 },	-- Ella's Brew (QI!)
							},
							["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- Bobo Ironpaw tasted
							["providers"] = {
								{ "n", 58717 },	-- Bobo Ironpaw <Master of the Brew>
								{ "i", 87558 },	-- Ella's Brew (QI!)
							},
							["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- Farmer Yoon tasted
							["providers"] = {
								{ "n", 58646 },	-- Farmer Yoon
								{ "i", 87558 },	-- Ella's Brew (QI!)
							},
							["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(4, {	-- Nana Mudclaw tasted
							["providers"] = {
								{ "n", 64597 },	-- Nana Mudclaw
								{ "i", 87558 },	-- Ella's Brew (QI!)
							},
							["coord"] = { 54.6, 47.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30517, {	-- Farmer Fung's Vote I: Yak Attack
					["sourceQuest"] = 31946,	-- Mung-Mung's Vote III: The Great Carrot Caper
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, REVERED + 4500 },	-- The Tillers
				}),
				q(30518, {	-- Farmer Fung's Vote II: On the Loose
					["sourceQuest"] = 30517,	-- Farmer Fung's Vote I: Yak Attack
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/5 Escaped Shagskin recovered
							["provider"] = { "n", 59491 },	-- Escaped Shagskin
							["coord"] = { 50.8, 37.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31947, {	-- Farmer Fung's Vote III: Crazy For Cabbage
					["sourceQuest"] = 30518,	-- Farmer Fung's Vote II: On the Loose
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/3 Plant Green Cabbage Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 79102, 3 } },	-- 3x Green Cabbage Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/3 Harvest Green Cabbages
							["providers"] = {
								{ "n", 58567 },	-- Ripe Green Cabbage
								{ "n", 63157 },	-- Bursting Green Cabbage
								{ "n", 60113 },	-- Plump Green Cabbage
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/15 Green Cabbage
							["cost"] = { { "i", 74840, 15 } },	-- 15x Green Cabbage
						}),
					},
				}),
				q(30516, {	-- Growing the Farm I: A Little Problem
					["sourceQuest"] = 30260,	-- Growing the Farm I: The Weeds
					["qg"] = 57385,	-- Gai Lan
					["coord"] = { 38.7, 51.7, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, HONORED },
					["groups"] = {
						objective(1, {	-- 0/6 Spideroot
							["providers"] = {
								{ "i",  80122 },	-- Spideroot (QI!)
								{ "o", 211117 },	-- Spideroot
								{ "o", 210945 },	-- Spideroot
							},
							["coord"] = { 36.2, 53.3, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30260, {	-- Growing the Farm I: The Weeds
					["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(30524, {	-- Growing the Farm II: Knock on Wood
					["sourceQuest"] = 30523,	-- Growing the Farm II: The Broken Wagon
					["qg"] = 58705,	-- Fish Fellreed
					["coord"] = { 41.7, 30.1, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/100 Waxed Plank
							["providers"] = {
								{ "i",  80136 },	-- Waxed Plank (QI!)
								{ "o", 211122 },	-- Boat Planks
								{ "o", 211120 },	-- Boat Planks
								{ "o", 210961 },	-- Boat Planks
							},
							["coord"] = { 43.1, 29.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30523, {	-- Growing the Farm II: The Broken Wagon
					["sourceQuest"] = 30516,	-- Growing the Farm I: A Little Problem
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, REVERED },
				}),
				q(30529, {	-- Growing the Farm III: The Mossy Boulder
					["description"] = "Must have all Tillers votes collected to start this quest.",
					["sourceQuest"] = 30528,	-- Haohan's Vote V: Chief Yip-Yip
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, EXALTED },	-- The Tillers
				}),
				q(30521, {	-- Haohan's Vote I: Bungalow Break-In
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, REVERED + 16800 },	-- The Tillers
				}),
				q(30522, {	-- Haohan's Vote II: The Real Culprits
					["sourceQuest"] = 30521,	-- Haohan's Vote I: Bungalow Break-In
					["qg"] = 57402,	-- Haohan Mudclaw
					["coord"] = { 44.7, 34.1, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/8 Suspicious Footprints found
							["provider"] = { "n", 59505 },	-- Suspicious Footprint
							["coord"] = { 38.0, 43.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30525, {	-- Haohan's Vote III: Pure Poison
					["sourceQuest"] = 30522,	-- Haohan's Vote II: The Real Culprits
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Bloodbloom
							["providers"] = {
								{ "i",  80140 },	-- Bloodbloom (QI!)
								{ "o", 210968 },	-- Bloodbloom
							},
							["coord"] = { 44.7, 20.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/1 Cave Lily
							["providers"] = {
								{ "i",  80141 },	-- Cave Lily (QI!)
								{ "o", 210969 },	-- Cave Lily
							},
							["coord"] = { 48.4, 18.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/1 Ghostcap
							["providers"] = {
								{ "i",  80142 },	-- Ghostcap (QI!)
								{ "o", 210970 },	-- Ghostcap
							},
							["coord"] = { 39.3, 18.2, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(4, {	-- 0/1 Violet Lichen
							["providers"] = {
								{ "i",  80143 },	-- Violet Lichen (QI!)
								{ "o", 210971 },	-- Violet Lichen
							},
							["coord"] = { 42.5, 22.5, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30527, {	-- Haohan's Vote IV: Melons For Felons
					["sourceQuest"] = 30525,	-- Haohan's Vote III: Pure Poison
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/4 Plant Striped Melons
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 89329, 4 } },	-- 4x Striped Melon Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/4 Harvest Striped Melons
							["providers"] = {
								{ "n", 66129 },	-- Ripe Striped Melon
								{ "n", 66123 },	-- Bursting Striped Melon
								{ "n", 66128 },	-- Plump Striped Melon
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/20 Striped Melon
							["cost"] = { { "i", 74848, 20 } },	-- 20x Striped Melon
						}),
					},
				}),
				q(30528, {	-- Haohan's Vote V: Chief Yip-Yip
					["sourceQuest"] = 30527,	-- Haohan's Vote IV: Melons For Felons
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Chief Yip-Yip slain
							["provider"] = { "n", 59567 },	-- Chief Yip-Yip
							["coord"] = { 32.4, 20.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(32682, {	-- Inherit the Earth
					["description"] = "Must also have a fully unlocked farm.",
					["sourceQuest"] = 30529,	-- Growing the Farm III: The Mossy Boulder
					["qg"] = 64597,	-- Nana Mudclaw
					["coord"] = { 54.6, 47.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, EXALTED },	-- The Tillers, Exalted.
				}),
				q(31313, {	-- Just A Folk Story
					["sourceQuest"] = 31312,	-- The Old Map
					["qg"] = 58705,	-- Fish Fellreed
					["coord"] = { 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- Speak to Grainsorter Pei
							["provider"] = { "n", 64312 },	-- Grainsorter Pei
							["coord"] = { 54.2, 44.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- Speak to Stonecarver Mac
							["provider"] = { "n", 64315 },	-- Stonecarver Mac
							["coord"] = { 55.2, 47.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- Speak to Mama Min
							["provider"] = { "n", 64313 },	-- Mama Min
							["coord"] = { 56.2, 45.2, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(4, {	-- Speak to Old Man Whitewhiskers
							["provider"] = { "n", 64327 },	-- Old Man Whitewhiskers
							["coord"] = { 54.6, 47.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30535, {	-- Learn and Grow I: Seeds
					["sourceQuest"] = 30252,	-- A Helping Hand
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(2, {	-- 0/1 Packet of Green Cabbage Seeds
							["provider"] = { "i", 80295 },	-- Packet of Green Cabbage Seeds (QI!)
							["coord"] = { 52.8, 52.0, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 58718,	-- Merchant Greenfield
						}),
					},
				}),
				q(30254, {	-- Learn and Grow II: Tilling and Planting
					["sourceQuest"] = 30535,	-- Learn and Grow I: Seeds
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/2 Soil Tilled
							["provider"] = { "n", 59985 },	-- Untilled Soil
							["coord"] = { 52.0, 48.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/2 EZ-Gro Green Cabbage Seeds Planted
							["provider"] = { "i", 80302 },	-- EZ-Gro Green Cabbage Seeds (QI!)
							["coord"] = { 52.0, 48.4, VALLEY_OF_THE_FOUR_WINDS },
							["crs"] = { 59990 },	-- Tilled Soil
						}),
					},
				}),
				q(30255, {	-- Learn and Grow III: Tending Crops
					["sourceQuest"] = 30254,	-- Learn and Grow II: Tilling and Planting
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/2 Parched EZ-Gro Green Cabbage watered
							["providers"] = {
								{ "i", 59987 },	-- Parched EZ-Gro Green Cabbage
								{ "i", 79104 },	-- Rusty Watering Can
							},
							["coord"] = { 52.0, 48.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30256, {	-- Learn and Grow IV: Harvesting
					["sourceQuest"] = 30255,	-- Learn and Grow III: Tending Crops
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/2 EZ-Gro Green Cabbage
							["provider"] = { "i", 80314 },	-- EZ-Gro Green Cabbage (QI!)
							["coord"] = { 52.0, 48.4, VALLEY_OF_THE_FOUR_WINDS },
							["crs"] = {
								59833,	-- Ripe EZ-Gro Green Cabbage
								59991,	-- Growing EZ-Gro Green Cabbage
							},
						}),
						ach(7292),	-- Green Acres
					},
				}),
				q(30257, {	-- Learn and Grow V: Halfhill Market
					["sourceQuest"] = 30256,	-- Learn and Grow IV: Harvesting
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Marsh Lily
							["providers"] = {
								{ "i",  79269 },	-- Marsh Lily (QI!)
								{ "o", 210582 },	-- Dark Soil
							},
							["coord"] = { 52.8, 48.1, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31945, {	-- Learn and Grow VI: Gina's Vote
					["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
					["qg"] = 58706,	-- Gina Mudclaw <Tillers Quartermaster>
					["coord"] = { 53.2, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Plant Scallion Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 80591, 1 } },	-- 1x Scallion Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/1 Harvest Ripe Scallions
							["providers"] = {
								{ "n", 63165 },	-- Ripe Scallions
								{ "n", 63160 },	-- Bursting Scallions
								{ "n", 63164 },	-- Plump Scallions
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/5 Scallions
							["cost"] = { { "i", 74843, 5 } },	-- 5x Scallions
						}),
					},
				}),
				-- Wouter NOTE: part of a quest chain to get a pet in DF, but that's not relevant for Classic yet
				-- #if ANYCLASSIC
				-- #if BEFORE DF
				q(30526, {	-- Lost and Lonely
					["provider"] = { "n", 59533 },	-- Lost Dog
					["coord"] = { 42.4, 50.2, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, REVERED+600 },	-- The Tillers, 12600 Rep
					["timeline"] = { ADDED_5_0_4 },
					["groups"] = {
						i(80144),	-- Tasty T-Bone (QI!)
					},
				}),
				-- #endif
				-- #endif
				q(31338, {	-- Lost Sheepie
					["qg"] = 58709,	-- Chee Chee
					["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_CHEE_CHEE, 3 },	-- Buddy
					["groups"] = {
						objective(1, {	-- 0/1 Sheepie
							["providers"] = {
								{ "i", 86446 },	-- Sheepie (QI!)
								{ "n", 64385 },	-- Sheepie
							},
							["coord"] = { 34.91, 38.34, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31339, {	-- Lost Sheepie... Again
					["sourceQuest"] = 31338,	-- Lost Sheepie
					["qg"] = 58709,	-- Chee Chee
					["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_CHEE_CHEE, 4 },	-- Friend
					["groups"] = {
						objective(1, {	-- 0/1 Sheepie
							["providers"] = {
								{ "i", 86446 },	-- Sheepie (QI!)
								{ "n", 64386 },	-- Sheepie
							},
							["coord"] = { 35.0, 38.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31531, {	-- Mission: Aerial Threat
					["sourceQuest"] = 31529,	-- Mission: Culling The Vermin
					["qg"] = 58708,	-- Sho
					["coord"] = { 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_SHO, 4 },	-- Friend
					["groups"] = {
						objective(1, {	-- 0/12 Cliff Kite slain
							["provider"] = { "n", 59528 },	-- Cliff Kite
							["coord"] = { 45.4, 18.2, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31529, {	-- Mission: Culling The Vermin
					["qg"] = 58708,	-- Sho
					["coord"] = { 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_SHO, 3 },	-- Buddy
					["groups"] = {
						objective(1, {	-- 0/12 Springtail vermin slain
							["providers"] = {
								{ "n", 59514 },	-- Springtail Burrower
								{ "n", 59515 },	-- Springtail Littlewhisker
								{ "n", 59513 },	-- Springtail Trapper
							},
							["coord"] = { 44.0, 22.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31532, {	-- Mission: Predator of the Cliffs
					["sourceQuest"] = 31531,	-- Mission: Aerial Threat
					["qg"] = 58708,	-- Sho
					["coord"] = { 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_SHO, 5 },	-- Good Friend
					["groups"] = {
						objective(1, {	-- 0/1 Great Cliff Hawk slain
							["provider"] = { "n", 64937 },	-- Great Cliff Hawk
							["coord"] = { 46.6, 16.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30258, {	-- Mung-Mung's Vote I: A Hozen's Problem
					["sourceQuest"] = 31945,	-- Learn and Grow VI: Gina's Vote
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(30259, {	-- Mung-Mung's Vote II: Rotten to the Core
					["sourceQuest"] = 30258,	-- Mung-Mung's Vote I: A Hozen's Problem
					["qg"] = 57401,	-- Mung-Mung
					["coord"] = { 44.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/10 Partially Chewed Carrot
							["providers"] = {
								{ "i",  80116 },	-- Partially Chewed Carrot (QI!)
								{ "o", 210942 },	-- Partially Chewed Carrot
								{ "o", 210938 },	-- Partially Chewed Carrot
							},
							["coord"] = { 43.2, 39.4, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31946, {	-- Mung-Mung's Vote III: The Great Carrot Caper
					["sourceQuest"] = 30258,	-- Mung-Mung's Vote II: Rotten to the Core
					["qg"] = 57401,	-- Mung-Mung
					["coord"] = { 44.2, 34.2, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/2 Plant Juicycrunch Carrot Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 80590, 2 } },	-- 2x Juicycrunch Carrot Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/2 Harvest Juicycrunch Carrots
							["providers"] = {
								{ "n", 63154 },	-- Ripe Juicycrunch Carrot
								{ "n", 63158 },	-- Bursting Juicycrunch Carrot
								{ "n", 63156 },	-- Plump Juicycrunch Carrot
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/10 Juicycrunch Carrot
							["cost"] = { { "i", 74841, 10 } },	-- 10x Juicycrunch Carrot
						}),
					},
				}),
				q(30519, {	-- Nana's Vote I: Nana's Secret Recipe
					["qg"] = 58646,	-- Farmer Yoon
					["coord"] = { 52.3, 48.8, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_THE_TILLERS, REVERED + 8400 },	-- The Tillers
				}),
				q(31948, {	-- Nana's Vote II: The Sacred Springs
					["sourceQuest"] = 30519,	-- Nana's Vote I: Nana's Secret Recipe
					["qg"] = 64597,	-- Nana Mudclaw
					["coord"] = { 54.7, 47.0, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Thousand-Year Water
							["providers"] = {
								{ "i", 89903 },	-- Thousand-Year Water (QI!)
								{ "i", 89902 },	-- Empty Pitcher (QI!)
							},
							["coord"] = { 56.6, 22.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31949, {	-- Nana's Vote III: Witchberry Julep
					["sourceQuest"] = 31948,	-- Nana's Vote II: The Sacred Springs
					["qg"] = 64597,	-- Nana Mudclaw
					["coord"] = { 54.7, 47.0, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/3 Plant Witchberry Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 89326, 3 } },	-- 3x Witchberry Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/3 Harvest Witchberries
							["providers"] = {
								{ "n", 66085 },	-- Ripe Witchberry
								{ "n", 66080 },	-- Bursting Witchberry
								{ "n", 66084 },	-- Plump Witchberry
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- 0/15 Witchberries
							["cost"] = { { "i", 74846, 15 } },	-- 15x Witchberries
						}),
					},
				}),
				q(31340, {	-- Oh Sheepie...
					["sourceQuest"] = 31339,	-- Lost Sheepie... Again
					["qg"] = 58709,	-- Chee Chee
					["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_CHEE_CHEE, 5 },	-- Good Friend
					["groups"] = {
						objective(1, {	-- Sheepie found
							["provider"] = { "n", 64391 },	-- Sheepie
							["coord"] = { 30.2, 43.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(31314, {	-- Old Man Thistle's Treasure
					["sourceQuest"] = 31313,	-- Just a Folk Story
					["qg"] = 58705,	-- Fish Fellreed
					["coord"] = { 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						i(86428, {	-- Old Man Thistle's Treasure
							["description"] = "Contains a number of Pandarian rare quality Gems.",
						}),
					},
				}),
				applyclassicphase(MOP_PHASE_LANDFALL, q(32198, {	-- One Magical, Flying Kingdom's Trash...
					["description"] = "Available only on days where Barnaby Fletcher is in Halfhill.",
					["sourceQuest"] = 32189,	-- A Shabby New Face
					["qg"] = 67565,	-- Barnaby Fletcher
					["coord"] = { 53.2, 51.4, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_1_0 },
					["groups"] = {
						i(91806),	-- Unstable Portal Shard
					},
				})),
				q(31938, {	-- The "Earth-Slasher" Master Plow
					["sourceQuest"] = 30529,	-- Growing the Farm III: The Mossy Boulder
					["provider"] = { "i", 89814 },	-- "Earth-Slasher" Master Plow
					["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(31936, {	-- The "Jinyu Princess" Irrigation System
					["description"] = "You never have to loot a Rusty Watering Can ever again!",
					["sourceQuest"] = 30516,	-- Growing the Farm I: A Little Problem
					["providers"] = {
						{ "i",  89812 },	-- "Jinyu Princess" Irrigation System
						{ "o", 215135 },	-- Sprinkler
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(31534, {	-- The Beginner's Brew
					["qg"] = 58647,	-- Ella
					["coord"] = { 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["minReputation"] = { FACTION_ELLA, 3 },	-- Buddy
					["groups"] = {
						objective(1, {	-- 0/1 Sweet Lakemelon
							["provider"] = { "i", 87554 },	-- Sweet Lakemelon (QI!)
							["coords"] = {
								{ 53.0, 51.7, VALLEY_OF_THE_FOUR_WINDS },
								{ 44.6, 34.0, VALLEY_OF_THE_FOUR_WINDS },
							},
							["cr"] = 57402,	-- Haohan Mudclaw
						}),
						objective(2, {	-- 0/1 Fuzzy Peach
							["provider"] = { "i", 87555 },	-- Fuzzy Peach (QI!)
							["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 58706,	-- Gina Mudclaw
						}),
						objective(3, {	-- 0/1 Black Cherries
							["provider"] = { "i", 87556 },	-- Black Cherries (QI!)
							["coords"] = {
								{ 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
								{ 41.6, 30.0, VALLEY_OF_THE_FOUR_WINDS },
							},
							["cr"] = 58705,	-- Fish Fellreed
						}),
						objective(4, {	-- 0/1 Red Radish
							["provider"] = { "i", 87553 },	-- Red Radish (QI!)
							["coords"] = {
								{ 48.3, 33.9, VALLEY_OF_THE_FOUR_WINDS },
								{ 48.2, 33.8, VALLEY_OF_THE_FOUR_WINDS },
							},
							["cr"] = 57298,	-- Farmer Fung
						}),
					},
				}),
				q(31315, {	-- The Heartland Legacy
					["sourceQuest"] = 31314,	-- Old Man Thistle's Treasure
					["providers"] = {
						{ "o", 213767 },	-- Hidden Treasure
						{ "i",  86421 },	-- Old Man Thistle's Almanac
					},
					["coord"] = { 31.5, 53.3, VALLEY_OF_THE_FOUR_WINDS_CAVERN_OF_ENDLESS_ECHOES },
					["groups"] = {
						ach(7296),	-- Ain't Lost No More
					},
				}),
				q(31312, {	-- The Old Map
					["description"] = "Requires a reputation level of Exalted with The Tillers and Best Friend with all Halfhill farmers to drop.",
					["provider"] = { "i", 86404 },	-- Old Map
					["minReputation"] = { FACTION_THE_TILLERS, EXALTED },	-- The Tillers
					["crs"] = { 59639 },	-- Enormous Cattail Grouper
				}),
				-- Wouter TODO: check these quests
				q(31372, {	-- The Tillers (A)
					["qg"] = 64036,	-- Tang Ironhoe
					["coord"] = { 87.0, 60.8, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(31374, {	-- The Tillers (H)
					["qg"] = 64011,	-- Farmhand Dooka
					["coord"] = { 60.4, 22.8, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(31326, {	-- Tina's Tasteful Tiara
					["provider"] = { "i", 86434 },	-- Tasteful Tiara
					["minReputation"] = { FACTION_TINA_MUDCLAW, 3 },	-- Buddy
					["crs"] = {
						59120,	-- Kunzen Rockflinger
						59126,	-- Jokka-Jokka
						59128,	-- Jim-Jim
						59130,	-- Teeku
						59127,	-- Kon-Kon
						59129,	-- Maaka
						59125,	-- Kunzen Soupmaster
						59123,	-- Kunzen Ritualist
						59134,	-- Yammo
						59121,	-- Kunzen Hunter
						59133,	-- Buk-Buk
						59131,	-- Lor-Lor
						59135,	-- Bimba
						59124,	-- Kunzen Collector
						59132,	-- Rit-Rit
						59119,	-- Kunzen Ravager
						59122,	-- Kunzen Herdskeeper
					},
				}),
			}),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Farmer Yoon
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58646,	-- Farmer Yoon
				["coord"] = { 52.2, 48.8, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_THE_TILLERS, EXALTED },	-- The Tillers, Exalted.
				["isDaily"] = true,
			}, {
				q(31672, {	-- A Pumpkin-y Perfume
					objective(1, {	-- Plant Mogu Pumpkin Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80592, 1 } },	-- 1x Mogu Pumpkin Seeds
					}),
				}),
				q(31942, {	-- It's Melon Time
					objective(1, {	-- Plant Striped Melon Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 89329, 1 } },	-- 1x Striped Melon Seeds
					}),
				}),
				q(31673, {	-- Red Blossom Leeks, You Make the Croc-in' World Go Down
					objective(1, {	-- Plant Red Blossom Leek Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80593, 1 } },	-- 1x Red Blossom Leek Seeds
					}),
				}),
				q(30337, {	-- Simian Sabotage
					objective(1, {	-- Stolen weapons exploded
						["providers"] = {
							{ "i", 79885 },	-- Barrel of Fireworks (QI!)
							-- { "o",  },	-- Pile of Stolen Weapons
						},
						-- ["coord"] = { , VALLEY_OF_THE_FOUR_WINDS },
					}),
					objective(2, {	-- Stolen tools exploded
						["providers"] = {
							{ "i", 79885 },	-- Barrel of Fireworks (QI!)
							-- { "o",  },	-- Pile of Stolen Tools
						},
						-- ["coord"] = { , VALLEY_OF_THE_FOUR_WINDS },
					}),
					objective(3, {	-- Stolen beer exploded
						["providers"] = {
							{ "i", 79885 },	-- Barrel of Fireworks (QI!)
							-- { "o",  },	-- Pile of Stolen Beer
						},
						-- ["coord"] = { , VALLEY_OF_THE_FOUR_WINDS },
					}),
					objective(4, {	-- Stolen grain exploded
						["providers"] = {
							{ "i", 79885 },	-- Barrel of Fireworks (QI!)
							-- { "o",  },	-- Pile of Stolen Grain
						},
						-- ["coord"] = { , VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				q(31941, {	-- Squash Those Foul Odors
					objective(1, {	-- Plant Jade Squash Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 89328, 1 } },	-- 1x Jade Squash Seeds
					}),
				}),
				q(30335, {	-- Stalling the Ravage
					objective(1, {	-- 0/12 Kunzen hozen slain
						["providers"] = {
							{ "n", 59119 },	-- Kunzen Ravager
							{ "n", 59123 },	-- Kunzen Ritualist
							{ "n", 59120 },	-- Kunzen Rockflinger
							{ "n", 59124 },	-- Kunzen Collector
							{ "n", 59121 },	-- Kunzen Hunter
							{ "n", 59125 },	-- Kunzen Soupmaster
							{ "n", 59122 },	-- Kunzen Herdskeeper
						},
						["coord"] = { 29.8, 33.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				q(30334, {	-- Stealing is Bad... Re-Stealing is OK
					objective(1, {	-- 0/16 Stolen Vegetable
						["providers"] = {
							{ "i",  79824 },	-- Stolen Vegetable (QI!)
							{ "o", 210763 },	-- Stolen Vegetable
							{ "o", 210764 },	-- Stolen Vegetable
							{ "o", 210765 },	-- Stolen Vegetable
							{ "o", 210766 },	-- Stolen Vegetable
							{ "o", 210767 },	-- Stolen Vegetable
							{ "o", 210768 },	-- Stolen Vegetable
							{ "o", 210769 },	-- Stolen Vegetable
						},
						["coord"] = { 33.0, 27.3, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				q(31670, {	-- That Dangling Carrot
					objective(1, {	-- Plant Juicycrunch Carrot Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80590, 1 } },	-- 1x Juicycrunch Carrot Seeds
					}),
				}),
				q(31669, {	-- The Cabbage Test
					objective(1, {	-- Plant Green Cabbage Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 79102, 1 } },	-- 1x Green Cabbage Seeds
					}),
				}),
				q(30336, {	-- The Kunzen Hunter-Chief
					objective(1, {	-- 0/1 Kunzen Hunter-Chief slain
						["providers"] = {
							{ "n", 59126 },	-- Jokka-Jokka <Hunter-Chief>
							{ "n", 59128 },	-- Jim-Jim <Hunter-Chief>
							{ "n", 59127 },	-- Kon-Kon <Hunter-Chief>
							{ "n", 59129 },	-- Maaka <Hunter-Chief>
							{ "n", 59130 },	-- Teeku <Hunter-Chief>
						},
						["coord"] = { 30.8, 48.0, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				q(30333, {	-- The Lesser of Two Evils
					objective(1, {	-- 0/1 Springtail Warren-Mother slain
						["provider"] = { "n", 59516 },	-- Springtail Warren-Mother
						["coord"] = { 48.6, 18.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
				q(31674, {	-- The Pink Turnip Challenge
					objective(1, {	-- Plant Pink Turnip Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80594, 1 } },	-- 1x Pink Turnip Seeds
					}),
				}),
				q(31675, {	-- The White Turnip Treatment
					objective(1, {	-- Plant White Turnip Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80595, 1 } },	-- 1x White Turnip Seeds
					}),
				}),
				q(31943, {	-- Which Berries? Witchberries.
					objective(1, {	-- Plant Witchberry Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 89326, 1 } },	-- 1x Witchberry Seeds
					}),
				}),
				q(31671, {	-- Why Not Scallions?
					objective(1, {	-- Plant Scallion Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80591, 1 } },	-- 1x Scallion Seeds
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Chee Chee
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58709,	-- Chee Chee
				["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_CHEE_CHEE, 6 },	-- Chee Chee, Best Friend.
				["isDaily"] = true,
			}, {
				q(30402, {	-- A Dish for Chee Chee
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						{ 34.4, 46.8, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74647, 5 } },	-- 5x Valley Stir Fry
				}),
				q(30471, {	-- A Gift For Chee Chee
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Authentic Valley Stir Fry
							["provider"] = { "i", 79827 },	-- Authentic Valley Stir Fry (QI!)
							["coord"] = { 33.0, 27.2, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 59124,	-- Kunzen Collector
						}),
					},
				}),
				q(30324, {	-- Not in Chee-Chee's Backyard
					objective(1, {	-- 0/12 Kunzen tribe member slain
						["providers"] = {
							{ "n", 59119 },	-- Kunzen Ravager
							{ "n", 59123 },	-- Kunzen Ritualist
							{ "n", 59120 },	-- Kunzen Rockflinger
							{ "n", 59124 },	-- Kunzen Collector
							{ "n", 59121 },	-- Kunzen Hunter
							{ "n", 59125 },	-- Kunzen Soupmaster
							{ "n", 59122 },	-- Kunzen Herdskeeper
						},
						["coord"] = { 29.8, 33.4, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Ella
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58647,	-- Ella
				["coord"] = { 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_ELLA, 6 },	-- Ella, Best Friend.
				["isDaily"] = true,
			}, {
				q(30386, {	-- A Dish for Ella
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
						{ 31.6, 58.0, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74651, 5 } },	-- 5x Shrimp Dumplings
				}),
				q(30474, {	-- A Gift For Ella
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/5 Spicy Shrimp Dumplings
							["provider"] = { "i", 79871 },	-- Spicy Shrimp Dumplings (QI!)
							["coord"] = { 29.8, 33.4, VALLEY_OF_THE_FOUR_WINDS },
							["crs"] = {
								59120,	-- Kunzen Rockflinger
								59125,	-- Kunzen Soupmaster
								59123,	-- Kunzen Ritualist
								59121,	-- Kunzen Hunter
								59124,	-- Kunzen Collector
								59119,	-- Kunzen Ravager
								59122,	-- Kunzen Herdskeeper
							},
						}),
					},
				}),
				q(30327, {	-- You Have to Burn the Ropes
					objective(1, {	-- 0/6 Rope Burned
						["provider"] = { "o", 210760 },	-- Kunzen Rope
						["coord"] = { 32.3, 35.1, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Farmer Fung
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 57298,	-- Farmer Fung
				["coord"] = { 48.3, 33.9, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_FARMER_FUNG, 6 },	-- Farmer Fung, Best Friend.
				["isDaily"] = true,
			}, {
				q(30421, {	-- A Dish for Farmer Fung
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 48.3, 33.9, VALLEY_OF_THE_FOUR_WINDS },
						{ 48.2, 33.8, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74654, 5 } },	-- 5x Wildfowl Roast
				}),
				q(30475, {	-- A Gift For Fung
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Grilled Plainshawk Leg
							["provider"] = { "i", 80233 },	-- Grilled Plainshawk Leg (QI!)
							["coord"] = { 53.0, 51.4, VALLEY_OF_THE_FOUR_WINDS },
							["cost"] = { { "i", 80232, 1 } },	-- 1x Bloody Plainshawk Leg (QI!)
							["cr"] = 58712,	-- Kol Ironpaw <Master of the Grill>
						}),
						i(80232, {	-- Bloody Plainshawk Leg (QI!)
							["cr"] = 59641,	-- Monstrous Plainshawk
						}),
					},
				}),
				q(30317, {	-- Water, Water Everywhere
					objective(1, {	-- 0/35 Dusty Spots watered
						["provider"] = { "n", 59574 },	-- Dusty Spot
						["coord"] = { 56.46, 50.35, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 60231,	-- Wing Nga <Flight Master>
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Fish Fellreed
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58705,	-- Fish Fellreed
				["coord"] = { 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_FISH_FELLREED, 6 },	-- Fish Fellreed, Best Friend.
				["isDaily"] = true,
			}, {
				q(30427, {	-- A Dish for Fish
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
						{ 41.6, 30.0, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74655, 5 } },	-- 5x Twin Fish Platter
				}),
				q(30473, {	-- A Gift For Fish
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Yak Statuette
							["provider"] = { "i", 79828 },	-- Yak Statuette (QI!)
							["coord"] = { 33.0, 27.2, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 59124,	-- Kunzen Collector
						}),
					},
				}),
				q(30326, {	-- The Kunzen Legend-Chief
					objective(1, {	-- 0/1 Kunzen Legend-Book
						["provider"] = { "i", 79866 },	-- Kunzen Legend-Book (QI!)
						["coord"] = { 31.6, 28.8, VALLEY_OF_THE_FOUR_WINDS },
						["crs"] = {
							59134,	-- Yammo <Legend-Chief>
							59133,	-- Buk-Buk <Legend-Chief>
							59131,	-- Lor-Lor <Legend-Chief>
							59135,	-- Bimba <Legend-Chief>
							59132,	-- Rit-Rit <Legend-Chief>
						},
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Gina Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58706,	-- Gina Mudclaw
				["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_GINA_MUDCLAW, 6 },	-- Gina Mudclaw, Best Friend.
				["isDaily"] = true,
			}, {
				q(30390, {	-- A Dish for Gina
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["cost"] = { { "i", 74644, 5 } },	-- 5x Swirling Mist Soup
				}),
				q(30479, {	-- A Gift For Gina
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Goldenfire Orchid
							["providers"] = {
								{ "i",  80231 },	-- Goldenfire Orchid (QI!)
								{ "o", 211025 },	-- Goldenfire Orchid
							},
							["coords"] = {
								{ 37.9, 38.5, VALLEY_OF_THE_FOUR_WINDS },
								{ 42.5, 41.5, VALLEY_OF_THE_FOUR_WINDS },
								{ 46.5, 48.9, VALLEY_OF_THE_FOUR_WINDS },
							},
						}),
					},
				}),
				q(30322, {	-- Money Matters
					objective(1, {	-- 0/1 Spicemaster Jin Jao's Payment
						["provider"] = { "i", 80213 },	-- Spicemaster Jin Jao's Payment (QI!)
						["coord"] = { 56.6, 47.0, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 59581,	-- Spicemaster Jin Jao
					}),
					objective(2, {	-- 0/1 Trader Jambeezi's Payment
						["provider"] = { "i", 80214 },	-- Trader Jambeezi's Payment (QI!)
						["coord"] = { 56.2, 47.0, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 59583,	-- Trader Jambeezi <Adventuring Supplies>
					}),
					objective(3, {	-- 0/1 Innkeeper Lei Lan's Payment
						["provider"] = { "i", 80215 },	-- Innkeeper Lei Lan's Payment (QI!)
						["coord"] = { 55.2, 50.6, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 59582,	-- Innkeeper Lei Lan
					}),
					objective(4, {	-- 0/1 Lolo Lio's Payment
						["provider"] = { "i", 80216 },	-- Lolo Lio's Payment (QI!)
						["coord"] = { 55.6, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 59585,	-- Lolo Lio
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Haohan Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 57402,	-- Haohan Mudclaw
				["coord"] = { 53.0, 51.7, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_HAOHAN_MUDCLAW, 6 },	-- Haohan Mudclaw, Best Friend.
				["isDaily"] = true,
			}, {
				q(30414, {	-- A Dish for Haohan
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.0, 51.7, VALLEY_OF_THE_FOUR_WINDS },
						{ 44.6, 34.0, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74642, 5 } },	-- 5x Charbroiled Tiger Steak
				}),
				q(30477, {	-- A Gift For Haohan
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Enormous Cattail Grouper Tooth
							["provider"] = { "i", 80228 },	-- Enormous Cattail Grouper Tooth (QI!)
							["coord"] = { 43.6, 29.6, VALLEY_OF_THE_FOUR_WINDS },
							["cr"] = 59639,	-- Enormous Cattail Grouper
						}),
					},
				}),
				q(30319, {	-- Pest Problems
					objective(1, {	-- 0/25 Black-Nose Marmot
						["provider"] = { "n", 59530 },	-- Black-Nose Marmot
						["coord"] = { 39.6, 45.8, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Jogu the Drunk
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58710,	-- Jogu the Drunk
				["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_JOGU_THE_DRUNK, 6 },	-- Jogu the Drunk, Best Friend.
				["isDaily"] = true,
			}, {
				q(30439, {	-- A Dish for Jogu
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["cost"] = { { "i", 74643, 5 } },	-- 5x Sauteed Carrots
				}),
				q(30478, {	-- A Gift For Jogu
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Apple-Berry Hooch
							["provider"] = { "i", 80236 },	-- Apple-Berry Hooch (QI!)
							["coord"] = { 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
							["cost"] = {
								{ "i", 80234, 8 },	-- 8x Yoon's Apple
								{ "i", 80235, 50 },	-- 50x Yoon's Craneberry
							},
							["cr"] = 58717,	-- Bobo Ironpaw <Master of the Brew>
						}),
						o(211020, {	-- Yoon's Apples
							["coord"] = { 52.7, 47.9, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = { i(80234) },	-- Yoon's Apple (QI!)
						}),
						o(211022, {	-- Yoon's Craneberries
							["coord"] = { 52.8, 47.9, VALLEY_OF_THE_FOUR_WINDS },
							["groups"] = { i(80235) },	-- Yoon's Craneberry (QI!)
						}),
					},
				}),
				q(30321, {	-- Weed War II
					objective(1, {	-- 0/100 Weeds pulled
						["providers"] = {
							{ "n", 57308 },	-- Nasty Weed
							{ "n", 57306 },	-- Ugly Weed
						},
						["coord"] = { 38.6, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Old Hillpaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58707,	-- Old Hillpaw
				["coord"] = { 53.1, 51.9, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_OLD_HILLPAW, 6 },	-- Old Hillpaw, Best Friend.
				["isDaily"] = true,
			}, {
				q(30396, {	-- A Dish for Old Hillpaw
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.1, 51.9, VALLEY_OF_THE_FOUR_WINDS },
						{ 31.0, 53.0, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74649, 5 } },	-- 5x Braised Turtle
				}),
				q(30476, {	-- A Gift For Old Hillpaw
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Blue Freshwater Pearl
							["providers"] = {
								{ "i",  80229 },	-- Blue Freshwater Pearl (QI!)
								{ "o", 211021 },	-- Freshwater Oyster
							},
							["coord"] = { 43.2, 28.0, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30318, {	-- Chasing the Chicken
					objective(1, {	-- 0/1 Old Hillpaw's Prize Chicken
						["provider"] = { "i", 80223 },	-- Old Hillpaw's Prize Chicken (QI!)
						["coord"] = { 32.4, 51.2, VALLEY_OF_THE_FOUR_WINDS },
						["cr"] = 58918,	-- Hillpaw's Chicken
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Sho
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58708,	-- Sho
				["coord"] = { 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_SHO, 6 },	-- Sho, Best Friend.
				["isDaily"] = true,
			}, {
				q(30408, {	-- A Dish for Sho
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
						{ 29.6, 30.6, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74645, 5 } },	-- 5x Eternal Blossom Fish
				}),
				q(30472, {	-- A Gift For Sho
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Yu-Ping Soup
							["providers"] = {
								{ "i",  79870 },	-- Yu-Ping Soup (QI!)
								{ "o", 210873 },	-- Yu-Ping Soup Cauldron
							},
							["coord"] = { 29.7, 34.5, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(30325, {	-- Where It Counts
					objective(1, {	-- 0/8 Kunzen Ritual Candle thrown
						["provider"] = { "o", 210955 },	-- Kunzen Ritual Candle
						["coord"] = { 29.8, 33.9, VALLEY_OF_THE_FOUR_WINDS },
					}),
					objective(2, {	-- 0/4 Blazing Ember kicked
						["provider"] = { "o", 210890 },	-- Blazing Ember
						["coord"] = { 29.8, 34.3, VALLEY_OF_THE_FOUR_WINDS },
					}),
					objective(3, {	-- 0/1 Kunzen Ritualist slain
						["provider"] = { "n", 59123 },	-- Kunzen Ritualist
						["coord"] = { 30.0, 35.6, VALLEY_OF_THE_FOUR_WINDS },
					}),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Daily Quests: Tina Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58761,	-- Tina Mudclaw
				["coord"] = { 53.0, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_TINA_MUDCLAW, 6 },	-- Tina Mudclaw, Best Friend.
				["isDaily"] = true,
			}, {
				q(30433, {	-- A Dish for Tina
					["description"] = "This quest becomes available when you have the food in your inventory.",
					["coords"] = {
						{ 53.0, 51.8, VALLEY_OF_THE_FOUR_WINDS },
						{ 45.0, 33.8, VALLEY_OF_THE_FOUR_WINDS },
					},
					["cost"] = { { "i", 74652, 5 } },	-- 5x Fire Spirit Salmon
				}),
				q(30470, {	-- A Gift For Tina
					["qg"] = 64464,	-- Andi
					["coord"] = { 52.7, 50.4, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						objective(1, {	-- 0/1 Uncut Chrysoberyl
							["providers"] = {
								{ "i",  80134 },	-- Uncut Chrysoberyl (QI!)
								{ "o", 210958 },	-- Chrysoberyl Outcropping
								{ "o", 210959 },	-- Chrysoberyl Outcropping
								{ "o", 210960 },	-- Chrysoberyl Outcropping
							},
							["coords"] = {
								{ 38.9, 16.6, VALLEY_OF_THE_FOUR_WINDS },
								{ 45.2, 19.5, VALLEY_OF_THE_FOUR_WINDS },
								{ 48.9, 19.2, VALLEY_OF_THE_FOUR_WINDS },
							},
						}),
					},
				}),
				q(30323, {	-- They Don't Even Wear Them
					objective(1, {	-- 0/1 Stolen Circlet
						["provider"] = { "i", 80138 },	-- Stolen Circlet (QI!)
						["coords"] = {
							{ 40.0, 20.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 44.8, 23.2, VALLEY_OF_THE_FOUR_WINDS },
							{ 47.6, 19.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["crs"] = {
							59515,	-- Springtail Littlewhisker
							59514,	-- Springtail Burrower
							59513,	-- Springtail Trapper
						},
					}),
					objective(2, {	-- 0/1 Ransacked Ring
						["provider"] = { "i", 80137 },	-- Ransacked Ring (QI!)
						["coords"] = {
							{ 40.0, 20.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 44.8, 23.2, VALLEY_OF_THE_FOUR_WINDS },
							{ 47.6, 19.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["crs"] = {
							59515,	-- Springtail Littlewhisker
							59514,	-- Springtail Burrower
							59513,	-- Springtail Trapper
						},
					}),
					objective(3, {	-- 0/1 Burglarized Bracelet
						["provider"] = { "i", 80139 },	-- Burglarized Bracelet (QI!)
						["coords"] = {
							{ 40.0, 20.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 44.8, 23.2, VALLEY_OF_THE_FOUR_WINDS },
							{ 47.6, 19.8, VALLEY_OF_THE_FOUR_WINDS },
						},
						["crs"] = {
							59515,	-- Springtail Littlewhisker
							59514,	-- Springtail Burrower
							59513,	-- Springtail Trapper
						},
					}),
				}),
			})),
			n(QUESTS, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, sharedData({	-- Work Order Daily Quests
				["sourceQuest"] = 32682,	-- Inherit the Earth
				["provider"] = { "o", 218750 },	-- Work Orders
				["coord"] = { 52.3, 48.7, VALLEY_OF_THE_FOUR_WINDS },
				["timeline"] = { ADDED_5_2_0 },
				["isDaily"] = true,
			}, {
				q(32642, {	-- Work Order: Dominance Offensive I
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Plant Red Blossom Leek Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 80593, 8 } },	-- 8x Red Blossom Leek Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(32643, {	-- Work Order: Dominance Offensive II
					["sourceQuest"] = 32642,	-- Work Order: Dominance Offensive I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_DOMINANCE_OFFENSIVE, EXALTED },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Red Blossom Leeks
							["providers"] = {
								{ "n", 63229 },	-- Ripe Red Blossom Leek
								{ "n", 63223 },	-- Bursting Red Blossom Leek
								{ "n", 63228 },	-- Plump Red Blossom Leek
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/40 Red Blossom Leek
							["cost"] = { { "i", 74844, 40 } },	-- 40x Red Blossom Leek
						}),
					},
				}),
				q(32944, {	-- Work Order: Kirin Tor Offensive I
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Plant Juicycrunch Carrot Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 80590, 8 } },	-- 8x Juicycrunch Carrot Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(32945, {	-- Work Order: Kirin Tor Offensive II
					["sourceQuest"] = 32944,	-- Work Order: Kirin Tor Offensive I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_KIRIN_TOR_OFFENSIVE, EXALTED },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Juicycrunch Carrot
							["providers"] = {
								{ "n", 63154 },	-- Ripe Juicycrunch Carrot
								{ "n", 63158 },	-- Bursting Juicycrunch Carrot
								{ "n", 63156 },	-- Plump Juicycrunch Carrot
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/40 Juicycrunch Carrot
							["cost"] = { { "i", 74841, 40 } },	-- 40x Juicycrunch Carrot
						}),
					},
				}),
				q(32647, {	-- Work Order: Golden Lotus I
					objective(1, {	-- 0/8 Plant White Turnip Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80595, 8 } },	-- 8x White Turnip Seeds
					}),
				}),
				q(32648, {	-- Work Order: Golden Lotus II
					["sourceQuest"] = 32647,	-- Work Order: Golden Lotus I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED },
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe White Turnips
							["providers"] = {
								{ "n", 63265 },	-- Ripe White Turnip
								{ "n", 63260 },	-- Bursting White Turnip
								{ "n", 63264 },	-- Plump White Turnip
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/40 White Turnips
							["cost"] = { { "i", 74850, 40 } },	-- 40x White Turnip
						}),
					},
				}),
				q(32645, {	-- Work Order: Operation: Shieldwall I
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Plant Witchberry Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 89326, 8 } },	-- 8x Witchberry Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(32646, {	-- Work Order: Operation: Shieldwall II
					["sourceQuest"] = 32645,	-- Work Order: Operation: Shieldwall I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_OPERATION_SHIELDWALL, EXALTED },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Witchberries
							["providers"] = {
								{ "n", 66085 },	-- Ripe Witchberries
								{ "n", 66080 },	-- Bursting Witchberries
								{ "n", 66084 },	-- Plump Witchberries
							},
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(2, {	-- 0/40 Witchberries
							["cost"] = { { "i", 74846, 40 } },	-- 40x Witchberries
						}),
					},
				}),
				q(32649, {	-- Work Order: Shado-Pan I
					objective(1, {	-- 0/8 Plant Green Cabbage Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 79102, 8 } },	-- 8x Green Cabbage Seeds
					}),
				}),
				q(32650, {	-- Work Order: Shado-Pan II
					["sourceQuest"] = 32649,	-- Work Order: Shado-Pan I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_SHADO_PAN, EXALTED },
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Green Cabbages
							["providers"] = {
								{ "n", 58567 },	-- Ripe Green Cabbage
								{ "n", 63157 },	-- Bursting Green Cabbage
								{ "n", 60113 },	-- Plump Green Cabbage
							},
						}),
						objective(2, {	-- 0/40 Green Cabbages
							["cost"] = { { "i", 74840, 40 } },	-- 40x Green Cabbage
						}),
					},
				}),
				q(32942, {	-- Work Order: Sunreaver Onslaught I
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Plant Scallion Seeds
							["providers"] = {
								{ "n", 59990 },	-- Tilled Soil
							},
							["cost"] = { { "i", 80591, 8 } },	-- 8x Scallion Seeds
							["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
					},
				}),
				q(32943, {	-- Work Order: Sunreaver Onslaught II
					["sourceQuest"] = 32942,	-- Work Order: Sunreaver Onslaught I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_SUNREAVER_ONSLAUGHT, EXALTED },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Scallions
							["providers"] = {
								{ "n", 63165 },	-- Ripe Scallions
								{ "n", 63160 },	-- Bursting Scallions
								{ "n", 63164 },	-- Plump Scallions
							},
						}),
						objective(2, {	-- 0/40 Scallions
							["cost"] = { { "i", 74843, 40 } },	-- 40x Scallions
						}),
					},
				}),
				q(32653, {	-- Work Order: The August Celestials I
					objective(1, {	-- 0/8 Plant Striped Melon Seeds
						["providers"] = {
							{ "i", 89329 },	-- Striped Melon Seeds
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 89329, 8 } },	-- 8x Striped Melon Seeds
					}),
				}),
				q(32657, {	-- Work Order: The August Celestials II
					["sourceQuest"] = 32653,	-- Work Order: The August Celestials I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_THE_AUGUST_CELESTIALS, EXALTED },
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Striped Melon
							["providers"] = {
								{ "n", 66129 },	-- Ripe Striped Melon
								{ "n", 66123 },	-- Bursting Striped Melon
								{ "n", 66128 },	-- Plump Striped Melon
							},
						}),
						objective(2, {	-- 0/40 Striped Melon
							["cost"] = { { "i", 74848, 40 } },	-- 40x Striped Melon
						}),
					},
				}),
				q(32658, {	-- Work Order: The Klaxxi I
					objective(1, {	-- 0/8 Plant Mogu Pumpkin Seeds
						["providers"] = {
							{ "n", 59990 },	-- Tilled Soil
						},
						["coord"] = { 52.0, 48.6, VALLEY_OF_THE_FOUR_WINDS },
						["cost"] = { { "i", 80592, 8 } },	-- 8x Mogu Pumpkin Seeds
					}),
				}),
				q(32659, {	-- Work Order: The Klaxxi II
					["sourceQuest"] = 32658,	-- Work Order: The Klaxxi I
					["providers"] = {
						{ "o", 218750 },	-- Work Orders
						{ "o", 218765 },	-- Empty Crate
					},
					["coord"] = { 51.7, 48.7, VALLEY_OF_THE_FOUR_WINDS },
					["maxReputation"] = { FACTION_THE_KLAXXI, EXALTED },
					["groups"] = {
						objective(1, {	-- 0/8 Harvest Ripe Mogu Pumpkins
							["providers"] = {
								{ "n", 63185 },	-- Ripe Mogu Pumpkin
								{ "n", 63180 },	-- Bursting Mogu Pumpkin
								{ "n", 63184 },	-- Plump Mogu Pumpkin
							},
						}),
						objective(2, {	-- 0/40 Mogu Pumpkins
							["cost"] = { { "i", 74842, 40 } },	-- 40x Mogu Pumpkin
						}),
					},
				}),
			}))),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Chee Chee
				["qg"] = 58709,	-- Chee Chee
				["coords"] = {
					{ 53.0, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					{ 34.4, 46.8, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_CHEE_CHEE, 6 },	-- Chee Chee, Best Friend.
				["repeatable"] = true,
			}, {
				q(30400, {	-- A Blue Feather for Chee Chee
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30399, {	-- A Jade Cat for Chee Chee
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30398, {	-- A Lovely Apple for Chee Chee
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30401, {	-- A Marsh Lily for Chee Chee
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30397, {	-- A Ruby Shard for Chee Chee
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Ella
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58647,	-- Ella
				["coords"] = {
					{ 53.0, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					{ 31.6, 58.0, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_ELLA, 6 },	-- Ella, Best Friend.
				["repeatable"] = true,
			}, {
				q(30382, {	-- A Blue Feather for Ella
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30381, {	-- A Jade Cat for Ella
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30189, {	-- A Lovely Apple for Ella
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
					["groups"] = {
						i(79320),	-- Half a Lovely Apple
					},
				}),
				q(30383, {	-- A Marsh Lily for Ella
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30160, {	-- A Ruby Shard for Ella
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Farmer Fung
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 57298,	-- Farmer Fung
				["coords"] = {
					{ 48.3, 33.9, VALLEY_OF_THE_FOUR_WINDS },
					{ 48.2, 33.8, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_FARMER_FUNG, 6 },	-- Farmer Fung, Best Friend.
				["repeatable"] = true,
			}, {
				q(30419, {	-- A Blue Feather for Farmer Fung
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30418, {	-- A Jade Cat for Farmer Fung
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30417, {	-- A Lovely Apple for Farmer Fung
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30420, {	-- A Marsh Lily for Farmer Fung
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30416, {	-- A Ruby Shard for Farmer Fung
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Fish Fellreed
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58705,	-- Fish Fellreed
				["coords"] = {
					{ 52.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },
					{ 41.6, 30.0, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_FISH_FELLREED, 6 },	-- Fish Fellreed, Best Friend.
				["repeatable"] = true,
			}, {
				q(30425, {	-- A Blue Feather for Fish
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30424, {	-- A Jade Cat for Fish
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30423, {	-- A Lovely Apple for Fish
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30426, {	-- A Marsh Lily for Fish
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30422, {	-- A Ruby Shard for Fish
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Gina Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58706,	-- Gina Mudclaw
				["coord"] = { 53.2, 51.8, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_GINA_MUDCLAW, 6 },	-- Gina Mudclaw, Best Friend.
				["repeatable"] = true,
			}, {
				q(30388, {	-- A Blue Feather for Gina
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30387, {	-- A Jade Cat for Gina
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30380, {	-- A Lovely Apple for Gina
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30389, {	-- A Marsh Lily for Gina
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30379, {	-- A Ruby Shard for Gina
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Haohan Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 57402,	-- Haohan Mudclaw
				["coords"] = {
					{ 53.0, 51.7, VALLEY_OF_THE_FOUR_WINDS },
					{ 44.6, 34.0, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_HAOHAN_MUDCLAW, 6 },	-- Haohan Mudclaw, Best Friend.
				["repeatable"] = true,
			}, {
				q(30412, {	-- A Blue Feather for Haohan
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30411, {	-- A Jade Cat for Haohan
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30410, {	-- A Lovely Apple for Haohan
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30413, {	-- A Marsh Lily for Haohan
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30409, {	-- A Ruby Shard for Haohan
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Jogu the Drunk
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58710,	-- Jogu the Drunk
				["coord"] = { 53.6, 52.6, VALLEY_OF_THE_FOUR_WINDS },
				["maxReputation"] = { FACTION_JOGU_THE_DRUNK, 6 },	-- Jogu the Drunk, Best Friend.
				["repeatable"] = true,
			}, {
				q(30437, {	-- A Blue Feather for Jogu
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30436, {	-- A Jade Cat for Jogu
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30435, {	-- A Lovely Apple for Jogu
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30438, {	-- A Marsh Lily for Jogu
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30434, {	-- A Ruby Shard for Jogu
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Old Hillpaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58707,	-- Old Hillpaw
				["coords"] = {
					{ 53.1, 51.9, VALLEY_OF_THE_FOUR_WINDS },
					{ 31.0, 53.0, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_OLD_HILLPAW, 6 },	-- Old Hillpaw, Best Friend.
				["repeatable"] = true,
			}, {
				q(30394, {	-- A Blue Feather for Old Hillpaw
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30393, {	-- A Jade Cat for Old Hillpaw
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30392, {	-- A Lovely Apple for Old Hillpaw
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30395, {	-- A Marsh Lily for Old Hillpaw
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30391, {	-- A Ruby Shard for Old Hillpaw
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Sho
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58708,	-- Sho
				["coords"] = {
					{ 53.1, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					{ 29.6, 30.6, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_SHO, 6 },	-- Sho, Best Friend.
				["repeatable"] = true,
			}, {
				q(30406, {	-- A Blue Feather for Sho
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30405, {	-- A Jade Cat for Sho
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30404, {	-- A Lovely Apple for Sho
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
				q(30407, {	-- A Marsh Lily for Sho
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30403, {	-- A Ruby Shard for Sho
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
			})),
			n(QUESTS, sharedData({	-- Tillers Repeatable Quests: Tina Mudclaw
				["sourceQuest"] = 30257,	-- Learn and Grow V: Halfhill Market
				["qg"] = 58761,	-- Tina Mudclaw
				["coords"] = {
					{ 53.0, 51.8, VALLEY_OF_THE_FOUR_WINDS },
					{ 45.0, 33.8, VALLEY_OF_THE_FOUR_WINDS },
				},
				["maxReputation"] = { FACTION_TINA_MUDCLAW, 6 },	-- Tina Mudclaw, Best Friend.
				["repeatable"] = true,
			}, {
				q(30431, {	-- A Blue Feather for Tina
					["cost"] = { { "i", 79265, 1 } },	-- 1x Blue Feather
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30430, {	-- A Jade Cat for Tina
					["cost"] = { { "i", 79266, 1 } },	-- 1x Jade Cat
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30429, {	-- A Lovely Apple for Tina
					["cost"] = { { "i", 79267, 1 } },	-- 1x Lovely Apple
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30432, {	-- A Marsh Lily for Tina
					["cost"] = { { "i", 79268, 1 } },	-- 1x Marsh Lily
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(540),
				}),
				q(30428, {	-- A Ruby Shard for Tina
					["cost"] = { { "i", 79264, 1 } },	-- 1x Ruby Shard
					["OnUpdate"] = FUNCTION_TEMPLATES.GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost(900),
				}),
			})),
			n(TREASURES, {
				o(210565, {	-- Dark Soil
					["description"] = "Can be found all around Pandaria.",
					["coords"] = {
						{ 68.9, 48.6, KUN_LAI_SUMMIT },
						{ 31.8, 69.3, KRASARANG_WILDS },
						{ 65.3, 32.3, THE_JADE_FOREST },
						{ 55.8, 28.4, THE_JADE_FOREST },
						{ 54.6, 54.3, THE_JADE_FOREST },
						{ 48.5, 49.7, VALLEY_OF_THE_FOUR_WINDS },
						{ 50.3, 31.4, VALLEY_OF_THE_FOUR_WINDS },
						{ 43.6, 39.5, VALLEY_OF_THE_FOUR_WINDS },
						{ 33.1, 58.1, VALLEY_OF_THE_FOUR_WINDS },
						{ 31.5, 31.9, VALLEY_OF_THE_FOUR_WINDS },
					},
					["maps"] = {
						DREAD_WASTES,
						TOWNLONG_STEPPES,
						VALE_OF_ETERNAL_BLOSSOMS,
					},
					["groups"] = {
						i(79265),	-- Blue Feather
						i(79266),	-- Jade Cat
						i(79267),	-- Lovely Apple
						i(79268),	-- Marsh Lily
						i(79264),	-- Ruby Shard
					},
				}),
				o(215719, {	-- Dented Shovel
					["description"] = "You can use this to uproot planted crops that you don't want, such as for the daily that Yoon gives you to plant more Songbells instead!",
					["coord"] = { 52.0, 48.3, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						i(89880, {	-- Dented Shovel
							["description"] = "You don't need to keep this in your bags.",
						}),
					},
				}),
				o(211330, {	-- Rusty Watering Can
					["coord"] = { 52.1, 48.5, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						i(79104, {	-- Rusty Watering Can
							["description"] = "You don't need to keep this in your bags.",
						}),
					},
				}),
				o(211331, {	-- Vintage Bug Sprayer
					["coord"] = { 52.0, 48.5, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = {
						i(80513, {	-- Vintage Bug Sprayer
							["description"] = "You don't need to keep this in your bags.",
						}),
					},
				}),
			}),
			n(VENDORS, {
				applyclassicphase(MOP_PHASE_LANDFALL, n(67565, {	-- Barnaby Fletcher <Washed-Up Mage>
					["sourceQuest"] = 32198,	-- One Magical, Flying Kingdom's Trash...
					["coord"] = { 53.2, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_1_0 },
					["groups"] = {
						i(91806),	-- Unstable Portal Shard
					},
				})),
				n(58706, {	-- Gina Mudclaw <Tillers Quartermaster>
					["coord"] = { 53.2, 51.6, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = appendGroups(bubbleDown({
						["minReputation"] = { FACTION_OLD_HILLPAW, 6 },	-- Old Hillpaw, Best Friend.
					}, {
						i(90893),	-- Straw Hat - Cloth
						i(90894),	-- Straw Hat - Leather
						i(90895),	-- Straw Hat - Mail
						i(90896),	-- Straw Hat - Plate
					}), bubbleDownClassicRep(FACTION_THE_TILLERS, {
						{		-- Neutral
							i(89814, {	-- "Earth-Slasher" Master Plow
								["cost"] = 800000,	-- 80g
							}),
							i(89812, {	-- "Jinyu Princess" Irrigation System
								["cost"] = 800000,	-- 80g
							}),
							i(89813, {	-- "Thunder King" Pest Repellers
								["cost"] = 800000,	-- 80g
							}),
							i(248663, {	-- Wooden Doghouse (DECOR!)
								["sourceQuest"] = 30526,	-- Lost and Lonely
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3000000,	-- 300g
							}),
						}, {	-- Friendly
							i(245508, {	-- Pandaren Cooking Table (DECOR!)
								["minReputation"] = { FACTION_TINA_MUDCLAW, 5 },	-- Good Friend
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 10000000,	-- 1,000g
							}),
							i(247670, {	-- Pandaren Pantry (DECOR!)
								["minReputation"] = { FACTION_ELLA, 5 },	-- Good Friend
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 10000000,	-- 1,000g
							}),
							i(247734, {	-- Paw'don Well (DECOR!)
								["minReputation"] = { FACTION_FARMER_FUNG, 5 },	-- Good Friend
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 8000000,	-- 800g
							}),
							i(247737, {	-- Stormstout Brew Keg (DECOR!)
								["minReputation"] = { FACTION_JOGU_THE_DRUNK, 5 },	-- Good Friend
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3000000,	-- 300g
							}),
						}, {	-- Honored
						}, {	-- Revered
							i(93226, {	-- Grand Commendation of the Tillers
								["cost"] = 425000,	-- 42g 50s
							}),
							i(89869, {	-- Pandaren Scarecrow (TOY!)
								["cost"] = 2125000,	-- 212g 50s
							}),
						}, {	-- Exalted
							i(90175, {	-- Gin'Ji Knife Set (TOY!)
								["cost"] = 2125000,	-- 212g 50s
							}),
							i(80914),	-- Mourning Glory
							i(74657, {	-- Recipe: Spicy Salmon (RECIPE!)
								["cost"] = 8500,	-- 85s
							}),
							i(74658, {	-- Recipe: Spicy Vegetable Chips (RECIPE!)
								["cost"] = 8500,	-- 85s
							}),
							i(89391, {	-- Reins of the Black Riding Goat (MOUNT!)
								["cost"] = 12750000,	-- 1,275g
							}),
							i(89362, {	-- Reins of the Brown Riding Goat (MOUNT!)
								["cost"] = 4250000,	-- 425g
							}),
							i(89390, {	-- Reins of the White Riding Goat (MOUNT!)
								["cost"] = 27625000,	-- 2,762g 50s
							}),
							i(89784, {	-- Tillers Tabard
								["cost"] = 85000,	-- 8g 50s
							}),
						},
					})),
				}),
				n(58718, {	-- Merchant Greenfield
					["coord"] = { 52.8, 52.0, VALLEY_OF_THE_FOUR_WINDS },
					["groups"] = bubbleDownClassicRep(FACTION_THE_TILLERS, {
						{		-- Neutral
							i(79102),	-- Green Cabbage Seeds
							i(89328),	-- Jade Squash Seeds
							i(80590),	-- Juicycrunch Carrot Seeds
							i(80592),	-- Mogu Pumpkin Seeds
							i(80594),	-- Pink Turnip Seeds
							i(80593),	-- Red Blossom Leek Seeds
							i(80591),	-- Scallion Seeds
							i(89329),	-- Striped Melon Seeds
							i(80595),	-- White Turnip Seeds
							i(89326),	-- Witchberry Seeds
						}, {	-- Friendly
						}, {	-- Honored
							i(85267),	-- Autumn Blossom Sapling
						}, {	-- Revered
							i(85268),	-- Spring Blossom Sapling
							i(80809),	-- Bag of Green Cabbage Seeds
							i(89848),	-- Bag of Jade Squash Seeds
							i(84782),	-- Bag of Juicycrunch Carrot Seeds
							i(85153),	-- Bag of Mogu Pumpkin Seeds
							i(85162),	-- Bag of Pink Turnip Seeds
							i(85158),	-- Bag of Red Blossom Leek Seeds
							i(84783),	-- Bag of Scallion Seeds
							i(89849),	-- Bag of Striped Melon Seeds
							i(85163),	-- Bag of White Turnip Seeds
							i(89847),	-- Bag of Witchberry Seeds
							i(85216),	-- Enigma Seed
							i(85217),	-- Magebulb Seed
							i(89202),	-- Raptorleaf Seed
							i(85215),	-- Snakeroot Seed
							i(89233),	-- Songbell Seed
							i(89197),	-- Windshear Cactus Seed
						}, {	-- Exalted
							i(85269),	-- Winter Blossom Sapling
							i(95449),	-- Bag of Enigma Seeds
							i(95451),	-- Bag of Magebulb Seeds
							i(95457),	-- Bag of Raptorleaf Seeds
							i(95447),	-- Bag of Snakeroot Seeds
							i(95445),	-- Bag of Songbell Seeds
							i(95454),	-- Bag of Windshear Cactus Seeds
						},
					}),
				}),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_TILLERS, {
		header(HEADERS.Faction, FACTION_CHEE_CHEE, {
			q(31344),	-- Tracking Event: Chee Chee Exalted
			q(30365),	-- Tracking Event: Chee Chee is Farmhand
		}),
		header(HEADERS.Faction, FACTION_ELLA, {
			q(31345),	-- Tracking Event: Ella Exalted
			q(30366),	-- Tracking Event: Ella is Farmhand
		}),
		header(HEADERS.Faction, FACTION_FARMER_FUNG, {
			q(31346),	-- Tracking Event: Farmer Fung Exalted
			q(30370),	-- Tracking Event: Farmer Fung is Farmhand
		}),
		header(HEADERS.Faction, FACTION_FISH_FELLREED, {
			q(31347),	-- Tracking Event: Fish Fellreed Exalted
			q(30372),	-- Tracking Event: Fish Fellreed is Farmhand
		}),
		header(HEADERS.Faction, FACTION_GINA_MUDCLAW, {
			q(31348),	-- Tracking Event: Gina Mudclaw Exalted
			q(30374),	-- Tracking Event: Gina Mudclaw is Farmhand
			n(QUESTS, {
				q(31950),	-- Tracking Quest: Move NPCs to Dais — triggered after turning in "Learn and Grow VI: Gina's Vote" (questID 31945)
			}),
		}),
		header(HEADERS.Faction, FACTION_HAOHAN_MUDCLAW, {
			q(31349),	-- Tracking Event: Haohan Mudclaw Exalted
			q(30369),	-- Tracking Event: Haohan Mudclaw is Farmhand
			n(QUESTS, {
				q(30566),	-- FLAG - Pest Problems Training — triggered after turning in daily quest "Pest Problems" (questID 30319)
			}),
		}),
		header(HEADERS.Faction, FACTION_JOGU_THE_DRUNK, {
			q(31350),	-- Tracking Event: Jogu the Drunk Exalted
			q(30373),	-- Tracking Event: Jogu the Drunk is Farmhand
			n(QUESTS, {
				q(30536),	-- FLAG - Weed War Training — triggered after turning in daily quest "Weed War II" (questID 30321)
			}),
		}),
		header(HEADERS.Faction, FACTION_OLD_HILLPAW, {
			q(31351),	-- Tracking Event: Old Hillpaw Exalted
			q(30368),	-- Tracking Event: Old Hillpaw is Farmhand
		}),
		header(HEADERS.Faction, FACTION_SHO, {
			q(31352),	-- Tracking Event: Sho Exalted
			q(30367),	-- Tracking Event: Sho is Farmhand
		}),
		header(HEADERS.Faction, FACTION_TINA_MUDCLAW, {
			q(31353),	-- Tracking Event: Tina Mudclaw Exalted
			q(30371),	-- Tracking Event: Tina Mudclaw is Farmhand
		}),
		n(QUESTS, {
			q(30531),	-- Tracking Event: Finished First Expansion
			q(30533),	-- Tracking Event: Finished Second Expansion
			q(30574),	-- Tracking Event: Finished Third Expansion
			q(31317),	-- Tracking Event: Found Entrance - triggers during "Old Man Thistle's Treasure" (questID 31314)
			q(31318),	-- Tracking Event: Found Treasure - triggers during "Old Man Thistle's Treasure" (questID 31314)
			q(30530),	-- Tracking Event: Started First Expansion — triggers after turning in "Growing the Farm I: A Little Problem" (questID 30516)
			q(30532),	-- Tracking Event: Started Second Expansion — triggers after turning in "???" (questID ???)	-- TODO
			q(30573),	-- Tracking Event: Started Third Expansion — triggers after turning in "???" (questID ???)	-- TODO
		}),
	}),
})));
