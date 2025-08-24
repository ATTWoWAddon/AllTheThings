--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
MARCH_OF_THE_TADPOLES_HEADER = createHeader({
	readable = "March of the Tadpoles",
	constant = "MARCH_OF_THE_TADPOLES_HEADER",
	icon = [[~_.asset("Holiday_Marchofmurloc")]],
	eventID = EVENTS.MARCH_OF_THE_TADPOLES,
	text = {
		en = "March of the Tadpoles",
		es = "Marcha de los renacuajos",
		mx = "Marcha de los renacuajos",
		ru = "Марш головастиков",
		cn = "蝌蚪远足日",
		tw = "蝌蚪歷險節",
	},
});
root(ROOTS.Holidays, applyevent(EVENTS.MARCH_OF_THE_TADPOLES, n(MARCH_OF_THE_TADPOLES_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {
	n(QUESTS, sharedData({
		["isWeekly"] = true,
		["maps"] = { BOREAN_TUNDRA },
	}, {
		q(46049, {	-- A Gift From Your Tadpole
			["provider"] = { "n", 118590 },	-- Loco
		}),
		q(46062, {	-- A Tadpole's Request
			["provider"] = { "n", 118590 },	-- Loco
		}),
		q(46061, {	-- Adopt a Tadpole
			["provider"] = { "n", 25197 },	-- King Mrgl-Mrgl
		}),
		q(46064, {	-- The Ways of the World
			["provider"] = { "n", 118590 },	-- Loco
		}),
	})),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
	applyevent(EVENTS.MARCH_OF_THE_TADPOLES, n(MARCH_OF_THE_TADPOLES_HEADER, {
		q(46051),	-- Borean Tundra - FLAG - March of the Tadpoles Bit 01
		q(46052),	-- Borean Tundra - FLAG - March of the Tadpoles Bit 02
		q(46053),	-- Borean Tundra - FLAG - March of the Tadpoles Bit 03
		q(46054),	-- Borean Tundra - FLAG - March of the Tadpoles Bit 04
		q(46055),	-- Borean Tundra - FLAG - March of the Tadpoles Bit 05
	})),
})));
