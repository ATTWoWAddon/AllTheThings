WORLD_QUESTS = createHeader({
	readable = "World Quests",
	constant = "WORLD_QUESTS",
	-- #if NOT ANYCLASSIC
	export = true,	-- These are referenced in GetDataCache, but not used in Classic.
	-- #endif
	icon = [[~_.asset("Interface_WorldQuest")]],
	text = {
		en = [[~TRACKER_HEADER_WORLD_QUESTS]],
	},
	description = {
		en = "World Quests are time-limited Quests available in specific locations with variable rewards.\n\nMake sure to check the ATT World Quests window (/attwq) often to see what time-limited Things you should go collect!",
		es = "Las misiones de mundo son misiones por tiempo limitado disponibles en ubicaciones específicas con recompensas variables.\n\n¡Asegúrate de revisar la ventana de misiones de mundo de ATT (/attwq) con frecuencia para ver qué cosas por tiempo limitado debes recolectar!",
		fr = "Les quêtes mondiales sont des quêtes limitées dans le temps, disponibles dans des lieux spécifiques avec des récompenses variables.\n\nN’oublie pas de consulter souvent la fenêtre des quêtes mondiales ATT (/attwq) pour voir quelles sont les objets limités dans le temps que tu dois collecter !",
		mx = "Las misiones de mundo son misiones por tiempo limitado disponibles en ubicaciones específicas con recompensas variables.\n\n¡Asegúrate de revisar la ventana de misiones de mundo de ATT (/attwq) con frecuencia para ver qué cosas por tiempo limitado debes recolectar!",
		ru = "Локальные задания – это ограниченные по времени задания, доступные в определённых местах с переменными наградами.\n\nЧаще проверяйте окно локальных заданий ATT (/attwq), чтобы увидеть какие ограниченные по времени Штучки можно собрать!",
		cn = "世界任务是限定时间内在特定地点进行的任务，奖励不固定。\n\n一定要经常查看 ATT 世界任务窗口 (/attwq)，看看有什么限时的东西你应该去收藏！",
	},
});
