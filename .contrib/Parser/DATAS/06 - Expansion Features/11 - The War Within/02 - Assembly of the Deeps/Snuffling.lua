-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local FIRELIGHT_RUBY = 224642;
SNUFFLING = createHeader({
	readable = "Snuffling",
	icon = 648644,
	text = {
		en = "Snuffling",
		cn = "嗅探",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_ASSEMBLY_OF_THE_DEEPS, {
		n(SNUFFLING, {
			n(QUESTS, {
				q(80378, {	-- A Light of the Dark
					["description"] = "Quest Item drops from Nerubian enemies in the area.\nYou may need to get a few stacks of Unseeming Shift by standing in Blood Pools.",
					["provider"] = { "i", 217390 },	-- Coagulated Black Blood Clot
					["coord"] = { 64.8, 80.8, AZJ_KAHET },
					["g"] = {
						i(217391),	-- Coagulated Black Blood (QI!)
						i(220161),	-- Coagulated Sticks of Blood
					},
				}),
				q(79555, {	-- Deep Wax Galactic
				["description"] = "Quest Item drops from Nerubian enemies in the area.",
					["provider"] = { "i", 217385 },	-- Clump of Waxy Excretion
					["coord"] = { 79.4, 76.5, AZJ_KAHET },
					["g"] = {
						i(212980),	-- Waxy Excretion (QI!)
					},
				}),
				q(82957, {	-- Thanks for the Wax
					["repeatable"] = true,
					["g"] = {
						i(224642),	-- Firelight Ruby
					},
				}),
			}),
			n(REWARDS, {
				i(228210),	-- Firelight Ruby Chip -- this might not belong here idk
			}),
			n(TREASURES, {
				i(223133),	-- Formula: Illusory Adornment: Crystal (RECIPE!)
				--Alex: was looted from mobs during WQ 82580 (Courier Mission: Ore Recovery)
				--could be just zone drop or mob specific type? e.g. deepflayers?
			}),
			n(VENDORS, {
				n(216164, {	-- Gnawbles
					["coord"] = { 47.7, 35.3, THE_RINGING_DEEPS },
					["g"] = {
						i(224726, {	-- Waxy Box of Rocks
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224724, {	-- Waxy Bundle of Dust
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224725, {	-- Waxy Bundle of Herbs
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224723, {	-- Waxy Bundle of Leather
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224722, {	-- Waxy Bundle of Resonant Crystals
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224646, {	-- Coppers (PET!)
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224643, {	-- Pet-Sized Candle (TOY!)
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224761, {	-- Quickwick Candle Kit
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224649, {	-- Wax Arsenal
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224721, {	-- Wax-Sealed Box
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(224760, {	-- Wobbles (PET!)
							["cost"] = {{"i", FIRELIGHT_RUBY, 1}},
						}),
						i(228220, {	-- Waxy Bundle
							["cost"] = {{"i", 228210, 1}},	-- Firelight Ruby Chip
						}),
					},
				}),
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_ASSEMBLY_OF_THE_DEEPS, {
		n(SNUFFLING, {
			q(84433),	-- Show wax to Gnawbles for 79343 'Everyday I'm Snufflin'
			q(84434),	-- Buy 'Waxy Bundle' from Gnawbles during 79343 'Everyday I'm Snufflin'
			q(84543),	-- "Disturbed Dirt" in Golgrin's Reach, Isle of Dorn. The mob "Waxen Bones" spawned. Quest trigger when clicking the dirt, not when killing the mob. // Discord   // I'm clicked on Earthen Console, spawned Wandering Scuttleshell that drop Odd Glob of Wax // Discord // Another Dirt pile but hallowfall this time..
		}),
	}),
})))