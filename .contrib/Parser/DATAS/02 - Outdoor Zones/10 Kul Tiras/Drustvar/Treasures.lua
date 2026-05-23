---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(TREASURES, {
			o(294084, {	-- Adventurer's Society Loot Stash
				title(371, {	-- <Name>, No Good, Dirty, Rotten, Candy Stealer!
					["collectible"] = false,
				}),
			}),
			o(297879, {	-- Bespelled Chest
				["description"] = "Click the inactive torches.",
				["questID"] = 53472,
				["coord"] = { 55.60, 51.80, DRUSTVAR },
				["groups"] = {
					i(163790),	-- Spooky Incantation
				},
			}),
			o(297069, {	-- Dresser
				["description"] = "After completing the quest \"One Last Request\" you can return back to the house, go upstairs and interact with this object.",
				["sourceQuest"] = 50763,	-- One Last Request
				["coord"] = { 24.3, 14.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(163603),	-- Lucille's Handkerchief (TOY!)
				},
			}),
			o(296918, {	-- Drust Stele: Breath Into Stone
				["coord"] = { 59.5, 66.7, DRUSTVAR },
			}),
			o(297630, {	-- Drust Stele: Conflict
				["coord"] = { 46.5, 37.3, DRUSTVAR },
			}),
			o(297628, {	-- Drust Stele: Constructs
				["coord"] = { 50.2, 42.5, DRUSTVAR },
			}),
			o(297632, {	-- Drust Stele: Protectors of the Forest
				["coord"] = { 44.6, 45.7, DRUSTVAR },
			}),
			o(297627, {	-- Drust Stele: Sacrifice
				["coord"] = { 27.6, 57.6, DRUSTVAR },
			}),
			o(296915, {	-- Drust Stele: The Circle
				["coord"] = { 36.8, 64.5, DRUSTVAR },
			}),
			o(297629, {	-- Drust Stele: The Cycle
				["coord"] = { 19.0, 57.9, DRUSTVAR },
			}),
			o(297631, {	-- Drust Stele: The Flayed Man
				["coord"] = { 56.6, 86.0, DRUSTVAR },
			}),
			o(296916, {	-- Drust Stele: The Ritual
				["coord"] = { 50.8, 73.7, DRUSTVAR },
			}),
			o(296917, {	-- Drust Stele: The Tree
				["coord"] = { 27.3, 48.3, DRUSTVAR },
			}),
			o(297881, {	-- Enchanted Chest
				["description"] = "Click the inactive torches.",
				["questID"] = 53474,
				["coord"] = { 25.50, 24.20, DRUSTVAR },
				["groups"] = {
					i(163796),	-- Wolf Pup Spine
				},
			}),
			o(297880, {	-- Ensorcelled Chest
				["questID"] = 53473,
				["coord"] = { 67.70, 73.70, DRUSTVAR },
				["groups"] = {
					i(163791),	-- Miniature Stag Skull
				},
			}),
			o(297878, {	-- Hexed Chest
				["description"] = "Click the inactive torches.",
				["questID"] = 53471,
				["coord"] = { 18.50, 51.30, DRUSTVAR },
				["groups"] = {
					i(163789),	-- Bundle of Wicker Stick
				},
			}),
			o(297828, {	-- Merchant's Chest
				["questID"] = 53357,
				["coord"] = { 25.69, 20.03, DRUSTVAR },
				["description"] = "Look for the Gorging Raven flying above with the 'Holding Keys' buff, and kill it to get the key to open this chest.",
				["cost"] = {{"i",163710,1}},	-- Merchant's Key
				["groups"] = {
					i(POLISHED_PET_CHARM),
				},
			}),
			o(298766, {	-- Old Crossbow
				["coord"] = { 35.53, 51.88, DRUSTVAR },
				["groups"] = {
					i(163749),	-- Old Crossbow
				},
			}),
			o(298768, {	-- Old Flask
				["coord"] = { 64.86, 67.80, DRUSTVAR },
				["groups"] = {
					i(163746),	-- Old Flask
				},
			}),
			o(298769, {	-- Old Hat
				["coord"] = { 55.44, 27.13, DRUSTVAR },
				["groups"] = {
					i(163748),	-- Old Hat
				},
			}),
			o(298767, {	-- Old Knife
				["coord"] = { 32.57, 58.90, DRUSTVAR },
				["groups"] = {
					i(163747),	-- Old Knife
				},
			}),
			o(297891, {	-- Runebound Cache
				["questID"] = 53385,
				["coord"] = { 63.3, 65.8, DRUSTVAR },
				["description"] = "Left. Down. Up. Right.",
				["groups"] = {
					i(163743),	-- Drust Soulcatcher
				},
			}),
			o(297892, {	-- Runebound Chest
				["questID"] = 53386,
				["coord"] = { 44.2, 27.8, DRUSTVAR },
				["description"] = "Left. Right. Down. Up.",
				["groups"] = {
					i(163742),	-- Heartsbane Grimoire (TOY!)
				},
			}),
			o(297893, {	-- Runebound Coffer
				["questID"] = 53387,
				["coord"] = { 33.68, 71.74, DRUSTVAR },
				["description"] = "Right. Up. Left. Down.",
				["groups"] = {
					i(163740),	-- Drust Ritual Knife (TOY!)
				},
			}),
			o(298920, {	-- Stolen Thornspeaker Cache
				["questID"] = 53475,
				["coord"] = { 24.3, 48.5, DRUSTVAR },
				["description"] = "Enter the cave at 24.70, 48.95.",
				["sym"] = {{"select","itemID",
					POLISHED_PET_CHARM,
				}},
			}),
			o(297825, {	-- Web-Covered Chest
				["questID"] = 53356,
				["coord"] = { 33.7, 30.1, DRUSTVAR },
				["groups"] = {
					i(160053),	-- Battle-Scarred Augment Rune
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(DRUSTVAR, {
			n(TREASURES, {
				q(51871),	-- Drustvar repeatable random chest
				q(51875),	-- Drustvar repeatable random chest
				q(51878),	-- Drustvar repeatable random chest
				q(51882),	-- Drustvar repeatable random chest
				q(51885),	-- Drustvar repeatable random chest
				q(51896),	-- Drustvar repeatable random chest
				q(51899),	-- Drustvar repeatable random chest
				q(51902),	-- Drustvar repeatable random chest
				q(51910),	-- Drustvar repeatable random chest
				q(51912),	-- Drustvar repeatable random chest
				q(51913),	-- Drustvar repeatable random chest
				q(51914),	-- Drustvar repeatable random chest
			}),
		}),
	}),
})));
