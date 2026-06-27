--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

local DARKSPEAR_DASH = createHeader({
	readable = "Darkspear Dash",
	constant = "DARKSPEAR_DASH",
	icon = nil--[[~_.asset("Holiday_DarkspearDash")]],
	eventID = EVENTS.DARKSPEAR_DASH,
	text = {
		en = "Darkspear Dash",
		-- TODO: de = "",
		-- TODO es = "",
		-- TODO mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO ru = "",
		-- TODO cn = "",
		-- TODO tw = "",
	},
});

root(ROOTS.Holidays, applyevent(EVENTS.DARKSPEAR_DASH, n(DARKSPEAR_DASH, {
	["timeline"] = { ADDED_12_0_7 },
	["groups"] = {
		n(QUESTS, {
			q(95009, {	-- Doing the Dash
				["qgs"] = {
					220307,	-- Holiday Enthusiast
				},
				-- ["isYearly"] = true,	-- expected but obviously not confirmed
				["coords"] = {
					{ 46.0, 55.0, DORNOGAL },
					{ 51.1, 76.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				},
				["races"] = HORDE_ONLY,	-- Currently horde only
				["isBreadcrumb"] = true,
			}),
			q(94954, {	-- Darkspear Dash
				["sourceQuest"] = 95009,	-- Doing the Dash
				["provider"] = { "n", 259191 },	-- Kalaya
				-- ["isYearly"] = true,	-- expected but obviously not confirmed
				["coords"] = {
					{ 46.7, 47.4, ECHO_ISLES },
				},
				["races"] = HORDE_ONLY,	-- Currently horde only
				["groups"] = {
					i(267323),	-- Troll Scroll of Rainbow Roll (TOY!)
				},
			}),
		}),
		n(VENDORS, {
			n(259188, {	-- Naz'do
				["coord"] = { 47.5, 46.6, ECHO_ISLES },
				["groups"] = {
					i(267280),	-- Darkspear Dash Tabard
					i(267352),	-- Pocket Rainbow
					i(267353),	-- Pocket Sand
					i(268694),	-- Rainbow Runners
					i(226127),	-- Recruit's Shirt
				},
				["sym"] = {{"select","itemID",
					210469,	-- Personal Tabard
					140309,	-- Prismatic Bauble
				}},
			}),
		}),
	},
})))
