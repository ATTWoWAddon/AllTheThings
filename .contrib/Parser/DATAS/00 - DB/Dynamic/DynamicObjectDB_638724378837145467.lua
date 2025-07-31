local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[412066] = {
		readable = "Throwing Stone",
		model = 3084327,
		text = {
			en = "Throwing Stone",
			de = "Wurfstein",
			es = "Piedra lanzable",
			mx = "Piedra arrojadiza",
			fr = "Pierre de lancer",
			it = "Lancio Pietra",
			pt = "Pedra de Arremessar",
			ru = "Метательный камень",
			ko = "투척용 돌",
			cn = "飞掷之石",
			tw = "投擲石頭",
		},
	},
})
do ObjectDB[objectID] = objectData; end
