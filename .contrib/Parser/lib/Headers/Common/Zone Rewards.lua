ZONE_REWARDS = createHeader({
	readable = "Zone Rewards",
	constant = "ZONE_REWARDS",
	-- #if NOT ANYCLASSIC
	export = true,	-- This is referenced in the bfa_azerite_armor_chest_zonedrops symlink
	-- #endif
	icon = [[~_.asset("Interface_Rewards")]],
	text = {
		en = "Zone Rewards",
		-- TODO: de = "",
		es = "Recompensa de zona",
		mx = "Recompensa de zona",
		fr = "Récompenses de la zone",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Добыча локации",
		cn = "地区奖励",
		tw = "地區獎勵",
	},
	description = {
		en = "These items can drop from many many sources and are usually not difficult to obtain either.\n\nWhile not every source is possible in every Zone, here is a list of possible Sources:\nEmissary Quest (Legion&later)\nRare NPCs (MoP&later)\nRepeatable Treasure Chests (SL)\nTable missions (Legion&later)\nWish Crickets (SL)\nWorld Quests (Legion&later)\nZone Drops (MoP&later)",
		-- TODO: de = "",
		es = "Estos objetos pueden obtenerse de muchas fuentes y, por lo general, no son difíciles de conseguir.\n\nAunque no todas las fuentes son posibles en todas las zonas, aquí hay una lista de posibles fuentes:\nMisión de emisario (Legión y posteriores)\nPNJ raros (MoP y posteriores)\nCofres del tesoro repetibles (SL)\nMisiones de mesa (Legión y posteriores)\nGrillos de deseos (SL)\nMisiones del mundo (Legión y posteriores)\nObjetos de zona (MoP y posteriores)",
		mx = "Estos objetos pueden obtenerse de muchas fuentes y, por lo general, no son difíciles de conseguir.\n\nAunque no todas las fuentes son posibles en todas las zonas, aquí hay una lista de posibles fuentes:\nMisión de emisario (Legión y posteriores)\nPNJ raros (MoP y posteriores)\nCofres del tesoro repetibles (SL)\nMisiones de mesa (Legión y posteriores)\nGrillos de deseos (SL)\nMisiones del mundo (Legión y posteriores)\nObjetos de zona (MoP y posteriores)",
		fr = "Ces objets peuvent provenir de coffres au trésor répétitifs, Criquet à souhait, de quêtes mondiales ou des missions de la table de commandement.",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Эти предметы можно получить в награду из:\nЗадания эмиссара (Легион+)\nПовторяемые сокровища (ТЗ+)\nЗадания командирского стола (Легион+)\nЗаветные сверчки (ТЗ)\nЛокальные задания (Легион+)",
		cn = "这些物品可以从可重复的宝箱、祈愿蟋蟀、世界任务或桌面任务中掉落。",
		tw = "這些物品可以從稀有菁英、可重複的寶箱、祈願蟋蟀、世界任務、指揮桌任務中取得。"
	},
});
