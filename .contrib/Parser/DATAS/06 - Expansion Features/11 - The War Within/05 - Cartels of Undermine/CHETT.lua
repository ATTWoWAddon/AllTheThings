-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CHETT = createHeader({
	readable = "C.H.E.T.T.",
	constant = "CHETT",
	text = {
		en = "C.H.E.T.T.",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(CARTELS_OF_UNDERMINE, {
		n(CHETT, {
			n(ACHIEVEMENTS, {
				ach(41626),	-- C.H.E.T.T. a Look
				ach(41627),	-- C.H.E.T.T.ing it Twice
				ach(41629),	-- C.H.E.T.T.mate
				ach(41630),	-- "Employee" of the Month
			}),
			n(QUESTS, sharedData({["isWeekly"]=true,}, {
				q(87303),	-- Clean the Sidestreets
				q(87305),	-- Desire to D.R.I.V.E.
				q(87307),	-- Garbage Day
				q(86923),	-- Go Fish
				q(86924),	-- Gotta Catch at Least a Few
				q(87306),	-- Kaja Cruising
				q(86918),	-- Reclaimed Scrap
				q(86915),	-- Side with a Cartel
				q(86919),	-- Side Gig
				q(86917),	-- Ship Right
				q(87304),	-- Time to Vacate
				q(86920),	-- War Mode Violence
			})),
			n(REWARDS, {
				i(235053),	-- C.H.E.T.T. List
			}),
		}),
	}),
})));