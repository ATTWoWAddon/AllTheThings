SECRETS = createHeader({
	readable = "Secrets",
	constant = "SECRETS",
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in GetDataCache, but not used in Classic.
	-- #endif
	icon = [[~_.asset("Category_Secrets")]],
	text = {
		en = "Secrets",
		de = "Rätsel",
		es = "Secretos",
		mx = "Secretos",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Секреты",
		cn = "解密",
		-- TODO: tw = "",
	},
	description = {
		en = "The Mind-Seekers are an enigmatic cult of meta-puzzle architects who test Adventurers through obscure clues hidden in forgotten corners of the world.\nThey are neither benevolent nor malevolent; rather, they seem to derive sustenance from the collective effort, frustration, and eventual triumph of those who pursue their riddles. Solving their elaborate challenges proves one's mastery of Azeroth's deepest secrets.\n\nHere you will find records of currently available riddles they have scattered throughout Azeroth, challenging the denizens to solve them and, in time, join their ranks.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});
