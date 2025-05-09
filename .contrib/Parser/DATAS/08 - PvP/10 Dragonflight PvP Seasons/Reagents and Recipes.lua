-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	filter(REAGENTS, {
		i(190450),	-- Awakened Ire
		i(190451),	-- Rousing Ire
	}),
	filter(RECIPES, {
		i(201257, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 }}),	-- Bloodstained Pattern: Infurious Hide (RECIPE!)
		i(201259, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 }}),	-- Bloodstained Pattern: Infurious Scales (RECIPE!)
		i(201258, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_11_0_0 }}),	-- Bloodstained Pattern: Infurious Wildercloth Bolt (RECIPE!)
		i(201256),	-- Bloodstained Plans: Infurious Alloy (RECIPE!)
		-- #if AFTER TWW
		n(221421, { -- Eraneth <Draconic Combatant Recipes>
			["timeline"] = { ADDED_11_0_0 },
			["coord"] = { 43.6, 42.4, VALDRAKKEN },
			["g"] = sharedData({ ["cost"] = {{"i", MOH, 3}} }, {
		-- #endif
				i(194646),	-- Design: Djaradin's "Pinata" (RECIPE!)
				i(193877),	-- Pattern: Infurious Boots of Reprieve (RECIPE!)
				i(193884),	-- Pattern: Infurious Chainhelm Protector (RECIPE!)
				i(193879),	-- Pattern: Infurious Footwraps of Indemnity (RECIPE!)
				i(194257),	-- Pattern: Infurious Handwraps of Gesticulation (RECIPE!)
				i(200103),	-- Pattern: Infurious Hide (RECIPE!)
				i(194258),	-- Pattern: Infurious Legwraps of Possibility (RECIPE!)
				i(200104),	-- Pattern: Infurious Scales (RECIPE!)
				i(193871),	-- Pattern: Infurious Spirit's Hood (RECIPE!)
				i(194269),	-- Pattern: Infurious Wildercloth Bolt (RECIPE!)
				i(200102),	-- Plans: Infurious Alloy (RECIPE!)
				i(194484),	-- Plans: Infurious Helm of Vengeance
				i(194485),	-- Plans: Infurious Warboots of Impunity
				i(199241, {["timeline"] = { CREATED_10_0_0, ADDED_10_0_7 }}),	-- Schematic: H.E.L.P. (RECIPE!)
				i(199238),	-- Schematic: Sticky Warp Grenade (RECIPE!)
				i(199239),	-- Schematic: Tinker: Alarm-O-Turret (RECIPE!)
				i(199299),	-- Schematic: Tinker: Polarity Amplifier (RECIPE!)
		-- #if AFTER TWW
			}),
		}),
		-- #endif
	}),
}))));