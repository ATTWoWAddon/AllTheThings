---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(WORLD_QUESTS, {
		i(229899),	-- Coffer Key Shard
		currency(RESTORED_COFFER_KEY, {
			["cost"] = {{"i", 229899, 100}},	-- 100x Coffer Key Shard
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(WORLD_QUESTS, {
		m(KHAZ_ALGAR, {
			q(83280, name(HEADERS.Item,228361,{["isWeekly"]=true,})),	-- Granted additional reward from weekly caches #1
			q(83281, name(HEADERS.Item,228361,{["isWeekly"]=true,})),	-- Granted additional reward from weekly caches #2
		}),
	}),
})));