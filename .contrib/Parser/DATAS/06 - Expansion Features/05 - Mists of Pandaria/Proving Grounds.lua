-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

PROVING_GROUNDS = createHeader({
	readable = "Proving Grounds",
	icon = 618859,
	text = {
		en = [[~TRACKER_HEADER_PROVINGGROUNDS]],
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {
	n(PROVING_GROUNDS, {
		["maps"] = { 480 },	-- Proving Grounds
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(9572),	-- Proving Yourself: Bronze Damage
				ach(9573),	-- Proving Yourself: Silver Damage
				ach(9574),	-- Proving Yourself: Gold Damage
				ach(9575),	-- Proving Yourself: Endless Damage (Wave 10)
				ach(9576),	-- Proving Yourself: Endless Damage (Wave 20)
				ach(9577, {	-- Proving Yourself: Endless Damage (Wave 30) (Damage Series)
					title(215),	-- the Proven Assailant
				}),
				ach(9584),	-- Proving Yourself: Bronze Healer
				ach(9585),	-- Proving Yourself: Silver Healer
				ach(9586),	-- Proving Yourself: Gold Healer
				ach(9587),	-- Proving Yourself: Endless Healer (Wave 10)
				ach(9588),	-- Proving Yourself: Endless Healer (Wave 20)
				ach(9589, {	-- Proving Yourself: Endless Healer (Wave 30) (Healer Series)
					title(219),	-- the Proven Healer
				}),
				ach(9578),	-- Proving Yourself: Bronze Tank
				ach(9579),	-- Proving Yourself: Silver Tank
				ach(9580),	-- Proving Yourself: Gold Tank
				ach(9581),	-- Proving Yourself: Endless Tank (Wave 10)
				ach(9582),	-- Proving Yourself: Endless Tank (Wave 20)
				ach(9583, {	-- Proving Yourself: Endless Tank (Wave 30) (Tank Series)
					title(216),	-- the Proven Defender
				}),
				ach(8507, {		-- Proving Yourself: Endless Damage (Wave 30) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8504, {		-- Proving Yourself: Endless Damage (Wave 20) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8501, {		-- Proving Yourself: Endless Damage (Wave 10) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8496, {		-- Proving Yourself: Gold Damage (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8491, {		-- Proving Yourself: Silver Damage (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8486, {		-- Proving Yourself: Bronze Damage (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8509, {		-- Proving Yourself: Endless Healer (Wave 30) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8506, {		-- Proving Yourself: Endless Healer (Wave 20) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8503, {		-- Proving Yourself: Endless Healer (Wave 10) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8498, {		-- Proving Yourself: Gold Healer (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8493, {		-- Proving Yourself: Silver Healer (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8488, {		-- Proving Yourself: Bronze Healer (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8508, {		-- Proving Yourself: Endless Tank (Wave 30) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8505, {		-- Proving Yourself: Endless Tank (Wave 20) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8502, {		-- Proving Yourself: Endless Tank (Wave 10) (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8497, {		-- Proving Yourself: Gold Tank (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8492, {		-- Proving Yourself: Silver Tank (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8487, {		-- Proving Yourself: Bronze Tank (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8697, {		-- You're Doing it Wrong (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(8812, {	-- You're Really Doing It Wrong (Level 90)
					["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				}),
				ach(9590),	-- You're Doing it Wrong (META)
				ach(9597),	-- You're Really Doing It Wrong
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, {
	applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
		n(PROVING_GROUNDS, {
			q(33089),	-- FLAG - Proving Grounds - Damage Bronze
			q(33091),	-- FLAG - Proving Grounds - Damage Gold
			q(33090),	-- FLAG - Proving Grounds - Damage Silver
			q(33095),	-- FLAG - Proving Grounds - Healer Bronze
			q(33097),	-- FLAG - Proving Grounds - Healer Gold
			q(33096),	-- FLAG - Proving Grounds - Healer Silver
			q(33092),	-- FLAG - Proving Grounds - Tank Bronze
			q(33094),	-- FLAG - Proving Grounds - Tank Gold
			q(33093),	-- FLAG - Proving Grounds - Tank Silver
		}),
	}))),
	applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		n(PROVING_GROUNDS, {
			q(37212),	-- FLAG - Proving Grounds - Damage Bronze
			q(37214),	-- FLAG - Proving Grounds - Damage Gold
			q(37213),	-- FLAG - Proving Grounds - Damage Silver
			q(37218),	-- FLAG - Proving Grounds - Healer Bronze
			q(37220),	-- FLAG - Proving Grounds - Healer Gold
			q(37219),	-- FLAG - Proving Grounds - Healer Silver
			q(37215),	-- FLAG - Proving Grounds - Tank Bronze
			q(37217),	-- FLAG - Proving Grounds - Tank Gold
			q(37216),	-- FLAG - Proving Grounds - Tank Silver
		}),
	}))),
});
