-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_0, REMOVED_LEGION_REMIX_END } }, {
	n(NEW_CHARACTER, {
		cl(DEATHKNIGHT, {
			
		}),
		cl(DEMONHUNTER, {
			
		}),
		cl(DRUID, {
			
		}),
		cl(EVOKER, {
			
		}),
		cl(HUNTER, {
			
		}),
		cl(MAGE, {
			
		}),
		cl(MONK, {
			
		}),
		cl(PALADIN, {
			
		}),
		cl(PRIEST, {
			
		}),
		cl(ROGUE, {
			
		}),
		cl(SHAMAN, {
			
		}),
		cl(WARRIOR, {
			
		}),
		cl(WARLOCK, {
			
		}),
		n(REWARDS, {
			["description"] = "These items are in the box you get when you make a new character. Their IDs are different than the starter gear that is on you!",
			["groups"] = {
				-- TODO: The users would benefit from knowing what class to make to access these rewards. Description could be used to clarify this easily.
				
			},
		}),
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0, REMOVED_LEGION_REMIX_END } }, {
	applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
		
	})),
})));--]]
