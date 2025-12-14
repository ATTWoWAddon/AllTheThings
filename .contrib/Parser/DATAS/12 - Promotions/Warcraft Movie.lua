-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
WARCRAFT_MOVIE = createHeader({
	readable = "Warcraft Movie",
	icon = 133885,
	text = {
		en = "Warcraft Movie",
		-- TODO: de = "",
		es = "Warcraft La película",
		mx = "Warcraft La película",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "魔兽电影",
		tw = "魔獸電影",
	},
	description = {
		en = "These were rewarded for logging in at least once per faction while the Warcraft movie was still in theaters.",
		-- TODO: de = "",
		es = "Estos fueron recompensados por iniciar sesión al menos una vez por facción mientras la película de Warcraft aún estaba en los cines.",
		mx = "Estos fueron recompensados por iniciar sesión al menos una vez por facción mientras la película de Warcraft aún estaba en los cines.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "这些是在《魔兽》电影仍在上映期间，每个阵营至少登入一次所获得的奖励。",
		tw = "這些是在《魔獸：崛起》電影仍在上映期間，每個陣營至少登入一次所獲得的獎勵。",
	},
});
root(ROOTS.Promotions, n(WARCRAFT_MOVIE, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
	["timeline"] = { ADDED_7_0_3 },
	["groups"] = {
		a(ach(11210)),	-- Fight for the Alliance
		h(ach(11211)),	-- Fight for the Horde
		a(i(140997, {	-- Alliance Strongbox
			i(140999),	-- Replica Lion's Gang
			i(141000),	-- Replica Lion's Heart
		})),
		h(i(140998, {	-- Horde Strongbox
			i(141001),	-- Replica Blood Guard's Cleaver
			i(141002),	-- Replica Staff of Gul'dan
		})),
	},
})));
