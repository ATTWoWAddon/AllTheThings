DELVES_MID_S1 = createHeader({
	readable = "Delves MID S1",
	icon = 1604168,
	text = {
		en = "Delves MID S1",
		es = "Profundidades MID T1",
		mx = "Abismos MID T1",
		ru = "Вылазки MID 1 сезон",
		-- cn = "地心之战地下堡第1季",
	},
});
DELVES_MID_S2 = createHeader({
	readable = "Delves MID S2",
	icon = 1604168,
	text = {
		en = "Delves MID S2",
		es = "Profundidades MID T2",
		mx = "Abismos MID T2",
		ru = "Вылазки MID 2 сезон",
		-- cn = "地心之战地下堡第2季",
	},
});
DELVES_MID_S3 = createHeader({
	readable = "Delves MID S3",
	icon = 1604168,
	text = {
		en = "Delves MID S3",
		es = "Profundidades MID T3",
		mx = "Abismos MID T3",
		ru = "Вылазки MID 3 сезон",
		-- cn = "地心之战地下堡第3季",
	},
});
-- #if AFTER 12.0.0
local ALL_REGULAR_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	-- SHADOWGUARD_POINT,	-- MAPID MISSING
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
};
local ALL_THE_DELVES_MID = {
	ATAL_AMAN,
	COLLEGIATE_CALAMITY,
	PARHELION_PLAZA,
	-- SHADOWGUARD_POINT,	-- MAPID MISSING
	SUNKILLER_SANCTUM,
	THE_DARKWAY,
	THE_GULF_OF_MEMORY,
	THE_GRUDGE_PIT,
	THE_SHADOW_ENCLAVE,
	TORMENTS_RISE,
	TWILIGHT_CRYPTS,
};
-- #endif
local mapped = function(t)
	if not t.maps then
		t.maps = ALL_REGULAR_DELVES_MID
	end
	return t
end
root(ROOTS.Delves, expansion(EXPANSION.MID, applyDataSelf({ ["timeline"] = { ADDED_12_0_0_LAUNCH } }, {
})));
