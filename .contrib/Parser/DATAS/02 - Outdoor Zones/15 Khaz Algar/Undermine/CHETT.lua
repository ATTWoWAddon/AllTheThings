---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local CHETT = createHeader({
	readable = "C.H.E.T.T.",
	constant = "CHETT",
	icon = 134391,
	text = {
		en = "C.H.E.T.T.",
	},
});

root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(CHETT, bubbleDownSelf({ ["minReputation"] = { FACTION_CARTELS_OF_UNDERMINE, 13 } }, {
			["description"] = "Once per week you can interact with the C.H.E.T.T. machine to recieve a weekly set of tasks with rewards for completing each one. You can turn in a completed list to C.H.E.T.T. for some valorstones or to your cartel's quartermaster for 500 rep.",
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(41626),	-- C.H.E.T.T. a Look
					ach(41627),	-- C.H.E.T.T.ing it Twice
					ach(41629, {	-- C.H.E.T.T.mate
						["g"] = {
							title(616),	-- Part-Timer %s
						},
					}),
					ach(41630, {	-- "Employee" of the Month
						["g"] = {
							-- Temporary? Its a hidden FoS
							title(617),	-- %s, "Employee" of the Month
						},
					}),
				}),
				n(QUESTS, sharedData({["isWeekly"]=true,}, {
					q(87303),	-- Clean the Sidestreets
					q(87305),	-- Desire to D.R.I.V.E.
					q(87307),	-- Garbage Day
					q(86923),	-- Go Fish
					q(86924),	-- Gotta Catch at Least a Few
					q(87306),	-- Kaja Cruising
					q(87302),	-- Rare Rivals
					q(86918),	-- Reclaimed Scrap
					q(86915),	-- Side with a Cartel
					q(86919),	-- Side Gig
					q(86917),	-- Ship Right
					q(87304),	-- Time to Vacate
					q(86920),	-- War Mode Violence
				})),
				n(REWARDS, {
					i(235053, {	-- Completed C.H.E.T.T. List
						["cost"] = {{ "i", 236682, 1 }},	-- C.H.E.T.T. List
					}),
				}),
				n(VENDORS, {
					n(238029, {	-- C.H.E.T.T.
						["coord"] = { 43.4, 50.5, UNDERMINE },
						["g"] = {
							i(236682, {	-- C.H.E.T.T. List
								["description"] = "Talk to C.H.E.T.T. to be granted one for free, or turn in 40 C.H.E.T.T. cards to earn more after your first.",
								["cost"] = {{ "i", 236668, 40 }},	-- C.H.E.T.T. Card
							}),
							i(237900, {	-- C.H.E.T.T. Pack (COSMETIC!)
								["cost"] = {{ "c", RESONANCE_CRYSTALS, 1000 }},
							}),
						},
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(CARTELS_OF_UNDERMINE, {
		n(CHETT, {
			q(87296),	-- C.H.E.T.T. List (spellID 1219077)
		}),
	}),
})));