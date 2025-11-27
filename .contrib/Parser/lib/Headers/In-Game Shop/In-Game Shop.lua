IN_GAME_SHOP = createHeader({
	readable = "In-Game Shop",
	constant = "IN_GAME_SHOP",
	-- #if AFTER 2.0.1
	export = true,
	-- #endif
	icon = [[~_.asset("Category_InGameShop")]],
	text = {
		en = [[~BATTLE_PET_SOURCE_10]],
	},
	description = {
		-- #if ANYCLASSIC
		en = "This section will show you things that you could buy in the In-Game Shop in Retail.",
		-- TODO: de = "",
		es = "Esta sección te mostrará cosas que puedes comprar en la Tienda del Juego en Retail.",
		mx = "Esta sección te mostrará cosas que puedes comprar en la Tienda del Juego en Retail.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "此部分显示能在正式服的游戏内商城购买的东西。",
		tw = "此部分顯示能在正式服的遊戲內商城購買的東西。",
		-- #else
		en = "This section will show you things that you can buy in the In-Game Shop.",
		-- TODO: de = "",
		es = "Esta sección te mostrará cosas que puedes comprar en la Tienda del Juego.",
		mx = "Esta sección te mostrará cosas que puedes comprar en la Tienda del Juego.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "此部分显示能在游戏内商城购买的东西。",
		tw = "此部分顯示能在遊戲內商城購買的東西。",
		-- #endif
	},
});
