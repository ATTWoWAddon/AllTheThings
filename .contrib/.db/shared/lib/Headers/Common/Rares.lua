RARES = createHeader({
	readable = "Rares",
	constant = "RARES",
	export = true,
	icon = [[~_.asset("Interface_Rare")]],
	text = {
		-- #if AFTER TWW
		en = [[~MAP_LEGEND_RARE]],
		-- TODO: de = "",
		es = "Raro",
		mx = "Raro",	-- this is to avoid use the word in female because blizz use "rara" from "criatura rara" and latam players say "raros" from "enemigos raros"
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Редкие",
		cn = "稀有",
		-- TODO: tw = "",
		-- #else
		en = [[~BATTLE_PET_BREED_QUALITY4]],
		-- TODO: de = "",
		es = "Raro",
		mx = "Raro",	-- this is to avoid use the word in female because blizz use "rara" from "criatura rara" and latam players say "raros" from "enemigos raros"
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Редкие",
		cn = "稀有",
		-- TODO: tw = "",
		-- #endif
	},
});
