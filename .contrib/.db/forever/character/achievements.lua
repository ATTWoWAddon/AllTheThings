-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
-- CRIEVE NOTE: Let's keep achievement metas for continents and groups of dungeons/raids here to prevent it from polluting the zones/d&r headers
-- If they start having more than 3 achievements per grouping then we can think about doing it the way we do it in retail.
root(ROOTS.Character, {
	n(ACHIEVEMENTS, {
		ach(62053, {	-- Explore Azeroth
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62353, {	-- Explore Eastern Kingdoms
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62355, {	-- Explore Kalimdor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62382, {	-- Explorer
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62032, {	-- Experienced Spelunker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62033, {	-- Master Spelunker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62031, {	-- Novice Spelunker
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	cl(DRUID, {
		n(ACHIEVEMENTS, {
			ach(61503, {	-- Experienced Druid
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61504, {	-- Master Druid
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61502, {	-- Novice Druid
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(HUNTER, {
		n(ACHIEVEMENTS, {
			ach(61992, {	-- Experienced Hunter
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61993, {	-- Master Hunter
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61989, {	-- Novice Hunter
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(MAGE, {
		n(ACHIEVEMENTS, {
			ach(61995, {	-- Experienced Mage
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61996, {	-- Master Mage
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61994, {	-- Novice Mage
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(PALADIN, {
		n(ACHIEVEMENTS, {
			ach(61998, {	-- Experienced Paladin
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61999, {	-- Master Paladin
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61997, {	-- Novice Paladin
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(PRIEST, {
		n(ACHIEVEMENTS, {
			ach(62001, {	-- Experienced Priest
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62002, {	-- Master Priest
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62000, {	-- Novice Priest
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(ROGUE, {
		n(ACHIEVEMENTS, {
			ach(62004, {	-- Experienced Rogue
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62005, {	-- Master Rogue
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62003, {	-- Novice Rogue
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(SHAMAN, {
		n(ACHIEVEMENTS, {
			ach(62007, {	-- Experienced Shaman
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62008, {	-- Master Shaman
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62006, {	-- Novice Shaman
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(WARLOCK, {
		n(ACHIEVEMENTS, {
			ach(62010, {	-- Experienced Warlock
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62011, {	-- Master Warlock
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(62009, {	-- Novice Warlock
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
	cl(WARRIOR, {
		n(ACHIEVEMENTS, {
			ach(61500, {	-- Experienced Warrior
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61501, {	-- Master Warrior
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			ach(61499, {	-- Novice Warrior
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
	}),
});
