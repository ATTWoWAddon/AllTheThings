---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	["lore"] = "The Broken Isles are a mysterious chain of islands located northeast of the raging Maelstrom. Littered with ancient elven ruins, they contain notably the mighty night elf city of Suramar as well as the long-lost Tomb of Sargeras. The third invasion of the Burning Legion commenced when the sealed portal inside the Tomb was opened again by Gul'dan from the alternate universe.",
	["icon"] = 1408999,
	["zone-text-continent"] = true,
	["groups"] = {
		m(LEGION_DALARAN, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(AZSUNA, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(BROKEN_SHORE, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(EYE_OF_AZSHARA, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(HIGHMOUNTAIN, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(672),	-- Mardum, the Shattered Abyss
		m(STORMHEIM, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(SURAMAR, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
		m(VALSHARAH, {["timeline"] = {ADDED_7_0_3_LAUNCH}}),
	},
})));
