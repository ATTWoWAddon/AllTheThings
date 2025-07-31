--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
THOUSAND_BOAT_BASH_HEADER = createHeader({
	readable = "Thousand Boat Bash",
	constant = "THOUSAND_BOAT_BASH_HEADER",
	--icon = ,
	eventID = EVENTS.THOUSAND_BOAT_BASH,
	text = {
		en = "Thousand Boat Bash",
		es = "Azote de los Mil Barcos",
		mx = "Fiesta de los mil barcos",
		ru = "Вечеринка тысячи лодок",
		cn = "赛艇大会",
		tw = "鬥船節",
	},
});
root(ROOTS.Holidays, applyevent(EVENTS.THOUSAND_BOAT_BASH, n(THOUSAND_BOAT_BASH_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {
	n(WORLD_QUESTS, sharedData({
		["sharedDescription"] = "Thousand Boat Bash must be available for this World Quest to display.",
		["isWorldQuest"] = true,
		["maps"] = { THOUSAND_NEEDLES },
	},
	{
		q(45808, {	-- Beach Ball Bash
			["groups"] = {
				i(144074),	-- Mainsail
			},
		}),
		q(45806),	-- Boat Tour
		q(45807, {	-- Garbage Fishing
			["groups"] = {
				i(144075),	-- Waxy Reeds
			},
		}),
		q(45809, {	-- Grog, Rum, and Ale
			["groups"] = {
				i(143932),	-- Flagon of Doublerum (QI!)
				i(143934),	-- Keg of Pirate Ale (QI!)
				i(143933),	-- Tankard of Grog (QI!)
				i(144076),	-- Rigging Rope
			},
		}),
		q(45810, {	-- The Gnomes Stole Our Bombs!
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(143952),	-- Celebratory Shrapnel Mine (QI!)
				i(143951),	-- Crate of Giant Fireworks (QI!)
				i(143950),	-- The Kablamminator (QI!)
				i(144073),	-- Ship Mast
			},
		}),
		q(45811, {	-- The Goblins Stole Our Bombs!
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(144033),	-- Enormous Crate of Tiny Bombs (QI!)
				i(144034),	-- Nagrand Cherry-Bomb (QI!)
				i(144032),	-- Party Dynamite (QI!)
				i(144073),	-- Ship Mast
			},
		}),
	})),
}))));
