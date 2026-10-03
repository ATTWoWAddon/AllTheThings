-------------
-- ALCHEMY --
-------------
ALCHEMY_RECIPES = {
	APPRENTICE = {
		r(2259,	{	-- Alchemy (Apprentice)
			["lvl"] = 5,
			["rank"] = 1,
		}),
		filter(CONSUMABLES, {
			r(7183),	-- Elixir of Minor Defense
			r(1245250, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Elixir of Minor Force
			r(2334),	-- Elixir of Minor Fortitude
			r(2329),	-- Elixir of Minor Strength
			r(1245246, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Minor Arcane Elixir
			r(2331),	-- Minor Mana Potion
			r(2332),	-- Minor Rejuvenation Potion
			r(3170),	-- Minor Troll's Blood Elixir
		}),
		filter(MISC, {
			r(1230564, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Mana Well
		}),
		filter(REAGENTS, {	
			r(1249630, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Cerulean Dye
			r(1249633, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Sulfuric Acid
		}),
	};
	JOURNEYMAN = {
		r(3101,	{	-- Alchemy (Journeyman)
			["lvl"] = 10,
			["rank"] = 2,
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
			r(1249631, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Magenta Dye
		}),
	};
	EXPERT = {
		r(3464,	{	-- Alchemy (Expert)
			["lvl"] = 20,
			["rank"] = 3,
		}),
		filter(CONSUMABLES, {
			r(12609),	-- Catseye Draught
			r(22808),	-- Draught of Greater Water Breathing
			r(11449),	-- Elixir of Agility
			r(11450),	-- Elixir of Defense
			r(11448),	-- Greater Mana Potion
			r(1251744, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Greater Mender's Potion
			r(3448),	-- Lesser Invisibility Potion
			r(3452),	-- Mana Potion
			r(11451),	-- Oil of Immolation
		}),
		filter(REAGENTS, {
			r(1249632, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Viridian Dye
		}),
	};
	ARTISAN = {
		r(11611, {	-- Alchemy (Artisan)
			["lvl"] = 35,
			["rank"] = 4,
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
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(271621, {	-- Alchemy Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(250388, {	-- Recipe: Elixir of Lesser Intellect (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250381, {	-- Recipe: Elixir of Lesser Spirit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250984, {	-- Recipe: Frenzy Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250378, {	-- Recipe: Lesser Arcane Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250367, {	-- Recipe: Lesser Cleric's Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250376, {	-- Recipe: Lesser Mageblood Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250990, {	-- Recipe: Mender's Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250978, {	-- Recipe: Spellblasting Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(250996, {	-- Recipe: Disorienting Smog Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250371, {	-- Recipe: Elixir of Greater Fortitude (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250383, {	-- Recipe: Elixir of Greater Spirit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250997, {	-- Recipe: Dragonfire Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250369, {	-- Recipe: Greater Cleric's Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250377, {	-- Recipe: Greater Mageblood Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
		}, {	-- Honored
			i(250995, {	-- Recipe: Caustic Smog Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250364, {	-- Recipe: Elixir of Cunning (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250386, {	-- Recipe: Elixir of Ferocity (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250379, {	-- Recipe: Elixir of Nature Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250374, {	-- Recipe: Elixir of Sages (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250387, {	-- Recipe: Elixir of the Grizzly (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(250373, {	-- Recipe: Elixir of the Owl (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250365, {	-- Recipe: Elixir of the Phalanx (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250384, {	-- Recipe: Elixir of the Whale (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250372, {	-- Recipe: Elixir of Wicked Regeneration (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250987, {	-- Recipe: Major Frenzy Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(250993, {	-- Recipe: Major Mender's Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250981, {	-- Recipe: Major Spellblasting Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250998, {	-- Recipe: Potion of Elemental Siphoning (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250994, {	-- Recipe: Potion of Venomous Blood (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
		{	-- Neutral
			i(271621, {	-- Alchemy Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(250388, {	-- Recipe: Elixir of Lesser Intellect (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250381, {	-- Recipe: Elixir of Lesser Spirit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250984, {	-- Recipe: Frenzy Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250378, {	-- Recipe: Lesser Arcane Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250367, {	-- Recipe: Lesser Cleric's Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250376, {	-- Recipe: Lesser Mageblood Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250990, {	-- Recipe: Mender's Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(250978, {	-- Recipe: Spellblasting Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(250996, {	-- Recipe: Disorienting Smog Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250371, {	-- Recipe: Elixir of Greater Fortitude (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250383, {	-- Recipe: Elixir of Greater Spirit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250997, {	-- Recipe: Dragonfire Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250369, {	-- Recipe: Greater Cleric's Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(250377, {	-- Recipe: Greater Mageblood Elixir (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
		}, {	-- Honored
			i(250995, {	-- Recipe: Caustic Smog Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250364, {	-- Recipe: Elixir of Cunning (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250386, {	-- Recipe: Elixir of Ferocity (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250379, {	-- Recipe: Elixir of Nature Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250374, {	-- Recipe: Elixir of Sages (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250387, {	-- Recipe: Elixir of the Grizzly (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(250373, {	-- Recipe: Elixir of the Owl (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250365, {	-- Recipe: Elixir of the Phalanx (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250384, {	-- Recipe: Elixir of the Whale (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250372, {	-- Recipe: Elixir of Wicked Regeneration (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250987, {	-- Recipe: Major Frenzy Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(250993, {	-- Recipe: Major Mender's Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250981, {	-- Recipe: Major Spellblasting Potion (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250998, {	-- Recipe: Potion of Elemental Siphoning (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(250994, {	-- Recipe: Potion of Venomous Blood (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	DISCOLORED_HEALING_POTION = sharedData({ ["timeline"] = { TIMELINE.ADDED_1_60_1 } }, {
		r(1244646),	-- Discolored Healing Potion
		r(1244647),	-- Greater Discolored Healing Potion
		r(1244645),	-- Lesser Discolored Healing Potion
		r(1244648),	-- Superior Discolored Healing Potion
	});
};
--[[ Move to First Aid
r(3447),	-- Healing Potion
r(2337),	-- Lesser Healing Potion
r(7181),	-- Greater Healing Potion
r(11457),	-- Superior Healing Potion
--]]