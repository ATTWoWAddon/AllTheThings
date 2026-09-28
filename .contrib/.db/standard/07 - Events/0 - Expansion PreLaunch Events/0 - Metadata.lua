-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

-- since many world event files aren't organized based on pre-launch event, we can setup the prelaunch groupings here first to ensure correct expac order
root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansion(EXPANSION.TBC),
	expansion(EXPANSION.WRATH),
	expansion(EXPANSION.CATA),
	expansion(EXPANSION.MOP),
	expansion(EXPANSION.LEGION),
	expansion(EXPANSION.BFA),
	expansion(EXPANSION.SL),
	expansion(EXPANSION.DF),
	expansion(EXPANSION.TWW),
}))
