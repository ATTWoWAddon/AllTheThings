---------------------------------------------------
--          Z O N E S           M O D U L E      --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		--o(XXXXXX, {	-- The Great Vault
			--["coord"] = { X, Y, MAP.MIDNIGHT.SILVERMOON_CITY },
			["groups"] = {
				i(258556, {["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }}),	-- Thalassian Token of Merit (S1)
				--i(XXXXX, {["timeline"] = { ADDED_12_1_0_SEASONSTART, REMOVED_12_2_0 }}),	-- Thalassian Token of Merit (S2)
				--i(XXXXX, {["timeline"] = { ADDED_12_2_0_SEASONSTART, REMOVED_13_0_X_LAUNCH }}),	-- Thalassian Token of Merit (S3)
			},
		--}),
	}),
}));
