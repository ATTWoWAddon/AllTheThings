---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		o(381035, {	-- The Great Vault
			["coord"] = { 58.8, 57.9, VALDRAKKEN },
			["groups"] = {
				i(201836, {["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 }}),	-- Aspects' Token of Merit (S1)
				i(205225, {["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }}),	-- Aspects' Token of Merit (S2)
				i(208821, {["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }}),	-- Aspects' Token of Merit (S3)
				i(217409, {["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }}),	-- Aspects' Token of Merit (S4)
			},
		}),
	}),
})));
