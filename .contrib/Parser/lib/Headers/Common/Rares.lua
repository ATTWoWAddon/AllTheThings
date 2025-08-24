RARES = createHeader({
	readable = "Rares",
	constant = "RARES",
	export = true,
	icon = [[~_.asset("Interface_Rare")]],
	text = {
		-- #if AFTER TWW
		en = [[~MAP_LEGEND_RARE]],
		mx = "Raro", -- this is to avoid use the word in female because blizz use "rara" from "criatura rara" and latam players say "raros" from "enemigos raros"
		-- #else
		en = [[~BATTLE_PET_BREED_QUALITY4]],
		es = "Raro",
		mx = "Raro",
		ru = "Редкие",
		cn = "稀有",
		-- #endif
	},
});
