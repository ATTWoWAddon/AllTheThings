-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(ALCHEMY, {
	n(ACHIEVEMENTS, {
		ach(62014, {	-- Artisan Alchemist
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62013, {	-- Expert Alchemist
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62012, {	-- Journeyman Alchemist
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	header(HEADERS.SpellWithRank, 2259, {	-- Alchemy (Apprentice)
		symselector = SymSelector.ALCHEMY_APPRENTICE,
		groups = {
			r(2259, {	-- Alchemy (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			filter(CONSUMABLES, {
				r(7183),	-- Elixir of Minor Defense
				r(1245250, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Elixir of Minor Force
				r(2334),	-- Elixir of Minor Fortitude
				r(2329),	-- Elixir of Minor Strength
				r(1245246, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Minor Arcane Elixir
				r(2331),	-- Minor Mana Potion
				r(2332),	-- Minor Rejuvenation Potion
				r(3170),	-- Minor Troll's Blood Elixir
			}),
			filter(MISC, {
				r(1230564, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Mana Well
			}),
			filter(REAGENTS, {
				r(1249630, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Cerulean Dye
				r(1249633, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Sulfuric Acid
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3101, {	-- Alchemy (Journeyman)
		symselector = SymSelector.ALCHEMY_JOURNEYMAN,
		groups = {
			r(3101, {	-- Alchemy (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			filter(CONSUMABLES, {
				r(7179),	-- Draught of Water Breathing
				r(7845),	-- Elixir of Fire Power
				r(3177),	-- Elixir of Lesser Defense
				r(3171),	-- Elixir of Wisdom
				r(3173),	-- Lesser Mana Potion
				r(3176),	-- Lesser Troll's Blood Elixir
				r(7841),	-- Swim Speed Potion
			}),
			filter(REAGENTS, {
				r(7836),	-- Blackmouth Oil
				r(7837),	-- Fire Oil
				r(1249631, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Magenta Dye
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 3464, {	-- Alchemy (Expert)
		symselector = SymSelector.ALCHEMY_EXPERT,
		groups = {
			r(3464, {	-- Alchemy (Expert)
				lvl = 20,
				rank = 3,
			}),
			filter(CONSUMABLES, {
				r(12609),	-- Catseye Draught
				r(22808),	-- Draught of Greater Water Breathing
				r(11449),	-- Elixir of Agility
				r(11450),	-- Elixir of Defense
				r(11448),	-- Greater Mana Potion
				r(1251744, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Greater Mender's Potion
				r(3448),	-- Lesser Invisibility Potion
				r(3452),	-- Mana Potion
				r(11451),	-- Oil of Immolation
			}),
			filter(REAGENTS, {
				r(1249632, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Viridian Dye
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 11611, {	-- Alchemy (Artisan)
		symselector = SymSelector.ALCHEMY_ARTISAN,
		groups = {
			r(11611, {	-- Alchemy (Artisan)
				lvl = 35,
				rank = 4,
			}),
			filter(CONSUMABLES, {
				r(11461),	-- Arcane Elixir
				r(11478),	-- Draught of Detect Demon
				r(11460),	-- Draught of Detect Undead
				r(15833),	-- Dreamless Sleep Potion
				r(11467),	-- Elixir of Greater Agility
				r(11465),	-- Elixir of Greater Intellect
			}),
			filter(REAGENTS, {
				r(17551),	-- Stonescale Oil
			}),
		},
	}),
	n(TRAINER_DISCOLORED_POTIONS, {
		symselector = SymSelector.ALCHEMY_DISCOLORED_POTIONS,
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			r(1244646),	-- Discolored Healing Potion
			r(1244647),	-- Greater Discolored Healing Potion
			r(1244645),	-- Lesser Discolored Healing Potion
			r(1244648),	-- Superior Discolored Healing Potion
		},
	}),
});
