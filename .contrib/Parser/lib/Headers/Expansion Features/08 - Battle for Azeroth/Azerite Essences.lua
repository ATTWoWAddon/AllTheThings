AZERITE_ESSENCES = createHeader({
	readable = "Azerite Essences",
	constant = "AZERITE_ESSENCES",
	-- #if NOT ANYCLASSIC
	export = true,	-- NOTE: Currently referenced in Azerite Essences (Dynamic)
	-- #endif
	icon = [[~_.asset("Category_AzeriteEssences")]],
	text = {
		en = [[~SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE2_TITLE]],	-- Heart of Azeroth Essences (close enough!)
	},
});