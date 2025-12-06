-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
WARBAND = createHeader({
	readable = "Warband",
	icon = 4203076,
	text = {
		en = [[~ACCOUNT_QUEST_LABEL]],
	},
});

CAMPSITES = createHeader({
	readable = "Campsites",
	icon = [[~_.asset("Category_Campsites")]],
	text = {
		en = [[~ACCOUNT_LEVEL_SCENE]],
	},
});

root(ROOTS.Character, n(WARBAND, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		-- TWW
		ach(19470),	-- One Warband Mentor: The War Within
		ach(19460),	-- Two Warband Mentors: The War Within
		ach(19475),	-- Three Warband Mentors: The War Within
		ach(19476),	-- Four Warband Mentors: The War Within
		ach(19477),	-- Five Warband Mentors: The War Within
		-- MID
		ach(42328, {	-- One Warband Mentor: Midnight
			["timeline"] = { ADDED_12_0_0 },
		}),
		ach(42329, {	-- Two Warband Mentors: Midnight
			["timeline"] = { ADDED_12_0_0 },
		}),
		ach(42330, {	-- Three Warband Mentors: Midnight
			["timeline"] = { ADDED_12_0_0 },
		}),
		ach(42331, {	-- Four Warband Mentors: Midnight
			["timeline"] = { ADDED_12_0_0 },
		}),
		ach(42332, {	-- Five Warband Mentors: Midnight
			["timeline"] = { ADDED_12_0_0 },
		}),
		ach(40142, {	-- Learning to Share
			["timeline"] = { CREATED_11_0_0, ADDED_11_1_0 },
		}),
		ach(40145, {	-- So Much Sharing
			["timeline"] = { CREATED_11_0_0, ADDED_11_1_0 },
		}),
	}),
	n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
		q(83492, {	-- Warbanding Together
			["groups"] = {
				i(228623),	-- Blue's Request (QS!/QI!)
			},
		}),
		q(83493, {	-- Rift Reader
			["sourceQuest"] = 83492,	-- Warbanding Together
			["provider"] = { "n", 226658 },	-- Blue
			["coord"] = { 52.5, 26.9, TANARIS },
		}),
		q(83494, {	-- Space Ghosts by the Coast
			["sourceQuest"] = 83492,	-- Warbanding Together
			["provider"] = { "n", 226658 },	-- Blue
			["coord"] = { 52.5, 26.9, TANARIS },
			["groups"] = {
				i(225783),	-- Spetial Residue
			},
		}),
		q(83495, {	-- Twinsposition
			["sourceQuests"] = {
				83493,	-- Rift Reader
				83494,	-- Space Ghosts by the Coast
			},
			["provider"] = { "n", 226658 },	-- Blue
			["coord"] = { 52.5, 26.9, TANARIS },
		}),
		q(83496, {	-- Spacetime is Money
			["sourceQuest"] = 83495,	-- Twinsposition
			["provider"] = { "n", 226658 },	-- Blue
			["coord"] = { 48.5, 31.6, TANARIS },
			["groups"] = {
				spell(465226),	-- Warband Bank Distance Inhibitor
			},
		}),
	})),
	n(CAMPSITES, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
		campsite(1, {	-- Adventurer's Rest (CS!)
			["description"] = "Granted to all warbands as default.",
		}),
		campsite(4, {	-- Ohn'ahran Overlook (CS!)
			["description"] = "Granted to all warbands.",
		}),
		campsite(29, {	-- Randomize From Favorites (CS!)
			["description"] = "Granted to all warbands.",
		}),
	})),
})));
