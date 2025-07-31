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
			i(163497, {	-- Wicker Pup (PET!)
				["description"] = "You must find each of the four parts from various treasures in the Zone and combine them to form this battle pet.\nRight-Click for more information.",
				["cost"] = {
					{ "i", 163790, 1 },	-- Spooky Incantation
					{ "i", 163796, 1 },	-- Wolf Pup Spine
					{ "i", 163791, 1 },	-- Miniature Stag Skull
					{ "i", 163789, 1 },	-- Bundle of Wicker Stick
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
				q(51907),	-- Drustvar repeatable random chest
				q(51910),	-- Drustvar repeatable random chest
				q(51911),	-- Drustvar repeatable random chest
				q(51912),	-- Drustvar repeatable random chest
				q(51913),	-- Drustvar repeatable random chest
				q(51914),	-- Drustvar repeatable random chest
			}),
		}),
	}),
})));
