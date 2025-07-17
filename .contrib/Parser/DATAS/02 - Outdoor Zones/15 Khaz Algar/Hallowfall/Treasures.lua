---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(HALLOWFALL, {
		n(TREASURES, {
			i(220123, {	-- Ominous Offering
				["description"] = "Combine 'Offering of Pure Water' and 'Jar of Mucus' to get this item.\nUsed to summon 'Deathtide'.",
				["cost"] = {
					{ "i", 220124, 1 },	-- 1x Jar of Mucus
					{ "i", 220122, 1 },	-- 1x Offering of Pure Water
				},
			}),
			o(444798, {	-- Arathi Treasure Hoard
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { HALLOWFALL },
				["g"] = {
					i(212333),	-- Expedition Tinderbox (QS!)
					i(224463),	-- Lily's Locket (QS!)
					i(224460),	-- The Lost Diary (QS!)
					i(224466),	-- Wilber The Chicken (QS!)
				},
			}),
			o(444801, {	-- Brimming Arathi Treasure Hoard
				["maps"] = { HALLOWFALL },
			}),
			n(225948, {	-- Caesper
				["description"] = "Bring Caesper Meaty Haunch and follow him, he will dig up treasure for you.",
				["coord"] = { 41.8, 58.3, HALLOWFALL },	-- Caesper
				["cost"] = {{ "i", 225238, 1 }},	-- Meaty Haunch
				["g"] = {
					o(453167, {	-- Disturbed Lyns Treasure
						["questID"] = 83263,
						["groups"] = {
							i(225639),	-- Recipe: Exquisitely Eviscerated Muscle (RECIPE!)
						},
					}),
				},
			}),
			o(444804, {	-- Concentrated Shadow
				["description"] = "Spawns all over the zone only when Beledar shifts into its Void state.",
				["maps"] = { HALLOWFALL },
				["g"] = {
					-- some crafting reagents and gray item
				},
			}),
			o(444799, {	-- Potent Concentrated Shadow
				["description"] = "Spawns all over the zone only when Beledar shifts into its Void state.",
				["maps"] = { HALLOWFALL },
				["g"] = {
					-- some crafting reagents and gray item
				},
			}),
			o(453374, {	-- Shadowed Essence (Dark Ritual, event)
				["description"] = "Inside the cave. Interract with the book and start the ritual. Survive the attack and kill the shadows.",
				["provider"] = { "o", 453359 },	-- Dark Ritual (vignette)
				["coord"] = { 59.5, 59.7, HALLOWFALL },
				["questID"] = 83284,
				["g"] = {
					i(225693),	-- Shadowed Essence
				},
			}),
			o(437211, {	-- Illuminated Footlocker
				["description"] = "Starblessed Glimmerfly flies around in circle casting Lightning Orbs on the ground.\nCatch 5 Lightning Orbs by standing in illuminated circles in order to reveal the treasure.",
				["coord"] = { 58.4, 27.2, HALLOWFALL },
				["questID"] = 81468,
				["crs"] = { 220703 },	-- Starblessed Glimmerfly
				["g"] = {
					i(224552),	-- Cave Spelunker's Torch (TOY!)
				},
			}),
			o(440926, {	-- Jar of Mucus
				["description"] = "One of two parts required to create 'Ominous Offering'. An item required to summon 'Deathtide'.",
				["coords"] = {
					{ 48.0, 16.7, HALLOWFALL },
					{ 48.8, 50.2, HALLOWFALL },
				},
				["g"] = {
					i(220124),	-- Jar of Mucus
				},
			}),
			o(441606, {	-- Jewel of the Cliffs
				["description"] = "Located inside the crack of the pillar high above ground.",
				["coord"] = { 55.8, 69.5, HALLOWFALL },
				["questID"] = 81971,
				["g"] = {
					i(224580, {	-- Massive Sapphire Chunk
					--	i(212508),	-- Stunning Sapphire x3
					}),
				},
			}),
			o(444802, {	-- Kobyss Ritual Cache
				["description"] = "Spawns randomly around the costal regions of the zone.",
				["maps"] = { HALLOWFALL },
			}),
			o(441638, {	-- Lost Memento
				["coord"] = { 50.1, 13.8, HALLOWFALL },
				["questID"] = 81978,
				["g"] = {
					i(224575),	-- Lightbearer's Pendant
				},
			}),
			o(457062, {	-- Sky-Captain Lancekat's Curse
				["questID"] = 84289,
				["coord"] = { 42.6, 53.7, HALLOWFALL },
				["isWeekly"] = true,	-- unflagged at some point (Runaway)
				["g"] = {
					i(225213),	-- Sky-Captain Lancekat's Curse
				}
			}),
			o_repeated({	-- Smuggler's Treasure
				o(453283, {
					["description"] = "Fly down to the Dead Arathi body and loot key.",
					["coord"] = { 55.1, 51.9, HALLOWFALL },
					["questID"] = 83273,
				}),
				o(453274, {
					["description"] = "Fly down to the Dead Arathi body and loot key.",
					["coord"] = { 55.1, 51.9, HALLOWFALL },
				}),
				i(225335),	-- Smuggler's Key
				i(226021),	-- Jar of Pickles
			}),
			o(419695, {	-- Spore-Covered Coffer
				["description"] = "Inside the Shadowmire cave.",
				["coord"] = { 76.8, 53.8, HALLOWFALL },
				["questID"] = 79275,
			}),
			o(454797, {	-- From the Depths They Come
				["coord"] = { 57.8, 51.7, HALLOWFALL },
				--["questID"] = ,
				["g"] = {
					i(225208),	-- From the Depths They Come [book]
				},
			}),
			o(455038, {	-- Light's Gambit Playbook
				["coord"] = { 68.7, 41.5, HALLOWFALL },
				--["questID"] = ,
				["g"] = {
					i(225206),	-- Light's Gambit Playbook [book]
				},
			}),
			o(463979, {	-- Lightspark Sky Academy Gradebook
				["coord"] = { 52.6, 60.0, HALLOWFALL },
				["questID"] = 84497,
				["g"] = {
					i(228457),	-- Lightspark Grade Book [book]
				},
			}),
			o(440914, {	-- Offering of Pure Water
				["description"] = "One of two parts required to create 'Ominous Offering'. An item required to summon 'Deathtide'.",
				["coords"] = {
					{ 28.9, 51.2, HALLOWFALL },
					{ 34.2, 57.9, HALLOWFALL },
					{ 34.3, 53.6, HALLOWFALL },
					{ 34.5, 53.6, HALLOWFALL },
					{ 43.4, 14.1, HALLOWFALL },
					{ 43.5, 14.1, HALLOWFALL },
					{ 50.1, 49.7, HALLOWFALL },
					{ 52.4, 50.2, HALLOWFALL },
					{ 53.8, 19.1, HALLOWFALL },
					{ 55.2, 23.4, HALLOWFALL },
					{ 55.2, 23.5, HALLOWFALL },
				},
				["g"] = {
					i(220122),	-- Offering of Pure Water
				},
			}),
			o(455183, {	-- Shadow Curfew Journal
				["coord"] = { 59.8, 22.1, HALLOWFALL },
				--["questID"] = ,
				["g"] = {
					i(225205),	-- Shadow Curfew Journal [book]
				},
			}),
			o(453937, {	-- 500 Dishes Using Cave Fish and Mushrooms
				["coord"] = { 43.9, 50.0, HALLOWFALL },
				--["questID"] = ,
				["g"] = {
					i(225217),	-- 500 Dishes Using Cave Fish and Mushrooms [book]
				},
			}),
			o(453749, {	-- Palawltar's Codex of Dimensional Structure
				["coord"] = { 48.7, 64.7, HALLOWFALL },
				-- ["questID"] = 83309, (automated)
				["g"] = {
					i(225216),	-- Palawltar's Codex of Dimensional Structure [book]
				},
			}),
			o(453751, {	-- Care and Feeding of the Imperial Lynx
				["coord"] = { 69.4, 44.0, HALLOWFALL },
				-- ["questID"] = 83310, (automated)
				["g"] = {
					i(225207),	-- Care and Feeding of the Imperial Lynx [book]
				},
			}),
			o(453752, {	-- Shadow Curfew Guidelines
				["coord"] = { 64.2, 28.1, HALLOWFALL },
				-- ["questID"] = 83311, (automated)
				["g"] = {
					i(225204),	-- Shadow Curfew Guidelines [book]
				},
			}),
			o(453753, {	-- Beledar - The Emperor's Vision
				["coord"] = { 56.6, 65.2, HALLOWFALL },
				-- ["questID"] = 83312, (automated)
				["g"] = {
					i(225203),	-- Beledar - The Emperor's Vision [book]
				},
			}),
			o(439473, {	-- Tenir and the Order of Night
				["description"] = "In the basement.",
				["coord"] = { 63.5, 29.5, HALLOWFALL },
				["g"] = {
					i(219384),	-- Tenir and the Order of Night
				},
			}),
			o(453754, {	-- The Song of Renilash
				["coord"] = { 70.2, 56.8, HALLOWFALL },
				-- ["questID"] = 83313, (automated)
				["g"] = {
					i(225215),	-- The Song of Renilash [book]
				},
			}),
			o(453755, {	-- The Big Book of Arathi Idioms
				["coord"] = { 48.1, 39.6, HALLOWFALL },
				-- ["questID"] = 83314, (automated)
				["g"] = {
					i(225212),	-- The Big Book of Arathi Idioms [book]
				},
			}),
			o(419729, {	-- Strange Eggs
				["coord"] = { 67.1, 21.8, HALLOWFALL },
				--["questID"] = 83032, -- I looted it with some characters and never got any questID - Darkal
				["g"] = {
					i(212331),	-- The Unusual Bug
				},
			}),
			o(441611, {	-- Windswept Satchel
				["coord"] = { 30.2, 38.8, HALLOWFALL },
				["questID"] = 81972,
				["g"] = {
					i(224578),	-- Arathor Courier's Satchel
				},
			}),
			-- Ryfus Sacredpyr / Arathi Loremaster
			o(453741, {	-- Loremaster's Reward
				["provider"] = { "n", 221630 },	-- Ryfus Sacredpyr
				["coord"] = { 40.0, 51.1, HALLOWFALL },
				["questID"] = 83298,
				["sourceQuest"] = 83305,	-- Question 6
				-- ["cost"] = {
				-- 	{ "i", 225216, 1 },	-- Palawltar's Codex of Dimensional Structure / Question 1
				-- 	{ "i", 225207, 1 },	-- Care and Feeding of the Imperial Lynx / Question 2
				-- 	{ "i", 225204, 1 },	-- Shadow Curfew Guidelines / Question 3
				-- 	{ "i", 225203, 1 },	-- Beledar- The Emperor's Vision / Question 4
				-- 	{ "i", 225215, 1 },	-- The Song of Renilash / Question 5
				-- 	{ "i", 225212, 1 },	-- The Big Book of Arathi Idioms / Question 6
				-- },
				["g"] = {
					i(225659),	-- Arathi Book Collection (TOY!)
					hqt(83300, {	-- Question 1
						["name"] = "Answer 1: That the Cosmos consisted of monopole elemental phase spaces.",
						["sourceQuests"] = {
							83309, -- Palawltar's Codex of Dimensional Structure
						},
					}),
					hqt(83301, {	-- Question 2
						["name"] = "Answer 2: Patience and respect.",
						["sourceQuests"] = {
							83300, -- previous step
							83310, -- Care and Feeding of the Imperial Lynx
						},
					}),
					hqt(83302, {	-- Question 3
						["name"] = "Answer 3: Seek shelter and light. Have plans, have backup plans. Find joy while sheltering.",
						["sourceQuests"] = {
							83301, -- previous step
							83311, -- Shadow Curfew Guidelines
						},
					}),
					hqt(83303, {	-- Question 4
						["name"] = "Answer 4: The third fleet.",
						["sourceQuests"] = {
							83302, -- previous step
							83312, -- Beledar- The Emperor's Vision
						},
					}),
					hqt(83304, {	-- Question 5
						["name"] = "Answer 5: The Remains of gods.",
						["sourceQuests"] = {
							83303, -- previous step
							83313, -- The Song of Renilash
						},
					}),
					hqt(83305, {	-- Question 6
						["name"] = "Answer 6: From the letters of Mereldar.",
						["sourceQuests"] = {
							83304, -- previous step
							83314, -- The Big Book of Arathi Idioms
						},
					}),
				},
			}),
			-- achievement crits
			o(441720, {	-- A Scout's Journal
				["coord"] = { 62.2, 45.6, HALLOWFALL },
				["questID"] = 82066,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441688, {	-- A Tattered Note
				["coord"] = { 71.4, 36.7, HALLOWFALL },
				["questID"] = 82065,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441637, {	-- A Weathered Tome
				["coord"] = { 78.2, 40.3, HALLOWFALL },
				["questID"] = 82064,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441633, {	-- A Worn Down Book
				["coord"] = { 25.1, 53.7, HALLOWFALL },
				["questID"] = 82063,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441628, {	-- Captain's Chest
				["coord"] = { 25.7, 38.4, HALLOWFALL },
				["questID"] = 82061,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441800, {	-- Sunken Cache
				["description"] = "You need to talk to Sky-Captains Aerthin, Clairmonte, Dornald, and Onaro on their respective airships.",
				["sourceQuests"] = { 82012, 82024, 82025, 82026 },	-- Talk to all Sky-Captains
				["coord"] = { 45.9, 45.1, HALLOWFALL },
				["questID"] = 82005,
				["g"] = {
					i(224554),	-- Silver Linin' Scepter (TOY!)
				},
			}),
		}),
	}),
})));