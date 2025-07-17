---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(ZONE_REWARDS, {
			currency(3090),	-- Flame-Blessed Iron
			i(233495, {	-- Inky Snapdragon Treat (CI!)
				["description"] = "Requires having obtained the Trashmaster title from the equipable cloak or from having it unlocked permanently from q:56250/q:56249 I am the Trashmaster. You don't need to actually use the title. Talk to Gazix Fusegrease in the main camp.",
				["providers"] = {
					{ "n", 229928 },	-- Gazix Fusegrease <Gazlowe's Greasemonkeys>
					{ "i", 168970 },	-- Trashmaster's Mantle
				},
			}),
		}),
	}),
})));