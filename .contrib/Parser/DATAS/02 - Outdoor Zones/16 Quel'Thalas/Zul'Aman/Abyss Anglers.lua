---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

ABYSS_ANGLERS = createHeader({
	readable = "Abyss Anglers",
	icon = 2027958,
	text = {
		en = "Abyss Anglers",
		cn = "深渊钓客",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		-- This event was postponed from 12.0.1 launch to 12.0.5
		n(ABYSS_ANGLERS, bubbleDownSelf({ ["timeline"] = { CREATED_12_0_1_LAUNCH, ADDED_12_0_5 }, }, {
			n(ACHIEVEMENTS, {
				ach(62118),	-- Abyss Anglers: Amazardhide Catch Case
				ach(62117),	-- Abyss Anglers: Boarhide Catch Sack
				ach(62272),	-- Abyss Anglers: Certified Depthdiver
				ach(62208),	-- Abyss Anglers: Depth Grease
				ach(62210),	-- Abyss Anglers: Depthdiver's Used Tank
				ach(62218),	-- Abyss Anglers: Even The Best
				ach(62211),	-- Abyss Anglers: Fathom-Tested Tank
				ach(62221),	-- Abyss Anglers: Fresh Depth Tech
				ach(62215),	-- Abyss Anglers: Heavy Harpoon Cannon
				ach(62216),	-- Abyss Anglers: Hollowcore Harpoon Turret
				ach(62217),	-- Abyss Anglers: Idol of the Depths
				ach(62343),	-- Abyss Anglers: Legends Lurk Beneath
				ach(62119),	-- Abyss Anglers: Loaknit-Woven Catch Satchel
				ach(62212),	-- Abyss Anglers: Nalorakk's Breath Tank
				ach(62219),	-- Abyss Anglers: No Sea Can Hold Me
				ach(62209),	-- Abyss Anglers: Pahk Trench Fins
				ach(62220),	-- Abyss Anglers: Proper Procedure
				ach(62207),	-- Abyss Anglers: Reinforced Joints
				ach(62213),	-- Abyss Anglers: Shallows Net
				ach(62222),	-- Abyss Anglers: The Amani Way
				ach(62342),	-- Abyss Anglers: The Finest of Fish
				ach(62271),	-- Abyss Anglers: Trench Berserker
				ach(62214),	-- Abyss Anglers: Triple-Thread Net
			}),
			filter(MISC, {
				-- TODO: Sort or move elsewhere if needed
				i(265768),	-- Amazardhide Catch Case
				i(265769),	-- Boarhide Catch Sack
				i(253627),	-- Depth Grease
				i(253516),	-- Depthdiver's Used Tank
				i(253624),	-- Fathom-Tested Tank
				i(265779),	-- Heavy Harpoon Cannon
				i(265778),	-- Hollowcore Harpoon Turret
				i(265767),	-- Loaknit-Woven Catch Satchel
				i(253625),	-- Nalorakk's Breath Tank
				i(253628),	-- Pahk Trench Fins
				i(253626),	-- Reinforced Joints
				i(265771),	-- Shallows Net
				i(265770),	-- Triple-Thread Net
			}),
		})),
	}),
}));
