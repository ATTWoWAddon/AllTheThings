---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(ACHIEVEMENTS, {
				ach(11731),	-- A Magic Contribution
				ach(11732),	-- A Magnificent Contribution
				ach(11796),	-- Armies of Legionfall
				ach(11736),	-- Assume Command
				ach(11546, {	-- Breaching the Tomb
					crit(36598, {	-- Armies of Legionfall
						["sourceQuests"] = { 46730 },	-- Armies of Legionfall
					}),
					crit(36599, {	-- Assault on Broken Shore
						["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
					}),
					crit(36600, {	-- Begin Construction
						["sourceQuests"] = { 46245 },	-- Begin Construction
					}),
					crit(36601, {	-- Aalgen Point
						["sourceQuests"] = { 46832 },	-- Aalgen Point
					}),
					crit(36602, {	-- Vengeance Point
						["sourceQuests"] = { 46845 },	-- Vengeance Point
					}),
					crit(36603, {	-- Defending Broken Isles
						["sourceQuests"] = { 46247 },	-- Defending Broken Isles
					}),
					crit(36604, {	-- Champions of Legionfall
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
					}),
					crit(36605, {	-- Shard Times
						["sourceQuests"] = { 46251 },	-- Shard Times
					}),
					crit(36606, {	-- Mark of the Sentinax
						["sourceQuests"] = { 47139 },	-- Mark of the Sentinax
					}),
					crit(36607, {	-- Self-Fulfilling Prophecy
						["sourceQuests"] = { 46248 },	-- Self-Fulfilling Prophecy
					}),
					crit(36608, {	-- Intolerable Infestation
						["sourceQuests"] = { 46252 },	-- Intolerable Infestation
					}),
					crit(36609, {	-- Relieved of Thier Valuables
						["sourceQuests"] = { 46769 },	-- Relieved of Their Valuables
					}),
					crit(36610, {	-- Take Out the Head...
						["sourceQuests"] = { 46250 },	-- Take Out the Head...
					}),
					crit(36611, {	-- Championing Our Cause
						["sourceQuests"] = { 46249 },	-- Championing Our Cause
					}),
					crit(36597, {	-- Strike Them Down
						["sourceQuests"] = { 46246 },	-- Strike Them Down
					}),
				}),
				ach(11802, {	-- Bringing Home the Beacon
					crit(36652),	-- Shadow Fracture
					crit(36661),	-- Soul Ruin
					crit(36662),	-- Dark Stockades
					crit(36663),	-- Coast of Anguish
					crit(36664),	-- Garrison of the Fel
					crit(36665),	-- Felfire Pass
					crit(36666),	-- Felrage Strand
					crit(36667),	-- Crescent Ruins
					crit(36668),	-- The Creeping Grotto
				}),
				ach(11737),	-- Disrupting the Nether
				ach(11543),	-- Explore Broken Shore
				ach(11738),	-- It'll Nether Happen
				ach(11545),	-- Legionfall Commander
				ach(11841),	-- Naxt Victim
				ach(11735),	-- Take Command
			}),
		}),
	}),
});
