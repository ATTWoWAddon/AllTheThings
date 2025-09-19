-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	header(HEADERS.Spell, 231215, {	-- Sun Darter Hatchling
		["displayID"] = 74529,
		["description"] = "***This secret requires you to have debug mode enabled to see the consumables/steps. To enable debug mode right click the ATT icon on the minimap, navigate to the general tab and check the \"|Cff15abffDebug Mode|r |cFFFFFFFF(Show Everything)|r\" box.*** \n\nIt also requires the battle pet Perky Pug from the Dungeons and Raids achievement Looking For Multitudes.\n\nEnjoy!\n\n!Note If coords are not plotting, you might need to make a standalone item, plot it, and then plot again from the main list.",
		["groups"] = {
			o(9999908, {	-- Step 1: Gather Consumables.
				["description"] = "|cFFFFFFFFSTEP 1:|r Gather the following quantity of consumables:",
				["groups"] = {
					i(38320, {	-- Dire Brew
						["description"] = "Qty:1\n\nObtained from Dark Iron Brewer in BRD.\n\nWalk/fly to BRD, or use the Direbrew's Remote obtained from Brewfest. Once inside the instance, take a left through the gate, and then right through another gate. Go through the door on the left, and click the Shadowforge Lock at the back of the room. Backtrack to the door, go up the ramp and take a left down the hallway. Continue down the hallway, until it opens up. Take the first right into \"The Manufactory\". Head right and through the door at the back of the room, over the bridge and into \"The Grim Guzzler\". Go up the stairs on the right and in the back of the room on the left is the Dark Iron Brewer. Talk to him until he passes out, and loot the Dire Brew that spawns.",
						["groups"] = {
							n(144128, {	-- Dark Iron Brewer
								["coords"] = {
									{ 21.0, 38.3, BURNING_STEPPES },	-- Blackrock Mountain
									{ 55.0, 84.5, BLACKROCK_MOUNTAIN_LEVEL3 },	-- Entrance by MC
									{ 39.0, 18.3, BLACKROCK_MOUNTAIN_LEVEL3 },	-- BRD Entrance
									{ 49.8, 60.9, 243 },	-- Inside Instance
									{ 49.8, 31.6, BLACKROCK_DEPTHS },	-- Inside Instance
								},
							}),
						},
					}),
					i(44958, {	-- Ethereal Oil
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(18258, {	-- Gordok Ogre Suit
						["description"] = "Qty:1\n\nPurchase on the AH, make your own (pre Cata Tailors/Leatherworkers only), or head to Dire Maul North.\n\nOnce inside find Knot Thimblejack near Guard Slip'kik, and complete his quest for the suit.",
					}),
					i(103789, {	-- "Little Princess" Costume
						["description"] = "Qty:1\n\nPurchase on the AH or from the vendors below:",
						["groups"] = {
							n(142065, {	-- Dana Pull
								["description"] = "Boralus",
								["coord"] = { 50.8, 46.0, BORALUS },
								["races"] = ALLIANCE_ONLY,
							}),
							n(98725, {	-- Lio the Lioness <Battle Pet Master>
								["description"] = "Legion Dalaran or Garrison",
								["coords"] = {
									{ 59.2, 39.6, LEGION_DALARAN },
									{ 29.2, 40.4, LUNARFALL },
								},
								["races"] = ALLIANCE_ONLY,
							}),
							n(141614, {	-- Koari <Pet Supplies>
								["description"] = "Dazar'alor",
								["coord"] = { 34.8, 13.1, DAZARALOR },
								["races"] = HORDE_ONLY,
							}),
							n(115287, {	-- Serr'ah <Battle Pet Master>
								["description"] = "Legion Dalaran or Garrison",
								["coords"] = {
									{ 58.6, 38.0, LEGION_DALARAN },
									{ 32.6, 42.8, FROSTWALL },
								},
								["races"] = HORDE_ONLY,
							}),
							n(73293, {	-- Whizzig <Merchant of Time>
								["description"] = "Limited time vendor on Timeless Isle",
								["coords"] = {
									{ 41.6, 47.2, TIMELESS_ISLE },
									{ 35.0, 52.8, TIMELESS_ISLE },
									{ 42.8, 59.4, TIMELESS_ISLE },
									{ 40.0, 63.0, TIMELESS_ISLE },
								},
							}),
						},
					}),
					i(22845, {	-- Major Arcane Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(22841, {	-- Major Fire Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(22842, {	-- Major Frost Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(22847, {	-- Major Holy Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(22844, {	-- Major Nature Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(22846, {	-- Major Shadow Protection Potion
						["description"] = "Qty:1\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(8529, {	-- Noggenfogger Elixir
						["description"] = "Qty:20\n\nPurchase from Sprinkle Noggenfogger in Tanaris.",
						["groups"] = {
							n(98844, {	-- Sprinkle Noggenfogger
								["coord"] = { 51.2, 29.8, TANARIS },
							}),
						},
					}),
					n(37865, {	-- Perky Pug
						["description"] = "Qty:1\n\nObtained from the Dungeons & Raids achievement \"Looking for Multitudes\".",
					}),
					i(40195, {	-- Pygmy Oil
						["description"] = "Qty:20\n\nPurchase on the AH or make your own (Alchemy).",
					}),
					i(89373, {	-- Scotty's Lucky Coin
						["description"] = "Qty:1\n\nObtained from killing Scotty in Townlong Steppes.\n\nScotty's behind the Mantid house in the middle of the tree, so either walk around the left side of the house, or fly just above the house down into the crevice.",
						["groups"] = {
							n(66162, {	-- Scotty
								["coord"] = { 21.6, 46.5, TOWNLONG_STEPPES },
							}),
						},
					}),
					i(955, {	-- Scroll of Intellect
						["description"] = "Qty:1\n\nPurchase on the AH, make your own (Inscription), or buy in limited quantities from the vendors below:",
						["groups"] = {
							n(1316, {	-- Adair Gilroy <Librarian>
								["description"] = "Stormwind",
								["coord"] = { 51.8, 74.8, STORMWIND_CITY },
								["races"] = ALLIANCE_ONLY,
							}),
							n(958, {	-- Dawn Brightstar <Arcane Goods>
								["description"] = "Elwynn Forest",
								["coord"] = { 64.8, 69.2, ELWYNN_FOREST },
								["races"] = ALLIANCE_ONLY,
							}),
							n(16224, {	-- Rathis Tomber <Trade Supplies>
								["description"] = "Ghostlands",
								["coord"] = { 47.2, 28.6, GHOSTLANDS },
								["races"] = HORDE_ONLY,
							}),
							n(4581, {	-- Rathis Tomber <Trade Supplies>
								["description"] = "Undercity",
								["coord"] = { 77.6, 38.6, UNDERCITY },
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					i(12820, {	-- Winterfall Firewater
						["description"] = "Qty:1\n\nPurchase on the AH, or farm Winterfall furbolgs in Winterspring.",
					}),
				},
			}),
			o(9999909, {	-- Step 2: Cavern of Consumption
				["description"] = "|cFFFFFFFFSTEP 2:|r Once you have gathered all of the consumables go to Caverns of Consumption on the North coast of Winterspring, and travel through the cavern to the fire barrier.\n\n***Before you continue, make sure you have 30-40 mins to finish the remaining steps***",
				["coords"] = {
					{ 57.2, 14.0, KALIMDOR },	-- Cave Entrance
				},
			}),
			o(9999910, {	-- Step 3: Fire Barrier
				["description"] = "|cFFFFFFFFSTEP 3:|r Use the Major Fire Protection Potion, and pass through the Fire Barrier.",
			}),
			o(9999911, {	-- Step 4: Prismatic Barrier
				["description"] = "|cFFFFFFFFSTEP 4:|r Use the rest of the Major Potions and pass through the Prismatic Barrier.",
			}),
			o(9999912, {	-- Step 5: Diligent Watcher
				["description"] = "|cFFFFFFFFSTEP 5:|r Use Noggenfogger Elixir until you turn into a Skeleton, then walk past the Diligent Watcher.",
				["cost"] = {
					{ "i", 8529, 1 },	-- Noggenfogger Elixir
				},
			}),
			o(9999913, {	-- Step 6: Vine Barrier
				["description"] = "|cFFFFFFFFSTEP 6:|r On the right will be a Wall of Vines. Use Scotty's Lucky Coin, pass through the vines, and loot a Water Stone from the water.",
				["cost"] = {
					{ "i", 89373, 1 },	-- Scotty's Lucky Coin
				},
				["groups"] = {
					o(272434, {	-- Water Stone
						["coord"] = { 47.9, 1.5, WINTERSPRING },
						["groups"] = { i(147455) },	-- Water Stone
					}),
				},
			}),
			o(9999914, {	-- Step 7: Water Barrier
				["description"] = "|cFFFFFFFFSTEP 7:|r Use the Water Stone, backtrack to the Blue Barrier and walk through ever so slightly.",
				["cost"] = {
					{ "i", 147455, 1 },	-- Water Stone
				},
			}),
			o(9999915, {	-- Step 8: Stone Watcher
				["description"] = "|cFFFFFFFFSTEP 8:|r Use the Dire Brew and walk past the Stone Watcher.",
			}),
			o(9999916, {	-- Step 9: Ethereal Barrier
				["description"] = "|cFFFFFFFFSTEP 9:|r Go up the ramp on the right to the Purple Transparent Barrier. Use Ethereal Oil and walk through the barrier to the Strange Stone in the back.",
			}),
			o(9999917, {	-- Step 10: Strange Stone
				["description"] = "|cFFFFFFFFSTEP 10:|r At the Strange Stone, use the Gordok Ogre Suit & Wintefall Firewater. Select the Strange Stones dialogue \"Stick arm in stone\" and receive Sign of the Second debuff.",	-- n(54213)	-- Strange Stone
			}),
			o(9999918, {	-- Step 11: Metal Gate
				["description"] = "|cFFFFFFFFSTEP 11:|r Backtrack to the gate and use the Pygmy Oil until you turn into a Pygmy. Walk through the gate to the Wisdom Cube.",
			}),
			o(9999919, {	-- Step 12: Wisdom Cube
				["description"] = "|cFFFFFFFFSTEP 12:|r At the Wisdom Cube summon Perky Pug and use the Little Princess Costume on it. Select the Wisdom Cubes dialogue \"<Place arm beneath cube.>\" and receive Sign of the First debuff.",	-- n(53730)	-- Wisdom Cube
			}),
			o(9999920, {	-- Step 13: Tarnished Plaque
				["description"] = "|cFFFFFFFFSTEP 13a:|r Backtrack down the ramp to the now opened gate. DO NOT JUMP OFF. Enter the room and on a pillar on the right will be a Tarnished Plaque. Click on it.\n\nThe Tarnished Plaque reads:\n\n\"The greatest of achievments begins\nwith the smallest leap of the mind.\"\n\n|cFFFFFFFFSTEP 13b:|r After reading the Tarnished Plaque, click off at least one buff and use the Scroll of Intellect.",
			}),
			o(272487, {	-- Step 14: Oddly-Colored Egg
				["modelScale"] = 2,
				["questID"] = 48022,
				["isWeekly"] = true,
				["description"] = "|cFFFFFFFFSTEP 14:|r DO NOT JUMP IN WATER. Walk to the edge of water on the right, behind the plaque, where the cavern slopes down into the water. Walk across the water and loot the egg.\n\nCongrats on your new pet!!! \n\n!Don't forget to turn off debug mode now that you are done.",
				["groups"] = {
					i(142223),	-- Sun Darter Hatchling (PET!)
				},
			}),
		},
	}),
});
