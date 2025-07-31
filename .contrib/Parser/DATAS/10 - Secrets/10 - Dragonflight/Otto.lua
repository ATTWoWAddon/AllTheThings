-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	header(HEADERS.Spell, 376873, {	-- Otto
		["description"] = "***Debugg Mode enabled is required to see all the steps. Fishing is required for this Secret!***\n\nYou need to buy an Immaculate Bag of Swog Treasures to get the Aquatic Shades, which costs 1 Gold Coin of the Isles. If you're unlucky, this means fishing up a total of 75 Copper Coins of the Isles to trade up!",
		["modelScale"] = .8,
		["displayID"] = 102074,
		["cost"] = { { "i", 202042, 1 } },	-- 1x Aquatic Shades (TOY!)
		["groups"] = {
			q(72676, {	-- Step 1: Dance, Dance 'Til You're Dead
				["name"] = "Step 1: Dance, Dance 'Til You're Dead",
				["description"] = "Head to The Bubble Bath Dive Bar, off the coast of The Waking Shores. While wearing the Aquatic Shades, find an empty dance floor and walk onto it; you'll receive the debuff Dance Dance 'Til You're Dead. Stay on the dance floor until this debuff wears off.",
				["coord"] = { 19.6, 36.5, THE_WAKING_SHORES },
			}),
			o(385001, {	-- Step 2: Empty Fish Barrel
				["description"] = "Once you wake up from your dance hangover, loot the Empty Fish Barrel. It's directly in front of you.",
				["sourceQuests"] = { 72676 },	-- Step 1: Dance, Dance 'Til You're Dead
				["coord"] = { 20, 40, THE_WAKING_SHORES },
				["groups"] = {
					i(202061),	-- Empty Fish Barrel
				},
			}),
			i(202061, {	-- Step 3: Fill the Barrel
				["name"] = "Step 3: Fill the Barrel",
				["description"] = "Time to go fishing! You'll need to fill up the barrel with various fish from around The Dragon Isles.",
				["sourceQuests"] = { 72676 },	-- Step 1: Dance, Dance 'Til You're Dead
				["requireSkill"] = FISHING,
				["cost"] = { { "i", 202072, 100 } },	-- 100x Frigid Floe Fish
				["groups"] = {
					i(202072, {	-- Frigid Floe Fish
						["description"] = "You'll need 100 of these fish. They can be found in open waters in the Azure Span. After using them with the barrel, you'll receive a Half-Filled Fish Barrel.",
						["coord"] = { 12.4, 50, THE_AZURE_SPAN },
					}),
				},
			}),
			i(202066, {	-- Step 4: Keep Filling the Barrel
				["name"] = "Step 4: Keep Filling the Barrel",
				["description"] = "Now that your barrel is half full, the fishing gets harder. You're looking for lava fish now.",
				["sourceQuests"] = { 72676 },	-- Step 1: Dance, Dance 'Til You're Dead
				["requireSkill"] = FISHING,
				["cost"] = { { "i", 202073, 25 } },	-- 25x Calamitous Carp
				["groups"] = {
					i(202073, {	-- Calamitous Carp
						["description"] = "You'll need 25 of these fish. Keep in mind, they're rarer drops, so this will take longer than the Frigid Floe Fish.",
						["coord"] = { 35.8, 64.6, THE_WAKING_SHORES },
					}),
				},
			}),
			q(72808, {	-- Step 5: One Last Fish
				["name"] = "Step 5: One Last Fish",
				["description"] = "Only one fish to go! Top it off with an epic fish from Algeth'ar Academy.",
				["sourceQuests"] = { 72676 },	-- Step 1: Dance, Dance 'Til You're Dead
				["cost"] = { { "i", 202074, 1 } },	-- 1x Kingfin, the Wise Whiskerfish
				["requireSkill"] = FISHING,
				["groups"] = {
					i(202074, {	-- Kingfin, the Wise Whiskerfish
						["description"] = "Just one! But it'll take a while. Having good Perception on your Profession gear may help.",
						["coord"] = { 56, 44.5, THALDRASZUS },
					}),
					i(202068),	-- Brimming Fish Barrel
				},
			}),
			i(202069, {	-- Step 6: Back to the Beginning
				["name"] = "Step 6: Back to the Beginning",
				["description"] = "Head back to where you originally picked up the empty barrel, and place the Overflowing Fish Barrel on the ground.",
				["coord"] = { 20, 40, THE_WAKING_SHORES },
			}),
			q(72738, {	-- Step 7: The Way to an Otto's Heart
				["name"] = "Step 7: The Way to an Otto's Heart",
				["sourceQuests"] = { 72808 },	-- Step 5: One Last Fish
				["provider"] = { "n", 199563 },	-- Otto
				["coord"] = { 20, 40, THE_WAKING_SHORES },
				["groups"] = {
					i(198870),	-- Otto (Mount!!)
				},
			}),
		},
	}),
})));
