---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER DF
root(ROOTS.NeverImplemented, n(MOUNT_MODS, {
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			-- With QuestID attached
			i(196984),	-- Cliffside Wylderdrake: Finned Jaw (MM!)
			i(196993),	-- Cliffside Wylderdrake: Sleek Horns (MM!)
			i(192523),	-- Renewed Proto-Drake: Green Scales (MM!)
			i(197356),	-- Renewed Proto-Drake: Hairy Back (MM!)
			i(197354),	-- Renewed Proto-Drake: Horned Back (MM!)
			i(197621),	-- Windborne Velocidrake: Exposed Finned Tail (MM!)
			-- Without QuestID attached
			i(194837),	-- Highland Drake Manuscript: Black Hair (MM!)
			i(194838),	-- Highland Drake Manuscript: Spined Head (MM!)
			i(194836),	-- Highland Drake Manuscript: Spined Throat (MM!)
			i(194839),	-- Cliffside Wylderdrake Manuscript: Conical Head (MM!)
			i(194841),	-- Cliffside Wylderdrake Manuscript: Red Mane (MM!)
			i(194840),	-- Cliffside Wylderdrake Manuscript: Triple Head Horns (MM!)
			i(192111),	-- Renewed Proto-Drake: Red Scales (MM!)
			i(197384),	-- Renewed Proto-Drake: Thick Spined Jaw (MM!)
			i(194831),	-- Renewed Proto Drake Manuscript: Predator Pattern (MM!)
			i(194830),	-- Renewed Proto Drake Manuscript: Red Hair (MM!)
			i(194832),	-- Renewed Proto Drake Manuscript: Spined Crest (MM!)
			i(194833),	-- Windborne Velocidrake Manuscript: Black Fur (MM!)
			i(194835),	-- Windborne Velocidrake Manuscript: Spined Crest (MM!)
			i(194834),	-- Windborne Velocidrake Manuscript: Windswept (MM!)
			-- Only QuestID
			q(69556),	-- Renewed Proto-Drake: Finned Back (MM!)
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			i(203319),	-- Winding Slitherdrake: Finned Cheek (MM!)
			i(203301),	-- Winding Slitherdrake: Light Blue and Copper Armor (MM!)
			i(203302),	-- Winding Slitherdrake: Purple and Silver Armor (MM!)
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			i(210478),	-- Flourishing Whimsydrake: Gold and Pink Armor (MM!)
			i(207757),	-- Grotto Netherwing Drake: Purple and Silver Armor (MM!)
			i(211381),	-- Grotto Netherwing Drake: Violet Scales (MM!)
			i(207777),	-- Grotto Netherwing Drake: Yellow Scales (MM!)
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			i(223510),	-- Delver's Dirigible Schematic: Template (MM!)
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			i(232980),	-- Axel Sneakfoot (MM!)
			i(232979),	-- Jaks Jabberjaw (MM!)
			i(232978),	-- Louie Firehands (MM!)
			i(232930),	-- Zaps Leadfoot (MM!)
			i(235696),	-- Delver's Dirigible Schematic: Explorer Decal (MM!)
			i(235693),	-- Delver's Dirigible Schematic: Rocket (MM!)
		})),
	}),
}));
-- #endif
