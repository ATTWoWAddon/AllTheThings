DROPS = createHeader({
	readable = "Drops",
	constant = "DROPS",
	npcfill = true,
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in the NPCExpandHeaders / SpecificSources
	-- #endif
	icon = [[~_.asset("Category_WorldDrops")]],
	text = {
		en = "Drops",
		es = "Botín",
		mx = "Botin",
		ru = [[~BATTLE_PET_SOURCE_1]],	-- In English, this is "Drop"
		cn = "掉落",
	},
});
