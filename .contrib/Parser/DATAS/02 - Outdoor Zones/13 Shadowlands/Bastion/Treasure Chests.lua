---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(TREASURES, {
			i(180866),	-- Gilded Wader (PET!)
			o(354202, {	-- Abandoned Stockpile
				["description"] = "Coordinates are for a cave entrance hidden by plants.",
				["coord"] = { 46.4, 46.5, BASTION },
				["questID"] = 61006,
			}),
			o_repeated({
				-- Rewards
				i(184415),	-- Soothing Vesper (TOY!) — drops only from Broken and Skyward Bell treasures
				-- Objects
				o(353687, {	-- Broken Bell
					["coord"] = { 58.3, 66.2, BASTION },
					["questID"] = 60795,
					["isDaily"] = true,
				}),
				o(353688, {	-- Broken Bell
					["coord"] = { 57.6, 40.6, BASTION },
					["questID"] = 60796,
					["isDaily"] = true,
				}),
				o(353689, {	-- Broken Bell
					["coord"] = { 42.8, 47.9, BASTION },
					["questID"] = 60797,
					["isDaily"] = true,
				}),
			}),
			o(356823, {	-- Cloudwalker's Coffer
				["coord"] = { 61.1, 15.1, BASTION },
				["questID"] = 61698,
				["isWeekly"] = true,
				["groups"] = {
					i(180783),	-- Design: Crown of the Righteous (RECIPE!)
					i(183756),	-- Floating Circlet
				},
			}),
			o(354275, {	-- Experimental Construct Part
				["description"] = "Requires an |cFFFFFFFFUnstable Construct Anima|r, which can be found in the surrounding area. It looks similar to the other jars of anima, but is smaller and glows purple.",
				["coord"] = { 51.5, 18.0, BASTION },
				["questID"] = 61052,
				["cost"] = { { "i", 180534, 1 } },	-- Unstable Construct Anima
				["groups"] = {
					i(183609),	-- Re-Powered Golliath Fists
				},
			}),
			o(353942, {	-- Gift of Agthia
				["description"] = "The coordinates are to the first object you need to click to unlock the chest, |cFFFFFFFFAgthia's Flame|r.\n\nRun south until you get to the second torch at |cFFFFFFFF38.4, 57.0|r and click it. An invisible walkway will appear to the west, lined with glowing orbs on either side.\n\nWalk between the orbs until you reach the floating rock. Keep clicking all the torches and walking across the invisible bridge until you reach the treasure.",
				["coord"] = { 39.1, 54.4, BASTION },
				["questID"] = 60893,	-- 62847 also completed when opening
				["groups"] = {
					i(180063),	-- Unearthly Chime
				},
			}),
			o(353941, {	-- Gift of Chyrus
				["description"] = "Kneel in front of the chest.",
				["coord"] = { 70.4, 36.4, BASTION },
				["questID"] = 60892,
				["groups"] = {
					i(183988),	-- Bondable Val'kyr Diadem (TOY!)
				},
			}),
			o(353944, {	-- Gift of Devos
				["coord"] = { 27.6, 21.8, BASTION },
				["questID"] = 60895,
				["groups"] = {
					i(179977),	-- Benevolent Gong
				},
			}),
			o(353943, {	-- Gift of Thenios
				["description"] = "Requires taking multiple transport pads on the |cFFFFFFFFPath of Wisdom|r and clicking on objects in the correct order.\n\n1. Incense of Patience\n2. Incense of Knowledge\n3. Incense of Insight\n4. Blue orb behind the first Incense of Judgment\n5. The orb will transport you to the real Incense of Judgment\n\nTake the transport pad after using the real Incense of Judgment and you will get the |cFFFFFFFFProof of Wisdom|r buff for a short time, allowing you to open the chest.",
				["coords"] = {
					{ 42.3, 23.3, BASTION },	-- Transport Pad
					{ 40.6, 18.9, BASTION },	-- Treasure
				},
				["questID"] = 60894,
				["groups"] = {
					i(181290),	-- Harmonious Sigil of the Archon
				},
			}),
			o(353940, {	-- Gift of Vesiphone
				["description"] = "Ring one of the Bells of Purification on either side of the treasure. Then turn around and stand in the waterfall next to the Purity Steward. You will get a buff called Proof of Purity, allowing you to open the chest.",
				["coord"] = { 64.8, 71.1, BASTION },
				["questID"] = 60890,
				["groups"] = {
					i(180859),	-- Purity (PET!)
				},
			}),
			o(353234, {	-- Gilded Chest
				["coords"] = {	-- there might be more
					{ 24.5, 18.0, BASTION },
					{ 24.8, 23.3, BASTION },
					{ 25.6, 26.2, BASTION },
					{ 27.5, 21.7, BASTION },
					{ 28.2, 24.8, BASTION },
				},
				["questID"] = 60663,
				["isDaily"] = true,	-- repeatable?
				["groups"] = {
					i(184418),	-- Acrobatic Steward (TOY!)
				},
			}),
			o_repeated({
			-- Rewards
			-- Objects
				o(353868, {	-- Hidden Hoard
					["description"] = "The coordinates are for a cliffside cave entrance.",
					["coord"] = { 59.5, 13.3, BASTION },
					["questID"] = 60875,	-- only questID that triggers for this one, no specific secondary quest to link
					["isDaily"] = true,
				}),
				o(353869, {	-- Hidden Hoard
					["coord"] = { 47.3, 16.5, BASTION },
					["questID"] = 60880,
					["isDaily"] = true,
				}),
				o(353870, {	-- Hidden Hoard
					["description"] = "The coordinates are for a cave entrance hidden behind some vines in the side of a cliff.",
					["coord"] = { 48.5, 45.4, BASTION },
					["questID"] = 60879,
					["isDaily"] = true,
				}),
				o(353871, {	-- Hidden Hoard
					["description"] = "The coordinates are for a cave entrance hidden in the side of a cliff. You'll have to walk along a ledge halfway up the cliffside to access it.",
					["coord"] = { 47.7, 35.1, BASTION },
					["questID"] = 60878,	-- also 60875
					["isDaily"] = true,
				}),
				o(353872, {	-- Hidden Hoard
					["coord"] = { 61.6, 37.2, BASTION },
					["questID"] = 60877,	-- also 60875
					["isDaily"] = true,
				}),
				o(353873, {	-- Hidden Hoard
					["description"] = "Inside the cave.",
					["coord"] = { 49.3, 52.1, BASTION },
					["questID"] = 60876,
					["isDaily"] = true,
				}),
			}),
			o(354214, {	-- Larion Tamer's Harness
				["description"] = "At the back of the cave.",
				["coord"] = { 55.7, 42.8, BASTION },	-- cave entrance
				["questID"] = 61049,
				["groups"] = {
					i(182653),	-- Larion Treats
					i(183126),	-- Kyrian Smith's Kit
				},
			}),
			o(354213, {	-- Lost Disciple's Notes
				["coord"] = { 59.3, 60.9, BASTION },
				["questID"] = 61048,
				["groups"] = {
					i(182693),	-- Lost Disciple's Notes
				},
			}),
			o(355286, {	-- Memorial Offerings
				["description"] = "Purchase |cFFFFFFFFMemorial Wine|r from Kobri, a steward at Hero's Rest. Place the wine in the Drink Tray at |cFFFFFFFF56.8, 19.0|r to get the key from Honor Steward to the Memorial Offerings chest.",
				["coord"] = { 56.5, 17.2, BASTION },
				["questID"] = 61150,
				["cost"] = {
					{ "i", 180788, 1 },	-- Memorial Wine
					{ "i", 180797, 1 },	-- Memorial Offering Key (QI!)
				},
			}),
			o(339587, {	-- Purians
				["coords"] = {
					{ 54.4, 81.8, BASTION },
					{ 54.4, 82.7, BASTION },
				},
				["groups"] = { i(173973) },	-- Purian
			}),
			o(339601, {	-- Scroll of Aeons
				["description"] = "Take the |cFFFFFFFFPurian|r from the bench at |cFFFFFFFF54.3, 81.8|r, place them in the tribute bowls at |cFFFFFFFF54.4, 83.8|r and |cFFFFFFFF56.1, 83.0|r, and follow the light to the treasure at |cFFFFFFFF53.5, 80.4|r.",
				["coords"] = {
					{ 54.4, 83.8, BASTION },	-- Tribute
					{ 56.1, 83.0, BASTION },	-- Tribute
					{ 53.5, 80.4, BASTION },	-- Treasure
				},
				["questID"] = 58298,	-- triggers 58292, 58293 and 58294 too
				["cost"] = { { "i", 173973, 2 } },	-- 2x Purian
				["groups"] = {
					i(173984),	-- Scroll of Aeons (TOY!)
				},
			}),
			o_repeated({	-- Silver Strongbox
				["sourceQuests"] = { 62733 },	-- The Sweetest Tribute
				["cost"] = { { "i", 180049, 1 } },	-- 1x Steward's Silver Key
				["groups"] = sharedData({
					["isDaily"] = true,
				}, {
					-- Rewards
					i(184418),	-- Acrobatic Steward (TOY!)
					-- Objects
					o(352754, {	-- Silver Strongbox
						["coord"] = { 45.2, 83.2, BASTION },
						["questID"] = 60596,
					}),
					o(353019, {	-- Silver Strongbox
						["coord"] = { 60.8, 80.3, BASTION },
						["questID"] = 60627,
					}),
					o(353205, {	-- Silver Strongbox
						["coord"] = { 50.8, 44.7, BASTION },
						["questID"] = 60652,
					}),
					o(353252, {	-- Silver Strongbox
						["coord"] = { 43.2, 36.2, BASTION },
						["questID"] = 60668,
					}),
					o(353314, {	-- Silver Strongbox
						["coord"] = { 42.3, 26.4, BASTION },
						["questID"] = 60708,
					}),
					o(353325, {	-- Silver Strongbox
						["coord"] = { 46.8, 19.9, BASTION },
						["questID"] = 60712,
					}),
					o(353503, {	-- Silver Strongbox
						["coord"] = { 48.7, 31.8, BASTION },
						["questID"] = 60755,
					}),
					o(353516, {	-- Silver Strongbox
						["coord"] = { 63.8, 29.1, BASTION },
						["questID"] = 60758,
					}),
					o(353643, {	-- Silver Strongbox
						["coord"] = { 62.4, 57.6, BASTION },
						["questID"] = 60777,
					}),
					o(353500, {	-- Silver Strongbox
						["coord"] = { 43.1, 15.7, BASTION },
						["questID"] = 60754,
					}),
				}),
			}),
			o(353691, {	-- Skyward Bell
				["coords"] = {
					{ 45.6, 33.8, BASTION },
					{ 59.5, 66.3, BASTION },	-- triggered 60798 / 60799
				},
				-- TODO: updated objectIDs to match with coords when the data is available
				["questID"] = 60798,	-- also triggered 60874... why two quests?
				-- also triggered 60799 for non-kyrian
				["isDaily"] = true,
				["groups"] = {
					i(184415),	-- Soothing Vesper (TOY!) — drops only from Broken and Skyward Bell treasures
				},
			}),
			o(353650, {	-- Steward's Golden Chest
				["sourceQuests"] = { 62733 },	-- The Sweetest Tribute
				["description"] = "Ask Elios about the Steward of the Day, and he will pin their location on your map. Take a Ripe Purian to the steward, and then you can come back and loot the chest.",
				["coord"] = { 53.2, 46.4, BASTION },
				["questID"] = 60779,
				["isDaily"] = true,
				["crs"] = { 170284 },	-- Elios
				["cost"] = { { "i", 180285, 1 } },	-- 1x Steward's Golden Key
			}),
			o(354208, {	-- Stolen Equipment
				["coord"] = { 40.5, 49.8, BASTION },
				["questID"] = 61044,
				["groups"] = {
					i(182561),	-- Fallen Disciple's Cloak
				},
			}),
			o(339641, {	-- The Purifying Draught
				["coord"] = { 52.0, 86.0, BASTION },
				["questID"] = 58329,
				["groups"] = {
					i(174007),	-- Purifying Draught
				},
			}),
			o(352428, {	-- Vesper of Virtues
				["sourceQuests"] = { 57717 },	-- Step Back From That Ledge, My Friend
				["coord"] = { 58.6, 71.4, BASTION },
				["questID"] = 60478,	-- 62841 triggered too
				["groups"] = {
					i(179982),	-- Kyrian Bell
				},
			}),
			o(353876, {	-- Virtue of Penitence
				["coord"] = { 57.2, 92.7, BASTION },
				["questID"] = 60882,
				["isDaily"] = true,
			}),
			o(354289, {	-- Windsmith's Tools
				["description"] = "The |cff0070ddBroken Kyrian Flute|r drops from |cFFFFFFFFUnsettled Etherwyrms|r near the treasure. After you've found the flute, use the |cFFFFFFFFWindsmith's Tools|r at the forge to restore it.",
				["coord"] = { 35.8, 48.1, BASTION },
				["questID"] = 61053,
				["crs"] = { 170009 },	-- Unsettled Etherwyrm
				["cost"] = { { "i", 180536, 1 } },	-- 1x Broken Kyrian Flute
				["groups"] = {
					i(180064),	-- Ascended Flute
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(BASTION, {
			n(TREASURES, {
				q(60799),	-- secondary quest trigger on Skyward Bell (59.5, 66.3)
				q(60874),	-- secondary quest trigger on Skyward Bell (not sure which one)
				q(62847),	-- secondary quest trigger on Gift of Agthia
				q(62842),	-- secondary quest trigger on Gift of Devos
				q(60625),	-- Triggerd when looting chest at 41,67
				q(58292),	-- looting Purians
				q(58293),	-- placing first Purian in the bowl
				q(58294),	-- placing second Purian in the bowl
				q(62841),	-- Triggered after first time using Kyrian Bell buff item
			}),
		}),
	}),
})));
