-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			["icon"] = 1535374,
			["groups"] = {
				explorationHeader({
					visit_exploration(15177,{coord={47.2,87.7,LEGION_DALARAN}}),	-- Dalaran
				}),
			},
		}),
	}),
})));
