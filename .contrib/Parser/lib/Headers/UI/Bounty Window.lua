UI_BOUNTY_WINDOW = createHeader({
	readable = "UI - Bounty",
	constant = "UI_BOUNTY_WINDOW",	-- This dynamic category is for isBounty marked things.
	export = true,
	-- #if AFTER 8.0.1
	icon = 2125377,
	-- #else
	icon = 236188,
	-- #endif
	text = {
		en = "Bounty",
		de = "Kopfgeld",
		es = "Recompensa",
		mx = "Recompensa",
		fr = "Prime",
		it = "Premio",
		ko = "하사품",
		pt = "Recompensa",
		ru = "Премия",
		cn = "赏金任务",
		-- TODO: tw = "",
	},
	description = {
		en = "This list contains Unobtainable items that the ATT Discord has reported as bugs that Blizzard has yet to fix.\n\nNOTE: All filters are ignored within this list for visibility. Only items removed from the game due to negligence rather than a gigantic fire breathing dragon are present on this list.\n\nTo Blizzard Devs: Please fix the items and encounters listed below.",
		de = "Diese Liste enthält nicht erhältliche Gegenstände, die von ATT Discord als Fehler gemeldet wurden, die Blizzard noch beheben muss.\n\nHINWEIS: Alle Filter werden aus Sichtbarkeitsgründen in dieser Liste ignoriert. In dieser Liste sind nur Gegenstände enthalten, die aufgrund von Fahrlässigkeit aus dem Spiel entfernt wurden, und nicht ein riesiger feuerspeiender Drache.\n\nAn Blizzard-Entwickler: Bitte beheben Sie die unten aufgeführten Gegenstände und Begegnungen.",
		es = "Esta lista contiene objetos no obtenibles que ATT Discord ha informado como errores que Blizzard aún no ha solucionado.\n\nNOTA: Todos los filtros se ignoran en esta lista para mayor visibilidad. En esta lista solo están presentes los objetos eliminados del juego debido a negligencia y no a un gigantesco dragón que escupe fuego.\n\nA los desarrolladores de Blizzard: arreglen los objetos y encuentros que se enumeran a continuación.",
		mx = "Esta lista contiene objetos no obtenibles que ATT Discord ha informado como errores que Blizzard aún no ha solucionado.\n\nNOTA: Todos los filtros se ignoran en esta lista para mayor visibilidad. En esta lista solo están presentes los objetos eliminados del juego debido a negligencia y no a un gigantesco dragón que escupe fuego.\n\nA los desarrolladores de Blizzard: arreglen los objetos y encuentros que se enumeran a continuación.",
		fr = "Cette liste contient des éléments impossibles à obtenir que ATT Discord a signalés comme des bogues que Blizzard n'a pas encore corrigés.\n\nREMARQUE : Tous les filtres sont ignorés dans cette liste pour des raisons de visibilité. Seuls les éléments retirés du jeu en raison d'une négligence plutôt que d'un gigantesque dragon cracheur de feu sont présents sur cette liste.\n\nAux développeurs de Blizzard : veuillez corriger les éléments et les rencontres répertoriés ci-dessous.",
		it = "Questo elenco contiene elementi non ottenibili che ATT Discord ha segnalato come bug che Blizzard deve ancora correggere.\n\nNOTA: tutti i filtri vengono ignorati in questo elenco per motivi di visibilità. In questo elenco sono presenti solo gli oggetti rimossi dal gioco a causa di negligenza e non un gigantesco drago sputafuoco.\n\nAgli sviluppatori Blizzard: correggete gli oggetti e gli incontri elencati di seguito.",
		ko = "이 목록에는 ATT Discord에서 Blizzard가 아직 수정하지 않은 버그로 보고한 얻을 수 없는 항목이 포함되어 있습니다.\n\n참고: 가시성을 위해 이 목록 내에서 모든 필터는 무시됩니다. 거대한 불을 뿜는 용이 아닌 부주의로 인해 게임에서 제거된 아이템만 이 목록에 있습니다.\n\n블리자드 개발자 여러분께: 아래 나열된 아이템과 만남을 수정해 주세요.",
		pt = "Esta lista contém itens inacessíveis que o ATT Discord relatou como bugs que a Blizzard ainda não corrigiu.\n\nNOTA: Todos os filtros são ignorados nesta lista para visibilidade. Apenas itens removidos do jogo por negligência, em vez de um gigantesco dragão cuspidor de fogo, estão presentes nesta lista.\n\nPara os desenvolvedores da Blizzard: Corrijam os itens e encontros listados abaixo.",
		ru = "Этот список содержит Недоступные предметы, что Дискорд ATT сообщил как ошибки, которые Blizzard ещё не исправили.\n\nВНИМАНИЕ: Все фильтры игнорируются в данном списке для видимости. Только предметы, удалённые из игры из-за халатности, но не из-за гигантского огнедышащего дракона, перечислены в данном списке.\n\nК разработчикам Blizzard: Пожалуйста, почините предметы и события, перечисленные ниже.",
		cn = "此列表包含 ATT Discord 报告的无法获取的物品，这些物品是暴雪尚未修复的错误。\n\n注意：在此列表中忽略所有过滤器以获得可见性。此列表中仅显示因疏忽而从游戏中移除的物品。\n\n致暴雪开发者：请修复下面列出的物品和事件。",
		-- TODO: tw = "",
	},
});
