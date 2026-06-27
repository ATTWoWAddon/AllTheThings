--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

local DARKSPEAR_DASH = createHeader({
	readable = "Darkspear Dash",
	constant = "DARKSPEAR_DASH",
	icon = 461790,	-- [[~_.asset("Holiday_DarkspearDash")]]
	eventID = EVENTS.DARKSPEAR_DASH,
	text = {
		en = "Darkspear Dash",
		de = "Dunkelspeerrennen",
		es = "Carrera Lanza Negra",
		mx = "Carrera Lanza Negra",
		fr = "Marathon des Sombrelances",
		it = "Slancio dei Lanciascura",
		ko = "검은창 대질주",
		pt = "Arremetida Lançanegra",
		ru = "Забег Черного Копья",
		cn = "暗矛冲刺赛",
		tw = "暗矛衝刺賽",
	},
});

root(ROOTS.Holidays, applyevent(EVENTS.DARKSPEAR_DASH, n(DARKSPEAR_DASH, {
	["description"] = "The Darkspear Dash is a weekend Horde-only micro-holiday taking place at the end of June. Players will join in on a 'dash' from Echo Isles to Silvermoon City.\n\nThe event is inspired by the 'Running of the Trolls' community charity event.",
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
			--	["races"] = HORDE_ONLY,	-- Currently horde only
				["groups"] = {
					title(749, {	-- Darkspear Dasher <Name>
						["collectible"] = false,	-- Only for 1 day
					}),
					i(267323, {	-- Troll Scroll of Rainbow Roll (TOY!)
						-- Temp description because the toy is only available for 2 days for Horde only. Needs to be visible on both Factions
						-- #if BEFORE 12.1
						["description"] = "The Quest for this Toy is Horde Only!",
						-- #endif
					}),
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
