ARTIFACTS = createHeader({
	readable = "Artifact",
	constant = "ARTIFACTS",
	-- #if AFTER LEGION
	export = true,	-- Used in Artifacts (Dynamic) header.
	-- #endif
	icon = [[~_.asset("Weapon_Type_Artifact")]],
	text = {
		en = [[~ITEM_QUALITY6_DESC]],
	},
});

-- Alternative shortcut
QUALITY_ARTIFACT = ARTIFACTS;
