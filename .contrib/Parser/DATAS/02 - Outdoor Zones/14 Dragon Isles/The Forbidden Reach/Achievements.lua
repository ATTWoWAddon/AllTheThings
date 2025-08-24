---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(THE_FORBIDDEN_REACH, {
		n(ACHIEVEMENTS, {
			ach(17524, {	-- Adventurer of the Forbidden Reach
				["sym"] = {{"partial_achievement",17525}},	-- Champion of the Forbidden Reach
			}),
			ach(17525, {	-- Champion of the Forbidden Reach
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17405, {	-- Dragon Glyphs: Caldera of the Menders
				["coord"] = { 37.7, 30.6, THE_FORBIDDEN_REACH },
			}),
			ach(17401, {	-- Dragon Glyphs: Dragonskull Island
				["coord"] = { 79.4, 32.8, THE_FORBIDDEN_REACH },
			}),
			ach(17400, {	-- Dragon Glyphs: Froststone Peak
				["coord"] = { 62.4, 32.4, THE_FORBIDDEN_REACH },
			}),
			ach(17402, {	-- Dragon Glyphs: Stormsunder Mountain
				["coord"] = { 77.4, 55.1, THE_FORBIDDEN_REACH },
			}),
			ach(17404, {	-- Dragon Glyphs: Talonlord's Perch
				["coord"] = { 59.0, 65.2, THE_FORBIDDEN_REACH },
			}),
			ach(17399, {	-- Dragon Glyphs: Talon's Watch
				["coord"] = { 20.5, 91.4, THE_FORBIDDEN_REACH },
			}),
			ach(17403, {	-- Dragon Glyphs: The Frosted Spine
				["coord"] = { 48.6, 68.9, THE_FORBIDDEN_REACH },
			}),
			ach(17398, {	-- Dragon Glyphs: Winglord's Perch
				["coord"] = { 18.4, 13.2, THE_FORBIDDEN_REACH },
			}),
			ach(17411, {	-- Forbidden Reach Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					17405,	-- Dragon Glyphs: Caldera of the Menders
					17401,	-- Dragon Glyphs: Dragonskull Island
					17400,	-- Dragon Glyphs: Froststone Peak
					17402,	-- Dragon Glyphs: Stormsunder Mountain
					17404,	-- Dragon Glyphs: Talonlord's Perch
					17399,	-- Dragon Glyphs: Talon's Watch
					17403,	-- Dragon Glyphs: The Frosted Spine
					17398,	-- Dragon Glyphs: Winglord's Perch
				}},
			}),
			ach(17534),	-- Explore the Forbidden Reach
			ach(17529),	-- Forbidden Spoils
			petbattle(ach(17541, {	-- Global Swarming
				["sym"] = {{ "achievement_criteria" }},
			})),
			ach(17528),	-- Hoarder of the Forbidden Reach
			ach(17530, {	-- Librarian of the Reach
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17527),	-- Scavenger of the Forbidden Reach
			ach(17532, {	-- Scroll Hunter
				["providers"] = {
					{ "i", 202667 },	-- Sealed Artifact Scroll
					{ "i", 202669 },	-- Sealed Fish Scroll
					{ "i", 202670 },	-- Sealed Knowledge Scroll
					{ "i", 202668 },	-- Sealed Spirit Scroll
				},
			}),
			ach(17526, {	-- Treasures of the Forbidden Reach
				crit(58487, {	-- Forbidden Hoard
					-- ["_quests"] = {  },
				}),
				crit(58488, {	-- Avian Trove
					-- ["_quests"] = {  },
				}),
				crit(58489, {	-- Obsidian Coffer
					-- ["_quests"] = {  },
				}),
				crit(58490, {	-- Spellsworn Reserves
					-- ["_quests"] = {  },
				}),
				crit(58491, {	-- Bone Pile
					-- ["_quests"] = {  },
				}),
				crit(58492, {	-- Farscale Cache
					-- ["_quests"] = {  },
				}),
				crit(58493, {	-- Irontide Stash
					-- ["_quests"] = {  },
				}),
				crit(58494, {	-- Storm-Eater Cairn
					-- ["_quests"] = {  },
				}),
				crit(58495, {	-- Stonescaled Cairn
					-- ["_quests"] = {  },
				}),
				crit(58496, {	-- Blazing Cairn
					-- ["_quests"] = {  },
				}),
				crit(58497, {	-- Frozenheart Cairn
					-- ["_quests"] = {  },
				}),
				crit(58498, {	-- Morqut Provisions
					-- ["_quests"] = {  },
				}),
			}),
			ach(17315, {	-- While We Were Sleeping
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17531),	-- X Marks the Spot
			ach(17543, {	-- You Know How to Reach Me [META]
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					17525,	-- Champion of the Forbidden Reach
					17413,	-- Door Buster
					17509,	-- Every Door, Everywhere, All At Once
					17534,	-- Explore the Forbidden Reach
					17529,	-- Forbidden Spoils
					17528,	-- Hoarder of the Forbidden Reach
					17530,	-- Librarian of the Reach
					17532,	-- Scroll Hunter
					17526,	-- Treasures of the Forbidden Reach
					17540,	-- Under the Weather
					17315,	-- While We Were Sleeping
				}},
				["groups"] = {
					title(495),	-- <Name> the Forbidden [Unsure if this got deleted/removed?]
					title(533, {	-- The Forbidden <Name>
						["timeline"] = { ADDED_10_2_6 },
					}),
				}
			}),
		}),
	}),
})));
