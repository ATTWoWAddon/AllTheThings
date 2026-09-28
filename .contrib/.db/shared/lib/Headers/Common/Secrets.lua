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
		es = "Los Buscamentes son un enigmático culto de arquitectos de meta-acertijos que ponen a prueba a los aventureros mediante pistas oscuras ocultas en rincones olvidados del mundo. No son ni benevolentes ni malévolos; más bien, parecen obtener sustento del esfuerzo colectivo, la frustración y el eventual triunfo de aquellos que persiguen sus acertijos. Resolver sus elaborados desafíos demuestra el dominio de los secretos más profundos de Azeroth. Aquí encontrarás registros de los acertijos disponibles actualmente que han dispersado por todo Azeroth, desafiando a los habitantes a resolverlos y, con el tiempo, unirse a sus filas.",
		mx = "Los buscamentes son un enigmático culto de arquitectos de meta-acertijos que ponen a prueba a los aventureros mediante pistas oscuras ocultas en rincones olvidados del mundo. No son ni benevolentes ni malévolos; más bien, parecen obtener sustento del esfuerzo colectivo, la frustración y el eventual triunfo de aquellos que persiguen sus acertijos. Resolver sus elaborados desafíos demuestra el dominio de los secretos más profundos de Azeroth. Aquí encontrarás registros de los acertijos disponibles actualmente que han dispersado por todo Azeroth, desafiando a los habitantes a resolverlos y, con el tiempo, unirse a sus filas.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "寻心者是一个神秘的教派，由一群元谜题的设计者组成，他们用隐藏在世界各个被遗忘角落里的晦涩线索来考验冒险者。\n他们既非善良也非邪恶；相反，他们似乎从追寻其谜题之人的共同努力、挫败感乃至最终的胜利中汲取养分。解开他们精心设计的挑战，即证明了你已掌握艾泽拉斯最深邃的秘密。\n\n在这里，你可以找到他们散布在艾泽拉斯的当前可用谜题的记录，他们以此挑战当地居民去解开谜题，并最终加入他们的行列。",
		-- TODO: tw = "",
	},
});
