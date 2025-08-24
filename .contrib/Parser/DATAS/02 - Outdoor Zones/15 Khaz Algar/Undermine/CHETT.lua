---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
CHETT = createHeader({
	readable = "C.H.E.T.T.",
	constant = "CHETT",
	icon = 134391,
	text = {
		en = "C.H.E.T.T.",
		de = "C.H.E.T.T.",
		es = "T.C.E.H.T.",
		mx = "T.A.R.E.A.S.",
		fr = "C.H.E.T.T.",
		it = "C.I.H.T.T.",
		pt = "C.H.A.T.A.",
		ru = "КРОТ",
		ko = "안.녕.거.기.",
		cn = "C.H.E.T.T.",
		tw = "C.H.E.T.T.",
	},
});

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(UNDERMINE, {
		n(CHETT, bubbleDownSelf({ ["minReputation"] = { FACTION_CARTELS_OF_UNDERMINE, 13 } }, {
			["description"] = "Once per week you can interact with the C.H.E.T.T. machine to receive a weekly set of tasks with rewards for completing each one. You can turn in a completed list to C.H.E.T.T. for some valorstones or to your cartel's quartermaster for 500 rep.",
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(41626),	-- C.H.E.T.T. a Look
					ach(41627),	-- C.H.E.T.T.ing it Twice
					ach(41629, {	-- C.H.E.T.T.mate
						["description"] = "Turning in a completed list for a Finders Fee will |cffff0000NOT|r give achievement credit.",
						["groups"] = {
							title(616),	-- Part-Timer <Name>
						},
					}),
					ach(41630, {	-- "Employee" of the Month
						["groups"] = {
							-- Temporary? Its a hidden FoS
							title(617),	-- <Name>, "Employee" of the Month
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
						["groups"] = {
							i(236682, {	-- C.H.E.T.T. List
								["description"] = "Talk to C.H.E.T.T. to be granted one for free, or turn in 40 C.H.E.T.T. cards to earn more after your first.",
								["cost"] = {{ "i", 236668, 40 }},	-- C.H.E.T.T. Card
							}),
							i(237900, {	-- C.H.E.T.T. Pack (COSMETIC!)
								["sourceAchievement"] = 41629,	-- C.H.E.T.T.mate
								["cost"] = {{ "c", RESONANCE_CRYSTALS, 1000 }},
							}),
						},
					}),
				}),
			},
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	header(HEADERS.Faction, FACTION_CARTELS_OF_UNDERMINE, {
		n(CHETT, {
			q(87296, { ["isWeekly"] = true }),	-- Free C.H.E.T.T. List acquired (spellID 1219077)
		}),
	}),
}));
