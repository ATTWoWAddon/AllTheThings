HONOR_TITLES = createHeader({
	readable = "Honor Titles",
	constant = "HONOR_TITLES",
	icon = 135358,
	text = {
		-- #if ANYCLASSIC
		en = "Honor Titles",
		-- TODO: de = "",
		es = "Titulos de honor",
		mx = "Titulos de honor",		
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = [[~HONOR .. PAPERDOLL_SIDEBAR_TITLES]],
		-- TODO: tw = "",
		-- #else
		en = [[~HONOR .. " " .. PAPERDOLL_SIDEBAR_TITLES]],
		es = "Titulos de honor",
		mx = "Titulos de honor",
		-- TODO: de = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = [[~HONOR .. PAPERDOLL_SIDEBAR_TITLES]],
		-- TODO: tw = "",
		-- #endif
	},
});
