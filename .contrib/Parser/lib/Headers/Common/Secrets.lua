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
		cn = "寻心者密教是一支神秘教派，由元谜题构筑者组成。他们将隐晦线索藏于世间被遗忘的角落，以此考验冒险者。\n他们并无善恶之分；更像是从解谜者共同付出的努力、遭遇的挫败以及最终取得的胜利之中汲取力量。解开他们精心设计的挑战，便能证明你已洞悉艾泽拉斯最深层的秘密。\n\n在此你可以找到他们散布在艾泽拉斯各地、当前可挑战的谜题记录。这些谜题考验着世间众生，若能成功破解，终有机会加入他们的行列。",
		-- TODO: tw = "",
	},
});
